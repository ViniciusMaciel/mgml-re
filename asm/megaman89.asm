loc_4DC9FB:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCA05:
mov     edx, [esp+24h+var_1C]
inc     edx
mov     [esp+24h+var_1C], edx
add     ebx, 4A0h
cmp     edx, 10h
jge     short loc_4DCA3B

loc_4DCA19:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCA05
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DC9FB
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE2F6
jmp     short loc_4DCA05

loc_4DCA3B:
test    [esp+24h+var_20], 4
jz      short loc_4DCA95
mov     ebx, offset unk_6E23DC
mov     esi, ds:dword_77E758
xor     edi, edi
mov     [esp+24h+var_1C], edi
jmp     short loc_4DCA73

loc_4DCA55:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCA5F:
mov     ebp, [esp+24h+var_1C]
inc     ebp
mov     [esp+24h+var_1C], ebp
add     ebx, 734h
cmp     ebp, 4
jge     short loc_4DCA95

loc_4DCA73:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCA5F
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCA55
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE336
jmp     short loc_4DCA5F

loc_4DCA95:
test    [esp+24h+var_20], 8
jz      short loc_4DCAEF
mov     ebx, offset byte_6DC7FC
mov     esi, ds:dword_77E780
xor     edx, edx
mov     [esp+24h+var_1C], edx
jmp     short loc_4DCACD

loc_4DCAAF:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCAB9:
mov     ecx, [esp+24h+var_1C]
inc     ecx
mov     [esp+24h+var_1C], ecx
add     ebx, 11Ch
cmp     ecx, 10h
jge     short loc_4DCAEF

loc_4DCACD:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCAB9
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCAAF
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE3AC
jmp     short loc_4DCAB9

loc_4DCAEF:
test    [esp+24h+var_20], 10h
jz      short loc_4DCB50
mov     ebx, offset byte_57098C
mov     esi, ds:dword_77E73C
xor     ebp, ebp
mov     [esp+24h+var_1C], ebp
mov     ch, byte ptr [esp+24h+var_24]
jmp     short loc_4DCB2A

loc_4DCB0C:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCB16:
mov     eax, [esp+24h+var_1C]
inc     eax
mov     [esp+24h+var_1C], eax
add     ebx, 11Ch
cmp     eax, 20h ; ' '
jge     short loc_4DCB50

loc_4DCB2A:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jl      short loc_4DCB3B
test    byte ptr [ebx], 3
jz      short loc_4DCB16

loc_4DCB3B:
test    ch, 80h
jz      short loc_4DCB0C
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE371
jmp     short loc_4DCB16

loc_4DCB50:
test    [esp+24h+var_20], 20h
jz      loc_4DCBC5
mov     ebx, offset unk_572D5C
xor     ecx, ecx
mov     [esp+24h+var_1C], ecx
jmp     short loc_4DCB76

loc_4DCB68:
mov     edx, [esp+24h+var_1C]
inc     edx
mov     [esp+24h+var_1C], edx
cmp     edx, 2
jge     short loc_4DCBC5

loc_4DCB76:
mov     esi, [esp+24h+var_1C]
mov     esi, ds:dword_572D54[esi*4]
xor     edi, edi
mov     [esp+24h+var_18], edi
jmp     short loc_4DCBA4

loc_4DCB89:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCB93:
mov     ebp, [esp+24h+var_18]
inc     ebp
mov     [esp+24h+var_18], ebp
add     ebx, 58h ; 'X'
cmp     ebp, 20h ; ' '
jge     short loc_4DCB68

loc_4DCBA4:
mov     cl, byte ptr [esp+24h+var_18]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCB93
cmp     byte ptr [ebx+2], 80h
jb      short loc_4DCB93
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCB89
mov     eax, ebx
call    sub_4DE3EA
jmp     short loc_4DCB93

loc_4DCBC5:
test    [esp+24h+var_20], 40h
jz      loc_4DCC3C
mov     ebx, offset unk_572D5C
xor     esi, esi
mov     [esp+24h+var_1C], esi
mov     ch, byte ptr [esp+24h+var_24]
jmp     short loc_4DCBEE

loc_4DCBE0:
mov     edx, [esp+24h+var_1C]
inc     edx
mov     [esp+24h+var_1C], edx
cmp     edx, 2
jge     short loc_4DCC3C

loc_4DCBEE:
mov     esi, [esp+24h+var_1C]
mov     esi, ds:dword_572D54[esi*4]
xor     edi, edi
mov     [esp+24h+var_18], edi
jmp     short loc_4DCC1C

loc_4DCC01:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCC0B:
mov     ebp, [esp+24h+var_18]
inc     ebp
mov     [esp+24h+var_18], ebp
add     ebx, 58h ; 'X'
cmp     ebp, 20h ; ' '
jge     short loc_4DCBE0

loc_4DCC1C:
mov     cl, byte ptr [esp+24h+var_18]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCC0B
cmp     byte ptr [ebx+2], 80h
jnb     short loc_4DCC0B
test    ch, 80h
jz      short loc_4DCC01
mov     eax, ebx
call    sub_4DE3EA
jmp     short loc_4DCC0B

loc_4DCC3C:
test    [esp+24h+var_20], 80h
jz      short loc_4DCC8C
mov     ebx, offset unk_56FA74
mov     esi, ds:dword_77E728
xor     edi, edi
mov     [esp+24h+var_1C], edi
jmp     short loc_4DCC71

loc_4DCC56:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCC60:
mov     ebp, [esp+24h+var_1C]
inc     ebp
mov     [esp+24h+var_1C], ebp
add     ebx, 24h ; '$'
cmp     ebp, 10h
jge     short loc_4DCC8C

loc_4DCC71:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCC60
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCC56
mov     eax, ebx
call    sub_4DE439
jmp     short loc_4DCC60

loc_4DCC8C:
test    [esp+24h+var_1F], 1
jz      short loc_4DCCE3
mov     ebx, offset unk_56FCB4
mov     esi, ds:dword_77E730
xor     edx, edx
mov     [esp+24h+var_1C], edx
jmp     short loc_4DCCC1

loc_4DCCA6:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCCB0:
mov     ecx, [esp+24h+var_1C]
inc     ecx
mov     [esp+24h+var_1C], ecx
add     ebx, 60h ; '`'
cmp     ecx, 20h ; ' '
jge     short loc_4DCCE3

loc_4DCCC1:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCCB0
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCCA6
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE477
jmp     short loc_4DCCB0

loc_4DCCE3:
test    [esp+24h+var_1F], 2
jz      loc_4DCD49
mov     ebx, offset byte_56F80C
xor     ebp, ebp
mov     [esp+24h+var_1C], ebp
mov     dl, byte ptr [esp+24h+var_24]
jmp     short loc_4DCD35

loc_4DCCFE:
test    ch, 1
jz      short loc_4DCD0A
mov     ah, cl
xor     ah, 1
mov     [ebx], ah

loc_4DCD0A:
test    dl, 4
jz      short loc_4DCD12
xor     byte ptr [ebx], 2

loc_4DCD12:
test    byte ptr [esp+24h+var_24], 2
jz      short loc_4DCD1B
or      byte ptr [ebx], 1

loc_4DCD1B:
test    byte ptr [esp+24h+var_24], 8
jz      short loc_4DCD24
or      byte ptr [ebx], 2

loc_4DCD24:
mov     eax, [esp+24h+var_1C]
inc     eax
mov     [esp+24h+var_1C], eax
add     ebx, 38h ; '8'
cmp     eax, 0Bh
jge     short loc_4DCD49

loc_4DCD35:
mov     cl, [ebx]
test    cl, 3
jz      short loc_4DCD24
mov     ch, byte ptr [esp+24h+var_24]
test    ch, 80h
jz      short loc_4DCCFE
mov     byte ptr [ebx], 0
jmp     short loc_4DCD24

loc_4DCD49:
add     esp, 10h

loc_4DCD4C:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4DC979 endp




sub_4DCD52 proc near
test    dl, 1
jz      short loc_4DCD5B
xor     byte ptr [eax+6], 1

loc_4DCD5B:
test    dl, 4
jz      short loc_4DCD64
xor     byte ptr [eax+6], 2

loc_4DCD64:
test    dl, 2
jz      short loc_4DCD6D
or      byte ptr [eax+6], 1

loc_4DCD6D:
test    dl, 8
jz      short locret_4DCD76
or      byte ptr [eax+6], 2

locret_4DCD76:
retn
sub_4DCD52 endp




sub_4DCD77 proc near

var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
mov     esi, edx
test    [esp+20h+var_20], 2
jz      short loc_4DCDD7
mov     ebx, offset byte_6DD9CC
mov     edi, ds:dword_77E778
xor     edx, edx
mov     [esp+20h+var_1C], edx
jmp     short loc_4DCDB6

loc_4DCD9B:
mov     eax, ebx
call    sub_4DE2F6

loc_4DCDA2:
mov     ecx, [esp+20h+var_1C]
inc     ecx
mov     [esp+20h+var_1C], ecx
add     ebx, 4A0h
cmp     ecx, 10h
jge     short loc_4DCDD7

