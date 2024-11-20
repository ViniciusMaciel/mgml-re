mov     byte ptr [edx+14h], 0FFh
mov     byte ptr [edx+18h], 0FFh
mov     byte ptr [edx+16h], 1Ah
mov     byte ptr [edx+17h], 0Fh
mov     word ptr [edx+8], 0
mov     word ptr [edx+0Ah], 0FFFFh
mov     word ptr [edx+0Ch], 0
mov     word ptr [edx+12h], 800h
mov     byte ptr [edx+15h], 0
mov     byte ptr [edx+19h], 0FFh
call    sub_4245A3
mov     eax, ebx
call    sub_4B565A
mov     byte ptr [ecx], 0

def_496FA1:             ; jumptable 00496FA1 default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_496F86 endp




sub_497128 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49712E[edx*4]
pop     edx
retn
sub_497128 endp




sub_497137 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A65E, dl
mov     ds:byte_55A65D, dl
mov     ds:byte_55A65C, dl
mov     eax, ds:off_52A004[eax*4]
mov     ds:dword_55A664, eax
pop     edx
retn
sub_497137 endp




sub_49715A proc near
push    edx
xor     dl, dl
mov     ds:byte_55A661, dl
mov     ds:byte_55A660, dl
mov     ds:byte_55A65F, dl
mov     eax, ds:off_52A03D[eax*4]
mov     ds:dword_55A668, eax
pop     edx
retn
sub_49715A endp




sub_49717D proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset byte_55A65C
mov     ebx, ds:dword_55A658+3
sar     ebx, 18h
mov     ecx, ds:dword_55A664
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4971B3
jbe     short loc_4971B6
cmp     bl, 7Fh
jnz     short loc_4971B3
xor     bl, bl
mov     ds:byte_55A65E, bl
jmp     short loc_4971B6

loc_4971B3:
inc     byte ptr [eax+2]

loc_4971B6:
movsx   ecx, byte ptr [eax+2]
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax], bl
mov     [eax+1], bl
mov     ebx, [eax+2]
sar     ebx, 18h
mov     ecx, [eax+0Ch]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_4971E4
jbe     short loc_4971E7
cmp     bl, 7Fh
jnz     short loc_4971E4
mov     byte ptr [eax+5], 0
jmp     short loc_4971E7

loc_4971E4:
inc     byte ptr [eax+5]

loc_4971E7:
mov     ecx, [eax+2]
sar     ecx, 18h
mov     ebx, [eax+0Ch]
mov     bl, [ecx+ebx]
mov     [eax+3], bl
mov     [eax+4], bl
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+3]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_49717D endp




sub_49720E proc near

var_4= byte ptr -4
arg_0= dword ptr  4

push    eax
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Ah
mov     al, [esp+4+var_4]
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, bx
mov     word ptr ds:dword_77EA52+2, cx
mov     edx, [esp+4+arg_0]
mov     word ptr ds:dword_77EA5A, dx
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     dl, 0FFh
mov     ds:byte_77EA61, dl
mov     ds:byte_77EA60, dl
add     esp, 4
retn    4
sub_49720E endp




sub_497261 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     dl, al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     [esi+4], dl
mov     [esi+5], dl
mov     [esi+6], dl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 10h
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 4Fh ; 'O'
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 0Ch
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
jmp     def_49731E      ; jumptable 0049731E default case
db 8Bh, 0C0h
jpt_49731E dd offset loc_497365 ; jump table for switch statement
dd offset loc_497325
dd offset loc_49733E
dd offset loc_4973D2
dd offset loc_4973E5
dd offset loc_4973F7
dd offset loc_497413

loc_497307:
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 6           ; switch 7 cases
ja      def_49731E      ; jumptable 0049731E default case
and     eax, 0FFh
jmp     jpt_49731E[eax*4] ; switch jump

loc_497325:             ; jumptable 0049731E case 1
mov     eax, 0Fh
call    sub_49E0D7
or      byte ptr ds:dword_55A66C, 80h

loc_497336:
inc     byte ptr [ecx+6]
jmp     def_49731E      ; jumptable 0049731E default case

loc_49733E:             ; jumptable 0049731E case 2
cmp     ds:word_6E23D6, 0
jnz     short loc_497365 ; jumptable 0049731E case 0
mov     eax, [ecx+24h]
call    sub_4DE336
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
mov     byte ptr [ecx+0Ah], 3Ch ; '<'
jmp     short loc_497336

loc_497365:             ; jumptable 0049731E case 0
cmp     dword ptr [ecx+10h], 0C8h
jle     def_49731E      ; jumptable 0049731E default case
test    byte ptr ds:word_77EAB6, 3
jnz     def_49731E      ; jumptable 0049731E default case
mov     ecx, [ecx+24h]
xor     edx, edx
mov     dx, ds:word_77EAB6
sar     edx, 2
mov     esi, 0Eh
mov     eax, edx
sar     edx, 1Fh
idiv    esi
call    sub_4DE13B
test    eax, eax
jz      def_49731E      ; jumptable 0049731E default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 3
mov     byte ptr [eax+0Eh], 0
movzx   esi, dl
lea     edi, [eax+48h]
lea     esi, [ecx+esi*8+190h]
movsd
movsd
jmp     def_49731E      ; jumptable 0049731E default case

loc_4973D2:             ; jumptable 0049731E case 3
mov     bl, [ecx+0Ah]
dec     bl
mov     [ecx+0Ah], bl
jnz     def_49731E      ; jumptable 0049731E default case
jmp     loc_497336

loc_4973E5:             ; jumptable 0049731E case 4
mov     eax, 9Bh
call    sub_42BEB2
inc     byte ptr [ecx+5]
jmp     loc_497336

loc_4973F7:             ; jumptable 0049731E case 5
call    sub_42C353
test    eax, eax
jnz     def_49731E      ; jumptable 0049731E default case
mov     eax, 250022h
call    sub_4D8E42
jmp     loc_497336

loc_497413:             ; jumptable 0049731E case 6
call    sub_4D8ECC
test    eax, eax
jz      def_49731E      ; jumptable 0049731E default case
mov     eax, 7
call    sub_49E0D7
call    sub_49DF64
mov     byte ptr [ecx+6], 0
jmp     def_49731E      ; jumptable 0049731E default case
db 8Dh, 40h, 0
jpt_497465 dd offset loc_49746C ; jump table for switch statement
dd offset loc_4975D1
dd offset loc_4975DA
dd offset def_497465

loc_49744B:
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_497465      ; jumptable 00497465 default case, case 3
and     eax, 0FFh
jmp     jpt_497465[eax*4] ; switch jump

loc_49746C:             ; jumptable 00497465 case 0
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 5DCh
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 5DC0000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     ebx, ebx
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 80h
xor     dh, dh
mov     ds:byte_5F83DA, dh
xor     bl, al
mov     ds:byte_5F83D8, bl
xor     eax, eax
call    sub_49715A
xor     eax, eax
call    sub_497137
mov     [esp+1Ch+var_1C], 96h
mov     edi, 0FFFFFF3Fh
mov     [esp+1Ch+var_1A], di
mov     [esp+1Ch+var_18], 5DCh
push    1
push    1
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 0Ah
lea     eax, [esp+28h+var_1C]
call    sub_43FD43
mov     [esi+0A0h], eax
xor     edx, edx
mov     [esp+1Ch+var_1C], dx
mov     [esp+1Ch+var_1A], di
mov     [esp+1Ch+var_18], 898h
push    0
push    1
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 2
mov     edx, 4
lea     eax, [esp+28h+var_1C]
call    sub_43FD43
mov     [esi+9Ch], eax
mov     [esp+1Ch+var_1C], 0FF6Ah
mov     [esp+1Ch+var_1A], 0FF3Fh
mov     [esp+1Ch+var_18], 960h
push    0
push    1
push    0FFFFFFFDh
mov     ecx, 14h
mov     ebx, 1
mov     edx, 0Ah
lea     eax, [esp+28h+var_1C]
call    sub_43FD43
mov     [esi+98h], eax

loc_4975A6:
inc     byte ptr [esi+6]

def_497465:             ; jumptable 00497465 default case, case 3
call    sub_49717D
mov     eax, [esi+10h]
cmp     eax, 28h ; '('
jb      short loc_4975FA
jbe     short loc_497614
cmp     eax, 2Dh ; '-'
jb      loc_497663
jbe     short loc_497629
cmp     eax, 41h ; 'A'
jz      loc_497646
jmp     loc_497663

loc_4975D1:             ; jumptable 00497465 case 1
and     ds:byte_5F8364, 0FEh
jmp     short loc_4975A6

