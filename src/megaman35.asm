loc_4551D1:
xor     esi, esi
mov     si, [edx+3Ch]
mov     eax, esi
shl     eax, 2
sub     eax, esi
mov     esi, eax
movsx   eax, bx
mov     al, ds:byte_515F64[esi+eax]
xor     ah, ah
add     ecx, eax
mov     ax, [edx+2]
xor     ah, ah
and     al, 0Fh
and     eax, 0FFFFh
movsx   esi, cx
cmp     eax, esi
jge     short loc_4551CA

loc_455202:
cmp     bx, 1
jb      short loc_455212
jbe     short loc_45521D
cmp     bx, 2
jz      short loc_455226
jmp     short loc_45522D

loc_455212:
test    bx, bx
jnz     short loc_45522D
mov     byte ptr [edi+9], 3
jmp     short loc_45522D

loc_45521D:
mov     byte ptr [edi+9], 5
or      byte ptr [edx], 40h
jmp     short loc_45522D

loc_455226:
mov     byte ptr [edi+9], 5
and     byte ptr [edx], 0BFh

loc_45522D:
mov     eax, 1
jmp     def_454CD4      ; jumptable 00454CD4 default case
sub_4551B7 endp




sub_455237 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, [edx+14h]
and     ecx, 0FFFFFFh
jz      short loc_45527E
test    byte ptr [edx+17h], 18h
jz      short loc_45527E
mov     bx, [eax+6Eh]
mov     [eax+0B2h], bx
sub     ebx, ecx
mov     [eax+6Eh], bx
test    bx, bx
jg      short loc_455275
mov     bh, [edx]
and     bh, 0F9h
mov     [edx], bh
mov     cl, bh
or      cl, 4
mov     [edx], cl

loc_455275:
mov     word ptr [eax+15Eh], 7FFFh

loc_45527E:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_455237 endp




sub_455287 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_4552AD
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
or      ds:byte_5F8421, 80h
and     byte ptr [edx], 0EFh

loc_4552AD:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_455287 endp




sub_4552B5 proc near
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
mov     dl, [eax+3]
call    ds:funcs_4552DC[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4552FC
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4552FC:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45530C
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_455313

loc_45530C:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_455313:
pop     ebp

loc_455314:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4552B5 endp




sub_45531A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, offset byte_5F8364
mov     eax, 618h
call    sub_47E888
test    eax, eax
jz      short loc_455338
mov     byte ptr [esi+8], 1Ah

loc_455338:
mov     al, [esi+8]
lea     edi, [esi+14h]
cmp     al, 16h
jb      short loc_455368
jbe     loc_455472
cmp     al, 18h
jb      loc_45548B
jbe     loc_45549F
cmp     al, 19h
jbe     loc_455504
cmp     al, 1Ah
jz      loc_455549
jmp     short loc_455314

loc_455368:
cmp     al, 1
jb      short loc_45537D
jbe     short loc_45538D
cmp     al, 14h
jb      short loc_455314
jbe     loc_455414
jmp     loc_455453

loc_45537D:
test    al, al
jnz     short loc_455314
mov     eax, esi
call    sub_455555
jmp     loc_45546A

loc_45538D:
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     word ptr [edx+538h], 0F1F0h
mov     word ptr [edx+53Ah], 0FFFFh
mov     word ptr [edx+53Ch], 0E10h
mov     eax, [edx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+528h], eax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax
mov     eax, [edx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [edx+530h], eax
mov     word ptr [esi+0C4h], 0F280h
mov     word ptr [esi+0C6h], 0FFFFh
mov     word ptr [esi+0C8h], 111Dh
mov     byte ptr [esi+8], 14h
jmp     loc_455314

loc_455414:
mov     eax, 611h
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     ecx, 49h ; 'I'

loc_45542B:
xor     ebx, ebx
mov     edx, 2
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
jmp     loc_455314

loc_455453:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_455314
mov     eax, 612h

loc_455465:
call    sub_47E8B8

loc_45546A:
inc     byte ptr [esi+8]
jmp     loc_455314

loc_455472:
mov     eax, 613h
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     ecx, 4Bh ; 'K'
jmp     short loc_45542B

loc_45548B:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_455314
mov     eax, 614h
jmp     short loc_455465

loc_45549F:
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jz      loc_455314
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+0C4h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_455314
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+44h], 140h
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
mov     byte ptr [esi+0Ah], 28h ; '('
jmp     loc_455314

loc_455504:
mov     ah, [esi+0Ah]
dec     ah
mov     [esi+0Ah], ah
jz      loc_45546A
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     dh, [esi+0A4h]
cmp     dh, 3
jz      short loc_455537
cmp     dh, 0Ah
jnz     loc_455314

loc_455537:
lea     edx, [esi+14h]
mov     eax, 10Ch
call    sub_4D8BC3
jmp     loc_455314

loc_455549:
mov     eax, esi
call    sub_4DE2F6
jmp     loc_455314
sub_45531A endp




sub_455555 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_455555 endp

byte_4555D7 db 0
dd 0
dword_4555DC dd 53000000h, 57565251h, 4EC8355h, 805C589h
dd 89000004h, 858A2404h, 0ACh, 0AD8588h
dd 7D8D0000h, 14758D2Ch, 7D8DA5A5h, 1C758D34h
dd 0A5A5A5A5h, 8D5C7D8Dh, 0A5A55475h, 5E85C766h
dd 10000001h, 9823E842h, 148B0009h, 42896624h
dd 8AD23102h, 0E8890855h
call    ds:funcs_455634[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_45565A
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_455661

loc_45565A:
mov     eax, ebp
call    sub_4DEADD

loc_455661:
test    byte ptr [ebp+0], 2
jz      short loc_45567A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45567A:
test    byte ptr [ebp+0], 1
jz      short loc_4556CA
mov     eax, [esp]
test    byte ptr [eax], 4
jz      short loc_4556CA
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+8]
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
mov     edx, 30h ; '0'
call    sub_4E01FC

loc_4556CA:
mov     eax, [esp]
mov     dword ptr [eax+14h], 0
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case



sub_4556D9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 0Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+eax*4]
mov     dl, [edx+0Fh]
and     edx, 0FFh
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     ax, [ecx+1Ah]
mov     [esi+34h], ax
mov     word ptr [ecx+1Ah], 0
mov     word ptr [esi+36h], 4
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_515F98
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
test    al, al
jbe     short loc_4557B5
cmp     al, 1
jz      short loc_4557E7
jmp     short loc_455824

loc_4557B5:
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_45585A

loc_4557E7:
xor     eax, eax
mov     ax, [esi+34h]
call    sub_47E888
test    eax, eax
jnz     short loc_455824
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0FFh
mov     byte ptr [ecx+0Bh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dh, [esi]
or      dh, 40h
mov     [esi], dh
mov     bl, dh
and     bl, 0F9h
mov     [esi], bl
jmp     short loc_45585A

loc_455824:
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+66h], 0

loc_45585A:
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4556D9 endp




sub_455868 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 20h
jz      short loc_455890
lea     eax, [ecx+24h]
mov     edx, ebx
call    sub_4E19CA
test    eax, eax
jz      short loc_45588D
or      byte ptr [ecx], 10h
jmp     short loc_455890

loc_45588D:
and     byte ptr [ecx], 0EFh

loc_455890:
test    byte ptr [ecx], 2
jz      short loc_45589C
mov     eax, ebx
call    sub_456392

loc_45589C:
xor     edx, edx
mov     dl, [ebx+9]
mov     eax, ebx
call    ds:funcs_4558A3[edx*4]
mov     ah, [ecx]
test    ah, 1
jz      short loc_4558E7
mov     al, [ebx+9]
cmp     al, 4
jb      short loc_4558C0
jbe     short loc_4558C6
cmp     al, 5
jz      short loc_4558C6
jmp     short loc_4558D7

loc_4558C0:
cmp     al, 3
jz      short loc_4558CC
jmp     short loc_4558D7

loc_4558C6:
mov     byte ptr [ebx+9], 3
jmp     short loc_4558DE

loc_4558CC:
test    ah, 10h
jz      short loc_4558D7
mov     byte ptr [ebx+9], 2
jmp     short loc_4558DE

loc_4558D7:
mov     eax, ebx
call    sub_45631B

loc_4558DE:
mov     word ptr [ebx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_4558E7:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_4558F7
mov     esi, edx
dec     esi
mov     [ecx+0Ah], si

loc_4558F7:
test    byte ptr [ecx], 80h
jz      loc_455AF0
mov     di, [ecx+36h]
dec     edi
mov     [ecx+36h], di
test    di, di
jge     loc_455AF0
call    sub_4DE13B
test    eax, eax
jz      short loc_45592E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebx+14h]
movsd
movsd

loc_45592E:
mov     eax, ebx
call    sub_4DE2F6
lea     ecx, [ebx+190h]
mov     edx, ecx
mov     eax, ebx
call    sub_4AF9F8
mov     edx, ecx
mov     eax, 0A1h
call    sub_4D8BC3
jmp     loc_455AF0
sub_455868 endp



; Attributes: thunk

sub_455955 proc near
jmp     sub_4DE2F6
sub_455955 endp




sub_45595A proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_455972
cmp     bl, 1
jz      short loc_45598C
pop     edx
pop     ebx
retn

loc_455972:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 3Ch ; '<'
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0DFh

loc_45598C:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_45599D
or      byte ptr [eax], 1

loc_45599D:
pop     edx
pop     ebx
retn
sub_45595A endp




sub_4559A0 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4559C3
cmp     al, 1
jz      short loc_4559F2
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_4559C3:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ebp+44h], 30h ; '0'
mov     word ptr [ebp+4Ch], 4
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 32h ; '2'
mov     word ptr [eax+6], 19h
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0DFh

loc_4559F2:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+6]
dec     edx
mov     [eax+6], dx
test    dx, dx
jge     short loc_455A0F
mov     word ptr [eax+6], 19h
mov     word ptr [ebp+44h], 30h ; '0'

loc_455A0F:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
test    dh, 0Fh
jz      short loc_455A7C
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_455A7C:
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 20h ; ' '
jle     short loc_455AAD
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     byte ptr [ebp+9], 4
mov     word ptr [ebp+0Ah], 0
jmp     short def_455D03 ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455AAD:
test    eax, eax
jge     short loc_455AB3
neg     eax

loc_455AB3:
cmp     eax, 20h ; ' '
jle     short loc_455AD8
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_455AD8:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di

loc_455AE7:             ; jumptable 00455D03 default case
jge     short def_455D03 ; jumptable 004560CE default case

loc_455AE9:
or      byte ptr [eax], 1

def_455D03:             ; jumptable 00455D03 default case
add     esp, 4          ; jumptable 004560CE default case

loc_455AEF:
pop     ebp

loc_455AF0:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4559A0 endp




sub_455AF6 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
add     eax, 408h
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_20], offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_455B21
cmp     al, 1
jz      short loc_455B48
jmp     loc_455CBD

loc_455B21:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [ebp+44h], 100h
mov     word ptr [ebp+4Ch], 10h
mov     eax, [esp+20h+var_1C]
mov     word ptr [eax+4], 0Ch
mov     word ptr [eax+8], 0

loc_455B48:
mov     eax, [esp+20h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_455B66
mov     word ptr [ebp+44h], 100h
mov     word ptr [eax+4], 0Ch

loc_455B66:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+20h+var_20]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 30h ; '0'
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     edx, edx
mov     dl, [ebp+0A6h]
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
test    dh, 0Fh
jz      short loc_455BEA
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_455BEA:
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 20h ; ' '
jle     short loc_455C2A
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 4

loc_455C1F:
mov     word ptr [ebp+0Ah], 0
jmp     loc_455CBD

loc_455C2A:
test    eax, eax
jge     short loc_455C30
neg     eax

loc_455C30:
cmp     eax, 20h ; ' '
jle     short loc_455C55
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_455C55:
cmp     dword ptr [ebp+80h], 1E848h
jnb     short loc_455CA4
push    400h
mov     eax, [esp+24h+var_20]
mov     eax, [eax+54h]
sar     eax, 10h
push    eax
mov     ecx, [esp+28h+var_20]
add     ecx, 1Ch
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 40h ; '@'
call    sub_4DE639
test    eax, eax
jz      short loc_455CA4
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 5
jmp     loc_455C1F

loc_455CA4:
mov     eax, [esp+20h+var_1C]
mov     dl, [eax]
test    dl, 10h
jnz     short loc_455CBD
mov     dh, dl
or      dh, 1
mov     [eax], dh
mov     bl, dh
and     bl, 0DFh
mov     [eax], bl

loc_455CBD:
add     esp, 8
jmp     loc_455AEF
sub_455AF6 endp

db 8Bh, 0C0h
jpt_455D03 dd offset loc_455D0A ; jump table for switch statement
dd offset loc_455D2C
dd offset loc_455DC6
dd offset loc_455E45
dd offset loc_455EA9



sub_455CDB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     esi, offset byte_5F8364
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
and     eax, 0FFh
jmp     jpt_455D03[eax*4] ; switch jump

loc_455D0A:             ; jumptable 00455D03 case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 7
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ch
mov     word ptr [eax+8], 0
add     eax, 24h ; '$'
call    sub_4E19B4

loc_455D2C:             ; jumptable 00455D03 case 1
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_455DA9
cmp     dx, 2
jle     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFB0h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_455D89
neg     eax

loc_455D89:
cmp     eax, 20h ; ' '
jle     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455DA9:
mov     byte ptr [ebp+0Ah], 2
mov     al, [eax+2]
and     al, 1
add     al, 0Ch
mov     [ebp+0ACh], al
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 6
or      byte ptr [eax], 20h

loc_455DC6:             ; jumptable 00455D03 case 2
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di
jge     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     byte ptr [ebp+0Ah], 3
add     byte ptr [ebp+0ACh], 2
mov     ax, [eax+2]
xor     ah, ah
and     al, 7
add     eax, 8
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
push    800h
mov     eax, [esi+54h]
sar     eax, 10h
push    eax
lea     ecx, [esi+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_455E2E
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
inc     eax
jmp     short loc_455E3E

loc_455E2E:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+2]
xor     ah, ah
and     al, 7
add     eax, 3

loc_455E3E:
mov     edx, [esp+1Ch+var_1C]
mov     [edx+6], ax