loc_4DCDB6:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCDA2
test    byte ptr [ebx+6], 20h
jz      short loc_4DCD9B
test    esi, esi
jz      short loc_4DCDA2
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCDA2

loc_4DCDD7:
test    [esp+20h+var_20], 4
jz      short loc_4DCE2C
mov     ebx, offset unk_6E23DC
mov     edi, ds:dword_77E758
xor     eax, eax
mov     [esp+20h+var_1C], eax
jmp     short loc_4DCE0B

loc_4DCDF0:
mov     eax, ebx
call    sub_4DE336

loc_4DCDF7:
mov     edx, [esp+20h+var_1C]
inc     edx
mov     [esp+20h+var_1C], edx
add     ebx, 734h
cmp     edx, 4
jge     short loc_4DCE2C

loc_4DCE0B:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCDF7
test    byte ptr [ebx+6], 20h
jz      short loc_4DCDF0
test    esi, esi
jz      short loc_4DCDF7
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCDF7

loc_4DCE2C:
test    [esp+20h+var_20], 8
jz      short loc_4DCE81
mov     ebx, offset byte_6DC7FC
mov     edi, ds:dword_77E780
xor     ebp, ebp
mov     [esp+20h+var_1C], ebp
jmp     short loc_4DCE60

loc_4DCE45:
mov     eax, ebx
call    sub_4DE3AC

loc_4DCE4C:
mov     eax, [esp+20h+var_1C]
inc     eax
mov     [esp+20h+var_1C], eax
add     ebx, 11Ch
cmp     eax, 10h
jge     short loc_4DCE81

loc_4DCE60:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCE4C
test    byte ptr [ebx+6], 20h
jz      short loc_4DCE45
test    esi, esi
jz      short loc_4DCE4C
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCE4C

loc_4DCE81:
test    [esp+20h+var_20], 10h
jz      short loc_4DCED6
mov     ebx, offset byte_57098C
mov     edi, ds:dword_77E73C
xor     ecx, ecx
mov     [esp+20h+var_1C], ecx
jmp     short loc_4DCEB5

loc_4DCE9A:
mov     eax, ebx
call    sub_4DE371

loc_4DCEA1:
mov     ebp, [esp+20h+var_1C]
inc     ebp
mov     [esp+20h+var_1C], ebp
add     ebx, 11Ch
cmp     ebp, 20h ; ' '
jge     short loc_4DCED6

loc_4DCEB5:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCEA1
test    byte ptr [ebx+6], 20h
jz      short loc_4DCE9A
test    esi, esi
jz      short loc_4DCEA1
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCEA1

loc_4DCED6:
test    [esp+20h+var_20], 20h
jz      loc_4DCF4D
mov     ebx, offset unk_572D5C
xor     edx, edx
mov     [esp+20h+var_1C], edx
jmp     short loc_4DCEFB

loc_4DCEED:
mov     edx, [esp+20h+var_1C]
inc     edx
mov     [esp+20h+var_1C], edx
cmp     edx, 2
jge     short loc_4DCF4D

loc_4DCEFB:
mov     edi, [esp+20h+var_1C]
mov     edi, ds:dword_572D54[edi*4]
xor     ecx, ecx
mov     [esp+20h+var_18], ecx
jmp     short loc_4DCF26

loc_4DCF0E:
mov     eax, ebx
call    sub_4DE3EA

loc_4DCF15:
mov     ebp, [esp+20h+var_18]
inc     ebp
mov     [esp+20h+var_18], ebp
add     ebx, 58h ; 'X'
cmp     ebp, 20h ; ' '
jge     short loc_4DCEED

loc_4DCF26:
mov     cl, byte ptr [esp+20h+var_18]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCF15
cmp     byte ptr [ebx+2], 80h
jb      short loc_4DCF15
test    byte ptr [ebx+6], 20h
jz      short loc_4DCF0E
test    esi, esi
jz      short loc_4DCF15
mov     edx, esi
mov     eax, ebx
call    sub_4DD0BE
jmp     short loc_4DCF15

loc_4DCF4D:
test    [esp+20h+var_20], 40h
jz      loc_4DCFC4
mov     ebx, offset unk_572D5C
xor     edi, edi
mov     [esp+20h+var_1C], edi
jmp     short loc_4DCF72

loc_4DCF64:
mov     ecx, [esp+20h+var_1C]
inc     ecx
mov     [esp+20h+var_1C], ecx
cmp     ecx, 2
jge     short loc_4DCFC4

loc_4DCF72:
mov     edi, [esp+20h+var_1C]
mov     edi, ds:dword_572D54[edi*4]
xor     ebp, ebp
mov     [esp+20h+var_18], ebp
jmp     short loc_4DCF9D

loc_4DCF85:
mov     eax, ebx
call    sub_4DE3EA

loc_4DCF8C:
mov     eax, [esp+20h+var_18]
inc     eax
mov     [esp+20h+var_18], eax
add     ebx, 58h ; 'X'
cmp     eax, 20h ; ' '
jge     short loc_4DCF64

loc_4DCF9D:
mov     cl, byte ptr [esp+20h+var_18]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCF8C
cmp     byte ptr [ebx+2], 80h
jnb     short loc_4DCF8C
test    byte ptr [ebx+6], 20h
jz      short loc_4DCF85
test    esi, esi
jz      short loc_4DCF8C
mov     edx, esi
mov     eax, ebx
call    sub_4DD0BE
jmp     short loc_4DCF8C

loc_4DCFC4:
test    [esp+20h+var_20], 80h
jz      short loc_4DD016
mov     ebx, offset unk_56FA74
mov     edi, ds:dword_77E728
xor     ebp, ebp
mov     [esp+20h+var_1C], ebp
jmp     short loc_4DCFF5

loc_4DCFDD:
mov     eax, ebx
call    sub_4DE439

loc_4DCFE4:
mov     eax, [esp+20h+var_1C]
inc     eax
mov     [esp+20h+var_1C], eax
add     ebx, 24h ; '$'
cmp     eax, 10h
jge     short loc_4DD016

loc_4DCFF5:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCFE4
test    byte ptr [ebx+6], 20h
jz      short loc_4DCFDD
test    esi, esi
jz      short loc_4DCFE4
mov     edx, esi
mov     eax, ebx
call    sub_4DD0E6
jmp     short loc_4DCFE4

loc_4DD016:
test    [esp+20h+var_1F], 1
jz      short loc_4DD069
mov     ebx, offset unk_56FCB4
mov     edi, ds:dword_77E730
xor     ecx, ecx
mov     [esp+20h+var_1C], ecx
jmp     short loc_4DD048

loc_4DD030:
mov     eax, ebx
call    sub_4DE477

loc_4DD037:
mov     ebp, [esp+20h+var_1C]
inc     ebp
mov     [esp+20h+var_1C], ebp
add     ebx, 60h ; '`'
cmp     ebp, 20h ; ' '
jge     short loc_4DD069

loc_4DD048:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DD037
test    byte ptr [ebx+6], 20h
jz      short loc_4DD030
test    esi, esi
jz      short loc_4DD037
mov     edx, esi
mov     eax, ebx
call    sub_4DD0BE
jmp     short loc_4DD037

loc_4DD069:
add     esp, 0Ch
jmp     loc_4DCD4C
sub_4DCD77 endp




sub_4DD071 proc near
push    ebx
push    ecx
mov     bx, [edx]
add     [eax+14h], bx
mov     bx, [edx+4]
add     [eax+18h], bx
movsx   ecx, word ptr [edx]
shl     ecx, 10h
add     [eax+1Ch], ecx
mov     ecx, [edx+2]
sar     ecx, 10h
shl     ecx, 10h
add     [eax+24h], ecx
mov     bx, [edx]
add     [eax+2Ch], bx
mov     bx, [edx+4]
add     [eax+30h], bx
movsx   ecx, word ptr [edx]
shl     ecx, 10h
add     [eax+34h], ecx
mov     edx, [edx+2]
sar     edx, 10h
shl     edx, 10h
add     [eax+3Ch], edx
pop     ecx
pop     ebx
retn
sub_4DD071 endp




sub_4DD0BE proc near
push    ebx
test    byte ptr [eax], 4
jz      short loc_4DD0D5
mov     bx, [edx]
add     [eax+48h], bx
mov     dx, [edx+4]
add     [eax+4Ch], dx
pop     ebx
retn

loc_4DD0D5:
mov     bx, [edx]
add     [eax+1Ch], bx
mov     dx, [edx+4]
add     [eax+20h], dx
pop     ebx
retn
sub_4DD0BE endp




sub_4DD0E6 proc near
push    ebx
mov     bx, [edx]
add     [eax+14h], bx
mov     dx, [edx+4]
add     [eax+18h], dx
pop     ebx
retn
sub_4DD0E6 endp




sub_4DD0F8 proc near
push    ebx
mov     ebx, edx
mov     edx, offset unk_70F1AC

loc_4DD100:
call    sub_4DD11B
pop     ebx
retn
sub_4DD0F8 endp




