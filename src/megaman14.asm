loc_41FF5A:
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
pop     ebx
retn
sub_41FE49 endp




sub_41FF74 proc near
push    ebx
push    esi
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_41FF8E
jbe     short loc_41FFB6
cmp     bl, 2
jz      loc_420019
jmp     loc_4200A7

loc_41FF8E:
test    bl, bl
jnz     loc_4200A7
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]
jmp     loc_4200A7

loc_41FFB6:
mov     si, [edx+18h]
cmp     si, 0D0h
jge     short loc_41FFF8
mov     ebx, esi
cmp     si, 10h
jb      short loc_41FFD4
jbe     short loc_41FFE8
cmp     si, 0C0h
jz      short loc_41FFF0
jmp     short loc_41FFDF

loc_41FFD4:
test    si, si
jnz     short loc_41FFDF

loc_41FFD9:
mov     word ptr [eax+50h], 0FFFFh

loc_41FFDF:
inc     word ptr [edx+18h]
jmp     loc_4200A7

loc_41FFE8:
mov     word ptr [eax+50h], 0
jmp     short loc_41FFDF

loc_41FFF0:
mov     word ptr [eax+50h], 1
jmp     short loc_41FFDF

loc_41FFF8:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 4
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
jmp     loc_4200A7

loc_420019:
mov     bx, [edx+18h]
cmp     bx, 1F0h
jge     loc_420084
cmp     bx, 100h
jb      short loc_420043
jbe     short loc_420063
cmp     bx, 110h
jb      short loc_41FFDF
jbe     short loc_42006E
cmp     bx, 1E0h
jz      short loc_420079
jmp     short loc_41FFDF

loc_420043:
test    bx, bx
jbe     short loc_420050
cmp     bx, 10h
jz      short loc_420058
jmp     short loc_41FFDF

loc_420050:
mov     word ptr [eax+50h], 1
jmp     short loc_41FFDF

loc_420058:
mov     word ptr [eax+50h], 0
jmp     loc_41FFDF

loc_420063:
mov     word ptr [eax+4Eh], 1
jmp     loc_41FFDF

loc_42006E:
mov     word ptr [eax+4Eh], 0
jmp     loc_41FFDF

loc_420079:
mov     word ptr [eax+4Eh], 0FFFFh
jmp     loc_41FFD9

loc_420084:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
or      byte ptr [edx+140h], 1

loc_4200A7:
mov     bx, [eax+4Ch]
add     [eax+44h], bx
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+44h]
add     [eax+14h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      short loc_420112
mov     bh, [eax+0Ah]
cmp     bh, 1
jnz     short loc_4200FC
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
mov     word ptr [eax+18h], 0FA00h
add     [eax+0Ah], bh
jmp     short loc_42010E

loc_4200FC:
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F400h
mov     word ptr [eax+18h], 1800h

loc_42010E:
and     byte ptr [edx+14h], 0FBh

loc_420112:
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
pop     ebx
retn
sub_41FF74 endp




sub_420139 proc near
push    ebx
push    ecx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_42015C
mov     word ptr [edx+18h], 0
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]

loc_42015C:
mov     bx, [edx+18h]
cmp     bx, 2F8h
jge     loc_420235
cmp     bx, 16Ch
jb      short loc_4201C3
jbe     loc_420213
cmp     bx, 274h
jb      short loc_4201A6
jbe     loc_420221
cmp     bx, 284h
jb      loc_42022F
jbe     loc_42020B
cmp     bx, 2E8h
jz      loc_420229
jmp     loc_42022F

loc_4201A6:
cmp     bx, 17Ch
jb      loc_42022F
jbe     loc_42021B
cmp     bx, 18Ch
jz      short loc_4201EB
jmp     loc_42022F

loc_4201C3:
cmp     bx, 10h
jb      short loc_4201E0
jbe     short loc_4201EB
cmp     bx, 74h ; 't'
jb      loc_42022F
jbe     short loc_4201F3
cmp     bx, 84h
jz      short loc_42020B
jmp     short loc_42022F

loc_4201E0:
test    bx, bx
jnz     short loc_42022F
mov     [eax+4Ch], bx
jmp     short loc_420229

loc_4201EB:
mov     word ptr [eax+4Eh], 0
jmp     short loc_42022F

loc_4201F3:
cmp     byte ptr [eax+9], 1
jnz     short loc_420200

loc_4201F9:
mov     ecx, 1
jmp     short loc_420205

loc_420200:
mov     ecx, 0FFFFFFFFh

loc_420205:
mov     [eax+4Ch], cx
jmp     short loc_42022F

loc_42020B:
mov     word ptr [eax+4Ch], 0
jmp     short loc_42022F

loc_420213:
mov     word ptr [eax+4Eh], 1
jmp     short loc_42022F

loc_42021B:
or      byte ptr [edx+14h], 4
jmp     short loc_42022F

loc_420221:
cmp     byte ptr [eax+9], 1
jnz     short loc_4201F9
jmp     short loc_420200

loc_420229:
mov     word ptr [eax+4Eh], 0FFFFh

loc_42022F:
inc     word ptr [edx+18h]
jmp     short loc_42024B

loc_420235:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0

