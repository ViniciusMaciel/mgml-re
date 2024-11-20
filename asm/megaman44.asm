loc_4652E2:
dec     word ptr [esi+18h]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_46523D endp

db 8Bh, 0C0h
jpt_465318 dd offset loc_46531F ; jump table for switch statement
dd offset loc_4653AB
dd offset loc_46541D
dd offset loc_465572



sub_4652FD proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
push    eax
mov     ebp, edx
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_465318      ; jumptable 00465318 default case
and     eax, 0FFh
jmp     jpt_465318[eax*4] ; switch jump

loc_46531F:             ; jumptable 00465318 case 0
call    sub_4DE13B
test    eax, eax
jz      short loc_46533E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
mov     esi, [esp+30h+var_30]
lea     esi, [esi+14h]
movsd
movsd

loc_46533E:
mov     edx, [esp+30h+var_30]
add     edx, 14h
mov     eax, 0A1h
call    sub_4D8BC3
or      byte ptr [ebp+15h], 1
mov     word ptr [ebp+18h], 78h ; 'x'
mov     word ptr [ebp+24h], 8
mov     word ptr [ebp+1Ch], 0
mov     eax, [esp+30h+var_30]
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
lea     esi, [esp+30h+var_2C]
call    sub_4DD510
mov     eax, [esp+30h+var_30]
mov     eax, [eax+1Ch]
add     [esp+30h+var_2C], eax
mov     eax, [esp+30h+var_30]
mov     eax, [eax+24h]
add     [esp+30h+var_24], eax
lea     edx, [esp+30h+var_1C]
lea     eax, [esp+30h+var_2C]
call    sub_4DD57B

loc_4653A0:
mov     eax, [esp+30h+var_30]
inc     byte ptr [eax+0Ah]
jmp     def_465318      ; jumptable 00465318 default case

loc_4653AB:             ; jumptable 00465318 case 1
cmp     word ptr [edx+1Ch], 0Ah
jnz     short loc_4653B8
mov     word ptr [edx+24h], 8

loc_4653B8:
mov     ax, [ebp+1Ch]
cmp     ax, 1Eh
jnz     short loc_4653CA
mov     word ptr [ebp+24h], 0Ch
jmp     short loc_4653D6

loc_4653CA:
cmp     ax, 32h ; '2'
jnz     short loc_4653D6
mov     word ptr [ebp+24h], 10h

loc_4653D6:
cmp     word ptr [ebp+1Ch], 3Ch ; '<'
jge     short loc_4653EE
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, [esp+30h+var_30]
call    sub_4DD43B

loc_4653EE:
mov     ax, [ebp+24h]
mov     edx, [esp+30h+var_30]
add     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
test    byte ptr [ebp+2Dh], 10h
jnz     short loc_465415
cmp     dword ptr [ebp+30h], 1
jnz     def_465318      ; jumptable 00465318 default case

loc_465415:
mov     word ptr [ebp+18h], 0
jmp     short loc_4653A0

loc_46541D:             ; jumptable 00465318 case 2
cmp     dword ptr [edx+34h], 1
jnz     short loc_465497
test    byte ptr [ebp+18h], 3
jnz     loc_46554E
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_46548A
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+14h]
add     eax, esi
mov     [edx+48h], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+16h]
add     eax, esi
mov     [edx+4Ah], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+18h]
add     eax, esi
mov     [edx+4Ch], ax

loc_46548A:
lea     edx, [ecx+48h]
mov     eax, 0A1h
jmp     loc_465549

loc_465497:
cmp     word ptr [ebp+18h], 0
jnz     loc_46554E
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_4654FF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+14h]
add     eax, esi
mov     [edx+48h], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+16h]
add     eax, esi
mov     [edx+4Ah], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+18h]
add     eax, esi
mov     [edx+4Ch], ax

loc_4654FF:
call    sub_4DE13B
mov     [ebp+4], eax
test    eax, eax
jz      short loc_465541
mov     byte ptr [eax], 5
mov     eax, [ebp+4]
mov     byte ptr [eax+2], 10h
mov     eax, [ebp+4]
mov     byte ptr [eax+3], 5
mov     eax, [ebp+4]
mov     edx, [esp+30h+var_30]
mov     dx, [edx+14h]
mov     [eax+48h], dx
mov     eax, [ebp+4]
mov     word ptr [eax+4Ah], 0
mov     eax, [ebp+4]
mov     edx, [esp+30h+var_30]
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_465541:
lea     edx, [ecx+48h]
mov     eax, 14Dh

loc_465549:
call    sub_4D8BC3

loc_46554E:
mov     bx, [ebp+18h]
cmp     bx, 2
jnz     short loc_465560
mov     eax, [esp+30h+var_30]
and     byte ptr [eax], 0FDh
jmp     short loc_46556C

loc_465560:
cmp     bx, 7
jnz     short loc_46556C
mov     eax, [esp+30h+var_30]
inc     byte ptr [eax+0Ah]

loc_46556C:
inc     word ptr [ebp+18h]
jmp     short def_465318 ; jumptable 00465318 default case

loc_465572:             ; jumptable 00465318 case 3
or      byte ptr [edx+14h], 1

def_465318:             ; jumptable 00465318 default case
mov     eax, [esp+30h+var_30]
cmp     byte ptr [eax+0Ah], 2
jnb     short loc_4655CD
call    sub_4DE13B
test    eax, eax
jz      short loc_4655CD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     edx, [esp+30h+var_30]
mov     dx, [edx+14h]
mov     [eax+1Ch], dx
mov     edx, [esp+30h+var_30]
mov     dx, [edx+16h]
mov     [eax+1Eh], dx
mov     edx, [esp+30h+var_30]
mov     dx, [edx+18h]
mov     [eax+20h], dx
mov     dl, [ebp+16h]
and     dl, 0Fh
mov     [eax+9], dl

loc_4655CD:
inc     word ptr [ebp+1Ch]
add     esp, 1Ch
jmp     loc_464F56
sub_4652FD endp



; Attributes: thunk

sub_4655D9 proc near
jmp     sub_4DE2F6
sub_4655D9 endp




sub_4655DE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
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
mov     [ebp+6], ax
xor     ebx, ebx
mov     bl, [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_46562D[ebx*4]
mov     ah, [ecx+0ACh]
test    ah, ah
jnz     loc_46572B
mov     dx, [ecx+44h]
test    dx, dx
jnz     loc_4656CF
mov     edx, [ebp+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4656AD
mov     bx, [ecx+58h]
test    bx, bx
jz      short loc_465679
jle     short loc_465670
mov     eax, ebx
sub     eax, 8
mov     [ecx+58h], ax
jmp     short loc_465679

loc_465670:
mov     edi, ebx
add     edi, 8
mov     [ecx+58h], di

loc_465679:
cmp     word ptr [ecx+58h], 0
jnz     loc_4656FC
test    byte ptr [ecx+0Dh], 1
jnz     short loc_46569C
mov     eax, [ebp+4]
sar     eax, 10h
sar     eax, 4
and     eax, 3

loc_465696:
mov     [ebp+0Ch], ax
jmp     short loc_4656FC

loc_46569C:
mov     eax, [ebp+4]
sar     eax, 10h
sar     eax, 6
and     eax, 3
add     eax, 12h
jmp     short loc_465696

loc_4656AD:
mov     ebx, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ax, ds:word_516D1C[edx*2]
mov     [ecx+58h], ax
inc     word ptr [ebp+0Ch]
and     byte ptr [ebp+0Dh], 7Fh
jmp     short loc_4656FC

loc_4656CF:
jge     short loc_4656E3
mov     eax, [ecx+56h]
sar     eax, 10h
cmp     eax, 0FFFFFFA0h
jle     short loc_4656F6
sub     word ptr [ecx+58h], 8
jmp     short loc_4656F6

loc_4656E3:
mov     si, [ecx+58h]
cmp     si, 60h ; '`'
jge     short loc_4656F6
mov     edi, esi
add     edi, 8
mov     [ecx+58h], di

loc_4656F6:
mov     word ptr [ebp+0Ch], 0FFFFh

loc_4656FC:
mov     al, [ecx+0ADh]
mov     bh, [ecx+0ACh]
cmp     al, bh
jz      short loc_46571B
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_465722

loc_46571B:
mov     eax, ecx
call    sub_4DEB53

loc_465722:
mov     eax, ecx
call    sub_4DF7CB
jmp     short loc_465749

loc_46572B:
cmp     ah, [ecx+0ADh]
jz      short loc_465742
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_465749

loc_465742:
mov     eax, ecx
call    sub_4DEADD

loc_465749:
test    byte ptr [ebp+4], 10h
jz      short loc_465756
mov     edx, 80h
jmp     short loc_465758

loc_465756:
xor     edx, edx

loc_465758:
push    edx
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+8]
or      eax, 5880000h
push    eax
lea     eax, [ebp+28h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0DCh
call    sub_4E01FC
mov     dword ptr [ebp+28h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4655DE endp




sub_465799 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+4], 0
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+10h], 0
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 0FFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+8], ax
mov     word ptr [edx+18h], 0
mov     ax, [edx+18h]
mov     [edx+16h], ax
mov     [edx+14h], ax
mov     [edx+12h], ax
mov     word ptr [edx+1Ah], 0
mov     ax, [edx+1Ah]
mov     [edx+1Ch], ax
mov     [edx+1Eh], ax
mov     word ptr [edx+24h], 0
mov     ax, [edx+24h]
mov     [edx+22h], ax
mov     [edx+20h], ax
mov     dword ptr [edx+28h], 0
mov     dword ptr [edx+2Ch], 0
lea     eax, [edx+30h]
xor     ebx, ebx
xor     edx, edx
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516D10
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_465799 endp