sub_4DD107 proc near
push    ebx
mov     ebx, edx
mov     edx, offset unk_7097AC
jmp     short loc_4DD100
sub_4DD107 endp




sub_4DD111 proc near
push    ebx
mov     ebx, edx
mov     edx, offset unk_574364
jmp     short loc_4DD100
sub_4DD111 endp




sub_4DD11B proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, [edx]
xor     eax, eax
mov     al, [esi+1]
add     edx, 4
call    sub_4DD420
mov     edi, eax
cmp     eax, 60h ; '`'
jnz     short loc_4DD142
cmp     byte ptr [esi+2], 80h
jb      short loc_4DD142
mov     edi, 10h

loc_4DD142:
mov     ecx, edx
xor     eax, eax

loc_4DD146:
cmp     eax, ebp
jge     loc_4DD20C
xor     edx, edx
mov     dl, [ecx]
cmp     edi, edx
jnz     loc_4DD203
mov     dl, [esi+2]
cmp     dl, [ecx+1]
jnz     loc_4DD203
test    ebx, ebx
jz      short loc_4DD175
mov     dl, [ebx]
cmp     dl, [ecx+2]
jnz     loc_4DD203

loc_4DD175:
cmp     edi, 40h ; '@'
jb      short loc_4DD19E
jbe     short loc_4DD1AA
cmp     edi, 80h
jb      short loc_4DD197
jbe     loc_4DD1F6
cmp     edi, 0E0h
jz      short loc_4DD1F6
jmp     loc_4DD1FC

loc_4DD197:
cmp     edi, 60h ; '`'
jz      short loc_4DD1EB
jmp     short loc_4DD1FC

loc_4DD19E:
cmp     edi, 10h
jb      short loc_4DD1FC
jbe     short loc_4DD1EB
cmp     edi, 20h ; ' '
jnz     short loc_4DD1FC

loc_4DD1AA:
lea     edx, [esi+0F8h]
mov     eax, [ecx+4]
add     eax, 10h
mov     ebx, 18h
call    sub_4EECD4
mov     eax, [ecx+8]
mov     eax, [eax]
mov     [esi+9Ch], eax
mov     eax, [ecx+8]
add     eax, 4
mov     [esi+0A0h], eax
mov     eax, [ecx+4]
mov     [esi+88h], eax
mov     eax, [ecx+0Ch]
mov     [esi+90h], eax
jmp     short loc_4DD1FC

loc_4DD1EB:
mov     eax, [ecx+4]
mov     [esi+88h], eax
jmp     short loc_4DD1FC

loc_4DD1F6:
mov     eax, [ecx+4]
mov     [esi+14h], eax

loc_4DD1FC:
mov     edi, 1
jmp     short loc_4DD20E

loc_4DD203:
inc     eax
add     ecx, 10h
jmp     loc_4DD146

loc_4DD20C:
xor     edi, edi

loc_4DD20E:
mov     eax, edi
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DD11B endp




sub_4DD215 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edx, offset byte_6DD9CC
mov     esi, ds:dword_77E778
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD242

loc_4DD230:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 4A0h
cmp     ebp, 10h
jge     short loc_4DD273

loc_4DD242:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD230
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD230
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD230
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE2F6
jmp     short loc_4DD230

loc_4DD273:
mov     edx, offset unk_6E23DC
mov     esi, ds:dword_77E758
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD297

loc_4DD285:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 734h
cmp     ebp, 4
jge     short loc_4DD2C8

loc_4DD297:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD285
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD285
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD285
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE336
jmp     short loc_4DD285

loc_4DD2C8:
mov     edx, offset byte_6DC7FC
mov     esi, ds:dword_77E780
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD2EC

loc_4DD2DA:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 11Ch
cmp     ebp, 10h
jge     short loc_4DD31D

loc_4DD2EC:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD2DA
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD2DA
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD2DA
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE3AC
jmp     short loc_4DD2DA

loc_4DD31D:
mov     edx, offset byte_57098C
mov     esi, ds:dword_77E73C
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD341

loc_4DD32F:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 11Ch
cmp     ebp, 20h ; ' '
jge     short loc_4DD372

loc_4DD341:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD32F
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD32F
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD32F
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE371
jmp     short loc_4DD32F

loc_4DD372:
mov     edx, offset unk_572D5C
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD38A

loc_4DD37E:
mov     eax, [esp+1Ch+var_1C]
inc     eax
mov     [esp+1Ch+var_1C], eax
cmp     eax, 2
jge     short loc_4DD3C7

loc_4DD38A:
mov     esi, [esp+1Ch+var_1C]
mov     esi, ds:dword_572D54[esi*4]
xor     ebx, ebx
jmp     short loc_4DD3A1

loc_4DD398:
inc     ebx
add     edx, 58h ; 'X'
cmp     ebx, 20h ; ' '
jge     short loc_4DD37E

loc_4DD3A1:
mov     cl, bl
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD398
mov     edi, [edx+14h]
cmp     edi, offset unk_70F1AC
jb      short loc_4DD398
cmp     edi, offset unk_7331AC
jnb     short loc_4DD398
mov     eax, edx
call    sub_4DE3EA
jmp     short loc_4DD398

loc_4DD3C7:
mov     edx, offset unk_56FCB4
mov     esi, ds:dword_77E730
xor     ebx, ebx
mov     [esp+1Ch+var_1C], ebx
jmp     short loc_4DD3E8

loc_4DD3D9:
mov     eax, [esp+1Ch+var_1C]
inc     eax
mov     [esp+1Ch+var_1C], eax
add     edx, 60h ; '`'
cmp     eax, 20h ; ' '
jge     short loc_4DD416

loc_4DD3E8:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD3D9
mov     edi, [edx+14h]
cmp     edi, offset unk_70F1AC
jb      short loc_4DD3D9
cmp     edi, offset unk_7331AC
jnb     short loc_4DD3D9
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE477
jmp     short loc_4DD3D9

loc_4DD416:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DD215 endp




sub_4DD420 proc near
cmp     eax, 20h ; ' '
jnb     short loc_4DD429
and     eax, 10h
retn

loc_4DD429:
and     eax, 0E0h
cmp     eax, 0A0h
jnz     short locret_4DD43A
mov     eax, 80h

locret_4DD43A:
retn
sub_4DD420 endp




sub_4DD43B proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     edi, eax
movsx   ecx, cx
movsx   ebx, bx
movsx   edx, dx
mov     eax, [eax+54h]
sar     eax, 10h
mov     esi, esp
call    sub_4DD510
mov     eax, [esp+18h+var_18]
add     [edi+1Ch], eax
mov     eax, [esp+18h+var_14]
add     [edi+20h], eax
mov     eax, [esp+18h+var_10]
add     [edi+24h], eax
lea     edx, [edi+14h]
lea     eax, [edi+1Ch]

loc_4DD472:
call    sub_4DD57B
add     esp, 10h
pop     edi
pop     esi
retn
sub_4DD43B endp




sub_4DD47D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     edi, eax
movsx   ecx, cx
movsx   ebx, bx
movsx   edx, dx
mov     eax, [eax+54h]
sar     eax, 10h
mov     esi, esp
call    sub_4DD510
mov     eax, [esp+18h+var_18]
add     [edi+528h], eax
mov     eax, [esp+18h+var_14]
add     [edi+52Ch], eax
mov     eax, [esp+18h+var_10]
add     [edi+530h], eax
lea     edx, [edi+538h]
lea     eax, [edi+528h]
jmp     short loc_4DD472
sub_4DD47D endp




sub_4DD4C5 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
arg_2= dword ptr  6

push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
mov     edi, edx
mov     eax, ebx
mov     edx, ecx
mov     ecx, [esp+1Ch+arg_2]
sar     ecx, 10h
mov     ebx, [esp+1Eh]
sar     ebx, 10h
movsx   edx, dx
mov     esi, esp
call    sub_4DD510
mov     eax, [esp+1Ch+var_1C]
add     [edi], eax
mov     eax, [esp+1Ch+var_18]
add     [edi+4], eax
mov     eax, [esp+1Ch+var_14]
add     [edi+8], eax
mov     edx, ebp
mov     eax, edi
call    sub_4DD57B
add     esp, 10h
pop     ebp
pop     edi
pop     esi
retn    8
sub_4DD4C5 endp




sub_4DD510 proc near

var_28= byte ptr -28h
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    edi
push    ebp
sub     esp, 50h
mov     ebp, esi
mov     edi, eax
mov     esi, edx
test    dx, dx
jge     short loc_4DD52A
neg     esi
neg     ecx
lea     edi, [eax+800h]

loc_4DD52A:
mov     eax, esp
call    sub_4EF184
mov     edx, esp
mov     eax, edi
call    sub_4EF50D
movsx   eax, cx
shl     eax, 0Ch
mov     [esp+58h+var_18], eax
movsx   eax, bx
shl     eax, 0Ch
mov     [esp+58h+var_14], eax
movsx   eax, si
neg     eax
shl     eax, 0Ch
mov     [esp+58h+var_10], eax
lea     ebx, [esp+58h+var_28]
lea     edx, [esp+58h+var_18]
mov     eax, esp
call    sub_4EF371
mov     edi, ebp
lea     esi, [esp+58h+var_28]
movsd
movsd
movsd
movsd
mov     eax, ebp
add     esp, 50h
pop     ebp
pop     edi
retn
sub_4DD510 endp