loc_42024B:
mov     bx, [eax+4Ch]
add     [eax+44h], bx
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+44h]
add     [eax+14h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      short loc_4202BA
mov     ch, [eax+0Ah]
cmp     ch, 1
jnz     short loc_42029A
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0E600h
add     [eax+0Ah], ch
jmp     short loc_4202B6

loc_42029A:
cmp     byte ptr [eax+9], 1
jnz     short loc_4202A7
mov     ecx, 1000h
jmp     short loc_4202AC

loc_4202A7:
mov     ecx, 0FFFFF000h

loc_4202AC:
mov     [eax+14h], cx
mov     word ptr [eax+16h], 0FCC0h

loc_4202B6:
and     byte ptr [edx+14h], 0FBh

loc_4202BA:
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
pop     ecx
pop     ebx
retn
sub_420139 endp

jpt_420381 dd offset loc_4203A4 ; jump table for switch statement
dd offset def_420381
dd offset loc_4203A4
dd offset loc_420388
dd offset loc_42039C



sub_4202F5 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_42031C
mov     word ptr [edx+18h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
inc     byte ptr [ecx+0Ah]

loc_42031C:
mov     dh, [ecx+9]
cmp     dh, 2
jz      short loc_420329
cmp     dh, 4
jnz     short loc_420334

loc_420329:
mov     edx, ebx
mov     eax, ecx
call    sub_420EF8
jmp     short loc_42033D

loc_420334:
mov     edx, ebx
mov     eax, ecx
call    sub_420FE4

loc_42033D:
mov     ax, [ecx+4Ch]
add     [ecx+44h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
test    byte ptr [ebx+14h], 4
jz      short loc_4203BA
mov     al, [ecx+9]
sub     al, 2           ; switch 5 cases
cmp     al, 4
ja      short def_420381 ; jumptable 00420381 default case, case 3
and     eax, 0FFh
jmp     jpt_420381[eax*4] ; switch jump

loc_420388:             ; jumptable 00420381 case 5
mov     word ptr [ecx+14h], 0F000h

loc_42038E:
mov     word ptr [ecx+16h], 0FCC0h
mov     word ptr [ecx+18h], 600h
jmp     short def_420381 ; jumptable 00420381 default case, case 3

loc_42039C:             ; jumptable 00420381 case 6
mov     word ptr [ecx+14h], 1000h
jmp     short loc_42038E

loc_4203A4:             ; jumptable 00420381 cases 2,4
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0F400h
mov     word ptr [ecx+18h], 1800h

def_420381:             ; jumptable 00420381 default case, case 3
and     byte ptr [ebx+14h], 0FBh

loc_4203BA:
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
pop     ecx
pop     ebx
retn
sub_4202F5 endp




sub_4203E1 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     ebx, 0FFFFFFFFh
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_420434
mov     dword ptr [edx+144h], 0
cmp     byte ptr [esi+9], 7
jnz     short loc_42040B
inc     byte ptr [ecx+13Ch]
jmp     short loc_420411

loc_42040B:
inc     byte ptr [ecx+13Dh]

loc_420411:
mov     ax, [esi+16h]
mov     [ecx+1Ch], ax
mov     word ptr [ecx+18h], 0
mov     ah, [ecx+14h]
test    ah, 40h
jz      short loc_420431
or      ah, 1
mov     [ecx+14h], ah
pop     esi
pop     ecx
pop     ebx
retn

loc_420431:
inc     byte ptr [esi+0Ah]

loc_420434:
mov     dx, [ecx+18h]
cmp     dx, 0C0h
jge     loc_42048D
mov     eax, edx
cmp     dx, 3Ch ; '<'
jb      short loc_420467
jbe     short loc_420482
cmp     dx, 88h
jb      short loc_42045F
jbe     short loc_42047B
cmp     dx, 9Ch
jz      short loc_420482
jmp     short loc_420487

loc_42045F:
cmp     dx, 74h ; 't'
jz      short loc_420477
jmp     short loc_420487

loc_420467:
cmp     dx, 14h
jb      short loc_420487
jbe     short loc_420477
cmp     dx, 28h ; '('
jz      short loc_42047B
jmp     short loc_420487

loc_420477:
xor     ebx, ebx
jmp     short loc_420487

loc_42047B:
mov     ebx, 1
jmp     short loc_420487

loc_420482:
mov     ebx, 2

loc_420487:
inc     word ptr [ecx+18h]
jmp     short loc_42049C

loc_42048D:
mov     word ptr [ecx+18h], 0
mov     edx, ecx
mov     eax, esi
call    sub_42127A

loc_42049C:
cmp     ebx, 0FFFFFFFFh
jz      short loc_4204AA
mov     edx, ecx
mov     eax, esi
call    sub_421305

loc_4204AA:
cmp     word ptr [ecx+18h], 0C0h
jnz     short loc_4204CB
test    byte ptr [ecx+140h], 4
jnz     short loc_4204CB
cmp     dword ptr [ecx+144h], 0
jbe     short loc_4204CB
or      byte ptr [ecx+140h], 4

loc_4204CB:
test    byte ptr [ecx+14h], 40h
jz      short loc_4204F1
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4204F1
mov     word ptr [ecx+18h], 0
or      byte ptr [ecx+14h], 1

loc_4204F1:
mov     ax, [ecx+18h]
xor     ah, ah
and     al, 3Fh
movsx   edx, ax
mov     edx, dword ptr ds:unk_564C32[edx*2]
sar     edx, 10h
shl     edx, 6
sar     edx, 0Ch
mov     ecx, [ecx+1Ah]
sar     ecx, 10h
add     edx, ecx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
pop     esi
pop     ecx
pop     ebx
retn
sub_4203E1 endp




sub_420528 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, edx
mov     edi, 0FFFFFFFFh
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_420568
mov     dx, [esi+16h]
mov     [ecx+1Ch], dx
mov     word ptr [ecx+18h], 0
inc     byte ptr [ecx+13Eh]
mov     dh, [ecx+14h]
test    dh, 40h
jz      short loc_420565
mov     ah, dh
or      ah, 1
mov     [ecx+14h], ah
jmp     loc_41FA73

loc_420565:
inc     byte ptr [esi+0Ah]

loc_420568:
mov     dx, [ecx+18h]
cmp     dx, 100h
jge     short loc_4205A3
cmp     dx, 0C0h
jge     short loc_42059D
mov     ebx, [ecx+16h]
sar     ebx, 10h
mov     ebp, 18h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    ebp
test    edx, edx
jnz     short loc_42059D
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    ebp
mov     edi, eax

loc_42059D:
inc     word ptr [ecx+18h]
jmp     short loc_4205B2

loc_4205A3:
mov     word ptr [ecx+18h], 0
mov     edx, ecx
mov     eax, esi
call    sub_42127A

loc_4205B2:
cmp     edi, 0FFFFFFFFh
jz      short loc_4205C2
mov     ebx, edi
mov     edx, ecx
mov     eax, esi
call    sub_4213F7

loc_4205C2:
test    byte ptr [ecx+14h], 40h
jz      short loc_4205E8
mov     edx, [ecx+16h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4205E8
mov     word ptr [ecx+18h], 0
or      byte ptr [ecx+14h], 1

loc_4205E8:
mov     dx, [ecx+18h]
xor     dh, dh
and     dl, 3Fh
movsx   edx, dx
mov     ebx, dword ptr ds:unk_564C32[edx*2]
sar     ebx, 10h
shl     ebx, 6
sar     ebx, 0Ch
mov     edx, [ecx+1Ah]
sar     edx, 10h
add     edx, ebx
mov     [esi+16h], dx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
jmp     loc_41FA73
sub_420528 endp

jpt_42064E dd offset loc_420655 ; jump table for switch statement
dd offset loc_420670
dd offset loc_420733
dd offset loc_420749
dd offset loc_420773



sub_420635 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_42064E      ; jumptable 0042064E default case
and     eax, 0FFh
jmp     jpt_42064E[eax*4] ; switch jump

loc_420655:             ; jumptable 0042064E case 0
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0
inc     byte ptr [ebx+0Ah]

loc_420670:             ; jumptable 0042064E case 1
mov     edx, ecx
mov     eax, ebx
call    sub_4210E0

def_42064E:             ; jumptable 0042064E default case
cmp     byte ptr [ebx+0Ah], 1
jbe     loc_41FA73

loc_420683:
mov     ax, [ecx+1Ah]
xor     ah, ah
and     al, 3Fh
cwde
mov     edx, dword ptr ds:unk_564C32[eax*2]
sar     edx, 10h
shl     edx, 6
sar     edx, 0Ch
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, edx
mov     [ebx+16h], ax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
cmp     dword ptr [ecx+4], 0
jz      short loc_4206CE
mov     ax, [ebx+16h]
mov     dx, ds:word_5108F6
add     edx, eax
mov     eax, [ecx+4]
mov     [eax+16h], dx

loc_4206CE:
cmp     dword ptr [ecx+8], 0
jz      short loc_4206E6
mov     dx, [ebx+16h]
add     dx, ds:word_5108F6
mov     eax, [ecx+8]
mov     [eax+16h], dx

loc_4206E6:
inc     word ptr [ecx+1Ah]
test    byte ptr [ecx+15h], 1
jz      loc_41FA73
mov     edx, [ecx+18h]
sar     edx, 10h
mov     ebx, 40h ; '@'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     loc_41FA73
mov     ebx, [ecx+4]
test    ebx, ebx
jz      short loc_42071C
mov     eax, ebx
call    sub_4DE371

loc_42071C:
mov     esi, [ecx+8]
test    esi, esi
jz      short loc_42072A
mov     eax, esi
call    sub_4DE371

loc_42072A:
or      byte ptr [ecx+14h], 1
jmp     loc_41FA73

loc_420733:             ; jumptable 0042064E case 2
or      byte ptr [edx+140h], 40h
mov     eax, ebx
call    sub_4214A8

loc_420741:
inc     byte ptr [ebx+0Ah]
jmp     def_42064E      ; jumptable 0042064E default case

loc_420749:             ; jumptable 0042064E case 3
mov     edi, [edx+4]
test    edi, edi
jz      short loc_420756
cmp     byte ptr [edi+0Ch], 0
jnz     short loc_42076B

loc_420756:
mov     ebp, [ecx+8]
test    ebp, ebp
jz      def_42064E      ; jumptable 0042064E default case
cmp     byte ptr [ebp+0Ch], 0
jz      def_42064E      ; jumptable 0042064E default case

loc_42076B:
mov     word ptr [ecx+18h], 0
jmp     short loc_420741

loc_420773:             ; jumptable 0042064E case 4
cmp     word ptr [edx+18h], 5Ah ; 'Z'
jge     short loc_4207B5
cmp     word ptr [ecx+18h], 0
jnz     short loc_4207AC
mov     edx, [ecx+4]
test    edx, edx
jz      short loc_42079A
mov     eax, edx
mov     dl, [edx+0Ch]
or      dl, 80h
mov     [eax+0Ch], dl
mov     dword ptr [ecx+4], 0

loc_42079A:
mov     esi, [ecx+8]
test    esi, esi
jz      short loc_4207AC
or      byte ptr [esi+0Ch], 80h
mov     dword ptr [ecx+8], 0

loc_4207AC:
inc     word ptr [ecx+18h]
jmp     def_42064E      ; jumptable 0042064E default case

loc_4207B5:
mov     byte ptr [ebx+0Ah], 2
jmp     loc_420683
sub_420635 endp

db 8Dh, 40h, 0
jpt_420933 dd offset loc_420826 ; jump table for switch statement
dd offset loc_42082F
dd offset loc_420834
dd offset loc_42083D
dd offset loc_420846
dd offset loc_42084F
dd offset loc_420858



sub_4207DD proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
mov     esi, edx
lea     ebp, [edx+20h]
xor     edi, edi
xor     edx, edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_18], edx
mov     [esp+24h+var_1C], edx
jmp     loc_420896

loc_420800:
test    di, di
jbe     short loc_420817
cmp     di, 1
jmp     loc_4208E5

loc_42080E:
mov     [esp+24h+var_20], edx
jmp     loc_42088B

loc_420817:
mov     [esp+24h+var_18], edx
jmp     loc_42088B

loc_420820:
mov     [esp+24h+var_1C], edx
jmp     short loc_42088B

loc_420826:             ; jumptable 00420933 case 2
mov     eax, [esi+0Ch]

loc_420829:
or      byte ptr [eax+0Ch], 1
jmp     short def_420933 ; jumptable 00420933 default case

loc_42082F:             ; jumptable 00420933 case 3
mov     eax, [esi+10h]
jmp     short loc_420829

loc_420834:             ; jumptable 00420933 case 4
mov     eax, [esi+10h]
or      byte ptr [eax+0Ch], 2
jmp     short def_420933 ; jumptable 00420933 default case

loc_42083D:             ; jumptable 00420933 case 5
mov     eax, [esi+10h]
or      byte ptr [eax+0Ch], 4
jmp     short def_420933 ; jumptable 00420933 default case

loc_420846:             ; jumptable 00420933 case 6
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 1
jmp     short def_420933 ; jumptable 00420933 default case

loc_42084F:             ; jumptable 00420933 case 7
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 2
jmp     short def_420933 ; jumptable 00420933 default case

loc_420858:             ; jumptable 00420933 case 8
mov     eax, [esi+10h]
or      byte ptr [eax+0Dh], 4

def_420933:             ; jumptable 00420933 default case
mov     edx, ebp
mov     eax, 0A0h
call    sub_4D8BC3
movsx   ebx, di
mov     ecx, 7FFFh
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3
jmp     short loc_42088B

loc_42087F:
mov     edx, ebp
mov     eax, 9Bh
call    sub_4D8BC3

loc_42088B:
inc     edi
cmp     di, 0Ch
jge     loc_42093A

loc_420896:
movsx   ebx, di
mov     ecx, ebx
shl     ecx, 3
lea     eax, [esi+ecx]
mov     edx, [eax+0D0h]
and     edx, 0FFFFFFh
jz      short loc_42088B
lea     ebp, [esi+20h]
add     ebp, ecx
cmp     byte ptr [esi+ebx+130h], 0FFh
jnz     short loc_42087F
test    byte ptr [eax+0D3h], 18h
jz      short loc_42087F
cmp     di, 9
jb      loc_420800
jbe     loc_42080E
cmp     di, 0Ah
jbe     loc_420817
cmp     di, 0Bh

loc_4208E5:
jz      loc_420820
movsx   ecx, di
lea     eax, [ecx+ecx]
add     eax, esi
mov     bx, [eax+0A0h]
sub     ebx, edx
mov     [eax+0A0h], bx
test    bx, bx
jg      def_420933      ; jumptable 00420933 default case
mov     word ptr [eax+0A0h], 0
lea     eax, [esi+ecx]
mov     byte ptr [eax+130h], 0
mov     eax, edi
sub     eax, 2          ; switch 7 cases
cmp     ax, 6
ja      def_420933      ; jumptable 00420933 default case
and     eax, 0FFFFh
jmp     jpt_420933[eax*4] ; switch jump

loc_42093A:
cmp     [esp+24h+var_18], 0
jz      short loc_4209A9
mov     eax, [esp+24h+var_18]
mov     bx, [esi+0A0h]
sub     ebx, eax
mov     [esi+0A0h], bx
test    bx, bx
jg      short loc_42097D
mov     word ptr [esi+0A0h], 0
mov     byte ptr [esi+13Ah], 0
mov     al, [esi+13Ah]
mov     [esi+130h], al
mov     eax, [esi+0Ch]
or      byte ptr [eax+0Ch], 2

loc_42097D:
mov     ax, [esi+0A0h]
mov     [esi+0B4h], ax
lea     edx, [esi+70h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     ecx, 7FFFh
xor     ebx, ebx
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3

loc_4209A9:
cmp     [esp+24h+var_1C], 0
jz      short loc_420A1B
mov     eax, [esp+24h+var_1C]
mov     di, [esi+0A2h]
sub     edi, eax
mov     [esi+0A2h], di
test    di, di
jg      short loc_4209EC
mov     word ptr [esi+0A2h], 0
mov     byte ptr [esi+13Bh], 0
mov     al, [esi+13Bh]
mov     [esi+131h], al
mov     eax, [esi+0Ch]
or      byte ptr [eax+0Ch], 4

loc_4209EC:
mov     ax, [esi+0A2h]
mov     [esi+0B6h], ax
lea     edx, [esi+78h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     ecx, 7FFFh
mov     ebx, 1
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3

loc_420A1B:
cmp     [esp+24h+var_20], 0
jz      short loc_420A86
test    byte ptr [esi+14h], 80h
jz      short loc_420A7A
mov     eax, [esp+24h+var_20]
mov     dx, [esi+0B2h]
sub     edx, eax
mov     [esi+0B2h], dx
test    dx, dx
jg      short loc_420A5C
or      byte ptr [esi+141h], 70h
mov     word ptr [esi+0B2h], 0
mov     byte ptr [esi+139h], 0
or      byte ptr [esi+15h], 1

loc_420A5C:
mov     ecx, 7FFFh
mov     ebx, 9
mov     edx, esi
mov     eax, [esp+24h+var_24]
call    sub_4211B3
lea     edx, [esi+68h]
mov     eax, 0A0h
jmp     short loc_420A81

loc_420A7A:
mov     edx, ebp
mov     eax, 9Bh

loc_420A81:
call    sub_4D8BC3

loc_420A86:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+6Eh]
mov     edx, [esp+24h+var_24]
mov     [edx+0B2h], ax
mov     ax, [esi+0B2h]
add     ax, [esi+0A0h]
mov     dx, [esi+0A2h]
add     edx, eax
mov     ax, [esi+0A4h]
add     edx, eax
mov     eax, [esp+24h+var_24]
mov     [eax+6Eh], dx
mov     al, [esi+141h]
test    al, 1
jz      short loc_420AF3
test    al, 2
jnz     short loc_420AF3
mov     edx, [esp+24h+var_24]
mov     edx, [edx+0B0h]
sar     edx, 10h
mov     eax, [esp+24h+var_24]
mov     eax, [eax+6Ch]
sar     eax, 10h
cmp     edx, eax
jz      short loc_420AF3
or      byte ptr [esi+140h], 2
or      byte ptr [esi+141h], 4

loc_420AF3:
test    byte ptr [esi+14h], 40h
jnz     short loc_420B1F
mov     bh, [esi+132h]
cmp     bh, 1
jnz     short loc_420B1F
cmp     bh, [esi+130h]
jnz     short loc_420B1F
cmp     bh, [esi+131h]
jnz     short loc_420B1F
or      byte ptr [esi+141h], 0Fh
or      byte ptr [esi+14h], 40h

loc_420B1F:
add     esp, 10h
jmp     loc_41FA73
sub_4207DD endp

db 8Bh, 0C0h
jpt_420D28 dd offset loc_420C97 ; jump table for switch statement
dd offset loc_420CA0
dd offset loc_420CA9
dd offset loc_420CB2
dd offset loc_420CBB
dd offset loc_420CC4



sub_420B41 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
mov     ecx, edx
xor     edx, edx
mov     [esp+1Ch+var_18], edx
xor     ebx, ebx
jmp     loc_420BFD

loc_420B59:
test    bx, bx
jz      short loc_420B73
jmp     short loc_420B91

loc_420B60:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 1

loc_420B68:
mov     byte ptr [eax+0Eh], 0
add     edi, esi
mov     [eax+54h], edi
jmp     short loc_420BCF

loc_420B73:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 2
jmp     short loc_420B68

loc_420B7D:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 3
jmp     short loc_420B68

loc_420B87:
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+3], 4
jmp     short loc_420B68

loc_420B91:
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 41h ; 'A'
movsx   eax, bx
mov     ebp, eax
shl     ebp, 3
lea     esi, [ecx+ebp]
lea     edi, [edx+48h]
lea     esi, [esi+20h]
movsd
movsd
mov     byte ptr [edx+0Dh], 1
shl     eax, 2
add     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0FFh], 0FFh
lea     edx, [ecx+20h]
add     edx, ebp
mov     eax, 0A1h
call    sub_4D8BC3

loc_420BCF:
movsx   eax, bx
mov     byte ptr [ecx+eax+130h], 1
jmp     short loc_420BF6

loc_420BDC:
cmp     dl, 1
jnz     short loc_420BF6
cmp     bx, 2
jz      short loc_420BF2
test    bx, bx
jz      short loc_420BF2
cmp     bx, 1
jnz     short loc_420BF6

loc_420BF2:
inc     [esp+1Ch+var_18]

loc_420BF6:
inc     ebx
cmp     bx, 0Ah
jge     short loc_420C4E

loc_420BFD:
movsx   esi, bx
lea     eax, [ecx+esi]
mov     dl, [eax+130h]
test    dl, dl
jnz     short loc_420BDC
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_420BCF
mov     byte ptr [eax], 1
mov     byte ptr [eax+4], 0
lea     edi, [ecx+20h]
shl     esi, 3
cmp     bx, 1
jb      loc_420B59
jbe     loc_420B7D
cmp     bx, 2
jbe     loc_420B60
cmp     bx, 9
jz      loc_420B87
jmp     loc_420B91

loc_420C4E:
cmp     word ptr [esp+1Ch+var_18], 3
jnz     short loc_420C68
test    byte ptr [ecx+141h], 10h
jnz     short loc_420C68
or      byte ptr [ecx+140h], 10h
jmp     short loc_420C80

loc_420C68:
cmp     word ptr [esp+1Ch+var_18], 1
jnz     short loc_420C80
test    byte ptr [ecx+141h], 8
jnz     short loc_420C80
or      byte ptr [ecx+140h], 8

loc_420C80:
test    byte ptr [ecx+142h], 1
jz      loc_41FCDD
mov     ebx, 3
mov     esi, [esp+1Ch+var_1C]
jmp     short loc_420CD6

loc_420C97:             ; jumptable 00420D28 case 3
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FEh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CA0:             ; jumptable 00420D28 case 4
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FDh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CA9:             ; jumptable 00420D28 case 5
mov     eax, [ecx+10h]
and     byte ptr [eax+0Ch], 0FBh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CB2:             ; jumptable 00420D28 case 6
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FEh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CBB:             ; jumptable 00420D28 case 7
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FDh
jmp     short def_420D28 ; jumptable 00420D28 default case

loc_420CC4:             ; jumptable 00420D28 case 8
mov     eax, [ecx+10h]
and     byte ptr [eax+0Dh], 0FBh

def_420D28:             ; jumptable 00420D28 default case
inc     ebx
cmp     bx, 8
jg      loc_41FCDD

loc_420CD6:
movsx   eax, bx
cmp     byte ptr [ecx+eax+130h], 0FFh
jz      short def_420D28 ; jumptable 00420D28 default case
movsx   edx, bx
lea     eax, [ecx+edx]
inc     byte ptr [eax+130h]
cmp     byte ptr [eax+130h], 0FFh
jnz     short def_420D28 ; jumptable 00420D28 default case
mov     eax, edx
shl     eax, 2
add     eax, esi
mov     byte ptr [eax+0FFh], 0
mov     eax, edx
mov     dx, [ecx+eax*2+0B8h]
mov     [ecx+eax*2+0A0h], dx
mov     eax, ebx
sub     eax, 3          ; switch 6 cases
cmp     ax, 5
ja      short def_420D28 ; jumptable 00420D28 default case
and     eax, 0FFFFh
jmp     jpt_420D28[eax*4] ; switch jump
sub_420B41 endp




sub_420D2F proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, edx
xor     esi, esi
lea     edx, [ebp+20h]
jmp     short loc_420D46

loc_420D3F:
inc     esi
cmp     si, 10h
jge     short loc_420D94

loc_420D46:
movsx   eax, si
shl     eax, 3
mov     bx, ds:word_51086C[eax]
mov     cx, [edi+14h]
add     ebx, ecx
mov     [edx+eax], bx
mov     bx, ds:word_51086E[eax]
mov     cx, [edi+16h]
add     ebx, ecx
mov     [edx+eax+2], bx
mov     bx, word ptr ds:dword_510870[eax]
mov     cx, [edi+18h]
add     ebx, ecx
mov     [edx+eax+4], bx
cmp     si, 0Ch
jge     short loc_420D3F
mov     dword ptr [eax+ebp+0D0h], 0
jmp     short loc_420D3F

loc_420D94:
xor     esi, esi

loc_420D96:
push    80h
push    0
push    4880000h
movsx   eax, si
shl     eax, 3
lea     edx, [ebp+0D0h]
add     edx, eax
push    edx
xor     edx, edx
mov     dl, [edi+1]
push    edx
mov     edx, ds:dword_510870[eax]
sar     edx, 10h
lea     ecx, [ebp+20h]
add     eax, ecx
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC
inc     esi
cmp     si, 0Ch
jl      short loc_420D96
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, edi
call    sub_432697
jmp     loc_41FA73
sub_420D2F endp

db 90h
jpt_420E18 dd offset loc_420E1F ; jump table for switch statement
dd offset loc_420E7F
dd offset loc_420EEB
dd offset def_420E18



sub_420E01 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, edx
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_420E18      ; jumptable 00420E18 default case, case 3
and     eax, 0FFh
jmp     jpt_420E18[eax*4] ; switch jump

loc_420E1F:             ; jumptable 00420E18 case 0
cmp     byte ptr [edx+141h], 7Fh
jnz     short loc_420E30
mov     byte ptr [esi+0Bh], 3
pop     esi
pop     ecx
pop     ebx
retn

loc_420E30:
mov     byte ptr [edx+13Fh], 0
jmp     short loc_420E50

loc_420E39:
mov     ch, [ebx+13Fh]
inc     ch
mov     [ebx+13Fh], ch
cmp     ch, 7
jnb     def_420E18      ; jumptable 00420E18 default case, case 3

loc_420E50:
mov     cl, [ebx+13Fh]
mov     eax, 1
shl     eax, cl
mov     ecx, eax
xor     eax, eax
mov     al, [ebx+140h]
test    eax, ecx
jz      short loc_420E39
xor     eax, eax
mov     al, [ebx+141h]
test    eax, ecx
jnz     short loc_420E39
mov     byte ptr [esi+0Bh], 1
pop     esi
pop     ecx
pop     ebx
retn

loc_420E7F:             ; jumptable 00420E18 case 1
test    byte ptr ds:dword_55BD7C+2, 80h
jnz     short loc_420EBB
xor     eax, eax
mov     al, [ebx+13Fh]
mov     edx, ds:dword_5108F9[eax]
sar     edx, 18h
mov     eax, 4
call    sub_4A0E24
mov     cl, [ebx+13Fh]
mov     al, 1
shl     al, cl
or      [ebx+141h], al
mov     byte ptr [esi+0Bh], 2
pop     esi
pop     ecx
pop     ebx
retn

loc_420EBB:
mov     cl, [ebx+13Fh]
mov     eax, 1
shl     eax, cl
xor     edx, edx
mov     dl, [ebx+141h]
test    edx, eax
jz      short def_420E18 ; jumptable 00420E18 default case, case 3
mov     eax, 4
call    sub_4A0E75
call    sub_4D8EB1

loc_420EE3:
mov     byte ptr [esi+0Bh], 0
pop     esi
pop     ecx
pop     ebx
retn

loc_420EEB:             ; jumptable 00420E18 case 2
test    byte ptr ds:dword_55BD7C+2, 80h
jz      short loc_420EE3

def_420E18:             ; jumptable 00420E18 default case, case 3
pop     esi
pop     ecx
pop     ebx
retn
sub_420E01 endp




sub_420EF8 proc near
push    ebx
push    ecx
mov     bx, [edx+18h]
cmp     bx, 1BCh
jge     loc_420FC5
cmp     bx, 0BCh
jb      short loc_420F3F
jbe     loc_420F84
cmp     bx, 130h
jb      short loc_420F33
jbe     loc_420F9A
cmp     bx, 1ACh
jz      loc_420FA2
jmp     loc_420FBE

loc_420F33:
cmp     bx, 120h
jz      short loc_420F8C
jmp     loc_420FBE

loc_420F3F:
cmp     bx, 10h
jb      short loc_420F53
jbe     short loc_420F64
cmp     bx, 0ACh
jz      short loc_420F6C
jmp     loc_420FBE

loc_420F53:
test    bx, bx
jnz     loc_420FBE
mov     word ptr [eax+50h], 1
jmp     short loc_420FBE

loc_420F64:
mov     word ptr [eax+50h], 0
jmp     short loc_420FBE

loc_420F6C:
cmp     byte ptr [eax+9], 2
jnz     short loc_420F79
mov     ecx, 1
jmp     short loc_420F7E

loc_420F79:
mov     ecx, 0FFFFFFFFh

loc_420F7E:
mov     [eax+4Ch], cx
jmp     short loc_420FBE

loc_420F84:
mov     word ptr [eax+4Ch], 0
jmp     short loc_420FBE

loc_420F8C:
mov     word ptr [eax+4Eh], 0FFFFh
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_420FBE

loc_420F9A:
mov     word ptr [eax+4Eh], 0
jmp     short loc_420F64

loc_420FA2:
cmp     byte ptr [eax+9], 2
jnz     short loc_420FAF
mov     ecx, 0FFFFFFFFh
jmp     short loc_420FB4

loc_420FAF:
mov     ecx, 1

loc_420FB4:
mov     [eax+4Ch], cx
mov     word ptr [eax+4Eh], 1

loc_420FBE:
inc     word ptr [edx+18h]
pop     ecx
pop     ebx
retn

loc_420FC5:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
pop     ecx
pop     ebx
retn
sub_420EF8 endp




sub_420FE4 proc near
push    ebx
push    ecx
mov     bx, [edx+18h]
cmp     bx, 1BCh
jge     loc_4210C1
cmp     bx, 9Ch
jb      short loc_42102F
jbe     loc_421086
cmp     bx, 110h
jb      short loc_42101F
jbe     loc_4210AC
cmp     bx, 1ACh
jz      loc_4210B4
jmp     loc_4210BA

loc_42101F:
cmp     bx, 100h
jz      loc_421094
jmp     loc_4210BA

loc_42102F:
cmp     bx, 10h
jb      short loc_421043
jbe     short loc_42106A
cmp     bx, 8Ch
jz      short loc_421078
jmp     loc_4210BA

loc_421043:
test    bx, bx
jnz     loc_4210BA
cmp     byte ptr [eax+9], 6
jnz     short loc_421059
mov     ecx, 1
jmp     short loc_42105E

loc_421059:
mov     ecx, 0FFFFFFFFh

loc_42105E:
mov     [eax+4Ch], cx
mov     word ptr [eax+4Eh], 1
jmp     short loc_4210BA

loc_42106A:
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
jmp     short loc_4210BA

loc_421078:
mov     word ptr [eax+4Eh], 0FFFFh
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_4210BA

loc_421086:
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
jmp     short loc_4210BA

loc_421094:
cmp     byte ptr [eax+9], 6
jnz     short loc_4210A1
mov     ecx, 0FFFFFFFFh
jmp     short loc_4210A6

loc_4210A1:
mov     ecx, 1

loc_4210A6:
mov     [eax+4Ch], cx
jmp     short loc_4210BA

loc_4210AC:
mov     word ptr [eax+4Ch], 0
jmp     short loc_4210BA

loc_4210B4:
mov     word ptr [eax+50h], 1

loc_4210BA:
inc     word ptr [edx+18h]
pop     ecx
pop     ebx
retn

loc_4210C1:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 5
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
pop     ecx
pop     ebx
retn
sub_420FE4 endp




sub_4210E0 proc near
push    ebx
mov     bx, [edx+18h]
cmp     bx, 0B0h
jge     loc_42114D
cmp     bx, 20h ; ' '
jb      short loc_421109
jbe     short loc_421139
cmp     bx, 30h ; '0'
jb      short loc_421147
jbe     short loc_421131
cmp     bx, 0A0h
jz      short loc_421141
jmp     short loc_421147

loc_421109:
test    bx, bx
jbe     short loc_421116
cmp     bx, 10h
jz      short loc_42112B
jmp     short loc_421147

loc_421116:
or      byte ptr [edx+140h], 20h
mov     word ptr [eax+4Eh], 1
mov     word ptr [eax+50h], 1
jmp     short loc_421147

loc_42112B:
mov     word ptr [eax+4Eh], 0

loc_421131:
mov     word ptr [eax+50h], 0
jmp     short loc_421147

loc_421139:
mov     word ptr [eax+50h], 0FFFFh
jmp     short loc_421147

loc_421141:
mov     word ptr [eax+4Eh], 0FFFFh

loc_421147:
inc     word ptr [edx+18h]
jmp     short loc_421166

loc_42114D:
mov     word ptr [edx+18h], 0
or      byte ptr [edx+14h], 84h
mov     word ptr [eax+4Eh], 0
mov     word ptr [eax+50h], 0
inc     byte ptr [eax+0Ah]

loc_421166:
mov     bx, [eax+4Eh]
add     [eax+46h], bx
mov     bx, [eax+50h]
add     [eax+48h], bx
mov     bx, [eax+46h]
add     [eax+16h], bx
mov     bx, [eax+48h]
add     [eax+18h], bx
test    byte ptr [edx+14h], 4
jz      loc_41FF5A
mov     word ptr [eax+14h], 0
mov     word ptr [edx+1Ch], 0FE00h
mov     bx, [edx+1Ch]
mov     [eax+16h], bx
mov     word ptr [eax+18h], 1A00h
and     byte ptr [edx+14h], 0FBh
jmp     loc_41FF5A
sub_4210E0 endp




sub_4211B3 proc near

var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     eax, ebx
mov     ebx, ecx
cmp     ax, 0Ch
jnz     loc_42124D
xor     eax, eax
jmp     short loc_421217

loc_4211CC:
cmp     ax, 1
jnz     loc_421240

loc_4211D6:
movsx   ecx, ax
mov     edi, ecx
shl     ecx, 3
add     ecx, esi
cmp     word ptr [edx+edi*2+9Eh], 0
jle     short loc_4211F4
mov     [ecx+196h], bx
jmp     short loc_42120C

loc_4211F4:
cmp     byte ptr [edx+1Fh], 10h
jnb     short loc_42122E
movzx   di, byte ptr [edx+1Fh]

loc_4211FF:
add     edi, 4210h
mov     [ecx+196h], di

loc_42120C:
inc     eax
cmp     ax, 0Ch
jge     loc_421274

loc_421217:
cmp     word ptr [esi+6Eh], 0
jle     short loc_421240
cmp     ax, 2
jb      short loc_4211CC
jbe     short loc_4211D6
cmp     ax, 3
jz      short loc_4211D6
jmp     short loc_421240

loc_42122E:
movzx   di, byte ptr [edx+1Fh]
mov     [esp+0Ch+var_C], edi
mov     edi, 1Fh
sub     edi, [esp+0Ch+var_C]
jmp     short loc_4211FF

loc_421240:
movsx   ecx, ax
mov     [esi+ecx*8+196h], bx
jmp     short loc_42120C

loc_42124D:
cmp     ax, 9
jnz     short loc_421269
xor     eax, eax

loc_421255:
movsx   edx, ax
mov     [esi+edx*8+196h], bx
inc     eax
cmp     ax, 0Ch
jl      short loc_421255
jmp     short loc_421274

loc_421269:
movsx   edx, ax
mov     [esi+edx*8+19Eh], cx

loc_421274:
add     esp, 4
pop     edi
pop     esi
retn
sub_4211B3 endp




sub_42127A proc near
push    ebx
mov     ebx, eax
mov     eax, [edx+14h]
sar     eax, 10h
sar     eax, 4
and     eax, 0Fh
sar     eax, 1
mov     bl, [ebx+9]
cmp     bl, 8
jb      short loc_42129C
jbe     short loc_4212C5
cmp     bl, 9
jz      short loc_4212E5
pop     ebx
retn

loc_42129C:
cmp     bl, 7
jnz     loc_421303
mov     bl, [edx+13Dh]
cmp     bl, [edx+13Eh]
ja      short loc_4212BE
test    ax, ax
jnz     short loc_4212FF

loc_4212B8:
or      byte ptr [edx+14h], 21h
pop     ebx
retn

loc_4212BE:
test    ax, ax
jz      short loc_4212FF
jmp     short loc_4212B8

loc_4212C5:
mov     bl, [edx+13Ch]
cmp     bl, [edx+13Eh]
ja      short loc_4212DE
test    ax, ax
jz      short loc_4212B8

loc_4212D8:
or      byte ptr [edx+14h], 9
pop     ebx
retn

loc_4212DE:
test    ax, ax
jz      short loc_4212D8
jmp     short loc_4212B8

loc_4212E5:
mov     bl, [edx+13Ch]
cmp     bl, [edx+13Dh]
ja      short loc_4212FA
test    ax, ax
jz      short loc_4212FF
jmp     short loc_4212D8

loc_4212FA:
test    ax, ax
jz      short loc_4212D8

loc_4212FF:
or      byte ptr [edx+14h], 11h

loc_421303:
pop     ebx
retn
sub_42127A endp




sub_421305 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, edx
cmp     byte ptr [eax+9], 8
jnz     short loc_421318
add     ebx, 3
jmp     short loc_42131B

loc_421318:
add     ebx, 6

loc_42131B:
mov     edi, ebx
cmp     byte ptr [ebx+ebp+130h], 0FFh
jnz     loc_4213F2
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      loc_4213F2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+4], 0
mov     dl, [ebp+16h]
and     dl, 1
mov     [eax+3], dl
cmp     byte ptr [esi+9], 8
jnz     short loc_42135A
mov     byte ptr [eax+0Ch], 0
jmp     short loc_42135E

loc_42135A:
mov     byte ptr [eax+0Ch], 1

loc_42135E:
mov     edx, [ebp+14h]
sar     edx, 10h
sar     edx, 4
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [ecx+0Dh], dl
mov     byte ptr [ecx+0Eh], 1
mov     al, [ebp+1Eh]
mov     [ecx+0Fh], al
mov     esi, edi
lea     edi, [ecx+14h]
lea     esi, [ebp+esi*8+20h]
movsd
movsd
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
call    sub_4DE13B
test    eax, eax
jz      short loc_4213DF
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 14h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
mov     [eax+20h], dx

loc_4213DF:
lea     edx, [ecx+14h]
mov     eax, 1A2h
call    sub_4D8BC3
inc     dword ptr [ebp+144h]

loc_4213F2:
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_421305 endp




sub_4213F7 proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
mov     edx, ebx
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      loc_4214A4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 7
mov     byte ptr [eax+3], 2
mov     [eax+0Ch], bl
mov     eax, [edi+14h]
sar     eax, 10h
sar     eax, 2
and     eax, 1
mov     [ecx+0Dh], al
mov     byte ptr [ecx+0Eh], 1
mov     al, [edi+1Eh]
mov     [ecx+0Fh], al
mov     dword ptr [ecx+0DCh], (offset dword_5F880A+2)
mov     eax, [esi+12h]
sar     eax, 10h
mov     ebx, ds:dword_5108EA
sar     ebx, 10h
add     ebx, eax
mov     edi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    edi
movsx   edx, dx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
add     ebx, eax
mov     [ecx+14h], bx
mov     ax, [esi+16h]
mov     dx, ds:word_5108EE
add     eax, edx
mov     [ecx+16h], ax
mov     ax, [esi+18h]
mov     bx, ds:word_5108F0
add     eax, ebx
mov     [ecx+18h], ax
lea     edx, [ecx+14h]
mov     eax, 1A1h
call    sub_4D8BC3

loc_4214A4:
pop     edi
pop     esi
pop     ecx
retn
sub_4213F7 endp




sub_4214A8 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     dword ptr [edx+4], 0
mov     dword ptr [edx+8], 0
call    sub_4DE043
test    eax, eax
jz      short loc_421532
mov     [edx+4], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 0
mov     bx, [ecx+14h]
mov     si, ds:word_5108F4
sub     ebx, esi
mov     [eax+14h], bx
mov     bx, [ecx+16h]
mov     di, ds:word_5108F6
add     ebx, edi
mov     [eax+16h], bx
mov     bx, [ecx+18h]
mov     si, word ptr ds:unk_5108F8
add     ebx, esi
mov     [eax+18h], bx
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx

loc_421532:
call    sub_4DE043
test    eax, eax
jz      short loc_4215A8
mov     [edx+8], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 0
mov     dx, [ecx+14h]
mov     di, ds:word_5108F4
add     edx, edi
mov     [eax+14h], dx
mov     dx, [ecx+16h]
mov     bx, ds:word_5108F6
add     edx, ebx
mov     [eax+16h], dx
mov     dx, [ecx+18h]
mov     cx, word ptr ds:unk_5108F8
add     edx, ecx
mov     [eax+18h], dx
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

loc_4215A8:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4214A8 endp




sub_4215AD proc near
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
cmp     byte ptr [eax+8], 0
jnz     short loc_421614
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short loc_421632

loc_421614:
cmp     byte ptr [ecx+9], 1
jnz     short loc_42162B
sub     word ptr [ecx+18h], 18h
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax

loc_42162B:
mov     eax, ecx
call    sub_4DEADD

loc_421632:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4215AD endp

dword_421638 dd 3 dup(1000h), 0



sub_421648 proc near
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
movzx   esi, byte ptr [eax+8]
lea     ebx, [eax+4F0h]
mov     edx, ebx
call    ds:funcs_421675[esi*4]
mov     edx, ebx
mov     eax, ecx
call    sub_421777
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_421648 endp




sub_42168B proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+158h], 0C000C00h
mov     dword ptr [ecx+15Ch], 0C00h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0Ch], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
lea     ebx, [esi+8]
mov     edx, 1
mov     eax, ecx
call    sub_40769E
mov     [esi], eax
lea     ebx, [esi+50h]
mov     edx, 1
mov     eax, ecx
call    sub_40769E
mov     [esi+4], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
pop     ebx
retn
sub_42168B endp