sub_4658AF proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx+4], 2
jz      short loc_4658C3
mov     eax, ecx
call    sub_4665A1

loc_4658C3:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_4658DC
jbe     short loc_465906
cmp     al, 2
jz      loc_465947
jmp     loc_46595C

loc_4658DC:
test    al, al
jnz     loc_46595C
mov     dl, [ebx+4]
test    dl, 20h
jz      short loc_4658F8

loc_4658EC:
mov     byte ptr [ecx+0ACh], 2
jmp     loc_46595C

loc_4658F8:
test    dl, 4
jz      short loc_46595C
mov     byte ptr [ecx+0ACh], 1
jmp     short loc_46595C

loc_465906:
mov     dl, [ebx+4]
test    dl, 10h
jz      short loc_46591F
mov     ah, dl
and     ah, 0FBh
mov     [ebx+4], ah

loc_465916:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_46595C

loc_46591F:
test    dl, 20h
jnz     short loc_4658EC
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_46595C
test    dl, 4
jz      short loc_465916
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_46595C

loc_465947:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_46595C
mov     byte ptr [ecx+0ACh], 3

loc_46595C:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_465964[esi*4]
test    byte ptr [ebx+4], 1
jz      short loc_465996
mov     al, [ecx+9]
test    al, al
jbe     short loc_46597E
cmp     al, 1
jz      short loc_465984
jmp     short loc_46598C

loc_46597E:
mov     byte ptr [ecx+9], 1
jmp     short loc_46598C

loc_465984:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

loc_46598C:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx+4], 0FEh

loc_465996:
pop     esi
pop     ecx
pop     ebx
retn
sub_4658AF endp




sub_46599A proc near
push    ebx
push    ecx
mov     edx, [edx]
mov     cl, [eax+0Ch]
mov     bl, 1
shl     bl, cl
or      [edx+0Ch], bl
call    sub_4DE2F6
pop     ecx
pop     ebx
retn
sub_46599A endp




sub_4659B0 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
lea     eax, [edx+30h]
mov     edx, ebx
call    sub_4E19CA
movzx   esi, byte ptr [ebx+0Ah]
mov     edx, ecx
mov     eax, ebx
call    ds:funcs_4659C9[esi*4]
cmp     byte ptr [ebx+0ACh], 1
jnz     short loc_4659DD
and     byte ptr [ecx+4], 0F7h

loc_4659DD:
test    byte ptr [ecx+4], 8
jz      short loc_4659FA
test    byte ptr [ecx+0Ah], 3
jnz     short loc_4659F2
mov     edx, ecx
mov     eax, ebx
call    sub_466610

loc_4659F2:
inc     word ptr [ecx+0Ah]
pop     esi
pop     ecx
pop     ebx
retn

loc_4659FA:
mov     word ptr [ecx+0Ah], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4659B0 endp




sub_465A04 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_465A2B
jbe     loc_465AB2
cmp     al, 2
jz      loc_465B0B
jmp     loc_465B4E

loc_465A2B:
test    al, al
jnz     loc_465B4E
call    sub_4DE13B
test    eax, eax
jz      short loc_465A4F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_465A4F:
mov     eax, [esp+18h+var_18]
mov     word ptr [eax+0Eh], 0
cmp     word ptr [ebp+18h], 400h
jge     short loc_465A90
mov     word ptr [ebp+46h], 0
cmp     word ptr [ebp+14h], 0
jge     short loc_465A75
mov     word ptr [ebp+44h], 0FF00h
jmp     short loc_465A7B

loc_465A75:
mov     word ptr [ebp+44h], 100h

loc_465A7B:
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0FF80h
mov     byte ptr [ebp+0Ah], 1
jmp     loc_465B4E

loc_465A90:
mov     eax, [esp+18h+var_18]
or      byte ptr [eax+4], 20h
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 80h
mov     word ptr [ebp+48h], 0FE00h
mov     byte ptr [ebp+0Ah], 2
jmp     loc_465B4E

loc_465AB2:
mov     ecx, [ebp+42h]
sar     ecx, 10h
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
cmp     word ptr [ebp+14h], 0
jge     short loc_465AD8
mov     eax, [ebp+12h]
sar     eax, 10h
neg     eax
jmp     short loc_465ADE

loc_465AD8:
mov     eax, [ebp+12h]
sar     eax, 10h

loc_465ADE:
cmp     eax, 600h
jg      short loc_465AED
cmp     word ptr [ebp+18h], 400h
jl      short loc_465B4E

loc_465AED:
call    sub_4DE13B
test    eax, eax
jz      short loc_465A90
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
jmp     short loc_465A90

loc_465B0B:
add     word ptr [ebp+46h], 4
mov     eax, [esp+18h+var_18]
cmp     word ptr [eax+0Eh], 3Ch ; '<'
jnz     short loc_465B20
mov     word ptr [ebp+48h], 0FC00h

loc_465B20:
mov     eax, [esp+18h+var_18]
inc     word ptr [eax+0Eh]
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFF80h
jle     short loc_465B4E
mov     eax, [esp+18h+var_18]
or      byte ptr [eax+4], 1

loc_465B4E:
add     esp, 4

loc_465B51:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_465A04 endp

db 8Dh, 40h, 0
jpt_465BF5 dd offset loc_465BFC ; jump table for switch statement
dd offset loc_465C11
dd offset loc_465C22
dd offset loc_465CA3
dd offset loc_465CC4
dd offset loc_465CFE
dd offset loc_465D1C
dd offset loc_465D32
dd offset loc_465D69
dd offset loc_465DDB
dd offset loc_465E16
dd offset loc_465E55
jpt_465C4D dd offset loc_465C5C ; jump table for switch statement
dd offset loc_465C54
dd offset loc_465C54
dd offset loc_465C64
dd offset loc_465C64
jpt_465D44 dd offset loc_465D53 ; jump table for switch statement
dd offset loc_465D4B
dd offset loc_465D4B
dd offset loc_465D5E
dd offset loc_465D5E
jpt_465D91 dd offset loc_465D98 ; jump table for switch statement
dd offset loc_465DA9
dd offset loc_465DB1
dd offset loc_465DC2
dd offset loc_465DCA



sub_465BC6 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
cmp     byte ptr [eax+0Bh], 0
jbe     short loc_465BE6
cmp     byte ptr [ecx+0Bh], 6
jnb     short loc_465BE6
mov     eax, [ebx]
cmp     byte ptr [eax+0Eh], 0
jle     short loc_465BE6
mov     byte ptr [ecx+0Bh], 6

loc_465BE6:
mov     al, [ecx+0Bh]
cmp     al, 0Bh         ; switch 12 cases
ja      def_465BF5      ; jumptable 00465BF5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_465BF5[edx*4] ; switch jump

loc_465BFC:             ; jumptable 00465BF5 case 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 0
inc     byte ptr [ecx+0Bh]

loc_465C11:             ; jumptable 00465BF5 case 1
mov     eax, [ebx]
cmp     byte ptr [eax+9], 2
jnz     def_465BF5      ; jumptable 00465BF5 default case
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465C22:             ; jumptable 00465BF5 case 2
sub     word ptr [ecx+18h], 80h
mov     dx, [ebx+0Eh]
inc     edx
mov     [ebx+0Eh], dx
cmp     dx, 60h ; '`'
jnz     def_465BF5      ; jumptable 00465BF5 default case
mov     word ptr [ecx+16h], 0
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      short def_465C4D ; jumptable 00465C4D default case
and     eax, 0FFh
jmp     jpt_465C4D[eax*4] ; switch jump

loc_465C54:             ; jumptable 00465C4D cases 1,2
mov     word ptr [ecx+18h], 0A00h
jmp     short def_465C4D ; jumptable 00465C4D default case

loc_465C5C:             ; jumptable 00465C4D case 0
mov     word ptr [ecx+18h], 800h
jmp     short def_465C4D ; jumptable 00465C4D default case

loc_465C64:             ; jumptable 00465C4D cases 3,4
mov     word ptr [ecx+18h], 0C00h

def_465C4D:             ; jumptable 00465C4D default case
mov     al, [ecx+0Ch]
test    al, al
jnz     short loc_465C7F
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 10h
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465C7F:
cmp     al, 1
jz      short loc_465C87
cmp     al, 2
jnz     short loc_465C95

loc_465C87:
mov     word ptr [ebx+0Eh], 8
mov     word ptr [ebx+10h], 8
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465C95:
mov     word ptr [ebx+0Eh], 10h
mov     word ptr [ebx+10h], 0
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465CA3:             ; jumptable 00465BF5 case 3
mov     si, [ebx+0Eh]
test    si, si
jnz     short loc_465CB8
mov     dh, al
inc     dh
mov     [ecx+0Bh], dh
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CB8:
mov     edi, esi
dec     edi
mov     [ebx+0Eh], di
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CC4:             ; jumptable 00465BF5 case 4
sub     word ptr [ecx+16h], 10h
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFF800h
jg      short loc_465CE4

def_465D44:             ; jumptable 00465D44 default case
mov     word ptr [ecx+16h], 0F800h

def_465D91:             ; jumptable 00465D91 default case
inc     byte ptr [ecx+0Bh]
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CE4:
mov     ax, [ecx+46h]
cmp     ax, 2
jle     def_465BF5      ; jumptable 00465BF5 default case
mov     edx, eax
dec     edx
mov     [ecx+46h], dx
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CFE:             ; jumptable 00465BF5 case 5
mov     dx, [ebx+10h]
test    dx, dx
jnz     short loc_465D10
mov     byte ptr [ecx+0Bh], 8
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D10:
mov     esi, edx
dec     esi
mov     [ebx+10h], si
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D1C:             ; jumptable 00465BF5 case 6
mov     ebx, [ebx]
cmp     byte ptr [ebx+0Eh], 2
jnz     def_465BF5      ; jumptable 00465BF5 default case
inc     al
mov     [ecx+0Bh], al
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D32:             ; jumptable 00465BF5 case 7
mov     word ptr [ecx+16h], 0
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      short def_465D44 ; jumptable 00465D44 default case
and     eax, 0FFh
jmp     jpt_465D44[eax*4] ; switch jump

loc_465D4B:             ; jumptable 00465D44 cases 1,2
mov     word ptr [ecx+18h], 0A00h
jmp     short def_465D44 ; jumptable 00465D44 default case

loc_465D53:             ; jumptable 00465D44 case 0
mov     word ptr [ecx+18h], 800h
jmp     def_465D44      ; jumptable 00465D44 default case

loc_465D5E:             ; jumptable 00465D44 cases 3,4
mov     word ptr [ecx+18h], 0C00h
jmp     def_465D44      ; jumptable 00465D44 default case

loc_465D69:             ; jumptable 00465BF5 case 8
mov     eax, [ebx]
cmp     byte ptr [eax+9], 3
jnz     def_465BF5      ; jumptable 00465BF5 default case
mov     word ptr [ebx+0Eh], 80h
mov     word ptr [ecx+46h], 4
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      def_465D91      ; jumptable 00465D91 default case
and     eax, 0FFh
jmp     jpt_465D91[eax*4] ; switch jump

loc_465D98:             ; jumptable 00465D91 case 0
mov     word ptr [ecx+44h], 0

loc_465D9E:
mov     word ptr [ecx+48h], 0
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DA9:             ; jumptable 00465D91 case 1
mov     word ptr [ecx+44h], 4
jmp     short loc_465D9E

loc_465DB1:             ; jumptable 00465D91 case 2
mov     word ptr [ecx+44h], 0FFFCh

loc_465DB7:
mov     word ptr [ecx+48h], 4
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DC2:             ; jumptable 00465D91 case 3
mov     word ptr [ecx+44h], 8
jmp     short loc_465DB7

loc_465DCA:             ; jumptable 00465D91 case 4
mov     word ptr [ecx+44h], 0FFF8h
mov     word ptr [ecx+48h], 8
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DDB:             ; jumptable 00465BF5 case 9
mov     ax, [ebx+0Eh]
test    ax, ax
jnz     short loc_465DF5
mov     [ecx+44h], ax
mov     [ecx+48h], ax
mov     [ecx+46h], ax
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DF5:
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
dec     word ptr [ebx+0Eh]
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465E16:             ; jumptable 00465BF5 case 10
or      byte ptr [ebx+4], 2
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ebx+16h], 0
mov     ax, [ebx+16h]
mov     [ebx+14h], ax
mov     [ebx+12h], ax
mov     word ptr [ebx+0Eh], 0
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 6
mov     [ebx+10h], ax
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465E55:             ; jumptable 00465BF5 case 11
cmp     word ptr [ebx+10h], 0
jnz     short loc_465E8D
lea     edx, [ecx+14h]
mov     eax, 1A0h
call    sub_4D8BC3
mov     word ptr [ecx+48h], 0
mov     eax, [ebx+4]
sar     eax, 10h
sar     eax, 8
xor     ah, ah
and     al, 0Fh
cwde
shl     eax, 8
mov     [ebx+1Ch], ax
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Bh], 0
jmp     short loc_465E97

loc_465E8D:
mov     word ptr [ecx+48h], 0FFF8h
dec     word ptr [ebx+10h]

loc_465E97:
mov     ax, [ecx+48h]
add     [ecx+18h], ax

def_465BF5:             ; jumptable 00465BF5 default case
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
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_465BC6 endp




sub_465EC8 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_465EDE
cmp     al, 1
jz      short loc_465F26
jmp     loc_466013

loc_465EDE:
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+10h], 0
mov     word ptr [edx+1Ah], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+18h], 0
test    byte ptr [edx+6], 1
jz      short loc_465F10
mov     eax, [edx+4]
sar     eax, 10h
sar     eax, 2
and     eax, 7
jmp     short loc_465F1F

loc_465F10:
mov     eax, [edx+4]
sar     eax, 10h
sar     eax, 4
and     eax, 7
cwde
neg     eax

loc_465F1F:
mov     [edx+1Eh], ax
inc     byte ptr [ebx+0Bh]

loc_465F26:
mov     dx, [ecx+0Eh]
cmp     dx, 140h
jge     loc_465FF0
mov     eax, edx
cmp     dx, 80h
jb      short loc_465F8B
jbe     loc_465FCE
cmp     dx, 0E0h
jb      short loc_465F6E
jbe     loc_465FBE
cmp     dx, 100h
jb      loc_465FE2
jbe     short loc_465FAE
cmp     dx, 120h
jz      loc_465FDC
jmp     loc_465FE2

loc_465F6E:
cmp     dx, 0A0h
jb      loc_465FE2
jbe     loc_465FD6
cmp     dx, 0C0h
jz      short loc_465FB6
jmp     loc_465FE2

loc_465F8B:
cmp     dx, 20h ; ' '
jb      short loc_465FA3
jbe     short loc_465FB6
cmp     dx, 40h ; '@'
jb      short loc_465FE2
jbe     short loc_465FBE
cmp     dx, 60h ; '`'
jz      short loc_465FC6
jmp     short loc_465FE2

loc_465FA3:
test    dx, dx
jnz     short loc_465FE2
mov     word ptr [ecx+16h], 0FFFFh

loc_465FAE:
mov     word ptr [ecx+18h], 14h
jmp     short loc_465FE2

loc_465FB6:
mov     word ptr [ecx+16h], 0
jmp     short loc_465FE2

loc_465FBE:
mov     word ptr [ecx+18h], 0
jmp     short loc_465FE2

loc_465FC6:
mov     word ptr [ecx+18h], 0FFECh
jmp     short loc_465FE2

loc_465FCE:
mov     word ptr [ecx+16h], 1
jmp     short loc_465FE2

loc_465FD6:
or      byte ptr [ecx+4], 40h
jmp     short loc_465FE2

loc_465FDC:
mov     word ptr [ecx+16h], 0FFFFh

loc_465FE2:
mov     ax, [ecx+1Eh]
add     [ecx+1Ch], ax
inc     word ptr [ecx+0Eh]
jmp     short loc_466013

loc_465FF0:
or      byte ptr [ecx+4], 40h
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 0
cmp     byte ptr [ebx+0Eh], 2
jg      short loc_46600F
cmp     byte ptr [ebx+0Fh], 0
jz      short loc_46600F
inc     byte ptr [ebx+0Ah]

loc_46600F:
mov     byte ptr [ebx+0Bh], 0

loc_466013:
mov     ax, [ecx+16h]
mov     dx, [ebx+48h]
add     edx, eax
mov     [ebx+48h], dx
add     [ebx+18h], dx
mov     ax, [ecx+18h]
add     [ecx+1Ah], ax
mov     edx, [ecx+18h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     [ebx+14h], ax
mov     edx, [ecx+18h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
cwde
sub     eax, 600h
mov     [ebx+16h], ax
mov     edx, [ebx+2Ah]
sar     edx, 10h
mov     eax, [ebx+12h]
sar     eax, 10h
cmp     edx, eax
jge     short loc_466080
mov     eax, 1
jmp     short loc_466085

loc_466080:
mov     eax, 0FFFFFFFFh

loc_466085:
mov     [ebx+44h], ax
test    byte ptr [ecx+4], 40h
jz      short loc_4660C1
cmp     word ptr [ecx+0Eh], 0A1h
jnz     short loc_4660AB
mov     word ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0FA00h
mov     word ptr [ebx+18h], 0F800h
jmp     short loc_4660BD

loc_4660AB:
mov     word ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0FA00h
mov     word ptr [ebx+18h], 800h

loc_4660BD:
and     byte ptr [ecx+4], 0BFh

loc_4660C1:
mov     eax, [ebx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+1Ch], eax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     eax, [ebx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+24h], eax
cmp     word ptr [ebx+18h], 300h
jge     short loc_4660F3
and     byte ptr [ecx+4], 0F7h
jmp     short loc_46610A

loc_4660F3:
test    byte ptr [ecx+6], 1
jz      short loc_46610A
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFA00h
jge     short loc_46610A
or      byte ptr [ecx+4], 8

loc_46610A:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_466133
mov     ah, [ecx+4]
test    ah, 80h
jnz     short loc_466133
mov     dl, ah
or      dl, 80h
mov     [ecx+4], dl
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_466133:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_466143
and     byte ptr [ecx+4], 7Fh

loc_466143:
pop     ecx
pop     ebx
retn
sub_465EC8 endp

jpt_46616D dd offset loc_466174 ; jump table for switch statement
dd offset loc_46619B
dd offset loc_466272
dd offset loc_466286
dd offset loc_4662DD



sub_46615A proc near
push    ebx
push    ecx
push    esi
mov     bl, [eax+0Bh]
cmp     bl, 4           ; switch 5 cases
ja      def_46616D      ; jumptable 0046616D default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_46616D[ecx*4] ; switch jump

loc_466174:             ; jumptable 0046616D case 0
and     byte ptr [edx+4], 0F7h
mov     word ptr [edx+10h], 0
mov     bx, [edx+10h]
mov     [edx+0Eh], bx
mov     word ptr [eax+48h], 0
mov     bx, [eax+48h]
mov     [eax+46h], bx
mov     [eax+44h], bx
inc     byte ptr [eax+0Bh]

loc_46619B:             ; jumptable 0046616D case 1
mov     si, [edx+0Eh]
cmp     si, 40h ; '@'
jge     loc_466253
mov     ebx, esi
cmp     si, 10h
jb      short loc_4661DD
jbe     loc_466216
cmp     si, 30h ; '0'
jb      short loc_4661D2
jbe     loc_46622C
cmp     si, 34h ; '4'
jz      loc_466244
jmp     loc_46624A

loc_4661D2:
cmp     si, 20h ; ' '
jz      short loc_466224
jmp     loc_46624A

loc_4661DD:
test    si, si
jbe     short loc_4661EA
cmp     si, 0Ch
jz      short loc_46620E
jmp     short loc_46624A

loc_4661EA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4661F7
mov     ecx, 0FFFFFFFFh
jmp     short loc_4661FC

loc_4661F7:
mov     ecx, 1

loc_4661FC:
mov     [edx+12h], cx
mov     word ptr [edx+14h], 0FFFFh
mov     word ptr [edx+16h], 2
jmp     short loc_46624A

loc_46620E:
mov     word ptr [edx+16h], 0
jmp     short loc_46624A

loc_466216:
mov     word ptr [edx+12h], 0

loc_46621C:
mov     word ptr [edx+14h], 0
jmp     short loc_46624A

loc_466224:
mov     word ptr [edx+14h], 1
jmp     short loc_46624A

loc_46622C:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_466239
mov     ecx, 1
jmp     short loc_46623E

loc_466239:
mov     ecx, 0FFFFFFFFh

loc_46623E:
mov     [edx+12h], cx
jmp     short loc_46621C

loc_466244:
mov     word ptr [edx+16h], 0FFFEh

loc_46624A:
inc     word ptr [edx+0Eh]
jmp     def_46616D      ; jumptable 0046616D default case

loc_466253:
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     ecx, [edx]
dec     byte ptr [ecx+0Fh]

loc_46626A:
inc     byte ptr [eax+0Bh]
jmp     def_46616D      ; jumptable 0046616D default case

loc_466272:             ; jumptable 0046616D case 2
mov     ecx, [edx]
cmp     byte ptr [ecx+0Fh], 0
jg      def_46616D      ; jumptable 0046616D default case
mov     word ptr [edx+0Eh], 0
jmp     short loc_46626A

loc_466286:             ; jumptable 0046616D case 3
mov     bx, [edx+0Eh]
cmp     bx, 28h ; '('
jge     short loc_4662D5
cmp     bx, 8
jb      short loc_4662A0
jbe     short loc_4662B2
cmp     bx, 20h ; ' '
jz      short loc_4662BA
jmp     short loc_46624A

loc_4662A0:
test    bx, bx
jnz     short loc_46624A
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4662C0
mov     ecx, 1
jmp     short loc_4662CC

loc_4662B2:
mov     word ptr [edx+14h], 0
jmp     short loc_46624A

loc_4662BA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4662C7

loc_4662C0:
mov     ecx, 0FFFFFFFFh
jmp     short loc_4662CC

loc_4662C7:
mov     ecx, 1

loc_4662CC:
mov     [edx+14h], cx
jmp     loc_46624A

loc_4662D5:
mov     word ptr [edx+14h], 0
jmp     short loc_46626A

loc_4662DD:             ; jumptable 0046616D case 4
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0Bh], 0

def_46616D:             ; jumptable 0046616D default case
mov     bx, [edx+12h]
add     [eax+44h], bx
mov     bx, [edx+14h]
add     [eax+46h], bx
mov     dx, [edx+16h]
add     [eax+48h], dx
mov     dx, [eax+44h]
add     [eax+14h], dx
mov     dx, [eax+46h]
add     [eax+16h], dx
mov     dx, [eax+48h]
add     [eax+18h], dx
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
pop     ecx
pop     ebx
retn
sub_46615A endp




sub_46633C proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Bh]
cmp     al, 1
jb      short loc_466358
jbe     short loc_4663B9
cmp     al, 2
jz      loc_4663DC
jmp     loc_4664F0

loc_466358:
test    al, al
jnz     loc_4664F0
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
cmp     word ptr [ebx+14h], 0
jge     short loc_466391
mov     word ptr [edx+20h], 300h
mov     ax, [ebx+16h]
sub     eax, 200h
jmp     short loc_46639E

loc_466391:
mov     word ptr [edx+20h], 0FD00h
mov     ax, [ebx+16h]
add     ah, 2

loc_46639E:
mov     [edx+22h], ax
mov     ax, [ebx+18h]
mov     [ecx+24h], ax
mov     ax, [ecx+6]
xor     ah, ah
and     al, 1
mov     [ecx+1Ah], ax
inc     byte ptr [ebx+0Bh]

loc_4663B9:
cmp     word ptr [ecx+1Ah], 0
jnz     short loc_4663CE
mov     edx, ecx
mov     eax, ebx
call    sub_466831
jmp     loc_4664F0

loc_4663CE:
mov     edx, ecx
mov     eax, ebx
call    sub_46697C
jmp     loc_4664F0

loc_4663DC:
cmp     word ptr [edx+0Eh], 50h ; 'P'
jge     loc_4664D0
mov     ax, [ecx+0Eh]
cmp     ax, 20h ; ' '
jb      short loc_466421
jbe     loc_466483
cmp     ax, 40h ; '@'
jb      short loc_466412
jbe     loc_4664BD
cmp     ax, 48h ; 'H'
jz      loc_4664C6
jmp     loc_4664CA

loc_466412:
cmp     ax, 30h ; '0'
jz      loc_4664A0
jmp     loc_4664CA

loc_466421:
test    ax, ax
jbe     short loc_466431
cmp     ax, 8
jz      short loc_46647D
jmp     loc_4664CA

loc_466431:
cmp     word ptr [ebx+14h], 0
jge     short loc_466456
mov     word ptr [ecx+12h], 1
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+20h], 300h
mov     ax, [ebx+16h]
sub     eax, 200h
jmp     short loc_46646F

loc_466456:
mov     word ptr [ecx+12h], 0FFFFh
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+20h], 0FD00h
mov     ax, [ebx+16h]
add     ah, 2

loc_46646F:
mov     [ecx+22h], ax
mov     ax, [ebx+18h]
mov     [ecx+24h], ax
jmp     short loc_4664CA

loc_46647D:
or      byte ptr [ecx+4], 8
jmp     short loc_4664CA

loc_466483:
mov     word ptr [ecx+12h], 0
cmp     word ptr [ebx+14h], 0
jge     short loc_466498

loc_466490:
mov     word ptr [ecx+14h], 0FFFFh
jmp     short loc_4664CA

loc_466498:
mov     word ptr [ecx+14h], 1
jmp     short loc_4664CA

loc_4664A0:
cmp     word ptr [ebx+14h], 0
jge     short loc_4664AF
mov     word ptr [ecx+12h], 1
jmp     short loc_4664B5

loc_4664AF:
mov     word ptr [ecx+12h], 0FFFFh

loc_4664B5:
mov     word ptr [ecx+14h], 0
jmp     short loc_4664CA

loc_4664BD:
cmp     word ptr [ebx+14h], 0
jl      short loc_466490
jmp     short loc_466498

loc_4664C6:
and     byte ptr [ecx+4], 0F7h

loc_4664CA:
inc     word ptr [ecx+0Eh]
jmp     short loc_4664F0

loc_4664D0:
or      byte ptr [ecx+4], 40h
mov     word ptr [ecx+12h], 0
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+0Eh], 0
mov     byte ptr [ebx+0Bh], 0

loc_4664F0:
mov     ax, [ecx+12h]
add     [ebx+44h], ax
mov     ax, [ecx+14h]
add     [ebx+46h], ax
mov     ax, [ecx+16h]
add     [ebx+48h], ax
mov     ax, [ebx+44h]
add     [ebx+14h], ax
mov     ax, [ebx+46h]
add     [ebx+16h], ax
mov     ax, [ebx+48h]
add     [ebx+18h], ax
test    byte ptr [ecx+4], 40h
jz      short loc_466542
mov     ax, [ecx+20h]
mov     [ebx+14h], ax
mov     ax, [ecx+22h]
mov     [ebx+16h], ax
mov     ax, [ecx+24h]
mov     [ebx+18h], ax
and     byte ptr [ecx+4], 0BFh

loc_466542:
mov     edx, [ebx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+1Ch], edx
mov     edx, [ebx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+20h], edx
mov     edx, [ebx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+24h], edx
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_46658E
mov     dh, [ecx+4]
test    dh, 80h
jnz     short loc_46658E
mov     al, dh
or      al, 80h
mov     [ecx+4], al
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_46658E:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_46659E
and     byte ptr [ecx+4], 7Fh

loc_46659E:
pop     ecx
pop     ebx
retn
sub_46633C endp




sub_4665A1 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+28h]
and     eax, 0FFFFFFh
jz      short loc_466609
test    byte ptr [edx+2Bh], 18h
jz      short loc_4665F5
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_4665DD
mov     dh, [ecx+4]
and     dh, 0E4h
mov     [ecx+4], dh
mov     al, dh
or      al, 11h
mov     [ecx+4], al

loc_4665DD:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_466602

loc_4665F5:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_466602:
or      byte ptr [ecx+4], 4
pop     ecx
pop     ebx
retn

loc_466609:
and     byte ptr [edx+4], 0FBh
pop     ecx
pop     ebx
retn
sub_4665A1 endp




sub_466610 proc near

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
jz      loc_4666F6
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 34h ; '4'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 440h
mov     ebx, 0D00h
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
lea     ecx, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, ecx
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     eax, ecx
call    sub_4667D3
mov     edi, 1

loc_4666F6:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_4667A9
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 34h ; '4'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFBC0h
mov     ebx, 0D00h
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
lea     ecx, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, ecx
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     eax, ecx
call    sub_4667D3
jmp     short loc_4667AD

loc_4667A9:
test    edi, edi
jz      short loc_4667CB

loc_4667AD:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_4667BA
lea     edx, [ecx+14h]
jmp     short loc_4667C1

loc_4667BA:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_4667C1:
mov     eax, 0D0h
call    sub_4D8BC3

loc_4667CB:
add     esp, 44h
jmp     loc_465B51
sub_466610 endp




sub_4667D3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
call    sub_4EE133
mov     dword ptr [eax+4], 2C808080h
mov     ebx, [edx]
sar     ebx, 10h
shl     ebx, 10h
movsx   ecx, word ptr [edx]
and     ecx, 0FFFFh
or      ecx, ebx
mov     [eax+8], ecx
mov     edx, [edx+2]
sar     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D0840C0h
mov     dword ptr [eax+14h], 0E40DFh
mov     dword ptr [eax+1Ch], 5FC0h
mov     dword ptr [eax+24h], 5FDFh
mov     dword ptr [eax+18h], 40h ; '@'
mov     dword ptr [eax+20h], 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4667D3 endp




sub_466831 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     bx, [edx+0Eh]
cmp     bx, 8Ah
jge     loc_46695A
mov     eax, ebx
cmp     bx, 49h ; 'I'
jb      short loc_466894
jbe     loc_46692B
cmp     bx, 6Ah ; 'j'
jb      short loc_466879
jbe     loc_466934
cmp     bx, 75h ; 'u'
jb      loc_466953
jbe     short loc_4668CD
cmp     bx, 7Ah ; 'z'
jz      loc_46693C
jmp     loc_466953

loc_466879:
cmp     bx, 59h ; 'Y'
jb      loc_466953
jbe     loc_466923
cmp     bx, 5Ah ; 'Z'
jz      short loc_4668F2
jmp     loc_466953

loc_466894:
cmp     bx, 30h ; '0'
jb      short loc_4668B1
jbe     short loc_4668E3
cmp     bx, 31h ; '1'
jbe     short loc_46690A
cmp     bx, 41h ; 'A'
jz      loc_466923
jmp     loc_466953

loc_4668B1:
test    bx, bx
jbe     short loc_4668C1
cmp     bx, 15h
jz      short loc_4668D8
jmp     loc_466953

loc_4668C1:
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0

loc_4668CD:
mov     word ptr [edx+16h], 0FFFCh
jmp     loc_466953

loc_4668D8:
mov     word ptr [edx+16h], 0
jmp     loc_466953

