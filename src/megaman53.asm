pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4818B0 endp




sub_481A7F proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_481AD3
mov     edx, ds:dword_55A30C
or      byte ptr [edx], 2
mov     edx, ds:dword_55A30C
mov     byte ptr [edx+548h], 30h ; '0'
mov     edx, [eax+24h]
sub     word ptr [edx+14h], 80h
mov     edx, [eax+24h]
mov     ecx, [edx+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [edx+1Ch], ecx
mov     edx, [eax+24h]
mov     ecx, [edx+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [edx+20h], ecx
mov     edx, [eax+24h]
mov     ecx, [edx+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [edx+24h], ecx

loc_481AD3:
cmp     dword ptr [eax+10h], 0Ah
jge     short loc_481AE2
mov     edx, [eax+24h]
add     word ptr [edx+56h], 0B4h

loc_481AE2:
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_481B06
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 708h
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 3
mov     edx, [eax+24h]
mov     byte ptr [edx+0Dh], 0
mov     edx, [eax+24h]
mov     byte ptr [edx+0Fh], 0

loc_481B06:
mov     edx, [eax+24h]
add     edx, 14h
mov     eax, ds:dword_55A30C
add     eax, 14h
call    sub_4DDDB4
mov     edx, eax
mov     eax, ds:dword_55A30C
mov     [eax+542h], dx
pop     edx
pop     ecx
retn
sub_481A7F endp




sub_481B2A proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481B5D
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 81h
mov     edx, 5
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+24h]
test    byte ptr [eax], 1
jz      short loc_481B5D
call    sub_4DE336
or      byte ptr [ecx+0Ah], 10h

loc_481B5D:
pop     edx
pop     ecx

locret_481B5F:
retn
sub_481B2A endp




sub_481B60 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481B84
mov     edx, 0Eh
xor     eax, eax
call    sub_4A0E24
mov     eax, [ecx+28h]
mov     byte ptr [eax+8], 8
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Fh], 0

loc_481B84:
pop     edx
pop     ecx
retn
sub_481B60 endp




sub_481B87 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_481C17
mov     eax, ds:dword_51B452+3
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_51B456
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
mov     eax, [esi+24h]
mov     byte ptr [eax+0Fh], 0
mov     eax, [esi+24h]
mov     byte ptr [eax+8], 4

loc_481C17:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_481B87 endp




sub_481C1C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 641h
call    sub_47E888
test    eax, eax
jz      short loc_481C50
mov     ds:dword_77E6B4, offset unk_51B4D8
mov     dword ptr [ecx+0A4h], offset unk_51B73C
jmp     short loc_481C64

loc_481C50:
mov     ds:dword_77E6B4, offset unk_51B608
mov     dword ptr [ecx+0A4h], offset unk_51B78C

loc_481C64:
mov     eax, ds:dword_55A310
mov     [ecx+24h], eax
mov     eax, ds:dword_55A314
mov     [ecx+28h], eax
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 1
pop     edx
pop     ecx
pop     ebx
retn
sub_481C1C endp




sub_481C8D proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_481C9D
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_481C9D:
pop     edx
retn
sub_481C8D endp

db 8Bh, 0C0h
jpt_481CDC dd offset loc_481CE3 ; jump table for switch statement
dd offset loc_481CF2
dd offset loc_481D24
dd offset loc_481D67
dd offset loc_481D83
dd offset loc_481DA3



sub_481CB9 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     esi, eax
mov     ds:dword_55A30C, offset byte_5F8364
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_481CDC      ; jumptable 00481CDC default case
xor     edx, edx
mov     dl, al
jmp     jpt_481CDC[edx*4] ; switch jump

loc_481CE3:             ; jumptable 00481CDC case 0
mov     eax, esi
call    sub_481C1C

loc_481CEA:
inc     byte ptr [esi+4]
jmp     def_481CDC      ; jumptable 00481CDC default case

loc_481CF2:             ; jumptable 00481CDC case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_481CDC      ; jumptable 00481CDC default case
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+8], 3
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+9], 0
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 30h ; '0'
jmp     short loc_481CEA

loc_481D24:             ; jumptable 00481CDC case 2
cmp     byte ptr [esi+8], 0FFh
jnz     short loc_481D34
inc     al
mov     [esi+4], al
jmp     def_481CDC      ; jumptable 00481CDC default case

loc_481D34:
call    sub_47EBCB
test    eax, eax
jz      short loc_481D51
test    byte ptr [esi+0Ah], 1
jz      short loc_481D51
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
jmp     short loc_481CEA

loc_481D51:
mov     eax, esi
call    sub_481C8D
call    sub_49DBD1
call    sub_49DECF
jmp     def_481CDC      ; jumptable 00481CDC default case

loc_481D67:             ; jumptable 00481CDC case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_481CDC      ; jumptable 00481CDC default case
mov     eax, 10h
call    sub_4D9040
jmp     loc_481CEA

loc_481D83:             ; jumptable 00481CDC case 4
cmp     ds:byte_77EAB8, 0
jnz     def_481CDC      ; jumptable 00481CDC default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000007h
call    sub_4D89E4
jmp     loc_481CEA

loc_481DA3:             ; jumptable 00481CDC case 5
mov     byte ptr ds:dword_77E954, 1
mov     ecx, 7380000h
mov     ds:dword_5F888C, ecx
mov     ebx, 0FFFF0000h
mov     ds:dword_5F8890, ebx
mov     edi, 12E30000h
mov     ds:dword_5F8894, edi
mov     edx, 64h ; 'd'
mov     word ptr ds:dword_5F88A4+2, dx
mov     ds:dword_5F8380, ecx
mov     ds:dword_5F8384, ebx
mov     ds:dword_5F8388, edi
mov     word ptr ds:dword_5F83B8+2, dx
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     eax, ds:dword_55A30C
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     eax, ds:dword_55A30C
inc     byte ptr ds:dword_5F836C+1
or      byte ptr [eax], 2
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esp+24h+var_24], eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, 96h
mov     [esp+24h+var_20], eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     [esp+24h+var_1C], eax
call    sub_42A98E
mov     ebx, ds:dword_5F83B8
sar     ebx, 10h
sub     ebx, 824h
and     ebx, 0FFFh
xor     ecx, ecx
mov     edx, 258h
mov     eax, esp
call    sub_42A8BE
mov     byte ptr [esi], 0
test    byte ptr [esi+0Ah], 10h
jnz     short loc_481E89
mov     eax, [esi+24h]
call    sub_4DE336

loc_481E89:
test    byte ptr [esi+0Ah], 20h
jnz     short loc_481E97
mov     eax, [esi+28h]
call    sub_4DE2F6

loc_481E97:
mov     ds:word_77EA80, 7Fh
mov     eax, offset byte_5F8364
call    sub_4B565A

def_481CDC:             ; jumptable 00481CDC default case
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_481EB2:
retn
sub_481CB9 endp




sub_481EB3 proc near
push    edx
call    sub_4DDFD0
test    eax, eax
jz      short loc_481EFC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+4], 5
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [eax+1Ch], 72C0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 145F0000h
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_481EFC:
call    sub_4DDF54
test    eax, eax
jz      short loc_481F44
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Ah ; '*'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [eax+1Ch], 7EC0000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 145F0000h
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_481F44:
pop     edx
retn
sub_481EB3 endp

jpt_481F75 dd offset loc_481F7C ; jump table for switch statement
dd offset loc_481F9B
dd offset loc_481FD7
dd offset loc_481FE6
dd offset loc_481FF2
dd offset loc_482011
dd offset loc_48208F



sub_481F62 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_481F75      ; jumptable 00481F75 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_481F75[ecx*4] ; switch jump

loc_481F7C:             ; jumptable 00481F75 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_481F75      ; jumptable 00481F75 default case
mov     eax, edx
call    sub_482099

loc_481F95:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_481F9B:             ; jumptable 00481F75 case 1
cmp     byte ptr [edx+8], 0FFh
jnz     short loc_481FAC
inc     al
mov     [edx+4], al
inc     byte ptr [edx+5]
pop     edx
pop     ecx
retn

loc_481FAC:
call    sub_47EBCB
test    eax, eax
jz      short loc_481FC3
mov     byte ptr [edx+4], 6
mov     byte ptr [edx+5], 0
mov     word ptr [edx+6], 0

loc_481FC3:
mov     eax, edx
call    sub_482216
call    sub_49DBD1

loc_481FCF:
call    sub_49DECF
pop     edx
pop     ecx
retn

loc_481FD7:             ; jumptable 00481F75 case 2
call    sub_42C353
test    eax, eax
jnz     def_481F75      ; jumptable 00481F75 default case
jmp     short loc_481F95

loc_481FE6:             ; jumptable 00481F75 case 3
mov     eax, 240000h
call    sub_4D8E42
jmp     short loc_481F95

loc_481FF2:             ; jumptable 00481F75 case 4
call    sub_4D8ECC
test    eax, eax
jz      def_481F75      ; jumptable 00481F75 default case
mov     eax, [edx+28h]
call    sub_4DE336
mov     eax, edx
call    sub_4820FA
inc     byte ptr [edx+4]