sub_42170B proc near
push    ecx
mov     ecx, eax
call    sub_4DEADD
mov     ah, ds:byte_560BE5
cmp     ah, 1
jnz     short loc_421721
add     [ecx+8], ah

loc_421721:
pop     ecx
retn
sub_42170B endp




sub_421723 proc near
push    ecx
mov     ecx, eax
mov     ah, ds:byte_560BE5
cmp     ah, 1
jz      short loc_421736
cmp     ah, 3
jnz     short loc_421756

loc_421736:
cmp     byte ptr [ecx+0Ch], 78h ; 'x'
jge     short loc_421743
inc     word ptr [ecx+54h]
inc     byte ptr [ecx+0Ch]

loc_421743:
add     word ptr [ecx+16h], 8
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
jmp     short loc_421762

loc_421756:
cmp     ah, 4
jnz     short loc_421762
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+8]

loc_421762:
mov     eax, ecx

loc_421764:
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     ecx
retn
sub_421723 endp




sub_421772 proc near
push    ecx
mov     ecx, eax
jmp     short loc_421764
sub_421772 endp




sub_421777 proc near

var_28= byte ptr -28h
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 44h
mov     ecx, eax
mov     ebp, edx
lea     edi, [esp+58h+var_28]
mov     esi, offset dword_421638
movsd
movsd
movsd
movsd
mov     eax, esp
call    sub_4EF184
lea     eax, [ecx+54h]
mov     edx, esp
call    sub_4EF638
lea     edx, [esp+58h+var_28]
mov     eax, esp
call    sub_4EF689
xor     ah, ah
mov     [esp+58h+var_18], ah

