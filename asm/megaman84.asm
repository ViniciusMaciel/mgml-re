loc_4C5AB6:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

def_4C5AE3:             ; jumptable 004C5AE3 default case
pop     ecx
retn
sub_4C5A43 endp

jpt_4C5AE3 dd offset loc_4C5AEA ; jump table for switch statement
dd offset loc_4C5B13
dd offset loc_4C5B1F
dd offset loc_4C5B48



sub_4C5AD4 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_4C5AE3 ; jumptable 004C5AE3 default case
and     eax, 0FFh
jmp     jpt_4C5AE3[eax*4] ; switch jump

loc_4C5AEA:             ; jumptable 004C5AE3 case 0
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5B06
mov     eax, 647h
call    sub_47E888
test    eax, eax
jz      short loc_4C5B10

loc_4C5B06:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
pop     ecx
retn

loc_4C5B10:
inc     byte ptr [ecx+0Ah]

loc_4C5B13:             ; jumptable 004C5AE3 case 1
cmp     byte ptr ds:dword_560BDC, 0
jnz     short def_4C5AE3 ; jumptable 004C5AE3 default case
inc     byte ptr [ecx+0Ah]

loc_4C5B1F:             ; jumptable 004C5AE3 case 2
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_4C5AE3 ; jumptable 004C5AE3 default case
mov     eax, 647h
call    sub_47E8B8
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_4C5B48:             ; jumptable 004C5AE3 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C5AE3      ; jumptable 004C5AE3 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
jmp     short loc_4C5B06
sub_4C5AD4 endp




sub_4C5B61 proc near
push    ecx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4C5B73
jbe     short loc_4C5BA0
cmp     al, 2
jz      short loc_4C5BAE
pop     ecx
retn

loc_4C5B73:
test    al, al
jnz     short loc_4C5BD9
mov     eax, 53h ; 'S'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5B93
mov     eax, 64Ah
call    sub_47E888
test    eax, eax
jz      short loc_4C5B9D

loc_4C5B93:
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
pop     ecx
retn

loc_4C5B9D:
inc     byte ptr [ecx+0Ah]

loc_4C5BA0:
cmp     ds:dword_77E758, 0
jz      short loc_4C5BD9
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_4C5BAE:
cmp     ds:dword_77E758, 0
jnz     short loc_4C5BD9
mov     eax, 64Ah
call    sub_47E8B8
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4C5BD9:
pop     ecx
retn
sub_4C5B61 endp




sub_4C5BDB proc near
push    ebx
push    ecx
push    edx
push    esi
movzx   esi, byte ptr [eax+9]
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
add     ebx, edx
add     ebx, ebx
mov     edx, ds:dword_53791E[ecx*4]
add     edx, ebx
call    ds:funcs_4C5C04[esi*4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5BDB endp




sub_4C5C10 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C5C16[edx*4]
pop     edx
retn
sub_4C5C10 endp




sub_4C5C1F proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ecx, eax
xor     ebp, ebp
lea     edx, [eax+3Ch]
xor     bl, bl
mov     ah, ds:byte_77E7D4
cmp     ah, 0Eh
jnz     short loc_4C5C6B
mov     [esp+20h+var_1C], 1Eh
mov     dword ptr [edx], 52Eh
mov     dword ptr [edx+4], 52Fh
mov     dword ptr [edx+8], 530h
mov     esi, 609h
mov     edi, 60Ah
mov     [esp+20h+var_20], 60Bh
jmp     short loc_4C5CCC

loc_4C5C6B:
cmp     ah, 14h
jnz     short loc_4C5C9F
mov     [esp+20h+var_1C], 27h ; '''
mov     dword ptr [edx], 531h
mov     dword ptr [edx+4], 532h
mov     dword ptr [edx+8], 533h
mov     esi, 606h
mov     edi, 607h
mov     [esp+20h+var_20], 608h
jmp     short loc_4C5CCC

loc_4C5C9F:
mov     [esp+20h+var_1C], 44h ; 'D'
mov     dword ptr [edx], 534h
mov     dword ptr [edx+4], 535h
mov     dword ptr [edx+8], 536h
mov     esi, 63Eh
mov     edi, 63Fh
mov     [esp+20h+var_20], 640h

loc_4C5CCC:
mov     eax, [esp+20h+var_1C]
call    sub_47E888
test    eax, eax
jnz     loc_4C5DDD
mov     eax, [edx]
call    sub_47E888
test    eax, eax
jz      short loc_4C5CEA
inc     bl

loc_4C5CEA:
mov     eax, [edx+4]
call    sub_47E888
test    eax, eax
jz      short loc_4C5CF8
inc     bl

loc_4C5CF8:
mov     eax, [edx+8]
call    sub_47E888
test    eax, eax
jz      short loc_4C5D06
inc     bl

loc_4C5D06:
cmp     bl, 1
jnz     short loc_4C5D50
mov     eax, esi
call    sub_47E8B8
cmp     ds:byte_77E7D4, 13h
jnz     short loc_4C5D7B
mov     eax, 4Bh ; 'K'
call    sub_47E888
test    eax, eax
jnz     short loc_4C5D7B
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_4C5D7B
mov     eax, 4Bh ; 'K'
call    sub_47E8B8
mov     edx, 0Eh
mov     eax, 4
call    sub_4A0E24
add     [ecx+8], bl
jmp     short loc_4C5D7B

loc_4C5D50:
cmp     bl, 2
jnz     short loc_4C5D60
mov     eax, esi
call    sub_47E8B8
mov     eax, edi
jmp     short loc_4C5D76

loc_4C5D60:
cmp     bl, 3
jnz     short loc_4C5D7B
mov     eax, esi
call    sub_47E8B8
mov     eax, edi
call    sub_47E8B8
mov     eax, [esp+20h+var_20]

loc_4C5D76:
call    sub_47E8B8

loc_4C5D7B:
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jnz     short loc_4C5D98
mov     ebp, ds:dword_77E7D0+2
sar     ebp, 18h
mov     ebp, ds:off_537A68[ebp*4]
jmp     short loc_4C5DAD

loc_4C5D98:
cmp     dh, 14h
jnz     short loc_4C5DAD
mov     ebp, ds:dword_77E7D0+2
sar     ebp, 18h
mov     ebp, ds:off_537A74[ebp*4]

loc_4C5DAD:
mov     bh, ds:byte_77E7D4
cmp     bh, 0Eh
jnz     short loc_4C5DC3
mov     edx, ebp
mov     eax, ecx
call    sub_4C5DEE
jmp     short loc_4C5DDD

loc_4C5DC3:
cmp     bh, 14h
jnz     short loc_4C5DE4
cmp     byte ptr [ecx+9], 0
jnz     short loc_4C5DE4
mov     edx, ebp
mov     eax, ecx
call    sub_4C5F7E
mov     byte ptr [ecx+9], 1
jmp     short loc_4C5DE4

loc_4C5DDD:
mov     eax, ecx
call    sub_4DE477

loc_4C5DE4:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C5C1F endp




sub_4C5DEE proc near
push    ebx
push    ecx
push    esi
lea     ecx, [eax+3Ch]
xor     bl, bl

loc_4C5DF6:
mov     ah, [edx+1]
cmp     ah, 20h ; ' '
jnz     loc_4C5EC9
cmp     byte ptr [edx+2], 35h ; '5'
jnz     short loc_4C5E1B
mov     eax, [ecx+8]
call    sub_47E888
test    eax, eax
jz      short loc_4C5E1B

loc_4C5E14:
mov     bl, 1
jmp     loc_4C5F6B

loc_4C5E1B:
test    bl, bl
jnz     loc_4C5F6B
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      short loc_4C5E3B
mov     eax, 60Ch
call    sub_47EA91

loc_4C5E3B:
call    sub_4DDF54

loc_4C5E40:
test    eax, eax
jz      loc_4C5F6B
mov     bh, [edx]
mov     [eax], bh
mov     bh, [edx+2]
mov     [eax+2], bh
mov     bh, [edx+3]
mov     [eax+3], bh
mov     bh, [edx+4]
mov     [eax+4], bh
mov     bh, [edx+5]
mov     [eax+5], bh
movzx   si, byte ptr [edx+7]
shl     esi, 4
mov     [eax+56h], si
mov     bh, [edx+8]
mov     [eax+0Ch], bh
mov     bh, [edx+9]
mov     [eax+0Dh], bh
mov     bh, [edx+0Ah]
mov     [eax+0Eh], bh
mov     bh, [edx+0Bh]
mov     [eax+0Fh], bh
mov     si, [edx+0Ch]
mov     [eax+14h], si
mov     si, [edx+0Eh]
mov     [eax+16h], si
mov     si, [edx+10h]
mov     [eax+18h], si
mov     esi, [eax+12h]
sar     esi, 10h
shl     esi, 10h
mov     [eax+1Ch], esi
mov     esi, [eax+14h]
sar     esi, 10h
shl     esi, 10h
mov     [eax+20h], esi
mov     esi, [eax+16h]
sar     esi, 10h
shl     esi, 10h
mov     [eax+24h], esi
jmp     loc_4C5F6B

loc_4C5EC9:
xor     bl, bl
cmp     ah, 60h ; '`'
jnz     short loc_4C5F11
cmp     byte ptr [edx+2], 2Ah ; '*'
jnz     short loc_4C5F03
mov     bh, [edx+8]
cmp     bh, 2
jnz     short loc_4C5EEE
mov     eax, [ecx]
call    sub_47E888
test    eax, eax
jz      short loc_4C5F03
jmp     loc_4C5E14

loc_4C5EEE:
cmp     bh, 1
jnz     short loc_4C5F03
mov     eax, [ecx+4]
call    sub_47E888
test    eax, eax
jz      short loc_4C5F03
mov     bl, bh
jmp     short loc_4C5F6B

loc_4C5F03:
test    bl, bl
jnz     short loc_4C5F6B
call    sub_4DE043
jmp     loc_4C5E40

loc_4C5F11:
cmp     ah, 0E0h
jnz     short loc_4C5F6B
call    sub_4DE227
test    eax, eax
jz      short loc_4C5F6B
mov     bh, [edx]
mov     [eax], bh
mov     bh, [edx+2]
mov     [eax+2], bh
mov     bh, [edx+3]
mov     [eax+3], bh
mov     bh, [edx+4]
mov     [eax+4], bh
mov     bh, [edx+5]
mov     [eax+5], bh
mov     bh, [edx+8]
mov     [eax+0Ch], bh
mov     bh, [edx+9]
mov     [eax+0Dh], bh
mov     bh, [edx+0Ah]
mov     [eax+0Eh], bh
mov     bh, [edx+0Bh]
mov     [eax+0Fh], bh
mov     si, [edx+0Ch]
mov     [eax+48h], si
mov     si, [edx+0Eh]
mov     [eax+4Ah], si
mov     si, [edx+10h]
mov     [eax+4Ch], si

loc_4C5F6B:
add     edx, 14h
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jnz     loc_4C5DF6
pop     esi
pop     ecx
pop     ebx
retn
sub_4C5DEE endp




sub_4C5F7E proc near
push    ebx
push    ecx
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jz      loc_4C608C

loc_4C5F8C:
mov     ah, [edx+1]
cmp     ah, 20h ; ' '
jnz     loc_4C6023
call    sub_4DDF54
test    eax, eax
jz      loc_4C607D
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+4], bl
mov     bl, [edx+5]
mov     [eax+5], bl
xor     ebx, ebx
mov     bl, [edx+7]
shl     ebx, 4
mov     [eax+56h], bx
mov     bl, [edx+8]
mov     [eax+0Ch], bl
mov     bl, [edx+9]
mov     [eax+0Dh], bl
mov     bl, [edx+0Ah]
mov     [eax+0Eh], bl
mov     bl, [edx+0Bh]
mov     [eax+0Fh], bl
mov     bx, [edx+0Ch]
mov     [eax+14h], bx
mov     bx, [edx+0Eh]
mov     [eax+16h], bx
mov     bx, [edx+10h]
mov     [eax+18h], bx
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
jmp     short loc_4C607D

loc_4C6023:
cmp     ah, 0E0h
jnz     short loc_4C607D
call    sub_4DE227
test    eax, eax
jz      short loc_4C607D
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+4], bl
mov     bl, [edx+5]
mov     [eax+5], bl
mov     bl, [edx+8]
mov     [eax+0Ch], bl
mov     bl, [edx+9]
mov     [eax+0Dh], bl
mov     bl, [edx+0Ah]
mov     [eax+0Eh], bl
mov     bl, [edx+0Bh]
mov     [eax+0Fh], bl
mov     bx, [edx+0Ch]
mov     [eax+48h], bx
mov     bx, [edx+0Eh]
mov     [eax+4Ah], bx
mov     bx, [edx+10h]
mov     [eax+4Ch], bx

loc_4C607D:
add     edx, 14h
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jnz     loc_4C5F8C

loc_4C608C:
pop     ecx
pop     ebx
retn
sub_4C5F7E endp




sub_4C608F proc near

var_78= dword ptr -78h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_40= dword ptr -40h
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4C60B4
call    sub_4C646C
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C6258

loc_4C60B4:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_4C60BB[edx*4]
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jnz     loc_4C6251
mov     [esp+0A8h+var_38], 0FE00h
xor     ebx, ebx
mov     [esp+0A8h+var_36], bx
xor     esi, esi
mov     [esp+0A8h+var_34], si
mov     eax, esp
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
add     eax, 800h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+0A8h+var_58]
lea     edx, [esp+0A8h+var_38]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A8h+var_58], eax
mov     eax, [esp+0A8h+var_58]
mov     [esp+0A8h+var_38], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A8h+var_54], eax
mov     eax, [esp+0A8h+var_54]
mov     [esp+0A8h+var_36], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A8h+var_50], eax
mov     eax, [esp+0A8h+var_50]
mov     [esp+0A8h+var_34], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_68]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_30]
call    sub_4F0003
lea     eax, [esp+0A8h+var_38]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_48]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_20]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_78]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_28]
call    sub_4F0003
mov     ebx, [esp+0A8h+var_78]
mov     edi, [esp+0A8h+var_48]
sub     ebx, edi
jz      loc_4C6251
mov     eax, [esp+0A8h+var_70]
mov     ebp, [esp+0A8h+var_40]
sub     eax, ebp
mov     edx, [esp+0A8h+var_68]
sub     edx, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A8h+var_60]
jge     short loc_4C6251
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_20]
fnstsw  ax
sahf
jnb     short loc_4C6228
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
ja      short loc_4C6248

loc_4C6228:
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_20]
fnstsw  ax
sahf
jbe     short loc_4C6251
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
jnb     short loc_4C6251

loc_4C6248:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4C6258

loc_4C6251:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4C6258:
add     esp, 90h

loc_4C625E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C608F endp




sub_4C6265 proc near
or      byte ptr [eax], 2
inc     byte ptr [eax+8]
retn
sub_4C6265 endp




sub_4C626C proc near
push    edx
mov     edx, eax
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jz      short loc_4C62AB
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [edx+54h]
jnz     short loc_4C62AB
mov     byte ptr [edx+8], 2
mov     byte ptr [edx+0Bh], 10h
mov     eax, 7B2h
call    sub_47E8B8
add     edx, 48h ; 'H'
mov     eax, 105h
call    sub_4D8BC3

loc_4C62AB:
pop     edx
retn
sub_4C626C endp




; int __fastcall sub_4C62AD(int, int)
sub_4C62AD proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+10h+var_10], eax ; int
fild    word ptr [esp+10h+var_10]
fmul    ds:flt_50A418
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C631D
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4C631D:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4C62AD endp




; int __fastcall sub_4C6324(int, int)
sub_4C6324 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
lea     ebx, [ecx+48h]
lea     edx, [ecx+18h]
test    eax, eax
jz      short loc_4C638F
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jnz     loc_4C63E4
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C638F:
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jz      short loc_4C63E4
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
mov     eax, 7B1h
call    sub_47EA91

loc_4C63E4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6324 endp




; int __fastcall sub_4C63E8(int, int)
sub_4C63E8 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C6415
inc     byte ptr [ecx+8]
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91

loc_4C6415:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, 10h
sub     ebx, eax
mov     [esp+10h+var_10], ebx ; int
fild    [esp+10h+var_10]
fmul    ds:flt_50A41C
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
jmp     loc_4C631D
sub_4C63E8 endp




sub_4C644D proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 0
pop     edx
pop     ecx
retn
sub_4C644D endp




sub_4C646C proc near

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

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     [esp+40h+var_20], 1
xor     ecx, ecx
mov     [esp+40h+var_1C], ecx

loc_4C6483:
mov     eax, [esp+40h+var_1C]
shl     eax, 3
cmp     ds:byte_537C68[eax], 0FFh
jz      short loc_4C64C1
mov     dl, ds:byte_77E7D4
cmp     dl, ds:byte_537C68[eax]
jnz     short loc_4C64BB
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_537C69[eax]
jnz     short loc_4C64BB
mov     eax, ds:off_537C6C[eax]
mov     [esp+40h+var_20], eax
jmp     short loc_4C64C9

loc_4C64BB:
inc     [esp+40h+var_1C]
jmp     short loc_4C6483

loc_4C64C1:
test    ecx, ecx
jz      loc_4C66A3

loc_4C64C9:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+40h+var_34], eax
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+40h+var_3C], eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+40h+var_38], eax
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+40h+var_40], eax
xor     eax, eax
mov     al, ds:byte_77E802
mov     [esp+40h+var_24], eax
mov     eax, [esp+40h+var_38]
mov     [esp+40h+var_30], eax

loc_4C6507:
mov     eax, [esp+40h+var_30]
cmp     eax, [esp+40h+var_40]
jge     loc_4C66A3
mov     eax, [esp+40h+var_34]
mov     [esp+40h+var_2C], eax

loc_4C651C:
mov     eax, [esp+40h+var_2C]
cmp     eax, [esp+40h+var_3C]
jge     loc_4C669A
sub     eax, [esp+40h+var_34]
add     eax, eax
add     eax, ds:dword_77E700
mov     ebp, [esp+40h+var_30]
sub     ebp, [esp+40h+var_38]
xor     ecx, ecx
mov     cx, ds:word_77EAAE
imul    ebp, ecx
add     ebp, ebp
movsx   ebp, word ptr [eax+ebp]
test    ebp, ebp
jle     loc_4C6691
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     [esp+40h+var_28], eax
xor     esi, esi
mov     [esp+40h+var_1C], esi

loc_4C6572:
mov     eax, [esp+40h+var_1C]
shl     eax, 4
add     eax, [esp+40h+var_20]
mov     eax, [eax+4]
cmp     eax, [esp+40h+var_28]
jnz     loc_4C6678
xor     edi, edi
jmp     short loc_4C6598

loc_4C658E:
inc     edi
cmp     edi, 2
jge     loc_4C666E

loc_4C6598:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C658E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 2Fh ; '/'
mov     ebx, [esp+40h+var_1C]
shl     ebx, 4
add     ebx, [esp+40h+var_20]
lea     esi, [ebx+edi]
xor     eax, eax
mov     al, [esi+0Eh]
sar     eax, 4
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dl, [esi+0Eh]
and     dl, 0Fh
mov     [ecx+0Ch], dl
mov     al, byte ptr [esp+40h+var_24]
mov     [ecx+0Dh], al
mov     esi, ebp
shl     esi, 2
sub     esi, ebp
mov     dx, word ptr ds:(dword_6E40AA+2)[esi*4]
mov     ax, [ebx+8]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_537DA8[eax*4]
add     edx, eax
mov     [ecx+48h], dx
mov     dx, word ptr ds:(dword_6E40AE+2)[esi*4]
mov     ax, [ebx+0Ch]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_537DAA[eax*4]
add     edx, eax
mov     [ecx+4Ch], dx
mov     dx, word ptr ds:dword_6E40AE[esi*4]
mov     ax, [ebx+0Ah]
add     edx, eax
mov     [ecx+4Ah], dx
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[esi*4]
mov     [ecx+3Ch], eax
mov     eax, [ebx]
call    sub_4A7AAC
mov     [ecx+40h], eax
jmp     loc_4C658E

loc_4C666E:
inc     [esp+40h+var_24]
inc     ds:byte_77E802

loc_4C6678:
mov     eax, [esp+40h+var_1C]
inc     eax
mov     [esp+40h+var_1C], eax
shl     eax, 4
add     eax, [esp+40h+var_20]
cmp     dword ptr [eax], 0
jnz     loc_4C6572

loc_4C6691:
inc     [esp+40h+var_2C]
jmp     loc_4C651C

loc_4C669A:
inc     [esp+40h+var_30]
jmp     loc_4C6507

loc_4C66A3:
add     esp, 28h
jmp     loc_4C625E
sub_4C646C endp




sub_4C66AB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
movzx   edi, byte ptr [eax+8]
lea     esi, [eax+58h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    ds:funcs_4C66C0[edi*4]
mov     edx, esi
mov     eax, ecx
call    sub_4C677E
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C66AB endp




sub_4C66D6 proc near
push    ecx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
cmp     byte ptr [ecx+3], 0
jnz     short loc_4C66FC
mov     word ptr [ecx+4Ah], 100h

loc_4C66FC:
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     ecx
retn
sub_4C66D6 endp




sub_4C6705 proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+3]
call    ds:funcs_4C670B[ecx*4]
pop     ecx
retn
sub_4C6705 endp




sub_4C6714 proc near
mov     bl, [eax+9]
cmp     bl, 1
jb      short loc_4C671F
jbe     short loc_4C6735
retn

loc_4C671F:
test    bl, bl
jnz     short locret_4C6746
cmp     byte ptr [edx+9], 19h
jnz     short locret_4C6746
cmp     dword ptr [edx+10h], 5
jnz     short locret_4C6746
inc     bl
mov     [eax+9], bl
retn

loc_4C6735:
mov     dx, [eax+4Ah]
sub     dx, 20h ; ' '
mov     [eax+4Ah], dx
jnz     short locret_4C6746
inc     byte ptr [eax+9]

locret_4C6746:
retn
sub_4C6714 endp




sub_4C6747 proc near
mov     bl, [eax+9]
cmp     bl, 1
jb      short loc_4C6752
jbe     short loc_4C6768
retn

loc_4C6752:
test    bl, bl
jnz     short locret_4C677D
cmp     byte ptr [edx+9], 4
jnz     short locret_4C677D
cmp     dword ptr [edx+10h], 55h ; 'U'
jnz     short locret_4C677D
inc     bl
mov     [eax+9], bl
retn

loc_4C6768:
mov     dx, [eax+4Ah]
add     edx, 8
mov     [eax+4Ah], dx
cmp     dx, 100h
jnz     short locret_4C677D
inc     byte ptr [eax+9]

locret_4C677D:
retn
sub_4C6747 endp




sub_4C677E proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; float
push    ebp             ; int
sub     esp, 10h
mov     ebx, eax
lea     ecx, [eax+18h]
mov     eax, ecx
call    sub_4EF184
mov     edx, 1000h
mov     [esp+1Ch+var_1C], edx ; int
mov     [esp+1Ch+var_18], edx ; int
mov     [esp+1Ch+var_14], edx ; int
xor     ebp, ebp
mov     [esp+1Ch+var_10], ebp ; int
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     eax, [ebx+9]
sar     eax, 18h
shl     eax, 6
mov     edx, ecx
call    sub_4EF50D
add     esp, 10h
pop     ebp
pop     ecx
pop     ebx
retn
sub_4C677E endp




sub_4C67C6 proc near

arg_0= byte ptr  4
arg_4= byte ptr  8

push    esi
push    edi
mov     esi, eax
mov     edi, edx
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      short loc_4C681A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+3], cl
mov     byte ptr [eax+0Ch], 0
mov     [eax+14h], di
mov     word ptr [eax+16h], 0FFFFh
mov     [eax+18h], bx
cmp     cl, 4
jnb     short loc_4C6807
cmp     [esp+8+arg_0], 0
jnz     short loc_4C6807
mov     word ptr [eax+56h], 400h
jmp     short loc_4C680D

loc_4C6807:
mov     word ptr [edx+56h], 0

loc_4C680D:
mov     al, [esi+1]
mov     [edx+0Eh], al
mov     al, [esp+8+arg_4]
mov     [edx+0Fh], al

loc_4C681A:
pop     edi
pop     esi
retn    8
sub_4C67C6 endp




sub_4C681F proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     ecx, [eax+0Ch]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, ecx
mov     esi, ds:off_537F04[edx*4]
xor     edx, edx
mov     [esp+18h+var_18], edx

loc_4C6847:
cmp     word ptr [esi], 0
jz      short loc_4C6879
mov     ah, [esi+5]
test    ah, ah
xor     edx, edx
mov     dl, byte ptr [esp+18h+var_18]
push    edx
xor     edx, edx
mov     dl, ah
push    edx
xor     ecx, ecx
mov     cl, [esi+4]
mov     ebx, [esi]
sar     ebx, 10h
movsx   edx, word ptr [esi]
mov     eax, edi
call    sub_4C67C6
inc     [esp+18h+var_18]
add     esi, 6
jmp     short loc_4C6847

loc_4C6879:
mov     ecx, [edi+0Ch]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, ecx
mov     esi, ds:off_537F08[edx*4]

loc_4C6892:
cmp     word ptr [esi], 0
jz      short loc_4C68B5
push    0
push    0
mov     ebx, [esi]
sar     ebx, 10h
movsx   edx, word ptr [esi]
mov     ecx, 4
mov     eax, edi
call    sub_4C67C6
add     esi, 4
jmp     short loc_4C6892

loc_4C68B5:
add     esp, 4

loc_4C68B8:
pop     edi

loc_4C68B9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C681F endp




sub_4C68BE proc near
push    ecx
push    edx
mov     edx, eax
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ecx, [edx+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
mov     ax, ds:word_537F30[eax*4]
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     ecx, [edx+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
mov     ax, ds:word_537F32[eax*4]
mov     word ptr ds:dword_5F889E+2, ax
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     ds:dword_5F8890, 0FFFF0000h
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     ecx, ecx
mov     word ptr ds:dword_5F88A4, cx
mov     edx, [edx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     ax, ds:word_537F34[eax*4]
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, cx
xor     cl, cl
mov     ds:byte_5F88AC, cl
pop     edx
pop     ecx
retn
sub_4C68BE endp




sub_4C6985 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
xor     edx, edx
mov     [esp+24h+var_20], edx
mov     edx, offset byte_5F8364
mov     ecx, [eax+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
mov     eax, ds:off_537F04[eax*4]
mov     ecx, [esp+24h+var_24]
add     ecx, 14h

loc_4C69B9:
cmp     word ptr [eax], 0
jnz     short loc_4C69C6
xor     al, al
jmp     loc_4C6AAC

loc_4C69C6:
xor     ebx, ebx
mov     bl, [eax+4]
inc     ebx
shl     ebx, 6
mov     [esp+24h+var_1C], bx
cmp     byte ptr [eax+5], 0
jnz     short loc_4C6A2A
mov     ebx, [edx+16h]
sar     ebx, 10h
mov     esi, [edx+2Eh]
sar     esi, 10h
add     ebx, esi
sar     ebx, 1
mov     esi, [eax]
sar     esi, 10h
mov     edi, [esp+24h+var_20+2]
sar     edi, 10h
lea     ebp, [esi+edi]
movsx   ebx, bx
cmp     ebx, ebp
jg      loc_4C6A7A
sub     esi, edi
cmp     ebx, esi
jl      loc_4C6A7A
mov     bx, [eax]
sub     bx, [edx+2Ch]
mov     si, [eax]
sub     si, [ecx]
movsx   edi, bx
movsx   esi, si
imul    esi, edi
test    esi, esi
jl      short loc_4C6A86
jmp     short loc_4C6A75

loc_4C6A2A:
mov     esi, [edx+12h]
sar     esi, 10h
mov     ebx, [edx+2Ah]
sar     ebx, 10h
add     ebx, esi
sar     ebx, 1
movsx   edi, word ptr [eax]
mov     esi, [esp+24h+var_20+2]
sar     esi, 10h
lea     ebp, [edi+esi]
movsx   ebx, bx
cmp     ebx, ebp
jg      short loc_4C6A7A
sub     edi, esi
cmp     ebx, edi
jl      short loc_4C6A7A
mov     bx, [eax+2]
sub     bx, [edx+30h]
mov     si, [eax+2]
mov     di, [ecx+4]
sub     esi, edi
mov     edi, esi
movsx   esi, bx
movsx   edi, di
imul    esi, edi
test    esi, esi
jl      short loc_4C6A86

loc_4C6A75:
test    bx, bx
jz      short loc_4C6A86

loc_4C6A7A:
inc     [esp+24h+var_20]
add     eax, 6
jmp     loc_4C69B9

loc_4C6A86:
mov     edx, [esp+24h+var_24]
mov     edx, [edx+9]
sar     edx, 18h
cmp     edx, [esp+24h+var_20]
jz      short loc_4C6A99
mov     al, 1
jmp     short loc_4C6AAC

loc_4C6A99:
mov     edx, [esp+24h+var_24]
inc     byte ptr [edx+0Ch]
cmp     word ptr [eax+6], 0
jnz     short loc_4C6AAA
mov     al, 2
jmp     short loc_4C6AAC

loc_4C6AAA:
mov     al, 3

loc_4C6AAC:
add     esp, 0Ch
pop     ebp
jmp     loc_4C68B8
sub_4C6985 endp




sub_4C6AB5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000001Dh
call    sub_4D89E4
mov     al, [ecx+0Fh]
inc     al
mov     [ecx+0Eh], al
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6AB5 endp




sub_4C6AE3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+0Ch]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
shl     edx, 4
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     ebx, ds:dword_77E814[edx]
cmp     ebx, 3
jnz     short loc_4C6B3A
shl     ebx, 2
add     ebx, eax
mov     eax, [ecx+58h]
and     al, 0FCh
mov     edx, ds:dword_537F0C[ebx]
sub     edx, eax
mov     eax, edx
mov     ecx, 0Fh
xor     edx, edx
div     ecx
imul    eax, eax
add     eax, ds:dword_537F1C[ebx]
jmp     short loc_4C6B43

loc_4C6B3A:
mov     edx, ebx
mov     eax, ds:dword_537F1C[eax+edx*4]

loc_4C6B43:
call    sub_4A62A5
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6AE3 endp




sub_4C6B4C proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ebx, eax
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     short loc_4C6B6C

loc_4C6B5D:
lea     edi, [ecx+1]
mov     [esp+18h+var_18], edi
cmp     edi, 3
jge     loc_4C6C08

loc_4C6B6C:
mov     edx, [ebx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ecx, [esp+18h+var_18]
add     eax, ecx
shl     eax, 4
mov     edx, [ebx+58h]
cmp     edx, ds:dword_77E808[eax]
ja      short loc_4C6B5D
mov     esi, 2

loc_4C6B91:
cmp     esi, [esp+18h+var_18]
jle     short loc_4C6BE4
mov     edx, [ebx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, esi
shl     eax, 4
mov     edx, ds:(dword_77E7F6+2)[eax]
mov     ds:dword_77E808[eax], edx
xor     edx, edx

loc_4C6BB6:
mov     ecx, [ebx+0Ch]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
add     eax, esi
shl     eax, 4
lea     ecx, [edx+edx]
add     eax, ecx
mov     cx, ds:word_77E7FC[eax]
mov     word ptr ds:dword_77E80C[eax], cx
inc     edx
cmp     edx, 4
jl      short loc_4C6BB6
dec     esi
jmp     short loc_4C6B91

loc_4C6BE4:
mov     edx, [ebx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, [esp+18h+var_18]
shl     eax, 4
mov     edx, [ebx+58h]
mov     ds:dword_77E808[eax], edx
mov     al, byte ptr [esp+18h+var_18]
jmp     loc_4C68B5

loc_4C6C08:
mov     al, 3
jmp     loc_4C68B5
sub_4C6B4C endp




sub_4C6C0F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, offset unk_56FCB4
mov     esi, ds:dword_77E730
xor     ebx, ebx
jmp     short loc_4C6C41

loc_4C6C22:
cmp     al, 0Eh
jnz     short loc_4C6C34

loc_4C6C26:
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE477

loc_4C6C34:
inc     ebx
add     edx, 60h ; '`'
cmp     ebx, 20h ; ' '
jge     loc_4C68B9

loc_4C6C41:
mov     cl, bl
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4C6C34
mov     al, [edx+2]
cmp     al, 18h
jb      short loc_4C6C22
jbe     short loc_4C6C26
cmp     al, 19h
jbe     short loc_4C6C26
cmp     al, 21h ; '!'
jz      short loc_4C6C26
jmp     short loc_4C6C34
sub_4C6C0F endp

jpt_4C6C83 dd offset loc_4C6C8A ; jump table for switch statement
dd offset loc_4C6CAA
dd offset loc_4C6CBA
dd offset loc_4C6CF5



sub_4C6C6E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
and     eax, 0FFh
jmp     jpt_4C6C83[eax*4] ; switch jump

loc_4C6C8A:             ; jumptable 004C6C83 case 0
mov     eax, 10h
call    sub_4D9040
mov     eax, 7E0h
call    sub_47E8B8
call    sub_4C6C0F

loc_4C6CA3:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C6CAA:             ; jumptable 004C6C83 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
jmp     short loc_4C6CA3

loc_4C6CBA:             ; jumptable 004C6C83 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
cmp     ds:byte_77EAB8, 0
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     ds:word_77EA80, 50h ; 'P'
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000001Dh
call    sub_4D89E4
mov     edx, 2Fh ; '/'
xor     eax, eax
call    sub_4A0E24
jmp     short loc_4C6CA3

loc_4C6CF5:             ; jumptable 004C6C83 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     byte ptr [ecx+0Eh], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

def_4C6C83:             ; jumptable 004C6C83 default case
pop     edx             ; jumptable 004C6D37 default case
pop     ecx
pop     ebx
retn
sub_4C6C6E endp

align 2
jpt_4C6D37 dd offset loc_4C6D3E ; jump table for switch statement
dd offset loc_4C6D61
dd offset loc_4C6DAE
dd offset loc_4C6DD4
dd offset loc_4C6DF9
dd offset loc_4C6E46



sub_4C6D26 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
and     eax, 0FFh
jmp     jpt_4C6D37[eax*4] ; switch jump

loc_4C6D3E:             ; jumptable 004C6D37 case 0
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
xor     edx, edx
mov     dl, ds:byte_537DE0[eax]
xor     eax, eax
call    sub_4A0E24

loc_4C6D5A:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C6D61:             ; jumptable 004C6D37 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C6C83 ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
add     eax, edx
mov     dh, ds:byte_537DE1[eax]
cmp     dh, 0FFh
jnz     short loc_4C6D9F
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_4C6D97:
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C6D9F:
mov     [ecx+0Fh], dh
mov     eax, 9
call    sub_49E0D7
jmp     short loc_4C6D5A

loc_4C6DAE:             ; jumptable 004C6D37 case 2
cmp     ds:word_6E23D6, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     edx, 80h
mov     eax, 18h
call    sub_4DC979
mov     eax, ecx
call    sub_4C68BE
jmp     short loc_4C6D5A

loc_4C6DD4:             ; jumptable 004C6D37 case 3
mov     eax, 1
call    sub_49E0D7
mov     eax, ecx
call    sub_4C681F
mov     byte ptr [ecx+0Ch], 0
mov     dword ptr [ecx+58h], 0
mov     byte ptr [ecx+0Dh], 0
jmp     loc_4C6D5A

loc_4C6DF9:             ; jumptable 004C6D37 case 4
cmp     ds:word_6E23D6, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
shl     edx, 2
add     edx, 4Eh ; 'N'
add     edx, ds:dword_77E814[eax]
xor     eax, eax
call    sub_4A0E24
mov     eax, 10h
call    sub_4D9040
jmp     loc_4C6D5A

loc_4C6E46:             ; jumptable 004C6D37 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C6C83      ; jumptable 004C6C83 default case
; jumptable 004C6D37 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, 39h ; '9'
mov     eax, 2
call    sub_4A0E24
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     edx, ebx
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
shl     edx, 2
add     edx, 64h ; 'd'
add     edx, ds:dword_77E814[eax]
mov     eax, 3
call    sub_4A0E24
mov     eax, 25000Dh
call    sub_4D8E42
inc     byte ptr [ecx+9]
jmp     loc_4C6D97
sub_4C6D26 endp

db 8Dh, 40h, 0
jpt_4C6F12 dd offset loc_4C6FC9 ; jump table for switch statement
dd offset loc_4C6F19
dd offset loc_4C6F25
dd offset loc_4C6FBA



sub_4C6EC6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4C6ED6
inc     dword ptr [ecx+58h]
jmp     short loc_4C6EFE

loc_4C6ED6:
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     ebx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4C6EFB
mov     edx, (offset dword_5F8376+2)
mov     eax, 169h
call    sub_4D8BC3

loc_4C6EFB:
dec     byte ptr [ecx+0Dh]

loc_4C6EFE:
mov     eax, ecx
call    sub_4C6985
cmp     al, 3           ; switch 4 cases
ja      def_4C6F12      ; jumptable 004C6F12 default case
and     eax, 0FFh
jmp     jpt_4C6F12[eax*4] ; switch jump

loc_4C6F19:             ; jumptable 004C6F12 case 1
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
jmp     def_4C6F12      ; jumptable 004C6F12 default case

loc_4C6F25:             ; jumptable 004C6F12 case 2
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Ah
call    sub_4D8BC3
mov     eax, ecx
call    sub_4C6B4C
mov     ds:byte_55D3B8, al
inc     byte ptr [ecx+9]
cmp     ds:byte_55D3B8, 0
jz      short loc_4C6F86
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
cmp     ds:dword_77E814[eax], 3
jnz     short loc_4C6F74
lea     eax, [ebx+201h]
call    sub_47E888
test    eax, eax
jz      short loc_4C6F7D

loc_4C6F74:
mov     byte ptr [ecx+0Ah], 2
jmp     def_4C6F12      ; jumptable 004C6F12 default case

loc_4C6F7D:
mov     byte ptr [ecx+0Ah], 3
jmp     def_4C6F12      ; jumptable 004C6F12 default case

loc_4C6F86:
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
cmp     ds:dword_77E814[eax], 3
jnz     short loc_4C6FAE
lea     eax, [ebx+201h]
call    sub_47E888
test    eax, eax
jz      short loc_4C6FB4

loc_4C6FAE:
mov     byte ptr [ecx+0Ah], 4
jmp     short def_4C6F12 ; jumptable 004C6F12 default case

loc_4C6FB4:
mov     byte ptr [ecx+0Ah], 5
jmp     short def_4C6F12 ; jumptable 004C6F12 default case

loc_4C6FBA:             ; jumptable 004C6F12 case 3
mov     edx, (offset dword_5F8376+2)
mov     eax, 167h
call    sub_4D8BC3

loc_4C6FC9:             ; jumptable 004C6F12 case 0
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ebx, ds:dword_77E814[eax]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     edx, [ecx+58h]
cmp     edx, ds:dword_537F0C[eax+ebx*4]
jb      short def_4C6F12 ; jumptable 004C6F12 default case
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 1

def_4C6F12:             ; jumptable 004C6F12 default case
cmp     byte ptr [ecx+9], 2
jnz     short loc_4C7025
mov     eax, 2
call    sub_4A0E75
mov     eax, 3
call    sub_4A0E75
mov     eax, 40h ; '@'
call    sub_4D9040

loc_4C7025:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C6EC6 endp




sub_4C7029 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_4C703B
cmp     al, 1
jz      short loc_4C705B
pop     edx
pop     ecx
retn

loc_4C703B:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4C7074
mov     edx, 32h ; '2'
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
retn

loc_4C705B:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C7074
call    sub_4D8EFD
test    eax, eax
jnz     short loc_4C7074
mov     eax, ecx
call    sub_4C6AB5

loc_4C7074:
pop     edx
pop     ecx
retn
sub_4C7029 endp




sub_4C7077 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_4C7089
cmp     al, 1
jz      short loc_4C70A9
pop     edx
pop     ecx
retn

loc_4C7089:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4C70C2
mov     edx, 34h ; '4'
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
retn

loc_4C70A9:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C70C2
call    sub_4D8EFD
test    eax, eax
jnz     short loc_4C70C2
mov     eax, ecx
call    sub_4C6AB5

loc_4C70C2:
pop     edx
pop     ecx
retn
sub_4C7077 endp

align 2
jpt_4C70EB dd offset loc_4C70F2 ; jump table for switch statement
dd offset loc_4C7147
dd offset loc_4C718E
dd offset loc_4C71A2



sub_4C70D6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C70EB      ; jumptable 004C70EB default case
and     eax, 0FFh
jmp     jpt_4C70EB[eax*4] ; switch jump

loc_4C70F2:             ; jumptable 004C70EB case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C70EB      ; jumptable 004C70EB default case
mov     eax, ecx
call    sub_4C6AE3
mov     eax, 7
call    sub_47EEAE
mov     edx, 35h ; '5'
xor     eax, eax
call    sub_4A0E24
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edx, ds:dword_77E814[eax]
cmp     edx, 3
jnb     short loc_4C717F
lea     ebx, [edx+1]
mov     ds:dword_77E814[eax], ebx
jmp     short loc_4C717F

loc_4C7147:             ; jumptable 004C70EB case 1
mov     bl, ds:byte_55D3B8
cmp     bl, 3
jnb     short loc_4C7186
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C70EB ; jumptable 004C70EB default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, bl
add     eax, edx
call    sub_4A62B7
mov     edx, 2

loc_4C7178:
xor     eax, eax
call    sub_4A0E24

loc_4C717F:
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7186:
mov     byte ptr [ecx+0Bh], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C718E:             ; jumptable 004C70EB case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C70EB ; jumptable 004C70EB default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7178

loc_4C71A2:             ; jumptable 004C70EB case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C70EB ; jumptable 004C70EB default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C70EB ; jumptable 004C70EB default case
mov     eax, ecx
call    sub_4C6AB5

def_4C70EB:             ; jumptable 004C70EB default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C70D6 endp

db 8Dh, 40h, 0
jpt_4C71E7 dd offset loc_4C71EE ; jump table for switch statement
dd offset loc_4C7250
dd offset loc_4C728B
dd offset loc_4C729F



sub_4C71D2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C71E7      ; jumptable 004C71E7 default case
and     eax, 0FFh
jmp     jpt_4C71E7[eax*4] ; switch jump

loc_4C71EE:             ; jumptable 004C71E7 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C71E7      ; jumptable 004C71E7 default case
mov     eax, [ecx+0Ch]
sar     eax, 18h
add     eax, 201h
call    sub_47E8B8
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     al, ds:byte_537F2C[eax*4]
and     eax, 0FFh
call    sub_4A629F
mov     eax, 7
call    sub_47EEAE
mov     edx, 36h ; '6'

loc_4C7242:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7250:             ; jumptable 004C71E7 case 1
mov     bl, ds:byte_55D3B8
cmp     bl, 3
jnb     short loc_4C7283
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, bl
add     eax, edx
call    sub_4A62B7
mov     edx, 2
jmp     short loc_4C7242

loc_4C7283:
mov     byte ptr [ecx+0Bh], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C728B:             ; jumptable 004C71E7 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7242

loc_4C729F:             ; jumptable 004C71E7 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C71E7 ; jumptable 004C71E7 default case
mov     eax, [ecx+0Ch]
sar     eax, 18h
add     eax, 201h
call    sub_47E8B8
mov     eax, ecx
call    sub_4C6AB5

def_4C71E7:             ; jumptable 004C71E7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C71D2 endp

db 8Bh, 0C0h
jpt_4C72F3 dd offset loc_4C72FA ; jump table for switch statement
dd offset loc_4C734F
dd offset loc_4C7387
dd offset loc_4C739B



sub_4C72DE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C72F3      ; jumptable 004C72F3 default case
and     eax, 0FFh
jmp     jpt_4C72F3[eax*4] ; switch jump

loc_4C72FA:             ; jumptable 004C72F3 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C72F3      ; jumptable 004C72F3 default case
mov     eax, ecx
call    sub_4C6AE3
mov     eax, 7
call    sub_47EEAE
mov     edx, 37h ; '7'
xor     eax, eax
call    sub_4A0E24
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edx, ds:dword_77E814[eax]
cmp     edx, 3
jnb     short loc_4C7380
lea     ebx, [edx+1]
mov     ds:dword_77E814[eax], ebx
jmp     short loc_4C7380

loc_4C734F:             ; jumptable 004C72F3 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_55D3B8
add     eax, edx
call    sub_4A62B7
mov     edx, 2

loc_4C7379:
xor     eax, eax
call    sub_4A0E24

loc_4C7380:
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7387:             ; jumptable 004C72F3 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7379

loc_4C739B:             ; jumptable 004C72F3 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C72F3 ; jumptable 004C72F3 default case
mov     eax, ecx
call    sub_4C6AB5

def_4C72F3:             ; jumptable 004C72F3 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C72DE endp

db 8Bh, 0C0h
jpt_4C73DE dd offset loc_4C73E5 ; jump table for switch statement
dd offset loc_4C7446
dd offset loc_4C7473
dd offset loc_4C7487



sub_4C73CA proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4C73DE      ; jumptable 004C73DE default case
and     eax, 0FFh
jmp     jpt_4C73DE[eax*4] ; switch jump

loc_4C73E5:             ; jumptable 004C73DE case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C73DE      ; jumptable 004C73DE default case
mov     eax, [ecx+0Ch]
sar     eax, 18h
add     eax, 201h
call    sub_47E8B8
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     al, ds:byte_537F2C[eax*4]
and     eax, 0FFh
call    sub_4A629F
mov     eax, 7
call    sub_47EEAE
mov     edx, 4Dh ; 'M'

loc_4C7439:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
retn

loc_4C7446:             ; jumptable 004C73DE case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C73DE ; jumptable 004C73DE default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
xor     eax, eax
mov     al, ds:byte_55D3B8
add     eax, edx
call    sub_4A62B7
mov     edx, 2
jmp     short loc_4C7439

loc_4C7473:             ; jumptable 004C73DE case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C73DE ; jumptable 004C73DE default case
mov     edx, [ecx+0Ch]
sar     edx, 18h
add     edx, 3
jmp     short loc_4C7439

loc_4C7487:             ; jumptable 004C73DE case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C73DE ; jumptable 004C73DE default case
call    sub_4D8EFD
test    eax, eax
jnz     short def_4C73DE ; jumptable 004C73DE default case
mov     eax, ecx
call    sub_4C6AB5

def_4C73DE:             ; jumptable 004C73DE default case
pop     edx
pop     ecx
retn
sub_4C73CA endp




sub_4C74A3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4C74A9[edx*4]
pop     edx
retn
sub_4C74A3 endp




sub_4C74B2 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4C74BB[ecx*4]
mov     eax, [edx+58h]
call    sub_4A62AB
pop     edx
pop     ecx
retn
sub_4C74B2 endp




sub_4C74CD proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C74E5
jbe     short loc_4C74FF
cmp     al, 2
jz      loc_4C755D
pop     edx
pop     ecx
retn

loc_4C74E5:
test    al, al
jnz     loc_4C75A0
mov     edx, 38h ; '8'
xor     eax, eax
call    sub_4A0E24

loc_4C74F9:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_4C74FF:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C75A0
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, 35Fh
mov     word ptr ds:dword_77EA52, 0FFBFh
mov     word ptr ds:dword_77EA52+2, 160h
mov     word ptr ds:dword_77EA5A, 0C00h
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
jmp     short loc_4C74F9

loc_4C755D:
cmp     al, byte ptr ds:dword_77EA5A+2
jnz     short loc_4C75A0
inc     byte ptr ds:dword_77EA5A+2
mov     ds:word_77EA80, 7Fh
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 200h
call    sub_47EA91
mov     byte ptr ds:word_77E7FC, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, ecx
call    sub_4DE477

loc_4C75A0:
pop     edx
pop     ecx
retn
sub_4C74CD endp




sub_4C75A3 proc near
push    edx
push    esi
push    edi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C75AD[edx*4]
lea     edi, [esi+14h]
mov     esi, (offset dword_5F838E+2)
movsd
movsd
pop     edi
pop     esi
pop     edx
retn
sub_4C75A3 endp




sub_4C75C2 proc near
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, dx
mov     word ptr ds:dword_5F889E+2, bx
cwde
shl     eax, 10h
mov     ds:dword_5F888C, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_5F8890, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, cx
mov     ds:word_5F88A8, dx
xor     ah, ah
mov     ds:byte_5F88AC, ah
retn
sub_4C75C2 endp




sub_4C762A proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
mov     ebp, ds:dword_77E8D4
shl     ebp, 3
add     ebp, offset off_538110
mov     ecx, [ebp+0]
xor     esi, esi

loc_4C7645:
xor     eax, eax
mov     al, [ebp+4]
cmp     esi, eax
jge     loc_4C773F
call    sub_4DE043
mov     edx, eax
mov     ebx, eax
test    eax, eax
jz      loc_4C7736
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 26h ; '&'
mov     al, [ecx+4]
mov     [edx+0Ch], al
mov     al, [ecx+5]
mov     [edx+0Dh], al
mov     byte ptr [edx+0Eh], 0
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+1]
mov     [edx+0Fh], al
mov     ax, [ecx]
mov     [edx+14h], ax
mov     ax, [ecx+2]
mov     [edx+18h], ax
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4C76CA
call    rand_
xor     ah, ah
and     al, 0Fh
inc     eax
imul    eax, 7
add     eax, 78h ; 'x'
mov     [edx+16h], ax
neg     eax
mov     [edx+16h], ax
call    rand_
and     eax, 3
mov     edi, eax
shl     eax, 2
add     eax, edi
add     eax, eax
add     eax, 64h ; 'd'
jmp     short loc_4C76FC

loc_4C76CA:
call    rand_
xor     ah, ah
and     al, 0Fh
inc     eax
imul    eax, 5
add     eax, 78h ; 'x'
mov     [edx+16h], ax
mov     edi, eax
neg     edi
mov     [edx+16h], di
call    rand_
and     eax, 3
mov     edi, eax
shl     eax, 2
add     eax, edi
add     eax, eax
add     eax, 32h ; '2'

loc_4C76FC:
mov     [edx+0DCh], eax
call    rand_
and     eax, 0F00h
mov     edx, eax
call    sub_4EF008
imul    eax, [ebx+0DCh]
shr     eax, 0Ch
mov     [ebx+44h], ax
mov     eax, edx
call    sub_4EF003
imul    eax, [ebx+0DCh]
shr     eax, 0Ch
mov     [ebx+48h], ax

loc_4C7736:
inc     esi
add     ecx, 6
jmp     loc_4C7645

loc_4C773F:
add     esp, 4

loc_4C7742:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C762A endp




sub_4C7749 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ebp, edx
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     short loc_4C7768

loc_4C775C:
mov     ebx, [esp+18h+var_18]
inc     ebx
mov     [esp+18h+var_18], ebx
cmp     ebx, 3
jge     short loc_4C77B4

loc_4C7768:
mov     eax, [esp+18h+var_18]
shl     eax, 4
cmp     ebp, [edi+eax]
ja      short loc_4C775C
mov     esi, 2

loc_4C7778:
mov     eax, [esp+18h+var_18]
cmp     esi, eax
jle     short loc_4C77A9
mov     eax, esi
shl     eax, 4
mov     edx, [edi+eax-10h]
mov     [edi+eax], edx
xor     edx, edx

loc_4C778D:
mov     ecx, esi
shl     ecx, 4
add     ecx, edi
mov     eax, edx
mov     bx, [ecx+eax*2-0Ch]
mov     [ecx+eax*2+4], bx
inc     edx
cmp     edx, 4
jl      short loc_4C778D
dec     esi
jmp     short loc_4C7778

loc_4C77A9:
shl     eax, 4
mov     [edi+eax], ebp
mov     al, byte ptr [esp+18h+var_18]
jmp     short loc_4C77B6

loc_4C77B4:
mov     al, 3

loc_4C77B6:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4C7749 endp




sub_4C77BF proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E8D4
shl     ecx, 3
cmp     ds:dword_77E8D4, 3
jnz     short loc_4C77F7
mov     eax, [eax+58h]
and     al, 0FCh
mov     ebx, ds:dword_537FD4[ecx]
sub     ebx, eax
mov     eax, ebx
mov     ebx, 0Fh
xor     edx, edx
div     ebx
imul    eax, eax
add     eax, ds:dword_537FD0[ecx]
jmp     short loc_4C77FD

loc_4C77F7:
mov     eax, ds:dword_537FD0[ecx]

loc_4C77FD:
call    sub_4A62A5
pop     edx
pop     ecx
pop     ebx
retn
sub_4C77BF endp




sub_4C7806 proc near
push    edx
mov     edx, ds:dword_77E8D4
mov     eax, [eax+58h]
cmp     eax, ds:dword_537FD4[edx*8]
jnb     short loc_4C7842
mov     eax, offset byte_57098C
xor     edx, edx
jmp     short loc_4C782D

loc_4C7822:
inc     edx
add     eax, 11Ch
cmp     edx, 20h ; ' '
jge     short loc_4C7842

loc_4C782D:
cmp     byte ptr [eax], 0
jz      short loc_4C7822
cmp     byte ptr [eax+2], 26h ; '&'
jnz     short loc_4C7822
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4C7822
xor     al, al
pop     edx
retn

loc_4C7842:
mov     al, 1
pop     edx
retn
sub_4C7806 endp




sub_4C7846 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_4C785C
cmp     al, 1
jz      short loc_4C7896
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C785C:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4C78CD
mov     eax, esi
call    sub_4C762A
mov     eax, 10h
call    sub_4D9040
xor     ecx, ecx
mov     ebx, 300h
mov     edx, 0FFFFFFFFh
xor     eax, eax
call    sub_4C75C2
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7896:
cmp     ds:word_6E23D6, 0
jnz     short loc_4C78CD
cmp     ds:byte_77EAB8, 0
jnz     short loc_4C78CD
xor     ebx, ebx
mov     edx, 1
mov     eax, 80000021h
call    sub_4D89E4
mov     edx, 0Dh
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

loc_4C78CD:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C7846 endp

jpt_4C7912 dd offset loc_4C7919 ; jump table for switch statement
dd offset loc_4C7947
dd offset loc_4C79B9
dd offset loc_4C79D0
dd offset loc_4C7A34
dd offset loc_4C7B7D
dd offset loc_4C7BB6
dd offset loc_4C7BF1
dd offset loc_4C7C0C
dd offset loc_4C7C2D



sub_4C78FA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     al, [eax+9]
cmp     al, 9           ; switch 10 cases
ja      def_4C7912      ; jumptable 004C7912 default case
and     eax, 0FFh
jmp     jpt_4C7912[eax*4] ; switch jump

loc_4C7919:             ; jumptable 004C7912 case 0
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
mov     eax, 10h
call    sub_4D9040
mov     edx, 16h
add     edx, ds:dword_77E8D4

loc_4C793B:
xor     eax, eax

loc_4C793D:
call    sub_4A0E24
jmp     loc_4C7BE3

loc_4C7947:             ; jumptable 004C7912 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C7912      ; jumptable 004C7912 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Dh
call    sub_4D8BC3
mov     ds:word_77EA80, 50h ; 'P'
mov     eax, 25000Eh
call    sub_4D8E42
mov     dword ptr [esi+58h], 0
mov     byte ptr [esi+0Ch], 0
mov     edx, 1Ah
mov     eax, 2
call    sub_4A0E24
mov     edx, 28h ; '('
add     edx, ds:dword_77E8D4
mov     eax, 3
jmp     short loc_4C793D

loc_4C79B9:             ; jumptable 004C7912 case 2
mov     eax, esi
call    sub_4C7806
test    al, al
jnz     loc_4C7BE3
inc     dword ptr [esi+58h]
jmp     def_4C7912      ; jumptable 004C7912 default case

loc_4C79D0:             ; jumptable 004C7912 case 3
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4C7912      ; jumptable 004C7912 default case
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Dh
call    sub_4D8BC3
mov     eax, 40h ; '@'
call    sub_4D9040
mov     eax, 2
call    sub_4A0E75
mov     eax, 3
call    sub_4A0E75
mov     eax, ds:dword_77E8D4
mov     edx, [esi+58h]
cmp     edx, ds:dword_537FD4[eax*8]
jb      short loc_4C7A2A
mov     edx, 20h ; ' '
jmp     loc_4C793B

loc_4C7A2A:
mov     edx, 1Fh
jmp     loc_4C793B

loc_4C7A34:             ; jumptable 004C7912 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4C7912      ; jumptable 004C7912 default case
mov     eax, ds:dword_77E8D4
mov     edx, [esi+58h]
cmp     edx, ds:dword_537FD4[eax*8]
jb      short loc_4C7A88
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010022h
call    sub_4D89E4
mov     ds:byte_55D3BC, 0FFh
jmp     loc_4C7BE3

loc_4C7A88:
mov     eax, 7
call    sub_47EEAE
mov     eax, 315h
call    sub_47E888
test    eax, eax
jnz     short loc_4C7AF8
cmp     ds:dword_77E8D4, 3
jnz     short loc_4C7ACB
mov     eax, 5Ch ; '\'
call    sub_4A629F
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
mov     eax, 315h
call    sub_47E8B8
jmp     short loc_4C7ADE

loc_4C7ACB:
mov     eax, esi
call    sub_4C77BF
mov     edx, 11h
xor     eax, eax
call    sub_4A0E24

loc_4C7ADE:
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010023h
call    sub_4D89E4
mov     ds:byte_55D3BC, 0FFh
jmp     short loc_4C7B67

loc_4C7AF8:
mov     edx, [esi+58h]
mov     eax, offset dword_77E8C8
call    sub_4C7749
mov     ds:byte_55D3BC, al
test    al, al
jnz     short loc_4C7B43
mov     eax, esi
call    sub_4C77BF
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010024h
call    sub_4D89E4
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Eh
call    sub_4D8BC3
jmp     short loc_4C7B67

loc_4C7B43:
mov     eax, esi
call    sub_4C77BF
mov     edx, 11h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010023h
call    sub_4D89E4

loc_4C7B67:
mov     edi, ds:dword_77E8D4
cmp     edi, 3
jnb     short loc_4C7BE3
lea     ebp, [edi+1]
mov     ds:dword_77E8D4, ebp
jmp     short loc_4C7BE3

loc_4C7B7D:             ; jumptable 004C7912 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
cmp     ds:byte_55D3BC, 3
jnb     short loc_4C7BAC
xor     eax, eax
mov     al, ds:byte_55D3BC
add     eax, 0Ch
call    sub_4A62B7
mov     edx, 24h ; '$'
jmp     loc_4C793B

loc_4C7BAC:
mov     edx, 1Dh
jmp     loc_4C793B

loc_4C7BB6:             ; jumptable 004C7912 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
call    sub_4D8EFD
test    eax, eax
jnz     def_4C7912      ; jumptable 004C7912 default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4C7BE8
mov     eax, 9

loc_4C7BDE:
call    sub_49E0D7

loc_4C7BE3:
inc     byte ptr [esi+9]
jmp     short def_4C7912 ; jumptable 004C7912 default case

loc_4C7BE8:
inc     byte ptr [esi+8]

loc_4C7BEB:
mov     byte ptr [esi+9], 0
jmp     short def_4C7912 ; jumptable 004C7912 default case

loc_4C7BF1:             ; jumptable 004C7912 case 7
cmp     ds:word_6E23D6, 0
jnz     short def_4C7912 ; jumptable 004C7912 default case
mov     edx, 80h
mov     eax, 18h
call    sub_4DC979
jmp     short loc_4C7BE3

loc_4C7C0C:             ; jumptable 004C7912 case 8
mov     eax, esi
call    sub_4C762A
xor     ecx, ecx
mov     ebx, 300h
mov     edx, 0FFFFFFFFh
xor     eax, eax
call    sub_4C75C2
mov     eax, 1
jmp     short loc_4C7BDE

loc_4C7C2D:             ; jumptable 004C7912 case 9
cmp     ds:word_6E23D6, 0
jz      short loc_4C7BEB

def_4C7912:             ; jumptable 004C7912 default case
mov     eax, [esi+58h]
call    sub_4A62AB
jmp     loc_4C7742
sub_4C78FA endp




sub_4C7C44 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C7C5C
jbe     short loc_4C7C76
cmp     al, 2
jz      loc_4C7CD4
pop     edx
pop     ecx
retn

loc_4C7C5C:
test    al, al
jnz     loc_4C7CFC
mov     edx, 15h
xor     eax, eax
call    sub_4A0E24

loc_4C7C70:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_4C7C76:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C7CFC
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, 0FF42h
mov     word ptr ds:dword_77EA52, 0FFBFh
mov     word ptr ds:dword_77EA52+2, 296h
mov     word ptr ds:dword_77EA5A, 800h
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
jmp     short loc_4C7C70

loc_4C7CD4:
cmp     al, byte ptr ds:dword_77EA5A+2
jnz     short loc_4C7CFC
inc     byte ptr ds:dword_77EA5A+2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     ds:word_77EA80, 7Fh
mov     eax, ecx
call    sub_4DE477

loc_4C7CFC:
pop     edx
pop     ecx
retn
sub_4C7C44 endp




sub_4C7CFF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C7D05[edx*4]
pop     edx
retn
sub_4C7CFF endp




sub_4C7D0E proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
cmp     byte ptr [edx+3], 0FFh
jnz     short loc_4C7D2C
call    sub_4C7D5E
mov     eax, edx
call    sub_4DE477
pop     edx
pop     ebx
retn

loc_4C7D2C:
cmp     byte ptr [edx+8], 0
jnz     short loc_4C7D38
or      byte ptr [edx], 2
inc     byte ptr [edx+8]

loc_4C7D38:
mov     bx, [eax+56h]
cmp     bx, 3ACh
jl      short loc_4C7D4A
cmp     bx, 0C54h
jle     short loc_4C7D54

loc_4C7D4A:
mov     dword ptr [edx+50h], 2404040h
pop     edx
pop     ebx
retn

loc_4C7D54:
mov     dword ptr [edx+50h], offset unk_808080
pop     edx
pop     ebx
retn
sub_4C7D0E endp




sub_4C7D5E proc near

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

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     eax, ds:off_538160
mov     [esp+40h+var_20], eax
xor     edx, edx
mov     [esp+40h+var_1C], edx
xor     ecx, ecx

loc_4C7D78:
mov     eax, [esp+40h+var_1C]
shl     eax, 3
cmp     ds:byte_53815C[eax], 0FFh
jz      short loc_4C7DB6
mov     dl, ds:byte_77E7D4
cmp     dl, ds:byte_53815C[eax]
jnz     short loc_4C7DB0
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_53815D[eax]
jnz     short loc_4C7DB0
mov     eax, ds:off_538160[eax]
mov     [esp+40h+var_20], eax
jmp     short loc_4C7DBE

loc_4C7DB0:
inc     [esp+40h+var_1C]
jmp     short loc_4C7D78

loc_4C7DB6:
test    ecx, ecx
jz      loc_4C7F98

loc_4C7DBE:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+40h+var_34], eax
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+40h+var_3C], eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+40h+var_38], eax
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+40h+var_40], eax
xor     eax, eax
mov     al, ds:byte_77E802
mov     [esp+40h+var_24], eax
mov     eax, [esp+40h+var_38]
mov     [esp+40h+var_30], eax

loc_4C7DFC:
mov     eax, [esp+40h+var_30]
cmp     eax, [esp+40h+var_40]
jge     loc_4C7F98
mov     eax, [esp+40h+var_34]
mov     [esp+40h+var_2C], eax

loc_4C7E11:
mov     eax, [esp+40h+var_2C]
cmp     eax, [esp+40h+var_3C]
jge     loc_4C7F8F
sub     eax, [esp+40h+var_34]
add     eax, eax
add     eax, ds:dword_77E700
mov     ebp, [esp+40h+var_30]
sub     ebp, [esp+40h+var_38]
xor     ecx, ecx
mov     cx, ds:word_77EAAE
imul    ebp, ecx
add     ebp, ebp
movsx   ebp, word ptr [eax+ebp]
test    ebp, ebp
jle     loc_4C7F86
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     [esp+40h+var_28], eax
xor     esi, esi
mov     [esp+40h+var_1C], esi

loc_4C7E67:
mov     eax, [esp+40h+var_1C]
shl     eax, 4
add     eax, [esp+40h+var_20]
mov     eax, [eax+4]
cmp     eax, [esp+40h+var_28]
jnz     loc_4C7F6D
xor     edi, edi
jmp     short loc_4C7E8D

loc_4C7E83:
inc     edi
cmp     edi, 2
jge     loc_4C7F63

loc_4C7E8D:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C7E83
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 34h ; '4'
mov     ebx, [esp+40h+var_1C]
shl     ebx, 4
add     ebx, [esp+40h+var_20]
lea     esi, [ebx+edi]
xor     eax, eax
mov     al, [esi+0Eh]
sar     eax, 4
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dl, [esi+0Eh]
and     dl, 0Fh
mov     [ecx+0Ch], dl
mov     al, byte ptr [esp+40h+var_24]
mov     [ecx+0Dh], al
mov     esi, ebp
shl     esi, 2
sub     esi, ebp
mov     dx, word ptr ds:(dword_6E40AA+2)[esi*4]
mov     ax, [ebx+8]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_53817C[eax*4]
add     edx, eax
mov     [ecx+48h], dx
mov     dx, word ptr ds:(dword_6E40AE+2)[esi*4]
mov     ax, [ebx+0Ch]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_53817E[eax*4]
add     edx, eax
mov     [ecx+4Ch], dx
mov     dx, word ptr ds:dword_6E40AE[esi*4]
mov     ax, [ebx+0Ah]
add     edx, eax
mov     [ecx+4Ah], dx
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[esi*4]
mov     [ecx+3Ch], eax
mov     eax, [ebx]
call    sub_4A7AAC
mov     [ecx+40h], eax
jmp     loc_4C7E83

loc_4C7F63:
inc     [esp+40h+var_24]
inc     ds:byte_77E802

loc_4C7F6D:
mov     eax, [esp+40h+var_1C]
inc     eax
mov     [esp+40h+var_1C], eax
shl     eax, 4
add     eax, [esp+40h+var_20]
cmp     dword ptr [eax], 0
jnz     loc_4C7E67

loc_4C7F86:
inc     [esp+40h+var_2C]
jmp     loc_4C7E11

loc_4C7F8F:
inc     [esp+40h+var_30]
jmp     loc_4C7DFC

loc_4C7F98:
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C7D5E endp




sub_4C7FA2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+3], 1
jnz     short loc_4C7FBF
mov     eax, edx
call    sub_4C8364
mov     eax, edx
call    sub_4DE477
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7FBF:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_4C7FC6[ecx*4]
cmp     byte ptr [edx+0Ch], 0
jnz     short loc_4C7FF3
mov     bx, word ptr ds:dword_5F83B8+2
cmp     bx, 3ACh
jl      short loc_4C7FE8
cmp     bx, 0C54h
jle     short loc_4C8018

loc_4C7FE8:
mov     dword ptr [edx+50h], 2404040h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7FF3:
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
movsx   ecx, ax
mov     eax, [edx+9]
sar     eax, 18h
shl     eax, 0Ah
sub     ecx, eax
mov     eax, ecx
call    abs_
cmp     eax, 3ACh
jl      short loc_4C7FE8