loc_482011:             ; jumptable 00481F75 case 5
cmp     byte ptr [edx+8], 0FFh
jz      loc_481F95
call    sub_47EBCB
test    eax, eax
jz      short loc_48202E
mov     byte ptr [edx+4], 6
mov     word ptr [edx+6], 0

loc_48202E:
mov     eax, edx
call    sub_482216
call    sub_49DBD1
cmp     ds:byte_55A35C, 0
jz      short loc_482048
call    sub_482B79

loc_482048:
mov     dl, ds:byte_55A35E
test    dl, dl
jbe     short loc_48205C
cmp     dl, 1
jz      short loc_482069
jmp     loc_481FCF

loc_48205C:
xor     edx, edx
mov     ds:dword_77E698, edx
jmp     loc_481FCF

loc_482069:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_51BEFA[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
jmp     loc_481FCF

loc_48208F:             ; jumptable 00481F75 case 6
mov     eax, edx
call    sub_482228

def_481F75:             ; jumptable 00481F75 default case
pop     edx
pop     ecx
retn
sub_481F62 endp




sub_482099 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, ds:byte_77E952
mov     [ecx+0Bh], al
mov     al, ds:byte_77E953
mov     [ecx+0Ah], al
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51B870
mov     eax, offset unk_51B7F8
call    sub_49DB4D
mov     dword ptr [ecx+0A4h], offset unk_51BE24
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
xor     ah, ah
mov     ds:byte_55A35E, ah
mov     ds:byte_55A35C, ah
pop     edx
pop     ecx
pop     ebx
retn
sub_482099 endp




sub_4820FA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+14h], 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51B8E4
mov     eax, offset unk_51B7E4
call    sub_49DB4D
mov     eax, offset unk_51B80C
call    sub_49DB4D
mov     eax, offset unk_51B820
call    sub_49DB4D
mov     eax, offset unk_51B834
call    sub_49DB4D
mov     eax, offset unk_51B848
call    sub_49DB4D
mov     eax, offset unk_51B85C
call    sub_49DB4D
mov     eax, offset unk_55A334
call    sub_4F87C5
mov     eax, offset unk_55A344
call    sub_4F87C5
or      ds:byte_55A33B, 2
or      ds:byte_55A34B, 2
xor     edx, edx
mov     ds:word_55A34C, dx
mov     ds:word_55A33C, dx
mov     ds:word_55A34E, dx
mov     ds:word_55A33E, dx
mov     dh, 8
mov     ds:byte_55A348, dh
mov     ds:byte_55A338, dh
mov     ds:byte_55A349, dh
mov     ds:byte_55A339, dh
mov     ds:byte_55A34A, dh
mov     ds:byte_55A33A, dh
mov     eax, 140h
mov     ds:word_55A350, ax
mov     edx, eax
mov     ds:word_55A340, ax
mov     ebx, 0F0h
mov     word ptr ds:dword_55A352, bx
mov     ds:word_55A342, bx
mov     dword ptr [ecx+0A4h], offset unk_51BE34
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+8], 1
xor     dh, ah
mov     ds:byte_55A35E, dh
xor     bl, bl
mov     ds:byte_55A35C, bl
pop     edx
pop     ecx
pop     ebx
retn
sub_4820FA endp




sub_482216 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_482226
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_482226:
pop     edx
retn
sub_482216 endp




sub_482228 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 1
jb      short loc_48224F
jbe     loc_4822CB
cmp     al, 2
jz      loc_48236F
jmp     loc_48243C

loc_48224F:
test    al, al
jnz     loc_48243C
cmp     byte ptr [edi+5], 0
jnz     short loc_4822B9
cmp     byte ptr [edi+7], 0
jnz     short loc_48227B
mov     byte ptr [edi+7], 1
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 40h ; '@'
call    sub_4D9040

loc_48227B:
cmp     ds:word_6E23D6, 0
jnz     loc_48243C
cmp     ds:byte_77EAB8, 0
jnz     loc_48243C
call    sub_42C353
test    eax, eax
jnz     loc_48243C
mov     eax, 1
call    sub_482B27
mov     eax, 2
call    sub_49E0D7
jmp     short loc_4822C8

loc_4822B9:
mov     eax, 1
call    sub_482B27
call    sub_4D8EB1

loc_4822C8:
inc     byte ptr [edi+6]

loc_4822CB:
mov     edx, 80h
mov     eax, 156h
call    sub_4DC979
mov     ds:dword_77E6B4, offset unk_51BDDC
call    sub_49DBD1
call    sub_49DECF
or      byte ptr [esi], 2
mov     word ptr [esi+538h], 400h
mov     word ptr [esi+53Ah], 0FFFFh
mov     word ptr [esi+53Ch], 1BE0h
mov     eax, [esi+536h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+528h], eax
mov     eax, [esi+538h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+52Ch], eax
mov     eax, [esi+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esi+530h], eax
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 800h
mov     word ptr [esi+544h], 0
or      byte ptr [esi+0BDh], 10h
inc     byte ptr [esi+9]
inc     byte ptr [edi+6]
jmp     loc_48243C

loc_48236F:
call    sub_4DDFD0
mov     ebp, eax
test    eax, eax
jz      short loc_4823DF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     byte ptr [eax+0Fh], 1
mov     word ptr [eax+14h], 400h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 2100h
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
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 0

loc_4823DF:
mov     word ptr [ebp+0B0h], 0
mov     ax, [ebp+0B0h]
mov     [ebp+6Eh], ax
push    2C203080h
mov     ecx, 60h ; '`'
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_436785
mov     eax, esi
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     al, [edi+0Bh]
mov     ds:byte_77E952, al
mov     al, [edi+0Ah]
mov     ds:byte_77E953, al
mov     byte ptr [edi], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000006h
call    sub_4D89E4

loc_48243C:
pop     ebp

loc_48243D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_482442:
retn
sub_482228 endp




sub_482443 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_482442
and     ds:byte_5F8364, 0FDh
mov     word ptr ds:dword_5F836C, 3
call    sub_4DD215
mov     eax, 30h ; '0'
jmp     sub_42BEB2
sub_482443 endp




sub_482468 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+34h]
mov     ecx, [eax+38h]
mov     ebx, [eax+3Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4824BD
mov     word ptr [edx+0Ah], 0
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
mov     ds:byte_55A35C, 1
mov     ds:byte_55A338, 40h ; '@'
mov     ds:byte_55A339, 40h ; '@'
mov     ds:byte_55A33A, 10h
mov     ds:byte_55A348, 48h ; 'H'
mov     ds:byte_55A349, 48h ; 'H'
mov     ds:byte_55A34A, 12h

loc_4824BD:
cmp     dword ptr [eax+10h], 64h ; 'd'
jnz     short loc_4824C9
mov     word ptr [ecx+0Ah], 1

loc_4824C9:
cmp     dword ptr [eax+10h], 6Ch ; 'l'
jnz     short loc_4824DB
mov     word ptr [edx+0Ah], 1
mov     word ptr [ebx+0Ah], 1

loc_4824DB:
pop     edx
pop     ecx
pop     ebx
retn
sub_482468 endp




sub_4824DF proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482505
mov     eax, 3
call    sub_482B27
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
xor     ah, ah
mov     ds:byte_55A35C, ah

loc_482505:
pop     edx
retn
sub_4824DF endp




sub_482507 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+34h]
mov     ecx, [eax+38h]
mov     ebx, [eax+3Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482566
mov     eax, 1
call    sub_482B27
mov     word ptr [edx+0Ah], 2
mov     word ptr [ecx+0Ah], 2
mov     word ptr [ebx+0Ah], 2
mov     ds:byte_55A35C, 1
mov     dl, 40h ; '@'
mov     ds:byte_55A338, dl
mov     ds:byte_55A339, dl
mov     ds:byte_55A33A, 10h
mov     bh, 48h ; 'H'
mov     ds:byte_55A348, bh
mov     ds:byte_55A349, bh
mov     ds:byte_55A34A, 12h

loc_482566:
pop     edx
pop     ecx
pop     ebx
retn
sub_482507 endp




sub_48256A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+34h]
mov     ecx, [eax+38h]
mov     ebx, [eax+3Ch]
mov     esi, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825A4
mov     eax, 3
call    sub_482B27
mov     byte ptr [edx+8], 2
mov     byte ptr [ecx+8], 2
mov     byte ptr [ebx+8], 2
mov     word ptr [esi+0Ah], 1
xor     ah, ah
mov     ds:byte_55A35C, ah

loc_4825A4:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48256A endp




sub_4825A9 proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825BD
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 2

loc_4825BD:
pop     edx
retn
sub_4825A9 endp




sub_4825BF proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825CF
mov     word ptr [edx+0Ah], 3

loc_4825CF:
pop     edx
retn
sub_4825BF endp




sub_4825D1 proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4825E1
mov     word ptr [edx+0Ah], 4

loc_4825E1:
pop     edx
retn
sub_4825D1 endp




sub_4825E3 proc near
push    ecx
push    edx
mov     edx, [eax+24h]
mov     ecx, [eax+2Ch]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482608
and     byte ptr [ecx], 0FDh
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     eax, 1
call    sub_482B27

loc_482608:
pop     edx
pop     ecx
retn
sub_4825E3 endp