loc_4217B2:
mov     esi, [esp+3Dh]
sar     esi, 18h
shl     esi, 3
lea     ebx, [ebp+8]
add     ebx, esi
mov     edx, offset unk_510914
add     edx, esi
mov     eax, esp
call    sub_4EF2DC
lea     eax, [esi+ebp]
mov     dx, [ecx+14h]
add     [eax+8], dx
mov     dx, [ecx+16h]
add     [eax+0Ah], dx
mov     dx, [ecx+18h]
add     [eax+0Ch], dx
mov     dl, [esp+58h+var_18]
inc     dl
mov     [esp+58h+var_18], dl
cmp     dl, 12h
jl      short loc_4217B2
add     esp, 44h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_421777 endp

word_421802 dw 0C950h
dd 0FA0DCD8h, 0
dword_42180C dd 0E0C0h, 0F0600000h, 0E0C0h, 52510000h
dd 0C2895756h, 488AC931h, 8D14FF09h
dd offset off_5109A4
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
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
pop     edi
pop     esi
pop     edx
pop     ecx
retn



sub_421859 proc near

var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
xor     edx, edx
mov     ecx, 6
mov     edi, esp
mov     esi, offset word_421802
rep movsd
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
mov     al, ds:byte_560BE4
cmp     al, 9
jb      short loc_42188D
jbe     short loc_4218A2
cmp     al, 0Ah
jz      short loc_4218A9
jmp     short loc_4218B4

loc_42188D:
test    al, al
jnz     short loc_4218B4
mov     word ptr [ebp+56h], 0FFD0h
mov     word ptr [ebp+58h], 40h ; '@'
mov     [ebp+0Ch], al
jmp     short loc_4218B4

loc_4218A2:
mov     edx, 1
jmp     short loc_4218B4

loc_4218A9:
mov     edx, 2
mov     word ptr [ebp+58h], 30h ; '0'

loc_4218B4:
mov     bx, [esp+edx*8+30h+var_30]
mov     [ebp+14h], bx
mov     bx, [esp+edx*8+30h+var_2E]
mov     [ebp+16h], bx
mov     ax, [esp+edx*8+30h+var_2C]
mov     [ebp+18h], ax
inc     dl
mov     [ebp+9], dl
lea     edx, [ebp+3]
mov     eax, ebp
call    sub_4DD107
mov     dword ptr [ebp+158h], 0C000C00h
mov     dword ptr [ebp+15Ch], 0C00h
mov     word ptr [ebp+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_421859 endp




sub_42190F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ch], 1
jnz     short loc_421957
mov     edx, ds:dword_560BEC
sub     edx, 186h
mov     ebx, 14h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 2
add     eax, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, 6Eh ; 'n'
sub     edx, eax
mov     eax, [ecx+12h]
sar     eax, 10h
add     eax, edx
mov     [ecx+14h], ax
pop     edx
pop     ecx
pop     ebx
retn

loc_421957:
cmp     byte ptr [ecx+0Ch], 2
jnz     short loc_421966
add     word ptr [ecx+14h], 8
dec     word ptr [ecx+58h]

loc_421966:
pop     edx
pop     ecx
pop     ebx
retn
sub_42190F endp




sub_42196A proc near
cmp     ds:dword_560BEC, 30h ; '0'
jge     short loc_42197E
add     word ptr [eax+58h], 2
add     word ptr [eax+14h], 5
retn

loc_42197E:
add     word ptr [eax+14h], 18h
retn
sub_42196A endp




sub_421984 proc near
push    ecx
push    edx
mov     edx, ds:dword_560BEC
cmp     edx, 64h ; 'd'
jge     short loc_421999
add     word ptr [eax+14h], 28h ; '('
pop     edx
pop     ecx
retn

loc_421999:
cmp     edx, 8Ch
jge     short loc_4219AE
sub     word ptr [eax+58h], 2
add     word ptr [eax+14h], 0Ch
pop     edx
pop     ecx
retn

loc_4219AE:
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 3Fh
and     edx, 0FFFFh
mov     ecx, dword ptr ds:unk_564C32[edx*2]
sar     ecx, 10h
sar     ecx, 0Bh
mov     edx, [eax+14h]
sar     edx, 10h
add     edx, ecx
mov     [eax+16h], dx
pop     edx
pop     ecx
retn
sub_421984 endp




sub_4219DC proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4219FD
mov     word ptr [eax+58h], 0
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 0F448h
mov     word ptr [eax+18h], 0
inc     byte ptr [eax+0Ah]

loc_4219FD:
sub     word ptr [eax+18h], 30h ; '0'
retn
sub_4219DC endp




sub_421A03 proc near
mov     byte ptr [eax+8], 0
mov     edx, ds:off_5109CA[edx*4]
mov     [eax], edx
mov     byte ptr [eax+9], 0
retn
sub_421A03 endp




sub_421A15 proc near
mov     byte ptr [eax+0Ah], 0
mov     edx, ds:off_510A38[edx*4]
mov     [eax+4], edx
mov     byte ptr [eax+0Bh], 0
retn
sub_421A15 endp




sub_421A28 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+9]
test    ah, ah
jnz     short loc_421A99
mov     eax, [edx+5]
sar     eax, 18h
mov     ecx, [edx]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_421A50
jbe     short loc_421AA0
cmp     al, 7Fh
jnz     short loc_421A50
mov     byte ptr [edx+8], 0

loc_421A50:
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 0E000Dh
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
mov     al, [ecx+eax+1]
mov     [esi+9], al
add     byte ptr [esi+8], 2
jmp     short loc_421AA0

loc_421A99:
mov     dl, ah
dec     dl
mov     [esi+9], dl

loc_421AA0:
mov     bl, [esi+0Bh]
test    bl, bl
jnz     short loc_421B0E
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_421AC0
jbe     short loc_421B15
cmp     al, 7Fh
jnz     short loc_421AC0
mov     [esi+0Ah], bl

loc_421AC0:
mov     ecx, [esi+7]
sar     ecx, 18h
mov     eax, [esi+4]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax+1]
mov     [esi+0Bh], al
add     byte ptr [esi+0Ah], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_421B0E:
mov     bh, bl
dec     bh
mov     [esi+0Bh], bh

loc_421B15:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_421A28 endp




sub_421B1A proc near
push    ecx
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
mov     dword ptr [ecx+78h], 0
pop     ecx
retn
sub_421B1A endp




sub_421B53 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
call    sub_421B1A
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, ecx
call    sub_421E75
pop     ecx
pop     ebx
retn
sub_421B53 endp




sub_421B6D proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     al, [eax+9]
test    al, al
ja      short loc_421B9D
xor     edx, edx
mov     eax, ebx
call    sub_421A03
xor     edx, edx
mov     eax, ebx
call    sub_421A15
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

loc_421B9D:
pop     ecx
pop     ebx
retn
sub_421B6D endp

db 8Dh, 40h, 0
jpt_421BCD dd offset loc_421BD4 ; jump table for switch statement
dd offset loc_421BE8
dd offset def_421BCD
dd offset loc_421BF1
dd offset loc_421C0C
dd offset def_421BCD



sub_421BBB proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      short def_421BCD ; jumptable 00421BCD default case, cases 2,5
and     eax, 0FFh
jmp     jpt_421BCD[eax*4] ; switch jump

loc_421BD4:             ; jumptable 00421BCD case 0
xor     ebx, edx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B

loc_421BE2:
inc     byte ptr [ecx+9]
pop     ecx
pop     ebx
retn

loc_421BE8:             ; jumptable 00421BCD case 1
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_421BE2

loc_421BF1:             ; jumptable 00421BCD case 3
mov     edx, 9
mov     eax, ebx
call    sub_421A15
mov     edx, 5
mov     eax, ebx
call    sub_421A03
inc     byte ptr [ecx+9]

loc_421C0C:             ; jumptable 00421BCD case 4
mov     eax, ecx
call    sub_4DEADD

def_421BCD:             ; jumptable 00421BCD default case, cases 2,5
pop     ecx
pop     ebx
retn
sub_421BBB endp

db 90h
jpt_421C3A dd offset loc_421C41 ; jump table for switch statement
dd offset loc_421C80
dd offset loc_421C89
dd offset loc_421C80



sub_421C27 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      short def_421C3A ; jumptable 00421C3A default case
and     eax, 0FFh
jmp     jpt_421C3A[eax*4] ; switch jump

loc_421C41:             ; jumptable 00421C3A case 0
mov     edx, 1
mov     eax, esi
call    sub_421A15
mov     edx, 1
mov     eax, esi
call    sub_421A03
xor     ebx, ebx
mov     edx, 12h

loc_421C60:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

def_421C3A:             ; jumptable 00421C3A default case
mov     ecx, ds:dword_560BEC
cmp     ecx, 32h ; '2'
jb      short loc_421CAB
jbe     short loc_421C98
cmp     ecx, 78h ; 'x'
jz      short loc_421C9F
pop     esi
pop     ecx
pop     ebx
retn

loc_421C80:             ; jumptable 00421C3A cases 1,3
mov     eax, ecx
call    sub_4DEADD
jmp     short def_421C3A ; jumptable 00421C3A default case

loc_421C89:             ; jumptable 00421C3A case 2
mov     word ptr [ecx+56h], 0
xor     ebx, ebx
mov     edx, 13h
jmp     short loc_421C60

loc_421C98:
mov     edx, 4
jmp     short loc_421CA4

loc_421C9F:
mov     edx, 1

loc_421CA4:
mov     eax, esi
call    sub_421A15

loc_421CAB:
pop     esi
pop     ecx
pop     ebx
retn
sub_421C27 endp

jpt_421CD2 dd offset loc_421CD9 ; jump table for switch statement
dd offset loc_421CE2
dd offset loc_421CEB
dd offset loc_421CE2



sub_421CBF proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      short def_421CD2 ; jumptable 00421CD2 default case
and     eax, 0FFh
jmp     jpt_421CD2[eax*4] ; switch jump

loc_421CD9:             ; jumptable 00421CD2 case 0
xor     ebx, ebx
mov     edx, 14h
jmp     short loc_421CEF

loc_421CE2:             ; jumptable 00421CD2 cases 1,3
mov     eax, ecx
call    sub_4DEADD
jmp     short def_421CD2 ; jumptable 00421CD2 default case

loc_421CEB:             ; jumptable 00421CD2 case 2
xor     ebx, ebx
xor     edx, edx

loc_421CEF:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

def_421CD2:             ; jumptable 00421CD2 default case
mov     ecx, ds:dword_560BEC
test    ecx, ecx
jbe     short loc_421D0F
cmp     ecx, 96h
jz      short loc_421D22
pop     esi
pop     ecx
pop     ebx
retn

loc_421D0F:
mov     edx, 2
mov     eax, esi
call    sub_421A03
mov     edx, 5
jmp     short loc_421D27

loc_421D22:
mov     edx, 2

loc_421D27:
mov     eax, esi
call    sub_421A15
pop     esi
pop     ecx
pop     ebx
retn
sub_421CBF endp




sub_421D32 proc near
push    ecx
mov     ecx, edx
call    sub_4DEADD
mov     eax, ds:dword_560BEC
cmp     eax, 78h ; 'x'
jb      short loc_421D58
jbe     short loc_421D6F
cmp     eax, 82h
jb      short loc_421D82
jbe     short loc_421D68
cmp     eax, 0BEh
jz      short loc_421D76
pop     ecx
retn

loc_421D58:
test    eax, eax
jnz     short loc_421D82
mov     edx, 1
mov     eax, ecx
call    sub_421A03

loc_421D68:
mov     edx, 4
jmp     short loc_421D7B

loc_421D6F:
mov     edx, 1
jmp     short loc_421D7B

loc_421D76:
mov     edx, 1

loc_421D7B:
mov     eax, ecx
call    sub_421A15

loc_421D82:
pop     ecx
retn
sub_421D32 endp




sub_421D84 proc near
push    ecx
mov     ecx, edx
call    sub_4DEADD
mov     eax, ds:dword_560BEC
cmp     eax, 78h ; 'x'
jb      short loc_421DB3
jbe     short loc_421DD6
cmp     eax, 104h
jb      short loc_421DAA
jbe     short loc_421DD6
cmp     eax, 17Ch
jz      short loc_421DDD
pop     ecx
retn

loc_421DAA:
cmp     eax, 0E6h

loc_421DAF:
jz      short loc_421DCF
pop     ecx
retn

loc_421DB3:
cmp     eax, 28h ; '('
jb      short loc_421DBF
jbe     short loc_421DD6
cmp     eax, 6Eh ; 'n'
jmp     short loc_421DAF

loc_421DBF:
test    eax, eax
jnz     short loc_421DE9
mov     edx, 1
mov     eax, ecx
call    sub_421A03

loc_421DCF:
mov     edx, 1
jmp     short loc_421DE2

loc_421DD6:
mov     edx, 4
jmp     short loc_421DE2

loc_421DDD:
mov     edx, 1

loc_421DE2:
mov     eax, ecx
call    sub_421A15

loc_421DE9:
pop     ecx
retn
sub_421D84 endp



; Attributes: thunk

sub_421DEB proc near
jmp     sub_4DEADD
sub_421DEB endp




sub_421DF0 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     al, [eax+9]
cmp     al, 1
jb      short loc_421E02
jbe     short loc_421E19
jmp     short loc_421E20

loc_421E02:
test    al, al
jnz     short loc_421E20
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
jmp     short loc_421E20

loc_421E19:
mov     eax, esi
call    sub_4DEADD

loc_421E20:
mov     eax, ds:dword_560BEC
cmp     eax, 28h ; '('
jb      short loc_421E3E
jbe     short loc_421E57
cmp     eax, 3Ch ; '<'
jb      short loc_421E71
jbe     short loc_421E5E
cmp     eax, 91h
jz      short loc_421E65
pop     esi
pop     ecx
pop     ebx
retn

loc_421E3E:
test    eax, eax
jbe     short loc_421E4B
cmp     eax, 14h
jz      short loc_421E5E
pop     esi
pop     ecx
pop     ebx
retn

loc_421E4B:
mov     edx, 3
mov     eax, ecx
call    sub_421A03

loc_421E57:
mov     edx, 3
jmp     short loc_421E6A

loc_421E5E:
mov     edx, 6
jmp     short loc_421E6A

loc_421E65:
mov     edx, 3

loc_421E6A:
mov     eax, ecx
call    sub_421A15

loc_421E71:
pop     esi
pop     ecx
pop     ebx
retn
sub_421DF0 endp




sub_421E75 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, edx
xor     eax, eax
mov     al, ds:byte_560BE5
cmp     ds:funcs_421EB5[eax*4], 0
jz      short loc_421ED8
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
xor     ebx, ebx
mov     bl, ds:byte_560BE5
mov     edx, ecx
mov     eax, ebp
call    ds:funcs_421EB5[ebx*4]
mov     edx, ecx
mov     eax, ebp
call    sub_421A28
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 64h ; 'd'
mov     eax, ebp
call    sub_4ED88B

loc_421ED8:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_421E75 endp




sub_421EDE proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+8]
lea     edx, [eax+640h]
call    ds:funcs_421EEA[ecx*4]
pop     ecx
retn
sub_421EDE endp




sub_421EF3 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
call    sub_421B1A
mov     edx, 4
mov     eax, ebx
call    sub_421A03
mov     edx, 7
mov     eax, ebx
call    sub_421A15
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     ecx
pop     ebx
retn
sub_421EF3 endp




sub_421F2A proc near
push    ecx
mov     ecx, eax
mov     eax, edx
cmp     byte ptr ds:dword_560BE0, 1
jnz     short loc_421F80
mov     edx, ds:dword_560BEC
cmp     edx, 73h ; 's'
jb      short loc_421F59
jbe     short loc_421F67
cmp     edx, 0AFh
jb      short loc_421F80
jbe     short loc_421F73
cmp     edx, 0E6h
jz      short loc_421F7A
jmp     short loc_421F80

loc_421F59:
cmp     edx, 46h ; 'F'
jb      short loc_421F80
jbe     short loc_421F67
cmp     edx, 64h ; 'd'
jz      short loc_421F73
jmp     short loc_421F80

loc_421F67:
mov     edx, 8

loc_421F6C:
call    sub_421A15
jmp     short loc_421F80

loc_421F73:
mov     edx, 7
jmp     short loc_421F6C

loc_421F7A:
inc     byte ptr ds:dword_560BE0+2

loc_421F80:
mov     eax, ecx
call    sub_4DEADD
pop     ecx
retn
sub_421F2A endp




sub_421F89 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
movzx   esi, byte ptr [eax+8]
lea     edx, [eax+640h]
call    ds:funcs_421F9A[esi*4]
mov     edx, ebx
mov     eax, ecx
call    sub_421A28
pop     esi
pop     ecx
pop     ebx
retn
sub_421F89 endp




sub_421FAE proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+640h]
call    ds:funcs_421FBB[ecx*4]
pop     edx
pop     ecx
retn
sub_421FAE endp




sub_421FC5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
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
movzx   esi, byte ptr [eax+8]
mov     ebx, ecx
mov     edx, offset dword_560BDC
call    ds:funcs_422004[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_422860
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_422038
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_42203F

loc_422038:
mov     eax, ebp
call    sub_4DEADD

loc_42203F:
cmp     byte ptr [ecx+12h], 0
jz      short loc_422058
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_422058:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_421FC5 endp




sub_42205F proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_42282E
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_422847
mov     dl, [ecx+3]
test    dl, dl
jnz     short loc_4220D8
mov     word ptr [ecx+15Eh], 421h
mov     byte ptr [ecx+0ACh], 1
mov     [esi+12h], dl
mov     byte ptr [ecx+8], 1
jmp     short loc_4220F0

loc_4220D8:
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [esi+12h], 1
mov     byte ptr [ecx+8], 2

loc_4220F0:
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     ecx
retn
sub_42205F endp

db 8Bh, 0C0h
jpt_422165 dd offset loc_42216C ; jump table for switch statement
dd offset loc_42218C
dd offset loc_4221C7
dd offset loc_422225
dd offset loc_422242
dd offset loc_42227F
dd offset loc_4222A5
dd offset loc_4223D6
dd offset loc_422486
dd offset loc_422501
dd offset loc_42256A
dd offset loc_422660
dd offset loc_4226F0
dd offset loc_42270A
dd offset loc_42272A
dd offset loc_4227C3
dd offset loc_422806
dd offset loc_422822



sub_422149 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 11h         ; switch 18 cases
ja      def_422165      ; jumptable 00422165 default case
and     edx, 0FFh
jmp     jpt_422165[edx*4] ; switch jump

loc_42216C:             ; jumptable 00422165 case 0
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 6
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 3Ch ; '<'

loc_422181:             ; jumptable 00422165 default case
jnz     def_422165
jmp     loc_42221D

loc_42218C:             ; jumptable 00422165 case 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     bx, [ebx]
inc     ebx
mov     [esi], bx
movsx   eax, bx
sar     eax, 3
lea     edx, [eax+1]
mov     eax, edx
shl     eax, 5
add     eax, edx
shl     eax, 5
add     eax, edx
mov     [ecx+15Eh], ax
cmp     ax, 4210h
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [esi], 0
jmp     short loc_42221D

loc_4221C7:             ; jumptable 00422165 case 2
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 8
jnz     short loc_4221ED
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4221ED
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_42282E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4221ED:
cmp     byte ptr [eax+9], 0Ah
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 0Ah
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 9

loc_422214:
mov     edx, esi
mov     eax, ecx
call    sub_422847

loc_42221D:
inc     byte ptr [ecx+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422225:             ; jumptable 00422165 case 3
cmp     byte ptr [eax+9], 0Bh
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1Eh
jnz     def_422165      ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_42229A

loc_422242:             ; jumptable 00422165 case 4
cmp     byte ptr [eax+9], 0Ch
jnz     short loc_422264
cmp     dword ptr [eax+10h], 1
jnz     short loc_422264
mov     byte ptr [ebx+12h], 1
sub     word ptr [ecx+18h], 100h
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_422264:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_422165      ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 3
jmp     short loc_42229A

loc_42227F:             ; jumptable 00422165 case 5
cmp     byte ptr [eax+9], 0Dh
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case

loc_422293:
mov     byte ptr [ecx+0ACh], 4

loc_42229A:
mov     word ptr [esi+2], 0
jmp     loc_42221D

loc_4222A5:             ; jumptable 00422165 case 6
mov     bl, [eax+9]
cmp     bl, 0Dh
jnz     loc_42238A
mov     eax, [eax+10h]
cmp     eax, 0EBh
jb      short loc_422308
jbe     loc_422359
cmp     eax, 16Dh
jb      short loc_4222EF
jbe     loc_42236E
cmp     eax, 17Ch
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422459
cmp     eax, 1AEh

loc_4222E4:
jz      loc_422383
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4222EF:
cmp     eax, 104h
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_422338
cmp     eax, 14Dh

loc_422301:
jz      short loc_422359
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422308:
cmp     eax, 7Dh ; '}'
jb      short loc_422328
jbe     short loc_422338
cmp     eax, 0C0h
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_422359
cmp     eax, 0D2h

loc_422321:
jz      short loc_422338
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422328:
cmp     eax, 1Eh
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_422338
cmp     eax, 69h ; 'i'
jmp     short loc_422301

loc_422338:
mov     ebx, 0Ah

loc_42233D:
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 0Ah

loc_42234B:
mov     edx, esi
mov     eax, ecx
call    sub_422847
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422359:
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
jmp     short loc_42234B

loc_42236E:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 0Bh
jmp     short loc_42234B

loc_422383:
mov     ebx, 3
jmp     short loc_42234B

loc_42238A:
cmp     bl, 0Fh
jnz     short loc_4223AA
cmp     dword ptr [eax+10h], 1
jnz     short loc_4223AA
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E

loc_4223A3:
mov     ebx, 4
jmp     short loc_42234B

loc_4223AA:
cmp     byte ptr [eax+9], 10h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 5
jmp     loc_422214

loc_4223D6:             ; jumptable 00422165 case 7
cmp     byte ptr [eax+9], 10h
jnz     def_422165      ; jumptable 00422165 default case
mov     eax, [eax+10h]
cmp     eax, 82h
jb      short loc_42241C
jbe     short loc_42244B
cmp     eax, 0C8h
jb      short loc_422412
jbe     loc_422463
cmp     eax, 122h
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_42246A
cmp     eax, 12Ch
jz      short loc_422474
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422412:
cmp     eax, 0B4h
jmp     loc_4222E4

loc_42241C:
cmp     eax, 23h ; '#'
jb      short loc_422436
jbe     short loc_422441
cmp     eax, 50h ; 'P'
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_42244B
cmp     eax, 64h ; 'd'
jmp     loc_4222E4

loc_422436:
cmp     eax, 0Ah
jnz     def_422165      ; jumptable 00422165 default case
jmp     short loc_422459

loc_422441:
mov     ebx, 5
jmp     loc_42234B

loc_42244B:
mov     ebx, 5

loc_422450:
mov     edx, esi
mov     eax, ecx
call    sub_42282E

loc_422459:
mov     ebx, 0Ch
jmp     loc_42234B

loc_422463:
mov     ebx, 6
jmp     short loc_422450

loc_42246A:
mov     ebx, 6
jmp     loc_42234B

loc_422474:
mov     byte ptr [ecx+0ACh], 5
mov     word ptr [ebx+2], 0
jmp     loc_42221D

loc_422486:             ; jumptable 00422165 case 8
mov     bl, [eax+9]
cmp     bl, 10h
jnz     short loc_4224C7
mov     ebx, [eax+10h]
cmp     ebx, 140h
jnz     short loc_4224B1
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E

loc_4224A7:
mov     ebx, 0Dh
jmp     loc_42234B

loc_4224B1:
cmp     ebx, 168h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, 7
jmp     loc_42234B

loc_4224C7:
cmp     bl, 12h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 100h
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_422847
jmp     loc_422293

loc_422501:             ; jumptable 00422165 case 9
mov     bh, [eax+9]
cmp     bh, 12h
jnz     short loc_422543
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_422523
jbe     short loc_422531
cmp     eax, 0DCh
jz      loc_4223A3
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422523:
cmp     eax, 1Eh
jnz     def_422165      ; jumptable 00422165 default case
jmp     loc_4224A7

loc_422531:
mov     byte ptr [ecx+0ACh], 6

loc_422538:
mov     word ptr [esi+2], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