sub_4DD57B proc near
push    ebx
push    ecx
push    esi
mov     ecx, [eax]
sar     ecx, 1Fh
and     cl, 0FEh
mov     esi, [eax]
sar     esi, 0Fh
and     esi, 1
inc     ecx
imul    esi, ecx
mov     ecx, [eax]
sar     ecx, 10h
add     ecx, esi
mov     [edx], cx
mov     ecx, [eax+4]
sar     ecx, 1Fh
and     cl, 0FEh
mov     esi, [eax+4]
sar     esi, 0Fh
and     esi, 1
inc     ecx
imul    ecx, esi
mov     ebx, [eax+4]
sar     ebx, 10h
add     ecx, ebx
mov     [edx+2], cx
mov     ecx, [eax+8]
sar     ecx, 1Fh
and     cl, 0FEh
mov     ebx, ecx
mov     ecx, [eax+8]
sar     ecx, 0Fh
and     ecx, 1
inc     ebx
imul    ecx, ebx
mov     eax, [eax+8]
sar     eax, 10h
add     eax, ecx
mov     [edx+4], ax
pop     esi
pop     ecx
pop     ebx
retn
sub_4DD57B endp




sub_4DD5E6 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     esi, edx
mov     ecx, ebx
mov     eax, [edx]
mov     edx, [ebx]
sub     eax, edx
mov     [esp+30h+var_20], eax
mov     eax, [esi+4]
mov     ebx, [ebx+4]
sub     eax, ebx
mov     [esp+30h+var_1C], eax
mov     eax, [esi+8]
mov     ebp, [ecx+8]
sub     eax, ebp
mov     [esp+30h+var_18], eax
mov     ebx, esp
lea     edx, [esp+30h+var_20]
mov     eax, edi
call    sub_4EF371
mov     eax, [ecx]
mov     edx, [esp+30h+var_30]
add     eax, edx
mov     [esi], eax
mov     eax, [ecx+4]
mov     ebx, [esp+30h+var_2C]
add     eax, ebx
mov     [esi+4], eax
mov     eax, [ecx+8]
mov     edi, [esp+30h+var_28]
add     eax, edi
mov     [esi+8], eax
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DD5E6 endp




sub_4DD64B proc near
push    ebx
push    ecx
mov     cx, [edx+14h]
sub     cx, [eax+14h]
mov     bx, [edx+16h]
sub     bx, [eax+16h]
mov     dx, [edx+18h]
sub     dx, [eax+18h]
sub_4DD64B endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4DD685

loc_4DD665:
movsx   eax, bx
mov     ebx, eax
imul    ebx, eax
movsx   eax, cx
imul    eax, eax
add     ebx, eax
movsx   eax, dx
imul    eax, eax
add     eax, ebx
; END OF FUNCTION CHUNK FOR sub_4DD685
; START OF FUNCTION CHUNK FOR sub_4DD69F

loc_4DD67D:
call    sub_4EF075
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4DD69F



sub_4DD685 proc near

; FUNCTION CHUNK AT 004DD665 SIZE 00000018 BYTES

push    ebx
push    ecx
mov     cx, [edx]
sub     cx, [eax]
mov     bx, [edx+2]
sub     bx, [eax+2]
mov     dx, [edx+4]
sub     dx, [eax+4]
jmp     short loc_4DD665
sub_4DD685 endp ; sp-analysis failed




sub_4DD69F proc near

; FUNCTION CHUNK AT 004DD67D SIZE 00000008 BYTES

push    ebx
push    ecx
movsx   ebx, word ptr [edx]
movsx   ecx, word ptr [eax]
sub     ebx, ecx
mov     ecx, ebx
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [eax+2]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
imul    eax, edx
imul    ecx, ebx
add     eax, ecx
jmp     short loc_4DD67D
sub_4DD69F endp




sub_4DD6C5 proc near
push    ebx
push    ecx
movsx   ebx, word ptr [edx]
movsx   ecx, word ptr [eax]
sub     ebx, ecx
mov     ecx, ebx
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [eax+2]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
imul    eax, edx
imul    ecx, ebx
add     eax, ecx
pop     ecx
pop     ebx
retn
sub_4DD6C5 endp




sub_4DD6EC proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= byte ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 3Ch
mov     edi, eax
mov     ebp, ebx
mov     esi, ecx
mov     eax, esp
call    sub_4EF184
mov     ax, [edx+0C4h]
mov     bx, [edi+0C4h]
sub     eax, ebx
mov     word ptr [esp+48h+var_18], ax ; float
mov     ax, [edx+0C6h]
mov     cx, [edi+0C6h]
sub     eax, ecx
mov     word ptr [esp+48h+var_18+2], ax
mov     ax, [edx+0C8h]
mov     dx, [edi+0C8h]
sub     eax, edx
mov     word ptr [esp+48h+var_14], ax ; int
mov     eax, [edi+54h]
sar     eax, 10h
mov     edx, 800h
sub     edx, eax
mov     eax, edx
mov     edx, esp
call    sub_4EF50D
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
lea     ebx, [esp+48h+var_10]
mov     edx, esi
lea     eax, [esp+48h+var_18]
call    sub_4EF84B
xor     eax, eax
cmp     dword ptr [esi], 0
jge     short loc_4DD77D
mov     eax, 1

loc_4DD77D:
cmp     dword ptr [esi+4], 0
jge     short loc_4DD785
or      al, 4

loc_4DD785:
cmp     dword ptr [esi+8], 0
jge     short loc_4DD78F
or      al, 10h
jmp     short loc_4DD7B3

loc_4DD78F:
mov     edi, [esi]
test    edi, edi
jge     short loc_4DD79B
mov     edx, edi
neg     edx
jmp     short loc_4DD79D

loc_4DD79B:
mov     edx, edi

loc_4DD79D:
movsx   ecx, word ptr [ebp+0]
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
cmp     edx, [esi+8]
jge     short loc_4DD7B3
or      al, 2

loc_4DD7B3:
mov     ebx, [esi+4]
test    ebx, ebx
jge     short loc_4DD7C0
mov     edx, ebx
neg     edx
jmp     short loc_4DD7C2

loc_4DD7C0:
mov     edx, ebx

loc_4DD7C2:
mov     ecx, [ebp+0]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     edi, [esi+8]
test    edi, edi
jge     short loc_4DD7E2
mov     edx, edi
neg     edx
jmp     short loc_4DD7E4

loc_4DD7E2:
mov     edx, edi

loc_4DD7E4:
cmp     ecx, edx
jge     short loc_4DD7EA
or      al, 8

loc_4DD7EA:
mov     edx, [esi+8]
test    edx, edx
jge     short loc_4DD7F3
neg     edx

loc_4DD7F3:
mov     ecx, [ebp+2]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     ebx, [esi]
test    ebx, ebx
jge     short loc_4DD812
mov     edx, ebx
neg     edx
jmp     short loc_4DD814

loc_4DD812:
mov     edx, ebx

loc_4DD814:
cmp     ecx, edx
jge     short loc_4DD81A
or      al, 20h

loc_4DD81A:
add     esp, 3Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4DD6EC endp




sub_4DD821 proc near
push    esi
mov     esi, [eax+54h]
sar     esi, 10h
push    esi
call    sub_4DD830
pop     esi
retn
sub_4DD821 endp




sub_4DD830 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= byte ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 3Ch
mov     ebp, eax
mov     edi, ebx
mov     esi, ecx
mov     eax, esp
call    sub_4EF184
mov     ax, [edx+14h]
mov     bx, [ebp+14h]
sub     eax, ebx
mov     word ptr [esp+48h+var_18], ax ; float
mov     ax, [edx+16h]
mov     cx, [ebp+16h]
sub     eax, ecx
mov     word ptr [esp+48h+var_18+2], ax
mov     ax, [edx+18h]
mov     dx, [ebp+18h]
sub     eax, edx
mov     word ptr [esp+48h+var_14], ax ; int
mov     eax, [esp+4Ah]
sar     eax, 10h
mov     edx, 800h
sub     edx, eax
mov     eax, edx
mov     edx, esp
call    sub_4EF50D
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
lea     ebx, [esp+48h+var_10]
mov     edx, esi
lea     eax, [esp+48h+var_18]
call    sub_4EF84B
xor     eax, eax
cmp     dword ptr [esi], 0
jge     short loc_4DD8B0
mov     eax, 1

loc_4DD8B0:
cmp     dword ptr [esi+4], 0
jge     short loc_4DD8B8
or      al, 4

loc_4DD8B8:
cmp     dword ptr [esi+8], 0
jge     short loc_4DD8C2
or      al, 10h
jmp     short loc_4DD8E5