sub_48260B proc near
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 19h
jnz     short loc_482619
mov     byte ptr [edx+9], 4

loc_482619:
pop     edx
retn
sub_48260B endp




sub_48261B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+24h]
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_4826C0
mov     byte ptr [edx+9], 0
or      ds:byte_5F8364, 2
mov     word ptr ds:dword_5F889A+2, 400h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1F00h
mov     ds:dword_5F888C, 4000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1F000000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 0C00h
mov     ds:word_5F88A8, si
mov     ds:byte_5F88AC, 80h
mov     ds:byte_55A35C, 1
mov     dl, 8
mov     ds:byte_55A348, dl
mov     ds:byte_55A338, dl
mov     ds:byte_55A349, dl
mov     ds:byte_55A339, dl
mov     ds:byte_55A34A, dl
mov     ds:byte_55A33A, dl
jmp     short loc_482704

loc_4826C0:
cmp     ecx, 19h
jg      short loc_482704
mov     dl, ds:byte_55A348
add     dl, 3
mov     ds:byte_55A348, dl
mov     ds:byte_55A338, dl
mov     dh, ds:byte_55A349
add     dh, 3
mov     ds:byte_55A349, dh
mov     ds:byte_55A339, dh
mov     bl, ds:byte_55A34A
add     bl, 3
mov     ds:byte_55A34A, bl
mov     ds:byte_55A33A, bl

loc_482704:
cmp     dword ptr [eax+10h], 41h ; 'A'
jge     short loc_48271D
xor     dl, dl
mov     byte ptr ds:dword_5F84CB+1, dl
mov     byte ptr ds:dword_5F84CB+2, dl
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48271D:
mov     al, 0Ch
mov     byte ptr ds:dword_5F84CB+1, al
mov     byte ptr ds:dword_5F84CB+2, al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48261B endp




sub_48272E proc near
push    ebx
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482748
xor     bl, bl
mov     ds:byte_55A35C, bl
mov     byte ptr [edx+9], 5
pop     edx
pop     ebx
retn

loc_482748:
xor     ah, ah
mov     byte ptr ds:dword_5F84CB+1, ah
mov     byte ptr ds:dword_5F84CB+2, ah
pop     edx
pop     ebx
retn
sub_48272E endp




sub_482759 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, [eax+24h]
mov     edx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_482782
mov     byte ptr [ecx+9], 6
mov     byte ptr [ecx+0Ah], 0
mov     word ptr ds:dword_5F88A4+2, 800h
mov     byte ptr [eax+7], 0
jmp     short loc_482788

loc_482782:
cmp     byte ptr [eax+7], 0
jnz     short loc_4827BB

loc_482788:
mov     ecx, [ecx+14h]
sar     ecx, 10h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_482806
mov     byte ptr [eax+7], 1
mov     word ptr ds:dword_55A352+2, 0FEA0h
mov     byte ptr [edx+548h], 22h ; '"'
mov     byte ptr [edx+74h], 1
mov     ds:byte_55A35E, 1
mov     byte ptr [eax+6], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4827BB:
mov     bh, [eax+6]
test    bh, bh
jz      short loc_4827CB
mov     ch, bh
dec     ch
mov     [eax+6], ch
jmp     short loc_4827D1

loc_4827CB:
mov     ds:byte_55A35E, bh

loc_4827D1:
mov     eax, ds:dword_55A352
sar     eax, 10h
shl     eax, 0Ch
mov     esi, [edx+52Ch]
add     esi, eax
mov     [edx+52Ch], esi
mov     eax, esi
sar     eax, 10h
mov     [edx+53Ah], ax
add     word ptr ds:dword_55A352+2, 30h ; '0'
sub     word ptr [edx+53Ch], 14h

loc_482806:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_482759 endp




sub_48280B proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_48283E
and     ds:byte_5F8364, 0FDh
xor     bh, bh
mov     ds:byte_5F88AC, bh
mov     ecx, ds:dword_5F889E
sar     ecx, 10h
shl     ecx, 10h
mov     ds:dword_5F8894, ecx
mov     word ptr [eax+6], 0

loc_48283E:
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_482848
mov     byte ptr [edx+9], 7

loc_482848:
pop     edx
pop     ecx
pop     ebx
retn
sub_48280B endp




sub_48284C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+2Ch]
mov     ecx, [edx+30h]
mov     ebx, [edx+10h]
test    ebx, ebx
jnz     short loc_4828B6
mov     [eax+8], ebx
mov     word ptr [eax+0Ch], 0
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Fh], 1
mov     word ptr [eax+14h], 400h
mov     word ptr [eax+16h], 0FC00h
mov     word ptr [eax+18h], 2108h
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
mov     [eax+44h], ebx
mov     [eax+48h], ebx
mov     byte ptr [ecx+0Fh], 1
or      ds:byte_5F8364, 2

loc_4828B6:
pop     edx
pop     ecx
pop     ebx
retn
sub_48284C endp

jpt_4829EC dd offset loc_4829F3 ; jump table for switch statement
dd offset loc_482A0F
dd offset loc_482A01
dd offset loc_482A0F
dd offset loc_4829F3
dd offset loc_482A01
dd offset loc_4829F3
dd offset loc_482A0F
jpt_482AA6 dd offset loc_482AAD ; jump table for switch statement
dd offset loc_482AC3
dd offset loc_482AB8
dd offset loc_482AC3
dd offset loc_482AAD
dd offset loc_482AB8
dd offset loc_482AAD
dd offset loc_482AC3



sub_4828FA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, [eax+2Ch]
mov     ecx, offset byte_5F8364
mov     ebx, [eax+10h]
test    ebx, ebx
jnz     short loc_482917
mov     byte ptr [edx+0Dh], 1
inc     byte ptr [edx+0Eh]
jmp     short loc_48293F

loc_482917:
cmp     ebx, 1
jnz     short loc_48293F
xor     edx, edx
mov     word ptr ds:dword_55A358+2, dx
xor     dl, dl
mov     ds:byte_55A35D, dl
xor     ebx, ebx
mov     word ptr ds:dword_55A358, bx
xor     esi, esi
mov     ds:word_55A356, si

loc_48293F:
mov     bh, [eax+9]
cmp     bh, 2
jnz     loc_482A1D
cmp     dword ptr [eax+10h], 0
jnz     short loc_482958
mov     byte ptr [ecx+548h], 81h

loc_482958:
mov     ebx, 6
mov     word ptr ds:dword_55A358, bx
mov     esi, [eax+10h]
cmp     esi, 0Fh
jz      short loc_482971
cmp     esi, 2Dh ; '-'
jnz     short loc_48297A

loc_482971:
mov     ds:byte_55A35D, 1
jmp     short loc_4829CB

loc_48297A:
cmp     esi, 19h
jnz     short loc_48299D
xor     ah, ah
mov     ds:byte_55A35D, ah
xor     edi, edi
mov     word ptr ds:dword_55A358+2, di
xor     al, al

loc_482992:
mov     ds:word_55A356, ax
jmp     loc_482AD3

loc_48299D:
cmp     esi, 7Dh ; '}'
jnz     short loc_4829BE
xor     al, al
mov     ds:byte_55A35D, al
xor     ecx, ecx
mov     word ptr ds:dword_55A358+2, cx
mov     ds:word_55A356, bx
jmp     loc_482AD3

loc_4829BE:
cmp     ds:byte_55A35D, 0
jz      loc_482AD3

loc_4829CB:
mov     edx, ds:dword_55A358
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
and     eax, 7
cmp     eax, 7          ; switch 8 cases
ja      def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case
jmp     jpt_4829EC[eax*4] ; switch jump

loc_4829F3:             ; jumptable 004829EC cases 0,4,6
mov     ds:word_55A356, 0Ah
jmp     def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482A01:             ; jumptable 004829EC cases 2,5
mov     ds:word_55A356, 6
jmp     def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482A0F:             ; jumptable 004829EC cases 1,3,7
xor     ebx, ebx
mov     ds:word_55A356, bx
jmp     def_4829EC      ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482A1D:
cmp     bh, 4
jnz     short loc_482A32
mov     eax, 6
mov     word ptr ds:dword_55A358, ax
jmp     loc_482992

loc_482A32:
cmp     bh, 7
jnz     loc_482AD3
cmp     dword ptr [eax+10h], 0
jnz     short loc_482A48
mov     byte ptr [ecx+548h], 82h

loc_482A48:
mov     word ptr ds:dword_55A358, 4
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_482A5E
mov     ds:byte_55A35D, 1

loc_482A5E:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_482A80
xor     cl, cl
mov     ds:byte_55A35D, cl
xor     esi, esi
mov     word ptr ds:dword_55A358+2, si
xor     edi, edi
mov     ds:word_55A356, di
jmp     short loc_482AD3

loc_482A80:
cmp     ds:byte_55A35D, 0
jz      short loc_482AD3
mov     edx, ds:dword_55A358
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
and     eax, 7
cmp     eax, 7          ; switch 8 cases
ja      short def_4829EC ; jumptable 004829EC default case
; jumptable 00482AA6 default case
jmp     jpt_482AA6[eax*4] ; switch jump

loc_482AAD:             ; jumptable 00482AA6 cases 0,4,6
mov     ds:word_55A356, 16h
jmp     short def_4829EC ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482AB8:             ; jumptable 00482AA6 cases 2,5
mov     ds:word_55A356, 0Ah
jmp     short def_4829EC ; jumptable 004829EC default case
; jumptable 00482AA6 default case

loc_482AC3:             ; jumptable 00482AA6 cases 1,3,7
xor     edx, edx
mov     ds:word_55A356, dx

def_4829EC:             ; jumptable 004829EC default case
inc     word ptr ds:dword_55A358+2 ; jumptable 00482AA6 default case

loc_482AD3:
mov     al, byte ptr ds:dword_55A358
mov     byte ptr ds:dword_5F84CB+1, al
mov     al, byte ptr ds:word_55A356
mov     byte ptr ds:dword_5F84CB+2, al
jmp     loc_48243D
sub_4828FA endp




sub_482AEC proc near
push    ecx
push    edx
mov     edx, [eax+2Ch]
mov     ecx, [eax+30h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_482B01
mov     byte ptr [edx+0Dh], 1
inc     byte ptr [edx+0Eh]

loc_482B01:
cmp     dword ptr [eax+10h], 122h
jnz     short loc_482B15
mov     eax, edx
call    sub_4DE336
mov     byte ptr [ecx+0Fh], 1

loc_482B15:
pop     edx
pop     ecx
retn
sub_482AEC endp




sub_482B18 proc near
xor     ah, ah
mov     byte ptr ds:dword_5F84CB+1, ah
mov     byte ptr ds:dword_5F84CB+2, ah
retn
sub_482B18 endp




sub_482B27 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 5
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 400h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 1BE0h
mov     word ptr ds:dword_77EA5A, 800h
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_482B27 endp




sub_482B79 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, ds:dword_77E6DC
lea     eax, [edi+38h]
mov     ds:dword_77E6DC, eax
mov     esi, eax
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 4
mov     edx, esi
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
add     eax, offset unk_55A334
mov     ebx, 4
mov     edx, edi
call    sub_4EECEF
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A31C
mov     ebx, 3
mov     edx, esi
call    sub_4EECEF
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, edx
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
jmp     loc_48243D
sub_482B79 endp




sub_482C19 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_482C1F[edx*4]
pop     edx
retn
sub_482C19 endp




sub_482C28 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_482C43
cmp     al, 1
jz      short loc_482C55
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_482C43:
mov     edx, 80h
mov     eax, 8
call    sub_4DC979
inc     byte ptr [esi+5]

loc_482C55:
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_482D21
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51BF4C
mov     dword ptr [esi+0A4h], offset unk_51C140
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 400h
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 1900h
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
mov     byte ptr [ecx+548h], 0
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0
mov     byte ptr [esi+7], 0
call    sub_49DBD1
call    sub_49DECF

loc_482D21:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_482C28 endp

db 8Dh, 40h, 0
jpt_482D64 dd offset loc_482D6B ; jump table for switch statement
dd offset loc_482D73
dd offset loc_482D8D
dd offset loc_482DB8
dd offset loc_482EB6



sub_482D3D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
call    sub_47EBCB
test    eax, eax
jz      short loc_482D54
mov     byte ptr [edx+6], 1

loc_482D54:
mov     al, [edx+5]
cmp     al, 4           ; switch 5 cases
ja      def_482D64      ; jumptable 00482D64 default case
and     eax, 0FFh
jmp     jpt_482D64[eax*4] ; switch jump

loc_482D6B:             ; jumptable 00482D64 case 0
inc     byte ptr [ecx+9]

loc_482D6E:
inc     byte ptr [edx+5]
jmp     short loc_482DAA

loc_482D73:             ; jumptable 00482D64 case 1
call    sub_436868
or      byte ptr [ecx+0BDh], 20h
mov     byte ptr [edx+6], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
jmp     short loc_482D6E

loc_482D8D:             ; jumptable 00482D64 case 2
mov     eax, edx
call    sub_483029
mov     eax, edx
call    sub_483245
mov     bh, [edx+6]
cmp     bh, 1
jnz     short loc_482DAA
add     [edx+4], bh

loc_482DA6:
mov     byte ptr [edx+5], 0

loc_482DAA:
call    sub_49DBD1

def_482D64:             ; jumptable 00482D64 default case
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_482DB8:             ; jumptable 00482D64 case 3
call    sub_4D8ECC
test    eax, eax
jz      short loc_482DAA
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_51C150
mov     dword ptr [edx+0A4h], offset unk_51C3B4
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0FE00h
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 1900h
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
mov     word ptr [ecx+542h], 940h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     ecx, [edx+24h]
mov     word ptr [ecx+14h], 0FE40h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 1978h
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
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 140h
mov     word ptr [ecx+58h], 0
inc     byte ptr [edx+5]
mov     byte ptr [edx+7], 0
jmp     loc_482DAA

loc_482EB6:             ; jumptable 00482D64 case 4
cmp     byte ptr [edx+8], 0FFh
jz      short loc_482EDF
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bh, [edx+6]
cmp     bh, 1
jnz     loc_482DAA
mov     byte ptr [edx+6], 2
add     [edx+4], bh
jmp     loc_482DA6

loc_482EDF:
inc     byte ptr [edx+4]
jmp     loc_482DA6
sub_482D3D endp




sub_482EE7 proc near
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_482F01
jbe     short loc_482F16
cmp     al, 2
jz      loc_482FB8
pop     edi
pop     edx
pop     ecx
retn

loc_482F01:
test    al, al
jnz     loc_483008
mov     eax, [ecx+28h]
call    sub_4DE2F6
jmp     loc_482FEF

loc_482F16:
mov     al, [ecx+5]
test    al, al
jbe     short loc_482F29

loc_482F1D:
cmp     al, 1
jz      loc_482FEF
pop     edi
pop     edx
pop     ecx
retn

loc_482F29:
call    sub_4E1D8A
mov     edx, 80h
mov     eax, 76h ; 'v'
call    sub_4DC979
call    sub_4D8EB1
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE00h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 0FE000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 940h
mov     ds:word_5F88A8, di
xor     ah, ah
mov     ds:byte_5F88AC, ah

loc_482FB1:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
retn

loc_482FB8:
mov     al, [ecx+5]
test    al, al
ja      loc_482F1D
call    sub_4E1D8A
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4D8EB1
xor     eax, eax
call    sub_4834D4
mov     eax, offset byte_5F8364
call    sub_48351C
jmp     short loc_482FB1

loc_482FEF:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [ecx], 0

loc_483008:
pop     edi
pop     edx
pop     ecx
retn
sub_482EE7 endp

db 90h
jpt_483047 dd offset loc_48304E ; jump table for switch statement
dd offset loc_483062
dd offset loc_4830E6
dd offset loc_4830F5
dd offset loc_48316E
dd offset loc_4831E7
dd offset loc_4831F2



sub_483029 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_483047      ; jumptable 00483047 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_483047[ecx*4] ; switch jump

loc_48304E:             ; jumptable 00483047 case 0
cmp     dword ptr [edx+10h], 3Ch ; '<'
jnz     def_483047      ; jumptable 00483047 default case
inc     al
mov     [edx+0Ah], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_483062:             ; jumptable 00483047 case 1
mov     cx, word ptr ds:dword_5F83B8+2
and     ch, 0Fh
cmp     cx, 400h
jge     short loc_4830D3
or      ds:byte_5F8421, 10h
mov     eax, 400h
mov     word ptr ds:dword_5F889A+2, ax
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 4000000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, si

loc_4830CB:
inc     byte ptr [edx+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4830D3:
mov     dx, ds:word_5F848C

loc_4830DA:
mov     ds:word_57096A, dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4830E6:             ; jumptable 00483047 case 2
cmp     dword ptr [edx+10h], 82h
jnz     def_483047      ; jumptable 00483047 default case
jmp     short loc_4830CB

loc_4830F5:             ; jumptable 00483047 case 3
mov     ecx, ds:dword_5F8376
sar     ecx, 10h
cmp     ecx, 0FFFFFE40h
jge     short loc_483162
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE40h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 0FE400000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
mov     word ptr ds:dword_5F88A4, bx
mov     word ptr ds:dword_5F88A4+2, 400h
mov     ds:word_5F88A8, bx
jmp     loc_4830CB

loc_483162:
mov     dx, ds:word_5F8488
jmp     loc_4830DA

loc_48316E:             ; jumptable 00483047 case 4
mov     cx, word ptr ds:dword_5F83B8+2
and     ch, 0Fh
cmp     cx, 800h
jle     short loc_4831DB
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0FE40h
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 1900h
mov     ds:dword_5F888C, 0FE400000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 19000000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
jmp     loc_4830CB

loc_4831DB:
mov     dx, ds:word_5F848E
jmp     loc_4830DA

loc_4831E7:             ; jumptable 00483047 case 5
inc     byte ptr ds:dword_5F836C+1
jmp     loc_4830CB

loc_4831F2:             ; jumptable 00483047 case 6
cmp     byte ptr ds:dword_5F836C+1, 0
jnz     short def_483047 ; jumptable 00483047 default case
cmp     byte ptr [edx+0Bh], 5
jnz     short def_483047 ; jumptable 00483047 default case
mov     bh, ds:byte_5F8421
and     bh, 9Fh
mov     ds:byte_5F8421, bh
mov     cl, bh
or      cl, 40h
mov     ds:byte_5F8421, cl
mov     eax, 240006h
call    sub_4D8E42
inc     byte ptr [edx+5]

def_483047:             ; jumptable 00483047 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_483029 endp

jpt_48325F dd offset loc_483266 ; jump table for switch statement
dd offset loc_48327F
dd offset loc_483337
dd offset loc_4833C5
dd offset loc_4833D1
dd offset def_48325F



sub_483245 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     ecx, [eax+24h]
mov     al, [eax+0Bh]
cmp     al, 5           ; switch 6 cases
ja      def_48325F      ; jumptable 0048325F default case, case 5
xor     edx, edx
mov     dl, al
jmp     jpt_48325F[edx*4] ; switch jump

loc_483266:             ; jumptable 0048325F case 0
cmp     dword ptr [ebx+10h], 3Ch ; '<'
jnz     def_48325F      ; jumptable 0048325F default case, case 5
mov     eax, offset unk_51BF10
call    sub_49DB4D
jmp     loc_48332F

loc_48327F:             ; jumptable 0048325F case 1
mov     esi, [ebx+10h]
sub     esi, 3Ch ; '<'
mov     edi, 20h ; ' '
sub     edi, esi
mov     ebp, edi
shl     ebp, 0Ah
mov     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
lea     edx, [eax+ebp]
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ecx+14h], ax
mov     eax, edi
shl     eax, 5
add     eax, edi
shl     eax, 8
imul    edx, esi, 1C7Bh
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ecx+18h], ax
mov     eax, dword ptr ds:unk_564C32[esi*2]
sar     eax, 10h
shl     eax, 9
neg     eax
sar     eax, 0Ch
movsx   edx, ax
mov     eax, ecx
call    sub_42C592
cwde
add     eax, edx
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
cmp     dword ptr [ebx+10h], 5Ch ; '\'

loc_483322:             ; jumptable 0048325F default case, case 5
jnz     def_48325F
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0

loc_48332F:
inc     byte ptr [ebx+0Bh]
jmp     def_48325F      ; jumptable 0048325F default case, case 5

loc_483337:             ; jumptable 0048325F case 2
mov     esi, [ebx+10h]
sub     esi, 5Ch ; '\'
mov     edi, 14h
sub     edi, esi
mov     ebp, edi
shl     ebp, 3
add     ebp, edi
shl     ebp, 2
sub     ebp, edi
shl     ebp, 2
mov     eax, esi
shl     eax, 6
mov     edx, eax
shl     eax, 3
sub     eax, edx
neg     eax
lea     edx, [eax+ebp]
mov     ebp, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     [ecx+14h], ax
imul    edx, edi, 1C7Bh
imul    esi, 1978h
add     edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ebp
mov     [ecx+18h], ax
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
cmp     dword ptr [ebx+10h], 70h ; 'p'
jmp     loc_483322

loc_4833C5:             ; jumptable 0048325F case 3
cmp     dword ptr [ebx+10h], 0E6h
jmp     loc_483322

loc_4833D1:             ; jumptable 0048325F case 4
cmp     dword ptr [ebx+10h], 104h
jnz     short def_48325F ; jumptable 0048325F default case, case 5
inc     al
mov     [ebx+0Bh], al

def_48325F:             ; jumptable 0048325F default case, case 5
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_4833E5:
retn
sub_483245 endp




sub_4833E6 proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, offset byte_5F8364
cmp     dword ptr [eax+10h], 0
jnz     short loc_48340E
or      ds:byte_5F8364, 2
mov     ds:byte_5F88AC, 88h
mov     eax, 1
call    sub_4834D4

loc_48340E:
mov     esi, [edx+10h]
cmp     esi, 14h
jz      short loc_483420
cmp     esi, 32h ; '2'
jz      short loc_483420
cmp     esi, 50h ; 'P'
jnz     short loc_483427

loc_483420:
mov     eax, 2
jmp     short loc_48343B

loc_483427:
cmp     esi, 28h ; '('
jz      short loc_483436
cmp     esi, 46h ; 'F'
jz      short loc_483436
cmp     esi, 64h ; 'd'
jnz     short loc_483440

loc_483436:
mov     eax, 1

loc_48343B:
call    sub_4834D4

loc_483440:
mov     eax, ecx
call    sub_48351C
pop     esi
pop     edx
pop     ecx
retn
sub_4833E6 endp




sub_48344B proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48346C
and     ds:byte_5F8364, 0FDh
xor     dh, dh
mov     byte ptr ds:dword_5F84CB+1, dh
mov     byte ptr ds:dword_5F84CB+2, dh
call    sub_4834C4

loc_48346C:
pop     edx
retn
sub_48344B endp




sub_48346E proc near
push    edx
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_48349F

loc_483476:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
call    sub_4DE3EA
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_483476
mov     eax, offset unk_51BF24
call    sub_49DB4D

loc_48349F:
pop     edx
retn
sub_48346E endp




sub_4834A1 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4834AF
call    sub_4834C4

loc_4834AF:
cmp     byte ptr [edx+7], 1
jnz     short loc_4834C2
mov     eax, offset unk_51BF38
call    sub_49DB4D
inc     byte ptr [edx+7]

loc_4834C2:
pop     edx

locret_4834C3:
retn
sub_4834A1 endp




sub_4834C4 proc near
push    edx
mov     edx, [eax+24h]
inc     byte ptr [edx+8]
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0
pop     edx
retn
sub_4834C4 endp




sub_4834D4 proc near
push    edx
xor     edx, edx
mov     word ptr ds:dword_55A362+2, dx
mov     word ptr ds:dword_55A362, dx
mov     ds:word_55A360, dx
mov     ds:word_55A36A, dx
mov     ds:word_55A368, dx
mov     ds:word_55A366, dx
mov     edx, ds:off_51C436[eax*4]
mov     ds:dword_55A36C, edx
mov     eax, ds:off_51C442[eax*4]
mov     ds:dword_55A370, eax
pop     edx
retn
sub_4834D4 endp




sub_48351C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset word_55A360
mov     bx, ds:word_55A360
mov     word ptr ds:dword_55A362, bx
mov     ebx, ds:dword_55A362
sar     ebx, 10h
mov     ecx, ds:dword_55A36C
mov     bx, [ecx+ebx*2+2]
cmp     bx, 3FFFh
jb      short loc_483563
jbe     short loc_483567
cmp     bx, 7FFFh
jnz     short loc_483563
xor     ebx, ebx
mov     word ptr ds:dword_55A362+2, bx
jmp     short loc_483567

loc_483563:
inc     word ptr [eax+4]

loc_483567:
mov     ecx, [eax+2]
sar     ecx, 10h
mov     ebx, [eax+0Ch]
mov     bx, [ebx+ecx*2]
mov     [eax], bx
mov     bx, [eax+6]
mov     [eax+8], bx
mov     ecx, [eax+8]
sar     ecx, 10h
mov     ebx, [eax+10h]
mov     bx, [ebx+ecx*2+2]
cmp     bx, 3FFFh
jb      short loc_4835A5
jbe     short loc_4835A9
cmp     bx, 7FFFh
jnz     short loc_4835A5
mov     word ptr [eax+0Ah], 0
jmp     short loc_4835A9

loc_4835A5:
inc     word ptr [eax+0Ah]

loc_4835A9:
mov     ebx, [eax+8]
sar     ebx, 10h
mov     ecx, [eax+10h]
mov     bx, [ecx+ebx*2]
mov     [eax+6], bx
mov     bl, [eax]
mov     [edx+168h], bl
mov     al, [eax+6]
mov     [edx+169h], al
pop     edx
pop     ecx
pop     ebx
retn
sub_48351C endp




sub_4835CF proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_4835D5[edx*4]
pop     edx
retn
sub_4835CF endp

db 90h
jpt_48362A dd offset loc_483631 ; jump table for switch statement
dd offset loc_483636
dd offset loc_48366C
dd offset loc_4836FA
dd offset loc_483734
dd offset loc_48378D
dd offset loc_4837BF
dd offset loc_4837F5
dd offset loc_483830
dd offset loc_483850
dd offset loc_48386C
dd offset loc_483883



sub_48360F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 0Bh         ; switch 12 cases
ja      def_48362A      ; jumptable 0048362A default case
xor     edx, edx
mov     dl, al
jmp     jpt_48362A[edx*4] ; switch jump

loc_483631:             ; jumptable 0048362A case 0
inc     al
mov     [ecx+6], al

loc_483636:             ; jumptable 0048362A case 1
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      def_48362A      ; jumptable 0048362A default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D0A8
mov     dword ptr [ecx+0A4h], offset unk_51D098
inc     byte ptr [ecx+6]

loc_48366C:             ; jumptable 0048362A case 2
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 1
or      byte ptr [esi+0BDh], 10h
mov     dword ptr [esi+528h], 0EE180000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 5970000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 0
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
mov     eax, ds:dword_55A374
mov     byte ptr [eax+4], 2
mov     byte ptr [eax+8], 0
mov     word ptr [eax+56h], 0E77h
mov     eax, ds:dword_55A378
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
mov     word ptr [eax+56h], 0ECEh

loc_4836F2:
inc     byte ptr [ecx+6]
jmp     def_48362A      ; jumptable 0048362A default case

loc_4836FA:             ; jumptable 0048362A case 3
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_48362A      ; jumptable 0048362A default case
inc     al
mov     [ecx+6], al
mov     byte ptr [ecx+7], 1
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D118
mov     dword ptr [ecx+0A4h], offset unk_51D0F0

loc_483734:             ; jumptable 0048362A case 4
mov     eax, [ecx+0A4h]
mov     dl, [eax+1]
cmp     dl, 1
jnz     def_48362A      ; jumptable 0048362A default case
add     [ecx+6], dl
mov     dword ptr [esi+528h], 0EE180000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 5970000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+542h], 4E7h
mov     dword ptr [ecx+0Ch], 0Fh
jmp     def_48362A      ; jumptable 0048362A default case

loc_48378D:             ; jumptable 0048362A case 5
mov     edi, [ecx+0Ch]
dec     edi
mov     [ecx+0Ch], edi
test    edi, edi
jge     def_48362A      ; jumptable 0048362A default case
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
jmp     def_48362A      ; jumptable 0048362A default case

loc_4837BF:             ; jumptable 0048362A case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4837F5 ; jumptable 0048362A case 7
mov     edx, 2
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A374
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0

loc_4837F5:             ; jumptable 0048362A case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_483830 ; jumptable 0048362A case 8
call    sub_49DF64
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A374
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0

loc_483830:             ; jumptable 0048362A case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_483850 ; jumptable 0048362A case 9
call    sub_49DF64
inc     byte ptr [ecx+6]
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 4
mov     word ptr [eax+0Ah], 0

loc_483850:             ; jumptable 0048362A case 9
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     short def_48362A ; jumptable 0048362A default case
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
jmp     loc_4836F2

loc_48386C:             ; jumptable 0048362A case 10
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_48362A ; jumptable 0048362A default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 8
jmp     short def_48362A ; jumptable 0048362A default case

loc_483883:             ; jumptable 0048362A case 11
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     short def_48362A ; jumptable 0048362A default case
mov     eax, esi
call    sub_4B565A
mov     byte ptr [ecx], 0
mov     byte ptr ds:dword_77E954, 1
mov     eax, 3
call    sub_47E8B8
call    sub_484D64
xor     eax, eax
call    sub_484CFC

def_48362A:             ; jumptable 0048362A default case
cmp     byte ptr [ecx+6], 1
jbe     short loc_4838CB
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4838CB
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_4838CB:
mov     dh, [ecx+6]
cmp     dh, 2
jbe     loc_484255
cmp     dh, 0Bh
jnb     loc_484255
call    sub_47EBCB
test    eax, eax
jz      loc_484255
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
mov     byte ptr [ecx+6], 0Bh
mov     dword ptr [ecx+0Ch], 1
mov     eax, 0Ah
call    sub_47E8B8
mov     dword ptr [esi+528h], 0EE180000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 5970000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+542h], 4E7h
jmp     loc_484255
sub_48360F endp

db 8Bh, 0C0h
jpt_4839A4 dd offset loc_4839AB ; jump table for switch statement
dd offset loc_4839AB
dd offset loc_483A0B
dd offset loc_483A9C
dd offset loc_483B47
dd offset loc_483B92
dd offset loc_483BCB
dd offset loc_483BDB



sub_483983 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+1Ch+var_1C], offset byte_5F8364
mov     al, [eax+6]
cmp     al, 7           ; switch 8 cases
ja      def_4839A4      ; jumptable 004839A4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4839A4[edx*4] ; switch jump

loc_4839AB:             ; jumptable 004839A4 cases 0,1
mov     eax, [esp+1Ch+var_1C]
call    sub_4B55D5
test    eax, eax
jz      def_4839A4      ; jumptable 004839A4 default case
add     byte ptr [ebp+6], 2
mov     byte ptr [ebp+7], 0Ah
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     edi, eax
lea     edi, [edi+538h]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+528h]
mov     esi, eax
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, eax
lea     edi, [edi+540h]
mov     esi, eax
lea     esi, [esi+54h]
movsd
movsd
mov     byte ptr [eax+548h], 30h ; '0'

loc_483A0B:             ; jumptable 004839A4 case 2
mov     bl, [ebp+7]
test    bl, bl
jnz     loc_483A90
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+14h]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
call    sub_42C592
cmp     edx, eax
jnz     def_4839A4      ; jumptable 004839A4 default case
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, offset unk_51D5C0
call    sub_4DE552
test    ax, ax
jnz     short loc_483A70
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+548h], 30h ; '0'
inc     byte ptr [ebp+6]
mov     edx, 1Fh

loc_483A64:
xor     eax, eax
call    sub_4A0E24
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483A70:
mov     edx, [esp+1Ch+var_1C]
mov     byte ptr [edx+548h], 0Dh
add     ax, [edx+542h]
and     ah, 0Fh
mov     [edx+542h], ax
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483A90:
mov     bh, bl
dec     bh
mov     [ebp+7], bh
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483A9C:             ; jumptable 004839A4 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4839A4      ; jumptable 004839A4 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Eh
call    sub_4D89E4
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D248
mov     dword ptr [ebp+0A4h], offset unk_51D230
mov     ds:dword_5F888C, 0F6400000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 13C90000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 8C0h
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_55A380
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A380
mov     word ptr [eax+56h], 600h
inc     byte ptr [ebp+6]
mov     byte ptr [ebp+7], 0Ah
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483B47:             ; jumptable 004839A4 case 4
mov     edx, [ebp+0A4h]
mov     bl, [edx+1]
cmp     bl, 1
jnz     short loc_483B7E
mov     cl, [ebp+7]
test    cl, cl
jnz     short loc_483B75
mov     ax, word ptr ds:dword_5F88A4+2
add     eax, 20h ; ' '
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax
jmp     def_4839A4      ; jumptable 004839A4 default case

loc_483B75:
mov     ch, cl
sub     ch, bl
mov     [ebp+7], ch
jmp     short def_4839A4 ; jumptable 004839A4 default case

loc_483B7E:
cmp     byte ptr [edx], 0FFh
jnz     short def_4839A4 ; jumptable 004839A4 default case
inc     al
mov     [ebp+6], al
mov     edx, 20h ; ' '
jmp     loc_483A64

loc_483B92:             ; jumptable 004839A4 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4839A4 ; jumptable 004839A4 default case
add     al, 2
mov     [ebp+6], al
xor     ebx, ebx
mov     word ptr ds:dword_5F88A4+2, bx
mov     byte ptr ds:dword_77E954, 1

loc_483BB0:
mov     eax, 4
call    sub_47E8B8
call    sub_484D64
mov     eax, 1
call    sub_484CFC
jmp     short def_4839A4 ; jumptable 004839A4 default case

loc_483BCB:             ; jumptable 004839A4 case 6
inc     al
mov     [ebp+6], al
xor     edx, edx
mov     word ptr ds:dword_5F88A4+2, dx
jmp     short loc_483BB0

loc_483BDB:             ; jumptable 004839A4 case 7
mov     byte ptr [ebp+0], 0
mov     eax, offset byte_5F8364
call    sub_4B565A

def_4839A4:             ; jumptable 004839A4 default case
mov     ch, [ebp+6]
cmp     ch, 3
jbe     short loc_483C08
cmp     ch, 5
jnb     short loc_483C08
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_483C08
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_483C08:
mov     dh, [ebp+6]
cmp     dh, 1
jbe     loc_483C85
cmp     dh, 6
jnb     short loc_483C85
call    sub_47EBCB
test    eax, eax
jz      short loc_483C85
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 4
jnb     short loc_483C50
mov     byte ptr [ebp+6], 6
jmp     short loc_483C54

loc_483C50:
mov     byte ptr [ebp+6], 5

loc_483C54:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+528h], 0F6400000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 13C90000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B

loc_483C85:
add     esp, 4
jmp     loc_484254
sub_483983 endp

db 8Bh, 0C0h
jpt_483CE5 dd offset loc_483CEC ; jump table for switch statement
dd offset loc_483D5A
dd offset loc_483D79
dd offset loc_483E93
dd offset loc_483EE0
dd offset loc_483F2E
dd offset loc_483F66
dd offset loc_483F9A
dd offset loc_483FDF
dd offset loc_484030
dd offset loc_4840EC
dd offset loc_484105
dd offset loc_484132



sub_483CC3 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+34h+var_1C], offset byte_5F8364
mov     al, [eax+6]
cmp     al, 0Ch         ; switch 13 cases
ja      def_483CE5      ; jumptable 00483CE5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_483CE5[edx*4] ; switch jump

loc_483CEC:             ; jumptable 00483CE5 case 0
mov     edx, ds:dword_55A378
lea     edi, [esp+34h+var_24]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, [edx+12h]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [edx+14h]
sar     eax, 10h
sub     eax, 50h ; 'P'
mov     [esp+34h+var_30], eax
mov     eax, [edx+16h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     ecx, ds:dword_77E964
add     ecx, 61h ; 'a'
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
lea     ebx, [eax+20h]
mov     edx, 12Ch
mov     eax, esp
call    sub_42AAD8
or      ds:byte_5F8421, 40h
and     ds:byte_5F8364, 0FDh

loc_483D52:
inc     byte ptr [ebp+6]
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483D5A:             ; jumptable 00483CE5 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     byte ptr [ebp+6]
mov     edx, 2Dh ; '-'
call    sub_4A0E24
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483D79:             ; jumptable 00483CE5 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_483CE5      ; jumptable 00483CE5 default case
call    sub_42A9A2
and     ds:byte_5F8421, 0BFh
inc     byte ptr [ebp+6]
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D2DC
mov     dword ptr [ebp+0A4h], offset unk_51D2B4
mov     edx, 2Eh ; '.'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 0F4940000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 48C0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     ecx, ecx
mov     word ptr ds:dword_5F88A4, cx
mov     word ptr ds:dword_5F88A4+2, 82Ch
mov     ds:word_5F88A8, cx
mov     ds:byte_5F88AC, 30h ; '0'
call    sub_484D64
mov     eax, 1
call    sub_484CFC
mov     eax, 606h
call    sub_47EA91
mov     eax, 607h
call    sub_47EA91
mov     eax, ds:dword_55A380
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
mov     eax, ds:dword_55A384
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+8], 0
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483E93:             ; jumptable 00483CE5 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
or      ds:byte_5F8364, 2
call    sub_49DF64
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A380

loc_483ED5:
mov     dl, [edx+1]
mov     [eax+0Ch], dl
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483EE0:             ; jumptable 00483CE5 case 4
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_483CE5      ; jumptable 00483CE5 default case
mov     eax, 606h
call    sub_47EA91
inc     byte ptr [ebp+6]
mov     edx, 2Fh ; '/'
xor     eax, eax
call    sub_4A0E24
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A378

loc_483F1F:
mov     byte ptr [eax+9], 0

loc_483F23:
mov     word ptr [eax+0Ah], 0
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483F2E:             ; jumptable 00483CE5 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
mov     edx, 31h ; '1'
xor     eax, eax
call    sub_4A0E24
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A384
mov     byte ptr [eax+9], 2
jmp     short loc_483F23

loc_483F66:             ; jumptable 00483CE5 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4A0E24
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A384
jmp     short loc_483F1F

loc_483F9A:             ; jumptable 00483CE5 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     al
mov     [ebp+6], al
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A384
mov     dl, [edx+1]
mov     [eax+0Ch], dl
mov     edx, ds:dword_55A388
mov     dl, [edx+1]
mov     [eax+0Dh], dl
mov     dword ptr [ebp+0Ch], 0C8h
jmp     def_483CE5      ; jumptable 00483CE5 default case

loc_483FDF:             ; jumptable 00483CE5 case 8
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
cmp     ebx, 8Ch
jnz     short loc_484009
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A388
mov     dl, [edx+1]
mov     [eax+0Ch], dl

loc_484009:
cmp     dword ptr [ebp+0Ch], 50h ; 'P'
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     byte ptr [ebp+6]
mov     eax, ds:dword_55A384
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A388
jmp     loc_483ED5

loc_484030:             ; jumptable 00483CE5 case 9
mov     esi, [ebp+0Ch]
dec     esi
mov     [ebp+0Ch], esi
test    esi, esi
jge     def_483CE5      ; jumptable 00483CE5 default case
call    sub_49DF64
inc     byte ptr [ebp+6]
mov     ds:dword_5F888C, 0F5D70000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 4540000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F83B8+2, 6CCh
mov     eax, 3
call    sub_484DF3
mov     eax, 4
call    sub_484DF3
mov     eax, 1
call    sub_484DF3
mov     dword ptr [ebp+0Ch], 0B4h
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Fh
call    sub_4D89E4
mov     eax, ds:dword_55A388
mov     word ptr [eax+56h], 800h
mov     eax, ds:dword_55A388
or      byte ptr [eax+0Fh], 40h
mov     eax, ds:dword_55A388
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_55A388
mov     byte ptr [eax+0Ah], 0
mov     eax, ds:dword_55A388
mov     byte ptr [eax+0Bh], 0
jmp     short def_483CE5 ; jumptable 00483CE5 default case

loc_4840EC:             ; jumptable 00483CE5 case 10
mov     ecx, [ebp+0Ch]
dec     ecx
mov     [ebp+0Ch], ecx
test    ecx, ecx
jge     short def_483CE5 ; jumptable 00483CE5 default case
mov     word ptr ds:dword_5F88A4+2, 800h
jmp     loc_483D52

loc_484105:             ; jumptable 00483CE5 case 11
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 5
call    sub_484DF3
mov     byte ptr [ebp+0], 0
xor     eax, eax
call    sub_47E8B8
jmp     short def_483CE5 ; jumptable 00483CE5 default case

loc_484132:             ; jumptable 00483CE5 case 12
call    sub_42A9A2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr [ebp+0], 0
xor     eax, eax
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2

def_483CE5:             ; jumptable 00483CE5 default case
mov     dl, [ebp+6]
cmp     dl, 2
jbe     short loc_484179
cmp     dl, 0Bh
jnb     short loc_484179
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_484179
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_484179:
cmp     byte ptr [ebp+6], 0Bh
jnb     loc_484251
call    sub_47EBCB
test    eax, eax
jz      loc_484251
mov     eax, 3
call    sub_484DF3
mov     eax, 4
call    sub_484DF3
mov     eax, 1
call    sub_484DF3
mov     eax, 5
call    sub_484DF3
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 2
jnb     short loc_4841E6
mov     byte ptr [ebp+6], 0Ch
jmp     short loc_4841EA

loc_4841E6:
mov     byte ptr [ebp+6], 0Bh

loc_4841EA:
mov     eax, [esp+34h+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     dword ptr [eax+528h], 0F5D70000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 4540000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+540h], 0
mov     word ptr [eax+542h], 800h
mov     word ptr [eax+544h], 0
mov     byte ptr [eax+548h], 0

loc_484251:
add     esp, 1Ch

loc_484254:
pop     ebp

loc_484255:
pop     edi

loc_484256:
pop     esi

loc_484257:
pop     edx
pop     ecx
pop     ebx
retn
sub_483CC3 endp ; sp-analysis failed

jpt_4842C7 dd offset loc_4842CE ; jump table for switch statement
dd offset loc_48433B
dd offset loc_48435A
dd offset loc_484427
dd offset loc_48444E
dd offset loc_48447A
dd offset loc_4844B1
dd offset loc_4844D4
dd offset loc_484559
dd offset loc_48458B
dd offset loc_4845BD
dd offset loc_48464B
dd offset loc_484671
dd offset loc_4846A8
dd offset loc_4846BC
dd offset loc_4846E2
dd offset loc_484761
dd offset loc_484792



sub_4842A3 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     edx, offset byte_5F8364
mov     [esp+34h+var_1C], edx
mov     al, [eax+6]
cmp     al, 11h         ; switch 18 cases
ja      def_4842C7      ; jumptable 004842C7 default case
and     eax, 0FFh
jmp     jpt_4842C7[eax*4] ; switch jump

loc_4842CE:             ; jumptable 004842C7 case 0
mov     edx, ds:dword_55A374
lea     edi, [esp+34h+var_24]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, [edx+12h]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [edx+14h]
sar     eax, 10h
sub     eax, 80h
mov     [esp+34h+var_30], eax
mov     eax, [edx+16h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     ecx, ds:dword_77E964
sub     ecx, 30h ; '0'
mov     edx, [esp+34h+var_1C]
add     edx, 14h
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
mov     edx, 140h
mov     esi, esp
mov     ebx, eax
mov     eax, esi
call    sub_42AAD8
mov     eax, [esp+34h+var_1C]
or      byte ptr [eax+0BDh], 40h
and     byte ptr [eax], 0FDh
jmp     loc_4844CC

loc_48433B:             ; jumptable 004842C7 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 5Fh ; '_'
inc     byte ptr [ebp+6]
call    sub_4A0E24
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48435A:             ; jumptable 004842C7 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_4842C7      ; jumptable 004842C7 default case
call    sub_42A9A2
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D530
mov     dword ptr [ebp+0A4h], offset unk_51D510
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 18BD0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 50290000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 0DE8h
mov     ds:word_5F88A8, si
mov     ds:byte_5F88AC, 30h ; '0'
call    sub_484D64
mov     eax, 0Dh

loc_48441D:
call    sub_484CFC
jmp     loc_4844CC

loc_484427:             ; jumptable 004842C7 case 3
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 5Ah ; 'Z'

loc_48444E:             ; jumptable 004842C7 case 4
mov     edx, [ebp+0Ch]
dec     edx
mov     [ebp+0Ch], edx
test    edx, edx
jge     def_4842C7      ; jumptable 004842C7 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 28h ; '('
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48447A:             ; jumptable 004842C7 case 5
mov     edi, [ebp+0Ch]
dec     edi
mov     [ebp+0Ch], edi
test    edi, edi
jge     def_4842C7      ; jumptable 004842C7 default case
mov     eax, ds:dword_55A37C
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0

loc_484498:
mov     eax, 609h
call    sub_47E8B8

loc_4844A2:
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 14h
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4844B1:             ; jumptable 004842C7 case 6
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
test    ebx, ebx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 35h ; '5'

loc_4844C5:
xor     eax, eax
call    sub_4A0E24

loc_4844CC:
inc     byte ptr [ebp+6]
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4844D4:             ; jumptable 004842C7 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
and     ds:byte_5F8364, 0FDh
mov     ds:dword_5F888C, 18220000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 4F7C0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 9B2h
call    sub_49DF64
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
call    sub_484D64
mov     eax, 0Eh
jmp     loc_48441D

loc_484559:             ; jumptable 004842C7 case 8
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A37C
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
jmp     loc_4844A2

loc_48458B:             ; jumptable 004842C7 case 9
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
test    ebx, ebx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     eax, 609h
call    sub_47E8B8
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 168h
mov     ds:dword_55A3B4, offset unk_51D5C8
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4845BD:             ; jumptable 004842C7 case 10
mov     ecx, [ebp+0Ch]
test    ecx, ecx
jz      short loc_4845CA
lea     ebx, [ecx-1]
mov     [ebp+0Ch], ebx

loc_4845CA:
mov     esi, [ebp+0Ch]
test    esi, esi
jz      short loc_4845F5
mov     eax, ds:dword_55A3B4
movsx   edx, word ptr [eax]
cmp     edx, esi
jnz     short loc_4845F5
mov     edx, [esp+34h+var_1C]
add     edx, 14h
mov     eax, [eax]
sar     eax, 10h
call    sub_4D8BC3
add     ds:dword_55A3B4, 4

loc_4845F5:
cmp     dword ptr [ebp+0Ch], 96h
jnz     short loc_484622
mov     edx, 36h ; '6'
xor     eax, eax
call    sub_4A0E24
mov     eax, 609h
call    sub_47E8B8
xor     ebx, ebx
xor     edx, edx
mov     eax, 80010015h
call    sub_4D89E4

loc_484622:
cmp     dword ptr [ebp+0Ch], 5Ah ; 'Z'
jg      def_4842C7      ; jumptable 004842C7 default case
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
inc     byte ptr [ebp+6]
mov     eax, 609h
call    sub_47E8B8
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48464B:             ; jumptable 004842C7 case 11
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      def_4842C7      ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
mov     edx, 37h ; '7'
jmp     loc_4844C5

loc_484671:             ; jumptable 004842C7 case 12
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
call    sub_49DF64
call    sub_484D64
mov     eax, 0Fh
call    sub_484CFC
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 1Eh
or      ds:byte_5F8364, 2
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4846A8:             ; jumptable 004842C7 case 13
mov     eax, [ebp+0Ch]
dec     eax
mov     [ebp+0Ch], eax
test    eax, eax
jge     def_4842C7      ; jumptable 004842C7 default case
jmp     loc_484498

loc_4846BC:             ; jumptable 004842C7 case 14
mov     esi, [ebp+0Ch]
dec     esi
mov     [ebp+0Ch], esi
test    esi, esi
jge     def_4842C7      ; jumptable 004842C7 default case
mov     bl, 1
mov     ds:byte_5F88AC, bl
add     [ebp+6], bl
mov     dword ptr [ebp+0Ch], 0Ch
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4846E2:             ; jumptable 004842C7 case 15
mov     edx, ds:dword_55A374
mov     ebx, ds:dword_5F88A4
sar     ebx, 10h
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
mov     ecx, 50h ; 'P'
call    sub_4DE552
mov     ds:word_55A3B8, ax
add     ax, word ptr ds:dword_5F88A4+2
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, offset byte_5F8364
call    sub_4DD47D
mov     ecx, [ebp+0Ch]
dec     ecx
mov     [ebp+0Ch], ecx
test    ecx, ecx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 39h ; '9'
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_5F88AC, 32h ; '2'
mov     word ptr ds:dword_5F88A4+2, 800h
jmp     loc_4844CC

loc_484761:             ; jumptable 004842C7 case 16
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4842C7 ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ebp+0], 0
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
jmp     short loc_4847BA

loc_484792:             ; jumptable 004842C7 case 17
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4842C7 ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
call    sub_42A9A2
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ebp+0], 0

loc_4847BA:
call    sub_484D64
mov     eax, 6
call    sub_47E8B8
mov     eax, 0Bh
call    sub_47E8B8
mov     eax, 10h
call    sub_484CFC

def_4842C7:             ; jumptable 004842C7 default case
mov     ah, [ebp+6]
cmp     ah, 2
jbe     short loc_4847FC
cmp     ah, 10h
jnb     short loc_4847FC
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4847FC
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_4847FC:
cmp     byte ptr [ebp+6], 10h
jnb     loc_484251
call    sub_47EBCB
test    eax, eax
jz      loc_484251
mov     eax, 607h
call    sub_47E8B8
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 2
jnb     short loc_48484B
mov     byte ptr [ebp+6], 11h
jmp     short loc_48484F

loc_48484B:
mov     byte ptr [ebp+6], 10h

loc_48484F:
mov     eax, [esp+34h+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     dword ptr [eax+528h], 18820000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 510A0000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+540h], 0
mov     word ptr [eax+542h], 800h
mov     word ptr [eax+544h], 0
jmp     loc_484251
sub_4842A3 endp

db 8Dh, 40h, 0
jpt_4848F9 dd offset loc_484900 ; jump table for switch statement
dd offset loc_484966
dd offset loc_484A2C
dd offset loc_484A45
dd offset loc_484A79
dd offset loc_484AFE
dd offset loc_484B17
dd offset loc_484B57



sub_4848D7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edi, offset byte_5F8364
mov     ebp, ds:dword_55A374
mov     al, [eax+6]
cmp     al, 7           ; switch 8 cases
ja      def_4848F9      ; jumptable 004848F9 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4848F9[edx*4] ; switch jump

loc_484900:             ; jumptable 004848F9 case 0
mov     eax, edi
call    sub_4B55D5
test    eax, eax
jz      def_4848F9      ; jumptable 004848F9 default case
mov     eax, 0Bh
call    sub_484CFC
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484943
mov     ds:dword_77E6B4, offset unk_51D480
jmp     short loc_48494D

loc_484943:
mov     ds:dword_77E6B4, offset unk_51D3F0

loc_48494D:
mov     dword ptr [esi+0A4h], offset unk_51D3D0
inc     byte ptr [esi+6]
mov     edx, 5Eh ; '^'
xor     eax, eax
call    sub_4A0E24

loc_484966:             ; jumptable 004848F9 case 1
mov     byte ptr [edi+8], 3
mov     byte ptr [edi+9], 1
or      byte ptr [edi+0BDh], 10h
mov     eax, 16h
call    sub_47E888
mov     ebp, eax
lea     eax, [edi+528h]
lea     edx, [edi+538h]
test    ebp, ebp
jz      short loc_4849D8
mov     dword ptr [edi+528h], 1CDC0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 50400000h
call    sub_4DD57B
mov     word ptr [edi+540h], 0
mov     word ptr [edi+542h], 59Ch
mov     word ptr [edi+544h], 0
mov     dword ptr [esi+0Ch], 0Ah
jmp     short loc_484A1D

loc_4849D8:
mov     dword ptr [edi+528h], 170B0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 5E9F0000h
call    sub_4DD57B
mov     word ptr [edi+540h], 0
mov     word ptr [edi+542h], 1D1h
mov     word ptr [edi+544h], 0
mov     dword ptr [esi+0Ch], 0Ch

loc_484A1D:
mov     byte ptr [edi+548h], 30h ; '0'

loc_484A24:
inc     byte ptr [esi+6]
jmp     def_4848F9      ; jumptable 004848F9 default case

loc_484A2C:             ; jumptable 004848F9 case 2
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_4848F9      ; jumptable 004848F9 default case
inc     al
mov     [esi+6], al
mov     ds:byte_5F88AC, 1

loc_484A45:             ; jumptable 004848F9 case 3
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, edi
call    sub_4DD47D
cmp     dword ptr [esi+0Ch], 5
jnz     short loc_484A6A
call    sub_49DF64
mov     byte ptr [ebp+9], 3
mov     word ptr [ebp+0Ah], 0

loc_484A6A:
mov     ecx, [esi+0Ch]
dec     ecx
mov     [esi+0Ch], ecx
jnz     def_4848F9      ; jumptable 004848F9 default case
jmp     short loc_484A1D

loc_484A79:             ; jumptable 004848F9 case 4
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     def_4848F9      ; jumptable 004848F9 default case
mov     edx, 47h ; 'G'
xor     eax, eax
call    sub_4A0E24
call    sub_484D64
mov     eax, 0Ch
call    sub_484CFC
mov     edx, ds:dword_55A374
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484ABF
mov     word ptr [edx+56h], 0BB8h
jmp     short loc_484AC5

loc_484ABF:
mov     word ptr [edx+56h], 767h

loc_484AC5:
mov     edx, ds:dword_55A378
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484AE1
mov     word ptr [edx+56h], 800h
jmp     short loc_484AE7

loc_484AE1:
mov     word ptr [edx+56h], 727h

loc_484AE7:
mov     ch, 1
mov     byte ptr ds:dword_77E954, ch
add     [esi+6], ch

loc_484AF2:
