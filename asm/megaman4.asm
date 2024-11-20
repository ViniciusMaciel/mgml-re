loc_407E93:
cwde
mov     ecx, eax
sar     ecx, 4
and     ecx, 7
add     byte ptr [edx+5], 2
dec     word ptr [edx+6]
add     word ptr [edx+8], 4
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ecx, 2
sub     eax, ecx
mov     [edx+0Ch], ax
add     word ptr [edx+0Eh], 18h
cmp     word ptr [edx+6], 0
jnz     short loc_407EC8
mov     byte ptr [edx+4], 0

loc_407EC8:
pop     ecx
pop     ebx
retn
sub_407E37 endp




sub_407ECB proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
call    sub_4EE133
xor     ebx, ebx
mov     bl, [ecx+5]
mov     edx, ebx
shl     edx, 8
add     edx, ebx
shl     edx, 8
add     edx, ebx
sub     esi, edx
mov     [eax+4], esi
mov     ebx, [ecx+8]
sar     ebx, 10h
and     ebx, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      ebx, edx
mov     [eax+8], ebx
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D480040h
mov     dword ptr [eax+14h], 4E005Fh
mov     dword ptr [eax+1Ch], 1F40h
mov     dword ptr [eax+24h], 1F5Fh
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8
pop     esi
pop     ecx
pop     ebx
retn
sub_407ECB endp




sub_407F40 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     ebx, [eax+4]
sar     ebx, 10h
sar     ebx, 2
mov     bl, ds:byte_50B450[ebx]
and     ebx, 0FFh
call    sub_4EE133
movzx   esi, byte ptr [ecx+5]
mov     edx, esi
shl     edx, 8
add     edx, esi
shl     edx, 8
add     edx, esi
sub     edi, edx
mov     [eax+4], edi
mov     esi, [ecx+8]
sar     esi, 10h
and     esi, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      esi, edx
mov     [eax+8], esi
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     edx, ebx
or      edx, 3D480000h
mov     [eax+0Ch], edx
lea     edx, [ebx+1Fh]
mov     esi, edx
or      esi, 4E0000h
mov     [eax+14h], esi
or      bh, 1Fh
mov     [eax+1Ch], ebx
or      dh, 1Fh
mov     [eax+24h], edx
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_407F40 endp




sub_407FD4 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
cmp     byte ptr [eax+4], 2
jnb     loc_40806D
mov     ebx, [ecx+4]
sar     ebx, 10h
sar     ebx, 2
mov     bl, ds:byte_50B450[ebx]
and     ebx, 0FFh
call    sub_4EE133
movzx   esi, byte ptr [ecx+5]
mov     edx, esi
shl     edx, 8
add     edx, esi
shl     edx, 8
add     edx, esi
sub     edi, edx
mov     [eax+4], edi
mov     esi, [ecx+8]
sar     esi, 10h
and     esi, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      esi, edx
mov     [eax+8], esi
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     edx, ebx
or      edx, 3D480000h
mov     [eax+0Ch], edx
lea     edx, [ebx+1Fh]
mov     esi, edx
or      esi, 4E0000h
mov     [eax+14h], esi
or      bh, 1Fh
mov     [eax+1Ch], ebx
or      dh, 1Fh
mov     [eax+24h], edx
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8

loc_40806D:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_407FD4 endp




sub_408072 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 640h
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
call    ds:funcs_4080C7[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_4080ED
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_4080F4

loc_4080ED:
mov     eax, ebp
call    sub_4DEB53

loc_4080F4:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+38h]
mov     ds:word_560E20, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_408121
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_408121:
test    byte ptr [ebp+0], 1
jz      short loc_408171
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_408171
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 5880000h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_408171:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

loc_40817B:
add     esp, 4
jmp     loc_40938A
sub_408072 endp




sub_408183 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
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
mov     word ptr [esi], 2Eh ; '.'
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 4
mov     eax, [eax]
add     eax, edx
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     dword ptr [esi+34h], 0
mov     dword ptr [esi+38h], 0
mov     ax, [ecx+1Ah]
mov     [esi+3Ch], ax
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_50B4A0
mov     dword ptr [ecx+10h], 0
test    byte ptr [ecx+3], 7Fh
jnz     short loc_4082A8
mov     eax, ecx
call    sub_42C935
mov     [esi+3Eh], ax
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 1
jmp     short loc_4082D5

loc_4082A8:
mov     eax, ecx
call    sub_42C592
mov     [esi+3Eh], ax
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

loc_4082D5:
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_408183 endp

jpt_4083F1 dd offset loc_408418 ; jump table for switch statement
dd offset def_4083F1
dd offset def_4083F1
dd offset def_4083F1
dd offset loc_4083F8
dd offset loc_40846D
dd offset loc_408423
dd offset loc_408423
dd offset loc_408423
dd offset def_4083F1
dd offset loc_408418
dd offset loc_40840F



sub_40831A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
test    byte ptr [ebp+0], 20h
jz      short loc_408342
lea     eax, [ebp+24h]
mov     edx, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_408342
or      byte ptr [ebp+0], 10h
jmp     short loc_408346

loc_408342:
and     byte ptr [ebp+0], 0EFh

loc_408346:
test    byte ptr [ebp+0], 2
jz      short loc_408368
test    byte ptr [ecx+3], 80h
jnz     short loc_408361
xor     eax, eax
mov     ax, [ebp+3Ch]
call    sub_47E888
test    eax, eax
jz      short loc_408368

loc_408361:
mov     eax, ecx
call    sub_4093C2

loc_408368:
cmp     ds:byte_77E7D4, 0
jnz     short loc_4083C7
mov     ebx, [ecx+12h]
sar     ebx, 10h
mov     eax, ds:dword_50B4AA
sar     eax, 10h
sub     ebx, eax
mov     eax, [ecx+16h]
sar     eax, 10h
mov     esi, ds:dword_50B4AA+2
sar     esi, 10h
sub     eax, esi
mov     esi, eax
test    byte ptr [ebp+0], 40h
jnz     short loc_4083C7
cmp     word ptr [ecx+6Eh], 0
jle     short loc_4083C7
mov     eax, ds:dword_50B4AE
sar     eax, 10h
cmp     ebx, eax
jnb     short loc_4083B9
mov     eax, ds:dword_50B4AE+2
sar     eax, 10h
cmp     esi, eax
jb      short loc_4083C7

loc_4083B9:
mov     byte ptr [ecx+9], 0Bh
mov     word ptr [ecx+0Ah], 0
or      byte ptr [ebp+0], 40h

loc_4083C7:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_4083CE[ebx*4]
mov     dh, [ebp+0]
test    dh, 1
jz      loc_40848A
mov     al, [ecx+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_4083F1      ; jumptable 004083F1 default case, cases 1-3,9
and     eax, 0FFh
jmp     jpt_4083F1[eax*4] ; switch jump

loc_4083F8:             ; jumptable 004083F1 case 4
test    dh, 10h
jz      short loc_408406

loc_4083FD:
mov     byte ptr [ecx+9], 5
jmp     loc_408480

loc_408406:
mov     byte ptr [ecx+9], 0Ah
jmp     loc_408480

loc_40840F:             ; jumptable 004083F1 case 11
mov     byte ptr [ecx+9], 1
jmp     loc_408480

loc_408418:             ; jumptable 004083F1 cases 0,10
test    dh, 10h
jnz     short loc_4083FD
mov     byte ptr [ecx+9], 0
jmp     short loc_408480

loc_408423:             ; jumptable 004083F1 cases 6-8
cmp     word ptr [ecx+6Eh], 0
jg      short loc_4083FD
call    sub_4DE13B
test    eax, eax
jz      short loc_408446
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_408446:
mov     eax, ecx
call    sub_4DE336
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
mov     edx, esi
mov     eax, 0A1h
call    sub_4D8BC3
jmp     short loc_408480

loc_40846D:             ; jumptable 004083F1 case 5
mov     byte ptr [ecx+9], 3
jmp     short loc_408480

def_4083F1:             ; jumptable 004083F1 default case, cases 1-3,9
test    byte ptr [ebp+0], 10h
jnz     short loc_40846D ; jumptable 004083F1 case 5
mov     eax, ecx
call    sub_409318

loc_408480:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_40848A:
mov     cx, [ebp+0Ah]
test    cx, cx
jz      short loc_40849A
mov     esi, ecx
dec     esi
mov     [ebp+0Ah], si

loc_40849A:
mov     di, [ebp+34h]
test    di, di
jz      short loc_4084AA
mov     eax, edi
dec     eax
mov     [ebp+34h], ax

loc_4084AA:
mov     dx, [ebp+36h]
test    dx, dx
jz      loc_40938A
mov     ebx, edx
dec     ebx
mov     [ebp+36h], bx
jmp     loc_40938A
sub_40831A endp



; Attributes: thunk

sub_4084C3 proc near
jmp     sub_4DE336
sub_4084C3 endp




sub_4084C8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+640h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4084E4
cmp     al, 1
jz      short loc_4084FB
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4084E4:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [ecx+8], 0
mov     word ptr [ecx+4], 0Fh

loc_4084FB:
test    byte ptr [edx+3], 80h
jnz     short loc_408510
xor     eax, eax
mov     ax, [ecx+3Ch]
call    sub_47E888
test    eax, eax
jz      short loc_408554

loc_408510:
test    dword ptr [ecx+14h], 0FFFFFFh
jz      short loc_408528

loc_408519:
mov     byte ptr [edx+9], 0Ah
mov     word ptr [edx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_408528:
mov     bx, [ecx+4]
test    bx, bx
jge     short loc_40853F
cmp     dword ptr [edx+80h], 3BD08h
jnb     short loc_408546
jmp     short loc_408519

loc_40853F:
mov     esi, ebx
dec     esi
mov     [ecx+4], si

loc_408546:
mov     dl, [ecx]
test    dl, 10h
jz      short loc_408554
mov     dh, dl
or      dh, 1
mov     [ecx], dh

loc_408554:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4084C8 endp




sub_408559 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     edx, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40857C
jbe     short loc_4085D9
cmp     al, 2
jz      loc_408602
jmp     loc_40863A

loc_40857C:
test    al, al
jnz     loc_40863A
mov     byte ptr [ebx+0Ah], 1
mov     byte ptr [ebx+0ACh], 1
mov     ax, [edx+2]
xor     ah, ah
and     al, 1
and     eax, 0FFFFh
mov     cl, al
mov     esi, 8
sar     esi, cl
mov     edi, 2
sar     edi, cl
lea     ecx, [edi+esi]
mov     [edx+6], cx
mov     [edx+4], cx
test    byte ptr [edx+2], 2
jz      short loc_4085C6
mov     cl, al
mov     eax, 200h
jmp     short loc_4085CD

loc_4085C6:
mov     cl, al
mov     eax, 0FFFFFE00h

loc_4085CD:
shl     eax, cl
mov     [edx+3Ah], ax
mov     word ptr [edx+8], 0

loc_4085D9:
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jg      short loc_4085F4
mov     byte ptr [ebx+0Ah], 2
inc     byte ptr [ebx+0Bh]
mov     word ptr [edx+4], 8

loc_4085F4:
mov     ax, [edx+3Ah]
add     [edx+38h], ax
and     byte ptr [edx+39h], 0Fh
jmp     short loc_40863A

loc_408602:
mov     cx, [edx+4]
dec     ecx
mov     [edx+4], cx
test    cx, cx
jge     short loc_40863A
cmp     byte ptr [ebx+0Bh], 4
jb      short loc_40862E
test    byte ptr [ebx+3], 80h
jnz     short loc_40862B
xor     eax, eax
mov     ax, [edx+3Ch]
call    sub_47E888
test    eax, eax
jz      short loc_40862E

loc_40862B:
or      byte ptr [edx], 1

loc_40862E:
mov     byte ptr [ebx+0Ah], 1
mov     ax, [edx+6]
mov     [edx+4], ax

loc_40863A:
test    byte ptr [ebx+3], 80h
jnz     short loc_408653
xor     eax, eax
mov     ax, [edx+3Ch]
call    sub_47E888
test    eax, eax
jz      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408653:
cmp     dword ptr [ebx+80h], 20000h
jb      short loc_40866C
test    dword ptr [edx+14h], 0FFFFFFh
jz      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_40866C:
mov     byte ptr [ebx+9], 4
mov     word ptr [ebx+0Ah], 0
mov     al, [ebx+0ADh]
mov     [ebx+0ACh], al
and     byte ptr [edx], 0FEh
jmp     def_4089B7      ; jumptable 004089B7 default case
sub_408559 endp         ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case



sub_40868A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 640h
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_4086A8
cmp     dl, 1
jz      short loc_4086BF
jmp     loc_40938A

loc_4086A8:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 3
mov     word ptr [eax+4], 5Ah ; 'Z'
mov     word ptr [eax+8], 0

loc_4086BF:
cmp     dword ptr [ebp+80h], 20000h
jb      short loc_4086D4
test    dword ptr [eax+14h], 0FFFFFFh
jz      short loc_4086EF

loc_4086D4:
mov     byte ptr [ebp+9], 4
mov     word ptr [ebp+0Ah], 0
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
jmp     loc_40938A

loc_4086EF:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      short loc_408700
or      byte ptr [eax], 1

loc_408700:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 70h ; 'p'
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    ah, 0Fh
jz      short loc_408739
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax

loc_408739:
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_40874D
neg     eax

loc_40874D:
cmp     eax, 20h ; ' '
jle     short loc_408772
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
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax

loc_408772:
cmp     byte ptr [ebp+0A6h], 0
jz      loc_40938A
lea     edx, [ebp+14h]
mov     eax, 0D5h
call    sub_4D8BC3
jmp     loc_40938A
sub_40868A endp




sub_408791 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     ecx, [eax+640h]
mov     [esp+1Ch+var_1C], offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4087B9
cmp     al, 1
jz      short loc_4087CE
jmp     loc_40817B

loc_4087B9:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0Bh], 0
mov     byte ptr [ebp+0ACh], 4
mov     word ptr [ecx+8], 0

loc_4087CE:
test    byte ptr [ecx], 10h
jnz     short loc_4087E7
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
or      byte ptr [ecx], 1
jmp     loc_40817B

loc_4087E7:
cmp     word ptr [ecx+34h], 0
jnz     loc_40891E
cmp     dword ptr [ebp+80h], 200000h
jnb     loc_40891E
call    sub_4DE043
test    eax, eax
jz      short loc_408872
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
lea     edi, [eax+14h]
lea     esi, [ebp+190h]
movsd
movsd
add     word ptr [eax+16h], 60h ; '`'
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
mov     dx, [ecx+2]
and     dh, 0Fh
mov     [eax+64h], dx
mov     dword ptr [eax+9Ch], 0
mov     dword ptr [eax+0A0h], 0
lea     edx, [ebp+14h]
mov     eax, 0B2h
call    sub_4D8BC3

loc_408872:
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
add     eax, edx
mov     edx, [ebp+0Ah]
sar     edx, 18h
shl     edx, 4
mov     eax, [eax]
add     eax, edx
mov     dl, [ebp+0Bh]
cmp     dl, [eax+0Bh]
jnb     short loc_4088A7
mov     bl, dl
inc     bl
mov     [ebp+0Bh], bl
mov     word ptr [ecx+34h], 1Eh
jmp     short loc_4088B1

loc_4088A7:
mov     byte ptr [ebp+0Bh], 0
mov     word ptr [ecx+34h], 78h ; 'x'

loc_4088B1:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
lea     esi, [ebp+14h]
mov     ecx, 20h ; ' '
mov     eax, esi
call    sub_4DE552
mov     [ebp+66h], ax
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ecx, eax
cmp     byte ptr [ebp+0A6h], 0
jz      short loc_40890D
mov     edx, esi
mov     eax, 0D5h
call    sub_4D8BC3

loc_40890D:
test    ch, 0Fh
jz      short loc_408950
mov     byte ptr [ebp+9], 9
mov     word ptr [ebp+0Ah], 0
jmp     short loc_40893F

loc_40891E:
mov     bx, [ecx+36h]
test    bx, bx
jnz     short loc_4088B1
cmp     dword ptr [ebp+80h], 20000h
jnb     loc_4088B1
mov     byte ptr [ebp+9], 4
mov     [ebp+0Ah], bx

loc_40893F:
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
jmp     loc_40817B

loc_408950:
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_408964
neg     eax

loc_408964:
cmp     eax, 20h ; ' '
jle     loc_40817B
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
jmp     loc_40817B
sub_408791 endp

db 8Bh, 0C0h
jpt_4089B7 dd offset loc_4089BE ; jump table for switch statement
dd offset loc_408A0B
dd offset loc_408A48
dd offset loc_408AD9
dd offset loc_408AF5



sub_40899A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
and     eax, 0FFh
jmp     jpt_4089B7[eax*4] ; switch jump

loc_4089BE:             ; jumptable 004089B7 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 6
mov     word ptr [esi+46h], 100h
mov     word ptr [esi+4Eh], 100h
mov     word ptr [edi+4], 14h
xor     eax, eax
mov     al, [esi+2]
shl     eax, 2
mov     ebx, ds:dword_55A108
add     ebx, eax
mov     eax, [esi+0Ah]
sar     eax, 18h
shl     eax, 4
mov     edx, [ebx]
mov     al, [edx+eax+0Ah]
xor     ah, ah
mov     [edi+8], ax
mov     eax, esi
call    sub_42C592
mov     [edi+3Eh], ax

loc_408A0B:             ; jumptable 004089B7 case 1
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 7
add     word ptr [esi+16h], 0C8h
add     word ptr [esi+192h], 0C8h

loc_408A37:
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408A48:             ; jumptable 004089B7 case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ebx, [esi+14h]
sar     ebx, 10h
mov     edx, [esi+44h]
sar     edx, 10h
sar     edx, 4
mov     eax, [esi+190h]
sar     eax, 10h
add     eax, edx
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, esi
call    sub_42DE56
mov     dx, [esi+4Eh]
add     [esi+46h], dx
test    ah, 10h
jnz     short loc_408AA7
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     ebx, eax
jge     short loc_408AA7
mov     [esi+16h], bx
jmp     short loc_408A37

loc_408AA7:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 8
mov     word ptr [edi+4], 3
lea     edx, [esi+14h]
mov     eax, 0D3h
call    sub_4D8BC3

loc_408AD9:             ; jumptable 004089B7 case 3
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 4
mov     word ptr [edi+4], 19h

loc_408AF5:             ; jumptable 004089B7 case 4
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
or      byte ptr [edi], 1
mov     word ptr [edi+36h], 78h ; 'x'
jmp     def_4089B7      ; jumptable 004089B7 default case
sub_40899A endp         ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
align 2
jpt_408B43 dd offset loc_408B4A ; jump table for switch statement
dd offset loc_408B78
dd offset loc_408BC2
dd offset loc_408C62



sub_408B26 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
and     eax, 0FFh
jmp     jpt_408B43[eax*4] ; switch jump

loc_408B4A:             ; jumptable 00408B43 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [esi+46h], 0FF00h
mov     word ptr [esi+4Eh], 0FF00h
mov     word ptr [edi+4], 0Ah
mov     word ptr [edi+8], 0
mov     eax, esi
call    sub_42C935
mov     [edi+3Eh], ax

loc_408B78:             ; jumptable 00408B43 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jg      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 0Bh
sub     word ptr [esi+16h], 15Eh
sub     word ptr [esi+192h], 15Eh
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
lea     edx, [esi+14h]
mov     eax, 0D1h
call    sub_4D8BC3
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408BC2:             ; jumptable 00408B43 case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+14h]
sar     edx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
sar     ebx, 4
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, ebx
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, esi
call    sub_42DE56
mov     bx, [esi+4Eh]
add     [esi+46h], bx
test    ah, 20h
jnz     short loc_408C30
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jle     short loc_408C30
mov     [esi+16h], dx
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408C30:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 0Ch
mov     word ptr [edi+4], 2Dh ; '-'
lea     edx, [esi+14h]
mov     eax, 0D2h
call    sub_4D8BC3

loc_408C62:             ; jumptable 00408B43 case 3
cmp     byte ptr [esi+0A6h], 0
jz      short loc_408C78
lea     edx, [esi+14h]
mov     eax, 0D4h
call    sub_4D8BC3

loc_408C78:
mov     si, [edi+4]
dec     esi
mov     [edi+4], si
test    si, si
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
or      byte ptr [edi], 1
jmp     def_4089B7      ; jumptable 004089B7 default case
sub_408B26 endp         ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
jpt_408CBD dd offset loc_408CC4 ; jump table for switch statement
dd offset loc_408CDE
dd offset loc_408CFD
dd offset loc_408D23



sub_408CA2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 640h
mov     bl, [edx+0Ah]
cmp     bl, 3           ; switch 4 cases
ja      def_408CBD      ; jumptable 00408CBD default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_408CBD[ecx*4] ; switch jump

loc_408CC4:             ; jumptable 00408CBD case 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0Eh
mov     word ptr [eax+4], 3
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0FBh

loc_408CDE:             ; jumptable 00408CBD case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_408CBD ; jumptable 00408CBD default case
mov     byte ptr [edx+0Ah], 2
mov     byte ptr [edx+0ACh], 10h
mov     word ptr [eax+4], 11h

loc_408CFD:             ; jumptable 00408CBD case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_408CBD ; jumptable 00408CBD default case
cmp     word ptr [edx+6Eh], 0
jle     short loc_408D23 ; jumptable 00408CBD case 3
mov     byte ptr [edx+0Ah], 3
mov     byte ptr [edx+0ACh], 13h
mov     word ptr [eax+4], 13h

loc_408D23:             ; jumptable 00408CBD case 3
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short def_408CBD ; jumptable 00408CBD default case
or      byte ptr [eax], 5

def_408CBD:             ; jumptable 00408CBD default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_408CA2 endp

align 2
jpt_408D6B dd offset loc_408D72 ; jump table for switch statement
dd offset loc_408DA3
dd offset loc_408DDB
dd offset loc_408E8A
dd offset loc_408EAD



sub_408D4E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     dl, [eax+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
xor     eax, eax
mov     al, dl
jmp     jpt_408D6B[eax*4] ; switch jump

loc_408D72:             ; jumptable 00408D6B case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0Fh
mov     word ptr [esi+46h], 100h
mov     word ptr [esi+4Eh], 100h
mov     word ptr [edi+4], 3
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0FBh
mov     eax, esi
call    sub_42C592
mov     [edi+3Eh], ax

loc_408DA3:             ; jumptable 00408D6B case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 11h
add     word ptr [esi+16h], 0C8h
add     word ptr [esi+192h], 0C8h
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_408DDB:             ; jumptable 00408D6B case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+44h]
sar     eax, 10h
sar     eax, 4
mov     ebx, [esi+190h]
sar     ebx, 10h
add     eax, ebx
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, esi
call    sub_42DE56
mov     bx, [esi+4Eh]
add     [esi+46h], bx
test    ah, 10h
jnz     short loc_408E34
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jl      short loc_408E64

loc_408E34:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     word ptr [esi+6Eh], 0
jg      short loc_408E79

loc_408E4F:
or      byte ptr [edi], 5
lea     edx, [esi+14h]
mov     eax, 0D3h

loc_408E5A:
call    sub_4D8BC3
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408E64:
mov     [esi+16h], dx
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408E79:
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 10h
mov     word ptr [edi+4], 11h

loc_408E8A:             ; jumptable 00408D6B case 3
mov     dx, [edi+4]     ; jumptable 00408EFB case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 4
mov     byte ptr [esi+0ACh], 13h
mov     word ptr [edi+4], 13h

loc_408EAD:             ; jumptable 00408D6B case 4
mov     cx, [edi+4]     ; jumptable 00408EFB case 4
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
or      byte ptr [edi], 5
jmp     def_4089B7      ; jumptable 004089B7 default case
sub_408D4E endp         ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
db 8Dh, 40h, 0
jpt_408EFB dd offset loc_408F02 ; jump table for switch statement
dd offset loc_408F27
dd offset loc_408F7D
dd offset loc_408E8A
dd offset loc_408EAD



sub_408EDE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
and     eax, 0FFh
jmp     jpt_408EFB[eax*4] ; switch jump

loc_408F02:             ; jumptable 00408EFB case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 12h
mov     word ptr [edi+4], 9
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0FBh
mov     eax, esi
call    sub_42C592
mov     [edi+3Eh], ax

loc_408F27:             ; jumptable 00408EFB case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_408F66
mov     eax, edx
mov     edx, 4
sub     edx, eax
mov     [esi+46h], dx
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 7
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
test    ah, 20h
jz      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408F66:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [esi+46h], 100h
mov     word ptr [esi+4Eh], 100h

loc_408F7D:             ; jumptable 00408EFB case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     dx, [esi+4Eh]
add     [esi+46h], dx
test    ah, 10h
jnz     short loc_408FB6
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jl      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408FB6:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     word ptr [esi+6Eh], 0
jg      loc_408E79
mov     ax, [esi+16h]
mov     [esi+192h], ax
jmp     loc_408E4F
sub_408EDE endp




sub_408FE5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_409002
cmp     al, 1
jz      short loc_40903B
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_409002:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
sar     eax, 4
mov     [esi+66h], ax
mov     word ptr [edi+4], 10h
mov     word ptr [edi+8], 0

loc_40903B:
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jg      short loc_40904C
or      byte ptr [edi], 1

loc_40904C:
mov     di, [esi+56h]
add     di, [esi+66h]
and     edi, 0FFFh
mov     [esi+56h], di
cmp     byte ptr [esi+0A6h], 0
jz      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
lea     edx, [esi+14h]
mov     eax, 0D5h
jmp     loc_408E5A
sub_408FE5 endp




sub_409078 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40909C
jbe     short loc_409102
cmp     al, 2
jz      loc_40917C
jmp     loc_40938A

loc_40909C:
test    al, al
jnz     loc_40938A
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 7
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     eax, ebp
call    sub_4DE552
sar     eax, 4
mov     [esi+66h], ax
mov     word ptr [esi+46h], 0FE00h
mov     word ptr [esi+4Eh], 40h ; '@'
mov     word ptr [edi+4], 10h
mov     word ptr [edi+8], 0
mov     edx, ebp
mov     eax, 0D1h
call    sub_4D8BC3
mov     eax, esi
call    sub_42C592
mov     [edi+3Eh], ax

loc_409102:
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jnz     short loc_40914A
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jl      loc_40938A

loc_40914A:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 8
mov     word ptr [edi+4], 0Dh
lea     edx, [esi+14h]
mov     eax, 0D3h
call    sub_4D8BC3

loc_40917C:
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     loc_40938A
or      byte ptr [edi], 1
jmp     loc_40938A
sub_409078 endp




sub_409196 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4091BA
jbe     short loc_409219
cmp     al, 2
jz      loc_409266
jmp     loc_40938A

loc_4091BA:
test    al, al
jnz     loc_40938A
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 4
mov     eax, ds:dword_50B4B6
sar     eax, 10h
sar     eax, 1
mov     ebx, ds:dword_50B4B2
sar     ebx, 10h
add     eax, ebx
mov     ds:word_559010, ax
xor     edx, edx
mov     ds:word_559012, dx
mov     eax, ds:dword_50B4B6+2
sar     eax, 10h
sar     eax, 1
mov     ebx, ds:dword_50B4B2+2
sar     ebx, 10h
add     eax, ebx
mov     ds:word_559014, ax
mov     word ptr [edi+4], 10h
mov     [edi+8], dx
and     byte ptr [edi], 0FBh

loc_409219:
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jl      short loc_40924F
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, offset word_559010
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_40938A

loc_40924F:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 3
mov     word ptr [edi+8], 0
mov     word ptr [edi+4], 12Ch

loc_409266:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     ebp, [esi+14h]
mov     ecx, 20h ; ' '
mov     edx, offset word_559010
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 70h ; 'p'
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4092B7
mov     edx, ebp
mov     eax, 0D5h
call    sub_4D8BC3

loc_4092B7:
mov     ebp, [esi+12h]
sar     ebp, 10h
mov     eax, ds:dword_50B4B2
sar     eax, 10h
sub     ebp, eax
mov     ebx, [esi+16h]
sar     ebx, 10h
mov     eax, ds:dword_50B4B2+2
sar     eax, 10h
sub     ebx, eax
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_409305
mov     eax, ds:dword_50B4B6
sar     eax, 10h
cmp     ebp, eax
jnb     loc_40938A
mov     eax, ds:dword_50B4B6+2
sar     eax, 10h
cmp     ebx, eax
jnb     loc_40938A

loc_409305:
mov     dh, [edi]
or      dh, 5
mov     [edi], dh
mov     bl, dh
and     bl, 0BFh
mov     [edi], bl
jmp     loc_40938A
sub_409196 endp




sub_409318 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
mov     eax, offset unk_50B4BC
xor     ebx, ebx
xor     edx, edx
jmp     short loc_409339

loc_409331:
inc     edx
inc     eax
cmp     dx, 4
jge     short loc_409352

loc_409339:
movzx   si, byte ptr [eax]
add     ebx, esi
mov     si, [ecx+2]
and     esi, 0Fh
xor     edi, edi
mov     di, si
movsx   esi, bx
cmp     edi, esi
jge     short loc_409331

loc_409352:
mov     byte ptr [ebp+9], 2
cmp     dx, 1
jb      short loc_409366
jbe     short loc_409371
cmp     dx, 2
jz      short loc_409379
jmp     short loc_409381

loc_409366:
test    dx, dx
jnz     short loc_409381
mov     [ebp+66h], dx
jmp     short loc_409385

loc_409371:
mov     word ptr [ebp+66h], 6
jmp     short loc_409385

loc_409379:
mov     word ptr [ebp+66h], 0FFFAh
jmp     short loc_409385

loc_409381:
mov     byte ptr [ebp+9], 1

loc_409385:
mov     eax, 1

loc_40938A:
pop     ebp

def_4089B7:             ; jumptable 004089B7 default case
pop     edi             ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409318 endp

align 2
jpt_409493 dd offset loc_40949A ; jump table for switch statement
dd offset loc_4094A0
dd offset loc_4094A0
dd offset loc_4094A0
dd offset loc_4094A6
dd offset loc_4094A6
dd offset def_409493
dd offset def_409493
dd offset def_409493
dd offset loc_4094A0
dd offset loc_4094A6
dd offset loc_4094A0



sub_4093C2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
mov     eax, [ebp+14h]
and     eax, 0FFFFFFh
jz      short loc_409385
test    byte ptr [ebp+17h], 38h
jz      loc_40956E
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_409432
mov     dh, [ebp+0]
and     dh, 0F9h
mov     [ebp+0], dh
mov     bl, dh
or      bl, 4
mov     [ebp+0], bl
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+9]
and     eax, 0FFh
shl     eax, 4

loc_409432:
lea     edx, [ecx+14h]
test    byte ptr [ebp+0], 4
jz      loc_40951E
add     [ebp+0Ah], ax
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, eax
shl     ebx, 2
mov     eax, ds:dword_55A108
add     eax, ebx
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 4
mov     eax, [eax]
mov     al, [ebx+eax+9]
and     eax, 0FFh
shl     eax, 4
mov     ebx, [ebp+8]
sar     ebx, 10h
cmp     ebx, eax
jl      loc_409517
mov     eax, 0A2h
call    sub_4D8BC3
mov     al, [ecx+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_409493      ; jumptable 00409493 default case, cases 6-8
and     eax, 0FFh
jmp     jpt_409493[eax*4] ; switch jump

loc_40949A:             ; jumptable 00409493 case 0
mov     byte ptr [ecx+9], 6
jmp     short def_409493 ; jumptable 00409493 default case, cases 6-8

loc_4094A0:             ; jumptable 00409493 cases 1-3,9,11
mov     byte ptr [ecx+9], 7
jmp     short def_409493 ; jumptable 00409493 default case, cases 6-8

loc_4094A6:             ; jumptable 00409493 cases 4,5,10
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cmp     edx, eax
jz      short loc_40949A ; jumptable 00409493 case 0
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C935
cmp     edx, eax
jz      short loc_4094A0 ; jumptable 00409493 cases 1-3,9,11
call    sub_4DE13B
test    eax, eax
jz      short loc_4094E4
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4094E4:
mov     eax, ecx
call    sub_4DE336
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
mov     edx, esi
mov     eax, 0A1h
call    sub_4D8BC3

def_409493:             ; jumptable 00409493 default case, cases 6-8
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebp+0Ah], 0
jmp     short loc_409560

loc_409517:
mov     eax, 0A0h
jmp     short loc_40955B

loc_40951E:
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     ebx, ds:dword_55A108
add     eax, ebx
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 4
mov     eax, [eax]
mov     al, [ebx+eax+9]
and     eax, 0FFh
shl     eax, 4
mov     ebx, [ebp+8]
sar     ebx, 10h
cmp     ebx, eax
jl      short loc_409556
mov     eax, 0A2h
jmp     short loc_40955B

loc_409556:
mov     eax, 0A0h

loc_40955B:
call    sub_4D8BC3

loc_409560:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     loc_409385

loc_40956E:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3
jmp     loc_409385
sub_4093C2 endp




sub_409580 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B594[edx*4]
mov     ds:dword_559020, eax
xor     edx, edx
mov     ds:word_559024, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_4095C2:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_409580 endp




sub_4095CD proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B5CC[edx*4]
mov     ds:dword_559018, eax
xor     edx, edx
mov     ds:word_55901C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_4095C2
sub_4095CD endp




sub_409611 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_559020
test    edx, edx
jz      loc_409734
cmp     ds:dword_559018, 0
jz      loc_409734
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_409654
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559020, eax
xor     ebx, ebx
mov     ds:word_559024, bx

loc_409654:
mov     eax, ds:dword_559020
inc     ds:word_559024
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559020+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_4096B2
xor     edi, edi
mov     ds:word_559024, di
add     eax, 4
mov     ds:dword_559020, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_4096B2:
mov     eax, ds:dword_559018
cmp     word ptr [eax+2], 0
jg      short loc_4096D6
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559018, eax
xor     ebx, ebx
mov     ds:word_55901C, bx

loc_4096D6:
mov     eax, ds:dword_559018
inc     ds:word_55901C
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559018+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_409734
xor     edi, edi
mov     ds:word_55901C, di
add     eax, 4
mov     ds:dword_559018, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_409734:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409611 endp




sub_40973A proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_55902C
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_409789
cmp     dl, ds:byte_560BE4
jnz     short loc_409789
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_409789
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_409789
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_409580
add     ds:dword_55902C, 6

loc_409789:
mov     eax, ds:dword_559028
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_4097C3
cmp     dl, [ebx+8]
jnz     short loc_4097C3
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_4097C3
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_4097C3
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_4095CD
add     ds:dword_559028, 6

loc_4097C3:
mov     eax, ecx
call    sub_409611
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40973A endp




sub_4097D0 proc near
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
mov     byte ptr [ecx+0ACh], 0
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+56h], 8A5h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     ds:dword_55902C, offset unk_50B624
mov     ds:dword_559028, offset unk_50B690
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_4097D0 endp




sub_409843 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_409881
mov     [ecx+0ACh], ah
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ecx
jmp     short loc_409879

loc_40985F:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 10h
mov     byte ptr [eax+0Eh], 0

loc_40986F:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx

loc_409879:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409881:
pop     edx
pop     ecx
pop     ebx
retn
sub_409843 endp




sub_409885 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 32h ; '2'
jnz     short loc_4098A5
mov     edx, ds:dword_560C0C
mov     byte ptr [edx+9], 1
mov     edx, ds:dword_560C0C
mov     byte ptr [edx+0Ah], 0

loc_4098A5:
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Dh ; '='
jnz     short loc_4098B3
inc     byte ptr [eax+0Ah]

loc_4098B3:
pop     edx
retn
sub_409885 endp




sub_4098B5 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Dh ; '='
jnz     short loc_4098C4
inc     byte ptr [eax+0Ah]

loc_4098C4:
pop     edx
retn
sub_4098B5 endp




sub_4098C6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 11h
mov     byte ptr [eax+0Eh], 1
jmp     short loc_40986F
sub_4098C6 endp




sub_4098D8 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 17h
jnz     short loc_4098EB
mov     byte ptr [eax+0Ch], 1Eh
inc     byte ptr [eax+0Ah]

loc_4098EB:
pop     edx
retn
sub_4098D8 endp




sub_4098ED proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_4098FB
inc     byte ptr [eax+0Ah]

loc_4098FB:
pop     edx
retn
sub_4098ED endp




sub_4098FD proc near
push    edx
add     dword ptr [eax+24h], 15D17h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 2Ch ; ','
jnz     short loc_409913
inc     byte ptr [eax+0Ah]

loc_409913:
pop     edx
retn
sub_4098FD endp




sub_409915 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Dh ; '='
jnz     short loc_409944
mov     byte ptr [ecx+0ACh], 12h
mov     byte ptr [ecx+0Eh], 2
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409944:
pop     edx
pop     ecx
pop     ebx
retn
sub_409915 endp




sub_409948 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 20h ; ' '
jnz     short loc_40995B
mov     byte ptr [eax+0Dh], 1Eh
inc     byte ptr [eax+0Ah]

loc_40995B:
pop     edx
retn
sub_409948 endp




sub_40995D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Dh]
dec     ah
mov     [ecx+0Dh], ah
jnz     short loc_409999
mov     eax, ds:dword_560C0C
mov     byte ptr [eax+9], 0
mov     eax, ds:dword_560C0C
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [ecx+0ACh], 13h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409999:
pop     edx
pop     ecx
pop     ebx
retn
sub_40995D endp




sub_40999D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 2Dh ; '-'
jnz     short loc_4099C8
mov     byte ptr [ecx+0ACh], 14h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4099C8:
pop     edx
pop     ecx
pop     ebx
retn
sub_40999D endp




sub_4099CC proc near
push    edx
add     word ptr [eax+26h], 3
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Bh ; ';'
jnz     short loc_4099E0
inc     byte ptr [eax+0Ah]

loc_4099E0:
pop     edx
sub_4099CC endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_29]



sub_4099E2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4099E8[edx*4]
pop     edx
retn
sub_4099E2 endp




sub_4099F1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 15h
jmp     loc_40986F
sub_4099F1 endp




sub_409A02 proc near
add     word ptr [eax+26h], 5
retn
sub_409A02 endp




sub_409A08 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_409A12[ecx*4]
mov     edx, [edx+98h]
mov     ah, [edx]
cmp     ah, 2
jz      short loc_409A2B
cmp     ah, 16h
jnz     short loc_409A3C

loc_409A2B:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_409A3C:
pop     edx
pop     ecx
pop     ebx
retn
sub_409A08 endp




sub_409A40 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_409A66
mov     byte ptr [ecx+0ACh], 16h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_409A63:
inc     byte ptr [ecx+0Ah]

loc_409A66:
pop     edx
pop     ecx
pop     ebx
retn
sub_409A40 endp




sub_409A6A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 17h
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+108h], 14h
mov     byte ptr [ecx+114h], 15h
jmp     short loc_409A63
sub_409A6A endp




sub_409A95 proc near
cmp     byte ptr [eax+0Ah], 0
jz      short sub_409A6A
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 78h ; 'x'
jnz     short loc_409AC7
mov     eax, ds:dword_560C04
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_560C3C
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_560C40
call    sub_4DE3EA

loc_409AC7:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 7Fh
jnz     short loc_409AEA
mov     byte ptr [ecx+0ACh], 18h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_409AEA:
pop     edx
pop     ecx
pop     ebx
retn
sub_409A95 endp




sub_409AEE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_409B1E
mov     byte ptr [ecx+0ACh], 19h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     edx, ds:dword_560C04
mov     byte ptr [edx+9], 2
inc     byte ptr [ecx+0Ah]

loc_409B1E:
pop     edx
pop     ecx
pop     ebx
retn
sub_409AEE endp




sub_409B22 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 30h ; '0'
jmp     loc_40986F
sub_409B22 endp




sub_409B33 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 26h ; '&'
jnz     short loc_409B62
mov     byte ptr [ecx+0ACh], 22h ; '"'
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 2Fh ; '/'

loc_409B62:
pop     edx
pop     ecx
pop     ebx
retn
sub_409B33 endp




sub_409B66 proc near
push    edx
mov     dl, [eax+0Dh]
dec     dl
mov     [eax+0Dh], dl
jnz     short loc_409B74
inc     byte ptr [eax+0Ah]

loc_409B74:
sub     dword ptr [eax+1Ch], 1B3BEh
pop     edx
sub_409B66 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_30]



sub_409B7D proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409B83[edx*4]
pop     edx
retn
sub_409B7D endp




sub_409B8C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Ah
jmp     loc_40986F
sub_409B8C endp




sub_409B9D proc near
push    edx
sub     dword ptr [eax+24h], 72492h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 15h
jnz     short loc_409BB3
inc     byte ptr [eax+0Ah]

loc_409BB3:
pop     edx
sub_409B9D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_31]



sub_409BB5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409BBB[edx*4]
pop     edx
retn
sub_409BB5 endp




sub_409BC4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_409BEA
mov     byte ptr [ecx+0ACh], 1Bh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409BEA:
pop     edx
pop     ecx
pop     ebx
retn
sub_409BC4 endp




sub_409BEE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Ch
jmp     loc_40986F
sub_409BEE endp




sub_409BFF proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 9
jnz     short loc_409C0E
inc     byte ptr [eax+0Ah]

loc_409C0E:
pop     edx
retn
sub_409BFF endp




sub_409C10 proc near
push    edx
add     dword ptr [eax+1Ch], 0FFFD8000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 20h ; ' '
jnz     short loc_409C2D
add     dword ptr [eax+1Ch], 28000h
inc     byte ptr [eax+0Ah]

loc_409C2D:
pop     edx
sub_409C10 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_32]



sub_409C2F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409C35[edx*4]
pop     edx
retn
sub_409C2F endp




sub_409C3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Dh
jmp     loc_40986F
sub_409C3E endp




sub_409C4F proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 8
jnz     short loc_409C5E
inc     byte ptr [eax+0Ah]

loc_409C5E:
pop     edx
retn
sub_409C4F endp




sub_409C60 proc near
push    edx
sub     dword ptr [eax+24h], 90000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Dh
jnz     short loc_409C76
inc     byte ptr [eax+0Ah]

loc_409C76:
pop     edx
retn
sub_409C60 endp




sub_409C78 proc near
push    edx
sub     dword ptr [eax+24h], 90000h
add     dword ptr [eax+20h], 73333h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 26h ; '&'
jnz     short loc_409C95
inc     byte ptr [eax+0Ah]

loc_409C95:
pop     edx
sub_409C78 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_33]



sub_409C97 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409C9D[edx*4]
pop     edx
retn
sub_409C97 endp




sub_409CA6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Eh
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     edx, ds:dword_560C04
mov     byte ptr [edx+9], 3
pop     edx
pop     ecx
pop     ebx
retn
sub_409CA6 endp




sub_409CD2 proc near
sub     dword ptr [eax+24h], 200000h
retn
sub_409CD2 endp




sub_409CDA proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_409CE4[ecx*4]
mov     edx, [edx+98h]
mov     ah, [edx]
cmp     ah, 3
jz      short loc_409CFD
cmp     ah, 0Bh
jnz     short loc_409D0E

loc_409CFD:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 91h
call    sub_4D89E4

loc_409D0E:
pop     edx
pop     ecx
pop     ebx
retn
sub_409CDA endp




sub_409D12 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Fh
jmp     loc_40986F
sub_409D12 endp




sub_409D23 proc near
push    edx
add     dword ptr [eax+24h], 0FFDF8000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 28h ; '('
jnz     short loc_409D39
inc     byte ptr [eax+0Ah]

loc_409D39:
pop     edx
retn
sub_409D23 endp




sub_409D3B proc near
push    edx
sub     dword ptr [eax+24h], 140000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Ch ; '<'
jnz     short loc_409D51
inc     byte ptr [eax+0Ah]

loc_409D51:
pop     edx
retn
sub_409D3B endp




sub_409D53 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Fh ; '?'
jnz     short loc_409D62
inc     byte ptr [eax+0Ah]

loc_409D62:
pop     edx
sub_409D53 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_34]



sub_409D64 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 20h ; ' '
jmp     loc_40986F
sub_409D64 endp




sub_409D75 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409D7B[edx*4]
pop     edx
retn
sub_409D75 endp




sub_409D84 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_409D8F[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_409DAE
mov     eax, esi
call    sub_4DEADD

loc_409DAE:
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409D84 endp




sub_409DC6 proc near
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_409DFD
mov     eax, edx
call    sub_409D84
mov     eax, edx
call    sub_40973A
jmp     short loc_409E04

loc_409DFD:
mov     eax, edx
call    sub_4097D0

loc_409E04:
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
retn
sub_409DC6 endp




sub_409E24 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B8B8[edx*4]
mov     ds:dword_559038, eax
xor     edx, edx
mov     ds:word_55903C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_409E66:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_409E24 endp




sub_409E71 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B8E0[edx*4]
mov     ds:dword_559030, eax
xor     edx, edx
mov     ds:word_559034, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_409E66
sub_409E71 endp




sub_409EB5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_559038
test    edx, edx
jz      loc_409FC5
cmp     ds:dword_559030, 0
jz      loc_409FC5
mov     eax, edx
inc     ds:word_55903C
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559038+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_409F4C
add     eax, 4
mov     ds:dword_559038, eax
cmp     word ptr [eax+2], 0
jg      short loc_409F0F
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559038, eax

loc_409F0F:
xor     ecx, ecx
mov     ds:word_55903C, cx
mov     eax, ds:dword_559038
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_409F4C:
mov     eax, ds:dword_559030
inc     ds:word_559034
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559030+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_409FC5
add     eax, 4
mov     ds:dword_559030, eax
cmp     word ptr [eax+2], 0
jg      short loc_409F88
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
mov     ds:dword_559030, eax

loc_409F88:
xor     ebx, ebx
mov     ds:word_559034, bx
mov     eax, ds:dword_559030
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_409FC5:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409EB5 endp




sub_409FCA proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_559044
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A019
cmp     dl, ds:byte_560BE4
jnz     short loc_40A019
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40A019
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40A019
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_409E24
add     ds:dword_559044, 6

loc_40A019:
mov     eax, ds:dword_559040
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A053
cmp     dl, [ebx+8]
jnz     short loc_40A053
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40A053
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40A053
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_409E71
add     ds:dword_559040, 6

loc_40A053:
mov     eax, ecx
call    sub_409EB5
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409FCA endp




sub_40A060 proc near
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
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+15Eh], 2108h
mov     ds:dword_559044, offset unk_50B91C
mov     ds:dword_559040, offset unk_50B970
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40A060 endp




sub_40A0D6 proc near
push    edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     edx
retn
sub_40A0D6 endp




sub_40A0E4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 2

loc_40A0F0:
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx

loc_40A107:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40A0E4 endp




sub_40A113 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'

loc_40A11F:
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_40A113 endp




sub_40A128 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_40A132[ecx*4]
mov     edx, [edx+98h]
mov     ah, [edx]
cmp     ah, 6
jz      short loc_40A14B
cmp     ah, 16h
jnz     short loc_40A15C

loc_40A14B:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_40A15C:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A128 endp




sub_40A160 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 12h
jmp     short loc_40A0F0
sub_40A160 endp




sub_40A16E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 5
jnz     short loc_40A199
mov     byte ptr [ecx+0ACh], 0

loc_40A185:
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A199:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
pop     ebx
sub_40A16E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_35]



sub_40A1A8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A1AE[edx*4]
pop     edx
retn
sub_40A1A8 endp




sub_40A1B7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 13h
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
jmp     loc_40A107
sub_40A1B7 endp




sub_40A1D2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 59h ; 'Y'
jnz     short loc_40A205
mov     byte ptr [ecx+0ACh], 14h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 9
mov     byte ptr [ecx+0Fh], 5
inc     byte ptr [ecx+0Ah]

loc_40A205:
pop     edx
pop     ecx
pop     ebx
sub_40A1D2 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_36]



sub_40A209 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_40A212[ecx*4]