loc_455E45:             ; jumptable 00455D03 case 3
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_455E84
mov     si, [eax+6]
dec     esi
mov     [eax+6], si
test    si, si
jl      short loc_455E98
xor     byte ptr [ebp+0ACh], 1
mov     ax, [eax+2]
xor     ah, ah
and     al, 7
add     eax, 7
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455E84:
test    byte ptr [eax], 10h
jz      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     word ptr [eax+6], 0
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_455E98:
mov     byte ptr [ebp+0Ah], 4
add     byte ptr [ebp+0ACh], 2
mov     word ptr [eax+4], 0Dh

loc_455EA9:             ; jumptable 00455D03 case 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 33h ; '3'
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_455EEB
neg     eax

loc_455EEB:
cmp     eax, 20h ; ' '
jle     short loc_455F02
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_455F02:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jmp     loc_455AE7
sub_455CDB endp




sub_455F16 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_455F41
jbe     loc_456010
cmp     al, 2
jbe     loc_455FEC
cmp     al, 0FFh
jz      short loc_455F4A
jmp     loc_455AF0

loc_455F41:
test    al, al
jz      short loc_455F63
jmp     loc_455AF0

loc_455F4A:
xor     eax, eax
mov     ax, [edi+34h]
call    sub_47E888
test    eax, eax
jz      loc_455AF0
or      byte ptr [esi], 2
or      byte ptr [edi], 6

loc_455F63:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 4
test    byte ptr [edi], 40h
jz      short loc_455FB8
mov     ax, [edi+2]
xor     ah, ah
and     al, 3
shl     eax, 7
mov     [esi+44h], ax
xor     eax, eax
mov     ax, [edi+2]
sar     eax, 4
and     eax, 3
shl     eax, 4
neg     eax
shl     eax, 4
add     eax, 10h
mov     [esi+46h], ax
xor     eax, eax
mov     ax, [edi+2]
sar     eax, 4
and     eax, 3
shl     eax, 5
add     eax, 10h
mov     [esi+4Eh], ax
and     byte ptr [edi], 0BFh
jmp     short loc_455FD7

loc_455FB8:
mov     word ptr [esi+44h], 200h
mov     word ptr [esi+46h], 0FF00h
mov     eax, [esi+44h]
sar     eax, 10h
neg     eax
sar     eax, 2
mov     [esi+4Eh], ax
and     byte ptr [esi+57h], 0Fh

loc_455FD7:
mov     word ptr [edi+4], 10h
mov     word ptr [edi+6], 0
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0D7h

loc_455FEC:
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_456010
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 88h
mov     word ptr [esi+46h], 0FF10h
mov     word ptr [esi+4Eh], 30h ; '0'

loc_456010:
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    ah, 0Fh
jz      short loc_456041
mov     word ptr [esi+44h], 0

loc_456041:
test    dh, 10h
jz      loc_455AF0
mov     ax, [edi+6]
inc     eax
mov     [edi+6], ax
cmp     ax, 1
jnz     short loc_456081
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 5
mov     word ptr [esi+44h], 0F0h
mov     word ptr [esi+46h], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [edi+4], 2
jmp     loc_455AF0

loc_456081:
or      byte ptr [edi], 9
jmp     loc_455AF0
sub_455F16 endp

db 8Bh, 0C0h
jpt_4560CE dd offset loc_4560D5 ; jump table for switch statement
dd offset loc_45610A
dd offset loc_45618E
dd offset loc_4561E0
dd offset loc_456297



sub_45609F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
test    byte ptr [eax+17h], 2
jz      short loc_4560BE
mov     word ptr [eax+8], 0

loc_4560BE:
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
and     eax, 0FFh
jmp     jpt_4560CE[eax*4] ; switch jump

loc_4560D5:             ; jumptable 004560CE case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 7
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 9
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
and     byte ptr [edx], 0DFh

loc_45610A:             ; jumptable 004560CE case 1
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jl      short loc_45617D
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFB0h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_45615D
neg     eax

loc_45615D:
cmp     eax, 20h ; ' '
jle     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_45617D:
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 8
mov     word ptr [eax+4], 0Bh

loc_45618E:             ; jumptable 004560CE case 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0ACh], 9
mov     word ptr [eax+4], 0FFFDh
xor     ecx, ecx
mov     ebx, 0FFFFFA60h
mov     edx, 640h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
lea     edx, [ebp+14h]
mov     eax, 0BAh
call    sub_4D8BC3
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_4561E0:             ; jumptable 004560CE case 3
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+4]
inc     ecx
mov     [eax+4], cx
test    cx, cx
jge     short loc_456204
mov     eax, ecx
mov     edx, [esp+1Ch+var_1C]
imul    ax, [edx+4]
shl     eax, 2
sub     [ebp+16h], ax
jmp     short loc_456215

loc_456204:
mov     eax, ecx
mov     edx, [esp+1Ch+var_1C]
imul    ax, [edx+4]
shl     eax, 2
add     [ebp+16h], ax

loc_456215:
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 370h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
test    ah, 0Fh
jz      short loc_456245
mov     word ptr [ebp+44h], 0

loc_456245:
test    dh, 10h
jz      short loc_456264
mov     byte ptr [ebp+0Ah], 4
mov     byte ptr [ebp+0ACh], 0Ah
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0

loc_456264:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+17h], 2
jz      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
mov     byte ptr [ebp+9], 4
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
jmp     def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case

loc_456297:             ; jumptable 004560CE case 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_4562D9
neg     eax

loc_4562D9:
cmp     eax, 20h ; ' '
jle     short loc_4562F0
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd

loc_4562F0:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      def_455D03      ; jumptable 00455D03 default case
; jumptable 004560CE default case
jmp     loc_455AE9
sub_45609F endp

db 90h
jpt_456367 dd offset loc_45636E ; jump table for switch statement
dd offset loc_456374
dd offset loc_45637A
dd offset loc_456382



sub_45631B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     ebx, [eax+408h]
xor     edx, edx
xor     eax, eax
jmp     short loc_456335

loc_45632E:
inc     eax
cmp     ax, 4
jge     short loc_456358

loc_456335:
movsx   ecx, ax
mov     cl, ds:byte_515FA4[ecx]
xor     ch, ch
add     edx, ecx
mov     cx, [ebx+2]
xor     ch, ch
and     cl, 0Fh
and     ecx, 0FFFFh
movsx   esi, dx
cmp     ecx, esi
jge     short loc_45632E

loc_456358:
mov     byte ptr [edi+9], 1
cmp     ax, 3           ; switch 4 cases
ja      short def_456367 ; jumptable 00456367 default case
xor     ecx, ecx
mov     cx, ax
jmp     jpt_456367[ecx*4] ; switch jump

loc_45636E:             ; jumptable 00456367 case 0
mov     byte ptr [edi+9], 3
jmp     short def_456367 ; jumptable 00456367 default case

loc_456374:             ; jumptable 00456367 case 1
mov     word ptr [edi+66h], 0

loc_45637A:             ; jumptable 00456367 case 2
mov     word ptr [edi+66h], 10h
jmp     short def_456367 ; jumptable 00456367 default case

loc_456382:             ; jumptable 00456367 case 3
mov     word ptr [edi+66h], 0FFF0h

def_456367:             ; jumptable 00456367 default case
mov     eax, 1
jmp     loc_455AF0
sub_45631B endp




sub_456392 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset byte_4555D7
movsd
movsd
lea     ebx, [eax+408h]
mov     eax, [ebx+14h]
and     eax, 0FFFFFFh
jz      loc_4564F2
test    byte ptr [ebx+17h], 38h
jz      loc_4564E5
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_4563FC
mov     dh, [ebx]
and     dh, 75h
mov     [ebx], dh
mov     al, dh
or      al, 88h
mov     [ebx], al
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh

loc_4563FC:
lea     edx, [ecx+14h]
test    byte ptr [ebx], 8
jz      loc_45649C
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_456432
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     esi, [ebx+8]
sar     esi, 10h
cmp     esi, eax
jl      short loc_456495

loc_456432:
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_456478
mov     eax, esi
call    sub_4DDDB4
mov     esi, [ecx+54h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
lea     edx, [esi+400h]
and     edx, 0FFFh
cmp     edx, 800h
jl      short loc_45647F
add     ah, 8
and     ah, 0Fh
jmp     short loc_45647F

loc_456478:
mov     eax, esp
call    sub_4DDDB4

loc_45647F:
mov     [ecx+56h], ax
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_4564DA

loc_456495:
mov     eax, 0A0h
jmp     short loc_4564D5

loc_45649C:
test    byte ptr [ebx+17h], 20h
jnz     short loc_4564C6
xor     eax, eax
mov     al, [ecx+2]
mov     esi, eax
shl     esi, 2
mov     eax, ds:dword_55A10C
mov     eax, [esi+eax]
mov     al, [eax+9]
and     eax, 0FFh
mov     ebx, [ebx+8]
sar     ebx, 10h
cmp     ebx, eax
jl      short loc_4564D0

loc_4564C6:
lea     edx, [ecx+14h]
mov     eax, 0A2h
jmp     short loc_4564D5

loc_4564D0:
mov     eax, 0A0h

loc_4564D5:
call    sub_4D8BC3

loc_4564DA:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_4564F2

loc_4564E5:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_4564F2:
mov     eax, 1
add     esp, 8
jmp     loc_455AF0
sub_456392 endp




sub_4564FF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
cmp     byte ptr [eax+8], 0
jnz     short loc_456518
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_456511[edx*4]

loc_456518:
mov     ebp, [esp+1Ch+var_1C]
add     ebp, 3D8h
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0ACh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0ADh], al
mov     edi, edx
lea     edi, [edi+2Ch]
mov     esi, edx
lea     esi, [esi+14h]
movsd
movsd
mov     edi, edx
lea     edi, [edi+34h]
mov     esi, edx
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, edx
lea     edi, [edi+5Ch]
mov     esi, edx
lea     esi, [esi+54h]
movsd
movsd
test    byte ptr [edx+0Fh], 2
jz      short loc_456571
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+15Eh], 7FFFh
and     byte ptr [eax+0Fh], 0FDh
jmp     short loc_45657D

loc_456571:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+15Eh], 4210h

loc_45657D:
call    rand_
mov     [ebp+2], ax
test    byte ptr [ebp+0], 20h
jz      short loc_4565DD
mov     esi, [ebp+34h]
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+14h]
lea     esi, [esi+190h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, [ebp+34h]
mov     dx, [eax+56h]
sub     dx, [eax+5Eh]
mov     eax, [esp+1Ch+var_1C]
add     [eax+56h], dx
and     byte ptr [eax+57h], 0Fh

loc_4565DD:
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+8]
call    ds:funcs_456511[edx*4]
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0ADh]
mov     edx, [esp+1Ch+var_1C]
cmp     al, [edx+0ACh]
jz      short loc_456614
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE9BA
jmp     short loc_45661B

loc_456614:
mov     eax, edx
call    sub_4DEB53

loc_45661B:
test    byte ptr [ebp+0], 4
jz      loc_4566FE
mov     dword ptr [ebp+48h], 3

loc_45662C:
mov     eax, [ebp+48h]
sar     eax, 2
add     eax, eax
lea     edx, [eax+ebp]
mov     eax, [ebp+48h]
mov     dx, [edx+40h]
mov     ds:word_560E04[eax*8], dx
mov     eax, [ebp+48h]
xor     esi, esi
mov     ds:word_560E06[eax*8], si
mov     eax, [ebp+48h]
mov     ds:word_560E08[eax*8], si
mov     edx, offset unk_559EDC
mov     eax, offset word_560E04
call    sub_4EF5F7
mov     edx, offset unk_559F0C
mov     eax, offset unk_559EDC
call    sub_4EF70C
mov     eax, [ebp+48h]
shl     eax, 3
add     eax, offset word_560E04
mov     edx, offset unk_559F3C
call    sub_4EF5F7
mov     ebx, offset unk_559F6C
mov     edx, offset unk_559F3C
mov     eax, offset unk_559EDC
call    sub_4EF388
mov     edx, [ebp+48h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ecx, [esp+1Ch+var_1C]
add     ecx, 1F8h
lea     edx, [ecx+eax]
mov     ebx, offset unk_559F9C
mov     eax, offset unk_559F0C
call    sub_4EF388
mov     edx, [ebp+48h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
lea     ebx, [ecx+eax]
mov     edx, offset unk_559F9C
mov     eax, offset unk_559F6C
call    sub_4EF388
mov     edx, [ebp+48h]
add     edx, 2
mov     [ebp+48h], edx
cmp     edx, 7
jl      loc_45662C

loc_4566FE:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DF795
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_456722
mov     ecx, 1
mov     ebx, 200h
mov     edx, 80h
call    sub_4ED88B

loc_456722:
test    byte ptr [ebp+0], 40h
jnz     short loc_45673F
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, [esp+1Ch+var_1C]
call    sub_432697

loc_45673F:
test    byte ptr [ebp+0], 80h
jz      short loc_45677D
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+44h]
mov     [eax+1Ch], edx
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+192h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ebp+44h]
mov     [eax+24h], edx
mov     eax, [ebp+44h]
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_45677D:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_4567D2
test    byte ptr [ebp+0], 8
jz      short loc_4567D2
lea     edi, [ebp+0Ch]
mov     esi, eax
lea     esi, [esi+190h]
movsd
movsd
push    0
push    offset unk_800000
add     word ptr [ebp+0Eh], 38h ; '8'
xor     eax, eax
mov     ax, [ebp+8]
or      eax, 4880000h
push    eax
lea     eax, [ebp+14h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC

loc_4567D2:
mov     dword ptr [ebp+14h], 0
jmp     def_456E53      ; jumptable 00456E53 default case
sub_4564FF endp         ; jumptable 004576B2 default case




sub_4567DE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+3D8h]
test    byte ptr [eax+3], 40h
jz      short loc_4567F8
mov     word ptr [ecx], 200h
jmp     short loc_4567FD

loc_4567F8:
mov     word ptr [ecx], 0

loc_4567FD:
or      byte ptr [esi], 2
and     byte ptr [esi+3], 1Fh
mov     word ptr [esi+54h], 0
mov     al, [esi+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [esi+56h], ax
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
and     byte ptr [esi+0Ch], 0F0h
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
or      byte ptr [ecx], 0B2h
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+18h], 0
mov     eax, [esi+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [ecx+34h], eax
mov     al, [eax+2]
mov     edx, eax
and     edx, 0FFh
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     edx, [edx+eax]
mov     dl, [edx+0Fh]
and     edx, 0FFh
lea     eax, [ecx+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
lea     eax, [ecx+40h]
mov     [ecx+3Ch], eax
mov     word ptr [ecx+40h], 0
mov     word ptr [ecx+42h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+4Ch], 0
mov     dword ptr [ecx+50h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
mov     word ptr [ecx+38h], 0
mov     word ptr [esi+6Eh], 0
mov     ax, [esi+6Eh]
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], offset unk_515FE4
mov     dword ptr [esi+10h], 0
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [ecx+34h]
test    byte ptr [eax+0Fh], 4
jz      short loc_456943
mov     byte ptr [esi+8], 5
mov     byte ptr [esi+9], 4
jmp     short loc_456961

loc_456943:
mov     byte ptr [esi+8], 1
cmp     byte ptr [esi+3], 2
jnz     short loc_45695D
mov     byte ptr [esi+9], 3
mov     ds:dword_559FF8, 2
jmp     short loc_456961

loc_45695D:
mov     byte ptr [esi+9], 1

loc_456961:
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+15Eh], 4210h
call    sub_4DDF54
mov     [ecx+44h], eax
test    eax, eax
jz      def_457579      ; jumptable 00457579 default case
mov     byte ptr [eax], 1
mov     eax, [ecx+44h]
mov     byte ptr [eax+2], 0
mov     eax, [ecx+44h]
mov     byte ptr [eax+3], 40h ; '@'
mov     eax, [ecx+44h]
mov     dword ptr [eax+8], 0
mov     eax, [ecx+44h]
mov     dword ptr [eax+0Ch], 0
mov     edx, [esi+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ecx+44h]
mov     [eax+1Ch], edx
mov     edx, [esi+190h]
sar     edx, 10h
sub     edx, 180h
shl     edx, 10h
mov     eax, [ecx+44h]
mov     [eax+20h], edx
mov     edx, [esi+192h]
sar     edx, 10h
shl     edx, 10h
mov     eax, [ecx+44h]
mov     [eax+24h], edx
mov     eax, [ecx+44h]
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     edi, [ecx+44h]
lea     edi, [edi+54h]
lea     esi, [esi+54h]
movsd
movsd
jmp     def_457579      ; jumptable 00457579 default case
sub_4567DE endp

db 90h
jpt_456A7F dd offset loc_456A98 ; jump table for switch statement
dd offset loc_456AB6
dd offset def_456A7F
dd offset loc_456AB6
dd offset def_456A7F
dd offset def_456A7F
dd offset loc_456A98
dd offset loc_456A86
dd offset loc_456A98



sub_456A2F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 3FCh
mov     edx, ecx
call    sub_4E19D8
test    eax, eax
jz      short loc_456A58
or      byte ptr [esi+1], 1
jmp     short loc_456A5C

loc_456A58:
and     byte ptr [esi+1], 0FEh

loc_456A5C:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_456A63[ebx*4]
test    byte ptr [esi], 1
jz      loc_456ADF
mov     al, [ecx+9]
cmp     al, 8           ; switch 9 cases
ja      short def_456A7F ; jumptable 00456A7F default case, cases 2,4,5
and     eax, 0FFh
jmp     jpt_456A7F[eax*4] ; switch jump

loc_456A86:             ; jumptable 00456A7F case 7
xor     edx, edx
mov     ds:dword_559FE4, edx
mov     ds:dword_559FFC, 0F0h

loc_456A98:             ; jumptable 00456A7F cases 0,6,8
test    byte ptr [ecx+0Eh], 1
jnz     short loc_456AAA
test    byte ptr [esi+1], 1
jnz     short loc_456AAA
test    byte ptr [ecx+0Fh], 1
jz      short loc_456AB0

loc_456AAA:
mov     byte ptr [ecx+9], 6
jmp     short loc_456AD2

loc_456AB0:
mov     byte ptr [ecx+9], 0
jmp     short def_456A7F ; jumptable 00456A7F default case, cases 2,4,5

loc_456AB6:             ; jumptable 00456A7F cases 1,3
test    byte ptr [ecx+0Eh], 1
jnz     short loc_456AC8
test    byte ptr [esi+1], 1
jnz     short loc_456AC8
test    byte ptr [ecx+0Fh], 1
jz      short loc_456ACE

loc_456AC8:
mov     byte ptr [ecx+9], 3
jmp     short loc_456AD2

loc_456ACE:
mov     byte ptr [ecx+9], 1

loc_456AD2:
and     byte ptr [ecx+0Fh], 0FEh

def_456A7F:             ; jumptable 00456A7F default case, cases 2,4,5
mov     word ptr [ecx+0Ah], 0
and     byte ptr [esi], 0FEh

loc_456ADF:
mov     dx, [esi+0Ah]
test    dx, dx
jz      short loc_456AEF
mov     ebx, edx
dec     ebx
mov     [esi+0Ah], bx

loc_456AEF:
mov     cx, [esi+38h]
test    cx, cx
jz      def_457579      ; jumptable 00457579 default case
mov     edi, ecx
dec     edi
mov     [esi+38h], di
jmp     def_457579      ; jumptable 00457579 default case
sub_456A2F endp




sub_456B08 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+3D8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 3FCh
mov     edx, esi
call    sub_4E19D8
test    eax, eax
jz      short loc_456B31
or      byte ptr [ecx+1], 1
jmp     short loc_456B35

loc_456B31:
and     byte ptr [ecx+1], 0FEh

loc_456B35:
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_456A63[edx*4]
test    byte ptr [ecx], 1
jz      short loc_456B55
mov     byte ptr [esi+9], 1
mov     word ptr [esi+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_456B55:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_456B65
mov     ebx, edx
dec     ebx
mov     [ecx+0Ah], bx

loc_456B65:
mov     si, [ecx+38h]
test    si, si
jz      def_457579      ; jumptable 00457579 default case
mov     edi, esi
dec     edi
mov     [ecx+38h], di
jmp     def_457579      ; jumptable 00457579 default case
sub_456B08 endp




sub_456B7E proc near
push    edx
lea     edx, [eax+3D8h]
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE2F6
pop     edx
retn
sub_456B7E endp




sub_456B94 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_456BC1
jbe     loc_456C40
cmp     al, 2
jz      loc_456C6F
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456BC1:
test    al, al
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
mov     word ptr [eax+4], 20h ; ' '
mov     esi, [eax+34h]
mov     edi, offset unk_559FCC
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [eax+34h]
mov     edi, offset unk_559FD4
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+34h]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 100h
mov     edx, offset unk_559FD4
mov     eax, offset unk_559FCC
call    sub_4DD4C5
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, offset unk_559FCC
call    sub_4DE552
sar     eax, 5
mov     [ebp+66h], ax

loc_456C40:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_456C60
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
mov     ax, [eax+56h]
jmp     short loc_456C6B

loc_456C60:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh

loc_456C6B:
mov     [ebp+56h], ax

loc_456C6F:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+1], 1
jnz     short loc_456C84
test    byte ptr [ebp+0Fh], 1
jnz     short loc_456C84
test    byte ptr [ebp+0Eh], 1
jz      short def_456E53 ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456C84:
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 1

def_456E53:             ; jumptable 00456E53 default case
add     esp, 4          ; jumptable 004576B2 default case
pop     ebp

def_457579:             ; jumptable 00457579 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_456B94 endp




sub_456C94 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_456CAE
cmp     al, 1
jz      short loc_456CE8
jmp     short def_456E53 ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456CAE:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0Ah
mov     eax, [ebp+34h]
mov     ax, [eax+56h]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     word ptr [ebp+4], 3Ch ; '<'
mov     word ptr [ebp+8], 0
or      byte ptr [ebp+0], 40h
mov     eax, edx
call    sub_432EAB
mov     eax, [ebp+44h]
mov     byte ptr [eax+9], 0Fh

loc_456CE8:
cmp     word ptr [ebp+4], 2Bh ; '+'
jnz     loc_456D7C
and     byte ptr [ebp+0], 7Fh
mov     eax, [ebp+44h]
mov     byte ptr [eax+8], 0
mov     eax, [ebp+44h]
mov     byte ptr [eax+3], 1
mov     eax, [ebp+44h]
mov     byte ptr [eax+4], 1
mov     eax, [ebp+34h]
mov     edx, [ebp+44h]
mov     ax, [eax+56h]
mov     [edx+56h], ax
mov     esi, [ebp+44h]
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+44h]
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     eax, [ebp+44h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [ebp+44h]
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     eax, [ebp+44h]
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
call    sub_4DD43B
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0E4h
call    sub_4D8BC3

loc_456D7C:
mov     bx, [ebp+4]
dec     ebx
mov     [ebp+4], bx
test    bx, bx
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Fh], 40h
jz      short loc_456DCF
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+9], 3
mov     eax, ds:dword_55A00C
mov     word ptr [eax+0Ah], 0
mov     esi, ds:dword_55A00C
lea     edi, [esi+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, ds:dword_55A00C
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd

loc_456DCF:
call    sub_4DE13B
mov     [ebp+4Ch], eax
test    eax, eax
jz      short loc_456DFD
mov     byte ptr [eax], 5
mov     eax, [ebp+4Ch]
mov     byte ptr [eax+2], 80h
mov     eax, [ebp+4Ch]
mov     byte ptr [eax+3], 42h ; 'B'
mov     esi, [ebp+4Ch]
lea     edi, [esi+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+190h]
movsd
movsd

loc_456DFD:
test    byte ptr [ebp+1], 2
jz      short loc_456E0B
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE2F6

loc_456E0B:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FCh
mov     byte ptr [eax+0Fh], 0
jmp     def_456E53      ; jumptable 00456E53 default case
sub_456C94 endp         ; jumptable 004576B2 default case

db 90h
jpt_456E53 dd offset loc_456E5A ; jump table for switch statement
dd offset loc_456E97
dd offset loc_456ED8
dd offset loc_456FAA
dd offset loc_4570FA



sub_456E2F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     dword ptr [ebp+54h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
and     eax, 0FFh
jmp     jpt_456E53[eax*4] ; switch jump

loc_456E5A:             ; jumptable 00456E53 case 0
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     word ptr [ebp+8], 0
or      byte ptr [ebp+0], 4
lea     eax, [ebp+24h]
call    sub_4E19B4
mov     word ptr [ebp+6], 5Ah ; 'Z'
mov     esi, ds:dword_559FEC
or      byte ptr [esi+0Fh], 1
mov     esi, ds:dword_559FF0
or      byte ptr [esi+0Fh], 1
mov     edx, ds:dword_559FF4
or      byte ptr [edx+0Fh], 1

loc_456E97:             ; jumptable 00456E53 case 1
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 14h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 800h
call    sub_4DE552
test    eax, eax
jge     short loc_456EC5
mov     word ptr [ebp+3Ah], 3
lea     eax, [ebp+40h]
jmp     short loc_456ECE

loc_456EC5:
mov     word ptr [ebp+3Ah], 5
lea     eax, [ebp+42h]

loc_456ECE:
mov     [ebp+3Ch], eax
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 2

loc_456ED8:             ; jumptable 00456E53 case 2
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     edi, [esp+1Ch+var_1C]
add     edi, 190h
add     eax, edi
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     esi, eax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
add     eax, esi
and     ah, 0Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     eax, [ebp+3Ch]
movsx   ebx, word ptr [eax]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
add     eax, edi
mov     ecx, 10h
call    sub_4DE5A3
mov     ebx, eax
mov     edx, [ebp+3Ch]
add     ax, [edx]
and     ah, 0Fh
mov     [edx], ax
cmp     word ptr [ebp+38h], 0
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
test    si, si
jge     short loc_456F66
movsx   eax, si
neg     eax
jmp     short loc_456F69

loc_456F66:
movsx   eax, si

loc_456F69:
cmp     eax, 20h ; ' '
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
test    bx, bx
jge     short loc_456F7E
movsx   eax, bx
neg     eax
jmp     short loc_456F81

loc_456F7E:
movsx   eax, bx

loc_456F81:
cmp     eax, 10h
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 3
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
mov     al, ds:byte_515FFC[eax]
xor     ah, ah
mov     [ebp+4], ax
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_456FAA:             ; jumptable 00456E53 case 3
mov     ebx, [ebp+3Ch]
movsx   ebx, word ptr [ebx]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     esi, [esp+1Ch+var_1C]
add     esi, 190h
add     eax, esi
mov     ecx, 10h
call    sub_4DE5A3
mov     edx, [ebp+3Ch]
add     ax, [edx]
and     ah, 0Fh
mov     [edx], ax
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
cmp     eax, ds:dword_559FF8
jnz     loc_4570C7
cmp     word ptr [ebp+38h], 0
jnz     loc_4570C7
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+80h], 0C80000h
jnb     loc_4570C7
call    sub_4DE043
mov     [ebp+50h], eax
mov     edx, eax
test    eax, eax
jz      loc_4570C7
mov     byte ptr [eax], 1
mov     eax, [ebp+50h]
mov     byte ptr [eax+2], 2Eh ; '.'
cmp     word ptr [ebp+3Ah], 3
jnz     short loc_457041
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 40h ; '@'
jmp     short loc_457048

loc_457041:
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 41h ; 'A'

loc_457048:
mov     eax, [ebp+50h]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+64h], dx
mov     eax, [ebp+3Ch]
mov     ax, [eax]
add     ah, 4
and     ah, 0Fh
mov     edx, eax
mov     eax, [ebp+50h]
mov     [eax+66h], dx
mov     esi, [ebp+38h]
sar     esi, 10h
shl     esi, 3
mov     ebx, [esp+1Ch+var_1C]
add     esi, ebx
mov     edi, [ebp+50h]
lea     edi, [edi+14h]
lea     esi, [esi+190h]
movsd
movsd
mov     esi, [ebp+50h]
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     edx, [ebp+50h]
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     esi, [ebp+50h]
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [ebp+38h], 5
lea     edx, [ebx+14h]
mov     eax, 0E3h
call    sub_4D8BC3

loc_4570C7:
mov     ax, [ebp+4]
test    ax, ax
jz      short loc_4570DC
mov     edx, eax
dec     edx
mov     [ebp+4], dx
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4570DC:
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
cmp     eax, ds:dword_559FF8
jnz     short loc_457125
inc     byte ptr [edx+0Ah]
mov     word ptr [ebp+4], 1Eh
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4570FA:             ; jumptable 00456E53 case 4
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     edx, ds:dword_559FF8
inc     edx
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ds:dword_559FF8, edx

loc_457125:
or      byte ptr [ebp+0], 1
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax+0Fh], 0FEh
jmp     def_456E53      ; jumptable 00456E53 default case
sub_456E2F endp         ; jumptable 004576B2 default case

db 8Bh, 0C0h
jpt_45717F dd offset loc_457186 ; jump table for switch statement
dd offset loc_4571A5
dd offset loc_4571E6
dd offset loc_4572BA
jpt_457420 dd offset loc_457427 ; jump table for switch statement
dd offset loc_4574A9
dd offset loc_4574C8
dd offset loc_4574EB
dd offset loc_457508



sub_45715B proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     dword ptr [ebp+54h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45717F      ; jumptable 0045717F default case
and     eax, 0FFh
jmp     jpt_45717F[eax*4] ; switch jump

loc_457186:             ; jumptable 0045717F case 0
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     word ptr [ebp+8], 0
or      byte ptr [ebp+0], 4
lea     eax, [ebp+24h]
call    sub_4E19B4
mov     word ptr [ebp+6], 5Ah ; 'Z'

loc_4571A5:             ; jumptable 0045717F case 1
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 14h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 800h
call    sub_4DE552
test    eax, eax
jge     short loc_4571D3
mov     word ptr [ebp+3Ah], 3
lea     eax, [ebp+40h]
jmp     short loc_4571DC

loc_4571D3:
mov     word ptr [ebp+3Ah], 5
lea     eax, [ebp+42h]

loc_4571DC:
mov     [ebp+3Ch], eax
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 2

loc_4571E6:             ; jumptable 0045717F case 2
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     edi, [esp+1Ch+var_1C]
add     edi, 190h
add     eax, edi
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     esi, eax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+56h]
add     eax, esi
and     ah, 0Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+56h], ax
mov     eax, [ebp+3Ch]
movsx   ebx, word ptr [eax]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
add     eax, edi
mov     ecx, 10h
call    sub_4DE5A3
mov     ecx, eax
mov     edx, eax
mov     eax, [ebp+3Ch]
add     cx, [eax]
and     ch, 0Fh
mov     [eax], cx
cmp     word ptr [ebp+38h], 0
jnz     def_45717F      ; jumptable 0045717F default case
test    si, si
jge     short loc_457276
movsx   eax, si
neg     eax
jmp     short loc_457279

loc_457276:
movsx   eax, si

loc_457279:
cmp     eax, 20h ; ' '
jge     def_45717F      ; jumptable 0045717F default case
test    dx, dx
jge     short loc_45728E
movsx   eax, dx
neg     eax
jmp     short loc_457291

loc_45728E:
movsx   eax, dx

loc_457291:
cmp     eax, 10h
jge     def_45717F      ; jumptable 0045717F default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 3
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
mov     al, ds:byte_515FFF[eax]
xor     ah, ah
mov     [ebp+4], ax
jmp     def_45717F      ; jumptable 0045717F default case

loc_4572BA:             ; jumptable 0045717F case 3
mov     eax, [ebp+3Ch]
movsx   ebx, word ptr [eax]
mov     edx, [ebp+54h]
add     edx, 4E8h
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     ecx, [esp+1Ch+var_1C]
add     ecx, 190h
add     eax, ecx
mov     ecx, 10h
call    sub_4DE5A3
mov     esi, [ebp+3Ch]
add     ax, [esi]
and     ah, 0Fh
mov     [esi], ax
cmp     word ptr [ebp+38h], 0
jnz     loc_4573C9
xor     eax, eax
mov     edx, [esp+1Ch+var_1C]
mov     al, [edx+3]
mov     edx, [edx+80h]
cmp     edx, ds:dword_515FF0[eax*4]
jnb     loc_4573C9
call    sub_4DE043
mov     [ebp+50h], eax
test    eax, eax
jz      loc_4573C9
mov     byte ptr [eax], 1
mov     eax, [ebp+50h]
mov     byte ptr [eax+2], 2Eh ; '.'
cmp     word ptr [ebp+3Ah], 3
jnz     short loc_457343
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 40h ; '@'
jmp     short loc_45734A

loc_457343:
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 41h ; 'A'

loc_45734A:
mov     eax, [ebp+50h]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+64h], dx
mov     eax, [ebp+3Ch]
mov     ax, [eax]
add     ah, 4
and     ah, 0Fh
mov     edx, eax
mov     eax, [ebp+50h]
mov     [eax+66h], dx
mov     eax, [ebp+38h]
sar     eax, 10h
shl     eax, 3
mov     ebx, [esp+1Ch+var_1C]
add     eax, ebx
mov     esi, [ebp+50h]
lea     edi, [esi+14h]
lea     esi, [eax+190h]
movsd
movsd
mov     esi, [ebp+50h]
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [ebp+50h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     esi, [ebp+50h]
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [ebp+38h], 5
lea     edx, [ebx+14h]
mov     eax, 0E3h
call    sub_4D8BC3

loc_4573C9:
mov     si, [ebp+4]
dec     esi
mov     [ebp+4], si
test    si, si
jge     short def_45717F ; jumptable 0045717F default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Ah], 1
mov     word ptr [ebp+38h], 2Dh ; '-'
test    byte ptr [ebp+1], 1
jnz     short def_45717F ; jumptable 0045717F default case
or      byte ptr [ebp+0], 1

def_45717F:             ; jumptable 0045717F default case
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Fh], 40h
jnz     def_457420      ; jumptable 00457420 default case
test    byte ptr [ebp+1], 2
jnz     def_457420      ; jumptable 00457420 default case
cmp     word ptr [ebp+6], 0
jnz     def_457420      ; jumptable 00457420 default case
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_457420      ; jumptable 00457420 default case
and     eax, 0FFh
jmp     jpt_457420[eax*4] ; switch jump

loc_457427:             ; jumptable 00457420 case 0
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+80h], 200000h
ja      def_457420      ; jumptable 00457420 default case
push    800h
mov     eax, [ebp+54h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     eax, [ebp+34h]
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esp+24h+var_1C]
add     eax, 1Ch
mov     ebx, 600h
call    sub_4DE639
test    eax, eax
jnz     def_457420      ; jumptable 00457420 default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Bh], 1
or      byte ptr [eax+0Eh], 88h
mov     esi, [ebp+44h]
lea     edi, [esi+54h]
mov     esi, eax
lea     esi, [esi+54h]
movsd
movsd
mov     dx, [eax+192h]
sub     edx, 0D0h
mov     eax, [ebp+44h]
mov     [eax+16h], dx
mov     esi, [ebp+44h]
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_4574A9:             ; jumptable 00457420 case 1
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Bh], 2
mov     byte ptr [eax+0Ch], 8
mov     byte ptr [eax+0ACh], 1
lea     edx, [eax+14h]
mov     eax, 0DFh
call    sub_4D8BC3

loc_4574C8:             ; jumptable 00457420 case 2
mov     eax, [esp+1Ch+var_1C]
mov     cl, [eax+0Ch]
dec     cl
mov     [eax+0Ch], cl
jnz     short def_457420 ; jumptable 00457420 default case
mov     byte ptr [eax+0Bh], 3
mov     eax, [ebp+44h]
mov     byte ptr [eax+9], 11h
mov     eax, [ebp+44h]
mov     word ptr [eax+0Ah], 0
jmp     short def_457420 ; jumptable 00457420 default case

loc_4574EB:             ; jumptable 00457420 case 3
mov     eax, [ebp+44h]
cmp     byte ptr [eax+0Dh], 1
jnz     short def_457420 ; jumptable 00457420 default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+0Bh], 4
mov     byte ptr [eax+0Ch], 8
mov     byte ptr [eax+0ACh], 2
jmp     short def_457420 ; jumptable 00457420 default case

loc_457508:             ; jumptable 00457420 case 4
mov     eax, [esp+1Ch+var_1C]
mov     cl, [eax+0Ch]
dec     cl
mov     [eax+0Ch], cl
jnz     short def_457420 ; jumptable 00457420 default case
and     byte ptr [eax+0Eh], 7Fh
mov     [eax+0Bh], cl
mov     [eax+0ACh], cl
mov     word ptr [ebp+6], 5Ah ; 'Z'
and     byte ptr [eax+0Eh], 0F7h

def_457420:             ; jumptable 00457420 default case
mov     di, [ebp+6]
test    di, di
jz      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, edi
dec     eax
mov     [ebp+6], ax
jmp     def_456E53      ; jumptable 00456E53 default case
sub_45715B endp         ; jumptable 004576B2 default case

db 8Bh, 0C0h
jpt_457579 dd offset loc_457580 ; jump table for switch statement
dd offset loc_457591
dd offset loc_4575DC
dd offset loc_457612
dd offset loc_457659



sub_45755B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_457579      ; jumptable 00457579 default case
and     edx, 0FFh
jmp     jpt_457579[edx*4] ; switch jump

loc_457580:             ; jumptable 00457579 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     word ptr [eax+8], 0

loc_457591:             ; jumptable 00457579 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     edx, ds:dword_559FEC[eax*4]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jge     short loc_4575CB
cwde
neg     eax
jmp     short loc_4575CC

loc_4575CB:
cwde

loc_4575CC:
test    eax, eax
jnz     def_457579      ; jumptable 00457579 default case
mov     byte ptr [esi+0Ah], 2
or      byte ptr [esi+0Eh], 10h

loc_4575DC:             ; jumptable 00457579 case 2
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     eax, ds:dword_559FEC[eax*4]
test    byte ptr [eax+0Eh], 10h
jz      short loc_4575F3
mov     byte ptr [esi+0Ah], 3

loc_4575F3:
mov     ax, [esi+0CAh]
test    ax, ax
jz      def_457579      ; jumptable 00457579 default case
mov     edx, eax
dec     edx
mov     [esi+0CAh], dx
jmp     def_457579      ; jumptable 00457579 default case

loc_457612:             ; jumptable 00457579 case 3
mov     cx, [esi+0CAh]
test    cx, cx
jnz     short loc_45764A
mov     byte ptr [esi+0Ah], 4
mov     byte ptr [esi+0ACh], 2
or      byte ptr [esi+0Fh], 40h
mov     word ptr [eax+4], 8
mov     eax, ds:dword_55A00C
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_55A00C
mov     [eax+0Ah], cx
jmp     def_457579      ; jumptable 00457579 default case

loc_45764A:
mov     edi, ecx
dec     edi
mov     [esi+0CAh], di
jmp     def_457579      ; jumptable 00457579 default case

loc_457659:             ; jumptable 00457579 case 4
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_457579      ; jumptable 00457579 default case
mov     byte ptr [esi+0ACh], 0
and     byte ptr [esi+0Eh], 0EDh
or      byte ptr [eax], 1
jmp     def_457579      ; jumptable 00457579 default case
sub_45755B endp

db 90h
jpt_4576B2 dd offset loc_4576B9 ; jump table for switch statement
dd offset loc_4576D7
dd offset loc_4577AF
dd offset loc_4577DC



sub_45768F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3D8h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
and     eax, 0FFh
jmp     jpt_4576B2[eax*4] ; switch jump

loc_4576B9:             ; jumptable 004576B2 case 0
mov     byte ptr [ebp+0Ah], 1
or      byte ptr [ebp+0Eh], 80h
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
mov     word ptr [eax+4], 8

loc_4576D7:             ; jumptable 004576B2 case 1
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_559FEC[eax*4]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
mov     edx, [esp+1Ch+var_1C]
mov     cx, [edx+4]
test    cx, cx
jnz     loc_4577A3
test    ax, ax
jge     short loc_457721
cwde
neg     eax
jmp     short loc_457722

loc_457721:
cwde

loc_457722:
test    eax, eax
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     eax, ds:dword_559FEC[eax*4]
test    byte ptr [eax+0Eh], 50h
jz      def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     byte ptr [ebp+0Ah], 2
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     dl, [ebp+0Dh]
mov     [eax+0Eh], dl
mov     esi, [esp+1Ch+var_1C]
mov     esi, [esi+44h]
lea     edi, [esi+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     dx, [ebp+192h]
sub     edx, 0D0h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     [eax+16h], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 12h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     word ptr [eax+0Ah], 0
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4577A3:
mov     esi, ecx
dec     esi
mov     [edx+4], si
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4577AF:             ; jumptable 004576B2 case 2
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
cmp     byte ptr [eax+0Dh], 1
jnz     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
mov     byte ptr [ebp+0Ah], 3
or      byte ptr [ebp+0Eh], 10h
mov     byte ptr [ebp+0ACh], 2
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 8
jmp     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case

loc_4577DC:             ; jumptable 004576B2 case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_456E53      ; jumptable 00456E53 default case
; jumptable 004576B2 default case
and     byte ptr [ebp+0Eh], 6Dh
mov     byte ptr [ebp+0ACh], 0
jmp     loc_456C84
sub_45768F endp




sub_457801 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edi, eax
lea     esi, [eax+3D8h]
mov     dword ptr [esi+54h], offset byte_5F8364
mov     cl, [eax+0Ah]
cmp     cl, 1
jb      short loc_45782C
jbe     short loc_457841
cmp     cl, 2
jz      short loc_45786E
jmp     loc_457916

loc_45782C:
test    cl, cl
jnz     loc_457916
mov     eax, [esi+34h]
test    byte ptr [eax+0Fh], 8
jz      loc_457916

loc_457841:
inc     byte ptr [edi+0Ah]
mov     word ptr [esi+38h], 7
mov     word ptr [esi+8], 0
or      byte ptr [esi], 4
lea     ecx, [edi+14h]
mov     edx, ecx
mov     eax, 0E1h
call    sub_4D8BC3
mov     edx, ecx
mov     eax, 0E2h
call    sub_4D8BC3

loc_45786E:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+54h]
add     edx, 4E8h
lea     eax, [edi+14h]
mov     ecx, 80h
call    sub_4DE552
mov     [esp+1Ch+var_1C], eax
mov     ax, [edi+56h]
add     eax, [esp+1Ch+var_1C]
and     ah, 0Fh
mov     [edi+56h], ax
mov     ebx, [esi+3Eh]
sar     ebx, 10h
mov     edx, [esi+54h]
add     edx, 4E8h
lea     eax, [edi+1A8h]
mov     ecx, 80h
call    sub_4DE5A3
mov     [esp+1Ch+var_18], eax
mov     ax, [esi+40h]
add     eax, [esp+1Ch+var_18]
and     ah, 0Fh
mov     [esi+40h], ax
mov     ebx, [esi+40h]
sar     ebx, 10h
mov     edx, [esi+54h]
add     edx, 4E8h
lea     eax, [edi+1B8h]
mov     ecx, 80h
call    sub_4DE5A3
mov     dx, [esi+42h]
add     edx, eax
and     dh, 0Fh
mov     [esi+42h], dx
mov     ecx, [esp+1Ch+var_1C]
test    cx, cx
jnz     short loc_457916
cmp     word ptr [esp+1Ch+var_18], 0
jnz     short loc_457916
test    ax, ax
jnz     short loc_457916
mov     byte ptr [edi+9], 5
mov     [edi+0Ah], cx

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