loc_4975DA:             ; jumptable 00497465 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_497465 ; jumptable 00497465 default case, case 3
mov     eax, 4
call    sub_497137
inc     byte ptr [esi+5]
and     byte ptr ds:dword_55A66C, 7Fh
jmp     short loc_4975A6

loc_4975FA:
cmp     eax, 1Eh
jnz     short loc_497663
push    3
push    80h
mov     ecx, 0Fh
xor     ebx, ebx
mov     edx, 50h ; 'P'
jmp     short loc_49765C

loc_497614:
push    4
push    60h ; '`'
mov     ecx, 14h
mov     ebx, 3
mov     edx, 28h ; '('
jmp     short loc_49765C

loc_497629:
push    4
push    80h
mov     ecx, 14h
mov     ebx, 2
mov     edx, 50h ; 'P'
xor     eax, eax
call    sub_43FDD7

loc_497646:
push    6
push    80h
mov     ecx, 14h
mov     ebx, 1
mov     edx, 32h ; '2'

loc_49765C:
xor     eax, eax
call    sub_43FDD7

loc_497663:
mov     edi, [esi+10h]
cmp     edi, 5Ah ; 'Z'
jge     short loc_49767B
cmp     edi, 1Eh
jle     short loc_49767B
mov     eax, [esi+0A0h]
inc     byte ptr [eax+0Dh]
jmp     short def_497E7E ; jumptable 00497E7E default case

loc_49767B:
cmp     dword ptr [esi+10h], 5Ah ; 'Z'
jnz     short def_497E7E ; jumptable 00497E7E default case
mov     eax, [esi+0A0h]
call    sub_4DE3EA

def_497E7E:             ; jumptable 00497E7E default case
add     esp, 8

def_49731E:             ; jumptable 0049731E default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497261 endp




sub_497695 proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_4976A4
cmp     edx, 0Fh
jz      short loc_4976C5
jmp     short loc_4976CF

loc_4976A4:
mov     byte ptr [eax+6], 0
or      ds:byte_5F8364, 1
mov     eax, 4
call    sub_49715A
mov     eax, 1
call    sub_497137
jmp     short loc_4976CF

loc_4976C5:
mov     eax, 1
call    sub_49715A

loc_4976CF:
call    sub_49717D
pop     edx
retn
sub_497695 endp




sub_4976D6 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_4976FF
push    ecx
xor     ebx, ebx
xor     edx, eax
mov     eax, 2
call    sub_49720E
mov     eax, offset unk_52A065
call    sub_49DB4D
pop     edx
pop     ecx
pop     ebx
retn

loc_4976FF:
cmp     ecx, 40h ; '@'
jge     short loc_49771A
mov     eax, [eax+9Ch]
inc     byte ptr [eax+0Dh]
mov     edx, [edx+98h]
inc     byte ptr [edx+0Dh]
pop     edx
pop     ecx
pop     ebx
retn

loc_49771A:
jnz     short loc_497732
mov     eax, [eax+9Ch]
call    sub_4DE3EA
mov     eax, [edx+98h]
call    sub_4DE3EA

loc_497732:
pop     edx
pop     ecx
pop     ebx

locret_497735:
retn
sub_4976D6 endp




sub_497736 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, [eax+24h]
mov     eax, [eax+10h]
test    eax, eax
jnz     short loc_4977A2
push    eax
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Bh
call    sub_49720E
and     ds:byte_5F8364, 0FDh
mov     eax, offset unk_52A079
call    sub_49DB4D
mov     word ptr [esi+14h], 0
mov     word ptr [esi+16h], 0FF9Ch
mov     word ptr [esi+18h], 0FF38h
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
mov     word ptr [esi+46h], 0FFE8h

loc_4977A2:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497736 endp




sub_4977A7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_4977C8
jbe     loc_49789B
cmp     al, 2
jz      loc_4978D2
jmp     loc_4978E2

loc_4977C8:
test    al, al
jnz     loc_4978E2
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+24h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+24h]
mov     word ptr [eax+46h], 0
push    800h
mov     ecx, 780h
mov     ebx, 0FFFFFF3Fh
xor     edx, edx
mov     eax, 2
call    sub_49720E
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 780h
xor     edi, edi
mov     ds:dword_5F888C, edi
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 7800000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, bx
mov     ds:byte_5F88AC, 81h
xor     dh, dh
mov     ds:byte_5F83DA, dh
xor     bl, bl
mov     ds:byte_5F83D8, bl
mov     eax, 2
call    sub_49715A
mov     eax, 2
call    sub_497137

loc_497896:
inc     byte ptr [esi+6]
jmp     short loc_4978E2

loc_49789B:
or      ds:byte_5F8421, 10h
add     word ptr ds:dword_5F889E+2, 0Ah
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
mov     ecx, [esi+10h]
cmp     ecx, 10h
jnz     short loc_4978CB
mov     ds:byte_5F88AC, 82h
jmp     short loc_4978E2

loc_4978CB:
cmp     ecx, 1Ch
jnz     short loc_4978E2
jmp     short loc_497896

loc_4978D2:
cmp     dword ptr [esi+10h], 28h ; '('
jnz     short loc_4978E2
mov     eax, 5
call    sub_497137

loc_4978E2:
call    sub_49717D
jmp     def_49731E      ; jumptable 0049731E default case
sub_4977A7 endp




sub_4978EC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
mov     esi, [eax+24h]
mov     eax, [eax+10h]
cmp     eax, 50h ; 'P'
jb      short loc_49790E
jbe     loc_497988
cmp     eax, 6Eh ; 'n'
jz      short loc_497982
jmp     def_49731E      ; jumptable 0049731E default case

loc_49790E:
test    eax, eax
jnz     def_49731E      ; jumptable 0049731E default case
mov     byte ptr [edi+6], 0
push    eax
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Bh
call    sub_49720E
and     ds:byte_5F8364, 0FDh
mov     edi, [edi+28h]
or      byte ptr [edi], 2
or      byte ptr [esi], 2
mov     word ptr [esi+14h], 0
mov     word ptr [esi+16h], 0FED4h
mov     word ptr [esi+18h], 0FF6Ah
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
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0FFE8h
jmp     def_49731E      ; jumptable 0049731E default case

loc_497982:
mov     word ptr [esi+44h], 0FFE8h

loc_497988:
mov     word ptr [esi+46h], 0
jmp     def_49731E      ; jumptable 0049731E default case
sub_4978EC endp




sub_497993 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
mov     edx, [edx+10h]
test    edx, edx
jbe     short loc_4979A7
cmp     edx, 1Eh
jz      short loc_497A03
pop     edx
retn

loc_4979A7:
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FE70h
mov     word ptr [eax+18h], 0FFB0h
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
mov     byte ptr [eax+0FBh], 0FFh
mov     byte ptr [eax+103h], 0FFh
mov     byte ptr [eax+107h], 0FFh
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 4
pop     edx
retn

loc_497A03:
mov     word ptr [eax+46h], 0
pop     edx
retn
sub_497993 endp




sub_497A0B proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_497A23
cmp     al, 1
jz      short loc_497A42
jmp     loc_497AAA

loc_497A23:
mov     eax, [edx+28h]
call    sub_4DE477
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, offset unk_52A08D
call    sub_49DB4D
inc     byte ptr [edx+6]
jmp     short loc_497AAA

loc_497A42:
cmp     dword ptr [edx+10h], 96h
jge     short loc_497AA5
mov     [esp+14h+var_14], 0FF07h
mov     ebx, 0FFFFFFFFh
mov     [esp+14h+var_12], bx
mov     ecx, 0FFFFFFEEh
mov     [esp+14h+var_10], cx
mov     eax, esp
call    sub_42C443
mov     edx, eax
shl     edx, 2
sub     edx, eax
mov     [esp+14h+var_14], 0F9h
mov     [esp+14h+var_12], bx
mov     [esp+14h+var_10], cx
sub     word ptr ds:(dword_6E40AA+2)[edx*4], 2
mov     eax, esp
call    sub_42C443
mov     edx, eax
shl     edx, 2
sub     edx, eax
add     word ptr ds:(dword_6E40AA+2)[edx*4], 2
jmp     short loc_497AAA

loc_497AA5:
add     al, al
mov     [edx+6], al

loc_497AAA:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_497A0B endp




sub_497AB1 proc near
push    ecx
push    edx
mov     edx, [eax+24h]
mov     ecx, [eax+10h]
test    ecx, ecx
jbe     short loc_497AC8
cmp     ecx, 96h
jz      short loc_497ACF
pop     edx
pop     ecx
retn

loc_497AC8:
mov     byte ptr [eax+6], 0
pop     edx
pop     ecx
retn

loc_497ACF:
mov     word ptr [edx+44h], 50h ; 'P'
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 15h
pop     edx
pop     ecx
retn
sub_497AB1 endp




sub_497AE0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_497AF9
cmp     edx, 3Ch ; '<'
jz      loc_497BAE
jmp     loc_497BB8

loc_497AF9:
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
push    800h
mov     ecx, 898h
mov     ebx, 0FFFFFF3Fh
xor     edx, edx
mov     eax, 2
call    sub_49720E
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 898h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 8980000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 800h
xor     eax, eax
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 83h
xor     al, al
mov     ds:byte_5F83DA, al
xor     ah, ah
mov     ds:byte_5F83D8, ah
mov     eax, 3
call    sub_49715A
mov     eax, 3
jmp     short loc_497BB3

loc_497BAE:
mov     eax, 6

loc_497BB3:
call    sub_497137

loc_497BB8:
call    sub_49717D
mov     eax, 50h ; 'P'
call    sub_497261
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497AE0 endp




sub_497BCC proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, [eax+24h]
mov     eax, [eax+10h]
test    eax, eax
jnz     short loc_497C35
push    eax
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Bh
call    sub_49720E
or      byte ptr [esi], 2
mov     word ptr [esi+14h], 0
mov     word ptr [esi+16h], 0FFFFh
mov     word ptr [esi+18h], 0FEA2h
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
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+0Ch], 1
mov     byte ptr [esi+0Dh], 14h

loc_497C35:
mov     [esp+18h+var_18], 0FF07h
mov     ebx, 0FFFFFFFFh
mov     [esp+18h+var_16], bx
mov     ecx, 0FFFFFFEEh
mov     [esp+18h+var_14], cx
mov     eax, esp
call    sub_42C443
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     [esp+18h+var_18], 0F9h
mov     [esp+18h+var_16], bx
mov     [esp+18h+var_14], cx
add     word ptr ds:(dword_6E40AA+2)[esi*4], 3
mov     eax, esp
call    sub_42C443
mov     esi, eax
shl     esi, 2
sub     esi, eax
sub     word ptr ds:(dword_6E40AA+2)[esi*4], 3
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497BCC endp




sub_497C95 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_497CB1
jbe     short loc_497D1B
cmp     al, 2
jz      loc_497D2B
jmp     loc_497D4C

loc_497CB1:
test    al, al
jnz     loc_497D4C
and     ds:byte_5F8364, 0FDh
mov     ds:byte_5F84D4, al
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
push    0
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0Fh
call    sub_49720E
mov     ds:dword_77E6B4, offset unk_52A0A1
mov     dword ptr [esi+0A4h], offset unk_52A0ED
mov     dword ptr [esi+0Ch], 0
mov     eax, offset unk_52A051
call    sub_49DB4D

loc_497D16:
inc     byte ptr [esi+5]
jmp     short loc_497D4C

loc_497D1B:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_497D4C
jmp     short loc_497D16

loc_497D2B:
xor     edx, edx
mov     ds:dword_55A66C, edx
mov     eax, 250021h
call    sub_4D8E42
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+7], 0

loc_497D4C:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_497C95 endp

jpt_497D7F dd offset loc_497D86 ; jump table for switch statement
dd offset loc_497DD3
dd offset loc_497E1D
dd offset loc_497E2A



sub_497D6B proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_497D7F      ; jumptable 00497D7F default case
and     eax, 0FFh
jmp     jpt_497D7F[eax*4] ; switch jump

loc_497D86:             ; jumptable 00497D7F case 0
call    sub_49DBD1
call    sub_4D8ECC
test    eax, eax
jz      def_497D7F      ; jumptable 00497D7F default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_52A0FD
mov     dword ptr [ecx+0A4h], offset unk_52A585
and     byte ptr ds:dword_55A66C, 7Fh
inc     byte ptr [ecx+5]

def_497D7F:             ; jumptable 00497D7F default case
call    sub_47EBCB
test    eax, eax
jz      short loc_497DCB
or      byte ptr ds:dword_55A66C, 1

loc_497DCB:
call    sub_49DECF
pop     edx
pop     ecx
retn

loc_497DD3:             ; jumptable 00497D7F case 1
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
mov     al, byte ptr ds:dword_55A66C
test    al, 80h
jnz     short loc_497E16
test    al, 1
jz      short loc_497E16
mov     dl, al
or      dl, 2
mov     byte ptr ds:dword_55A66C, dl

loc_497DF6:
mov     eax, 8
call    sub_49E0D7
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979

loc_497E0F:
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

loc_497E16:
call    sub_49DBD1
jmp     short def_497D7F ; jumptable 00497D7F default case

loc_497E1D:             ; jumptable 00497D7F case 2
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
jmp     short loc_497E16

loc_497E2A:             ; jumptable 00497D7F case 3
cmp     byte ptr [ecx+8], 0FFh
jz      short loc_497E0F
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
mov     dh, byte ptr ds:dword_55A66C
test    dh, 80h
jnz     short loc_497E16
test    dh, 1
jz      short loc_497E16
jmp     short loc_497DF6
sub_497D6B endp

db 8Bh, 0C0h
jpt_497E7E dd offset loc_497E85 ; jump table for switch statement
dd offset loc_497F2D
dd offset loc_497F48
dd offset loc_497F57



sub_497E5F proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_497E7E      ; jumptable 00497E7E default case
and     eax, 0FFh
jmp     jpt_497E7E[eax*4] ; switch jump

loc_497E85:             ; jumptable 00497E7E case 0
mov     si, ds:word_6E23D6
test    si, si
jnz     def_497E7E      ; jumptable 00497E7E default case
or      ds:byte_5F8364, 3
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, si
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, si
xor     ebx, ebx
mov     ds:dword_5F888C, ebx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, ebx
xor     ebx, ebx
mov     ds:word_5F88A8, bx
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, 800h
xor     dh, dh
mov     ds:byte_5F88AC, dh
mov     byte ptr ds:dword_5F84CB+1, dh
mov     byte ptr ds:dword_5F84CB+2, dh
call    sub_4D8EB1
test    byte ptr ds:dword_55A66C, 2
jz      short loc_497F25
mov     eax, 9Bh
call    sub_42BEB2

loc_497F25:
inc     byte ptr [ecx+5]
jmp     def_497E7E      ; jumptable 00497E7E default case

loc_497F2D:             ; jumptable 00497E7E case 1
test    byte ptr ds:dword_55A66C, 2
jz      short loc_497F3F
mov     byte ptr [ecx+5], 2
jmp     def_497E7E      ; jumptable 00497E7E default case

loc_497F3F:
mov     byte ptr [ecx+5], 3
jmp     def_497E7E      ; jumptable 00497E7E default case

loc_497F48:             ; jumptable 00497E7E case 2
call    sub_42C353
test    eax, eax
jnz     def_497E7E      ; jumptable 00497E7E default case
jmp     short loc_497F25

loc_497F57:             ; jumptable 00497E7E case 3
test    byte ptr ds:dword_55A66C, 2
jnz     short loc_497F6F
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979

loc_497F6F:
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
cmp     ds:dword_55A66C, 0
jz      short loc_497F90
xor     eax, eax
call    sub_49E0D7

loc_497F90:
mov     [esp+1Ch+var_1C], 0FF00h
xor     ebx, ebx
mov     [esp+1Ch+var_1A], bx
mov     edi, 0B00h
mov     [esp+1Ch+var_18], di
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 40A00h
call    sub_4A7AE1
mov     edx, esp
mov     eax, 0Fh
call    sub_42C4B7
mov     edx, 40A00h
call    sub_4A7AE1
mov     [esp+1Ch+var_1C], 100h
mov     [esp+1Ch+var_1A], bx
mov     [esp+1Ch+var_18], di
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 40B00h
call    sub_4A7AE1
mov     edx, esp
mov     eax, 0Fh
call    sub_42C4B7
mov     edx, 40B00h
call    sub_4A7AE1
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Ah
mov     ds:byte_77EA5F, 0Fh
xor     edi, edi
mov     word ptr ds:dword_77EA4E+2, di
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, di
mov     word ptr ds:dword_77EA5A, 800h
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ah, 0FFh
mov     ds:byte_77EA61, ah
mov     ds:byte_77EA60, ah
call    sub_428901
mov     [ecx+0A0h], eax
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000002Fh
call    sub_4D89E4
mov     eax, esi
call    sub_4B565A
mov     byte ptr [ecx], 0
jmp     def_497E7E      ; jumptable 00497E7E default case
sub_497E5F endp




sub_498086 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49808C[edx*4]
pop     edx
retn
sub_498086 endp




sub_498095 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_49809B[edx*4]
pop     edx
retn
sub_498095 endp

db 90h
jpt_4980CF dd offset loc_4980D6 ; jump table for switch statement
dd offset loc_4980FF
dd offset loc_498136
dd offset loc_49814F
dd offset loc_498215



sub_4980B9 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_4980CF      ; jumptable 004980CF default case
and     eax, 0FFh
jmp     jpt_4980CF[eax*4] ; switch jump

loc_4980D6:             ; jumptable 004980CF case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4980CF      ; jumptable 004980CF default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh

loc_4980F7:
inc     byte ptr [ecx+5]
jmp     def_4980CF      ; jumptable 004980CF default case

loc_4980FF:             ; jumptable 004980CF case 1
cmp     ds:word_6E23D6, 0
jnz     def_4980CF      ; jumptable 004980CF default case
cmp     ds:byte_77EAB8, 0
jnz     def_4980CF      ; jumptable 004980CF default case
mov     ebx, 1
mov     edx, ebx
mov     eax, 9Ch
call    sub_4DBCF3
call    sub_436868
mov     byte ptr [ecx+0Ah], 80h
jmp     short loc_4980F7

loc_498136:             ; jumptable 004980CF case 2
call    sub_42C353
test    eax, eax
jnz     def_4980CF      ; jumptable 004980CF default case
mov     eax, 24001Fh
call    sub_4D8E42
jmp     short loc_4980F7

loc_49814F:             ; jumptable 004980CF case 3
call    sub_4D8ECC
test    eax, eax
jz      def_4980CF      ; jumptable 004980CF default case
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52A764
mov     dword ptr [ecx+0A4h], offset unk_52B360
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 580h
mov     ds:dword_5F888C, offset unk_800000
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 5800000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
mov     ds:byte_5F88AC, 30h ; '0'
xor     bh, bh
mov     ds:byte_5F84D4, bh
xor     eax, eax
call    sub_4991AC
xor     eax, eax
call    sub_4986E8
call    sub_49DBD1
call    sub_49DECF
jmp     loc_4980F7

loc_498215:             ; jumptable 004980CF case 4
mov     eax, 6
call    sub_49E0D7
call    sub_4991CF
call    sub_49DBD1
call    sub_49DECF
mov     byte ptr [ecx+4], 1
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

def_4980CF:             ; jumptable 004980CF default case
call    sub_47EBCB
test    eax, eax
jz      short loc_49824B
or      byte ptr [ecx+0Ah], 1

loc_49824B:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4980B9 endp




sub_498250 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_498264
jbe     short loc_498290
cmp     al, 2
jz      short loc_49829D
jmp     short loc_4982C2

loc_498264:
test    al, al
jnz     short loc_4982C2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 80h
jnz     short loc_4982C2
test    cl, 1

loc_49827E:
jz      short loc_4982C2
mov     eax, 8
call    sub_49E0D7
mov     byte ptr [edx+4], 2
jmp     short loc_4982BE

loc_498290:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_4982C2

loc_49829D:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_4982BB
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bl, [edx+0Ah]
test    bl, 80h
jnz     short loc_4982C2
test    bl, 1
jmp     short loc_49827E

loc_4982BB:
mov     [edx+4], al

loc_4982BE:
mov     byte ptr [edx+5], 0

loc_4982C2:
call    sub_47EBCB
test    eax, eax
jz      short loc_4982CF
or      byte ptr [edx+0Ah], 1

loc_4982CF:
call    sub_4991CF
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_498250 endp




sub_4982E2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_4982F6
cmp     al, 1
jz      short loc_498358
pop     edx
pop     ecx
pop     ebx
retn

loc_4982F6:
cmp     ds:word_6E23D6, 0
jnz     loc_4983A9
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
mov     eax, offset byte_5F8364
call    sub_4B565A
xor     ah, ah
mov     ds:byte_5F8410, ah
mov     byte ptr ds:dword_5F84CB+1, ah
mov     byte ptr ds:dword_5F84CB+2, ah
call    sub_4E1D8A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
call    sub_4D8EB1
mov     word ptr ds:dword_77EA7C, 7Fh
add     [ecx+5], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_498358:
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 1Bh
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
xor     ebx, ebx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     bl, dl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
call    sub_47E829
mov     byte ptr [ecx], 0

loc_4983A9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4982E2 endp




sub_4983AD proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_4983BD
cmp     al, 1
jz      short loc_4983D0
pop     edx
retn

loc_4983BD:
cmp     ds:word_6E23D6, 0
jnz     short loc_4983F9
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+6]
pop     edx
retn

loc_4983D0:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_4983E0
mov     eax, 0Dh
call    sub_4991AC

loc_4983E0:
cmp     dword ptr [edx+10h], 78h ; 'x'
jl      short loc_4983F9
mov     eax, offset unk_52A610
call    sub_49DB4D
mov     byte ptr [edx+6], 0
call    sub_49DF64

loc_4983F9:
pop     edx

locret_4983FA:
retn
sub_4983AD endp




sub_4983FB proc near
cmp     dword ptr [eax+10h], 0
jnz     short loc_498429
and     ds:byte_5F8364, 0FDh
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_52A624
call    sub_49DB4D
mov     ds:byte_56F8B4, 3
mov     eax, 0Dh
call    sub_498BC3

loc_498429:
mov     eax, 3
jmp     sub_49926D
sub_4983FB endp




sub_498433 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_498471
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     dl, 2

loc_498446:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_52A610
call    sub_49DB4D
inc     dl
cmp     dl, 0Ah
jle     short loc_498446
xor     dh, dh
mov     ds:byte_55A680, dh
mov     [ebx+6], dh
jmp     short loc_498477

loc_498471:
cmp     byte ptr [eax+6], 0
jnz     short loc_498489

loc_498477:
xor     eax, eax
call    sub_49926D
test    eax, eax
jz      short loc_498493
inc     byte ptr [ebx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_498489:
mov     eax, 1
call    sub_49926D

loc_498493:
pop     edx
pop     ecx
pop     ebx
retn
sub_498433 endp




sub_498497 proc near
mov     eax, 1
jmp     sub_49926D
sub_498497 endp




sub_4984A1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4984DB
mov     dl, 2

loc_4984AE:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 0Ah
jle     short loc_4984AE
xor     bl, bl
mov     ds:byte_56F8B4, bl
mov     eax, offset unk_52A6EC
call    sub_49DB4D
mov     eax, 0Ch
call    sub_498BC3

loc_4984DB:
pop     edx
pop     ecx
pop     ebx
retn
sub_4984A1 endp




sub_4984DF proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498503
mov     edx, [eax+50h]
and     byte ptr [edx], 0FDh
or      ds:byte_5F8364, 2
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     eax, 0Fh
call    sub_498BC3

loc_498503:
pop     edx
retn
sub_4984DF endp




sub_498505 proc near
push    ecx
push    edx
push    edi
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 19h
jb      short loc_498534
jbe     loc_49860E
cmp     eax, 1Eh
jb      loc_498628
jbe     loc_498615
cmp     eax, 3Ch ; '<'
jz      loc_49861E
pop     edi
pop     edx
pop     ecx
retn

loc_498534:
test    eax, eax
jbe     short loc_498545
cmp     eax, 0Ah
jz      loc_4985F6
pop     edi
pop     edx
pop     ecx
retn

loc_498545:
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 6C0h
mov     ecx, offset unk_800000
mov     ds:dword_5F888C, ecx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 6C00000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
xor     eax, eax
call    sub_4991AC
mov     eax, 1
call    sub_4986E8
mov     eax, [edx+24h]
mov     word ptr [eax+14h], 80h
mov     word ptr [eax+16h], 8
mov     word ptr [eax+18h], 740h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 80000h
mov     dword ptr [eax+24h], 7400000h
mov     [eax+58h], di
mov     [eax+54h], di
mov     word ptr [eax+56h], 0CE0h
pop     edi
pop     edx
pop     ecx
retn

loc_4985F6:
mov     ds:byte_5F88AC, 80h
mov     eax, 1
call    sub_4991AC

loc_498607:
mov     eax, 0Bh
jmp     short loc_498623

loc_49860E:
mov     eax, 1
jmp     short loc_498623

loc_498615:
mov     ds:byte_5F88AC, 81h
jmp     short loc_498607

loc_49861E:
mov     eax, 1

loc_498623:
call    sub_4986E8

loc_498628:
pop     edi
pop     edx
pop     ecx

locret_49862B:
retn
sub_498505 endp




sub_49862C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498639
and     ds:byte_5F8364, 0FDh

locret_498639:
retn
sub_49862C endp




sub_49863A proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498647
or      ds:byte_5F8364, 2

locret_498647:
retn
sub_49863A endp




sub_498648 proc near

; FUNCTION CHUNK AT 0049870B SIZE 00000007 BYTES

mov     eax, [eax+10h]
cmp     eax, 15Eh
jb      short loc_498686
jbe     loc_4986C8
cmp     eax, 1FEh
jb      short loc_49867E
jbe     loc_49870B
cmp     eax, 208h
jb      short locret_49867D
jbe     loc_4986E3
cmp     eax, 21Eh
jz      loc_49870B

locret_49867D:
retn

loc_49867E:
cmp     eax, 1F4h
jz      short loc_4986D2
retn

loc_498686:
cmp     eax, 32h ; '2'
jb      short loc_498695
jbe     short loc_4986AD
cmp     eax, 0BEh
jz      short loc_4986C8
retn

loc_498695:
test    eax, eax
jnz     short locret_49867D
call    sub_4991AC
xor     eax, eax
call    sub_4986E8
mov     ds:byte_5F88AC, 82h
retn

loc_4986AD:
mov     ds:byte_5F88AC, 83h
mov     eax, 0Eh
call    sub_4991AC
mov     eax, 0Ch
jmp     sub_4986E8

loc_4986C8:
mov     eax, 0Fh
jmp     sub_4991AC

loc_4986D2:
mov     ds:byte_5F88AC, 84h
mov     eax, 3
call    sub_4991AC

loc_4986E3:
mov     eax, 0Dh
sub_498648 endp




sub_4986E8 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A67D, dl
mov     ds:byte_55A67C, dl
mov     ds:byte_55A67B, dl
mov     eax, ds:off_52B5EF[eax*4]
mov     ds:dword_55A674, eax
pop     edx
retn
sub_4986E8 endp

; START OF FUNCTION CHUNK FOR sub_498648

loc_49870B:
mov     eax, 3
jmp     short sub_4986E8
; END OF FUNCTION CHUNK FOR sub_498648



sub_498712 proc near
mov     eax, [eax+10h]
cmp     eax, 32h ; '2'
jb      short locret_498721
jbe     short loc_498722
cmp     eax, 78h ; 'x'
jz      short loc_49873A

locret_498721:
retn

loc_498722:
mov     ds:byte_5F88AC, 85h
mov     eax, 16h
call    sub_4991AC
mov     eax, 0Eh
jmp     short sub_4986E8

loc_49873A:
mov     ds:byte_5F88AC, 86h
mov     eax, 17h
call    sub_4991AC
mov     eax, 14h
jmp     short sub_4986E8
sub_498712 endp




sub_498752 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498721
mov     eax, offset unk_52A700
jmp     sub_49DB4D
sub_498752 endp




sub_498762 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498794
and     ds:byte_5F8364, 0FDh
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, [eax+54h]
and     byte ptr [edx], 0FDh
mov     eax, [eax+28h]
or      byte ptr [eax], 2
mov     ds:byte_56F8B4, 3
mov     eax, 0Dh
call    sub_498BC3

loc_498794:
mov     eax, 3
call    sub_49926D
pop     edx
retn
sub_498762 endp




sub_4987A0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4987CB
mov     dl, 2

loc_4987AD:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
or      byte ptr [eax], 2
inc     dl
cmp     dl, 0Ah
jle     short loc_4987AD
xor     bl, bl
mov     ds:byte_55A680, bl
mov     [ecx+6], bl
jmp     short loc_4987D1

loc_4987CB:
cmp     byte ptr [eax+6], 0
jnz     short loc_4987E2

loc_4987D1:
mov     eax, 2
call    sub_49926D
test    eax, eax
jz      short loc_4987E2
inc     byte ptr [ecx+6]

loc_4987E2:
pop     edx
pop     ecx
pop     ebx
retn
sub_4987A0 endp




sub_4987E6 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4987FD
xor     bl, bl
mov     ds:byte_55A680, bl
mov     [eax+6], bl
jmp     short loc_498803

loc_4987FD:
cmp     byte ptr [eax+6], 0
jnz     short loc_498814

loc_498803:
mov     eax, 2
call    sub_49926D
test    eax, eax
jz      short loc_498814
inc     byte ptr [edx+6]

loc_498814:
pop     edx
pop     ebx
retn
sub_4987E6 endp




sub_498817 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49884D
mov     dl, 1

loc_498824:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 0Ah
jle     short loc_498824
xor     bl, bl
mov     ds:byte_56F8B4, bl
mov     eax, [ecx+50h]
or      byte ptr [eax], 2
mov     eax, 0Ch
call    sub_498BC3

loc_49884D:
pop     edx
pop     ecx
pop     ebx

locret_498850:
retn
sub_498817 endp

jpt_49893D dd offset loc_498944 ; jump table for switch statement
dd offset loc_49895F
dd offset loc_49896A
dd offset loc_49897F



sub_498861 proc near
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_49892A
mov     eax, [eax+24h]
call    sub_4DE2F6
mov     eax, [ecx+28h]
call    sub_4DE477
mov     eax, [ecx+2Ch]
call    sub_4DE2F6
mov     eax, [ecx+30h]
call    sub_4DE2F6
mov     dl, 4

loc_498892:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
call    sub_4DE371
inc     dl
cmp     dl, 9
jle     short loc_498892
mov     eax, [ecx+4Ch]
call    sub_4DE2F6
mov     eax, [ecx+50h]
call    sub_4DE2F6
mov     eax, [ecx+54h]
call    sub_4DE2F6
xor     dl, dl

loc_4988BF:
movsx   eax, dl
mov     dword ptr [ecx+eax*4+24h], 0
inc     dl
cmp     dl, 0Ch
jle     short loc_4988BF
mov     eax, offset unk_52A714
call    sub_49DB4D
mov     eax, [ecx+24h]
mov     byte ptr [eax+9], 2
mov     eax, [ecx+24h]
mov     dword ptr [eax+58h], 500h
mov     ds:byte_56F87C, 3
xor     edx, edx
mov     ds:word_56F888, dx
mov     ds:word_56F88A, dx
xor     esi, esi
mov     ds:dword_56F880, esi
mov     ds:dword_56F884, esi
call    sub_4D8EB1
or      byte ptr [ecx+0Ah], 80h
mov     byte ptr [ecx+6], 0
mov     eax, 0Eh
call    sub_498BC3
jmp     short loc_498931

loc_49892A:
mov     eax, [eax+24h]
sub     dword ptr [eax+58h], 8

loc_498931:
mov     al, [ecx+6]
cmp     al, 3           ; switch 4 cases
ja      short def_49893D ; jumptable 0049893D default case
and     eax, 0FFh
jmp     jpt_49893D[eax*4] ; switch jump

loc_498944:             ; jumptable 0049893D case 0
cmp     dword ptr [ecx+10h], 0Ah
jnz     short def_49893D ; jumptable 0049893D default case
mov     eax, 9Dh
call    sub_42BEB2
mov     byte ptr [ecx+5], 1

loc_498958:
inc     byte ptr [ecx+6]
pop     esi
pop     edx
pop     ecx
retn

loc_49895F:             ; jumptable 0049893D case 1
call    sub_42C353
test    eax, eax
jnz     short def_49893D ; jumptable 0049893D default case
jmp     short loc_498958

loc_49896A:             ; jumptable 0049893D case 2
cmp     dword ptr [ecx+10h], 0A0h
jl      short def_49893D ; jumptable 0049893D default case
mov     eax, 240021h
call    sub_4D8E42
jmp     short loc_498958

loc_49897F:             ; jumptable 0049893D case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_49893D ; jumptable 0049893D default case
mov     byte ptr [ecx+5], 2
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_49893D:             ; jumptable 0049893D default case
pop     esi
pop     edx
pop     ecx
retn
sub_498861 endp




sub_498999 proc near
push    edx
push    esi
mov     edx, [eax+10h]
cmp     edx, 2Dh ; '-'
jb      short loc_4989C4
jbe     loc_498A7F
cmp     edx, 37h ; '7'
jb      loc_498A9D
jbe     loc_498A8C
cmp     edx, 78h ; 'x'
jz      loc_498A93
pop     esi
pop     edx
retn

loc_4989C4:
cmp     edx, 1
jnz     loc_498A9D
and     byte ptr [eax+0Ah], 7Fh
mov     eax, [eax+24h]
call    sub_4DE477
xor     dh, dh
mov     ds:byte_56F87C, dh
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 640h
mov     ds:dword_5F888C, offset unk_800000
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 6400000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, si
mov     ds:word_5F88A8, si
mov     eax, 4
call    sub_4991AC
mov     eax, 4
call    sub_4986E8
mov     ds:byte_5F88AC, 87h
mov     eax, offset unk_52A728
call    sub_49DB4D
mov     eax, 0Fh
call    sub_498BC3
pop     esi
pop     edx
retn

loc_498A7F:
mov     eax, 0Fh

loc_498A84:
call    sub_4986E8
pop     esi
pop     edx
retn

loc_498A8C:
mov     eax, 4
jmp     short loc_498A84

loc_498A93:
mov     eax, 10h
call    sub_4991AC

loc_498A9D:
pop     esi
pop     edx
retn
sub_498999 endp




sub_498AA0 proc near
mov     eax, [eax+10h]
cmp     eax, 2Dh ; '-'
jb      short loc_498AB7
jbe     short loc_498ADF
cmp     eax, 46h ; 'F'
jb      short locret_498AB6
jbe     short loc_498AE9
cmp     eax, 5Fh ; '_'
jz      short loc_498ACB

locret_498AB6:
retn

loc_498AB7:
test    eax, eax
jbe     short loc_498AC1
cmp     eax, 1Eh
jz      short loc_498AD5
retn

loc_498AC1:
mov     eax, 4
call    sub_4991AC

loc_498ACB:
mov     eax, 4
jmp     sub_4986E8

loc_498AD5:
mov     eax, 10h
jmp     sub_4991AC

loc_498ADF:
mov     eax, 0Fh
jmp     sub_4986E8

loc_498AE9:
mov     ds:byte_5F88AC, 88h
retn
sub_498AA0 endp




sub_498AF1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498AFE
and     ds:byte_5F8364, 0FDh

locret_498AFE:
retn
sub_498AF1 endp




sub_498AFF proc near
mov     eax, [eax+10h]
cmp     eax, 136h
jb      short loc_498B1C
jbe     short loc_498AD5
cmp     eax, 1EAh
jb      short locret_498B1B
jbe     short loc_498AD5
cmp     eax, 262h
jz      short loc_498B2F

locret_498B1B:
retn

loc_498B1C:
test    eax, eax
jbe     short loc_498B26
cmp     eax, 78h ; 'x'
jz      short loc_498AD5
retn

loc_498B26:
or      ds:byte_5F8364, 2
jmp     short loc_498AC1

loc_498B2F:
mov     ds:byte_5F88AC, 89h
mov     eax, 11h
call    sub_4991AC
mov     eax, 10h
jmp     sub_4986E8
sub_498AFF endp




sub_498B4A proc near
mov     eax, [eax+10h]
cmp     eax, 0Fh
jb      short loc_498B5A
jbe     short loc_498B72
cmp     eax, 14h
jz      short loc_498B83

locret_498B59:
retn

loc_498B5A:
test    eax, eax
jnz     short locret_498B59
mov     eax, 5
call    sub_4991AC
mov     eax, 5
jmp     sub_4986E8

loc_498B72:
mov     ds:byte_5F88AC, 8Ah
mov     eax, 12h
jmp     sub_4991AC

loc_498B83:
mov     eax, 0Ch
call    sub_4991AC
mov     eax, 6
jmp     sub_4986E8
sub_498B4A endp




sub_498B97 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_498B59
and     ds:byte_5F8364, 0FDh
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, offset unk_52A73C
call    sub_49DB4D
mov     eax, offset unk_52A750
call    sub_49DB4D
mov     eax, 10h
sub_498B97 endp




sub_498BC3 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 17h
mov     ds:byte_77EA5F, al
mov     ax, word ptr ds:dword_5F889A+2
mov     word ptr ds:dword_77EA4E+2, ax
mov     ax, word ptr ds:dword_5F889E
mov     word ptr ds:dword_77EA52, ax
mov     ax, word ptr ds:dword_5F889E+2
mov     word ptr ds:dword_77EA52+2, ax
mov     ax, word ptr ds:dword_5F88A4+2
mov     word ptr ds:dword_77EA5A, ax
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_498BC3 endp




sub_498C21 proc near
push    ecx
push    edx
push    edi
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 104h
jb      short loc_498C86
jbe     loc_498DBD
cmp     eax, 14Ah
jb      short loc_498C6E
jbe     loc_498DCB
cmp     eax, 168h
jb      short loc_498C5F
jbe     loc_498DD5
cmp     eax, 186h
jz      loc_498DDC
pop     edi
pop     edx
pop     ecx
retn

loc_498C5F:
cmp     eax, 159h

loc_498C64:
jz      loc_498DC4
pop     edi
pop     edx
pop     ecx
retn

loc_498C6E:
cmp     eax, 124h
jb      loc_498DE6
jbe     loc_498DD5
cmp     eax, 13Bh
jmp     short loc_498C64

loc_498C86:
cmp     eax, 0B4h
jb      short loc_498CB3
jbe     loc_498D9D
cmp     eax, 0FAh
jb      loc_498DE6
jbe     loc_498DAB
cmp     eax, 0FEh
jz      loc_498DB6
pop     edi
pop     edx
pop     ecx
retn

loc_498CB3:
test    eax, eax
jbe     short loc_498CC4
cmp     eax, 46h ; 'F'
jz      loc_498D9D
pop     edi
pop     edx
pop     ecx
retn

loc_498CC4:
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 80h
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 640h
mov     ecx, offset unk_800000
mov     ds:dword_5F888C, ecx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 6400000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, di
mov     ds:word_5F88A8, di
mov     eax, 6
call    sub_4991AC
mov     eax, 7
call    sub_4986E8
mov     ds:byte_5F88AC, 80h
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 80h
mov     word ptr [eax+16h], 0FF3Fh
mov     word ptr [eax+18h], 5C0h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FF3F0000h
mov     dword ptr [eax+24h], 5C00000h
mov     [eax+58h], di
mov     [eax+54h], di
mov     word ptr [eax+56h], 800h
mov     eax, 2
call    sub_498BC3
pop     edi
pop     edx
pop     ecx
retn

loc_498D9D:
mov     eax, 13h

loc_498DA2:
call    sub_4991AC
pop     edi
pop     edx
pop     ecx
retn

loc_498DAB:
mov     ds:byte_5F88AC, 8Bh
pop     edi
pop     edx
pop     ecx
retn

loc_498DB6:
mov     eax, 7
jmp     short loc_498DA2

loc_498DBD:
mov     eax, 8
jmp     short loc_498DA2

loc_498DC4:
mov     eax, 7
jmp     short loc_498DE1

loc_498DCB:
mov     eax, 14h
call    sub_4991AC

loc_498DD5:
mov     eax, 11h
jmp     short loc_498DE1

loc_498DDC:
mov     eax, 7

loc_498DE1:
call    sub_4986E8

loc_498DE6:
pop     edi
pop     edx
pop     ecx
retn
sub_498C21 endp




sub_498DEA proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498E14
and     ds:byte_5F8364, 0FDh
mov     edx, [eax+24h]
and     byte ptr [edx], 0FDh
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     eax, 10h
call    sub_498BC3

loc_498E14:
pop     edx
retn
sub_498DEA endp




sub_498E16 proc near
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_498E44
jbe     loc_498EAB
cmp     eax, 5Fh ; '_'
jb      short loc_498E3D
jbe     loc_498EAB
cmp     eax, 69h ; 'i'
jz      loc_498EB2
pop     edx
retn

loc_498E3D:
cmp     eax, 4Bh ; 'K'

loc_498E40:
jz      short loc_498E9F
pop     edx
retn

loc_498E44:
test    eax, eax
jbe     short loc_498E4D
cmp     eax, 2Dh ; '-'
jmp     short loc_498E40

loc_498E4D:
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     dword ptr [edx+28h], 0
mov     dword ptr [edx+2Ch], 0
or      ds:byte_5F8364, 2
mov     eax, 6
call    sub_4991AC
mov     eax, 8
call    sub_4986E8
mov     ds:byte_5F88AC, 80h
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, 2
call    sub_498BC3
pop     edx
retn

loc_498E9F:
mov     eax, 11h

loc_498EA4:
call    sub_4986E8
pop     edx
retn

loc_498EAB:
mov     eax, 8
jmp     short loc_498EA4

loc_498EB2:
mov     eax, 13h
call    sub_4991AC
pop     edx
retn
sub_498E16 endp




sub_498EBE proc near
mov     eax, [eax+10h]
cmp     eax, 1
jb      short locret_498EF1
jbe     short loc_498ECE
cmp     eax, 14h
jz      short loc_498EEA
retn

loc_498ECE:
mov     eax, 9
call    sub_4991AC
mov     eax, 9
call    sub_4986E8
mov     ds:byte_5F88AC, 80h
retn

loc_498EEA:
mov     ds:byte_5F88AC, 8Ch

locret_498EF1:
retn
sub_498EBE endp




sub_498EF2 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_498F41
and     ds:byte_5F8364, 0FDh
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FF3Fh
mov     word ptr [eax+18h], 620h
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FF3F0000h
mov     dword ptr [eax+24h], 6200000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h

loc_498F41:
pop     edx
retn
sub_498EF2 endp




sub_498F43 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
cmp     eax, 3Eh ; '>'
jb      short loc_498FA9
jbe     loc_4990B3
cmp     eax, 98h
jb      short loc_498F8A
jbe     loc_4990AC
cmp     eax, 0A4h
jb      loc_499053
jbe     loc_4990D9
cmp     eax, 0A9h
jz      loc_4990EF
jmp     loc_499053

loc_498F8A:
cmp     eax, 50h ; 'P'
jb      loc_499053
jbe     loc_4990BC
cmp     eax, 8Ch
jz      loc_4990C8
jmp     loc_499053

loc_498FA9:
cmp     eax, 0Bh
jb      short loc_498FD1
jbe     loc_49904C
cmp     eax, 14h
jb      loc_499053
jbe     loc_49908C
cmp     eax, 1Eh
jz      loc_4990A2
jmp     loc_499053

loc_498FD1:
test    eax, eax
jnz     loc_499053
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     esi, esi
mov     word ptr ds:dword_5F889A+2, si
mov     word ptr ds:dword_5F889E, 0FF3Fh
mov     word ptr ds:dword_5F889E+2, 640h
xor     ecx, ecx
mov     ds:dword_5F888C, ecx
mov     ds:dword_5F8890, 0FF3F0000h
mov     ds:dword_5F8894, 6400000h
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, bx
mov     ds:word_5F88A8, bx
mov     byte ptr [edx+6], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49904C:
mov     ds:byte_5F88AC, 8Dh

loc_499053:
cmp     byte ptr [edx+6], 1
jnz     short loc_499087

loc_499059:
sub     word ptr [ecx+53Ch], 10h
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     eax, [edx+24h]
sub     word ptr [eax+18h], 10h
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx

loc_499087:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49908C:
mov     eax, 14h
call    sub_4991AC
mov     eax, 12h

loc_49909B:
call    sub_4986E8
jmp     short loc_499053

loc_4990A2:
mov     eax, 0Ah
call    sub_4991AC

loc_4990AC:
mov     eax, 0Ah
jmp     short loc_49909B

loc_4990B3:
mov     ds:byte_5F88AC, 8Eh
jmp     short loc_499053

loc_4990BC:
mov     eax, 15h
call    sub_4991AC
jmp     short loc_499053

loc_4990C8:
mov     eax, 15h
call    sub_4991AC
mov     eax, 13h
jmp     short loc_49909B

loc_4990D9:
mov     eax, 0Bh
call    sub_4991AC
mov     ds:byte_5F88AC, 8Fh
jmp     loc_499053

loc_4990EF:
mov     byte ptr [edx+6], 1
jmp     loc_499059
sub_498F43 endp




sub_4990F8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ebx, offset byte_5F8364
mov     ecx, [eax+24h]
cmp     dword ptr [eax+10h], 2
jnz     short loc_499114
mov     ds:byte_5F88AC, 1

loc_499114:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     short loc_499128
mov     eax, 0Ah
call    sub_49E0D7
or      byte ptr [edx+0Ah], 80h

loc_499128:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jl      short loc_499154
mov     si, word ptr ds:dword_77EA7C
test    si, si
jle     short loc_499154
mov     edi, esi
sub     edi, 5
mov     word ptr ds:dword_77EA7C, di
test    di, di
jge     short loc_499154
xor     esi, esi
mov     word ptr ds:dword_77EA7C, si

loc_499154:
sub     word ptr [ebx+53Ch], 10h
mov     eax, [ebx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+530h], eax
mov     edx, [edx+10h]
sub     edx, 2
and     edx, 0Fh
mov     dx, ds:word_52B643[edx*2]
sub     edx, 0C1h
mov     [ecx+16h], dx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
sub     word ptr [ecx+18h], 10h
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
sub_4990F8 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_49926D

loc_4991A6:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_49926D



sub_4991AC proc near
push    edx
xor     dl, dl
mov     ds:byte_55A67A, dl
mov     ds:byte_55A679, dl
mov     ds:byte_55A678, dl
mov     eax, ds:off_52B58F[eax*4]
mov     ds:dword_55A670, eax
pop     edx
retn
sub_4991AC endp




sub_4991CF proc near
push    ecx
push    edx
mov     eax, offset dword_55A670
mov     edx, ds:dword_55A674+3
sar     edx, 18h
mov     ecx, ds:dword_55A670
mov     dl, [ecx+edx+1]
cmp     dl, 7Eh ; '~'
jb      short loc_4991FF
jbe     short loc_499202
cmp     dl, 7Fh
jnz     short loc_4991FF
xor     dl, dl
mov     ds:byte_55A67A, dl
jmp     short loc_499202

loc_4991FF:
inc     byte ptr [eax+0Ah]

loc_499202:
mov     edx, [eax+7]
sar     edx, 18h
mov     ecx, [eax]
mov     dl, [ecx+edx]
mov     [eax+8], dl
mov     [eax+9], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, [eax+4]
mov     dl, [ecx+edx+1]
cmp     dl, 7Eh ; '~'
jb      short loc_499232
jbe     short loc_499235
cmp     dl, 7Fh
jnz     short loc_499232
mov     byte ptr [eax+0Dh], 0
jmp     short loc_499235

loc_499232:
inc     byte ptr [eax+0Dh]

loc_499235:
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     ecx, [eax+4]
mov     dl, [ecx+edx]
mov     [eax+0Bh], dl
mov     [eax+0Ch], dl
mov     dl, [eax+8]
mov     byte ptr ds:dword_5F84CB+1, dl
mov     al, [eax+0Bh]
mov     byte ptr ds:dword_5F84CB+2, al
pop     edx
pop     ecx
retn
sub_4991CF endp

db 8Bh, 0C0h
jpt_4992AD dd offset loc_4992B4 ; jump table for switch statement
dd offset loc_4992F5
dd offset loc_4992FB
dd offset loc_499342



sub_49926D proc near

; FUNCTION CHUNK AT 004991A6 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, eax
xor     ebp, ebp
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
cmp     edx, 3          ; switch 4 cases
ja      def_4992AD      ; jumptable 004992AD default case
mov     eax, edx
jmp     jpt_4992AD[eax*4] ; switch jump

loc_4992B4:             ; jumptable 004992AD case 0
mov     ch, ds:byte_55A680
cmp     ch, 19h
jnb     short loc_4992CE
mov     al, ch
add     al, ch
mov     [esi+6], al
mov     [esi+5], al
mov     [esi+4], al
jmp     short loc_4992E0

loc_4992CE:
mov     byte ptr [esi+6], 32h ; '2'
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     ebp, 1

loc_4992E0:
mov     al, ds:byte_55A680
cmp     al, 0FFh
jnb     short def_4992AD ; jumptable 004992AD default case
mov     ah, al
inc     ah
mov     ds:byte_55A680, ah
jmp     short def_4992AD ; jumptable 004992AD default case

loc_4992F5:             ; jumptable 004992AD case 1
mov     byte ptr [esi+6], 32h ; '2'
jmp     short loc_499346

loc_4992FB:             ; jumptable 004992AD case 2
mov     bl, ds:byte_55A680
cmp     bl, 19h
jnb     short loc_499319
mov     al, bl
add     al, bl
mov     ah, 32h ; '2'
sub     ah, al
mov     [esi+6], ah
mov     [esi+5], ah
mov     [esi+4], ah
jmp     short loc_49932B

loc_499319:
mov     byte ptr [esi+6], 0
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al
mov     ebp, 1

loc_49932B:
mov     bh, ds:byte_55A680
cmp     bh, 0FFh
jnb     short def_4992AD ; jumptable 004992AD default case
mov     cl, bh
inc     cl
mov     ds:byte_55A680, cl
jmp     short def_4992AD ; jumptable 004992AD default case

loc_499342:             ; jumptable 004992AD case 3
mov     byte ptr [esi+6], 30h ; '0'

loc_499346:
mov     al, [esi+6]
mov     [esi+5], al
mov     [esi+4], al

def_4992AD:             ; jumptable 004992AD default case
mov     ecx, ds:dword_77E6DC
add     ecx, 38h ; '8'
mov     ds:dword_77E6DC, ecx
mov     edi, ecx
cmp     edx, 3
jz      short loc_49936E
push    0
mov     ecx, 4Fh ; 'O'
jmp     short loc_499375

loc_49936E:
push    0
mov     ecx, 2Fh ; '/'

loc_499375:
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
mov     eax, ebp
pop     ebp
jmp     loc_4991A6
sub_49926D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_69]



sub_4993AE proc near
push    ecx
push    edx
push    esi
cmp     dword ptr [eax+10h], 0
jnz     short loc_4993E9
and     ds:byte_56F80C, 0FDh
mov     word ptr ds:dword_56F818, 82h
sub     ds:word_56F89C, 38h ; '8'
sub     ds:word_56F864, 10h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [eax+0Ch], 3

loc_4993E9:
cmp     dword ptr [eax+10h], 898h
jnz     short loc_4993F9
or      ds:byte_56F80C, 2

loc_4993F9:
cmp     byte ptr [eax+6], 0
jnz     short loc_499432
cmp     dword ptr [eax+10h], 899h
jl      short loc_499432
mov     esi, [eax+0Ch]
dec     esi
mov     [eax+0Ch], esi
jnz     short loc_499432
mov     dword ptr [eax+0Ch], 3
mov     dx, word ptr ds:dword_56F818
movsx   ecx, dx
dec     edx
mov     word ptr ds:dword_56F818, dx
cmp     ecx, 0FFFFFFF6h
jnz     short loc_499432
inc     byte ptr [eax+6]

loc_499432:
pop     esi
pop     edx
pop     ecx
retn
sub_4993AE endp




sub_499436 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52B678
mov     dword ptr [ecx+0A4h], offset unk_52B6C4
mov     eax, offset unk_52B664
call    sub_49DB4D
pop     edx
pop     ecx
pop     ebx
retn
sub_499436 endp




sub_499468 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_499478
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_499478:
pop     edx
retn
sub_499468 endp




sub_49947A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3
jb      short loc_4994A6
jbe     loc_499506
cmp     al, 5
jb      loc_499515
jbe     loc_499529
cmp     al, 0Ah
jz      loc_499555
pop     edx
pop     ecx
pop     ebx
retn

loc_4994A6:
cmp     al, 1
jb      short loc_4994AE
jbe     short loc_4994DA
jmp     short loc_4994EB

loc_4994AE:
test    al, al
jnz     loc_4995C3
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4995C3
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881

loc_4994D3:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4994DA:
call    sub_4D8E21
mov     eax, 24001Eh
call    sub_4D8E42
jmp     short loc_4994D3

loc_4994EB:
call    sub_4D8ECC
test    eax, eax
jz      loc_4995C3
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
pop     edx
pop     ecx
pop     ebx
retn

loc_499506:
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     loc_4995C3
jmp     short loc_4994D3

loc_499515:
mov     eax, 2
call    sub_49E0D7
mov     eax, ecx
call    sub_499436
inc     byte ptr [ecx+4]

loc_499529:
cmp     ds:word_6E23D6, 0
jnz     short loc_499555
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_499547
call    sub_47EBCB
test    eax, eax
jz      short loc_499555

loc_499547:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_499555:
mov     eax, ecx
call    sub_499468
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     short loc_4995C3
cmp     ds:word_6E23D6, 0
jnz     short loc_4995C3
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
and     ds:byte_77E806, 7Fh
mov     byte ptr [ecx], 0
xor     cl, cl
mov     byte ptr ds:dword_6DD9BC+1, cl
add     byte ptr ds:dword_6DD9BC, bl
mov     eax, offset sub_4378C0
call    sub_4EEDCA

loc_4995C3:
pop     edx
pop     ecx
pop     ebx
retn
sub_49947A endp




sub_4995C7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4995D9
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_4995D9:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_4995E8
mov     edx, [eax+2Ch]
inc     byte ptr [edx+0Ah]

loc_4995E8:
cmp     dword ptr [eax+10h], 15Fh
jnz     short loc_499603
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+20h], 0

loc_499603:
pop     edx
retn
sub_4995C7 endp




sub_499605 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_499624
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F0420000h
mov     dword ptr [eax+24h], 0FF380000h

locret_499624:
retn
sub_499605 endp




sub_499625 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499645
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0F0920000h
mov     dword ptr [edx+24h], 0FD120000h

loc_499645:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_499652
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_499652:
cmp     dword ptr [eax+10h], 19h
jnz     short loc_49965F
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_49965F:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_49966F
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 0

loc_49966F:
cmp     dword ptr [eax+10h], 8Ch
jnz     short loc_49967F
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_49967F:
cmp     dword ptr [eax+10h], 13Bh
jnz     short loc_49968F
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_49968F:
pop     edx
retn
sub_499625 endp




sub_499691 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4996B6
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0A8Ch
mov     dword ptr [eax+1Ch], 0EF980000h
mov     dword ptr [eax+24h], 0FCAE0000h

locret_4996B6:
retn
sub_499691 endp




sub_4996B7 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_4996D6
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_4996D6:
pop     edx
retn
sub_4996B7 endp




sub_4996D8 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49971F
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F0920000h
mov     dword ptr [eax+24h], 0FD120000h
mov     word ptr [eax+56h], 320h
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F0600000h
mov     dword ptr [eax+24h], 0FD440000h
mov     word ptr [eax+56h], 258h

loc_49971F:
pop     edx
retn
sub_4996D8 endp




sub_499721 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499733
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_499733:
cmp     dword ptr [eax+10h], 22h ; '"'
jnz     short loc_499740
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 1

loc_499740:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_49974D
mov     edx, [eax+30h]
mov     byte ptr [edx+0Dh], 0

loc_49974D:
cmp     dword ptr [eax+10h], 0Fh
jnz     short loc_49975A
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1

loc_49975A:
cmp     dword ptr [eax+10h], 9Fh
jnz     short loc_49976A
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ch], 0

loc_49976A:
pop     edx
retn
sub_499721 endp




sub_49976C proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_49977E
mov     edx, [eax+34h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_49977E:
cmp     dword ptr [eax+10h], 19h
jnz     short loc_49978B
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 1

loc_49978B:
cmp     dword ptr [eax+10h], 37h ; '7'
jnz     short loc_499798
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 0

loc_499798:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_4997AC
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_4997AC:
pop     edx
retn
sub_49976C endp




sub_4997AE proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4997D4
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0FCh], 0Ch
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Eh], 1

loc_4997D4:
cmp     dword ptr [edx+10h], 55h ; 'U'
jnz     short loc_4997E1
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ch], 0

loc_4997E1:
pop     edx
retn
sub_4997AE endp




sub_4997E3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_499802
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_499802:
pop     edx
retn
sub_4997E3 endp




sub_499804 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_499850
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0F0920000h
mov     dword ptr [edx+24h], 0FCE00000h
mov     word ptr [edx+56h], 514h
mov     edx, [eax+2Ch]
mov     dword ptr [edx+1Ch], 0F0C40000h
mov     dword ptr [edx+24h], 0FD440000h
mov     word ptr [edx+56h], 258h
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_499850:
cmp     dword ptr [eax+10h], 5
jnz     short loc_499861
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_499861:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_49986E
mov     edx, [eax+34h]
mov     byte ptr [edx+0Dh], 0

loc_49986E:
cmp     dword ptr [eax+10h], 41h ; 'A'
jnz     short loc_49987F
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_49987F:
pop     edx
retn
sub_499804 endp




sub_499881 proc near
push    ebx
push    edx
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, offset unk_52B6D4
mov     eax, offset unk_52B92C
call    sub_49DFEF
xor     edx, edx

loc_49989F:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52B8B4
call    sub_49DB4D
inc     edx
cmp     edx, 6
jl      short loc_49989F
pop     edx
pop     ebx
retn
sub_499881 endp




sub_4998BC proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_4998CC
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_4998CC:
pop     edx
retn
sub_4998BC endp

db 90h
jpt_499900 dd offset loc_499907 ; jump table for switch statement
dd offset loc_499981
dd offset loc_49998A
dd offset loc_4999A3
dd offset loc_4999AD
dd offset loc_4999D8
dd offset loc_499A43



sub_4998EB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_499900      ; jumptable 00499900 default case
and     eax, 0FFh
jmp     jpt_499900[eax*4] ; switch jump

loc_499907:             ; jumptable 00499900 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_499900      ; jumptable 00499900 default case
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
mov     ds:dword_5F888C, 0F1C00000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0FF790000h
mov     word ptr ds:dword_5F889A+2, 0F1C0h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0FF79h
mov     word ptr ds:dword_5F88A4+2, 800h
mov     eax, 250009h
call    sub_4D8E42

loc_49997A:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_499981:             ; jumptable 00499900 case 1
mov     dword ptr [ecx+0Ch], 32h ; '2'
jmp     short loc_49997A

loc_49998A:             ; jumptable 00499900 case 2
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_499900      ; jumptable 00499900 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_49997A

loc_4999A3:             ; jumptable 00499900 case 3
mov     eax, ecx
call    sub_499881
inc     byte ptr [ecx+4]

loc_4999AD:             ; jumptable 00499900 case 4
cmp     ds:word_6E23D6, 0
jnz     short loc_4999D8 ; jumptable 00499900 case 5
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4999CB
call    sub_47EBCB
test    eax, eax
jz      short loc_4999D8 ; jumptable 00499900 case 5

loc_4999CB:
