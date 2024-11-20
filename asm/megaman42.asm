loc_460B86:
inc     byte ptr [esi+9]
jmp     def_460B27      ; jumptable 00460B27 default case

loc_460B8E:             ; jumptable 00460B27 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_460B27      ; jumptable 00460B27 default case
mov     edx, 0Bh
call    sub_4A0E24
jmp     short loc_460B86

loc_460BA7:             ; jumptable 00460B27 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_460B27 ; jumptable 00460B27 default case
inc     al
mov     [esi+9], al
call    sub_42A98E
jmp     short def_460B27 ; jumptable 00460B27 default case

loc_460BBC:             ; jumptable 00460B27 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_460B27 ; jumptable 00460B27 default case
mov     al, ds:byte_55A0CC
mov     ds:byte_77E952, al
mov     al, ds:byte_55A0CD
mov     ds:byte_77E953, al
mov     eax, ds:dword_77E95C
mov     ds:dword_77E980, eax
and     ds:byte_5F8421, 0DFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [esi+0Eh], al
xor     dh, dh
mov     byte ptr ds:dword_560BDC+1, dh
mov     byte ptr ds:dword_560BDC, dh

def_460B27:             ; jumptable 00460B27 default case
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460B0A endp




sub_460C1B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_460C2F
cmp     al, 1
jz      short loc_460C6C
pop     edx
pop     ecx
pop     ebx
retn

loc_460C2F:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_460C8A
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, bl
mov     eax, 10h
call    sub_4D9040
mov     ds:word_77EA80, 64h ; 'd'
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_460C6C:
cmp     ds:byte_77EAB8, 0
jnz     short loc_460C8A
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Bh
call    sub_4D89E4
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Bh], 0

loc_460C8A:
pop     edx
pop     ecx
pop     ebx
retn
sub_460C1B endp




sub_460C8E proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     esi, eax
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
mov     ecx, [esi+18Eh]
sar     ecx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
add     eax, ecx
sar     eax, 1
mov     [esp+2Ch+var_2C], eax
mov     ecx, [esi+190h]
sar     ecx, 10h
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
add     eax, ecx
sar     eax, 1
sub     eax, 60h ; '`'
mov     [esp+2Ch+var_28], eax
mov     ecx, [esi+192h]
sar     ecx, 10h
mov     eax, ds:dword_5F837A
sar     eax, 10h
add     eax, ecx
sar     eax, 1
mov     [esp+2Ch+var_24], eax
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
mov     ebx, eax
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     [esp+2Ch+var_1C], eax
mov     ecx, ds:dword_77E964
sub     ebx, 500h
mov     edx, 180h
mov     eax, esp
call    sub_42AAA8
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 80h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
mov     [esi+0B4h], ax
xor     ebx, ebx
mov     edx, 14h
mov     eax, esi
call    sub_4DE96B
mov     edx, ebp
mov     eax, edi
call    sub_4614E2
cmp     eax, 80h
jnb     short loc_460DB8
mov     dword ptr [esi+408h], 1
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF003
mov     edi, eax
shl     eax, 2
add     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 3
neg     eax
sar     eax, 0Ah
mov     ds:dword_55A0C8, eax
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF008
mov     edi, eax
shl     eax, 2
add     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 3
neg     eax
sar     eax, 0Ah
mov     ds:dword_55A0C4, eax
jmp     short loc_460DC2

loc_460DB8:
mov     dword ptr [esi+408h], 0

loc_460DC2:
inc     byte ptr [esi+9]
add     esp, 14h
jmp     loc_46083D
sub_460C8E endp




sub_460DCD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebx, offset byte_5F8364
call    sub_42ABA2
test    eax, eax
jnz     short loc_460E34
lea     edi, [ecx+14h]
lea     esi, [ebx+14h]
mov     edx, edi
mov     eax, esi
call    sub_4614E2
cmp     eax, 80h
jb      short loc_460E34
inc     byte ptr [ecx+9]
mov     ds:byte_5F88AC, 82h
mov     byte ptr [ecx+0Fh], 0
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     edx, edi
mov     eax, esi
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
sub     eax, 800h
mov     [ecx+56h], ax
jmp     loc_46083D

loc_460E34:
call    sub_42ABA2
lea     edi, [ecx+14h]
lea     esi, [ebx+14h]
test    eax, eax
jz      short loc_460EA3
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
test    ebp, ebp
jge     short loc_460E6F
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
mov     eax, ebp
neg     eax
jmp     short loc_460E82

loc_460E6F:
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
mov     eax, ebp

loc_460E82:
and     eax, 0FFFh
cmp     eax, 82h
jg      short loc_460E96
lea     edx, [ebx+14h]
lea     eax, [ecx+14h]
jmp     short loc_460EA7

loc_460E96:
mov     ax, [ecx+0B4h]
add     [ecx+56h], ax
jmp     short loc_460EB0

loc_460EA3:
mov     edx, esi
mov     eax, edi

loc_460EA7:
call    sub_4DDDB4
mov     [ecx+56h], ax

loc_460EB0:
lea     esi, [ecx+14h]
lea     ecx, [ebx+14h]
mov     edx, esi
mov     eax, ecx
call    sub_4614E2
cmp     eax, 80h
jnb     loc_46083D
mov     eax, ds:dword_55A0C4
shl     eax, 8
add     [ebx+528h], eax
mov     eax, ds:dword_55A0C8
shl     eax, 8
add     [ebx+530h], eax
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     byte ptr [ebx+548h], 0Dh
mov     edx, esi
mov     eax, ecx
call    sub_4DDDB4
mov     [ebx+542h], ax
jmp     loc_46083D
sub_460DCD endp




sub_460F13 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Fh]
inc     ah
mov     [ecx+0Fh], ah
cmp     ah, 8
jnz     short loc_460F3F
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+9]

loc_460F3F:
pop     edx
pop     ecx
retn
sub_460F13 endp

jpt_460F80 dd offset loc_460F87 ; jump table for switch statement
dd offset loc_460FFD
dd offset loc_46102F
dd offset loc_46103E



sub_460F52 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Fh]
mov     ah, al
inc     ah
mov     [ecx+0Fh], ah
cmp     al, 0AAh
jb      def_460F80      ; jumptable 00460F80 default case
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
mov     al, [ecx+0Ch]
cmp     al, 3           ; switch 4 cases
ja      def_460F80      ; jumptable 00460F80 default case
xor     edx, edx
mov     dl, al
jmp     jpt_460F80[edx*4] ; switch jump

loc_460F87:             ; jumptable 00460F80 case 0
mov     ax, [ecx+4Eh]
mov     dx, [ecx+46h]
add     edx, eax
mov     [ecx+46h], dx
add     [ecx+16h], dx
cmp     byte ptr [ecx+0Eh], 13h
jnz     short loc_460FC1
mov     byte ptr [ecx+0Ch], 1
mov     byte ptr [ecx+0Dh], 2
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_460FC1:
mov     dl, [ecx+0Eh]
cmp     dl, 3
jnz     short loc_460FD9
mov     word ptr [ecx+46h], 0FFDCh
mov     word ptr [ecx+4Eh], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_460FD9:
cmp     dl, 0Bh
jnz     def_460F80      ; jumptable 00460F80 default case
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
pop     edx
pop     ecx
pop     ebx
retn

loc_460FFD:             ; jumptable 00460F80 case 1
cmp     ah, 0Ch
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     ds:byte_5F88AC, 83h
mov     byte ptr [ecx+0Ch], 2
mov     byte ptr [ecx+0Dh], 2

loc_461011:
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_46102F:             ; jumptable 00460F80 case 2
cmp     ah, 0Ch
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     byte ptr [ecx+0Ch], 3
mov     byte ptr [ecx+0Dh], 3
jmp     short loc_461011

loc_46103E:             ; jumptable 00460F80 case 3
cmp     ah, 6
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     byte ptr [ecx+0Ch], 4
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

def_460F80:             ; jumptable 00460F80 default case
pop     edx
pop     ecx
pop     ebx

locret_46106B:
retn
sub_460F52 endp




sub_46106C proc near
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short locret_46106B
inc     byte ptr [eax+9]
mov     eax, 641h
jmp     sub_47E8B8
sub_46106C endp




sub_461082 proc near
push    edx
mov     edx, eax
call    sub_42ABA2
test    eax, eax
jnz     short loc_4610B7
and     ds:byte_5F8421, 0DFh
mov     byte ptr [edx+8], 1
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [edx+0Eh], al
xor     dl, dl
mov     byte ptr ds:dword_560BDC+1, dl
mov     byte ptr ds:dword_560BDC, dl

loc_4610B7:
pop     edx
retn
sub_461082 endp




sub_4610B9 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4DEADD
xor     ecx, ecx
mov     cl, [edx+9]
mov     eax, edx
call    ds:funcs_4610C9[ecx*4]
pop     edx
pop     ecx
retn
sub_4610B9 endp




sub_4610D3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_46111A
mov     dword ptr [ecx+24h], 105F0000h
mov     dword ptr [ecx+1Ch], 7900000h
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     word ptr [ecx+56h], 800h
or      byte ptr [ecx], 2
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+9]
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_46111A:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4610D3 endp




sub_461125 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_46113B
jbe     short loc_46115D
cmp     al, 2
jz      short loc_46118D
pop     edx
pop     ecx
pop     ebx
retn

loc_46113B:
test    al, al
jnz     short loc_4611AB
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+0B4h], 0FF80h
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_46115D:
mov     eax, ecx
call    sub_4DEADD
mov     ax, [ecx+0B4h]
mov     dx, [ecx+56h]
add     edx, eax
mov     [ecx+56h], dx
test    dx, dx
jg      short loc_4611AB
mov     word ptr [ecx+56h], 0
inc     byte ptr [ecx+9]
mov     word ptr [ecx+48h], 0F8E7h
pop     edx
pop     ecx
pop     ebx
retn

loc_46118D:
mov     eax, ecx
call    sub_4DEADD
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_4611AB:
pop     edx
pop     ecx
pop     ebx
retn
sub_461125 endp




sub_4611AF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+0Fh]
test    al, al
jbe     short loc_4611CF
cmp     al, 1
jz      loc_461256
jmp     loc_461270

loc_4611CF:
mov     eax, 42h ; 'B'
call    sub_47E8B8
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
shl     eax, 0Ah
neg     eax
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
shl     eax, 0Ah
neg     eax
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     ax, ds:word_516A30
mov     [ecx+46h], ax
mov     word ptr [ecx+4Eh], 80h
inc     byte ptr [ecx+0Fh]
mov     byte ptr [ecx+0Eh], 0
or      ds:byte_5F8421, 20h
mov     eax, 10h
call    sub_4D9040
mov     eax, 3
call    sub_47EEAE
mov     ds:word_77EA80, 64h ; 'd'
jmp     short loc_461270

loc_461256:
cmp     ds:byte_77EAB8, 0
jnz     short loc_461270
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Bh
call    sub_4D89E4
inc     byte ptr [ecx+0Fh]

loc_461270:
cmp     byte ptr [ecx+0Fh], 0
jz      short loc_4612D3
add     byte ptr [ecx+55h], 2
inc     byte ptr [ecx+57h]
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DFC52
mov     ax, [ecx+54h]
mov     ds:word_560E0C, ax
mov     eax, ecx
call    sub_4DF795
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_4612D3:
mov     eax, ecx
call    sub_42DE56
mov     ebx, eax
mov     edi, eax
test    eax, eax
jz      loc_4613A9
lea     edx, [ecx+14h]
mov     eax, 129h
call    sub_4D8BC3
test    bh, 10h
jz      loc_46139F
mov     dl, [ecx+0Eh]
cmp     dl, 2
jl      short loc_46133A
mov     al, dl
inc     al
mov     [ecx+0Eh], al
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+54h], 0
jmp     loc_46083E

loc_46133A:
mov     dh, dl
inc     dh
mov     [ecx+0Eh], dh
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_516A30[eax*2]
mov     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 2
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 2
sar     eax, 4
mov     [ecx+48h], ax
call    sub_4DE13B
test    eax, eax
jz      short loc_46139F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
mov     [eax+20h], dx

loc_46139F:
lea     eax, [ecx+44h]
mov     edx, edi
call    sub_42D90F

loc_4613A9:
cmp     byte ptr [ecx+0Eh], 2
jle     loc_46083E
cmp     byte ptr [ecx+0Fh], 1
jle     loc_46083E
mov     eax, 642h
call    sub_47E8B8
and     byte ptr [esi+0BDh], 0DFh
jmp     loc_46083E
sub_4611AF endp




sub_4613D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Fh], 46h ; 'F'
jnz     short loc_4613E8
mov     word ptr [esi+0B4h], 40h ; '@'

loc_4613E8:
cmp     word ptr [esi+56h], 400h
jle     short loc_4613F9
mov     word ptr [esi+0B4h], 0

loc_4613F9:
mov     dl, [esi+0Fh]
test    dl, dl
jnz     short loc_461434
mov     dword ptr [esi+1Ch], 5430000h
mov     dword ptr [esi+20h], 0FFFF0000h
mov     dword ptr [esi+24h], 11A00000h
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     word ptr [esi+56h], 0
mov     word ptr [esi+0B4h], 0
inc     byte ptr [esi+0Fh]
jmp     short loc_4614A8

loc_461434:
cmp     dl, 0Ah
jl      short loc_4614A8
mov     ax, [esi+0B4h]
add     [esi+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 500h
mov     eax, esi
call    sub_4DD43B
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4614A8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+14h]
sub     eax, 0Fh
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
mov     ax, [esi+16h]
sub     eax, ebx
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+18h]
sub     eax, 0Fh
mov     [edx+20h], ax

loc_4614A8:
mov     eax, esi
call    sub_4DEADD
inc     byte ptr [esi+0Fh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4613D3 endp




sub_4614B7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4614D7
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4614D7:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4614B7 endp




sub_4614E2 proc near
push    ebx
push    ecx
push    esi
movsx   ecx, word ptr [eax]
movsx   ebx, word ptr [edx]
sub     ecx, ebx
mov     ebx, [eax]
sar     ebx, 10h
mov     esi, [edx]
sar     esi, 10h
sub     ebx, esi
mov     esi, [eax+2]
sar     esi, 10h
mov     eax, [edx+2]
sar     eax, 10h
sub     esi, eax
mov     eax, esi
mov     edx, ecx
imul    edx, ecx
imul    ebx, ebx
add     edx, ebx
imul    eax, esi
add     eax, edx
call    sub_4EF075
pop     esi
pop     ecx
pop     ebx
retn
sub_4614E2 endp




sub_461521 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_46152A[ecx*4]
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_46153E
mov     eax, edx
call    sub_4DEADD

loc_46153E:
pop     edx
pop     ecx
retn
sub_461521 endp

jpt_46158C dd offset loc_461593 ; jump table for switch statement
dd offset def_46158C
dd offset loc_4615C4
dd offset def_46158C
dd offset loc_4615C4
dd offset def_46158C
dd offset loc_4615C4



sub_46155D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 6           ; switch 7 cases
ja      def_46158C      ; jumptable 0046158C default case, cases 1,3,5
and     eax, 0FFh
jmp     jpt_46158C[eax*4] ; switch jump

loc_461593:             ; jumptable 0046158C case 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 1
jmp     short def_46158C ; jumptable 0046158C default case, cases 1,3,5

loc_4615C4:             ; jumptable 0046158C cases 2,4,6
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, [esi+24h]
lea     edi, [ecx+14h]
lea     esi, [eax+14h]
movsd
movsd
add     word ptr [ecx+16h], 39Ah
lea     edi, [ecx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
add     dword ptr [ecx+20h], 39Ah
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 3

def_46158C:             ; jumptable 0046158C default case, cases 1,3,5
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46155D endp




sub_461626 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461642
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_461642:
pop     edx
pop     ecx
pop     ebx
retn
sub_461626 endp




sub_461646 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461666
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_461666:
pop     edx
pop     ecx
pop     ebx
retn
sub_461646 endp




sub_46166A proc near
push    edx
push    esi
push    edi
mov     byte ptr [eax+0Dh], 0
mov     edx, ds:dword_560C00
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
add     word ptr [eax+16h], 39Ah
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
add     dword ptr [eax+20h], 39Ah
pop     edi
pop     esi
pop     edx
retn
sub_46166A endp




sub_46169A proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4616A3[ecx*4]
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_4616B7
mov     eax, edx
call    sub_4DEADD

loc_4616B7:
pop     edx
pop     ecx
retn
sub_46169A endp




sub_4616BA proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4616BA endp




sub_461709 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461725
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_461725:
pop     edx
pop     ecx
pop     ebx
retn
sub_461709 endp




sub_461729 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_46178F
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
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short loc_4617B0

loc_46178F:
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

loc_4617B0:
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
sub_461729 endp




sub_4617CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_461820
pop     edx
pop     ecx
pop     ebx
retn
sub_4617CA endp




sub_461803 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46181C
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_46181C:
pop     edx
pop     ecx
pop     ebx
retn
sub_461803 endp




sub_461820 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_461829[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_461820 endp



; Attributes: thunk

sub_461845 proc near
jmp     sub_4DE336
sub_461845 endp




sub_46184A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_461850[edx*4]
pop     edx
retn
sub_46184A endp




sub_461859 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
add     eax, 3A8h
mov     [esp+2Ch+var_1C], eax
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
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
call    rand_
mov     edx, [esp+2Ch+var_1C]
mov     [edx+16h], ax
mov     edx, 4210h
mov     eax, ebp
call    sub_461B33
xor     ecx, ecx
mov     cl, [ebp+8]
mov     edx, [esp+2Ch+var_1C]
mov     eax, ebp
call    ds:funcs_4618B7[ecx*4]
cmp     byte ptr [ebp+3], 0
jnz     short loc_461918
mov     eax, [esp+2Ch+var_1C]
test    byte ptr [eax+14h], 4
jz      short loc_461918
mov     ecx, offset unk_560E24
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_4618F2
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_4618F9

loc_4618F2:
mov     eax, ebp
call    sub_4DEB53

loc_4618F9:
mov     eax, [esp+2Ch+var_1C]
mov     ax, [eax+1Ah]
add     ah, 8
sub     ax, [ebp+56h]
and     ah, 0Fh
mov     [ecx+2], ax
mov     eax, ebp
call    sub_4DF795
jmp     short loc_46193C

loc_461918:
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_461935
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46193C

loc_461935:
mov     eax, ebp
call    sub_4DEADD

loc_46193C:
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
mov     edx, [esp+2Ch+var_1C]
add     edx, 2Ch ; ','
mov     eax, esp
call    sub_4DD57B
mov     ax, [ebp+14h]
mov     edx, [esp+2Ch+var_1C]
add     [edx+2Ch], ax
mov     ax, [ebp+18h]
add     [edx+30h], ax
mov     ax, [ebp+16h]
sub     eax, 80h
mov     [edx+2Eh], ax
test    byte ptr [edx+15h], 0Ch
jz      short loc_46198F
mov     eax, 80h
jmp     short loc_461991

loc_46198F:
xor     eax, eax

loc_461991:
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

