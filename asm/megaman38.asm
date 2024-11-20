loc_457916:
add     esp, 8
jmp     def_457579      ; jumptable 00457579 default case
sub_457801 endp

db 90h
jpt_45794E dd offset loc_457955 ; jump table for switch statement
dd offset loc_45797B
dd offset loc_4579A5
dd offset loc_4579B8
dd offset loc_4579DC



sub_457933 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_45794E      ; jumptable 0045794E default case
and     eax, 0FFh
jmp     jpt_45794E[eax*4] ; switch jump

loc_457955:             ; jumptable 0045794E case 0
mov     eax, [ebx+34h]
mov     dl, [eax+0Fh]
test    dl, 20h
jz      short loc_457972
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 3
mov     word ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_457972:
test    dl, 10h
jz      def_45794E      ; jumptable 0045794E default case

loc_45797B:             ; jumptable 0045794E case 1
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ebx+4], 8
mov     word ptr [ebx+8], 0
mov     eax, [ebx+34h]
and     byte ptr [eax+0Fh], 0EFh
lea     edx, [ecx+14h]
mov     eax, 0DFh
call    sub_4D8BC3

loc_4579A5:             ; jumptable 0045794E case 2
mov     eax, [ebx+34h]
mov     dh, [eax+0Fh]
test    dh, 10h
jz      short def_45794E ; jumptable 0045794E default case
mov     dl, dh
and     dl, 0EFh
mov     [eax+0Fh], dl

loc_4579B8:             ; jumptable 0045794E case 3
mov     byte ptr [ecx+0Ah], 4
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebx+4], 8
mov     word ptr [ebx+8], 0
lea     edx, [ecx+14h]
mov     eax, 0E0h
call    sub_4D8BC3

loc_4579DC:             ; jumptable 0045794E case 4
mov     dx, [ebx+4]
dec     edx
mov     [ebx+4], dx
test    dx, dx
jge     short def_45794E ; jumptable 0045794E default case
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0Ah], 0

def_45794E:             ; jumptable 0045794E default case
pop     edx
pop     ecx
pop     ebx
retn
sub_457933 endp




sub_4579F9 proc near
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
mov     dl, [eax+8]
call    ds:funcs_457A20[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_457A40
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_457A40:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_457A50
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_457A57

loc_457A50:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_457A57:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4579F9 endp

db 8Dh, 40h, 0
jpt_457A9C dd offset loc_457AA3 ; jump table for switch statement
dd offset loc_457AF9
dd offset loc_457B24
dd offset loc_457B70
dd offset loc_457B98
dd offset loc_457C31
dd offset loc_457C65
dd offset loc_457CCE



sub_457A81 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     al, [eax+9]
cmp     al, 7           ; switch 8 cases
ja      def_457A9C      ; jumptable 00457A9C default case
and     eax, 0FFh
jmp     jpt_457A9C[eax*4] ; switch jump

loc_457AA3:             ; jumptable 00457A9C case 0
mov     eax, esi
call    sub_457D34
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

unknown_libname_40:     ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_77E604, 0FF6D0000h ; Watcom v9-*1.5  32bit common runtime
mov     dword ptr ds:unk_77E608, 0FF200000h
mov     ds:dword_77E60C, 18A0000h
mov     ds:dword_77E634, 6F20000h
mov     ds:dword_77E638, 0B60000h
mov     ds:dword_77E63C, 2000000h

loc_457AF1:
inc     byte ptr [esi+9]
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457AF9:             ; jumptable 00457A9C case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_457A9C      ; jumptable 00457A9C default case
mov     byte ptr ds:dword_5F836C, 3
xor     ch, ch
mov     byte ptr ds:dword_5F836C+1, ch
xor     edi, edi
mov     ds:dword_5F8370, edi
jmp     short loc_457AF1

loc_457B24:             ; jumptable 00457A9C case 2
mov     ds:byte_5F88AC, 30h ; '0'
mov     word ptr ds:dword_5F889A+2, 64h ; 'd'
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0FF22h
mov     ds:dword_5F888C, offset unk_640000
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0FF220000h
mov     word ptr ds:dword_5F88A4+2, 800h
inc     byte ptr [esi+9]

loc_457B70:             ; jumptable 00457A9C case 3
cmp     ds:word_6E23D6, 0
jnz     def_457A9C      ; jumptable 00457A9C default case
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B

loc_457B8C:
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457B98:             ; jumptable 00457A9C case 4
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
lea     edi, [esi+14h]
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
mov     [esp+1Ch+var_1C], eax
mov     ax, [esi+56h]
add     eax, [esp+1Ch+var_1C]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, ds:dword_5F83B8
sar     ebx, 10h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
mov     bx, word ptr ds:dword_5F83B8+2
add     ebx, eax
and     bh, 0Fh
mov     word ptr ds:dword_5F88A4+2, bx
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_1C]
and     eax, 0FFFFh
add     ecx, eax
jnz     def_457A9C      ; jumptable 00457A9C default case
mov     edx, 2Ah ; '*'
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Ch], 28h ; '('
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457C31:             ; jumptable 00457A9C case 5
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B
mov     ch, [esi+0Ch]
dec     ch
mov     [esi+0Ch], ch
jnz     def_457A9C      ; jumptable 00457A9C default case
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
mov     [esi+0Ah], ch
jmp     def_457A9C      ; jumptable 00457A9C default case

loc_457C65:             ; jumptable 00457A9C case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_457A9C      ; jumptable 00457A9C default case
mov     edx, 2Bh ; '+'
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
and     ds:byte_5F8364, 0FDh
xor     edx, edx
mov     ds:dword_77E604, edx
mov     dword ptr ds:unk_77E608, 0FF9C0000h
mov     ds:dword_77E60C, edx
mov     ds:dword_77E634, 0EEE0000h
mov     ds:dword_77E638, 300000h
mov     ds:dword_77E63C, 0FA0000h
jmp     loc_457B8C

loc_457CCE:             ; jumptable 00457A9C case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_457A9C ; jumptable 00457A9C default case
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [esi+4], 0
mov     byte ptr [esi+0Ch], 2Ch ; ','
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+0Fh], 0
mov     byte ptr [esi+8], 0
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
mov     eax, 234h
call    sub_47E8B8
mov     eax, 2E9h
call    sub_47EE82

def_457A9C:             ; jumptable 00457A9C default case
add     esp, 4
jmp     loc_457A57
sub_457A81 endp




sub_457D34 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_457D34 endp

dword_457DC1 dd 0
dword_457DC5 dd 0



sub_457DC9 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_457DE8
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_457DE1[edx*4]

loc_457DE8:
lea     eax, [ebp+3A8h]
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
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_457DE1[edx*4]
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_457E62
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+45h]
sar     ebx, 18h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_457E69

loc_457E62:
mov     eax, ebp
call    sub_4DEB53

loc_457E69:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+48h], 0
test    byte ptr [eax+1], 1
jz      short loc_457E80
mov     eax, [ebp+42h]
sar     eax, 10h
neg     eax
jmp     short loc_457E86

loc_457E80:
mov     eax, [ebp+42h]
sar     eax, 10h

loc_457E86:
sar     eax, 2
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+4Ch]
sar     edx, 10h
add     eax, edx
and     eax, 0FFFh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4Eh]
mov     ds:word_560E1C, ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4Eh]
add     eax, eax
mov     ds:word_560E2C, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_457EDF
mov     ecx, 1
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_457EDF:
test    byte ptr [ebp+0], 1
jz      short loc_457F34
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_457F34
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
sub     word ptr [eax+0Eh], 40h ; '@'
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 4880000h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
call    sub_4E01FC

loc_457F34:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
add     esp, 4
jmp     loc_45859E
sub_457DC9 endp




sub_457F46 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
test    byte ptr [eax+3], 20h
jz      short loc_457F6A
mov     byte ptr [ecx+8], 6
mov     byte ptr [ecx+9], 0

loc_457F62:
mov     word ptr [ebp+0], 8
jmp     short loc_457F9F

loc_457F6A:
mov     dl, [ecx+3]
test    dl, 40h
jz      short loc_457F82
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+9], 0
mov     word ptr [ebp+0], 208h
jmp     short loc_457F9F

loc_457F82:
test    dl, 80h
jnz     short loc_457F91
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
jmp     short loc_457F62

loc_457F91:
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
mov     word ptr [ebp+0], 0

loc_457F9F:
mov     word ptr [ecx+0Ah], 0
call    sub_4DDF54
mov     [ebp+34h], eax
test    eax, eax
jnz     short loc_457FBD
mov     eax, ecx
call    sub_4DE2F6
jmp     loc_45859E

loc_457FBD:
mov     byte ptr [eax], 1
mov     eax, [ebp+34h]
mov     byte ptr [eax+2], 1Ah
mov     eax, [ebp+34h]
mov     dl, [ecx+3]
mov     [eax+3], dl
mov     eax, [ebp+34h]
mov     dword ptr [eax+8], 0
mov     eax, [ebp+34h]
mov     edx, [ecx+0Ch]
mov     [eax+0Ch], edx
mov     edx, [ecx+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+34h]
mov     [eax+1Ch], edx
mov     edx, [ecx+190h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+34h]
mov     [eax+20h], edx
mov     edx, [ecx+192h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+34h]
mov     [eax+24h], edx
mov     esi, [ebp+34h]
lea     edi, [esi+14h]
lea     esi, [ecx+190h]
movsd
movsd
mov     eax, [ebp+34h]
mov     dl, [ecx+1]
mov     [eax+0Dh], dl
or      byte ptr [ecx], 2
and     byte ptr [ecx+3], 1Fh
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
test    byte ptr [ebp+1], 2
jnz     short loc_458094
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5163C8[eax*2]
mov     [ecx+44h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5163CE[eax*2]
mov     [ecx+4Ch], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5163D4[eax*2]
mov     [ecx+66h], ax

loc_458094:
and     byte ptr [ecx+0Ch], 0F0h
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+eax*4]
xor     eax, eax
mov     al, [ecx+3]
mov     al, [edx+eax+0Ah]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516068
mov     dword ptr [ecx+10h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
or      byte ptr [ebp+0], 6
mov     dword ptr [ebp+4], 0
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+14h], 0
mov     dword ptr [ebp+18h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [ebp+24h]
mov     ebx, 0FFFFFE00h
call    sub_4E19B9
test    byte ptr [ebp+1], 2
jnz     loc_458231
xor     edx, edx
mov     dl, [ecx+3]
xor     ebx, ebx
mov     bl, ds:byte_5163DA[edx]
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     edx, ds:off_5163BC[edx*4]
add     edx, eax
mov     [ebp+38h], edx
xor     edx, edx
mov     dl, [ecx+3]
xor     ebx, ebx
mov     bl, ds:byte_5163E0[edx]
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     edx, ds:off_5163BC[edx*4]
add     edx, eax
mov     [ebp+3Ch], edx
mov     byte ptr [ebp+49h], 3
mov     eax, [ebp+38h]
mov     ax, [eax+4]
mov     [ebp+40h], ax
mov     word ptr [ebp+42h], 0
mov     eax, [ebp+38h]
mov     ax, [eax+6]
mov     [ebp+44h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_5163DD[eax]
mov     [ebp+4Ah], al
xor     eax, eax
mov     al, [ecx+3]
mov     edx, [ebp+34h]
mov     ds:dword_559FEC[eax*4], edx
xor     eax, eax
mov     al, [ecx+3]
mov     ds:dword_55A000[eax*4], ecx
xor     eax, eax
mov     al, ds:byte_77EAC6
mov     ds:dword_559FE8, eax
xor     edx, edx
mov     ds:dword_559FFC, edx
cmp     byte ptr [ecx+3], 2
jnz     short loc_458231
call    sub_4DE043
mov     ds:dword_55A00C, eax
test    eax, eax
jz      short loc_458231
mov     byte ptr [eax], 1
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+2], 0Dh
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+3], 0
mov     eax, ds:dword_559FF0
or      byte ptr [eax+0Fh], 40h

loc_458231:
mov     word ptr [ebp+4Ch], 0
mov     word ptr [ebp+4Eh], 0
mov     byte ptr [ebp+48h], 0
mov     word ptr [ebp+52h], 0
mov     dword ptr [ebp+54h], 140h
mov     word ptr [ebp+50h], 0
mov     byte ptr [ebp+4Bh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
jmp     loc_45859E
sub_457F46 endp

db 90h
jpt_458502 dd offset loc_458509 ; jump table for switch statement
dd offset def_458502
dd offset loc_458560
dd offset loc_458555
dd offset loc_45855B
dd offset loc_45854F
dd offset loc_45854F
dd offset def_458502
dd offset loc_458519
dd offset loc_458566



sub_458291 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
lea     esi, [eax+3A8h]
cmp     ds:dword_559FE4, 0
jnz     loc_4584B5
xor     eax, eax
mov     al, ds:byte_77EAC6
cmp     eax, ds:dword_559FE8
jz      loc_4584B5
mov     ebx, ds:dword_559FFC
test    ebx, ebx
jz      short loc_4582DA
lea     ebp, [ebx-1]
mov     ds:dword_559FFC, ebp
jmp     loc_4584A9

loc_4582DA:
xor     eax, eax

loc_4582DC:
xor     ecx, ecx
mov     cl, ds:byte_5163E3[eax*2]
mov     ecx, ds:dword_559FEC[ecx*4]
mov     ds:dword_55A01C, ecx
mov     dl, ds:byte_5163E4[eax*2]
and     edx, 0FFh
mov     edx, ds:dword_559FEC[edx*4]
mov     ds:dword_55A020, edx
mov     edx, ecx
mov     ebx, [ecx+12h]
sar     ebx, 10h
mov     ecx, ds:dword_55A020
mov     ebp, [ecx+12h]
sar     ebp, 10h
sub     ebx, ebp
mov     edx, [edx+16h]
sar     edx, 10h
mov     [esp+20h+var_20], edx
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ecx, [esp+20h+var_20]
sub     ecx, edx
mov     edx, ecx
imul    ebx, ebx
imul    edx, ecx
add     ebx, edx
mov     ds:dword_55A010[eax*4], ebx
inc     eax
cmp     eax, 3
jl      short loc_4582DC
xor     eax, eax
jmp     short loc_45835B

loc_458351:
inc     eax
cmp     eax, 3
jge     loc_4584A9

loc_45835B:
cmp     ds:dword_55A010[eax*4], offset unk_800000
jnb     short loc_458351
lea     edx, [eax+eax]
xor     ebx, ebx
mov     bl, ds:byte_5163E3[edx]
mov     ecx, ds:dword_559FEC[ebx*4]
mov     ds:dword_55A01C, ecx
xor     ecx, ecx
mov     cl, ds:byte_5163E4[edx]
mov     ebp, ds:dword_559FEC[ecx*4]
mov     ds:dword_55A020, ebp
mov     ebx, ds:dword_55A000[ebx*4]
mov     ds:dword_55A024, ebx
mov     ecx, ds:dword_55A000[ecx*4]
mov     ds:dword_55A028, ecx
mov     ecx, ds:dword_55A01C
mov     ebx, [ecx+0Ch]
sar     ebx, 18h
mov     [esp+20h+var_20], ebx
mov     ebx, ebp
mov     ebp, [ebp+0Ch]
sar     ebp, 18h
mov     [esp+20h+var_1C], ebp
mov     ebp, [esp+20h+var_20]
or      ebp, [esp+20h+var_1C]
mov     [esp+20h+var_1C], ebp
test    byte ptr [esp+20h+var_1C], 40h
jz      loc_458351
test    byte ptr [ecx+0Eh], 4Ch
jnz     loc_458351
test    byte ptr [ebx+0Eh], 4Ch
jnz     loc_458351
mov     dl, ds:byte_5163E4[edx]
mov     [ecx+0Dh], dl
mov     edx, ds:dword_55A01C
or      byte ptr [edx+0Eh], 2
mov     edx, ds:dword_55A01C
test    byte ptr [edx+0Fh], 40h
jz      short loc_458423
or      byte ptr [edx+0Eh], 80h
mov     edx, ds:dword_55A01C
mov     byte ptr [edx+9], 8
jmp     short loc_458427

loc_458423:
mov     byte ptr [edx+9], 7

loc_458427:
mov     edx, ds:dword_55A024
mov     byte ptr [edx+9], 0Ah
mov     edx, ds:dword_55A01C
mov     word ptr [edx+0Ah], 0
mov     edx, ds:dword_55A024
mov     word ptr [edx+0Ah], 0
mov     edx, ds:dword_55A020
mov     al, ds:byte_5163E3[eax*2]
mov     [edx+0Dh], al
mov     eax, ds:dword_55A020
or      byte ptr [eax+0Eh], 2
mov     eax, ds:dword_55A020
test    byte ptr [eax+0Fh], 40h
jz      short loc_45847C
or      byte ptr [eax+0Eh], 80h
mov     eax, ds:dword_55A020
mov     byte ptr [eax+9], 8
jmp     short loc_458480

loc_45847C:
mov     byte ptr [eax+9], 7

loc_458480:
mov     eax, ds:dword_55A028
mov     byte ptr [eax+9], 0Ah
mov     eax, ds:dword_55A020
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A028
mov     word ptr [eax+0Ah], 0
mov     ds:dword_559FE4, 1

loc_4584A9:
xor     eax, eax
mov     al, ds:byte_77EAC6
mov     ds:dword_559FE8, eax

loc_4584B5:
lea     eax, [esi+24h]
mov     edx, edi
call    sub_4E19CA
test    eax, eax
jz      short loc_4584C8
or      byte ptr [esi], 10h
jmp     short loc_4584CB

loc_4584C8:
and     byte ptr [esi], 0EFh

loc_4584CB:
test    byte ptr [esi], 2
jz      short loc_4584D7
mov     eax, edi
call    sub_4597A5

loc_4584D7:
xor     edx, edx
mov     dl, [edi+9]
mov     eax, edi
call    ds:funcs_4584DE[edx*4]
mov     ch, [esi]
test    ch, 1
jz      loc_45857B
mov     al, [edi+9]
dec     al              ; switch 10 cases
cmp     al, 9
ja      def_458502      ; jumptable 00458502 default case, cases 2,8
and     eax, 0FFh
jmp     jpt_458502[eax*4] ; switch jump

loc_458509:             ; jumptable 00458502 case 1
xor     eax, eax
mov     al, [edi+3]
mov     al, ds:byte_5163E9[eax]
mov     [edi+9], al
jmp     short loc_458572

loc_458519:             ; jumptable 00458502 case 9
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ecx, offset dword_5F8380
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_45854C
mov     eax, edi
call    sub_459987
jmp     short loc_45854F ; jumptable 00458502 cases 6,7

loc_45854C:
and     byte ptr [esi], 0DFh

loc_45854F:             ; jumptable 00458502 cases 6,7
mov     byte ptr [edi+9], 5
jmp     short loc_458572

loc_458555:             ; jumptable 00458502 case 4
mov     byte ptr [edi+9], 2
jmp     short loc_458572

loc_45855B:             ; jumptable 00458502 case 5
test    ch, 20h
jnz     short loc_458555 ; jumptable 00458502 case 4

loc_458560:             ; jumptable 00458502 case 3
mov     byte ptr [edi+9], 1
jmp     short loc_458572

loc_458566:             ; jumptable 00458502 case 10
mov     al, ch
and     al, 7Fh
mov     [esi], al
jmp     short loc_45854F ; jumptable 00458502 cases 6,7

def_458502:             ; jumptable 00458502 default case, cases 2,8
mov     byte ptr [edi+9], 0

loc_458572:
mov     word ptr [edi+0Ah], 0
and     byte ptr [esi], 0FEh

loc_45857B:
mov     dx, [esi+0Ah]
test    dx, dx
jz      short loc_45858B
mov     ebx, edx
dec     ebx
mov     [esi+0Ah], bx

loc_45858B:
mov     cx, [esi+52h]
test    cx, cx
jz      short loc_45859B
mov     edi, ecx
dec     edi
mov     [esi+52h], di

loc_45859B:
add     esp, 8

loc_45859E:
pop     ebp
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458291 endp         ; jumptable 004591F6 default case, case 1




sub_4585A4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+3A8h]
add     eax, 3CCh
mov     edx, ebx
call    sub_4E19CA
test    eax, eax
jz      short loc_4585C6
or      byte ptr [ecx], 10h
jmp     short loc_4585C9

loc_4585C6:
and     byte ptr [ecx], 0EFh

loc_4585C9:
test    byte ptr [ecx], 2
jz      short loc_4585D5
mov     eax, ebx
call    sub_4597A5

loc_4585D5:
xor     edx, edx
mov     dl, [ebx+9]
mov     eax, ebx
call    ds:funcs_4584DE[edx*4]
test    byte ptr [ecx], 1
jz      short loc_4585F5
mov     byte ptr [ebx+9], 0
mov     word ptr [ebx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_4585F5:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_458605
mov     ebx, edx
dec     ebx
mov     [ecx+0Ah], bx

loc_458605:
mov     si, [ecx+52h]
test    si, si
jz      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     edi, esi
dec     edi
mov     [ecx+52h], di
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_4585A4 endp         ; jumptable 004591F6 default case, case 1




sub_45861E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+3A8h]
add     eax, 3CCh
mov     edx, ebx
call    sub_4E19CA
test    eax, eax
jz      short loc_458640
or      byte ptr [ecx], 10h
jmp     short loc_458643

loc_458640:
and     byte ptr [ecx], 0EFh

loc_458643:
test    byte ptr [ecx], 2
jz      short loc_4585D5
mov     eax, ebx
call    sub_459863
jmp     short loc_4585D5
sub_45861E endp




sub_458651 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
call    sub_4DE2F6
mov     eax, [edx+34h]
mov     byte ptr [eax+8], 2
mov     eax, [edx+34h]
xor     ecx, ecx
mov     cl, [eax+2]
shl     ecx, 2
mov     ebx, ds:dword_77E6F0
add     ecx, ebx
xor     ebx, ebx
mov     bl, [eax+4]
mov     ecx, [ecx]
call    dword ptr [ecx+ebx*4]
mov     eax, [edx+34h]
test    byte ptr [eax+0Fh], 40h
jz      short loc_458696
mov     eax, ds:dword_55A00C
call    sub_4DE371

loc_458696:
pop     edx
pop     ecx
pop     ebx
retn
sub_458651 endp




sub_45869A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3A8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_4586B2
cmp     bl, 1
jz      short loc_4586D3
pop     edx
pop     ebx
retn

loc_4586B2:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [edx+44h], 0
mov     word ptr [eax+4], 3Ch ; '<'
mov     word ptr [eax+8], 0
and     byte ptr [eax+1], 0FEh

loc_4586D3:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4586E4
or      byte ptr [eax], 1

loc_4586E4:
pop     edx
pop     ebx
retn
sub_45869A endp




sub_4586E7 proc near
push    edx
mov     dl, [eax+3]
mov     [eax+0Ah], dl
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4586F3[edx*4]
pop     edx
retn
sub_4586E7 endp




sub_4586FC proc near
push    edx
mov     dl, [eax+3]
mov     [eax+0Ah], dl
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_458708[edx*4]
pop     edx
retn
sub_4586FC endp

jpt_458741 dd offset loc_458748 ; jump table for switch statement
dd offset loc_458756
dd offset loc_4587D5
dd offset loc_458801



sub_458721 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+3A8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_458741      ; jumptable 00458741 default case
and     eax, 0FFh
jmp     jpt_458741[eax*4] ; switch jump

loc_458748:             ; jumptable 00458741 case 0
mov     byte ptr [esi+0Ah], 1
mov     word ptr [edi+8], 0
and     byte ptr [edi+1], 0FEh

loc_458756:             ; jumptable 00458741 case 1
mov     eax, [edi+3Ch]
mov     edx, [eax+6]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ecx, edx
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     edx, [eax+8]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+4]
sar     ecx, 10h
sub     ecx, edx
mov     edx, [esi+16h]
sar     edx, 10h
sub     edx, ecx
mov     ecx, edx
mov     edx, [eax+6]
sar     edx, 10h
cmp     ebx, edx
jnb     short loc_45879F
mov     eax, [eax+8]
sar     eax, 10h
cmp     ecx, eax
jb      short loc_4587D1

loc_45879F:
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, ds:off_5163C4+2
sar     eax, 10h
sar     eax, 1
cmp     eax, edx
jge     short loc_4587BB
mov     ax, [esi+4Ch]
sub     [esi+44h], ax

loc_4587BB:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458741      ; jumptable 00458741 default case

loc_4587D1:
mov     byte ptr [esi+0Ah], 2

loc_4587D5:             ; jumptable 00458741 case 2
lea     edx, [edi+40h]
lea     eax, [esi+14h]
call    sub_4DDDB4
mov     edx, [esi+54h]
sar     edx, 10h
cwde
sub     edx, eax
add     edx, 200h
and     edx, 0FFFh
cmp     edx, 400h
jge     short loc_458801 ; jumptable 00458741 case 3
mov     byte ptr [esi+0Ah], 3

loc_458801:             ; jumptable 00458741 case 3
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+40h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h

loc_45882F:
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [esp+18h+var_18], 0
jnz     short def_458741 ; jumptable 00458741 default case
or      byte ptr [edi], 1
mov     eax, [edi+34h]
and     byte ptr [eax+0Eh], 0FBh

def_458741:             ; jumptable 00458741 default case
add     esp, 4
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458721 endp         ; jumptable 004591F6 default case, case 1




sub_458853 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+3A8h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_458876
jbe     short loc_458888
cmp     al, 2
jz      loc_45890A
jmp     short def_458741 ; jumptable 00458741 default case

loc_458876:
test    al, al
jnz     short def_458741 ; jumptable 00458741 default case
mov     byte ptr [esi+0Ah], 1
mov     word ptr [edi+8], 0
or      byte ptr [edi+1], 1

loc_458888:
mov     eax, [edi+3Ch]
mov     edx, [eax+6]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ecx, edx
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     edx, [eax+8]
sar     edx, 10h
sar     edx, 1
mov     ecx, [eax+4]
sar     ecx, 10h
sub     ecx, edx
mov     edx, [esi+16h]
sar     edx, 10h
sub     edx, ecx
mov     ecx, edx
mov     edx, [eax+6]
sar     edx, 10h
cmp     ebx, edx
jnb     short loc_4588D1
mov     eax, [eax+8]
sar     eax, 10h
cmp     ecx, eax
jb      short loc_458906

loc_4588D1:
mov     eax, [esi+42h]
sar     eax, 10h
mov     edx, ds:off_5163C4+2
sar     edx, 10h
sar     edx, 1
cmp     edx, eax
jge     short loc_4588EE
mov     ax, [esi+4Ch]
sub     [esi+44h], ax

loc_4588EE:
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458741      ; jumptable 00458741 default case

loc_458906:
mov     byte ptr [esi+0Ah], 2

loc_45890A:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
lea     edx, [edi+40h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
jmp     loc_45882F
sub_458853 endp




sub_45894B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 3A8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_458965
cmp     bl, 1
jz      short loc_458995
pop     edx
pop     ecx
pop     ebx
retn

loc_458965:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 3
xor     ecx, ecx
mov     cl, [edx+3]
mov     ecx, ds:(off_5163C4+2)[ecx*2]
sar     ecx, 10h
sar     ecx, 1
mov     [edx+44h], cx
mov     word ptr [eax+4], 5
mov     word ptr [eax+8], 0
and     byte ptr [eax+1], 0FEh

loc_458995:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_4589AD
or      byte ptr [eax], 1
mov     byte ptr [edx+0ACh], 4

loc_4589AD:
pop     edx
pop     ecx
pop     ebx
retn
sub_45894B endp




sub_4589B1 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4589CD
jbe     short loc_4589E6
cmp     bl, 2
jz      short loc_458A33
pop     edx
pop     ecx
pop     ebx
retn

loc_4589CD:
test    bl, bl
jnz     short loc_458A44
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 5
mov     word ptr [edx+8], 0
and     byte ptr [edx+1], 0FEh

loc_4589E6:
xor     ecx, ecx
mov     cl, [eax+3]
mov     ecx, ds:(off_5163C4+2)[ecx*2]
sar     ecx, 10h
sar     ecx, 1
mov     ebx, [eax+42h]
sar     ebx, 10h
cmp     ecx, ebx
jge     short loc_458A1C
mov     dx, [eax+4Ch]
sub     [eax+44h], dx
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn

loc_458A1C:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [eax+0ACh], 6
mov     word ptr [eax+44h], 0
mov     word ptr [edx+4], 0Ah

loc_458A33:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_458A44
or      byte ptr [edx], 1

loc_458A44:
pop     edx
pop     ecx
pop     ebx
retn
sub_4589B1 endp




sub_458A48 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_458A64
jbe     short loc_458A7D
cmp     bl, 2
jz      short loc_458ACC
pop     edx
pop     ecx
pop     ebx
retn

loc_458A64:
test    bl, bl
jnz     short loc_458ADD
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 5
mov     word ptr [edx+8], 0
or      byte ptr [edx+1], 1

loc_458A7D:
xor     ecx, ecx
mov     cl, [eax+3]
mov     ecx, ds:(off_5163C4+2)[ecx*2]
sar     ecx, 10h
sar     ecx, 1
mov     ebx, [eax+42h]
sar     ebx, 10h
cmp     ecx, ebx
jge     short loc_458AB5
mov     dx, [eax+4Ch]
sub     [eax+44h], dx
mov     edx, [eax+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn

loc_458AB5:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [eax+0ACh], 6
mov     word ptr [eax+44h], 0
mov     word ptr [edx+4], 0Ah

loc_458ACC:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_458ADD
or      byte ptr [edx], 1

loc_458ADD:
pop     edx
pop     ecx
pop     ebx
retn
sub_458A48 endp




sub_458AE1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3A8h]
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_458AFE
cmp     al, 1
jz      short loc_458B2A
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_458AFE:
mov     byte ptr [edi+0Bh], 1
xor     eax, eax
mov     al, [edi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [edi+4Ch], ax
mov     word ptr [esi+8], 0
lea     eax, [esi+24h]
call    sub_4E19B4
and     word ptr [esi], 0FEEFh

loc_458B2A:
mov     eax, [esi+38h]
mov     ebx, [eax+2]
sar     ebx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
sub     edx, ebx
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, [edi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     eax, edx
cmp     eax, 200000h
jge     loc_458BE2
mov     eax, edi
call    sub_459592
mov     edx, eax
mov     eax, [esi+38h]
mov     al, [eax]
mov     [esi+49h], al
mov     eax, [esi+38h]
mov     [esi+3Ch], eax
mov     ebx, eax
movsx   eax, dx
mov     ebx, [ebx+eax+9]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     ebx, eax
shl     ebx, 2
xor     eax, eax
mov     al, [edi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ebx
mov     [esi+38h], eax
mov     ax, [eax+4]
mov     [esi+40h], ax
mov     word ptr [esi+42h], 0
mov     eax, [esi+38h]
mov     ax, [eax+6]
mov     [esi+44h], ax
mov     ebx, edx
xor     bh, bh
and     bl, 3
mov     eax, [esi+47h]
sar     eax, 18h
movsx   edx, bx
cmp     eax, edx
jz      short loc_458BDA
mov     byte ptr [edi+9], 3
mov     word ptr [edi+0Ah], 0
mov     eax, [esi+34h]
or      byte ptr [eax+0Eh], 4

loc_458BDA:
mov     [esi+4Ah], bl
and     byte ptr [esi], 0EFh
jmp     short loc_458C03

loc_458BE2:
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+40h]
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax

loc_458C03:
xor     eax, eax
mov     al, [edi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [edi+42h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_458C24
mov     ax, [edi+4Ch]
add     [edi+44h], ax

loc_458C24:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+52h], 0
jnz     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bl, [esi]
test    bl, 10h
jz      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bh, bl
or      bh, 21h
mov     [esi], bh
mov     eax, edi
call    sub_459987
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458AE1 endp         ; jumptable 004591F6 default case, case 1




sub_458C5E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_458C7A
cmp     al, 1
jz      short loc_458C9D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_458C7A:
mov     byte ptr [esi+0Bh], 1
xor     eax, eax
mov     al, [esi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [esi+4Ch], ax
mov     word ptr [edx+8], 0
and     byte ptr [edx+1], 0FEh

loc_458C9D:
mov     eax, [edx+38h]
mov     ebx, [eax+2]
sar     ebx, 10h
mov     ecx, [esi+12h]
sar     ecx, 10h
sub     ecx, ebx
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, [esi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    ecx, ecx
imul    eax, ebx
add     eax, ecx
cmp     eax, 200000h
jge     loc_458D52
mov     eax, esi
call    sub_459592
mov     ecx, eax
mov     eax, [edx+38h]
mov     al, [eax]
mov     [edx+49h], al
mov     eax, [edx+38h]
mov     [edx+3Ch], eax
mov     ebx, eax
movsx   eax, cx
mov     ebx, [ebx+eax+9]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     ebx, eax
shl     ebx, 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ebx
mov     [edx+38h], eax
mov     ax, [eax+4]
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     eax, [edx+38h]
mov     ax, [eax+6]
mov     [edx+44h], ax
mov     ebx, ecx
xor     bh, bh
and     bl, 3
mov     ecx, [edx+47h]
sar     ecx, 18h
movsx   eax, bx
cmp     ecx, eax
jz      short loc_458D4D
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 0
mov     eax, [edx+34h]
or      byte ptr [eax+0Eh], 4

loc_458D4D:
mov     [edx+4Ah], bl
jmp     short loc_458D73

loc_458D52:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 40h ; '@'
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_458D73:
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [esi+42h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_458D94
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_458D94:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_458C5E endp




sub_458DAA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3A8h]
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_458DC7
cmp     al, 1
jz      short loc_458DF2
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_458DC7:
mov     byte ptr [edi+0Bh], 1
xor     eax, eax
mov     al, [edi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [edi+4Ch], ax
mov     word ptr [esi+8], 0
lea     eax, [esi+24h]
call    sub_4E19B4
and     byte ptr [esi+1], 0FEh

loc_458DF2:
mov     eax, [esi+38h]
mov     ebx, [eax+2]
sar     ebx, 10h
mov     edx, [edi+12h]
sar     edx, 10h
sub     edx, ebx
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, [edi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     eax, edx
cmp     eax, 200000h
jge     loc_458EAA
mov     eax, edi
call    sub_459592
mov     edx, eax
mov     eax, [esi+38h]
mov     al, [eax]
mov     [esi+49h], al
mov     eax, [esi+38h]
mov     [esi+3Ch], eax
mov     ebx, eax
movsx   eax, dx
mov     ebx, [ebx+eax+9]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
add     ebx, eax
shl     ebx, 2
xor     eax, eax
mov     al, [edi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ebx
mov     [esi+38h], eax
mov     ax, [eax+4]
mov     [esi+40h], ax
mov     word ptr [esi+42h], 0
mov     eax, [esi+38h]
mov     ax, [eax+6]
mov     [esi+44h], ax
mov     ebx, edx
xor     bh, bh
and     bl, 3
mov     eax, [esi+47h]
sar     eax, 18h
movsx   edx, bx
cmp     eax, edx
jz      short loc_458EA2
mov     byte ptr [edi+9], 3
mov     word ptr [edi+0Ah], 0
mov     eax, [esi+34h]
or      byte ptr [eax+0Eh], 4

loc_458EA2:
mov     [esi+4Ah], bl
and     byte ptr [esi], 0EFh
jmp     short loc_458ECB

loc_458EAA:
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+40h]
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax

loc_458ECB:
xor     eax, eax
mov     al, [edi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [edi+42h]
sar     eax, 10h
cmp     edx, eax
jle     short loc_458EEC
mov     ax, [edi+4Ch]
add     [edi+44h], ax

loc_458EEC:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+52h], 0
jnz     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bl, [esi]
test    bl, 10h
jz      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
cmp     dword ptr [edi+80h], 120000h
ja      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     bh, bl
or      bh, 21h
mov     [esi], bh
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458DAA endp         ; jumptable 004591F6 default case, case 1

db 8Bh, 0C0h
jpt_458F62 dd offset loc_458F69 ; jump table for switch statement
dd offset def_458F62
dd offset loc_458FD3
dd offset loc_459109
dd offset loc_459167



sub_458F45 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
and     eax, 0FFh
jmp     jpt_458F62[eax*4] ; switch jump

loc_458F69:             ; jumptable 00458F62 case 0
mov     byte ptr [esi+0Bh], 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [esi+4Ch], ax
or      byte ptr [edx+1], 1
test    byte ptr [edx], 40h
jz      short loc_458FD0
mov     eax, [edx+47h]
sar     eax, 18h
add     eax, 2
and     eax, 3
mov     ecx, [edx+3Ch]
mov     eax, [ecx+eax+9]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_458FD0
mov     byte ptr [esi+0Bh], 3
mov     ecx, [edx+48h]
sar     ecx, 18h
add     ecx, 2
and     ecx, 3
mov     eax, 8000h
sar     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [edx+50h]
or      eax, ecx
mov     [edx+50h], ax
jmp     loc_459109      ; jumptable 00458F62 case 3

loc_458FD0:
and     byte ptr [edx], 0BFh

loc_458FD3:             ; jumptable 00458F62 case 2
mov     eax, [edx+38h]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     eax, [eax+4]
sar     eax, 10h
mov     ecx, [esi+16h]
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    ebx, ebx
imul    eax, ecx
add     eax, ebx
cmp     eax, 200000h
jge     loc_4590A3
mov     eax, esi
call    sub_4596E2
cmp     ax, 4
jz      short loc_45901F
mov     byte ptr [esi+0Bh], 3
movsx   bx, byte ptr [edx+4Ah]
jmp     short loc_459047

loc_45901F:
mov     eax, esi
call    sub_459592
mov     ebx, eax
mov     ecx, [edx+47h]
sar     ecx, 18h
cwde
cmp     ecx, eax
jz      short loc_459047
mov     byte ptr [esi+9], 4
mov     word ptr [esi+0Ah], 0
or      byte ptr [edx], 40h
mov     eax, [edx+34h]
or      byte ptr [eax+0Eh], 4

loc_459047:
mov     eax, [edx+38h]
mov     al, [eax]
mov     [edx+49h], al
mov     eax, [edx+38h]
mov     [edx+3Ch], eax
mov     ecx, eax
movsx   eax, bx
mov     ecx, [ecx+eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ecx
mov     [edx+38h], eax
mov     ax, [eax+4]
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     eax, [edx+38h]
mov     ax, [eax+6]
mov     [edx+44h], ax
and     bl, 3
mov     al, [edx+4Ah]
mov     [edx+4Bh], al
mov     [edx+4Ah], bl
jmp     short loc_4590D0

loc_4590A3:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
add     edx, 40h ; '@'
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_4590D0:
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:(off_5163C4+2)[eax*2]
sar     eax, 10h
mov     edx, [esi+42h]
sar     edx, 10h
cmp     eax, edx

loc_4590E7:
jle     short loc_4590F1
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_4590F1:
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_459109:             ; jumptable 00458F62 case 3
mov     eax, [edx+3Ch]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     ecx, [eax+4]
sar     ecx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
sub     eax, ecx
imul    ebx, ebx
imul    eax, eax
add     eax, ebx
cmp     eax, 200000h
jg      short loc_459150
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [esi+42h]
sar     eax, 10h
cmp     edx, eax
jmp     short loc_4590E7

loc_459150:
mov     byte ptr [esi+0Bh], 4
mov     byte ptr [esi+0ACh], 6
mov     word ptr [esi+44h], 0
mov     word ptr [edx+4], 0Ah

loc_459167:             ; jumptable 00458F62 case 4
mov     di, [edx+4]     ; jumptable 004591F6 case 4
dec     edi
mov     [edx+4], di
test    di, di
jge     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
mov     byte ptr [esi+9], 5
mov     word ptr [esi+0Ah], 0
mov     al, [edx]
and     al, 0DFh
mov     [edx], al
test    al, 40h
jnz     short loc_4591AE
mov     ecx, [edx+47h]
sar     ecx, 18h
add     ecx, 2
and     ecx, 3
mov     eax, 8000h
sar     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [edx+50h]
or      eax, ecx
mov     [edx+50h], ax

loc_4591AE:
mov     eax, esi
call    sub_459987
and     byte ptr [edx], 0BFh
mov     word ptr [edx+52h], 78h ; 'x'
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_458F45 endp         ; jumptable 004591F6 default case, case 1

db 8Bh, 0C0h
jpt_4591F6 dd offset loc_4591FD ; jump table for switch statement
dd offset def_458F62
dd offset loc_459267
dd offset loc_45939D
dd offset loc_459167



sub_4591D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
and     eax, 0FFh
jmp     jpt_4591F6[eax*4] ; switch jump

loc_4591FD:             ; jumptable 004591F6 case 0
mov     byte ptr [esi+0Bh], 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, dword ptr ds:unk_5163CC[eax*2]
sar     eax, 10h
sar     eax, 1
mov     [esi+4Ch], ax
or      byte ptr [edx+1], 1
test    byte ptr [edx], 40h
jz      short loc_459264
mov     eax, [edx+47h]
sar     eax, 18h
add     eax, 2
and     eax, 3
mov     ecx, [edx+3Ch]
mov     eax, [ecx+eax+9]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_459264
mov     byte ptr [esi+0Bh], 3
mov     ecx, [edx+48h]
sar     ecx, 18h
add     ecx, 2
and     ecx, 3
mov     eax, 8000h
sar     eax, cl
mov     ecx, eax
xor     eax, eax
mov     ax, [edx+50h]
or      eax, ecx
mov     [edx+50h], ax
jmp     loc_45939D      ; jumptable 004591F6 case 3

loc_459264:
and     byte ptr [edx], 0BFh

loc_459267:             ; jumptable 004591F6 case 2
mov     eax, [edx+38h]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     eax, [eax+4]
sar     eax, 10h
mov     ecx, [esi+16h]
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    ebx, ebx
imul    eax, ecx
add     eax, ebx
cmp     eax, 200000h
jge     loc_459337
mov     eax, esi
call    sub_4596E2
cmp     ax, 4
jz      short loc_4592B3
mov     byte ptr [esi+0Bh], 3
movsx   bx, byte ptr [edx+4Ah]
jmp     short loc_4592DB

loc_4592B3:
mov     eax, esi
call    sub_459592
mov     ebx, eax
mov     ecx, [edx+47h]
sar     ecx, 18h
cwde
cmp     ecx, eax
jz      short loc_4592DB
mov     byte ptr [esi+9], 4
mov     word ptr [esi+0Ah], 0
or      byte ptr [edx], 40h
mov     eax, [edx+34h]
or      byte ptr [eax+0Eh], 4

loc_4592DB:
mov     eax, [edx+38h]
mov     al, [eax]
mov     [edx+49h], al
mov     eax, [edx+38h]
mov     [edx+3Ch], eax
mov     ecx, eax
movsx   eax, bx
mov     ecx, [ecx+eax+9]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:off_5163BC[eax*4]
add     eax, ecx
mov     [edx+38h], eax
mov     ax, [eax+4]
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     eax, [edx+38h]
mov     ax, [eax+6]
mov     [edx+44h], ax
and     bl, 3
mov     al, [edx+4Ah]
mov     [edx+4Bh], al
mov     [edx+4Ah], bl
jmp     short loc_459364

loc_459337:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
add     edx, 40h ; '@'
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_459364:
xor     eax, eax
mov     al, [esi+3]
mov     eax, ds:(off_5163C4+2)[eax*2]
sar     eax, 10h
mov     edx, [esi+42h]
sar     edx, 10h
cmp     eax, edx

loc_45937B:
jle     short loc_459385
mov     ax, [esi+4Ch]
add     [esi+44h], ax

loc_459385:
mov     edx, [esi+42h]
sar     edx, 10h
neg     edx
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_45939D:             ; jumptable 004591F6 case 3
mov     eax, [edx+3Ch]
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, ecx
mov     ecx, [eax+4]
sar     ecx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
sub     eax, ecx
imul    ebx, ebx
imul    eax, eax
add     eax, ebx
cmp     eax, 200000h
jg      loc_459150
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:(off_5163C4+2)[eax*2]
sar     edx, 10h
mov     eax, [esi+42h]
sar     eax, 10h
cmp     edx, eax
jmp     short loc_45937B
sub_4591D9 endp

db 90h
jpt_459416 dd offset loc_45941D ; jump table for switch statement
dd offset loc_459445
dd offset loc_45945D
dd offset loc_45946F



sub_4593F9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 3A8h
mov     cl, [edx+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_459416      ; jumptable 00459416 default case
and     ecx, 0FFh
jmp     jpt_459416[ecx*4] ; switch jump

loc_45941D:             ; jumptable 00459416 case 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 6
mov     word ptr [edx+44h], 0
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0
mov     ecx, [eax+34h]
or      byte ptr [ecx+0Eh], 5
and     byte ptr [eax+1], 0FEh

loc_459445:             ; jumptable 00459416 case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_459416 ; jumptable 00459416 default case
mov     byte ptr [edx+0Ah], 2
mov     word ptr [eax+4], 78h ; 'x'

loc_45945D:             ; jumptable 00459416 case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_459416 ; jumptable 00459416 default case
mov     byte ptr [edx+0Ah], 3

loc_45946F:             ; jumptable 00459416 case 3
cmp     dword ptr [edx+80h], 120000h
jbe     short def_459416 ; jumptable 00459416 default case
or      byte ptr [eax], 1
mov     eax, [eax+34h]
and     byte ptr [eax+0Eh], 0FAh

def_459416:             ; jumptable 00459416 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4593F9 endp




sub_45948A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+3A8h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4594A7
cmp     al, 1
jz      short loc_4594D2
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1

loc_4594A7:
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0ACh], 0Dh
mov     word ptr [edx+4], 3Ch ; '<'
mov     word ptr [edx+8], 0
mov     eax, [edx+34h]
mov     byte ptr [eax+9], 2
mov     eax, [edx+34h]
mov     word ptr [eax+0Ah], 0
and     byte ptr [edx+1], 0FEh

loc_4594D2:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     def_458F62      ; jumptable 00458F62 default case, case 1
; jumptable 004591F6 default case, case 1
call    sub_4DE13B
test    eax, eax
jz      short loc_459503
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [ecx+190h]
movsd
movsd

loc_459503:
test    byte ptr [edx+1], 2
jz      short loc_459510
mov     eax, ecx
call    sub_4DE2F6

loc_459510:
and     byte ptr [ecx], 0FCh
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
jmp     def_458F62      ; jumptable 00458F62 default case, case 1
sub_45948A endp         ; jumptable 004591F6 default case, case 1




sub_45952A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3A8h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_459545
jbe     short loc_45956A
cmp     bl, 2
jz      short loc_45957C
pop     edx
pop     ebx
retn

loc_459545:
test    bl, bl
jnz     short loc_45958F
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 6
mov     word ptr [edx+44h], 0
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0
and     byte ptr [eax+1], 0FEh

loc_45956A:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_45958F
mov     byte ptr [edx+0Ah], 2

loc_45957C:
mov     edx, [eax+34h]
mov     bh, [edx+0Eh]
test    bh, 2
jz      short loc_45958C
test    bh, 40h
jz      short loc_45958F

loc_45958C:
or      byte ptr [eax], 1

loc_45958F:
pop     edx
pop     ebx
retn
sub_45952A endp




sub_459592 proc near

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
mov     eax, dword_457DC1
mov     [esp+20h+var_1C], eax
mov     ebx, [esp+20h+var_20]
add     ebx, 3A8h
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+3], 1
jnz     short loc_45960F
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
add     eax, 200h
and     eax, 0FFFh
sar     eax, 0Ah
mov     edx, [ebx+38h]
movsx   esi, ax
add     edx, esi
mov     ecx, [edx+9]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jz      short loc_45960F
mov     cl, [ebx+49h]
cmp     cl, [edx+0Ch]
jz      short loc_45960F
xor     edx, edx
mov     dx, [ebx+50h]
movsx   ecx, ax
mov     eax, 8000h
sar     eax, cl
test    edx, eax
jnz     short loc_45960F
mov     byte ptr [esp+esi+20h+var_1C], 1
mov     esi, 1
jmp     loc_45968B

loc_45960F:
xor     esi, esi
xor     eax, eax
jmp     short loc_45961C

loc_459615:
inc     eax
cmp     ax, 4
jge     short loc_459653

loc_45961C:
mov     edx, [ebx+38h]
movsx   edi, ax
add     edx, edi
mov     ecx, [edx+9]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jz      short loc_459615
mov     cl, [ebx+49h]
cmp     cl, [edx+0Ch]
jz      short loc_459615
xor     edx, edx
mov     dx, [ebx+50h]
movsx   ecx, ax
mov     ebp, 8000h
sar     ebp, cl
test    edx, ebp
jnz     short loc_459615
mov     byte ptr [esp+edi+20h+var_1C], 1
inc     esi
jmp     short loc_459615

loc_459653:
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+3], 0
jnz     short loc_45968B
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
add     eax, 200h
and     eax, 0FFFh
sar     eax, 0Ah
cwde
cmp     byte ptr [esp+eax+20h+var_1C], 0
jz      short loc_45968B
cmp     si, 1
jle     short loc_45968B
xor     ch, ch
mov     byte ptr [esp+eax+20h+var_1C], ch
dec     esi

loc_45968B:
mov     word ptr [ebx+50h], 0
test    si, si
jnz     short loc_45969D
mov     edx, 4
jmp     short loc_4596DB

loc_45969D:
mov     ax, [ebx+2]
xor     ah, ah
and     al, 3
xor     edx, edx
mov     dx, ax
movsx   ecx, si
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ebx, edx
xor     esi, esi
xor     eax, eax
jmp     short loc_4596C3

loc_4596BC:
inc     eax
cmp     ax, 4
jge     short loc_4596D8

loc_4596C3:
movsx   edx, ax
mov     dl, byte ptr [esp+edx+20h+var_1C]
xor     dh, dh
add     esi, edx
movsx   edx, bx
movsx   ecx, si
cmp     edx, ecx
jge     short loc_4596BC

loc_4596D8:
movsx   edx, ax

loc_4596DB:
mov     eax, edx
jmp     loc_45859B
sub_459592 endp




sub_4596E2 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     eax, dword_457DC5
mov     [esp+14h+var_14], eax
lea     eax, [ecx+3A8h]
xor     edx, edx
mov     ecx, [eax+47h]
sar     ecx, 18h
dec     ecx
and     ecx, 3
mov     ebx, [eax+38h]
mov     ebx, [ecx+ebx+9]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jz      short loc_45971D
mov     byte ptr [esp+ecx+14h+var_14], 1
mov     edx, 1

loc_45971D:
mov     ecx, [eax+47h]
sar     ecx, 18h
inc     ecx
and     ecx, 3
mov     ebx, [eax+38h]
mov     ebx, [ecx+ebx+9]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jz      short loc_45973B
mov     byte ptr [esp+ecx+14h+var_14], 1
inc     edx

loc_45973B:
mov     ecx, [eax+38h]
mov     ebx, [eax+47h]
sar     ebx, 18h
mov     ecx, [ecx+ebx+9]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jz      short loc_459755
test    dx, dx
jnz     short loc_45975C

loc_459755:
mov     ecx, 4
jmp     short loc_45979B

loc_45975C:
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
xor     ecx, ecx
mov     cx, ax
movsx   ebx, dx
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
mov     esi, edx
xor     edx, edx
xor     eax, eax
jmp     short loc_459784

loc_45977D:
inc     eax
cmp     ax, 4
jge     short loc_459798

loc_459784:
movsx   ecx, ax
mov     cl, byte ptr [esp+ecx+14h+var_14]
xor     ch, ch
add     edx, ecx
movsx   ecx, si
movsx   ebx, dx
cmp     ecx, ebx
jge     short loc_45977D

loc_459798:
movsx   ecx, ax

loc_45979B:
mov     eax, ecx
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4596E2 endp




sub_4597A5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+3A8h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
jz      loc_459858
test    byte ptr [ebx+17h], 38h
jz      loc_45984B
mov     eax, [ebx+34h]
or      byte ptr [eax+0Fh], 1
mov     si, [ecx+6Eh]
test    si, si
jle     short loc_4597EA
mov     [ecx+0B2h], si
mov     edi, esi
sub     edi, edx
mov     [ecx+6Eh], di

loc_4597EA:
cmp     word ptr [ecx+6Eh], 0
jg      short loc_45982C
mov     eax, [ebx+34h]
mov     eax, [eax+0Bh]
sar     eax, 18h
test    al, 80h
jnz     short loc_45982C
lea     edx, [ecx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     dl, [ebx]
and     dl, 0F9h
mov     [ebx], dl
mov     dh, dl
or      dh, 4
mov     [ebx], dh
mov     byte ptr [ecx+9], 8
mov     word ptr [ecx+0Ah], 0
mov     eax, [ebx+34h]
mov     byte ptr [eax+0Eh], 40h ; '@'
jmp     short loc_459839

loc_45982C:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_459839:
mov     word ptr [ecx+15Eh], 7FFFh
mov     ecx, [ebx+34h]
or      byte ptr [ecx+0Fh], 2
jmp     short loc_459858

loc_45984B:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_459858:
mov     eax, 1

def_458F62:             ; jumptable 00458F62 default case, case 1
pop     edi             ; jumptable 004591F6 default case, case 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4597A5 endp




sub_459863 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+3A8h]
mov     ebx, [ecx+14h]
and     ebx, 0FFFFFFh
jz      loc_45992D
lea     edx, [eax+14h]
test    byte ptr [ecx+17h], 38h
jz      loc_459923
mov     eax, [ecx+34h]
or      byte ptr [eax+0Fh], 1
mov     edi, [ecx+54h]
sub     edi, ebx
mov     [ecx+54h], edi
test    edi, edi
jg      short loc_459904
mov     eax, [ecx+34h]
mov     eax, [eax+0Bh]
sar     eax, 18h
test    al, 80h
jnz     short loc_459904
mov     eax, 0A2h
call    sub_4D8BC3
mov     eax, 605h
call    sub_47E8B8
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_459911
mov     edx, 5
mov     eax, 4
call    sub_4A0E24
mov     eax, 610h
call    sub_47E8B8
xor     eax, eax
mov     ds:dword_559FE4, eax
mov     ds:dword_559FFC, 8
mov     al, ds:byte_77EAC6
mov     ds:dword_559FE8, eax
jmp     short loc_459911

loc_459904:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_459911:
mov     word ptr [esi+15Eh], 7FFFh
mov     eax, [ecx+34h]
or      byte ptr [eax+0Fh], 2
jmp     short loc_45992D

loc_459923:
mov     eax, 0A3h
call    sub_4D8BC3

loc_45992D:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      loc_459858
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 5
mov     word ptr [esi+0Ah], 0
mov     eax, [ecx+34h]
mov     byte ptr [eax+9], 0
mov     eax, [ecx+34h]
mov     word ptr [eax+0Ah], 0
xor     eax, eax
mov     al, [esi+3]
mov     edx, eax
mov     ecx, ds:off_5163EF[eax*4]
push    ecx
xor     ebx, ebx
mov     bl, ds:byte_5163EC[eax]
mov     ecx, 60h ; '`'
xor     edx, eax
mov     eax, esi
call    sub_436785
jmp     loc_459858
sub_459863 endp




sub_459987 proc near
push    ecx
push    edx
mov     edx, [eax+3E0h]
mov     dl, [edx]
mov     [eax+3F1h], dl
mov     edx, [eax+3E4h]
mov     dx, [edx+4]
mov     [eax+3E8h], dx
mov     word ptr [eax+3EAh], 0
mov     edx, [eax+3E4h]
mov     dx, [edx+6]
mov     [eax+3ECh], dx
mov     edx, [eax+3E0h]
mov     ecx, [eax+3E4h]
mov     [eax+3E0h], ecx
mov     [eax+3E4h], edx
mov     dl, [eax+3F2h]
add     dl, 2
and     dl, 3
mov     [eax+3F2h], dl
pop     edx
pop     ecx
retn
sub_459987 endp




sub_4599EF proc near
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
add     eax, 408h
cmp     byte ptr [ecx+8], 0
jnz     short loc_459A34
mov     edx, eax
mov     eax, ecx
call    sub_459A4A
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_459A44

loc_459A34:
mov     edx, eax
mov     eax, ecx
call    sub_459AC1
mov     eax, ecx
call    sub_4DEADD

loc_459A44:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4599EF endp




sub_459A4A proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
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
movsx   ax, byte ptr [ecx+0Ch]
imul    eax, 0Ah
mov     [ebx], ax
movsx   ax, byte ptr [ecx+0Dh]
imul    eax, 0Ah
mov     [ebx+2], ax
movsx   ax, byte ptr [ecx+0Eh]
imul    eax, 0Ah
mov     [ebx+4], ax
movsx   ax, byte ptr [ecx+0Fh]
mov     [ebx+6], ax
mov     word ptr [ebx+8], 0
mov     ax, [ecx+16h]
mov     [ebx+0Ah], ax
pop     ecx
pop     ebx
retn
sub_459A4A endp




sub_459AC1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
movsx   edx, word ptr [edx]
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     ax, [esi+6]
add     [edi+56h], ax
and     byte ptr [edi+57h], 0Fh
cmp     word ptr [esi+4], 0
jle     short loc_459B46
mov     edx, [esi+6]
sar     edx, 10h
shl     edx, 6
mov     ecx, [esi+2]
sar     ecx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
mov     edx, [esi]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
mov     eax, [esi+8]
sar     eax, 10h
add     eax, edx
mov     [edi+16h], ax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
inc     word ptr [esi+8]
mov     edx, [esi+6]
sar     edx, 10h
mov     ecx, [esi+2]
sar     ecx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esi+8], dx

loc_459B46:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_459AC1 endp




sub_459B4B proc near
cmp     byte ptr [eax+8], 0
jnz     loc_459CAF
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
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     eax, ds:dword_5163FA[eax]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     eax, ds:(dword_5163FA+2)[eax]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     eax, ds:dword_5163FE[eax]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516404[eax]
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516402[eax]
mov     [ecx+56h], ax
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Ch], 200h
mov     ax, [ecx+15Ch]
mov     [ecx+15Ah], ax
mov     [ecx+158h], ax
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+1F0h], 0
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_51640A[eax]
mov     [ecx+1F2h], ax
mov     ebx, [ecx+1F0h]
sar     ebx, 10h
mov     eax, 1000h
mov     edx, eax
sar     edx, 1Fh
idiv    ebx
mov     [ecx+1F4h], ax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516408[eax]
mov     [ecx+1F6h], ax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, ds:word_516406[eax]
mov     [ecx+1E8h], ax
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 4
mov     ax, word ptr ds:dword_5163FE[eax]
mov     [ecx+1EAh], ax
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_459CAF:
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     ax, [esi+1E8h]
add     [esi+56h], ax
and     byte ptr [esi+57h], 0Fh
mov     ecx, [esi+1F4h]
sar     ecx, 10h
mov     edx, [esi+1F2h]
sar     edx, 10h
mov     eax, [esi+1EEh]
sar     eax, 10h
imul    eax, edx
call    sub_4EF008
imul    eax, ecx
sar     eax, 0Ch
cwde
mov     edx, [esi+1E8h]
sar     edx, 10h
add     eax, edx
mov     [esi+16h], ax
inc     word ptr [esi+1F0h]
mov     bx, [esi+1F2h]
mov     ax, [esi+1F0h]
cwd
idiv    bx
mov     [esi+1F0h], dx
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_459B4B endp




sub_459D39 proc near
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
add     eax, 408h
cmp     byte ptr [ecx+8], 0
jnz     short loc_459D7E
mov     edx, eax
mov     eax, ecx
call    sub_459D94
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_459D8E

loc_459D7E:
mov     edx, eax
mov     eax, ecx
call    sub_459E2B
mov     eax, ecx
call    sub_4DEADD

loc_459D8E:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_459D39 endp




sub_459D94 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 1000100h
mov     dword ptr [ecx+15Ch], 100h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0Dh], 5
mov     byte ptr [ecx+0Eh], 14h
cmp     byte ptr [ecx+3], 0
jz      short loc_459DE6
mov     byte ptr [ecx+0Ch], 1Ch
mov     byte ptr [ecx+0Fh], 0F0h
jmp     short loc_459DEE

loc_459DE6:
mov     byte ptr [ecx+0Ch], 20h ; ' '
mov     byte ptr [ecx+0Fh], 10h

