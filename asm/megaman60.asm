loc_494911:
inc     byte ptr [ecx+5]
jmp     def_4948DA      ; jumptable 004948DA default case

loc_494919:             ; jumptable 004948DA case 1
call    sub_42C353
test    eax, eax
jnz     def_4948DA      ; jumptable 004948DA default case
mov     eax, 24001Ch
call    sub_4D8E42
inc     byte ptr [ecx+0Bh]
jmp     short loc_494911

loc_494935:             ; jumptable 004948DA case 2
call    sub_4D8ECC
test    eax, eax
jz      def_4948DA      ; jumptable 004948DA default case
mov     eax, offset unk_5277A0
call    sub_49DB4D
mov     eax, offset unk_5277B4
call    sub_49DB4D
mov     word ptr ds:dword_5F88A4+2, 0C00h
mov     word ptr ds:dword_5F889A+2, 0F448h
mov     word ptr ds:dword_5F889E+2, 0F600h
mov     ds:dword_5F888C, 0F4480000h
mov     ds:dword_5F8894, 0F6000000h
mov     eax, 1Bh
call    sub_4EE7A4
mov     eax, 1Ch
call    sub_4EE7A4
mov     eax, 1Dh
call    sub_4EE7A4
mov     eax, 25h ; '%'
call    sub_4EE7A4
mov     eax, 26h ; '&'
call    sub_4EE7A4
mov     eax, 27h ; '''
call    sub_4EE7A4
xor     eax, eax
call    sub_494CAD
mov     eax, 6
call    sub_49E0D7
jmp     loc_494911

loc_4949D7:             ; jumptable 004948DA case 3
cmp     ds:word_6E23D6, 0
jnz     short def_4948DA ; jumptable 004948DA default case
and     byte ptr [ecx+0Ah], 1
mov     dword ptr [ecx+10h], 0
jmp     loc_494911

loc_4949F1:             ; jumptable 004948DA case 4
cmp     dword ptr [ecx+10h], 8Ch
jnz     short def_4948DA ; jumptable 004948DA default case
call    sub_49DF64
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
mov     byte ptr [ecx+5], 0

def_4948DA:             ; jumptable 004948DA default case
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_494A40
or      byte ptr [ecx+0Ah], 1

loc_494A40:
pop     edx
pop     ecx
retn



sub_494A43 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
cmp     ecx, 1
jnz     short loc_494A72
mov     eax, ecx
call    sub_494CAD
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 5
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 5
mov     eax, [edx+30h]
mov     byte ptr [eax+0Ah], 0

loc_494A72:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_5280E2[eax*2]
sar     eax, 10h
shl     eax, 11h
mov     ds:dword_77E698, eax
pop     edx
pop     ecx
retn
sub_494A43 endp




sub_494A96 proc near
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_494ABA
mov     edx, 80h
mov     eax, 60h ; '`'
call    sub_4DC979
mov     eax, 2
call    sub_494CAD

loc_494ABA:
cmp     dword ptr [ecx+10h], 46h ; 'F'
jnz     short loc_494ACC
mov     byte ptr [ecx+6], 0
xor     esi, esi
mov     ds:dword_77E698, esi

loc_494ACC:
cmp     byte ptr [ecx+6], 0
jz      short loc_494AF7
mov     cx, ds:word_77EAB6
xor     ch, ch
and     cl, 3
and     ecx, 0FFFFh
mov     ecx, ds:dword_5280E2[ecx*2]
sar     ecx, 10h
shl     ecx, 0Fh
mov     ds:dword_77E698, ecx

loc_494AF7:
pop     esi
pop     edx
pop     ecx
retn
sub_494A96 endp




sub_494AFB proc near

var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_22= word ptr -22h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 18h
mov     ecx, 6
mov     edi, esp
mov     esi, offset unk_493CDA
rep movsd
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 19h
mov     ds:byte_77EA5F, dl
xor     bh, bh
mov     byte ptr ds:dword_77EA5A+3, bh
mov     cl, 0FFh
mov     ds:byte_77EA61, cl
mov     ds:byte_77EA60, cl
mov     dx, [esp+eax*8+28h+var_28]
mov     word ptr ds:dword_77EA4E+2, dx
mov     dx, [esp+eax*8+28h+var_26]
mov     word ptr ds:dword_77EA52, dx
mov     dx, [esp+eax*8+28h+var_24]
mov     word ptr ds:dword_77EA52+2, dx
mov     ax, [esp+eax*8+28h+var_22]
mov     word ptr ds:dword_77EA5A, ax
add     esp, 18h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_494AFB endp




sub_494B70 proc near
push    ebx
push    edx
xor     dl, dl
mov     ds:byte_55A60E, dl
mov     ds:byte_55A60D, dl
xor     bl, bl
mov     ds:byte_55A60C, dl
mov     edx, ds:off_5281E8[eax*4]
mov     ds:dword_55A614, edx
xor     bh, bh
mov     ds:byte_55A611, bh
mov     ds:byte_55A610, bh
mov     ds:byte_55A60F, bl
mov     eax, ds:off_528250[eax*4]
mov     ds:dword_55A618, eax

loc_494BB5:
pop     edx
pop     ebx
retn
sub_494B70 endp




sub_494BB8 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_55A60C
mov     ebx, dword ptr ds:unk_55A60B
sar     ebx, 18h
mov     ecx, ds:dword_55A614
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_494BEB
jbe     short loc_494BEE
cmp     bl, 7Fh
jnz     short loc_494BEB
xor     bl, bl
mov     ds:byte_55A60E, bl
jmp     short loc_494BEE

loc_494BEB:
inc     byte ptr [eax+2]

loc_494BEE:
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
jb      short loc_494C1C
jbe     short loc_494C1F
cmp     bl, 7Fh
jnz     short loc_494C1C
mov     byte ptr [eax+5], 0
jmp     short loc_494C1F

loc_494C1C:
inc     byte ptr [eax+5]

loc_494C1F:
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
sub_494BB8 endp




sub_494C46 proc near
push    edx
call    sub_4DDF54
test    eax, eax
jz      short loc_494CAB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 41h ; 'A'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     word ptr [eax+14h], 0FC18h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0F664h
mov     word ptr [eax+56h], 400h
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
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0

loc_494CAB:
pop     edx
retn
sub_494C46 endp




sub_494CAD proc near
push    ebx
push    edx
mov     bl, al
xor     edx, edx
jmp     short loc_494CBF

loc_494CB5:
inc     edx
cmp     edx, 2
jge     loc_494BB5

loc_494CBF:
call    sub_4DE13B
test    eax, eax
jz      short loc_494CB5
mov     ds:dword_55A61C[edx*4], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Fh
mov     [eax+3], bl
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 1
mov     [eax+9], dl
mov     byte ptr [eax+0Ah], 0
jmp     short loc_494CB5
sub_494CAD endp




sub_494CF1 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A63A, dl
mov     ds:byte_55A638, dl
mov     ds:byte_55A639, 0FFh
mov     eax, ds:off_5288BE[eax*4]
mov     ds:dword_55A630, eax
pop     edx
retn
sub_494CF1 endp




sub_494D15 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A63D, dl
mov     ds:byte_55A63B, dl
mov     ds:byte_55A63C, 0FFh
mov     eax, ds:off_5289A8[eax*4]
mov     ds:dword_55A634, eax
pop     edx
retn
sub_494D15 endp




sub_494D39 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset unk_55A62C
mov     ebx, ds:dword_55A634+3
sar     ebx, 18h
mov     ecx, ds:dword_55A630
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_494D6F
jbe     short loc_494D72
cmp     bl, 7Fh
jnz     short loc_494D6F
xor     bl, bl
mov     ds:byte_55A63A, bl
jmp     short loc_494D72

loc_494D6F:
inc     byte ptr [eax+0Eh]

loc_494D72:
mov     ecx, [eax+0Bh]
sar     ecx, 18h
mov     ebx, [eax+4]
mov     bl, [ecx+ebx]
mov     [eax+0Ch], bl
mov     [eax+0Dh], bl
mov     ebx, [eax+0Eh]
sar     ebx, 18h
mov     ecx, [eax+8]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_494DA3
jbe     short loc_494DA6
cmp     bl, 7Fh
jnz     short loc_494DA3
mov     byte ptr [eax+11h], 0
jmp     short loc_494DA6

loc_494DA3:
inc     byte ptr [eax+11h]

loc_494DA6:
mov     ecx, [eax+0Eh]
sar     ecx, 18h
mov     ebx, [eax+8]
mov     bl, [ecx+ebx]
mov     [eax+0Fh], bl
mov     [eax+10h], bl
mov     bl, [eax+0Ch]
mov     [edx+168h], bl
mov     al, [eax+0Fh]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_494D39 endp




sub_494DCE proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 7
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_494DCE endp




sub_494E1A proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_494E3F
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0
mov     edx, [eax+2Ch]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 0

loc_494E3F:
cmp     dword ptr [eax+10h], 28h ; '('
jnz     short loc_494E50
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E50:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_494E61
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E61:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_494E72
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E72:
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_494E83
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E83:
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_494E94
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494E94:
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_494EA5
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EA5:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_494EB6
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EB6:
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_494EC7
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EC7:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_494ED8
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494ED8:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_494EEC
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494EEC:
cmp     dword ptr [eax+10h], 8Ch
jnz     short loc_494F00
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F00:
cmp     dword ptr [eax+10h], 96h
jnz     short loc_494F14
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F14:
cmp     dword ptr [eax+10h], 0A0h
jnz     short loc_494F28
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F28:
cmp     dword ptr [eax+10h], 0B4h
jnz     short loc_494F3C
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F3C:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_494F50
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F50:
cmp     dword ptr [eax+10h], 0D2h
jnz     short loc_494F64
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F64:
cmp     dword ptr [eax+10h], 0DCh
jnz     short loc_494F78
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F78:
cmp     dword ptr [eax+10h], 0E6h
jnz     short loc_494F8C
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494F8C:
cmp     dword ptr [eax+10h], 0F0h
jnz     short loc_494FA0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_494FA0:
cmp     dword ptr [eax+10h], 0FAh
jnz     short loc_494FB4
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_494FB4:
pop     edx
retn
sub_494E1A endp




sub_494FB6 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_494FFB
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     eax, [ecx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     ds:dword_5F888C, 1040000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B

loc_494FFB:
cmp     dword ptr [ecx+10h], 0Ah
jnz     short loc_49500C
mov     eax, [ecx+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_49500C:
cmp     dword ptr [ecx+10h], 1Eh
jnz     short loc_49501D
mov     eax, [ecx+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_49501D:
pop     edx
pop     ecx
retn
sub_494FB6 endp




sub_495020 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495037
xor     eax, eax
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_495037:
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_49504B
xor     eax, eax
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_49504B:
call    sub_494D39
pop     edx
retn
sub_495020 endp




sub_495052 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_495074
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     ds:byte_5F88AC, 81h

loc_495074:
cmp     dword ptr [ecx+10h], 0Bh
jg      short loc_495095
sub     dword ptr [ebx+528h], 30000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B

loc_495095:
cmp     dword ptr [ecx+10h], 0Ch
jnz     short loc_4950AC
mov     eax, 1
call    sub_494CF1
mov     byte ptr [ebx+548h], 82h

loc_4950AC:
call    sub_494D39
pop     edx
pop     ecx
pop     ebx
retn
sub_495052 endp




sub_4950B5 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4950C6
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

locret_4950C6:
retn
sub_4950B5 endp




sub_4950C7 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_4950E0
mov     eax, 2
call    sub_494CF1

loc_4950E0:
cmp     dword ptr [edx+10h], 19h
jnz     short loc_4950F7
mov     eax, 2
call    sub_494D15
mov     byte ptr [ecx+548h], 83h

loc_4950F7:
call    sub_494D39
pop     edx
pop     ecx
retn
sub_4950C7 endp




sub_4950FF proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_495119
mov     eax, 1
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_495119:
cmp     dword ptr [edx+10h], 19h
jnz     short loc_49512A
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_49512A:
cmp     dword ptr [edx+10h], 0AAh
jnz     short loc_49513E
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 2

loc_49513E:
cmp     dword ptr [edx+10h], 0B6h
jnz     short loc_495158
mov     eax, [edx+28h]
mov     byte ptr [eax+10Ch], 14h
mov     byte ptr [eax+118h], 15h

loc_495158:
cmp     dword ptr [edx+10h], 0DCh
jnz     short loc_495172
mov     eax, [edx+28h]
mov     byte ptr [eax+10Ch], 5
mov     byte ptr [eax+118h], 8

loc_495172:
cmp     dword ptr [edx+10h], 15Eh
jnz     short loc_495186
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 3

loc_495186:
cmp     dword ptr [edx+10h], 1B8h
jnz     loc_49504B
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 4
jmp     loc_49504B
sub_4950FF endp




sub_4951A3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4951C5
mov     eax, [eax+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

loc_4951C5:
cmp     dword ptr [edx+10h], 5
jnz     short loc_4951D9
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ah], 2
mov     eax, [edx+2Ch]
mov     byte ptr [eax+0Ah], 2

loc_4951D9:
pop     edx
retn
sub_4951A3 endp




sub_4951DB proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4951ED
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0

loc_4951ED:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_4951FA
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ah], 2

loc_4951FA:
pop     edx
retn
sub_4951DB endp




sub_4951FC proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_495227
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Ch
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
or      byte ptr [edx], 2
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_495227:
cmp     dword ptr [eax+10h], 8
jnz     short loc_49523E
mov     edx, [eax+28h]
mov     byte ptr [edx+10Ch], 14h
mov     byte ptr [edx+118h], 15h

loc_49523E:
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_49524F
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Dh
mov     byte ptr [edx+0Ah], 0

loc_49524F:
cmp     dword ptr [eax+10h], 55h ; 'U'
jnz     short loc_495267
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 2

loc_495267:
cmp     dword ptr [eax+10h], 58h ; 'X'
jnz     short loc_49527E
mov     edx, [eax+28h]
mov     byte ptr [edx+10Ch], 5
mov     byte ptr [edx+118h], 8

loc_49527E:
cmp     dword ptr [eax+10h], 62h ; 'b'
jnz     short loc_49528F
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_49528F:
cmp     dword ptr [eax+10h], 6Dh ; 'm'
jnz     short loc_4952A0
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0Eh
mov     byte ptr [edx+0Ah], 0

loc_4952A0:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_4952B4
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0

loc_4952B4:
cmp     dword ptr [eax+10h], 98h
jnz     short loc_4952C8
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_4952C8:
pop     edx
retn
sub_4951FC endp




sub_4952CA proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_4952E0
mov     ds:byte_5F88AC, 80h

loc_4952E0:
cmp     dword ptr [edx+10h], 1
jnz     short loc_4952F7
mov     eax, 3
call    sub_494CF1
xor     eax, eax
call    sub_494D15

loc_4952F7:
cmp     dword ptr [edx+10h], 0Ah
jnz     short loc_495307
mov     eax, 4
call    sub_494CF1

loc_495307:
cmp     dword ptr [edx+10h], 28h ; '('
jnz     short loc_49531E
mov     eax, 4
call    sub_494D15
mov     byte ptr [ecx+548h], 84h

loc_49531E:
cmp     dword ptr [edx+10h], 190h
jnz     loc_4950F7
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0Fh
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
jmp     loc_4950F7
sub_4952CA endp




sub_495351 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49537B
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0Fh
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+2Ch]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+30h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_49537B:
pop     edx
retn
sub_495351 endp




sub_49537D proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_49538E
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

locret_49538E:
retn
sub_49537D endp




sub_49538F proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4953A0
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 10h
mov     byte ptr [eax+0Ah], 0

locret_4953A0:
retn
sub_49538F endp




sub_4953A1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4953B2
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0

locret_4953B2:
retn
sub_4953A1 endp




sub_4953B3 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4953D0
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 11h
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_4953D0:
cmp     dword ptr [eax+10h], 6Eh ; 'n'
jnz     short loc_4953DD
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 2

loc_4953DD:
pop     edx
retn
sub_4953B3 endp




sub_4953DF proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_4953F0
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

locret_4953F0:
retn
sub_4953DF endp




sub_4953F1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_495419
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 12h
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+2Ch]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_495419:
cmp     dword ptr [eax+10h], 0A0h
jnz     short loc_495430
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ah], 3

loc_495430:
cmp     dword ptr [eax+10h], 0B9h
jnz     short loc_495447
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 2
mov     edx, [eax+2Ch]
mov     byte ptr [edx+0Ah], 1

loc_495447:
cmp     dword ptr [eax+10h], 0C8h
jnz     short loc_495457
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 2

loc_495457:
cmp     dword ptr [eax+10h], 0E6h
jnz     short loc_49546B
mov     eax, [eax+30h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0

loc_49546B:
pop     edx
retn
sub_4953F1 endp




sub_49546D proc near
push    edx
mov     ds:dword_77E6B4, offset unk_5282F4
mov     dword ptr [eax+0A4h], offset unk_5289C0
xor     edx, edx
jmp     short loc_49548C

loc_495486:
inc     edx
cmp     edx, 9
jge     short loc_4954A5

loc_49548C:
call    sub_4DE13B
test    eax, eax
jz      short loc_495486
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Bh
mov     byte ptr [eax+3], 0
mov     [eax+0Ch], dl
jmp     short loc_495486

loc_4954A5:
xor     edx, edx
jmp     short loc_4954AF

loc_4954A9:
inc     edx
cmp     edx, 0Ch
jge     short loc_4954C8

loc_4954AF:
call    sub_4DE13B
test    eax, eax
jz      short loc_4954A9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Bh
mov     byte ptr [eax+3], 1
mov     [eax+0Ch], dl
jmp     short loc_4954A9

loc_4954C8:
xor     edx, edx

loc_4954CA:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_5282B8
call    sub_49DB4D
inc     edx
cmp     edx, 3
jl      short loc_4954CA
pop     edx
retn
sub_49546D endp




sub_4954E6 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_4954F6
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_4954F6:
pop     edx
retn
sub_4954E6 endp

db 90h
jpt_495541 dd offset loc_495548 ; jump table for switch statement
dd offset loc_495624
dd offset loc_495637
dd offset loc_495650
dd offset loc_49566C
dd offset loc_49567B
dd offset loc_49568F
dd offset loc_495699
dd offset def_495541
dd offset def_495541
dd offset loc_4956C5



sub_495525 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 0Ah         ; switch 11 cases
ja      def_495541      ; jumptable 00495541 default case, cases 8,9
and     eax, 0FFh
jmp     jpt_495541[eax*4] ; switch jump

loc_495548:             ; jumptable 00495541 case 0
cmp     ds:byte_77EAB8, 0
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     eax, ebx
call    sub_4B55D5
test    eax, eax
jz      def_495541      ; jumptable 00495541 default case, cases 8,9
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 2300000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 17C0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     ds:word_5F88A8, di
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:byte_5F88AC, 30h ; '0'
mov     al, ds:byte_5F84D4
mov     ds:byte_55A641, al
mov     al, ds:byte_5F84D5
mov     ds:byte_55A640, al
xor     ah, ah
mov     ds:byte_5F84D5, ah
mov     ds:byte_5F84D4, ah
mov     eax, 0Fh
call    sub_47EEAE
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4A0E35

loc_49561C:
inc     byte ptr [ecx+4]
jmp     def_495541      ; jumptable 00495541 default case, cases 8,9

loc_495624:             ; jumptable 00495541 case 1
mov     ebx, 1
mov     edx, ebx
mov     eax, 91h
call    sub_4DBCF3
jmp     short loc_49561C

loc_495637:             ; jumptable 00495541 case 2
call    sub_42C353
test    eax, eax
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     eax, 250014h
call    sub_4D8E42
jmp     short loc_49561C

loc_495650:             ; jumptable 00495541 case 3
call    sub_4D8ECC
test    eax, eax
jz      def_495541      ; jumptable 00495541 default case, cases 8,9
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 5
jmp     def_495541      ; jumptable 00495541 default case, cases 8,9

loc_49566C:             ; jumptable 00495541 case 4
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
jmp     short loc_49561C

loc_49567B:             ; jumptable 00495541 case 5
mov     eax, 5
call    sub_49E0D7
or      ds:byte_5F8364, 2
inc     byte ptr [ecx+4]

loc_49568F:             ; jumptable 00495541 case 6
mov     eax, ecx
call    sub_49546D
inc     byte ptr [ecx+4]

loc_495699:             ; jumptable 00495541 case 7
cmp     ds:word_6E23D6, 0
jnz     short loc_4956C5 ; jumptable 00495541 case 10
mov     edx, [ecx+0A4h]
cmp     byte ptr [edx], 0FFh
jz      short loc_4956B7
call    sub_47EBCB
test    eax, eax
jz      short loc_4956C5 ; jumptable 00495541 case 10

loc_4956B7:
mov     eax, 0Bh
call    sub_49E0D7
mov     byte ptr [ecx+4], 0Ah

loc_4956C5:             ; jumptable 00495541 case 10
mov     eax, ecx
call    sub_4954E6
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [ecx+4], 0Ah
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     si, ds:word_6E23D6
test    si, si
jnz     def_495541      ; jumptable 00495541 default case, cases 8,9
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 19h
mov     ds:byte_77EA5F, 3
mov     word ptr ds:dword_77EA4E+2, si
mov     word ptr ds:dword_77EA52, si
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     [ecx], ah
mov     al, ds:byte_55A641
mov     [ebx+170h], al
mov     al, ds:byte_55A640
mov     [ebx+171h], al
mov     dword ptr [ebx+528h], 1040000h
mov     dword ptr [ebx+52Ch], 0FFFF0000h
mov     dword ptr [ebx+530h], 17C0000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     [ebx+540h], si
mov     [ebx+544h], si
mov     [ebx+542h], si
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_495541:             ; jumptable 00495541 default case, cases 8,9
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_495525 endp




sub_4957B7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_4957BD[edx*4]
pop     edx
retn
sub_4957B7 endp




sub_4957C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 1
jb      short loc_4957E7
jbe     short loc_49584E
cmp     al, 2
jz      loc_495862
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4957E7:
test    al, al
jnz     loc_495916
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_495916
mov     edx, 80h
mov     eax, 15Eh
call    sub_4DC979
mov     byte ptr [esi+0Ah], 80h
mov     eax, offset unk_529814
call    sub_42C443
mov     ds:word_55A644, ax
cwde
mov     ecx, eax
shl     ecx, 2
sub     ecx, eax
mov     ax, word ptr ds:dword_6E40AE[ecx*4]
mov     ds:word_55A646, ax
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
inc     byte ptr [esi+5]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49584E:
mov     ebx, 1
mov     edx, ebx
mov     eax, 98h
call    sub_4DBCF3
inc     byte ptr [esi+5]

loc_495862:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_528C58
mov     dword ptr [esi+0A4h], offset unk_52968C
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 0
mov     dword ptr [ecx+528h], 0
mov     dword ptr [ecx+52Ch], 0FFFF0000h
mov     dword ptr [ecx+530h], 0
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 800h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     eax, offset unk_528A64
call    sub_49DB4D
mov     byte ptr [esi+4], 1
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+6], 0
mov     byte ptr [esi+7], 0
call    sub_49DBD1
call    sub_49DECF

loc_495916:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4957C6 endp

jpt_495940 dd offset loc_495947 ; jump table for switch statement
dd offset loc_495954
dd offset loc_495947
dd offset loc_495980



sub_49592B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_495940      ; jumptable 00495940 default case
and     eax, 0FFh
jmp     jpt_495940[eax*4] ; switch jump

loc_495947:             ; jumptable 00495940 cases 0,2
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_4959B5

loc_495954:             ; jumptable 00495940 case 1
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     ch, [edx+0Ah]
test    ch, 80h
jnz     short loc_4959B5
test    ch, 1
jz      short loc_4959B5
mov     eax, 8
call    sub_49E0D7
mov     byte ptr [edx+4], 2
mov     byte ptr [edx+5], 0
jmp     short loc_4959B5

loc_495980:             ; jumptable 00495940 case 3
cmp     byte ptr [edx+8], 0FFh
jz      short loc_4959AE
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+0Ah]
test    bh, 80h
jnz     short loc_4959B5
test    bh, 1
jz      short loc_4959B5
mov     eax, 8
call    sub_49E0D7
mov     byte ptr [edx+4], 2
jmp     short loc_4959B1

loc_4959AE:
inc     byte ptr [edx+4]

loc_4959B1:
mov     byte ptr [edx+5], 0

loc_4959B5:
call    sub_49DBD1

def_495940:             ; jumptable 00495940 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_4959C7
or      byte ptr [edx+0Ah], 1

loc_4959C7:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_49592B endp




sub_4959D0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_4959EF
cmp     al, 1
jz      loc_495AEA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4959EF:
cmp     ds:word_6E23D6, 0
jnz     loc_495B47
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 800h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 8000000h
xor     eax, eax
mov     ds:word_5F88A8, ax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
xor     ah, ah
mov     ds:byte_5F88AC, ah
xor     dl, al
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, ah
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
call    sub_4D8EB1
test    byte ptr [ecx+0Ah], 1
jz      short loc_495ADB
mov     edx, dword ptr ds:unk_55A642
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     dx, ds:word_55A646
mov     word ptr ds:dword_6E40AE[eax*4], dx
mov     eax, dword ptr ds:unk_55A642
sar     eax, 10h
mov     edx, 31500h
call    sub_4A7AE1

loc_495ADB:
mov     eax, ebx
call    sub_4B565A
inc     byte ptr [ecx+5]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_495AEA:
mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, 1Ah
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     esi, 800h
mov     word ptr ds:dword_77EA52+2, si
mov     word ptr ds:dword_77EA5A, si
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, al
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000002Dh
call    sub_4D89E4
mov     byte ptr [ecx], 0

loc_495B47:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4959D0 endp




sub_495B4C proc near
push    edx
mov     edx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_495B5E
jbe     short loc_495B70
cmp     al, 2
jz      short loc_495B88
pop     edx
retn

loc_495B5E:
test    al, al
jnz     short loc_495BA2
call    sub_42C353
test    eax, eax
jnz     short loc_495BA2
inc     byte ptr [edx+6]
pop     edx
retn

loc_495B70:
cmp     dword ptr [edx+10h], 96h
jl      short loc_495BA2
mov     eax, 240017h
call    sub_4D8E42
inc     byte ptr [edx+6]
pop     edx
retn

loc_495B88:
call    sub_4D8ECC
test    eax, eax
jz      short loc_495BA2
and     byte ptr [edx+0Ah], 7Fh
mov     byte ptr [edx+5], 1
mov     byte ptr [edx+6], 0
call    sub_49DF64

loc_495BA2:
pop     edx

locret_495BA3:
retn
sub_495B4C endp




sub_495BA4 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_495BDE
mov     eax, dword ptr ds:unk_55A642
sar     eax, 10h
mov     edx, 70000h
call    sub_4A7AE1
mov     dl, 1

loc_495BC0:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528A64
call    sub_49DB4D
inc     dl
cmp     dl, 0Ah
jle     short loc_495BC0

loc_495BDE:
pop     edx
pop     ecx
retn
sub_495BA4 endp




sub_495BE1 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_495BEE
and     ds:byte_5F8364, 0FDh

locret_495BEE:
retn
sub_495BE1 endp




sub_495BEF proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495C47
xor     dl, dl
jmp     short loc_495C04

loc_495BFD:
inc     dl
cmp     dl, 20h ; ' '
jge     short loc_495C21

loc_495C04:
call    sub_4DE13B
test    eax, eax
jz      short loc_495BFD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     [eax+0Dh], dl
jmp     short loc_495BFD

loc_495C21:
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     dl, 0Bh

loc_495C29:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528A64
call    sub_49DB4D
inc     dl
cmp     dl, 0Dh
jle     short loc_495C29

loc_495C47:
pop     edx
pop     ecx
retn
sub_495BEF endp




sub_495C4A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short def_495CCF ; jumptable 00495CCF default case, case 3
mov     dl, 4

loc_495C56:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 9
jle     short loc_495C56

def_495CCF:             ; jumptable 00495CCF default case, case 3
pop     edx
pop     ecx

locret_495C69:
retn
sub_495C4A endp

db 90h
jpt_495CCF dd offset loc_495CD6 ; jump table for switch statement
dd offset loc_495CE7
dd offset loc_495D2B
dd offset def_495CCF

loc_495C7B:
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_495CC4
mov     eax, [eax+50h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FF40h
mov     [eax+1Ch], edx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FF400000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 0
mov     byte ptr [ecx+6], 0

loc_495CC4:
mov     al, [ecx+6]
cmp     al, 3           ; switch 4 cases
ja      short def_495CCF ; jumptable 00495CCF default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_495CCF[edx*4] ; switch jump

loc_495CD6:             ; jumptable 00495CCF case 0
cmp     dword ptr [ecx+10h], 96h
jnz     short def_495CCF ; jumptable 00495CCF default case, case 3
inc     al
mov     [ecx+6], al
pop     edx
pop     ecx
retn

loc_495CE7:             ; jumptable 00495CCF case 1
mov     edx, dword ptr ds:unk_55A642
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     word ptr ds:dword_6E40AE[eax*4], 4
mov     eax, [ecx+28h]
add     word ptr [eax+4Ah], 4
mov     eax, [ecx+2Ch]
add     word ptr [eax+4Ah], 4
mov     eax, [ecx+4Ch]
add     word ptr [eax+4Ah], 4
cmp     dword ptr [ecx+10h], 116h
jnz     def_495CCF      ; jumptable 00495CCF default case, case 3

loc_495D25:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
retn

loc_495D2B:             ; jumptable 00495CCF case 2
mov     eax, [ecx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+4Ch]
and     byte ptr [eax], 0FDh
mov     edx, dword ptr ds:unk_55A642
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     dx, ds:word_55A646
mov     word ptr ds:dword_6E40AE[eax*4], dx
mov     eax, dword ptr ds:unk_55A642
sar     eax, 10h
mov     edx, 31500h
call    sub_4A7AE1
jmp     short loc_495D25



sub_495D70 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_495DBA
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 800h
mov     byte ptr [edx+6], 0

loc_495DBA:
pop     edx
pop     ecx
pop     ebx

locret_495DBD:
retn
sub_495D70 endp




sub_495DBE proc near
push    ecx
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_495E21
mov     eax, [eax+50h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 400h
mov     [eax+1Ch], edx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 4000000h
mov     word ptr [eax+58h], 0
mov     cx, [eax+58h]
mov     [eax+54h], cx
mov     word ptr [eax+56h], 0
mov     dl, 0Eh

loc_495E03:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528A64
call    sub_49DB4D
inc     dl
cmp     dl, 11h
jle     short loc_495E03

loc_495E21:
pop     edx
pop     ecx

locret_495E23:
retn
sub_495DBE endp




sub_495E24 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_495EA8
xor     bl, bl
jmp     short loc_495E3E

loc_495E37:
inc     bl
cmp     bl, 4
jnb     short loc_495EA8

loc_495E3E:
xor     edx, edx
mov     dl, bl
mov     edx, [ecx+edx*4+5Ch]
call    sub_4DE13B
test    eax, eax
jz      short loc_495E64
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 3
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     byte ptr [eax+0Dh], 0

loc_495E64:
call    sub_4DE13B
test    eax, eax
jz      short loc_495E85
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 0

loc_495E85:
call    sub_4DE13B
test    eax, eax
jz      short loc_495E37
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 1
jmp     short loc_495E37

loc_495EA8:
cmp     dword ptr [ecx+10h], 5
jl      short loc_495EB7
xor     edx, edx

loc_495EB0:
mov     eax, ecx
call    sub_4963E5

loc_495EB7:
pop     edx
pop     ecx
pop     ebx
retn
sub_495E24 endp




sub_495EBB proc near
push    edx
cmp     dword ptr [eax+10h], 5
jl      short loc_495EC9
xor     edx, edx

loc_495EC4:
call    sub_4963E5

loc_495EC9:
pop     edx
retn
sub_495EBB endp




sub_495ECB proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495EF6
call    sub_4DE13B
test    eax, eax
jz      short loc_495EF6
mov     edx, [ecx+24h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 2
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 0

loc_495EF6:
xor     edx, edx
mov     eax, ecx
call    sub_4963E5
pop     edx
pop     ecx
retn
sub_495ECB endp




sub_495F02 proc near
push    edx
mov     edx, 1
jmp     short loc_495EC4
sub_495F02 endp




sub_495F0A proc near
push    edx
mov     edx, 2
jmp     short loc_495EC4
sub_495F0A endp




sub_495F12 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495EF6
call    sub_4DE13B
test    eax, eax
jz      short loc_495EF6
mov     edx, [ecx+24h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 2
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 1
jmp     short loc_495EF6
sub_495F12 endp




sub_495F3F proc near
push    edx
mov     eax, [eax+50h]
add     word ptr [eax+18h], 3
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
pop     edx
retn
sub_495F3F endp

db 90h
jpt_495F8A dd offset loc_495F91 ; jump table for switch statement
dd offset loc_495FB0
dd offset loc_495FC7
dd offset loc_495FD2
dd offset loc_495FE4



sub_495F6B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_495F7A
mov     byte ptr [eax+6], 0

loc_495F7A:
mov     al, [ecx+6]
cmp     al, 4           ; switch 5 cases
ja      def_495F8A      ; jumptable 00495F8A default case
and     eax, 0FFh
jmp     jpt_495F8A[eax*4] ; switch jump

loc_495F91:             ; jumptable 00495F8A case 0
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
call    sub_4D8EB1
or      byte ptr [ecx+0Ah], 80h

loc_495FA9:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_495FB0:             ; jumptable 00495F8A case 1
mov     ebx, 1
mov     edx, ebx
mov     eax, 99h
call    sub_4DBCF3
mov     byte ptr [ecx+5], 2
jmp     short loc_495FA9

loc_495FC7:             ; jumptable 00495F8A case 2
call    sub_42C353
test    eax, eax
jnz     short def_495F8A ; jumptable 00495F8A default case
jmp     short loc_495FA9

loc_495FD2:             ; jumptable 00495F8A case 3
cmp     dword ptr [ecx+10h], 78h ; 'x'
jl      short def_495F8A ; jumptable 00495F8A default case
mov     eax, 240018h
call    sub_4D8E42
jmp     short loc_495FA9

loc_495FE4:             ; jumptable 00495F8A case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_495F8A ; jumptable 00495F8A default case
and     byte ptr [ecx+0Ah], 7Fh
mov     byte ptr [ecx+5], 3
mov     byte ptr [ecx+6], 0
call    sub_49DF64

def_495F8A:             ; jumptable 00495F8A default case
pop     edx
pop     ecx
pop     ebx
retn
sub_495F6B endp




sub_496002 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 1
jnz     short loc_49602A
xor     dl, dl

loc_49600C:
movsx   ecx, dl
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_528BCC
call    sub_49DB4D
inc     dl
cmp     dl, 6
jle     short loc_49600C

loc_49602A:
pop     edx
pop     ecx

locret_49602C:
retn
sub_496002 endp




sub_49602D proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4960B3
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0FE16h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0F664h
mov     dword ptr [eax+1Ch], 0FE160000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0F6640000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 9C8h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 0FE62h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0F6B0h
mov     dword ptr [eax+1Ch], 0FE620000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0F6B00000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 0

loc_4960B3:
pop     edx
pop     ebx
retn
sub_49602D endp




sub_4960B6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_4961B6
xor     bl, bl
jmp     short loc_4960D0

loc_4960C9:
inc     bl
cmp     bl, 4
jnb     short loc_49613A

loc_4960D0:
xor     edx, edx
mov     dl, bl
mov     edx, [ecx+edx*4+30h]
call    sub_4DE13B
test    eax, eax
jz      short loc_4960F6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 3
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     byte ptr [eax+0Dh], 0

loc_4960F6:
call    sub_4DE13B
test    eax, eax
jz      short loc_496117
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     bh, [edx+1]
mov     [eax+0Ch], bh
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 0

loc_496117:
call    sub_4DE13B
test    eax, eax
jz      short loc_4960C9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ch
mov     byte ptr [eax+3], 4
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     [eax+0Dh], bl
mov     byte ptr [eax+0Eh], 1
jmp     short loc_4960C9

loc_49613A:
mov     eax, [ecx+28h]
mov     word ptr [eax+14h], 227h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FEA6h
mov     dword ptr [eax+1Ch], 2270000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FEA60000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 4AAh
mov     eax, [ecx+2Ch]
mov     word ptr [eax+14h], 182h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FD00h
mov     dword ptr [eax+1Ch], 1820000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FD000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 400h

loc_4961B6:
mov     edx, 1
jmp     loc_495EB0
sub_4960B6 endp




sub_4961C0 proc near
push    edx
cmp     dword ptr [eax+10h], 55h ; 'U'
jge     short loc_4961D1
mov     edx, 1
call    sub_4963E5

loc_4961D1:
pop     edx
retn
sub_4961C0 endp




sub_4961D3 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_496259
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 300h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FF00h
mov     dword ptr [eax+1Ch], 3000000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FF000000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 300h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 200h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FD40h
mov     dword ptr [eax+1Ch], 2000000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FD400000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 500h

loc_496259:
pop     edx
pop     ebx
retn
sub_4961D3 endp




sub_49625C proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_4962F9
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0FF40h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FEC0h
mov     dword ptr [eax+1Ch], 0FF400000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FEC00000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 0E00h
mov     eax, [ecx+2Ch]
mov     word ptr [eax+14h], 3Ch ; '<'
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     dword ptr [eax+1Ch], 3C0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h
mov     dl, 3

loc_4962E8:
movsx   eax, dl
mov     eax, [ecx+eax*4+24h]
and     byte ptr [eax], 0FDh
inc     dl
cmp     dl, 6
jle     short loc_4962E8

loc_4962F9:
pop     edx
pop     ecx

locret_4962FB:
retn
sub_49625C endp




sub_4962FC proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_49633E
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 200h
mov     [eax+1Ch], edx
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 2000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h

loc_49633E:
pop     edx
retn
sub_4962FC endp




sub_496340 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4963C6
mov     eax, [eax+28h]
mov     word ptr [eax+14h], 0FFE1h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     dword ptr [eax+1Ch], 0FFE10000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     bx, [eax+58h]
mov     [eax+54h], bx
mov     word ptr [eax+56h], 800h
mov     eax, [edx+2Ch]
mov     word ptr [eax+14h], 1Fh
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FE00h
mov     dword ptr [eax+1Ch], 1F0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 0FE000000h
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 800h

loc_4963C6:
pop     edx
pop     ebx

locret_4963C8:
retn
sub_496340 endp




sub_4963C9 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0DCh
jnz     short loc_4963E3
mov     eax, 0Ah
call    sub_49E0D7
or      byte ptr [edx+0Ah], 80h

loc_4963E3:
pop     edx
retn
sub_4963C9 endp




sub_4963E5 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, edx
shl     esi, 3
sub     esi, edx
call    rand_
and     eax, 7
lea     edx, [esi+eax]
mov     dl, ds:byte_52981C[edx]
test    dl, dl
jz      loc_496499
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
or      byte ptr [esi+7], 2
mov     al, dl
and     al, 7Fh
mov     [esi+6], al
mov     [esi+5], al
mov     [esi+4], al
mov     ecx, ds:dword_77E6DC
add     ecx, 38h ; '8'
mov     ds:dword_77E6DC, ecx
mov     edi, ecx
push    0
mov     al, dl
and     al, 80h
and     eax, 0FFh
sar     eax, 7
shl     eax, 5
lea     ecx, [eax+20h]
or      cl, 0Fh
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

loc_496499:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4963E5 endp




sub_49649E proc near
push    edx
xor     dl, dl
mov     ds:byte_55A64A, dl
mov     ds:byte_55A649, dl
mov     ds:byte_55A648, dl
mov     eax, ds:off_529852[eax*4]
mov     ds:dword_55A650, eax
pop     edx
retn
sub_49649E endp




sub_4964C1 proc near
push    edx
xor     dl, dl
mov     ds:byte_55A64D, dl
mov     ds:byte_55A64C, dl
mov     ds:byte_55A64B, dl
mov     eax, ds:off_529891[eax*4]
mov     ds:dword_55A654, eax
pop     edx
retn
sub_4964C1 endp




sub_4964E4 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset byte_5F8364
mov     eax, offset byte_55A648
mov     ebx, dword ptr ds:word_55A646+1
sar     ebx, 18h
mov     ecx, ds:dword_55A650
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_49651A
jbe     short loc_49651D
cmp     bl, 7Fh
jnz     short loc_49651A
xor     bl, bl
mov     ds:byte_55A64A, bl
jmp     short loc_49651D

loc_49651A:
inc     byte ptr [eax+2]

loc_49651D:
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
jb      short loc_49654B
jbe     short loc_49654E
cmp     bl, 7Fh
jnz     short loc_49654B
mov     byte ptr [eax+5], 0
jmp     short loc_49654E

loc_49654B:
inc     byte ptr [eax+5]

loc_49654E:
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
sub_4964E4 endp




sub_496575 proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 14h
mov     word ptr [esp+20h+var_14], ax
mov     word ptr [esp+20h+var_10], dx
mov     [esp+20h+var_18], bx
mov     [esp+20h+var_1C], cx
xor     esi, esi

loc_496591:
mov     ecx, ds:dword_77E6DC
mov     eax, ecx
call    sub_4F8811
mov     edx, 1
mov     eax, ecx
call    sub_4F884E
mov     eax, [esp+20h+var_14]
mov     [ecx+8], ax
mov     eax, [esp+20h+var_10]
mov     [ecx+0Ah], ax
mov     eax, esi
shl     eax, 2
add     eax, esi
add     eax, eax
mov     ebx, eax
shl     ebx, 4
add     ebx, eax
mov     eax, ebx
call    sub_4EF003
mov     edx, [esp+6]
sar     edx, 10h
imul    eax, edx
sar     eax, 0Ch
mov     ebp, [esp+0Ah]
sar     ebp, 10h
add     eax, ebp
mov     [ecx+10h], ax
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     edi, [esp+20h+var_14+2]
sar     edi, 10h
add     eax, edi
mov     [ecx+12h], ax
inc     esi
mov     eax, esi
shl     eax, 2
add     eax, esi
add     eax, eax
mov     ebx, eax
shl     eax, 4
add     ebx, eax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
add     eax, ebp
mov     [esp+20h+var_20], eax
mov     eax, [esp+20h+var_20]
mov     [ecx+18h], ax
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
add     eax, edi
mov     [ecx+1Ah], ax
mov     al, byte ptr [esp+20h+var_1C]
mov     [ecx+4], al
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+14h], 0
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+15h], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+16h], 0
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 28h ; '('
add     eax, 74h ; 't'
mov     edx, ecx
call    sub_4F87A6
cmp     esi, 18h
jl      loc_496591
mov     esi, ds:dword_77E6DC
push    0
mov     ecx, 2Fh ; '/'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 0Ch
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn
sub_496575 endp




sub_4966BD proc near
push    ecx
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4966DD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 20h ; ' '
mov     [eax+3], dl
or      byte ptr [eax+6], 20h
mov     [ecx+0A0h], eax

loc_4966DD:
pop     ecx
retn
sub_4966BD endp

db 8Dh, 40h, 0
jpt_496705 dd offset loc_49670C ; jump table for switch statement
dd offset loc_496725
dd offset loc_496737
dd offset loc_496756

loc_4966F2:
push    edx
mov     edx, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_496705      ; jumptable 00496705 default case
and     eax, 0FFh
jmp     jpt_496705[eax*4] ; switch jump

loc_49670C:             ; jumptable 00496705 case 0
mov     eax, 0CBh
call    sub_42BEB2
or      byte ptr ds:dword_55A658, 80h

loc_49671D:
inc     byte ptr [edx+5]

loc_496720:
inc     byte ptr [edx+6]
pop     edx
retn

loc_496725:             ; jumptable 00496705 case 1
call    sub_42C353
test    eax, eax
jnz     short def_496705 ; jumptable 00496705 default case
and     byte ptr ds:dword_55A658, 7Fh
jmp     short loc_49671D

loc_496737:             ; jumptable 00496705 case 2
cmp     dword ptr [edx+10h], 0B4h
jl      short def_496705 ; jumptable 00496705 default case
mov     eax, 25001Fh
call    sub_4D8E42
or      byte ptr ds:dword_55A658, 80h
dec     byte ptr [edx+5]
jmp     short loc_496720

loc_496756:             ; jumptable 00496705 case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_496705 ; jumptable 00496705 default case
and     byte ptr ds:dword_55A658, 7Fh
inc     byte ptr [edx+5]
mov     byte ptr [edx+6], 0
call    sub_49DF64

def_496705:             ; jumptable 00496705 default case
pop     edx
retn



sub_496774 proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 1Eh
jb      short loc_496786
jbe     short loc_496793
cmp     edx, 28h ; '('
jz      short loc_496793
pop     edx
retn

loc_496786:
test    edx, edx
jnz     short loc_496799
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn

loc_496793:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]

loc_496799:
pop     edx
retn
sub_496774 endp




sub_49679B proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_4967AA
cmp     edx, 78h ; 'x'
jz      short loc_4967B3
pop     edx
retn

loc_4967AA:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn

loc_4967B3:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]
pop     edx
retn
sub_49679B endp




sub_4967BB proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, [eax+10h]
test    eax, eax
jbe     short loc_4967D8
cmp     eax, 50h ; 'P'
jz      loc_4968B4
jmp     loc_4968C5

loc_4967D8:
xor     edx, edx
jmp     short loc_4967E2

loc_4967DC:
inc     edx
cmp     edx, 2
jge     short loc_496817

loc_4967E2:
call    sub_4DE227
test    eax, eax
jz      short loc_4967DC
or      byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     bl, dl
add     bl, 4
mov     [eax+3], bl
mov     ebx, edx
shl     ebx, 0Ah
sub     ebx, 200h
mov     [eax+48h], bx
mov     word ptr [eax+4Ah], 0FF40h
mov     word ptr [eax+4Ch], 0FD00h
jmp     short loc_4967DC

loc_496817:
or      byte ptr [ecx], 3
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FF3Fh
mov     word ptr [ecx+53Ch], 898h
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 800h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 84h
mov     byte ptr [ecx+76h], 0
mov     byte ptr [ecx+74h], 0
xor     eax, eax
call    sub_4964C1
xor     eax, eax
call    sub_49649E
jmp     short loc_4968C5

loc_4968B4:
mov     eax, 3
call    sub_49649E
mov     ds:byte_5F88AC, 85h

loc_4968C5:
call    sub_4964E4
pop     edx
pop     ecx
pop     ebx
retn
sub_4967BB endp




sub_4968CE proc near
push    edx
mov     edx, [eax+10h]
cmp     edx, 3Ch ; '<'
jb      short loc_4968E0
jbe     short loc_4968FC
cmp     edx, 64h ; 'd'
jz      short loc_496904
jmp     short loc_49690E

loc_4968E0:
test    edx, edx
jnz     short loc_49690E
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
mov     eax, 1
call    sub_4964C1
mov     eax, 1
jmp     short loc_496909

loc_4968FC:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]
jmp     short loc_49690E

loc_496904:
mov     eax, 4

loc_496909:
call    sub_49649E

loc_49690E:
call    sub_4964E4
pop     edx
retn
sub_4968CE endp




sub_496915 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_496922
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0

locret_496922:
retn
sub_496915 endp




sub_496923 proc near
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_49698E
mov     eax, 0Eh
call    sub_496B8D
mov     ds:byte_56F80C, 3
xor     edx, edx
mov     word ptr ds:dword_56F818, dx
mov     word ptr ds:dword_56F818+2, 0E0h
xor     esi, esi
mov     ds:dword_56F810, esi
mov     ds:dword_56F814, 0E00000h
xor     edx, edx
mov     eax, ecx
call    sub_4966BD
mov     eax, offset unk_5298B5
call    sub_49DB4D
mov     word ptr [eax+58h], 140h
mov     ecx, [ecx+24h]
and     byte ptr [ecx], 0FDh
and     ds:byte_5F8364, 0FDh
pop     esi
pop     edx
pop     ecx
retn

loc_49698E:
cmp     edx, 168h
jge     short loc_4969AD
fild    ds:dword_56F814
fadd    ds:dbl_50A2EC
call    __CHP
fistp   ds:dword_56F814

loc_4969AD:
pop     esi
pop     edx
pop     ecx
retn
sub_496923 endp




sub_4969B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_4969E9
mov     eax, [eax+0A0h]
call    sub_4DE3EA
mov     edx, 1
mov     eax, ecx
call    sub_4966BD
mov     eax, [ecx+28h]
mov     word ptr [eax+56h], 80h
xor     ah, ah
mov     ds:byte_56F80C, ah
xor     al, al
jmp     short loc_496A1F

loc_4969E9:
cmp     edx, 20h ; ' '
jge     short loc_4969F7
mov     ax, [eax+10h]
shl     eax, 3
jmp     short loc_496A1F

loc_4969F7:
cmp     edx, 40h ; '@'
jge     short loc_496A03
mov     eax, 0FFh
jmp     short loc_496A1F

loc_496A03:
cmp     edx, 60h ; '`'
jge     short loc_496A1D
mov     ax, [eax+10h]
sub     eax, 40h ; '@'
shl     eax, 3
mov     ecx, 0FFh
sub     ecx, eax
mov     eax, ecx
jmp     short loc_496A1F

loc_496A1D:
xor     eax, eax

loc_496A1F:
movsx   ecx, ax
mov     ebx, 1Eh
mov     edx, 6Ch ; 'l'
mov     eax, 0AAh
call    sub_496575
pop     edx
pop     ecx
pop     ebx
retn
sub_4969B1 endp




sub_496A3A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_496A81
mov     eax, [eax+0A0h]
call    sub_4DE3EA
mov     edx, 2
mov     eax, ecx
call    sub_4966BD
mov     eax, [ecx+28h]
mov     word ptr [eax+56h], 800h
mov     eax, offset unk_5298C9
call    sub_49DB4D
mov     ecx, [ecx+28h]
mov     cl, [ecx+1]
mov     [eax+0Ch], cl
mov     dword ptr [eax+58h], 0
pop     edx
pop     ecx
retn

loc_496A81:
mov     eax, [eax+2Ch]
add     dword ptr [eax+58h], 10h
pop     edx
pop     ecx
retn
sub_496A3A endp




sub_496A8B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_496AFB
mov     eax, [eax+28h]
call    sub_4DE2F6
mov     eax, [ecx+2Ch]
call    sub_4DE477
mov     eax, [ecx+0A0h]
call    sub_4DE3EA
mov     edx, 3
mov     eax, ecx
call    sub_4966BD
mov     eax, offset unk_5298DD
call    sub_49DB4D
mov     byte ptr [eax+9], 1
mov     dword ptr [eax+58h], 0
mov     ds:byte_56F844, 3
xor     edx, edx
mov     ds:word_56F850, dx
mov     ds:word_56F852, dx
xor     ebx, ebx
mov     ds:dword_56F848, ebx
mov     ds:dword_56F84C, ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_496AFB:
mov     eax, [eax+28h]
add     dword ptr [eax+58h], 30h ; '0'
pop     edx
pop     ecx
pop     ebx
retn
sub_496A8B endp




sub_496B06 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_496B67
mov     eax, [eax+28h]
call    sub_4DE477
mov     eax, [edx+0A0h]
call    sub_4DE3EA
mov     eax, offset unk_5298F1
call    sub_49DB4D
mov     byte ptr [eax+9], 2
mov     [eax+58h], ecx
xor     ah, ah
mov     ds:byte_56F844, ah
mov     ds:byte_56F87C, 3
xor     edx, edx
mov     ds:word_56F888, dx
xor     ebx, ebx
mov     ds:word_56F88A, bx
mov     ds:dword_56F880, ecx
mov     ds:dword_56F884, ecx
pop     edx
pop     ecx
pop     ebx
retn

loc_496B67:
mov     eax, [eax+28h]
add     dword ptr [eax+58h], 8
pop     edx
pop     ecx
pop     ebx

locret_496B71:
retn
sub_496B06 endp




sub_496B72 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_496B71
mov     eax, [eax+28h]
call    sub_4DE477
xor     ah, ah
mov     ds:byte_56F87C, ah
mov     eax, 0Ah
sub_496B72 endp




sub_496B8D proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 1Ah
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_496B8D endp




sub_496BD9 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_496C3A
mov     eax, 0Dh
call    sub_496B8D
mov     ds:byte_56F8B4, 3
mov     eax, offset unk_529905
call    sub_49DB4D
mov     eax, offset unk_529919
call    sub_49DB4D
mov     eax, offset unk_52992D
call    sub_49DB4D
mov     eax, offset unk_529941
call    sub_49DB4D
mov     eax, offset unk_529955
call    sub_49DB4D
mov     eax, offset unk_529969
call    sub_49DB4D
mov     eax, offset unk_52997D
call    sub_49DB4D
mov     byte ptr [eax+9], 3

locret_496C3A:
retn
sub_496BD9 endp




sub_496C3B proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_496C4D
mov     eax, [eax+40h]
call    sub_4DE477
pop     edx
retn

loc_496C4D:
cmp     edx, 78h ; 'x'
jnz     short loc_496C5C
mov     eax, 8
call    sub_49E0D7

loc_496C5C:
pop     edx
retn
sub_496C3B endp




sub_496C5E proc near
push    ebx
push    edx
push    esi
mov     edx, eax
mov     eax, [eax+10h]
test    eax, eax
jbe     short loc_496C73
cmp     eax, 1
jz      short loc_496CD8
pop     esi
pop     edx
pop     ebx
retn

loc_496C73:
xor     bh, bh
mov     ds:byte_56F8B4, bh
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, [edx+34h]
call    sub_4DE2F6
mov     eax, [edx+38h]
call    sub_4DE2F6
mov     eax, [edx+3Ch]
call    sub_4DE2F6
mov     eax, 0Fh
call    sub_496B8D
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     eax, [edx+24h]
mov     [eax+9], bh
mov     eax, [edx+24h]
mov     word ptr [eax+16h], 0FFEBh
mov     eax, 2
call    sub_49E0D7
pop     esi
pop     edx
pop     ebx
retn

loc_496CD8:
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     edx, edx
mov     word ptr ds:dword_5F889A+2, dx
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 898h
xor     edx, edx
mov     ds:dword_5F888C, edx
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 8980000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 800h
xor     eax, eax
mov     ds:word_5F88A8, ax
mov     ds:byte_5F88AC, 30h ; '0'
pop     esi
pop     edx
pop     ebx
retn
sub_496C5E endp




sub_496D49 proc near
push    edx
mov     edx, eax
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_496D6F
jbe     short loc_496D9E
cmp     eax, 0F0h
jb      loc_49690E
jbe     short loc_496DAD
cmp     eax, 127h
jz      short loc_496DB4
jmp     loc_49690E

loc_496D6F:
test    eax, eax
jnz     loc_49690E
or      ds:byte_5F8364, 2
mov     eax, 2
call    sub_4964C1
mov     eax, 2
call    sub_49649E
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
jmp     loc_49690E

loc_496D9E:
mov     eax, 5
call    sub_49649E
jmp     loc_49690E

loc_496DAD:
mov     eax, 3
jmp     short loc_496DC3

loc_496DB4:
mov     eax, 5
call    sub_49649E
mov     eax, 2

loc_496DC3:
call    sub_4964C1
jmp     loc_49690E
sub_496D49 endp




sub_496DCD proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jbe     short loc_496DDC
cmp     edx, 1Eh
jz      short loc_496DE5
pop     edx
retn

loc_496DDC:
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn

loc_496DE5:
mov     eax, [eax+24h]
inc     byte ptr [eax+9]
pop     edx
retn
sub_496DCD endp




sub_496DED proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_496E0C
jbe     loc_496E7F
cmp     al, 2
jz      loc_496E9E
jmp     loc_496EB5

loc_496E0C:
test    al, al
jnz     loc_496EB5
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000002Eh
call    sub_4D89E4
and     ds:byte_5F8364, 0FDh
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 2
call    sub_496B8D
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_529991
mov     dword ptr [ecx+0A4h], offset unk_529F45
mov     dword ptr [ecx+0Ch], 0
mov     eax, offset unk_5298A1
call    sub_49DB4D

loc_496E7A:
inc     byte ptr [ecx+5]
jmp     short loc_496EB5

loc_496E7F:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_496EB5
mov     edx, 80h
mov     eax, 100h
call    sub_4DC979
jmp     short loc_496E7A

loc_496E9E:
xor     edx, edx
mov     ds:dword_55A658, edx
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
mov     byte ptr [ecx+6], 0
mov     byte ptr [ecx+7], 0

loc_496EB5:
call    sub_49DBD1

loc_496EBA:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_496DED endp




sub_496EC3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_496EDA
jbe     short loc_496F18
cmp     al, 2
jz      short loc_496F25
jmp     loc_496F5C

loc_496EDA:
test    al, al
jnz     loc_496F5C
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     al, byte ptr ds:dword_55A658
test    al, 80h
jnz     short loc_496F57
test    al, 1
jz      short loc_496F57
mov     bl, al
or      bl, 2
mov     byte ptr ds:dword_55A658, bl
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0
jmp     short loc_496F57

loc_496F18:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_496F57

loc_496F25:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_496F50
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, byte ptr ds:dword_55A658
test    bh, 80h
jnz     short loc_496F57
test    bh, 1
jz      short loc_496F57
mov     eax, 8
call    sub_49E0D7

loc_496F50:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_496F57:
call    sub_49DBD1

loc_496F5C:
call    sub_47EBCB
test    eax, eax
jz      loc_496EBA
or      byte ptr ds:dword_55A658, 1
jmp     loc_496EBA
sub_496EC3 endp

align 2
jpt_496FA1 dd offset loc_496FA8 ; jump table for switch statement
dd offset loc_497075
dd offset loc_497090
dd offset loc_49709F



sub_496F86 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_496FA1      ; jumptable 00496FA1 default case
and     eax, 0FFh
jmp     jpt_496FA1[eax*4] ; switch jump

loc_496FA8:             ; jumptable 00496FA1 case 0
cmp     ds:word_6E23D6, 0
jnz     def_496FA1      ; jumptable 00496FA1 default case
xor     al, al
mov     ds:byte_56F80C, al
mov     ds:byte_56F844, al
xor     dl, dl
mov     ds:byte_56F87C, al
xor     dh, dh
mov     ds:byte_56F8B4, al
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
xor     ebx, ebx
mov     word ptr ds:dword_5F889A+2, bx
mov     word ptr ds:dword_5F889E, 0FFFFh
xor     edi, edi
mov     word ptr ds:dword_5F889E+2, di
xor     edi, edi
mov     ds:dword_5F888C, edi
mov     ds:dword_5F8890, 0FFFF0000h
xor     eax, eax
mov     ds:dword_5F8894, edi
xor     eax, edi
mov     ds:word_5F88A8, ax
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, 800h
xor     ah, ah
mov     ds:byte_5F88AC, ah
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, dl
call    sub_4D8EB1
test    byte ptr ds:dword_55A658, 2
jz      short loc_49706D
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979
mov     eax, 0CBh
call    sub_42BEB2

loc_49706D:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_497075:             ; jumptable 00496FA1 case 1
test    byte ptr ds:dword_55A658, 2
jz      short loc_497087
mov     byte ptr [ecx+5], 2
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_497087:
mov     byte ptr [ecx+5], 3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_497090:             ; jumptable 00496FA1 case 2
call    sub_42C353
test    eax, eax
jnz     def_496FA1      ; jumptable 00496FA1 default case
jmp     short loc_49706D

loc_49709F:             ; jumptable 00496FA1 case 3
or      ds:byte_5F8364, 3
test    byte ptr ds:dword_55A658, 2
jnz     short loc_4970BE
mov     edx, 80h
mov     eax, 17Eh
call    sub_4DC979

loc_4970BE:
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     edx, offset dword_77EA48
cmp     ds:dword_55A658, 0
jz      short loc_4970E4
xor     eax, eax
call    sub_49E0D7