loc_4DD8C2:
mov     ebp, [esi]
test    ebp, ebp
jge     short loc_4DD8CE
mov     edx, ebp
neg     edx
jmp     short loc_4DD8D0

loc_4DD8CE:
mov     edx, ebp

loc_4DD8D0:
movsx   ecx, word ptr [edi]
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
cmp     edx, [esi+8]
jge     short loc_4DD8E5
or      al, 2

loc_4DD8E5:
mov     ebx, [esi+4]
test    ebx, ebx
jge     short loc_4DD8F2
mov     edx, ebx
neg     edx
jmp     short loc_4DD8F4

loc_4DD8F2:
mov     edx, ebx

loc_4DD8F4:
mov     ecx, [edi]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     ebp, [esi+8]
test    ebp, ebp
jge     short loc_4DD913
mov     edx, ebp
neg     edx
jmp     short loc_4DD915

loc_4DD913:
mov     edx, ebp

loc_4DD915:
cmp     ecx, edx
jge     short loc_4DD91B
or      al, 8

loc_4DD91B:
mov     edx, [esi+8]
test    edx, edx
jge     short loc_4DD924
neg     edx

loc_4DD924:
mov     ecx, [edi+2]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     ebx, [esi]
test    ebx, ebx
jge     short loc_4DD943
mov     edx, ebx
neg     edx
jmp     short loc_4DD945

loc_4DD943:
mov     edx, ebx

loc_4DD945:
cmp     ecx, edx
jge     short loc_4DD94B
or      al, 20h

loc_4DD94B:
add     esp, 3Ch

loc_4DD94E:
pop     ebp
pop     edi
pop     esi
retn    4
sub_4DD830 endp




sub_4DD954 proc near

var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h
var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4Ch
mov     esi, eax
mov     edi, ebx
mov     eax, esp
call    sub_4EF184
mov     ax, [edx]
mov     bx, [esi]
sub     eax, ebx
mov     [esp+54h+var_14], ax
mov     ax, [edx+2]
mov     bx, [esi+2]
sub     eax, ebx
mov     [esp+54h+var_12], ax
mov     ax, [edx+4]
mov     dx, [esi+4]
sub     eax, edx
mov     [esp+54h+var_10], ax
movsx   eax, cx
mov     edx, 800h
sub     edx, eax
mov     eax, edx
mov     edx, esp
call    sub_4EF50D
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
lea     ebx, [esp+54h+var_C]
lea     edx, [esp+54h+var_24]
lea     eax, [esp+54h+var_14]
call    sub_4EF84B
xor     eax, eax
cmp     [esp+54h+var_1C], 0
jge     short loc_4DD9D1
mov     eax, 10h
jmp     short loc_4DD9F7

loc_4DD9D1:
mov     ecx, [esp+54h+var_24]
test    ecx, ecx
jge     short loc_4DD9DF
mov     edx, ecx
neg     edx
jmp     short loc_4DD9E1

loc_4DD9DF:
mov     edx, ecx

loc_4DD9E1:
movsx   ecx, word ptr [edi]
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
cmp     edx, [esp+54h+var_1C]
jge     short loc_4DD9F7
or      al, 2

loc_4DD9F7:
add     esp, 4Ch
pop     edi
pop     esi
retn
sub_4DD954 endp




sub_4DD9FD proc near
push    100h
movsx   ecx, cx
movsx   ebx, bx
call    sub_4DDA0E
retn
sub_4DD9FD endp




sub_4DDA0E proc near

arg_0= dword ptr  4

push    esi
mov     esi, eax
mov     eax, [esp+6]
sar     eax, 10h
push    eax
movsx   eax, cx
push    eax
movsx   eax, bx
push    eax
lea     ecx, [edx+0CAh]
lea     ebx, [esi+44h]
add     edx, 0C4h
lea     eax, [esi+14h]
call    sub_4DDA52
mov     word ptr [esi+50h], 0
mov     ax, [esi+50h]
mov     [esi+4Ch], ax
mov     eax, [esp+4+arg_0]
mov     [esi+4Eh], ax
pop     esi
retn    4
sub_4DDA0E endp




sub_4DDA52 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= word ptr  4
arg_4= word ptr  8
arg_6= dword ptr  0Ah

push    esi
push    edi
push    ebp
sub     esp, 14h
mov     esi, ecx
movsx   ecx, word ptr [edx]
movsx   edi, word ptr [eax]
sub     ecx, edi
mov     [esp+20h+var_10], ecx
mov     ebp, [edx]
sar     ebp, 10h
mov     ecx, [eax]
sar     ecx, 10h
sub     ebp, ecx
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [eax+2]
sar     eax, 10h
sub     edx, eax
mov     [esp+20h+var_18], edx
mov     eax, ebp
imul    eax, ebp
mov     edx, [esp+20h+var_10]
imul    edx, edx
add     eax, edx
mov     edi, [esp+20h+var_18]
imul    edi, edi
add     eax, edi
call    sub_4EF075
mov     ecx, eax
lea     eax, [edx+edi]
call    sub_4EF075
mov     edi, eax
cmp     [esp+20h+arg_4], 0
jz      short loc_4DDAC1
mov     edx, [esp+26h]
sar     edx, 10h
cmp     eax, edx
jl      short loc_4DDAC1
mov     edi, edx

loc_4DDAC1:
test    ecx, ecx
jz      loc_4DDB66
cmp     [esp+20h+arg_0], 0
jz      loc_4DDB66
mov     eax, [esp+22h]
sar     eax, 10h
mov     [esp+20h+var_14], eax
mov     edx, eax
imul    edx, [esp+20h+var_10]
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esp+20h+var_20], eax
mov     edx, ebp
shl     edx, 8
imul    edx, [esp+20h+var_14]
test    edi, edi
jz      short loc_4DDB2A
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     ebp, eax
mov     edx, edi
sar     edx, 1
mov     eax, [esp+20h+arg_6]
sar     eax, 10h
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_14]
sub     ebp, eax
mov     [esp+20h+var_1C], ebp
jmp     short loc_4DDB2E

loc_4DDB2A:
mov     [esp+20h+var_1C], edx

loc_4DDB2E:
mov     edi, [esp+22h]
sar     edi, 10h
mov     edx, [esp+20h+var_18]
imul    edx, edi
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+20h+var_20]
mov     [ebx], dx
mov     edx, [esp+20h+var_1C]
mov     [ebx+2], dx
mov     [ebx+4], ax
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    edi
mov     [esi], ax
jmp     short loc_4DDB7C

loc_4DDB66:
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     word ptr [ebx+4], 0
mov     word ptr [esi], 0

loc_4DDB7C:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn    0Ch
sub_4DDA52 endp

push    100h
movsx   ecx, cx
movsx   ebx, bx
call    sub_4DDB96
retn



sub_4DDB96 proc near
push    esi
mov     esi, [esp+6]
sar     esi, 10h
push    esi
movsx   ecx, cx
movsx   ebx, bx
add     edx, 0C4h
add     eax, 14h
call    sub_4DDBB7
pop     esi
retn    4
sub_4DDB96 endp




sub_4DDBB7 proc near

var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     [esp+10h+var_10], bx
mov     edi, ecx
movsx   eax, word ptr [edx]
movsx   ecx, word ptr [esi]
sub     eax, ecx
mov     ecx, eax
mov     eax, [edx]
sar     eax, 10h
mov     ebx, [esi]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     eax, [edx+2]
sar     eax, 10h
mov     ebp, [esi+2]
sar     ebp, 10h
sub     eax, ebp
imul    eax, eax
imul    ecx, ecx
add     eax, ecx
call    sub_4EF075
mov     ecx, eax
test    di, di
jz      short loc_4DDC08
movsx   edi, di
cmp     edi, eax
jg      short loc_4DDC08
mov     ecx, edi

loc_4DDC08:
cmp     [esp+10h+var_10], 0
jz      short loc_4DDC73
test    ecx, ecx
jz      short loc_4DDC57
mov     edx, ebx
shl     edx, 8
mov     esi, [esp-2]
sar     esi, 10h
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ebx, eax
sar     ecx, 1
mov     edx, [esp+12h]
sar     edx, 10h
imul    edx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edx, ebx
sub     edx, eax
mov     eax, esi
shl     eax, 8
call    sub_4EF04B
mov     edx, 400h
sub     edx, eax
mov     eax, edx
jmp     short loc_4DDC75

loc_4DDC57:
mov     edx, [edx]
sar     edx, 10h
mov     eax, [esi]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4DDC6C
mov     eax, 400h
jmp     short loc_4DDC75

loc_4DDC6C:
mov     eax, 0FFFFFC00h
jmp     short loc_4DDC75

loc_4DDC73:
xor     eax, eax

loc_4DDC75:
add     esp, 4
jmp     loc_4DD94E
sub_4DDBB7 endp




sub_4DDC7D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ecx, eax
mov     esi, ebx
mov     ebp, [eax+12h]
sar     ebp, 10h
movsx   eax, word ptr [edx]
sub     eax, ebp
mov     ebp, eax
mov     eax, [edx]
sar     eax, 10h
mov     edi, [ecx+14h]
sar     edi, 10h
sub     eax, edi
mov     edi, eax
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [ecx+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+18h+var_14], edx
mov     edx, edi
imul    edx, edi
mov     eax, ebp
imul    eax, ebp
add     edx, eax
mov     eax, [esp+18h+var_14]
imul    eax, eax
add     eax, edx
call    sub_4EF075
mov     ebx, eax
test    eax, eax
jz      short loc_4DDD2B
movsx   esi, si
mov     edx, esi
imul    edx, ebp
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esp+18h+var_18], eax
mov     edx, esi
imul    edx, edi
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edi, eax
mov     edx, [esp+18h+var_14]
imul    edx, esi
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, [esp+18h+var_18]
mov     [ecx+44h], dx
mov     [ecx+46h], di
mov     [ecx+48h], ax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     [ecx+4Ah], ax
jmp     short loc_4DDD43

loc_4DDD2B:
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ah], 0

loc_4DDD43:
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DDC7D endp




sub_4DDD5D proc near
push    ecx
mov     ecx, [edx+8]
sub     ecx, [eax+8]
sar     ecx, 0Ch
mov     edx, [edx]
sub     edx, [eax]
test    ecx, ecx
jle     short loc_4DDD82
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
add     eax, 800h
pop     ecx
retn

loc_4DDD82:
jge     short loc_4DDDA2
neg     edx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
pop     ecx
retn

loc_4DDDA2:
test    edx, edx
jl      short loc_4DDDAD
mov     eax, 0C00h
pop     ecx
retn

loc_4DDDAD:
mov     eax, 400h
pop     ecx
retn
sub_4DDD5D endp




sub_4DDDB4 proc near
push    ebx
push    ecx
mov     ebx, [edx+2]
sar     ebx, 10h
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ebx, ecx
mov     ecx, ebx
shl     ecx, 4
movsx   edx, word ptr [edx]
movsx   eax, word ptr [eax]
sub     edx, eax
shl     edx, 10h
test    ecx, ecx
jle     short loc_4DDDEC
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
add     eax, 800h
pop     ecx
pop     ebx
retn

loc_4DDDEC:
jge     short loc_4DDE0D
neg     edx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
pop     ecx
pop     ebx
retn

loc_4DDE0D:
test    edx, edx
jl      short loc_4DDE19
mov     eax, 0C00h
pop     ecx
pop     ebx
retn

loc_4DDE19:
mov     eax, 400h
pop     ecx
pop     ebx
retn
sub_4DDDB4 endp




sub_4DDE21 proc near
push    ebx
push    ecx
mov     ebx, [edx+2]
sar     ebx, 10h
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ebx, ecx
movsx   edx, word ptr [edx]
movsx   eax, word ptr [eax]
sub     edx, eax
mov     eax, edx
mov     edx, ebx
call    sub_4EF04B
add     eax, 800h
pop     ecx
pop     ebx
retn
sub_4DDE21 endp




sub_4DDE4A proc near
push    ebx
push    ecx
push    esi
movsx   ecx, word ptr [edx]
movsx   ebx, word ptr [eax]
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [edx+2]
sar     ecx, 10h
mov     esi, [eax+2]
sar     esi, 10h
sub     ecx, esi
mov     edx, [edx]
sar     edx, 10h
mov     eax, [eax]
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
imul    eax, eax
imul    ecx, ecx
add     eax, ecx
call    sub_4EF075
call    sub_4EF04B
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
pop     esi
pop     ecx
pop     ebx
retn
sub_4DDE4A endp




sub_4DDE97 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     eax, [edx+88h]
movsx   ebx, bx
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 4
lea     esi, [ecx+ebp]
mov     ecx, 0Ch
lea     edi, [eax+4]
lea     esi, [esi+250h]
rep movsd
mov     edi, [ebp+88h]
lea     esi, [ebx+1]
mov     ecx, esi
shl     ecx, 2
add     esi, ecx
shl     esi, 2
mov     ecx, [edi+70h]
add     ecx, esi
mov     [eax], ecx
mov     [eax+40h], ebp
mov     dword ptr [eax+3Ch], offset unk_808080
mov     ecx, ebx
mov     si, [ebp+ecx*8+190h]
mov     [edx+14h], si
mov     [eax+34h], si
mov     si, [ebp+ecx*8+192h]
mov     [edx+16h], si
mov     [eax+36h], si
mov     cx, [ebp+ecx*8+194h]
mov     [edx+18h], cx
mov     [eax+38h], cx
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
mov     al, [ebp+ebx*4+0F9h]
mov     [edx+0Bh], al
mov     byte ptr [ebp+ebx*4+0F9h], 0FFh
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DDE97 endp




sub_4DDF54 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E778
xor     eax, eax
jmp     short loc_4DDF67

loc_4DDF61:
inc     eax
cmp     eax, 10h
jge     short loc_4DDFCA

loc_4DDF67:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DDF61
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E778, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
add     eax, offset byte_6DD9CC
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DDFCA:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DDF54 endp




sub_4DDFD0 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E758
xor     eax, eax
jmp     short loc_4DDFE3

loc_4DDFDD:
inc     eax
cmp     eax, 4
jge     short loc_4DE03D

loc_4DDFE3:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DDFDD
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E758, edx
imul    eax, 734h
add     eax, offset unk_6E23DC
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE03D:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DDFD0 endp




sub_4DE043 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E73C
xor     eax, eax
jmp     short loc_4DE056

loc_4DE050:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_4DE0B9

loc_4DE056:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE050
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E73C, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_57098C
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE0B9:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE043 endp




sub_4DE0BF proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E780
xor     eax, eax
jmp     short loc_4DE0D2

loc_4DE0CC:
inc     eax
cmp     eax, 10h
jge     short loc_4DE135

loc_4DE0D2:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE0CC
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E780, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_6DC7FC
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE135:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE0BF endp




sub_4DE13B proc near
push    ebx
push    ecx
push    edx
push    esi
xor     esi, esi
jmp     short loc_4DE149

loc_4DE143:
inc     esi
cmp     esi, 2
jge     short loc_4DE1B7

loc_4DE149:
mov     ebx, ds:dword_572D54[esi*4]
xor     eax, eax
jmp     short loc_4DE15A

loc_4DE154:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_4DE143

loc_4DE15A:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE154
mov     ebx, 80000000h
shr     ebx, cl
or      ds:dword_572D54[esi*4], ebx
shl     esi, 5
lea     edx, [eax+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE1B7:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE13B endp




sub_4DE1BE proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E728
xor     eax, eax
jmp     short loc_4DE1D1

loc_4DE1CB:
inc     eax
cmp     eax, 10h
jge     short loc_4DE221

loc_4DE1D1:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE1CB
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E728, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, offset unk_56FA74
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE221:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE1BE endp




sub_4DE227 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E730
xor     eax, eax
jmp     short loc_4DE23A

loc_4DE234:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_4DE28A

loc_4DE23A:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE234
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E730, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 5
add     eax, offset unk_56FCB4
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE28A:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE227 endp




sub_4DE290 proc near
push    ebx
push    ecx
push    edx
cmp     eax, 20h ; ' '
jl      short loc_4DE29E

loc_4DE298:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE29E:
mov     edx, ds:dword_77E730
mov     cl, al
mov     ebx, edx
shl     ebx, cl
test    ebx, ebx
jl      short loc_4DE298
mov     ebx, 80000000h
shr     ebx, cl
or      edx, ebx
mov     ds:dword_77E730, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 5
add     eax, offset unk_56FCB4
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE290 endp




sub_4DE2F6 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset byte_6DD9CC
mov     ecx, 4A0h
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E938
or      edx, eax
mov     ds:dword_77E938, edx
mov     eax, ds:dword_77E778
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E938, ecx

loc_4DE32F:
mov     byte ptr [ebx], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE2F6 endp




sub_4DE336 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset unk_6E23DC
mov     ecx, 734h
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E93C
or      edx, eax
mov     ds:dword_77E93C, edx
mov     eax, ds:dword_77E758
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E93C, ecx
jmp     short loc_4DE32F
sub_4DE336 endp




sub_4DE371 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset byte_57098C
mov     ecx, 11Ch
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E72C
or      edx, eax
mov     ds:dword_77E72C, edx
mov     eax, ds:dword_77E73C
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E72C, ecx
jmp     short loc_4DE32F
sub_4DE371 endp




sub_4DE3AC proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset byte_6DC7FC
mov     ecx, 11Ch
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E77C
or      edx, eax
mov     ds:dword_77E77C, edx
mov     eax, ds:dword_77E780
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E77C, ecx
jmp     loc_4DE32F
sub_4DE3AC endp




sub_4DE3EA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
sub     eax, offset unk_572D5C
mov     ecx, 58h ; 'X'
xor     edx, edx
div     ecx
mov     edx, eax
shr     eax, 5
and     edx, 1Fh
mov     cl, dl
mov     edx, 80000000h
shr     edx, cl
mov     ecx, ds:dword_57435C[eax*4]
or      ecx, edx
mov     ds:dword_57435C[eax*4], ecx
mov     edx, ds:dword_572D54[eax*4]
mov     esi, ecx
and     esi, edx
mov     ds:dword_57435C[eax*4], esi
mov     byte ptr [ebx], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE3EA endp




sub_4DE439 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset unk_56FA74
mov     ecx, 24h ; '$'
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E740
or      edx, eax
mov     ds:dword_77E740, edx
mov     eax, ds:dword_77E728
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E740, ecx
jmp     loc_4DE32F
sub_4DE439 endp




sub_4DE477 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset unk_56FCB4
mov     ecx, 60h ; '`'
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E744
or      edx, eax
mov     ds:dword_77E744, edx
mov     eax, ds:dword_77E730
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E744, ecx
jmp     loc_4DE32F
sub_4DE477 endp




sub_4DE4B5 proc near
push    ecx
mov     eax, ds:dword_77E77C
not     eax
and     ds:dword_77E780, eax
xor     ecx, ecx
mov     ds:dword_77E77C, ecx
mov     eax, ds:dword_77E938
not     eax
and     ds:dword_77E778, eax
mov     ds:dword_77E938, ecx
mov     eax, ds:dword_77E93C
not     eax
and     ds:dword_77E758, eax
mov     ds:dword_77E93C, ecx
mov     eax, ds:dword_77E72C
not     eax
and     ds:dword_77E73C, eax
mov     ds:dword_77E72C, ecx
mov     eax, ds:dword_57435C
not     eax
and     ds:dword_572D54, eax
mov     ds:dword_57435C, ecx
mov     eax, ds:dword_574360
not     eax
and     ds:dword_572D58, eax
mov     ds:dword_574360, ecx
mov     eax, ds:dword_77E740
not     eax
and     ds:dword_77E728, eax
mov     ds:dword_77E740, ecx
mov     eax, ds:dword_77E744
not     eax
and     ds:dword_77E730, eax
mov     ds:dword_77E744, ecx
pop     ecx
retn
sub_4DE4B5 endp




sub_4DE552 proc near
call    sub_4DDDB4
mov     edx, eax
movsx   eax, bx
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
cmp     eax, 800h
jnb     short loc_4DE579
movsx   edx, cx
add     edx, edx
cmp     eax, edx
jnb     short loc_4DE579
mov     ecx, eax
jmp     short loc_4DE597

loc_4DE579:
cmp     eax, 800h
jb      short loc_4DE597
movsx   edx, cx
add     edx, edx
mov     ebx, 1000h
sub     ebx, eax
cmp     ebx, edx
jnb     short loc_4DE597
mov     ecx, 1000h
sub     ecx, eax

loc_4DE597:
cmp     eax, 800h
jbe     short loc_4DE5A0
neg     ecx

loc_4DE5A0:
mov     eax, ecx
retn
sub_4DE552 endp




sub_4DE5A3 proc near
call    sub_4DDE4A
mov     edx, eax
movsx   eax, bx
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
cmp     eax, 800h
jnb     short loc_4DE5CA
movsx   edx, cx
add     edx, edx
cmp     eax, edx
jnb     short loc_4DE5CA
mov     ecx, eax
jmp     short loc_4DE5E8

loc_4DE5CA:
cmp     eax, 800h
jb      short loc_4DE5E8
movsx   edx, cx
add     edx, edx
mov     ebx, 1000h
sub     ebx, eax
cmp     ebx, edx
jnb     short loc_4DE5E8
mov     ecx, 1000h
sub     ecx, eax

loc_4DE5E8:
cmp     eax, 800h
jbe     short loc_4DE5F1
neg     ecx

loc_4DE5F1:
mov     eax, ecx
retn
sub_4DE5A3 endp




sub_4DE5F4 proc near
push    ecx
sub     eax, edx
test    ax, ax
jge     short loc_4DE5FF
add     ah, 10h

loc_4DE5FF:
cmp     ax, 800h
jge     short loc_4DE615
movsx   edx, bx
movsx   ecx, ax
cmp     edx, ecx
jle     short loc_4DE635
mov     ebx, eax
mov     eax, ebx
pop     ecx
retn

loc_4DE615:
movsx   ecx, ax
sub     ecx, 1000h
neg     ecx
movsx   edx, bx
cmp     edx, ecx
jle     short loc_4DE633
mov     ebx, eax
sub     ebx, 1000h
mov     eax, ebx
pop     ecx
retn

loc_4DE633:
neg     ebx

loc_4DE635:
mov     eax, ebx
pop     ecx
retn
sub_4DE5F4 endp




sub_4DE639 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
mov     esi, edx
mov     edx, ecx
call    sub_4DDD5D
mov     edx, eax
add     dh, 8
sub     edx, [esp+4+arg_0]
add     edx, [esp+4+arg_4]
and     dh, 0Fh
mov     ecx, edx
sub     eax, esi
add     eax, ebx
and     ah, 0Fh
mov     edx, eax
movsx   eax, bx
add     eax, eax
movsx   edx, dx
cmp     edx, eax
jg      short loc_4DE683
mov     eax, [esp+4+arg_0+2]
sar     eax, 10h
add     eax, eax
movsx   edx, cx
cmp     edx, eax
jg      short loc_4DE683
mov     eax, 1
pop     esi
retn    8

loc_4DE683:
xor     eax, eax
pop     esi
retn    8
sub_4DE639 endp




sub_4DE689 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
mov     esi, edx
mov     edx, ecx
call    sub_4DDD5D
mov     edx, eax
sub     edx, [esp+4+arg_0]
add     edx, [esp+4+arg_4]
and     dh, 0Fh
mov     ecx, edx
sub     eax, esi
add     eax, ebx
and     ah, 0Fh
mov     edx, eax
movsx   eax, bx
add     eax, eax
movsx   edx, dx
cmp     edx, eax
jg      short loc_4DE6D0
mov     eax, [esp+4+arg_0+2]
sar     eax, 10h
add     eax, eax
movsx   edx, cx
cmp     edx, eax
jg      short loc_4DE6D0
mov     eax, 1
pop     esi
retn    8

loc_4DE6D0:
xor     eax, eax
pop     esi
retn    8
sub_4DE689 endp




sub_4DE6D6 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
mov     esi, edx
mov     edx, ecx
call    sub_4DDDB4
mov     edx, eax
add     dh, 8
sub     edx, [esp+4+arg_0]
add     edx, [esp+4+arg_4]
and     dh, 0Fh
mov     ecx, edx
sub     eax, esi
add     eax, ebx
and     ah, 0Fh
mov     edx, eax
movsx   eax, bx
add     eax, eax
movsx   edx, dx
cmp     edx, eax
jg      short loc_4DE720
mov     eax, [esp+4+arg_0+2]
sar     eax, 10h
add     eax, eax
movsx   edx, cx
cmp     edx, eax
jg      short loc_4DE720
mov     eax, 1
pop     esi
retn    8

loc_4DE720:
xor     eax, eax
pop     esi
retn    8
sub_4DE6D6 endp




sub_4DE726 proc near
push    esi
push    edi
mov     esi, eax
mov     eax, edx
mov     edi, ecx
xor     ecx, ecx
test    byte ptr [edx+6], 1
jz      short loc_4DE73C
mov     edx, eax
mov     eax, esi
jmp     short loc_4DE741

loc_4DE73C:
mov     edx, offset unk_5505D4

loc_4DE741:
call    sub_4DDDB4
mov     esi, eax
and     esi, 0FFFh
test    di, di
jnz     short loc_4DE78E
cwde
movsx   edx, bx
mov     ecx, eax
sub     ecx, edx
lea     edx, [ecx+400h]
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_4DE780

loc_4DE76F:
lea     ecx, [eax+800h]
and     ecx, 0FFFh
mov     eax, ecx
pop     edi
pop     esi
retn

loc_4DE780:
movsx   ecx, si
or      ecx, 10000h
mov     eax, ecx
pop     edi
pop     esi
retn

loc_4DE78E:
cwde
movsx   edx, bx
mov     ebx, eax
sub     ebx, edx
mov     edx, ebx
add     ebx, 200h
and     ebx, 0FFFh
cmp     ebx, 400h
jl      short loc_4DE76F
lea     ebx, [edx+600h]
and     ebx, 0FFFh
cmp     ebx, 400h
jge     short loc_4DE7D7
lea     ecx, [eax-400h]
and     ecx, 0FFFh
or      ecx, 30000h
mov     eax, ecx
pop     edi
pop     esi
retn

loc_4DE7D7:
lea     ebx, [edx+0A00h]
and     ebx, 0FFFh
cmp     ebx, 400h
jl      short loc_4DE780
add     edx, 0E00h
and     edx, 0FFFh
cmp     edx, 400h
jge     short loc_4DE811
lea     ecx, [eax+400h]
and     ecx, 0FFFh
or      ecx, 20000h

loc_4DE811:
mov     eax, ecx
pop     edi
pop     esi
retn
sub_4DE726 endp

jpt_4DE847 dd offset loc_4DE84E ; jump table for switch statement
dd offset loc_4DE84E
dd offset loc_4DE84E
dd offset loc_4DE84E
dd offset loc_4DE857
dd offset loc_4DE857
dd offset loc_4DE875
dd offset loc_4DE875
dd offset def_4DE847



sub_4DE83A proc near
push    ecx
mov     ecx, eax
mov     eax, edx
shr     eax, 4
cmp     eax, 8          ; switch 9 cases
ja      short def_4DE847 ; jumptable 004DE847 default case, case 8
jmp     jpt_4DE847[eax*4] ; switch jump

loc_4DE84E:             ; jumptable 004DE847 cases 0-3
mov     eax, ds:dword_765764[edx*4]
jmp     short loc_4DE89A

loc_4DE857:             ; jumptable 004DE847 cases 4,5
mov     eax, edx
shl     eax, 2
cmp     byte ptr [ecx+170h], 0
jz      short loc_4DE86D
mov     eax, ds:dword_7500AC[eax]
jmp     short loc_4DE89A

loc_4DE86D:
mov     eax, ds:dword_75052C[eax]
jmp     short loc_4DE89A

loc_4DE875:             ; jumptable 004DE847 cases 6,7
mov     eax, edx
shl     eax, 2
cmp     byte ptr [ecx+171h], 0
jz      short loc_4DE88B
mov     eax, ds:dword_70DAAC[eax]
jmp     short loc_4DE89A

loc_4DE88B:
mov     eax, ds:dword_70D62C[eax]
jmp     short loc_4DE89A

def_4DE847:             ; jumptable 004DE847 default case, case 8
mov     eax, ds:dword_76334C[edx*4]

loc_4DE89A:
shl     ebx, 3
add     ebx, eax
mov     [ecx+94h], eax
mov     [ecx+98h], ebx
mov     [ecx+0ACh], dl
mov     eax, [ebx]
mov     [ecx+0A4h], eax
mov     eax, ecx
call    sub_4DEF3E
mov     eax, ecx
call    sub_4DEBDA
pop     ecx
retn
sub_4DE83A endp

align 2
jpt_4DE8F8 dd offset loc_4DE8FF ; jump table for switch statement
dd offset loc_4DE8FF
dd offset loc_4DE8FF
dd offset loc_4DE8FF
dd offset loc_4DE908
dd offset loc_4DE908
dd offset loc_4DE926
dd offset loc_4DE926
dd offset def_4DE8F8



sub_4DE8EE proc near
mov     edx, ebx
shr     edx, 4
cmp     edx, 8          ; switch 9 cases
ja      short def_4DE8F8 ; jumptable 004DE8F8 default case, case 8
jmp     jpt_4DE8F8[edx*4] ; switch jump

loc_4DE8FF:             ; jumptable 004DE8F8 cases 0-3
mov     edx, ds:dword_765764[ebx*4]
jmp     short loc_4DE94B

loc_4DE908:             ; jumptable 004DE8F8 cases 4,5
mov     edx, ebx
shl     edx, 2
cmp     byte ptr [eax+170h], 0
jz      short loc_4DE91E
mov     edx, ds:dword_7500AC[edx]
jmp     short loc_4DE94B

loc_4DE91E:
mov     edx, ds:dword_75052C[edx]
jmp     short loc_4DE94B

loc_4DE926:             ; jumptable 004DE8F8 cases 6,7
mov     edx, ebx
shl     edx, 2
cmp     byte ptr [eax+171h], 0
jz      short loc_4DE93C
mov     edx, ds:dword_70DAAC[edx]
jmp     short loc_4DE94B

loc_4DE93C:
mov     edx, ds:dword_70D62C[edx]
jmp     short loc_4DE94B

def_4DE8F8:             ; jumptable 004DE8F8 default case, case 8
mov     edx, ds:dword_76334C[ebx*4]

loc_4DE94B:
shl     ecx, 3
add     ecx, edx
mov     [eax+0F8h], edx
mov     [eax+0FCh], ecx
mov     [eax+104h], bl
mov     edx, [ecx]
mov     [eax+100h], edx
retn
sub_4DE8EE endp




sub_4DE96B proc near

var_8= dword ptr -8

push    ecx
sub     esp, 4
mov     ecx, eax
mov     [esp+8+var_8], edx
mov     eax, edx
shl     eax, 2
mov     edx, [ecx+90h]
add     eax, edx
mov     edx, ebx
shl     edx, 3
mov     ebx, [eax]
add     edx, ebx
mov     [ecx+94h], ebx
mov     [ecx+98h], edx
mov     al, byte ptr [esp+8+var_8]
mov     [ecx+0ACh], al
mov     eax, [edx]
mov     [ecx+0A4h], eax
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
add     esp, 4
pop     ecx
retn
sub_4DE96B endp




sub_4DE9BA proc near

var_8= byte ptr -8

push    ecx
push    edx
shl     edx, 2
mov     ecx, [eax+90h]
add     edx, ecx
mov     ecx, ebx
shl     ecx, 3
mov     ebx, [edx]
add     ecx, ebx
mov     [eax+94h], ebx
mov     [eax+98h], ecx
mov     dl, [esp+8+var_8]
mov     [eax+0ACh], dl
mov     edx, [ecx]
mov     [eax+0A4h], edx
call    sub_4DFC52
add     esp, 4
pop     ecx
retn
sub_4DE9BA endp




sub_4DE9F7 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+98h]
mov     bl, [edx+0A5h]
dec     bl
mov     [edx+0A5h], bl
jnz     short loc_4DEA5B
cmp     byte ptr [eax+3], 0
jge     short loc_4DEA44
mov     ecx, [eax]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEA2D
mov     al, [eax+1]
mov     [edx+0A5h], al
jmp     short loc_4DEA5B

loc_4DEA2D:
mov     al, [eax+3]
and     al, 7Fh
and     eax, 0FFh
shl     eax, 3
mov     ecx, [edx+94h]
add     ecx, eax
jmp     short loc_4DEA4D

loc_4DEA44:
mov     ecx, [edx+98h]
add     ecx, 8

loc_4DEA4D:
mov     [edx+98h], ecx
mov     eax, [ecx]
mov     [edx+0A4h], eax

loc_4DEA5B:
mov     eax, edx
call    sub_4DEF3E
mov     eax, edx
call    sub_4DEBDA
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE9F7 endp




sub_4DEA6D proc near
push    ebx
push    ecx
mov     [eax+106h], dx
mov     edx, [eax+0FCh]
mov     bl, [eax+101h]
dec     bl
mov     [eax+101h], bl
jnz     short loc_4DEADA
cmp     byte ptr [edx+3], 0
jge     short loc_4DEAC3
mov     ecx, [edx]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEAA8
mov     dl, [edx+1]
mov     [eax+101h], dl
pop     ecx
pop     ebx
retn

loc_4DEAA8:
mov     dl, [edx+3]
and     dl, 7Fh
mov     ecx, edx
and     ecx, 0FFh
shl     ecx, 3
mov     edx, [eax+0F8h]
add     edx, ecx
jmp     short loc_4DEACC

loc_4DEAC3:
mov     edx, [eax+0FCh]
add     edx, 8

loc_4DEACC:
mov     [eax+0FCh], edx
mov     edx, [edx]
mov     [eax+100h], edx

loc_4DEADA:
pop     ecx
pop     ebx
retn
sub_4DEA6D endp




sub_4DEADD proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+98h]
mov     bl, [edx+0A5h]
dec     bl
mov     [edx+0A5h], bl
jnz     short loc_4DEB41
cmp     byte ptr [eax+3], 0
jge     short loc_4DEB2A
mov     ecx, [eax]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEB13
mov     al, [eax+1]
mov     [edx+0A5h], al
jmp     short loc_4DEB41

loc_4DEB13:
mov     al, [eax+3]
and     al, 7Fh
and     eax, 0FFh
shl     eax, 3
mov     ecx, [edx+94h]
add     ecx, eax
jmp     short loc_4DEB33

loc_4DEB2A:
mov     ecx, [edx+98h]
add     ecx, 8

loc_4DEB33:
mov     [edx+98h], ecx
mov     eax, [ecx]
mov     [edx+0A4h], eax

loc_4DEB41:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEADD endp




sub_4DEB53 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+98h]
mov     bl, [eax+0A5h]
dec     bl
mov     [eax+0A5h], bl
jnz     short loc_4DEBBF
cmp     byte ptr [edx+3], 0
jge     short loc_4DEBA8
mov     ecx, [edx]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEB87
mov     dl, [edx+1]
mov     [eax+0A5h], dl
jmp     short loc_4DEBBF

loc_4DEB87:
mov     dl, [edx+3]
and     dl, 7Fh
and     edx, 0FFh
shl     edx, 3
mov     ecx, [eax+94h]
add     ecx, edx
mov     [eax+98h], ecx
mov     edx, [ecx]
jmp     short loc_4DEBB9

loc_4DEBA8:
mov     edx, [eax+98h]
add     edx, 8
mov     [eax+98h], edx
mov     edx, [edx]

loc_4DEBB9:
mov     [eax+0A4h], edx