loc_4668E3:
or      byte ptr [edx+4], 8
mov     word ptr [edx+16h], 4
jmp     loc_466953

loc_4668F2:
and     byte ptr [edx+4], 0F7h
mov     word ptr [edx+16h], 0
cmp     word ptr [ecx+14h], 0
jge     short loc_466943
mov     ecx, 1
jmp     short loc_46694F

loc_46690A:
cmp     word ptr [ecx+14h], 0
jge     short loc_466918

loc_466911:
mov     ecx, 4
jmp     short loc_46691D

loc_466918:
mov     ecx, 0FFFFFFFCh

loc_46691D:
mov     [edx+12h], cx
jmp     short loc_466953

loc_466923:
mov     word ptr [edx+12h], 0
jmp     short loc_466953

loc_46692B:
cmp     word ptr [ecx+14h], 0
jle     short loc_466911
jmp     short loc_466918

loc_466934:
mov     word ptr [edx+14h], 0
jmp     short loc_466953

loc_46693C:
cmp     word ptr [ecx+14h], 0
jge     short loc_46694A

loc_466943:
mov     ecx, 0FFFFFFFFh
jmp     short loc_46694F

loc_46694A:
mov     ecx, 1

loc_46694F:
mov     [edx+14h], cx

loc_466953:
inc     word ptr [edx+0Eh]
pop     ecx
pop     ebx
retn

loc_46695A:
or      byte ptr [edx+4], 40h
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+0Eh], 0
inc     byte ptr [ecx+0Bh]
pop     ecx
pop     ebx
retn
sub_466831 endp




sub_46697C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     bx, [edx+0Eh]
cmp     bx, 8Ah
jge     loc_466A9C
mov     eax, ebx
cmp     bx, 49h ; 'I'
jb      short loc_4669E3
jbe     loc_466A67
cmp     bx, 65h ; 'e'
jb      short loc_4669C4
jbe     loc_466A40
cmp     bx, 6Ah ; 'j'
jb      loc_466A95
jbe     short loc_466A18
cmp     bx, 7Ah ; 'z'
jz      loc_466A7E
jmp     loc_466A95

loc_4669C4:
cmp     bx, 59h ; 'Y'
jb      loc_466A95
jbe     loc_466A5F
cmp     bx, 5Ah ; 'Z'
jz      loc_466A70
jmp     loc_466A95

loc_4669E3:
cmp     bx, 25h ; '%'
jb      short loc_466A02
jbe     short loc_466A34
cmp     bx, 31h ; '1'
jb      loc_466A95
jbe     short loc_466A46
cmp     bx, 41h ; 'A'
jz      short loc_466A5F
jmp     loc_466A95

loc_466A02:
test    bx, bx
jbe     short loc_466A12
cmp     bx, 20h ; ' '
jz      short loc_466A29
jmp     loc_466A95

loc_466A12:
mov     word ptr [edx+12h], 0

loc_466A18:
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0FFFDh
jmp     loc_466A95

loc_466A29:
mov     word ptr [edx+16h], 0
jmp     loc_466A95

loc_466A34:
or      byte ptr [edx+4], 8
mov     word ptr [edx+16h], 3
jmp     short loc_466A95

loc_466A40:
and     byte ptr [edx+4], 0F7h
jmp     short loc_466A29

loc_466A46:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A54

loc_466A4D:
mov     ecx, 4
jmp     short loc_466A59

loc_466A54:
mov     ecx, 0FFFFFFFCh

loc_466A59:
mov     [edx+12h], cx
jmp     short loc_466A95

loc_466A5F:
mov     word ptr [edx+12h], 0
jmp     short loc_466A95

loc_466A67:
cmp     word ptr [ecx+14h], 0
jle     short loc_466A4D
jmp     short loc_466A54

loc_466A70:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A85
mov     ecx, 1
jmp     short loc_466A91

loc_466A7E:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A8C

loc_466A85:
mov     ecx, 0FFFFFFFFh
jmp     short loc_466A91

loc_466A8C:
mov     ecx, 1

loc_466A91:
mov     [edx+14h], cx

loc_466A95:
inc     word ptr [edx+0Eh]
pop     ecx
pop     ebx
retn

loc_466A9C:
or      byte ptr [edx+4], 40h
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+0Eh], 0
inc     byte ptr [ecx+0Bh]
pop     ecx
pop     ebx
retn
sub_46697C endp

word_466ABE dw 0F76Bh
dword_466AC0 dd 0F2B8F448h, 0F254F510h, 56525153h, 0CEC8357h
dd 0E789C289h
mov     esi, offset word_466ABE
movsd
movsd
movsw
cmp     byte ptr [eax+9], 0
jnz     short loc_466AEA
mov     eax, edx
call    sub_466BC6

loc_466AEA:
mov     ecx, [edx+9]
sar     ecx, 18h
mov     eax, edx
call    ds:funcs_466AF2[ecx*4]
cmp     byte ptr [edx+0Ch], 0
jz      short loc_466B49
cmp     byte ptr [edx+0Dh], 0
jz      short loc_466B17
movsx   ax, byte ptr [edx+0Eh]
sub     [edx+16h], ax
movsx   ax, byte ptr [edx+0Fh]
sub     [edx+18h], ax

loc_466B17:
mov     ebx, [edx+9]
sar     ebx, 18h
mov     ecx, ebx
shl     ecx, 3
sub     ecx, ebx
xor     eax, eax
mov     al, [edx+0Bh]
add     ecx, eax
and     ecx, 3Fh
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
shl     ecx, 4
sar     ecx, 0Ch
mov     eax, [esp+ebx*2-2]
sar     eax, 10h
add     eax, ecx
jmp     short loc_466B95

loc_466B49:
cmp     byte ptr [edx+0Dh], 0
jz      short loc_466B63
movsx   ax, byte ptr [edx+0Eh]
sub     [edx+16h], ax
movsx   ax, byte ptr [edx+0Fh]
sub     [edx+18h], ax
jmp     short loc_466B99

loc_466B63:
mov     ecx, [edx+9]
sar     ecx, 18h
mov     ebx, ecx
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
xor     ebx, ecx
mov     bl, [edx+0Bh]
add     ebx, eax
and     ebx, 3Fh
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [esp+ecx*2-2]
sar     eax, 10h
add     eax, ebx

loc_466B95:
mov     [edx+16h], ax

loc_466B99:
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
inc     byte ptr [edx+0Bh]
mov     eax, edx
call    sub_4DEADD
add     esp, 0Ch
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_466BC6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
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
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_466BC6 endp




sub_466C17 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466C48
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
cmp     ds:byte_560BE4, 2
jnz     short loc_466C41
inc     byte ptr [ecx+0Dh]
jmp     short loc_466C45

loc_466C41:
mov     byte ptr [ecx+0Dh], 0

loc_466C45:
inc     byte ptr [ecx+0Ah]

loc_466C48:
cmp     byte ptr [esi+8], 2
jnz     short loc_466C5B
cmp     dword ptr [esi+10h], 0DEh
jnz     short loc_466C5B
mov     byte ptr [ecx+0Dh], 0

loc_466C5B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466C17 endp




sub_466C60 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466C7F
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466C7F:
cmp     byte ptr [esi+8], 2
jnz     short loc_466CA1
mov     edx, [esi+10h]
cmp     edx, 64h ; 'd'
jnz     short loc_466C95
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466C95:
cmp     edx, 17Ch
jnz     short loc_466CA1
mov     byte ptr [ecx+0Dh], 0

loc_466CA1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466C60 endp




sub_466CA6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466CC5
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466CC5:
cmp     byte ptr [esi+8], 2
jnz     short loc_466CE7
mov     edx, [esi+10h]
cmp     edx, 64h ; 'd'
jnz     short loc_466CDB
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466CDB:
cmp     edx, 118h
jnz     short loc_466CE7
mov     byte ptr [ecx+0Dh], 0

loc_466CE7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466CA6 endp




sub_466CEC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466D0B
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466D0B:
cmp     byte ptr [esi+8], 2
jnz     short loc_466D2D
mov     edx, [esi+10h]
cmp     edx, 1Eh
jnz     short loc_466D21
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466D21:
cmp     edx, 8Ch
jnz     short loc_466D2D
mov     byte ptr [ecx+0Dh], 0

loc_466D2D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466CEC endp




sub_466D32 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466D4B
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466D4B:
pop     edx
pop     ecx
pop     ebx
retn
sub_466D32 endp




sub_466D4F proc near
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+378h]
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     word ptr [eax+15Eh], 4210h
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_466D81[ecx*4]
mov     dword ptr [edx+8], 0
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_466D4F endp




sub_466D94 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+378h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
cmp     ds:byte_77E7D4, 0Ah
jnz     short loc_466DCF
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_466DCF
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_466DD8

loc_466DCF:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_466DD8:
mov     dword ptr [ecx+158h], 3000300h
mov     dword ptr [ecx+15Ch], 300h
mov     word ptr [ebx+44h], 0
mov     byte ptr [ebx+4Ah], 8
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 0
mov     word ptr [ebx+28h], 2
mov     word ptr [ebx+2Ah], 9
mov     word ptr [ebx+2Ch], 4
mov     byte ptr [ebx+50h], 0
mov     byte ptr [ebx+53h], 0
mov     byte ptr [ebx+54h], 0
mov     byte ptr [ebx+4Eh], 0
mov     byte ptr [ebx+48h], 0
mov     byte ptr [ebx+49h], 0
mov     word ptr [ebx+40h], 0
xor     eax, eax
mov     al, [ecx+3]
test    ax, 0FFFFh
jz      short loc_466E49
cmp     al, 1
jnz     short loc_466E49
mov     word ptr [ecx+44h], 0A0h

loc_466E49:
mov     word ptr [ebx+42h], 0
lea     eax, [ebx+18h]
mov     ebx, 0FFFFFFA0h
mov     edx, 0Bh
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+0ACh], 0
mov     al, [ecx+0ACh]
mov     [ecx+0ADh], al
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_516D78
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_466D94 endp

db 8Dh, 40h, 0
jpt_466FDE dd offset loc_466FE5 ; jump table for switch statement
dd offset loc_466FE5
dd offset loc_466FF4
dd offset loc_467001



sub_466EE7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+378h]
mov     ecx, offset byte_5F8364
add     eax, 390h
mov     edx, esi
call    sub_4E19CA
test    eax, eax
jnz     short loc_466F0F
and     byte ptr [edi+4Ah], 0EFh
jmp     short loc_466F13

loc_466F0F:
or      byte ptr [edi+4Ah], 10h

loc_466F13:
mov     dx, [edi+40h]
test    dx, dx
jz      short loc_466F23
mov     ebx, edx
dec     ebx
mov     [edi+40h], bx

loc_466F23:
mov     eax, [edi+8]
and     eax, 0FFFFFFh
jz      loc_467036
mov     dx, [esi+6Eh]
mov     [esi+0B2h], dx
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      short loc_466F54
and     byte ptr [edi+4Ah], 0F7h
mov     byte ptr [esi+9], 6
jmp     loc_467036

loc_466F54:
cmp     byte ptr [ecx+76h], 0
jz      short loc_466F68
mov     edx, [ecx+0C0h]
cmp     esi, edx
jz      loc_467020

loc_466F68:
mov     cx, [edi+40h]
add     ecx, eax
mov     [edi+40h], cx
mov     bl, [edi+4Ah]
test    bl, 4
jnz     loc_467016
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
xor     edx, edx
mov     dx, cx
cmp     edx, eax
jl      loc_467016
mov     bh, bl
or      bh, 4
mov     [edi+4Ah], bh
mov     word ptr [edi+40h], 0
mov     al, [esi+9]
mov     [edi+4Ch], al
mov     byte ptr [esi+9], 5
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+10h]
lea     eax, [esi+14h]
mov     ecx, 1
call    sub_4DE726
xor     ax, ax
mov     ecx, eax
shr     ecx, 10h
cmp     ecx, 3          ; switch 4 cases
ja      short def_466FDE ; jumptable 00466FDE default case
mov     eax, ecx
jmp     jpt_466FDE[eax*4] ; switch jump

loc_466FE5:             ; jumptable 00466FDE cases 0,1
mov     [esi+0Ah], cl
mov     byte ptr [edi+4Bh], 8
mov     word ptr [esi+44h], 8Ch
jmp     short def_466FDE ; jumptable 00466FDE default case

loc_466FF4:             ; jumptable 00466FDE case 2
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 3
jmp     short def_466FDE ; jumptable 00466FDE default case

loc_467001:             ; jumptable 00466FDE case 3
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 2

def_466FDE:             ; jumptable 00466FDE default case
lea     edx, [esi+14h]
mov     eax, 0A2h
jmp     short loc_467028

loc_467016:
lea     edx, [esi+14h]
mov     eax, 0A0h
jmp     short loc_467028

loc_467020:
add     edx, 14h
mov     eax, 0A0h

loc_467028:
call    sub_4D8BC3
mov     word ptr [esi+15Eh], 7FFFh

loc_467036:
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_46704D
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_467046[edx*4]

loc_46704D:
mov     eax, esi
call    sub_4DEB53
mov     ax, [edi+44h]
mov     ds:word_560E16, ax
mov     eax, esi
call    sub_4DF795
test    byte ptr [edi+4Ah], 8
jz      short loc_467081
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697

loc_467081:
test    byte ptr [esi], 2
jz      short loc_467099
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, esi
call    sub_4ED88B

loc_467099:
test    byte ptr [edi+4Ah], 8
jz      loc_46752C
mov     ax, [esi+190h]
mov     [edi], ax
mov     cx, [esi+192h]
sub     ecx, 8Ch
mov     [edi+2], cx
mov     ax, [esi+194h]
mov     [edi+4], ax
push    0
push    offset unk_800000
xor     eax, eax
mov     ax, [edi+42h]
or      eax, 4080000h
push    eax
lea     eax, [edi+8]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
mov     eax, edi
call    sub_4E01FC
jmp     loc_46752C
sub_466EE7 endp



; Attributes: thunk

sub_4670FE proc near
jmp     sub_4DE2F6
sub_4670FE endp




sub_467103 proc near
push    edx
lea     edx, [eax+378h]
test    byte ptr [eax+3], 0F0h
jnz     short loc_46711C
test    byte ptr [edx+4Ah], 10h
jz      short loc_467132
mov     byte ptr [eax+9], 1
pop     edx
retn

loc_46711C:
test    byte ptr [edx+4Ah], 10h
jz      short loc_467132
mov     byte ptr [eax+9], 2
movsx   ax, byte ptr [eax+0Dh]
imul    eax, 3Ch ; '<'
mov     [edx+46h], ax

loc_467132:
pop     edx
retn
sub_467103 endp




sub_467134 proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
lea     esi, [eax+378h]
mov     al, [eax+3]
and     al, 0Fh
lea     ebp, [edi+14h]
jnz     loc_467275
test    byte ptr [esi+4Ah], 10h
jz      loc_467528
mov     ax, [edi+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 6
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     [esp+20h+var_20], eax
mov     eax, [esp+20h+var_20]
mov     [esp+20h+var_1C], ax
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
mov     ax, [edi+56h]
mov     ecx, [esp+20h+var_20]
add     eax, ecx
and     ah, 0Fh
mov     [edi+56h], ax
test    cx, cx
jz      short loc_4671E1
mov     cl, [esi+48h]
test    cl, cl
jnz     short loc_4671D8
mov     edx, ebp
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_4671E5

loc_4671D8:
mov     ch, cl
dec     ch
mov     [esi+48h], ch
jmp     short loc_4671E5

loc_4671E1:
mov     byte ptr [esi+48h], 0

loc_4671E5:
test    bx, bx
jz      short loc_46720D
mov     al, [esi+49h]
test    al, al
jnz     short loc_467204
lea     edx, [edi+14h]
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_467211

loc_467204:
mov     ah, al
dec     ah
mov     [esi+49h], ah
jmp     short loc_467211

loc_46720D:
mov     byte ptr [esi+49h], 0

loc_467211:
movsx   eax, bx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_467240
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_467259

loc_467240:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_467259:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
jmp     loc_467521

loc_467275:
cmp     al, 1
jnz     loc_467421
test    byte ptr [esi+4Ah], 10h
jz      loc_467528
test    byte ptr [esi+4Eh], 8
jnz     short loc_4672BA
mov     ax, [edi+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     [esp+20h+var_1C], ax
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
jmp     short loc_4672C1

loc_4672BA:
xor     eax, eax
mov     [esp+20h+var_1C], ax

loc_4672C1:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     ebp, [edi+14h]
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
cmp     [esp+20h+var_1C], 0
jz      short loc_467315
mov     ch, [esi+48h]
test    ch, ch
jnz     short loc_46730C
mov     edx, ebp
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_467319

loc_46730C:
mov     al, ch
dec     al
mov     [esi+48h], al
jmp     short loc_467319

loc_467315:
mov     byte ptr [esi+48h], 0

loc_467319:
test    bx, bx
jz      short loc_467341
mov     ah, [esi+49h]
test    ah, ah
jnz     short loc_467338
lea     edx, [edi+14h]
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_467345

loc_467338:
mov     dl, ah
dec     dl
mov     [esi+49h], dl
jmp     short loc_467345

loc_467341:
mov     byte ptr [esi+49h], 0

loc_467345:
cmp     [esp+20h+var_1C], 0
jz      short loc_4673A1
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
movsx   eax, bx
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_46737C
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_467395

loc_46737C:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_467395:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax

loc_4673A1:
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
mov     word ptr [edi+44h], 0A0h
mov     dh, [esi+48h]
test    dh, dh
jnz     short loc_4673CC
lea     edx, [edi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 10h
jmp     short loc_4673D3

loc_4673CC:
mov     bl, dh
dec     bl
mov     [esi+48h], bl

loc_4673D3:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
mov     edx, eax
test    ah, 30h
jnz     short loc_467409
mov     eax, edi
call    sub_42C592
mov     [edi+16h], ax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax

loc_467409:
test    dh, 0Fh
jz      loc_467521
mov     byte ptr [edi+9], 4
mov     word ptr [esi+46h], 3Ch ; '<'
jmp     loc_467528

loc_467421:
cmp     al, 2
jnz     loc_467528
movsx   ax, byte ptr [edi+0Eh]
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     edx, [edi+54h]
sar     edx, 10h
mov     ebx, [esi+42h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
test    ax, ax
jz      short loc_467487
mov     ah, [esi+49h]
test    ah, ah
jnz     short loc_46747E
mov     edx, ebp
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_46748B

loc_46747E:
mov     dl, ah
dec     dl
mov     [esi+49h], dl
jmp     short loc_46748B

loc_467487:
mov     byte ptr [esi+49h], 0

loc_46748B:
mov     eax, [edi+0Bh]
sar     eax, 18h
movsx   edx, bx
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_4674B9
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_4674D2

loc_4674B9:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_4674D2:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
mov     word ptr [edi+44h], 0A0h
mov     dh, [esi+48h]
test    dh, dh
jnz     short loc_467509
lea     edx, [edi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_467510

loc_467509:
mov     bl, dh
dec     bl
mov     [esi+48h], bl

loc_467510:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B

loc_467521:
mov     eax, edi
call    sub_467B19

loc_467528:
add     esp, 8

loc_46752B:
pop     ebp

loc_46752C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_467134 endp




sub_467532 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+378h]
cmp     word ptr [edi+46h], 0
jz      loc_4675EF
mov     al, [edi+4Bh]
and     al, 18h
cmp     al, 18h
jnz     short loc_467561
lea     edx, [esi+14h]
mov     eax, 0DBh
call    sub_4D8BC3

loc_467561:
mov     ax, [esi+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     ebp, [esi+14h]
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [edi+44h]
and     ah, 0Fh
mov     [edi+44h], ax
mov     word ptr [esi+44h], 0A0h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     word ptr [edi+46h]
test    byte ptr [edi+4Ah], 10h
jz      loc_46752B
mov     byte ptr [esi+9], 1
mov     eax, esi
call    sub_467134
jmp     loc_46752B

loc_4675EF:
mov     byte ptr [eax+9], 0
mov     byte ptr [edi+48h], 0
call    sub_467103
jmp     loc_46752B
sub_467532 endp




sub_467601 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 378h
mov     [esp+24h+var_1C], eax
mov     byte ptr [eax+48h], 0
add     eax, 30h ; '0'
mov     [esp+24h+var_24], eax
mov     eax, [esp+24h+var_1C]
add     eax, 28h ; '('
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      loc_467858
mov     edx, [esp+24h+var_1C]
mov     ch, [edx+53h]
test    ch, ch
jnz     loc_4677E0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
call    sub_4DE043
mov     [esp+24h+var_20], eax
test    eax, eax
jz      loc_467850
lea     edx, [ebp+14h]
mov     eax, 0DDh
call    sub_4D8BC3
mov     eax, [esp+24h+var_20]
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     [eax+4], ch
mov     byte ptr [eax+0Fh], 3
mov     ax, [ebp+198h]
mov     edx, [esp+24h+var_20]
mov     [edx+14h], ax
mov     ax, [ebp+19Ah]
sub     eax, 41h ; 'A'
mov     [edx+16h], ax
mov     ax, [ebp+19Ch]
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
push    0
push    0
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ebx, [esp+2Ch+var_1C]
mov     ebx, [ebx+42h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     edx, [esp+2Ch+var_20]
add     edx, 1Ch
mov     eax, [esp+2Ch+var_20]
add     eax, 14h
mov     ecx, 0C00h
call    sub_4DD4C5
mov     edi, offset dword_5F8428
mov     esi, [esp+24h+var_20]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, ds:dword_5F8424+2
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+24h+var_1C]
mov     [edx+30h], eax
mov     eax, ds:dword_5F8428
sar     eax, 10h
shl     eax, 10h
mov     [edx+34h], eax
mov     eax, ds:dword_5F8428+2
sar     eax, 10h
shl     eax, 10h
mov     [edx+38h], eax
push    0
push    0
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ebx, [edx+42h]
sar     ebx, 10h
add     ebx, eax
and     ebx, 0FFFh
mov     ebp, offset byte_5F8364
add     ebp, 0C4h
mov     ecx, 2000h
mov     edx, [esp+2Ch+var_24]
mov     eax, ebp
call    sub_4DD4C5
add     word ptr ds:dword_5F8428+2, 50h ; 'P'
mov     ebx, 30h ; '0'
mov     edx, ebp
mov     eax, [esp+24h+var_20]
call    sub_4DDC7D
call    sub_4DE13B
test    eax, eax
jz      loc_467850
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 1
mov     edx, [esp+24h+var_20]
mov     dx, [edx+14h]
mov     [eax+1Ch], dx
mov     edx, [esp+24h+var_20]
mov     dx, [edx+16h]
mov     [eax+1Eh], dx
mov     edx, [esp+24h+var_20]
mov     dx, [edx+18h]
mov     [eax+20h], dx
jmp     loc_467850

loc_4677E0:
mov     bl, ch
dec     bl
mov     [edx+53h], bl
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [edx+42h]
sar     edx, 10h
add     edx, ebx
push    edx
mov     ecx, [esp+28h+var_24]
mov     ebx, eax
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jnz     loc_467850

loc_467810:
mov     byte ptr [ebp+0ACh], 0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
mov     eax, [esp+24h+var_1C]
mov     al, [eax+4Ch]
mov     [ebp+9], al
mov     eax, [esp+24h+var_1C]
mov     al, [eax+4Dh]
mov     [ebp+0Ah], al
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+53h], 1Eh

loc_467850:
add     esp, 0Ch
jmp     loc_46752B

loc_467858:
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_467850
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+42h]
sar     edx, 10h
add     edx, ebx
push    edx
mov     ecx, [esp+28h+var_24]
mov     ebx, eax
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jz      short loc_467810
mov     eax, [esp+24h+var_1C]
mov     bl, [eax+52h]
test    bl, bl
jnz     loc_467810
or      byte ptr [eax+4Eh], 4
mov     [ebp+0ADh], bl
mov     byte ptr [ebp+0ACh], 1
dec     byte ptr [eax+52h]
jmp     short loc_467850
sub_467601 endp




sub_4678B4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+378h]
cmp     word ptr [edi+46h], 0
jz      short loc_467936
mov     ah, [edi+48h]
test    ah, ah
jnz     short loc_4678E2
lea     edx, [esi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [edi+48h], 30h ; '0'
jmp     short loc_4678E9

