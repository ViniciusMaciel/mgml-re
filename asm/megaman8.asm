loc_4A8064:
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      short loc_4A805A
shl     eax, 9
add     eax, offset unk_764964
mov     ecx, edx
sar     ecx, 4
shl     ecx, 2
add     eax, ecx
and     edx, 0Fh
add     edx, edx
mov     cl, dl
mov     ebx, [eax]
shr     ebx, cl
and     ebx, 3
cmp     ebx, 3
jnz     short loc_4A809D
xor     eax, eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4A809D:
inc     ebx
mov     esi, 3
shl     esi, cl
mov     ecx, esi
not     ecx
mov     esi, [eax]
and     esi, ecx
mov     [eax], esi
mov     cl, dl
shl     ebx, cl
mov     edi, esi
or      edi, ebx
mov     [eax], edi
mov     eax, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4A8052 endp




sub_4A80C3 proc near
push    ecx
push    esi
push    edi
test    edx, edx
jge     short loc_4A80D3

loc_4A80CA:
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
retn

loc_4A80D3:
mov     eax, ds:(dword_53041F+2)[eax]
sar     eax, 18h
test    eax, eax
jl      short loc_4A80CA
shl     eax, 9
mov     ecx, offset unk_764964
add     ecx, eax
mov     eax, edx
sar     eax, 4
shl     eax, 2
add     eax, ecx
and     edx, 0Fh
add     edx, edx
mov     cl, dl
mov     esi, 3
shl     esi, cl
mov     ecx, esi
not     ecx
mov     esi, [eax]
and     esi, ecx
mov     [eax], esi
mov     cl, dl
shl     ebx, cl
mov     edi, esi
or      edi, ebx
mov     [eax], edi
mov     eax, 1
sub_4A80C3 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4A8649

loc_4A811B:
pop     edi
pop     esi
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4A8649
db 8Bh, 0C0h
jpt_4A8221 dd offset def_4A8221 ; jump table for switch statement
dd offset loc_4A81D5
dd offset loc_4A81DC
dd offset loc_4A81DC
jpt_4A8330 dd offset def_4A8330 ; jump table for switch statement
dd offset loc_4A82DC
dd offset loc_4A82E3
dd offset loc_4A82E3



sub_4A8141 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ah, ds:byte_77E7D4
cmp     ah, 5
jz      short loc_4A815A
cmp     ah, 6
jnz     loc_4A7AA6

loc_4A815A:
cmp     ds:byte_77E7D4, 5
jnz     loc_4A8228
cmp     byte ptr ds:dword_77E7E8, 0
jz      loc_4A8228
xor     bh, bh
mov     byte ptr ds:dword_77E7E8, bh
push    240h
mov     ebx, ds:dword_530484
mov     ecx, 5
mov     edx, 0C8h
mov     eax, offset dword_77E7B8
call    sub_4A8349
mov     ecx, 96h
xor     edx, edx
mov     eax, ds:dword_77E7BC
div     ecx
mov     esi, eax
mov     ecx, 1
mov     edi, ds:dword_530488
jmp     short loc_4A81F6

def_4A8221:             ; jumptable 004A8221 default case, case 0
test    esi, esi
jz      short loc_4A81E1
mov     ebx, 1
sub     esi, ebx
dec     byte ptr ds:dword_77E7E8+2
sub     ds:dword_77E7BC, 96h
jmp     short loc_4A81E1

loc_4A81D5:             ; jumptable 004A8221 case 1
mov     ebx, 2
jmp     short loc_4A81E1

loc_4A81DC:             ; jumptable 004A8221 cases 2,3
mov     ebx, 3

loc_4A81E1:
mov     edx, ecx
mov     eax, 5
call    sub_4A80C3

loc_4A81ED:
inc     ecx
cmp     ecx, 800h
jnb     short loc_4A8228

loc_4A81F6:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 2
mov     edx, ds:dword_6E40B4[ebx]
test    edx, edx
jz      short loc_4A8228
mov     eax, [edx]
xor     ax, ax
cmp     eax, edi
jnz     short loc_4A81ED
xor     ebx, ebx
mov     eax, ecx
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8221 ; jumptable 004A8221 default case, case 0
jmp     jpt_4A8221[eax*4] ; switch jump

loc_4A8228:
cmp     ds:byte_77E7D4, 6
jnz     loc_4A7AA6
cmp     byte ptr ds:dword_77E7E8+1, 0
jz      loc_4A7AA6
xor     dh, dh
mov     byte ptr ds:dword_77E7E8+1, dh
mov     ebx, ds:dword_53048C
mov     ecx, 6
mov     edx, 1F4h
mov     eax, offset dword_77E7AC
call    sub_4A844D
push    23Eh
mov     ebx, ds:dword_530490
mov     ecx, 6
mov     edx, 0C8h
mov     eax, offset dword_77E7B0
call    sub_4A8349
push    23Fh
mov     ebx, ds:dword_530494
mov     ecx, 6
mov     edx, 0FAh
mov     eax, offset dword_77E7B4
call    sub_4A8349
mov     ecx, 0B4h
xor     edx, edx
mov     eax, ds:dword_77E7C0
div     ecx
mov     esi, eax
mov     ecx, 1
mov     edi, ds:dword_530498
jmp     short loc_4A8301

def_4A8330:             ; jumptable 004A8330 default case, case 0
test    esi, esi
jz      short loc_4A82E8
mov     ebx, 1
sub     esi, ebx
dec     byte ptr ds:dword_77E7E8+3
sub     ds:dword_77E7C0, 0B4h
jmp     short loc_4A82E8

loc_4A82DC:             ; jumptable 004A8330 case 1
mov     ebx, 2
jmp     short loc_4A82E8

loc_4A82E3:             ; jumptable 004A8330 cases 2,3
mov     ebx, 3

loc_4A82E8:
mov     edx, ecx
mov     eax, 6
call    sub_4A80C3

loc_4A82F4:
inc     ecx
cmp     ecx, 800h
jnb     loc_4A7AA6

loc_4A8301:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 2
mov     eax, ds:dword_6E40B4[ebx]
test    eax, eax
jz      loc_4A7AA6
mov     eax, [eax]
xor     ax, ax
cmp     eax, edi
jnz     short loc_4A82F4
xor     ebx, ebx
mov     eax, ecx
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8330 ; jumptable 004A8330 default case, case 0
jmp     jpt_4A8330[eax*4] ; switch jump
sub_4A8141 endp

db 8Bh, 0C0h
jpt_4A8411 dd offset def_4A8411 ; jump table for switch statement
dd offset loc_4A839E
dd offset loc_4A83AA
dd offset loc_4A8431



sub_4A8349 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, eax
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_18], ebx
mov     ebp, ecx
cmp     dword ptr [eax], 0
jnz     short loc_4A8363
xor     ecx, ecx
jmp     short loc_4A8388

loc_4A8363:
mov     eax, [esp+18h+var_14]
shr     eax, 1
mov     ecx, [edi]
cmp     eax, ecx
jb      short loc_4A8376
mov     ecx, 1
jmp     short loc_4A8388

loc_4A8376:
cmp     ecx, [esp+18h+var_14]
jnb     short loc_4A8383
mov     ecx, 2
jmp     short loc_4A8388

loc_4A8383:
mov     ecx, 3

loc_4A8388:
mov     esi, 1
mov     [esp+18h+var_10], esi
jmp     short loc_4A83DA

def_4A8411:             ; jumptable 004A8411 default case, case 0
test    ecx, ecx
jbe     short loc_4A83C6
mov     ecx, 1
jmp     short loc_4A83C6

loc_4A839E:             ; jumptable 004A8411 case 1
cmp     ecx, 1
jbe     short loc_4A83C6
mov     ecx, 2
jmp     short loc_4A83C6

loc_4A83AA:             ; jumptable 004A8411 case 2
cmp     ecx, 2
jbe     short loc_4A83C6
mov     ecx, 3
mov     eax, [esp+18h+var_14]
sub     [edi], eax
mov     eax, [esp+18h+arg_0]
add     eax, 6
call    sub_47E8B8

loc_4A83C6:
mov     ebx, ecx
mov     edx, esi
mov     eax, ebp
call    sub_4A80C3

loc_4A83D1:
inc     esi
cmp     esi, 800h
jnb     short loc_4A8418

loc_4A83DA:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_6E40B4[eax]
test    edx, edx
jz      short loc_4A8431 ; jumptable 004A8411 case 3
mov     eax, [edx]
xor     ax, ax
cmp     eax, [esp+18h+var_18]
jnz     short loc_4A83D1
cmp     [esp+18h+var_10], 0
jz      short loc_4A83C6
xor     edx, edx
mov     [esp+18h+var_10], edx
mov     eax, esi
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A8411 ; jumptable 004A8411 default case, case 0
jmp     jpt_4A8411[eax*4] ; switch jump

loc_4A8418:
cmp     ecx, 3
jnb     short loc_4A8428
mov     eax, [esp+18h+arg_0]
call    sub_47E8B8
jmp     short loc_4A8431 ; jumptable 004A8411 case 3

loc_4A8428:
mov     eax, [esp+18h+arg_0]
call    sub_47EA91

loc_4A8431:             ; jumptable 004A8411 case 3
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn    4
sub_4A8349 endp

db 8Dh, 40h, 0
jpt_4A850D dd offset def_4A850D ; jump table for switch statement
dd offset loc_4A8499
dd offset loc_4A84A5
dd offset loc_4A855A



sub_4A844D proc near

var_2C= dword ptr -2Ch
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     ebp, edx
mov     [esp+2Ch+var_10], ebx
cmp     dword ptr [eax], 0
jnz     short loc_4A8464
xor     esi, esi
jmp     short loc_4A8485

loc_4A8464:
mov     eax, ebp
shr     eax, 1
mov     ecx, [edi]
cmp     eax, ecx
jb      short loc_4A8475
mov     esi, 1
jmp     short loc_4A8485

loc_4A8475:
cmp     ebp, ecx
jbe     short loc_4A8480
mov     esi, 2
jmp     short loc_4A8485

loc_4A8480:
mov     esi, 3

loc_4A8485:
mov     ecx, 1
mov     edx, ecx
jmp     short loc_4A84C4

def_4A850D:             ; jumptable 004A850D default case, case 0
test    esi, esi
jbe     short loc_4A84BB
mov     esi, 1
jmp     short loc_4A84BB

loc_4A8499:             ; jumptable 004A850D case 1
cmp     esi, 1
jbe     short loc_4A84BB
mov     esi, 2
jmp     short loc_4A84BB

loc_4A84A5:             ; jumptable 004A850D case 2
cmp     esi, 2
jbe     short loc_4A84BB
mov     esi, 3
sub     [edi], ebp
mov     eax, 243h
call    sub_47E8B8

loc_4A84BB:
inc     ecx
cmp     ecx, 800h
jnb     short loc_4A8514

loc_4A84C4:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     ebx, ds:dword_6E40B4[eax]
test    ebx, ebx
jz      short loc_4A8514
mov     eax, ebx
mov     ebx, [ebx]
xor     bx, bx
cmp     ebx, [esp+2Ch+var_10]
jnz     short loc_4A84BB
mov     ebx, [eax]
and     ebx, 0FFFFh
shr     ebx, 8
mov     [esp+ebx*4+2Ch+var_2C], ecx
cmp     dword ptr [eax], 40400h
jnz     short loc_4A84BB
test    edx, edx
jz      short loc_4A84BB
xor     edx, edx
mov     eax, ecx
call    sub_4A7F4D
cmp     eax, 3          ; switch 4 cases
ja      short def_4A850D ; jumptable 004A850D default case, case 0
jmp     jpt_4A850D[eax*4] ; switch jump

loc_4A8514:
xor     ecx, ecx

loc_4A8516:
mov     eax, esi
shl     eax, 3
sub     eax, esi
lea     ebx, [eax+ecx]
mov     bl, ds:byte_53049C[ebx]
and     ebx, 0FFh
mov     edx, [esp+ecx*4+2Ch+var_2C]
mov     eax, 6
call    sub_4A80C3
inc     ecx
cmp     ecx, 7
jb      short loc_4A8516
cmp     esi, 3
jnb     short loc_4A8550
mov     eax, 23Dh
call    sub_47E8B8
jmp     short loc_4A855A ; jumptable 004A850D case 3

loc_4A8550:
mov     eax, 23Dh
call    sub_47EA91

loc_4A855A:             ; jumptable 004A850D case 3
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4A844D endp




sub_4A8561 proc near
push    ebx
push    edx
mov     ah, ds:byte_77E7D4
cmp     ah, 5
jz      short loc_4A8577
cmp     ah, 6
jnz     loc_4A85F3

loc_4A8577:
cmp     ds:byte_77E7D4, 5
jnz     short loc_4A85A5
mov     edx, ds:dword_5304B8
mov     eax, offset dword_77E7B8
call    sub_4A85F6
mov     edx, ds:dword_5304BC
mov     ebx, 8FFF0000h
mov     eax, (offset dword_77E7E8+2)
call    sub_4A8649

loc_4A85A5:
cmp     ds:byte_77E7D4, 6
jnz     short loc_4A85F3
mov     edx, ds:dword_5304C0
mov     eax, offset dword_77E7AC
call    sub_4A85F6
mov     edx, ds:dword_5304C4
mov     eax, offset dword_77E7B0
call    sub_4A85F6
mov     edx, ds:dword_5304C8
mov     eax, offset dword_77E7B4
call    sub_4A85F6
mov     edx, ds:dword_5304CC
mov     ebx, 8FFF0000h
mov     eax, (offset dword_77E7E8+3)
call    sub_4A8649

loc_4A85F3:
pop     edx
pop     ebx
retn
sub_4A8561 endp




sub_4A85F6 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, edx
mov     edx, 1
jmp     short loc_4A860D

loc_4A8604:
inc     edx
cmp     edx, 800h
jnb     short loc_4A8645

loc_4A860D:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, ds:dword_6E40B4[eax]
test    ecx, ecx
jz      short loc_4A8645
mov     ecx, [ecx]
xor     cx, cx
cmp     ecx, ebx
jnz     short loc_4A8604
cmp     ds:word_6E40B2[eax], 0
jnz     short loc_4A8604
mov     eax, edx
call    sub_4A7FE5
test    eax, eax
jle     short loc_4A8604
mov     dword ptr [esi], 0

loc_4A8645:
pop     esi
pop     ecx
pop     ebx
retn
sub_4A85F6 endp




sub_4A8649 proc near

; FUNCTION CHUNK AT 004A811B SIZE 00000004 BYTES

push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     byte ptr [eax], 0
mov     edx, 1
jmp     short loc_4A8669

loc_4A865C:
inc     edx
cmp     edx, 800h
jnb     loc_4A811B

loc_4A8669:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ebx, ds:dword_6E40B4[eax]
test    ebx, ebx
jz      loc_4A811B
mov     eax, [ebx]
xor     ax, ax
cmp     eax, edi
jz      short loc_4A868E
cmp     eax, esi
jnz     short loc_4A865C

loc_4A868E:
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:word_6E40B2[eax*4], 0
jnz     short loc_4A865C
inc     byte ptr [ecx]
jmp     short loc_4A865C
sub_4A8649 endp




sub_4A86A4 proc near
push    edx
xor     edx, edx
mov     ds:word_55CCF0, dx
xor     edx, edx
mov     ds:dword_55CCF4, edx
pop     edx
retn
sub_4A86A4 endp




sub_4A86B8 proc near
push    edx
mov     ds:word_55CCF2, ax
mov     ax, ds:word_5708DE
mov     ds:word_55CCFA, ax
mov     ax, ds:word_5708DA
mov     ds:word_55CCF8, ax
mov     edx, dword ptr ds:word_55CCF0+1
sar     edx, 18h
mov     eax, offset word_55CCF0
call    ds:funcs_4A86E5[edx*4]
pop     edx
retn
sub_4A86B8 endp




sub_4A86EE proc near
push    ebx
push    edx
mov     edx, eax
mov     word ptr [eax], 1
mov     bx, [eax+2]
test    bx, bx
jz      short loc_4A871D
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+5], 0
mov     word ptr [eax+6], 0
call    sub_4A8C93
mov     eax, edx
call    sub_4A8738
pop     edx
pop     ebx
retn

loc_4A871D:
mov     byte ptr [eax+4], 2
mov     byte ptr [eax+5], 0
mov     [eax+6], bx
call    sub_4A8C93
mov     eax, edx
call    sub_4A8738
pop     edx
pop     ebx
retn
sub_4A86EE endp




sub_4A8738 proc near
push    edx
mov     edx, [eax+2]
sar     edx, 18h
call    ds:funcs_4A873F[edx*4]
xor     eax, eax
pop     edx
retn
sub_4A8738 endp




sub_4A874A proc near
mov     word ptr [eax], 0
mov     dword ptr [eax+4], 0
mov     byte ptr [eax+4], 0
mov     eax, 1
retn
sub_4A874A endp




sub_4A8760 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
mov     al, [eax+6]
cmp     al, 3
jb      short loc_4A879B
jbe     loc_4A8AA5
cmp     al, 0Ah
jb      short loc_4A878E
jbe     loc_4A8B79
cmp     al, 0Bh
jz      loc_4A8C00
jmp     loc_4A8C17

loc_4A878E:
cmp     al, 4
jz      loc_4A8B67
jmp     loc_4A8C17

loc_4A879B:
cmp     al, 1
jb      short loc_4A87AA
jbe     loc_4A88F5
jmp     loc_4A8A16

loc_4A87AA:
test    al, al
jnz     loc_4A8C17
call    sub_4A0E35
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 1
jnz     short loc_4A87CD
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FCDD
jmp     short loc_4A87D8

loc_4A87CD:
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FD31

loc_4A87D8:
xor     eax, eax
call    sub_4A0CDD
call    sub_4A8C93
xor     ebp, ebp
mov     [esp+24h+var_20], ebp
jmp     short loc_4A87FE

loc_4A87EC:
mov     edx, [esp+24h+var_20]
inc     edx
mov     [esp+24h+var_20], edx
cmp     edx, 2
jge     loc_4A88B7

loc_4A87FE:
xor     esi, esi
mov     [esp+24h+var_1C], esi
jmp     short loc_4A881C

loc_4A8806:
mov     byte ptr [ecx+109h], 1
inc     ebp

loc_4A880E:
mov     edi, [esp+24h+var_1C]
inc     edi
mov     [esp+24h+var_1C], edi
cmp     edi, 5
jge     short loc_4A87EC

loc_4A881C:
mov     ecx, [esp+24h+var_20]
mov     eax, ecx
shl     eax, 2
add     eax, ecx
mov     edi, [esp+24h+var_1C]
add     edi, eax
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset unk_55BDF0
add     ecx, eax
mov     al, byte ptr [esp+24h+var_20]
add     al, 30h ; '0'
mov     ds:byte_53052A, al
mov     al, byte ptr [esp+24h+var_1C]
add     al, 30h ; '0'
mov     ds:byte_53052B, al
mov     ebx, 180h
mov     edx, ecx
mov     eax, offset unk_530525
call    sub_42C39B
test    eax, eax
jnz     short loc_4A8806
movzx   esi, byte ptr [ecx+100h]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, esi
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_530383[edi*4]
mov     ebx, 0Dh
call    memcpy_
lea     edx, [ecx+101h]
mov     eax, ds:off_5303B3[edi*4]
mov     ebx, 8
call    memcpy_
mov     byte ptr [ecx+109h], 0
jmp     loc_4A880E

loc_4A88B7:
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 2
jnz     short loc_4A88CE
cmp     ebp, 0Ah
jnz     short loc_4A88CE
mov     byte ptr [eax+5], 1
jmp     loc_4A8A81

loc_4A88CE:
mov     edx, ds:off_52FD11
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]

loc_4A88E9:
mov     dword ptr [eax+10h], 1Eh
jmp     loc_4A8C17

loc_4A88F5:
test    byte ptr ds:dword_55BD7C+3, 60h
jz      loc_4A89FD
mov     al, byte ptr ds:dword_55BD7C
mov     ds:byte_55CD04, al
cmp     al, 0Ah
jnz     short loc_4A8933
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+4], 3
mov     word ptr [eax+6], 0

loc_4A891D:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h

loc_4A8929:
call    sub_4D89E4
jmp     loc_4A8C17

loc_4A8933:
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 7
mov     ecx, offset unk_55BDF0
add     ecx, eax
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 2
jnz     short loc_4A895A
cmp     byte ptr [ecx+109h], 0
jz      short loc_4A896C

loc_4A895A:
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 1
jnz     short loc_4A891D
cmp     byte ptr [ecx+109h], 3
jnb     short loc_4A891D

loc_4A896C:
xor     edx, edx
mov     dl, [ecx+100h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_5303AB
mov     ebx, 0Dh
call    memcpy_
lea     edx, [ecx+101h]
mov     eax, ds:off_5303DB
mov     ebx, 8
call    memcpy_
mov     edx, ds:off_52FD15
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+4], 1
jnz     short loc_4A89D1
mov     edx, ds:off_52FD19
jmp     short loc_4A89D7

loc_4A89D1:
mov     edx, ds:off_52FD3D

loc_4A89D7:
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
jmp     loc_4A8929

loc_4A89FD:
mov     eax, [esp+24h+var_24]
mov     edx, [eax+10h]
test    edx, edx
jz      loc_4A88E9
lea     ecx, [edx-1]
mov     [eax+10h], ecx
jmp     loc_4A8C17

loc_4A8A16:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4A8A8C
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
jnz     short loc_4A8A7E
mov     eax, [esp+24h+var_24]
mov     ch, [eax+4]
cmp     ch, 1
jnz     short loc_4A8A53
mov     edx, ds:off_52FD1D
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
add     [eax+6], ch
jmp     short loc_4A8A6F

loc_4A8A53:
mov     edx, ds:off_52FD41
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+6], 0Ah

loc_4A8A6F:
mov     eax, [esp+24h+var_24]
mov     dword ptr [eax+0Ch], 0Fh
jmp     loc_4A8C17

loc_4A8A7E:
mov     eax, [esp+24h+var_24]

loc_4A8A81:
mov     word ptr [eax+6], 0
jmp     loc_4A8C17

loc_4A8A8C:
mov     eax, [esp+24h+var_24]
mov     edi, [eax+10h]
test    edi, edi
jz      loc_4A88E9
lea     ebp, [edi-1]
mov     [eax+10h], ebp
jmp     loc_4A8C17

loc_4A8AA5:
mov     eax, [esp+24h+var_24]
mov     ebx, [eax+0Ch]
dec     ebx
mov     [eax+0Ch], ebx
jnz     loc_4A8C17
call    sub_42AE02
call    sub_42B162
xor     ecx, ecx
mov     cl, ds:byte_55CD04
mov     ebx, 5
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     eax, 30h ; '0'
mov     ds:byte_53052A, al
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     edx, 30h ; '0'
mov     ds:byte_53052B, dl
mov     ebx, 1F00h
mov     edx, offset unk_75164C
mov     eax, offset unk_530525
call    sub_42C3C8
xor     edx, edx
mov     dl, ds:byte_75174C
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_5303AB
mov     ebx, 0Dh
call    memcpy_
mov     edx, offset unk_75164C
add     edx, 101h
mov     eax, ds:off_5303DB
mov     ebx, 8
call    memcpy_
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]
mov     edx, ds:off_52FD21

loc_4A8B53:
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
jmp     loc_4A8C17

loc_4A8B67:
test    byte ptr ds:dword_55BD7C+2, 8
jz      loc_4A8C17
jmp     loc_4A8A7E

loc_4A8B79:
mov     eax, [esp+24h+var_24]
mov     edx, [eax+0Ch]
dec     edx
mov     [eax+0Ch], edx
jnz     loc_4A8C17
xor     ecx, ecx
mov     cl, ds:byte_55CD04
mov     ebx, 5
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     eax, 30h ; '0'
mov     ds:byte_53052A, al
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    ebx
add     edx, 30h ; '0'
mov     ds:byte_53052B, dl
mov     ebx, 1F00h
mov     edx, offset unk_75164C
mov     eax, offset unk_530525
call    sub_42C39B
test    eax, eax
jnz     short loc_4A8BE2
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+6]
mov     edx, ds:off_52FD45
jmp     loc_4A8B53

loc_4A8BE2:
mov     edx, ds:off_52FD49
mov     ebx, 0FFFFFFFFh
mov     eax, 2
call    sub_4A0CDD
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+6], 4
jmp     short loc_4A8C17

loc_4A8C00:
test    byte ptr ds:dword_55BD7C+3, 80h
jz      short loc_4A8C17
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+4], 3
or      ds:byte_77E806, 1

loc_4A8C17:
mov     eax, 1
add     esp, 0Ch
pop     ebp

loc_4A8C20:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8760 endp




sub_4A8C26 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
test    al, al
jbe     short loc_4A8C38
cmp     al, 1
jz      short loc_4A8C77
jmp     short loc_4A8C8A

loc_4A8C38:
call    sub_4A0E35
cmp     byte ptr [ecx+4], 1
jnz     short loc_4A8C4B
mov     edx, ds:off_52FCDD
jmp     short loc_4A8C51

loc_4A8C4B:
mov     edx, ds:off_52FD31

loc_4A8C51:
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, ds:off_52FCC9
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
inc     byte ptr [ecx+6]
jmp     short loc_4A8C8A

loc_4A8C77:
test    byte ptr ds:dword_55BD7C+2, 8
jz      short loc_4A8C8A
mov     byte ptr [ecx+4], 3
mov     word ptr [ecx+6], 0

loc_4A8C8A:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8C26 endp




sub_4A8C93 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     esi, esi

loc_4A8C9A:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 7
mov     ecx, offset unk_55BDF0
add     ecx, eax
mov     edx, offset unk_5304D0
mov     eax, ecx
call    sub_42AD96
mov     byte ptr [ecx+109h], 0
mov     byte ptr [ecx+100h], 0
movzx   edi, byte ptr [ecx+100h]
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
add     eax, edi
mov     edx, offset unk_530085
add     edx, eax
mov     eax, ds:off_530383[esi*4]
mov     ebx, 0Dh
call    memcpy_
add     ecx, 101h
mov     ebx, 8
mov     edx, offset unk_5302E7
mov     eax, ecx
call    memcpy_
mov     eax, ds:off_5303B3[esi*4]
mov     ebx, 8
mov     edx, ecx
call    memcpy_
inc     esi
cmp     esi, 0Ah
jl      loc_4A8C9A
jmp     loc_4A8C20
sub_4A8C93 endp




sub_4A8D29 proc near
push    ebx
push    ecx
push    edx
mov     ecx, 1Eh
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ebx, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[edx]
mov     ds:byte_53021F, al
mov     ds:byte_55BD85, dl
mov     ecx, 3Ch ; '<'
xor     edx, edx
mov     eax, ebx
div     ecx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     ecx, eax
mov     al, ds:byte_530220[eax]
mov     ds:byte_53021E, al
mov     ds:byte_55BD84, cl
mov     ecx, 708h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ebx, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[edx]
mov     ds:byte_53021C, al
mov     ds:byte_55BD83, dl
mov     ecx, 3Ch ; '<'
xor     edx, edx
mov     eax, ebx
div     ecx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     ecx, eax
mov     al, ds:byte_530220[eax]
mov     ds:byte_53021B, al
mov     ds:byte_55BD82, cl
mov     ecx, 1A5E0h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ebx, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[edx]
mov     ds:byte_530219, al
mov     ds:byte_55BD81, dl
mov     ecx, 64h ; 'd'
xor     edx, edx
mov     eax, ebx
div     ecx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     ecx, eax
mov     al, ds:byte_530220[eax]
mov     ds:byte_530218, al
mov     ds:byte_55BD80, cl
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8D29 endp




sub_4A8E29 proc near
push    ebx
push    ecx
push    edx
mov     ecx, 1Eh
xor     edx, edx
mov     eax, ds:dword_77E798
div     ecx
mov     ecx, eax
mov     ebx, 0Ah
xor     edx, edx
div     ebx
mov     al, ds:byte_530220[edx]
mov     ds:byte_5302E6, al
mov     ebx, 3Ch ; '<'
xor     edx, edx
mov     eax, ecx
div     ebx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[eax]
mov     ds:byte_5302E5, al
mov     ecx, 708h
xor     edx, edx
mov     eax, ds:dword_77E798
div     ecx
mov     ecx, eax
mov     ebx, 0Ah
xor     edx, edx
div     ebx
mov     al, ds:byte_530220[edx]
mov     ds:byte_5302E3, al
mov     ebx, 3Ch ; '<'
xor     edx, edx
mov     eax, ecx
div     ebx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[eax]
mov     ds:byte_5302E2, al
mov     ecx, 1A5E0h
xor     edx, edx
mov     eax, ds:dword_77E798
div     ecx
mov     ecx, eax
mov     ebx, 0Ah
xor     edx, edx
div     ebx
mov     al, ds:byte_530220[edx]
mov     ds:byte_5302E0, al
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, ecx
div     ebx
mov     eax, edx
mov     ecx, 0Ah
xor     edx, edx
div     ecx
mov     al, ds:byte_530220[eax]
mov     ds:byte_5302DF, al
pop     edx
pop     ecx
pop     ebx
retn
sub_4A8E29 endp




sub_4A8EFF proc near
xor     eax, eax
mov     al, ds:byte_55CD04
mov     ax, ds:word_530512[eax*2]
mov     ds:word_5304F0, ax
xor     eax, eax
mov     al, ds:byte_55BD85
mov     ax, ds:word_530510[eax*2]
mov     ds:word_530502, ax
xor     eax, eax
mov     al, ds:byte_55BD84
mov     ax, ds:word_530510[eax*2]
mov     ds:word_530500, ax
xor     eax, eax
mov     al, ds:byte_55BD83
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304FC, ax
xor     eax, eax
mov     al, ds:byte_55BD82
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304FA, ax
xor     eax, eax
mov     al, ds:byte_55BD81
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304F6, ax
xor     eax, eax
mov     al, ds:byte_55BD80
mov     ax, ds:word_530510[eax*2]
mov     ds:word_5304F4, ax
retn
sub_4A8EFF endp




sub_4A8F93 proc near
push    ecx
push    edx
mov     ds:dword_77E754, offset byte_6DD9CC

loc_4A8F9F:
mov     ecx, ds:dword_77E754
cmp     ecx, (offset dword_6E23C9+3)
jnb     short loc_4A8FE6
mov     eax, ecx
xor     edx, edx
mov     dl, [ecx+6]
movsx   ecx, byte ptr [ecx]
and     edx, ecx
test    dl, 1
jz      short loc_4A8FDA
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6F0
add     edx, ecx
xor     ecx, ecx
mov     cl, [eax+4]
mov     edx, [edx]
call    dword ptr [edx+ecx*4]

loc_4A8FDA:
add     ds:dword_77E754, 4A0h
jmp     short loc_4A8F9F

loc_4A8FE6:
pop     edx
pop     ecx
retn
sub_4A8F93 endp




sub_4A8FE9 proc near
push    ecx
push    edx
mov     ds:dword_77E750, offset unk_6E23DC

loc_4A8FF5:
mov     ecx, ds:dword_77E750
cmp     ecx, (offset dword_6E40AA+2)
jnb     short loc_4A8FE6
mov     eax, ecx
xor     edx, edx
mov     dl, [ecx+6]
movsx   ecx, byte ptr [ecx]
and     edx, ecx
test    dl, 1
jz      short loc_4A9030
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6D4
add     edx, ecx
xor     ecx, ecx
mov     cl, [eax+4]
mov     edx, [edx]
call    dword ptr [edx+ecx*4]

loc_4A9030:
add     ds:dword_77E750, 734h
jmp     short loc_4A8FF5
sub_4A8FE9 endp




sub_4A903C proc near
push    ecx
push    edx
mov     ds:dword_77E734, offset byte_6DC7FC

loc_4A9048:
mov     ecx, ds:dword_77E734
cmp     ecx, offset dword_6DD9BC
jnb     short loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A9073
xor     edx, edx
mov     dl, [eax+2]
call    ds:funcs_4A90CA[edx*4]

loc_4A9073:
add     ds:dword_77E734, 11Ch
jmp     short loc_4A9048
sub_4A903C endp




sub_4A907F proc near
push    ecx
push    edx
mov     ds:dword_77E734, offset byte_57098C

loc_4A908B:
mov     ecx, ds:dword_77E734
cmp     ecx, offset unk_572D0C
jnb     loc_4A8FE6
mov     eax, ecx
xor     edx, edx
mov     dl, [ecx+6]
movsx   ecx, byte ptr [ecx]
and     edx, ecx
test    dl, 1
jz      short loc_4A90D1
mov     dl, [eax+2]
cmp     dl, 80h
jnb     short loc_4A90C5
xor     ecx, ecx
mov     cl, dl
mov     edx, ds:dword_77E6E0
call    dword ptr [edx+ecx*4]
jmp     short loc_4A90D1

loc_4A90C5:
xor     edx, edx
mov     dl, [eax+2]
call    ds:funcs_4A90CA[edx*4]

loc_4A90D1:
add     ds:dword_77E734, 11Ch
jmp     short loc_4A908B
sub_4A907F endp




sub_4A90DD proc near
push    ecx
push    edx
mov     ds:dword_77E724, offset unk_572D5C

loc_4A90E9:
mov     ecx, ds:dword_77E724
cmp     ecx, offset dword_57435C
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A9125
cmp     byte ptr [eax+2], 80h
jnb     short loc_4A9125
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6EC
call    dword ptr [ecx+edx]

loc_4A9125:
add     ds:dword_77E724, 58h ; 'X'
jmp     short loc_4A90E9
sub_4A90DD endp




sub_4A912E proc near
push    ecx
push    edx
mov     ds:dword_77E724, offset unk_572D5C

loc_4A913A:
mov     ecx, ds:dword_77E724
cmp     ecx, offset dword_57435C
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A916F
cmp     byte ptr [eax+2], 80h
jb      short loc_4A916F
xor     edx, edx
mov     dl, [eax+2]
call    ds:dword_550D4C[edx*4]

loc_4A916F:
add     ds:dword_77E724, 58h ; 'X'
jmp     short loc_4A913A
sub_4A912E endp




sub_4A9178 proc near
push    ecx
push    edx
mov     ds:dword_77E748, offset unk_56FA74

loc_4A9184:
mov     ecx, ds:dword_77E748
cmp     ecx, offset unk_56FCB4
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A91BA
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6F4
call    dword ptr [ecx+edx]

loc_4A91BA:
add     ds:dword_77E748, 24h ; '$'
jmp     short loc_4A9184
sub_4A9178 endp




sub_4A91C3 proc near
push    ecx
push    edx
mov     ds:dword_77E74C, offset unk_56FCB4

loc_4A91CF:
mov     ecx, ds:dword_77E74C
cmp     ecx, offset unk_5708B4
jnb     loc_4A8FE6
mov     eax, ecx
xor     ecx, ecx
mov     cl, [eax+6]
movsx   edx, byte ptr [eax]
and     edx, ecx
test    dl, 1
jz      short loc_4A9205
xor     edx, edx
mov     dl, [eax+2]
mov     ecx, edx
shl     ecx, 2
mov     edx, ds:dword_77E6D8
call    dword ptr [ecx+edx]

loc_4A9205:
add     ds:dword_77E74C, 60h ; '`'
jmp     short loc_4A91CF
sub_4A91C3 endp




sub_4A920E proc near
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4A921D
pop     edx
retn
sub_4A920E endp




sub_4A921D proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebx, edx
mov     esi, offset unk_75164C
mov     ds:dword_77E76C, 80000000h
mov     eax, dword ptr ds:unk_77E803
sar     eax, 18h
test    al, 80h
jz      short loc_4A924A
mov     byte ptr [ecx], 0
mov     byte ptr [ecx+6], 0
jmp     short loc_4A926B

loc_4A924A:
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+6], 3
mov     word ptr [ecx+2], 0
mov     word ptr [ecx+4], 0
mov     dword ptr [ecx+0Ch], 0
mov     dword ptr [ecx+8], 0

loc_4A926B:
mov     byte ptr [ecx+0BDh], 0
mov     byte ptr [ecx+75h], 0
mov     al, [ecx+75h]
mov     [ecx+74h], al
mov     byte ptr [ecx+77h], 0
mov     al, [ecx+77h]
mov     [ecx+76h], al
mov     dword ptr [ecx+78h], offset unk_53054C
mov     dword ptr [ecx+184h], 0
mov     byte ptr [ecx+110h], 0
mov     byte ptr [ecx+111h], 0
mov     byte ptr [ecx+549h], 0
cmp     ecx, offset byte_5F8364
jnz     short loc_4A92BA
mov     byte ptr [ecx+2], 0
jmp     short loc_4A92BE

loc_4A92BA:
mov     byte ptr [ecx+2], 1

loc_4A92BE:
mov     edx, ds:dword_77E7D5
sar     edx, 18h
mov     eax, ecx
call    sub_4B58B2
lea     edi, [ecx+574h]
lea     eax, [ecx+554h]
test    ebx, ebx
jnz     short loc_4A935B
mov     word ptr [ecx+0B0h], 50h ; 'P'
mov     dx, [ecx+0B0h]
mov     [ecx+6Eh], dx
mov     byte ptr [ecx+16Ah], 0
mov     byte ptr [ecx+16Bh], 0
mov     byte ptr [ecx+16Ch], 0
mov     byte ptr [ecx+170h], 0
mov     byte ptr [ecx+172h], 0
mov     byte ptr [ecx+171h], 0
mov     byte ptr [ecx+173h], 1
mov     byte ptr [ecx+54Ch], 0
mov     byte ptr [ecx+54Eh], 0
mov     [ecx+550h], ebx
lea     edx, [ecx+558h]
call    sub_4EECF9
lea     edx, [ecx+5B0h]
mov     eax, edi
call    sub_4EECF9
mov     eax, ecx
call    sub_4EE57D
jmp     loc_4A9432

loc_4A935B:
mov     dx, [esi+1CEh]
mov     [ecx+0B0h], dx
mov     [ecx+6Eh], dx
mov     dl, [esi+1D4h]
mov     [ecx+16Ah], dl
mov     dl, [esi+1D5h]
mov     [ecx+16Bh], dl
mov     dl, [esi+1D6h]
mov     [ecx+16Ch], dl
mov     dl, [esi+1D8h]
mov     [ecx+170h], dl
mov     dl, [esi+1D9h]
mov     [ecx+171h], dl
mov     dl, [esi+1DAh]
mov     [ecx+172h], dl
mov     dl, [esi+1DBh]
mov     [ecx+173h], dl
mov     dl, [esi+1DCh]
mov     [ecx+54Ch], dl
mov     dl, [esi+1DEh]
mov     [ecx+54Eh], dl
mov     dl, [esi+1DFh]
mov     [ecx+54Fh], dl
mov     edx, [esi+208h]
mov     [ecx+550h], edx
lea     ebp, [esi+20Ch]
mov     ebx, 1
mov     edx, eax
mov     eax, ebp
call    sub_4EECEF
lea     eax, [esi+1C80h]
mov     ebx, 4
mov     edx, edi
call    sub_4EECEF
lea     edx, [ecx+5F4h]
lea     eax, [esi+22Ch]
mov     ebx, 8
call    sub_4EECEF
call    sub_4EE5BE

loc_4A9432:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4A921D endp




sub_4A9438 proc near
push    ebx
push    edx
push    esi
push    edi
xor     eax, eax
mov     al, ds:byte_5F836A
mov     edx, dword ptr ds:unk_5F8361
sar     edx, 18h
and     eax, edx
test    al, 1
jz      loc_4A952D
mov     al, ds:byte_5F8421
and     al, 0EFh
mov     ah, ds:byte_5F8421
test    ah, 40h
jnz     loc_4A94E5
test    ah, 20h
jnz     short loc_4A94A6
mov     ax, ds:word_5708DA
mov     word ptr ds:dword_5F8480, ax
mov     ax, ds:word_5708DE
mov     word ptr ds:dword_5F8480+2, ax
mov     ax, ds:word_5708E0
mov     word ptr ds:dword_5F8484, ax
mov     ax, ds:word_5708E2
mov     word ptr ds:dword_5F8484+2, ax
jmp     loc_4A9523

loc_4A94A6:
mov     dx, ds:word_57096A
mov     word ptr ds:dword_5F8480, dx
mov     dx, ds:word_57096E
mov     word ptr ds:dword_5F8480+2, dx
mov     dx, ds:word_570970
mov     word ptr ds:dword_5F8484, dx
mov     dx, ds:word_570972
mov     word ptr ds:dword_5F8484+2, dx
test    ah, 10h
jz      short loc_4A9523
jmp     short loc_4A94F8

loc_4A94E5:
xor     edx, edx
mov     ds:dword_5F8480, edx
mov     ds:dword_5F8484, edx
test    ah, 10h
jz      short loc_4A9523

loc_4A94F8:
mov     edi, (offset dword_5F8376+2)
mov     esi, (offset dword_5F889A+2)
movsd
movsd
mov     edi, offset dword_5F8380
mov     esi, offset dword_5F888C
movsd
movsd
movsd
movsd
mov     edi, offset dword_5F83B8
mov     esi, offset dword_5F88A4
movsd
movsd
mov     ds:byte_5F8421, al

loc_4A9523:
mov     eax, offset byte_5F8364
call    sub_4A9661

loc_4A952D:
mov     edx, ds:dword_5F8A55
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_5F8A5E
and     eax, edx
test    al, 1
jz      short loc_4A9596
test    ds:byte_5F8B15, 40h
jnz     short loc_4A957E
mov     ax, ds:word_572D32
mov     word ptr ds:dword_5F8B74, ax
mov     ax, ds:word_572D36
mov     word ptr ds:dword_5F8B74+2, ax
mov     ax, ds:word_572D38
mov     word ptr ds:dword_5F8B78, ax
mov     ax, ds:word_572D3A
mov     word ptr ds:dword_5F8B78+2, ax
jmp     short loc_4A958C

loc_4A957E:
xor     ebx, ebx
mov     ds:dword_5F8B74, ebx
mov     ds:dword_5F8B78, ebx

loc_4A958C:
mov     eax, (offset dword_5F8A55+3)
call    sub_4A9661

loc_4A9596:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4A9438 endp




sub_4A959B proc near
push    ebx
push    ecx
push    edx
xor     eax, eax
mov     al, ds:byte_5F836A
mov     edx, dword ptr ds:unk_5F8361
sar     edx, 18h
and     eax, edx
test    al, 1
jz      short loc_4A95FC
mov     eax, offset byte_5F8364
call    sub_4A9714
cmp     ds:byte_5F88AD, 0
jnz     short loc_4A95FC
cmp     ds:byte_5F8474, 0
jnz     short loc_4A95FC
push    0
push    offset unk_800000
push    2000000h
push    offset unk_5F84EC
xor     eax, eax
mov     al, ds:byte_5F8365
push    eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, offset unk_5F884C
call    sub_4E01FC

loc_4A95FC:
mov     edx, ds:dword_5F8A55
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_5F8A5E
and     eax, edx
test    al, 1
jz      short loc_4A965D
mov     eax, (offset dword_5F8A55+3)
call    sub_4A9714
cmp     ds:byte_5F8FA1, 0
jnz     short loc_4A965D
cmp     ds:byte_5F8B68, 0
jnz     short loc_4A965D
push    0
push    offset unk_800000
push    2000000h
push    offset unk_5F8BE0
xor     eax, eax
mov     al, ds:byte_5F8A59
push    eax
mov     ecx, 2000h
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, offset unk_5F8F40
call    sub_4E01FC

loc_4A965D:
pop     edx
pop     ecx
pop     ebx
retn
sub_4A959B endp




sub_4A9661 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4A966C[edx*4]
mov     eax, esi
call    sub_4B61E1
test    eax, eax
jnz     short loc_4A9696
mov     al, [esi+0ACh]
mov     [esi+104h], al
mov     al, [esi+0A4h]
mov     [esi+100h], al

loc_4A9696:
mov     al, [esi+104h]
cmp     al, [esi+105h]
jz      short loc_4A96D0
xor     ecx, ecx
mov     cl, [esi+100h]
xor     ebx, ebx
mov     bl, al
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
mov     al, [esi+104h]
mov     [esi+105h], al
jmp     short loc_4A96E2

loc_4A96D0:
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DEA6D

loc_4A96E2:
mov     al, [esi+0ACh]
cmp     al, [esi+0ADh]
jz      short loc_4A9708
xor     ebx, ebx
mov     bl, [esi+0A4h]
xor     edx, edx
mov     dl, al
mov     eax, esi
call    sub_4DE83A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9708:
mov     eax, esi
call    sub_4DE9F7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9661 endp




sub_4A9714 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+74h], 1
jnz     short loc_4A975C
test    byte ptr [esi+7Dh], 20h
jz      short loc_4A975C
mov     dh, [esi+9]
cmp     dh, 7
jz      short loc_4A9733
cmp     dh, 8
jnz     short loc_4A975C

loc_4A9733:
cmp     byte ptr [esi+0Ah], 4
jnb     short loc_4A975C
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4B520D
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+46h], 0
mov     word ptr [esi+4Eh], 0

loc_4A975C:
mov     cl, [esi+8]
cmp     cl, 1
jz      short loc_4A9769
cmp     cl, 2
jnz     short loc_4A977C

loc_4A9769:
cmp     byte ptr [esi+76h], 0
jz      short loc_4A977C
mov     edx, [esi+0C0h]
mov     eax, esi
call    sub_43375C

loc_4A977C:
cmp     byte ptr [esi+8], 3
jnz     short loc_4A9795
cmp     byte ptr [esi+76h], 0
jz      short loc_4A9795
mov     edx, [esi+0C0h]
mov     eax, esi
call    sub_43387D

loc_4A9795:
mov     eax, 200h
call    sub_47E888
test    eax, eax
jnz     short loc_4A97AA
mov     eax, esi
call    sub_431C8C

loc_4A97AA:
mov     dh, [esi+8]
cmp     dh, 1
jz      short loc_4A97BB
cmp     dh, 2
jnz     loc_4A9874

loc_4A97BB:
cmp     byte ptr [esi+76h], 0
jnz     loc_4A9874
cmp     byte ptr [esi+74h], 0
jnz     loc_4A9874
mov     eax, [esi+78h]
mov     edx, [eax+8]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
sub     eax, edx
mov     edx, [esi+14h]
sar     edx, 10h
lea     ebx, [eax-20h]
cmp     edx, ebx
jge     loc_4A9866
cmp     byte ptr [esi+75h], 0
jnz     short loc_4A9860
cmp     byte ptr [esi+9], 0Eh
jnz     short loc_4A980C
call    sub_42A43B
mov     word ptr [esi+108h], 0

loc_4A980C:
cmp     byte ptr [esi+9], 3
jnz     short loc_4A9834
cmp     byte ptr [esi+0Ah], 5
jnb     short loc_4A9834
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Eh
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4

loc_4A9834:
mov     byte ptr [esi+9], 7
mov     word ptr [esi+0Ah], 4
mov     word ptr [esi+46h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0
mov     byte ptr [esi+110h], 1
mov     byte ptr [esi+111h], 0

loc_4A9860:
mov     byte ptr [esi+74h], 1
jmp     short loc_4A9874

loc_4A9866:
cmp     edx, eax
jge     short loc_4A9874
mov     [esi+16h], ax
shl     eax, 10h
mov     [esi+20h], eax

loc_4A9874:
mov     eax, esi
call    sub_42DE56
test    eax, eax
jge     short loc_4A98C7
mov     ax, [esi+2Ch]
mov     [esi+14h], ax
mov     ax, [esi+30h]
mov     [esi+18h], ax
mov     eax, [esi+34h]
mov     [esi+1Ch], eax
mov     eax, [esi+3Ch]
mov     [esi+24h], eax
mov     word ptr [esi+48h], 0
mov     ax, [esi+48h]
mov     [esi+44h], ax
cmp     byte ptr [esi+74h], 0
jz      short loc_4A98C7
mov     byte ptr [esi+74h], 0
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     word ptr [esi+46h], 0

loc_4A98C7:
mov     ebx, [esi+166h]
sar     ebx, 18h
mov     edx, [esi+165h]
sar     edx, 18h
mov     eax, esi
call    sub_4EDDAA
mov     eax, esi
call    sub_4DEF3E
mov     eax, esi
call    sub_4DEBDA
test    byte ptr [esi], 2
jz      short loc_4A9906
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED7D2

loc_4A9906:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9714 endp




sub_4A990B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     dword ptr [eax+8], 1
mov     ah, [eax+6]
or      ah, 3
mov     [esi+6], ah
mov     word ptr [esi+6Ch], 3Ch ; '<'
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+114h], 0
mov     word ptr [esi+116h], 0
mov     word ptr [esi+118h], 0
mov     byte ptr [esi+112h], 0
mov     byte ptr [esi+113h], 0
mov     byte ptr [esi+110h], 0
mov     byte ptr [esi+71h], 0
mov     byte ptr [esi+73h], 0
mov     dword ptr [esi+188h], 0
mov     dword ptr [esi+18Ch], 0
mov     dword ptr [esi+190h], 0
mov     dword ptr [esi+194h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0
mov     byte ptr [esi+104h], 0
mov     al, [esi+104h]
mov     [esi+0ACh], al
mov     byte ptr [esi+105h], 0
mov     al, [esi+105h]
mov     [esi+0ADh], al
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
mov     byte ptr [esi+175h], 7
mov     word ptr [esi+108h], 0
mov     word ptr [esi+10Ah], 0
mov     byte ptr [esi+54Bh], 0
mov     byte ptr [esi+54Ah], 0
mov     dword ptr [esi+184h], 0
mov     ecx, 1
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
xor     ecx, ecx
mov     ebx, 5
xor     edx, edx
mov     eax, esi
call    sub_4DE8EE
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A990B endp




sub_4A9A31 proc near
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     ax, [ebp+6Eh]
mov     [ebp+0B2h], ax
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     al, [ebp+76h]
mov     [ebp+77h], al
and     byte ptr [ebp+0BDh], 0F7h
lea     eax, [ebp+14h]
call    sub_42DB45
mov     edx, eax
test    eax, eax
jz      short loc_4A9A98
mov     byte ptr [ebp+9], 0Ah
mov     byte ptr [ebp+0Ah], 0
mov     [ebp+0Bh], al
jmp     short loc_4A9AA8

loc_4A9A98:
cmp     byte ptr [ebp+9], 0Ah
jnz     short loc_4A9AA8
cmp     byte ptr [ebp+0Ah], 0
jnz     short loc_4A9AA8
mov     byte ptr [ebp+0Ah], 1

loc_4A9AA8:
mov     bl, [ebp+549h]
test    bl, bl
jnz     short loc_4A9AF7
mov     cl, [ebp+110h]
test    cl, cl
jnz     short loc_4A9AC9
or      byte ptr [ebp+6], 3
mov     eax, ebp
call    sub_4AD89B
jmp     short loc_4A9AFB

loc_4A9AC9:
jle     short loc_4A9AF7
mov     ah, [ebp+111h]
dec     ah
mov     [ebp+111h], ah
test    ah, ah
jge     short loc_4A9AEC
or      byte ptr [ebp+6], 3
mov     [ebp+71h], bl
mov     [ebp+110h], bl
jmp     short loc_4A9AFB

loc_4A9AEC:
test    ah, 2
jz      short loc_4A9AF7
and     byte ptr [ebp+6], 0FDh
jmp     short loc_4A9AFB

loc_4A9AF7:
or      byte ptr [ebp+6], 3

loc_4A9AFB:
mov     dword ptr [ebp+188h], 0
mov     eax, [ebp+171h]
sar     eax, 18h
test    al, 0C0h
jz      short loc_4A9B2E
and     eax, 0C0h
cmp     eax, 80h
jnz     short loc_4A9B27
mov     eax, ebp
call    sub_4B5A09
jmp     short loc_4A9B2E

loc_4A9B27:
mov     eax, ebp
call    sub_4B59F6

loc_4A9B2E:
mov     eax, [ebp+0BAh]
sar     eax, 18h
test    al, 80h
jnz     short loc_4A9B57
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4A9B42[edx*4]
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4A9B50[edx*4]

loc_4A9B57:
mov     eax, ebp
call    sub_42DE56
cmp     byte ptr [ebp+74h], 1
jnz     short def_4ADB6C ; jumptable 004ADB6C default case
test    ah, 20h
jz      short def_4ADB6C ; jumptable 004ADB6C default case
mov     dh, [ebp+9]
cmp     dh, 7
jz      short loc_4A9B76
cmp     dh, 8
jnz     short def_4ADB6C ; jumptable 004ADB6C default case

loc_4A9B76:
cmp     byte ptr [ebp+0Ah], 4
jnb     short def_4ADB6C ; jumptable 004ADB6C default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, ebp
call    sub_4B520D
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+4Eh], 0

def_4ADB6C:             ; jumptable 004ADB6C default case
mov     eax, ebp
call    sub_4326CA

loc_4A9BA6:
pop     ebp

loc_4A9BA7:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9A31 endp




sub_4A9BAD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4A9C21
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
and     byte ptr [esi+174h], 0FCh
mov     ebx, [esi+171h]
sar     ebx, 18h
test    bl, 0C0h
jnz     short loc_4A9BF6
cmp     byte ptr [esi+177h], 0
jnz     short loc_4A9BF6
mov     eax, esi
call    sub_4B570A
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4A9C4E

loc_4A9BF6:
test    byte ptr [esi+174h], 40h
jz      short loc_4A9C10
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 40h ; '@'
jmp     short loc_4A9C4E

loc_4A9C10:
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 60h ; '`'
jmp     short loc_4A9C4E

loc_4A9C21:
mov     byte ptr [esi+54Dh], 0
mov     word ptr [esi+0B4h], 0
mov     ebx, [esi+171h]
sar     ebx, 18h
test    bl, 0C0h
jnz     short loc_4A9C55
cmp     byte ptr [esi+177h], 0
jnz     short loc_4A9C55
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx

loc_4A9C4E:
mov     eax, esi
call    sub_4B520D

loc_4A9C55:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9BAD endp




sub_4A9C5A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     loc_4A9CDB
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+48h], 0
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4A9C82
mov     word ptr [esi+44h], 50h ; 'P'
jmp     short loc_4A9C88

loc_4A9C82:
mov     word ptr [esi+44h], 0FFB0h

loc_4A9C88:
or      byte ptr [esi+174h], 4
mov     edx, [esi+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     short loc_4A9CA6
cmp     byte ptr [esi+177h], 0
jz      short loc_4A9CDB

loc_4A9CA6:
test    byte ptr [esi+174h], 40h
jz      short loc_4A9CCA
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 40h ; '@'

loc_4A9CBE:
mov     eax, esi
call    sub_4B520D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9CCA:
xor     ebx, ebx
mov     bl, [esi+100h]
xor     ecx, ecx
mov     edx, 60h ; '`'
jmp     short loc_4A9CBE

loc_4A9CDB:
mov     edx, [esi+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     loc_4A9D5E
cmp     byte ptr [esi+177h], 0
jnz     short loc_4A9D5E
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4A9D13
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, esi
call    sub_4B520D
mov     ebx, 20h ; ' '
jmp     short loc_4A9D28

loc_4A9D13:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, esi
call    sub_4B520D
mov     ebx, 40h ; '@'

loc_4A9D28:
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     edx, [esi+0A3h]
sar     edx, 18h
test    dl, 80h
jz      short loc_4A9D4D
xor     ebx, ebx
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_4A9D4D:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B

loc_4A9D5E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9C5A endp

db 8Dh, 40h, 0
jpt_4A9DC9 dd offset loc_4A9DD0 ; jump table for switch statement
dd offset loc_4A9EEB
dd offset loc_4A9F04
dd offset loc_4A9F42
dd offset loc_4A9F57
dd offset loc_4A9FA0
dd offset loc_4AA00B
jpt_4A9DE3 dd offset loc_4A9DEA ; jump table for switch statement
dd offset loc_4A9E1E
dd offset loc_4A9E44
dd offset loc_4A9E71
jpt_4A9E06 dd offset loc_4A9E0D ; jump table for switch statement
dd offset loc_4A9E17
dd offset loc_4A9E63
dd offset loc_4A9E3D
jpt_4A9FAF dd offset loc_4A9FB6 ; jump table for switch statement
dd offset loc_4A9FC2
dd offset loc_4A9FD4
dd offset loc_4A9FE6



sub_4A9DB2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4A9DC9      ; jumptable 004A9DC9 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_4A9DC9[ecx*4] ; switch jump

loc_4A9DD0:             ; jumptable 004A9DC9 case 0
mov     al, [esi+112h]
cmp     al, 3           ; switch 4 cases
ja      def_4A9DE3      ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case
and     eax, 0FFh
jmp     jpt_4A9DE3[eax*4] ; switch jump

loc_4A9DEA:             ; jumptable 004A9DE3 case 0
mov     word ptr [esi+116h], 0
mov     al, [esi+113h]
cmp     al, 3           ; switch 4 cases
ja      def_4A9DE3      ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case
and     eax, 0FFh
jmp     jpt_4A9E06[eax*4] ; switch jump

loc_4A9E0D:             ; jumptable 004A9E06 case 0
mov     edx, 4
jmp     def_4A9DE3      ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case

loc_4A9E17:             ; jumptable 004A9E06 case 1
mov     edx, 5
jmp     short loc_4A9E68

loc_4A9E1E:             ; jumptable 004A9DE3 case 1
mov     word ptr [esi+116h], 400h
mov     al, [esi+113h]
cmp     al, 2
jb      short loc_4A9E39
jbe     short loc_4A9E17 ; jumptable 004A9E06 case 1
cmp     al, 3
jz      short loc_4A9E63 ; jumptable 004A9E06 case 2
jmp     short loc_4A9E68

loc_4A9E39:
test    al, al
jnz     short loc_4A9E68

loc_4A9E3D:             ; jumptable 004A9E06 case 3
mov     edx, 7
jmp     short loc_4A9E68

loc_4A9E44:             ; jumptable 004A9DE3 case 2
mov     word ptr [esi+116h], 800h
mov     al, [esi+113h]
cmp     al, 1
jb      short loc_4A9E5F
jbe     short loc_4A9E3D ; jumptable 004A9E06 case 3
cmp     al, 3
jz      short loc_4A9E17 ; jumptable 004A9E06 case 1
jmp     short loc_4A9E68

loc_4A9E5F:
test    al, al
jnz     short loc_4A9E68

loc_4A9E63:             ; jumptable 004A9E06 case 2
mov     edx, 9

loc_4A9E68:
mov     eax, esi
call    sub_4B56DA
jmp     short def_4A9DE3 ; jumptable 004A9DE3 default case
; jumptable 004A9E06 default case

loc_4A9E71:             ; jumptable 004A9DE3 case 3
mov     word ptr [esi+116h], 0FC00h
mov     al, [esi+113h]
cmp     al, 1
jb      short loc_4A9E8C
jbe     short loc_4A9E97
cmp     al, 2
jz      short loc_4A9E9E
jmp     short loc_4A9EA3

loc_4A9E8C:
test    al, al
jnz     short loc_4A9EA3
mov     edx, 5
jmp     short loc_4A9EA3

loc_4A9E97:
mov     edx, 9
jmp     short loc_4A9EA3

loc_4A9E9E:
mov     edx, 7

loc_4A9EA3:
mov     eax, esi
call    sub_4B56DA

def_4A9DE3:             ; jumptable 004A9DE3 default case
add     byte ptr [esi+0Ah], 2 ; jumptable 004A9E06 default case
mov     byte ptr [esi+113h], 0
mov     word ptr [esi+44h], 200h
or      byte ptr [esi+174h], 4
and     edx, 0FFh
mov     ecx, 1
xor     ebx, ebx

loc_4A9ECF:
mov     eax, esi
call    sub_4B520D

loc_4A9ED6:
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AA054
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9EEB:             ; jumptable 004A9DC9 case 1
mov     cl, [esi+0A4h]
cmp     cl, 1
jnz     def_4A9DC9      ; jumptable 004A9DC9 default case
add     al, cl
mov     [esi+0Ah], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9F04:             ; jumptable 004A9DC9 case 2
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4A9ED6
add     al, 2
mov     [esi+0Ah], al
mov     byte ptr [esi+54Dh], 1
mov     eax, esi
call    sub_4B570A
cmp     byte ptr [esi+112h], 1
jz      short loc_4A9F34
xor     ecx, ecx
xor     ebx, ebx
jmp     short loc_4A9F3B

loc_4A9F34:
xor     ecx, ecx
mov     ebx, 9

loc_4A9F3B:
mov     edx, 1
jmp     short loc_4A9ECF

loc_4A9F42:             ; jumptable 004A9DC9 case 3
cmp     byte ptr [esi+0A4h], 5
jnz     short loc_4A9F57 ; jumptable 004A9DC9 case 4
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+54Dh], 1

loc_4A9F57:             ; jumptable 004A9DC9 case 4
cmp     byte ptr [esi+112h], 0
mov     ebx, 28h ; '('
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AA054
mov     eax, [esi+0A3h]
sar     eax, 18h
test    al, 80h
jz      def_4A9DC9      ; jumptable 004A9DC9 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 91h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4A9FA0:             ; jumptable 004A9DC9 case 5
mov     al, [esi+112h]
cmp     al, 3           ; switch 4 cases
ja      short def_4A9FAF ; jumptable 004A9FAF default case
and     eax, 0FFh
jmp     jpt_4A9FAF[eax*4] ; switch jump

loc_4A9FB6:             ; jumptable 004A9FAF case 0
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
jmp     short def_4A9FAF ; jumptable 004A9FAF default case

loc_4A9FC2:             ; jumptable 004A9FAF case 1
mov     eax, esi
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 8
jmp     short loc_4A9FF6

loc_4A9FD4:             ; jumptable 004A9FAF case 2
mov     eax, esi
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Ah
jmp     short loc_4A9FF6

loc_4A9FE6:             ; jumptable 004A9FAF case 3
mov     eax, esi
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 6

loc_4A9FF6:
mov     eax, esi
call    sub_4B520D

def_4A9FAF:             ; jumptable 004A9FAF default case
mov     word ptr [esi+4Ch], 30h ; '0'
inc     byte ptr [esi+0Ah]
jmp     loc_4A9ED6

loc_4AA00B:             ; jumptable 004A9DC9 case 6
cmp     byte ptr [esi+0A6h], 1
jnz     short def_4A9DC9 ; jumptable 004A9DC9 default case
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+116h], 0
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+44h], 0
mov     word ptr [esi+0B4h], 0
mov     eax, esi
call    sub_4B570A
xor     ecx, ecx
xor     ebx, ebx

loc_4AA048:
mov     eax, esi
call    sub_4B520D

def_4A9DC9:             ; jumptable 004A9DC9 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A9DB2 endp




sub_4AA054 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     bx, [eax+11Ch]
movsx   edx, dx
xor     ecx, ecx
mov     cx, [eax+edx*8+148h]
xor     edi, edi
mov     di, [eax+edx*8+14Ah]
xor     edx, edx
mov     dx, bx
test    edx, ecx
jz      loc_4AA0EB
mov     esi, edx
and     esi, ecx
cmp     esi, ecx
jz      short loc_4AA0EB
test    edx, edi
jz      short loc_4AA0BD
mov     word ptr [eax+48h], 0FEC0h
xor     ecx, ecx
mov     cx, [eax+128h]
xor     edx, edx
mov     dx, [eax+12Ah]
or      edx, ecx
xor     ecx, ecx
mov     cx, bx
test    ecx, edx
jnz     short loc_4AA0F1
mov     word ptr [eax+0B4h], 40h ; '@'
jmp     short loc_4AA0F1

loc_4AA0BD:
mov     word ptr [eax+48h], 140h
xor     edx, edx
mov     dx, [eax+128h]
xor     ecx, ecx
mov     cx, [eax+12Ah]
or      edx, ecx
xor     ecx, ecx
mov     cx, bx
test    ecx, edx
jnz     short loc_4AA0F1
mov     word ptr [eax+0B4h], 0FFC0h
jmp     short loc_4AA0F1

loc_4AA0EB:
mov     word ptr [eax+48h], 0

loc_4AA0F1:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ebx, ebx
call    sub_4B527B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4AA054 endp

align 2
jpt_4AA14A dd offset loc_4AA151 ; jump table for switch statement
dd offset loc_4AA177
dd offset loc_4AA1BC
dd offset loc_4AA1DA
dd offset loc_4AA20F
dd offset loc_4AA424



sub_4AA122 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
xor     edi, edi
mov     di, [eax+11Ch]
movzx   ebp, word ptr [eax+11Eh]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_4AA14A      ; jumptable 004AA14A default case
and     eax, 0FFh
jmp     jpt_4AA14A[eax*4] ; switch jump

loc_4AA151:             ; jumptable 004AA14A case 0
or      byte ptr [esi+174h], 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 38h ; '8'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+54Ah]
add     byte ptr [esi+0Ah], 2
jmp     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA177:             ; jumptable 004AA14A case 1
xor     eax, eax
mov     ax, [esi+128h]
test    edi, eax
jz      short loc_4AA198
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA198
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 0

loc_4AA198:
xor     eax, eax
mov     ax, [esi+12Ah]
test    edi, eax
jz      short loc_4AA1B9
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA1B9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 1

loc_4AA1B9:
inc     byte ptr [esi+0Ah]

loc_4AA1BC:             ; jumptable 004AA14A case 2
cmp     byte ptr [esi+0A6h], 0
jnz     short loc_4AA1D0
inc     byte ptr [esi+54Ah]
jmp     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA1D0:
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+44h], 340h

loc_4AA1DA:             ; jumptable 004AA14A case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_4AA1FE
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
jmp     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA1FE:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Ch
call    sub_4D89E4
inc     byte ptr [esi+0Ah]

loc_4AA20F:             ; jumptable 004AA14A case 4
xor     edx, edx
mov     dx, [esi+124h]
xor     eax, eax
mov     ax, [esi+126h]
or      eax, edx
test    edi, eax
jz      loc_4AA29E
xor     eax, eax
mov     ax, dx
test    edi, eax
jz      short loc_4AA252
mov     ebx, 10h
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     ecx, eax
mov     word ptr [esi+44h], 400h
mov     word ptr [esi+48h], 0C0h
jmp     short loc_4AA2BA

loc_4AA252:
mov     ebx, 20h ; ' '
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     ecx, eax
mov     word ptr [esi+44h], 280h
mov     word ptr [esi+48h], 140h
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA285
mov     ebx, 1
mov     edx, eax
mov     eax, esi
call    sub_4B582D

loc_4AA285:
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA2BA
mov     ebx, 2
mov     edx, eax
mov     eax, esi
call    sub_4B582D
jmp     short loc_4AA2BA

loc_4AA29E:
mov     ebx, 18h
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     ecx, eax
mov     word ptr [esi+44h], 340h
mov     word ptr [esi+48h], 100h

loc_4AA2BA:
xor     eax, eax
mov     ax, [esi+12Ch]
xor     edx, edx
mov     dx, [esi+12Eh]
or      eax, edx
test    edi, eax
jz      loc_4AA34B
mov     edx, edi
and     edx, eax
cmp     edx, eax
jz      loc_4AA34B
xor     eax, eax
mov     ax, [esi+12Eh]
test    edi, eax
jz      short loc_4AA31F
test    ecx, ecx
jnz     short loc_4AA2F8
mov     ecx, 1

loc_4AA2F8:
neg     word ptr [esi+48h]
xor     edx, edx
mov     dx, [esi+128h]
xor     eax, eax
mov     ax, [esi+12Ah]
or      eax, edx
test    edi, eax
jnz     short loc_4AA351
mov     word ptr [esi+0B4h], 40h ; '@'
jmp     short loc_4AA351

loc_4AA31F:
test    ecx, ecx
jnz     short loc_4AA328
mov     ecx, 2

loc_4AA328:
xor     edx, edx
mov     dx, [esi+128h]
xor     eax, eax
mov     ax, [esi+12Ah]
or      eax, edx
test    edi, eax
jnz     short loc_4AA351
mov     word ptr [esi+0B4h], 0FFC0h
jmp     short loc_4AA351

loc_4AA34B:
mov     word ptr [esi+48h], 0

loc_4AA351:
cmp     ecx, 1
jb      short loc_4AA35F
jbe     short loc_4AA373
cmp     ecx, 2
jz      short loc_4AA392
jmp     short loc_4AA3BD

loc_4AA35F:
test    ecx, ecx
jnz     short loc_4AA3BD
xor     ebx, ebx
mov     edx, 39h ; '9'
mov     eax, esi
call    sub_4B520D
jmp     short loc_4AA3AF

loc_4AA373:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4B520D
xor     eax, eax
mov     ax, [esi+128h]
test    edi, eax
jz      short loc_4AA3BD
jmp     short loc_4AA3AF

loc_4AA392:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Dh ; '='
mov     eax, esi
call    sub_4B520D
xor     eax, eax
mov     ax, [esi+12Ah]
test    edi, eax
jz      short loc_4AA3BD

loc_4AA3AF:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4

loc_4AA3BD:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
mov     byte ptr [esi+54Dh], 1
xor     eax, eax
mov     ax, [esi+134h]
test    edi, eax
jz      short loc_4AA3F3
test    byte ptr [esi+16Bh], 2
jnz     def_4AA14A      ; jumptable 004AA14A default case

loc_4AA3F3:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Eh
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Ah ; ':'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]
jmp     short def_4AA14A ; jumptable 004AA14A default case

loc_4AA424:             ; jumptable 004AA14A case 5
sub     word ptr [esi+44h], 28h ; '('
mov     ebx, 20h ; ' '
mov     edx, ebx
mov     eax, esi
call    sub_4B53D3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AA14A ; jumptable 004AA14A default case
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+54Ah], 0

def_4AA14A:             ; jumptable 004AA14A default case
mov     dl, [esi+0Ah]
cmp     dl, 2
jbe     loc_4A9BA6
cmp     dl, 5
jnb     loc_4A9BA6
xor     eax, eax
mov     ax, [esi+12Ah]
test    ebp, eax
jz      short loc_4AA4A3
call    sub_4DE13B
test    eax, eax
jz      short loc_4AA4A3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 1

loc_4AA4A3:
xor     eax, eax
mov     ax, [esi+128h]
test    ebp, eax
jz      loc_4A9BA6
call    sub_4DE13B
test    eax, eax
jz      loc_4A9BA6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 89h
mov     byte ptr [eax+3], 0
jmp     loc_4A9BA6
sub_4AA122 endp




sub_4AA4D1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ax, [eax+11Ch]
mov     dl, [esi+0Ah]
test    dl, dl
jnz     short loc_4AA4FD
mov     dh, dl
inc     dh
mov     [esi+0Ah], dh
mov     word ptr [esi+0B6h], 0
mov     [esi+54Dh], dl

loc_4AA4FD:
xor     ecx, ecx
mov     cx, [esi+134h]
xor     edx, edx
mov     dx, ax
test    edx, ecx
jz      short loc_4AA51B
mov     edi, 2
mov     ebp, 20h ; ' '
jmp     short loc_4AA525

loc_4AA51B:
mov     edi, 4
mov     ebp, 48h ; 'H'

loc_4AA525:
mov     edx, [esi+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     short loc_4AA569
xor     edx, edx
mov     dx, [esi+128h]
xor     ecx, ecx
mov     cx, [esi+12Ah]
or      ecx, edx
and     eax, 0FFFFh
mov     ebx, eax
and     ebx, ecx
cmp     ecx, ebx
jz      short loc_4AA561
test    eax, edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
jmp     short loc_4AA582

loc_4AA561:
xor     ecx, ebx
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4AA582

loc_4AA569:
test    dl, 80h
jz      short loc_4AA579
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 60h ; '`'
jmp     short loc_4AA582

loc_4AA579:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'

loc_4AA582:
mov     eax, esi
call    sub_4B520D
mov     ebx, ebp
mov     edx, edi
mov     eax, esi
call    sub_4B53D3
jmp     loc_4A9BA6
sub_4AA4D1 endp




sub_4AA599 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4AA5B0
cmp     al, 1
jz      short loc_4AA604
jmp     loc_4AA6AC

loc_4AA5B0:
mov     al, [esi+112h]
cmp     al, 2
jb      short loc_4AA5C2
jbe     short loc_4AA5D8
cmp     al, 3
jz      short loc_4AA5EA
jmp     short loc_4AA601

loc_4AA5C2:
cmp     al, 1
jnz     short loc_4AA601
mov     word ptr [esi+10Eh], 0FF80h
mov     ax, [esi+12Ch]
jmp     short loc_4AA5FA

loc_4AA5D8:
mov     word ptr [esi+10Eh], 100h
mov     ax, [esi+126h]
jmp     short loc_4AA5FA

loc_4AA5EA:
mov     word ptr [esi+10Eh], 80h
mov     ax, [esi+12Eh]

loc_4AA5FA:
mov     [esi+164h], ax

loc_4AA601:
inc     byte ptr [esi+0Ah]

loc_4AA604:
xor     edx, edx
mov     dx, [esi+11Ch]
mov     eax, [esi+162h]
sar     eax, 10h
test    edx, eax
jz      short loc_4AA64C
xor     ecx, ecx
mov     cx, [esi+124h]
xor     ebx, ebx
mov     bx, [esi+126h]
or      ebx, ecx
xor     ecx, ecx
mov     cx, [esi+12Ch]
xor     edi, edi
mov     di, [esi+12Eh]
or      ecx, edi
or      ecx, ebx
and     edx, ecx
not     eax
test    edx, eax
jz      short loc_4AA655

loc_4AA64C:
mov     word ptr [esi+164h], 0

loc_4AA655:
mov     ax, [esi+56h]
add     ax, [esi+10Eh]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+116h]
add     ax, [esi+10Eh]
and     ah, 0Fh
mov     [esi+116h], ax
test    ax, ax
jnz     short loc_4AA6AC
mov     byte ptr [esi+112h], 0
mov     byte ptr [esi+9], 0
cmp     word ptr [esi+164h], 0
jz      short loc_4AA6A1
mov     word ptr [esi+0Ah], 100h
jmp     short loc_4AA6A5

loc_4AA6A1:
mov     [esi+0Ah], ax

loc_4AA6A5:
mov     eax, esi
call    sub_4B570A

loc_4AA6AC:
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4A9BA7
cmp     byte ptr [esi+177h], 0
jnz     loc_4A9BA7
mov     word ptr [esi+0B4h], 0
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
jmp     loc_4A9BA7
sub_4AA599 endp




sub_4AA6E5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ax, [eax+11Ch]
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_4AA70C
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+0B4h], 0
or      byte ptr [esi+174h], 4

loc_4AA70C:
xor     edx, edx
mov     dx, [esi+130h]
xor     ecx, ecx
mov     cx, [esi+132h]
or      ecx, edx
and     eax, 0FFFFh
mov     ebx, eax
and     ebx, ecx
cmp     ebx, ecx
jz      short loc_4AA75A
test    eax, edx
jz      short loc_4AA749
mov     word ptr [esi+48h], 20h ; ' '
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Fh

loc_4AA740:
mov     eax, esi
call    sub_4B520D
jmp     short loc_4AA760

loc_4AA749:
mov     word ptr [esi+48h], 0FFE0h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Eh
jmp     short loc_4AA740

loc_4AA75A:
mov     word ptr [esi+48h], 0

loc_4AA760:
mov     ecx, [esi+46h]
sar     ecx, 10h
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B527B
cmp     byte ptr [esi+0A4h], 8
jnz     short loc_4AA788
xor     ebx, ebx
xor     edx, edx
mov     eax, 95h
call    sub_4D89E4

loc_4AA788:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AA6E5 endp

align 2
jpt_4AA7C6 dd offset loc_4AA7CD ; jump table for switch statement
dd offset loc_4AA822
dd offset loc_4AA896
dd offset loc_4AA8F0
dd offset loc_4AA93D
dd offset loc_4AA953
dd offset def_4AA7C6



sub_4AA7AA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     cx, [eax+11Ch]
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4AA7C6      ; jumptable 004AA7C6 default case, case 6
xor     edx, edx
mov     dl, al
jmp     jpt_4AA7C6[edx*4] ; switch jump

loc_4AA7CD:             ; jumptable 004AA7C6 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+116h], 0
mov     word ptr [esi+0B4h], 0
xor     edx, edx
mov     dx, [esi+148h]
xor     eax, eax
mov     ax, cx
test    eax, edx
jnz     short loc_4AA803
mov     word ptr [esi+48h], 0

loc_4AA803:
mov     eax, esi
call    sub_4B56DA
mov     ecx, 1
xor     ebx, ebx
mov     edx, 10h
mov     eax, esi
call    sub_4B520D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA822:             ; jumptable 004AA7C6 case 1
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_4AA7C6      ; jumptable 004AA7C6 default case, case 6
inc     al
mov     [esi+0Ah], al
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
mov     byte ptr [esi+74h], 1
test    byte ptr [esi+16Bh], 1
jz      short loc_4AA85A
mov     word ptr [esi+46h], 0FCE0h
jmp     short loc_4AA860

loc_4AA85A:
mov     word ptr [esi+46h], 0FE40h

loc_4AA860:
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 11h
mov     eax, esi
call    sub_4B520D
xor     edx, edx
mov     eax, esi
call    sub_4AACE4
xor     ebx, ebx
xor     edx, edx
mov     eax, 92h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA896:             ; jumptable 004AA7C6 case 2
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
xor     edx, edx
mov     dx, [esi+138h]
xor     eax, eax
mov     ax, cx
test    eax, edx
jz      short loc_4AA8E8
mov     cx, [esi+46h]
add     ecx, 30h ; '0'
mov     [esi+46h], cx
test    cx, cx
jl      def_4AA7C6      ; jumptable 004AA7C6 default case, case 6
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA8E8:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA8F0:             ; jumptable 004AA7C6 case 3
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
mov     edx, [esi+44h]
sar     edx, 10h
neg     edx
cmp     edx, 240h
jle     short loc_4AA91B
add     word ptr [esi+46h], 240h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA91B:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 2
mov     word ptr [esi+46h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AA93D:             ; jumptable 004AA7C6 case 4
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4AA953:             ; jumptable 004AA7C6 case 5
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
add     word ptr [esi+46h], 30h ; '0'

def_4AA7C6:             ; jumptable 004AA7C6 default case, case 6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AA7AA endp

align 2
jpt_4AA9BA dd offset loc_4AA9C1 ; jump table for switch statement
dd offset loc_4AAA57
dd offset loc_4AAA57
dd offset loc_4AAAAD
dd offset loc_4AAAF9
dd offset loc_4AAB15
dd offset loc_4AAB2F
dd offset loc_4AAC87
jpt_4AAB5A dd offset loc_4AAB61 ; jump table for switch statement
dd offset loc_4AABE2
dd offset loc_4AAC0C
dd offset loc_4AAC36



sub_4AA99E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     cx, [eax+11Ch]
mov     al, [eax+0Ah]
cmp     al, 7           ; switch 8 cases
ja      def_4AA9BA      ; jumptable 004AA9BA default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AA9BA[edx*4] ; switch jump

loc_4AA9C1:             ; jumptable 004AA9BA case 0
add     al, 2
mov     [esi+0Ah], al
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
mov     byte ptr [esi+74h], 1
mov     byte ptr [esi+54Dh], 1
test    byte ptr [esi+16Bh], 1
jz      short loc_4AA9EE
mov     word ptr [esi+46h], 0FCE0h
jmp     short loc_4AA9F4

loc_4AA9EE:
mov     word ptr [esi+46h], 0FE40h

loc_4AA9F4:
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     dx, [esi+edx*8+148h]
and     edx, 0FFFFh
xor     eax, eax
mov     ax, cx
test    eax, edx
jnz     short loc_4AAA1A
mov     word ptr [esi+48h], 0

loc_4AAA1A:
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 14h
mov     eax, esi
call    sub_4B520D
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
xor     ebx, ebx
xor     edx, edx
mov     eax, 92h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAA57:             ; jumptable 004AA9BA cases 1,2
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
xor     edx, edx
mov     dx, [esi+138h]
xor     eax, eax
mov     ax, cx
test    eax, edx
jz      loc_4AABDA
mov     cx, [esi+46h]
add     ecx, 30h ; '0'
mov     [esi+46h], cx
test    cx, cx
jl      def_4AA9BA      ; jumptable 004AA9BA default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAAAD:             ; jumptable 004AA9BA case 3
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
mov     eax, [esi+44h]
sar     eax, 10h
neg     eax
cmp     eax, 240h
jle     short loc_4AAAD7
add     word ptr [esi+46h], 240h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAAD7:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 15h
mov     eax, esi
call    sub_4B520D
add     byte ptr [esi+0Ah], 2
mov     word ptr [esi+46h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAAF9:             ; jumptable 004AA9BA case 4
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 200h
inc     byte ptr [esi+0Ah]

loc_4AAB15:             ; jumptable 004AA9BA case 5
mov     edx, [esi+10Fh]
sar     edx, 18h
mov     eax, esi
call    sub_4AACE4
add     word ptr [esi+46h], 30h ; '0'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAB2F:             ; jumptable 004AA9BA case 6
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4AA9BA      ; jumptable 004AA9BA default case
mov     eax, esi
call    sub_4B56DA
mov     al, [esi+112h]
cmp     al, 3           ; switch 4 cases
ja      def_4AAB5A      ; jumptable 004AAB5A default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AAB5A[edx*4] ; switch jump

loc_4AAB61:             ; jumptable 004AAB5A case 0
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAB84
xor     eax, eax
mov     ax, [esi+124h]
test    edx, eax
jnz     def_4AAB5A      ; jumptable 004AAB5A default case

loc_4AAB84:
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jz      short loc_4AABCA
cmp     byte ptr [esi+54Ah], 10h
jbe     short loc_4AABCA
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 300h
mov     word ptr [esi+48h], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Bh ; ';'

loc_4AABBE:
mov     eax, esi
call    sub_4B520D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AABCA:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Ah ; '*'

loc_4AABD3:
mov     eax, esi
call    sub_4B520D

loc_4AABDA:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AABE2:             ; jumptable 004AAB5A case 1
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAC01
xor     eax, eax
mov     ax, [esi+12Ch]
test    edx, eax
jnz     short def_4AAB5A ; jumptable 004AAB5A default case

loc_4AAC01:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Bh ; '+'
jmp     short loc_4AABD3

loc_4AAC0C:             ; jumptable 004AAB5A case 2
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAC2B
xor     eax, eax
mov     ax, [esi+126h]
test    edx, eax
jnz     short def_4AAB5A ; jumptable 004AAB5A default case

loc_4AAC2B:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Dh ; '-'
jmp     short loc_4AABD3

loc_4AAC36:             ; jumptable 004AAB5A case 3
xor     eax, eax
mov     ax, [esi+134h]
xor     edx, edx
mov     dx, cx
test    edx, eax
jnz     short loc_4AAC55
xor     eax, eax
mov     ax, [esi+12Eh]
test    edx, eax
jnz     short def_4AAB5A ; jumptable 004AAB5A default case

loc_4AAC55:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Ch ; ','
jmp     loc_4AABD3

def_4AAB5A:             ; jumptable 004AAB5A default case
mov     word ptr [esi+44h], 200h
mov     word ptr [esi+46h], 0
mov     byte ptr [esi+9], 2
mov     word ptr [esi+0Ah], 2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
jmp     loc_4AABBE

loc_4AAC87:             ; jumptable 004AA9BA case 7
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AA9BA ; jumptable 004AA9BA default case
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
mov     byte ptr [esi+54Ah], 0
mov     eax, esi
call    sub_4B570A
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+116h], 0
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+0B4h], 0

def_4AA9BA:             ; jumptable 004AA9BA default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AA99E endp




sub_4AACE4 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebx, edx
mov     di, [eax+11Ch]
movsx   eax, dx
shl     eax, 3
lea     edx, [esi+eax]
xor     eax, eax
mov     ax, [edx+144h]
mov     dx, [edx+146h]
and     edx, 0FFFFh
xor     ecx, ecx
mov     cx, di
test    ecx, eax
jz      short loc_4AAD5A
mov     ebp, ecx
and     ebp, eax
cmp     eax, ebp
jz      short loc_4AAD5A
test    ecx, edx
jz      short loc_4AAD42
mov     cx, [esi+44h]
add     ecx, 28h ; '('
mov     [esi+44h], cx
cmp     cx, 280h
jle     short loc_4AAD5A
mov     word ptr [esi+44h], 280h
jmp     short loc_4AAD5A

loc_4AAD42:
sub     word ptr [esi+44h], 28h ; '('
mov     eax, [esi+42h]
sar     eax, 10h
cmp     eax, 0FFFFFD80h
jge     short loc_4AAD5A
mov     word ptr [esi+44h], 0FD80h

loc_4AAD5A:
movsx   eax, bx
shl     eax, 3
lea     edx, [esi+eax]
xor     eax, eax
mov     ax, [edx+148h]
mov     dx, [edx+14Ah]
and     edx, 0FFFFh
xor     ecx, ecx
mov     cx, di
test    ecx, eax
jz      short loc_4AADC8
mov     ebx, ecx
and     ebx, eax
cmp     ebx, eax
jz      short loc_4AADC2
test    ecx, edx
jz      short loc_4AADA8
sub     word ptr [esi+48h], 20h ; ' '
mov     eax, [esi+46h]
sar     eax, 10h
cmp     eax, 0FFFFFF00h
jge     short loc_4AADC8
mov     word ptr [esi+48h], 0FF00h
jmp     short loc_4AADC8

loc_4AADA8:
mov     dx, [esi+48h]
add     edx, 20h ; ' '
mov     [esi+48h], dx
cmp     dx, 100h
jle     short loc_4AADC8
mov     word ptr [esi+48h], 100h
jmp     short loc_4AADC8

loc_4AADC2:
mov     word ptr [esi+48h], 0

loc_4AADC8:
mov     ebx, 20h ; ' '
mov     edx, 4
mov     eax, esi
call    sub_4B53D3
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
cmp     byte ptr [esi+74h], 0
jnz     loc_4A9432
cmp     byte ptr [esi+9], 7
jnz     short loc_4AAE10
mov     ecx, 1
xor     ebx, ebx
mov     edx, 13h
jmp     short loc_4AAE1C

loc_4AAE10:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 16h

loc_4AAE1C:
mov     eax, esi
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 93h
call    sub_4D89E4
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
jmp     loc_4A9432
sub_4AACE4 endp

jpt_4AAE67 dd offset loc_4AAE6E ; jump table for switch statement
dd offset loc_4AAEE0
dd offset loc_4AAF62
dd offset loc_4AAFB2
dd offset loc_4AB007



sub_4AAE52 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4AAE67      ; jumptable 004AAE67 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AAE67[edx*4] ; switch jump

loc_4AAE6E:             ; jumptable 004AAE67 case 0
mov     byte ptr [esi+110h], 0FFh
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     loc_4AAF5D
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+74h], 1
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4AAEB4
mov     word ptr [esi+48h], 0FE00h
mov     ecx, 1
xor     ebx, ebx
mov     edx, 18h
jmp     short loc_4AAEC6

loc_4AAEB4:
mov     word ptr [esi+48h], 200h
mov     ecx, 1
xor     ebx, ebx
mov     edx, 19h

loc_4AAEC6:
mov     eax, esi
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 92h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAEE0:             ; jumptable 004AAE67 case 1
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4AAF40
inc     al
mov     [esi+0Ah], al
mov     word ptr [esi+44h], 200h
mov     word ptr [esi+46h], 0FF80h
mov     word ptr [esi+48h], 0
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4AAF1D
mov     byte ptr [esi+112h], 3
mov     word ptr [esi+116h], 0FC00h
jmp     short loc_4AAF2D

loc_4AAF1D:
mov     byte ptr [esi+112h], 1
mov     word ptr [esi+116h], 400h

loc_4AAF2D:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, esi
call    sub_4B520D

loc_4AAF40:
mov     byte ptr [esi+74h], 1

def_4AAE67:             ; jumptable 004AAE67 default case
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B

loc_4AAF5D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AAF62:             ; jumptable 004AAE67 case 2
add     word ptr [esi+46h], 30h ; '0'
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4AAF40
mov     byte ptr [esi+110h], 0
cmp     byte ptr [esi+74h], 0
jz      short loc_4AAF93
inc     byte ptr [esi+0Ah]
mov     ecx, 1
xor     ebx, ebx
mov     edx, 1Ch
jmp     short loc_4AAFA9

loc_4AAF93:
add     byte ptr [esi+0Ah], 2
mov     word ptr [esi+46h], 0
mov     ecx, 1
xor     ebx, ebx

loc_4AAFA4:
mov     edx, 1Bh

loc_4AAFA9:
mov     eax, esi
call    sub_4B520D
jmp     short def_4AAE67 ; jumptable 004AAE67 default case

loc_4AAFB2:             ; jumptable 004AAE67 case 3
add     word ptr [esi+46h], 30h ; '0'
cmp     byte ptr [esi+74h], 0
jnz     short loc_4AAFD5
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+46h], 0
xor     ebx, ebx
mov     bl, [esi+0A4h]
mov     ecx, 1
jmp     short loc_4AAFA4

loc_4AAFD5:
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_4AAE67      ; jumptable 004AAE67 default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
mov     byte ptr [esi+9], 7
mov     byte ptr [esi+0Ah], 5
jmp     def_4AAE67      ; jumptable 004AAE67 default case

loc_4AB007:             ; jumptable 004AAE67 case 4
cmp     byte ptr [esi+0A6h], 1
jnz     def_4AAE67      ; jumptable 004AAE67 default case
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4AB022
mov     word ptr [esi+48h], 0C0h
jmp     short loc_4AB028

loc_4AB022:
mov     word ptr [esi+48h], 0FF40h

loc_4AB028:
xor     ebx, ebx
xor     edx, edx
mov     eax, 93h
call    sub_4D89E4
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AAE52 endp

db 8Dh, 40h, 0
jpt_4AB09C dd offset loc_4AB0A3 ; jump table for switch statement
dd offset loc_4AB0AC
dd offset loc_4AB0B3
dd offset loc_4AB0BA
dd offset loc_4AB0C3
dd offset loc_4AB0D1
dd offset loc_4AB0DF
dd offset loc_4AB0E8



sub_4AB066 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4AB086
jbe     loc_4AB13D
cmp     al, 2
jz      loc_4AB158
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB086:
test    al, al
jnz     loc_4AB16E
mov     al, [esi+0Bh]
dec     al              ; switch 8 cases
cmp     al, 7
ja      short def_4AB09C ; jumptable 004AB09C default case
and     eax, 0FFh
jmp     jpt_4AB09C[eax*4] ; switch jump

loc_4AB0A3:             ; jumptable 004AB09C case 1
sub     dword ptr [esi+24h], 180000h
jmp     short loc_4AB0F2

loc_4AB0AC:             ; jumptable 004AB09C case 2
add     word ptr [esi+26h], 18h
jmp     short loc_4AB0F2

loc_4AB0B3:             ; jumptable 004AB09C case 3
add     word ptr [esi+1Eh], 18h
jmp     short loc_4AB0F2

loc_4AB0BA:             ; jumptable 004AB09C case 4
sub     dword ptr [esi+1Ch], 180000h
jmp     short loc_4AB0F2

loc_4AB0C3:             ; jumptable 004AB09C case 5
add     word ptr [esi+1Eh], 0Ch

loc_4AB0C8:
sub     dword ptr [esi+24h], 0C0000h
jmp     short loc_4AB0F2

loc_4AB0D1:             ; jumptable 004AB09C case 6
sub     dword ptr [esi+1Ch], 0C0000h
add     word ptr [esi+26h], 0Ch
jmp     short loc_4AB0F2

loc_4AB0DF:             ; jumptable 004AB09C case 7
sub     dword ptr [esi+1Ch], 0C0000h
jmp     short loc_4AB0C8

loc_4AB0E8:             ; jumptable 004AB09C case 8
add     word ptr [esi+1Eh], 0Ch
add     word ptr [esi+26h], 0Ch

loc_4AB0F2:
add     word ptr [esi+22h], 20h ; ' '

def_4AB09C:             ; jumptable 004AB09C default case
call    sub_4DE13B
test    eax, eax
jz      short loc_4AB10B
xor     ebx, ebx
mov     edx, eax
mov     eax, esi
call    sub_4B582D

loc_4AB10B:
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+48h], 0
mov     ax, [esi+48h]
mov     [esi+46h], ax
mov     [esi+44h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB13D:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 13h
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB158:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4AB16E
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6

loc_4AB16E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AB066 endp

db 8Dh, 40h, 0
jpt_4AB19B dd offset loc_4AB1A2 ; jump table for switch statement
dd offset loc_4AB24B
dd offset loc_4AB25B
dd offset loc_4AB292



sub_4AB186 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4AB19B      ; jumptable 004AB19B default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AB19B[edx*4] ; switch jump

loc_4AB1A2:             ; jumptable 004AB19B case 0
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4AB1C3
mov     ecx, 1
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 0FE00h
jmp     short loc_4AB1DC

loc_4AB1C3:
mov     ecx, 1
xor     ebx, ebx
mov     edx, 21h ; '!'
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 200h

loc_4AB1DC:
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     byte ptr [esi+168h], 1
mov     byte ptr [esi+169h], 1
mov     byte ptr [esi+54Ah], 0
mov     eax, esi
call    sub_4B56DA
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
mov     eax, 16h
call    sub_4D8E2B
xor     ebx, ebx
xor     edx, edx
mov     eax, 97h
call    sub_4D89E4
call    sub_42A4FC
mov     word ptr [esi+108h], 0

loc_4AB243:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB24B:             ; jumptable 004AB19B case 1
mov     ah, [esi+0A6h]
cmp     ah, 1
jnz     short loc_4AB25B ; jumptable 004AB19B case 2
add     al, ah
mov     [esi+0Ah], al

loc_4AB25B:             ; jumptable 004AB19B case 2
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4AB268
add     word ptr [esi+44h], 40h ; '@'
jmp     short loc_4AB26D

loc_4AB268:
sub     word ptr [esi+44h], 40h ; '@'

loc_4AB26D:
cmp     word ptr [esi+44h], 0
jz      short loc_4AB243
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB292:             ; jumptable 004AB19B case 3
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4AB19B ; jumptable 004AB19B default case
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
mov     byte ptr [esi+71h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0

def_4AB19B:             ; jumptable 004AB19B default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AB186 endp

db 8Dh, 40h, 0
jpt_4AB2EF dd offset loc_4AB2F6 ; jump table for switch statement
dd offset loc_4AB2F6
dd offset loc_4AB393
dd offset loc_4AB3F3
dd offset loc_4AB47A
dd offset loc_4AB4CF



sub_4AB2DA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_4AB2EF      ; jumptable 004AB2EF default case
xor     edx, edx
mov     dl, al
jmp     jpt_4AB2EF[edx*4] ; switch jump

loc_4AB2F6:             ; jumptable 004AB2EF cases 0,1
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_4AB300
xor     ebx, ebx
jmp     short loc_4AB305

loc_4AB300:
mov     ebx, 6

loc_4AB305:
movsx   ebx, bx
mov     ecx, 1
mov     edx, 22h ; '"'
mov     eax, esi
call    sub_4B520D
mov     word ptr [esi+44h], 0FE00h
mov     eax, esi
call    sub_4B56DA
mov     word ptr [esi+48h], 0
mov     word ptr [esi+46h], 0FEA0h
mov     byte ptr [esi+74h], 1
mov     byte ptr [esi+110h], 0FFh
mov     byte ptr [esi+168h], 1
mov     byte ptr [esi+169h], 1
mov     byte ptr [esi+54Ah], 0
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
mov     eax, 16h
call    sub_4D8E2B
xor     ebx, ebx
xor     edx, edx
mov     eax, 98h
call    sub_4D89E4
call    sub_42A4FC
mov     word ptr [esi+108h], 0
jmp     short loc_4AB3BA

loc_4AB393:             ; jumptable 004AB2EF case 2
cmp     byte ptr [esi+74h], 0
jnz     short loc_4AB3C2
mov     ecx, 1
xor     ebx, ebx
mov     edx, 23h ; '#'
mov     eax, esi
call    sub_4B520D

loc_4AB3AC:
xor     ebx, ebx
xor     edx, edx
mov     eax, 99h
call    sub_4D89E4

loc_4AB3BA:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB3C2:
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_4AB3D0
add     al, 2
mov     [esi+0Ah], al

loc_4AB3D0:
add     word ptr [esi+46h], 30h ; '0'
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4B527B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB3F3:             ; jumptable 004AB2EF case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4AB2EF      ; jumptable 004AB2EF default case
cmp     word ptr [esi+6Eh], 0
jl      loc_4AB4F5
mov     ecx, 1
xor     ebx, ebx
mov     edx, 25h ; '%'

loc_4AB41C:
mov     eax, esi
call    sub_4B520D
mov     ax, [esi+116h]
sub     [esi+56h], ax
mov     byte ptr [esi+112h], 0
mov     word ptr [esi+116h], 0
mov     eax, offset unk_530558
call    sub_42A7B1
call    sub_4369C1
mov     byte ptr [esi+9], 8
mov     byte ptr [esi+0Ah], 6
mov     byte ptr [esi+71h], 0
mov     byte ptr [esi+168h], 0
mov     byte ptr [esi+169h], 0
mov     byte ptr [esi+110h], 1
mov     byte ptr [esi+111h], 30h ; '0'
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AB47A:             ; jumptable 004AB2EF case 4
cmp     byte ptr [esi+74h], 0
jnz     loc_4AB3D0
mov     ecx, 1
xor     ebx, ebx
mov     edx, 24h ; '$'
mov     eax, esi
call    sub_4B520D
mov     eax, 8
call    sub_436916
test    eax, eax
jz      short loc_4AB4B3
cmp     byte ptr [esi+16Ah], 0
jnz     short loc_4AB4B3
sub     word ptr [esi+6Eh], 8

loc_4AB4B3:
lea     ecx, [esi+14h]
mov     ebx, 2800h
mov     edx, 400h
mov     eax, 1Eh
call    sub_42A70B
jmp     loc_4AB3AC

loc_4AB4CF:             ; jumptable 004AB2EF case 5
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AB2EF ; jumptable 004AB2EF default case
cmp     word ptr [esi+6Eh], 0
jl      short loc_4AB4F5
mov     ecx, 1
xor     ebx, ebx
mov     edx, 29h ; ')'
jmp     loc_4AB41C

loc_4AB4F5:
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0

def_4AB2EF:             ; jumptable 004AB2EF default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AB2DA endp

jpt_4AB546 dd offset loc_4AB54D ; jump table for switch statement
dd offset loc_4AB594
dd offset loc_4AB5B4
dd offset loc_4AB6C6
dd offset loc_4AB6EE
dd offset loc_4AB71A
dd offset loc_4AB77A



sub_4AB51E proc near

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
sub     esp, 0Ch
mov     ebp, eax
xor     eax, eax
mov     ax, [ebp+11Ch]
mov     [esp+24h+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4AB546      ; jumptable 004AB546 default case
and     eax, 0FFh
jmp     jpt_4AB546[eax*4] ; switch jump

loc_4AB54D:             ; jumptable 004AB546 case 0
mov     eax, ebp
call    sub_4B56DA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1Dh
mov     eax, ebp
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 9Fh
call    sub_4D89E4
mov     byte ptr [ebp+54Ah], 0
mov     word ptr [ebp+0B4h], 0
mov     byte ptr [ebp+54Dh], 0

loc_4AB589:
inc     byte ptr [ebp+0Ah]

def_4AB546:             ; jumptable 004AB546 default case
add     esp, 0Ch
jmp     loc_4A9BA6

loc_4AB594:             ; jumptable 004AB546 case 1
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4AB546 ; jumptable 004AB546 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1Eh
mov     eax, ebp
call    sub_4B520D
jmp     short loc_4AB589

loc_4AB5B4:             ; jumptable 004AB546 case 2
xor     eax, eax
mov     ax, [ebp+126h]
test    [esp+24h+var_1C], eax
jz      short loc_4AB5C9
mov     byte ptr [ebp+0Ah], 6
jmp     short def_4AB546 ; jumptable 004AB546 default case

loc_4AB5C9:
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [ebp+54h]
sar     edx, 10h
mov     eax, [ebp+114h]
sar     eax, 10h
sub     edx, eax
lea     eax, [edx+200h]
sar     eax, 0Ah
and     eax, 3
test    al, 1
jz      short loc_4AB60C
test    al, 2
jz      short loc_4AB603
mov     eax, [ebp+78h]
mov     ax, [eax+2]
inc     eax

loc_4AB5FD:
add     [esp+24h+var_24], ax
jmp     short loc_4AB627

loc_4AB603:
mov     eax, [ebp+78h]
mov     ax, [eax]
dec     eax
jmp     short loc_4AB5FD

loc_4AB60C:
test    al, 2
jz      short loc_4AB61A
mov     eax, [ebp+78h]
mov     ax, [eax+6]
inc     eax
jmp     short loc_4AB622

loc_4AB61A:
mov     eax, [ebp+78h]
mov     ax, [eax+4]
dec     eax

loc_4AB622:
add     [esp+24h+var_20], ax

loc_4AB627:
sub     [esp+24h+var_22], 98h
xor     ecx, ecx
mov     cl, [ebp+1]
xor     ebx, ebx
xor     edx, edx
mov     eax, esp
call    sub_42C5B7
add     eax, 98h
mov     edx, [ebp+14h]
sar     edx, 10h
sub     edx, eax
test    edx, edx
jge     short loc_4AB651
neg     edx

loc_4AB651:
cmp     edx, 20h ; ' '
jl      short loc_4AB662

loc_4AB656:
mov     eax, ebp
call    sub_4AB7A2
jmp     def_4AB546      ; jumptable 004AB546 default case

loc_4AB662:
mov     [ebp+16h], ax
shl     eax, 10h
mov     [ebp+20h], eax
xor     eax, eax
mov     ax, [ebp+124h]
test    [esp+24h+var_1C], eax
jz      def_4AB546      ; jumptable 004AB546 default case
mov     byte ptr [ebp+75h], 2
mov     al, [ebp+75h]
mov     [ebp+74h], al
mov     byte ptr [ebp+76h], 0
inc     byte ptr [ebp+0Ah]
mov     word ptr [ebp+44h], 0
mov     ax, [ebp+16h]
sub     ax, [ebp+2Eh]
shl     eax, 5
sub     eax, 90h
mov     [ebp+46h], ax
mov     word ptr [ebp+48h], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1Fh
mov     eax, ebp
call    sub_4B520D
jmp     def_4AB546      ; jumptable 004AB546 default case

loc_4AB6C6:             ; jumptable 004AB546 case 3
mov     ebx, [ebp+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4B527B
mov     dh, [ebp+0A6h]
cmp     dh, 1
jnz     def_4AB546      ; jumptable 004AB546 default case
add     [ebp+0Ah], dh
jmp     def_4AB546      ; jumptable 004AB546 default case

loc_4AB6EE:             ; jumptable 004AB546 case 4
mov     word ptr [ebp+44h], 50h ; 'P'
mov     word ptr [ebp+46h], 0FE50h
mov     word ptr [ebp+48h], 0
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4B527B
jmp     loc_4AB589

loc_4AB71A:             ; jumptable 004AB546 case 5
add     word ptr [ebp+46h], 30h ; '0'
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4B527B
cmp     byte ptr [ebp+74h], 0
jnz     short loc_4AB763
mov     ecx, 1
xor     ebx, ebx
mov     edx, 13h
mov     eax, ebp
call    sub_4B520D
xor     ebx, ebx
xor     edx, edx
mov     eax, 93h
call    sub_4D89E4
mov     byte ptr [ebp+9], 8
mov     byte ptr [ebp+0Ah], 6

loc_4AB763:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4AB546      ; jumptable 004AB546 default case
jmp     loc_4AB656

loc_4AB77A:             ; jumptable 004AB546 case 6
mov     word ptr [ebp+44h], 0FFD6h
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4B527B
jmp     loc_4AB656
sub_4AB51E endp




sub_4AB7A2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     byte ptr [eax+9], 7
mov     word ptr [eax+0Ah], 4
mov     byte ptr [eax+75h], 1
mov     al, [eax+75h]
mov     [esi+74h], al
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
jmp     loc_4AA048
sub_4AB7A2 endp




sub_4AB7D4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4AB812
mov     byte ptr [esi+0Ah], 1
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+108h], 0
mov     word ptr [esi+10Ah], 0
mov     word ptr [esi+10Eh], 0

loc_4AB812:
mov     edi, ds:dword_5505E8
test    edi, edi
jz      short loc_4AB830
test    byte ptr ds:dword_559A40, 2
jz      short loc_4AB830
mov     eax, esi
call    sub_4ABAE7
test    eax, eax
jz      short loc_4AB8A2

loc_4AB830:
mov     ebx, 40h ; '@'
mov     edx, 2
mov     eax, esi
call    sub_4B52A6
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, 15Eh
call    sub_42A530
mov     word ptr [esi+10Eh], 0
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AB885
mov     ecx, 1

loc_4AB86F:
mov     ebx, 48h ; 'H'
mov     edx, 4
mov     eax, esi
call    sub_4B5429
jmp     loc_4A9BA7

loc_4AB885:
mov     eax, esi
call    sub_4AD40B
test    eax, eax
jnz     short loc_4AB894
xor     ecx, ecx
jmp     short loc_4AB86F

loc_4AB894:
mov     word ptr [esi+0B4h], 0
jmp     loc_4A9BA7

loc_4AB8A2:
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DDE21
and     ah, 0Fh
mov     [esi+10Ah], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     ecx, [esi+108h]
sar     ecx, 10h
sub     eax, ecx
mov     ecx, eax
cmp     eax, 800h
jle     short loc_4AB8D7
lea     ecx, [eax-1000h]

loc_4AB8D7:
cmp     ecx, 0FFFFF800h
jge     short loc_4AB8E5
add     ecx, 1000h

loc_4AB8E5:
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AB8F9
mov     ebx, 1
jmp     short loc_4AB906

loc_4AB8F9:
mov     eax, esi
call    sub_4AD338
test    eax, eax
jnz     short loc_4AB90F
xor     ebx, ebx

loc_4AB906:
mov     edx, ecx
mov     eax, esi
call    sub_4ABA67

loc_4AB90F:
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DDE4A
lea     ecx, [eax-0C00h]
mov     eax, [esi+106h]
sar     eax, 10h
cmp     ecx, eax
jnz     short loc_4AB93B
mov     word ptr [esi+10Eh], 0
jmp     loc_4ABA4F

loc_4AB93B:
mov     edx, ecx
sub     edx, eax
test    edx, edx
jle     loc_4AB9CB
mov     di, [esi+10Eh]
test    di, di
jge     short loc_4AB95E
mov     word ptr [esi+10Eh], 0
jmp     short loc_4AB97B

loc_4AB95E:
mov     eax, edi
add     eax, 4
mov     [esi+10Eh], ax
cmp     ax, 40h ; '@'
jle     short loc_4AB97B
mov     word ptr [esi+10Eh], 40h ; '@'

loc_4AB97B:
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, ecx
sub     edx, eax
mov     eax, edx
mov     edx, [esi+10Ch]
sar     edx, 10h
cmp     eax, edx
jle     short loc_4AB9A7
mov     ax, [esi+10Eh]
add     [esi+108h], ax
jmp     short loc_4AB9AE

loc_4AB9A7:
mov     [esi+108h], cx

loc_4AB9AE:
cmp     word ptr [esi+108h], 1C0h
jle     loc_4ABA4F
mov     word ptr [esi+108h], 1C0h
jmp     loc_4ABA4F

loc_4AB9CB:
mov     dx, [esi+10Eh]
test    dx, dx
jle     short loc_4AB9E2
mov     word ptr [esi+10Eh], 0
jmp     short loc_4ABA05

loc_4AB9E2:
mov     ebx, edx
sub     ebx, 4
mov     [esi+10Eh], bx
mov     eax, [esi+10Ch]
sar     eax, 10h
cmp     eax, 0FFFFFFC0h
jge     short loc_4ABA05
mov     word ptr [esi+10Eh], 0FFC0h

loc_4ABA05:
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, ecx
sub     edx, eax
mov     eax, [esi+10Ch]
sar     eax, 10h
cmp     edx, eax
jge     short loc_4ABA2F
mov     ax, [esi+10Eh]
add     [esi+108h], ax
jmp     short loc_4ABA36

loc_4ABA2F:
mov     [esi+108h], cx

loc_4ABA36:
mov     eax, [esi+106h]
sar     eax, 10h
cmp     eax, 0FFFFFE40h
jge     short loc_4ABA4F
mov     word ptr [esi+108h], 0FE40h

loc_4ABA4F:
mov     eax, [esi+106h]
sar     eax, 10h
mov     edx, 15Eh
call    sub_42A530
jmp     loc_4A9BA7
sub_4AB7D4 endp




sub_4ABA67 proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, ebx
test    edx, edx
jge     short loc_4ABA77
mov     ecx, edx
neg     ecx
jmp     short loc_4ABA79

loc_4ABA77:
mov     ecx, edx

loc_4ABA79:
cmp     ecx, 80h
jge     short loc_4ABAA9
mov     word ptr [esi+0B4h], 0
mov     dx, [esi+10Ah]
mov     [esi+56h], dx
test    eax, eax
jz      short loc_4ABAE4
xor     ecx, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D
pop     esi
pop     ecx
retn

loc_4ABAA9:
test    edx, edx
jle     short loc_4ABABC
mov     word ptr [esi+0B4h], 0FF80h
test    eax, eax
jz      short loc_4ABAD9
jmp     short loc_4ABAC9

loc_4ABABC:
mov     word ptr [esi+0B4h], 80h
test    eax, eax
jz      short loc_4ABAD9

loc_4ABAC9:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, esi
call    sub_4B520D

loc_4ABAD9:
mov     ax, [esi+0B4h]
add     [esi+56h], ax

loc_4ABAE4:
pop     esi
pop     ecx
retn
sub_4ABA67 endp




sub_4ABAE7 proc near
push    ecx
push    edx
xor     edx, edx
mov     dx, [eax+11Ch]
cmp     ds:byte_77E7DA, 0
jz      short loc_4ABB03

loc_4ABAFB:
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ABB03:
cmp     ds:byte_77E807, 0
jnz     short loc_4ABB19
xor     ecx, ecx
mov     cx, [eax+13Eh]
test    edx, ecx
jnz     short loc_4ABAFB

loc_4ABB19:
cmp     ds:byte_77E807, 1
jnz     short loc_4ABB32
mov     ax, [eax+140h]
and     eax, 0FFFFh
test    edx, eax
jz      short loc_4ABAFB

loc_4ABB32:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ABAE7 endp




sub_4ABB37 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4ABB51
jbe     short loc_4ABB74
cmp     al, 2
jz      short loc_4ABBC2
jmp     loc_4A9BA6

loc_4ABB51:
test    al, al
jnz     loc_4A9BA6
mov     ecx, 1
xor     ebx, ebx
mov     edx, 80h
mov     eax, ebp
call    sub_4B520D
inc     byte ptr [ebp+0Ah]
jmp     loc_4A9BA6

loc_4ABB74:
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
lea     edi, [ebp+14h]
lea     esi, [ebp+538h]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+528h]
movsd
movsd
movsd
movsd
lea     edi, [ebp+54h]
lea     esi, [ebp+540h]
movsd
movsd
jmp     loc_4A9BA6

loc_4ABBC2:
mov     byte ptr [ebp+9], 0Ch
mov     byte ptr [ebp+0Ah], 0
jmp     loc_4A9BA6
sub_4ABB37 endp

db 8Dh, 40h, 0
jpt_4ABBF4 dd offset loc_4ABBFB ; jump table for switch statement
dd offset def_4ABBF4
dd offset loc_4ABC16
dd offset loc_4ABC24



sub_4ABBE2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_4ABBF4 ; jumptable 004ABBF4 default case, case 1
and     eax, 0FFh
jmp     jpt_4ABBF4[eax*4] ; switch jump

loc_4ABBFB:             ; jumptable 004ABBF4 case 0
mov     ecx, 1
xor     ebx, ebx
mov     edx, 30h ; '0'

loc_4ABC07:
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ABC16:             ; jumptable 004ABBF4 case 2
mov     ecx, 1
xor     ebx, ebx
mov     edx, 31h ; '1'
jmp     short loc_4ABC07

loc_4ABC24:             ; jumptable 004ABBF4 case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4ABBF4 ; jumptable 004ABBF4 default case, case 1
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0

def_4ABBF4:             ; jumptable 004ABBF4 default case, case 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABBE2 endp




sub_4ABC3F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABC62
mov     ecx, 1
xor     ebx, ebx
mov     edx, 33h ; '3'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABC62:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABC3F endp




sub_4ABC67 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABC8A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 34h ; '4'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABC8A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABC67 endp




sub_4ABC8F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABCB2
mov     ecx, 1
xor     ebx, ebx
mov     edx, 35h ; '5'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABCB2:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABC8F endp




sub_4ABCB7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4ABCDA
mov     ecx, 1
xor     ebx, ebx
mov     edx, 36h ; '6'
mov     eax, esi
call    sub_4B520D
inc     byte ptr [esi+0Ah]

loc_4ABCDA:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABCB7 endp




sub_4ABCDF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     si, [eax+11Ch]
mov     di, [eax+11Eh]
call    sub_4ACF2E
test    eax, eax
jnz     short loc_4ABD08
mov     eax, ecx
call    sub_4AD46F
test    eax, eax
jz      short loc_4ABD14

loc_4ABD08:
mov     byte ptr [ecx+54Ah], 0
jmp     loc_4A9BA7

loc_4ABD14:
xor     edx, edx
mov     dx, [ecx+124h]
mov     ax, [ecx+126h]
mov     ebx, edx
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+12Ch]
xor     eax, eax
mov     ax, [ecx+12Eh]
or      eax, edx
or      eax, ebx
xor     edx, edx
mov     dx, di
test    edx, eax
jz      short loc_4ABD4B
mov     byte ptr [ecx+0Bh], 0

loc_4ABD4B:
xor     eax, eax
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      eax, edx
xor     ebx, ebx
mov     bx, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      ebx, edx
or      ebx, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+128h]
xor     eax, eax
mov     ax, [ecx+12Ah]
or      eax, edx
or      eax, ebx
xor     edx, edx
mov     dx, si
test    edx, eax
jnz     short loc_4ABDC2
test    byte ptr [ecx+176h], 3
jz      loc_4ABEB6

loc_4ABDC2:
mov     byte ptr [ecx+54Ah], 0
mov     eax, ecx
call    sub_4AD3A7
test    eax, eax
jnz     loc_4ABEA4
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     loc_4A9BA7
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     short loc_4ABE57
mov     eax, ecx
call    sub_4AD2CA
test    eax, eax
jz      short loc_4ABE57
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_4ABE57
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7

loc_4ABE57:
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4ABEA4
cmp     byte ptr [ecx+177h], 0
jnz     short loc_4ABEA4
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4ACB66
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     loc_4A9BA7

loc_4ABEA4:
mov     eax, ecx
call    sub_4AD40B
test    eax, eax
jnz     short loc_4ABEB6
mov     eax, ecx
call    sub_4ACB26

loc_4ABEB6:
mov     eax, ecx
call    sub_4ACAC7
jmp     loc_4A9BA7
sub_4ABCDF endp




sub_4ABEC2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     si, [eax+11Ch]
call    sub_4AD46F
test    eax, eax
jnz     loc_4AC01E
mov     ax, [ecx+124h]
xor     ebx, ebx
mov     bx, [ecx+126h]
or      ebx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      eax, edx
mov     edx, ebx
or      edx, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      edx, eax
xor     ebx, ebx
mov     bx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, ebx
or      eax, edx
xor     ebx, ebx
mov     bx, si
test    ebx, eax
jz      loc_4AC014
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
test    eax, eax
jnz     loc_4AC014
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     loc_4AC01E
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4AC01E
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4AC01E
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4AC014
cmp     byte ptr [ecx+177h], 0
jnz     loc_4AC014
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     loc_4AC01E
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     loc_4AC01E
cmp     byte ptr [ecx+0Bh], 0
jz      short loc_4ABFE6
mov     ax, [ecx+124h]
test    ebx, eax
jz      short loc_4AC014
xor     eax, eax
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC01E
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     byte ptr [ecx+112h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ABFE6:
mov     ax, [ecx+126h]
test    ebx, eax
jz      short loc_4AC014
xor     eax, eax
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC01E
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     byte ptr [ecx+112h], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AC014:
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_4AC01E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ABEC2 endp

db 8Dh, 40h, 0
jpt_4AC05E dd offset loc_4AC065 ; jump table for switch statement
dd offset loc_4AC134
dd offset loc_4AC26B
dd offset loc_4AC382



sub_4AC036 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     bx, [eax+11Ch]
mov     di, [eax+11Eh]
mov     al, [eax+112h]
cmp     al, 3           ; switch 4 cases
ja      def_4AC05E      ; jumptable 004AC05E default case
and     eax, 0FFh
jmp     jpt_4AC05E[eax*4] ; switch jump

loc_4AC065:             ; jumptable 004AC05E case 0
xor     eax, eax
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      edx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     esi, esi
mov     si, [ecx+12Eh]
or      eax, esi
or      eax, edx
xor     esi, esi
mov     si, [ecx+138h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      eax, esi
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      short loc_4AC12B
mov     edx, 1
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     dx, [ecx+124h]
mov     ax, bx
test    eax, edx
jz      short loc_4AC12B
xor     eax, eax
mov     ax, [ecx+134h]
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      loc_4A9BA7
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
jmp     loc_4A9BA7

loc_4AC12B:
mov     byte ptr [ecx+9], 0
jmp     loc_4AC370

loc_4AC134:             ; jumptable 004AC05E case 1
xor     edx, edx
mov     dx, [ecx+124h]
xor     eax, eax
mov     ax, [ecx+126h]
or      eax, edx
xor     esi, esi
mov     si, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      edx, esi
or      eax, edx
xor     esi, esi
mov     si, [ecx+138h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      eax, esi
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      def_4AC05E      ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, [ecx+12Eh]
or      eax, edx
xor     edx, edx
mov     dx, bx
mov     esi, edx
and     esi, eax
xor     edx, edx
mov     dx, [ecx+12Ch]
xor     eax, eax
mov     ax, [ecx+12Eh]
or      eax, edx
cmp     esi, eax
jz      def_4AC05E      ; jumptable 004AC05E default case
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     def_4AC05E      ; jumptable 004AC05E default case
mov     edx, 1
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+134h]
xor     edx, edx
mov     dx, bx
test    edx, eax
jnz     short loc_4AC249
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, bx
test    edx, eax

loc_4AC23E:
jnz     loc_4A9BA7
jmp     def_4AC05E      ; jumptable 004AC05E default case

loc_4AC249:
cmp     ds:byte_77E807, 0
jnz     def_4AC05E      ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     edx, edx
mov     dx, bx
test    edx, eax
jmp     loc_4AC35C

loc_4AC26B:             ; jumptable 004AC05E case 2
xor     eax, eax
mov     ax, [ecx+124h]
xor     esi, esi
mov     si, [ecx+126h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+12Ch]
xor     eax, eax
mov     ax, [ecx+12Eh]
or      eax, edx
or      esi, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      esi, eax
xor     eax, eax
mov     ax, [ecx+13Ah]
xor     edx, edx
mov     dx, [ecx+13Ch]
or      edx, eax
or      esi, edx
and     ebx, 0FFFFh
test    ebx, esi
jz      def_4AC05E      ; jumptable 004AC05E default case
xor     esi, esi
mov     si, di
test    esi, edx
jz      short loc_4AC2E9
test    esi, eax
jz      short loc_4AC2DD
mov     byte ptr [ecx+176h], 2
jmp     def_4AC05E      ; jumptable 004AC05E default case

loc_4AC2DD:
mov     byte ptr [ecx+176h], 1
jmp     def_4AC05E      ; jumptable 004AC05E default case

loc_4AC2E9:
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC344
xor     eax, eax
mov     ax, [ecx+126h]
test    ebx, eax
jnz     loc_4A9BA7
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jmp     loc_4AC23E

loc_4AC344:
cmp     ds:byte_77E807, 0
jnz     def_4AC05E      ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+126h]

loc_4AC35A:
test    ebx, eax

loc_4AC35C:             ; jumptable 004AC05E default case
jz      def_4AC05E
cmp     byte ptr [ecx+0Ah], 5
jnb     def_4AC05E      ; jumptable 004AC05E default case
mov     byte ptr [ecx+9], 5

loc_4AC370:
mov     word ptr [ecx+0Ah], 0
mov     eax, ecx
call    sub_4B56DA
jmp     loc_4A9BA7

loc_4AC382:             ; jumptable 004AC05E case 3
xor     edx, edx
mov     dx, [ecx+124h]
xor     eax, eax
mov     ax, [ecx+126h]
mov     edi, edx
or      edi, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     esi, esi
mov     si, [ecx+12Eh]
or      eax, esi
or      edi, eax
xor     edx, edx
mov     dx, [ecx+138h]
or      edi, edx
xor     esi, esi
mov     si, [ecx+13Ah]
xor     edx, edx
mov     dx, [ecx+13Ch]
or      edx, esi
or      edx, edi
and     ebx, 0FFFFh
test    ebx, edx
jz      def_4AC05E      ; jumptable 004AC05E default case
mov     edx, ebx
and     edx, eax
cmp     edx, eax
jz      def_4AC05E      ; jumptable 004AC05E default case
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     def_4AC05E      ; jumptable 004AC05E default case
mov     edx, 1
mov     eax, ecx
call    sub_4ACF9D
mov     eax, ecx
call    sub_4ACBFA
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC45D
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4A9BA7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     loc_4A9BA7
mov     ax, [ecx+12Eh]
test    ebx, eax
jmp     loc_4AC23E

loc_4AC45D:
cmp     ds:byte_77E807, 0
jnz     short def_4AC05E ; jumptable 004AC05E default case
xor     eax, eax
mov     ax, [ecx+12Eh]
jmp     loc_4AC35A

def_4AC05E:             ; jumptable 004AC05E default case
cmp     byte ptr [ecx+0Ah], 5
jnb     loc_4A9BA7
mov     byte ptr [ecx+0Ah], 5
jmp     loc_4A9BA7
sub_4AC036 endp




sub_4AC487 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ax, [eax+11Ch]
cmp     byte ptr [ecx+0Ah], 3
jnb     short loc_4AC4D5
xor     edx, edx
mov     dx, [ecx+134h]
and     eax, 0FFFFh
test    eax, edx
jnz     short loc_4AC4D5
mov     byte ptr [ecx+54Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     short loc_4AC4D5
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_4AC4D5:
pop     edx
pop     ecx
pop     ebx
retn
sub_4AC487 endp




sub_4AC4D9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     bx, [eax+11Ch]
call    sub_4AD40B
test    eax, eax
jnz     loc_4AC62F
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      edx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     esi, esi
mov     si, [ecx+12Eh]
or      eax, esi
mov     esi, edx
or      esi, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      esi, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      esi, eax
xor     edx, edx
mov     dx, [ecx+128h]
xor     eax, eax
mov     ax, [ecx+12Ah]
or      eax, edx
or      eax, esi
xor     edx, edx
mov     dx, bx
test    edx, eax
jz      loc_4AC62F
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
test    eax, eax
jnz     loc_4AC639
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     loc_4AC639
mov     eax, ecx
call    sub_4AD338
test    eax, eax
jnz     short loc_4AC5D7
xor     edx, edx
mov     eax, ecx
call    sub_4AC963
test    eax, eax
jnz     loc_4AC639
xor     edx, edx
mov     eax, ecx
call    sub_4AC9E2
test    eax, eax
jnz     loc_4AC639
mov     eax, ecx
call    sub_4AC910
test    eax, eax
jnz     loc_4AC639
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AC5D7
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     short loc_4AC639

loc_4AC5D7:
mov     eax, [ecx+171h]
sar     eax, 18h
test    al, 0C0h
jnz     short loc_4AC612
cmp     byte ptr [ecx+177h], 0
jnz     short loc_4AC612
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     short loc_4AC639
xor     edx, edx
mov     eax, ecx
call    sub_4ACB66
test    eax, eax
jnz     short loc_4AC639
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     short loc_4AC639

loc_4AC612:
xor     edx, edx
mov     dx, [ecx+128h]
xor     eax, eax
mov     ax, [ecx+12Ah]
or      edx, eax
xor     eax, eax
mov     ax, bx
test    eax, edx
jnz     short loc_4AC639

loc_4AC62F:
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_4AC639:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4AC4D9 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_13]



sub_4AC63E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     si, [eax+11Ch]
xor     eax, eax
mov     ax, [ecx+124h]
xor     edx, edx
mov     dx, [ecx+126h]
or      edx, eax
xor     eax, eax
mov     ax, [ecx+12Ch]
xor     ebx, ebx
mov     bx, [ecx+12Eh]
or      eax, ebx
mov     ebx, edx
or      ebx, eax
xor     eax, eax
mov     ax, [ecx+138h]
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+13Ah]
xor     eax, eax
mov     ax, [ecx+13Ch]
or      eax, edx
or      ebx, eax
xor     edx, edx
mov     dx, [ecx+130h]
xor     eax, eax
mov     ax, [ecx+132h]
or      eax, edx
or      eax, ebx
xor     ebx, ebx
mov     bx, si
test    ebx, eax
jz      loc_4AC71F
xor     edx, edx
mov     eax, ecx
call    sub_4ACF9D
test    eax, eax
jnz     short loc_4AC71F
mov     eax, ecx
call    sub_4ACBC7
test    eax, eax
jnz     short loc_4AC729
mov     eax, ecx
call    sub_4AC87D
test    eax, eax
jnz     short loc_4AC729
xor     edx, edx
mov     eax, ecx
call    sub_4AC8BD
test    eax, eax
jnz     short loc_4AC729
xor     edx, edx
mov     eax, ecx
call    sub_4ACA61
test    eax, eax
jnz     short loc_4AC729
xor     edx, edx
mov     dx, [ecx+130h]
mov     ax, [ecx+132h]
or      eax, edx
mov     edx, ebx
and     edx, eax
cmp     edx, eax
jz      short loc_4AC71F
xor     eax, eax
mov     ax, [ecx+134h]
test    ebx, eax
jnz     short loc_4AC729

loc_4AC71F:
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_4AC729:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AC63E endp




sub_4AC72E proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4ACD0C
test    eax, eax
jnz     short loc_4AC767
cmp     byte ptr [ecx+74h], 0
jnz     short loc_4AC752
cmp     byte ptr [ecx+0Ah], 1
jnz     short loc_4AC752
mov     eax, ecx
call    sub_4ACC2D
test    eax, eax
jnz     short loc_4AC767

loc_4AC752:
cmp     byte ptr [ecx+112h], 2
jz      short loc_4AC767
mov     edx, 2
mov     eax, ecx
call    sub_4ACF9D

loc_4AC767:
pop     edx
pop     ecx
sub_4AC72E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_14]



sub_4AC76A proc near

; FUNCTION CHUNK AT 004ACC85 SIZE 00000087 BYTES

cmp     byte ptr [eax+0Ah], 2
jnz     short nullsub_14
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ax, [eax+11Ch]
mov     bx, [edx+11Eh]
xor     ecx, ecx
mov     cx, [edx+138h]
and     ebx, 0FFFFh
test    ebx, ecx
jz      loc_4ACD05
xor     ebx, ebx
mov     bx, [edx+12Ah]
xor     ecx, ecx
mov     cx, [edx+12Eh]
or      ecx, ebx
xor     ebx, ebx
mov     bx, ax
test    ebx, ecx
jnz     loc_4ACC85
mov     ecx, 1
jmp     loc_4ACC87
sub_4AC76A endp




sub_4AC7C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 1
jnz     short loc_4AC831
mov     eax, [esi+78h]
mov     edx, [eax+8]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
add     edx, 20h ; ' '
sub     eax, edx
mov     edx, [esi+14h]
sar     edx, 10h
cmp     edx, eax
jle     short loc_4AC831
mov     byte ptr [esi+9], 7
mov     word ptr [esi+0Ah], 4
mov     byte ptr [esi+75h], 1
mov     al, [esi+75h]
mov     [esi+74h], al
mov     word ptr [esi+44h], 0FFD6h
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     eax, esi
call    sub_4B570A
mov     ecx, 1
xor     ebx, ebx
mov     edx, 12h
mov     eax, esi
call    sub_4B520D

loc_4AC831:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AC7C6 endp




sub_4AC836 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     bx, [eax+11Ch]
xor     edx, edx
call    sub_4ACF9D
cmp     ds:byte_77E807, 1
jz      short loc_4AC879
xor     eax, eax
mov     ax, [ecx+140h]
test    ebx, eax
jnz     short loc_4AC879
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
call    sub_42A43B
mov     word ptr [ecx+108h], 0

loc_4AC879:
pop     edx
pop     ecx
pop     ebx
sub_4AC836 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_15]



sub_4AC87D proc near
push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+124h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4AC8B8
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jz      short loc_4AC8B8
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4AC8B8:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4AC87D endp




sub_4AC8BD proc near
push    ecx
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4AC8CB
test    edx, edx
jnz     short loc_4AC8D4

loc_4AC8CB:
mov     dx, [eax+11Ch]
jmp     short loc_4AC8DB

loc_4AC8D4:
mov     dx, [eax+11Eh]

loc_4AC8DB:
xor     ecx, ecx
mov     cx, [eax+126h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4AC90C
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jz      short loc_4AC90C
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 100h
mov     eax, 1
pop     ecx
retn

loc_4AC90C:
xor     eax, eax
pop     ecx
retn
sub_4AC8BD endp




sub_4AC910 proc near
push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+124h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4AC95E
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4AC95E
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4AC95E:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4AC910 endp




sub_4AC963 proc near
push    ebx
push    ecx
push    esi
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4AC973
test    edx, edx
jnz     short loc_4AC97C

loc_4AC973:
mov     dx, [eax+11Ch]
jmp     short loc_4AC983

loc_4AC97C:
mov     dx, [eax+11Eh]

loc_4AC983:
xor     ebx, ebx
mov     bx, [eax+12Ch]
xor     ecx, ecx
mov     cx, [eax+12Eh]
or      ecx, ebx
and     edx, 0FFFFh
mov     esi, edx
and     esi, ecx
cmp     esi, ecx
jz      short loc_4AC9DC
test    edx, ebx
jz      short loc_4AC9DC
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4AC9DC
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 1
mov     eax, 1
pop     esi
pop     ecx
pop     ebx
retn

loc_4AC9DC:
xor     eax, eax
pop     esi
pop     ecx
pop     ebx
retn
sub_4AC963 endp




sub_4AC9E2 proc near
push    ebx
push    ecx
push    esi
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4AC9F2
test    edx, edx
jnz     short loc_4AC9FB

loc_4AC9F2:
mov     dx, [eax+11Ch]
jmp     short loc_4ACA02

loc_4AC9FB:
mov     dx, [eax+11Eh]

loc_4ACA02:
xor     ecx, ecx
mov     cx, [eax+12Ch]
xor     ebx, ebx
mov     bx, [eax+12Eh]
or      ecx, ebx
and     edx, 0FFFFh
mov     esi, edx
and     esi, ecx
cmp     esi, ecx
jz      short loc_4ACA5B
test    edx, ebx
jz      short loc_4ACA5B
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4ACA5B
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 3
mov     eax, 1
pop     esi
pop     ecx
pop     ebx
retn

loc_4ACA5B:
xor     eax, eax
pop     esi
pop     ecx
pop     ebx
retn
sub_4AC9E2 endp




sub_4ACA61 proc near
push    ecx
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4ACA6F
test    edx, edx
jnz     short loc_4ACA78

loc_4ACA6F:
mov     dx, [eax+11Ch]
jmp     short loc_4ACA7F

loc_4ACA78:
mov     dx, [eax+11Eh]

loc_4ACA7F:
xor     ecx, ecx
mov     cx, [eax+126h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACAC3
xor     ecx, ecx
mov     cx, [eax+134h]
test    edx, ecx
jnz     short loc_4ACAC3
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     dl, [eax+112h]
mov     [eax+113h], dl
mov     byte ptr [eax+112h], 2
mov     eax, 1
pop     ecx
retn

loc_4ACAC3:
xor     eax, eax
pop     ecx
retn
sub_4ACA61 endp




sub_4ACAC7 proc near
push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+134h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACB1A
test    byte ptr [eax+16Bh], 2
jz      short loc_4ACB1A
mov     dh, [eax+54Ah]
inc     dh
mov     [eax+54Ah], dh
cmp     dh, 8
jbe     short loc_4ACB21
cmp     byte ptr [eax+54Bh], 0
jnz     short loc_4ACB21
mov     byte ptr [eax+9], 3
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACB1A:
mov     byte ptr [eax+54Ah], 0

loc_4ACB21:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACAC7 endp




sub_4ACB26 proc near
push    ebx
push    ecx
push    edx
mov     bx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+128h]
xor     ecx, ecx
mov     cx, [eax+12Ah]
or      ecx, edx
xor     edx, edx
mov     dx, bx
test    edx, ecx
jz      short loc_4ACB60
mov     byte ptr [eax+9], 4
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4ACB60:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4ACB26 endp




sub_4ACB66 proc near
push    ebx
push    ecx
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_4ACB75
test    edx, edx
jnz     short loc_4ACB7E

loc_4ACB75:
mov     dx, [eax+11Ch]
jmp     short loc_4ACB85

loc_4ACB7E:
mov     dx, [eax+11Eh]

loc_4ACB85:
xor     ecx, ecx
mov     cx, [eax+134h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACBC2
xor     ecx, ecx
mov     cx, [eax+130h]
xor     ebx, ebx
mov     bx, [eax+132h]
or      ecx, ebx
test    edx, ecx
jz      short loc_4ACBC2
mov     byte ptr [eax+9], 6
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_4ACBC2:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_4ACB66 endp




sub_4ACBC7 proc near
push    ecx
push    edx
mov     dx, [eax+11Eh]
xor     ecx, ecx
mov     cx, [eax+138h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACBF5
mov     byte ptr [eax+9], 7
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACBF5:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACBC7 endp




sub_4ACBFA proc near
push    ecx
push    edx
mov     dx, [eax+11Eh]
xor     ecx, ecx
mov     cx, [eax+138h]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACC28
mov     byte ptr [eax+9], 8
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACC28:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACBFA endp




sub_4ACC2D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     cx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+128h]
xor     ebx, ebx
mov     bx, [eax+12Ah]
mov     esi, edx
or      esi, ebx
and     ecx, 0FFFFh
and     ecx, esi
cmp     ecx, edx
jnz     short loc_4ACC6E
mov     byte ptr [eax+9], 9
mov     word ptr [eax+0Ah], 0

loc_4ACC64:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ACC6E:
cmp     ecx, ebx
jnz     short loc_4ACC7E
mov     byte ptr [eax+9], 9
mov     word ptr [eax+0Ah], 100h
jmp     short loc_4ACC64

loc_4ACC7E:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ACC2D endp

; START OF FUNCTION CHUNK FOR sub_4AC76A

loc_4ACC85:
xor     ecx, ecx

loc_4ACC87:
xor     esi, esi
mov     si, [edx+128h]
xor     ebx, ebx
mov     bx, [edx+12Ch]
or      ebx, esi
xor     esi, esi
mov     si, ax
test    esi, ebx
jnz     short loc_4ACCAB
mov     ebx, 1
jmp     short loc_4ACCAD

loc_4ACCAB:
xor     ebx, ebx

loc_4ACCAD:
cmp     ecx, ebx
jz      short loc_4ACCDA
xor     ecx, ecx
mov     cx, [edx+128h]
xor     ebx, ebx
mov     bx, [edx+12Ch]
or      ecx, ebx
and     eax, 0FFFFh
test    eax, ecx
jz      short loc_4ACCE3

loc_4ACCCE:
mov     byte ptr [edx+9], 9
mov     word ptr [edx+0Ah], 0
jmp     short loc_4ACCED

loc_4ACCDA:
call    rand_
test    al, 1
jnz     short loc_4ACCCE

loc_4ACCE3:
mov     byte ptr [edx+9], 9
mov     word ptr [edx+0Ah], 100h

loc_4ACCED:
mov     byte ptr [edx+168h], 0
mov     byte ptr [edx+169h], 0
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ACD05:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4AC76A



sub_4ACD0C proc near

var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
lea     edi, [esp+34h+var_2C]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, esp
lea     esi, [esp+34h+var_2C]
movsd
movsd
cmp     byte ptr [eax+74h], 0
jz      loc_4ACF24
cmp     word ptr [ebp+46h], 0
jle     loc_4ACF24
mov     eax, [ebp+78h]
mov     edx, [eax+8]
sar     edx, 10h
mov     eax, ebp
call    sub_42C592
add     edx, 30h ; '0'
sub     eax, edx
mov     edx, [ebp+14h]
sar     edx, 10h
cmp     edx, eax
jg      loc_4ACF24
mov     eax, ebp
call    sub_42CB2A
mov     ecx, [ebp+54h]
sar     ecx, 10h
mov     edx, [ebp+114h]
sar     edx, 10h
sub     ecx, edx
lea     edx, [ecx+200h]
sar     edx, 0Ah
and     edx, 3
mov     [esp+34h+var_20], edx
test    byte ptr [esp+34h+var_20], 1
jz      short loc_4ACDFB
mov     edx, ds:dword_564A5A
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ebp+78h]
mov     ax, [eax+4]
add     [esp+34h+var_30], ax
mov     eax, [ebp+78h]
mov     ax, [eax+6]
add     word ptr [esp+34h+var_28], ax
mov     edi, edx
xor     eax, eax
mov     [esp+34h+var_1C], eax
test    byte ptr [esp+34h+var_20], 2
jz      short loc_4ACDE1
mov     eax, [ebp+78h]
mov     ax, [eax+2]
add     eax, edx
inc     eax
mov     ecx, [esp+34h+var_2C]
add     ecx, eax
mov     word ptr [esp+34h+var_2C], cx
mov     [esp+34h+var_34], cx
jmp     loc_4ACE61

loc_4ACDE1:
mov     eax, [ebp+78h]
mov     ax, [eax]
add     eax, edx
dec     eax
mov     ebx, [esp+34h+var_2C]
add     ebx, eax
mov     word ptr [esp+34h+var_2C], bx
mov     [esp+34h+var_34], bx
jmp     short loc_4ACE61

loc_4ACDFB:
mov     edx, ds:dword_564A5E
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ebp+78h]
mov     ax, [eax]
add     [esp+34h+var_34], ax
mov     eax, [ebp+78h]
mov     ax, [eax+2]
add     word ptr [esp+34h+var_2C], ax
xor     edi, edi
mov     [esp+34h+var_1C], edx
test    byte ptr [esp+34h+var_20], 2
jz      short loc_4ACE47
mov     eax, [ebp+78h]
mov     ax, [eax+6]
add     eax, edx
inc     eax
mov     ebx, [esp+34h+var_28]
add     ebx, eax
mov     word ptr [esp+34h+var_28], bx
mov     [esp+34h+var_30], bx
jmp     short loc_4ACE61

loc_4ACE47:
mov     eax, [ebp+78h]
mov     ax, [eax+4]
add     eax, edx
dec     eax
mov     esi, [esp+34h+var_28]
add     esi, eax
mov     word ptr [esp+34h+var_28], si
mov     [esp+34h+var_30], si

loc_4ACE61:
test    edx, edx
jge     short loc_4ACE67
neg     edx

loc_4ACE67:
cmp     edx, 40h ; '@'
jg      loc_4ACF24
sub     [esp+34h+var_32], 98h
sub     word ptr [esp+34h+var_2C+2], 98h
xor     ecx, ecx
mov     cl, [ebp+1]
xor     ebx, ebx
xor     edx, edx
mov     eax, esp
call    sub_42C5B7
mov     esi, eax
mov     [esp+34h+var_24], eax
xor     ecx, ecx
mov     cl, [ebp+1]
xor     ebx, ebx
xor     edx, edx
lea     eax, [esp+34h+var_2C]
call    sub_42C5B7
cmp     esi, eax
jnz     loc_4ACF24
mov     eax, [ebp+14h]
sar     eax, 10h
lea     edx, [eax-68h]
cmp     esi, edx
jge     short loc_4ACF24
sub     eax, 98h
cmp     esi, eax
jle     short loc_4ACF24
add     [ebp+14h], di
mov     eax, [esp+34h+var_1C]
add     [ebp+18h], ax
mov     eax, [esp+34h+var_24]
add     eax, 98h
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+34h+var_20]
shl     eax, 0Ah
mov     [ebp+56h], ax
mov     word ptr [ebp+116h], 0
mov     byte ptr [ebp+112h], 0
mov     eax, offset unk_530558
call    sub_42A7B1
mov     byte ptr [ebp+9], 0Dh
mov     eax, [esp+34h+var_20]
shl     eax, 8
mov     [ebp+0Ah], ax
mov     eax, 1
jmp     short loc_4ACF26

loc_4ACF24:
xor     eax, eax

loc_4ACF26:
add     esp, 1Ch
jmp     loc_4A9BA6
sub_4ACD0C endp




sub_4ACF2E proc near
push    ecx
push    edx
mov     cx, [eax+11Ch]
cmp     ds:byte_77E807, 1
jz      short loc_4ACF53
xor     edx, edx
mov     dx, [eax+140h]
and     ecx, 0FFFFh
test    ecx, edx
jz      short loc_4ACF65

loc_4ACF53:
mov     byte ptr [eax+9], 0Eh
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACF65:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4ACF2E endp

push    ecx
push    edx
mov     dx, [eax+11Ch]
xor     ecx, ecx
mov     cx, [eax+13Eh]
and     edx, 0FFFFh
test    edx, ecx
jz      short loc_4ACF98
mov     byte ptr [eax+9], 5
mov     word ptr [eax+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4ACF98:
xor     eax, eax
pop     edx
pop     ecx
retn



sub_4ACF9D proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 0Ch
mov     esi, eax
mov     edi, edx
mov     ax, [eax+11Ch]
mov     [esp+1Ch+var_14], eax
mov     ecx, [esi+16Dh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     al, ds:byte_550F7C[eax*4]
and     eax, 0FFh
mov     [esp+1Ch+var_18], eax
mov     ecx, [esi+16Eh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     al, ds:byte_550F7C[eax*4]
and     eax, 0FFh
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4AD18B
cmp     byte ptr [esi+177h], 1
jnz     short loc_4AD070
xor     eax, eax
mov     ax, [esi+13Ah]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD02C
mov     al, [esi+176h]
and     al, 3
cmp     al, 2
jnz     short loc_4AD070

loc_4AD02C:
mov     al, [esi+175h]
and     al, 5
cmp     al, 5
jnz     short loc_4AD070
mov     ecx, [esp-2]
sar     ecx, 10h
movsx   ebx, di
xor     edx, edx
mov     eax, esi
call    sub_4AD19C
test    eax, eax
jz      short loc_4AD070

loc_4AD04F:
mov     word ptr [esi+178h], 1
mov     byte ptr [esi+177h], 0
mov     byte ptr [esi+176h], 0
mov     eax, 1
jmp     loc_4AD194

loc_4AD070:
cmp     byte ptr [esi+177h], 2
jnz     short loc_4AD0C8
xor     eax, eax
mov     ax, [esi+13Ch]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD099
mov     al, [esi+176h]
and     al, 3
cmp     al, 1
jnz     short loc_4AD0C8

loc_4AD099:
mov     al, [esi+175h]
and     al, 3
cmp     al, 3
jnz     short loc_4AD0C8
call    sub_4E2440
test    eax, eax
jz      short loc_4AD0C8
mov     ecx, [esp+1Ch+var_1C+2]
sar     ecx, 10h
movsx   ebx, di
mov     edx, 2
mov     eax, esi
call    sub_4AD19C
test    eax, eax
jnz     short loc_4AD04F

loc_4AD0C8:
xor     eax, eax
mov     ax, [esi+13Ah]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD0E8
mov     al, [esi+176h]
and     al, 3
cmp     al, 2
jnz     short loc_4AD12A

loc_4AD0E8:
mov     eax, [esi+16Eh]
sar     eax, 18h
cmp     word ptr [esi+eax*8+5FAh], 0
jle     short loc_4AD12A
mov     al, [esi+175h]
and     al, 5
cmp     al, 5
jnz     short loc_4AD12A
mov     byte ptr [esi+176h], 0
mov     ecx, [esp-2]
sar     ecx, 10h
movsx   ebx, di
mov     edx, 4

loc_4AD11E:
mov     eax, esi
call    sub_4AD19C
jmp     loc_4AD194

loc_4AD12A:
xor     eax, eax
mov     ax, [esi+13Ch]
xor     ecx, ecx
mov     cx, word ptr [esp+1Ch+var_14]
test    ecx, eax
jnz     short loc_4AD14A
mov     al, [esi+176h]
and     al, 3
cmp     al, 1
jnz     short loc_4AD18B

loc_4AD14A:
mov     eax, [esi+16Dh]
sar     eax, 18h
cmp     word ptr [esi+eax*8+5FAh], 0
jle     short loc_4AD18B
mov     al, [esi+175h]
and     al, 3
cmp     al, 3
jnz     short loc_4AD18B
call    sub_4E2440
test    eax, eax
jz      short loc_4AD18B
mov     byte ptr [esi+176h], 0
mov     ecx, [esp+1Ch+var_1C+2]
sar     ecx, 10h
movsx   ebx, di
mov     edx, 6
jmp     short loc_4AD11E

loc_4AD18B:
mov     byte ptr [esi+176h], 0
xor     eax, eax

loc_4AD194:
add     esp, 0Ch
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4ACF9D endp




sub_4AD19C proc near
push    esi
mov     esi, edx
mov     edx, ebx
cmp     bx, 1
jb      short loc_4AD1B1
jbe     short loc_4AD1B9
cmp     bx, 2
jz      short loc_4AD1CA
jmp     short loc_4AD1D7

loc_4AD1B1:
test    bx, bx
jnz     short loc_4AD1D7
inc     esi
jmp     short loc_4AD1CF

loc_4AD1B9:
test    cx, cx
jnz     short loc_4AD1CF
mov     byte ptr [eax+9], 0
mov     [eax+0Ah], cx

loc_4AD1C6:
xor     eax, eax
pop     esi
retn

loc_4AD1CA:
test    cx, cx
jz      short loc_4AD1C6

loc_4AD1CF:
movsx   edx, si
call    sub_4AD1FE

loc_4AD1D7:
mov     eax, 1
pop     esi
retn
sub_4AD19C endp

jpt_4AD212 dd offset loc_4AD219 ; jump table for switch statement
dd offset loc_4AD224
dd offset loc_4AD22F
dd offset loc_4AD23A
dd offset loc_4AD245
dd offset loc_4AD255
dd offset loc_4AD25E
dd offset loc_4AD26E



sub_4AD1FE proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
cmp     dx, 7           ; switch 8 cases
ja      def_4AD212      ; jumptable 004AD212 default case
xor     eax, eax
mov     ax, dx
jmp     jpt_4AD212[eax*4] ; switch jump

loc_4AD219:             ; jumptable 004AD212 case 0
mov     byte ptr [esi+174h], 86h
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD224:             ; jumptable 004AD212 case 1
mov     byte ptr [esi+174h], 82h
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD22F:             ; jumptable 004AD212 case 2
mov     byte ptr [esi+174h], 45h ; 'E'
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD23A:             ; jumptable 004AD212 case 3
mov     byte ptr [esi+174h], 41h ; 'A'
pop     esi
pop     ecx
pop     ebx
retn

loc_4AD245:             ; jumptable 004AD212 case 4
mov     byte ptr [esi+174h], 86h

loc_4AD24C:
mov     eax, esi
call    sub_4B5741
jmp     short loc_4AD27C

loc_4AD255:             ; jumptable 004AD212 case 5
mov     byte ptr [esi+174h], 82h
jmp     short loc_4AD24C

loc_4AD25E:             ; jumptable 004AD212 case 6
mov     byte ptr [esi+174h], 45h ; 'E'
mov     eax, esi
call    sub_4B57B5
jmp     short loc_4AD27C

loc_4AD26E:             ; jumptable 004AD212 case 7
mov     byte ptr [esi+174h], 41h ; 'A'
mov     eax, esi
call    sub_4B57B5

loc_4AD27C:
mov     [esi+104h], al

def_4AD212:             ; jumptable 004AD212 default case
mov     word ptr [esi+178h], 0
mov     byte ptr [esi+105h], 0
mov     byte ptr [esi+100h], 0
test    byte ptr [esi+174h], 4
jnz     short loc_4AD2C6
mov     al, [esi+0ACh]
cmp     al, [esi+0ADh]
jnz     short loc_4AD2C6
xor     edx, edx
mov     dl, [esi+104h]
mov     ecx, 1
xor     ebx, ebx
mov     eax, esi
call    sub_4B520D

loc_4AD2C6:
pop     esi
pop     ecx
pop     ebx
retn
sub_4AD1FE endp




sub_4AD2CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, [eax+171h]
sar     ecx, 18h
and     ecx, 0C0h
jz      short loc_4AD329
cmp     ecx, 40h ; '@'
jnz     short loc_4AD302
mov     ebx, [eax+16Dh]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F78[edx*4]
ja      short loc_4AD329

loc_4AD302:
cmp     ecx, 80h
jnz     short loc_4AD332
mov     ecx, [eax+16Eh]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     al, [eax+100h]
cmp     al, ds:byte_550F78[edx*4]
jbe     short loc_4AD332

loc_4AD329:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4AD332:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4AD2CA endp




sub_4AD338 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+13Ch]
test    ecx, edx
jz      short loc_4AD36A
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
cmp     ds:byte_550F7C[edx*4], 0
jz      short loc_4AD39A

loc_4AD36A:
xor     ecx, ecx
mov     cx, [eax+11Ch]
xor     edx, edx
mov     dx, [eax+13Ah]
test    ecx, edx
jz      short loc_4AD3A2
mov     edx, [eax+16Eh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:byte_550F7C[eax*4], 0
jnz     short loc_4AD3A2

loc_4AD39A:
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4AD3A2:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4AD338 endp




sub_4AD3A7 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ebx, [eax+171h]
sar     ebx, 18h
and     ebx, 0C0h
cmp     ebx, 40h ; '@'
jnz     short loc_4AD3DA
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
cmp     ds:byte_550F7D[eax*4], 0
jz      short loc_4AD3FC

loc_4AD3DA:
cmp     ebx, 80h
jnz     short loc_4AD405
mov     edx, [edx+16Eh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:byte_550F7D[eax*4], 0
jnz     short loc_4AD405

loc_4AD3FC:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4AD405:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4AD3A7 endp




sub_4AD40B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ebx, [eax+171h]
sar     ebx, 18h
and     ebx, 0C0h
cmp     ebx, 40h ; '@'
jnz     short loc_4AD43E
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
cmp     ds:byte_550F7E[eax*4], 0
jz      short loc_4AD460

loc_4AD43E:
cmp     ebx, 80h
jnz     short loc_4AD469
mov     edx, [edx+16Eh]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
cmp     ds:byte_550F7E[eax*4], 0
jnz     short loc_4AD469

loc_4AD460:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4AD469:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4AD40B endp




sub_4AD46F proc near

var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
xor     edx, edx
mov     [esp+30h+var_1C], edx
call    sub_42ABA2
test    eax, eax
jnz     loc_4AD690
mov     eax, [ebp+171h]
sar     eax, 18h
test    al, 0C0h
jnz     loc_4AD690
cmp     byte ptr [ebp+177h], 0
jnz     loc_4AD690
mov     [esp+30h+var_20], 7FFFh
mov     dx, [ebp+11Ch]
xor     ebx, ebx
mov     [esp+30h+var_2C], bx
mov     [esp+30h+var_2E], bx
mov     [esp+30h+var_30], bx
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF008
mov     word ptr ds:dword_77EA82+2, ax
mov     eax, [ebp+54h]
sar     eax, 10h
call    sub_4EF003
mov     word ptr ds:dword_77EA82, ax
xor     eax, eax
mov     ax, [ebp+136h]
and     edx, 0FFFFh
test    edx, eax
jz      loc_4AD686
cmp     byte ptr [ebp+74h], 0
jnz     loc_4AD686
mov     esi, offset byte_6DD9CC
xor     edi, edi
jmp     short loc_4AD522

loc_4AD516:
inc     edi
add     esi, 4A0h
cmp     edi, 10h
jge     short loc_4AD554

loc_4AD522:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD516
mov     ebx, [esi+10h]
test    ebx, ebx
jz      short loc_4AD516
mov     ecx, ebx
lea     ebx, [esi+54h]
lea     edx, [esi+14h]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD516
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD516
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi
jmp     short loc_4AD516

loc_4AD554:
mov     esi, offset unk_6E23DC
xor     edi, edi
jmp     short loc_4AD569

loc_4AD55D:
inc     edi
add     esi, 734h
cmp     edi, 4
jge     short loc_4AD599

loc_4AD569:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD55D
mov     ecx, [esi+10h]
test    ecx, ecx
jz      short loc_4AD55D
lea     ebx, [esi+54h]
lea     edx, [esi+14h]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD55D
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD55D
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi
jmp     short loc_4AD55D

loc_4AD599:
mov     esi, offset byte_57098C
xor     edi, edi
jmp     short loc_4AD5AE

loc_4AD5A2:
inc     edi
add     esi, 11Ch
cmp     edi, 20h ; ' '
jge     short loc_4AD5E6

loc_4AD5AE:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD5A2
cmp     byte ptr [esi+2], 80h
jnb     short loc_4AD5A2
mov     eax, [esi+10h]
test    eax, eax
jz      short loc_4AD5A2
mov     ecx, eax
lea     ebx, [esi+54h]
lea     edx, [esi+14h]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD5A2
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD5A2
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi
jmp     short loc_4AD5A2

loc_4AD5E6:
mov     esi, offset unk_56FCB4
xor     edi, edi
jmp     short loc_4AD635

loc_4AD5EF:
mov     ax, [esi+1Ch]
mov     [esp+30h+var_28], ax
mov     ax, [esi+1Eh]
mov     [esp+30h+var_26], ax
mov     ax, [esi+20h]

loc_4AD605:
mov     [esp+30h+var_24], ax
mov     ecx, [esi+10h]
mov     ebx, esp
lea     edx, [esp+30h+var_28]
mov     eax, ebp
call    sub_4AD69A
test    eax, eax
jz      short loc_4AD62C
cmp     eax, [esp+30h+var_20]
jnb     short loc_4AD62C
mov     [esp+30h+var_20], eax
mov     [esp+30h+var_1C], esi

loc_4AD62C:
inc     edi
add     esi, 60h ; '`'
cmp     edi, 20h ; ' '
jge     short loc_4AD660

loc_4AD635:
mov     al, [esi]
and     al, 3
cmp     al, 3
jnz     short loc_4AD62C
cmp     dword ptr [esi+10h], 0
jz      short loc_4AD62C
test    byte ptr [esi], 4
jz      short loc_4AD5EF
mov     ax, [esi+48h]
mov     [esp+30h+var_28], ax
mov     ax, [esi+4Ah]
mov     [esp+30h+var_26], ax
mov     ax, [esi+4Ch]
jmp     short loc_4AD605

loc_4AD660:
cmp     [esp+30h+var_20], 0D0h
jnb     short loc_4AD686
mov     eax, [esp+30h+var_20]
mov     [ebp+182h], ax
mov     eax, [esp+30h+var_1C]
mov     [ebp+184h], eax
mov     eax, 1
jmp     short loc_4AD692

loc_4AD686:
mov     dword ptr [ebp+184h], 0

loc_4AD690:
xor     eax, eax

loc_4AD692:
add     esp, 18h
jmp     loc_4A9BA6
sub_4AD46F endp




sub_4AD69A proc near

var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 7Ch
mov     esi, eax
mov     edi, ecx
mov     eax, [ecx]
sar     eax, 10h
movsx   ecx, word ptr [ecx]
add     ecx, eax
shl     ecx, 0Fh
movsx   eax, word ptr [edx]
shl     eax, 10h
mov     [esp+88h+var_58], eax
add     eax, ecx
mov     [esp+88h+var_48], eax
mov     ecx, [edi+2]
sar     ecx, 10h
mov     eax, [edi+4]
sar     eax, 10h
add     ecx, eax
shl     ecx, 0Fh
mov     eax, [edx+2]
sar     eax, 10h
shl     eax, 10h
mov     [esp+88h+var_50], eax
add     eax, ecx
mov     [esp+88h+var_40], eax
mov     eax, [edx]
sar     eax, 10h
shl     eax, 10h
mov     [esp+88h+var_54], eax
mov     [esp+88h+var_44], eax
mov     ecx, [edi]
sar     ecx, 10h
movsx   ebp, word ptr [edi]
lea     edx, [ecx+ebp]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
sub     ebp, eax
mov     [esp+88h+var_20], ebp
sub     ecx, eax
mov     [esp+88h+var_24], ecx
mov     ebp, [edi+2]
sar     ebp, 10h
mov     ecx, [edi+4]
sar     ecx, 10h
lea     edx, [ecx+ebp]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
sub     ebp, eax
mov     [esp+88h+var_28], ebp
sub     ecx, eax        ; int
mov     [esp+88h+var_2C], ecx
mov     edx, esp
mov     eax, ebx
call    sub_4EF638
lea     ebx, [esp+88h+var_58]
lea     edx, [esp+88h+var_48]
mov     eax, esp
call    sub_4DD5E6
xor     ecx, ecx
jmp     short loc_4AD75F

loc_4AD755:
inc     ecx
cmp     ecx, 3
jge     loc_4AD892

loc_4AD75F:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 4
mov     edx, ds:dword_77EA82
sar     edx, 10h
lea     ebx, [eax+50h]
imul    edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     edx, [esi+12h]
sar     edx, 10h
sub     edx, eax
mov     [esp+88h+var_30], edx
mov     edx, dword ptr ds:word_77EA80
sar     edx, 10h
imul    edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ch
sbb     eax, edx
sar     eax, 0Ch
mov     edx, [esi+16h]
sar     edx, 10h
sub     edx, eax
mov     [esp+88h+var_1C], edx
mov     ax, [esi+16h]
mov     [esp+88h+var_10], ax
mov     ebx, [esp+88h+var_48]
sar     ebx, 10h
mov     [esp+88h+var_38], bx
mov     edx, [esp+88h+var_44]
sar     edx, 10h
mov     [esp+88h+var_36], dx
mov     eax, [esp+88h+var_40]
sar     eax, 10h
mov     [esp+88h+var_14], eax
mov     eax, [esp+88h+var_14]
mov     [esp+88h+var_34], ax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, 0Ch
mov     ebp, [esp+56h]
sar     ebp, 10h
mov     [esp+88h+var_18], ebp
sub     ebp, eax
sub     ebp, [esp+88h+var_24]
movsx   ebx, bx
cmp     ebx, ebp
jl      loc_4AD755
mov     ebp, [esp+88h+var_18]
add     ebp, eax
sub     ebp, [esp+88h+var_20]
cmp     ebx, ebp
jg      loc_4AD755
mov     ebx, [esp+88h+var_20+2]
sar     ebx, 10h
mov     ebp, ebx
sub     ebp, eax
sub     ebp, [esp+88h+var_2C]
mov     [esp+88h+var_30], ebp
mov     ebp, [esp+88h+var_18+2]
sar     ebp, 10h
cmp     ebp, [esp+88h+var_30]
jl      loc_4AD755
add     eax, ebx
sub     eax, [esp+88h+var_28]
cmp     eax, ebp
jl      loc_4AD755
mov     ebx, [edi+8]
sar     ebx, 10h
mov     eax, [esp+88h+var_14+2]
sar     eax, 10h
mov     ebp, eax
sub     ebp, ebx
movsx   edx, dx
cmp     edx, ebp
jl      loc_4AD755
mov     ebx, [edi+6]
sar     ebx, 10h
sub     eax, ebx
cmp     edx, eax
jg      loc_4AD755
lea     eax, [esi+14h]
lea     edx, [esp+88h+var_38]
call    sub_4DD69F
jmp     short loc_4AD894

loc_4AD892:
xor     eax, eax

loc_4AD894:
add     esp, 7Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4AD69A endp




sub_4AD89B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_4A9BA7
mov     esi, [ecx+188h]
lea     eax, [ecx+190h]
mov     ebx, esi
and     ebx, 0FFFFFFh
jnz     short loc_4AD8D1
test    esi, 1000000h
jz      loc_4ADA76

loc_4AD8D1:
test    ebx, ebx
jz      short loc_4AD8ED
mov     edx, [ecx+169h]
sar     edx, 18h
imul    edx, ebx
sar     edx, 2
sub     ebx, edx
jnz     short loc_4AD8ED
mov     ebx, 1

loc_4AD8ED:
mov     dl, [ecx+71h]
test    dl, dl
jg      loc_4AD99B
jnz     short loc_4AD949
cmp     word ptr [eax+6], 0
jz      short loc_4AD90B
lea     edx, [ecx+14h]
call    sub_4DDDB4
jmp     short loc_4AD91E

loc_4AD90B:
mov     edx, [eax+2]
sar     edx, 10h
movsx   eax, word ptr [eax]
call    sub_4EF04B
add     eax, 800h

loc_4AD91E:
mov     edx, [ecx+54h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [ecx+114h]
sar     eax, 10h
add     eax, edx
add     eax, 200h
and     eax, 0FFFh
sar     eax, 0Ah
and     eax, 3
inc     eax
mov     [ecx+71h], al
jmp     short loc_4AD958

loc_4AD949:
mov     al, dl
and     al, 7Fh
cmp     al, 1
jnz     short loc_4AD958
add     byte ptr [ecx+117h], 8

loc_4AD958:
mov     al, [ecx+71h]
and     al, 7Fh
cmp     al, 2
jb      short loc_4AD99B
jbe     short loc_4AD969
cmp     al, 4
jz      short loc_4AD982
jmp     short loc_4AD99B

loc_4AD969:
mov     al, [ecx+112h]
inc     al
and     al, 3
mov     [ecx+112h], al
add     byte ptr [ecx+117h], 4
jmp     short loc_4AD99B

loc_4AD982:
mov     al, [ecx+112h]
dec     al
and     al, 3
mov     [ecx+112h], al
sub     word ptr [ecx+116h], 400h

loc_4AD99B:
mov     byte ptr [ecx+174h], 0
mov     byte ptr [ecx+177h], 0
test    esi, 1000000h
jz      short loc_4AD9B8
mov     eax, ebx
call    sub_436916

loc_4AD9B8:
test    esi, 40000000h
jz      short loc_4AD9C5
call    sub_436984

loc_4AD9C5:
xor     eax, eax
call    sub_436916
test    eax, eax
jnz     short loc_4AD9D9
call    sub_436966
test    eax, eax
jz      short loc_4ADA2A

loc_4AD9D9:
mov     dx, [ecx+6Eh]
test    dx, dx
jle     short loc_4AD9FC
mov     eax, edx
sub     eax, ebx
mov     [ecx+6Eh], ax
test    ax, ax
jg      short loc_4ADA04
mov     word ptr [ecx+6Eh], 0
call    sub_436984
jmp     short loc_4ADA04

loc_4AD9FC:
mov     edi, edx
sub     edi, ebx
mov     [ecx+6Eh], di

loc_4ADA04:
mov     eax, [ecx+167h]
sar     eax, 18h
shl     eax, 4
add     [ecx+73h], bl
mov     edx, [ecx+70h]
sar     edx, 18h
add     eax, 10h
cmp     edx, eax
jle     short loc_4ADA3F
mov     byte ptr [ecx+9], 0Ch
mov     byte ptr [ecx+0Ah], 1
jmp     short loc_4ADA48

loc_4ADA2A:
cmp     word ptr [ecx+6Eh], 0
jle     short loc_4ADA3A
mov     eax, ebx
call    sub_436916
jmp     short loc_4ADA3F

loc_4ADA3A:
call    sub_436984

loc_4ADA3F:
mov     edx, esi
mov     eax, ecx
call    sub_4ADAA5

loc_4ADA48:
call    rand_
xor     al, al
and     ah, 1
sub     eax, 80h
add     [ecx+56h], ax
mov     al, [ecx+71h]
and     al, 7Fh
cmp     al, 1
jnz     short loc_4ADA6D
mov     [ecx+0Bh], al
jmp     loc_4A9BA7

loc_4ADA6D:
mov     byte ptr [ecx+0Bh], 0
jmp     loc_4A9BA7

loc_4ADA76:
mov     dl, [ecx+9]
cmp     dl, 0Bh
jz      loc_4A9BA7
cmp     dl, 0Ch
jz      loc_4A9BA7
mov     bl, [ecx+73h]
sub     bl, 4
mov     [ecx+73h], bl
test    bl, bl
jge     loc_4A9BA7
mov     byte ptr [ecx+73h], 0
jmp     loc_4A9BA7
sub_4AD89B endp




sub_4ADAA5 proc near
cmp     byte ptr [eax+74h], 0
jnz     short loc_4ADABA
test    edx, 41000000h
jnz     short loc_4ADABA
cmp     word ptr [eax+6Eh], 0
jg      short loc_4ADAC3

loc_4ADABA:
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
retn

loc_4ADAC3:
cmp     byte ptr [eax+9], 0Bh
jnz     short loc_4ADACF
cmp     byte ptr [eax+0Ah], 2
jb      short locret_4ADAD7

loc_4ADACF:
mov     byte ptr [eax+9], 0Bh
mov     byte ptr [eax+0Ah], 0

locret_4ADAD7:
retn
sub_4ADAA5 endp




sub_4ADAD8 proc near
push    ebx
push    edx
push    esi
push    edi
mov     edx, eax
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
mov     al, [eax+0ACh]
mov     [edx+0ADh], al
mov     ax, [edx+6Eh]
mov     [edx+0B2h], ax
mov     al, [edx+74h]
mov     [edx+75h], al
mov     al, [edx+76h]
mov     [edx+77h], al
mov     eax, edx
call    sub_42DE56
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
mov     al, [edx+9]
test    al, al
ja      short loc_4ADB3B
mov     byte ptr ds:dword_77E784, 9
xor     bl, bl
mov     byte ptr ds:dword_77E784+1, bl
inc     byte ptr [edx+9]

loc_4ADB3B:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4ADAD8 endp

db 8Bh, 0C0h
jpt_4ADB6C dd offset loc_4ADB73 ; jump table for switch statement
dd offset loc_4ADB9D
dd offset loc_4ADBAF
dd offset loc_4ADC66



sub_4ADB52 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     dl, [eax+9]
cmp     dl, 3           ; switch 4 cases
ja      def_4ADB6C      ; jumptable 004ADB6C default case
and     edx, 0FFh
jmp     jpt_4ADB6C[edx*4] ; switch jump

loc_4ADB73:             ; jumptable 004ADB6C case 0
lea     edi, [ebp+538h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+528h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+540h]
lea     esi, [ebp+54h]
movsd
movsd
mov     byte ptr [eax+548h], 0FFh

loc_4ADB9D:             ; jumptable 004ADB6C case 1
mov     eax, ebp
call    sub_4B56DA
mov     byte ptr [ebp+0BDh], 40h ; '@'
mov     byte ptr [ebp+9], 2

loc_4ADBAF:             ; jumptable 004ADB6C case 2
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
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl
lea     edi, [ebp+14h]
lea     esi, [ebp+538h]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+528h]
movsd
movsd
movsd
movsd
lea     edi, [ebp+54h]
lea     esi, [ebp+540h]
movsd
movsd
and     byte ptr [ebp+0BDh], 0F7h
cmp     byte ptr [ebp+548h], 0FFh
jz      short loc_4ADC41
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+548h]
jnz     short loc_4ADC24
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4ADC41

loc_4ADC24:
xor     edx, edx
mov     dl, [ebp+548h]
mov     ecx, 1
xor     ebx, ebx
mov     eax, ebp
call    sub_4B520D
mov     byte ptr [ebp+548h], 0FFh

loc_4ADC41:
mov     edx, [ebp+0A3h]
sar     edx, 18h
test    dl, 80h
jz      def_4ADB6C      ; jumptable 004ADB6C default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4
jmp     def_4ADB6C      ; jumptable 004ADB6C default case

loc_4ADC66:             ; jumptable 004ADB6C case 3
call    sub_4B570A
mov     dword ptr [ebp+8], 1
mov     byte ptr [ebp+0BDh], 8
jmp     def_4ADB6C      ; jumptable 004ADB6C default case
sub_4ADB52 endp




sub_4ADC7E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4ADC84[edx*4]
pop     edx
retn
sub_4ADC7E endp




sub_4ADC8D proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
cmp     byte ptr [eax+3], 0FEh
jnz     short loc_4ADCA7
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+3], 0C2h
jmp     short loc_4ADCAB

loc_4ADCA7:
mov     byte ptr [ecx+0Ch], 1

loc_4ADCAB:
cmp     byte ptr [ecx+0Eh], 0
jz      short loc_4ADCB6
or      byte ptr [ecx], 82h
jmp     short loc_4ADCB9

loc_4ADCB6:
or      byte ptr [ecx], 2

loc_4ADCB9:
lea     edx, [ecx+54h]
mov     al, [ecx+3]
and     al, 0Fh
and     eax, 0FFh
mov     [esp+18h+var_18], eax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ebx, [esp+18h+var_18]
shl     ebx, 4
mov     ax, ds:word_53066C[ebx+eax*4]
mov     [edx], ax
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 2
mov     eax, [esp+18h+var_18]
shl     eax, 4
mov     ax, ds:word_53066E[ebx+eax]
mov     [edx+2], ax
mov     dword ptr [ecx+50h], 2808080h
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+4Eh], 0
lea     eax, [ecx+18h]
call    sub_4EF184
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     bh, [ecx+3]
test    bh, 80h
jz      short loc_4ADD39
xor     ebx, ebx
mov     [esp+18h+var_18], ebx
jmp     loc_4ADDDA

loc_4ADD39:
test    bh, 20h
jz      short loc_4ADD9A
lea     edx, [ecx+48h]
mov     eax, 0A4h
call    sub_4D8BC3
mov     byte ptr [ecx+0Ch], 0
mov     [esp+18h+var_18], 2
mov     eax, 1Eh
call    sub_42A701
call    sub_4DE13B
test    eax, eax
jz      short loc_4ADD7C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 5
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd

loc_4ADD7C:
call    sub_4DE13B
test    eax, eax
jz      short loc_4ADDDA
mov     byte ptr [eax], 45h ; 'E'
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
jmp     short loc_4ADDDA

loc_4ADD9A:
mov     al, bh
and     al, 0Fh
and     eax, 0FFh
mov     [esp+18h+var_18], eax
cmp     eax, 5
jb      short loc_4ADDB2
jbe     short loc_4ADDDA
cmp     eax, 6
jmp     short loc_4ADDB5

loc_4ADDB2:
cmp     eax, 4

loc_4ADDB5:
jz      short loc_4ADDDA
mov     edx, [ecx+48h]
sar     edx, 10h
lea     eax, [ecx+48h]
call    sub_42C7E7
sub     eax, edx
cmp     eax, 1Eh
jge     short loc_4ADDD3
xor     eax, eax
mov     [esp+18h+var_18], eax
jmp     short loc_4ADDDA

loc_4ADDD3:
mov     [esp+18h+var_18], 1

loc_4ADDDA:
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     al, ds:byte_530740[eax]
mov     [ecx+2], al
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 80h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 0
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4ADE10
lea     edx, [ecx+48h]
mov     eax, 0A1h
call    sub_4D8BC3

loc_4ADE10:
add     esp, 4
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ADC8D endp




sub_4ADE19 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax        ; int
xor     edx, edx
mov     dl, [eax+9]     ; int
call    ds:funcs_4ADE24[edx*4]
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_53073C[eax]
and     eax, 0FFh
mov     dl, [ecx+0Eh]
lea     esi, [ecx+48h]
or      eax, 10000000h
cmp     dl, 1
jb      short loc_4ADE57
jbe     loc_4ADF99
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ADE57:
test    dl, dl
jnz     loc_4ADFCB
mov     dl, [ecx+3]
test    dl, 40h
jz      short loc_4ADE93
push    80h
push    0
push    eax
push    offset unk_55CD08
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ecx, 0A000h
jmp     loc_4ADFC0

loc_4ADE93:
cmp     dl, 6
jnz     loc_4ADF8F
cmp     byte ptr [ecx+0Fh], 0
jz      loc_4ADF62
mov     edx, [ecx+46h]
sar     edx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
sub     eax, edx
mov     edx, [ecx+48h]
sar     edx, 10h
mov     esi, ds:dword_5F8376+2
sar     esi, 10h
sub     esi, edx
mov     edx, esi
mov     esi, [ecx+4Ah]
sar     esi, 10h
mov     ebx, ds:dword_5F837A
sar     ebx, 10h
sub     ebx, esi
mov     esi, ebx
imul    eax, eax
imul    edx, edx
add     eax, edx
imul    esi, ebx
add     esi, eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
imul    edx, eax
cmp     esi, edx
ja      loc_4ADFCB
cmp     ds:byte_5F83D8, 0
jnz     loc_4ADFCB
or      ds:byte_5F84EF, 10h
mov     al, [ecx+0Fh]
cmp     al, 2
jb      short loc_4ADF26
jbe     short loc_4ADF2D
cmp     al, 3
jz      short loc_4ADF34

loc_4ADF26:
mov     eax, 20h ; ' '
jmp     short loc_4ADF39

loc_4ADF2D:
mov     eax, 30h ; '0'
jmp     short loc_4ADF39

loc_4ADF34:
mov     eax, 40h ; '@'

loc_4ADF39:
mov     edx, dword ptr ds:unk_5F84EC
and     edx, 0FFFFFFh
add     edx, eax
mov     eax, dword ptr ds:unk_5F84EC
and     eax, 0FF000000h
or      eax, edx
or      eax, 1000000h
mov     dword ptr ds:unk_5F84EC, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4ADF62:
push    80h
push    0
push    31000000h

loc_4ADF6E:
push    offset unk_55CD08
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ecx, 0C000h
jmp     short loc_4ADFC0

loc_4ADF8F:
push    80h
push    0
push    eax
jmp     short loc_4ADF6E

loc_4ADF99:
push    80h
push    0
push    eax
push    offset unk_55CD08
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ecx, 4000h

loc_4ADFC0:
xor     ebx, ebx
mov     edx, eax
mov     eax, esi
call    sub_4E01FC

loc_4ADFCB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4ADE19 endp

db 8Bh, 0C0h
jpt_4AE008 dd offset def_4AE008 ; jump table for switch statement
dd offset loc_4AE0B5
dd offset loc_4AE139
dd offset def_4AE008
dd offset loc_4AE195
dd offset loc_4AE1E9
dd offset loc_4AE226



; int __fastcall sub_4ADFEE(int, int)
sub_4ADFEE proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
add     eax, 54h ; 'T'
mov     dl, [ecx+3]
and     dl, 0Fh
cmp     dl, 6           ; switch 7 cases
ja      short def_4AE008 ; jumptable 004AE008 default case, cases 0,3
and     edx, 0FFh
jmp     jpt_4AE008[edx*4] ; switch jump

def_4AE008:             ; jumptable 004AE008 default case, cases 0,3
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 0
jg      short loc_4AE07E
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_5306DA[ebx*8]
sar     ebx, 10h
mov     edx, [ecx+4Ch]
sar     edx, 10h
cmp     edx, ebx
jge     short loc_4AE04D

loc_4AE03F:
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE04D:
mov     word ptr [eax+2], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     dx, word ptr ds:dword_5306DE[edx*8]
mov     [eax], dx
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, ds:dword_5306DE[eax*8]
sar     eax, 10h
mov     esi, [ecx+4Ch]
sar     esi, 10h
cmp     esi, eax
jle     short loc_4AE085

loc_4AE07E:
mov     eax, 80h
jmp     short loc_4AE099

loc_4AE085:
mov     edx, esi
sub     edx, ebx
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    eax, eax
jge     short loc_4AE099
xor     eax, eax

loc_4AE099:
mov     edx, eax

loc_4AE09B:
or      edx, 2000000h
mov     ebx, eax
shl     ebx, 8

loc_4AE0A6:
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+50h], edx
jmp     loc_4AE290

loc_4AE0B5:             ; jumptable 004AE008 case 1
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
test    si, si
jle     loc_4AE03F
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_5306FA[ebx*8]
sar     ebx, 10h
cmp     word ptr [eax], 0
jg      short loc_4AE0F4
mov     eax, [ecx+4Ch]
sar     eax, 10h
cmp     eax, ebx
jle     short loc_4AE0FB

loc_4AE0F4:
mov     eax, 80h
jmp     short loc_4AE127

loc_4AE0FB:
mov     edx, ebx
sub     edx, eax
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, 60h ; '`'
sub     edx, eax
mov     eax, edx
cmp     edx, 0FFh
jle     short loc_4AE121
mov     eax, 0FFh
jmp     short loc_4AE127

loc_4AE121:
test    edx, edx
jge     short loc_4AE127
xor     eax, edx

loc_4AE127:
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
jmp     loc_4AE0A6

loc_4AE139:             ; jumptable 004AE008 case 2
mov     dx, [eax+2]
mov     si, [eax]
add     esi, edx
mov     [eax], si
add     [ecx+4Eh], si
cmp     word ptr [eax], 0
jle     loc_4AE03F
mov     eax, [ecx+0Ah]
sar     eax, 18h
shl     eax, 3
mov     edx, ds:dword_53071A[eax]
sar     edx, 10h
mov     ebx, [ecx+4Ch]
sar     ebx, 10h
cmp     ebx, edx
jle     short loc_4AE0F4
mov     al, ds:byte_53071E[eax]
mov     dh, [ecx+0Ah]
add     dh, al
mov     [ecx+0Ah], dh
cmp     dh, 80h
ja      short loc_4AE191
xor     eax, eax
mov     al, dh
mov     edx, 80h
sub     edx, eax
mov     eax, edx
jmp     short loc_4AE127

loc_4AE191:
xor     eax, eax
jmp     short loc_4AE127

loc_4AE195:             ; jumptable 004AE008 case 4
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
cmp     word ptr [eax], 0
jg      loc_4AE07E
cmp     si, 64h ; 'd'
jge     short loc_4AE1C4
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]

loc_4AE1C4:
mov     word ptr [eax+2], 0
mov     word ptr [eax], 0FFECh
cmp     word ptr [ecx+4Eh], 400h
jg      loc_4AE07E
mov     eax, [ecx+4Ch]
sar     eax, 10h
sar     eax, 3
jmp     loc_4AE099

loc_4AE1E9:             ; jumptable 004AE008 case 5
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 82h
jge     short loc_4AE203
inc     byte ptr [ecx+0Ah]

loc_4AE203:
cmp     byte ptr [ecx+0Ah], 8
jb      short loc_4AE210
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Ah], 8

loc_4AE210:
xor     eax, eax
mov     al, [ecx+0Ah]
mov     edx, 8
sub     edx, eax
shl     edx, 4
mov     eax, edx
jmp     loc_4AE09B

loc_4AE226:             ; jumptable 004AE008 case 6
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
cmp     si, 800h
jle     short loc_4AE265
mov     ah, [ecx+0Ah]
add     ah, 0Ah
mov     [ecx+0Ah], ah
cmp     ah, 80h
ja      short loc_4AE261
xor     eax, eax
mov     al, [ecx+0Ah]
mov     edx, 80h
sub     edx, eax
mov     eax, edx
jmp     short loc_4AE26A

loc_4AE261:
xor     eax, eax
jmp     short loc_4AE26A

loc_4AE265:
mov     eax, 80h

loc_4AE26A:
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
or      ebx, edx
mov     edx, eax
shl     edx, 10h
or      ebx, edx
mov     [ecx+50h], ebx
test    eax, eax
jnz     short loc_4AE290
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]

loc_4AE290:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3B0
fst     dword ptr [ecx+38h]
fst     dword ptr [ecx+28h]
fstp    dword ptr [ecx+18h]
inc     byte ptr [ecx+0Bh]
xor     eax, eax
mov     al, [ecx+0Bh]
shl     eax, 7
call    sub_4EF50D
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4ADFEE endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_76]


; Attributes: thunk

sub_4AE2C1 proc near
jmp     sub_4DE3EA
sub_4AE2C1 endp




sub_4AE2C6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE2CC[edx*4]
pop     edx
retn
sub_4AE2C6 endp




sub_4AE2D5 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+14h]
mov     dword ptr [eax+3Ch], 2808080h
mov     edx, [eax]
mov     edx, [edx+70h]
mov     edx, [edx+10h]
mov     [eax+40h], edx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
pop     edx
pop     ecx
retn
sub_4AE2D5 endp




sub_4AE308 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    edx
sub     esp, 10h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE31A
inc     byte ptr [eax+8]

loc_4AE31A:
lea     ecx, [eax+14h]
mov     edx, 1115h
mov     [esp+18h+var_10], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_18], edx
add     eax, 18h
mov     edx, esp
call    sub_4EF689
sub     dword ptr [ecx+3Ch], 80808h
add     esp, 10h
pop     edx
pop     ecx
sub_4AE308 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_77]



sub_4AE344 proc near
mov     byte ptr [eax], 0
jmp     sub_4DE3EA
sub_4AE344 endp




sub_4AE34C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE352[edx*4]
pop     edx
retn
sub_4AE34C endp




sub_4AE35B proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     dword ptr [edx+14h], 3D48002Eh
mov     dword ptr [edx+18h], 2E808080h
mov     al, ds:byte_530770
mov     [edx+22h], al
mov     al, ds:byte_530771
mov     [edx+23h], al
xor     ah, ah
mov     al, ds:byte_530782
mov     [edx+24h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
mov     al, ds:byte_53077C
mov     [edx+0Bh], al
mov     [edx+0Ah], ah
mov     [edx+9], ah
inc     byte ptr [edx+8]
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4AE3BF
add     edx, 1Ch
mov     eax, 9Bh
call    sub_4D8BC3

loc_4AE3BF:
pop     edx
retn
sub_4AE35B endp




sub_4AE3C1 proc near
push    ebx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_4AE417
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_4AE3E5
call    sub_4DE3EA
pop     edx
pop     ebx
retn

loc_4AE3E5:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_53077C[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_530770[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_530771[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
mov     dl, ds:byte_530782[edx]
xor     dh, dh
mov     [eax+24h], dx

loc_4AE417:
pop     edx
pop     ebx
retn
sub_4AE3C1 endp




sub_4AE41A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE420[edx*4]
pop     edx
retn
sub_4AE41A endp

align 2
jpt_4AE466 dd offset def_4AE466 ; jump table for switch statement
dd offset loc_4AE475
dd offset loc_4AE48A
dd offset loc_4AE49F



sub_4AE43A proc near
push    edx
or      byte ptr [eax], 2
or      byte ptr [eax+6], 20h
mov     dword ptr [eax+14h], 3D48002Eh
mov     dword ptr [eax+18h], 2E404040h
mov     byte ptr [eax+22h], 20h ; ' '
mov     byte ptr [eax+23h], 0
mov     dl, [eax+3]
cmp     dl, 3           ; switch 4 cases
ja      short def_4AE466 ; jumptable 004AE466 default case, case 0
and     edx, 0FFh
jmp     jpt_4AE466[edx*4] ; switch jump

def_4AE466:             ; jumptable 004AE466 default case, case 0
mov     word ptr [eax+24h], 0Dh
jmp     short loc_4AE4A5

loc_4AE475:             ; jumptable 004AE466 case 1
mov     word ptr [eax+24h], 20h ; ' '
mov     dl, ds:byte_530798
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 1
jmp     short loc_4AE4B2

loc_4AE48A:             ; jumptable 004AE466 case 2
mov     word ptr [eax+24h], 40h ; '@'
mov     dl, ds:byte_53079C
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 2
jmp     short loc_4AE4B2

loc_4AE49F:             ; jumptable 004AE466 case 3
mov     word ptr [eax+24h], 80h

loc_4AE4A5:
mov     dl, ds:byte_530794
mov     [eax+0Bh], dl
mov     byte ptr [eax+3], 0

loc_4AE4B2:
mov     byte ptr [eax+0Ah], 0
inc     byte ptr [eax+8]
pop     edx
retn
sub_4AE43A endp




sub_4AE4BB proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE4C8
jbe     short loc_4AE4DD
jmp     short loc_4AE4E3

loc_4AE4C8:
test    dl, dl
jnz     short loc_4AE4E3
dec     word ptr [eax+1Eh]
inc     word ptr [eax+24h]

loc_4AE4D4:
sub     dword ptr [eax+18h], 40404h
jmp     short loc_4AE4F4

loc_4AE4DD:
dec     word ptr [eax+24h]
jmp     short loc_4AE4D4

loc_4AE4E3:
sub     word ptr [eax+1Eh], 5
add     word ptr [eax+24h], 6
add     dword ptr [eax+18h], 40404h

loc_4AE4F4:
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE514
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530795[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 40h ; '@'

loc_4AE514:
pop     edx
retn
sub_4AE4BB endp




sub_4AE516 proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE523
jbe     short loc_4AE531
jmp     short loc_4AE537

loc_4AE523:
test    dl, dl
jnz     short loc_4AE537
dec     word ptr [eax+1Eh]
inc     word ptr [eax+24h]
jmp     short loc_4AE541

loc_4AE531:
dec     word ptr [eax+24h]
jmp     short loc_4AE541

loc_4AE537:
sub     word ptr [eax+1Eh], 5
sub     word ptr [eax+24h], 2

loc_4AE541:
sub     dword ptr [eax+18h], 40404h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE568
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530796[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 60h ; '`'

loc_4AE568:
pop     edx
retn
sub_4AE516 endp




sub_4AE56A proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_4AE577
jbe     short loc_4AE586
jmp     short loc_4AE58C

loc_4AE577:
test    dl, dl
jnz     short loc_4AE58C
sub     word ptr [eax+1Eh], 2
inc     word ptr [eax+24h]
jmp     short loc_4AE596

loc_4AE586:
dec     word ptr [eax+24h]
jmp     short loc_4AE596

loc_4AE58C:
sub     word ptr [eax+1Eh], 5
sub     word ptr [eax+24h], 2

loc_4AE596:
sub     dword ptr [eax+18h], 40404h
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE5BD
xor     edx, edx
mov     dl, [eax+3]
mov     dl, ds:byte_530797[edx*4]
mov     [eax+0Bh], dl
inc     byte ptr [eax+8]
mov     byte ptr [eax+22h], 80h

loc_4AE5BD:
pop     edx
retn
sub_4AE56A endp




sub_4AE5BF proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AE5D1
mov     [eax], dl
call    sub_4DE3EA

loc_4AE5D1:
pop     edx
retn
sub_4AE5BF endp




sub_4AE5D3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE5D9[edx*4]
pop     edx
retn
sub_4AE5D3 endp




sub_4AE5E2 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 22h
mov     [edx], ah
mov     dword ptr [edx+14h], 3D48002Eh
mov     dword ptr [edx+18h], 2E208080h
mov     al, ds:byte_5307B4
mov     [edx+22h], al
mov     al, ds:byte_5307B5
mov     [edx+23h], al
cmp     byte ptr [edx+3], 0
jnz     short loc_4AE615
mov     byte ptr [edx+0Ch], 0Ch

loc_4AE615:
mov     eax, [edx+9]
sar     eax, 18h
xor     ecx, ecx
mov     cl, ds:byte_5307C6
imul    eax, ecx
sar     eax, 4
mov     [edx+24h], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
mov     al, ds:byte_5307C0
mov     [edx+0Bh], al
mov     [edx+0Ah], ah
mov     [edx+9], ah
inc     byte ptr [edx+8]
pop     edx
pop     ecx
retn
sub_4AE5E2 endp




sub_4AE64E proc near
push    ebx
push    ecx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_4AE6B2
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_4AE674
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE674:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_5307C0[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_5307B4[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_5307B5[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
xor     ecx, ecx
mov     cl, ds:byte_5307C6[edx]
mov     edx, [eax+9]
sar     edx, 18h
imul    edx, ecx
sar     edx, 4
mov     [eax+24h], dx

loc_4AE6B2:
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE64E endp




sub_4AE6B6 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE6BC[edx*4]
pop     edx
retn
sub_4AE6B6 endp




sub_4AE6C5 proc near
push    ebx
push    ecx
push    edx
or      byte ptr [eax], 22h
xor     ecx, ecx
mov     cl, [eax+3]
cmp     ecx, 10h
jb      short loc_4AE6EA
mov     word ptr [eax+24h], 40h ; '@'
mov     dh, [eax+3]
sub     dh, 10h
mov     [eax+3], dh
xor     ecx, ecx
mov     cl, dh
jmp     short loc_4AE6FE

loc_4AE6EA:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_5307E2[edx*4]
xor     dh, dh
mov     [eax+24h], dx

loc_4AE6FE:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     ecx, ds:dword_5307D8[edx*4]
mov     [eax+14h], ecx
mov     ecx, ds:dword_5307DC[edx*4]
mov     [eax+18h], ecx
mov     bl, ds:byte_5307E0[edx*4]
mov     [eax+22h], bl
mov     bl, ds:byte_5307E1[edx*4]
mov     [eax+23h], bl
mov     byte ptr [eax+0Ah], 0
mov     dl, ds:byte_5307E3[edx*4]
mov     [eax+8], dl
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE6C5 endp




sub_4AE73F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+28h]
cmp     dword ptr [eax+40h], 0FFFFh
jnz     short loc_4AE759
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4AE759:
mov     byte ptr [eax+22h], 0A0h
mov     byte ptr [eax+23h], 40h ; '@'
mov     ah, [eax+8]
inc     ah
mov     [ecx+8], ah
cmp     word ptr [ecx+24h], 40h ; '@'
jb      short loc_4AE7CD
mov     edx, [ebx+6]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Ah]
sar     edx, 10h
sub     edx, eax
mov     [ecx+1Ch], dx
mov     edx, [ebx+8]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Ch]
sar     edx, 10h
sub     edx, eax
mov     [ecx+1Eh], dx
mov     edx, [ebx+0Ah]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 8
sbb     eax, edx
sar     eax, 8
mov     edx, [ecx+1Eh]
sar     edx, 10h
sub     edx, eax
mov     [ecx+20h], dx

loc_4AE7CD:
shr     word ptr [ecx+24h], 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE73F endp




sub_4AE7D5 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+28h]
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [edx+26h], ax
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Ah], 10h
mov     eax, [edx+40h]
call    sub_4EF008
neg     eax
shl     eax, 3
sar     eax, 0Ch
mov     [ecx+8], ax
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 14h
mov     [ecx+0Ah], ax
mov     eax, [edx+40h]
call    sub_4EF003
neg     eax
shl     eax, 3
sar     eax, 0Ch
mov     [ecx+0Ch], ax
mov     word ptr [ecx+4], 0
mov     ax, [ecx+4]
mov     [ecx], ax
mov     word ptr [ecx+2], 5
pop     edx
pop     ecx
retn
sub_4AE7D5 endp




sub_4AE83E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
xor     ecx, ecx
mov     cl, [eax+1]
add     eax, 1Ch
xor     ebx, ebx
mov     edx, eax
call    sub_42CE61
test    eax, eax
jnz     short loc_4AE8CB
mov     dword ptr [esi+14h], 3D48002Eh
mov     al, [esi+0Ah]
shl     eax, 3
mov     edx, eax
or      edx, 2E000000h
mov     ecx, eax
shl     ecx, 8
or      ecx, edx
shl     eax, 10h
or      ecx, eax
mov     [esi+18h], ecx
lea     eax, [esi+28h]
mov     cl, [esi+0Ah]
mov     dl, cl
dec     dl
mov     [esi+0Ah], dl
test    cl, cl
jz      short loc_4AE8CB
mov     cx, [eax]
mov     dx, [eax+8]
add     edx, ecx
mov     [eax+8], dx
add     [esi+1Ch], dx
mov     cx, [eax+2]
mov     di, [eax+0Ah]
add     edi, ecx
mov     [eax+0Ah], di
add     [esi+1Eh], di
mov     cx, [eax+4]
mov     bx, [eax+0Ch]
add     ebx, ecx
mov     [eax+0Ch], bx
add     [esi+20h], bx
add     word ptr [esi+26h], 8
jmp     short loc_4AE8CE

loc_4AE8CB:
inc     byte ptr [esi+8]

loc_4AE8CE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE83E endp



; Attributes: thunk

sub_4AE8D4 proc near
jmp     sub_4DE3EA
sub_4AE8D4 endp




sub_4AE8D9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
inc     byte ptr [eax+8]
lea     edx, [eax+1Ch]
mov     eax, 121h
call    sub_4D8BC3
pop     edx
retn
sub_4AE8D9 endp




sub_4AE90A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
inc     byte ptr [eax+8]
pop     edx
retn
sub_4AE90A endp




sub_4AE92E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:dword_5307DC[edx*4]
mov     [eax+22h], dl
xor     edx, edx
mov     dl, [eax+8]
mov     dl, byte ptr ds:(dword_5307DC+2)[edx*4]
mov     [eax+23h], dl
mov     byte ptr [eax+8], 4
pop     edx
retn
sub_4AE92E endp




sub_4AE953 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AE959[edx*4]
pop     edx
retn
sub_4AE953 endp




sub_4AE962 proc near
push    ecx
push    edx
mov     ecx, eax
call    rand_
test    al, 1
jz      short loc_4AE972
or      byte ptr [ecx], 2

loc_4AE972:
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
lea     edx, [ecx+48h]
mov     eax, 9Bh
call    sub_4D8BC3
mov     eax, ecx
call    sub_4AEBBB
mov     eax, ecx
call    sub_4AEC4A
pop     edx
pop     ecx
retn
sub_4AE962 endp




; int __fastcall sub_4AE99D(int, int)
sub_4AE99D proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; float
push    ebp             ; int
sub     esp, 10h
mov     ebp, eax
lea     edi, [esp+28h+var_20]
lea     esi, [ebp+48h]
movsd
movsd
mov     ax, [eax+42h]
mov     dx, [ebp+3Ch]
add     edx, eax
mov     [ebp+3Ch], dx
add     [ebp+48h], dx
mov     ax, [ebp+44h]
mov     cx, [ebp+3Eh]
add     ecx, eax
mov     [ebp+3Eh], cx
add     [ebp+4Ah], cx
mov     ax, [ebp+46h]
mov     di, [ebp+40h]
add     edi, eax
mov     [ebp+40h], di
add     [ebp+4Ch], di
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
mov     eax, ebp
call    sub_4AEBBB
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_5308D8
add     ecx, eax
mov     ebx, 1
lea     edx, [esp+28h+var_20]
mov     eax, esp
call    sub_42DF6E
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4AEAB4
mov     eax, [esp+28h+var_28]
mov     [ebp+48h], ax
mov     eax, [esp+28h+var_28+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+28h+var_24]
mov     [ebp+4Ch], ax
test    dh, 10h
jz      short loc_4AEAAA
mov     eax, [ebp+3Ch]
sar     eax, 10h
sar     eax, 1
sar     word ptr [ebp+4Eh], 1
cmp     eax, 1
jg      short loc_4AEAA6
mov     word ptr [ebp+3Eh], 0
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 1
mov     dword ptr [ebp+34h], 0
mov     eax, [ebp+34h]
mov     [ebp+30h], eax
mov     eax, [ebp+30h]
mov     [ebp+2Ch], eax
mov     eax, [ebp+2Ch]
mov     [ebp+24h], eax
mov     eax, [ebp+24h]
mov     [ebp+20h], eax
mov     eax, [ebp+20h]
mov     [ebp+1Ch], eax
fild    word ptr [ebp+4Eh]
fmul    ds:dbl_50A3B8
fst     dword ptr [ebp+38h]
fst     dword ptr [ebp+28h]
fstp    dword ptr [ebp+18h]
lea     edx, [ebp+18h]
mov     eax, [ebp+0Ah]
sar     eax, 10h
call    sub_4EF50D

loc_4AEAA6:
sar     word ptr [ebp+3Eh], 1

loc_4AEAAA:
lea     eax, [ebp+3Ch]
mov     edx, ecx
call    sub_42D90F

loc_4AEAB4:
mov     eax, ebp
call    sub_4AEC4A
add     esp, 10h
pop     ebp

loc_4AEABF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AE99D endp




sub_4AEAC5 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AEAD4
add     byte ptr [eax+8], 2

loc_4AEAD4:
pop     edx
retn
sub_4AEAC5 endp




sub_4AEAD6 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4AEAE4
inc     byte ptr [eax+8]

loc_4AEAE4:
pop     edx
retn
sub_4AEAD6 endp



; Attributes: thunk

sub_4AEAE6 proc near
jmp     sub_4DE3EA
sub_4AEAE6 endp




sub_4AEAEB proc near
inc     byte ptr [eax+8]
mov     word ptr [eax+3Eh], 0FFD8h
mov     word ptr [eax+44h], 5
retn
sub_4AEAEB endp




; int __fastcall sub_4AEAFB(int, int)
sub_4AEAFB proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     dword ptr [eax+34h], 0
mov     edx, [eax+34h]
mov     [eax+30h], edx
mov     edx, [eax+30h]
mov     [eax+2Ch], edx
mov     edx, [eax+2Ch]
mov     [eax+24h], edx
mov     edx, [eax+24h]
mov     [eax+20h], edx
mov     edx, [eax+20h]
mov     [eax+1Ch], edx
mov     eax, [eax+4Ch]
sar     eax, 10h
sar     eax, 1
mov     [esp+0Ch+var_C], eax ; int
fild    [esp+0Ch+var_C]
fmul    ds:dbl_50A3C0
fst     dword ptr [ecx+38h]
fstp    dword ptr [ecx+18h]
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3C0
fstp    dword ptr [ecx+28h]
lea     edx, [ecx+18h]
mov     eax, 180h
call    sub_4EF50D
mov     ax, [ecx+44h]
mov     dx, [ecx+3Eh]
add     edx, eax
mov     [ecx+3Eh], dx
add     [ecx+4Ah], dx
xor     eax, eax
mov     al, [ecx+0Ah]
mov     ax, ds:word_5308CC[eax*2]
mov     edx, eax
and     edx, 0FFFFh
sar     edx, 3
mov     eax, [ecx+4Ch]
sar     eax, 10h
sub     eax, edx
mov     [ecx+4Eh], ax
cmp     word ptr [ecx+3Eh], 0
jl      short loc_4AEB9A
inc     byte ptr [ecx+8]

loc_4AEB9A:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4AEAFB endp




sub_4AEBA0 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+48h]
mov     eax, 0CFh
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
retn
sub_4AEBA0 endp




sub_4AEBBB proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ebx, eax
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebx+18h]
rep movsd
call    rand_
mov     edx, eax
xor     ah, ah
and     al, 7Fh
add     eax, 80h
mov     cx, [ebx+0Eh]
add     ecx, eax        ; int
mov     [ebx+0Eh], cx
mov     [esp+5Ch+var_1C], cx
xor     dh, dh
and     dl, 3Fh
add     edx, 40h ; '@'
mov     si, [ebx+0Ch]
add     esi, edx
mov     [ebx+0Ch], si
mov     [esp+5Ch+var_1A], si
xor     edi, edi
mov     [esp+5Ch+var_18], di
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF5F7
mov     eax, [ebx+4Ch]
sar     eax, 10h
mov     [esp+38h], eax
mov     [esp+34h], eax
mov     [esp+30h], eax
lea     edx, [esp+30h]
mov     eax, esp
call    sub_4EF689
mov     ecx, 0Ch
lea     edi, [ebx+18h]
mov     esi, esp
rep movsd
add     esp, 48h
jmp     loc_4AEABF
sub_4AEBBB endp




sub_4AEC4A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     edx, edx
mov     dl, [eax+0Ah]
mov     dx, ds:word_530920[edx*2]
and     edx, 0FFFFh
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, ds:dword_5F8376
sar     ebx, 10h
sub     ebx, ecx
add     ebx, edx
lea     ecx, [edx+edx]
lea     esi, [ebx+32h]
lea     ebx, [ecx+64h]
cmp     esi, ebx
ja      short loc_4AECBE
mov     esi, [eax+4Ah]
sar     esi, 10h
mov     edi, ds:dword_5F837A
sar     edi, 10h
sub     edi, esi
add     edi, edx
add     edi, 32h ; '2'
cmp     edi, ebx
ja      short loc_4AECBE
mov     ebx, [eax+48h]
sar     ebx, 10h
mov     esi, ds:dword_5F8376+2
sar     esi, 10h
sub     esi, ebx
lea     ebx, [esi+edx]
add     ecx, 96h
cmp     ebx, ecx
ja      short loc_4AECBE
mov     byte ptr [eax+8], 5

loc_4AECBE:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, ds:dword_5F8A6A
sar     ebx, 10h
sub     ebx, ecx
lea     ecx, [ebx+edx]
lea     ebx, [edx+edx]
lea     esi, [ecx+32h]
lea     ecx, [ebx+64h]
cmp     esi, ecx
ja      loc_4AEABF
mov     esi, [eax+4Ah]
sar     esi, 10h
mov     edi, ds:dword_5F8A6E
sar     edi, 10h
sub     edi, esi
lea     esi, [edi+edx+32h]
cmp     esi, ecx
ja      loc_4AEABF
mov     esi, [eax+48h]
sar     esi, 10h
mov     ecx, ds:dword_5F8A6A+2
sar     ecx, 10h
sub     ecx, esi
add     edx, ecx
add     ebx, 96h
cmp     edx, ebx
ja      loc_4AEABF
mov     byte ptr [eax+8], 5
jmp     loc_4AEABF
sub_4AEC4A endp

db 90h
jpt_4AEF1D dd offset loc_4AEF24 ; jump table for switch statement
dd offset loc_4AEF2D
dd offset loc_4AEF36
dd offset loc_4AEF3F



sub_4AED3B proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
mov     ebp, ebx
mov     [esp+2Ch+var_18], ecx
cmp     edx, 10h
jbe     short loc_4AED57
mov     [esp+2Ch+var_20], 10h
jmp     short loc_4AED5B

loc_4AED57:
mov     [esp+2Ch+var_20], edx

loc_4AED5B:
cmp     [esp+2Ch+var_18], 5
jbe     short loc_4AED6A
mov     [esp+2Ch+var_18], 5

loc_4AED6A:
mov     eax, [esp+2Ch+var_20]
mov     ax, ds:word_53092A[eax*2]
and     eax, 0FFFFh
mov     [esp+2Ch+var_1C], eax
call    rand_
mov     ebx, eax
and     ebx, 0FFFh
xor     esi, esi
mov     [esp+2Ch+var_14], esi

loc_4AED92:
mov     eax, [esp+2Ch+var_14]
cmp     eax, [esp+2Ch+var_20]
jnb     loc_4AEF53
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      def_4AEF1D      ; jumptable 004AEF1D default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+2], 86h
call    rand_
mov     esi, eax
and     esi, 0FFh
mov     eax, ebp
shr     eax, 18h
cmp     eax, esi
jbe     short loc_4AEDDF
mov     dword ptr [edx+54h], offset unk_55CD10
mov     byte ptr [edx+9], 0
jmp     short loc_4AEE45

loc_4AEDDF:
mov     edi, ebp
shr     edi, 10h
and     edi, 0FFh
add     eax, edi
cmp     eax, esi
jbe     short loc_4AEDFD
mov     dword ptr [edx+54h], offset unk_55CD40
mov     byte ptr [edx+9], 1
jmp     short loc_4AEE45

loc_4AEDFD:
mov     edi, ebp
shr     edi, 8
and     edi, 0FFh
add     eax, edi
cmp     eax, esi
jbe     short loc_4AEE1B
mov     dword ptr [edx+54h], offset unk_55CD70
mov     byte ptr [edx+9], 2
jmp     short loc_4AEE45

loc_4AEE1B:
mov     edi, ebp
and     edi, 0FFh
add     eax, edi
cmp     eax, esi
jbe     short loc_4AEE36
mov     dword ptr [edx+54h], offset unk_55CDA0
mov     byte ptr [edx+9], 3
jmp     short loc_4AEE45

loc_4AEE36:
mov     byte ptr [edx+3], 1
mov     dword ptr [edx+54h], offset unk_55CDD0
mov     byte ptr [edx+9], 4

loc_4AEE45:
lea     edi, [ecx+48h]
mov     esi, [esp+2Ch+var_2C]
movsd
movsd
call    rand_
mov     [esp+2Ch+var_28], eax
mov     esi, [esp+2Ch+var_18]
shl     esi, 4
mov     edx, eax
and     edx, 0Fh
mov     dl, ds:byte_53086C[edx+esi]
and     edx, 0FFh
mov     [esp+2Ch+var_24], edx
mov     dl, byte ptr [esp+2Ch+var_24]
mov     [ecx+0Ah], dl
mov     edx, [esp+2Ch+var_24]
mov     si, ds:word_5308CC[edx*2]
mov     [ecx+4Eh], si
mov     esi, [esp+2Ch+var_28]
and     esi, 0FFFh
mov     [ecx+0Ch], si
mov     esi, eax
shr     esi, 4
mov     [ecx+0Eh], si
mov     edi, ds:dword_53094A[edx*2]
sar     edi, 10h
mov     esi, eax
and     esi, 3
add     edi, esi
mov     eax, ebx
call    sub_4EF003
imul    eax, edi
shr     eax, 0Ch
mov     [ecx+3Ch], ax
mov     eax, [esp+2Ch+var_28]
xor     ah, ah
and     al, 3
mov     [esp+2Ch+var_10], eax
mov     ax, ds:word_530958[edx*2]
mov     edi, [esp+2Ch+var_10]
add     eax, edi
mov     [ecx+3Eh], ax
mov     eax, ds:dword_53094A[edx*2]
sar     eax, 10h
add     esi, eax
mov     eax, ebx
call    sub_4EF008
imul    eax, esi
shr     eax, 0Ch
mov     [ecx+40h], ax
mov     word ptr [ecx+42h], 0
mov     word ptr [ecx+44h], 5
mov     word ptr [ecx+46h], 0
call    rand_
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      short def_4AEF1D ; jumptable 004AEF1D default case
jmp     jpt_4AEF1D[eax*4] ; switch jump

loc_4AEF24:             ; jumptable 004AEF1D case 0
mov     dword ptr [ecx+50h], offset unk_606060
jmp     short def_4AEF1D ; jumptable 004AEF1D default case

loc_4AEF2D:             ; jumptable 004AEF1D case 1
mov     dword ptr [ecx+50h], 8080h
jmp     short def_4AEF1D ; jumptable 004AEF1D default case

loc_4AEF36:             ; jumptable 004AEF1D case 2
mov     dword ptr [ecx+50h], 20h ; ' '
jmp     short def_4AEF1D ; jumptable 004AEF1D default case

loc_4AEF3F:             ; jumptable 004AEF1D case 3
mov     dword ptr [ecx+50h], 200000h

def_4AEF1D:             ; jumptable 004AEF1D default case
inc     [esp+2Ch+var_14]
add     ebx, [esp+2Ch+var_1C]
jmp     loc_4AED92

loc_4AEF53:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4AED3B endp

mov     al, [eax+1]
and     eax, 0FFh
jmp     sub_4DD420



sub_4AEF67 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, eax
xor     eax, eax
mov     ax, ds:word_77EAB6
cmp     eax, ds:dword_55CEE4
jz      short loc_4AEF84
call    sub_4AF8A2

loc_4AEF84:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_4AEF8B[ecx*4]
cmp     byte ptr [edx+3], 0
jz      loc_4AF2B1
test    byte ptr [edx], 2
jz      loc_4AF2B1
cmp     byte ptr [edx+8], 5
jnb     loc_4AF2B1
mov     cl, [edx+9]
inc     cl
mov     [edx+9], cl
cmp     cl, 3
jbe     short loc_4AEFC0
mov     byte ptr [edx+9], 0

loc_4AEFC0:
xor     eax, eax
mov     al, [edx+9]
xor     edi, edi
mov     di, ds:word_530BC0[eax*8]
xor     ebx, ebx
mov     bx, ds:word_530BC2[eax*8]
movzx   ebp, ds:word_530BC4[eax*8]
xor     esi, esi
mov     si, ds:word_530BC6[eax*8]
call    sub_4EE133
mov     dword ptr [eax+4], 2C808080h
mov     ecx, [edx+48h]
mov     [eax+8], ecx
mov     ecx, [edx+4Ch]
mov     [eax+10h], ecx
or      edi, 3D080000h
mov     [eax+0Ch], edi
or      ebx, 0E0000h
mov     [eax+14h], ebx
mov     [eax+1Ch], ebp
mov     [eax+24h], esi
mov     dl, [edx+0Ah]
and     edx, 0FFh
mov     dl, ds:byte_530C58[edx]
and     edx, 0FFh
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
jmp     loc_4AF2B1
sub_4AEF67 endp




sub_4AF03F proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
lea     edx, [ecx+48h]
mov     eax, 9Bh
call    sub_4D8BC3
cmp     byte ptr [ecx+3], 0
jz      short loc_4AF073
mov     eax, ecx
call    sub_4AF3C3
jmp     short loc_4AF07A

loc_4AF073:
mov     eax, ecx
call    sub_4AF452

loc_4AF07A:
mov     eax, ecx
call    sub_4AF4A7
mov     byte ptr [ecx+0Bh], 0FFh
pop     edx
pop     ecx
retn
sub_4AF03F endp




; int __fastcall sub_4AF088(int, int)
sub_4AF088 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; float
push    ebp             ; int
sub     esp, 10h
mov     ebp, eax
lea     edi, [esp+28h+var_20]
lea     esi, [ebp+48h]
movsd
movsd
mov     ax, [eax+42h]
mov     dx, [ebp+3Ch]
add     edx, eax        ; int
mov     [ebp+3Ch], dx
add     [ebp+48h], dx
mov     ax, [ebp+44h]
mov     cx, [ebp+3Eh]
add     ecx, eax        ; int
mov     [ebp+3Eh], cx
add     [ebp+4Ah], cx
mov     ax, [ebp+46h]
mov     di, [ebp+40h]
add     edi, eax
mov     [ebp+40h], di
add     [ebp+4Ch], di
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
cmp     byte ptr [ebp+3], 0
jz      short loc_4AF0E8
mov     eax, ebp
call    sub_4AF3C3
jmp     short loc_4AF0EF

loc_4AF0E8:
mov     eax, ebp
call    sub_4AF452

loc_4AF0EF:
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ecx, offset unk_530C5C
add     ecx, eax
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     ecx, eax
mov     ebx, 1
lea     edx, [esp+28h+var_20]
mov     eax, esp
call    sub_42DF6E
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4AF1C5
mov     eax, [esp+28h+var_28]
mov     [ebp+48h], ax
mov     eax, [esp+28h+var_28+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+28h+var_24]
mov     [ebp+4Ch], ax
test    dh, 10h
jnz     short loc_4AF158
mov     dl, [ebp+0Bh]
dec     dl
mov     [ebp+0Bh], dl
jnz     short loc_4AF1BB

loc_4AF158:
mov     eax, [ebp+3Ch]
sar     eax, 10h
sar     eax, 1
cmp     eax, 1
jg      short loc_4AF1B7
mov     word ptr [ebp+3Eh], 0
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 96h
mov     dword ptr [ebp+34h], 0
mov     eax, [ebp+34h]
mov     [ebp+30h], eax
mov     eax, [ebp+30h]
mov     [ebp+2Ch], eax
mov     eax, [ebp+2Ch]
mov     [ebp+24h], eax
mov     eax, [ebp+24h]
mov     [ebp+20h], eax
mov     eax, [ebp+20h]
mov     [ebp+1Ch], eax
fild    word ptr [ebp+4Eh]
fmul    ds:dbl_50A3C8
fst     dword ptr [ebp+38h]
fst     dword ptr [ebp+28h]
fstp    dword ptr [ebp+18h]
lea     edx, [ebp+18h]
mov     eax, [ebp+0Ah]
sar     eax, 10h
call    sub_4EF50D

loc_4AF1B7:
sar     word ptr [ebp+3Eh], 1

loc_4AF1BB:
lea     eax, [ebp+3Ch]
mov     edx, ecx
call    sub_42D90F

loc_4AF1C5:
mov     eax, ebp
call    sub_4AF4A7
add     esp, 10h
jmp     loc_4AF2B1
sub_4AF088 endp




sub_4AF1D4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4AF1F8
inc     byte ptr [ebp+8]
call    rand_
and     al, 7
add     al, 1Eh
mov     [ebp+0Bh], al

loc_4AF1F8:
xor     edx, edx
mov     dl, [ebp+3]
mov     ecx, edx
shl     ecx, 2
sub     ecx, edx
shl     ecx, 4
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
lea     edx, [ecx+eax]
mov     esi, ds:dword_530C64[edx]
sar     esi, 10h
mov     ebx, [ebp+3Ch]
sar     ebx, 10h
mov     edx, offset unk_530C5C
add     edx, ecx
add     edx, eax
lea     eax, [ebp+48h]
mov     ecx, 0FFFFh
call    sub_42C5B7
dec     eax
sub     eax, esi
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
mov     edx, [ebp+48h]
sar     edx, 10h
cmp     edx, eax
jge     short loc_4AF264
mov     ax, [ebp+44h]
mov     dx, [ebp+3Eh]
add     edx, eax
mov     [ebp+3Eh], dx
add     [ebp+4Ah], dx

loc_4AF264:
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     ecx, offset unk_530C5C
add     ecx, eax
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     ecx, eax
lea     eax, [ebp+48h]
mov     ebx, 1
mov     edx, esp
call    sub_42DF6E
mov     eax, ebp
call    sub_4AF4A7
cmp     byte ptr [ebp+3], 0
jnz     short loc_4AF2AE
mov     eax, ebp
call    sub_4AF452

loc_4AF2AE:
add     esp, 8

loc_4AF2B1:
pop     ebp

loc_4AF2B2:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AF1D4 endp




sub_4AF2B8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     ah, [eax]
xor     ah, 2
mov     [ebp+0], ah
mov     dl, [ebp+0Bh]
dec     dl
mov     [ebp+0Bh], dl
jnz     loc_4AF1F8
inc     byte ptr [ebp+8]
jmp     loc_4AF1F8
sub_4AF2B8 endp



; Attributes: thunk

sub_4AF2E1 proc near
jmp     sub_4DE3EA
sub_4AF2E1 endp




sub_4AF2E6 proc near
inc     byte ptr [eax+8]
mov     word ptr [eax+3Eh], 0FFD8h
mov     word ptr [eax+44h], 5
retn
sub_4AF2E6 endp




; int __fastcall sub_4AF2F6(int, int)
sub_4AF2F6 proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
mov     dword ptr [eax+34h], 0
mov     edx, [eax+34h]
mov     [eax+30h], edx
mov     edx, [eax+30h]
mov     [eax+2Ch], edx
mov     edx, [eax+2Ch]
mov     [eax+24h], edx
mov     edx, [eax+24h]
mov     [eax+20h], edx
mov     edx, [eax+20h]
mov     [eax+1Ch], edx
mov     eax, [eax+4Ch]
sar     eax, 10h
sar     eax, 1
mov     [esp+0Ch+var_C], eax ; int
fild    [esp+0Ch+var_C]
fmul    ds:dbl_50A3D0
fst     dword ptr [ecx+38h]
fstp    dword ptr [ecx+18h]
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3D0
fstp    dword ptr [ecx+28h]
lea     edx, [ecx+18h]
mov     eax, 180h
call    sub_4EF50D
mov     ax, [ecx+44h]
mov     dx, [ecx+3Eh]
add     edx, eax
mov     [ecx+3Eh], dx
add     [ecx+4Ah], dx
xor     eax, eax
mov     al, [ecx+0Ah]
mov     ax, ds:word_530C50[eax*2]
mov     edx, eax
and     edx, 0FFFFh
sar     edx, 3
mov     eax, [ecx+4Ch]
sar     eax, 10h
sub     eax, edx
mov     [ecx+4Eh], ax
cmp     word ptr [ecx+3Eh], 0
jl      short loc_4AF395
inc     byte ptr [ecx+8]

loc_4AF395:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4AF2F6 endp




sub_4AF39B proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+48h]
cmp     byte ptr [eax+3], 0
jz      short loc_4AF3AF
mov     eax, 9Eh
jmp     short loc_4AF3B4

loc_4AF3AF:
mov     eax, 9Dh

loc_4AF3B4:
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
retn
sub_4AF39B endp




sub_4AF3C3 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ebx, eax
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebx+18h]
rep movsd
call    rand_
mov     edx, eax
xor     ah, ah
and     al, 7Fh
add     eax, 80h
mov     cx, [ebx+0Eh]
add     ecx, eax        ; int
mov     [ebx+0Eh], cx
mov     [esp+5Ch+var_1C], cx
xor     dh, dh
and     dl, 3Fh
add     edx, 40h ; '@'
mov     si, [ebx+0Ch]
add     esi, edx
mov     [ebx+0Ch], si
mov     [esp+5Ch+var_1A], si
xor     edi, edi
mov     [esp+5Ch+var_18], di
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF5F7
mov     eax, [ebx+4Ch]
sar     eax, 10h
mov     [esp+38h], eax
mov     [esp+34h], eax
mov     [esp+30h], eax
lea     edx, [esp+30h]
mov     eax, esp
call    sub_4EF689
mov     ecx, 0Ch
lea     edi, [ebx+18h]
mov     esi, esp
rep movsd
add     esp, 48h
jmp     loc_4AF2B2
sub_4AF3C3 endp




; int __fastcall sub_4AF452(int, int)
sub_4AF452 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     dword ptr [eax+34h], 0
mov     edx, [eax+34h]
mov     [eax+30h], edx
mov     edx, [eax+30h]
mov     [eax+2Ch], edx
mov     edx, [eax+2Ch]
mov     [eax+24h], edx
mov     edx, [eax+24h]
mov     [eax+20h], edx
mov     edx, [eax+20h]
mov     [eax+1Ch], edx
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A3D8
fstp    dword ptr [eax+38h]
mov     edx, [ecx+38h]
mov     [eax+28h], edx
mov     edx, [eax+28h]
mov     [eax+18h], edx
lea     edx, [eax+18h]
mov     eax, [eax+0Ah]
sar     eax, 10h
call    sub_4EF50D
inc     byte ptr [ecx+0Dh]
pop     edx
pop     ecx
retn
sub_4AF452 endp




sub_4AF4A7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
xor     ecx, ecx
mov     cl, [eax+0Ah]
xor     edx, edx
mov     dl, [eax+3]
add     ecx, ecx
mov     dx, ds:word_530CBC[ecx+edx*8]
and     edx, 0FFFFh
mov     ebx, [eax+46h]
sar     ebx, 10h
mov     esi, ds:dword_5F8376
sar     esi, 10h
sub     esi, ebx
add     esi, edx
lea     ebx, [edx+edx]
lea     edi, [esi+32h]
lea     esi, [ebx+64h]
cmp     edi, esi
ja      loc_4AF2B1
mov     edi, [eax+4Ah]
sar     edi, 10h
mov     ebp, ds:dword_5F837A
sar     ebp, 10h
sub     ebp, edi
lea     edi, [edx+ebp+32h]
cmp     edi, esi
ja      loc_4AF2B1
mov     esi, [eax+48h]
sar     esi, 10h
mov     edi, ds:dword_5F8376+2
sar     edi, 10h
sub     edi, esi
add     edx, edi
add     ebx, 96h
cmp     edx, ebx
ja      loc_4AF2B1
mov     byte ptr [eax+8], 5
cmp     byte ptr [eax+3], 0
jnz     short loc_4AF559
mov     eax, ds:dword_77E7DC
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_530CFC[ecx+eax]
and     eax, 0FFFFh
xor     ebx, ebx
xor     edx, edx
call    sub_4B6217
jmp     loc_4AF2B1

loc_4AF559:
mov     eax, ds:dword_77E7DC
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_530D04[ecx+eax]
and     eax, 0FFFFh
xor     edx, edx
call    sub_4B6268
jmp     loc_4AF2B1
sub_4AF4A7 endp




sub_4AF57D proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 20h
push    eax
mov     eax, edx
and     eax, 0FFh
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     [esp+38h+var_2C], ecx
mov     ecx, edx
shr     ecx, 10h
and     ecx, 0FFh
mov     [esp+38h+var_30], ecx
shr     edx, 18h
mov     [esp+38h+var_28], edx
cmp     eax, 10h
jbe     short loc_4AF5C1
mov     [esp+38h+var_20], 10h
jmp     short loc_4AF5C5

loc_4AF5C1:
mov     [esp+38h+var_20], eax

loc_4AF5C5:
mov     eax, [esp+38h+var_20]
mov     ax, ds:word_530CCA[eax*2]
and     eax, 0FFFFh
mov     [esp+38h+var_24], eax
call    rand_
mov     ecx, eax
and     ecx, 0FFFh
xor     ebp, ebp

loc_4AF5E9:
cmp     ebp, [esp+38h+var_20]
jnb     loc_4AF74A
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4AF740
mov     byte ptr [eax], 15h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+2], 87h
call    rand_
mov     byte ptr [edx+9], 0
lea     edi, [edx+48h]
mov     esi, [esp+38h+var_38]
movsd
movsd
sub     word ptr [edx+4Ah], 14h
call    rand_
mov     esi, eax
mov     [esp+38h+var_1C], eax
mov     eax, [esp+38h+var_2C]
shl     eax, 4
mov     ebx, esi
and     ebx, 0Fh
mov     bl, ds:byte_530BE0[ebx+eax]
and     ebx, 0FFh
cmp     ebx, 5
jb      short loc_4AF658
mov     eax, edx
call    sub_4DE3EA
jmp     loc_4AF740

loc_4AF658:
mov     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 2
mov     edi, offset dword_55CE94
add     edi, eax
mov     [edx+54h], edi
mov     [edx+0Ah], bl
mov     ax, ds:word_530C50[ebx*2]
mov     [edx+4Eh], ax
mov     eax, [esp+38h+var_1C]
and     ah, 0Fh
mov     [edx+0Ch], ax
mov     eax, esi
shr     eax, 4
mov     [edx+0Eh], ax
mov     eax, ds:dword_530CEA[ebx*2]
sar     eax, 10h
and     esi, 3
add     eax, esi
mov     [esp+38h+var_34], eax
mov     eax, ecx
call    sub_4EF003
imul    eax, [esp+38h+var_34]
shr     eax, 0Ch
mov     [edx+3Ch], ax
mov     eax, [esp+38h+var_1C]
xor     ah, ah
and     al, 3
mov     [esp+38h+var_18], eax
mov     ax, ds:word_530CF4[ebx*2]
mov     edi, [esp+38h+var_18]
add     eax, edi
mov     [edx+3Eh], ax
mov     eax, ds:dword_530CEA[ebx*2]
sar     eax, 10h
add     esi, eax
mov     eax, ecx
call    sub_4EF008
imul    eax, esi
shr     eax, 0Ch
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     word ptr [edx+44h], 5
mov     word ptr [edx+46h], 0
mov     dword ptr [edx+50h], 2808080h
mov     dword ptr [edx+34h], 0
mov     eax, [edx+34h]
mov     [edx+30h], eax
mov     eax, [edx+30h]
mov     [edx+2Ch], eax
mov     eax, [edx+2Ch]
mov     [edx+24h], eax
mov     eax, [edx+24h]
mov     [edx+20h], eax
mov     eax, [edx+20h]
mov     [edx+1Ch], eax
fild    word ptr [edx+4Eh]
fmul    ds:dbl_50A3E0
fst     dword ptr [edx+38h]
fst     dword ptr [edx+28h]
fstp    dword ptr [edx+18h]

loc_4AF740:
inc     ebp
add     ecx, [esp+38h+var_24]
jmp     loc_4AF5E9

loc_4AF74A:
mov     esi, [esp+38h+var_30]
cmp     esi, 10h
jbe     short loc_4AF75D
mov     [esp+38h+var_20], 10h
jmp     short loc_4AF761

loc_4AF75D:
mov     [esp+38h+var_20], esi

loc_4AF761:
mov     eax, [esp+38h+var_20]
mov     ax, ds:word_530CCA[eax*2]
and     eax, 0FFFFh
mov     [esp+38h+var_24], eax
add     ecx, 800h
and     ecx, 0FFFh
xor     ebp, ebp

loc_4AF784:
cmp     ebp, [esp+38h+var_20]
jnb     loc_4AF899
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4AF88F
mov     byte ptr [eax], 19h
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+2], 87h
call    rand_
mov     dword ptr [edx+54h], offset unk_55CE34
mov     byte ptr [edx+9], 0
lea     edi, [edx+48h]
mov     esi, [esp+38h+var_38]
movsd
movsd
call    rand_
mov     [esp+38h+var_1C], eax
mov     ebx, [esp+38h+var_28]
shl     ebx, 4
mov     esi, eax
and     esi, 0Fh
mov     bl, ds:byte_530BE0[esi+ebx]
and     ebx, 0FFh
cmp     ebx, 5
jb      short loc_4AF7F3
mov     eax, edx
call    sub_4DE3EA
jmp     loc_4AF88F

loc_4AF7F3:
mov     [edx+0Ah], bl
mov     si, ds:word_530C50[ebx*2]
mov     [edx+4Eh], si
mov     esi, [esp+38h+var_1C]
and     esi, 0FFFh
mov     [edx+0Ch], si
mov     esi, eax
shr     esi, 4
mov     [edx+0Eh], si
mov     edi, ds:dword_530CEA[ebx*2]
sar     edi, 10h
mov     esi, eax
and     esi, 3
add     edi, esi
mov     eax, ecx
call    sub_4EF003
imul    eax, edi
shr     eax, 0Ch
mov     [edx+3Ch], ax
mov     eax, [esp+38h+var_1C]
xor     ah, ah
and     al, 3
mov     [esp+38h+var_18], eax
mov     ax, ds:word_530CF4[ebx*2]
mov     edi, [esp+38h+var_18]
add     eax, edi
mov     [edx+3Eh], ax
mov     eax, ds:dword_530CEA[ebx*2]
sar     eax, 10h
add     esi, eax
mov     eax, ecx
call    sub_4EF008
imul    eax, esi
shr     eax, 0Ch
mov     [edx+40h], ax
mov     word ptr [edx+42h], 0
mov     word ptr [edx+44h], 5
mov     word ptr [edx+46h], 0
mov     dword ptr [edx+50h], 2202020h

loc_4AF88F:
inc     ebp
add     ecx, [esp+38h+var_24]
jmp     loc_4AF784

loc_4AF899:
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4AF57D endp




sub_4AF8A2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     eax, eax
mov     ax, ds:word_77EAB6
mov     ds:dword_55CEE4, eax
mov     esi, eax
mov     edx, eax
and     edx, 1Fh
mov     eax, ds:dword_530990[edx*4]
mov     ds:dword_55CE94, eax
lea     eax, [esi+0Ah]
and     eax, 1Fh
mov     ecx, ds:dword_530990[eax*4]
mov     ds:dword_55CE98, ecx
lea     ebx, [esi+14h]
and     ebx, 1Fh
shl     ebx, 2
mov     ecx, ds:dword_530990[ebx]
mov     ds:dword_55CE9C, ecx
lea     ecx, [esi+1Eh]
and     ecx, 1Fh
mov     edi, ds:dword_530990[ecx*4]
mov     ds:dword_55CEA0, edi
add     esi, 28h ; '('
and     esi, 1Fh
mov     edi, ds:dword_530990[esi*4]
mov     ds:dword_55CEA4, edi
mov     edi, ds:dword_530A10[edx*4]
mov     ds:dword_55CEA8, edi
mov     edi, ds:dword_530A10[eax*4]
mov     ds:dword_55CEAC, edi
mov     edi, ds:dword_530A10[ebx]
mov     ds:dword_55CEB0, edi
mov     edi, ds:dword_530A10[ecx*4]
mov     ds:dword_55CEB4, edi
mov     edi, ds:dword_530A10[esi*4]
mov     ds:dword_55CEB8, edi
mov     edi, ds:dword_530A90[edx*4]
mov     ds:dword_55CEBC, edi
mov     edi, ds:dword_530A90[eax*4]
mov     ds:dword_55CEC0, edi
mov     edi, ds:dword_530A90[ebx]
mov     ds:dword_55CEC4, edi
mov     edi, ds:dword_530A90[ecx*4]
mov     ds:dword_55CEC8, edi
mov     edi, ds:dword_530A90[esi*4]
mov     ds:dword_55CECC, edi
mov     edx, ds:dword_530B10[edx*4]
mov     ds:dword_55CED0, edx
mov     eax, ds:dword_530B10[eax*4]
mov     ds:dword_55CED4, eax
mov     eax, ds:dword_530B10[ebx]
mov     ds:dword_55CED8, eax
mov     eax, ds:dword_530B10[ecx*4]
mov     ds:dword_55CEDC, eax
mov     eax, ds:dword_530B10[esi*4]
mov     ds:dword_55CEE0, eax
mov     eax, offset unk_55CE34
xor     ecx, ecx

loc_4AF9D8:
mov     ebx, ds:dword_530B90[ecx*4]
mov     [eax], ebx
mov     [eax+4], ebx
mov     [eax+8], ebx
mov     [eax+0Ch], ebx
inc     ecx
add     eax, 10h
cmp     ecx, 6
jb      short loc_4AF9D8
jmp     loc_4AF2B2
sub_4AF8A2 endp




sub_4AF9F8 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
xor     eax, eax
mov     al, [ecx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_4AFA20
jbe     short loc_4AFA28
cmp     eax, 60h ; '`'
jb      short loc_4AFA6D
jbe     short loc_4AFA42
cmp     eax, 0E0h
jz      short loc_4AFA56
pop     ecx
pop     ebx
retn

loc_4AFA20:
cmp     eax, 20h ; ' '
jz      short loc_4AFA35
pop     ecx
pop     ebx
retn

loc_4AFA28:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
jmp     short loc_4AFA61

loc_4AFA35:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
jmp     short loc_4AFA61

loc_4AFA42:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A110
mov     eax, [edx+eax]
jmp     short loc_4AFA64

loc_4AFA56:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A114

loc_4AFA61:
mov     eax, [edx+eax*4]

loc_4AFA64:
mov     edx, [eax]
mov     eax, ebx
call    sub_4AF57D

loc_4AFA6D:
pop     ecx
pop     ebx
retn
sub_4AF9F8 endp




sub_4AFA70 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
xor     eax, eax
mov     al, [ecx+1]
call    sub_4DD420
mov     edx, ebx
shl     edx, 4
cmp     eax, 40h ; '@'
jb      short loc_4AFA9D
jbe     short loc_4AFAA5
cmp     eax, 60h ; '`'
jb      short loc_4AFAE5
jbe     short loc_4AFABF
cmp     eax, 0E0h
jz      short loc_4AFACC
pop     esi
pop     ecx
retn

loc_4AFA9D:
cmp     eax, 20h ; ' '
jz      short loc_4AFAB2
pop     esi
pop     ecx
retn

loc_4AFAA5:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A108
jmp     short loc_4AFAD7

loc_4AFAB2:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A10C
jmp     short loc_4AFAD7

loc_4AFABF:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A110
jmp     short loc_4AFAD7

loc_4AFACC:
xor     eax, eax
mov     al, [ecx+2]
mov     ecx, ds:dword_55A114

loc_4AFAD7:
mov     eax, [ecx+eax*4]
add     eax, edx
mov     edx, [eax]
mov     eax, esi
call    sub_4AF57D

loc_4AFAE5:
pop     esi
pop     ecx
retn
sub_4AFA70 endp




sub_4AFAE8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4AFAEE[edx*4]
pop     edx
retn
sub_4AFAE8 endp

align 4
jpt_4AFB8E dd offset def_4AFB8E ; jump table for switch statement
dd offset def_4AFB8E
dd offset loc_4AFBA2
dd offset def_4AFB8E
dd offset loc_4AFBA9
dd offset loc_4AFBB0
dd offset loc_4AFBBD



sub_4AFB14 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
cmp     byte ptr [eax+3], 0FFh
jnz     short loc_4AFB63
mov     byte ptr [ecx], 3
mov     eax, [ecx+48h]
mov     [ecx+1Ch], eax
mov     ax, [ecx+4Ch]
mov     [ecx+20h], ax
mov     dword ptr [ecx+18h], 2C808080h
mov     byte ptr [ecx+8], 3
mov     eax, ecx
call    sub_4B0065
lea     eax, [ecx+48h]
mov     ecx, 1
mov     ebx, 40404040h
mov     edx, 3
call    sub_4AED3B
jmp     loc_4AFCEC

loc_4AFB63:
cmp     byte ptr [ecx+3], 0FEh
jnz     short loc_4AFB73
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+3], 0C2h
jmp     short loc_4AFB77

loc_4AFB73:
mov     byte ptr [ecx+0Ch], 1

loc_4AFB77:
or      byte ptr [ecx], 2
lea     eax, [ecx+54h]
mov     dl, [ecx+3]
and     dl, 0Fh
cmp     dl, 6           ; switch 7 cases
ja      short def_4AFB8E ; jumptable 004AFB8E default case, cases 0,1,3
and     edx, 0FFh
jmp     jpt_4AFB8E[edx*4] ; switch jump

def_4AFB8E:             ; jumptable 004AFB8E default case, cases 0,1,3
mov     word ptr [eax], 37h ; '7'

loc_4AFB9A:
mov     word ptr [eax+2], 0FFFBh
jmp     short loc_4AFBC8

loc_4AFBA2:             ; jumptable 004AFB8E case 2
mov     word ptr [eax], 46h ; 'F'
jmp     short loc_4AFB9A

loc_4AFBA9:             ; jumptable 004AFB8E case 4
mov     word ptr [eax], 8Ch
jmp     short loc_4AFB9A

loc_4AFBB0:             ; jumptable 004AFB8E case 5
mov     word ptr [eax], 0AEh
mov     word ptr [eax+2], 0FFFAh
jmp     short loc_4AFBC8

loc_4AFBBD:             ; jumptable 004AFB8E case 6
mov     word ptr [eax], 118h
mov     word ptr [eax+2], 0

loc_4AFBC8:
mov     dword ptr [ecx+50h], 2808080h
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+4Eh], 0
lea     eax, [ecx+18h]
call    sub_4EF184
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     bl, [ecx+3]
test    bl, 80h
jz      short loc_4AFC06
xor     edx, edx
mov     [esp+18h+var_18], edx
jmp     loc_4AFCB8

loc_4AFC06:
test    bl, 20h
jz      short loc_4AFC66
mov     [esp+18h+var_18], 2
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     eax, 1Eh
call    sub_42A701
call    sub_4DE13B
test    eax, eax
jz      short loc_4AFC41
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 5
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd

loc_4AFC41:
call    sub_4DE13B
test    eax, eax
jz      loc_4AFCC1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
jmp     loc_4AFCC1

loc_4AFC66:
mov     al, bl
and     al, 0Fh
cmp     al, 5
jb      short loc_4AFC76
jbe     short loc_4AFC83
cmp     al, 6
jz      short loc_4AFC8C
jmp     short loc_4AFC95

loc_4AFC76:
cmp     al, 4
jnz     short loc_4AFC95
mov     [esp+18h+var_18], 4
jmp     short loc_4AFCB8

loc_4AFC83:
mov     [esp+18h+var_18], 5
jmp     short loc_4AFCB8

loc_4AFC8C:
mov     [esp+18h+var_18], 6
jmp     short loc_4AFCB8

loc_4AFC95:
mov     edx, [ecx+48h]
sar     edx, 10h
lea     eax, [ecx+48h]
call    sub_42C7E7
sub     eax, edx
cmp     eax, 1Eh
jge     short loc_4AFCB1
xor     edi, edi
mov     [esp+18h+var_18], edi
jmp     short loc_4AFCB8

loc_4AFCB1:
mov     [esp+18h+var_18], 1

loc_4AFCB8:
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8

loc_4AFCC1:
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 0
lea     ebx, [ecx+48h]
mov     edx, (offset dword_5F8376+2)
mov     eax, ebx
call    sub_4B0026
mov     [esp+18h+var_18], eax
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4AFCEC
mov     edx, ebx
mov     eax, 0A1h
call    sub_4D8BC3

loc_4AFCEC:
add     esp, 4

loc_4AFCEF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4AFB14 endp




sub_4AFCF5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax        ; int
movzx   esi, byte ptr [eax+9]
call    ds:funcs_4AFCFF[esi*4]
lea     esi, [edx+48h]
mov     ah, [edx+3]
test    ah, 40h
jz      short loc_4AFD40
push    80h
push    0
push    10000008h
push    offset unk_55CEE8
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     edx, [edx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0A000h
jmp     short loc_4AFDA1

loc_4AFD40:
cmp     ah, 6
jnz     short loc_4AFD74
push    80h
push    0
push    30000000h
push    offset unk_55CEE8
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     edx, [edx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0C000h
jmp     short loc_4AFDA1

loc_4AFD74:
push    80h
push    0
push    10000008h
push    offset unk_55CEE8
xor     eax, eax
mov     al, [edx+1]
push    eax
mov     edx, [edx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
mov     ecx, 0C000h

loc_4AFDA1:
xor     ebx, ebx
mov     eax, esi
call    sub_4E01FC
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4AFCF5 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_78]
align 10h
jpt_4AFDE7 dd offset def_4AFDE7 ; jump table for switch statement
dd offset loc_4AFE58
dd offset loc_4AFE94
dd offset def_4AFDE7
dd offset loc_4AFEF3
dd offset loc_4AFF47
dd offset loc_4AFF84



; int __fastcall sub_4AFDCC(int, int)
sub_4AFDCC proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
mov     edx, eax
add     eax, 54h ; 'T'
mov     cl, [edx+3]
and     cl, 0Fh
cmp     cl, 6           ; switch 7 cases
ja      short def_4AFDE7 ; jumptable 004AFDE7 default case, cases 0,3
and     ecx, 0FFh
jmp     jpt_4AFDE7[ecx*4] ; switch jump

def_4AFDE7:             ; jumptable 004AFDE7 default case, cases 0,3
mov     cx, [eax+2]
mov     di, [eax]
add     edi, ecx
mov     [eax], di
mov     bx, [edx+4Eh]
add     ebx, edi
mov     [edx+4Eh], bx
cmp     word ptr [eax], 0
jg      short loc_4AFE37
cmp     bx, 64h ; 'd'
jge     short loc_4AFE19
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFE19:
mov     word ptr [eax+2], 0
mov     word ptr [eax], 0FFF6h
cmp     word ptr [edx+4Eh], 0FFh
jg      short loc_4AFE37
mov     eax, [edx+4Ch]
sar     eax, 10h
sub     eax, 64h ; 'd'
jmp     short loc_4AFE3C

loc_4AFE37:
mov     eax, 80h

loc_4AFE3C:
mov     ebx, eax
or      ebx, 2000000h
mov     ecx, eax
shl     ecx, 8

loc_4AFE49:
or      ecx, ebx
shl     eax, 10h
or      ecx, eax
mov     [edx+50h], ecx
jmp     loc_4AFFEE

loc_4AFE58:             ; jumptable 004AFDE7 case 1
mov     cx, [eax+2]
mov     si, [eax]
add     esi, ecx
mov     [eax], si
mov     di, [edx+4Eh]
add     edi, esi
mov     [edx+4Eh], di
test    di, di
jge     short loc_4AFE7C
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFE7C:
cmp     word ptr [eax], 0
jg      short loc_4AFE37
cmp     word ptr [edx+4Eh], 0FFh
jg      short loc_4AFE37
mov     eax, [edx+4Ch]
sar     eax, 10h
sar     eax, 1
jmp     short loc_4AFE3C

loc_4AFE94:             ; jumptable 004AFDE7 case 2
mov     cx, [eax+2]
mov     si, [eax]
add     esi, ecx
mov     [eax], si
add     [edx+4Eh], si
cmp     word ptr [eax], 0
jg      short loc_4AFEB3
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFEB3:
cmp     word ptr [edx+4Eh], 10Eh
jle     short loc_4AFEDC
mov     cl, [edx+0Ah]
add     cl, 0Eh
mov     [edx+0Ah], cl
cmp     cl, 80h
ja      short loc_4AFED8
xor     eax, eax
mov     al, cl
mov     ecx, 80h
sub     ecx, eax
mov     eax, ecx
jmp     short loc_4AFEE1

loc_4AFED8:
xor     eax, eax
jmp     short loc_4AFEE1

loc_4AFEDC:
mov     eax, 80h

loc_4AFEE1:
mov     ecx, eax
or      ecx, 2000000h
mov     ebx, eax
shl     ebx, 8
jmp     loc_4AFE49

loc_4AFEF3:             ; jumptable 004AFDE7 case 4
mov     bx, [eax+2]
mov     cx, [eax]
add     ecx, ebx
mov     [eax], cx
mov     si, [edx+4Eh]
add     esi, ecx
mov     [edx+4Eh], si
cmp     word ptr [eax], 0
jg      loc_4AFE37
cmp     si, 64h ; 'd'
jge     short loc_4AFF22
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFF22:
mov     word ptr [eax+2], 0
mov     word ptr [eax], 0FFECh
cmp     word ptr [edx+4Eh], 400h
jg      loc_4AFE37
mov     eax, [edx+4Ch]
sar     eax, 10h
sar     eax, 3
jmp     loc_4AFE3C

loc_4AFF47:             ; jumptable 004AFDE7 case 5
mov     bx, [eax+2]
mov     cx, [eax]
add     ecx, ebx
mov     [eax], cx
add     [edx+4Eh], cx
cmp     word ptr [eax], 82h
jge     short loc_4AFF61
inc     byte ptr [edx+0Ah]

loc_4AFF61:
cmp     byte ptr [edx+0Ah], 8
jb      short loc_4AFF6E
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Ah], 8

loc_4AFF6E:
xor     eax, eax
mov     al, [edx+0Ah]
mov     ecx, 8
sub     ecx, eax
mov     eax, ecx
shl     eax, 4
jmp     loc_4AFE3C

loc_4AFF84:             ; jumptable 004AFDE7 case 6
mov     bx, [eax+2]
mov     cx, [eax]
add     ecx, ebx
mov     [eax], cx
mov     si, [edx+4Eh]
add     esi, ecx
mov     [edx+4Eh], si
cmp     si, 800h
jle     short loc_4AFFC3
mov     ah, [edx+0Ah]
add     ah, 0Ah
mov     [edx+0Ah], ah
cmp     ah, 80h
ja      short loc_4AFFBF
xor     eax, eax
mov     al, [edx+0Ah]
mov     ecx, 80h
sub     ecx, eax
mov     eax, ecx
jmp     short loc_4AFFC8

loc_4AFFBF:
xor     eax, eax
jmp     short loc_4AFFC8

loc_4AFFC3:
mov     eax, 80h

loc_4AFFC8:
mov     ebx, eax
or      ebx, 2000000h
mov     ecx, eax
shl     ecx, 8
or      ebx, ecx
mov     ecx, eax
shl     ecx, 10h
or      ebx, ecx
mov     [edx+50h], ebx
test    eax, eax
jnz     short loc_4AFFEE
mov     word ptr [edx+4Eh], 0
inc     byte ptr [edx+8]

loc_4AFFEE:
lea     ecx, [edx+18h]
mov     eax, ecx
call    sub_4EF184
fild    word ptr [edx+4Eh]
fmul    ds:dbl_50A3E8
fst     dword ptr [edx+38h]
fst     dword ptr [edx+28h]
fstp    dword ptr [edx+18h]
inc     byte ptr [edx+0Bh]
xor     eax, eax
mov     al, [edx+0Bh]
shl     eax, 7
mov     edx, ecx
call    sub_4EF50D
jmp     loc_4AFCEF
sub_4AFDCC endp



; Attributes: thunk

sub_4B0021 proc near
jmp     sub_4DE3EA
sub_4B0021 endp




sub_4B0026 proc near
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
sub_4B0026 endp




sub_4B0065 proc near
push    edx
mov     byte ptr [eax+9], 0
mov     dl, ds:byte_530D55
mov     [eax+0Ah], dl
mov     edx, ds:dword_530D50
mov     [eax+14h], edx
mov     dl, ds:byte_530D56
mov     [eax+22h], dl
mov     dl, ds:byte_530D57
mov     [eax+23h], dl
xor     dh, dh
mov     dl, ds:byte_530D54
mov     [eax+24h], dx
pop     edx
retn
sub_4B0065 endp




sub_4B009C proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+0Ah]
dec     dl
mov     [eax+0Ah], dl
jnz     short loc_4B00F5
mov     bl, [eax+9]
inc     bl
mov     [eax+9], bl
xor     edx, edx
mov     dl, bl
shl     edx, 3
mov     bl, ds:byte_530D55[edx]
mov     [eax+0Ah], bl
test    bl, bl
jnz     short loc_4B00CE
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_4B00CE:
mov     ecx, ds:dword_530D50[edx]
mov     [eax+14h], ecx
mov     bl, ds:byte_530D56[edx]
mov     [eax+22h], bl
mov     bl, ds:byte_530D57[edx]
mov     [eax+23h], bl
mov     dl, ds:byte_530D54[edx]
xor     dh, dh
mov     [eax+24h], dx

loc_4B00F5:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B009C endp




sub_4B00F9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B00FF[edx*4]
pop     edx
retn
sub_4B00F9 endp




sub_4B0108 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     ecx, offset byte_5F8364
lea     ebp, [eax+28h]
call    sub_4B04B2
test    al, al
jnz     short loc_4B018A
or      byte ptr [esi+6], 20h
xor     bl, bl
jmp     short loc_4B0133

loc_4B012C:
inc     bl
cmp     bl, 8
jnb     short loc_4B0178

loc_4B0133:
xor     eax, eax
mov     al, bl
xor     edx, edx
mov     dl, bl
add     edx, edx
add     edx, ebp
mov     [edx+10h], ax
cmp     byte ptr [esi+3], 0
jz      short loc_4B016C
mov     ax, [ecx+56h]
add     eax, 80h

loc_4B0152:
mov     [esp+1Ch+var_1C], eax
call    rand_
xor     ah, ah
mov     edi, [esp+1Ch+var_1C]
add     eax, edi
mov     [edx], ax
and     ah, 0Fh
mov     [edx], ax
jmp     short loc_4B012C

loc_4B016C:
mov     ax, [ecx+56h]
sub     eax, 100h
jmp     short loc_4B0152

loc_4B0178:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Dh
call    sub_4D89E4
mov     byte ptr [esi+8], 1

loc_4B018A:
add     esp, 4

loc_4B018D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B0108 endp




sub_4B0194 proc near

var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= word ptr -30h
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 38h
mov     edx, eax
mov     [esp+50h+var_50], offset byte_5F8364
add     eax, 28h ; '('
mov     [esp+50h+var_34], eax
mov     eax, edx
call    sub_4B04B2
test    al, al
jnz     loc_4B0489
cmp     byte ptr [edx+3], 0
jz      short loc_4B01DE
mov     ax, ds:word_5F8864
mov     [edx+1Ch], ax
mov     ax, ds:word_5F8866
mov     [edx+1Eh], ax
mov     ax, ds:word_5F8868
jmp     short loc_4B01F8

loc_4B01DE:
mov     ax, ds:word_5F887C
mov     [edx+1Ch], ax
mov     ax, ds:word_5F887E
mov     [edx+1Eh], ax
mov     ax, ds:word_5F8880

loc_4B01F8:
mov     [edx+20h], ax
xor     bl, bl
mov     [esp+50h+var_1C], bl
jmp     short loc_4B0217

loc_4B0204:
mov     ch, [esp+50h+var_1C]
inc     ch
mov     [esp+50h+var_1C], ch
cmp     ch, 8
jnb     loc_4B047B

loc_4B0217:
xor     bh, bh
mov     esi, 5
xor     edi, edi
call    rand_
xor     ah, ah
and     al, 7
add     eax, 10h
mov     [esp+50h+var_20], eax
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, 28h ; '('
mov     [esp+50h+var_24], eax
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
add     eax, [esp+50h+var_34]
mov     cx, [eax+10h]
inc     ecx
mov     [eax+10h], cx
cmp     cx, 7
jle     short loc_4B0263
mov     [eax+10h], di

loc_4B0263:
cmp     byte ptr [edx+3], 0
jz      short loc_4B0294
mov     eax, [esp+50h+var_50]
mov     ax, [eax+56h]
add     eax, 80h
mov     [esp+50h+var_28], eax
call    rand_
xor     ah, ah
mov     ecx, [esp+50h+var_28]
add     ecx, eax
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
add     eax, [esp+50h+var_34]
jmp     short loc_4B02C6

loc_4B0294:
mov     eax, [esp+50h+var_50]
mov     ax, [eax+56h]
sub     eax, 100h
mov     [esp+50h+var_28], eax
call    rand_
xor     ah, ah
mov     ecx, [esp+50h+var_28]
add     ecx, eax
mov     [esp+50h+var_28], ecx
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
add     eax, [esp+50h+var_34]
mov     ecx, [esp+50h+var_28]

loc_4B02C6:
mov     [eax], cx
and     ch, 0Fh
mov     [eax], cx
xor     bl, bl

loc_4B02D1:
xor     eax, eax
mov     al, [esp+50h+var_1C]
add     eax, eax
mov     ecx, [esp+50h+var_34]
add     ecx, eax
mov     eax, [ecx+0Eh]
sar     eax, 10h
add     eax, eax
movzx   ebp, bl
cmp     eax, ebp
jle     loc_4B0204
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF008
movzx   ebp, si
imul    eax, ebp
sar     eax, 0Ch
mov     [esp+50h+var_3C], eax
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, [esp+50h+var_3C]
mov     [esp+50h+var_48], eax
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF003
imul    eax, ebp
sar     eax, 0Ch
mov     ebp, [edx+1Eh]
sar     ebp, 10h
add     ebp, eax
mov     [esp+50h+var_3C], ebp
mov     eax, [esp+50h+var_3C]
mov     [esp+50h+var_30], ax
xor     eax, eax
mov     ax, di
call    sub_4EF008
xor     edi, edi
mov     di, word ptr [esp+50h+var_24]
mov     [esp+50h+var_38], edi
imul    eax, edi
sar     eax, 0Ch
mov     edi, [edx+1Ch]
sar     edi, 10h
add     edi, 10h
sub     edi, eax
mov     [esp+50h+var_4C], edi
add     esi, [esp+50h+var_20]
xor     ah, ah
mov     al, bl
mov     edi, eax
inc     edi
shl     edi, 6
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF008
movzx   ebp, si
mov     [esp+50h+var_3C], ebp
imul    eax, ebp
sar     eax, 0Ch
mov     ebp, [edx+1Ah]
sar     ebp, 10h
add     ebp, eax
mov     [esp+50h+var_44], ebp
xor     eax, eax
mov     ax, [ecx]
call    sub_4EF003
imul    eax, [esp+50h+var_3C]
sar     eax, 0Ch
mov     ecx, [edx+1Eh]
sar     ecx, 10h
add     eax, ecx
mov     [esp+50h+var_2C], ax
xor     eax, eax
mov     ax, di
call    sub_4EF008
mov     ebp, [esp+50h+var_38]
mov     ecx, eax
imul    ecx, ebp
sar     ecx, 0Ch
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, 10h
sub     eax, ecx
mov     [esp+50h+var_40], eax
call    rand_
test    al, 1
jz      loc_4B0472
call    sub_4EE16B
mov     ecx, eax
mov     ebp, [esp+50h+var_50+2]
sar     ebp, 10h
shl     ebp, 10h
mov     [esp+50h+var_38], ebp
mov     ebp, [esp+50h+var_4C+2]
sar     ebp, 10h
mov     [esp+50h+var_3C], ebp
mov     ebp, [esp+50h+var_38]
add     ebp, [esp+50h+var_3C]
mov     [eax], ebp
mov     dword ptr [eax+4], 52104080h
mov     ebp, [esp+50h+var_44+2]
sar     ebp, 10h
shl     ebp, 10h
mov     [esp+50h+var_3C], ebp
mov     ebp, [esp+50h+var_48+2]
sar     ebp, 10h
mov     [esp+50h+var_38], ebp
mov     ebp, [esp+50h+var_3C]
add     ebp, [esp+50h+var_38]
mov     [eax+8], ebp
test    bh, bh
jz      short loc_4B044A
mov     dword ptr [eax+0Ch], 104080h
jmp     short loc_4B0451

loc_4B044A:
mov     dword ptr [eax+0Ch], 10101h

loc_4B0451:
mov     eax, [esp+50h+var_34+2]
sar     eax, 10h
shl     eax, 10h
mov     ebp, [esp+22h]
sar     ebp, 10h
add     ebp, eax
mov     [ecx+10h], ebp
mov     dword ptr [ecx+28h], 0E1000020h
mov     bh, 1
jmp     short loc_4B0474

loc_4B0472:
xor     bh, bh

loc_4B0474:
inc     bl
jmp     loc_4B02D1

loc_4B047B:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Dh
call    sub_4D89E4

loc_4B0489:
add     esp, 38h
jmp     loc_4B018D
sub_4B0194 endp




sub_4B0491 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Fh
call    sub_4D89E4
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_4B0491 endp




sub_4B04B2 proc near
push    ecx
push    edx
cmp     byte ptr ds:dword_5F836C+1, 3
jz      short loc_4B04C3

loc_4B04BD:
mov     byte ptr [eax+8], 2
jmp     short loc_4B04EB

loc_4B04C3:
cmp     byte ptr [eax+3], 0
jz      short loc_4B04F0
xor     edx, edx
mov     dx, word ptr ds:dword_5F8480
xor     ecx, ecx
mov     cx, ds:word_5F848E
test    edx, ecx
jz      short loc_4B04BD
xor     eax, eax
mov     ax, ds:word_5F848C

loc_4B04E7:
test    edx, eax
jz      short loc_4B0510

loc_4B04EB:
mov     al, 1
pop     edx
pop     ecx
retn

loc_4B04F0:
xor     edx, edx
mov     dx, word ptr ds:dword_5F8480
xor     ecx, ecx
mov     cx, ds:word_5F848C
test    edx, ecx
jz      short loc_4B04BD
xor     eax, eax
mov     ax, ds:word_5F848E
jmp     short loc_4B04E7

loc_4B0510:
xor     al, al
pop     edx
pop     ecx
retn
sub_4B04B2 endp




sub_4B0515 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B051B[edx*4]
pop     edx
retn
sub_4B0515 endp




sub_4B0524 proc near
push    ecx
push    edx
or      byte ptr [eax], 22h
mov     word ptr [eax+24h], 20h ; ' '
mov     dword ptr [eax+14h], 3D48002Ch
mov     dword ptr [eax+18h], 2EC06060h
mov     byte ptr [eax+0Ch], 80h
mov     byte ptr [eax+0Dh], 0
cmp     byte ptr [eax+3], 0
jz      short loc_4B058F
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD4[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD0[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD2[edx*2]
jmp     short loc_4B05D1

loc_4B058F:
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBC[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DB8[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBA[edx*2]

loc_4B05D1:
mov     [eax+23h], dl
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Bh], 0
pop     edx
pop     ecx
retn
sub_4B0524 endp




sub_4B05DF proc near
push    ecx
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     loc_4B0689
cmp     byte ptr [eax+3], 0
jz      short loc_4B0641
add     word ptr [eax+24h], 8
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD4[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD0[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DD2[edx*2]
jmp     short loc_4B0686

loc_4B0641:
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBC[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DB8[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_530DBA[edx*2]

loc_4B0686:
mov     [eax+23h], dl

loc_4B0689:
cmp     byte ptr [eax+0Eh], 80h
jnz     short loc_4B0693
mov     byte ptr [eax+8], 2

loc_4B0693:
pop     edx
pop     ecx
retn
sub_4B05DF endp



; Attributes: thunk

sub_4B0696 proc near
jmp     sub_4DE3EA
sub_4B0696 endp




sub_4B069B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B06A1[edx*4]
pop     edx
retn
sub_4B069B endp




sub_4B06AA proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
mov     al, [eax+1Ah]
mov     [edx+0Eh], al
xor     eax, eax
mov     al, [edx+0Ch]
call    sub_4E1877
mov     esi, eax
mov     dword ptr [eax+198h], 0
mov     eax, [edx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     dword ptr [edx+0D4h], 0
mov     dword ptr [edx+0D8h], 0
mov     dword ptr [edx+78h], 0
mov     byte ptr [edx+0Bh], 0Bh
inc     byte ptr [edx+8]
cmp     byte ptr [edx+0Eh], 0
jz      short loc_4B070C
lea     edi, [edx+2Ch]
lea     esi, [esi+500h]
jmp     short loc_4B0715

loc_4B070C:
lea     edi, [edx+2Ch]
lea     esi, [esi+518h]

loc_4B0715:
movsd
movsd
mov     edi, esp
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+14h]
mov     esi, esp
movsd
movsd
mov     eax, edx
call    sub_4B07C8
add     edx, 14h
mov     eax, 96h
call    sub_4D8BC3
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4B06AA endp




sub_4B0740 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     eax, eax
mov     al, [ecx+0Ch]
call    sub_4E1877
mov     ebx, eax
xor     eax, eax
mov     al, [ecx+0Ch]
call    sub_4E1877
lea     edi, [ecx+2Ch]
lea     esi, [eax+14h]
movsd
movsd
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4B0778
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B07A2

loc_4B0778:
xor     edx, edx
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jz      short loc_4B079B
mov     eax, ecx
call    sub_4B0888
inc     byte ptr [ecx+8]
mov     dword ptr [ebx+198h], 1
jmp     short loc_4B07A2

loc_4B079B:
mov     eax, ecx
call    sub_4B07C8

loc_4B07A2:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B0740 endp




sub_4B07A8 proc near
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+0Ch]
call    sub_4E1877
mov     dword ptr [eax+198h], 0
mov     eax, edx
call    sub_4DE3AC
pop     edx
retn
sub_4B07A8 endp




sub_4B07C8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     eax, [eax+9]
sar     eax, 18h
mov     [esp+1Ch+var_1C], eax
xor     eax, eax
mov     al, byte ptr [esp+1Ch+var_1C]
call    sub_4E1877
mov     edx, eax
lea     eax, [ebp+14h]
lea     ebx, [ebp+2Ch]
lea     ecx, [ebp+0D4h]
cmp     byte ptr [ebp+0Eh], 0
jz      short loc_4B083F
lea     edi, [ebp+14h]
lea     esi, [edx+500h]
movsd
movsd
mov     esi, [esp+1Ch+var_1C]
test    esi, esi
jz      short loc_4B0826

loc_4B080C:
push    80h
push    0
push    28000008h
push    ecx
xor     edx, edx
mov     dl, [ebp+1]
push    edx
push    6000h
jmp     short loc_4B0866

loc_4B0826:
push    80h
push    esi
push    28000008h
push    ecx
xor     edx, edx
mov     dl, [ebp+1]
push    edx
push    4000h
jmp     short loc_4B0866

loc_4B083F:
lea     edi, [ebp+14h]
lea     esi, [edx+518h]
movsd
movsd
mov     edx, [esp+1Ch+var_1C]
test    edx, edx
jnz     short loc_4B080C
push    80h
push    edx
push    28000008h
push    ecx
mov     dl, [ebp+1]
push    edx
push    4000h

loc_4B0866:
push    200h
mov     ecx, 20h ; ' '
mov     edx, ecx
call    sub_4E02CB
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
add     esp, 4
pop     ebp
jmp     loc_4B07A2
sub_4B07C8 endp




sub_4B0888 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B08B8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 84h
mov     byte ptr [eax+3], 0
mov     bx, [edx+14h]
mov     [eax+1Ch], bx
mov     bx, [edx+16h]
mov     [eax+1Eh], bx
mov     dx, [edx+18h]
mov     [eax+20h], dx

loc_4B08B8:
pop     edx
pop     ebx
retn
sub_4B0888 endp




sub_4B08BB proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B08C4[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B08BB endp




sub_4B08D5 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2Ah
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
call    sub_43697B
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530E0C
call    sub_42A85C
mov     word ptr [esp+5Ch+var_1C], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_1C+2], ax
xor     edx, edx
mov     [esp+5Ch+var_18], dx
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+5Ch+var_1C], bx
mov     word ptr [esp+5Ch+var_1C+2], bx
mov     [esp+5Ch+var_18], 0F000h
lea     ebx, [esp+5Ch+var_2C]
lea     edx, [esp+5Ch+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+5Ch+var_2C]
mov     word ptr [esp+5Ch+var_1C], ax
mov     eax, [esp+5Ch+var_28]
mov     word ptr [esp+5Ch+var_1C+2], ax
mov     eax, [esp+5Ch+var_24]
mov     [esp+5Ch+var_18], ax
mov     eax, ds:dword_5F895D+2
sar     eax, 18h
mov     al, ds:byte_530E40[eax]
and     eax, 0FFh
mov     edx, [esp+2Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+5Ch+var_1C]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+5Ch+var_1C+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [ecx+0A4h]
lea     esi, [esp+5Ch+var_1C]
movsd
movsd
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+88h], 3D48002Eh
mov     eax, ds:dword_5F895D
sar     eax, 18h
mov     eax, ds:dword_530E18[eax*4]
mov     [ecx+88h], eax
mov     dword ptr [ecx+8Ch], 2E808080h
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+96h], 0C0h
mov     byte ptr [ecx+97h], 60h ; '`'
mov     eax, ds:dword_5F895D
sar     eax, 18h
mov     al, ds:byte_530E38[eax]
xor     ah, ah
mov     [ecx+98h], ax
mov     word ptr [ecx+7Ch], 0
mov     [ecx+0Bh], ah
mov     edx, esp
mov     eax, ecx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4B0A8E
mov     word ptr [ecx+1Ah], 6208h
mov     word ptr [ecx+32h], 6208h
jmp     short loc_4B0A9A

loc_4B0A8E:
mov     word ptr [ecx+1Ah], 4208h
mov     word ptr [ecx+32h], 4208h

loc_4B0A9A:
cmp     byte ptr [ecx+3], 80h
jb      short loc_4B0ABD
mov     eax, [ecx+0CCh]
or      eax, [ecx+0D0h]
jnz     short loc_4B0ABD
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [ecx+3], 0

loc_4B0ABD:
mov     eax, ecx
call    sub_4B0D67
lea     edx, [ecx+14h]
mov     eax, 9Ah
call    sub_4D8BC3
add     esp, 48h

loc_4B0AD4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B08D5 endp




sub_4B0ADA proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
xor     edx, edx
call    sub_4EE66E
mov     edx, eax
test    eax, eax
jnz     short loc_4B0AF9
cmp     word ptr [ebp+7Ch], 0
jz      short loc_4B0B32

loc_4B0AF9:
cmp     edx, 7FFFh
jnz     short loc_4B0B05
xor     edx, edx
jmp     short loc_4B0B0A

loc_4B0B05:
mov     edx, 1

loc_4B0B0A:
mov     eax, ebp
call    sub_4B0D31

loc_4B0B11:
mov     eax, ebp
call    sub_4DE3AC
cmp     byte ptr [ebp+3], 80h
jb      loc_4B0D28
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14
jmp     loc_4B0D28

loc_4B0B32:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     al, [ebp+0Bh]
movzx   esi, al
inc     al
mov     [ebp+0Bh], al
mov     edx, 1
mov     eax, offset byte_5F8364
call    sub_4EE62E
cmp     esi, eax
jge     short loc_4B0B11
cmp     byte ptr [ebp+3], 80h
jb      loc_4B0CC2
mov     eax, [ebp+0CCh]
or      eax, [ebp+0D0h]
jz      loc_4B0CB3
mov     edx, [ebp+0CAh]
sar     edx, 10h
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_38], edx
mov     edx, [ebp+0CCh]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_34], edx
mov     edx, [ebp+0CEh]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_30], edx
mov     eax, [esp+38h+var_38]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4B0BE8
mov     eax, [esp+38h+var_34]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4B0BE8
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4B0BF6

loc_4B0BE8:
sar     [esp+38h+var_38], 2
sar     [esp+38h+var_34], 2
sar     [esp+38h+var_30], 2

loc_4B0BF6:
lea     edx, [esp+38h+var_20]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+0A4h]
mov     bl, [ebp+0Bh]
cmp     bl, 4
jnb     short loc_4B0C28
mov     ecx, 0F746EA4h
mov     ebx, 424h

loc_4B0C19:
lea     eax, [esp+38h+var_20]
lea     esi, [esp+38h+var_28]
call    sub_4DFFB5
jmp     short loc_4B0C5F

loc_4B0C28:
cmp     bl, 9
jnb     short loc_4B0C39
mov     ecx, 0FFD813Ch
mov     ebx, 8Fh
jmp     short loc_4B0C19

loc_4B0C39:
mov     ecx, 0FFF604Ch
mov     ebx, 47h ; 'G'
lea     eax, [esp+38h+var_20]
lea     esi, [esp+38h+var_28]
call    sub_4DFFB5
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [ebp+3], 0

loc_4B0C5F:
lea     edi, [ebp+0A4h]
lea     esi, [esp+38h+var_28]
movsd
movsd
mov     eax, ds:dword_5F895D+2
sar     eax, 18h
mov     al, ds:byte_530E40[eax]
and     eax, 0FFh
mov     edx, [esp+0Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ebp+44h], dx
mov     edx, [esp+38h+var_28]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ebp+46h], dx
mov     edx, [esp+38h+var_28+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+48h], ax
jmp     short loc_4B0CC2

loc_4B0CB3:
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [ebp+3], 0

loc_4B0CC2:
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     [ebp+90h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     [ebp+92h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
mov     [ebp+94h], ax
add     word ptr [ebp+9Ah], 5
mov     eax, ebp
call    sub_4B0D67

loc_4B0D28:
add     esp, 20h
pop     ebp
jmp     loc_4B0AD4
sub_4B0ADA endp




sub_4B0D31 proc near
push    ebx
push    ecx
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B0D64
mov     byte ptr [eax], 9
mov     byte ptr [eax+2], 82h
mov     bx, [ecx+14h]
mov     [eax+1Ch], bx
mov     bx, [ecx+16h]
mov     [eax+1Eh], bx
mov     cx, [ecx+18h]
mov     [eax+20h], cx
mov     byte ptr [eax+3], 1
mov     [eax+0Ch], dl

loc_4B0D64:
pop     ecx
pop     ebx
retn
sub_4B0D31 endp




sub_4B0D67 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     esi, esi
mov     si, [eax+98h]
mov     edx, 1
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     edi, [ecx+0D4h]
or      edx, 8000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B0DB6
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B0DCA

loc_4B0DB6:
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B0DCA:
push    200h
mov     ecx, esi
mov     edx, esi
call    sub_4E02CB
jmp     loc_4B0AD4
sub_4B0D67 endp




sub_4B0DDD proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B0DE6[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B0DDD endp




sub_4B0DF7 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530E50
test    byte ptr [ecx+3], 40h
jz      short loc_4B0E33
mov     ax, [ecx+66h]
jmp     short loc_4B0E43

loc_4B0E33:
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
call    sub_42A85C

loc_4B0E43:
mov     [esp+2Ch+var_1C], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
test    byte ptr [ecx+3], 40h
jz      short loc_4B0E82

loc_4B0E61:
call    rand_
xor     ah, ah
and     al, 7
sub     eax, 4
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 7
sub     eax, 4
jmp     short loc_4B0ED3

loc_4B0E82:
mov     al, ds:byte_5F896C
cmp     al, 1
jb      short loc_4B0E8F
jbe     short loc_4B0E61
jmp     short loc_4B0EB4

loc_4B0E8F:
test    al, al
jnz     short loc_4B0EB4
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 2
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 2
jmp     short loc_4B0ED3

loc_4B0EB4:
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8

loc_4B0ED3:
add     eax, eax
add     [esp+2Ch+var_1A], ax
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_24], edx
mov     [esp+2Ch+var_2C], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
xor     ebx, ebx
mov     [esp+2Ch+var_1C], bx
mov     [esp+2Ch+var_1A], bx
mov     [esp+2Ch+var_18], 0F000h
mov     ebx, esp
lea     edx, [esp+2Ch+var_1C]
mov     eax, esi
call    sub_4EF1FB
mov     edx, [esp+2Ch+var_2C]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
test    byte ptr [ecx+3], 40h
jz      short loc_4B0F72
mov     [ecx+44h], ax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+2Ch+var_24]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
jmp     short loc_4B0FE5

loc_4B0F72:
cmp     ds:byte_5F896B, 3
jl      short loc_4B0FB4
mov     eax, [esp+2Ch+var_2C]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [esp+2Ch+var_28]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [esp+2Ch+var_24]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
jmp     short loc_4B0FE5

loc_4B0FB4:
mov     [ecx+44h], ax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+2Ch+var_24]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2

loc_4B0FE5:
sar     eax, 4
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+7Ch], 0
lea     edx, [ecx+88h]
test    byte ptr [ecx+3], 40h
jz      short loc_4B1049
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+24h], eax

loc_4B1049:
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [edx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [edx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [edx+38h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [edx+3Ch], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     edx, 2
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     [ecx+0Bh], al
inc     byte ptr [ecx+8]
xor     edx, edx
mov     eax, ecx
call    sub_4B1284
mov     eax, ecx
call    sub_4B11AD
lea     edx, [ecx+14h]
mov     eax, 120h
call    sub_4D8BC3
add     esp, 18h

loc_4B10CA:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B0DF7 endp




sub_4B10D0 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B10E8
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B110F

loc_4B10E8:
test    byte ptr [ecx+3], 40h
jz      short loc_4B10F7
mov     eax, ecx
call    sub_4DE371
jmp     short loc_4B10FE

loc_4B10F7:
mov     eax, ecx
call    sub_4DE3AC

loc_4B10FE:
mov     edx, 1
mov     eax, ecx
call    sub_4B1284
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B110F:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     eax, [ecx+88h]
mov     dl, [ecx+0Bh]
mov     dh, dl
dec     dh
mov     [ecx+0Bh], dh
test    dl, dl
ja      short loc_4B1153
test    byte ptr [ecx+3], 40h
jz      short loc_4B1147
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B1147:
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B1153:
mov     edx, [ecx+42h]
sar     edx, 10h
shl     edx, 8
add     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 8
add     [ecx+20h], edx
mov     edx, [ecx+46h]
sar     edx, 10h
shl     edx, 8
add     [ecx+24h], edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
mov     eax, ecx
call    sub_4B11AD
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B10D0 endp




sub_4B11AD proc near

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
mov     edx, 2
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
mov     ax, [ecx+14h]
add     eax, eax
mov     bx, [ecx+2Ch]
sub     eax, ebx
mov     [esp+1Ch+var_1C], ax
mov     ax, [ecx+16h]
add     eax, eax
mov     si, [ecx+2Eh]
sub     eax, esi
mov     [esp+1Ch+var_1A], ax
mov     ax, [ecx+18h]
add     eax, eax
mov     di, [ecx+30h]
sub     eax, edi
mov     [esp+1Ch+var_18], ax
cmp     ds:byte_5F84D5, 0
jnz     short loc_4B1208
mov     edx, 1000h

loc_4B1208:
lea     ebx, [ecx+14h]
lea     eax, [ecx+0D4h]
test    byte ptr [ecx+3], 40h
jz      short loc_4B1231
push    80h
push    0
push    8000005h
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    0A000h
jmp     short loc_4B1267

loc_4B1231:
or      edx, 8000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B1253
push    80h
push    0
push    edx
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    6000h
jmp     short loc_4B1267

loc_4B1253:
push    80h
push    0
push    edx
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    4000h

loc_4B1267:
push    200h
mov     ecx, 20h ; ' '
mov     edx, ecx
lea     eax, [esp+38h+var_1C]
call    sub_4E02CB
add     esp, 8
jmp     loc_4B10CA
sub_4B11AD endp




sub_4B1284 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
call    sub_4DE13B
test    eax, eax
jz      loc_4B132D
lea     edx, [eax+28h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 85h
mov     si, [ecx+14h]
mov     [eax+1Ch], si
mov     si, [ecx+16h]
mov     [eax+1Eh], si
mov     si, [ecx+18h]
mov     [eax+20h], si
mov     si, [ecx+44h]
mov     [edx+8], si
mov     si, [ecx+46h]
mov     [edx+0Ah], si
mov     si, [ecx+48h]
mov     [edx+0Ch], si
mov     dl, [ecx+3]
cmp     dl, 40h ; '@'
jnz     short loc_4B12F4
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h

loc_4B12E6:
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4B12EF:
add     bl, 10h
jmp     short loc_4B132A

loc_4B12F4:
cmp     dl, 41h ; 'A'
jnz     short loc_4B1307
mov     edx, [ecx+62h]
sar     edx, 10h
sub     edx, 400h
jmp     short loc_4B12E6

loc_4B1307:
cmp     dl, 42h ; 'B'
jnz     short loc_4B1315
mov     dword ptr [eax+40h], 0FFFFh
jmp     short loc_4B12EF

loc_4B1315:
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4B132A:
mov     [eax+3], bl

loc_4B132D:
pop     esi
pop     ecx
pop     ebx
retn
sub_4B1284 endp




sub_4B1331 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B133A[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B1331 endp




sub_4B134B proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 50h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530E64
call    sub_42A85C
mov     [esp+64h+var_24], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+64h+var_22], ax
xor     edx, edx
mov     [esp+64h+var_20], dx
mov     edx, esp
lea     eax, [esp+64h+var_24]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+64h+var_1C], bx
xor     esi, esi
mov     word ptr [esp+64h+var_1C+2], bx
mov     [esp+64h+var_18], 0F000h
lea     ebx, [esp+64h+var_34]
lea     edx, [esp+64h+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+64h+var_34]
mov     word ptr [esp+64h+var_1C], ax
mov     eax, [esp+64h+var_30]
mov     word ptr [esp+64h+var_1C+2], ax
mov     eax, [esp+64h+var_2C]
mov     [esp+64h+var_18], ax
mov     [ecx+44h], si
mov     [ecx+46h], si
mov     [ecx+48h], si
lea     edi, [ecx+0A4h]
lea     esi, [esp+64h+var_1C]
movsd
movsd
mov     edx, [esp+46h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [ecx+4Ch], ax
mov     edx, [esp+64h+var_1C]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [ecx+4Eh], ax
mov     edx, [esp+64h+var_1C+2]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [ecx+50h], ax
mov     dword ptr [ecx+88h], 3D08000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+96h], 80h
mov     byte ptr [ecx+97h], 80h
mov     eax, ds:dword_5F896D
sar     eax, 18h
mov     al, ds:byte_530E70[eax]
xor     ah, ah
mov     [ecx+98h], ax
mov     word ptr [ecx+7Ch], 0
mov     [ecx+0Bh], ah
inc     byte ptr [ecx+8]
mov     [ecx+9], ah
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4B14E2
mov     word ptr [ecx+1Ah], 6208h
mov     word ptr [ecx+32h], 6208h
jmp     short loc_4B14EE

loc_4B14E2:
mov     word ptr [ecx+1Ah], 4208h
mov     word ptr [ecx+32h], 4208h

loc_4B14EE:
mov     eax, ecx
call    sub_4B16AE
lea     edx, [ecx+14h]
mov     eax, 122h
call    sub_4D8BC3
add     esp, 50h

loc_4B1505:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B134B endp




sub_4B150B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     edx, 20h ; ' '
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B1528
cmp     word ptr [ebp+7Ch], 0
jz      short loc_4B1552

loc_4B1528:
mov     eax, ebp
call    sub_4B1640
lea     ecx, [ebp+14h]
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 14h
call    sub_42A70B

loc_4B1546:
mov     eax, ebp
call    sub_4DE3AC
jmp     loc_4B163A

loc_4B1552:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
cmp     byte ptr [ebp+0Bh], 0Fh
jnb     short loc_4B1582
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
mov     ax, [ebp+50h]
add     [ebp+48h], ax

loc_4B1582:
mov     al, [ebp+0Bh]
xor     ecx, ecx
mov     cl, al
inc     al
mov     [ebp+0Bh], al
mov     edx, 3
mov     eax, offset byte_5F8364
call    sub_4EE62E
cmp     ecx, eax
jge     short loc_4B1546
test    byte ptr [ebp+0Bh], 1
jz      short loc_4B15B7
mov     byte ptr [ebp+96h], 0A0h
mov     byte ptr [ebp+97h], 60h ; '`'
jmp     short loc_4B15C5

loc_4B15B7:
mov     byte ptr [ebp+96h], 80h
mov     byte ptr [ebp+97h], 80h

loc_4B15C5:
mov     dword ptr [ebp+8Ch], 2C808080h
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     [ebp+90h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     [ebp+92h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
mov     [ebp+94h], ax
mov     eax, ebp
call    sub_4B16AE
test    byte ptr [ebp+0Bh], 1
jz      short loc_4B163A
mov     eax, ebp
call    sub_4B167B

loc_4B163A:
pop     ebp
jmp     loc_4B1505
sub_4B150B endp




sub_4B1640 proc near
push    edx
push    esi
push    edi
mov     esi, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B1677
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     edx, ds:dword_5F896D
sar     edx, 18h
mov     dl, ds:byte_530E78[edx]
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_4B1677:
pop     edi
pop     esi
pop     edx
retn
sub_4B1640 endp




sub_4B167B proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B16AB
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 1
mov     bx, [edx+14h]
mov     [eax+1Ch], bx
mov     bx, [edx+16h]
mov     [eax+1Eh], bx
mov     dx, [edx+18h]
mov     [eax+20h], dx

loc_4B16AB:
pop     edx
pop     ebx
retn
sub_4B167B endp




sub_4B16AE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     esi, esi
mov     si, [eax+98h]
mov     edx, 3
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     edi, [ecx+0D4h]
or      edx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B16FD
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B1711

loc_4B16FD:
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B1711:
push    200h
mov     ecx, esi
mov     edx, esi
call    sub_4E02CB
jmp     loc_4B1505
sub_4B16AE endp




sub_4B1724 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B172A[edx*4]
pop     edx
retn
sub_4B1724 endp




sub_4B1733 proc near
push    edx
mov     edx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [edx+0Bh], 0
inc     byte ptr [edx+8]
mov     eax, edx
call    sub_4B1884
add     edx, 14h
mov     eax, 123h
call    sub_4D8BC3
pop     edx
retn
sub_4B1733 endp




sub_4B175E proc near

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
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     esi, eax
mov     dx, [eax+4C8h]
mov     bx, [eax+4C0h]
sub     edx, ebx
mov     ebx, edx
shl     ebx, 2
mov     dx, [eax+4C8h]
add     ebx, edx
mov     [ecx+14h], bx
mov     bx, [eax+4CAh]
sub     bx, [eax+4C2h]
shl     ebx, 2
mov     dx, [eax+4CAh]
add     ebx, edx
mov     [ecx+16h], bx
mov     dx, [eax+4CCh]
sub     dx, [eax+4C4h]
shl     edx, 2
mov     ax, [eax+4CCh]
add     edx, eax
mov     [ecx+18h], dx
mov     edx, 80h
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jz      short loc_4B17F8
mov     edx, 1
mov     eax, ecx
xor     ebx, ebx
xor     edx, edx
mov     eax, 125h
call    sub_4D89E4

loc_4B17F8:
cmp     byte ptr [esi+170h], 4
jnz     short loc_4B182E
mov     di, [esi+61Ah]
test    di, di
jz      short loc_4B1820
cmp     di, 7FFFh
jz      short loc_4B1837
mov     edx, edi
dec     edx
mov     [esi+61Ah], dx
jmp     short loc_4B1837

loc_4B1820:
xor     ebx, ebx
xor     edx, edx
mov     eax, 124h
call    sub_4D89E4

loc_4B182E:
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B187B

loc_4B1837:
mov     al, [esi+100h]
cmp     al, ds:byte_550FAA
ja      short loc_4B1820
cmp     byte ptr [esi+174h], 0
jz      short loc_4B1820
xor     ebx, ebx
mov     [esp+1Ch+var_1C], bx
mov     al, [ecx+0Bh]
and     al, 7
xor     ah, ah
shl     eax, 9
mov     [esp+1Ch+var_1A], ax
mov     [esp+1Ch+var_18], bx
mov     edx, esp
mov     eax, esi
call    sub_4B195E
dec     byte ptr [ecx+0Bh]
mov     eax, ecx
call    sub_4B1884

loc_4B187B:
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B175E endp




sub_4B1884 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     edx, 4
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     ebx, eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     dx, [eax+4C8h]
sub     dx, [eax+4C0h]
shl     edx, 2
mov     cx, [eax+4C8h]
add     ecx, edx
mov     [esp+18h+var_18], cx
mov     dx, [eax+4CAh]
sub     dx, [eax+4C2h]
shl     edx, 2
mov     cx, [eax+4CAh]
add     ecx, edx
mov     [esp+18h+var_16], cx
mov     dx, [eax+4CCh]
sub     dx, [eax+4C4h]
shl     edx, 2
mov     cx, [eax+4CCh]
add     ecx, edx
mov     [esp+18h+var_14], cx
push    80h
push    0
or      ebx, 88000000h
push    ebx
lea     ebx, [esi+0D4h]
push    ebx
xor     ebx, ebx
mov     bl, [esi+1]
push    ebx
push    4000h
push    200h
add     eax, 4C8h
mov     ecx, 8
lea     ebx, [esp+34h+var_18]
mov     edx, 14h
call    sub_4E02CB
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B1884 endp




sub_4B195E proc near

var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= byte ptr -60h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 7Ch
mov     ebp, eax
mov     [esp+90h+var_18], edx
mov     edx, ds:dword_7441AC
mov     ax, [edx+20h]
mov     [esp+90h+var_20], ax
mov     ax, [edx+22h]
mov     [esp+90h+var_1E], ax
mov     ax, [edx+24h]
mov     [esp+90h+var_1C], ax
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebp+268h]
rep movsd
lea     ebx, [esp+90h+var_30]
lea     edx, [esp+90h+var_20]
mov     eax, esp
call    sub_4EF1FB
lea     edx, [esp+90h+var_60]
mov     eax, [esp+90h+var_18]
call    sub_4EF5F7
mov     ebx, esp
lea     edx, [esp+90h+var_60]
mov     eax, esp
call    sub_4EF388
mov     eax, [ebp+4BEh]
sar     eax, 10h
mov     edx, [esp+90h+var_30]
add     edx, eax
mov     [esp+90h+var_6C], edx
mov     eax, [ebp+4C0h]
sar     eax, 10h
mov     edx, [esp+90h+var_2C]
add     edx, eax
mov     [esp+90h+var_68], edx
mov     eax, [ebp+4C2h]
sar     eax, 10h
mov     edx, [esp+90h+var_28]
add     edx, eax
mov     [esp+90h+var_64], edx
mov     eax, [esp+90h+var_6C]
mov     [ebp+4C8h], ax
mov     eax, [esp+90h+var_68]
mov     [ebp+4CAh], ax
mov     eax, [esp+90h+var_64]
mov     [ebp+4CCh], ax
mov     ecx, 0Ch
lea     edi, [ebp+298h]
mov     esi, esp
rep movsd
add     esp, 7Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4B195E endp




sub_4B1A37 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B1A45[edx*4]
mov     ax, [esi+90h]
mov     [esp+18h+var_18], ax
mov     ax, [esi+92h]
mov     [esp+18h+var_16], ax
mov     ax, [esi+94h]
mov     [esp+18h+var_14], ax
lea     edx, [esi+0D4h]
cmp     byte ptr [esi+0Ch], 0
jz      short loc_4B1AA8
push    80h
push    0
mov     eax, ds:dword_5F897D
sar     eax, 18h
mov     eax, ds:dword_55115E[eax*8]
sar     eax, 10h
or      eax, 8000000h
push    eax
push    edx
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 6000h
jmp     short loc_4B1AD3

loc_4B1AA8:
push    80h
push    0
mov     eax, ds:dword_5F897D
sar     eax, 18h
mov     eax, ds:dword_55115E[eax*8]
sar     eax, 10h
or      eax, 8000000h
push    eax
push    edx
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 4000h

loc_4B1AD3:
xor     ebx, ebx
mov     edx, 8
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 18h
mov     eax, esi
call    sub_4ED88B
mov     eax, esi
call    sub_4326CA
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B1A37 endp




sub_4B1B05 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_18= dword ptr -18h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 50h
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx+6], 20h
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Eh], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
call    sub_42A85C
mov     [esp+60h+var_20], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+60h+var_1E], ax
xor     edx, edx
mov     [esp+60h+var_1C], dx
mov     edx, esp
lea     eax, [esp+60h+var_20]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+60h+var_18], bx
xor     esi, esi
mov     word ptr [esp+60h+var_18+2], bx
mov     [esp+60h+var_14], 0F000h
lea     ebx, [esp+60h+var_30]
lea     edx, [esp+60h+var_18]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+60h+var_30]
mov     word ptr [esp+60h+var_18], ax
mov     eax, [esp+60h+var_2C]
mov     word ptr [esp+60h+var_18+2], ax
mov     eax, [esp+60h+var_28]
mov     [esp+60h+var_14], ax
mov     eax, ds:dword_5F897D+2
sar     eax, 18h
mov     edx, ds:dword_551162[eax*8]
sar     edx, 10h
mov     eax, [esp+2Eh]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, ds:dword_5F897D+2
sar     eax, 18h
mov     eax, ds:dword_551162[eax*8]
sar     eax, 10h
mov     edx, [esp+60h+var_18]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, ds:dword_5F897D+2
sar     eax, 18h
mov     eax, ds:dword_551162[eax*8]
sar     eax, 10h
mov     edx, [esp+60h+var_18+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
mov     [ecx+4Ch], si
mov     word ptr [ecx+4Eh], 200h
mov     [ecx+50h], si
mov     [ecx+7Ch], si
mov     dword ptr [ecx+88h], 3D48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
lea     ebx, [ecx+14h]
lea     eax, [ecx+1Ch]
mov     edx, ebx
call    sub_4DD57B
mov     edx, [ecx+42h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [ecx+1Ch]
sub     eax, edx
mov     [ecx+34h], eax
mov     eax, [ecx+20h]
mov     [ecx+38h], eax
mov     edx, [ecx+46h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [ecx+24h]
sub     eax, edx
mov     [ecx+3Ch], eax
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
mov     dword ptr [ecx+78h], offset unk_530E90
mov     al, ds:byte_530E9C
mov     [ecx+96h], al
mov     al, ds:byte_530EA0
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 18h
or      byte ptr [ecx], 2
mov     byte ptr [ecx+74h], 1
mov     eax, ecx
call    sub_4B22C2
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 8
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
and     byte ptr [ecx+0Eh], 0FBh
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, 127h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4B2076
test    ax, ax
jz      short loc_4B1CF6
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4B1CF6:
add     esp, 50h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B1B05 endp




sub_4B1CFE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
call    sub_4B22C2
xor     edx, edx
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B1D1E
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B1D4A

loc_4B1D1E:
mov     dword ptr [ecx+9Ch], 0

loc_4B1D28:
call    sub_4DE13B
test    eax, eax
jz      short loc_4B1D3A
mov     edx, eax
mov     eax, ecx
call    sub_4B2293

loc_4B1D3A:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE3AC

loc_4B1D44:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B1D4A:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, ecx
call    sub_4B21E8
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     ah, ds:byte_77E7D4
cmp     ah, 10h
jz      short loc_4B1D93
cmp     ah, 11h
jnz     short loc_4B1D9E

loc_4B1D93:
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jge     short loc_4B1D3A

loc_4B1D9E:
mov     eax, ecx
call    sub_4B2076
test    ax, ax
jz      short loc_4B1DB2
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0

loc_4B1DB2:
mov     dh, [ecx+0Ah]
cmp     dh, 96h
jb      short loc_4B1DC4
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_4B1DDC

loc_4B1DC4:
mov     bl, dh
inc     bl
mov     [ecx+0Ah], bl
mov     bh, [ecx+9]
inc     bh
mov     [ecx+9], bh
cmp     bh, 5
jbe     short loc_4B1DDC
mov     byte ptr [ecx+9], 0

loc_4B1DDC:
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 8
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530E9C[eax*8]
mov     [ecx+96h], al
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EA0[eax*8]
mov     [ecx+97h], al
jmp     loc_4B1D44
sub_4B1CFE endp




sub_4B1E29 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+88h], 3D48000Eh
mov     dword ptr [eax+8Ch], 2C808080h
mov     eax, [eax+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
mov     byte ptr [ecx+96h], 0D8h
mov     byte ptr [ecx+97h], 0D8h
mov     word ptr [ecx+98h], 20h ; ' '
call    sub_4DE13B
test    eax, eax
jz      short loc_4B1E9D
mov     edx, eax
mov     eax, ecx
call    sub_4B2293

loc_4B1E9D:
mov     byte ptr [ecx], 0
mov     eax, ecx
call    sub_4DE3AC
pop     edx
pop     ecx
retn
sub_4B1E29 endp




sub_4B1EAA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B1EC3
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B1EE8

loc_4B1EC3:
mov     dword ptr [ecx+9Ch], 0
call    sub_4DE13B
test    eax, eax
jz      loc_4B1D3A
mov     edx, eax
mov     eax, ecx
call    sub_4B2293
jmp     loc_4B1D3A

loc_4B1EE8:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_4B21E8
lea     edx, [ecx+2Ch]
lea     eax, [ecx+34h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     ah, ds:byte_77E7D4
cmp     ah, 10h
jz      short loc_4B1F27
cmp     ah, 11h
jnz     short loc_4B1F36

loc_4B1F27:
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jge     loc_4B1D3A

loc_4B1F36:
mov     eax, ecx
call    sub_4B2076
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 8
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530E9C[eax*8]
mov     [ecx+96h], al
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EA0[eax*8]
mov     [ecx+97h], al
cmp     word ptr [ecx+44h], 0
jz      short loc_4B1F9D
mov     dh, [ecx+9]
inc     dh
mov     [ecx+9], dh
cmp     dh, 5
jbe     short loc_4B1F9D
mov     byte ptr [ecx+9], 0

loc_4B1F9D:
mov     eax, ecx
call    sub_4B22C2
mov     bh, [ecx+0Dh]
cmp     bh, 1Eh
jge     loc_4B1D28
cmp     bh, 0Fh
jge     short loc_4B1FBC
mov     eax, 1
jmp     short loc_4B1FC1

loc_4B1FBC:
mov     eax, 0FFFFFFFFh

loc_4B1FC1:
mov     edx, [ecx+0Ah]
sar     edx, 18h
cwde
test    edx, eax
jz      short loc_4B1FF4
mov     eax, [ecx+8Ch]
and     eax, 0FFh
cmp     eax, 0FFh
jnz     short loc_4B1FEA
mov     dword ptr [ecx+8Ch], 2C808080h
jmp     short loc_4B1FF4

loc_4B1FEA:
mov     dword ptr [ecx+8Ch], 2CFFFFFFh

loc_4B1FF4:
inc     byte ptr [ecx+0Dh]
jmp     loc_4B1D44
sub_4B1EAA endp




sub_4B1FFC proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     dword ptr [eax+88h], 3D48000Eh
mov     dword ptr [eax+8Ch], 2C808080h
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+96h], 0D8h
mov     byte ptr [ecx+97h], 0D8h
mov     word ptr [ecx+98h], 20h ; ' '
or      byte ptr [ecx], 2
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B1FFC endp




sub_4B2076 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, eax
xor     edx, edx
mov     [esp+1Ch+var_1C], edx
mov     byte ptr [eax+74h], 1
call    sub_4B22C2
mov     eax, ebx
call    sub_42DE56
mov     ebp, eax
test    eax, eax
jz      loc_4B21DC
test    ah, 10h
jz      loc_4B218D
cmp     word ptr [ebx+46h], 0
jge     short loc_4B20BA
mov     eax, [ebx+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4B20C0

loc_4B20BA:
mov     eax, [ebx+44h]
sar     eax, 10h

loc_4B20C0:
cmp     eax, 1000h
jg      short loc_4B20F4
mov     word ptr [ebx+44h], 0
mov     word ptr [ebx+46h], 0
mov     word ptr [ebx+48h], 0
mov     word ptr [ebx+4Ch], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0
mov     [esp+1Ch+var_1C], 1
jmp     short loc_4B2129

loc_4B20F4:
mov     edx, [ebx+44h]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
test    eax, eax
jge     short loc_4B210A
neg     eax

loc_4B210A:
sar     eax, 8
mov     [ebx+46h], ax
mov     eax, [ebx+42h]
sar     eax, 10h
sar     eax, 1
mov     [ebx+44h], ax
mov     eax, [ebx+46h]
sar     eax, 10h
sar     eax, 1
mov     [ebx+48h], ax

loc_4B2129:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4B2175
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4B2175
mov     eax, ebx
call    sub_4DE3AC
lea     edx, [ebx+14h]
mov     eax, 102h
call    sub_4D8BC3
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B216C
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4B216C:
mov     eax, ebx
call    sub_4B232C
jmp     short loc_4B21D2

loc_4B2175:
lea     edx, [ebx+14h]
mov     eax, 129h
call    sub_4D8BC3
call    sub_4DE13B
test    eax, eax
jz      short loc_4B21D2
jmp     short loc_4B21B7

loc_4B218D:
cmp     ds:byte_77E7D4, 0Bh
jnz     short loc_4B21A1
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jz      short loc_4B21AE

loc_4B21A1:
lea     edx, [ebx+14h]
mov     eax, 129h
call    sub_4D8BC3

loc_4B21AE:
call    sub_4DE13B
test    eax, eax
jz      short loc_4B21D2

loc_4B21B7:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     ecx, 11h
lea     edi, [eax+14h]
lea     esi, [ebx+88h]
rep movsd

loc_4B21D2:
lea     eax, [ebx+44h]
mov     edx, ebp
call    sub_42D90F

loc_4B21DC:
mov     eax, [esp+1Ch+var_1C]
add     esp, 4
pop     ebp
jmp     loc_4B1D44
sub_4B2076 endp




sub_4B21E8 proc near
push    edx
mov     dx, [eax+4Ch]
add     [eax+44h], dx
mov     dx, [eax+4Eh]
add     [eax+46h], dx
mov     dx, [eax+50h]
add     [eax+48h], dx
mov     edx, [eax+42h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4B2217
mov     word ptr [eax+44h], 0A000h
jmp     short loc_4B2225

loc_4B2217:
cmp     word ptr [eax+44h], 6000h
jle     short loc_4B2225
mov     word ptr [eax+44h], 6000h

loc_4B2225:
mov     edx, [eax+44h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4B223B
mov     word ptr [eax+46h], 0A000h
jmp     short loc_4B2249

loc_4B223B:
cmp     word ptr [eax+46h], 6000h
jle     short loc_4B2249
mov     word ptr [eax+46h], 6000h

loc_4B2249:
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4B225F
mov     word ptr [eax+48h], 0A000h
jmp     short loc_4B226D

loc_4B225F:
cmp     word ptr [eax+48h], 6000h
jle     short loc_4B226D
mov     word ptr [eax+48h], 6000h

loc_4B226D:
mov     edx, [eax+42h]
sar     edx, 10h
shl     edx, 8
add     [eax+1Ch], edx
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 8
add     [eax+20h], edx
mov     edx, [eax+46h]
sar     edx, 10h
shl     edx, 8
add     [eax+24h], edx
pop     edx
retn
sub_4B21E8 endp




sub_4B2293 proc near
push    esi
push    edi
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 2
mov     byte ptr [edx+0Eh], 1
cmp     byte ptr ds:dword_5F897D+3, 0
jnz     short loc_4B22B3
mov     byte ptr [edx+0Dh], 1
jmp     short loc_4B22B7

loc_4B22B3:
mov     byte ptr [edx+0Dh], 2

loc_4B22B7:
lea     edi, [edx+48h]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4B2293 endp




sub_4B22C2 proc near
push    edx
lea     edx, [eax+14h]
mov     eax, (offset dword_5F8376+2)
call    sub_4B22ED
cmp     eax, 1C00h
jb      short loc_4B22E3
mov     ds:dword_55CEF0, 80h
pop     edx
retn

loc_4B22E3:
shr     eax, 6
mov     ds:dword_55CEF0, eax
pop     edx
retn
sub_4B22C2 endp




sub_4B22ED proc near
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
sub_4B22ED endp




sub_4B232C proc near
push    esi
push    edi
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 19h
mov     byte ptr [edx+3], 0
jmp     loc_4B22B7
sub_4B232C endp




sub_4B233E proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B2347[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B233E endp




sub_4B2358 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
call    sub_42A85C
mov     edi, eax
mov     ebx, [ecx+62h]
sar     ebx, 10h
movsx   ebp, ax
mov     edx, ebp
mov     eax, ecx
call    sub_4B270B
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B23B8
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
add     edx, 80h
lea     ebx, [edx+eax]
mov     edx, ebp
mov     eax, esi
call    sub_4B270B

loc_4B23B8:
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B23ED
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
sub     edx, 80h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B23ED:
cmp     ds:byte_5F898C, 0
jle     loc_4B24D7
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B242F
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
add     edx, 100h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B242F:
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B2464
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
sub     edx, 100h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B2464:
cmp     ds:byte_5F898C, 1
jle     short loc_4B24D7
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B24A2
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
add     edx, 180h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B24A2:
call    sub_4DE0BF
mov     esi, eax
test    eax, eax
jz      short loc_4B24D7
mov     edx, eax
mov     eax, ecx
call    sub_4B26DB
mov     edx, [ecx+62h]
sar     edx, 10h
call    rand_
and     eax, 1Fh
sub     edx, 180h
lea     ebx, [edx+eax]
movsx   edx, di
mov     eax, esi
call    sub_4B270B

loc_4B24D7:
lea     edx, [ecx+14h]
mov     eax, 12Ah
call    sub_4D8BC3
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B2358 endp




sub_4B24EB proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 20h ; ' '
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B2508
mov     dx, [ecx+7Ch]
test    dx, dx
jz      short loc_4B251B

loc_4B2508:
mov     eax, ecx
call    sub_4B25F9

loc_4B250F:
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B251B:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+4Ch]
add     [ecx+44h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     [ecx+7Ch], dx
mov     al, [ecx+0Bh]
mov     ah, al
inc     ah
mov     [ecx+0Bh], ah
cmp     al, 5Ah ; 'Z'
jnb     short loc_4B250F
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
mov     eax, ecx
call    sub_4B266C
mov     ah, [ecx+9]
inc     ah
mov     [ecx+9], ah
cmp     ah, 5
jbe     short loc_4B25D0
mov     byte ptr [ecx+9], 0

loc_4B25D0:
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EEC[eax*8]
mov     [ecx+96h], al
xor     eax, eax
mov     al, [ecx+9]
mov     al, ds:byte_530EF0[eax*8]
mov     [ecx+97h], al
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B24EB endp




sub_4B25F9 proc near
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
mov     esi, eax
test    eax, eax
jz      short loc_4B2635
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     eax, ds:dword_5F8985
sar     eax, 18h
cmp     eax, 2
jle     short loc_4B2626
mov     eax, 2

loc_4B2626:
mov     [esi+0Dh], al
mov     byte ptr [esi+0Eh], 1
lea     edi, [esi+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4B2635:
pop     edi
pop     esi
pop     edx
retn
sub_4B25F9 endp




sub_4B2639 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B2669
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 1
mov     bx, [edx+14h]
mov     [eax+1Ch], bx
mov     bx, [edx+16h]
mov     [eax+1Eh], bx
mov     dx, [edx+18h]
mov     [eax+20h], dx

loc_4B2669:
pop     edx
pop     ebx
retn
sub_4B2639 endp




sub_4B266C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, 6
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     esi, [ecx+0D4h]
or      edx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B26B1
push    80h
push    0
push    edx
push    esi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B26C5

loc_4B26B1:
push    80h
push    0
push    edx
push    esi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B26C5:
push    200h
mov     ecx, 20h ; ' '
mov     edx, ecx
call    sub_4E02CB
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B266C endp




sub_4B26DB proc near
push    ebx
push    esi
push    edi
mov     byte ptr [edx], 1
mov     bl, [eax+2]
mov     [edx+2], bl
mov     bl, [eax+0Ch]
mov     [edx+0Ch], bl
lea     edi, [edx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
mov     ax, [eax+64h]
mov     [edx+64h], ax
pop     edi
pop     esi
pop     ebx
retn
sub_4B26DB endp




sub_4B270B proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= word ptr -18h
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 50h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530EE0
call    rand_
xor     ah, ah
and     al, 0Fh
sub     edx, 10h
sub     edx, eax
mov     [esp+5Ch+var_14], dx
and     bh, 0Fh
mov     [esp+5Ch+var_12], bx
xor     edx, edx
mov     [esp+5Ch+var_10], dx
mov     edx, esp
lea     eax, [esp+5Ch+var_14]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+5Ch+var_1C], bx
mov     word ptr [esp+5Ch+var_1C+2], bx
mov     [esp+5Ch+var_18], 0F000h
lea     ebx, [esp+5Ch+var_2C]
lea     edx, [esp+5Ch+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+5Ch+var_2C]
mov     word ptr [esp+5Ch+var_1C], ax
mov     eax, [esp+5Ch+var_28]
mov     word ptr [esp+5Ch+var_1C+2], ax
mov     eax, [esp+5Ch+var_24]
mov     [esp+5Ch+var_18], ax
call    rand_
mov     ebx, eax
and     ebx, 1Fh
mov     edx, 6
mov     eax, offset byte_5F8364
call    sub_4EE62E
add     eax, ebx
mov     edx, [esp+3Eh]
sar     edx, 10h
imul    edx, eax
shr     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+5Ch+var_1C]
sar     edx, 10h
imul    edx, eax
shr     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+5Ch+var_1C+2]
sar     edx, 10h
imul    eax, edx
shr     eax, 4
mov     [ecx+48h], ax
lea     edi, [ecx+0A4h]
lea     esi, [esp+5Ch+var_1C]
movsd
movsd
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     dword ptr [ecx+88h], 3D48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     al, ds:byte_530EEC
mov     [ecx+96h], al
mov     al, ds:byte_530EF0
mov     [ecx+97h], al
mov     word ptr [ecx+98h], 18h
mov     byte ptr [ecx+0Bh], 0
mov     edx, esp
mov     eax, ecx
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_4B28AA
mov     word ptr [ecx+1Ah], 6208h
mov     word ptr [ecx+32h], 6208h
jmp     short loc_4B28B6

loc_4B28AA:
mov     word ptr [ecx+1Ah], 4208h
mov     word ptr [ecx+32h], 4208h

loc_4B28B6:
mov     eax, ecx
call    sub_4B266C
add     esp, 50h
pop     edi
pop     esi
pop     ecx
retn
sub_4B270B endp




sub_4B28C4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B28CA[edx*4]
pop     edx
retn
sub_4B28C4 endp




sub_4B28D3 proc near
push    edx
mov     edx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [edx+0Bh], 0
inc     byte ptr [edx+8]
add     edx, 14h
mov     eax, 12Bh
call    sub_4D8BC3
pop     edx
retn
sub_4B28D3 endp




sub_4B28F7 proc near

var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4A= dword ptr -4Ah
var_46= dword ptr -46h
var_40= byte ptr -40h
var_38= dword ptr -38h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
inc     byte ptr [eax+0Bh]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+5Ch+var_28], eax
lea     edi, [esp+5Ch+var_38]
lea     esi, [eax+14h]
movsd
movsd
mov     edx, 7
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     [esp+5Ch+var_1C], eax
mov     eax, ds:dword_5F8991
sar     eax, 18h
mov     eax, ds:(off_530F28+2)[eax*2]
sar     eax, 10h
mov     [esp+5Ch+var_24], eax
xor     edx, edx
mov     [esp+5Ch+var_20], edx
jmp     loc_4B29DF

loc_4B2950:
mov     eax, [esp+5Ch+var_4A]
sar     eax, 10h
mov     edx, edi
imul    edx, eax
sar     edx, 0Ch
mov     eax, [ebp+46h]
sar     eax, 10h
add     eax, edx
mov     [ebp+48h], ax
mov     edx, [esp+5Ch+var_46]
sar     edx, 10h
imul    edx, edi
sar     edx, 0Ch
mov     eax, [ebp+4Ah]
sar     eax, 10h
add     eax, edx
mov     [ebp+4Ch], ax
lea     edi, [esp+5Ch+var_30]
lea     esi, [ebp+48h]
movsd
movsd
xor     edx, edx
mov     dl, [ebp+0Ah]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_5308D8
add     ecx, eax
mov     ebx, 1
lea     edx, [esp+5Ch+var_40]
lea     eax, [esp+5Ch+var_30]
call    sub_42DF6E
mov     eax, [esp+5Ch+var_30]
mov     [ebp+48h], ax
mov     eax, [esp+5Ch+var_30+2]
mov     [ebp+4Ah], ax
mov     eax, [esp+5Ch+var_2C]
mov     [ebp+4Ch], ax

loc_4B29CD:
mov     ebx, [esp+5Ch+var_20]
inc     ebx
mov     [esp+5Ch+var_20], ebx
cmp     ebx, 40h ; '@'
jnb     loc_4B2B0D

loc_4B29DF:
mov     eax, [esp+5Ch+var_20]
mov     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 2
sub     ebp, eax
shl     ebp, 3
add     ebp, offset unk_572D5C
cmp     byte ptr [ebp+0], 0
jz      short loc_4B29CD
cmp     byte ptr [ebp+2], 87h
jnz     short loc_4B29CD
cmp     byte ptr [ebp+8], 5
jnb     short loc_4B29CD
lea     edi, [esp+5Ch+var_4A+2]
lea     esi, [ebp+48h]
movsd
movsd
mov     ebx, [esp+22h]
sar     ebx, 10h
mov     eax, [esp+5Ch+var_4A]
sar     eax, 10h
mov     edx, ebx
sub     edx, eax
mov     [esp+5Ch+var_58], edx
mov     ecx, [esp+5Ch+var_1C]
add     edx, ecx
lea     eax, [ecx+ecx]
cmp     edx, eax
ja      short loc_4B29CD
mov     edx, [esp+5Ch+var_38]
sar     edx, 10h
mov     ecx, [esp+5Ch+var_4A+2]
sar     ecx, 10h
sub     edx, ecx
mov     [esp+5Ch+var_54], edx
add     edx, [esp+5Ch+var_1C]
cmp     edx, eax
ja      loc_4B29CD
mov     ecx, [esp+5Ch+var_38+2]
sar     ecx, 10h
mov     edx, [esp+5Ch+var_46]
sar     edx, 10h
mov     esi, ecx
sub     esi, edx
mov     [esp+5Ch+var_50], esi
mov     edi, [esp+5Ch+var_1C]
lea     edx, [esi+edi]
cmp     edx, eax
ja      loc_4B29CD
mov     edx, [esp+5Ch+var_54]
imul    edx, edx
mov     eax, [esp+5Ch+var_58]
imul    eax, eax
add     edx, eax
mov     eax, esi
imul    eax, esi
add     edx, eax
mov     eax, edi
imul    eax, edi
cmp     edx, eax
jnb     loc_4B29CD
lea     edx, [esp+5Ch+var_4A+2]
lea     eax, [esp+5Ch+var_58]
call    sub_4EF932
lea     edi, [esp+5Ch+var_40]
lea     esi, [ebp+48h]
movsd
movsd
mov     edi, [esp+5Ch+var_24]
test    edi, edi
jg      loc_4B2950
call    rand_
mov     edx, eax
and     edx, 1Fh
mov     eax, [esp+5Ch+var_4A]
sar     eax, 10h
sub     edx, 10h
imul    eax, edx
sar     eax, 0Ch
sub     ebx, eax
mov     [ebp+48h], bx
mov     eax, [esp+5Ch+var_38+2]
sub     eax, 8Ch
mov     [ebp+4Ah], ax
call    rand_
and     eax, 1Fh
mov     edx, [esp+5Ch+var_46]
sar     edx, 10h
sub     eax, 10h
imul    eax, edx
sar     eax, 0Ch
sub     ecx, eax
mov     [ebp+4Ch], cx

loc_4B2B0D:
mov     eax, [esp+5Ch+var_28]
cmp     byte ptr [eax+170h], 7
jnz     short loc_4B2B5D
mov     dx, [eax+632h]
test    dx, dx
jz      short loc_4B2B39
cmp     dx, 7FFFh
jz      short loc_4B2B49
mov     ecx, edx
dec     ecx
mov     [eax+632h], cx
jmp     short loc_4B2B49

loc_4B2B39:
xor     ebx, ebx
xor     edx, edx
mov     eax, 12Ch
call    sub_4D89E4
jmp     short loc_4B2B5D

loc_4B2B49:
mov     eax, [esp+5Ch+var_28]
mov     al, [eax+100h]
cmp     al, ds:byte_550FCE
jbe     short loc_4B2B65
jmp     short loc_4B2B39

loc_4B2B5D:
mov     eax, [esp+5Ch+var_5C]
call    sub_4DE3AC

loc_4B2B65:
add     esp, 44h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B28F7 endp




sub_4B2B6F proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B2B78[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B2B6F endp




sub_4B2B89 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530F3C
call    rand_
mov     edx, eax
xor     dh, ah
and     dl, 7
sub     edx, 4
add     edx, edx
call    sub_42A85C
add     eax, edx
mov     [esp+34h+var_24], ax
call    rand_
mov     edx, eax
xor     dh, ah
and     dl, 7
sub     edx, 4
add     edx, edx
mov     ax, [ecx+64h]
and     ah, 0Fh
add     eax, edx
mov     [esp+34h+var_22], ax
xor     edx, edx
mov     [esp+34h+var_20], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+34h+var_24]
call    sub_4EF638
xor     ebx, ebx
mov     [esp+34h+var_24], bx
mov     [esp+34h+var_22], bx
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, esi
call    sub_4EF1FB
mov     eax, [esp+34h+var_34]
mov     [ecx+44h], ax
mov     eax, [esp+34h+var_30]
mov     [ecx+46h], ax
mov     eax, [esp+34h+var_2C]
mov     [ecx+48h], ax
mov     edx, 200h
mov     [esp+34h+var_30], edx
mov     [esp+34h+var_2C], edx
mov     [esp+34h+var_34], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+7Ch], 0
lea     eax, [ecx+88h]
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+0E4h]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [ecx+0E4h]
movsd
movsd
lea     edi, [ecx+0ECh]
lea     esi, [esp+34h+var_1C]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [ecx+0ECh]
movsd
movsd
lea     edi, [ecx+0F4h]
lea     esi, [esp+34h+var_1C]
movsd
movsd
lea     edi, [esp+34h+var_1C]
lea     esi, [ecx+0F4h]
movsd
movsd
lea     edi, [ecx+0FCh]
lea     esi, [esp+34h+var_1C]
movsd
movsd
mov     dword ptr [eax+3Ch], offset unk_808080
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr [ecx+3], 80h
jb      short loc_4B2D3D
mov     eax, [ecx+0CCh]
or      eax, [ecx+0D0h]
jnz     short loc_4B2D3D
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [ecx+3], 0

loc_4B2D3D:
mov     edx, 8
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     [ecx+0Bh], al
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_4B2F88
lea     edx, [ecx+14h]
mov     eax, 12Dh
call    sub_4D8BC3
add     esp, 20h

loc_4B2D69:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B2B89 endp




sub_4B2D6F proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= byte ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 24h
mov     ebp, eax
mov     edx, 20h ; ' '
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B2D8F
cmp     word ptr [ebp+7Ch], 0
jz      short loc_4B2DAE

loc_4B2D8F:
mov     eax, ebp
call    sub_4DE3AC
cmp     byte ptr [ebp+3], 80h
jb      short loc_4B2DA7
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14

loc_4B2DA7:
mov     eax, ebp
call    sub_4B3016

loc_4B2DAE:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+0FCh]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0E4h]
lea     esi, [ebp+14h]
movsd
movsd
lea     eax, [ebp+88h]
mov     [esp+3Ch+var_1C], eax
mov     al, [ebp+0Bh]
mov     ah, al
dec     ah
mov     [ebp+0Bh], ah
test    al, al
jbe     loc_4B2F6E
cmp     byte ptr [ebp+3], 80h
jb      loc_4B2ED3
mov     eax, [ebp+0CCh]
or      eax, [ebp+0D0h]
jz      loc_4B2F5A
mov     edx, [ebp+0CAh]
sar     edx, 10h
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     [esp+3Ch+var_3C], edx
mov     eax, [ebp+0CCh]
sar     eax, 10h
mov     edx, [ebp+14h]
sar     edx, 10h
sub     eax, edx
mov     [esp+3Ch+var_38], eax
mov     edx, [ebp+0CEh]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+3Ch+var_34], edx
mov     eax, [esp+3Ch+var_3C]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4B2E97
mov     eax, [esp+3Ch+var_38]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4B2E97
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4B2EA5

loc_4B2E97:
sar     [esp+3Ch+var_3C], 2
sar     [esp+3Ch+var_38], 2
sar     [esp+3Ch+var_34], 2

loc_4B2EA5:
lea     edx, [esp+3Ch+var_24]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+44h]
mov     ecx, 0F746EA4h
mov     ebx, 424h
lea     eax, [esp+3Ch+var_24]
lea     esi, [esp+3Ch+var_2C]
call    sub_4DFFB5
lea     edi, [ebp+44h]
lea     esi, [esp+3Ch+var_2C]
movsd
movsd

loc_4B2ED3:
mov     eax, ds:dword_5F8995+2
sar     eax, 18h
mov     ax, ds:word_530F48[eax*2]
and     eax, 0FFFFh
mov     edx, [ebp+42h]
sar     edx, 10h
imul    edx, eax
shl     edx, 4
add     [ebp+1Ch], edx
mov     edx, [ebp+44h]
sar     edx, 10h
imul    edx, eax
shl     edx, 4
add     [ebp+20h], edx
mov     edx, [ebp+46h]
sar     edx, 10h
imul    eax, edx
shl     eax, 4
add     [ebp+24h], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
mov     [ebp+14h], ax
mov     edx, [esp+3Ch+var_1C]
mov     [edx+34h], ax
mov     eax, [ebp+20h]
sar     eax, 10h
mov     [ebp+16h], ax
mov     [edx+36h], ax
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [ebp+18h], ax
mov     [edx+38h], ax
mov     eax, ebp
call    sub_4B2F88
mov     eax, ebp
call    sub_4B305F

loc_4B2F51:
add     esp, 24h
pop     ebp
jmp     loc_4B2D69

loc_4B2F5A:
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     byte ptr [ebp+3], 0
jmp     loc_4B2ED3

loc_4B2F6E:
mov     eax, ebp
call    sub_4DE3AC
cmp     byte ptr [ebp+3], 80h
jb      short loc_4B2F51
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E0F14
jmp     short loc_4B2F51
sub_4B2D6F endp




sub_4B2F88 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
mov     edx, 8
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     ebx, eax
mov     ax, [ecx+2Ch]
mov     [esp+14h+var_14], ax
mov     ax, [ecx+2Eh]
mov     [esp+14h+var_12], ax
mov     ax, [ecx+30h]
mov     [esp+14h+var_10], ax
lea     eax, [ecx+14h]
lea     edx, [ecx+0D4h]
or      ebx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B2FE6
push    80h
push    0
push    ebx
push    edx
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B2FFA

loc_4B2FE6:
push    80h
push    0
push    ebx
push    edx
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B2FFA:
push    200h
mov     ecx, 30h ; '0'
lea     ebx, [esp+30h+var_14]
mov     edx, ecx
call    sub_4E02CB
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4B2F88 endp




sub_4B3016 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4B305C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     ecx, ds:dword_5F8995
sar     ecx, 18h
mov     cl, ds:byte_530F60[ecx]
mov     [eax+0Dh], cl
mov     byte ptr [eax+0Eh], 1
mov     cx, [edx+14h]
mov     [eax+48h], cx
mov     cx, [edx+16h]
mov     [eax+4Ah], cx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4B305C:
pop     edx
pop     ecx
retn
sub_4B3016 endp




sub_4B305F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
call    sub_4EE16B
test    eax, eax
jz      short loc_4B30B3
mov     edx, [edi+14h]
mov     [eax], edx
mov     edx, ds:dword_530F6C
or      edx, 52000000h
mov     [eax+4], edx
mov     edx, [edi+0E4h]
mov     [eax+8], edx
mov     edx, ds:dword_530F68
mov     [eax+0Ch], edx
mov     ecx, [edi+16h]
sar     ecx, 10h
shl     ecx, 10h
xor     edx, edx
mov     dx, [edi+0E8h]
or      ecx, edx
mov     [eax+10h], ecx
mov     dword ptr [eax+28h], 0E1000020h

loc_4B30B3:
xor     ecx, ecx
jmp     short loc_4B30C1

loc_4B30B7:
inc     ecx
cmp     ecx, 3
jge     loc_4B2D69

loc_4B30C1:
call    sub_4EE16B
test    eax, eax
jz      short loc_4B30B7
mov     edx, ecx
mov     ebx, [edi+edx*8+0E4h]
mov     [eax], ebx
mov     esi, ds:off_530F70[ecx*4]
or      esi, 52000000h
mov     [eax+4], esi
mov     esi, [edi+edx*8+0ECh]
mov     [eax+8], esi
mov     ebx, ds:dword_530F6C[ecx*4]
mov     [eax+0Ch], ebx
mov     ebx, [edi+edx*8+0E6h]
sar     ebx, 10h
shl     ebx, 10h
mov     dx, [edi+edx*8+0F0h]
and     edx, 0FFFFh
or      ebx, edx
mov     [eax+10h], ebx
mov     dword ptr [eax+28h], 0E1000020h
jmp     short loc_4B30B7
sub_4B305F endp




sub_4B3122 proc near
push    edx
and     byte ptr [eax+3], 7Fh
xor     edx, edx
mov     dl, [eax+3]
call    ds:off_530FDC[edx*4]
pop     edx
retn
sub_4B3122 endp




sub_4B3135 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B313B[edx*4]
pop     edx
retn
sub_4B3135 endp




sub_4B3144 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530FA4
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     eax, ecx
call    sub_4B39B8
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+0C4h], 2808080h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B3565
lea     edx, [ecx+14h]
mov     eax, 12Eh
call    sub_4D8BC3
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0Dh
mov     byte ptr [ecx+8], 1
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B3144 endp




sub_4B31E1 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ah, [eax+0Fh]
dec     ah
mov     [edx+0Fh], ah
jnz     short loc_4B31FD
mov     eax, edx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B31FD:
cmp     ah, 9
jnz     short loc_4B3219
cmp     ds:byte_5F89A2, 0
jz      short loc_4B3212
mov     eax, edx
call    sub_4B38E8

loc_4B3212:
mov     eax, edx
call    sub_4B390B

loc_4B3219:
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, edx
call    sub_4B39B8
mov     eax, edx
call    sub_4B3565
mov     ch, [edx+0Fh]
cmp     ch, 0Bh
jge     short loc_4B324D
cmp     ch, 7
jle     short loc_4B324D
mov     eax, edx
call    sub_4B375F

loc_4B324D:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B31E1 endp




sub_4B3252 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B3258[edx*4]
pop     edx
retn
sub_4B3252 endp




sub_4B3261 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= byte ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
lea     ebp, [ecx+88h]
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530FA4
call    sub_42A85C
mov     [ecx+54h], ax
mov     [esp+38h+var_20], ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     [ecx+56h], ax
mov     [esp+38h+var_1E], ax
mov     word ptr [ecx+58h], 680h
mov     ax, [ecx+58h]
mov     [esp+38h+var_1C], ax
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+38h+var_20]
call    sub_4EF638
mov     edx, 200h
mov     [esp+38h+var_30], edx
mov     [esp+38h+var_34], edx
mov     [esp+38h+var_38], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     eax, [ecx+44h]
mov     edx, 32h ; '2'
call    sub_4B3A21
lea     edi, [ecx+14h]
mov     esi, offset unk_5F882C
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [esp+38h+var_28]
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
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebp+3Ch], 2808080h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B3881
mov     byte ptr [ecx+0Eh], 4
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     edx, eax
mov     ebx, 32h ; '2'
sar     edx, 1Fh
idiv    ebx
mov     [ecx+0Fh], al
mov     byte ptr [ecx+8], 1
add     esp, 20h

loc_4B338E:
pop     ebp

loc_4B338F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3261 endp




sub_4B3395 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
mov     ah, [eax+0Fh]
dec     ah
mov     [ecx+0Fh], ah
jnz     short loc_4B33B2

loc_4B33AC:
mov     byte ptr [ecx+8], 2
jmp     short loc_4B338F

loc_4B33B2:
xor     edx, edx
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B33AC
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
mov     eax, ecx
call    sub_4B3881
jmp     loc_4B338F
sub_4B3395 endp




sub_4B342B proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax        ; int
add     eax, 88h
mov     ebx, [ecx+0Bh]
sar     ebx, 18h
mov     esi, ebx
shl     esi, 5
mov     edx, ebx
shl     edx, 15h
or      edx, 2000000h
shl     ebx, 0Dh
or      edx, ebx
or      edx, esi
mov     [eax+3Ch], edx
mov     ax, [ecx+54h]
mov     [esp+28h+var_18], ax
mov     ax, [ecx+56h]
mov     [esp+28h+var_16], ax
mov     ax, [ecx+58h]
mov     [esp+28h+var_14], ax
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+28h+var_18]
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_28], edx
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 4
add     eax, 100h
mov     [esp+28h+var_20], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     ah, [ecx+0Eh]
dec     ah
mov     [ecx+0Eh], ah
jnz     short loc_4B34BD
mov     eax, ecx
call    sub_4DE3AC

loc_4B34BD:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B342B endp




sub_4B34C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B34CB[edx*4]
pop     edx
retn
sub_4B34C5 endp




sub_4B34D4 proc near
push    edx
or      byte ptr [eax], 22h
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Dh], 0
mov     dword ptr [eax+88h], 3D48002Ch
mov     dword ptr [eax+8Ch], 2E808080h
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD0[edx*2]
mov     [eax+96h], dl
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD1[edx*2]
mov     [eax+97h], dl
mov     word ptr [eax+98h], 60h ; '`'
mov     word ptr [eax+9Ah], 0Bh
pop     edx
retn
sub_4B34D4 endp




sub_4B352E proc near
push    edx
inc     byte ptr [eax+0Dh]
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD0[edx*2]
mov     [eax+96h], dl
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD1[edx*2]
mov     [eax+97h], dl
cmp     byte ptr [eax+0Dh], 5
jle     short loc_4B3563
call    sub_4DE3AC

loc_4B3563:
pop     edx
retn
sub_4B352E endp




sub_4B3565 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 58h
mov     ebp, eax
mov     eax, ds:dword_5F899D
sar     eax, 18h
mov     [esp+70h+var_1C], eax
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [esp+70h+var_20], eax
mov     ecx, 0Ch
mov     edi, esp
mov     esi, offset unk_5F85FC
rep movsd
lea     edi, [esp+70h+var_30]
mov     esi, offset unk_5F882C
movsd
movsd
lea     ecx, [ebp+8Ch]
mov     eax, ecx
call    sub_4EF184
mov     edx, 1000h
mov     [esp+70h+var_38], edx
mov     [esp+70h+var_3C], edx
mov     [esp+70h+var_40], edx
lea     edx, [esp+70h+var_40]
mov     eax, ecx
call    sub_4EF689
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
xor     edx, edx
mov     word ptr [esp+70h+var_28], dx
mov     word ptr [esp+70h+var_28+2], 1000h
mov     [esp+70h+var_24], dx
lea     ebx, [esp+70h+var_40]
lea     edx, [esp+70h+var_28]
mov     eax, ecx
call    sub_4EF1FB
mov     edx, [esp+70h+var_40]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     word ptr [esp+70h+var_28], ax
mov     edx, [esp+70h+var_3C]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     word ptr [esp+70h+var_28+2], ax
mov     edx, [esp+70h+var_38]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     [esp+70h+var_24], ax
mov     ebx, [esp+70h+var_1C]
shl     ebx, 2
mov     eax, [esp+46h]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+3Eh]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_40], eax
mov     eax, [esp+70h+var_28]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+70h+var_30]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_3C], eax
mov     eax, [esp+70h+var_28+2]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+70h+var_30+2]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_38], eax
mov     eax, [esp+70h+var_40]
sar     eax, 10h
mov     word ptr [esp+70h+var_28], ax
mov     eax, [esp+70h+var_3C]
sar     eax, 10h
mov     word ptr [esp+70h+var_28+2], ax
mov     eax, [esp+70h+var_38]
sar     eax, 10h
mov     [esp+70h+var_24], ax
mov     edx, [esp+70h+var_1C]
mov     eax, ds:dword_531048[edx*8]
add     eax, 1000h
mov     [esp+70h+var_40], eax
mov     [esp+70h+var_38], eax
mov     eax, ds:dword_531044[edx*8]
add     eax, 1000h
mov     [esp+70h+var_3C], eax
lea     edx, [esp+70h+var_40]
mov     eax, ecx
call    sub_4EF689
push    80h
push    0
mov     eax, [esp+78h+var_20]
or      eax, 28000000h
push    eax
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    4000h
push    200h
mov     edx, ds:dword_531024[ebx]
lea     ebx, [ebp+14h]
mov     ecx, edx
lea     eax, [esp+8Ch+var_28]
call    sub_4E02CB
mov     dword ptr [ebp+0CCh], 0
mov     dword ptr [ebp+0D0h], 0
add     esp, 58h
jmp     loc_4B338E
sub_4B3565 endp




sub_4B375F proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2C= dword ptr -2Ch
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
sub     esp, 2Ch
mov     ebp, eax
mov     edi, esp
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     esi, ds:dword_5F899D
sar     esi, 18h
mov     esi, ds:dword_531084[esi*4]
sub     [esp+44h+var_40], offset loc_500000
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     ebx, eax
mov     edx, 3Ch ; '<'
lea     eax, [esp+44h+var_2C]
call    sub_4B3A21
mov     eax, [esp+16h]
sar     eax, 10h
mov     edx, eax
shl     edx, 9
add     edx, [esp+44h+var_44]
sar     edx, 10h
mov     [esp+44h+var_34], dx
mov     edx, [esp+44h+var_2C]
sar     edx, 10h
mov     ecx, edx
shl     ecx, 9
add     ecx, [esp+44h+var_40]
sar     ecx, 10h
mov     [esp+44h+var_32], cx
mov     ecx, [esp+44h+var_2C+2]
sar     ecx, 10h
mov     edi, ecx
shl     edi, 9
mov     [esp+44h+var_1C], edi
mov     edi, [esp+44h+var_3C]
add     edi, [esp+44h+var_1C]
sar     edi, 10h
mov     [esp+44h+var_1C], edi
mov     edi, [esp+44h+var_1C]
mov     [esp+44h+var_30], di
shl     eax, 8
add     eax, [esp+44h+var_44]
sar     eax, 10h
mov     [esp+44h+var_24], ax
shl     edx, 8
add     edx, [esp+44h+var_40]
sar     edx, 10h
mov     [esp+44h+var_22], dx
shl     ecx, 8
add     ecx, [esp+44h+var_3C]
sar     ecx, 10h
mov     [esp+44h+var_20], cx
push    80h
push    0
or      ebx, 28000000h
push    ebx
lea     eax, [ebp+0D4h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    4000h
push    200h
mov     ecx, esi
lea     ebx, [esp+60h+var_24]
mov     edx, esi
lea     eax, [esp+60h+var_34]
call    sub_4E02CB
mov     dword ptr [ebp+0D4h], 0
mov     dword ptr [ebp+0D8h], 0
add     esp, 2Ch
jmp     loc_4B338E
sub_4B375F endp




sub_4B3881 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, byte ptr ds:dword_5F899D+3
push    80h
push    0
movsx   eax, al
mov     eax, ds:dword_530FB0[eax*4]
or      eax, 8000000h
push    eax
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
lea     ebx, [esi+2Ch]
lea     eax, [esi+14h]
mov     ecx, 5Ch ; '\'
mov     edx, 8
call    sub_4E02CB
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3881 endp




sub_4B38E8 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE0BF
test    eax, eax
jz      short loc_4B3908
mov     byte ptr [eax], 1
mov     bl, [edx+2]
mov     [eax+2], bl
mov     byte ptr [eax+3], 1
mov     dl, [edx+1]
mov     [eax+0Ch], dl

loc_4B3908:
pop     edx
pop     ebx
retn
sub_4B38E8 endp




sub_4B390B proc near

var_26= dword ptr -26h
var_22= dword ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edi, [esp+24h+var_1C]
mov     esi, (offset dword_5F880A+2)
movsd
movsd
mov     edx, 64h ; 'd'
mov     eax, esp
call    sub_4B3A21
mov     edx, [esp+6]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_26]
sar     eax, 10h
shl     eax, 8
lea     ebx, [edx+eax]
mov     edx, [esp+24h+var_1C]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_26+2]
sar     eax, 10h
shl     eax, 8
lea     esi, [edx+eax]
mov     edx, [esp+24h+var_1C+2]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_22]
sar     eax, 10h
shl     eax, 8
lea     edi, [edx+eax]
call    sub_4DE0BF
test    eax, eax
jz      short loc_4B39B0
mov     byte ptr [eax], 1
mov     dl, [ecx+2]
mov     [eax+2], dl
mov     byte ptr [eax+3], 2
mov     cl, [ecx+1]
mov     [eax+0Ch], cl
mov     ecx, ebx
sar     ecx, 10h
mov     [eax+90h], cx
mov     ecx, esi
sar     ecx, 10h
mov     [eax+92h], cx
mov     ecx, edi
sar     ecx, 10h
mov     [eax+94h], cx

loc_4B39B0:
add     esp, 10h
jmp     loc_4B338F
sub_4B390B endp




sub_4B39B8 proc near

var_1A= dword ptr -1Ah
var_16= dword ptr -16h

push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
lea     ecx, [eax+88h]
mov     edi, esp
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [esp+18h+var_1A]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [esp+18h+var_1A+2]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [esp+18h+var_16]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, [esp+18h+var_1A+2]
mov     [edx+14h], ax
mov     [ecx+34h], ax
mov     eax, [esp+18h+var_16]
mov     [edx+16h], ax
mov     [ecx+36h], ax
mov     eax, [esp+18h+var_16+2]
mov     [edx+18h], ax
mov     [ecx+38h], ax
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B39B8 endp




sub_4B3A21 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 48h
mov     ecx, eax
mov     esi, edx
call    sub_42A85C
mov     [esp+54h+var_14], ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     [esp+54h+var_12], ax
xor     edx, edx
mov     [esp+54h+var_10], dx
mov     edx, esp
lea     eax, [esp+54h+var_14]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+54h+var_1C], edx
mov     [esp+54h+var_20], edx
mov     [esp+54h+var_24], edx
lea     edx, [esp+54h+var_24]
mov     eax, esp
call    sub_4EF689
xor     ebx, ebx
mov     [esp+54h+var_14], bx
mov     [esp+54h+var_12], bx
mov     [esp+54h+var_10], 0F000h
lea     ebx, [esp+54h+var_24]
lea     edx, [esp+54h+var_14]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+54h+var_24]
imul    eax, esi
sar     eax, 4
mov     [ecx], ax
mov     eax, [esp+54h+var_20]
imul    eax, esi
sar     eax, 4
mov     [ecx+2], ax
imul    esi, [esp+54h+var_1C]
sar     esi, 4
mov     [ecx+4], si
add     esp, 48h
pop     esi
pop     ecx
pop     ebx
retn
sub_4B3A21 endp




sub_4B3ABE proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B3AC7[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B3ABE endp




sub_4B3AD8 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ecx, eax
mov     ah, [eax]
or      ah, 0Ah
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5310A4
call    sub_42A85C
sub     eax, 80h
mov     word ptr [esp+5Ch+var_1C], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_1C+2], ax
xor     edx, edx
mov     [esp+5Ch+var_18], dx
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+5Ch+var_1C], bx
mov     word ptr [esp+5Ch+var_1C+2], bx
mov     [esp+5Ch+var_18], 0F000h
lea     ebx, [esp+5Ch+var_2C]
lea     edx, [esp+5Ch+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+5Ch+var_2C]
mov     word ptr [esp+5Ch+var_1C], ax
mov     eax, [esp+5Ch+var_28]
mov     word ptr [esp+5Ch+var_1C+2], ax
mov     eax, [esp+5Ch+var_24]
mov     [esp+5Ch+var_18], ax
mov     edx, 0Ah
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     edx, [esp+3Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+5Ch+var_1C]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+5Ch+var_1C+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [ecx+0A4h]
lea     esi, [esp+5Ch+var_1C]
movsd
movsd
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     eax, ds:dword_5F89A5
sar     eax, 18h
mov     eax, ds:dword_5310C0[eax*4]
mov     [ecx+88h], eax
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+96h], 0
mov     byte ptr [ecx+97h], 0
mov     eax, ds:dword_5F89A5
sar     eax, 18h
mov     ax, ds:word_5310B0[eax*2]
mov     [ecx+98h], ax
mov     word ptr [ecx+7Ch], 0
mov     byte ptr [ecx+0Bh], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     eax, ecx
call    sub_4B3EFC
lea     edx, [ecx+14h]
mov     eax, 12Fh
call    sub_4D8BC3
add     esp, 48h

loc_4B3C8F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3AD8 endp




sub_4B3C95 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 40h ; '@'
call    sub_4EE66E
mov     esi, eax
test    eax, eax
jnz     short loc_4B3CB2
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B3CD8

loc_4B3CB2:
cmp     esi, 7FFFh
mov     eax, ecx
call    sub_4B3D80
lea     edx, [ecx+14h]
mov     eax, 130h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B3CD8:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
mov     ah, [ecx+0Bh]
inc     ah
mov     [ecx+0Bh], ah
mov     al, ah
and     al, 7
and     eax, 0FFh
mov     dl, ds:byte_5310E0[eax*2]
mov     [ecx+96h], dl
mov     al, ds:byte_5310E1[eax*2]
mov     [ecx+97h], al
mov     eax, ecx
call    sub_4B3EFC
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B3C95 endp




sub_4B3D80 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr ds:dword_5F89A5+3, 0
jnz     loc_4B3E44
call    sub_4DE13B
test    eax, eax
jz      short loc_4B3DB8
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4B3DB8:
xor     esi, esi
jmp     short loc_4B3DC6

loc_4B3DBC:
inc     esi
cmp     esi, 4
jge     loc_4B3C8F

loc_4B3DC6:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B3DBC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 1
mov     ebx, esi
shl     ebx, 0Ah
mov     eax, ebx
call    sub_4EF003
mov     edi, eax
shl     eax, 2
add     eax, edi
add     eax, eax
mov     edi, eax
shl     eax, 4
sub     eax, edi
sar     eax, 0Ch
mov     edi, [ecx+12h]
sar     edi, 10h
add     eax, edi
mov     [edx+48h], ax
mov     eax, ebx
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 4
sub     eax, ebx
mov     ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+16h]
sar     eax, 10h
add     eax, ebx
mov     [edx+4Ch], ax
mov     ax, [ecx+16h]
mov     [edx+4Ah], ax
jmp     loc_4B3DBC

loc_4B3E44:
call    sub_4DE13B
test    eax, eax
jz      short loc_4B3E68
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 2
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4B3E68:
xor     esi, esi
jmp     short loc_4B3E76

loc_4B3E6C:
inc     esi
cmp     esi, 8
jge     loc_4B3C8F

loc_4B3E76:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B3E6C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
mov     edi, esi
shl     edi, 9
mov     eax, edi
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 2
add     eax, ebx
sar     eax, 0Ch
mov     ebx, [ecx+12h]
sar     ebx, 10h
add     eax, ebx
mov     [edx+48h], ax
mov     eax, edi
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 2
add     eax, ebx
sar     eax, 0Ch
mov     ebx, [ecx+16h]
sar     ebx, 10h
add     eax, ebx
mov     [edx+4Ch], ax
mov     ax, [ecx+16h]
mov     [edx+4Ah], ax
jmp     loc_4B3E6C
sub_4B3D80 endp




sub_4B3EFC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     esi, esi
mov     si, [eax+98h]
mov     edx, 1
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     edi, [ecx+0D4h]
or      edx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B3F4B
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B3F5F

loc_4B3F4B:
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B3F5F:
push    200h
mov     ecx, esi
mov     edx, esi
call    sub_4E02CB
jmp     loc_4B3C8F
sub_4B3EFC endp




sub_4B3F72 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B3F7B[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B3F72 endp




sub_4B3F8C proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
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
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx], 6
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5310F8
mov     byte ptr [ecx+74h], 1
lea     ebp, [ecx+0DCh]
mov     dword ptr [ebp+0], 0F0h
mov     eax, ds:dword_5F89AD
sar     eax, 18h
mov     [ebp+4], eax
mov     edx, 0Bh
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [ebp+8], eax
xor     edx, edx
mov     [esp+34h+var_24], dx
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+34h+var_22], ax
mov     [esp+34h+var_20], dx
mov     eax, ecx
add     eax, 8Ch
mov     [esp+34h+var_1C], eax
mov     edx, eax
lea     eax, [esp+34h+var_24]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+34h+var_30], edx
mov     ebx, edx
mov     [esp+34h+var_2C], edx
mov     esi, edx
mov     [esp+34h+var_34], edx
mov     edx, esp
mov     eax, [esp+34h+var_1C]
call    sub_4EF689
xor     esi, ebx
mov     [esp+34h+var_24], si
xor     edi, edi
mov     [esp+34h+var_22], di
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, [esp+34h+var_1C]
call    sub_4EF1FB
mov     eax, [esp+34h+var_34]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+44h], bx
mov     eax, [esp+34h+var_30]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+46h], bx
mov     eax, [esp+34h+var_2C]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+48h], bx
mov     [ecx+4Ch], di
mov     word ptr [ecx+4Eh], 200h
mov     [ecx+50h], di
lea     ebx, [ecx+88h]
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+34h], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+38h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+3Ch], eax
mov     eax, [ecx+34h]
sar     eax, 10h
mov     [ecx+2Ch], ax
mov     eax, [ecx+38h]
sar     eax, 10h
mov     [ecx+2Eh], ax
mov     eax, [ecx+3Ch]
sar     eax, 10h
mov     [ecx+30h], ax
mov     word ptr [ecx+7Ch], 0
mov     edi, 200h
mov     [esp+34h+var_2C], edi
mov     [esp+34h+var_34], edi
mov     [esp+34h+var_30], 300h
mov     edx, esp
mov     eax, [esp+34h+var_1C]
call    sub_4EF689
cmp     dword ptr [ebp+4], 0
jz      short loc_4B4173
mov     dword ptr [ebx+3Ch], offset unk_8080C0
jmp     short loc_4B417A

loc_4B4173:
mov     dword ptr [ebx+3Ch], offset unk_808080

loc_4B417A:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     edx, 4000h
mov     eax, ecx
call    sub_4B4402
lea     edx, [ecx+14h]
mov     eax, 132h
call    sub_4D8BC3
mov     byte ptr [ecx+8], 1
add     esp, 1Ch
jmp     loc_4B432C
sub_4B3F8C endp




sub_4B41A8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jz      short loc_4B41CA
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B41DD

loc_4B41CA:
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     loc_4B432D

loc_4B41DD:
lea     eax, [ecx+14h]
call    sub_42C443
test    eax, eax
jz      short loc_4B41CA
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
mov     eax, ecx
call    sub_42DE56
mov     edx, eax
test    eax, eax
jl      short loc_4B4275
test    ah, 10h
jz      short loc_4B426B
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+8], 2

loc_4B426B:
lea     eax, [ecx+44h]
call    sub_42D90F
jmp     short loc_4B427D

loc_4B4275:
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+8], 2

loc_4B427D:
mov     edx, 4000h
mov     eax, ecx
call    sub_4B4402
jmp     loc_4B432D
sub_4B41A8 endp




sub_4B428E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebx, [eax+0DCh]
lea     ebp, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jnz     short loc_4B42C0
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B432C

loc_4B42C0:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_431C8C
mov     eax, ecx
call    sub_42DE56
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     ax, [ecx+14h]
mov     [ebp+34h], ax
mov     ax, [ecx+16h]
mov     [ebp+36h], ax
mov     ax, [ecx+18h]
mov     [ebp+38h], ax
mov     edx, [ebx]
dec     edx
mov     [ebx], edx
jnz     short loc_4B4320
mov     dword ptr [ebx], 3Ch ; '<'
mov     byte ptr [ecx+8], 3

loc_4B4320:
mov     edx, 6000h
mov     eax, ecx
call    sub_4B4402

loc_4B432C:
pop     ebp

loc_4B432D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B428E endp




sub_4B4333 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+0DCh]
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jnz     short loc_4B4365

loc_4B4355:
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B432C

loc_4B4365:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_431C8C
mov     eax, ecx
call    sub_42DE56
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
mov     ah, byte ptr ds:word_77EAB6
test    ah, 2
jz      short loc_4B43DA
test    ah, 1
jz      short loc_4B43D1
lea     edx, [ecx+14h]
mov     eax, 133h
call    sub_4D8BC3

loc_4B43D1:
mov     dword ptr [ebx+3Ch], 0E0E0E0h
jmp     short loc_4B43F0

loc_4B43DA:
cmp     dword ptr [ebp+4], 0
jz      short loc_4B43E9
mov     dword ptr [ebx+3Ch], offset unk_8080C0
jmp     short loc_4B43F0

loc_4B43E9:
mov     dword ptr [ebx+3Ch], offset unk_808080

loc_4B43F0:
mov     ebx, [ebp+0]
dec     ebx
mov     [ebp+0], ebx
jz      loc_4B4355
jmp     loc_4B4320
sub_4B4333 endp




sub_4B4402 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 8
mov     esi, eax
mov     ebx, edx
lea     edx, [eax+0DCh]
mov     ax, [eax+14h]
mov     [esp+14h+var_14], ax
mov     ax, [esi+16h]
sub     eax, 28h ; '('
mov     [esp+14h+var_12], ax
mov     ax, [esi+18h]
mov     [esp+14h+var_10], ax
push    80h
push    0
mov     eax, [edx+8]
or      eax, 8000000h
push    eax
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     ecx, ecx
mov     cx, bx
xor     ebx, ebx
mov     edx, 30h ; '0'
lea     eax, [esp+28h+var_14]
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     ecx
pop     ebx
retn
sub_4B4402 endp




sub_4B4490 proc near
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+0DCh]
call    sub_4DE13B
test    eax, eax
jz      short loc_4B44CB
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 1
mov     edx, [edx+4]
mov     dl, ds:byte_531114[edx]
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_4B44CB:
pop     edi
pop     esi
pop     edx
retn
sub_4B4490 endp




sub_4B44CF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B44D5[edx*4]
pop     edx
retn
sub_4B44CF endp




sub_4B44DE proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_53111C
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     al, ds:byte_5F89BC
mov     [ecx+0Fh], al
call    sub_42A85C
mov     [esp+34h+var_24], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+34h+var_22], ax
xor     edx, edx
mov     [esp+34h+var_20], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+34h+var_24]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     eax, ds:dword_531128[eax*4]
mov     [esp+34h+var_2C], eax
mov     [esp+34h+var_30], eax
mov     [esp+34h+var_34], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
xor     ebx, ebx
mov     [esp+34h+var_24], bx
mov     [esp+34h+var_22], bx
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, esi
call    sub_4EF1FB
mov     edx, [esp+34h+var_34]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+44h], ax
mov     edx, [esp+34h+var_30]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+34h+var_2C]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+48h], ax
lea     eax, [ecx+88h]
lea     edi, [esp+34h+var_1C]
mov     esi, offset unk_5F882C
movsd
movsd
mov     ebx, [ecx+42h]
sar     ebx, 10h
shl     ebx, 0Ah
mov     edx, [esp+16h]
sar     edx, 10h
shl     edx, 10h
add     edx, ebx
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 0Ah
mov     ebx, [esp+34h+var_1C]
sar     ebx, 10h
shl     ebx, 10h
add     ebx, edx
mov     [ecx+20h], ebx
mov     ebx, [ecx+46h]
sar     ebx, 10h
shl     ebx, 0Ah
mov     edx, [esp+34h+var_1C+2]
sar     edx, 10h
shl     edx, 10h
add     edx, ebx
mov     [ecx+24h], edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [eax+3Ch], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B48A3
lea     edx, [ecx+14h]
mov     eax, 134h
call    sub_4D8BC3
inc     byte ptr [ecx+8]
add     esp, 20h

loc_4B46A3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B44DE endp




sub_4B46A9 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ecx, eax
lea     ebp, [eax+88h]
call    sub_4B4877
test    al, al
jz      short loc_4B46DC

loc_4B46C3:
lea     edx, [ecx+14h]
mov     eax, 135h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
jmp     loc_4B486E

loc_4B46DC:
mov     dword ptr [ebp+3Ch], 2808080h
test    byte ptr [ecx+0D7h], 0Ch
jz      short loc_4B46FC
mov     dword ptr [ebp+3Ch], 2E0E0E0h
or      ds:byte_5F88B0, 3
jmp     short loc_4B470E

loc_4B46FC:
mov     eax, ecx
call    sub_4B4980
test    al, al
jz      short loc_4B470E
or      ds:byte_5F88B0, 1

loc_4B470E:
mov     dx, ds:word_5F89BE
test    dx, dx
jz      short loc_4B46C3
cmp     dx, 7FFFh
jz      short loc_4B472B
mov     esi, edx
dec     esi
mov     ds:word_5F89BE, si

loc_4B472B:
call    sub_42A85C
mov     [esp+38h+var_28], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+38h+var_26], ax
xor     edi, edi
mov     [esp+38h+var_24], di
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     eax, ds:dword_531128[eax*4]
mov     [esp+38h+var_30], eax
mov     [esp+38h+var_34], eax
mov     [esp+38h+var_38], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     [esp+38h+var_28], di
mov     [esp+38h+var_26], di
mov     [esp+38h+var_24], 0F000h
mov     ebx, esp
lea     edx, [esp+38h+var_28]
mov     eax, esi
call    sub_4EF1FB
mov     esi, [esp+38h+var_38]
mov     eax, esi
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 4
mov     [ecx+44h], ax
mov     esi, [esp+38h+var_34]
mov     eax, esi
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+38h+var_30]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [esp+38h+var_20]
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ah
mov     edx, [esp+16h]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [esp+38h+var_20]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ah
mov     edx, [esp+38h+var_20+2]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+24h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebp+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebp+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebp+38h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, ecx
call    sub_4B48A3

loc_4B486E:
add     esp, 20h
pop     ebp
jmp     loc_4B46A3
sub_4B46A9 endp




sub_4B4877 proc near
push    edx
xor     eax, eax
mov     ax, word ptr ds:dword_5F8480
xor     edx, edx
mov     dx, ds:word_5F84A0
test    eax, edx
jz      short loc_4B489B
mov     eax, offset byte_5F8364
call    sub_4B61E1
test    eax, eax
jnz     short loc_4B489F

loc_4B489B:
mov     al, 1
pop     edx
retn

loc_4B489F:
xor     al, al
pop     edx
retn
sub_4B4877 endp




sub_4B48A3 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+18h+var_18], ax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+18h+var_16], ax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+18h+var_14], ax
push    80h
push    0
push    2000001h
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [esi+0Ch]
sar     edx, 18h
mov     edx, ds:dword_531148[edx*4]
xor     ecx, ecx
xor     ebx, ebx
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
push    80h
push    0
push    28000001h
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [esi+0Ch]
sar     edx, 18h
mov     edx, ds:dword_531148[edx*4]
mov     ecx, 4000h
xor     ebx, ebx
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B48A3 endp




sub_4B4980 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
lea     edi, [esp+2Ch+var_1C]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, esp
mov     esi, offset dword_5F83B8
movsd
movsd
mov     ebx, [eax+0Ch]
sar     ebx, 18h
mov     ebx, ds:dword_531168[ebx*4]
xor     ecx, ecx
jmp     short loc_4B49B7

loc_4B49AD:
inc     ecx
cmp     ecx, 20h ; ' '
jnb     loc_4B4AB8

loc_4B49B7:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
shl     eax, 2
add     eax, offset byte_57098C
cmp     byte ptr [eax], 0
jz      short loc_4B49AD
lea     edi, [esp+2Ch+var_24]
lea     esi, [eax+14h]
movsd
movsd
mov     eax, [esp+0Eh]
sar     eax, 10h
mov     edx, [esp+6]
sar     edx, 10h
sub     eax, edx
lea     edx, [eax+7D0h]
cmp     edx, 0FA0h
ja      short loc_4B49AD
mov     edx, [esp+2Ch+var_1C]
sar     edx, 10h
mov     esi, [esp+2Ch+var_24]
sar     esi, 10h
sub     edx, esi
mov     esi, edx
add     edx, 7D0h
cmp     edx, 0FA0h
ja      short loc_4B49AD
mov     edi, [esp+2Ch+var_1C+2]
sar     edi, 10h
mov     edx, [esp+2Ch+var_24+2]
sar     edx, 10h
sub     edi, edx
mov     edx, edi
add     edi, 7D0h
cmp     edi, 0FA0h
ja      loc_4B49AD
imul    esi, esi
mov     edi, eax
imul    edi, eax
add     edi, esi
mov     esi, edx
imul    esi, edx
add     esi, edi
cmp     esi, 0F4240h
jnb     loc_4B49AD
call    sub_4EF04B
mov     edx, eax
and     edx, 0FFFh
mov     eax, [esp+2Ch+var_2C]
sar     eax, 10h
lea     edi, [eax+ebx]
and     edi, 0FFFh
cmp     edi, eax
jb      short loc_4B4A86
mov     esi, eax
sub     esi, ebx
and     esi, 0FFFh
cmp     eax, esi
jnb     short loc_4B4AAC

loc_4B4A86:
mov     eax, [esp+2Ch+var_2C]
sar     eax, 10h
lea     esi, [eax+ebx]
and     esi, 0FFFh
cmp     edx, esi
jb      short loc_4B4AA8
sub     eax, ebx
and     eax, 0FFFh
cmp     eax, edx

loc_4B4AA2:
jnb     loc_4B49AD

loc_4B4AA8:
mov     al, 1
jmp     short loc_4B4ABA

loc_4B4AAC:
cmp     edx, edi
jnb     loc_4B49AD
cmp     esi, edx
jmp     short loc_4B4AA2

loc_4B4AB8:
xor     al, al

loc_4B4ABA:
add     esp, 18h
jmp     loc_4B46A3
sub_4B4980 endp




sub_4B4AC2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B4AC8[edx*4]
pop     edx
retn
sub_4B4AC2 endp




sub_4B4AD1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+0CCh]
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx], 6
or      byte ptr [ecx+6], 20h
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
mov     al, ds:byte_5F89C2
mov     byte ptr [ebx+1], 8
xor     edx, edx
mov     dl, al
mov     al, ds:byte_531198[edx]
mov     [ebx+2], al
mov     al, ds:byte_531190[edx]
mov     [ebx+3], al
mov     esi, edx
shl     esi, 2
mov     eax, ds:dword_5311A0[esi]
mov     [ebx+4], eax
mov     edx, 0Dh
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [ebx+8], eax
mov     eax, ds:dword_5311C0[esi]
mov     [ebx+0Ch], eax
mov     eax, ecx
call    sub_4B4C6F
mov     dword ptr [ecx+0C4h], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     al, al

loc_4B4B73:
xor     edx, edx
mov     dl, al
mov     dword ptr [ecx+edx*4+0DCh], 0
inc     al
cmp     al, 10h
jb      short loc_4B4B73
mov     dword ptr [ecx+78h], offset unk_5311E0
mov     eax, ecx
call    sub_4B4E46
lea     edx, [ecx+14h]
mov     eax, 136h
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4AD1 endp




sub_4B4BA8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+0CCh]
mov     ah, [edx+1]
cmp     ah, 40h ; '@'
jnb     short loc_4B4BC6
mov     bl, ah
add     bl, 8
mov     [edx+1], bl
jmp     short loc_4B4BCA

loc_4B4BC6:
mov     byte ptr [edx+1], 40h ; '@'

loc_4B4BCA:
mov     eax, ecx
call    sub_4B4C43
test    al, al
jz      short loc_4B4BEE

loc_4B4BD5:
lea     edx, [ecx+14h]
mov     eax, 137h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B4BEE:
mov     eax, ecx
call    sub_4B509B
mov     ebx, eax
test    eax, eax
jz      short loc_4B4BFE
mov     [edx+1], al

loc_4B4BFE:
mov     eax, ecx
call    sub_4B51C6
test    eax, eax
jz      short loc_4B4C13
mov     dword ptr [ecx+0C4h], 2808080h

loc_4B4C13:
mov     dx, ds:word_5F89C6
test    dx, dx
jz      short loc_4B4BD5
cmp     dx, 7FFFh
jz      short loc_4B4C30
mov     esi, edx
dec     esi
mov     ds:word_5F89C6, si

loc_4B4C30:
mov     eax, ecx
call    sub_4B4C6F
mov     eax, ecx
call    sub_4B4E46
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4BA8 endp




sub_4B4C43 proc near
push    edx
xor     eax, eax
mov     ax, word ptr ds:dword_5F8480
xor     edx, edx
mov     dx, ds:word_5F84A0
test    eax, edx
jz      short loc_4B4C67
mov     eax, offset byte_5F8364
call    sub_4B61E1
test    eax, eax
jnz     short loc_4B4C6B

loc_4B4C67:
mov     al, 1
pop     edx
retn

loc_4B4C6B:
xor     al, al
pop     edx
retn
sub_4B4C43 endp




sub_4B4C6F proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     ecx, eax
lea     ebp, [eax+0CCh]
add     eax, 88h
mov     [esp+40h+var_20], eax
call    sub_42A85C
mov     [esp+40h+var_28], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+40h+var_26], ax
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
shl     eax, 8
mov     [esp+40h+var_24], ax
mov     eax, ecx
add     eax, 8Ch
mov     [esp+40h+var_1C], eax
mov     edx, eax
lea     eax, [esp+40h+var_28]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+40h+var_38], edx
mov     [esp+40h+var_3C], edx
mov     [esp+40h+var_40], edx
mov     edx, esp
mov     eax, [esp+40h+var_1C]
call    sub_4EF689
xor     edx, edx
mov     [esp+40h+var_28], dx
mov     [esp+40h+var_26], dx
mov     [esp+40h+var_24], 0F000h
mov     ebx, esp
lea     edx, [esp+40h+var_28]
mov     eax, [esp+40h+var_1C]
call    sub_4EF1FB
mov     eax, [esp+40h+var_40]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [esp+40h+var_3C]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [esp+40h+var_38]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [esp+40h+var_30]
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
mov     edx, [esp+0Eh]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+40h+var_30]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
mov     edx, [esp+40h+var_30+2]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+24h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+34h], dx
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+36h], dx
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+38h], dx
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_40]
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_3C]
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_38]
sar     eax, 4
mov     [ecx+48h], ax
mov     eax, [ebp+0Ch]
mov     [esp+40h+var_3C], eax
mov     [esp+40h+var_40], eax
movsx   edx, byte ptr [ebp+2]
xor     eax, eax
mov     al, [ebp+1]
imul    edx, eax
mov     [esp+40h+var_38], edx
mov     edx, esp
mov     eax, [esp+40h+var_1C]
call    sub_4EF689
add     esp, 28h

loc_4B4E3F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4C6F endp




sub_4B4E46 proc near

var_4C= word ptr -4Ch
var_4A= word ptr -4Ah
var_48= word ptr -48h
var_44= word ptr -44h
var_42= word ptr -42h
var_40= word ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 34h
mov     esi, eax
lea     edi, [eax+0CCh]
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_2C], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_24], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_20], eax
xor     ah, ah
mov     [esp+4Ch+var_1C], ah

loc_4B4E84:
xor     ecx, ecx
mov     cl, [edi+1]
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+4Ch+var_3C], eax
xor     edx, edx
mov     dl, [esp+4Ch+var_1C]
lea     eax, [esi+0DCh]
mov     [esp+4Ch+var_28], eax
mov     bl, dl
shl     bl, 3
mov     eax, edx
shl     eax, 3
mov     [esp+4Ch+var_38], eax
mov     eax, edx
shl     eax, 2
mov     [esp+4Ch+var_30], eax
mov     ebp, [esp+4Ch+var_38]
add     ebp, esi
mov     eax, [esp+4Ch+var_28]
add     eax, [esp+4Ch+var_30]
mov     [esp+4Ch+var_34], eax
cmp     edx, [esp+4Ch+var_3C]
jge     loc_4B4FB1
mov     dl, bl
add     dl, 6
and     edx, 0FFh
mov     eax, [esp+4Ch+var_2C]
imul    eax, edx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+4Ch+var_4C], ax
mov     eax, [esp+4Ch+var_24]
imul    eax, edx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+4Ch+var_4A], ax
mov     eax, [esp+4Ch+var_20]
imul    eax, edx
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_48], ax
mov     dl, bl
inc     dl
and     edx, 0FFh
mov     eax, [esp+4Ch+var_2C]
imul    eax, edx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+4Ch+var_44], ax
mov     eax, [esp+4Ch+var_24]
imul    eax, edx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+4Ch+var_42], ax
imul    edx, [esp+4Ch+var_20]
add     edx, [esi+24h]
sar     edx, 10h
mov     [esp+4Ch+var_40], dx
push    80h
push    0
mov     eax, [edi+8]
or      eax, 8000000h
push    eax
mov     ebx, [esp+58h+var_34]
push    ebx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
mov     edx, [edi+4]
mov     ecx, edx
lea     ebx, [esp+68h+var_44]
lea     eax, [esp+68h+var_4C]
call    sub_4E02CB
mov     dword ptr [ebp+0DCh], 0
mov     dword ptr [ebp+0E0h], 0
inc     [esp+4Ch+var_1C]
jmp     loc_4B4E84

loc_4B4FB1:
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
mov     ecx, 8
idiv    ecx
test    edx, edx
jz      loc_4B5093
cmp     [esp+4Ch+var_1C], 8
jnb     loc_4B5093
mov     eax, [esp+4Ch+var_38]
add     eax, edx
and     eax, 0FFh
mov     edx, [esp+4Ch+var_2C]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+4Ch+var_4C], dx
mov     edx, [esp+4Ch+var_24]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+4Ch+var_4A], dx
imul    eax, [esp+4Ch+var_20]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_48], ax
xor     eax, eax
mov     al, bl
mov     edx, [esp+4Ch+var_2C]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+4Ch+var_44], dx
mov     edx, [esp+4Ch+var_24]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+4Ch+var_42], dx
imul    eax, [esp+4Ch+var_20]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_40], ax
push    80h
push    0
mov     eax, [edi+8]
or      eax, 8000000h
push    eax
mov     ecx, [esp+58h+var_34]
push    ecx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
mov     edx, [edi+4]
mov     ecx, edx
lea     ebx, [esp+68h+var_44]
lea     eax, [esp+68h+var_4C]
call    sub_4E02CB
mov     dword ptr [ebp+0DCh], 0
mov     dword ptr [ebp+0E0h], 0

loc_4B5093:
add     esp, 34h
jmp     loc_4B4E3F
sub_4B4E46 endp




sub_4B509B proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     esi, eax
lea     edi, [eax+0CCh]
mov     ebp, [eax+42h]
sar     ebp, 10h
shl     ebp, 8
mov     eax, [eax+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+38h+var_28], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+38h+var_24], eax
xor     ah, ah
mov     [esp+38h+var_1C], ah

loc_4B50D5:
mov     al, [esp+38h+var_1C]
cmp     al, [edi+1]
jnb     loc_4B51BC
inc     al
mov     [esp+38h+var_20], al
xor     eax, eax
mov     al, [esp+38h+var_20]
mov     edx, ebp
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+38h+var_30], dx
mov     edx, [esp+38h+var_28]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+38h+var_2E], dx
imul    eax, [esp+38h+var_24]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+38h+var_2C], ax
xor     eax, eax
mov     al, [esp+38h+var_1C]
mov     edx, ebp
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     word ptr [esp+38h+var_38], dx
mov     edx, [esp+38h+var_28]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     word ptr [esp+38h+var_38+2], dx
imul    eax, [esp+38h+var_24]
add     eax, [esi+24h]
sar     eax, 10h
mov     word ptr [esp+38h+var_34], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_5311E0
mov     edx, esp
lea     eax, [esp+38h+var_30]
call    sub_42CE61
test    eax, eax
jz      short loc_4B51AF
test    byte ptr ds:word_77EAB6, 3
jnz     short loc_4B51A6
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B51A6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8Ah
mov     byte ptr [eax+3], 1
mov     eax, [esp+38h+var_38]
mov     [edx+1Ch], ax
mov     eax, [esp+38h+var_38+2]
mov     [edx+1Eh], ax
mov     eax, [esp+38h+var_34]
mov     [edx+20h], ax

loc_4B51A6:
xor     eax, eax
mov     al, [esp+38h+var_1C]
inc     eax
jmp     short loc_4B51BE

loc_4B51AF:
mov     al, [esp+38h+var_20]
mov     [esp+38h+var_1C], al
jmp     loc_4B50D5

loc_4B51BC:
xor     eax, eax

loc_4B51BE:
add     esp, 20h
jmp     loc_4B4E3F
sub_4B509B endp




sub_4B51C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+0CCh]
xor     bl, bl

loc_4B51D4:
xor     edx, edx
mov     dl, [ecx+1]
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
xor     edx, edx
mov     dl, bl
cmp     edx, eax
jge     short loc_4B5206
test    byte ptr [esi+edx*8+0DFh], 0FFh
jz      short loc_4B5202
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5202:
inc     bl
jmp     short loc_4B51D4

loc_4B5206:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B51C6 endp




sub_4B520D proc near
test    cl, cl
jz      short loc_4B521A
mov     byte ptr [eax+0ADh], 0FFh
jmp     short loc_4B5222

loc_4B521A:
cmp     dl, [eax+0ADh]
jz      short locret_4B527A

loc_4B5222:
cmp     dl, 1
jb      short loc_4B526E
jbe     short loc_4B524F
cmp     dl, 0Ch
jnz     short loc_4B526E
cmp     byte ptr [eax+0ADh], 1
jnz     short loc_4B526E
xor     ebx, ebx
mov     bl, [eax+0A4h]
add     ebx, ebx
add     ebx, 4
cmp     bx, 1Fh
jle     short loc_4B526E
sub     ebx, 20h ; ' '
jmp     short loc_4B526E

loc_4B524F:
cmp     byte ptr [eax+0ADh], 0Ch
jnz     short loc_4B526E
xor     ebx, ebx
mov     bl, [eax+0A4h]
sub     ebx, 4
test    bx, bx
jge     short loc_4B526B
add     ebx, 20h ; ' '

loc_4B526B:
sar     bx, 1

loc_4B526E:
mov     [eax+0ACh], dl
mov     [eax+0A4h], bl

locret_4B527A:
retn
sub_4B520D endp




sub_4B527B proc near
push    esi
mov     esi, eax
mov     ax, [eax+116h]
sub     [esi+56h], ax
movsx   ecx, cx
movsx   ebx, bx
movsx   edx, dx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+116h]
add     [esi+56h], ax
pop     esi
retn
sub_4B527B endp




sub_4B52A6 proc near
push    ecx
push    esi
push    edi
push    ebp
xor     edi, edi
mov     di, [eax+11Ch]
xor     esi, esi
mov     si, [eax+124h]
xor     ecx, ecx
mov     cx, [eax+126h]
mov     ebp, esi
or      ebp, ecx
test    edi, ebp
jz      short loc_4B52E2
cmp     ds:byte_77E7D9, 0
jnz     short loc_4B52D8
mov     ecx, esi

loc_4B52D8:
call    sub_4B52F0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4B52E2:
mov     word ptr [eax+10Ch], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4B52A6 endp




sub_4B52F0 proc near
push    esi
push    edi
xor     esi, esi
mov     si, [eax+11Ch]
test    esi, ecx
jz      short loc_4B5363
mov     cx, [eax+10Ch]
test    cx, cx
jge     short loc_4B5316
mov     word ptr [eax+10Ch], 0
jmp     short loc_4B5335

loc_4B5316:
mov     esi, ecx
add     esi, edx
mov     [eax+10Ch], si
mov     edx, [eax+10Ah]
sar     edx, 10h
cmp     edx, ebx
jle     short loc_4B5335
mov     [eax+10Ch], bx

loc_4B5335:
mov     dx, [eax+10Ch]
mov     di, [eax+108h]
add     edi, edx
mov     [eax+108h], di
cmp     di, 200h
jle     loc_4B53D0
mov     word ptr [eax+108h], 200h
pop     edi
pop     esi
retn

loc_4B5363:
mov     cx, [eax+10Ch]
test    cx, cx
jle     short loc_4B537A
mov     word ptr [eax+10Ch], 0
jmp     short loc_4B53A8

loc_4B537A:
mov     esi, ecx
sub     esi, edx
mov     [eax+10Ch], si
mov     ecx, [eax+10Ah]
sar     ecx, 10h
mov     edx, ebx
neg     edx
cmp     ecx, edx
jge     short loc_4B53A8
mov     [eax+10Ch], bx
mov     edi, ebx
neg     edi
mov     [eax+10Ch], di

loc_4B53A8:
mov     dx, [eax+10Ch]
add     [eax+108h], dx
mov     edx, [eax+106h]
sar     edx, 10h
cmp     edx, 0FFFFFE00h
jge     short loc_4B53D0
mov     word ptr [eax+108h], 0FE00h

loc_4B53D0:
pop     edi
pop     esi
retn
sub_4B52F0 endp




sub_4B53D3 proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, edx
xor     edx, edx
xor     ecx, ecx
mov     cx, [eax+11Ch]
mov     [esp+14h+var_14], ecx
xor     edi, edi
mov     di, [eax+128h]
xor     ecx, ecx
mov     cx, [eax+12Ah]
or      edi, ecx
mov     ebp, [esp+14h+var_14]
test    edi, ebp
jz      short loc_4B5416
and     ebp, edi
cmp     edi, ebp
jz      short loc_4B5416
mov     edx, esi
call    sub_4B5502
mov     edx, eax
jmp     short loc_4B541F

loc_4B5416:
mov     word ptr [eax+0B4h], 0

loc_4B541F:
mov     eax, edx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4B53D3 endp




sub_4B5429 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
mov     [esp+18h+var_10], ecx
xor     edi, edi
movzx   ebp, word ptr [eax+11Ch]
xor     eax, eax
mov     ax, [esi+12Ah]
xor     ecx, ecx
mov     cx, [esi+12Eh]
or      eax, ecx
test    ebp, eax
jnz     short loc_4B545D
mov     ecx, 1
jmp     short loc_4B545F

loc_4B545D:
xor     ecx, ecx

loc_4B545F:
xor     eax, eax
mov     ax, [esi+128h]
mov     [esp+18h+var_18], eax
xor     eax, eax
mov     ax, [esi+12Ch]
mov     [esp+18h+var_14], eax
mov     eax, [esp+18h+var_18]
or      eax, [esp+18h+var_14]
test    ebp, eax
jnz     short loc_4B548A
mov     eax, 1
jmp     short loc_4B548C

loc_4B548A:
xor     eax, eax

loc_4B548C:
cmp     ecx, eax
jz      short loc_4B54DC
xor     eax, eax
mov     ax, [esi+12Ah]
xor     ecx, ecx
mov     cx, [esi+12Eh]
or      ecx, eax
mov     eax, esi
call    sub_4B5502
mov     edi, eax
cmp     [esp+18h+var_10], 0
jz      short loc_4B54F9
xor     eax, eax
mov     ax, [esi+12Ah]
xor     edx, edx
mov     dx, [esi+12Eh]
or      eax, edx
test    ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, esi
call    sub_4B520D
jmp     short loc_4B54F9

loc_4B54DC:
cmp     [esp+18h+var_10], 0
jz      short loc_4B54F0
xor     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D

loc_4B54F0:
mov     word ptr [esi+0B4h], 0

loc_4B54F9:
mov     eax, edi
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4B5429 endp




sub_4B5502 proc near
push    esi
push    edi
xor     esi, esi
mov     si, [eax+11Ch]
test    esi, ecx
jz      short loc_4B5558
mov     ecx, 1
mov     di, [eax+0B4h]
test    di, di
jge     short loc_4B5530

loc_4B5522:
mov     word ptr [eax+0B4h], 0
jmp     loc_4B55A7

loc_4B5530:
mov     esi, edi
add     esi, edx
mov     [eax+0B4h], si
mov     esi, [eax+0B2h]
sar     esi, 10h
cmp     esi, ebx
jle     short loc_4B554F
mov     [eax+0B4h], bx

loc_4B554F:
mov     [eax+0B6h], dx
jmp     short loc_4B55A7

loc_4B5558:
mov     ecx, 2
mov     si, [eax+0B4h]
test    si, si
jg      short loc_4B5522
mov     edi, esi
sub     edi, edx
mov     [eax+0B4h], di
mov     edi, [eax+0B2h]
sar     edi, 10h
mov     esi, ebx
neg     esi
cmp     edi, esi
jge     short loc_4B5595
mov     [eax+0B4h], bx
neg     ebx
mov     [eax+0B4h], bx

loc_4B5595:
mov     [eax+0B6h], dx
mov     esi, edx
neg     esi
mov     [eax+0B6h], si

loc_4B55A7:
mov     dx, [eax+0B4h]
add     [eax+56h], dx
and     byte ptr [eax+57h], 0Fh
mov     eax, ecx
pop     edi
pop     esi
retn
sub_4B5502 endp




sub_4B55BB proc near
cmp     ds:word_5F83D2, 0
jl      short loc_4B55D2
mov     ds:byte_5F88AD, 1
mov     eax, 1
retn

loc_4B55D2:
xor     eax, eax
retn
sub_4B55BB endp




sub_4B55D5 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0BDh]
or      ah, 40h
mov     [edx+0BDh], ah
mov     byte ptr [edx+549h], 0FFh
test    byte ptr [edx], 1
jz      short loc_4B5635
cmp     byte ptr [edx+8], 1
jnz     short loc_4B562A
mov     cl, [edx+9]
test    cl, cl
jz      short loc_4B560F
cmp     cl, 0Eh
jnz     short loc_4B561A
cmp     ds:byte_77E807, 0
jz      short loc_4B561A

loc_4B560F:
mov     eax, edx
call    sub_4B61E1
test    eax, eax
jz      short loc_4B5635

loc_4B561A:
cmp     byte ptr [edx+9], 0Dh
jnz     short loc_4B562A
cmp     byte ptr [edx+0Ah], 2
jnz     short loc_4B562A
mov     byte ptr [edx+0Ah], 6

loc_4B562A:
cmp     byte ptr [edx+8], 3
jz      short loc_4B5635
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4B5635:
mov     word ptr [edx+0B4h], 0
mov     eax, 16h
call    sub_4D8E2B
mov     eax, 17h
call    sub_4D8E2B
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4B55D5 endp




sub_4B565A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4EDDAA
mov     byte ptr [ecx+549h], 0
mov     byte ptr [ecx+111h], 0
mov     byte ptr [ecx+71h], 0
mov     byte ptr [ecx+73h], 0
mov     dword ptr [ecx+188h], 0
mov     dword ptr [ecx+18Ch], 0
mov     dword ptr [ecx+190h], 0
mov     dword ptr [ecx+194h], 0
mov     byte ptr [ecx+168h], 0
mov     byte ptr [ecx+169h], 0
test    byte ptr [ecx], 1
jz      short loc_4B56CF
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+6], 3
mov     dl, [ecx+8]
cmp     dl, 3
jnz     short loc_4B56CF
mov     [ecx+9], dl
pop     edx
pop     ecx
pop     ebx
retn

loc_4B56CF:
mov     byte ptr [ecx+0BDh], 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4B565A endp




sub_4B56DA proc near
push    edx
mov     byte ptr [eax+174h], 0
and     byte ptr [eax+175h], 0FEh
mov     byte ptr [eax+177h], 0
mov     dl, [eax+0ACh]
mov     [eax+104h], dl
mov     dl, [eax+0A4h]
mov     [eax+100h], dl
pop     edx
retn
sub_4B56DA endp




sub_4B570A proc near
or      byte ptr [eax+175h], 1
retn
sub_4B570A endp

db 8Dh, 40h, 0
jpt_4B5750 dd offset def_4B5750 ; jump table for switch statement
dd offset def_4B5750
dd offset loc_4B5757
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset loc_4B5757
dd offset def_4B5750
dd offset def_4B5750



sub_4B5741 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
and     edx, 0FFh
jmp     jpt_4B5750[edx*4] ; switch jump

loc_4B5757:             ; jumptable 004B5750 cases 2,8
mov     al, [eax+112h]
cmp     al, 1
jb      short loc_4B5769
jbe     short loc_4B5774
cmp     al, 3
jz      short loc_4B577B
jmp     short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10

loc_4B5769:
test    al, al
jnz     short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
mov     eax, 61h ; 'a'
pop     edx
retn

loc_4B5774:
mov     eax, 63h ; 'c'
pop     edx
retn

loc_4B577B:
mov     eax, 62h ; 'b'
pop     edx
retn

def_4B5750:             ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
mov     eax, 60h ; '`'
pop     edx
retn
sub_4B5741 endp

jpt_4B57C4 dd offset def_4B57C4 ; jump table for switch statement
dd offset def_4B57C4
dd offset loc_4B57CB
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset loc_4B57CB
dd offset def_4B57C4
dd offset def_4B57C4



sub_4B57B5 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
and     edx, 0FFh
jmp     jpt_4B57C4[edx*4] ; switch jump

loc_4B57CB:             ; jumptable 004B57C4 cases 2,8
mov     al, [eax+112h]
cmp     al, 1
jb      short loc_4B57DD
jbe     short loc_4B57E8
cmp     al, 3
jz      short loc_4B57EF
jmp     short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10

loc_4B57DD:
test    al, al
jnz     short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
mov     eax, 41h ; 'A'
pop     edx
retn

loc_4B57E8:
mov     eax, 43h ; 'C'
pop     edx
retn

loc_4B57EF:
mov     eax, 42h ; 'B'
pop     edx
retn

def_4B57C4:             ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
mov     eax, 40h ; '@'
pop     edx
retn
sub_4B57B5 endp




sub_4B57FD proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     byte ptr [edx], 7
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 2
xor     edx, edx
mov     dl, [eax+0Ah]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edi, [esi+48h]
lea     esi, [ecx+eax*8+4A8h]
movsd
movsd
pop     edi
pop     esi
pop     ecx
retn
sub_4B57FD endp




sub_4B582D proc near
mov     byte ptr [edx], 3
mov     byte ptr [edx+2], 83h
mov     byte ptr [edx+3], 0
cmp     bx, 1
jb      short loc_4B5847
jbe     short loc_4B5868
cmp     bx, 2
jz      short loc_4B588D
retn

loc_4B5847:
test    bx, bx
jnz     short locret_4B58B1
mov     bx, [eax+14h]
mov     [edx+1Ch], bx
mov     bx, [eax+16h]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+18h]
mov     [edx+20h], ax
retn

loc_4B5868:
mov     bx, [eax+518h]
mov     [edx+1Ch], bx
mov     bx, [eax+51Ah]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+51Ch]
mov     [edx+20h], ax
retn

loc_4B588D:
mov     bx, [eax+500h]
mov     [edx+1Ch], bx
mov     bx, [eax+502h]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+504h]
mov     [edx+20h], ax

locret_4B58B1:
retn
sub_4B582D endp




sub_4B58B2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, edx
xor     edx, edx

loc_4B58BA:
mov     ecx, esi
shl     ecx, 5
mov     ebx, edx
mov     cx, ds:word_5311F4[ecx+ebx*2]
mov     [eax+ebx*2+124h], cx
inc     edx
cmp     edx, 10h
jb      short loc_4B58BA
mov     dx, [eax+124h]
mov     bx, [eax+126h]
or      edx, ebx
mov     [eax+144h], dx
mov     dx, [eax+124h]
mov     [eax+146h], dx
mov     dx, [eax+12Ch]
mov     cx, [eax+12Eh]
or      edx, ecx
mov     [eax+148h], dx
mov     dx, [eax+12Eh]
mov     [eax+14Ah], dx
mov     dx, [eax+12Ch]
mov     si, [eax+12Eh]
or      edx, esi
mov     [eax+14Ch], dx
mov     dx, [eax+12Ch]
mov     [eax+14Eh], dx
mov     dx, [eax+124h]
mov     di, [eax+126h]
or      edx, edi
mov     [eax+150h], dx
mov     dx, [eax+124h]
mov     [eax+152h], dx
mov     bx, [eax+126h]
or      edx, ebx
mov     [eax+154h], dx
mov     dx, [eax+126h]
mov     [eax+156h], dx
mov     dx, [eax+12Ch]
mov     cx, [eax+12Eh]
or      edx, ecx
mov     [eax+158h], dx
mov     dx, [eax+12Ch]
mov     [eax+15Ah], dx
mov     si, [eax+12Eh]
or      edx, esi
mov     [eax+15Ch], dx
mov     dx, [eax+12Eh]
mov     [eax+15Eh], dx
mov     dx, [eax+124h]
mov     di, [eax+126h]
or      edx, edi
mov     [eax+160h], dx
mov     dx, [eax+126h]
mov     [eax+162h], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4B58B2 endp




sub_4B59F6 proc near
push    edx
mov     edx, [eax+16Dh]
sar     edx, 18h
call    ds:funcs_4B5A00[edx*4]
pop     edx
retn
sub_4B59F6 endp




sub_4B5A09 proc near
push    edx
mov     edx, [eax+16Eh]
sar     edx, 18h
call    ds:funcs_4B5A13[edx*4]
pop     edx
retn
sub_4B5A09 endp

db 8Bh, 0C0h
jpt_4B5A5E dd offset loc_4B5A65 ; jump table for switch statement
dd offset loc_4B5A94
dd offset loc_4B5AFD
dd offset loc_4B5B58
dd offset loc_4B5B9F



sub_4B5A32 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, [eax+16Dh]
sar     edi, 18h
xor     ebx, ebx
mov     bx, [eax+11Ch]
mov     dl, [eax+178h]
cmp     dl, 4           ; switch 5 cases
ja      def_4B5A5E      ; jumptable 004B5A5E default case
xor     eax, eax
mov     al, dl
jmp     jpt_4B5A5E[eax*4] ; switch jump

loc_4B5A65:             ; jumptable 004B5A5E case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dh, [esi+100h]
cmp     dh, ds:byte_550F78[eax*4]
jnz     def_4B5A5E      ; jumptable 004B5A5E default case
add     dl, 2
mov     [esi+178h], dl

loc_4B5A88:
or      byte ptr [esi+174h], 10h
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5A94:             ; jumptable 004B5A5E case 1
test    byte ptr [esi+174h], 4
jnz     short loc_4B5ABE
mov     edx, edi
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ebx, ebx
mov     bl, ds:byte_550F78[eax*4]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A

loc_4B5ABE:
mov     eax, esi
call    sub_4B57B5
mov     [esi+104h], al
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ecx, ecx
mov     cl, ds:byte_550F78[eax*4]
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
inc     byte ptr [esi+178h]
jmp     short loc_4B5A88

loc_4B5AFD:             ; jumptable 004B5A5E case 2
and     byte ptr [esi+174h], 0CFh
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
cmp     ds:byte_550F7B[eax], 0
jz      short loc_4B5B46
mov     edx, edi
cmp     word ptr [esi+edx*8+5FAh], 0
jle     short loc_4B5B46
xor     ecx, ecx
mov     cl, ds:byte_550F79[eax]
mov     eax, esi
call    sub_4EE64E
add     eax, ecx
xor     edx, edx
mov     dl, [esi+100h]
cmp     edx, eax
jz      short loc_4B5B52
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5B46:
add     byte ptr [esi+178h], 2
jmp     def_4B5A5E      ; jumptable 004B5A5E default case

loc_4B5B52:
inc     byte ptr [esi+178h]

loc_4B5B58:             ; jumptable 004B5A5E case 3
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F7A[eax*4]
jnz     short loc_4B5B76
inc     byte ptr [esi+178h]
jmp     short def_4B5A5E ; jumptable 004B5A5E default case

loc_4B5B76:
xor     eax, eax
mov     ax, [esi+13Ch]
test    ebx, eax
jz      short def_4B5A5E ; jumptable 004B5A5E default case
mov     al, [esi+175h]
and     al, 3
cmp     al, 3
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 2
jmp     short def_4B5A5E ; jumptable 004B5A5E default case

loc_4B5B9F:             ; jumptable 004B5A5E case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
test    edi, edi
jnz     short def_4B5A5E ; jumptable 004B5A5E default case
mov     word ptr [esi+44h], 0

def_4B5A5E:             ; jumptable 004B5A5E default case
test    edi, edi
jnz     short loc_4B5BF2
cmp     ds:byte_77E807, 0
jnz     short loc_4B5C13
cmp     dword ptr [esi+198h], 0
jz      short loc_4B5BF8

loc_4B5BDB:
mov     word ptr [esi+44h], 0FD00h

loc_4B5BE1:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B

loc_4B5BF2:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5BF8:
mov     di, [esi+44h]
add     edi, 80h
mov     [esi+44h], di
test    di, di
jle     short loc_4B5BE1
mov     word ptr [esi+44h], 0
jmp     short loc_4B5BE1

loc_4B5C13:
mov     word ptr [esi+44h], 0
jmp     short loc_4B5BF2
sub_4B5A32 endp

db 8Dh, 40h, 0
jpt_4B5C4D dd offset loc_4B5C54 ; jump table for switch statement
dd offset loc_4B5C93
dd offset loc_4B5C93
dd offset loc_4B5CA2



sub_4B5C2E proc near
push    ebx
push    ecx
push    edx
mov     ecx, [eax+16Dh]
sar     ecx, 18h
mov     bl, [eax+178h]
cmp     bl, 3           ; switch 4 cases
ja      def_4B5C4D      ; jumptable 004B5C4D default case
xor     edx, edx
mov     dl, bl
jmp     jpt_4B5C4D[edx*4] ; switch jump

loc_4B5C54:             ; jumptable 004B5C4D case 0
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     cl, [eax+100h]
cmp     cl, ds:byte_550F78[edx*4]
jnz     short loc_4B5C83
add     bl, 2
mov     [eax+178h], bl
or      byte ptr [eax+174h], 10h
cmp     ds:byte_77E807, 1
jnz     short loc_4B5C8B

loc_4B5C83:
mov     word ptr [eax+44h], 0
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5C8B:
mov     word ptr [eax+44h], 0FD00h
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5C93:             ; jumptable 004B5C4D cases 1,2
and     byte ptr [eax+174h], 0CFh
inc     byte ptr [eax+178h]
jmp     short def_4B5C4D ; jumptable 004B5C4D default case

loc_4B5CA2:             ; jumptable 004B5C4D case 3
mov     edx, [eax+100h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4B5C4D ; jumptable 004B5C4D default case
mov     byte ptr [eax+174h], 0
mov     byte ptr [eax+177h], 0

def_4B5C4D:             ; jumptable 004B5C4D default case
mov     dx, [eax+44h]
add     edx, 0E0h
mov     [eax+44h], dx
test    dx, dx
jge     short loc_4B5CE4
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4B527B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5CE4:
mov     word ptr [eax+44h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4B5C2E endp

jpt_4B5D32 dd offset loc_4B5D39 ; jump table for switch statement
dd offset loc_4B5D68
dd offset loc_4B5D68
dd offset loc_4B5DF0
dd offset loc_4B5E3B



sub_4B5D02 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     edi, [eax+16Dh]
sar     edi, 18h
mov     ax, [eax+11Ch]
mov     [esp+18h+var_18], eax
mov     cl, [esi+178h]
cmp     cl, 4           ; switch 5 cases
ja      def_4B5D32      ; jumptable 004B5D32 default case
xor     eax, eax
mov     al, cl
jmp     jpt_4B5D32[eax*4] ; switch jump

loc_4B5D39:             ; jumptable 004B5D32 case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F78[eax*4]
jnz     def_4B5D32      ; jumptable 004B5D32 default case
add     cl, 2
mov     [esi+178h], cl
or      byte ptr [esi+174h], 10h
jmp     def_4B5D32      ; jumptable 004B5D32 default case

loc_4B5D68:             ; jumptable 004B5D32 cases 1,2
and     byte ptr [esi+174h], 0CFh
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 2
mov     al, [esi+100h]
cmp     al, ds:byte_550F7A[ecx]
jb      short loc_4B5DC4
xor     ebx, ebx
mov     bl, ds:byte_550F79[ecx]
xor     edx, edx
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A
mov     cl, ds:byte_550F79[ecx]
and     ecx, 0FFh
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE

loc_4B5DC4:
xor     eax, eax
mov     ax, [esi+13Ch]
xor     edx, edx
mov     dx, word ptr [esp+18h+var_18]
test    edx, eax
jz      short loc_4B5DE8
mov     eax, edi
cmp     word ptr [esi+eax*8+5FAh], 0
jg      def_4B5D32      ; jumptable 004B5D32 default case

loc_4B5DE8:
inc     byte ptr [esi+178h]
jmp     short loc_4B5E57

loc_4B5DF0:             ; jumptable 004B5D32 case 3
mov     edx, edi
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 2
xor     ebx, ebx
mov     bl, ds:byte_550F7A[ecx]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A
mov     cl, ds:byte_550F7A[ecx]
and     ecx, 0FFh
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
jmp     short loc_4B5DE8

loc_4B5E3B:             ; jumptable 004B5D32 case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B5D32 ; jumptable 004B5D32 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0

loc_4B5E57:
mov     byte ptr [esi+110h], 0

def_4B5D32:             ; jumptable 004B5D32 default case
cmp     edi, 0Ch
jnz     loc_4B5EE9
cmp     ds:byte_77E807, 0
jnz     loc_4B5EE3
mov     al, [esi+54Ch]
test    al, al
jz      short loc_4B5E9F
test    al, 2
jz      short loc_4B5E88
mov     word ptr [esi+44h], 0FD80h

loc_4B5E88:
test    byte ptr [esi+54Ch], 1
jz      short loc_4B5E98
mov     byte ptr [esi+110h], 0FFh

loc_4B5E98:
mov     byte ptr [esi+54Ch], 0

loc_4B5E9F:
mov     dh, [esi+9]
test    dh, dh
jz      short loc_4B5EB0
cmp     dh, 4
jz      short loc_4B5EB0
cmp     dh, 0Eh
jnz     short loc_4B5ED0

loc_4B5EB0:
mov     bx, [esi+44h]
add     ebx, 80h
mov     [esi+44h], bx
test    bx, bx
jle     short loc_4B5ED0
mov     word ptr [esi+44h], 0
mov     byte ptr [esi+110h], 0

loc_4B5ED0:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4B527B
jmp     short loc_4B5EE9

loc_4B5EE3:
mov     word ptr [esi+44h], 0

loc_4B5EE9:
cmp     byte ptr [esi+74h], 0
jz      short loc_4B5EFD
mov     eax, esi
call    sub_4B56DA
mov     byte ptr [esi+110h], 0

loc_4B5EFD:
add     esp, 4
jmp     loc_4B5BF2
sub_4B5D02 endp

align 2
jpt_4B5F35 dd offset loc_4B5F3C ; jump table for switch statement
dd offset loc_4B5F79
dd offset loc_4B5FA4
dd offset loc_4B5FD3



sub_4B5F16 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+16Dh]
sar     edx, 18h
mov     bl, [eax+178h]
cmp     bl, 3           ; switch 4 cases
ja      def_4B5F35      ; jumptable 004B5F35 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_4B5F35[ecx*4] ; switch jump

loc_4B5F3C:             ; jumptable 004B5F35 case 0
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     cl, [eax+100h]
cmp     cl, ds:byte_550F78[edx*4]
jnz     short loc_4B5F61
inc     bl
mov     [eax+178h], bl
or      byte ptr [eax+174h], 10h

loc_4B5F61:
cmp     ds:byte_77E807, 1
jz      loc_4B5FEF
mov     word ptr [eax+44h], 90h
jmp     def_4B5F35      ; jumptable 004B5F35 default case

loc_4B5F79:             ; jumptable 004B5F35 case 1
and     byte ptr [eax+174h], 0CFh
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F79[edx*4]
jnz     short def_4B5F35 ; jumptable 004B5F35 default case
mov     word ptr [eax+44h], 0

loc_4B5F9C:
inc     byte ptr [eax+178h]
jmp     short def_4B5F35 ; jumptable 004B5F35 default case

loc_4B5FA4:             ; jumptable 004B5F35 case 2
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     bl, [eax+100h]
cmp     bl, ds:byte_550F7A[edx*4]
jb      short def_4B5F35 ; jumptable 004B5F35 default case
cmp     ds:byte_77E807, 1
jnz     short loc_4B5FCB
mov     word ptr [eax+44h], 0
jmp     short loc_4B5F9C

loc_4B5FCB:
mov     word ptr [eax+44h], 60h ; '`'
jmp     short loc_4B5F9C

loc_4B5FD3:             ; jumptable 004B5F35 case 3
mov     edx, [eax+100h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_4B5F35 ; jumptable 004B5F35 default case
mov     byte ptr [eax+174h], 0
mov     byte ptr [eax+177h], 0

loc_4B5FEF:
mov     word ptr [eax+44h], 0

def_4B5F35:             ; jumptable 004B5F35 default case
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4B527B
pop     edx
pop     ecx
pop     ebx
retn
sub_4B5F16 endp

db 8Bh, 0C0h
jpt_4B6048 dd offset loc_4B604F ; jump table for switch statement
dd offset loc_4B607E
dd offset loc_4B60E7
dd offset loc_4B6142
dd offset loc_4B618E



sub_4B601E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, [eax+16Eh]
sar     edi, 18h
mov     bx, [eax+11Ch]
mov     dl, [eax+178h]
cmp     dl, 4           ; switch 5 cases
ja      def_4B6048      ; jumptable 004B6048 default case
xor     eax, eax
mov     al, dl
jmp     jpt_4B6048[eax*4] ; switch jump

loc_4B604F:             ; jumptable 004B6048 case 0
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dh, [esi+100h]
cmp     dh, ds:byte_550F78[eax*4]
jnz     def_4B6048      ; jumptable 004B6048 default case
add     dl, 2
mov     [esi+178h], dl

loc_4B6072:
or      byte ptr [esi+174h], 20h
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B607E:             ; jumptable 004B6048 case 1
test    byte ptr [esi+174h], 4
jnz     short loc_4B60A8
mov     edx, edi
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ebx, ebx
mov     bl, ds:byte_550F78[eax*4]
xor     edx, edi
mov     dl, [esi+0ACh]
mov     eax, esi
call    sub_4DE83A

loc_4B60A8:
mov     eax, esi
call    sub_4B5741
mov     [esi+104h], al
mov     eax, edi
shl     eax, 2
sub     eax, edi
xor     ecx, ecx
mov     cl, ds:byte_550F78[eax*4]
xor     ebx, ebx
mov     bl, [esi+104h]
mov     al, [esi+174h]
and     al, 3
movsx   edx, al
mov     eax, esi
call    sub_4DE8EE
inc     byte ptr [esi+178h]
jmp     short loc_4B6072

loc_4B60E7:             ; jumptable 004B6048 case 2
and     byte ptr [esi+174h], 0CFh
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
cmp     ds:byte_550F7B[eax], 0
jz      short loc_4B6130
mov     edx, edi
cmp     word ptr [esi+edx*8+5FAh], 0
jle     short loc_4B6130
xor     ecx, ecx
mov     cl, ds:byte_550F79[eax]
mov     eax, esi
call    sub_4EE64E
add     eax, ecx
xor     edx, edx
mov     dl, [esi+100h]
cmp     edx, eax
jz      short loc_4B613C
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B6130:
add     byte ptr [esi+178h], 2
jmp     def_4B6048      ; jumptable 004B6048 default case

loc_4B613C:
inc     byte ptr [esi+178h]

loc_4B6142:             ; jumptable 004B6048 case 3
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     dl, [esi+100h]
cmp     dl, ds:byte_550F7A[eax*4]
jnz     short loc_4B6160
inc     byte ptr [esi+178h]
jmp     short def_4B6048 ; jumptable 004B6048 default case

loc_4B6160:
xor     edx, edx
mov     dx, [esi+13Ah]
xor     eax, eax
mov     ax, bx
test    eax, edx
jz      short def_4B6048 ; jumptable 004B6048 default case
mov     al, [esi+175h]
and     al, 5
cmp     al, 5
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 1
jmp     short def_4B6048 ; jumptable 004B6048 default case

loc_4B618E:             ; jumptable 004B6048 case 4
mov     eax, [esi+100h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     byte ptr [esi+174h], 0
mov     byte ptr [esi+177h], 0
test    edi, edi
jnz     short def_4B6048 ; jumptable 004B6048 default case
mov     word ptr [esi+44h], 0

def_4B6048:             ; jumptable 004B6048 default case
test    edi, edi
jnz     loc_4B5BF2
cmp     ds:byte_77E807, 0
jnz     loc_4B5C13
cmp     dword ptr [esi+198h], 0
jz      loc_4B5BF8
mov     [esi+198h], edi
jmp     loc_4B5BDB
sub_4B601E endp




sub_4B61E1 proc near
push    edx
mov     edx, [eax+171h]
sar     edx, 18h
test    dl, 0C0h
jnz     short loc_4B61F9
cmp     byte ptr [eax+177h], 0
jz      short loc_4B6200

loc_4B61F9:
mov     eax, 1
pop     edx
retn

loc_4B6200:
xor     eax, eax
pop     edx
retn
sub_4B61E1 endp




sub_4B6204 proc near
neg     eax
cmp     eax, ds:dword_77E7A0
jbe     short loc_4B6214
mov     eax, 0FFFFFFFFh
retn

loc_4B6214:
xor     eax, eax
retn
sub_4B6204 endp




sub_4B6217 proc near
test    edx, edx
jnz     short locret_4B6267
mov     edx, ds:dword_77E7A0
add     edx, eax
test    eax, eax
jle     short loc_4B6240
mov     ds:dword_77E7A0, edx
cmp     edx, 0F423Fh
jbe     short locret_4B6267
mov     ds:dword_77E7A0, 0F423Fh
retn

loc_4B6240:
mov     ds:dword_77E7A0, edx
cmp     edx, 0F423Fh
jbe     short loc_4B6256
xor     edx, edx
mov     ds:dword_77E7A0, edx

loc_4B6256:
test    ebx, ebx
jz      short loc_4B6261
sub     ds:dword_77E7A8, eax
retn

loc_4B6261:
sub     ds:dword_77E7A4, eax

locret_4B6267:
retn
sub_4B6217 endp




sub_4B6268 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
imul    eax, edx, 6F4h
add     eax, offset byte_5F8364
add     [eax+6Eh], cx
mov     esi, [eax+6Ch]
sar     esi, 10h
mov     ebx, [eax+0AEh]
sar     ebx, 10h
cmp     esi, ebx
jle     short loc_4B629A
mov     bx, [eax+0B0h]
mov     [eax+6Eh], bx

loc_4B629A:
test    ecx, ecx
jge     short loc_4B62A8
test    edx, edx
jnz     short loc_4B62A8
sub     ds:dword_77E7D0, ecx

loc_4B62A8:
pop     esi
pop     ecx
pop     ebx
retn
sub_4B6268 endp




sub_4B62AC proc near
push    ebx
push    edx
mov     edx, offset unk_531274

loc_4B62B3:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B62DC
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B62D7
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ebx
retn

loc_4B62D7:
add     edx, 4
jmp     short loc_4B62B3

loc_4B62DC:
pop     edx
pop     ebx
retn
sub_4B62AC endp




sub_4B62DF proc near
push    edx
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B62EE[edx*4]
pop     edx
retn
sub_4B62DF endp




sub_4B62F7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B6305
jbe     short loc_4B6316
pop     edx
retn

loc_4B6305:
test    al, al
jnz     short loc_4B632D
mov     eax, 8
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_4B6316:
cmp     ds:word_6E23D6, 0
jnz     short loc_4B632D
mov     eax, 47h ; 'G'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4B632D:
pop     edx
sub_4B62F7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_16]



sub_4B632F proc near
mov     eax, 600h
call    sub_47E8B8
inc     byte ptr ds:dword_77E5EC
retn
sub_4B632F endp




sub_4B6340 proc near
push    ebx
push    edx
cmp     byte ptr ds:dword_77E5EC, 0
jnz     short loc_4B6350
call    sub_4B632F

loc_4B6350:
mov     edx, offset unk_5312A0

loc_4B6355:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B637E
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B6379
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ebx
retn

loc_4B6379:
add     edx, 4
jmp     short loc_4B6355

loc_4B637E:
pop     edx
pop     ebx
retn
sub_4B6340 endp




sub_4B6381 proc near
push    ebx
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531668
mov     eax, offset unk_531660
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B63EF
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B63C2
mov     edx, offset unk_5316D8
jmp     short loc_4B63E5

loc_4B63C2:
mov     eax, 0Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B63D7
mov     edx, offset unk_5316D0
jmp     short loc_4B63E5

loc_4B63D7:
call    sub_47E888
test    eax, eax
jz      short loc_4B63EF
mov     edx, offset unk_5316C8

loc_4B63E5:
mov     eax, offset unk_531660
call    sub_47EF23

loc_4B63EF:
xor     edx, edx
mov     ds:dword_77E5EC, edx
cmp     ds:dword_53165C, 1
jnz     short loc_4B6405
call    sub_4B6E5B

loc_4B6405:
xor     ebx, ebx
mov     ds:dword_53165C, ebx
pop     edx
pop     ebx
retn
sub_4B6381 endp




sub_4B6410 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B6434
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B642D[edx*4]

loc_4B6434:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B6466
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_531460[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B6466:
pop     edx
retn
sub_4B6410 endp




sub_4B6468 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B648E
mov     eax, 2
call    sub_47E888
test    eax, eax
jnz     short loc_4B648E
mov     eax, 11h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B648E:
pop     edx
retn
sub_4B6468 endp




sub_4B6490 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B64AC
jbe     loc_4B6581
cmp     al, 2
jbe     loc_4B661B
pop     edx
pop     ecx
retn

loc_4B64AC:
test    al, al
jnz     loc_4B6655
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B64D3
mov     eax, 5
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh
pop     edx
pop     ecx
retn

loc_4B64D3:
mov     eax, 0Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B64F9
mov     eax, 4

loc_4B64E6:
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh
mov     eax, 1
jmp     loc_4B6560

loc_4B64F9:
mov     eax, 0Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B650E
mov     eax, 3
jmp     short loc_4B64E6

loc_4B650E:
call    sub_47E888
test    eax, eax
jz      short loc_4B6527
mov     eax, 2
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh
jmp     short loc_4B655E

loc_4B6527:
mov     eax, 4
call    sub_47E888
test    eax, eax
jz      short loc_4B6545
mov     eax, 1
call    sub_484CFC
mov     byte ptr [edx+4], 2
jmp     short loc_4B655E

loc_4B6545:
mov     eax, 3
call    sub_47E888
test    eax, eax
jz      short loc_4B6568
xor     eax, eax
call    sub_484CFC

loc_4B655A:
mov     byte ptr [edx+4], 1

loc_4B655E:
xor     eax, eax

loc_4B6560:
call    sub_4B6CB0
pop     edx
pop     ecx
retn

loc_4B6568:
call    sub_484CFC
mov     eax, 8
call    sub_47EB4B
xor     cl, cl
mov     byte ptr ds:dword_560BE0, cl
jmp     short loc_4B655A

loc_4B6581:
mov     eax, 3
call    sub_47E888
test    eax, eax
jz      loc_4B6655
mov     eax, 4
call    sub_47E888
test    eax, eax
jnz     loc_4B6652
mov     eax, 605h
call    sub_47E888
test    eax, eax
jnz     loc_4B6655
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     edx, ds:dword_5312A5
sar     edx, 18h
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     ecx, ds:dword_5312A5+1
sar     ecx, 18h
sub     eax, ecx
mov     ecx, eax
xor     eax, eax
mov     al, byte ptr ds:dword_5312A9+1
cmp     edx, eax
jnb     short loc_4B6655
xor     eax, eax
mov     al, byte ptr ds:dword_5312A9+2
cmp     ecx, eax
jnb     short loc_4B6655
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 1
mov     eax, 605h
call    sub_47E8B8
pop     edx
pop     ecx
retn

loc_4B661B:
xor     eax, eax
call    sub_47E888
test    eax, eax
jnz     short loc_4B6652
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4B6655
mov     eax, 604h
call    sub_47EA91
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 2
pop     edx
pop     ecx
retn

loc_4B6652:
inc     byte ptr [edx+4]

loc_4B6655:
pop     edx
pop     ecx
retn
sub_4B6490 endp




sub_4B6658 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3
jb      short loc_4B667A
jbe     loc_4B67F3
cmp     al, 5
jb      loc_4B6819
jbe     loc_4B6836
pop     edx
pop     ecx
retn

loc_4B667A:
test    al, al
jbe     short loc_4B6689
cmp     al, 2
jz      loc_4B67B1
pop     edx
pop     ecx
retn

loc_4B6689:
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4B669E
mov     eax, 10h
jmp     short loc_4B6704

loc_4B669E:
mov     eax, 17h
call    sub_47E888
test    eax, eax
jz      short loc_4B66BD
mov     eax, 0Ch
call    sub_484CFC
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
retn

loc_4B66BD:
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B66F1
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B66F1
mov     byte ptr [ecx+4], 2
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 3
pop     edx
pop     ecx
retn

loc_4B66F1:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_4B670E

loc_4B66FF:
mov     eax, 0Ah

loc_4B6704:
call    sub_484CFC
jmp     loc_4B6867

loc_4B670E:
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B6762
mov     eax, 9
call    sub_484CFC
mov     eax, 22h ; '"'
call    sub_47E888
test    eax, eax
jz      loc_4B6867
mov     eax, 45h ; 'E'
call    sub_47E888
test    eax, eax
jnz     loc_4B6867
call    sub_484DF3
mov     eax, offset unk_52C8E4
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
jmp     loc_4B6867

loc_4B6762:
mov     eax, 0Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B6777
mov     eax, 8
jmp     short loc_4B6704

loc_4B6777:
mov     eax, 0Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B679E
mov     eax, 7

loc_4B678A:
call    sub_484CFC
mov     eax, 60Ah
call    sub_47E8B8
jmp     loc_4B6867

loc_4B679E:
mov     eax, 4
call    sub_47E888
test    eax, eax
mov     eax, 6
jmp     short loc_4B678A

loc_4B67B1:
mov     eax, 6
call    sub_47E888
test    eax, eax
jnz     loc_4B6867
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      loc_4B686B
mov     eax, 604h
call    sub_47EA91
mov     eax, 8
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 4
pop     edx
pop     ecx
retn

loc_4B67F3:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_4B686B
mov     edx, 67h ; 'g'
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
call    sub_484D64
jmp     loc_4B66FF

loc_4B6819:
mov     edx, ds:dword_560C00
mov     eax, 60h ; '`'
call    sub_47EB4B
mov     ds:dword_560C00, edx
mov     byte ptr [ecx+4], 5
pop     edx
pop     ecx
retn

loc_4B6836:
mov     eax, 45h ; 'E'
call    sub_47E888
test    eax, eax
jz      short loc_4B686B
mov     eax, ds:dword_560C00
cmp     byte ptr [eax], 0
jz      short loc_4B6853
call    sub_4DE2F6

loc_4B6853:
mov     eax, 61h ; 'a'
call    sub_47EB4B
mov     eax, 46h ; 'F'
call    sub_47E8B8

loc_4B6867:
mov     byte ptr [ecx+4], 0FFh

loc_4B686B:
pop     edx
pop     ecx
retn
sub_4B6658 endp




sub_4B686E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6886
mov     eax, 16h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6886:
pop     edx
retn
sub_4B686E endp




sub_4B6888 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B68A0
mov     eax, 12h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B68A0:
pop     edx
retn
sub_4B6888 endp




sub_4B68A2 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B68B2
jbe     short loc_4B68C8
pop     edx
pop     ecx
retn

loc_4B68B2:
test    al, al
jnz     loc_4B6969
mov     eax, 14h
call    sub_484CFC
mov     byte ptr [edx+4], 1

loc_4B68C8:
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jz      loc_4B6965
mov     eax, 2Dh ; '-'
call    sub_47E888
test    eax, eax
jnz     loc_4B6965
mov     eax, 26h ; '&'
call    sub_47E888
test    eax, eax
jnz     short loc_4B6965
mov     eax, 2Eh ; '.'
call    sub_47E888
test    eax, eax
jnz     short loc_4B6965
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 8
mov     edx, ds:dword_5312A9
sar     edx, 18h
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 8
mov     ecx, ds:dword_5312A9+1
sar     ecx, 18h
sub     eax, ecx
mov     ecx, eax
xor     eax, eax
mov     al, ds:byte_5312AE
cmp     edx, eax
jnb     short loc_4B6969
xor     eax, eax
mov     al, ds:byte_5312AF
cmp     ecx, eax
jnb     short loc_4B6969
mov     eax, 1Ch
call    sub_47EB4B
mov     eax, 2Eh ; '.'
call    sub_47E8B8
pop     edx
pop     ecx
retn

loc_4B6965:
mov     byte ptr [edx+4], 0FFh

loc_4B6969:
pop     edx
pop     ecx
retn
sub_4B68A2 endp




sub_4B696C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B698E
call    sub_4DDF54
test    eax, eax
jz      short loc_4B698A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+4], 2

loc_4B698A:
mov     byte ptr [edx+4], 0FFh

loc_4B698E:
pop     edx
retn
sub_4B696C endp




sub_4B6990 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B69B2
mov     eax, 13h
call    sub_484CFC
mov     eax, 25h ; '%'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B69B2:
pop     edx
retn
sub_4B6990 endp




sub_4B69B4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B69CC
mov     eax, 15h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B69CC:
pop     edx

locret_4B69CD:
retn
sub_4B69B4 endp




sub_4B69CE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B69F0
mov     eax, 13h
call    sub_484CFC
mov     eax, 25h ; '%'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B69F0:
pop     edx
retn
sub_4B69CE endp




sub_4B69F2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A0A
mov     eax, 15h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A0A:
pop     edx
retn
sub_4B69F2 endp




sub_4B6A0C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A24
mov     eax, 17h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A24:
pop     edx
retn
sub_4B6A0C endp




sub_4B6A26 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A3E
mov     eax, 18h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A3E:
pop     edx
retn
sub_4B6A26 endp




sub_4B6A40 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A58
mov     eax, 19h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A58:
pop     edx

locret_4B6A59:
retn
sub_4B6A40 endp




sub_4B6A5A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A72
mov     eax, 13h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A72:
pop     edx
retn
sub_4B6A5A endp




sub_4B6A74 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6A8C
mov     eax, 15h
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6A8C:
pop     edx
retn
sub_4B6A74 endp




sub_4B6A8E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6AA6
mov     eax, 1Ah
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6AA6:
pop     edx
retn
sub_4B6A8E endp




sub_4B6AA8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6AC0
mov     eax, 1Bh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6AC0:
pop     edx
retn
sub_4B6AA8 endp




sub_4B6AC2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6ADA
mov     eax, 1Ch
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6ADA:
pop     edx
retn
sub_4B6AC2 endp




sub_4B6ADC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6AF4
mov     eax, 1Dh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6AF4:
pop     edx
retn
sub_4B6ADC endp




sub_4B6AF6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B0E
mov     eax, 1Eh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B0E:
pop     edx
retn
sub_4B6AF6 endp




sub_4B6B10 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B28
mov     eax, 1Fh
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B28:
pop     edx
retn
sub_4B6B10 endp




sub_4B6B2A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B42
mov     eax, 20h ; ' '
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B42:
pop     edx
retn
sub_4B6B2A endp




sub_4B6B44 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B5C
mov     eax, 21h ; '!'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B5C:
pop     edx
retn
sub_4B6B44 endp




sub_4B6B5E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B76
mov     eax, 22h ; '"'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B76:
pop     edx
retn
sub_4B6B5E endp




sub_4B6B78 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6B90
mov     eax, 23h ; '#'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6B90:
pop     edx
retn
sub_4B6B78 endp




sub_4B6B92 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BAA
mov     eax, 24h ; '$'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BAA:
pop     edx
retn
sub_4B6B92 endp




sub_4B6BAC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BC4
mov     eax, 22h ; '"'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BC4:
pop     edx
retn
sub_4B6BAC endp




sub_4B6BC6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BDE
mov     eax, 23h ; '#'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BDE:
pop     edx
retn
sub_4B6BC6 endp




sub_4B6BE0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B6BF8
mov     eax, 24h ; '$'
call    sub_484CFC
mov     byte ptr [edx+4], 0FFh

loc_4B6BF8:
pop     edx
retn
sub_4B6BE0 endp




sub_4B6BFA proc near
mov     al, [eax+4]
test    al, al
jbe     short loc_4B6C0A
cmp     al, 0FFh
jz      short loc_4B6C42
jmp     sub_4B6C76

loc_4B6C0A:
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short sub_4B6C76
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E8h
call    sub_47E8B8
jmp     short sub_4B6C76

loc_4B6C42:
mov     al, 1
retn
sub_4B6BFA endp




sub_4B6C45 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B6C76
jmp     short loc_4B6C0A
sub_4B6C45 endp




sub_4B6C4E proc near

; FUNCTION CHUNK AT 004B6C83 SIZE 00000016 BYTES

mov     al, [eax+4]
test    al, al
jnz     short sub_4B6C76
mov     eax, 238h
call    sub_47E888
test    eax, eax
jz      short sub_4B6C76
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short loc_4B6C83

loc_4B6C71:
call    sub_4B6E75
sub_4B6C4E endp




sub_4B6C76 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B6C76 endp

; START OF FUNCTION CHUNK FOR sub_4B6C4E

loc_4B6C83:
mov     eax, 239h
call    sub_47E8B8
mov     eax, offset unk_531558
call    sub_49DBA5
jmp     short sub_4B6C76
; END OF FUNCTION CHUNK FOR sub_4B6C4E



sub_4B6C99 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B6C76
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short sub_4B6C76
jmp     short loc_4B6C71
sub_4B6C99 endp




sub_4B6CB0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, 1
mov     ds:dword_53165C, edx
test    eax, eax
jbe     short loc_4B6CD2
cmp     eax, edx
jz      loc_4B6D90
jmp     loc_4B6E54

loc_4B6CD2:
push    0
mov     ebp, ds:dword_5314D0
push    ebp
mov     ecx, ds:dword_5314CC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314CC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314CC
mov     eax, offset unk_5314C4
call    sub_43954B
mov     ds:dword_55CEF4, eax
push    0
mov     eax, ds:dword_5314E0
push    eax
mov     ecx, ds:dword_5314DC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314DC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314DC
mov     eax, offset unk_5314D4
call    sub_43954B
mov     ds:dword_55CEF8, eax
push    0
mov     edx, ds:dword_5314F0
push    edx
mov     ecx, ds:dword_5314EC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314EC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314EC
mov     eax, offset unk_5314E4
call    sub_43954B
mov     ds:dword_55CEFC, eax
push    0
mov     ecx, ds:dword_531500
push    ecx
mov     ecx, ds:dword_5314FC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5314FC+1
xor     edx, edx
mov     dl, byte ptr ds:dword_5314FC
mov     eax, offset unk_5314F4
jmp     loc_4B6E4A

loc_4B6D90:
push    0
mov     ecx, ds:dword_531510
push    ecx
mov     ecx, ds:dword_53150C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53150C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53150C
mov     eax, offset unk_531504
call    sub_43954B
mov     ds:dword_55CEF4, eax
push    0
mov     ebx, ds:dword_531520
push    ebx
mov     ecx, ds:dword_53151C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53151C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53151C
mov     eax, offset unk_531514
call    sub_43954B
mov     ds:dword_55CEF8, eax
push    0
mov     esi, ds:dword_531530
push    esi
mov     ecx, ds:dword_53152C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53152C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53152C
mov     eax, offset unk_531524
call    sub_43954B
mov     ds:dword_55CEFC, eax
push    0
mov     edi, ds:dword_531540
push    edi
mov     ecx, ds:dword_53153C
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_53153C+1
xor     edx, edx
mov     dl, byte ptr ds:dword_53153C
mov     eax, offset unk_531534

loc_4B6E4A:
call    sub_43954B
mov     ds:dword_55CF00, eax

loc_4B6E54:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B6CB0 endp




sub_4B6E5B proc near
push    edx
xor     eax, eax

loc_4B6E5E:
movsx   edx, ax
mov     edx, ds:dword_55CEF4[edx*4]
mov     byte ptr [edx+8], 2
inc     eax
cmp     ax, 4
jl      short loc_4B6E5E
pop     edx
retn
sub_4B6E5B endp




sub_4B6E75 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     eax, 23Bh
call    sub_47E888
mov     dl, al
add     dl, al
mov     eax, 23Ah
call    sub_47E888
or      dl, al
cmp     dl, 1
jb      short loc_4B6EA4
jbe     short loc_4B6ED5
cmp     dl, 2
jz      short loc_4B6EFE
jmp     loc_4B6F25

loc_4B6EA4:
test    dl, dl
jnz     loc_4B6F25
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4B6F25
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47EA91
xor     ebx, ebx
mov     ds:word_77E7E6, bx
jmp     short loc_4B6F25

loc_4B6ED5:
cmp     ds:word_77E7E6, 14h
jbe     short loc_4B6F25
mov     eax, 23Ah
call    sub_47EA91
mov     eax, 23Bh
call    sub_47E8B8
xor     edi, edi
mov     ds:word_77E7E6, di
jmp     short loc_4B6F25

loc_4B6EFE:
cmp     ds:word_77E7E6, 1Eh
jbe     short loc_4B6F25
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47E8B8
xor     ecx, ecx
mov     ds:word_77E7E6, cx

loc_4B6F25:
cmp     byte ptr ds:dword_77E7D5, 8
jnz     short loc_4B6F3C
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5316E4
mov     dh, 0Ah
jmp     short loc_4B6F48

loc_4B6F3C:
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5316E0
mov     dh, 2

loc_4B6F48:
xor     dl, dl

loc_4B6F4A:
cmp     dl, [ebx]
jnb     short loc_4B6F70
xor     ecx, ecx
mov     cl, dh
xor     eax, eax
mov     al, dl
add     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_531544
call    sub_49DBA5
inc     dl
jmp     short loc_4B6F4A

loc_4B6F70:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B6E75 endp




sub_4B6F75 proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531880
mov     eax, offset unk_531878
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B6FCD
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B6FB0
mov     edx, offset unk_5318E8
jmp     short loc_4B6FC3

loc_4B6FB0:
mov     eax, 46h ; 'F'
call    sub_47E888
test    eax, eax
jz      short loc_4B6FCD
mov     edx, offset unk_5318E0

loc_4B6FC3:
mov     eax, offset unk_531878
call    sub_47EF23

loc_4B6FCD:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B6F75 endp




sub_4B6FD7 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B6FFB
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B6FF4[edx*4]

loc_4B6FFB:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B702D
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_531820[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B702D:
pop     edx
retn
sub_4B6FD7 endp




sub_4B702F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 0Bh
jb      short loc_4B7050
jbe     loc_4B7214
cmp     al, 0Ch
jbe     loc_4B7261
jmp     loc_4B72B7

loc_4B7050:
test    al, al
jbe     short loc_4B7061
cmp     al, 0Ah
jz      loc_4B71E7
jmp     loc_4B72B7

loc_4B7061:
mov     eax, 0Dh
call    sub_47E8B8
mov     eax, 16h
call    sub_47EA91
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B70B5
mov     eax, 609h
call    sub_47E8B8
mov     eax, 60Ah
call    sub_47E8B8
mov     eax, 60Bh
call    sub_47E8B8
mov     eax, 60Ch
call    sub_47E8B8
mov     eax, 60Dh
call    sub_47E8B8

loc_4B70B5:
mov     eax, 9
call    sub_47E888
test    eax, eax
jz      short loc_4B70E0
mov     eax, 4
call    sub_485030
mov     byte ptr [edx+4], 0FFh
mov     eax, 1
call    sub_485124
jmp     loc_4B72B7

loc_4B70E0:
mov     eax, 0Fh
call    sub_47E888
test    eax, eax
jz      short loc_4B70FD
mov     eax, 4

loc_4B70F3:
call    sub_485030
jmp     loc_4B72B3

loc_4B70FD:
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4B7112
mov     eax, 3
jmp     short loc_4B70F3

loc_4B7112:
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B7127
mov     eax, 21h ; '!'
jmp     short loc_4B70F3

loc_4B7127:
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jz      short loc_4B7158
mov     eax, 22h ; '"'
call    sub_485030
mov     eax, 2
call    sub_485124
mov     eax, 3
call    sub_485124
jmp     loc_4B72B3

loc_4B7158:
mov     eax, 46h ; 'F'
call    sub_47E888
test    eax, eax
jz      short loc_4B71CB
mov     eax, 2
call    sub_485030
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jnz     loc_4B72B3
mov     eax, offset unk_515CA0
call    sub_49DBA5
mov     ecx, eax
mov     eax, offset unk_515CB4
call    sub_49DBA5
lea     edi, [eax+0C4h]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, offset unk_515CC8
call    sub_49DBA5
lea     edi, [eax+0C4h]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, offset unk_515CDC
call    sub_49DBA5
mov     byte ptr [edx+4], 0Ah
jmp     loc_4B72B7

loc_4B71CB:
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      loc_4B70F3
mov     eax, 1
jmp     loc_4B70F3

loc_4B71E7:
cmp     word ptr ds:dword_5F837A+2, 0E00h
jge     loc_4B72B7
mov     byte ptr [edx+4], 0Bh
cmp     byte ptr ds:dword_5F836C+1, 1
jnz     short loc_4B7207
xor     eax, eax
jmp     short loc_4B720C

loc_4B7207:
mov     eax, 1

loc_4B720C:
mov     [edx+5], al
jmp     loc_4B72B7

loc_4B7214:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4B72B7
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
cmp     byte ptr [edx+5], 0
jnz     short loc_4B7251
mov     eax, 60Fh
jmp     short loc_4B7256

loc_4B7251:
mov     eax, 610h

loc_4B7256:
call    sub_47E8B8
mov     byte ptr [edx+4], 0Ch
jmp     short loc_4B72B7

loc_4B7261:
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jnz     short loc_4B7287
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_4B7287
mov     byte ptr [edx+4], 0Ah
mov     byte ptr [edx+5], 0
jmp     short loc_4B72B7

loc_4B7287:
mov     eax, 20h ; ' '
call    sub_47E888
test    eax, eax
jz      short loc_4B72B7
mov     eax, 2
call    sub_485124
mov     eax, 3
call    sub_485124
mov     eax, 1Ch
call    sub_485030

loc_4B72B3:
mov     byte ptr [edx+4], 0FFh

loc_4B72B7:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B702F endp




sub_4B72BD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      loc_4B7349
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B72F9
mov     eax, 7
call    sub_485030
mov     eax, 1
call    sub_485124
mov     eax, 2
call    sub_485124
jmp     short loc_4B732D

loc_4B72F9:
mov     eax, 46h ; 'F'
call    sub_47E888
test    eax, eax
jz      short loc_4B730E
mov     eax, 7
jmp     short loc_4B7328

loc_4B730E:
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B7323
mov     eax, 6
jmp     short loc_4B7328

loc_4B7323:
mov     eax, 5

loc_4B7328:
call    sub_485030

loc_4B732D:
mov     eax, 22h ; '"'
call    sub_47E888
test    eax, eax
jz      short loc_4B7345
mov     eax, 36h ; '6'
call    sub_485030

loc_4B7345:
mov     byte ptr [edx+4], 0FFh

loc_4B7349:
pop     edx
retn
sub_4B72BD endp




sub_4B734B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7363
mov     eax, 18h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7363:
pop     edx
retn
sub_4B734B endp




sub_4B7365 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B737D
mov     eax, 0Bh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B737D:
pop     edx
retn
sub_4B7365 endp




sub_4B737F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7397
mov     eax, 0Ch
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7397:
pop     edx
retn
sub_4B737F endp




sub_4B7399 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B73B1
mov     eax, 2Fh ; '/'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B73B1:
pop     edx
retn
sub_4B7399 endp




sub_4B73B3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B73CB
mov     eax, 8
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B73CB:
pop     edx
retn
sub_4B73B3 endp




sub_4B73CD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B73E5
mov     eax, 0Dh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B73E5:
pop     edx
retn
sub_4B73CD endp




sub_4B73E7 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
ja      short loc_4B73F3
mov     byte ptr [eax+4], 0FFh

loc_4B73F3:
pop     edx
retn
sub_4B73E7 endp




sub_4B73F5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B740D
mov     eax, 20h ; ' '
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B740D:
pop     edx
retn
sub_4B73F5 endp




sub_4B740F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7427
mov     eax, 0Ch
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7427:
pop     edx
retn
sub_4B740F endp




sub_4B7429 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7441
mov     eax, 9
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7441:
pop     edx
retn
sub_4B7429 endp




sub_4B7443 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B745B
mov     eax, 0Eh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B745B:
pop     edx
retn
sub_4B7443 endp




sub_4B745D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7475
mov     eax, 19h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7475:
pop     edx
retn
sub_4B745D endp




sub_4B7477 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B748F
mov     eax, 10h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B748F:
pop     edx
retn
sub_4B7477 endp




sub_4B7491 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74A9
mov     eax, 13h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B74A9:
pop     edx
retn
sub_4B7491 endp




sub_4B74AB proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74C3
mov     eax, 30h ; '0'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B74C3:
pop     edx
retn
sub_4B74AB endp




sub_4B74C5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74DC
mov     eax, 9
call    sub_485030
inc     byte ptr [edx+4]

loc_4B74DC:
pop     edx
retn
sub_4B74C5 endp




sub_4B74DE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B74F6
mov     eax, 0Eh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B74F6:
pop     edx
retn
sub_4B74DE endp




sub_4B74F8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7510
mov     eax, 19h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7510:
pop     edx
retn
sub_4B74F8 endp




sub_4B7512 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B752A
mov     eax, 10h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B752A:
pop     edx
retn
sub_4B7512 endp




sub_4B752C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7544
mov     eax, 13h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7544:
pop     edx
retn
sub_4B752C endp




sub_4B7546 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B755E
mov     eax, 30h ; '0'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B755E:
pop     edx
retn
sub_4B7546 endp




sub_4B7560 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7578
mov     eax, 0Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7578:
pop     edx
retn
sub_4B7560 endp




sub_4B757A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B759C
mov     eax, 0Fh
call    sub_485030
mov     eax, 37h ; '7'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B759C:
pop     edx
retn
sub_4B757A endp




sub_4B759E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B75B6
mov     eax, 1Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B75B6:
pop     edx
retn
sub_4B759E endp




sub_4B75B8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B75D0
mov     eax, 11h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B75D0:
pop     edx
retn
sub_4B75B8 endp




sub_4B75D2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B75EA
mov     eax, 14h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B75EA:
pop     edx
retn
sub_4B75D2 endp




sub_4B75EC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7604
mov     eax, 31h ; '1'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7604:
pop     edx
retn
sub_4B75EC endp




sub_4B7606 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B761E
mov     eax, 0Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B761E:
pop     edx
retn
sub_4B7606 endp




sub_4B7620 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7642
mov     eax, 0Fh
call    sub_485030
mov     eax, 37h ; '7'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7642:
pop     edx
retn
sub_4B7620 endp




sub_4B7644 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B765C
mov     eax, 1Ah
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B765C:
pop     edx
retn
sub_4B7644 endp




sub_4B765E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7676
mov     eax, 11h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7676:
pop     edx
retn
sub_4B765E endp




sub_4B7678 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7690
mov     eax, 14h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7690:
pop     edx
retn
sub_4B7678 endp




sub_4B7692 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B76AA
mov     eax, 31h ; '1'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76AA:
pop     edx
retn
sub_4B7692 endp




sub_4B76AC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B76C4
mov     eax, 15h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76C4:
pop     edx
retn
sub_4B76AC endp




sub_4B76C6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B76DE
mov     eax, 17h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76DE:
pop     edx
retn
sub_4B76C6 endp




sub_4B76E0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B76F8
mov     eax, 1Bh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B76F8:
pop     edx
retn
sub_4B76E0 endp




sub_4B76FA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7712
mov     eax, 12h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7712:
pop     edx
retn
sub_4B76FA endp




sub_4B7714 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B772C
mov     eax, 16h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B772C:
pop     edx
retn
sub_4B7714 endp




sub_4B772E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7746
mov     eax, 32h ; '2'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7746:
pop     edx
retn
sub_4B772E endp




sub_4B7748 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7760
mov     eax, 15h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7760:
pop     edx
retn
sub_4B7748 endp




sub_4B7762 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B777A
mov     eax, 17h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B777A:
pop     edx
retn
sub_4B7762 endp




sub_4B777C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7794
mov     eax, 1Bh
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7794:
pop     edx
retn
sub_4B777C endp




sub_4B7796 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B77AE
mov     eax, 12h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B77AE:
pop     edx
retn
sub_4B7796 endp




sub_4B77B0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B77C8
mov     eax, 16h
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B77C8:
pop     edx
retn
sub_4B77B0 endp




sub_4B77CA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B77E2
mov     eax, 32h ; '2'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B77E2:
pop     edx
retn
sub_4B77CA endp




sub_4B77E4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7814
mov     eax, 1Dh
call    sub_485030
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B7810
mov     eax, 3
call    sub_485124

loc_4B7810:
mov     byte ptr [edx+4], 0FFh

loc_4B7814:
pop     edx
retn
sub_4B77E4 endp




sub_4B7816 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B782E
mov     eax, 23h ; '#'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B782E:
pop     edx
retn
sub_4B7816 endp




sub_4B7830 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7848
mov     eax, 26h ; '&'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7848:
pop     edx
retn
sub_4B7830 endp




sub_4B784A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7862
mov     eax, 29h ; ')'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7862:
pop     edx
retn
sub_4B784A endp




sub_4B7864 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B787C
mov     eax, 2Ch ; ','
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B787C:
pop     edx
retn
sub_4B7864 endp




sub_4B787E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7896
mov     eax, 33h ; '3'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7896:
pop     edx
retn
sub_4B787E endp




sub_4B7898 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B78C8
mov     eax, 1Eh
call    sub_485030
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B78C4
mov     eax, 3
call    sub_485124

loc_4B78C4:
mov     byte ptr [edx+4], 0FFh

loc_4B78C8:
pop     edx
retn
sub_4B7898 endp




sub_4B78CA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B78E2
mov     eax, 24h ; '$'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B78E2:
pop     edx
retn
sub_4B78CA endp




sub_4B78E4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B78FC
mov     eax, 27h ; '''
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B78FC:
pop     edx
retn
sub_4B78E4 endp




sub_4B78FE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7916
mov     eax, 2Ah ; '*'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7916:
pop     edx
retn
sub_4B78FE endp




sub_4B7918 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7930
mov     eax, 2Dh ; '-'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7930:
pop     edx
retn
sub_4B7918 endp




sub_4B7932 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B794A
mov     eax, 34h ; '4'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B794A:
pop     edx
retn
sub_4B7932 endp




sub_4B794C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B797C
mov     eax, 1Fh
call    sub_485030
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B7978
mov     eax, 3
call    sub_485124

loc_4B7978:
mov     byte ptr [edx+4], 0FFh

loc_4B797C:
pop     edx
retn
sub_4B794C endp




sub_4B797E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7996
mov     eax, 25h ; '%'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7996:
pop     edx
retn
sub_4B797E endp




sub_4B7998 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79B0
mov     eax, 28h ; '('
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79B0:
pop     edx
retn
sub_4B7998 endp




sub_4B79B2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79CA
mov     eax, 2Bh ; '+'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79CA:
pop     edx
retn
sub_4B79B2 endp




sub_4B79CC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79E4
mov     eax, 2Eh ; '.'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79E4:
pop     edx
retn
sub_4B79CC endp




sub_4B79E6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B79FE
mov     eax, 35h ; '5'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B79FE:
pop     edx
retn
sub_4B79E6 endp




sub_4B7A00 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7A18
mov     eax, 38h ; '8'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7A18:
pop     edx
retn
sub_4B7A00 endp




sub_4B7A1A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7A32
mov     eax, 39h ; '9'
call    sub_485030
mov     byte ptr [edx+4], 0FFh

loc_4B7A32:
pop     edx
retn
sub_4B7A1A endp




sub_4B7A34 proc near
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short sub_4B7A7E
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E5h
call    sub_47E8B8
mov     eax, 7E6h
call    sub_47E8B8
mov     eax, 7E7h
call    sub_47E8B8
sub_4B7A34 endp




sub_4B7A7E proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B7A7E endp

byte_4B7A8B db 0
dd 0FFh
db 1Bh, 2 dup(0)



sub_4B7A93 proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531A80
mov     eax, offset unk_531A78
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B7AEB
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B7ACE
mov     edx, offset unk_531AE8
jmp     short loc_4B7AE1

loc_4B7ACE:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B7AEB
mov     edx, offset unk_531AE0

loc_4B7AE1:
mov     eax, offset unk_531A78
call    sub_47EF23

loc_4B7AEB:
mov     dl, byte ptr ds:dword_77E7D5+1
cmp     dl, 9
jz      short loc_4B7AFB
cmp     dl, 0Ah
jnz     short loc_4B7B09

loc_4B7AFB:
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4B7B09
call    sub_4B8595

loc_4B7B09:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B7A93 endp




sub_4B7B13 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B7B4C
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jz      short loc_4B7B42
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B7B39[edx*4]
jmp     short loc_4B7B4C

loc_4B7B42:
mov     eax, 1FFh
call    sub_47E8B8

loc_4B7B4C:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B7B7E
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_5319F4[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B7B7E:
pop     edx
retn
sub_4B7B13 endp




sub_4B7B80 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B7B94
jbe     loc_4B7C44
pop     edx
pop     ecx
retn

loc_4B7B94:
test    al, al
jnz     loc_4B7C9B
mov     eax, ecx
call    sub_4B8571
test    al, al
jz      short loc_4B7BAE

loc_4B7BA7:
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
retn

loc_4B7BAE:
mov     eax, 208h
call    sub_47E888
test    eax, eax
jz      short loc_4B7BC8
mov     eax, 50h ; 'P'
call    sub_47EB4B
jmp     short loc_4B7BA7

loc_4B7BC8:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B7C10
mov     eax, 2
call    sub_4873C4
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B7C04
mov     eax, 1
call    sub_4874BB
mov     eax, 2
call    sub_4874BB
jmp     short loc_4B7BA7

loc_4B7C04:
call    sub_481EB3
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
retn

loc_4B7C10:
mov     eax, 5
call    sub_47E888
test    eax, eax
jz      short loc_4B7C2D
mov     eax, 1
call    sub_4873C4
jmp     loc_4B7BA7

loc_4B7C2D:
mov     eax, 0Ch
call    sub_47EB4B
xor     ah, ah
mov     byte ptr ds:dword_560BE0, ah
jmp     loc_4B7BA7

loc_4B7C44:
mov     eax, 641h
call    sub_47E888
test    eax, eax
jnz     short loc_4B7C60
mov     eax, 642h
call    sub_47E888
test    eax, eax
jz      short loc_4B7C9B

loc_4B7C60:
mov     eax, 5
call    sub_47EB4B
mov     eax, 1
call    sub_47E8B8
mov     edx, offset unk_531AE8
mov     eax, offset unk_531A78
call    sub_47EF23
mov     byte ptr [ecx+4], 0FFh
mov     eax, 1
call    sub_4874BB
mov     eax, 2
call    sub_4874BB

loc_4B7C9B:
pop     edx
pop     ecx
retn
sub_4B7B80 endp




sub_4B7C9E proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3
jb      short loc_4B7CC0
jbe     loc_4B7D85
cmp     al, 5
jb      loc_4B7D96
jbe     loc_4B7DB5
pop     edx
pop     ecx
retn

loc_4B7CC0:
cmp     al, 1
jb      short loc_4B7CCB
jbe     short loc_4B7D38
jmp     loc_4B7D5D

loc_4B7CCB:
test    al, al
jnz     loc_4B7DD2
mov     eax, offset unk_531B00
call    sub_42C443
mov     edx, 0B0E00h
call    sub_4A7AE1
mov     eax, 59h ; 'Y'
call    sub_47E888
test    eax, eax
jz      short loc_4B7CFC
mov     byte ptr [ecx+4], 5
pop     edx
pop     ecx
retn

loc_4B7CFC:
mov     eax, 9
call    sub_47E888
test    eax, eax
jz      short loc_4B7D11
mov     byte ptr [ecx+4], 3
pop     edx
pop     ecx
retn

loc_4B7D11:
mov     eax, 0Eh
call    sub_47EB4B
mov     edx, offset unk_531AF0
mov     eax, offset unk_531A78
call    sub_47EF23
mov     byte ptr ds:dword_560BE0, 1
call    sub_4B8544
jmp     short loc_4B7D7F

loc_4B7D38:
mov     eax, 611h
call    sub_47E888
test    eax, eax
jz      loc_4B7DD2
mov     eax, 0Eh
call    sub_47EB4B
mov     byte ptr ds:dword_560BE0, 2
jmp     short loc_4B7D7F

loc_4B7D5D:
mov     eax, 620h
call    sub_47E888
test    eax, eax
jz      short loc_4B7DD2
mov     eax, 621h
call    sub_47E8B8
mov     eax, 6

loc_4B7D7A:
call    sub_47EB4B

loc_4B7D7F:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
retn

loc_4B7D85:
mov     edx, offset unk_531AF0
mov     eax, offset unk_531A78
call    sub_47EF23
jmp     short loc_4B7D7F

loc_4B7D96:
mov     eax, 660h
call    sub_47E888
test    eax, eax
jz      short loc_4B7DD2
mov     eax, 59h ; 'Y'
call    sub_47E8B8
mov     eax, 7
jmp     short loc_4B7D7A

loc_4B7DB5:
mov     eax, 6
call    sub_4873C4
mov     edx, offset unk_531AF8
mov     eax, offset unk_531A78
call    sub_47EF23
mov     byte ptr [ecx+4], 0FFh

loc_4B7DD2:
pop     edx
pop     ecx
retn
sub_4B7C9E endp




sub_4B7DD5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7DED
mov     eax, 7
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7DED:
pop     edx
retn
sub_4B7DD5 endp




sub_4B7DEF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7E2D
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7E29
mov     eax, 8
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7E29
mov     eax, 3
call    sub_4874BB

loc_4B7E29:
mov     byte ptr [edx+4], 0FFh

loc_4B7E2D:
pop     edx
retn
sub_4B7DEF endp




sub_4B7E2F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7E51
mov     eax, 7
call    sub_4873C4
mov     eax, 18h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7E51:
pop     edx
retn
sub_4B7E2F endp




sub_4B7E53 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7E91
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7E8D
mov     eax, 9
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7E8D
mov     eax, 7
call    sub_4874BB

loc_4B7E8D:
mov     byte ptr [edx+4], 0FFh

loc_4B7E91:
pop     edx
retn
sub_4B7E53 endp




sub_4B7E93 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7EAB
mov     eax, 0Bh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7EAB:
pop     edx
retn
sub_4B7E93 endp




sub_4B7EAD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7EEB
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7EE7
mov     eax, 9
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7EE7
mov     eax, 7
call    sub_4874BB

loc_4B7EE7:
mov     byte ptr [edx+4], 0FFh

loc_4B7EEB:
pop     edx
retn
sub_4B7EAD endp




sub_4B7EED proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7F05
mov     eax, 0Bh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7F05:
pop     edx

locret_4B7F06:
retn
sub_4B7EED endp




sub_4B7F07 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7F45
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7F41
mov     eax, 0Ah
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7F41
mov     eax, 8
call    sub_4874BB

loc_4B7F41:
mov     byte ptr [edx+4], 0FFh

loc_4B7F45:
pop     edx
retn
sub_4B7F07 endp




sub_4B7F47 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7F5F
mov     eax, 0Ch
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7F5F:
pop     edx
retn
sub_4B7F47 endp




sub_4B7F61 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B7F9F
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7F9B
mov     eax, 0Ah
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7F9B
mov     eax, 8
call    sub_4874BB

loc_4B7F9B:
mov     byte ptr [edx+4], 0FFh

loc_4B7F9F:
pop     edx
retn
sub_4B7F61 endp




sub_4B7FA1 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B7FC3
mov     eax, 0Ch
call    sub_4873C4
mov     eax, 19h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B7FC3:
pop     edx
retn
sub_4B7FA1 endp




sub_4B7FC5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8000
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B7FFC
mov     eax, 0Dh
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B7FFC
xor     eax, eax
call    sub_4874BB

loc_4B7FFC:
mov     byte ptr [edx+4], 0FFh

loc_4B8000:
pop     edx
retn
sub_4B7FC5 endp




sub_4B8002 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B8024
mov     eax, 0Eh
call    sub_4873C4
mov     eax, 19h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B8024:
pop     edx
retn
sub_4B8002 endp




sub_4B8026 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8061
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B805D
mov     eax, 0Dh
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B805D
xor     eax, eax
call    sub_4874BB

loc_4B805D:
mov     byte ptr [edx+4], 0FFh

loc_4B8061:
pop     edx
retn
sub_4B8026 endp




sub_4B8063 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B807B
mov     eax, 0Eh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B807B:
pop     edx
retn
sub_4B8063 endp




sub_4B807D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B80E8
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B80B4
mov     eax, 0Fh
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B80B4
xor     eax, eax
call    sub_4874BB

loc_4B80B4:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B80E4
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B80E4
mov     eax, 5
call    sub_4874BB
mov     eax, 6
call    sub_4874BB

loc_4B80E4:
mov     byte ptr [edx+4], 0FFh

loc_4B80E8:
pop     edx
retn
sub_4B807D endp




sub_4B80EA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B8102
mov     eax, 10h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B8102:
pop     edx
retn
sub_4B80EA endp




sub_4B8104 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B811C
mov     eax, 1Ah
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B811C:
pop     edx
retn
sub_4B8104 endp




sub_4B811E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8189
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B8155
mov     eax, 11h
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B8155
xor     eax, eax
call    sub_4874BB

loc_4B8155:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B8185
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8185
mov     eax, 5
call    sub_4874BB
mov     eax, 6
call    sub_4874BB

loc_4B8185:
mov     byte ptr [edx+4], 0FFh

loc_4B8189:
pop     edx
retn
sub_4B811E endp




sub_4B818B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B81A3
mov     eax, 12h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B81A3:
pop     edx
retn
sub_4B818B endp




sub_4B81A5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B81BD
mov     eax, 1Ah
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B81BD:
pop     edx
retn
sub_4B81A5 endp




sub_4B81BF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B822A
mov     eax, edx
call    sub_4B8571
test    al, al
jnz     short loc_4B81F6
mov     eax, 13h
call    sub_4873C4
mov     eax, offset unk_531A48
call    sub_42C56F
cmp     eax, 100h
jnz     short loc_4B81F6
xor     eax, eax
call    sub_4874BB

loc_4B81F6:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B8226
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8226
mov     eax, 5
call    sub_4874BB
mov     eax, 6
call    sub_4874BB

loc_4B8226:
mov     byte ptr [edx+4], 0FFh

loc_4B822A:
pop     edx
retn
sub_4B81BF endp




sub_4B822C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B8244
mov     eax, 14h
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B8244:
pop     edx
retn
sub_4B822C endp




sub_4B8246 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B825E
mov     eax, 1Bh
call    sub_4873C4
mov     byte ptr [edx+4], 0FFh

loc_4B825E:
pop     edx
retn
sub_4B8246 endp




sub_4B8260 proc near

; FUNCTION CHUNK AT 004B82B5 SIZE 00000002 BYTES

push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B82B5
mov     eax, 15h
call    sub_4873C4
mov     eax, 234h
call    sub_47E888
test    eax, eax
jz      short loc_4B8293
mov     eax, 5
call    sub_4874BB
mov     eax, 7
jmp     short loc_4B82A2

loc_4B8293:
mov     eax, 4
call    sub_4874BB
mov     eax, 6

loc_4B82A2:
call    sub_4874BB
mov     eax, 6Fh ; 'o'
call    sub_47E8B8
mov     byte ptr [edx+4], 0FFh
sub_4B8260 endp

; START OF FUNCTION CHUNK FOR sub_4B8544
;   ADDITIONAL PARENT FUNCTION sub_4B8260

loc_4B82B5:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4B8544



sub_4B82B7 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 0Ah
jb      short loc_4B82E3
jbe     loc_4B8470
cmp     al, 0FEh
jb      loc_4B8520
jbe     loc_4B8388
cmp     al, 0FFh
jz      loc_4B8516
jmp     loc_4B8520

loc_4B82E3:
test    al, al
jnz     loc_4B8520
mov     eax, 200h
call    sub_47E888
test    eax, eax
jnz     loc_4B8520
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      loc_4B838D
mov     eax, 206h
call    sub_47E888
test    eax, eax
jnz     short loc_4B838D
mov     eax, offset unk_53748C
call    sub_49DBA5
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
xor     ecx, ecx
mov     cx, ax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_5374A0
call    sub_49DBA5
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 30h
xor     ecx, ecx
mov     cx, ax
sar     ecx, 4
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_5374F0
call    sub_49DBA5
mov     eax, 16h
call    sub_4873C4
mov     eax, 7E0h
call    sub_47E8B8

loc_4B8384:
mov     byte ptr [edx+4], 0FEh

loc_4B8388:
mov     al, 1
pop     edx
pop     ecx
retn

loc_4B838D:
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4B83E9
mov     eax, 213h
call    sub_47E888
test    eax, eax
jnz     short loc_4B83E9
mov     eax, offset unk_5396DA
call    sub_49DBA5
mov     ecx, eax
mov     eax, offset unk_5396EE
call    sub_49DBA5
mov     [ecx+0C8h], eax
mov     eax, 17h
call    sub_4873C4
mov     eax, 235h
call    sub_47E8B8
mov     eax, 7E0h
call    sub_47E8B8
mov     byte ptr [edx+4], 0Ah
jmp     short loc_4B8388

loc_4B83E9:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4B8430
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8430
mov     eax, offset unk_531A50
call    sub_49DBA5
mov     eax, 20Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B8427
mov     eax, offset unk_531A64
call    sub_49DBA5

loc_4B8427:
mov     byte ptr [edx+4], 0FFh
jmp     loc_4B8520

loc_4B8430:
mov     eax, 246h
call    sub_47E888
test    eax, eax
jz      loc_4B8520
mov     eax, 200h
call    sub_47E888
test    eax, eax
jnz     loc_4B8520
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jge     loc_4B8520
mov     eax, 58h ; 'X'
call    sub_47EB4B
jmp     loc_4B8388

loc_4B8470:
mov     eax, 679h
call    sub_47E888
test    eax, eax
jz      short loc_4B84F5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4B8388
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4B84E6
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 235h
call    sub_47EA91
mov     eax, 24Ah
call    sub_47E8B8
mov     eax, 213h
call    sub_47E8B8
mov     eax, 214h
call    sub_47E8B8
mov     eax, 2E4h
call    sub_47EE82
mov     eax, 6
call    sub_47EEAE
mov     byte ptr ds:word_77E7FC, 1
jmp     loc_4B8384

loc_4B84E6:
mov     eax, 679h
call    sub_47EA91
jmp     loc_4B8388

loc_4B84F5:
mov     eax, 213h
call    sub_47E888
test    eax, eax
jz      loc_4B8388
mov     eax, 52h ; 'R'
call    sub_47EB4B
jmp     loc_4B8384

loc_4B8516:
mov     eax, 1FFh
call    sub_47E8B8

loc_4B8520:
mov     byte ptr [edx+4], 0
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
pop     ecx
retn
sub_4B82B7 endp




sub_4B8533 proc near
mov     byte ptr [eax+4], 0
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B8533 endp




sub_4B8544 proc near

; FUNCTION CHUNK AT 004B82B5 SIZE 00000002 BYTES

push    edx
xor     dl, dl
jmp     short loc_4B8554

loc_4B8549:
inc     dl
cmp     dl, 2
jge     loc_4B82B5

loc_4B8554:
call    sub_4DDF54
test    eax, eax
jz      short loc_4B8549
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     [eax+0Ch], dl
jmp     short loc_4B8549
sub_4B8544 endp




sub_4B8571 proc near
mov     eax, 200h
call    sub_47E888
test    eax, eax
jz      short loc_4B8592
call    sub_4DE227
test    eax, eax
jz      short loc_4B858F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'

loc_4B858F:
mov     al, 1
retn

loc_4B8592:
xor     al, al
retn
sub_4B8571 endp




sub_4B8595 proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edi, esp
mov     esi, offset byte_4B7A8B
movsd
movsd
mov     eax, esp
call    sub_42C443
mov     edx, 80100000h
call    sub_4A7AE1
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4B8595 endp




sub_4B85BC proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_531CAC
mov     eax, offset unk_531CA4
call    sub_47EF23
cmp     byte ptr ds:dword_77E7D5+1, 0
jnz     short loc_4B8619
mov     eax, 1
call    sub_47E888
test    eax, eax
jz      short loc_4B85FC
mov     edx, offset unk_531D14
jmp     short loc_4B860F

loc_4B85FC:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B8619
mov     edx, offset unk_531D0C

loc_4B860F:
mov     eax, offset unk_531CA4
call    sub_47EF23

loc_4B8619:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B85BC endp




sub_4B8623 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B8647
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B8640[edx*4]

loc_4B8647:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B8679
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_531C10[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B8679:
pop     edx
retn
sub_4B8623 endp




sub_4B867B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B8691
jbe     short loc_4B86E6
cmp     al, 2
jbe     loc_4B8722
pop     edx
retn

loc_4B8691:
test    al, al
jnz     loc_4B8746
mov     eax, 47h ; 'G'
call    sub_47E888
test    eax, eax
jz      short loc_4B86B7
mov     eax, 1
call    sub_487AE6

loc_4B86B1:
mov     byte ptr [edx+4], 0FFh
pop     edx
retn

loc_4B86B7:
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B86DB
mov     eax, 62h ; 'b'
call    sub_47EB4B
mov     eax, 47h ; 'G'
call    sub_47E8B8
jmp     short loc_4B86B1

loc_4B86DB:
call    sub_487AE6
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B86E6:
mov     eax, ds:dword_55A518
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+4], 3
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     eax, ds:dword_55A51C
mov     byte ptr [eax+4], 3
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     byte ptr [edx+4], 2
pop     edx
retn

loc_4B8722:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4B8746
mov     eax, 0Dh
call    sub_47EB4B
xor     ah, ah
mov     byte ptr ds:dword_560BE0, ah
mov     byte ptr [edx+4], 3

loc_4B8746:
pop     edx
retn
sub_4B867B endp




sub_4B8748 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8792
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4B878E
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4B877A
mov     eax, offset unk_51EF94
call    sub_4B8C15
jmp     short loc_4B878E

loc_4B877A:
mov     eax, 2
call    sub_47E8B8
mov     eax, 0Bh
call    sub_47EB4B

loc_4B878E:
mov     byte ptr [edx+4], 0FFh

loc_4B8792:
pop     edx
retn
sub_4B8748 endp




sub_4B8794 proc near

; FUNCTION CHUNK AT 004B887E SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B87B2
jbe     loc_4B881B
cmp     al, 2
jbe     loc_4B8870
pop     edx
pop     ecx
pop     ebx
retn

loc_4B87B2:
test    al, al
jnz     loc_4B887E
mov     eax, 641h
call    sub_47E888
test    eax, eax
jz      short loc_4B87D0

loc_4B87C8:
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4B87D0:
xor     ebx, ebx
mov     edx, 1
mov     eax, 5
call    sub_47EEF1
xor     ebx, ebx
mov     edx, 1
xor     eax, eax
call    sub_47EEF1
mov     eax, 620h
call    sub_47E8B8
mov     eax, 0Fh
call    sub_47EB4B
call    sub_4DE1BE
test    eax, eax
jz      short loc_4B8813
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8

loc_4B8813:
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4B881B:
mov     eax, 621h
call    sub_47E888
test    eax, eax
jz      short loc_4B8837
mov     eax, 10h
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8837:
mov     eax, 640h
call    sub_47E888
test    eax, eax
jz      short loc_4B887E
mov     eax, 630h
call    sub_47E888
test    eax, eax
jnz     loc_4B87C8
mov     eax, 641h
call    sub_47E8B8
mov     eax, 11h
call    sub_47EB4B
jmp     loc_4B87C8

loc_4B8870:
mov     eax, 13h
call    sub_47EB4B
mov     byte ptr [ecx+4], 0FFh
sub_4B8794 endp

; START OF FUNCTION CHUNK FOR sub_4B8C15
;   ADDITIONAL PARENT FUNCTION sub_4B8794

loc_4B887E:
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4B8C15



sub_4B8882 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B88B2
mov     eax, 630h
call    sub_47E888
test    eax, eax
jnz     short loc_4B88AE
mov     eax, 630h
call    sub_47E8B8
mov     eax, 12h
call    sub_47EB4B

loc_4B88AE:
mov     byte ptr [edx+4], 0FFh

loc_4B88B2:
pop     edx
retn
sub_4B8882 endp




sub_4B88B4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B88EC
mov     eax, 2
call    sub_487AE6
mov     byte ptr [edx+4], 0FFh
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B88E2
mov     eax, 3
jmp     short loc_4B88E7

loc_4B88E2:
mov     eax, 2

loc_4B88E7:
call    sub_487B61

loc_4B88EC:
pop     edx
retn
sub_4B88B4 endp




sub_4B88EE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8959
mov     eax, 13h
call    sub_47E888
test    eax, eax
jz      short loc_4B8912
mov     eax, offset unk_51EF94

loc_4B890B:
call    sub_4B8C15
jmp     short loc_4B8955

loc_4B8912:
mov     eax, 10h
call    sub_47E888
test    eax, eax
jz      short loc_4B8936
mov     eax, 13h
call    sub_47E8B8
mov     eax, 1Ah
call    sub_47EB4B
jmp     short loc_4B8955

loc_4B8936:
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jz      short loc_4B894B
mov     eax, offset unk_521AB8
jmp     short loc_4B890B

loc_4B894B:
mov     eax, offset unk_51EF94
call    sub_4B8C15

loc_4B8955:
mov     byte ptr [edx+4], 0FFh

loc_4B8959:
pop     edx
retn
sub_4B88EE endp




sub_4B895B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B89C6
mov     eax, 13h
call    sub_47E888
test    eax, eax
jz      short loc_4B897F
mov     eax, offset unk_51EF94

loc_4B8978:
call    sub_4B8C15
jmp     short loc_4B89C2

loc_4B897F:
mov     eax, 10h
call    sub_47E888
test    eax, eax
jz      short loc_4B89A3
mov     eax, 13h
call    sub_47E8B8
mov     eax, 1Ah
call    sub_47EB4B
jmp     short loc_4B89C2

loc_4B89A3:
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jz      short loc_4B89B8
mov     eax, offset unk_521AB8
jmp     short loc_4B8978

loc_4B89B8:
mov     eax, offset unk_51EF94
call    sub_4B8C15

loc_4B89C2:
mov     byte ptr [edx+4], 0FFh

loc_4B89C6:
pop     edx
retn
sub_4B895B endp




sub_4B89C8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8A19
mov     eax, 3
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B89F2
mov     eax, 3
jmp     short loc_4B89F7

loc_4B89F2:
mov     eax, 2

loc_4B89F7:
call    sub_487B61
mov     eax, offset unk_531C78
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8A15
mov     eax, 5
call    sub_487B61

loc_4B8A15:
mov     byte ptr [edx+4], 0FFh

loc_4B8A19:
pop     edx
retn
sub_4B89C8 endp




sub_4B8A1B proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
ja      short loc_4B8A27
mov     byte ptr [eax+4], 0FFh

loc_4B8A27:
pop     edx
retn
sub_4B8A1B endp




sub_4B8A29 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8A7A
mov     eax, 4
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8A53
mov     eax, 5
jmp     short loc_4B8A58

loc_4B8A53:
mov     eax, 1

loc_4B8A58:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8A76
mov     eax, 3
call    sub_487B61

loc_4B8A76:
mov     byte ptr [edx+4], 0FFh

loc_4B8A7A:
pop     edx
retn
sub_4B8A29 endp




sub_4B8A7C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8ACD
mov     eax, 5
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8AA6
mov     eax, 5
jmp     short loc_4B8AAB

loc_4B8AA6:
mov     eax, 1

loc_4B8AAB:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8AC9
mov     eax, 3
call    sub_487B61

loc_4B8AC9:
mov     byte ptr [edx+4], 0FFh

loc_4B8ACD:
pop     edx
retn
sub_4B8A7C endp




sub_4B8ACF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8B20
mov     eax, 6
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8AF9
mov     eax, 5
jmp     short loc_4B8AFE

loc_4B8AF9:
mov     eax, 1

loc_4B8AFE:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8B1C
mov     eax, 3
call    sub_487B61

loc_4B8B1C:
mov     byte ptr [edx+4], 0FFh

loc_4B8B20:
pop     edx
retn
sub_4B8ACF endp




sub_4B8B22 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8B73
mov     eax, 7
call    sub_487AE6
mov     eax, offset unk_531C68
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jnz     short loc_4B8B4C
mov     eax, 5
jmp     short loc_4B8B51

loc_4B8B4C:
mov     eax, 1

loc_4B8B51:
call    sub_487B61
mov     eax, offset unk_531C80
call    sub_42C56F
cmp     eax, 4Bh ; 'K'
jz      short loc_4B8B6F
mov     eax, 3
call    sub_487B61

loc_4B8B6F:
mov     byte ptr [edx+4], 0FFh

loc_4B8B73:
pop     edx
retn
sub_4B8B22 endp




sub_4B8B75 proc near
mov     al, [eax+4]
test    al, al
jnz     sub_4B8BF3
mov     eax, 236h
call    sub_47E888
test    eax, eax
jz      short loc_4B8BB6
mov     eax, 7E1h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E5h
call    sub_47E8B8

loc_4B8BB6:
mov     eax, 245h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8BE0
mov     eax, 243h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8BE0
mov     eax, 244h
call    sub_47E888
test    eax, eax
jz      short sub_4B8BF3

loc_4B8BE0:
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jge     short sub_4B8BF3
mov     eax, 59h ; 'Y'
call    sub_47EB4B
sub_4B8B75 endp




sub_4B8BF3 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B8BF3 endp




sub_4B8C00 proc near
cmp     byte ptr ds:dword_77E7D5+1, 2
jl      short sub_4B8BF3
mov     eax, offset unk_531C88
call    sub_4B8C90
jmp     short sub_4B8BF3
sub_4B8C00 endp




sub_4B8C15 proc near

; FUNCTION CHUNK AT 004B887E SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
jmp     short loc_4B8C2B

loc_4B8C1E:
add     edx, 14h
inc     ecx
cmp     ecx, 2
jge     loc_4B887E

loc_4B8C2B:
call    sub_4DDF54
test    eax, eax
jz      short loc_4B8C1E
mov     ds:dword_55CF04[ecx*4], eax
mov     byte ptr [eax], 1
mov     bl, [edx+1]
mov     [eax+2], bl
mov     bl, [edx+2]
mov     [eax+4], bl
mov     byte ptr [eax+3], 1
mov     ebx, [edx+0Ch]
mov     [eax+14h], ebx
mov     ebx, [edx+8]
mov     [eax+0Ch], ebx
mov     bx, [edx+10h]
mov     [eax+18h], bx
mov     bx, [edx+12h]
mov     [eax+56h], bx
mov     ebx, [edx+0Ah]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [edx+0Ch]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [edx+0Eh]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
jmp     short loc_4B8C1E
sub_4B8C15 endp




sub_4B8C90 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4DDF54
test    eax, eax
jz      short loc_4B8CF2
mov     byte ptr [eax], 1
mov     cl, [edx+1]
mov     [eax+2], cl
mov     cl, [edx+2]
mov     [eax+4], cl
mov     cl, [edx+4]
mov     [eax+3], cl
mov     ecx, [edx+0Ch]
mov     [eax+14h], ecx
mov     ecx, [edx+8]
mov     [eax+0Ch], ecx
mov     cx, [edx+10h]
mov     [eax+18h], cx
mov     cx, [edx+12h]
mov     [eax+56h], cx
mov     ecx, [edx+0Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [edx+0Ch]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     edx, [edx+0Eh]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx

loc_4B8CF2:
pop     edx
pop     ecx
retn
sub_4B8C90 endp

mov     eax, ds:dword_55CF04
call    sub_4DE2F6
mov     eax, ds:dword_55CF08
jmp     sub_4DE2F6



sub_4B8D09 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B8D09 endp




sub_4B8D14 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_531D3C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B8D14 endp




sub_4B8D3C proc near
push    edx
mov     edx, eax
mov     eax, dword ptr ds:unk_77E803
sar     eax, 18h
test    al, 80h
jz      short loc_4B8D5F
mov     al, [edx+4]
test    al, al
ja      short loc_4B8D5F
mov     eax, 0Ah
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4B8D5F:
pop     edx
retn
sub_4B8D3C endp




sub_4B8D61 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B8D88
cmp     byte ptr ds:dword_77E7D5+1, 6
jnz     short loc_4B8D7B
mov     eax, 24h ; '$'
jmp     short loc_4B8D80

loc_4B8D7B:
mov     eax, 16h

loc_4B8D80:
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4B8D88:
pop     edx
retn
sub_4B8D61 endp

word_4B8D8A dw 1900h
dd 3000000h
db 2 dup(0)



sub_4B8D92 proc near
push    ebx
push    edx
call    sub_47EBFB
mov     eax, 604h
call    sub_47EA91
mov     eax, 605h
call    sub_47EA91
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
shl     eax, 3
mov     edx, offset unk_532530
add     edx, eax
mov     eax, offset unk_532528
call    sub_47EF23
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B8DE5
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1

loc_4B8DE5:
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
pop     ebx
retn
sub_4B8D92 endp




sub_4B8DF0 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B8E14
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B8E0D[edx*4]

loc_4B8E14:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B8E46
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_5324D0[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B8E46:
pop     edx
retn
sub_4B8DF0 endp




sub_4B8E48 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B8E5C
cmp     al, 1
jz      short loc_4B8E65
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8E5C:
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8E65:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B8E81
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B8E93

loc_4B8E81:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B8E93:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B8E48 endp




sub_4B8E97 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jnz     short loc_4B8EA3
mov     byte ptr [eax+4], 0FFh

loc_4B8EA3:
pop     edx
retn
sub_4B8E97 endp




sub_4B8EA5 proc near

arg_0= dword ptr  4

mov     byte ptr ds:dword_77EA5A+2, 2
mov     ds:byte_77EA5E, al
mov     ds:byte_77EA5F, dl
mov     word ptr ds:dword_77EA4E+2, bx
mov     word ptr ds:dword_77EA52, cx
mov     eax, [esp+arg_0]
mov     word ptr ds:dword_77EA52+2, ax
xor     edx, edx
mov     word ptr ds:dword_77EA5A, dx
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
retn    4
sub_4B8EA5 endp




sub_4B8EF1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+4]
test    al, al
jbe     short loc_4B8F0C
cmp     al, 1
jz      short loc_4B8F1E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8F0C:
mov     eax, offset unk_532378
call    sub_47EC19
inc     byte ptr [edx+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8F1E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4B8FB5
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4B8F4B
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3

loc_4B8F44:
mov     eax, 8
jmp     short loc_4B8F9C

loc_4B8F4B:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4B8F66
push    0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 4
jmp     short loc_4B8F44

loc_4B8F66:
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4B8FA1
xor     dl, dl
mov     byte ptr ds:word_77E7FC, dl
mov     eax, 200h
call    sub_47E8B8
push    239Fh
mov     ecx, 0FFFFFFFFh
mov     ebx, 426h
xor     edx, edx
mov     eax, 5

loc_4B8F9C:
call    sub_4B8EA5

loc_4B8FA1:
mov     eax, 604h
call    sub_47EA91
mov     eax, 605h
call    sub_47EA91

loc_4B8FB5:
test    byte ptr [esi+16Bh], 2
jz      short loc_4B8FCD
mov     eax, 607h
call    sub_47E8B8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B8FCD:
mov     eax, 607h
call    sub_47EA91
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B8EF1 endp




sub_4B8FDC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset unk_531D7C

loc_4B8FE6:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B9010
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B900B
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B900B:
add     edx, 4
jmp     short loc_4B8FE6

loc_4B9010:
mov     al, [ecx+4]
test    al, al
jnz     short loc_4B9025
mov     eax, 51h ; 'Q'
call    sub_47EB4B
mov     byte ptr [ecx+4], 0FFh

loc_4B9025:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B8FDC endp




sub_4B9029 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset unk_531D7C

loc_4B9033:
mov     bx, [edx]
cmp     bx, 0FFFFh
jz      short loc_4B905D
xor     eax, eax
mov     ax, bx
call    sub_47E888
test    eax, eax
jz      short loc_4B9058
xor     eax, eax
mov     al, [edx+2]
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9058:
add     edx, 4
jmp     short loc_4B9033

loc_4B905D:
mov     al, [ecx+4]
test    al, al
jnz     short loc_4B9078
call    sub_4DE227
test    eax, eax
jz      short loc_4B9074
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'

loc_4B9074:
mov     byte ptr [ecx+4], 0FFh

loc_4B9078:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9029 endp




sub_4B907C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B9094
mov     eax, offset unk_532390
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9094:
pop     edx
retn
sub_4B907C endp




sub_4B9096 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B90AA
cmp     al, 1
jz      short loc_4B90DD
pop     edx
pop     ecx
pop     ebx
retn

loc_4B90AA:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B90D6
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B90D6:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B90DD:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B90F9
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B910B

loc_4B90F9:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B910B:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9096 endp




sub_4B910F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B9127
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9127:
pop     edx
retn
sub_4B910F endp




sub_4B9129 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B913D
cmp     al, 1
jz      short loc_4B9170
pop     edx
pop     ecx
pop     ebx
retn

loc_4B913D:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9169
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B9169:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9170:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B918C
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B919E

loc_4B918C:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B919E:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9129 endp




sub_4B91A2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B91BA
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B91BA:
pop     edx
retn
sub_4B91A2 endp




sub_4B91BC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B91D0
cmp     al, 1
jz      short loc_4B9203
pop     edx
pop     ecx
pop     ebx
retn

loc_4B91D0:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B91FC
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B91FC:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9203:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B921F
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9231

loc_4B921F:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9231:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B91BC endp




sub_4B9235 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B924D
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B924D:
pop     edx
retn
sub_4B9235 endp




sub_4B924F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9263
cmp     al, 1
jz      short loc_4B9296
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9263:
mov     eax, offset unk_532380
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B928F
mov     eax, 2
call    sub_47EDA7
mov     eax, 3
call    sub_47EDA7

loc_4B928F:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9296:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B92B2
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B92C4

loc_4B92B2:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B92C4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B924F endp




sub_4B92C8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B92E0
mov     eax, offset unk_532370
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B92E0:
pop     edx
retn
sub_4B92C8 endp




sub_4B92E2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B92F6
cmp     al, 1
jz      short loc_4B9329
pop     edx
pop     ecx
pop     ebx
retn

loc_4B92F6:
mov     eax, offset unk_532388
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9322
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9322:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9329:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B9345
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9357

loc_4B9345:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9357:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B92E2 endp




sub_4B935B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B936F
cmp     al, 1
jz      short loc_4B93A2
pop     edx
pop     ecx
pop     ebx
retn

loc_4B936F:
mov     eax, offset unk_532388
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B939B
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B939B:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B93A2:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B93BE
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B93D0

loc_4B93BE:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B93D0:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B935B endp




sub_4B93D4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B93E8
cmp     al, 1
jz      short loc_4B941B
pop     edx
pop     ecx
pop     ebx
retn

loc_4B93E8:
mov     eax, offset unk_532398
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9414
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9414:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B941B:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B9437
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9449

loc_4B9437:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9449:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B93D4 endp




sub_4B944D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9461
cmp     al, 1
jz      short loc_4B9499
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9461:
call    sub_4B967D
mov     eax, offset unk_5323A0
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9492
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9492:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9499:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B94B5
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B94C7

loc_4B94B5:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B94C7:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B944D endp




sub_4B94CB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B94DF
cmp     al, 1
jz      short loc_4B9517
pop     edx
pop     ecx
pop     ebx
retn

loc_4B94DF:
call    sub_4B967D
mov     eax, offset unk_5323A8
call    sub_47EC19
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9510
mov     eax, 5
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7

loc_4B9510:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9517:
mov     eax, 225h
call    sub_47E888
test    eax, eax
jnz     short loc_4B9533
mov     eax, 37h ; '7'
call    sub_47E888
test    eax, eax
jz      short loc_4B9545

loc_4B9533:
xor     ebx, ebx
xor     edx, edx
mov     eax, 4
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4B9545:
pop     edx
pop     ecx
pop     ebx
retn
sub_4B94CB endp




sub_4B9549 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B9576
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short sub_4B9576
mov     eax, 22Fh
call    sub_47E888
test    eax, eax
jnz     short sub_4B9576
mov     eax, 22Fh

loc_4B9571:
call    sub_47E8B8
sub_4B9549 endp




sub_4B9576 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B9576 endp




sub_4B9583 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4B9576
cmp     byte ptr ds:dword_77E7D5+1, 8
jge     short loc_4B959D
mov     eax, 22Dh
call    sub_47EA91

loc_4B959D:
mov     eax, 22Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B95C3
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4B95C3
mov     eax, 55h ; 'U'
call    sub_47EB4B

loc_4B95C3:
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jz      short loc_4B95E9
mov     eax, 22Fh
call    sub_47E888
test    eax, eax
jz      short loc_4B95E9
mov     eax, offset unk_532590
call    sub_49DBA5

loc_4B95E9:
mov     eax, 55h ; 'U'
call    sub_47E888
test    eax, eax
jz      short loc_4B960F
mov     eax, 233h
call    sub_47E888
test    eax, eax
jnz     short loc_4B960F
mov     eax, offset unk_5325A4
call    sub_49DBA5

loc_4B960F:
mov     eax, 7E6h
jmp     loc_4B9571
sub_4B9583 endp




sub_4B9619 proc near
mov     al, [eax+4]
test    al, al
jnz     sub_4B9576
mov     eax, 233h
call    sub_47E888
test    eax, eax
jz      sub_4B9576
mov     eax, 234h
call    sub_47E888
test    eax, eax
jnz     short loc_4B965A
mov     eax, offset unk_5325B8
call    sub_49DBA5
mov     eax, 0Bh
call    sub_47EEAE
jmp     short loc_4B9664

loc_4B965A:
mov     eax, offset unk_5325CC
call    sub_49DBA5

loc_4B9664:
mov     eax, offset unk_5325E0
call    sub_49DBA5
mov     eax, offset unk_5325F4
call    sub_49DBA5
jmp     sub_4B9576
sub_4B9619 endp




sub_4B967D proc near
push    edx
push    esi
push    edi
sub     esp, 8
mov     edi, esp
mov     esi, offset word_4B8D8A
movsd
movsd
mov     eax, esp
call    sub_42C443
mov     edx, 80100000h
call    sub_4A7AE1
add     esp, 8
pop     edi
pop     esi
pop     edx
retn
sub_4B967D endp




sub_4B96A4 proc near
push    edx
mov     eax, 16h
call    sub_47E8B8
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B96A4 endp




sub_4B96B9 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_532650[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B96B9 endp




sub_4B96E1 proc near
push    edx
mov     edx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4B96FB
xor     eax, eax
call    sub_47EB4B
pop     edx
retn

loc_4B96FB:
mov     al, [edx+4]
cmp     al, 1
jb      short loc_4B9706
jbe     short loc_4B9723
pop     edx
retn

loc_4B9706:
test    al, al
jnz     short loc_4B9747
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jnz     short loc_4B9743
call    sub_48B667
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9723:
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      short loc_4B9747
mov     eax, 17h
call    sub_47EB4B
xor     ah, ah
mov     byte ptr ds:dword_560BE0, ah

loc_4B9743:
mov     byte ptr [edx+4], 0FFh

loc_4B9747:
pop     edx

locret_4B9748:
retn
sub_4B96E1 endp




sub_4B9749 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4B9748
xor     eax, eax
jmp     sub_47EB4B
sub_4B9749 endp




sub_4B975E proc near
push    edx
call    sub_47EBFB
xor     edx, edx
mov     ds:dword_77E5EC, edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_532AA4
mov     eax, offset unk_532A9C
call    sub_47EF23
pop     edx
retn
sub_4B975E endp




sub_4B978A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5326BC[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx

locret_4B97B1:
retn
sub_4B978A endp

jpt_4B97D7 dd offset loc_4B97DE ; jump table for switch statement
dd offset loc_4B981E
dd offset loc_4B984C
dd offset loc_4B987A



sub_4B97C2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 3           ; switch 4 cases
ja      def_4B97D7      ; jumptable 004B97D7 default case
and     eax, 0FFh
jmp     jpt_4B97D7[eax*4] ; switch jump

loc_4B97DE:             ; jumptable 004B97D7 case 0
mov     eax, 26h ; '&'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9816
mov     eax, offset unk_532A6C
call    sub_47EC19
call    sub_4DE1BE
test    eax, eax
jz      short loc_4B980E
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0

loc_4B980E:
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4B9816:
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4B981E:             ; jumptable 004B97D7 case 1
mov     eax, 26h ; '&'
call    sub_47E888
test    eax, eax
jz      short def_4B97D7 ; jumptable 004B97D7 default case
mov     eax, 14h
call    sub_47EB4B
mov     ebx, 1
mov     edx, ebx
mov     eax, ebx
call    sub_47EEF1
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4B984C:             ; jumptable 004B97D7 case 2
mov     eax, 10h
call    sub_47E888
test    eax, eax
jz      short def_4B97D7 ; jumptable 004B97D7 default case
mov     eax, 15h
call    sub_47EB4B
xor     ebx, ebx
xor     edx, edx
mov     eax, 1
call    sub_47EEF1
mov     byte ptr [ecx+4], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4B987A:             ; jumptable 004B97D7 case 3
call    sub_4DE1BE
test    eax, eax
jz      short loc_4B9816
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 1
jmp     short loc_4B9816

def_4B97D7:             ; jumptable 004B97D7 default case
pop     edx
pop     ecx
pop     ebx

locret_4B9897:
retn
sub_4B97C2 endp




sub_4B9898 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98B0
mov     eax, offset unk_532A7C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98B0:
pop     edx
retn
sub_4B9898 endp




sub_4B98B2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98CA
mov     eax, offset unk_532A84
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98CA:
pop     edx
retn
sub_4B98B2 endp




sub_4B98CC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98E4
mov     eax, offset unk_532A8C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98E4:
pop     edx
retn
sub_4B98CC endp




sub_4B98E6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4B98FE
mov     eax, offset unk_532A94
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B98FE:
pop     edx
retn
sub_4B98E6 endp




sub_4B9900 proc near
push    edx
call    sub_47EBFB
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B9900 endp




sub_4B9910 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_532B84[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B9910 endp




sub_4B9938 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B994A
jbe     short loc_4B9968
cmp     al, 2
jbe     short loc_4B997D
pop     edx
retn

loc_4B994A:
test    al, al
jnz     short loc_4B9999
mov     eax, 1Ch
call    sub_47E888
test    eax, eax
jnz     short loc_4B9962
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9962:
mov     byte ptr [edx+4], 2
pop     edx
retn

loc_4B9968:
mov     eax, 1Bh
call    sub_47E888
test    eax, eax
jz      short loc_4B9999
mov     eax, 21h ; '!'
jmp     short loc_4B9990

loc_4B997D:
mov     eax, 1Fh
call    sub_47E888
test    eax, eax
jz      short loc_4B9999
mov     eax, 26h ; '&'

loc_4B9990:
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4B9999:
pop     edx
retn
sub_4B9938 endp




sub_4B999B proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+5], 0
jnz     short loc_4B99C0
mov     eax, 1Dh
call    sub_47E888
test    eax, eax
jz      short loc_4B99C0
mov     eax, 23h ; '#'
call    sub_47EB4B
mov     byte ptr [edx+5], 0FFh

loc_4B99C0:
pop     edx
retn
sub_4B999B endp




sub_4B99C2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B99D0
jbe     short loc_4B9A25
pop     edx
retn

loc_4B99D0:
test    al, al
jnz     loc_4B9A41
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jz      short loc_4B9A07
mov     eax, 54h ; 'T'
call    sub_47E888
test    eax, eax
jz      short loc_4B99FB
mov     eax, offset unk_532C00
jmp     short loc_4B9A00

loc_4B99FB:
mov     eax, offset unk_532C08

loc_4B9A00:
call    sub_47EC19
jmp     short loc_4B9A3D

loc_4B9A07:
mov     eax, offset unk_532C00
call    sub_47EC19
mov     eax, 29h ; ')'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9A3D
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9A25:
mov     eax, 29h ; ')'
call    sub_47E888
test    eax, eax
jz      short loc_4B9A41
mov     eax, 27h ; '''
call    sub_47EB4B

loc_4B9A3D:
mov     byte ptr [edx+4], 0FFh

loc_4B9A41:
pop     edx
retn
sub_4B99C2 endp




sub_4B9A43 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9A5B
mov     eax, offset unk_532C00
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9A5B:
pop     edx
retn
sub_4B9A43 endp




sub_4B9A5D proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_533018
mov     eax, offset unk_533010
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B9A5D endp




sub_4B9A89 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4B9AAD
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4B9AA6[edx*4]

loc_4B9AAD:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4B9ADF
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_532CC0[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4B9ADF:
pop     edx
retn
sub_4B9A89 endp




sub_4B9AE1 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9B27
mov     eax, offset unk_532FE8
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     [esp+14h+var_14], 0B00h
xor     ebx, ebx
mov     [esp+14h+var_12], bx
mov     [esp+14h+var_10], 900h
mov     eax, esp
call    sub_42C443
mov     edx, 0E0100h
call    sub_4A7AE1
mov     byte ptr [ecx+4], 0FFh

loc_4B9B27:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4B9AE1 endp




sub_4B9B2E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9B46
mov     eax, offset unk_532FB8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9B46:
pop     edx

locret_4B9B47:
retn
sub_4B9B2E endp




sub_4B9B48 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9B60
mov     eax, offset unk_532FB8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4B9B60:
pop     edx

locret_4B9B61:
retn
sub_4B9B48 endp




sub_4B9B62 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4B9B72
jbe     short loc_4B9B94
pop     edx
pop     ecx
retn

loc_4B9B72:
test    al, al
jnz     short loc_4B9BBF
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9B8E
mov     eax, 1Eh
call    sub_47EB4B

loc_4B9B8E:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
retn

loc_4B9B94:
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jz      short loc_4B9BBF
mov     eax, 19Dh
call    sub_4EE7A4
mov     edx, offset unk_533038
mov     eax, offset unk_533010
call    sub_47EF23
mov     byte ptr [ecx+4], 0FFh

loc_4B9BBF:
pop     edx
pop     ecx

locret_4B9BC1:
retn
sub_4B9B62 endp




sub_4B9BC2 proc near
mov     eax, 28h ; '('
call    sub_47E888
test    eax, eax
jz      short locret_4B9BC1
mov     eax, 18h
jmp     sub_47EB4B
sub_4B9BC2 endp




sub_4B9BDA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9BFC
mov     eax, offset unk_532FC0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9BFC:
pop     edx
retn
sub_4B9BDA endp




sub_4B9BFE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C20
mov     eax, offset unk_532FC0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C20:
pop     edx
retn
sub_4B9BFE endp




sub_4B9C22 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C44
mov     eax, offset unk_532FC8
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C44:
pop     edx
retn
sub_4B9C22 endp




sub_4B9C46 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C68
mov     eax, offset unk_532FD0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C68:
pop     edx
retn
sub_4B9C46 endp




sub_4B9C6A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9C8C
mov     eax, offset unk_532FD8
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9C8C:
pop     edx
retn
sub_4B9C6A endp




sub_4B9C8E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9CB0
mov     eax, offset unk_532FE0
call    sub_47EC19
mov     eax, 19Dh
call    sub_4EE7A4
mov     byte ptr [edx+4], 0FFh

loc_4B9CB0:
pop     edx
retn
sub_4B9C8E endp




sub_4B9CB2 proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short sub_4B9CE1
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short sub_4B9CE1
mov     eax, 22Ah
call    sub_47E888
test    eax, eax
jnz     short sub_4B9CE1
mov     eax, offset unk_537808
call    sub_49DBA5
sub_4B9CB2 endp




sub_4B9CE1 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4B9CE1 endp

word_4B9CEE dw 100h
dd 0
db 2 dup(0)



sub_4B9CF6 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_53354C
mov     eax, offset unk_533544
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4B9CF6 endp




sub_4B9D22 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_533168[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4B9D22 endp




sub_4B9D4A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9D68
mov     eax, offset unk_5334DC
call    sub_47EC19
xor     eax, eax
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9D68:
pop     edx
retn
sub_4B9D4A endp




sub_4B9D6A proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jnz     short loc_4B9DB1
mov     eax, offset unk_5334E4
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9D96
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9D96:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9DAE
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9DAE:
inc     byte ptr [edx+5]

loc_4B9DB1:
pop     edx
retn
sub_4B9D6A endp




sub_4B9DB3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9DD1
mov     eax, offset unk_5334DC
call    sub_47EC19
xor     eax, eax
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9DD1:
pop     edx
retn
sub_4B9DB3 endp




sub_4B9DD3 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jnz     short loc_4B9E1A
mov     eax, offset unk_5334E4
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9DFF
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9DFF:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9E17
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9E17:
inc     byte ptr [edx+5]

loc_4B9E1A:
pop     edx
retn
sub_4B9DD3 endp




sub_4B9E1C proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9E2E
cmp     al, 1
jz      short loc_4B9E44
pop     edx
pop     ecx
retn

loc_4B9E2E:
mov     eax, offset unk_5334EC
call    sub_47EC19
mov     eax, 1
call    sub_4BA0BE
jmp     short loc_4B9E74

loc_4B9E44:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4B9E77
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4B9E77
mov     eax, 606h
call    sub_47EA91
mov     edx, 4
mov     eax, 0Dh
call    sub_4BA1EF

loc_4B9E74:
inc     byte ptr [ecx+4]

loc_4B9E77:
pop     edx
pop     ecx
retn
sub_4B9E1C endp




sub_4B9E7A proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9EC1
mov     eax, offset unk_5334E4
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9EA6
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9EA6:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9EBE
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9EBE:
inc     byte ptr [edx+5]

loc_4B9EC1:
pop     edx

locret_4B9EC2:
retn
sub_4B9E7A endp




sub_4B9EC3 proc near
mov     eax, 11h
call    sub_47E888
test    eax, eax
jnz     short locret_4B9EC2
mov     eax, 11h
call    sub_47E8B8
mov     eax, 20h ; ' '
call    sub_47EB4B
mov     eax, 2EAh
jmp     sub_47EE82
sub_4B9EC3 endp




sub_4B9EEF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4B9EFF
cmp     al, 1
jz      short loc_4B9F19
pop     edx
retn

loc_4B9EFF:
mov     eax, offset unk_5334F4
call    sub_47EC19
mov     eax, 2
call    sub_4BA0BE
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4B9F19:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4B9F35
mov     eax, 22h ; '"'
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4B9F35:
pop     edx
retn
sub_4B9EEF endp




sub_4B9F37 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9F7E
mov     eax, offset unk_5334FC
call    sub_47EC19
mov     eax, 31h ; '1'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9F63
mov     eax, 7E1h
call    sub_47E8B8

loc_4B9F63:
mov     eax, 32h ; '2'
call    sub_47E888
test    eax, eax
jnz     short loc_4B9F7B
mov     eax, 7E3h
call    sub_47E8B8

loc_4B9F7B:
inc     byte ptr [edx+5]

loc_4B9F7E:
pop     edx
retn
sub_4B9F37 endp




sub_4B9F80 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9FA1
mov     eax, offset unk_533504
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9FA1:
pop     edx
retn
sub_4B9F80 endp




sub_4B9FA3 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9FBA
mov     eax, offset unk_53350C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4B9FBA:
pop     edx
retn
sub_4B9FA3 endp




sub_4B9FBC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4B9FDD
mov     eax, offset unk_533504
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4B9FDD:
pop     edx
retn
sub_4B9FBC endp




sub_4B9FDF proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4B9FF6
mov     eax, offset unk_53350C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4B9FF6:
pop     edx
retn
sub_4B9FDF endp




sub_4B9FF8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA019
mov     eax, offset unk_533514
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4BA019:
pop     edx
retn
sub_4B9FF8 endp




sub_4BA01B proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4BA032
mov     eax, offset unk_53351C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4BA032:
pop     edx
retn
sub_4BA01B endp




sub_4BA034 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA055
mov     eax, offset unk_533524
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4BA055:
pop     edx
retn
sub_4BA034 endp




sub_4BA057 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4BA06E
mov     eax, offset unk_53352C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4BA06E:
pop     edx
retn
sub_4BA057 endp




sub_4BA070 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA091
mov     eax, offset unk_533534
call    sub_47EC19
mov     eax, 3
call    sub_4BA0BE
inc     byte ptr [edx+4]

loc_4BA091:
pop     edx
retn
sub_4BA070 endp




sub_4BA093 proc near
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
ja      short loc_4BA0AA
mov     eax, offset unk_53353C
call    sub_47EC19
inc     byte ptr [edx+5]

loc_4BA0AA:
pop     edx
retn
sub_4BA093 endp

db 8Bh, 0C0h
jpt_4BA0DD dd offset def_4BA0DD ; jump table for switch statement
dd offset def_4BA0DD
dd offset loc_4BA0E4
dd offset loc_4BA16D



sub_4BA0BE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, 1100h
mov     edi, esp
mov     esi, offset word_4B9CEE
movsd
movsd
cmp     eax, 3          ; switch 4 cases
ja      def_4BA0DD      ; jumptable 004BA0DD default case, cases 0,1
jmp     jpt_4BA0DD[eax*4] ; switch jump

loc_4BA0E4:             ; jumptable 004BA0DD case 2
mov     ecx, 1200h
call    sub_4DE043
mov     edx, eax
mov     ebx, eax
test    eax, eax
jz      def_4BA0DD      ; jumptable 004BA0DD default case, cases 0,1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+3], 3
mov     word ptr [eax+14h], 700h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FB56h
mov     eax, [eax+12h]
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
mov     word ptr [edx+58h], 0
mov     ax, [edx+58h]
mov     [edx+54h], ax
mov     byte ptr [edx+0Ch], 0
mov     eax, 12h
call    sub_47E888
test    eax, eax
jz      short loc_4BA161
mov     byte ptr [edx+0Dh], 0
jmp     short loc_4BA165

loc_4BA161:
mov     byte ptr [edx+0Dh], 1

loc_4BA165:
mov     word ptr [ebx+56h], 0
jmp     short def_4BA0DD ; jumptable 004BA0DD default case, cases 0,1

loc_4BA16D:             ; jumptable 004BA0DD case 3
mov     ecx, 1200h
call    sub_4DE043
test    eax, eax
jz      short def_4BA0DD ; jumptable 004BA0DD default case, cases 0,1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+3], 3
mov     word ptr [eax+14h], 700h
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0FB56h
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
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     word ptr [eax+56h], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 2

def_4BA0DD:             ; jumptable 004BA0DD default case, cases 0,1
mov     eax, esp
call    sub_42C443
mov     edx, ecx
call    sub_4A7AE1
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BA0BE endp




sub_4BA1EF proc near
mov     ah, 2
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, al
mov     ds:byte_77EA5F, dl
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dl, dl
mov     byte ptr ds:dword_77EA5A+3, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, ah
retn
sub_4BA1EF endp




sub_4BA236 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BA236 endp




sub_4BA241 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5335D0[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BA241 endp




sub_4BA269 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BA287
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA287:
mov     al, [ecx+4]
cmp     al, 2
jb      short loc_4BA298
jbe     short loc_4BA2DC
cmp     al, 3
jbe     short loc_4BA2FA
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA298:
test    al, al
ja      short loc_4BA2AD
xor     edx, edx
mov     ds:word_77E918, dx
mov     byte ptr [ecx+4], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA2AD:
mov     eax, 43h ; 'C'
call    sub_47E888
test    eax, eax
jz      short loc_4BA2C3

loc_4BA2BB:
mov     byte ptr [ecx+4], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA2C3:
xor     ebx, ebx
mov     edx, 1
mov     eax, 3
call    sub_47EEF1
mov     byte ptr [ecx+4], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4BA2DC:
mov     eax, 43h ; 'C'
call    sub_47E888
test    eax, eax
jz      short loc_4BA316
xor     ebx, ebx
xor     edx, edx
mov     eax, 3
call    sub_47EEF1
jmp     short loc_4BA2BB

loc_4BA2FA:
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jz      short loc_4BA316
mov     eax, 19h
call    sub_47EB4B
mov     byte ptr [ecx+4], 0FFh

loc_4BA316:
pop     edx
pop     ecx
pop     ebx

locret_4BA319:
retn
sub_4BA269 endp




sub_4BA31A proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BA319
xor     eax, eax
jmp     sub_47EB4B
sub_4BA31A endp




sub_4BA32F proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_5341EC
mov     eax, offset unk_5341E4
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BA32F endp




sub_4BA35B proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BA37F
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BA378[edx*4]

loc_4BA37F:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BA3B1
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_5336D0[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BA3B1:
pop     edx
retn
sub_4BA35B endp




sub_4BA3B3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA3C1
cmp     al, 1
jnz     short loc_4BA3CF

loc_4BA3C1:
mov     eax, offset unk_53414C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA3CF:
pop     edx

locret_4BA3D0:
retn
sub_4BA3B3 endp




sub_4BA3D1 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA3E9
mov     eax, offset unk_534134
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA3E9:
pop     edx
retn
sub_4BA3D1 endp




sub_4BA3EB proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA3F9
cmp     al, 1
jnz     short loc_4BA407

loc_4BA3F9:
mov     eax, offset unk_534154
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA407:
pop     edx
retn
sub_4BA3EB endp




sub_4BA409 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA417
cmp     al, 1
jnz     short loc_4BA425

loc_4BA417:
mov     eax, offset unk_534174
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA425:
pop     edx

locret_4BA426:
retn
sub_4BA409 endp




sub_4BA427 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA43F
mov     eax, offset unk_53413C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA43F:
pop     edx
retn
sub_4BA427 endp




sub_4BA441 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jbe     short loc_4BA44E
cmp     dl, 1
jnz     short loc_4BA452

loc_4BA44E:
mov     byte ptr [eax+4], 0FFh

loc_4BA452:
pop     edx
retn
sub_4BA441 endp




sub_4BA454 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA462
cmp     al, 1
jnz     short loc_4BA470

loc_4BA462:
mov     eax, offset unk_53418C
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA470:
pop     edx

locret_4BA471:
retn
sub_4BA454 endp




sub_4BA472 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA48A
mov     eax, offset unk_534144
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA48A:
pop     edx
retn
sub_4BA472 endp




sub_4BA48C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA49A
cmp     al, 1
jnz     short loc_4BA4A8

loc_4BA49A:
mov     eax, offset unk_53415C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA4A8:
pop     edx
retn
sub_4BA48C endp




sub_4BA4AA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA4B8
cmp     al, 1
jnz     short loc_4BA4C6

loc_4BA4B8:
mov     eax, offset unk_53418C
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA4C6:
pop     edx

locret_4BA4C7:
retn
sub_4BA4AA endp




sub_4BA4C8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA4E0
mov     eax, offset unk_534144
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA4E0:
pop     edx
retn
sub_4BA4C8 endp




sub_4BA4E2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA4F0
cmp     al, 1
jnz     short loc_4BA4FE

loc_4BA4F0:
mov     eax, offset unk_53415C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA4FE:
pop     edx
retn
sub_4BA4E2 endp




sub_4BA500 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA50E
cmp     al, 1
jnz     short loc_4BA51C

loc_4BA50E:
mov     eax, offset unk_53418C
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA51C:
pop     edx

locret_4BA51D:
retn
sub_4BA500 endp




sub_4BA51E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA536
mov     eax, offset unk_53417C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA536:
pop     edx
retn
sub_4BA51E endp




sub_4BA538 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA546
cmp     al, 1
jnz     short loc_4BA554

loc_4BA546:
mov     eax, offset unk_534164
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA554:
pop     edx
retn
sub_4BA538 endp




sub_4BA556 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA564
cmp     al, 1
jnz     short loc_4BA572

loc_4BA564:
mov     eax, offset unk_53418C
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA572:
pop     edx

locret_4BA573:
retn
sub_4BA556 endp




sub_4BA574 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA58C
mov     eax, offset unk_53417C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA58C:
pop     edx
retn
sub_4BA574 endp




sub_4BA58E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA59C
cmp     al, 1
jnz     short loc_4BA5AA

loc_4BA59C:
mov     eax, offset unk_534164
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA5AA:
pop     edx
retn
sub_4BA58E endp




sub_4BA5AC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA5BA
cmp     al, 1
jnz     short loc_4BA5C8

loc_4BA5BA:
mov     eax, offset unk_534194
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA5C8:
pop     edx
retn
sub_4BA5AC endp




sub_4BA5CA proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA5E2
mov     eax, offset unk_534184
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA5E2:
pop     edx
retn
sub_4BA5CA endp




sub_4BA5E4 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA5F2
cmp     al, 1
jnz     short loc_4BA600

loc_4BA5F2:
mov     eax, offset unk_53416C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA600:
pop     edx
retn
sub_4BA5E4 endp




sub_4BA602 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA610
cmp     al, 1
jnz     short loc_4BA61E

loc_4BA610:
mov     eax, offset unk_534194
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA61E:
pop     edx
retn
sub_4BA602 endp




sub_4BA620 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA638
mov     eax, offset unk_534184
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA638:
pop     edx
retn
sub_4BA620 endp




sub_4BA63A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA648
cmp     al, 1
jnz     short loc_4BA656

loc_4BA648:
mov     eax, offset unk_53416C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA656:
pop     edx
retn
sub_4BA63A endp




sub_4BA658 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA666
cmp     al, 1
jnz     short loc_4BA674

loc_4BA666:
mov     eax, offset unk_53419C
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA674:
pop     edx
retn
sub_4BA658 endp




sub_4BA676 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA68E
mov     eax, offset unk_5341B4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA68E:
pop     edx
retn
sub_4BA676 endp




sub_4BA690 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA69E
cmp     al, 1
jnz     short loc_4BA6AC

loc_4BA69E:
mov     eax, offset unk_5341CC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA6AC:
pop     edx
retn
sub_4BA690 endp




sub_4BA6AE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA6BC
cmp     al, 1
jnz     short loc_4BA6CA

loc_4BA6BC:
mov     eax, offset unk_5341A4
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA6CA:
pop     edx
retn
sub_4BA6AE endp




sub_4BA6CC proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA6E4
mov     eax, offset unk_5341BC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA6E4:
pop     edx
retn
sub_4BA6CC endp




sub_4BA6E6 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA6F4
cmp     al, 1
jnz     short loc_4BA702

loc_4BA6F4:
mov     eax, offset unk_5341D4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA702:
pop     edx
retn
sub_4BA6E6 endp




sub_4BA704 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA712
cmp     al, 1
jnz     short loc_4BA720

loc_4BA712:
mov     eax, offset unk_5341AC
call    sub_47EC19
mov     byte ptr [edx+4], 0E1h

loc_4BA720:
pop     edx
retn
sub_4BA704 endp




sub_4BA722 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA73A
mov     eax, offset unk_5341C4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA73A:
pop     edx
retn
sub_4BA722 endp




sub_4BA73C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BA74A
cmp     al, 1
jnz     short loc_4BA758

loc_4BA74A:
mov     eax, offset unk_5341DC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA758:
pop     edx
retn
sub_4BA73C endp




sub_4BA75A proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short sub_4BA797
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jz      short sub_4BA797
mov     eax, 207h
call    sub_47E888
test    eax, eax
jz      short sub_4BA797
mov     eax, 545h
call    sub_47E888
test    eax, eax
jnz     short sub_4BA797
mov     eax, offset unk_515DF0
call    sub_49DBA5
sub_4BA75A endp




sub_4BA797 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BA797 endp




sub_4BA7A4 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4BA7B6
jbe     short loc_4BA801
jmp     loc_4BA83C

loc_4BA7B6:
test    al, al
jnz     loc_4BA83C
cmp     byte ptr ds:dword_77E7D5+1, 2
jl      loc_4BA83C
mov     eax, offset unk_5167BC
call    sub_49DBA5
mov     ecx, eax
inc     byte ptr [edx+4]
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4BA806
mov     eax, 214h
call    sub_47E888
test    eax, eax
jnz     short loc_4BA806
or      ds:byte_5F8421, 40h
mov     byte ptr [ecx+3], 2

loc_4BA801:
mov     al, 1
pop     edx
pop     ecx
retn

loc_4BA806:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_4BA801
mov     eax, 211h
call    sub_47E888
test    eax, eax
jnz     short loc_4BA801
mov     eax, 545h
call    sub_47E888
test    eax, eax
jz      short loc_4BA801
mov     eax, offset unk_515E04
call    sub_49DBA5
jmp     short loc_4BA801

loc_4BA83C:
mov     byte ptr [edx+4], 0
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
pop     ecx
retn
sub_4BA7A4 endp




sub_4BA84F proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_5349D4
mov     eax, offset unk_5349CC
call    sub_47EF23
pop     edx
retn
sub_4BA84F endp




sub_4BA87B proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BA89F
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BA898[edx*4]

loc_4BA89F:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BA8D1
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_53433C[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BA8D1:
pop     edx
retn
sub_4BA87B endp




sub_4BA8D3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BA91F
mov     eax, offset unk_534984
call    sub_47EC19
mov     eax, 48h ; 'H'
call    sub_47E888
test    eax, eax
jnz     short loc_4BA90E
mov     eax, 63h ; 'c'
call    sub_47EB4B
mov     eax, 48h ; 'H'
call    sub_47E8B8
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BA90E:
mov     eax, offset unk_52CB68
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
inc     byte ptr [edx+4]

loc_4BA91F:
pop     edx

locret_4BA920:
retn
sub_4BA8D3 endp




sub_4BA921 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA938
mov     eax, offset unk_534994
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BA938:
pop     edx
retn
sub_4BA921 endp




sub_4BA93A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA951
mov     eax, offset unk_5349BC
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BA951:
pop     edx
retn
sub_4BA93A endp




sub_4BA953 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA96A
mov     eax, offset unk_53498C
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BA96A:
pop     edx

locret_4BA96B:
retn
sub_4BA953 endp




sub_4BA96C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA984
mov     eax, offset unk_53499C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA984:
pop     edx
retn
sub_4BA96C endp




sub_4BA986 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA99E
mov     eax, offset unk_5349C4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA99E:
pop     edx
retn
sub_4BA986 endp




sub_4BA9A0 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA9B8
mov     eax, offset unk_5349A4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA9B8:
pop     edx
retn
sub_4BA9A0 endp




sub_4BA9BA proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jnz     short loc_4BA9C6
mov     byte ptr [eax+4], 0FFh

loc_4BA9C6:
pop     edx
retn
sub_4BA9BA endp




sub_4BA9C8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA9E0
mov     eax, offset unk_5349AC
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA9E0:
pop     edx
retn
sub_4BA9C8 endp




sub_4BA9E2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BA9FA
mov     eax, offset unk_5349B4
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BA9FA:
pop     edx
retn
sub_4BA9E2 endp




sub_4BA9FC proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short sub_4BAA2B
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short sub_4BAA2B
mov     eax, 229h
call    sub_47E888
test    eax, eax
jnz     short sub_4BAA2B
mov     eax, offset unk_5377F4

loc_4BAA26:
call    sub_49DBA5
sub_4BA9FC endp




sub_4BAA2B proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BAA2B endp




sub_4BAA38 proc near
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jz      short sub_4BAA2B
mov     eax, offset unk_534A34
call    sub_49DBA5
mov     eax, offset unk_534A48
call    sub_49DBA5
mov     eax, offset unk_534A5C
jmp     short loc_4BAA26
sub_4BAA38 endp




sub_4BAA61 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_534D44
mov     eax, offset unk_534D3C
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BAA61 endp




sub_4BAA8D proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BAAB1
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BAAAA[edx*4]

loc_4BAAB1:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BAAE3
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_534A8C[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BAAE3:
pop     edx
retn
sub_4BAA8D endp




sub_4BAAE5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAAFC
mov     eax, offset unk_534D14
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAAFC:
pop     edx
retn
sub_4BAAE5 endp




sub_4BAAFE proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB26
mov     eax, offset unk_534D1C
call    sub_47EC19
xor     eax, eax
call    sub_47EDA7
mov     eax, 1
call    sub_47EDA7
inc     byte ptr [edx+4]

loc_4BAB26:
pop     edx
retn
sub_4BAAFE endp




sub_4BAB28 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB3F
mov     eax, offset unk_534D1C
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB3F:
pop     edx
retn
sub_4BAB28 endp




sub_4BAB41 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB58
mov     eax, offset unk_534D24
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB58:
pop     edx
retn
sub_4BAB41 endp




sub_4BAB5A proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB71
mov     eax, offset unk_534D2C
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB71:
pop     edx
retn
sub_4BAB5A endp




sub_4BAB73 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAB8A
mov     eax, offset unk_534D34
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAB8A:
pop     edx
retn
sub_4BAB73 endp




sub_4BAB8C proc near
mov     al, byte ptr ds:dword_77E5EC
test    al, al
jnz     short loc_4BABD3
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short loc_4BABBB
mov     eax, 22Bh
call    sub_47E888
test    eax, eax
jnz     short loc_4BABBB
mov     eax, offset unk_53781C
call    sub_49DBA5

loc_4BABBB:
mov     eax, 23Ch
call    sub_47E888
test    eax, eax
jnz     short loc_4BABD3
mov     eax, offset unk_537830
call    sub_49DBA5

loc_4BABD3:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BAB8C endp




sub_4BABE0 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BABE0 endp




sub_4BABEB proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BAC0F
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BAC08[edx*4]

loc_4BAC0F:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BAC41
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_534E30[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BAC41:
pop     edx
retn
sub_4BABEB endp




sub_4BAC43 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAC5A
mov     eax, offset unk_5351F8
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAC5A:
pop     edx
retn
sub_4BAC43 endp




sub_4BAC5C proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAC73
mov     eax, offset unk_535200
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BAC73:
pop     edx
retn
sub_4BAC5C endp


loc_4BAC75:
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4BAC83
jbe     short loc_4BAC96
pop     edx
retn

loc_4BAC83:
test    al, al
jnz     short loc_4BACCE
mov     eax, offset unk_535200
call    sub_47EC19
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BAC96:
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BACCE
mov     eax, 6Ah ; 'j'
call    sub_47E888
test    eax, eax
jnz     short loc_4BACCE
call    sub_47EDA7
mov     eax, 33h ; '3'
call    sub_47EB4B
inc     byte ptr [edx+4]
mov     eax, 6Ah ; 'j'
call    sub_47E8B8

loc_4BACCE:
pop     edx
retn



sub_4BACD0 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAD0C
xor     ecx, ecx

loc_4BACDE:
mov     eax, ecx
mov     edx, ds:dword_535240[ecx*4]
shl     eax, 3
add     eax, offset unk_535220
call    sub_42C443
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jl      short loc_4BACDE
mov     eax, offset unk_535208
call    sub_47EC19
inc     byte ptr [ebx+4]

loc_4BAD0C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BACD0 endp




sub_4BAD10 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAD4C
xor     ecx, ecx

loc_4BAD1E:
mov     eax, ecx
mov     edx, ds:dword_535240[ecx*4]
shl     eax, 3
add     eax, offset unk_535220
call    sub_42C443
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jl      short loc_4BAD1E
mov     eax, offset unk_535210
call    sub_47EC19
inc     byte ptr [ebx+4]

loc_4BAD4C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAD10 endp




sub_4BAD50 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BAD8C
xor     ecx, ecx

loc_4BAD5E:
mov     eax, ecx
mov     edx, ds:dword_535240[ecx*4]
shl     eax, 3
add     eax, offset unk_535220
call    sub_42C443
call    sub_4A7AE1
inc     ecx
cmp     ecx, 4
jl      short loc_4BAD5E
mov     eax, offset unk_535218
call    sub_47EC19
inc     byte ptr [ebx+4]

loc_4BAD8C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAD50 endp




sub_4BAD90 proc near
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BADB5
mov     eax, 6Ah ; 'j'
call    sub_47E888
test    eax, eax
jnz     short loc_4BADB5
cmp     byte ptr ds:dword_77E7D5+1, 7
jz      short loc_4BADCD

loc_4BADB5:
mov     eax, 238h
call    sub_47E888
test    eax, eax
jnz     short loc_4BADCD
mov     eax, offset unk_535250
call    sub_49DBA5

loc_4BADCD:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BAD90 endp




sub_4BADDA proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_5354A4
mov     eax, offset unk_53549C
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BADDA endp




sub_4BAE01 proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BAE25
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BAE1E[edx*4]

loc_4BAE25:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BAE57
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_535320[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BAE57:
pop     edx
retn
sub_4BAE01 endp




sub_4BAE59 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BAE6D
cmp     al, 1
jz      short loc_4BAEAE
jmp     short loc_4BAEC3

loc_4BAE6D:
xor     ebx, ebx
mov     ds:word_77E918, bx
mov     eax, 642h
call    sub_47E888
test    eax, eax
jnz     short loc_4BAEA9
xor     ecx, ecx
mov     ds:word_77E91A, cx
xor     esi, esi
mov     ds:word_77E91C, si
xor     edi, edi
mov     ds:word_77E91E, di
mov     eax, 642h
call    sub_47E8B8

loc_4BAEA9:
inc     byte ptr [edx+4]
jmp     short loc_4BAEC3

loc_4BAEAE:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BAEC3
xor     eax, eax
call    sub_47EB4B

loc_4BAEC3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAE59 endp




sub_4BAEC9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BAEE7
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAEE7:
mov     al, [ecx+4]
test    al, al
ja      short loc_4BAF11
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jnz     short loc_4BAF11
xor     ebx, ebx
mov     edx, 1
mov     eax, 3
call    sub_47EEF1
mov     byte ptr [ecx+4], 0FFh

loc_4BAF11:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BAEC9 endp




sub_4BAF15 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BAF33
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAF33:
mov     al, [ecx+4]
cmp     al, 1
jb      short loc_4BAF44
jbe     short loc_4BAF71
cmp     al, 2
jbe     short loc_4BAF85
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAF44:
test    al, al
jnz     short loc_4BAFA0
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BAF5E
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4BAF5E:
xor     ebx, ebx
mov     edx, 1

loc_4BAF65:
mov     eax, 2
call    sub_47EEF1
jmp     short loc_4BAF9D

loc_4BAF71:
mov     eax, 4Ch ; 'L'
call    sub_47E888
test    eax, eax
jz      short loc_4BAFA0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4BAF65

loc_4BAF85:
mov     eax, 44h ; 'D'
call    sub_47E888
test    eax, eax
jz      short loc_4BAFA0
mov     eax, 38h ; '8'
call    sub_47EB4B

loc_4BAF9D:
inc     byte ptr [ecx+4]

loc_4BAFA0:
pop     edx
pop     ecx
pop     ebx

locret_4BAFA3:
retn
sub_4BAF15 endp




sub_4BAFA4 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BAFA3
xor     eax, eax
jmp     sub_47EB4B
sub_4BAFA4 endp




sub_4BAFB9 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAFD1
mov     eax, offset unk_5352A0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BAFD1:
pop     edx
retn
sub_4BAFB9 endp




sub_4BAFD3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BAFF0
mov     eax, offset unk_5352A8
call    sub_47EC19
call    sub_4BB054
mov     byte ptr [edx+4], 0FFh

loc_4BAFF0:
pop     edx
retn
sub_4BAFD3 endp




sub_4BAFF2 proc near

; FUNCTION CHUNK AT 004BB027 SIZE 00000016 BYTES

mov     al, [eax+4]
test    al, al
jnz     short sub_4BB01A
mov     eax, 238h
call    sub_47E888
test    eax, eax
jz      short sub_4BB01A
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short loc_4BB027

loc_4BB015:
call    sub_4BB06E
sub_4BAFF2 endp




sub_4BB01A proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BB01A endp

; START OF FUNCTION CHUNK FOR sub_4BAFF2

loc_4BB027:
mov     eax, 239h
call    sub_47E8B8
mov     eax, offset unk_535398
call    sub_49DBA5
jmp     short sub_4BB01A
; END OF FUNCTION CHUNK FOR sub_4BAFF2



sub_4BB03D proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4BB01A
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short sub_4BB01A
jmp     short loc_4BB015
sub_4BB03D endp




sub_4BB054 proc near
push    edx
mov     edx, 621h

loc_4BB05A:
xor     eax, eax
mov     ax, dx
call    sub_47EA91
inc     edx
cmp     dx, 63Ah
jbe     short loc_4BB05A
pop     edx
retn
sub_4BB054 endp




sub_4BB06E proc near
push    ebx
push    ecx
push    edx
push    edi
mov     eax, 23Bh
call    sub_47E888
mov     dl, al
add     dl, al
mov     eax, 23Ah
call    sub_47E888
or      dl, al
cmp     dl, 1
jb      short loc_4BB09D
jbe     short loc_4BB0CE
cmp     dl, 2
jz      short loc_4BB0F7
jmp     loc_4BB11E

loc_4BB09D:
test    dl, dl
jnz     loc_4BB11E
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4BB11E
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47EA91
xor     ebx, ebx
mov     ds:word_77E7E6, bx
jmp     short loc_4BB11E

loc_4BB0CE:
cmp     ds:word_77E7E6, 14h
jbe     short loc_4BB11E
mov     eax, 23Ah
call    sub_47EA91
mov     eax, 23Bh
call    sub_47E8B8
xor     edi, edi
mov     ds:word_77E7E6, di
jmp     short loc_4BB11E

loc_4BB0F7:
cmp     ds:word_77E7E6, 1Eh
jbe     short loc_4BB11E
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47E8B8
xor     ecx, ecx
mov     ds:word_77E7E6, cx

loc_4BB11E:
cmp     byte ptr ds:dword_77E7D5, 0Dh
jnz     short loc_4BB135
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_535508
mov     dh, 9
jmp     short loc_4BB141

loc_4BB135:
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_535504
mov     dh, 1

loc_4BB141:
xor     dl, dl

loc_4BB143:
cmp     dl, [ebx]
jnb     short loc_4BB169
xor     ecx, ecx
mov     cl, dh
xor     eax, eax
mov     al, dl
add     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_535398
call    sub_49DBA5
inc     dl
jmp     short loc_4BB143

loc_4BB169:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BB06E endp




sub_4BB16E proc near
push    edx
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_535580
mov     eax, offset unk_535578
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB16E endp




sub_4BB195 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535534[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB195 endp




sub_4BB1BD proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jbe     short loc_4BB1CC
cmp     dl, 1
jz      short loc_4BB1DA
pop     edx
retn

loc_4BB1CC:
xor     edx, edx
mov     ds:word_77E918, dx
inc     byte ptr [eax+4]
pop     edx
retn

loc_4BB1DA:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB1EF
xor     eax, eax
call    sub_47EB4B

loc_4BB1EF:
pop     edx

locret_4BB1F0:
retn
sub_4BB1BD endp




sub_4BB1F1 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BB1F0
xor     eax, eax
jmp     sub_47EB4B
sub_4BB1F1 endp




sub_4BB206 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jbe     short loc_4BB215
cmp     dl, 1
jz      short loc_4BB223
pop     edx
retn

loc_4BB215:
xor     edx, edx
mov     ds:word_77E918, dx
inc     byte ptr [eax+4]
pop     edx
retn

loc_4BB223:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB238
xor     eax, eax
call    sub_47EB4B

loc_4BB238:
pop     edx
retn
sub_4BB206 endp




sub_4BB23A proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB256
xor     eax, eax
call    sub_47EB4B
pop     edx
pop     ecx
retn

loc_4BB256:
mov     al, [ecx+4]
cmp     al, 2
jb      short loc_4BB26A
jbe     short loc_4BB2AA
cmp     al, 3
jbe     loc_4BB2DD
pop     edx
pop     ecx
retn

loc_4BB26A:
test    al, al
ja      short loc_4BB290
mov     eax, 50h ; 'P'
call    sub_47E888
test    eax, eax
jnz     loc_4BB309
mov     eax, offset unk_5355F0
call    sub_49DB4D

loc_4BB28A:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
retn

loc_4BB290:
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jz      short loc_4BB30D
mov     eax, 25h ; '%'
call    sub_47EB4B
jmp     short loc_4BB28A

loc_4BB2AA:
mov     eax, offset unk_535574
call    sub_4BB310
test    eax, eax
jz      short loc_4BB30D
mov     eax, 41h ; 'A'
call    sub_47E8B8
mov     eax, 28h ; '('
call    sub_47EB4B
mov     edx, offset unk_5355E0
mov     eax, offset unk_535578
call    sub_47EF23
jmp     short loc_4BB28A

loc_4BB2DD:
mov     eax, 50h ; 'P'
call    sub_47E888
test    eax, eax
jz      short loc_4BB30D
mov     edx, 10h
mov     eax, 4
call    sub_4A0E24
mov     edx, offset unk_5355E8
mov     eax, offset unk_535578
call    sub_47EF23

loc_4BB309:
mov     byte ptr [ecx+4], 0FFh

loc_4BB30D:
pop     edx
pop     ecx
retn
sub_4BB23A endp




sub_4BB310 proc near
push    ecx
push    edx
mov     edx, ds:dword_5F8376
sar     edx, 10h
sar     edx, 9
movsx   ecx, dl
movsx   edx, byte ptr [eax]
sub     ecx, edx
and     ecx, 0FFFFh
xor     edx, edx
mov     dl, [eax+2]
cmp     ecx, edx
jge     short loc_4BB364
mov     edx, ds:dword_5F837A
sar     edx, 10h
sar     edx, 9
movsx   edx, dl
movsx   ecx, byte ptr [eax+1]
sub     edx, ecx
and     edx, 0FFFFh
mov     al, [eax+3]
and     eax, 0FFh
cmp     edx, eax
jge     short loc_4BB364
mov     eax, 1
pop     edx
pop     ecx
retn

loc_4BB364:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_4BB310 endp




sub_4BB369 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB369 endp




sub_4BB374 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535614[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB374 endp




sub_4BB39C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+4], 0
jnz     short loc_4BB3B2
mov     eax, 4Ah ; 'J'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB3B2:
pop     edx

locret_4BB3B3:
retn
sub_4BB39C endp




sub_4BB3B4 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB3B4 endp




sub_4BB3BF proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_53566C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB3BF endp




sub_4BB3E7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB3FE
mov     eax, 31h ; '1'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB3FE:
pop     edx

locret_4BB3FF:
retn
sub_4BB3E7 endp




sub_4BB400 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB417
mov     eax, 32h ; '2'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB417:
pop     edx
retn
sub_4BB400 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_17]



sub_4BB41A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5356CC[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx

locret_4BB441:
retn
sub_4BB41A endp

db 8Dh, 40h, 0
jpt_4BB468 dd offset loc_4BB46F ; jump table for switch statement
dd offset loc_4BB47E
dd offset loc_4BB493
dd offset loc_4BB4A8
dd offset def_4BB468

loc_4BB459:
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 4           ; switch 5 cases
ja      short def_4BB468 ; jumptable 004BB468 default case, case 4
and     eax, 0FFh
jmp     jpt_4BB468[eax*4] ; switch jump

loc_4BB46F:             ; jumptable 004BB468 case 0
mov     eax, 34h ; '4'

loc_4BB474:
call    sub_47EB4B
inc     byte ptr [edx+4]

def_4BB468:             ; jumptable 004BB468 default case, case 4
pop     edx
retn

loc_4BB47E:             ; jumptable 004BB468 case 1
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short def_4BB468 ; jumptable 004BB468 default case, case 4
mov     eax, 35h ; '5'
jmp     short loc_4BB474

loc_4BB493:             ; jumptable 004BB468 case 2
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short def_4BB468 ; jumptable 004BB468 default case, case 4
mov     eax, 36h ; '6'
jmp     short loc_4BB474

loc_4BB4A8:             ; jumptable 004BB468 case 3
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4BB468 ; jumptable 004BB468 default case, case 4
mov     eax, 37h ; '7'
jmp     short loc_4BB474



sub_4BB4BD proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB4BD endp




sub_4BB4C8 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535724[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB4C8 endp




sub_4BB4F0 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+4], 0
jnz     short loc_4BB506
mov     eax, 30h ; '0'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB506:
pop     edx

locret_4BB507:
retn
sub_4BB4F0 endp




sub_4BB508 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_535D9C
mov     eax, offset unk_535D94
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx

def_4BB57B:             ; jumptable 004BB57B default case, case 3
pop     edx
retn
sub_4BB508 endp




sub_4BB534 proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_5357E4[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB534 endp

jpt_4BB57B dd offset loc_4BB582 ; jump table for switch statement
dd offset loc_4BB59C
dd offset loc_4BB5B5
dd offset def_4BB57B

loc_4BB56C:
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 3           ; switch 4 cases
ja      short def_4BB57B ; jumptable 004BB57B default case, case 3
and     eax, 0FFh
jmp     jpt_4BB57B[eax*4] ; switch jump

loc_4BB582:             ; jumptable 004BB57B case 0
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short def_4BB57B ; jumptable 004BB57B default case, case 3
or      ds:byte_5F8421, 40h
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BB59C:             ; jumptable 004BB57B case 1
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Dh
call    sub_49E0D7
inc     byte ptr [edx+4]
pop     edx
retn

loc_4BB5B5:             ; jumptable 004BB57B case 2
cmp     ds:word_6E23D6, 0
jnz     def_4BB57B      ; jumptable 004BB57B default case, case 3
mov     eax, 42h ; 'B'
call    sub_47EB4B
inc     byte ptr [edx+4]
pop     edx
retn



sub_4BB5D2 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB5F7
mov     eax, 34h ; '4'
call    sub_47E888
test    eax, eax
jz      short loc_4BB5F7
mov     eax, 41h ; 'A'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB5F7:
pop     edx

locret_4BB5F8:
retn
sub_4BB5D2 endp




sub_4BB5F9 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB611
mov     eax, offset unk_535D6C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB611:
pop     edx
retn
sub_4BB5F9 endp




sub_4BB613 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB62B
mov     eax, offset unk_535D4C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB62B:
pop     edx
retn
sub_4BB613 endp




sub_4BB62D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB645
mov     eax, offset unk_535D74
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB645:
pop     edx
retn
sub_4BB62D endp




sub_4BB647 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB65F
mov     eax, offset unk_535D54
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB65F:
pop     edx
retn
sub_4BB647 endp




sub_4BB661 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB679
mov     eax, offset unk_535D7C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB679:
pop     edx
retn
sub_4BB661 endp




sub_4BB67B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB6A7
mov     eax, offset unk_535D5C
call    sub_47EC19
mov     eax, 0Ah
call    sub_47EDA7
mov     eax, 0Bh
call    sub_47EDA7
mov     byte ptr [edx+4], 0FFh

loc_4BB6A7:
pop     edx
retn
sub_4BB67B endp

align 4
jpt_4BB6D5 dd offset loc_4BB6DC ; jump table for switch statement
dd offset loc_4BB71E
dd offset loc_4BB735
dd offset loc_4BB750
dd offset loc_4BB6EA



sub_4BB6C0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 4           ; switch 5 cases
ja      def_4BB6D5      ; jumptable 004BB6D5 default case
and     eax, 0FFh
jmp     jpt_4BB6D5[eax*4] ; switch jump

loc_4BB6DC:             ; jumptable 004BB6D5 case 0
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_4BB6F2

loc_4BB6EA:             ; jumptable 004BB6D5 case 4
mov     byte ptr [ecx+4], 0FFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4BB6F2:
mov     eax, 34h ; '4'
call    sub_47E888
test    eax, eax
jz      def_4BB6D5      ; jumptable 004BB6D5 default case
call    sub_47ECAE
xor     ebx, ebx
mov     edx, 1

loc_4BB710:
xor     eax, eax
call    sub_47EEF1

loc_4BB717:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BB71E:             ; jumptable 004BB6D5 case 1
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short def_4BB6D5 ; jumptable 004BB6D5 default case
or      ds:byte_5F8421, 40h
jmp     short loc_4BB717

loc_4BB735:             ; jumptable 004BB6D5 case 2
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Dh
call    sub_49E0D7
call    sub_4A0E35
jmp     short loc_4BB717

loc_4BB750:             ; jumptable 004BB6D5 case 3
cmp     ds:word_6E23D6, 0
jnz     short def_4BB6D5 ; jumptable 004BB6D5 default case
cmp     ds:byte_77EAB8, 0
jnz     short def_4BB6D5 ; jumptable 004BB6D5 default case
mov     eax, 42h ; 'B'
call    sub_47EB4B
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4BB710

def_4BB6D5:             ; jumptable 004BB6D5 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4BB6C0 endp




sub_4BB777 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      short loc_4BB7A6
mov     eax, 34h ; '4'
call    sub_47E888
test    eax, eax
jnz     short loc_4BB7A6
mov     eax, 34h ; '4'
call    sub_47E8B8
mov     eax, 41h ; 'A'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BB7A6:
pop     edx
retn
sub_4BB777 endp




sub_4BB7A8 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB7D5
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_4BB7C7
mov     eax, offset unk_535D84
jmp     short loc_4BB7CC

loc_4BB7C7:
mov     eax, offset unk_535D7C

loc_4BB7CC:
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB7D5:
pop     edx
retn
sub_4BB7A8 endp




sub_4BB7D7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB851
mov     eax, offset unk_535D5C
call    sub_47EC19
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      short loc_4BB82F
xor     eax, eax
call    sub_47EDA7
mov     eax, 1
call    sub_47EDA7
mov     eax, 6
call    sub_47EDA7
mov     eax, 7
call    sub_47EDA7
mov     eax, 8
call    sub_47EDA7
mov     eax, 9
jmp     short loc_4BB848

loc_4BB82F:
mov     eax, 0Ah
call    sub_47EDA7
mov     eax, 0Bh
call    sub_47EDA7
mov     eax, 6

loc_4BB848:
call    sub_47EDA7
mov     byte ptr [edx+4], 0FFh

loc_4BB851:
pop     edx
retn
sub_4BB7D7 endp




sub_4BB853 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB86B
mov     eax, offset unk_535D8C
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB86B:
pop     edx
retn
sub_4BB853 endp




sub_4BB86D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BB885
mov     eax, offset unk_535D64
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BB885:
pop     edx
retn
sub_4BB86D endp

unk_4BB887 db    0
dd 0
db 2, 2 dup(0)



sub_4BB88F proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BB88F endp




sub_4BB89A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_535E84[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BB89A endp




sub_4BB8C2 proc near
push    edx
mov     edx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB8DC
xor     eax, eax
call    sub_47EB4B
pop     edx
retn

loc_4BB8DC:
mov     al, [edx+4]
test    al, al
jbe     short loc_4BB8E9
cmp     al, 1
jz      short loc_4BB8F8
pop     edx
retn

loc_4BB8E9:
cmp     byte ptr ds:dword_77E7D5+1, 8
jnz     short loc_4BB90B
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BB8F8:
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_4BB90F
call    sub_47E829

loc_4BB90B:
mov     byte ptr [edx+4], 0FFh

loc_4BB90F:
pop     edx
retn
sub_4BB8C2 endp




sub_4BB911 proc near
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset unk_4BB887
movsd
movsd
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB93A
xor     eax, eax
call    sub_47EB4B
jmp     short loc_4BB994

loc_4BB93A:
mov     al, [ecx+4]
test    al, al
jbe     short loc_4BB947
cmp     al, 1
jz      short loc_4BB96E
jmp     short loc_4BB994

loc_4BB947:
mov     eax, 35h ; '5'
call    sub_47E888
test    eax, eax
jnz     short loc_4BB95B
mov     byte ptr [ecx+4], 1
jmp     short loc_4BB994

loc_4BB95B:
mov     eax, esp
call    sub_42C443
mov     edx, 31500h
call    sub_4A7AE1
jmp     short loc_4BB990

loc_4BB96E:
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      short loc_4BB994
mov     eax, 35h ; '5'
call    sub_47E8B8
mov     eax, 43h ; 'C'
call    sub_47EB4B

loc_4BB990:
mov     byte ptr [ecx+4], 0FFh

loc_4BB994:
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4BB911 endp




sub_4BB99C proc near
push    edx
mov     edx, eax
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short loc_4BB9B6
xor     eax, eax
call    sub_47EB4B
pop     edx
retn

loc_4BB9B6:
mov     al, [edx+4]
test    al, al
jbe     short loc_4BB9C3
cmp     al, 1
jz      short loc_4BB9E1
pop     edx
retn

loc_4BB9C3:
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBA03
mov     eax, offset unk_535EEC
call    sub_47EC19
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BB9E1:
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jz      short loc_4BBA07
mov     eax, 57h ; 'W'
call    sub_47E8B8
mov     eax, 44h ; 'D'
call    sub_47EB4B

loc_4BBA03:
mov     byte ptr [edx+4], 0FFh

loc_4BBA07:
pop     edx

locret_4BBA08:
retn
sub_4BB99C endp




sub_4BBA09 proc near
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jz      short locret_4BBA08
xor     eax, eax
jmp     sub_47EB4B
sub_4BBA09 endp




sub_4BBA1E proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 1
jb      short loc_4BBA30
jbe     short loc_4BBA60
cmp     al, 2
jz      short loc_4BBA84
pop     edx
retn

loc_4BBA30:
test    al, al
jnz     loc_4BBABE
mov     eax, 58h ; 'X'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBA4C
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BBA4C:
mov     eax, 6Ch ; 'l'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBABA
mov     byte ptr [edx+4], 2
pop     edx
retn

loc_4BBA60:
mov     eax, 58h ; 'X'
call    sub_47E888
test    eax, eax
jz      short loc_4BBABE
mov     eax, 58h ; 'X'
call    sub_47E8B8
mov     eax, 45h ; 'E'
call    sub_47EB4B
jmp     short loc_4BBABA

loc_4BBA84:
mov     eax, 6Ch ; 'l'
call    sub_47E888
test    eax, eax
jz      short loc_4BBABE
mov     eax, 6Ch ; 'l'
call    sub_47E8B8
mov     eax, 10h
call    sub_4D9040
mov     eax, 0Eh
call    sub_49E0D7
mov     eax, 46h ; 'F'
call    sub_47EB4B

loc_4BBABA:
mov     byte ptr [edx+4], 0FFh

loc_4BBABE:
pop     edx

locret_4BBABF:
retn
sub_4BBA1E endp




sub_4BBAC0 proc near
push    edx
call    sub_47EBFB
mov     edx, ds:dword_77E7D0+3
sar     edx, 18h
shl     edx, 3
add     edx, offset unk_536870
mov     eax, offset unk_536868
call    sub_47EF23
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BBAC0 endp




sub_4BBAEC proc near
push    edx
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBB25
cmp     byte ptr ds:dword_77E7D5+1, 0Bh
jz      short loc_4BBB1B
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, offset dword_77E5E8
call    ds:funcs_4BBB12[edx*4]
jmp     short loc_4BBB25

loc_4BBB1B:
mov     eax, 1FFh
call    sub_47E8B8

loc_4BBB25:
mov     eax, 1FFh
call    sub_47E888
test    eax, eax
jz      short loc_4BBB57
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
shl     edx, 2
mov     eax, ds:off_535FCC[eax*4]
add     edx, eax
mov     eax, offset dword_77E5E8
call    dword ptr [edx]

loc_4BBB57:
pop     edx
retn
sub_4BBAEC endp




sub_4BBB59 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBB70
mov     eax, offset unk_536700
call    sub_47EC19
inc     byte ptr [edx+4]

loc_4BBB70:
pop     edx
retn
sub_4BBB59 endp




sub_4BBB72 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BBB82
cmp     al, 1
jz      short loc_4BBBD8
pop     edx
retn

loc_4BBB82:
mov     eax, 4Dh ; 'M'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBBA6
mov     eax, 4Dh ; 'M'
call    sub_47E8B8
mov     eax, 48h ; 'H'
call    sub_47EB4B
pop     edx
retn

loc_4BBBA6:
mov     eax, offset unk_536708
call    sub_47EC19
mov     eax, 70h ; 'p'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBBD2
mov     eax, 70h ; 'p'
call    sub_47E8B8
mov     eax, 2
call    sub_49E0D7

loc_4BBBD2:
mov     byte ptr [edx+4], 1
pop     edx
retn

loc_4BBBD8:
mov     eax, 4Eh ; 'N'
call    sub_47E888
test    eax, eax
jz      short loc_4BBC07
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BBC07
mov     eax, 4Eh ; 'N'
call    sub_47E8B8
mov     eax, 49h ; 'I'
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4BBC07:
pop     edx
retn
sub_4BBB72 endp




sub_4BBC09 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBC47
mov     eax, offset unk_536710
call    sub_47EC19
mov     eax, 6Fh ; 'o'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBC44
call    sub_47EDA7
mov     eax, 1
call    sub_47EDA7
mov     eax, 2
call    sub_47EDA7

loc_4BBC44:
inc     byte ptr [edx+4]

loc_4BBC47:
pop     edx

locret_4BBC48:
retn
sub_4BBC09 endp




sub_4BBC49 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBC87
mov     eax, 33h ; '3'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBC83
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BBC83
mov     eax, 56h ; 'V'
call    sub_47EB4B
mov     eax, 33h ; '3'
call    sub_47E8B8

loc_4BBC83:
mov     byte ptr [edx+4], 0FFh

loc_4BBC87:
pop     edx

locret_4BBC88:
retn
sub_4BBC49 endp




sub_4BBC89 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBCA1
mov     eax, offset unk_536688
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBCA1:
pop     edx
retn
sub_4BBC89 endp




sub_4BBCA3 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBCBB
mov     eax, offset unk_5366A8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBCBB:
pop     edx
retn
sub_4BBCA3 endp




sub_4BBCBD proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBCD5
mov     eax, offset unk_5366C8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBCD5:
pop     edx

locret_4BBCD6:
retn
sub_4BBCBD endp




sub_4BBCD7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD21
mov     eax, 33h ; '3'
call    sub_47E888
test    eax, eax
jnz     short loc_4BBD13
mov     eax, 21h ; '!'
call    sub_47E888
test    eax, eax
jz      short loc_4BBD13
mov     eax, 56h ; 'V'
call    sub_47EB4B
mov     eax, 33h ; '3'
call    sub_47E8B8
jmp     short loc_4BBD1D

loc_4BBD13:
mov     eax, offset unk_5366E8
call    sub_47EC19

loc_4BBD1D:
mov     byte ptr [edx+4], 0FFh

loc_4BBD21:
pop     edx
retn
sub_4BBCD7 endp




sub_4BBD23 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD3B
mov     eax, offset unk_5366F0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD3B:
pop     edx

locret_4BBD3C:
retn
sub_4BBD23 endp




sub_4BBD3D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD55
mov     eax, offset unk_536690
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD55:
pop     edx
retn
sub_4BBD3D endp




sub_4BBD57 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD6F
mov     eax, offset unk_5366B0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD6F:
pop     edx
retn
sub_4BBD57 endp




sub_4BBD71 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBD89
mov     eax, offset unk_5366D0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBD89:
pop     edx
retn
sub_4BBD71 endp




sub_4BBD8B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDA3
mov     eax, offset unk_536698
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDA3:
pop     edx
retn
sub_4BBD8B endp




sub_4BBDA5 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDBD
mov     eax, offset unk_5366B8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDBD:
pop     edx
retn
sub_4BBDA5 endp




sub_4BBDBF proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDD7
mov     eax, offset unk_5366D8
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDD7:
pop     edx
retn
sub_4BBDBF endp




sub_4BBDD9 proc near
push    edx
mov     dl, [eax+4]
test    dl, dl
jnz     short loc_4BBDE5
mov     byte ptr [eax+4], 0FFh

loc_4BBDE5:
pop     edx
retn
sub_4BBDD9 endp




sub_4BBDE7 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBDFF
mov     eax, offset unk_5366F0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBDFF:
pop     edx
retn
sub_4BBDE7 endp




sub_4BBE01 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBE19
mov     eax, offset unk_5366A0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBE19:
pop     edx
retn
sub_4BBE01 endp




sub_4BBE1B proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBE33
mov     eax, offset unk_5366C0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBE33:
pop     edx
retn
sub_4BBE1B endp




sub_4BBE35 proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jnz     short loc_4BBE4D
mov     eax, offset unk_5366E0
call    sub_47EC19
mov     byte ptr [edx+4], 0FFh

loc_4BBE4D:
pop     edx
retn
sub_4BBE35 endp




sub_4BBE4F proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
ja      loc_4BBEF5
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short loc_4BBE95
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E8h
call    sub_47E8B8
jmp     short loc_4BBEF5

loc_4BBE95:
mov     eax, 22Dh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBECB
mov     eax, 22Ch
call    sub_47E888
test    eax, eax
jz      short loc_4BBEF5
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBEF5
mov     eax, offset unk_53673C
call    sub_49DBA5
jmp     short loc_4BBEF5

loc_4BBECB:
mov     eax, 22Ch
call    sub_47E888
test    eax, eax
jz      short loc_4BBEF5
mov     eax, 22Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4BBEF5
mov     eax, 54h ; 'T'
call    sub_47EB4B
mov     byte ptr [edx+4], 0FFh

loc_4BBEF5:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
retn
sub_4BBE4F endp




sub_4BBF03 proc near
mov     al, [eax+4]
test    al, al
jnz     short sub_4BBF40
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short sub_4BBF40
mov     eax, 7E2h
call    sub_47E8B8
mov     eax, 7E3h
call    sub_47E8B8
mov     eax, 7E4h
call    sub_47E8B8
mov     eax, 7E8h
call    sub_47E8B8
sub_4BBF03 endp




sub_4BBF40 proc near
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
retn
sub_4BBF40 endp




sub_4BBF4D proc near
push    edx
mov     edx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BBF64
cmp     al, 0FFh
jz      loc_4BBFEB
jmp     loc_4BBFDD

loc_4BBF64:
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      short loc_4BBF77
call    sub_4BC041

loc_4BBF77:
mov     eax, 2Ah ; '*'
call    sub_47E888
test    eax, eax
jz      short loc_4BBFAD
mov     eax, 249h
call    sub_47E888
test    eax, eax
jnz     short loc_4BBFAD
mov     eax, offset unk_536854
call    sub_49DBA5
mov     eax, 249h
call    sub_47E8B8
mov     byte ptr [edx+4], 0FFh
jmp     short loc_4BBFDD

loc_4BBFAD:
mov     eax, 238h
call    sub_47E888
test    eax, eax
jz      short loc_4BBFDD
mov     eax, 239h
call    sub_47E888
test    eax, eax
jnz     short loc_4BBFDD
mov     eax, 239h
call    sub_47E8B8
mov     eax, offset unk_536750
call    sub_49DBA5

loc_4BBFDD:
mov     eax, 1FFh
call    sub_47E8B8
xor     al, al
pop     edx
retn

loc_4BBFEB:
mov     al, 1
pop     edx
retn
sub_4BBF4D endp




sub_4BBFEF proc near
mov     al, [eax+4]
test    al, al
jnz     sub_4BBF40
mov     eax, 2Ah ; '*'
call    sub_47E888
test    eax, eax
jz      short loc_4BC025
mov     eax, 249h
call    sub_47E888
test    eax, eax
jnz     short loc_4BC025
mov     eax, 22Dh
call    sub_47EA91
jmp     sub_4BBF40

loc_4BC025:
mov     eax, 239h
call    sub_47E888
test    eax, eax
jz      sub_4BBF40
call    sub_4BC041
jmp     sub_4BBF40
sub_4BBFEF endp




sub_4BC041 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     eax, 23Bh
call    sub_47E888
mov     dl, al
add     dl, al
mov     eax, 23Ah
call    sub_47E888
or      dl, al
cmp     dl, 1
jb      short loc_4BC070
jbe     short loc_4BC0A1
cmp     dl, 2
jz      short loc_4BC0CA
jmp     loc_4BC0F1

loc_4BC070:
test    dl, dl
jnz     loc_4BC0F1
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4BC0F1
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47EA91
xor     ebx, ebx
mov     ds:word_77E7E6, bx
jmp     short loc_4BC0F1

loc_4BC0A1:
cmp     ds:word_77E7E6, 14h
jbe     short loc_4BC0F1
mov     eax, 23Ah
call    sub_47EA91
mov     eax, 23Bh
call    sub_47E8B8
xor     edi, edi
mov     ds:word_77E7E6, di
jmp     short loc_4BC0F1

loc_4BC0CA:
cmp     ds:word_77E7E6, 1Eh
jbe     short loc_4BC0F1
mov     eax, 23Ah
call    sub_47E8B8
mov     eax, 23Bh
call    sub_47E8B8
xor     ecx, ecx
mov     ds:word_77E7E6, cx

loc_4BC0F1:
cmp     byte ptr ds:dword_77E7D5, 8
jnz     short loc_4BC108
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5368D4
mov     dh, 0Ah
jmp     short loc_4BC114

loc_4BC108:
xor     ebx, ebx
mov     bl, dl
add     ebx, offset unk_5368D0
mov     dh, 2

loc_4BC114:
xor     dl, dl

loc_4BC116:
cmp     dl, [ebx]
jnb     short loc_4BC13C
xor     ecx, ecx
mov     cl, dh
xor     eax, eax
mov     al, dl
add     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_53673C
call    sub_49DBA5
inc     dl
jmp     short loc_4BC116

loc_4BC13C:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC041 endp




sub_4BC141 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BC141 endp




sub_4BC14C proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_536B3C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BC14C endp




sub_4BC174 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4BC205
xor     ecx, ecx
mov     cl, al
mov     al, [edx+4]
test    al, al
ja      short loc_4BC1AA
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_536AF4
call    sub_47EC19
cmp     byte ptr ds:dword_77E7D5+1, 8
jge     short loc_4BC1A7
xor     eax, eax
call    sub_47EDA7

loc_4BC1A7:
inc     byte ptr [edx+4]

loc_4BC1AA:
pop     edx
pop     ecx
retn
sub_4BC174 endp




sub_4BC1AD proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4BC205
xor     edx, edx
mov     dl, al
mov     al, [ecx+4]
test    al, al
ja      short loc_4BC202
mov     eax, edx
shl     eax, 3
add     eax, 20h ; ' '
add     eax, offset unk_536AF4
call    sub_47EC19
xor     edx, edx
jmp     short loc_4BC1DD

loc_4BC1D7:
inc     edx
cmp     edx, 8
jge     short loc_4BC1FE

loc_4BC1DD:
lea     eax, [edx+38h]
call    sub_47E888
test    eax, eax
jz      short loc_4BC1D7
call    sub_4DE227
test    eax, eax
jz      short loc_4BC1D7
or      byte ptr [eax], 1
mov     byte ptr [eax+2], 22h ; '"'
mov     [eax+0Ch], dl
jmp     short loc_4BC1D7

loc_4BC1FE:
mov     byte ptr [ecx+4], 0FFh

loc_4BC202:
pop     edx
pop     ecx
retn
sub_4BC1AD endp




sub_4BC205 proc near
push    ecx
push    edx
xor     edx, edx
xor     ecx, ecx
jmp     short loc_4BC213

loc_4BC20D:
inc     edx
cmp     edx, 8
jge     short loc_4BC22B

loc_4BC213:
lea     eax, [edx+38h]
call    sub_47E888
test    eax, eax
jz      short loc_4BC20D
xor     eax, eax
mov     al, ds:byte_536B7C[edx]
add     ecx, eax
jmp     short loc_4BC20D

loc_4BC22B:
cmp     ecx, 2Eh ; '.'
jl      short loc_4BC23A
mov     edx, 3
mov     al, dl
pop     edx
pop     ecx
retn

loc_4BC23A:
cmp     ecx, 19h
jl      short loc_4BC249
mov     edx, 2
mov     al, dl
pop     edx
pop     ecx
retn

loc_4BC249:
cmp     ecx, 0Ah
jl      short loc_4BC258
mov     edx, 1
mov     al, dl
pop     edx
pop     ecx
retn

loc_4BC258:
xor     edx, edx
mov     al, dl
pop     edx
pop     ecx
retn
sub_4BC205 endp




sub_4BC25F proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BC25F endp




sub_4BC26A proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_536BB4[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BC26A endp




sub_4BC292 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BC2A6
cmp     al, 1
jz      short loc_4BC2C7
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC2A6:
mov     eax, 66h ; 'f'
call    sub_47E888
test    eax, eax
jnz     short loc_4BC2E0
xor     ebx, ebx
mov     edx, 1
call    sub_47EEF1
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC2C7:
mov     eax, 616h
call    sub_47E888
test    eax, eax
jz      short loc_4BC2E4
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_47EEF1

loc_4BC2E0:
mov     byte ptr [ecx+4], 0FFh

loc_4BC2E4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC292 endp




sub_4BC2E8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BC2FC
cmp     al, 1
jz      short loc_4BC31D
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC2FC:
mov     eax, 67h ; 'g'
call    sub_47E888
test    eax, eax
jnz     short loc_4BC336
xor     ebx, ebx
mov     edx, 1
call    sub_47EEF1
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC31D:
mov     eax, 617h
call    sub_47E888
test    eax, eax
jz      short loc_4BC33A
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_47EEF1

loc_4BC336:
mov     byte ptr [ecx+4], 0FFh

loc_4BC33A:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC2E8 endp




sub_4BC33E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
test    al, al
jbe     short loc_4BC352
cmp     al, 1
jz      short loc_4BC373
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC352:
mov     eax, 68h ; 'h'
call    sub_47E888
test    eax, eax
jnz     short loc_4BC38C
xor     ebx, ebx
mov     edx, 1
call    sub_47EEF1
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4BC373:
mov     eax, 618h
call    sub_47E888
test    eax, eax
jz      short loc_4BC390
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_47EEF1

loc_4BC38C:
mov     byte ptr [ecx+4], 0FFh

loc_4BC390:
pop     edx
pop     ecx
pop     ebx

locret_4BC393:
retn
sub_4BC33E endp




sub_4BC394 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E5EC, edx
pop     edx
retn
sub_4BC394 endp




sub_4BC39F proc near
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+3
sar     eax, 18h
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
shl     ecx, 2
mov     edx, ds:off_536C2C[eax*4]
mov     eax, offset dword_77E5E8
call    dword ptr [ecx+edx]
pop     edx
pop     ecx
retn
sub_4BC39F endp




sub_4BC3C7 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+4], 0
jnz     short loc_4BC3DD
mov     eax, 4Ch ; 'L'
call    sub_47EB4B
inc     byte ptr [edx+4]

loc_4BC3DD:
pop     edx
retn
sub_4BC3C7 endp


loc_4BC3DF:
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BC3E5[edx*4]
pop     edx
retn



sub_4BC3EE proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 14h
mov     byte ptr [edx], 1
mov     byte ptr [eax+9], 0FFh
mov     byte ptr [eax+8], 0FFh
mov     ecx, ds:dword_77E7D0+1
sar     ecx, 18h
mov     ebx, ds:dword_77E7D0+2
sar     ebx, 18h
mov     ecx, ds:off_536C78[ecx*4]
mov     ecx, [ecx+ebx*4]
mov     [eax], ecx
mov     dword ptr [eax+4], 0
mov     ds:byte_55CF0C, 0FFh
mov     ds:byte_55CF0D, 0FFh
mov     al, ds:byte_77E7D4
cmp     al, 13h
jb      short loc_4BC451
jbe     short loc_4BC46F
cmp     al, 1Ah
jb      short loc_4BC44B
jbe     short loc_4BC47D
cmp     al, 1Dh
jz      short loc_4BC484
jmp     short loc_4BC48E

loc_4BC44B:
cmp     al, 14h
jz      short loc_4BC476
jmp     short loc_4BC48E

loc_4BC451:
cmp     al, 9
jb      short loc_4BC45D
jbe     short loc_4BC468
cmp     al, 0Eh
jz      short loc_4BC468
jmp     short loc_4BC48E

loc_4BC45D:
test    al, al
jnz     short loc_4BC48E
mov     eax, 630h
jmp     short loc_4BC489

loc_4BC468:
mov     eax, 610h
jmp     short loc_4BC489

loc_4BC46F:
mov     eax, 620h
jmp     short loc_4BC489

loc_4BC476:
mov     eax, 609h
jmp     short loc_4BC489

loc_4BC47D:
mov     eax, 605h
jmp     short loc_4BC489

loc_4BC484:
mov     eax, 604h

loc_4BC489:
call    sub_47EA91

loc_4BC48E:
mov     byte ptr [edx+8], 1
mov     eax, edx
call    sub_4BC49D
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC3EE endp




sub_4BC49D proc near

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
lea     edi, [eax+14h]
mov     ebx, [edi]

loc_4BC4AC:
movsx   eax, word ptr [ebx]
cmp     eax, 0FFFFFFFFh
jz      loc_4BC7E7
mov     eax, [ebx]
sar     eax, 10h
mov     edx, [edi+5]
sar     edx, 18h
cmp     eax, edx
jz      loc_4BC6E2
mov     ecx, ds:dword_5F8376
sar     ecx, 10h
sar     ecx, 9
mov     eax, [ebx+1]
sar     eax, 18h
sub     ecx, eax
mov     [esp+20h+var_1C], ecx
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     ecx, [ebx+2]
sar     ecx, 18h
sub     eax, ecx
xor     ecx, ecx
mov     cl, [ebx+6]
cmp     ecx, [esp+20h+var_1C]
jbe     loc_4BC6DA
xor     ecx, ecx
mov     cl, [ebx+7]
cmp     eax, ecx
jnb     loc_4BC6DA
cmp     edx, 0FFFFFFFFh
jz      loc_4BC6D0
mov     edx, offset byte_55CF0C

loc_4BC520:
mov     cl, [edx+1]
cmp     cl, 0FFh
jz      loc_4BC6D0
xor     eax, eax
mov     al, cl
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_4BC55F
jbe     loc_4BC5D5
cmp     eax, 60h ; '`'
jb      loc_4BC6C8
jbe     loc_4BC61A
cmp     eax, 0E0h
jz      loc_4BC680
jmp     loc_4BC6C8

loc_4BC55F:
cmp     eax, 20h ; ' '
jnz     loc_4BC6C8
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E778
mov     ebp, ds:dword_55CF94
xor     ecx, ebp
mov     esi, ebp
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jz      short loc_4BC5B1

loc_4BC59B:
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [ebx+8]
mov     eax, [ecx+eax*8+14h]
jmp     loc_4BC663

loc_4BC5B1:
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
mov     esi, ecx
shl     esi, 2
mov     ecx, ds:dword_77E6F0

loc_4BC5C5:
add     ecx, esi
movzx   esi, byte ptr [eax+4]
mov     ecx, [ecx]
call    dword ptr [ecx+esi*4]
jmp     loc_4BC6C8

loc_4BC5D5:
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E758
mov     esi, ds:dword_55CF98
xor     ecx, esi
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jnz     short loc_4BC59B
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
shl     ecx, 2
mov     esi, ds:dword_77E6D4
jmp     short loc_4BC5C5

loc_4BC61A:
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E73C
mov     ebp, ds:dword_55CF8C
xor     ecx, ebp
mov     esi, ebp
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jz      short loc_4BC66A

loc_4BC64D:
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, eax
shl     ecx, 3
mov     eax, [ebx+8]
mov     eax, [ecx+eax+14h]

loc_4BC663:
call    sub_47E8B8
jmp     short loc_4BC6C8

loc_4BC66A:
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
mov     esi, ecx
shl     esi, 2
mov     ecx, ds:dword_77E6E0
jmp     short loc_4BC6C5

loc_4BC680:
xor     eax, eax
mov     al, [edx+1]
call    sub_4E1877
mov     ecx, ds:dword_77E730
mov     esi, ds:dword_55CF90
xor     ecx, esi
and     esi, ecx
mov     cl, [edx+1]
and     cl, 1Fh
and     ecx, 0FFh
mov     ebp, 80000000h
shr     ebp, cl
test    esi, ebp
jnz     short loc_4BC64D
mov     byte ptr [eax+8], 2
xor     ecx, ecx
mov     cl, [eax+2]
mov     esi, ecx
shl     esi, 2
mov     ecx, ds:dword_77E6D8

loc_4BC6C5:
call    dword ptr [ecx+esi]

loc_4BC6C8:
add     edx, 2
jmp     loc_4BC520

loc_4BC6D0:
mov     [edi+4], ebx
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+8], 2

loc_4BC6DA:
add     ebx, 0Ch
jmp     loc_4BC4AC

loc_4BC6E2:
mov     edx, offset byte_55CF0C

loc_4BC6E7:
cmp     byte ptr [edx+1], 0FFh
jz      short loc_4BC6DA
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jb      short loc_4BC719
jbe     short loc_4BC75E
cmp     eax, 60h ; '`'
jb      loc_4BC7DF
jbe     short loc_4BC76D
cmp     eax, 0E0h
jz      loc_4BC7A7
jmp     loc_4BC7DF

loc_4BC719:
cmp     eax, 20h ; ' '
jnz     loc_4BC7DF
mov     eax, ds:dword_77E778
mov     ebp, ds:dword_55CF94
xor     eax, ebp
mov     esi, ebp

loc_4BC731:
and     esi, eax
mov     cl, [edx+1]
and     cl, 1Fh
mov     eax, 80000000h
shr     eax, cl
test    esi, eax
jz      loc_4BC7DF
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [ebx+8]
mov     eax, [ecx+eax*8+14h]
jmp     loc_4BC7DA

loc_4BC75E:
mov     eax, ds:dword_77E758
mov     esi, ds:dword_55CF98
xor     eax, esi
jmp     short loc_4BC731

loc_4BC76D:
mov     eax, ds:dword_77E73C
mov     ecx, ds:dword_55CF8C
xor     eax, ecx
mov     esi, ecx
and     esi, eax
mov     cl, [edx+1]
and     cl, 1Fh
mov     eax, 80000000h
shr     eax, cl
test    esi, eax
jz      short loc_4BC7DF
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, eax
shl     ecx, 3
mov     eax, [ebx+8]
mov     eax, [ecx+eax+14h]
jmp     short loc_4BC7DA

loc_4BC7A7:
mov     eax, ds:dword_77E730
mov     ebp, ds:dword_55CF90
xor     eax, ebp
mov     esi, ebp
and     esi, eax
mov     cl, [edx+1]
and     cl, 1Fh
mov     eax, 80000000h
shr     eax, cl
test    esi, eax
jz      short loc_4BC7DF
movsx   ecx, byte ptr [edx]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [ebx+8]
mov     eax, [ecx+eax*8+14h]

loc_4BC7DA:
call    sub_47E8B8

loc_4BC7DF:
add     edx, 2
jmp     loc_4BC6E7

loc_4BC7E7:
mov     eax, ds:dword_77E778
mov     ds:dword_55CF94, eax
mov     eax, ds:dword_77E758
mov     ds:dword_55CF98, eax
mov     eax, ds:dword_77E73C
mov     ds:dword_55CF8C, eax
mov     eax, ds:dword_77E730
mov     ds:dword_55CF90, eax
add     esp, 8

loc_4BC812:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC49D endp ; sp-analysis failed




sub_4BC819 proc near

var_30= dword ptr -30h
var_2C= byte ptr -2Ch
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
push    eax
add     eax, 14h
mov     [esp+30h+var_24], eax
xor     edx, edx
mov     [esp+30h+var_1C], edx
mov     eax, [eax+4]
mov     [esp+30h+var_20], eax
mov     ecx, offset byte_55CF0C
mov     edx, [eax+8]

loc_4BC83F:
movsx   eax, byte ptr [edx]
cmp     eax, 0FFFFFFFFh
jz      loc_4BC9B3
mov     eax, [edx+14h]
call    sub_47E888
test    eax, eax
jnz     loc_4BC9A7
mov     al, [edx+1]
lea     ebp, [ecx+2]
cmp     al, 40h ; '@'
jb      short loc_4BC886
jbe     loc_4BC932
cmp     al, 60h ; '`'
jb      loc_4BC9A7
jbe     loc_4BC93C
cmp     al, 0E0h
jz      loc_4BC95A
jmp     loc_4BC9A7

loc_4BC886:
cmp     al, 20h ; ' '
jnz     loc_4BC9A7
call    sub_4DDF54

loc_4BC893:
test    eax, eax
jz      loc_4BC9A7
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     bl, [edx+4]
mov     [eax+4], bl
mov     bl, [edx+5]
mov     [eax+5], bl

loc_4BC8B7:
mov     ebx, [edx+8]
mov     [eax+0Ch], ebx
mov     ebx, [edx+0Ah]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+34h], ebx
mov     [eax+1Ch], ebx
mov     ebx, [edx+0Ch]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+38h], ebx
mov     [eax+20h], ebx
mov     ebx, [edx+0Eh]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+3Ch], ebx
mov     [eax+24h], ebx
lea     edi, [eax+2Ch]
lea     esi, [edx+0Ch]
movsd
movsd
lea     edi, [esp+30h+var_2C]
lea     esi, [eax+2Ch]
movsd
movsd
lea     edi, [eax+14h]
lea     esi, [esp+30h+var_2C]
movsd
movsd
mov     word ptr [eax+5Ch], 0
mov     bx, [eax+5Ch]
mov     [eax+54h], bx
xor     ebx, ebx
mov     bl, [edx+7]
shl     ebx, 4
mov     [eax+5Eh], bx
mov     [eax+56h], bx
mov     word ptr [eax+60h], 0
mov     bx, [eax+60h]
mov     [eax+58h], bx
jmp     short loc_4BC999

loc_4BC932:
call    sub_4DDFD0
jmp     loc_4BC893

loc_4BC93C:
call    sub_4DE043
test    eax, eax
jz      short loc_4BC9A7
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
jmp     loc_4BC8B7

loc_4BC95A:
call    sub_4DE227
test    eax, eax
jz      short loc_4BC9A7
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+2]
mov     [eax+2], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     ebx, [edx+8]
mov     [eax+0Ch], ebx
lea     edi, [eax+48h]
lea     esi, [edx+0Ch]
movsd
movsd
mov     bx, [edx+0Ch]
mov     [eax+1Ch], bx
mov     bx, [edx+0Eh]
mov     [eax+1Eh], bx
mov     bx, [edx+10h]
mov     [eax+20h], bx

loc_4BC999:
mov     al, [eax+1]
mov     [ecx+1], al
mov     al, byte ptr [esp+30h+var_1C]
mov     [ecx], al
mov     ecx, ebp

loc_4BC9A7:
add     edx, 18h
inc     [esp+30h+var_1C]
jmp     loc_4BC83F

loc_4BC9B3:
mov     byte ptr [ecx], 0FFh
mov     byte ptr [ecx+1], 0FFh
mov     eax, [esp+30h+var_20]
mov     al, [eax+2]
mov     edx, [esp+30h+var_24]
mov     [edx+8], al
mov     eax, [esp+30h+var_20]
mov     al, [eax]
mov     [edx+9], al
mov     eax, [esp+30h+var_30]
mov     byte ptr [eax+8], 1
add     esp, 18h
jmp     loc_4BC812
sub_4BC819 endp




sub_4BC9E0 proc near

var_78= dword ptr -78h
var_70= dword ptr -70h
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_58= dword ptr -58h
var_50= dword ptr -50h
var_48= dword ptr -48h
var_40= dword ptr -40h
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax        ; int
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4BC9F3[edx*4]
cmp     byte ptr [ecx+0Dh], 0Ah
jnz     short loc_4BCA17
and     byte ptr [ecx], 0FDh
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4BCA17:
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      short loc_4BCA2E
cmp     byte ptr [ecx+0Dh], 17h
jnz     short loc_4BCA2E
and     byte ptr [ecx], 0FDh

loc_4BCA2E:
mov     eax, 7B0h
call    sub_47E888
test    eax, eax
jnz     loc_4BCBD3
mov     [esp+0A8h+var_20], 100h
xor     ebx, ebx
mov     [esp+0A8h+var_1E], bx
xor     esi, esi
mov     [esp+0A8h+var_1C], si
mov     eax, esp
call    sub_4EF1AB
mov     edx, [ecx+9]
sar     edx, 18h
shl     edx, 0Ah
xor     eax, eax
mov     al, [ecx+3]
shl     eax, 0Bh
add     edx, 800h
add     eax, edx
mov     edx, esp
call    sub_4EF50D
lea     ebx, [esp+0A8h+var_68]
lea     edx, [esp+0A8h+var_20]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A8h+var_68], eax
mov     eax, [esp+0A8h+var_68]
mov     [esp+0A8h+var_20], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A8h+var_64], eax
mov     eax, [esp+0A8h+var_64]
mov     [esp+0A8h+var_1E], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A8h+var_60], eax
mov     eax, [esp+0A8h+var_60]
mov     [esp+0A8h+var_1C], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_78]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_30]
call    sub_4F0003
lea     eax, [esp+0A8h+var_20]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_48]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_38]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A8h+var_58]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A8h+var_28]
call    sub_4F0003
mov     ebx, [esp+0A8h+var_58]
mov     edi, [esp+0A8h+var_48]
sub     ebx, edi
jz      short loc_4BCBD3
mov     edx, [esp+0A8h+var_50]
mov     ebp, [esp+0A8h+var_40]
sub     edx, ebp
mov     eax, [esp+0A8h+var_78]
sub     eax, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A8h+var_70]
jge     short loc_4BCBD3
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
jnb     short loc_4BCBAD
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
ja      short loc_4BCBCA

loc_4BCBAD:
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_38]
fnstsw  ax
sahf
jbe     short loc_4BCBD3
fld     [esp+0A8h+var_30]
fcomp   [esp+0A8h+var_28]
fnstsw  ax
sahf
jnb     short loc_4BCBD3

loc_4BCBCA:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4BCBDA

loc_4BCBD3:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4BCBDA:
add     esp, 90h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BC9E0 endp




; int __fastcall sub_4BCBE7(int, int)
sub_4BCBE7 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
lea     eax, [ecx+48h]
call    sub_42C443
mov     [ecx+54h], eax
inc     byte ptr [ecx+8]
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ecx+3Ch], eax
mov     eax, [eax]
and     ah, 0EFh
call    sub_4A7AAC
mov     [ecx+40h], eax
pop     edx
pop     ecx
retn
sub_4BCBE7 endp




sub_4BCC46 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jz      short loc_4BCC9F
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jnz     short loc_4BCC9F
mov     eax, [ecx+0Ah]
sar     eax, 18h
add     eax, 7E0h
call    sub_47E888
test    eax, eax
jnz     short loc_4BCC9F
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+0Bh], 10h
mov     eax, 7B2h
call    sub_47E8B8
lea     edx, [ecx+48h]
mov     eax, 105h
call    sub_4D8BC3

loc_4BCC9F:
cmp     byte ptr [ecx+0Dh], 4
jnz     loc_4BCD4A
cmp     byte ptr [ecx+3], 0
jz      loc_4BCD4A
mov     eax, 7E1h
call    sub_47E888
test    eax, eax
jz      loc_4BCD4A
mov     eax, ds:dword_77E704
mov     edx, ds:dword_77E6DC
mov     ds:dword_56F18C[eax*4], edx
mov     eax, edx
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
inc     ds:dword_77E704
xor     edx, edx
mov     dl, [ecx+9]
xor     ebx, ebx
mov     bl, ds:byte_536CF8[edx]
inc     dl
and     dl, 0Fh
mov     [ecx+9], dl
or      ebx, 2E000000h
mov     [eax+4], ebx
mov     word ptr [esp+14h+var_14], 4F80h
mov     word ptr [esp+14h+var_14+2], 0FDEAh
mov     si, 2BF0h
mov     edx, [esp+14h+var_14]
mov     [eax+8], edx
mov     [eax+10h], esi
mov     dword ptr [eax+0Ch], 3EC0E0E0h
mov     dword ptr [eax+14h], 25E0FFh
mov     dword ptr [eax+1Ch], 0FFE0h
mov     dword ptr [eax+24h], 0FFFFh
mov     dword ptr [eax+18h], 20h ; ' '
mov     dword ptr [eax+20h], 0

loc_4BCD4A:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BCC46 endp




; int __fastcall sub_4BCD52(int, int)
sub_4BCD52 proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+10h+var_10], eax ; int
fild    word ptr [esp+10h+var_10]
fmul    ds:flt_50A3F0
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4BCDC2
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4BCDC2:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4BCD52 endp




; int __fastcall sub_4BCDC9(int, int)
sub_4BCDC9 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     eax, 7B0h
call    sub_47E888
lea     ebx, [ecx+48h]
lea     edx, [ecx+18h]
test    eax, eax
jz      short loc_4BCE34
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jnz     loc_4BCE89
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn

loc_4BCE34:
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     eax, [ecx+54h]
jz      short loc_4BCE89
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h
mov     eax, edx
call    sub_4EF1AB
mov     dword ptr [ecx+18h], 0
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
or      byte ptr [ecx], 2
mov     eax, 7B2h
call    sub_47E8B8
mov     edx, ebx
mov     eax, 106h
call    sub_4D8BC3
mov     eax, 7B1h
call    sub_47EA91

loc_4BCE89:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BCDC9 endp




; int __fastcall sub_4BCE8D(int, int)
sub_4BCE8D proc near

var_10= dword ptr -10h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, 10h
sub     ebx, eax
mov     [esp+10h+var_10], ebx ; int
fild    [esp+10h+var_10]
fmul    ds:flt_50A3F4
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     loc_4BCDC2
inc     byte ptr [ecx+8]
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     eax, 7B2h
call    sub_47EA91
jmp     loc_4BCDC2
sub_4BCE8D endp




sub_4BCEF6 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 0
pop     edx
pop     ecx
retn
sub_4BCEF6 endp




sub_4BCF15 proc near
cmp     byte ptr [eax+8], 0
jnz     sub_4BCFDA
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_536D20[eax*2]
mov     [ecx+48h], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_536D22[eax*2]
mov     [ecx+4Ah], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_536D24[eax*2]
mov     [ecx+4Ch], ax
mov     dword ptr [ecx+50h], 2C808080h
mov     byte ptr [ecx+0Dh], 64h ; 'd'
lea     eax, [ecx+18h]
call    sub_4EF184
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4BCF15 endp




sub_4BCF95 proc near
push    edx
mov     dl, [eax+0Ch]
mov     [eax+9], dl
pop     edx
retn
sub_4BCF95 endp




sub_4BCF9E proc near
push    edx
mov     dl, [eax+0Dh]
cmp     dl, 0Ah
jz      short loc_4BCFB0
mov     dh, dl
dec     dh
mov     [eax+0Dh], dh
pop     edx
retn

loc_4BCFB0:
mov     byte ptr [eax+9], 0
mov     dl, [eax+9]
mov     [eax+0Ch], dl
pop     edx
retn
sub_4BCF9E endp




sub_4BCFBC proc near
push    edx
mov     dl, [eax+0Dh]
cmp     dl, 64h ; 'd'
jnz     short loc_4BCFD1
mov     byte ptr [eax+9], 0
mov     dl, [eax+9]
mov     [eax+0Ch], dl
pop     edx
retn

loc_4BCFD1:
mov     dh, dl
inc     dh
mov     [eax+0Dh], dh
pop     edx
retn
sub_4BCFBC endp




sub_4BCFDA proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 8
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4BCFE6[ecx*4]
mov     ecx, [edx+0Ah]
sar     ecx, 18h
movsx   ax, byte ptr [edx+0Dh]
mov     [esp+10h+var_C], eax
fild    word ptr [esp+10h+var_C]
fdiv    ds:flt_50A3F8
fstp    dword ptr [edx+18h]
mov     [esp+10h+var_10], ecx
fild    [esp+10h+var_10]
fdiv    ds:flt_50A3F8
fstp    dword ptr [edx+38h]
add     esp, 8
pop     edx
pop     ecx
retn
sub_4BCFDA endp




sub_4BD01E proc near

; FUNCTION CHUNK AT 004BD988 SIZE 0000000F BYTES

cmp     byte ptr [eax+8], 0
jnz     loc_4BD988
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dl, [ecx+3]
test    dl, dl
jz      short loc_4BD03F
cmp     dl, 0Ah
jnz     short loc_4BD042

loc_4BD03F:
or      byte ptr [ecx], 8

loc_4BD042:
cmp     byte ptr [ecx+3], 8
jnz     short loc_4BD051
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_4BD051:
lea     eax, [ecx+18h]
call    sub_4EF184
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4BD01E endp




sub_4BD05F proc near
add     dword ptr [eax+54h], 91A2Bh
retn
sub_4BD05F endp




sub_4BD067 proc near
push    ecx             ; int
push    edx             ; int
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_4BD070[ecx*4]
lea     ecx, [edx+18h]
mov     eax, ecx
call    sub_4EF184
mov     eax, [edx+54h]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
pop     edx
pop     ecx
retn
sub_4BD067 endp




sub_4BD091 proc near

var_6C= byte ptr -6Ch
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 84h
mov     ebp, eax
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4BD0AC
mov     eax, ebp
call    sub_4DE477

loc_4BD0AC:
mov     eax, ds:dword_560C00
mov     [esp+9Ch+var_1C], eax
mov     [esp+9Ch+var_2C], 400h
xor     ebx, ebx
mov     [esp+9Ch+var_2A], bx
mov     [esp+9Ch+var_28], bx
mov     edx, esp
lea     eax, [esp+9Ch+var_2C]
call    sub_4EF5F7
mov     eax, [esp+9Ch+var_1C]
add     eax, 2E0h
lea     ebx, [esp+9Ch+var_6C]
mov     edx, esp
call    sub_4EF388
mov     ecx, 0Ch
lea     edi, [ebp+18h]
lea     esi, [esp+9Ch+var_6C]
rep movsd
mov     edx, 8000h
mov     [esp+9Ch+var_34], edx
mov     [esp+9Ch+var_38], edx
mov     [esp+9Ch+var_3C], edx
lea     eax, [ebp+18h]
lea     edx, [esp+9Ch+var_3C]
call    sub_4EF689
mov     [esp+9Ch+var_2C], 50h ; 'P'
xor     edi, edi
mov     [esp+9Ch+var_2A], di
mov     [esp+9Ch+var_28], 0FEC0h
lea     ebx, [esp+9Ch+var_24]
lea     edx, [esp+9Ch+var_2C]
lea     eax, [esp+9Ch+var_6C]
call    sub_4EF2DC
mov     eax, [esp+9Ch+var_1C]
mov     ax, [eax+1A8h]
mov     edx, [esp+9Ch+var_24]
add     edx, eax
mov     [ebp+48h], dx
mov     eax, [esp+9Ch+var_1C]
mov     ax, [eax+1AAh]
mov     edx, [esp+9Ch+var_24+2]
add     edx, eax
mov     [ebp+4Ah], dx
mov     eax, [esp+9Ch+var_1C]
mov     ax, [eax+1ACh]
mov     edx, [esp+9Ch+var_20]
add     edx, eax
mov     [ebp+4Ch], dx
mov     dword ptr [ebp+50h], 2808080h
add     esp, 84h
pop     ebp

loc_4BD194:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD091 endp




sub_4BD19A proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     esi, eax
mov     ecx, ds:dword_560C00 ; int
mov     [esp+5Ch+var_1C], 400h
xor     ebx, ebx
mov     [esp+5Ch+var_1A], bx
mov     [esp+5Ch+var_18], bx
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF5F7
lea     edi, [esi+18h]
lea     eax, [ecx+2E0h]
mov     ebx, edi
mov     edx, esp
call    sub_4EF388
mov     edx, 8000h
mov     [esp+38h], edx
mov     [esp+34h], edx
mov     [esp+30h], edx
lea     edx, [esp+30h]
mov     eax, edi
call    sub_4EF689
mov     edx, [ecx+1AEh]
sar     edx, 10h
mov     eax, [ecx+1C6h]
sar     eax, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+48h], ax
mov     edx, [ecx+1B0h]
sar     edx, 10h
mov     eax, [ecx+1C8h]
sar     eax, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+4Ah], ax
mov     eax, [ecx+1B2h]
sar     eax, 10h
mov     edx, [ecx+1CAh]
sar     edx, 10h
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     [esi+4Ch], ax
mov     dword ptr [esi+50h], 2808080h
add     esp, 48h
jmp     loc_4BD194
sub_4BD19A endp




sub_4BD268 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    edi
sub     esp, 8
mov     ecx, eax
mov     ebx, ds:dword_560C00
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF184
mov     [esp+18h+var_18], 400h
xor     edi, edi
mov     [esp+18h+var_16], di
mov     [esp+18h+var_14], di
mov     eax, esp
call    sub_4EF5F7
mov     dx, [ebx+190h]
sub     edx, 14h
mov     [ecx+48h], dx
mov     ax, [ebx+192h]
mov     [ecx+4Ah], ax
mov     ax, [ebx+194h]
mov     [ecx+4Ch], ax
mov     dword ptr [ecx+50h], 2808080h
add     esp, 8
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD268 endp




sub_4BD2CD proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD2D3[edx*4]
pop     edx
sub_4BD2CD endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_79]



sub_4BD2DC proc near
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD2EB
add     word ptr [eax+4Ah], 2
retn

loc_4BD2EB:
sub     word ptr [eax+4Ah], 2
retn
sub_4BD2DC endp




sub_4BD2F1 proc near
push    edx

loc_4BD2F2:
mov     edx, [eax+48h]

loc_4BD2F5:
sar     edx, 10h
shl     edx, 10h
mov     [eax+54h], edx
inc     byte ptr [eax+0Ah]
pop     edx
retn
sub_4BD2F1 endp




sub_4BD303 proc near
add     dword ptr [eax+54h], 1999Ah
retn
sub_4BD303 endp




sub_4BD30B proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_4BD315[ecx*4]
mov     ecx, [edx+54h]
sar     ecx, 10h
mov     [edx+4Ah], cx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD33A
add     ecx, 2
mov     [edx+4Ah], cx
pop     edx
pop     ecx
pop     ebx
retn

loc_4BD33A:
mov     ebx, ecx
sub     ebx, 2
mov     [edx+4Ah], bx
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD30B endp




sub_4BD347 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD34D[edx*4]
pop     edx
retn
sub_4BD347 endp




sub_4BD356 proc near
add     eax, 18h
jmp     sub_4EF184
sub_4BD356 endp




sub_4BD35E proc near
push    edx
mov     edx, eax
add     eax, 18h
call    sub_4EF184
mov     eax, ds:dword_560C00
mov     ax, [eax+1CAh]
mov     [edx+4Ah], ax
inc     byte ptr [edx+0Ah]
pop     edx
retn
sub_4BD35E endp




sub_4BD37E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     eax, ds:dword_560C00
mov     ebx, [eax+0Bh]
sar     ebx, 18h
mov     edx, [eax+98h]
mov     dl, [edx]
and     edx, 0FFh
mov     ebx, ds:off_536DD6[ebx*4]
add     edx, ebx
movzx   si, byte ptr [edx]
mov     ebx, [eax+1C8h]
sar     ebx, 10h
mov     dl, [edx]
and     edx, 0FFh
sub     ebx, edx
mov     edx, [ecx+48h]
sar     edx, 10h
cmp     edx, ebx
jl      short loc_4BD3F0
mov     ax, [eax+1CAh]
sub     eax, esi
mov     [ecx+4Ah], ax
call    rand_
mov     edx, eax
mov     ebx, 6
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4BD3F0
mov     eax, ecx
call    sub_4BD935

loc_4BD3F0:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD37E endp




sub_4BD3F5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD3FB[edx*4]
pop     edx
retn
sub_4BD3F5 endp




sub_4BD404 proc near
mov     dword ptr [eax+0Ch], 0
inc     byte ptr [eax+0Ah]
mov     eax, ds:dword_560C28
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_560C28
mov     byte ptr [eax+0Ah], 0
retn
sub_4BD404 endp




sub_4BD421 proc near
push    ecx
push    edx
mov     edx, [eax+0Ch]
sub     edx, 14000h
cmp     edx, 0FFCE0000h
jg      short loc_4BD44B
inc     byte ptr [eax+0Ah]
mov     ecx, ds:dword_560C28
mov     byte ptr [ecx+9], 0
mov     ecx, ds:dword_560C28
mov     byte ptr [ecx+0Ah], 0

loc_4BD44B:
mov     [eax+0Ch], edx
sar     edx, 10h
mov     [eax+4Ah], dx
pop     edx
pop     ecx
sub_4BD421 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_80]



sub_4BD458 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD45E[edx*4]
pop     edx
retn
sub_4BD458 endp




sub_4BD467 proc near
push    edx
mov     byte ptr [eax+0Ch], 12h
jmp     loc_4BD2F2
sub_4BD467 endp




sub_4BD471 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+54h]
add     edx, 14000h
mov     [eax+54h], edx
sar     edx, 10h
mov     [eax+4Ah], dx
call    rand_
mov     edx, eax
mov     ebx, 6
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4BD4A5
mov     eax, ecx
call    sub_4BD935

loc_4BD4A5:
cmp     word ptr [ecx+4Ah], 0
jle     short loc_4BD4AF
inc     byte ptr [ecx+0Ah]

loc_4BD4AF:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD471 endp




sub_4BD4B3 proc near
push    edx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD4C5
mov     word ptr [eax+4Ah], 0FFFEh
jmp     short loc_4BD4CB

loc_4BD4C5:
mov     word ptr [eax+4Ah], 2

loc_4BD4CB:
mov     dh, [eax+0Ch]
dec     dh
mov     [eax+0Ch], dh
jnz     short loc_4BD4DE
mov     word ptr [eax+4Ah], 0
inc     byte ptr [eax+0Ah]

loc_4BD4DE:
pop     edx
sub_4BD4B3 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_81]



sub_4BD4E0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD4E6[edx*4]
pop     edx
retn
sub_4BD4E0 endp




sub_4BD4EF proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD4F5[edx*4]
pop     edx
sub_4BD4EF endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_82]



sub_4BD4FE proc near
push    edx
mov     edx, [eax+4Ah]
jmp     loc_4BD2F5
sub_4BD4FE endp




sub_4BD507 proc near
push    edx
mov     edx, [eax+54h]
add     edx, 0FFFD8000h
mov     [eax+54h], edx
sar     edx, 10h
mov     [eax+4Ch], dx
pop     edx
retn
sub_4BD507 endp




sub_4BD51D proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD523[edx*4]
pop     edx
retn
sub_4BD51D endp




sub_4BD52C proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD532[edx*4]
pop     edx
sub_4BD52C endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_83]



sub_4BD53B proc near
mov     byte ptr [eax+0Ch], 12h
sub_4BD53B endp




sub_4BD53F proc near
mov     dword ptr [eax+54h], 0
inc     byte ptr [eax+0Ah]
retn
sub_4BD53F endp




sub_4BD54A proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
add     ecx, 14E80h
mov     [eax+54h], ecx
sar     ecx, 10h
mov     eax, [eax+48h]
sar     eax, 10h
add     eax, ecx
mov     [edx+4Ah], ax
test    ax, ax
jle     short loc_4BD583
mov     eax, edx
call    sub_4BD7EB
add     ds:word_77E60A, 10h
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
retn

loc_4BD583:
call    rand_
test    al, 3
jnz     short loc_4BD593
mov     eax, edx
call    sub_4BD82C

loc_4BD593:
pop     edx
pop     ecx
retn
sub_4BD54A endp




sub_4BD596 proc near
sub     dword ptr ds:unk_77E608, 100000h
inc     byte ptr [eax+0Ah]
retn
sub_4BD596 endp




sub_4BD5A4 proc near
push    edx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_4BD5B6
mov     word ptr [eax+4Ah], 0FFFEh
jmp     short loc_4BD5BC

loc_4BD5B6:
mov     word ptr [eax+4Ah], 2

loc_4BD5BC:
mov     dh, [eax+0Ch]
dec     dh
mov     [eax+0Ch], dh
jnz     short loc_4BD5CF
mov     word ptr [eax+4Ah], 0
inc     byte ptr [eax+0Ah]

loc_4BD5CF:
pop     edx
sub_4BD5A4 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_84]



sub_4BD5D1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD5D7[edx*4]
pop     edx
retn
sub_4BD5D1 endp




sub_4BD5E0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD5E6[edx*4]
pop     edx
retn
sub_4BD5E0 endp




sub_4BD5EF proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4BD60E
or      byte ptr [edx], 6
lea     eax, [edx+18h]
call    sub_4EF184
mov     dword ptr [edx+50h], offset unk_808080
mov     byte ptr [edx+0Ch], 0

loc_4BD60E:
pop     edx
sub_4BD5EF endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_85]



sub_4BD610 proc near
push    edx
mov     byte ptr [eax+0Eh], 0
mov     dl, [eax+0Eh]
mov     [eax+0Dh], dl
inc     byte ptr [eax+0Ah]
pop     edx
retn
sub_4BD610 endp




sub_4BD620 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Dh]
inc     ah
mov     [ecx+0Dh], ah
cmp     ah, 3
jnz     loc_4BD752
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+14h]
mov     edx, 10001h
call    sub_4EDF7C
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
inc     dl
mov     [eax+2], dl
mov     [eax], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
add     dl, 1Fh
mov     [eax+6], dl
mov     [eax+4], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 2Fh ; '/'
mov     [eax+1], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 10h
mov     [eax+3], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 3Eh ; '>'
mov     [eax+5], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
inc     dl
mov     [eax+7], dl
mov     eax, [ecx+14h]
mov     edx, 10000h
call    sub_4EDF7C
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
add     dl, 1Fh
mov     [eax+2], dl
mov     [eax], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6E[edx*2]
add     dl, 3Eh ; '>'
mov     [eax+6], dl
mov     [eax+4], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 3Eh ; '>'
mov     [eax+1], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
inc     dl
mov     [eax+3], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 2Fh ; '/'
mov     [eax+5], dl
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     dl, ds:byte_536E6F[edx*2]
add     dl, 10h
mov     [eax+7], dl
mov     dh, [ecx+0Eh]
inc     dh
mov     [ecx+0Eh], dh
cmp     dh, 6
jnz     short loc_4BD752
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_4BD752:
pop     edx
pop     ecx
retn
sub_4BD620 endp




sub_4BD755 proc near
push    edx
mov     edx, eax
mov     ah, [eax+0Dh]
inc     ah
mov     [edx+0Dh], ah
cmp     ah, 7
jnz     short loc_4BD774
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0Dh], 0
add     ds:word_77E60A, 10h

loc_4BD774:
sub     word ptr [edx+4Ch], 49h ; 'I'
call    rand_
test    al, 3
jnz     short loc_4BD789
mov     eax, edx
call    sub_4BD8C7

loc_4BD789:
pop     edx
retn
sub_4BD755 endp




sub_4BD78B proc near
push    edx
mov     dl, [eax+0Dh]
inc     dl
mov     [eax+0Dh], dl
cmp     dl, 2
jnz     short loc_4BD79C
inc     byte ptr [eax+0Ah]

loc_4BD79C:
add     word ptr [eax+4Ch], 20h ; ' '
pop     edx
sub_4BD78B endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_86]



sub_4BD7A3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4BD7A9[edx*4]
pop     edx
retn
sub_4BD7A3 endp




sub_4BD7B2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4BD7B8[edx*4]
pop     edx
retn
sub_4BD7B2 endp




sub_4BD7C1 proc near
push    ebx
push    edx
mov     edx, [eax+9]
sar     edx, 18h
mov     edx, ds:dword_560C1C[edx*4]
mov     bx, [edx+48h]
mov     [eax+48h], bx
mov     bx, [edx+4Ah]
mov     [eax+4Ah], bx
mov     dx, [edx+4Ch]
mov     [eax+4Ch], dx
pop     edx
pop     ebx
retn
sub_4BD7C1 endp




sub_4BD7EB proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4BD829
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 4
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 4
mov     byte ptr [eax+0Dh], 0
mov     bx, [edx+48h]
mov     [eax+1Ch], bx
mov     word ptr [eax+1Eh], 0
mov     dx, [edx+4Ch]
mov     [eax+20h], dx
mov     byte ptr [eax+8], 0
mov     byte ptr [eax+9], 0

loc_4BD829:
pop     edx
pop     ebx
retn
sub_4BD7EB endp




sub_4BD82C proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4BD8C3
call    rand_
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 3
mov     byte ptr [edx+3], 0
mov     byte ptr [edx+0Ch], 3
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+0Fh], 0
call    rand_
test    al, 1
jz      short loc_4BD86E
mov     eax, 0FFFFFE7Eh
jmp     short loc_4BD873

loc_4BD86E:
mov     eax, 182h

loc_4BD873:
mov     edx, [ebx+46h]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     dx, [ebx+4Ah]
add     edx, 30h ; '0'
call    rand_
and     ah, 1
add     eax, edx
sub     eax, 0FFh
mov     [ecx+1Eh], ax
call    rand_
test    al, 1
jz      short loc_4BD8AA
mov     eax, 0FFFFFFC0h
jmp     short loc_4BD8AF

loc_4BD8AA:
mov     eax, 40h ; '@'

loc_4BD8AF:
mov     edx, [ebx+4Ah]
sar     edx, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0

loc_4BD8C3:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD82C endp




sub_4BD8C7 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_4BD931
call    rand_
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 3
mov     byte ptr [edx+3], 0
mov     byte ptr [edx+0Ch], 3
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+0Fh], 0
call    rand_
test    al, 1
jz      short loc_4BD905
mov     eax, 0FFFFFF80h
jmp     short loc_4BD90A

loc_4BD905:
mov     eax, 80h

loc_4BD90A:
mov     edx, [ebx+46h]
sar     edx, 10h
add     eax, edx
mov     [ecx+1Ch], ax
mov     dx, [ebx+4Ah]
sub     edx, 20h ; ' '
mov     [ecx+1Eh], dx
mov     ax, [ebx+4Ch]
mov     [ecx+20h], ax
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0

loc_4BD931:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD8C7 endp




sub_4BD935 proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4BD985
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 3
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Fh], 1
call    rand_
xor     ah, ah
add     ax, [ecx+48h]
sub     eax, 7Fh
mov     [edx+1Ch], ax
mov     ax, [ecx+4Ah]
mov     [edx+1Eh], ax
mov     ax, [ecx+4Ch]
mov     [edx+20h], ax
mov     byte ptr [edx+8], 0
mov     byte ptr [edx+9], 0

loc_4BD985:
pop     edx
pop     ecx
sub_4BD935 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_87]
; START OF FUNCTION CHUNK FOR sub_4BD01E

loc_4BD988:
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4BD98E[edx*4]
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4BD01E



sub_4BD997 proc near
push    ecx
push    edx
lea     edx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4BD9A1[ecx*4]
mov     dword ptr [edx+4], 0
pop     edx
pop     ecx
retn
sub_4BD997 endp




sub_4BD9B2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     eax, [ecx+18h]
call    sub_4EF184
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     word ptr [ebx], 0Eh
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
test    byte ptr [ecx+3], 0F0h
jz      short loc_4BD9FA
mov     word ptr [ecx+54h], 22h ; '"'
jmp     short loc_4BDA00

loc_4BD9FA:
mov     word ptr [ecx+54h], 0A0h

loc_4BDA00:
mov     ax, [ecx+4Eh]
mov     [ecx+56h], ax
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     eax, ecx
call    sub_4BDA21
pop     edx
pop     ecx
pop     ebx
retn
sub_4BD9B2 endp




sub_4BDA21 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3Ch]
test    byte ptr [edi], 8
jz      short loc_4BDA37
mov     dword ptr [esi+50h], offset unk_808080

loc_4BDA37:
call    rand_
mov     [edi+2], ax
test    byte ptr [edi], 2
jz      short loc_4BDA4C
mov     eax, esi
call    sub_4BDBF0

loc_4BDA4C:
xor     ecx, ecx
mov     cl, [esi+9]
mov     eax, esi
call    ds:funcs_4BDA53[ecx*4]
test    byte ptr [esi], 1
jz      short loc_4BDA78
cmp     byte ptr [esi+9], 1
jz      short loc_4BDA78
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, esi
call    sub_432697

loc_4BDA78:
test    byte ptr [esi], 1
jz      short loc_4BDACA
test    byte ptr [edi], 4
jz      short loc_4BDACA
push    80h
push    0
sub     word ptr [esi+4Ah], 80h
mov     al, [esi+3]
and     al, 0F0h
and     eax, 0FFh
sar     eax, 4
mov     edx, ds:dword_536ED4[eax*4]
push    edx
add     edi, 4
push    edi
xor     ecx, ecx
mov     cl, [esi+1]
push    ecx
mov     ecx, ds:dword_536EDC[eax*4]
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 0A0h
call    sub_4E01FC
add     word ptr [esi+4Ah], 80h

loc_4BDACA:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4BDA21 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_88]


; Attributes: thunk

sub_4BDAD0 proc near
jmp     sub_4DE477
sub_4BDAD0 endp




sub_4BDAD5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4BDAEE
jbe     short loc_4BDB2D
cmp     al, 2
jz      short loc_4BDB46
jmp     short loc_4BDACA

loc_4BDAEE:
test    al, al
jnz     short loc_4BDACA
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0Ch], 1
mov     dword ptr [ecx+50h], offset unk_808080
and     byte ptr [edx], 0F7h
mov     eax, ecx
call    sub_432EAB
call    sub_4DE13B
test    eax, eax
jz      short loc_4BDB2D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
sub     word ptr [eax+4Ah], 80h

loc_4BDB2D:
mov     bl, [ecx+0Ch]
dec     bl
mov     [ecx+0Ch], bl
jnz     short loc_4BDACA
mov     byte ptr [ecx+0Ah], 2
mov     byte ptr [ecx+0Ch], 1
mov     dword ptr [ecx+50h], 2E808080h

loc_4BDB46:
mov     al, [ecx+0Ch]
inc     al
mov     [ecx+0Ch], al
cmp     al, 5
jnz     short loc_4BDBAD
mov     eax, ecx
call    sub_4DE477
mov     al, [ecx+3]
and     al, 0Fh
lea     esi, [ecx+48h]
cmp     al, 1
jnz     short loc_4BDB83
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_47E8B8
jmp     loc_4BDACA

loc_4BDB83:
cmp     al, 2
jnz     short loc_4BDB92
mov     eax, [ecx+54h]
sar     eax, 10h
call    sub_47E8B8

loc_4BDB92:
mov     ax, [edx+2]
xor     ah, ah
and     al, 1
xor     ebx, ebx
mov     bx, ax
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
jmp     loc_4BDACA

loc_4BDBAD:
sub     dword ptr [ecx+50h], 202020h
mov     edx, [ecx+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     ebx, ds:dword_536EE4
add     ebx, eax
mov     ds:dword_536EE4, ebx
mov     ds:dword_536EEC, ebx
mov     ds:dword_536EE8, ebx
lea     eax, [ecx+18h]
mov     edx, offset dword_536EE4
call    sub_4EF689
jmp     loc_4BDACA
sub_4BDAD5 endp




sub_4BDBF0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 3Ch ; '<'
mov     ebx, [eax+4]
and     ebx, 0FFFFFFh
jz      short loc_4BDC4D
lea     edx, [ecx+48h]
test    byte ptr [eax+7], 1Ch
jz      short loc_4BDC43
mov     si, [ecx+54h]
sub     esi, ebx
mov     [ecx+54h], si
test    si, si
jg      short loc_4BDC30
and     byte ptr [eax], 0FDh
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
mov     eax, 0A2h
jmp     short loc_4BDC35

loc_4BDC30:
mov     eax, 0A0h

loc_4BDC35:
call    sub_4D8BC3
mov     dword ptr [ecx+50h], 0FFFFFFh
jmp     short loc_4BDC4D

loc_4BDC43:
mov     eax, 0A3h
call    sub_4D8BC3

loc_4BDC4D:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BDBF0 endp




sub_4BDC57 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BDC5D[edx*4]
pop     edx
retn
sub_4BDC57 endp




sub_4BDC66 proc near
push    ebx
push    edx
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     word ptr [eax+0Ah], 0
xor     ebx, ebx

loc_4BDC78:
movsx   eax, bx
shl     eax, 2
mov     edx, ds:dword_537078[eax]
cmp     edx, 0FFFFFFFFh
jz      short loc_4BDCA6
test    edx, edx
jz      short loc_4BDCA3
mov     eax, edx

loc_4BDC8F:
movsx   edx, byte ptr [eax]
cmp     edx, 0FFFFFFFFh
jz      short loc_4BDCA3
mov     dword ptr [eax+8], 0
add     eax, 10h
jmp     short loc_4BDC8F

loc_4BDCA3:
inc     ebx
jmp     short loc_4BDC78

loc_4BDCA6:
pop     edx
pop     ebx
retn
sub_4BDC66 endp




sub_4BDCA9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     ecx, ds:dword_537078[ecx*4]
mov     eax, ds:dword_5F8376
sar     eax, 10h
sar     eax, 9
mov     [esi+48h], ax
mov     eax, ds:dword_5F837A
sar     eax, 10h
sar     eax, 9
mov     [esi+4Ah], ax

loc_4BDCDD:
movsx   eax, byte ptr [ecx]
cmp     eax, 0FFFFFFFFh
jz      short loc_4BDCF9
mov     ebx, eax
shl     ebx, 2
mov     edx, ecx
mov     eax, esi
call    ds:funcs_4BDCEE[ebx]
add     ecx, 10h
jmp     short loc_4BDCDD

loc_4BDCF9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BDCA9 endp



; Attributes: thunk

sub_4BDCFE proc near
jmp     sub_4DE477
sub_4BDCFE endp




sub_4BDD03 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDD33
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDD22
cmp     al, 1
jnz     short loc_4BDD33

loc_4BDD22:
mov     edx, ecx
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDD33
mov     byte ptr [ecx+8], 1

loc_4BDD33:
pop     ecx
pop     ebx
retn
sub_4BDD03 endp




sub_4BDD36 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BDDBE
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDDBE
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDD6A
cmp     al, 1
jz      short loc_4BDD92
pop     ecx
pop     ebx
retn

loc_4BDD6A:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDDBE
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BDDB1

loc_4BDD92:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDDBE
mov     eax, 610h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BDDB1:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BDDBE:
pop     ecx
pop     ebx
retn
sub_4BDD36 endp




sub_4BDDC1 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE21
mov     eax, 612h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE21
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDDF1
cmp     al, 1
jz      short loc_4BDE0E
pop     ecx
pop     ebx
retn

loc_4BDDF1:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDE21
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BDE0E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDE21
mov     eax, 612h
call    sub_47E8B8

loc_4BDE21:
pop     ecx
pop     ebx
retn
sub_4BDDC1 endp




sub_4BDE24 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE84
mov     eax, 613h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDE84
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDE54
cmp     al, 1
jz      short loc_4BDE71
pop     ecx
pop     ebx
retn

loc_4BDE54:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDE84
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BDE71:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDE84
mov     eax, 613h
call    sub_47E8B8

loc_4BDE84:
pop     ecx
pop     ebx
retn
sub_4BDE24 endp




sub_4BDE87 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BDF3A
mov     eax, 614h
call    sub_47E888
test    eax, eax
jnz     loc_4BDF3A
mov     esi, offset byte_5F8364
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDEC6
cmp     al, 1
jz      short loc_4BDF0E
pop     esi
pop     ecx
pop     ebx
retn

loc_4BDEC6:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDF3A
mov     byte ptr [ecx+8], 1
mov     eax, ds:dword_5F83B8
sar     eax, 10h
sub     eax, 200h
and     eax, 0FFFh
cmp     eax, 400h
jge     short loc_4BDEF4
movsx   edx, byte ptr [ecx+1]
jmp     short loc_4BDEF9

loc_4BDEF4:
movsx   edx, byte ptr [ecx+1]
inc     edx

loc_4BDEF9:
xor     eax, eax
call    sub_4A0E24
or      byte ptr [esi+0BDh], 40h
mov     edx, 1
jmp     short loc_4BDF2D

loc_4BDF0E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BDF3A
mov     eax, 614h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BDF2D:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BDF3A:
pop     esi
pop     ecx
pop     ebx
retn
sub_4BDE87 endp




sub_4BDF3E proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 615h
call    sub_47E888
test    eax, eax
jnz     short loc_4BDF6E
mov     al, [edx+8]
test    al, al
jbe     short loc_4BDF5D
cmp     al, 1
jnz     short loc_4BDF6E

loc_4BDF5D:
mov     edx, ecx
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BDF6E
mov     byte ptr [ecx+8], 1

loc_4BDF6E:
pop     ecx
pop     ebx
retn
sub_4BDF3E endp




sub_4BDF71 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jnz     loc_4BE0B2
mov     al, [edx+8]
cmp     al, 1
jb      short loc_4BDFA1
jbe     short loc_4BDFFE
cmp     al, 2
jz      loc_4BE097
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4BDFA1:
test    al, al
jnz     loc_4BE0B2
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      loc_4BE0B2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      loc_4BE0B2
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+0Ch], 0
mov     eax, 615h
call    sub_47E8B8
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE0B2
movsx   edx, byte ptr [ecx+1]
call    sub_4A0E24
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4BDFFE:
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4BE019
mov     eax, 622h
call    sub_47E888
test    eax, eax
jz      loc_4BE0B2

loc_4BE019:
xor     edx, edx
mov     eax, offset byte_6DD9CC
jmp     short loc_4BE02D

loc_4BE022:
add     eax, 4A0h
inc     edx
cmp     edx, 10h
jge     short loc_4BE067

loc_4BE02D:
test    byte ptr [eax], 1
jz      short loc_4BE022
mov     edi, [eax+12h]
sar     edi, 10h
sar     edi, 9
movsx   ebx, byte ptr [ecx+2]
sub     edi, ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
sar     ebx, 9
mov     esi, [ecx]
sar     esi, 18h
sub     ebx, esi
mov     esi, ebx
xor     ebx, ebx
mov     bx, [ecx+4]
cmp     edi, ebx
jnb     short loc_4BE022
xor     ebx, ebx
mov     bx, [ecx+6]
cmp     esi, ebx
jnb     short loc_4BE022

loc_4BE067:
cmp     edx, 10h
jnz     short loc_4BE0B2
mov     byte ptr [ecx+8], 2
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE088
movsx   edx, byte ptr [ecx+1]
inc     edx
call    sub_4A0E24

loc_4BE088:
mov     eax, 61Fh
call    sub_47E8B8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4BE097:
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4BE0AE
mov     eax, 622h
call    sub_47E888
test    eax, eax
jz      short loc_4BE0B2

loc_4BE0AE:
mov     byte ptr [ecx+8], 3

loc_4BE0B2:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4BDF71 endp




sub_4BE0B7 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE13F
mov     eax, 616h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE13F
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE0EB
cmp     al, 1
jz      short loc_4BE113
pop     ecx
pop     ebx
retn

loc_4BE0EB:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE13F
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE132

loc_4BE113:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE13F
mov     eax, 616h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE132:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE13F:
pop     ecx
pop     ebx
retn
sub_4BE0B7 endp




sub_4BE142 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE1CA
mov     eax, 617h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE1CA
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE176
cmp     al, 1
jz      short loc_4BE19E
pop     ecx
pop     ebx
retn

loc_4BE176:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE1CA
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE1BD

loc_4BE19E:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE1CA
mov     eax, 617h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE1BD:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE1CA:
pop     ecx
pop     ebx
retn
sub_4BE142 endp




sub_4BE1CD proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE285
mov     eax, 618h
call    sub_47E888
test    eax, eax
jnz     loc_4BE285
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE205
cmp     al, 1
jz      short loc_4BE259
pop     ecx
pop     ebx
retn

loc_4BE205:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE250
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
cmp     eax, 0FFFFFF3Fh
jnz     short loc_4BE250
mov     dx, [ecx+0Ch]
cmp     dx, 5Ah ; 'Z'
jl      short loc_4BE246
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE278

loc_4BE246:
mov     ebx, edx
inc     ebx
mov     [ecx+0Ch], bx
pop     ecx
pop     ebx
retn

loc_4BE250:
mov     word ptr [ecx+0Ch], 0
pop     ecx
pop     ebx
retn

loc_4BE259:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE285
mov     eax, 618h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE278:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BE285:
pop     ecx
pop     ebx
retn
sub_4BE1CD endp




sub_4BE288 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE30E
mov     eax, 619h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE30E
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE2BC
cmp     al, 1
jz      short loc_4BE2F4
pop     ecx
pop     ebx
retn

loc_4BE2BC:
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE30E
mov     byte ptr [ecx+8], 1
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
mov     eax, 618h
call    sub_47E8B8
mov     eax, 60Bh
call    sub_47E8B8
or      ds:byte_5F8421, 40h
pop     ecx
pop     ebx
retn

loc_4BE2F4:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE30E
mov     eax, 619h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh

loc_4BE30E:
pop     ecx
pop     ebx
retn
sub_4BE288 endp




sub_4BE311 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE3C5
mov     eax, 61Ah
call    sub_47E888
test    eax, eax
jnz     loc_4BE3C5
mov     al, [edx+8]
cmp     al, 1
jb      short loc_4BE34B
jbe     short loc_4BE370
cmp     al, 2
jz      short loc_4BE399
pop     ecx
pop     ebx
retn

loc_4BE34B:
test    al, al
jnz     loc_4BE3C5
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE3C5
mov     byte ptr [ecx+8], 1
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE3B8

loc_4BE370:
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, offset byte_5F8364
call    sub_42C592
cmp     edx, eax
jnz     short loc_4BE3C5
mov     byte ptr [ecx+8], 2
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BE399:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE3C5
mov     eax, 61Ah
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE3B8:
mov     eax, 256h
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BE3C5:
pop     ecx
pop     ebx
retn
sub_4BE311 endp




sub_4BE3C8 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE472
mov     eax, 61Bh
call    sub_47E888
test    eax, eax
jnz     loc_4BE472
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4BE40E
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE472

loc_4BE40E:
mov     al, [ebx+8]
test    al, al
jbe     short loc_4BE41C
cmp     al, 1
jz      short loc_4BE446
pop     ecx
pop     ebx
retn

loc_4BE41C:
mov     edx, ebx
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE472
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
jmp     short loc_4BE465

loc_4BE446:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE472
mov     eax, 61Bh
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE465:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE472:
pop     ecx
pop     ebx
retn
sub_4BE3C8 endp




sub_4BE475 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE53D
mov     eax, 61Ch
call    sub_47E888
test    eax, eax
jnz     loc_4BE53D
mov     esi, offset byte_5F8364
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE4B4
cmp     al, 1
jz      short loc_4BE511
pop     esi
pop     ecx
pop     ebx
retn

loc_4BE4B4:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      loc_4BE53D
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4BE4DF
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4BE53D

loc_4BE4DF:
mov     byte ptr [ebx+8], 1
mov     eax, 61Bh
call    sub_47E888
test    eax, eax
jz      short loc_4BE4F9
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
jmp     short loc_4BE4FE

loc_4BE4F9:
movsx   edx, byte ptr [ebx+1]
inc     edx

loc_4BE4FE:
call    sub_4A0E24
or      byte ptr [esi+0BDh], 40h
mov     edx, 1
jmp     short loc_4BE530

loc_4BE511:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE53D
mov     eax, 61Ch
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2

loc_4BE530:
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE53D:
pop     esi
pop     ecx
pop     ebx
retn
sub_4BE475 endp




sub_4BE541 proc near
push    ecx
mov     ecx, eax
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE5E3
mov     eax, 61Dh
call    sub_47E888
test    eax, eax
jnz     loc_4BE5E3
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE575
cmp     al, 1
jz      short loc_4BE5B7
pop     ecx
retn

loc_4BE575:
mov     eax, 60Eh
call    sub_47E888
test    eax, eax
jz      short loc_4BE5E3
mov     byte ptr [edx+8], 1
movsx   edx, byte ptr [edx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1
mov     eax, 60Eh
call    sub_47EA91
pop     ecx
retn

loc_4BE5B7:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE5E3
mov     eax, 61Dh
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1

loc_4BE5E3:
pop     ecx
retn
sub_4BE541 endp




sub_4BE5E5 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     eax, 622h
call    sub_47E888
test    eax, eax
jnz     loc_4BE689
mov     eax, 61Eh
call    sub_47E888
test    eax, eax
jnz     loc_4BE689
mov     al, [edx+8]
test    al, al
jbe     short loc_4BE61D
cmp     al, 1
jz      short loc_4BE653
pop     ecx
pop     ebx
retn

loc_4BE61D:
mov     eax, ecx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE689
mov     byte ptr [ebx+8], 1
movsx   edx, byte ptr [ebx+1]
xor     eax, eax
call    sub_4A0E24
or      ds:byte_5F8421, 40h
mov     edx, 1
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1
pop     ecx
pop     ebx
retn

loc_4BE653:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE689
mov     eax, 61Eh
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2
mov     eax, 27Eh
call    sub_4DC979
or      byte ptr [ecx], 1
mov     eax, 622h
call    sub_47E8B8

loc_4BE689:
pop     ecx
pop     ebx
retn
sub_4BE5E5 endp




sub_4BE68C proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 621h
call    sub_47E888
test    eax, eax
jnz     loc_4BE764
mov     al, [edx+8]
cmp     al, 1
jb      short loc_4BE6B8
jbe     short loc_4BE709
cmp     al, 2
jz      loc_4BE738
pop     ecx
pop     ebx
retn

loc_4BE6B8:
test    al, al
jnz     loc_4BE764
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      short loc_4BE6FC
mov     eax, 620h
call    sub_47E888
test    eax, eax
jz      short loc_4BE6FC
mov     byte ptr [ecx+8], 1
or      ds:byte_5F8421, 40h
mov     edx, 1
mov     eax, 256h
call    sub_4DC979
or      byte ptr [ebx], 1
mov     word ptr [ecx+0Ch], 3Ch ; '<'

loc_4BE6FC:
mov     eax, 620h
call    sub_47EA91
pop     ecx
pop     ebx
retn

loc_4BE709:
mov     dx, [edx+0Ch]
dec     edx
mov     [ecx+0Ch], dx
test    dx, dx
jge     short loc_4BE764
mov     byte ptr [ecx+8], 2
mov     edx, 1
mov     eax, 20h ; ' '
call    sub_4DC979
movsx   edx, byte ptr [ecx+1]
xor     eax, eax
call    sub_4A0E24
pop     ecx
pop     ebx
retn

loc_4BE738:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4BE764
mov     eax, 621h
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
mov     edx, 2
mov     eax, 276h
call    sub_4DC979
or      byte ptr [ebx], 1

loc_4BE764:
pop     ecx
pop     ebx
retn
sub_4BE68C endp

jpt_4BE7A3 dd offset loc_4BE7AA ; jump table for switch statement
dd offset loc_4BE7B5
dd offset loc_4BE7EE
dd offset loc_4BE81D
dd offset loc_4BE865



sub_4BE77B proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, 608h
call    sub_47E888
test    eax, eax
jnz     def_4BE7A3      ; jumptable 004BE7A3 default case
mov     al, [edx+8]
cmp     al, 4           ; switch 5 cases
ja      def_4BE7A3      ; jumptable 004BE7A3 default case
and     eax, 0FFh
jmp     jpt_4BE7A3[eax*4] ; switch jump

loc_4BE7AA:             ; jumptable 004BE7A3 case 0
mov     byte ptr [edx+8], 1
or      ds:byte_5F8421, 40h

loc_4BE7B5:             ; jumptable 004BE7A3 case 1
mov     edx, ds:dword_5370BC
cmp     edx, 3Ch ; '<'
jbe     short loc_4BE7E2
mov     edx, ecx
mov     eax, ebx
call    sub_4BE883
test    eax, eax
jz      def_4BE7A3      ; jumptable 004BE7A3 default case
mov     byte ptr [ecx+8], 2
mov     eax, 0Ah

loc_4BE7DA:
call    sub_49E0D7
pop     ecx
pop     ebx
retn

loc_4BE7E2:
lea     ecx, [edx+1]
mov     ds:dword_5370BC, ecx
pop     ecx
pop     ebx
retn

loc_4BE7EE:             ; jumptable 004BE7A3 case 2
cmp     ds:word_6E23D6, 0
jnz     def_4BE7A3      ; jumptable 004BE7A3 default case
mov     byte ptr [edx+8], 3
movsx   edx, byte ptr [edx+1]
xor     eax, eax
call    sub_4A0E24
mov     edx, 5
mov     eax, 2FFh
call    sub_4DC979
pop     ecx
pop     ebx
retn

loc_4BE81D:             ; jumptable 004BE7A3 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4BE7A3 ; jumptable 004BE7A3 default case
mov     byte ptr [ecx+8], 4
mov     dl, byte ptr ds:dword_55BD7C
inc     dl
movsx   eax, dl
mov     eax, ds:dword_53709C[eax*4]
call    sub_42BEB2
call    nullsub_10
mov     ds:byte_5F84D4, dl
mov     edx, 0Ah
mov     eax, 2FFh
call    sub_4DC979
mov     eax, 2
jmp     loc_4BE7DA

loc_4BE865:             ; jumptable 004BE7A3 case 4
cmp     ds:word_6E23D6, 0
jnz     short def_4BE7A3 ; jumptable 004BE7A3 default case
and     ds:byte_5F8421, 0BFh
mov     eax, 608h
call    sub_47E8B8

def_4BE7A3:             ; jumptable 004BE7A3 default case
pop     ecx
pop     ebx
retn
sub_4BE77B endp




sub_4BE883 proc near
push    ebx
push    ecx
movsx   bx, byte ptr [edx+2]
mov     cx, [eax+48h]
sub     ecx, ebx
mov     ebx, ecx
and     ebx, 0FFFFh
xor     ecx, ecx
mov     cx, [edx+4]
cmp     ebx, ecx
jge     short loc_4BE8C4
movsx   bx, byte ptr [edx+3]
mov     ax, [eax+4Ah]
sub     eax, ebx
xor     ecx, ecx
mov     cx, ax
xor     eax, eax
mov     ax, [edx+6]
cmp     ecx, eax
jge     short loc_4BE8C4
mov     eax, 1
pop     ecx
pop     ebx
retn

loc_4BE8C4:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_4BE883 endp




sub_4BE8C9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BE8CF[edx*4]
pop     edx
retn
sub_4BE8C9 endp




sub_4BE8D8 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short loc_4BE8F4
mov     eax, ecx
call    sub_4DE477
pop     edx
pop     ecx
retn

loc_4BE8F4:
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF1AB
mov     dword ptr [ecx+50h], offset unk_808080
cmp     byte ptr [ecx+3], 0
jz      short loc_4BE91C
mov     byte ptr [ecx+8], 5
jmp     short loc_4BE950

loc_4BE91C:
mov     byte ptr [ecx+8], 1
mov     dword ptr [ecx+28h], 0
lea     eax, [ecx+48h]
call    sub_42C443
mov     [ecx+54h], eax
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ecx+3Ch], eax
mov     eax, 40500h
call    sub_4A7AAC
mov     [ecx+40h], eax

loc_4BE950:
mov     eax, 607h
call    sub_47EA91
pop     edx
pop     ecx
retn
sub_4BE8D8 endp




sub_4BE95D proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short loc_4BE997
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 8
lea     edx, [ecx+48h]
mov     eax, 119h
call    sub_4D8BC3
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4BE997:
pop     edx
pop     ecx
retn
sub_4BE95D endp




sub_4BE99A proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4BE9C5
inc     byte ptr [ecx+8]
mov     eax, 1Eh
call    sub_42A701
lea     edx, [ecx+48h]
mov     eax, 118h
call    sub_4D8BC3

loc_4BE9C5:
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, 8
sub     eax, edx
mov     [esp+0Ch+var_C], eax
fild    [esp+0Ch+var_C]
fmul    ds:flt_50A3FC
fstp    dword ptr [ecx+28h]

loc_4BE9E0:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4BE99A endp




sub_4BE9E6 proc near
push    edx
mov     edx, eax
mov     eax, 61Fh
call    sub_47E888
test    eax, eax
jz      short loc_4BEA15
mov     byte ptr [edx+0Bh], 40h ; '@'
inc     byte ptr [edx+8]
mov     eax, 60Ah
call    sub_47E8B8
add     edx, 48h ; 'H'
mov     eax, 119h
call    sub_4D8BC3

loc_4BEA15:
pop     edx
retn
sub_4BE9E6 endp




sub_4BEA17 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4BEA3B
mov     eax, 0Fh
call    sub_4D8E2B
mov     eax, edx
call    sub_4DE477
jmp     short loc_4BE9E0

loc_4BEA3B:
cmp     ah, 10h
jnz     short loc_4BEA54
mov     ecx, [edx+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx

loc_4BEA54:
xor     eax, eax
mov     al, [edx+0Bh]
mov     [esp+0Ch+var_C], eax
fild    word ptr [esp+0Ch+var_C]
fmul    ds:flt_50A400
fstp    dword ptr [edx+28h]
jmp     loc_4BE9E0
sub_4BEA17 endp




sub_4BEA6D proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+46h]
sar     eax, 10h
mov     edx, ds:dword_5F8376
sar     edx, 10h
sub     edx, eax
add     edx, 3Ch ; '<'
cmp     edx, 78h ; 'x'
ja      short loc_4BEADB
mov     edx, [ecx+4Ah]
sar     edx, 10h
mov     eax, ds:dword_5F837A
sar     eax, 10h
sub     eax, edx
add     eax, 3Ch ; '<'
cmp     eax, 78h ; 'x'
ja      short loc_4BEADB
mov     edx, [ecx+48h]
sar     edx, 10h
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, edx
lea     edx, [eax+0Ah]
cmp     edx, 0AAh
ja      short loc_4BEADB
mov     eax, 607h
call    sub_47E8B8
lea     edx, [ecx+48h]
mov     eax, 11Eh
call    sub_4D8BC3
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 10h

loc_4BEADB:
pop     edx
pop     ecx
retn
sub_4BEA6D endp




sub_4BEADE proc near

var_8= dword ptr -8

push    edx
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
dec     ah
mov     [edx+0Bh], ah
jnz     short loc_4BEAF1
inc     byte ptr [edx+8]

loc_4BEAF1:
xor     eax, eax
mov     al, [edx+0Bh]
mov     [esp+8+var_8], eax
fild    word ptr [esp+8+var_8]
fmul    ds:flt_50A404
fstp    dword ptr [edx+28h]
add     esp, 4
pop     edx
retn
sub_4BEADE endp




sub_4BEB0A proc near
inc     byte ptr [eax+8]
sub_4BEB0A endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_89]


; Attributes: thunk

sub_4BEB0E proc near
jmp     sub_4DE477
sub_4BEB0E endp




sub_4BEB13 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BEB19[edx*4]
pop     edx
retn
sub_4BEB13 endp




sub_4BEB22 proc near

var_1C= dword ptr -1Ch

push    ebx             ; int
push    ecx             ; float
push    edx             ; int
push    esi             ; int
push    edi             ; int
push    ebp             ; int
sub     esp, 4
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dl, [ecx+3]
cmp     dl, 80h
jb      short loc_4BEB78
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4BEB58
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4BEB8B

loc_4BEB58:
mov     [esp+1Ch+var_1C], 1
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], 2808080h
mov     dword ptr [ecx+10h], offset unk_5370FC
jmp     short loc_4BEBBE

loc_4BEB78:
test    dl, 1Fh
jz      short loc_4BEB97
mov     eax, 609h

loc_4BEB82:
call    sub_47E888
test    eax, eax
jz      short loc_4BEB9E

loc_4BEB8B:
mov     eax, ecx
call    sub_4DE477
jmp     loc_4BED16

loc_4BEB97:
mov     eax, 608h
jmp     short loc_4BEB82

loc_4BEB9E:
xor     edx, edx
mov     [esp+1Ch+var_1C], edx ; int
mov     byte ptr [ecx+9], 0
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset off_5370F0

loc_4BEBBE:
lea     eax, [ecx+18h]
call    sub_4EF1AB
cmp     byte ptr [ecx+3], 80h
jnb     short loc_4BEBE4
mov     dword ptr [ecx+38h], 3E000000h
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
sub     word ptr [ecx+4Ah], 20h ; ' '

loc_4BEBE4:
lea     edx, [ecx+18h]
mov     al, [ecx+3]
and     al, 60h
and     eax, 0FFh
sar     eax, 5
shl     eax, 0Ah
call    sub_4EF50D
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
xor     esi, esi
mov     ds:dword_55CF9C[eax], esi
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ds:dword_55CFA0[eax], esi
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ds:dword_55CFA4[eax], esi
mov     al, [ecx+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ds:dword_55CFA8[eax], esi
mov     bh, [ecx+3]
cmp     bh, 80h
jb      loc_4BECFC
cmp     bh, 81h
jnz     short loc_4BECB4
mov     [esp+1Ch+var_1C], esi

loc_4BEC5E:
mov     edx, [esp+1Ch+var_1C]
or      edx, 10000h
mov     eax, [ecx+14h]
call    sub_4EDF7C
mov     esi, [esp+1Ch+var_1C]
lea     edi, byte_55CFBC[esi*8]
mov     esi, eax
movsd
movsd
mov     esi, [esp+1Ch+var_1C]
inc     esi
mov     [esp+1Ch+var_1C], esi
cmp     esi, 10h
jb      short loc_4BEC5E
mov     eax, [ecx+14h]
mov     esi, [eax+70h]
mov     esi, [esi+24h]
xor     ebp, ebp
mov     [esp+1Ch+var_1C], ebp

loc_4BEC97:
mov     eax, [esp+1Ch+var_1C]
mov     edx, eax
mov     ax, [esi+eax*8+2]
mov     ds:word_55D03C[edx*2], ax
mov     eax, edx
inc     eax
mov     [esp+1Ch+var_1C], eax
cmp     eax, 19h
jb      short loc_4BEC97

loc_4BECB4:
mov     byte ptr [ecx+8], 5
or      byte ptr [ecx], 40h
mov     byte ptr [ecx+0Ah], 0
test    byte ptr [ecx+3], 4Fh
jz      short loc_4BED04
lea     eax, [ecx+48h]
call    sub_42C443
mov     [ecx+54h], eax
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_6E40B4[eax*4]
mov     [ecx+0Ch], eax
mov     al, [ecx+3]
and     al, 0Fh
and     eax, 0FFh
mov     eax, ds:dword_5370E8[eax*4]
call    sub_4A7AAC
mov     [ecx+3Ch], eax
jmp     short loc_4BED04

loc_4BECFC:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+0Ah], 64h ; 'd'

loc_4BED04:
call    rand_
and     eax, 7
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     [ecx+58h], eax

loc_4BED16:
add     esp, 4

loc_4BED19:
pop     ebp

loc_4BED1A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BEB22 endp




sub_4BED20 proc near

var_22= dword ptr -22h
var_1E= dword ptr -1Eh
var_1A= word ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     al, [eax+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
mov     ecx, ds:dword_55CF9C[eax]
and     ecx, 0FFFFFFh
jz      short loc_4BED4F
mov     dword ptr [ebp+50h], 0FFFFFFh
jmp     short loc_4BED84

loc_4BED4F:
mov     ah, [ebp+9]
dec     ah
mov     [ebp+9], ah
jnz     short loc_4BED7D
call    rand_
and     al, 8
inc     al
add     al, al
mov     [ebp+9], al
mov     dword ptr [ebp+50h], 0FFC080h
lea     edx, [ebp+48h]
mov     eax, 11Ch
call    sub_4D8BC3
jmp     short loc_4BED84

loc_4BED7D:
mov     dword ptr [ebp+50h], offset unk_808080

loc_4BED84:
mov     edx, ds:dword_5F84E8
cmp     ebp, edx
jnz     short loc_4BEDA3
mov     eax, 60Eh
call    sub_47E8B8
xor     ebx, ebx
mov     ds:dword_5F84E8, ebx
mov     [edx+10h], ebx

loc_4BEDA3:
mov     eax, 61Dh
call    sub_47E888
test    eax, eax
jz      short loc_4BEDBC
xor     esi, esi
mov     ds:dword_5F84E8, esi
mov     [ebp+10h], esi

loc_4BEDBC:
xor     eax, eax
mov     al, [ebp+0Ah]
sub     eax, ecx
test    eax, eax
jl      short loc_4BEDDD
mov     al, [ebp+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
test    byte ptr ds:(dword_55CF9C+3)[eax], 20h
jz      short loc_4BEE4B

loc_4BEDDD:
mov     al, [ebp+3]
and     al, 1
movzx   esi, al
shl     esi, 4
mov     edi, esp
lea     esi, dword_55CFA4[esi]
movsd
movsd
cmp     [esp+20h+var_1A], 0
jnz     short loc_4BEE17
mov     edx, [esp+20h+var_1E]
sar     edx, 10h
neg     edx
mov     eax, [esp+20h+var_22]
sar     eax, 10h
call    sub_4EF04B
mov     [ebp+40h], eax
neg     eax
mov     [ebp+40h], eax

loc_4BEE17:
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 10h
mov     dword ptr [ebp+50h], offset unk_808080
lea     edx, [ebp+48h]
mov     eax, 0A2h
call    sub_4D8BC3
test    byte ptr [ebp+3], 1Fh
jz      short loc_4BEE44
mov     eax, 609h

loc_4BEE3D:
call    sub_47E8B8
jmp     short loc_4BEE74

loc_4BEE44:
mov     eax, 608h
jmp     short loc_4BEE3D

loc_4BEE4B:
sub     [ebp+0Ah], cl
mov     al, [ebp+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
xor     edi, edi
mov     ds:dword_55CF9C[eax], edi
test    ecx, ecx
jz      short loc_4BEE74
lea     edx, [ebp+48h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_4BEE74:
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    0
push    offset unk_800000
push    4000000h
sub     word ptr [esp+2Ch+var_1E], 28h ; '('
mov     al, [ebp+3]
and     al, 1
and     eax, 0FFh
shl     eax, 4
add     eax, offset dword_55CF9C
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
lea     eax, [esp+34h+var_22+2]
call    sub_4E01FC
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, ebp
call    sub_432697
add     esp, 8
jmp     loc_4BED19
sub_4BED20 endp




; int __fastcall sub_4BEED6(int, int)
sub_4BEED6 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; float
push    edi             ; int
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF1AB
mov     al, [ecx+3]
and     al, 60h
and     eax, 0FFh
sar     eax, 5
shl     eax, 0Ah
mov     edx, ebx
call    sub_4EF50D
mov     eax, [ecx+40h]
neg     eax
mov     edx, ebx
call    sub_4EF50D
xor     eax, eax
mov     al, [ecx+0Bh]
mov     edx, 10h
sub     edx, eax
mov     eax, edx
shl     edx, 4
imul    eax, edx
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
imul    eax, edx
mov     esi, 1000000h
sub     esi, eax
mov     eax, esi
call    sub_4EF075
call    sub_4EF04B
mov     edx, ebx
call    sub_4EF486
mov     eax, [ecx+40h]
mov     edx, ebx
call    sub_4EF50D
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4BEFE1
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 8
xor     ebx, ebx
jmp     short loc_4BEF85

loc_4BEF7F:
inc     ebx
cmp     ebx, 3
jge     short loc_4BEFE1

loc_4BEF85:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4BEF7F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 2
mov     eax, [ecx+40h]
call    sub_4EF008
mov     esi, ebx
shl     esi, 6
imul    eax, esi
sar     eax, 0Ch
mov     edi, [ecx+46h]
sar     edi, 10h
sub     edi, eax
mov     [edx+1Ch], di
mov     ax, [ecx+4Ah]
sub     eax, 10h
mov     [edx+1Eh], ax
mov     eax, [ecx+40h]
call    sub_4EF003
imul    eax, esi
sar     eax, 0Ch
mov     esi, [ecx+4Ah]
sar     esi, 10h
sub     esi, eax
mov     [edx+20h], si
jmp     short loc_4BEF7F

loc_4BEFE1:
add     esp, 10h
jmp     loc_4BED1A
sub_4BEED6 endp




sub_4BEFE9 proc near
push    edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4BEFF7
inc     byte ptr [eax+8]

loc_4BEFF7:
pop     edx
retn
sub_4BEFE9 endp




sub_4BEFF9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4BF068
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 82h
mov     eax, [ecx+40h]
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
sar     eax, 0Ch
mov     ebx, [ecx+46h]
sar     ebx, 10h
sub     ebx, eax
mov     [edx+48h], bx
mov     ax, [ecx+4Ah]
mov     [edx+4Ah], ax
mov     eax, [ecx+40h]
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
sar     eax, 0Ch
mov     ebx, [ecx+4Ah]
sar     ebx, 10h
sub     ebx, eax
mov     [edx+4Ch], bx

loc_4BF068:
mov     byte ptr [ecx+8], 9
pop     edx
pop     ecx
pop     ebx
retn
sub_4BEFF9 endp




sub_4BF070 proc near

var_24= byte ptr -24h
var_22= byte ptr -22h
var_20= byte ptr -20h
var_1E= byte ptr -1Eh
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
cmp     byte ptr [eax+3], 0A0h
jnz     loc_4BF12C
mov     dl, [ebp+0Ah]
add     dl, 2
mov     [ebp+0Ah], dl
cmp     dl, 40h ; '@'
jb      short loc_4BF097
mov     byte ptr [ebp+0Ah], 0

loc_4BF097:
xor     eax, eax
mov     al, [ebp+0Ah]
mov     [esp+24h+var_1C], eax
xor     ecx, ecx

loc_4BF0A2:
mov     eax, ecx
mov     edi, esp
lea     esi, byte_55CFBC[eax*8]
movsd
movsd
mov     dl, ds:byte_55CFBC[ecx*8]
mov     bl, byte ptr [esp+24h+var_1C]
add     dl, bl
mov     [esp+24h+var_24], dl
mov     dl, ds:byte_55CFBE[ecx*8]
add     dl, bl
mov     [esp+24h+var_22], dl
mov     dl, ds:byte_55CFC0[ecx*8]
add     dl, bl
mov     [esp+24h+var_20], dl
mov     al, ds:byte_55CFC2[ecx*8]
add     al, bl
mov     [esp+24h+var_1E], al
mov     edx, ecx
or      edx, 10000h
mov     eax, [ebp+14h]
mov     ebx, esp
call    sub_4EDFC2
inc     ecx
cmp     ecx, 10h
jb      short loc_4BF0A2
mov     ebx, [ebp+14h]
mov     ebx, [ebx+70h]
mov     ebx, [ebx+24h]
xor     ecx, ecx

loc_4BF109:
mov     dx, ds:word_55D03C[ecx*2]
add     edx, 4
call    rand_
xor     ah, ah
and     al, 7
sub     edx, eax
mov     eax, ecx
mov     [ebx+eax*8+2], dx
inc     ecx
cmp     ecx, 19h
jb      short loc_4BF109

loc_4BF12C:
inc     dword ptr [ebp+58h]
mov     eax, 608h
call    sub_47E888
test    eax, eax
jnz     short loc_4BF14F
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      loc_4BF1C4

loc_4BF14F:
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4BF18C
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      short loc_4BF18C
test    byte ptr [ebp+3], 4Fh
jz      short loc_4BF185
mov     edx, [ebp+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ebp+3Ch]
mov     ds:dword_6E40B4[eax*4], edx

loc_4BF185:
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 8

loc_4BF18C:
call    rand_
and     eax, 1Fh
add     eax, 10h
mov     ecx, eax
shl     ecx, 10h
or      ecx, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, ecx
or      edx, eax
mov     [ebp+50h], edx
cmp     dword ptr [ebp+58h], 1Eh
jbe     short loc_4BF206
test    byte ptr [ebp+3], 40h
jz      short loc_4BF206
lea     edx, [ebp+48h]
mov     eax, 11Bh
jmp     short loc_4BF1FA

loc_4BF1C4:
call    rand_
and     eax, 3Fh
add     eax, 40h ; '@'
mov     ecx, eax
shl     ecx, 10h
or      ecx, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, ecx
or      edx, eax
mov     [ebp+50h], edx
cmp     dword ptr [ebp+58h], 18h
jbe     short loc_4BF206
test    byte ptr [ebp+3], 40h
jz      short loc_4BF206
lea     edx, [ebp+48h]
mov     eax, 11Ah

loc_4BF1FA:
call    sub_4D8BC3
mov     dword ptr [ebp+58h], 0

loc_4BF206:
add     esp, 0Ch
jmp     loc_4BED19
sub_4BF070 endp




sub_4BF20E proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
mov     dl, [eax+0Bh]
mov     ebx, edx
shl     ebx, 3
mov     ecx, edx
shl     ecx, 13h
or      ecx, 2000000h
shl     edx, 0Bh
or      edx, ecx
or      edx, ebx
mov     [eax+50h], edx
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short loc_4BF23E
mov     byte ptr [eax+8], 9

loc_4BF23E:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF20E endp




sub_4BF242 proc near
inc     byte ptr [eax+8]
retn
sub_4BF242 endp



; Attributes: thunk

sub_4BF246 proc near
jmp     sub_4DE477
sub_4BF246 endp




sub_4BF24B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BF251[edx*4]
pop     edx
retn
sub_4BF24B endp




sub_4BF25A proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     eax, [ecx+18h]
call    sub_4EF184
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], 2808080h
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4BF25A endp




sub_4BF28B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
xor     esi, esi
xor     ecx, ecx
mov     ah, [eax+0Ch]
inc     ah
mov     [ebx+0Ch], ah
add     byte ptr [ebx+0Dh], 4
jmp     short loc_4BF2B8

loc_4BF2A3:
add     byte ptr [eax], 4
add     byte ptr [eax+2], 4
add     byte ptr [eax+4], 4
add     byte ptr [eax+6], 4

loc_4BF2B2:
inc     ecx
cmp     ecx, 20h ; ' '
jge     short loc_4BF2EB

loc_4BF2B8:
lea     edx, [ecx+10000h]
mov     eax, [ebx+14h]
call    sub_4EDF7C
mov     edx, eax
test    esi, esi
jnz     short loc_4BF2D5
test    ecx, ecx
jnz     short loc_4BF2A3
cmp     byte ptr [eax], 0A0h
jb      short loc_4BF2A3

loc_4BF2D5:
mov     esi, 1
sub     byte ptr [eax], 1Ch
sub     byte ptr [eax+2], 1Ch
sub     byte ptr [eax+4], 1Ch
sub     byte ptr [eax+6], 1Ch
jmp     short loc_4BF2B2

loc_4BF2EB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF28B endp



; Attributes: thunk

sub_4BF2F0 proc near
jmp     sub_4DE477
sub_4BF2F0 endp




sub_4BF2F5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4BF2FB[edx*4]
pop     edx
retn
sub_4BF2F5 endp

db 90h
jpt_4BF36C dd offset loc_4BF373 ; jump table for switch statement
dd offset loc_4BF3C5
dd offset loc_4BF417
dd offset loc_4BF469



; int __fastcall sub_4BF315(int, int)
sub_4BF315 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]
mov     eax, [ecx+14h]
mov     edx, 10000h
call    sub_4EDF7C
mov     [ecx+54h], eax
mov     al, [ecx+3]
cmp     al, 3           ; switch 4 cases
ja      def_4BF36C      ; jumptable 004BF36C default case
and     eax, 0FFh
jmp     jpt_4BF36C[eax*4] ; switch jump

loc_4BF373:             ; jumptable 004BF36C case 0
mov     edx, [ecx+54h]
mov     dword ptr [edx], 0B7D0B7E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+4], 0A0D0A0E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+0Ch], 0A0FFA0E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+10h], 0B7FFB7E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+18h], 0CFD0CFE7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+1Ch], 0B8D0B8E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+24h], 0B8FFB8E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+28h], 0CFFFCFE8h
pop     edx
pop     ecx
retn

loc_4BF3C5:             ; jumptable 004BF36C case 1
mov     edx, [ecx+54h]
mov     dword ptr [edx], 0E7D0E7E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+4], 0D0D0D0E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+0Ch], 0D0FFD0E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+10h], 0E7FFE7E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+18h], 0FFD0FFE7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+1Ch], 0E8D0E8E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+24h], 0E8FFE8E8h
mov     eax, [ecx+54h]
mov     dword ptr [eax+28h], 0FFFFFFE8h
pop     edx
pop     ecx
retn

loc_4BF417:             ; jumptable 004BF36C case 2
mov     edx, [ecx+54h]
mov     dword ptr [edx], 0A7A0A7B7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+4], 90A090B7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+0Ch], 90CF90B8h
mov     eax, [ecx+54h]
mov     dword ptr [eax+10h], 0A7CFA7B8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+18h], 0BFA0BFB7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+1Ch], 0A8A0A8B7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+24h], 0A8CFA8B8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+28h], 0BFCFBFB8h
pop     edx
pop     ecx
retn

loc_4BF469:             ; jumptable 004BF36C case 3
mov     edx, [ecx+54h]
mov     dword ptr [edx], 87D087E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+4], 70D070E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+0Ch], 70FF70E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+10h], 87FF87E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+18h], 9FD09FE7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+1Ch], 88D088E7h
mov     edx, [ecx+54h]
mov     dword ptr [edx+24h], 88FF88E8h
mov     edx, [ecx+54h]
mov     dword ptr [edx+28h], 9FFF9FE8h

def_4BF36C:             ; jumptable 004BF36C default case
pop     edx
pop     ecx
retn
sub_4BF315 endp




sub_4BF4BB proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 48h ; 'H'
call    sub_42C443
mov     ecx, eax
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     ecx, eax
jnz     short loc_4BF4EC
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jz      short loc_4BF4EC
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Bh], 18h

loc_4BF4EC:
pop     edx
pop     ecx
retn
sub_4BF4BB endp




; int __fastcall sub_4BF4EF(int, int)
sub_4BF4EF proc near

var_14= dword ptr -14h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
sub     esp, 4
mov     esi, eax
cmp     byte ptr [eax+0Bh], 0
jz      short loc_4BF56E
dec     byte ptr [esi+0Bh]
lea     edx, [esi+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [esi+0Bh]
mov     [esp+14h+var_14], eax ; int
fild    word ptr [esp+14h+var_14]
fdiv    ds:flt_50A408
fstp    dword ptr [esi+28h]
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
xor     ecx, ecx

loc_4BF52F:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
mov     eax, [esi+54h]
add     eax, edx
mov     bl, ds:byte_537158[ecx*4]
add     [eax+1], bl
mov     bl, ds:byte_537159[ecx*4]
add     [eax+3], bl
mov     bl, ds:byte_53715A[ecx*4]
add     [eax+5], bl
mov     dl, ds:byte_53715B[ecx*4]
add     [eax+7], dl
inc     ecx
cmp     ecx, 4
jl      short loc_4BF52F
jmp     short loc_4BF571

loc_4BF56E:
inc     byte ptr [esi+8]

loc_4BF571:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF4EF endp




sub_4BF579 proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 48h ; 'H'
call    sub_42C443
mov     ecx, eax
mov     eax, (offset dword_5F8376+2)
call    sub_42C443
cmp     ecx, eax
jnz     short loc_4BF5AA
mov     eax, 7B1h
call    sub_47E888
test    eax, eax
jnz     short loc_4BF5AA
inc     byte ptr [edx+8]
mov     byte ptr [edx+0Bh], 0

loc_4BF5AA:
pop     edx
pop     ecx
sub_4BF579 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_90]



; int __fastcall sub_4BF5AD(int, int)
sub_4BF5AD proc near

var_14= dword ptr -14h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
sub     esp, 4
mov     esi, eax
cmp     byte ptr [eax+0Bh], 18h
jnb     short loc_4BF62F
inc     byte ptr [esi+0Bh]
lea     edx, [esi+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [esi+0Bh]
mov     [esp+14h+var_14], eax ; int
fild    word ptr [esp+14h+var_14]
fdiv    ds:flt_50A40C
fstp    dword ptr [esi+28h]
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
xor     ecx, ecx

loc_4BF5ED:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
mov     eax, [esi+54h]
add     eax, edx
mov     bl, ds:byte_537158[ecx*4]
sub     [eax+1], bl
mov     bl, ds:byte_537159[ecx*4]
sub     [eax+3], bl
mov     bl, ds:byte_53715A[ecx*4]
sub     [eax+5], bl
mov     dl, ds:byte_53715B[ecx*4]
sub     [eax+7], dl
inc     ecx
cmp     ecx, 4
jl      short loc_4BF5ED
jmp     loc_4BF571

loc_4BF62F:
mov     byte ptr [esi+8], 1
jmp     loc_4BF571
sub_4BF5AD endp




sub_4BF638 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 44h
mov     ebx, eax
mov     ah, [eax+8]
test    ah, ah
jnz     short loc_4BF671
or      byte ptr [ebx], 6
mov     [esp+58h+var_18], ah
lea     edx, [esp+58h+var_18]
mov     eax, ebx
call    sub_4DD0F8
mov     word ptr [ebx+0Eh], 800h
mov     word ptr [ebx+10h], 0
mov     dword ptr [ebx+54h], 0FFF00000h
inc     byte ptr [ebx+8]

loc_4BF671:
mov     eax, esp
call    sub_4EF184
mov     eax, [ebx+0Eh]
sar     eax, 10h
mov     edx, esp
call    sub_4EF57E
mov     eax, [ebx+0Ch]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
mov     edx, 200h
mov     [esp+58h+var_20], edx
mov     [esp+58h+var_24], edx
mov     [esp+58h+var_28], edx
lea     edx, [esp+58h+var_28]
mov     eax, esp
call    sub_4EF689
mov     ecx, 0Ch
lea     edi, [ebx+18h]
mov     esi, esp
rep movsd
mov     eax, [ebx+54h]
add     eax, 53A0h
mov     [ebx+54h], eax
mov     edx, eax
sar     edx, 10h
sub     word ptr [ebx+48h], 17h
mov     eax, [ebx+48h]
sar     eax, 10h
add     eax, edx
mov     [ebx+4Ah], ax
sub     word ptr [ebx+4Ch], 34h ; '4'
add     word ptr [ebx+0Eh], 40h ; '@'
sub     word ptr [ebx+10h], 28h ; '('
lea     eax, [ebx+48h]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 1F4h
call    sub_4ED95E
add     esp, 44h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF638 endp




sub_4BF707 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 38h
mov     esi, eax
mov     edi, edx
mov     edx, ecx
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4BF792
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     word ptr [esp+40h+var_10], di ; float
mov     word ptr [esp+40h+var_10+2], bx
mov     word ptr [esp+40h+var_C], dx ; int
mov     eax, esp
call    sub_4EF184
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
lea     ebx, [ecx+48h]
lea     edx, [esp+40h+var_10]
mov     eax, esp
call    sub_4EF2DC
mov     edx, [esi+1Ch]
sar     edx, 10h
mov     eax, [ecx+46h]
sar     eax, 10h
add     eax, edx
mov     [ecx+48h], ax
mov     edx, [esi+20h]
sar     edx, 10h
mov     eax, [ecx+48h]
sar     eax, 10h
add     eax, edx
mov     [ecx+4Ah], ax
mov     edx, [esi+24h]
sar     edx, 10h
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     eax, edx
mov     [ecx+4Ch], ax
mov     dword ptr [ecx+50h], offset unk_808080

loc_4BF792:
add     esp, 38h
pop     edi
pop     esi
retn
sub_4BF707 endp




sub_4BF798 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BF79E[edx*4]
pop     edx
retn
sub_4BF798 endp




sub_4BF7A7 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 200h
mov     [esp+1Ch+var_14], edx
mov     [esp+1Ch+var_18], edx
mov     [esp+1Ch+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF7A7 endp




sub_4BF7F3 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
call    sub_432697
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF7F3 endp




sub_4BF808 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BF80E[edx*4]
pop     edx
retn
sub_4BF808 endp




sub_4BF817 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 0
jz      short loc_4BF87A
or      byte ptr [ecx], 6
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 400h
mov     ds:dword_55D078, edx
mov     ds:dword_55D074, edx
mov     ds:dword_55D070, edx
mov     edx, offset dword_55D070
mov     eax, ebx
call    sub_4EF689
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
xor     edx, edx
mov     ds:word_55D080, dx
mov     byte ptr [ecx+0Eh], 10h
mov     byte ptr [ecx+0Fh], 0
mov     byte ptr [ecx+9], 0
inc     byte ptr [ecx+8]

loc_4BF87A:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF817 endp




sub_4BF87E proc near
push    ebx
push    ecx
push    edx
mov     cl, [eax+9]
cmp     cl, 1
jb      short loc_4BF892
jbe     short loc_4BF8B4
cmp     cl, 2
jz      short loc_4BF8C8
jmp     short loc_4BF8E4

loc_4BF892:
test    cl, cl
jnz     short loc_4BF8E4
mov     cl, [eax+0Eh]
test    cl, cl
jz      short loc_4BF8AE
mov     ch, cl
dec     ch
mov     [eax+0Eh], ch
sub     ds:word_55D080, 40h ; '@'
jmp     short loc_4BF8E4

loc_4BF8AE:
mov     byte ptr [eax+9], 1
jmp     short loc_4BF8E4

loc_4BF8B4:
cmp     byte ptr [eax+0Fh], 0
jz      short loc_4BF8E4
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Eh], 8
mov     byte ptr [eax+0Fh], 0
jmp     short loc_4BF8E4

loc_4BF8C8:
mov     dl, [eax+0Eh]
test    dl, dl
jz      short loc_4BF8E1
mov     bl, dl
dec     bl
mov     [eax+0Eh], bl
add     ds:word_55D080, 80h
jmp     short loc_4BF8E4

loc_4BF8E1:
inc     byte ptr [eax+8]

loc_4BF8E4:
lea     ecx, [eax+18h]
mov     eax, ecx
call    sub_4EF184
mov     eax, dword ptr ds:unk_55D07E
sar     eax, 10h
mov     edx, ecx
call    sub_4EF486
mov     edx, offset dword_55D070
mov     eax, ecx
call    sub_4EF689
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF87E endp



; Attributes: thunk

sub_4BF90D proc near
jmp     sub_4DE477
sub_4BF90D endp

word_4BF912 dw 200h
dd 2 dup(2000000h), 0
dword_4BF920 dd 51530000h, 83575652h, 0C18910ECh
mov     edi, esp
mov     esi, offset word_4BF912
movsd
movsd
movsd
movsd
cmp     byte ptr [eax+8], 0
jnz     short loc_4BF954
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD107
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]

loc_4BF954:
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
cmp     byte ptr [ecx+3], 0
jnz     short loc_4BF981
lea     eax, [ecx+48h]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 140h
call    sub_4ED95E

loc_4BF981:
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_4BF98A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4BF990[edx*4]
pop     edx
retn
sub_4BF98A endp




sub_4BF999 proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+9]
cmp     dl, 1
jb      short loc_4BF9B7
jbe     loc_4BFA85
cmp     dl, 2
jz      loc_4BFA92
pop     edx
pop     ecx
pop     ebx
retn

loc_4BF9B7:
test    dl, dl
jnz     loc_4BFAA8
xor     ecx, ecx
inc     dl
mov     [eax+9], dl
jmp     short loc_4BF9DA

loc_4BF9C8:
mov     edx, ds:dword_55D088
mov     [eax], edx

loc_4BF9D0:
inc     ecx
cmp     ecx, 7
jge     loc_4BFAA8

loc_4BF9DA:
call    sub_4DDF54
test    eax, eax
jz      short loc_4BF9D0
mov     edx, ecx
mov     ds:dword_55D084[ecx*4], eax
shl     edx, 4
add     edx, offset unk_53718C
mov     bl, [edx]
mov     [eax], bl
mov     bl, [edx+1]
mov     [eax+2], bl
mov     bl, [edx+2]
mov     [eax+4], bl
mov     bl, [edx+3]
mov     [eax+3], bl
mov     dword ptr [eax+8], 0
mov     ebx, [edx+4]
mov     [eax+0Ch], ebx
or      byte ptr [eax+0Ch], 10h
mov     bx, [edx+8]
mov     [eax+14h], bx
mov     bx, [edx+0Ah]
mov     [eax+16h], bx
mov     bx, [edx+0Ch]
mov     [eax+18h], bx
mov     ebx, [edx+6]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [edx+8]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [edx+0Ah]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx
mov     word ptr [eax+54h], 0
mov     dx, [edx+0Eh]
mov     [eax+56h], dx
mov     word ptr [eax+58h], 0
add     eax, 3D8h
cmp     ecx, 5
jz      loc_4BF9C8
mov     dword ptr [eax], 0
jmp     loc_4BF9D0

loc_4BFA85:
cmp     byte ptr ds:dword_560BDC, 0
jz      short loc_4BFAA8
inc     dl
jmp     short loc_4BFA9F

loc_4BFA92:
mov     dl, byte ptr ds:dword_560BDC
test    dl, dl
jnz     short loc_4BFAA8
inc     byte ptr [eax+8]

loc_4BFA9F:
mov     [eax+9], dl
mov     word ptr [eax+0Ah], 0

loc_4BFAA8:
pop     edx
pop     ecx
pop     ebx
retn
sub_4BF999 endp




sub_4BFAAC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ah, ah
mov     ds:byte_55D0A3, ah
xor     dl, dl
mov     ds:byte_55D0A2, ah
xor     dh, dh
mov     ds:word_55D0A0, dx
xor     ebx, ebx

loc_4BFACD:
mov     cl, bl
mov     eax, 1
shl     eax, cl
or      ds:word_55D0A0, ax
mov     eax, ds:dword_55D084[ebx*4]
mov     edx, ebx
shl     edx, 4
add     edx, offset unk_5371FC
mov     dword ptr [eax+8], 0
mov     ecx, [edx+4]
mov     [eax+0Ch], ecx
mov     cx, [edx+8]
mov     [eax+14h], cx
mov     cx, [edx+0Ah]
mov     [eax+16h], cx
mov     cx, [edx+0Ch]
mov     [eax+18h], cx
mov     ecx, [edx+6]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [edx+8]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     ecx, [edx+0Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
mov     word ptr [eax+54h], 0
mov     dx, [edx+0Eh]
mov     [eax+56h], dx
mov     word ptr [eax+58h], 0
mov     dword ptr [eax+3D8h], 0
inc     ebx
cmp     ebx, 7
jl      loc_4BFACD
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BFAAC endp




sub_4BFB68 proc near

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
call    sub_4BFE46
mov     [esp+20h+var_20], eax
xor     edx, edx
mov     word ptr [esp+20h+var_1C], dx
jmp     loc_4BFCC2

loc_4BFB87:
or      byte ptr [esi+4], 80h
and     byte ptr [esi+5], 0FEh

loc_4BFB8F:
mov     ch, [edi+0Ch]
test    ch, 2
jz      loc_4BFBFE
mov     al, ch
and     al, 0FDh
mov     [edi+0Ch], al
xor     ebx, ebx
mov     ah, [edx+43h]
cmp     ah, 2
jb      short loc_4BFBCA
cmp     ah, 5
ja      short loc_4BFBCA
test    byte ptr [edx+6], 3
jz      short loc_4BFBCA
mov     eax, 625h
call    sub_47E888
test    eax, eax
jnz     short loc_4BFBCA
mov     ebx, 1

loc_4BFBCA:
mov     eax, 3
jmp     short loc_4BFBD8

loc_4BFBD1:
inc     eax
cmp     ax, 7
jge     short loc_4BFBFE

loc_4BFBD8:
movsx   ecx, ax
mov     edx, 1
shl     edx, cl
mov     ecx, edx
xor     edx, edx
mov     dx, ds:word_55D0A0
test    edx, ecx
jnz     short loc_4BFBD1
movsx   ebx, bx
movsx   edx, ax
mov     eax, edi
call    sub_4BFDA4

loc_4BFBFE:
mov     al, [edi+0Ch]
test    al, 8
jz      short loc_4BFC31
mov     ah, al
and     ah, 0F7h
mov     [edi+0Ch], ah
mov     edx, [esi]
test    edx, edx
jz      short loc_4BFC31
mov     byte ptr [edx+9], 1
lea     esi, [edi+3D8h]
mov     edx, [esi]
mov     dword ptr [esi], 0
lea     esi, [edx+3D8h]
mov     dword ptr [esi], 0

loc_4BFC31:
mov     dl, [edi+0Ch]
test    dl, 4
jz      short loc_4BFC51
mov     dh, dl
and     dh, 0FBh
mov     [edi+0Ch], dh
mov     ecx, [esi]
test    ecx, ecx
jz      short loc_4BFC4B
mov     byte ptr [ecx+9], 2

loc_4BFC4B:
inc     ds:byte_55D0A3

loc_4BFC51:
test    byte ptr [edi+0Ch], 1
jz      short loc_4BFCB2
cmp     byte ptr [edi], 0
jz      short loc_4BFCB2
mov     byte ptr [edi], 0
mov     edx, [esi]
mov     dword ptr [esi], 0
test    edx, edx
jz      short loc_4BFC77
lea     esi, [edx+3D8h]
mov     dword ptr [esi], 0

loc_4BFC77:
cmp     byte ptr [edi+2], 20h ; ' '
jnz     short loc_4BFC83
inc     ds:byte_55D0A2

loc_4BFC83:
cmp     word ptr [esp+20h+var_1C], 3
jl      short loc_4BFC9E
mov     eax, [esp+20h+var_20+2]
sar     eax, 10h
mov     eax, ds:dword_55D084[eax*4]
call    sub_4DE2F6

loc_4BFC9E:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, 1
shl     eax, cl
not     eax
and     ds:word_55D0A0, ax

loc_4BFCB2:
mov     eax, [esp+20h+var_1C]
inc     eax
mov     word ptr [esp+20h+var_1C], ax
cmp     ax, 7
jge     short loc_4BFD25

loc_4BFCC2:
mov     ecx, [esp+20h+var_20+2]
sar     ecx, 10h
mov     eax, 1
shl     eax, cl
xor     edx, edx
mov     dx, ds:word_55D0A0
test    edx, eax
jz      short loc_4BFCB2
mov     edi, [esp+20h+var_20+2]
sar     edi, 10h
mov     edi, ds:dword_55D084[edi*4]
lea     esi, [edi+3D8h]
cmp     byte ptr [edi+2], 23h ; '#'
jnz     loc_4BFC51
mov     edx, esi
mov     ecx, [ebp+0Ch]
sar     ecx, 18h
test    ecx, eax
jz      loc_4BFB87
cmp     word ptr [esp+20h+var_20], 0
jnz     loc_4BFB87
and     word ptr [esi+4], 0FE7Fh
or      byte ptr [esi+5], 1
jmp     loc_4BFB8F

loc_4BFD25:
mov     ah, ds:byte_55D0A2
cmp     ah, 3
jnz     short loc_4BFD42
cmp     ah, ds:byte_55D0A3
jbe     short loc_4BFD42
mov     eax, 627h
call    sub_47E8B8

loc_4BFD42:
cmp     ds:word_55D0A0, 0
jnz     short loc_4BFD53
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+9], 0

loc_4BFD53:
add     esp, 8
pop     ebp

loc_4BFD57:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4BFB68 endp




sub_4BFD5D proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4BFD87
mov     ds:word_77EA80, 7Fh
mov     eax, 10h
call    sub_4D9040
mov     dword ptr [edx+14h], 12Ch
inc     byte ptr [edx+9]
pop     edx
pop     ecx
retn

loc_4BFD87:
mov     ecx, [edx+14h]
dec     ecx
mov     [edx+14h], ecx
jnz     short loc_4BFDA1
mov     eax, 628h
call    sub_47E8B8
mov     eax, edx
call    sub_4DE477

loc_4BFDA1:
pop     edx
pop     ecx
retn
sub_4BFD5D endp




sub_4BFDA4 proc near
push    ecx
push    esi
push    edi
mov     esi, eax
call    sub_4DDF54
test    eax, eax
jz      loc_4BFE42
mov     cl, dl
mov     edi, 1
shl     edi, cl
mov     ecx, edi
or      ds:word_55D0A0, cx
movsx   ecx, dx
mov     ds:dword_55D084[ecx*4], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 20h ; ' '
mov     byte ptr [eax+4], 0
mov     [eax+3], bl
mov     byte ptr [eax+0Ch], 2
sub     dl, 3
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 1
lea     edx, [eax+3D8h]
mov     [edx], esi
lea     edx, [esi+3D8h]
mov     [edx], eax
mov     dx, [esi+14h]
mov     [eax+14h], dx
mov     dx, [esi+16h]
mov     [eax+16h], dx
mov     dx, [esi+18h]
mov     [eax+18h], dx
mov     edx, [esi+1Ch]
mov     [eax+1Ch], edx
mov     edx, [esi+20h]
mov     [eax+20h], edx
mov     edx, [esi+24h]
mov     [eax+24h], edx
mov     dx, [esi+56h]
mov     [eax+56h], dx
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx

loc_4BFE42:
pop     edi
pop     esi
pop     ecx
retn
sub_4BFDA4 endp




sub_4BFE46 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 14h
mov     ebx, eax
mov     byte ptr [eax+0Fh], 0
xor     edx, edx
mov     [esp+28h+var_18], edx
mov     [esp+28h+var_1C], edx
xor     esi, esi
xor     eax, eax
jmp     short loc_4BFE86

loc_4BFE64:
mov     ecx, [ecx+80h]
mov     [esp+edx+28h+var_28], ecx
mov     [esp+28h+var_18], 1
jmp     short loc_4BFE7F

loc_4BFE77:
movsx   edx, ax
xor     ecx, ecx
mov     [esp+edx*4+28h+var_28], ecx

loc_4BFE7F:
inc     eax
cmp     ax, 3
jge     short loc_4BFECC

loc_4BFE86:
movsx   ecx, ax
mov     edx, 1
shl     edx, cl
xor     ecx, ecx
mov     cx, ds:word_55D0A0
test    ecx, edx
jz      short loc_4BFE77
movsx   edx, ax
shl     edx, 2
mov     ecx, ds:dword_55D084[edx]
lea     edi, [ecx+3D8h]
test    byte ptr [edi+5], 4
jz      short loc_4BFE64
mov     cl, al
mov     ch, 1
shl     ch, cl
mov     cl, ch
or      [ebx+0Fh], cl
xor     edi, edi
mov     [esp+edx+28h+var_28], edi
inc     esi
inc     [esp+28h+var_1C]
jmp     short loc_4BFE7F

loc_4BFECC:
cmp     word ptr [esp+28h+var_1C], 2
jge     loc_4BFF7A
mov     eax, 3
jmp     short loc_4BFEE6

loc_4BFEDF:
inc     eax
cmp     ax, 7
jge     short loc_4BFF16

loc_4BFEE6:
movsx   ecx, ax
mov     edx, 1
shl     edx, cl
xor     ecx, ecx
mov     cx, ds:word_55D0A0
test    ecx, edx
jz      short loc_4BFEDF
movsx   ecx, ax
mov     ecx, ds:dword_55D084[ecx*4]
cmp     byte ptr [ecx+8], 4
jnz     short loc_4BFF13
cmp     byte ptr [ecx+9], 0
jz      short loc_4BFEDF

loc_4BFF13:
inc     esi
jmp     short loc_4BFEDF

loc_4BFF16:
cmp     si, 4
jge     short loc_4BFF7A
cmp     si, 3
jnz     short loc_4BFF4E
mov     eax, [esp+28h+var_28]
cmp     eax, [esp+28h+var_24]
jbe     short loc_4BFF2F
xor     ecx, ecx
jmp     short loc_4BFF34

loc_4BFF2F:
mov     ecx, 1

loc_4BFF34:
movsx   eax, cx
mov     eax, [esp+eax*4+28h+var_28]
cmp     eax, [esp+28h+var_20]
jnb     short loc_4BFF45
mov     ecx, 2

loc_4BFF45:
mov     al, 1
shl     al, cl
or      [ebx+0Fh], al
jmp     short loc_4BFF7A

loc_4BFF4E:
mov     eax, [esp+28h+var_28]
cmp     eax, [esp+28h+var_24]
jnb     short loc_4BFF5B
xor     ecx, ecx
jmp     short loc_4BFF60

loc_4BFF5B:
mov     ecx, 1

loc_4BFF60:
movsx   eax, cx
mov     eax, [esp+eax*4+28h+var_28]
cmp     eax, [esp+28h+var_20]
jbe     short loc_4BFF71
mov     ecx, 2

loc_4BFF71:
mov     al, 1
shl     al, cl
xor     al, 7
mov     [ebx+0Fh], al

loc_4BFF7A:
cmp     word ptr [esp+28h+var_18], 0
jz      short loc_4BFF89
call    sub_436708
jmp     short loc_4BFF8E

loc_4BFF89:
call    sub_436710

loc_4BFF8E:
cmp     ds:byte_55D0A2, 12h
jb      short loc_4BFF9E
mov     eax, 1
jmp     short loc_4BFFA0

loc_4BFF9E:
xor     eax, eax

loc_4BFFA0:
add     esp, 14h
jmp     loc_4BFD57
sub_4BFE46 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_91]
align 4
jpt_4BFFD4 dd offset loc_4BFFDB ; jump table for switch statement
dd offset loc_4BFFF2
dd offset loc_4C000D
dd offset loc_4C001C
dd offset loc_4C0035



sub_4BFFC0 proc near
push    ebx
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_4BFFD4      ; jumptable 004BFFD4 default case
and     edx, 0FFh
jmp     jpt_4BFFD4[edx*4] ; switch jump

loc_4BFFDB:             ; jumptable 004BFFD4 case 0
mov     word ptr [eax+54h], 0
mov     dx, [eax+54h]
mov     [eax+0Ch], dx
mov     word ptr [eax+0Eh], 0C00h
inc     byte ptr [eax+0Ah]

loc_4BFFF2:             ; jumptable 004BFFD4 case 1
mov     bx, [eax+54h]
add     ebx, 40h ; '@'
mov     [eax+54h], bx
cmp     bx, 0C0h
jl      short def_4BFFD4 ; jumptable 004BFFD4 default case
inc     byte ptr [eax+0Ah]

loc_4C0007:
mov     byte ptr [eax+0Bh], 5
jmp     short def_4BFFD4 ; jumptable 004BFFD4 default case

loc_4C000D:             ; jumptable 004BFFD4 case 2
mov     bl, [eax+0Bh]
dec     bl
mov     [eax+0Bh], bl
jnz     short def_4BFFD4 ; jumptable 004BFFD4 default case
inc     byte ptr [eax+0Ah]
jmp     short def_4BFFD4 ; jumptable 004BFFD4 default case

loc_4C001C:             ; jumptable 004BFFD4 case 3
sub     word ptr [eax+54h], 40h ; '@'
mov     edx, [eax+52h]
sar     edx, 10h
cmp     edx, 0FFFFFF40h
jg      short def_4BFFD4 ; jumptable 004BFFD4 default case
mov     byte ptr [eax+0Ah], 0
jmp     short loc_4C0007

loc_4C0035:             ; jumptable 004BFFD4 case 4
mov     dl, [eax+0Bh]
dec     dl
mov     [eax+0Bh], dl
jnz     short def_4BFFD4 ; jumptable 004BFFD4 default case
mov     byte ptr [eax+0Ah], 1

def_4BFFD4:             ; jumptable 004BFFD4 default case
add     word ptr [eax+48h], 5
inc     word ptr [eax+4Ah]
cmp     word ptr [eax+48h], 180h
jle     short loc_4C0058
mov     byte ptr [eax+9], 0

loc_4C0058:
pop     edx
pop     ebx
retn
sub_4BFFC0 endp




sub_4C005B proc near
add     word ptr [eax+0Ch], 18h
add     word ptr [eax+0Eh], 14h
retn
sub_4C005B endp




sub_4C0066 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4Ch
mov     ecx, eax
mov     ah, [eax+8]
test    ah, ah
jnz     short loc_4C00B3
or      byte ptr [ecx], 6
mov     [esp+60h+var_18], ah
lea     edx, [esp+60h+var_18]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ecx+10h], 0
mov     dword ptr [ecx+50h], offset unk_808080
mov     word ptr [ecx+0Ch], 0
mov     word ptr [ecx+0Eh], 0C00h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0
inc     byte ptr [ecx+8]
jmp     short loc_4C00C1

loc_4C00B3:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_4C00BA[edx*4]

loc_4C00C1:
lea     eax, [ecx+18h]
call    sub_4EF184
cmp     byte ptr [ecx+9], 2
jnz     short loc_4C00E2
mov     edi, 100h
mov     [esp+60h+var_28], edi
mov     [esp+60h+var_2C], edi
mov     [esp+60h+var_30], edi
jmp     short loc_4C00F3

loc_4C00E2:
mov     edx, 200h
mov     [esp+60h+var_28], edx
mov     [esp+60h+var_2C], edx
mov     [esp+60h+var_30], edx

loc_4C00F3:
lea     esi, [ecx+18h]
lea     edx, [esp+60h+var_30]
mov     eax, esi
call    sub_4EF689
mov     ax, [ecx+0Ch]
mov     [esp+60h+var_20], ax
mov     ax, [ecx+0Eh]
mov     [esp+60h+var_1E], ax
mov     ax, [ecx+54h]
mov     [esp+60h+var_1C], ax
mov     eax, esp
call    sub_4EF184
mov     edx, esp
lea     eax, [esp+60h+var_20]
call    sub_4EF5F7
mov     ebx, esi
mov     edx, esp
mov     eax, esi
call    sub_4EF388
add     esp, 4Ch
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0066 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_92]



sub_4C0143 proc near
push    edx
add     word ptr [eax+48h], 2
dec     word ptr [eax+4Ah]
mov     edx, [eax+48h]
sar     edx, 10h
cmp     edx, 0FFFFFF9Ch
jnz     short loc_4C015B
inc     byte ptr [eax+9]

loc_4C015B:
pop     edx
sub_4C0143 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_93]



sub_4C015D proc near
push    ebx
sub     word ptr [eax+48h], 2
mov     bx, [eax+4Ah]
inc     bx
mov     [eax+4Ah], bx
jnz     short loc_4C0173
mov     byte ptr [eax+9], 0

loc_4C0173:
pop     ebx
retn
sub_4C015D endp




sub_4C0175 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C017B[edx*4]
pop     edx
sub_4C0175 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_94]



sub_4C0184 proc near
push    ebx
sub     word ptr [eax+48h], 2
mov     bx, [eax+4Ah]
inc     ebx
mov     [eax+4Ah], bx
cmp     bx, 64h ; 'd'
jnz     short loc_4C019C
inc     byte ptr [eax+9]

loc_4C019C:
pop     ebx
sub_4C0184 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_95]



sub_4C019E proc near
add     word ptr [eax+48h], 2
dec     word ptr [eax+4Ah]
cmp     word ptr [eax+48h], 0
jnz     short locret_4C01B2
mov     byte ptr [eax+9], 0

locret_4C01B2:
retn
sub_4C019E endp




sub_4C01B3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C01B9[edx*4]
pop     edx
retn
sub_4C01B3 endp

; START OF FUNCTION CHUNK FOR sub_4C01C8

loc_4C01C2:
add     word ptr [eax+0Ch], 11h
retn
; END OF FUNCTION CHUNK FOR sub_4C01C8



sub_4C01C8 proc near

; FUNCTION CHUNK AT 004C01C2 SIZE 00000006 BYTES

cmp     byte ptr [eax+9], 0
jnz     short loc_4C01C2
retn
sub_4C01C8 endp




sub_4C01CF proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 40h
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4C01FB
or      byte ptr [ecx], 4
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ecx+10h], 0
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]

loc_4C01FB:
movzx   esi, byte ptr [ecx+3]
mov     eax, ecx
call    ds:funcs_4C0201[esi*4]
lea     esi, [ecx+18h]
mov     eax, esi
call    sub_4EF184
mov     edx, 1000h
mov     [esp+50h+var_18], edx
mov     [esp+50h+var_1C], edx ; int
mov     [esp+50h+var_20], edx ; float
lea     edx, [esp+50h+var_20]
mov     eax, esi
call    sub_4EF689
mov     eax, esp
call    sub_4EF184
mov     eax, [ecx+0Ah]
sar     eax, 10h
mov     edx, esp
call    sub_4EF57E
mov     ebx, esi
mov     edx, esp
mov     eax, esi
call    sub_4EF388
add     esp, 40h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C01CF endp




sub_4C0255 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C025B[edx*4]
pop     edx
retn
sub_4C0255 endp




sub_4C0264 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], 2808080h
mov     dword ptr [ecx+5Ch], 0
cmp     byte ptr [ecx+3], 0
jnz     short loc_4C02BB
xor     edx, edx
jmp     short loc_4C0298

loc_4C0292:
inc     edx
cmp     edx, 7
jnb     short loc_4C02BB

loc_4C0298:
call    sub_4DE13B
test    eax, eax
jz      short loc_4C0292
mov     ds:dword_55D0A4[edx*4], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 18h
mov     byte ptr [eax+3], 0
mov     bl, [ecx+1]
mov     [eax+0Ch], bl
jmp     short loc_4C0292

