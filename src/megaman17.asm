test    byte ptr ds:word_77EAB6, 1
jz      short loc_427FC6
call    sub_4DE043
test    eax, eax
jz      short loc_427FC6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 0
mov     esi, [esp+1Ch+var_1C]
mov     esi, [esi+0D0h]
lea     edi, [eax+14h]
lea     esi, [esi+48h]
movsd
movsd

loc_427FC6:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0A4h]
movsx   ax, ds:byte_510EF4[eax]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0CCh], 5Ah ; 'Z'
jle     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4DE043
test    eax, eax
jz      short loc_42805A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FCh
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 3E8h
mov     byte ptr [eax+0Bh], 1Eh
mov     byte ptr [eax+0Ah], 0

loc_42805A:
xor     ebx, ebx
xor     edx, edx
mov     eax, 20Ch
call    sub_4D89E4
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 9

loc_42807B:
mov     byte ptr [eax+9Bh], 0

loc_428082:
inc     byte ptr [ebp+0Ah]
jmp     loc_426B3B      ; jumptable 00426A1D case 8

loc_42808A:             ; jumptable 00427C6C case 3
mov     ch, [ebp+0A4h]
cmp     ch, 8
jnb     loc_42811A
mov     edx, [ebp+1E6h]
sar     edx, 10h
mov     eax, [ebp+206h]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+48h], dx
mov     eax, [ebp+1E8h]
sar     eax, 10h
mov     edx, [ebp+208h]
sar     edx, 10h
add     eax, edx
sar     eax, 1
sub     eax, 64h ; 'd'
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ah], dx
mov     edx, [ebp+1EAh]
sar     edx, 10h
mov     eax, [ebp+20Ah]
sar     eax, 10h
add     eax, edx
sar     eax, 1
mov     edx, eax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
mov     [eax+4Ch], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
sub     byte ptr [eax+0Dh], 10h
jmp     short loc_42812A

loc_42811A:
jnz     short loc_42812A
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0D0h]
call    sub_4DE3EA

loc_42812A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Ah
jmp     loc_42807B

loc_428176:             ; jumptable 00427C6C cases 4,6,8,11,13
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
sub     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Ch
mov     byte ptr [eax+9Bh], 0
lea     ecx, [ebp+208h]
jmp     short loc_428228

loc_4281CF:             ; jumptable 00427C6C cases 5,7,9,12
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
call    sub_4288D8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Bh

loc_42821B:
mov     byte ptr [eax+9Bh], 0
lea     ecx, [ebp+1E8h]

loc_428228:
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B
jmp     loc_428082

loc_428241:             ; jumptable 00427C6C case 14
mov     ebx, [ebp+54h]
sar     ebx, 10h
and     ebx, 0FFFh
lea     eax, [ebp+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     eax, 40h ; '@'
add     [ebp+56h], ax
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0Eh
jmp     short loc_42821B

loc_42828A:             ; jumptable 00427C6C case 15
cmp     byte ptr [ebp+0A7h], 0
jge     loc_426B3B      ; jumptable 00426A1D case 8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+98h], 1
mov     byte ptr [eax+9Ah], 0
jmp     loc_42807B

loc_4282AF:             ; jumptable 00427C6C case 16
mov     edx, 0FFFFFFFBh
mov     eax, ebp
call    sub_428875
test    eax, eax
jz      loc_426B3B      ; jumptable 00426A1D case 8
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0
jmp     loc_426B3B      ; jumptable 00426A1D case 8
sub_427C4D endp




sub_4282D4 proc near
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
retn
sub_4282D4 endp




sub_4282E5 proc near
push    ebx
push    ecx
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
cmp     edx, 538h
jge     short loc_428349
cmp     eax, 538h
jge     short loc_428349
cmp     edx, 0FFFFFAC8h
jle     short loc_428349
cmp     eax, 0FFFFFAC8h
jle     short loc_428349
lea     ecx, [edx+8E5h]
cmp     eax, ecx
jge     short loc_428349
mov     ecx, edx
neg     ecx
lea     ebx, [ecx+8E5h]
cmp     eax, ebx
jge     short loc_428349
sub     edx, 8E5h
cmp     eax, edx
jle     short loc_428349
sub     ecx, 8E5h
cmp     eax, ecx
jle     short loc_428349
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_428349:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4282E5 endp




sub_42834F proc near
push    ebx
push    ecx
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
cmp     edx, 59Ch
jge     short loc_4283B3
cmp     eax, 59Ch
jge     short loc_4283B3
cmp     edx, 0FFFFFA64h
jle     short loc_4283B3
cmp     eax, 0FFFFFA64h
jle     short loc_4283B3
lea     ecx, [edx+973h]
cmp     eax, ecx
jge     short loc_4283B3
mov     ecx, edx
neg     ecx
lea     ebx, [ecx+973h]
cmp     eax, ebx
jge     short loc_4283B3
sub     edx, 973h
cmp     eax, edx
jle     short loc_4283B3
sub     ecx, 973h
cmp     eax, ecx
jle     short loc_4283B3
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4283B3:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_42834F endp




sub_4283B9 proc near
push    edx
movsx   edx, word ptr [eax]
mov     eax, [eax+2]
sar     eax, 10h
sub     eax, 400h
imul    edx, edx
imul    eax, eax
add     edx, eax
cmp     edx, 0C5C10h
jge     short loc_4283DF
mov     eax, 1
pop     edx
retn

loc_4283DF:
xor     eax, eax
pop     edx
retn
sub_4283B9 endp




sub_4283E3 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     esi, eax
mov     [esp+24h+var_18], edx
lea     ebp, [eax+550h]
xor     edi, edi

loc_4283F9:
mov     ecx, edi
shl     ecx, 3
mov     edx, offset unk_510F2C
add     edx, ecx
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
mov     [esp+24h+var_1C], eax
shl     eax, 2
sub     eax, [esp+24h+var_1C]
shl     eax, 4
mov     [esp+24h+var_1C], eax
lea     eax, [esi+250h]
add     eax, [esp+24h+var_1C]
mov     ebx, esp
call    sub_4EF2DC
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
shl     eax, 3
lea     edx, [esi+eax]
mov     ax, [edx+190h]
add     [esp+24h+var_24], ax
mov     ax, [edx+192h]
add     [esp+24h+var_22], ax
mov     ax, [edx+194h]
add     [esp+24h+var_20], ax
push    0
push    0
mov     eax, [ebp+0E0h]
shl     eax, 4
mov     edx, [esp+2Ch+var_18]
mov     ebx, ds:dword_510FBC[eax+edx*4]
push    ebx
lea     eax, [ebp+8]
add     eax, ecx
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dl, ds:byte_510F32[ecx]
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
inc     edi
cmp     edi, 8
jl      loc_4283F9
mov     edi, 8

loc_4284AD:
mov     ecx, edi
shl     ecx, 3
mov     eax, offset unk_510F2C
add     eax, ecx
mov     [esp+24h+var_1C], eax
xor     edx, edx
mov     dl, ds:byte_510F33[ecx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 4
lea     eax, [esi+250h]
add     eax, edx
mov     ebx, esp
mov     edx, [esp+24h+var_1C]
call    sub_4EF2DC
xor     eax, eax
mov     al, ds:byte_510F33[ecx]
shl     eax, 3
lea     edx, [esi+eax]
mov     ax, [edx+190h]
add     [esp+24h+var_24], ax
mov     ax, [edx+192h]
add     [esp+24h+var_22], ax
mov     ax, [edx+194h]
add     [esp+24h+var_20], ax
push    80h
push    0
mov     eax, [ebp+0E0h]
shl     eax, 4
mov     edx, [esp+2Ch+var_18]
mov     ebx, ds:dword_510FDC[eax+edx*4]
push    ebx
lea     eax, [ebp+8]
add     eax, ecx
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     edx, edx
mov     dl, ds:byte_510F32[ecx]
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
inc     edi
cmp     edi, 12h
jl      loc_4284AD
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4283E3 endp




sub_428568 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     ax, [eax+6Eh]
mov     [ebx+0B2h], ax
xor     eax, eax
jmp     short loc_42858A

loc_428584:
inc     eax
cmp     eax, 12h
jge     short loc_428598

loc_42858A:
mov     edx, eax
mov     esi, [ecx+edx*8+8]
and     esi, 0FFFFFFh
jz      short loc_428584

loc_428598:
xor     eax, eax

loc_42859A:
mov     edx, eax
mov     dword ptr [ecx+edx*8+8], 0
inc     eax
cmp     eax, 12h
jl      short loc_42859A
mov     eax, [ebx+6Ch]
sar     eax, 10h
cmp     esi, eax
jle     short loc_4285EA
cmp     ds:word_5F83D2, 0
jl      short loc_4285E2
mov     ds:byte_5F88AD, 1
mov     word ptr [ebx+6Eh], 0
mov     word ptr [ecx+98h], 0FFFFh
mov     byte ptr [ebx+9], 7
mov     byte ptr [ebx+0Ah], 0
mov     byte ptr [ebx+0Bh], 0
jmp     short loc_428613

loc_4285E2:
mov     word ptr [ebx+6Eh], 0
jmp     short loc_428613

loc_4285EA:
test    esi, esi
jz      short loc_42860A
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
sub     [ebx+6Eh], si
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_428613

loc_42860A:
mov     word ptr [ebx+15Eh], 4210h

loc_428613:
mov     eax, [ebx+6Ch]
sar     eax, 10h
mov     edx, [ebx+0B0h]
sar     edx, 10h
cmp     eax, edx
jz      loc_426B3F
mov     esi, [ebx+0AEh]
sar     esi, 10h
sar     esi, 6
mov     edx, esi
shl     edx, 2
sub     edx, esi
add     edx, edx
cmp     eax, edx
jg      short loc_428669
mov     al, [ecx+0DCh]
test    al, 1
jnz     loc_426B3F
mov     ah, al
or      ah, 1
mov     [ecx+0DCh], ah
lea     edx, [ebx+14h]
mov     eax, 204h
jmp     loc_42886B

loc_428669:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 2
cmp     eax, edx
jg      short loc_4286A4
mov     eax, [ecx+0DCh]
shr     eax, 1
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 2
call    rand_
test    al, 1
jz      short loc_428703

loc_428697:
lea     edx, [ebx+14h]

loc_42869A:
mov     eax, 1FAh
jmp     loc_42886B

loc_4286A4:
mov     edx, esi
shl     edx, 4
cmp     eax, edx
jg      short loc_4286D2
mov     eax, [ecx+0DCh]
shr     eax, 2
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 4
lea     edx, [ebx+14h]
mov     eax, 203h
jmp     loc_42886B

loc_4286D2:
mov     edx, esi
shl     edx, 2
add     edx, esi
shl     edx, 2
sub     edx, esi
cmp     eax, edx
jg      short loc_42870B
mov     eax, [ecx+0DCh]
shr     eax, 3
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 8

loc_4286FA:
call    rand_
test    al, 1
jnz     short loc_428697

loc_428703:
lea     edx, [ebx+14h]
jmp     loc_42879A

loc_42870B:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 3
add     edx, esi
cmp     eax, edx
jg      short loc_428735
mov     eax, [ecx+0DCh]
shr     eax, 4
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 10h
jmp     short loc_4286FA

loc_428735:
mov     edi, esi
shl     edi, 5
lea     edx, [ebx+14h]
cmp     eax, edi
jg      short loc_428763
mov     eax, [ecx+0DCh]
shr     eax, 5
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 20h
mov     eax, 202h
jmp     loc_42886B

loc_428763:
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
shl     ebx, 2
sub     ebx, esi
add     ebx, ebx
cmp     eax, ebx
jg      short loc_4287A4
mov     eax, [ecx+0DCh]
shr     eax, 6
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 40h

loc_42878D:
call    rand_
test    al, 1
jnz     loc_42869A

loc_42879A:
mov     eax, 1FBh
jmp     loc_42886B

loc_4287A4:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 2
cmp     eax, ebx
jg      short loc_4287D1
mov     eax, [ecx+0DCh]
shr     eax, 7
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DCh], 80h
jmp     short loc_42878D

loc_4287D1:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 4
cmp     eax, ebx
jg      short loc_4287FE
mov     eax, [ecx+0DCh]
shr     eax, 8
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DDh], 1
mov     eax, 201h
jmp     short loc_42886B

loc_4287FE:
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
mov     edi, ebx
shl     ebx, 4
add     ebx, edi
cmp     eax, ebx
jg      short loc_42882D
mov     eax, [ecx+0DCh]
shr     eax, 9
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DDh], 2
jmp     loc_42878D

loc_42882D:
mov     ebx, esi
shl     ebx, 3
sub     ebx, esi
shl     ebx, 3
add     ebx, esi
cmp     eax, ebx
jg      loc_426B3F
mov     eax, [ecx+0DCh]
shr     eax, 0Ah
test    al, 1
jnz     loc_426B3F
or      byte ptr [ecx+0DDh], 4
call    rand_
test    al, 1
jnz     loc_42869A
mov     eax, 1FBh

loc_42886B:
call    sub_4D8BC3
jmp     loc_426B3F
sub_428568 endp




sub_428875 proc near
push    ecx
mov     ecx, edx
xor     edx, edx
add     [eax+16h], cx
mov     ecx, [eax+14h]
sar     ecx, 10h
cmp     ecx, 0FFFFFFCDh
jg      short loc_428894
mov     word ptr [eax+16h], 0FFCDh

loc_42888F:
mov     edx, 1

loc_428894:
mov     ecx, [eax+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+1Ch], ecx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
mov     eax, edx
pop     ecx
retn
sub_428875 endp

push    ecx
mov     ecx, edx
xor     edx, edx
add     [eax+16h], cx
mov     ecx, [eax+14h]
sar     ecx, 10h
cmp     ecx, 0FFFFFFFFh
jl      short loc_428894
mov     word ptr [eax+16h], 0FFFFh
jmp     short loc_42888F



sub_4288D8 proc near
push    esi
push    edi
call    sub_4DE043
test    eax, eax
jz      short loc_4288FE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 32h ; '2'
mov     byte ptr [eax+3], 1
lea     edi, [eax+14h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
sub     word ptr [eax+16h], 3E8h

loc_4288FE:
pop     edi
pop     esi
retn
sub_4288D8 endp




sub_428901 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
call    sub_4DDFD0
mov     ebp, eax
test    eax, eax
jz      loc_426B3E      ; jumptable 00427ADF cases 5-8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     byte ptr [eax+4], 0
mov     ah, [eax+6]
or      ah, 20h
mov     [ebp+6], ah
mov     word ptr [ebp+14h], 0
mov     word ptr [ebp+16h], 0FFCDh
mov     word ptr [ebp+18h], 400h
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     word ptr [ebp+58h], 0
mov     ax, [ebp+58h]
mov     [ebp+56h], ax
mov     [ebp+54h], ax
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
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
call    sub_436868
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 8
mov     [ebp+6Eh], ax
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
push    offset unk_806468
mov     ecx, 81h
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_436785
call    sub_436708
mov     eax, ebp
jmp     loc_426B3E      ; jumptable 00427ADF cases 5-8
sub_428901 endp




sub_4289EC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_428A02
cmp     al, 1
jz      short loc_428A5D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428A02:
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
mov     dword ptr [esi+78h], 0
xor     ebx, ebx
mov     edx, 14h
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     byte ptr [esi+0Eh], 0
mov     byte ptr [esi+0Fh], 0
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428A5D:
cmp     word ptr [esi+44h], 0
jz      short loc_428A75
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_428A75:
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_428A87
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428A87:
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4289EC endp




sub_428A9F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_428AA5[edx*4]
pop     edx
retn
sub_428A9F endp




sub_428AAE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 800h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
mov     eax, ecx
call    sub_42C592
mov     [ecx+20h], eax
sar     eax, 10h
mov     [ecx+16h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
call    sub_436708
mov     dword ptr [ecx+78h], offset unk_511008
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ebx], 0
mov     word ptr [ebx+90h], 0
mov     word ptr [ebx+92h], 0
xor     eax, eax

loc_428B88:
mov     edx, eax
mov     dword ptr [ebx+edx*8+3Ch], 0
mov     dword ptr [ebx+edx*8+40h], 0
mov     dword ptr [ebx+edx*4+6Ch], 0
inc     eax
cmp     eax, 6
jb      short loc_428B88
mov     word ptr [ebx+88h], 72h ; 'r'
mov     word ptr [ebx+8Ah], 0
mov     word ptr [ebx+4], 0FF00h
mov     word ptr [ebx+8], 0E900h
mov     word ptr [ebx+6], 0FFFFh
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_428AAE endp




sub_428BEB proc near
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     word ptr [ebp+15Eh], 4210h
mov     eax, ebp
call    sub_428CD7
mov     word ptr [ecx+8Ch], 0
xor     eax, eax
jmp     short loc_428C48

loc_428C42:
inc     eax
cmp     eax, 6
jnb     short loc_428C60

loc_428C48:
mov     ebx, [ebp+80h]
cmp     ebx, ds:dword_511030[eax*4]
jb      short loc_428C42
inc     word ptr [ecx+8Ch]
jmp     short loc_428C42

loc_428C60:
lea     edx, [ecx+4]
lea     eax, [ebp+14h]
call    sub_4DD685
mov     [ecx+84h], eax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_428C78[edx*4]
cmp     byte ptr [ebp+8], 2
jz      short loc_428CD0
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_428CA2
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_428CA9

loc_428CA2:
mov     eax, ebp
call    sub_4DEADD

loc_428CA9:
mov     eax, ebp
call    sub_428ED6
mov     eax, ebp
call    sub_428E05
test    byte ptr [ebp+0], 2
jz      short loc_428CD0
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 138h
mov     eax, ebp
call    sub_4ED88B

loc_428CD0:
pop     ebp

loc_428CD1:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_428BEB endp




sub_428CD7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     word ptr [esi+8Eh], 0
test    byte ptr ds:word_77EAB6, 3
jnz     short loc_428D0B
mov     dx, [ecx+0B2h]
test    dx, dx
jz      short loc_428D0B
mov     ebx, edx
dec     ebx
mov     [ecx+0B2h], bx

loc_428D0B:
xor     ebx, ebx
mov     eax, 1

loc_428D12:
mov     edx, eax
mov     edx, [esi+edx*8+3Ch]
and     edx, 0FFFFFFh
or      ebx, edx
inc     eax
cmp     eax, 5
jle     short loc_428D12
lea     edx, [ecx+14h]
test    ebx, ebx
jz      short loc_428D3C

loc_428D2D:
mov     eax, 0A3h
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428D3C:
mov     ebx, [esi+3Ch]
and     ebx, 0FFFFFFh
jz      loc_428E00
cmp     word ptr [esi+90h], 0
jnz     short loc_428D2D
sub     [ecx+6Eh], bx
add     [ecx+0B2h], bx
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_428D8E
mov     word ptr [ecx+6Eh], 0
mov     word ptr [esi+8Eh], 0FFFFh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_428D8E:
cmp     word ptr [esi+92h], 0
jnz     short loc_428DD4
mov     edx, [ecx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+6Ch]
sar     edx, 10h
cmp     edx, eax
jg      short loc_428DD4
mov     edx, 0Fh
xor     eax, eax
call    sub_4A0E24
mov     word ptr [esi+92h], 1

loc_428DD4:
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
mov     al, [eax+9]
xor     ah, ah
shl     eax, 4
mov     edx, [ecx+0B0h]
sar     edx, 10h
cwde
cmp     edx, eax
jl      short loc_428E00
mov     word ptr [esi+8Eh], 1

loc_428E00:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_428CD7 endp




sub_428E05 proc near

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
add     eax, 640h
mov     [esp+20h+var_1C], eax
cmp     dword ptr [eax+80h], 0
jnz     short loc_428E2C
mov     ds:word_511058, 48h ; 'H'
jmp     short loc_428E35

loc_428E2C:
mov     ds:word_511058, 0C0h

loc_428E35:
xor     ebp, ebp
jmp     short loc_428E43

loc_428E39:
inc     ebp
cmp     ebp, 6
jnb     loc_428ECE

loc_428E43:
mov     edx, ebp
shl     edx, 3
mov     esi, [esp+20h+var_1C]
mov     dword ptr [edx+esi+3Ch], 0
mov     eax, ss:dword_511045[ebp]
sar     eax, 18h
shl     eax, 3
add     eax, [esp+20h+var_20]
lea     edi, [edx+esi+0Ch]
lea     esi, [eax+190h]
movsd
movsd
mov     eax, [esp+20h+var_1C]
add     eax, 0Ch
mov     esi, [esp+20h+var_1C]
add     esi, 3Ch ; '<'
lea     ecx, [ebp+ebp+0]
mov     ebx, ebp
shl     ebx, 2
add     eax, edx
add     esi, edx
mov     edx, [esp+20h+var_1C]
add     edx, ebx
test    ebp, ebp
jnz     short loc_428EC5
push    ebp
push    ebp

loc_428E96:
mov     edx, [edx+6Ch]
or      edx, 4080000h
push    edx
push    esi
xor     edx, edx
mov     ebx, [esp+30h+var_20]
mov     dl, [ebx+1]
push    edx
mov     edx, ds:dword_51104C[ecx]
sar     edx, 10h
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC
jmp     loc_428E39

loc_428EC5:
push    80h
push    0
jmp     short loc_428E96

loc_428ECE:
add     esp, 8
jmp     loc_428CD0
sub_428E05 endp




sub_428ED6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+640h]
mov     dword ptr [ecx], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_428EF6
or      byte ptr [ecx], 1

loc_428EF6:
cmp     byte ptr [edx+74h], 0
jnz     loc_428CD1
mov     eax, edx
call    sub_42C592
mov     esi, eax
mov     ebx, [edx+2Ch]
sar     ebx, 10h
cmp     eax, ebx
jz      short loc_428F30
cmp     byte ptr [edx+75h], 0
jnz     short loc_428F3A
lea     edi, [edx+14h]
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [edx+34h]
movsd
movsd
movsd
movsd
or      byte ptr [ecx], 4
jmp     short loc_428F3A

loc_428F30:
mov     [edx+16h], bx
shl     eax, 10h
mov     [edx+38h], eax

loc_428F3A:
or      byte ptr [ecx], 2
jmp     loc_428CD1
sub_428ED6 endp




sub_428F42 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
call    sub_42952D
test    eax, eax
jnz     loc_428CD1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     dword ptr [edi+84h], 600h
jb      short loc_428F9A
mov     eax, esi
call    sub_4294E9
jmp     loc_428CD1

loc_428F9A:
mov     bx, [edi+8Ah]
test    bx, bx
jnz     short loc_428FBE
cmp     dword ptr [esi+80h], 15F90h
ja      short loc_428FC8
mov     eax, esi
call    sub_4294C9
jmp     loc_428CD1

loc_428FBE:
mov     ecx, ebx
dec     ecx
mov     [edi+8Ah], cx

loc_428FC8:
mov     ax, [edi+88h]
test    ax, ax
jnz     short loc_428FF2
cmp     word ptr [esi+6Eh], 0
jz      short loc_428FE7
mov     eax, esi
call    sub_429494
jmp     loc_428CD1

loc_428FE7:
mov     word ptr [edi+88h], 72h ; 'r'
jmp     short loc_428FFC

loc_428FF2:
mov     edx, eax
dec     edx
mov     [edi+88h], dx

loc_428FFC:
xor     eax, eax
cmp     byte ptr [esi+0A4h], 0Ch
jnz     short loc_42900C
mov     eax, 1

loc_42900C:
cmp     byte ptr [esi+0A4h], 2Ah ; '*'
jz      short loc_429019
test    eax, eax
jz      short loc_42903E

loc_429019:
lea     edi, [esi+14h]
mov     ecx, edi
mov     ebx, 0FA0h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B
mov     edx, edi
mov     eax, 198h
call    sub_4D8BC3

loc_42903E:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_428CD1
sub_428F42 endp




sub_42905C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset byte_5F8364
cmp     byte ptr [eax+0A7h], 0
jz      short loc_429084
mov     eax, esi
call    sub_42922C
jmp     loc_428CD0

loc_429084:
cmp     byte ptr [esi+0A4h], 12h
jnz     short loc_429093
mov     word ptr [esi+44h], 400h

loc_429093:
cmp     byte ptr [esi+0A4h], 15h
jnz     short loc_4290FB
lea     edx, [esi+14h]
mov     eax, 19Ch
call    sub_4D8BC3
mov     ax, [edi+8Ch]
inc     eax
imul    eax, 140h
mov     [esi+44h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 1000000h
mov     [edi+6Ch], eax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 1000000h
mov     [edi+70h], eax

loc_4290FB:
cmp     byte ptr [esi+0A4h], 20h ; ' '
jnz     short loc_429127
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 19Dh
call    sub_4D8BC3
mov     ebx, 1388h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B

loc_429127:
xor     ecx, ecx
xor     eax, eax

loc_42912B:
mov     edx, eax
mov     edx, [edi+edx*8+3Ch]
and     edx, 2000000h
or      ecx, edx
inc     eax
cmp     eax, 6
jl      short loc_42912B
cmp     byte ptr [esi+0A4h], 28h ; '('
jz      short loc_42914C
test    ecx, ecx
jz      short loc_429160

loc_42914C:
mov     word ptr [esi+44h], 0
mov     dword ptr [edi+6Ch], 0
mov     dword ptr [edi+70h], 0

loc_429160:
cmp     word ptr [esi+44h], 0
jz      loc_428CD0
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
mov     ecx, 30h ; '0'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_428CD0
sub_42905C endp




sub_4291AA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
call    sub_42952D
test    eax, eax
jnz     short loc_42921F
mov     ax, [ecx+56h]
add     eax, 8
and     ah, 0Fh
mov     [ecx+56h], ax
cmp     byte ptr [ecx+0A4h], 0Dh
jnz     short loc_429205
lea     edx, [ecx+14h]
mov     eax, 199h
call    sub_4D8BC3
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
and     eax, 0FFh
or      eax, 1000000h
mov     [ebx+80h], eax

loc_429205:
cmp     byte ptr [ecx+0A7h], 0
jz      short loc_42921F
mov     dword ptr [ebx+80h], 0
mov     eax, ecx
call    sub_42922C

loc_42921F:
pop     edx
pop     ecx
pop     ebx

locret_429222:
retn
sub_4291AA endp




sub_429223 proc near
cmp     byte ptr [eax+0A7h], 0
jz      short locret_429222
sub_429223 endp




sub_42922C proc near
push    edx
lea     edx, [eax+640h]
mov     byte ptr [eax+0ACh], 1
mov     word ptr [eax+44h], 68h ; 'h'
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+88h], 72h ; 'r'
mov     word ptr [edx+90h], 0
mov     byte ptr [eax+9], 1

loc_429262:
mov     byte ptr [eax+0Ah], 0
pop     edx
retn
sub_42922C endp




sub_429268 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0A7h], 0
jz      short loc_4292BC
call    sub_4DE13B
test    eax, eax
jz      short loc_429297
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [eax+0Dh], 2

loc_429297:
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
call    sub_436710
mov     eax, ecx
call    sub_4367FD
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4292BC:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_429268 endp




sub_4292C1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4292C7[edx*4]
pop     edx
retn
sub_4292C1 endp




sub_4292D0 proc near
push    ecx
push    edx
mov     ecx, eax
call    sub_42959B
cmp     byte ptr [ecx+0A7h], 0
jz      short loc_42930F
mov     byte ptr [ecx+0ACh], 7
mov     word ptr [ecx+44h], 300h
mov     word ptr [ecx+46h], 0FB80h
mov     word ptr [ecx+4Eh], 48h ; 'H'
mov     byte ptr [ecx+74h], 1
lea     edx, [ecx+14h]
mov     eax, 19Ah
call    sub_4D8BC3
inc     byte ptr [ecx+0Ah]

loc_42930F:
pop     edx
pop     ecx
retn
sub_4292D0 endp




sub_429312 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
call    sub_42959B
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     dx, [esi+4Eh]
add     [esi+46h], dx
cmp     byte ptr [esi+0A7h], 0
jz      short loc_429351
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]

loc_429351:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_429312 endp




sub_429356 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
call    sub_42959B
cmp     byte ptr [ebp+74h], 0
jnz     short loc_4293D9
mov     byte ptr [ebp+0ACh], 9
mov     dword ptr [ecx+94h], 0
mov     word ptr [ecx+88h], 0
mov     word ptr [ecx+8Ah], 3
lea     edx, [ebp+14h]
mov     eax, 19Bh
call    sub_4D8BC3
call    sub_4DE13B
test    eax, eax
jz      short loc_4293D1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 1
mov     [ecx+94h], eax

loc_4293D1:
inc     byte ptr [ebp+0Ah]
jmp     loc_428CD0

loc_4293D9:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
jmp     loc_428CD0
sub_429356 endp




sub_4293FF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+640h]
mov     dx, [esi+88h]
test    dx, dx
jnz     short loc_429462
mov     cx, [esi+8Ah]
test    cx, cx
jz      short loc_42944F
mov     eax, ecx
dec     eax
mov     [esi+8Ah], ax
lea     ecx, [edi+14h]
xor     ebx, ebx
mov     bx, ax
mov     ebx, ds:(off_511066+2)[ebx*2]
sar     ebx, 10h
mov     edx, 64h ; 'd'
mov     eax, 1Eh
call    sub_42A70B

loc_42944F:
xor     ebx, ebx
mov     bx, [esi+8Ah]
mov     bx, ds:word_511070[ebx*2]
jmp     short loc_429465

loc_429462:
mov     ebx, edx
dec     ebx

loc_429465:
mov     [esi+88h], bx
mov     ebx, [esi+94h]
cmp     byte ptr [ebx], 0
jnz     loc_428CD1
cmp     byte ptr [edi+0A7h], 0
jz      loc_428CD1
mov     eax, edi
call    sub_42922C
jmp     loc_428CD1
sub_4293FF endp




sub_429494 proc near
push    edx
mov     byte ptr [eax+0ACh], 2
mov     word ptr [eax+48h], 0
mov     dx, [eax+48h]
mov     [eax+46h], dx
mov     [eax+44h], dx
mov     word ptr [eax+50h], 0
mov     dx, [eax+50h]
mov     [eax+4Eh], dx
mov     [eax+4Ch], dx
mov     byte ptr [eax+9], 2
jmp     loc_429262
sub_429494 endp




sub_4294C9 proc near
push    edx
lea     edx, [eax+640h]
mov     byte ptr [eax+0ACh], 3
mov     word ptr [edx+8Ah], 39h ; '9'
mov     byte ptr [eax+9], 3
jmp     loc_429262
sub_4294C9 endp




sub_4294E9 proc near
push    edx
lea     edx, [eax+640h]
mov     byte ptr [eax+0ACh], 6
mov     word ptr [edx+90h], 1
mov     word ptr [eax+48h], 0
mov     dx, [eax+48h]
mov     [eax+46h], dx
mov     [eax+44h], dx
mov     word ptr [eax+50h], 0
mov     dx, [eax+50h]
mov     [eax+4Eh], dx
mov     [eax+4Ch], dx
mov     byte ptr [eax+9], 6
jmp     loc_429262
sub_4294E9 endp




sub_42952D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
cmp     word ptr [ebx+8Eh], 0
jnz     short loc_429548
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_429548:
mov     word ptr [eax+0B2h], 0
xor     eax, eax

loc_429553:
mov     edx, eax
mov     dword ptr [ebx+edx*4+6Ch], 0
inc     eax
cmp     eax, 6
jb      short loc_429553
mov     word ptr [ebx+90h], 1
cmp     word ptr [ebx+8Eh], 0
jle     short loc_429583
mov     byte ptr [ecx+0ACh], 5
mov     byte ptr [ecx+9], 4
jmp     short loc_42958E

loc_429583:
mov     byte ptr [ecx+0ACh], 4
mov     byte ptr [ecx+9], 5

loc_42958E:
mov     byte ptr [ecx+0Ah], 0
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_42952D endp




sub_42959B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [eax+644h]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42959B endp




sub_4295CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4295EF
cmp     ds:byte_77EAB8, 0
jnz     short loc_429617
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4295EF:
cmp     ds:byte_77EAB8, 0
jnz     short loc_429617
mov     eax, 50h ; 'P'
call    sub_47E8B8
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000027h
call    sub_4D89E4
mov     eax, ecx
call    sub_4DE336

loc_429617:
pop     edx
pop     ecx
pop     ebx
retn
sub_4295CA endp




sub_42961B proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+28h+var_14], edx
mov     [esp+28h+var_10], ebx
mov     [esp+28h+var_18], ecx
mov     edi, offset dword_5592CC
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_5592E0, edx
mov     ds:dword_5592E4, ebx
mov     ds:dword_5593E4, ecx
mov     eax, [esp+28h+var_18]
neg     eax
and     ah, 0Fh
mov     word ptr ds:dword_77EA06+2, ax
mov     eax, [esp+28h+var_10]
and     ah, 0Fh
mov     ds:word_77EA0A, ax
xor     edx, edx
mov     ds:word_77EA0C, dx
mov     edx, offset unk_564A6C
mov     eax, (offset dword_77EA06+2)
call    sub_4EF638
mov     edx, offset unk_564A9C
mov     eax, offset unk_564A6C
call    sub_4EF70C
mov     cl, ds:byte_77EABF
mov     edx, [esp+28h+var_14]
shl     edx, cl
mov     eax, ebx
call    sub_4EF008
mov     ecx, eax
imul    ecx, edx
sar     ecx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
mov     esi, eax
imul    esi, ecx
sar     esi, 0Ch
mov     ebx, [ebp+0]
neg     ebx
mov     cl, ds:byte_77EABF
shl     ebx, cl
add     ebx, esi
mov     [esp+28h+var_28], ebx
mov     ebx, [ebp+4]
neg     ebx
shl     ebx, cl
mov     eax, [esp+28h+var_18]
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
lea     ecx, [ebx+eax]
mov     [esp+28h+var_24], ecx
mov     eax, [esp+28h+var_10]
call    sub_4EF003
imul    edx, eax
sar     edx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
imul    edx, eax
sar     edx, 0Ch
mov     eax, [ebp+8]
neg     eax
mov     cl, ds:byte_77EABF
shl     eax, cl
add     eax, edx
mov     [esp+28h+var_20], eax
mov     ebx, offset unk_564AC0
mov     edx, esp
mov     eax, offset unk_564A9C
call    sub_4EF371
mov     ecx, 0Ch
mov     edi, offset unk_564CB4
mov     esi, offset unk_564A9C
rep movsd
mov     eax, [esp+28h+var_10]
call    sub_4EF008
mov     edx, [esp+28h+var_14]
imul    edx, eax
sar     edx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     ecx, [ebp+0]
sub     eax, ecx
mov     [esp+28h+var_28], eax
mov     eax, [esp+28h+var_18]
call    sub_4EF008
mov     ebx, [esp+28h+var_14]
imul    eax, ebx
sar     eax, 0Ch
mov     esi, [ebp+4]
sub     eax, esi
mov     [esp+28h+var_24], eax
mov     eax, [esp+28h+var_10]
call    sub_4EF003
mov     edx, eax
imul    edx, ebx
sar     edx, 0Ch
mov     eax, [esp+28h+var_18]
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ebp+8]
sub     eax, edx
mov     [esp+28h+var_20], eax
mov     edi, offset dword_77E9F8
mov     esi, offset dword_77E9E8
movsd
movsd
movsd
movsd
mov     eax, [esp+28h+var_28]
mov     word ptr ds:dword_56F182+2, ax
mov     ebx, eax
neg     ebx
mov     word ptr ds:dword_56F182+2, bx
mov     eax, ds:dword_56F182
sar     eax, 10h
mov     ds:dword_77E9E8, eax
mov     eax, [esp+28h+var_24]
mov     word ptr ds:dword_56F186, ax
mov     ecx, eax
neg     ecx
mov     word ptr ds:dword_56F186, cx
mov     eax, ds:dword_56F182+2
sar     eax, 10h
mov     ds:dword_77E9EC, eax
mov     eax, [esp+28h+var_20]
mov     word ptr ds:dword_56F186+2, ax
mov     esi, eax
neg     esi
mov     word ptr ds:dword_56F186+2, si
mov     eax, ds:dword_56F186
sar     eax, 10h
mov     ds:dword_77E9F0, eax
mov     ebx, esp
mov     edx, esp
mov     eax, offset unk_564A9C
call    sub_4EF371
mov     eax, [esp+28h+var_28]
mov     ds:dword_56F174, eax
mov     eax, [esp+28h+var_24]
mov     ds:dword_56F178, eax
mov     eax, [esp+28h+var_20]
mov     ds:dword_56F17C, eax
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
retn
sub_42961B endp




sub_42984E proc near
push    esi
push    edi
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
call    sub_42961B
pop     edi
pop     esi
retn
sub_42984E endp




sub_429863 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, edx
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
mov     eax, [eax+8]
sub     eax, [edx+8]
imul    eax, eax
mov     edx, [ebp+0]
sub     edx, [ecx]
imul    edx, edx
add     edx, eax
mov     eax, edx
call    sub_4EF075
mov     ebx, eax
mov     esi, eax
test    eax, eax
jz      short loc_4298A5
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
lea     esi, [eax+ebx]
sar     esi, 1

loc_4298A5:
mov     ebx, [ecx+8]
sub     ebx, [ebp+8]
mov     edx, [ecx]
mov     eax, [ebp+0]
sub     edx, eax
mov     eax, edx
mov     edx, ebx
call    sub_4EF04B
lea     ebx, [eax+800h]
mov     eax, [ecx+4]
sub     eax, [ebp+4]
mov     edx, esi
call    sub_4EF04B
mov     ecx, eax
neg     ecx
mov     edx, esi
mov     eax, ebp
call    sub_42961B
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_429863 endp




sub_4298E1 proc near
push    esi
push    edi
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
call    sub_429863
pop     edi
pop     esi
retn
sub_4298E1 endp




sub_4298F6 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax        ; int
neg     ebx
and     bh, 0Fh
mov     word ptr ds:dword_77EA06+2, bx
and     dh, 0Fh
mov     ds:word_77EA0A, dx
xor     edx, edx
mov     ds:word_77EA0C, dx
mov     edx, offset unk_564A6C
mov     eax, (offset dword_77EA06+2)
call    sub_4EF638
mov     edx, offset unk_564A9C
mov     eax, offset unk_564A6C
call    sub_4EF70C
mov     eax, [ecx]
mov     [esp+1Ch+var_1C], eax
mov     edx, eax
neg     edx
mov     [esp+1Ch+var_1C], edx
mov     eax, [ecx+4]
mov     [esp+1Ch+var_18], eax
mov     ebx, eax
neg     ebx
mov     [esp+1Ch+var_18], ebx
mov     eax, [ecx+8]
mov     [esp+1Ch+var_14], eax
mov     esi, eax
neg     esi
mov     [esp+1Ch+var_14], esi
mov     ebx, offset unk_564AC0
mov     edx, esp
mov     eax, offset unk_564A9C
call    sub_4EF371
mov     eax, [esp+1Ch+var_1C]
mov     word ptr ds:dword_56F182+2, ax
mov     ebx, eax
neg     ebx
mov     word ptr ds:dword_56F182+2, bx
mov     eax, ds:dword_56F182
sar     eax, 10h
mov     ds:dword_77E9E8, eax
mov     eax, [esp+1Ch+var_18]
mov     word ptr ds:dword_56F186, ax
mov     ecx, eax
neg     ecx
mov     word ptr ds:dword_56F186, cx
mov     eax, ds:dword_56F182+2
sar     eax, 10h
mov     ds:dword_77E9EC, eax
mov     eax, [esp+1Ch+var_14]
mov     word ptr ds:dword_56F186+2, ax
mov     esi, eax
neg     esi
mov     word ptr ds:dword_56F186+2, si
mov     eax, ds:dword_56F186
sar     eax, 10h
mov     ds:dword_77E9F0, eax
mov     ecx, 0Ch
mov     edi, offset unk_564CB4
mov     esi, offset unk_564A9C
rep movsd
add     esp, 10h
pop     edi
pop     esi
pop     ecx
retn
sub_4298F6 endp




sub_4299F3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, offset byte_77E950
lea     edx, [ecx+0F0h]
mov     eax, ecx
call    sub_4EECF9
mov     ds:byte_77E950, 1
xor     dl, dl
mov     ds:byte_77E951, dl
mov     ds:byte_77E952, dl
mov     ds:byte_77E953, dl
xor     edx, edx
mov     ds:dword_77E954, edx
mov     ds:dword_77E958, edx
mov     ds:dword_77E968, edx
xor     edi, edi
mov     ds:dword_77E970, edx
mov     ds:dword_77E96C, edx
mov     eax, 200h
mov     ds:dword_77E98C, eax
mov     ds:dword_77E974, eax
mov     ds:dword_77E95C, eax
mov     ds:dword_77E990, edx
mov     ds:dword_77E978, edx
mov     ds:dword_77E960, edx
mov     eax, 30h ; '0'
mov     ds:dword_77E994, eax
mov     edx, eax
mov     ds:dword_77E97C, eax
mov     ebx, eax
mov     ds:dword_77E964, eax
mov     ds:dword_77E9AC, 96h
mov     ds:dword_77EA40, edi
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E9D8, eax
mov     ds:dword_77E9B8, eax
mov     ds:dword_77E998, eax
mov     ds:dword_77E9E8, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     ds:dword_77E9DC, eax
mov     ds:dword_77E9BC, eax
mov     ds:dword_77E99C, eax
mov     ds:dword_77E9EC, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9E0, eax
mov     ds:dword_77E9C0, eax
mov     ds:dword_77E9A0, eax
mov     ds:dword_77E9F0, eax
xor     bh, dh
mov     byte ptr ds:dword_77E954+1, bh
xor     al, al
mov     byte ptr ds:dword_77E954+2, al
xor     ah, ah
mov     byte ptr ds:dword_77E954+3, ah
mov     byte ptr ds:dword_77E954, 1
mov     byte ptr ds:dword_77E958+2, 0FFh
mov     ds:dword_5593E8, edi
xor     eax, eax
mov     ds:dword_5592DC, eax
mov     ds:dword_5593DC, eax
mov     ds:dword_5593E0, eax
mov     ds:dword_5592D4, eax
mov     ds:dword_5592D0, eax
mov     ds:dword_5592CC, eax
mov     ds:dword_5593E4, eax
mov     ds:dword_5592E4, eax
mov     ds:dword_5592E0, eax
mov     ds:dword_5593EC, eax
mov     ds:dword_511078, eax

loc_429B4E:
xor     ebp, ebp
mov     ds:dword_55928C[eax*4], ebp
inc     eax
cmp     eax, 10h
jl      short loc_429B4E
mov     ds:dword_5593F0, ebp
mov     edx, 200h
mov     ds:dword_51107C, edx
mov     ds:dword_511080, 30h ; '0'
mov     ds:dword_511084, edx
mov     ds:dword_511088, 300h
mov     ds:dword_51108C, 0Ah
mov     ds:dword_511090, 14h
mov     ds:dword_511094, 3
mov     ds:dword_511098, 3Ch ; '<'
mov     esi, 1
mov     ds:dword_51109C, esi
mov     ds:dword_5110A0, esi
mov     ds:dword_5110A4, 4B0h
mov     edx, [ecx+14h]
mov     ebx, [ecx+10h]
mov     esi, [ecx+0Ch]
lea     eax, [ecx+48h]
mov     ecx, edx
mov     edx, esi
call    sub_42961B
mov     eax, offset unk_5110A8
call    sub_42A7B1
call    sub_42A63E

loc_429BEF:
pop     ebp

def_42A80E:             ; jumptable 0042A80E default case, case 0
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4299F3 endp

db 90h
jpt_429C76 dd offset loc_429C7D ; jump table for switch statement
dd offset loc_42A070
dd offset loc_42A089
dd offset loc_42A0E1
dd offset loc_42A134
dd offset def_429C76
dd offset loc_429DC3



sub_429C13 proc near

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
call    sub_42A7DB
mov     esi, offset byte_77E950
cmp     byte ptr ds:dword_77E954, 1
jz      short loc_429C41
call    sub_49D76F
xor     ecx, ecx
mov     ds:dword_5593E8, ecx
jmp     loc_42A2FA

loc_429C41:
inc     ds:dword_5593E8
cmp     byte ptr ds:dword_77E954+2, 0
jz      short loc_429C64
call    sub_42A302
xor     eax, eax
mov     al, [esi+6]
mov     ds:dword_5592DC, eax
jmp     loc_42A2FA

loc_429C64:
mov     al, byte ptr ds:dword_77E954+1
cmp     al, 6           ; switch 7 cases
ja      def_429C76      ; jumptable 00429C76 default case, case 5
and     eax, 0FFh
jmp     jpt_429C76[eax*4] ; switch jump

loc_429C7D:             ; jumptable 00429C76 case 0
cmp     byte ptr ds:dword_77E958+2, 0
jl      loc_429E6D
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_429D02
mov     edx, ds:dword_5F8376
sar     edx, 10h
mov     eax, ds:dword_5F838E
sar     eax, 10h
cmp     edx, eax
jnz     short loc_429CD2
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, ds:dword_5F838E+2
sar     eax, 10h
cmp     edx, eax
jnz     short loc_429CD2
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, ds:dword_5F8392
sar     eax, 10h
cmp     edx, eax
jz      short loc_429D02

loc_429CD2:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esi+88h], eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+8Ch], edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     [esi+90h], eax

loc_429D02:
mov     ch, [esi+0Ah]
test    ch, ch
jz      loc_429E14
mov     al, [esi+9]
mov     dl, ch
add     dl, al
mov     [esi+0Ah], dl
test    dl, dl
jge     short loc_429D1F
mov     byte ptr [esi+0Ah], 0

loc_429D1F:
mov     ecx, [esi+7]
sar     ecx, 18h
mov     eax, 40h ; '@'
sub     eax, ecx
mov     edx, [esi+3Ch]
imul    edx, eax
mov     ebx, [esi+24h]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+0Ch], edx
mov     edx, [esi+44h]
imul    edx, eax
mov     ebx, [esi+2Ch]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+14h], edx
mov     edx, [esi+8Ch]
imul    edx, eax
mov     ebx, [esi+6Ch]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+4Ch], edx
cmp     byte ptr [esi+8], 3
jnz     short loc_429D80
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
jmp     short loc_429D8F

loc_429D80:
imul    eax, [esi+40h]
mov     edx, [esi+28h]
imul    edx, ecx
add     eax, edx
sar     eax, 6

loc_429D8F:
mov     [esi+10h], eax
mov     eax, 40h ; '@'
sub     eax, ecx
mov     edx, [esi+88h]
imul    edx, eax
mov     ebx, [esi+68h]
imul    ebx, ecx
add     edx, ebx
sar     edx, 6
mov     [esi+48h], edx
imul    eax, [esi+90h]
imul    ecx, [esi+70h]
add     eax, ecx
sar     eax, 6

loc_429DC0:
mov     [esi+50h], eax

loc_429DC3:             ; jumptable 00429C76 case 6
xor     ecx, ecx
mov     cl, [esi+2]
movzx   edi, byte ptr [esi+3]
mov     eax, 100h
sub     eax, edi
mov     edi, eax
mov     ebp, eax
sub     ebp, ecx
test    ecx, ecx
jz      loc_42A2BD
mov     ebx, [esi+10h]
mov     eax, [esi+34h]
cmp     ebx, eax
jge     loc_42A209
lea     eax, [ebx+1000h]
mov     edx, eax
sub     edx, [esi+34h]
mov     [esp+2Ch+var_1C], edx
mov     edx, [esi+34h]
sub     edx, ebx
cmp     edx, [esp+2Ch+var_1C]
jle     loc_42A21F
mov     ebx, eax
jmp     loc_42A21F

loc_429E14:
mov     byte ptr [esi+0Ah], 0FFh
mov     eax, [esi+3Ch]
mov     [esi+0Ch], eax
mov     eax, [esi+44h]
mov     [esi+14h], eax
mov     eax, [esi+8Ch]
mov     [esi+4Ch], eax
cmp     byte ptr [esi+8], 3
jnz     short loc_429E42
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
jmp     short loc_429E45

loc_429E42:
mov     eax, [esi+40h]

loc_429E45:
mov     [esi+10h], eax
mov     eax, [esi+88h]
mov     [esi+48h], eax
mov     eax, [esi+90h]
mov     [esi+50h], eax
cmp     byte ptr [esi+1], 2
jnz     loc_429DC3      ; jumptable 00429C76 case 6
mov     byte ptr [esi+1], 0
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_429E6D:
cmp     ds:byte_77E951, 0
jnz     loc_429DC3      ; jumptable 00429C76 case 6
cmp     byte ptr ds:dword_77E958, 3
jnz     short loc_429E98

loc_429E83:
mov     eax, ds:dword_5F83B8

loc_429E88:
sar     eax, 10h
add     eax, 800h
mov     [esi+10h], eax
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_429E98:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E998, eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, ds:dword_77E9AC
sub     edx, eax
mov     ds:dword_77E99C, edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9A0, eax
cmp     ds:dword_5593E8, 1
jnz     short loc_429EE3
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
jmp     loc_429FA3

loc_429EE3:
mov     eax, ds:dword_5F8416
sar     eax, 10h
call    abs_
mov     ds:dword_5593EC, eax
test    eax, eax
jz      short loc_429F3D
cmp     eax, 48h ; 'H'
jl      short loc_429F22
mov     ebp, ds:dword_511078
add     ebp, 6
mov     ds:dword_511078, ebp
cmp     ebp, 48h ; 'H'
jl      loc_429F86
mov     ds:dword_511078, 48h ; 'H'
jmp     short loc_429F86

loc_429F22:
mov     edx, eax
shl     eax, 3
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     ds:dword_511078, eax
jmp     short loc_429F86

loc_429F3D:
mov     edx, [esi+10h]
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
call    sub_42AC54
mov     edx, eax
cmp     eax, 200h
jl      short loc_429F67
mov     ds:dword_511078, 80h
jmp     short loc_429F86

loc_429F67:
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     ds:dword_511078, eax
cmp     eax, 18h
jge     short loc_429F86
mov     ds:dword_511078, 18h

loc_429F86:
mov     edx, ds:dword_511078
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
mov     ebx, 200h
call    sub_42ABB4

loc_429FA3:
mov     [esi+10h], eax
cmp     byte ptr ds:dword_5F88B1, 1
jnz     loc_42A024
mov     ax, [esi+98h]
mov     ds:word_5593F4, ax
mov     ax, [esi+9Ch]
mov     ds:word_5593F6, ax
mov     ax, [esi+0A0h]
mov     ds:word_5593F8, ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_5110B0
mov     edx, offset word_5593F4
mov     eax, edx
call    sub_42CE61
test    eax, eax
jnz     short loc_42A007
mov     ds:dword_511098, 3Ch ; '<'
add     ds:dword_51107C, 0Ah
jmp     short loc_42A037

loc_42A007:
mov     ebp, ds:dword_511098
test    ebp, ebp
jnz     short loc_42A01A

loc_42A011:
sub     ds:dword_51107C, 0Ah
jmp     short loc_42A037

loc_42A01A:
lea     eax, [ebp-1]
mov     ds:dword_511098, eax
jmp     short loc_42A037

loc_42A024:
mov     ecx, ds:dword_511098
test    ecx, ecx
jz      short loc_42A011
lea     ebx, [ecx-1]
mov     ds:dword_511098, ebx

loc_42A037:
mov     edi, ds:dword_51107C
cmp     edi, 300h
jle     short loc_42A051
mov     ds:dword_51107C, 300h
jmp     short loc_42A063

loc_42A051:
cmp     edi, 200h
jge     short loc_42A063
mov     ds:dword_51107C, 200h

loc_42A063:
mov     eax, ds:dword_51107C
mov     [esi+0Ch], eax
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_42A070:             ; jumptable 00429C76 case 1
test    ds:byte_570927, 4
jz      loc_429DC3      ; jumptable 00429C76 case 6
mov     byte ptr ds:dword_77E954+1, 2
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_42A089:             ; jumptable 00429C76 case 2
test    ds:byte_570927, 4
jz      short loc_42A099
mov     byte ptr ds:dword_77E954+1, 3

loc_42A099:
mov     edi, [esi+0F0h]
test    edi, edi
jz      loc_429DC3      ; jumptable 00429C76 case 6
mov     eax, [edi+12h]
sar     eax, 10h
mov     [esi+48h], eax
mov     eax, [esi+0F0h]
mov     edx, [eax+14h]
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+4Ch], edx
mov     eax, [esi+0F0h]
mov     eax, [eax+16h]
sar     eax, 10h
mov     [esi+50h], eax
mov     eax, [esi+0F0h]
mov     eax, [eax+54h]
jmp     loc_429E88

loc_42A0E1:             ; jumptable 00429C76 case 3
test    ds:byte_570927, 4
jz      short loc_42A0F6
mov     byte ptr ds:dword_77E954+1, 5
jmp     loc_42A1DD

loc_42A0F6:
mov     ebx, ds:dword_77EA40
test    ebx, ebx
jz      loc_429DC3      ; jumptable 00429C76 case 6
mov     edx, [ebx+12h]
sar     edx, 10h
mov     ds:dword_77E998, edx
mov     ecx, [ebx+14h]
sar     ecx, 10h
mov     edx, ds:dword_77E9AC
sub     ecx, edx
mov     ds:dword_77E99C, ecx
mov     eax, [ebx+16h]
sar     eax, 10h
mov     ds:dword_77E9A0, eax
jmp     loc_429DC3      ; jumptable 00429C76 case 6

loc_42A134:             ; jumptable 00429C76 case 4
mov     ecx, ds:dword_77E960
and     ecx, 0FFFh
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
cmp     eax, ecx
jle     short loc_42A18A
mov     edx, eax
sub     edx, ecx
cmp     edx, 60h ; '`'
jg      short loc_42A170

loc_42A15F:
mov     ds:dword_77E960, eax
mov     eax, offset unk_5110AC
call    sub_42A7B1
jmp     short loc_42A1A7

loc_42A170:
add     ecx, 1000h
sub     ecx, eax
cmp     edx, ecx
jge     short loc_42A183

loc_42A17C:
mov     eax, 60h ; '`'
jmp     short loc_42A1A4

loc_42A183:
mov     eax, 0FFFFFFA0h
jmp     short loc_42A1A4

loc_42A18A:
cmp     ecx, eax
jz      short loc_42A15F
mov     edx, ecx
sub     edx, eax
cmp     edx, 60h ; '`'
jle     short loc_42A15F
add     eax, 1000h
sub     eax, ecx
cmp     edx, eax
jl      short loc_42A183
jmp     short loc_42A17C

loc_42A1A4:
add     [esi+10h], eax

loc_42A1A7:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esi+48h], eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+4Ch], edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
jmp     loc_429DC0

def_429C76:             ; jumptable 00429C76 default case, case 5
test    ds:byte_570927, 4
jz      short loc_42A1DD
mov     byte ptr [esi+5], 0

loc_42A1DD:
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     [esi+48h], eax
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [esi+5Ch]
sub     edx, eax
mov     [esi+4Ch], edx
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     [esi+50h], eax
jmp     loc_429E83

loc_42A209:
add     eax, 1000h
sub     eax, ebx
mov     edx, ebx
sub     edx, [esi+34h]
cmp     eax, edx
jge     short loc_42A21F
sub     ebx, 1000h

loc_42A21F:
mov     edx, [esi+78h]
imul    edx, ebp
mov     eax, [esi+48h]
imul    eax, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_2C], eax
mov     eax, [esi+7Ch]
imul    eax, ebp
mov     edx, [esi+4Ch]
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_28], eax
mov     eax, [esi+80h]
imul    eax, ebp
mov     edx, [esi+50h]
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_24], eax
mov     eax, [esi+38h]
imul    eax, ebp
mov     edx, [esi+14h]
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     [esp+2Ch+var_1C], eax
mov     eax, [esi+34h]
imul    eax, ebp
mov     edx, ebx
imul    edx, ecx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     ebx, eax
imul    ebp, [esi+30h]
mov     edx, [esi+0Ch]
imul    edx, ecx
add     edx, ebp
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     ecx, [esp+2Ch+var_1C]
mov     edx, eax
mov     eax, esp
call    sub_42961B
jmp     short loc_42A2FA

loc_42A2BD:
xor     eax, eax
mov     al, [esi+7]
sub     [esi+4Ch], eax
mov     eax, [esi+14h]
mov     ecx, [esi+20h]
add     ecx, eax
mov     eax, [esi+10h]
mov     ebx, [esi+1Ch]
add     ebx, eax
mov     edx, [esi+0Ch]
lea     eax, [esi+48h]
call    sub_42961B
mov     bh, [esi+7]
test    bh, bh
jz      short loc_42A2FA
cmp     bh, 0Ah
jnb     short loc_42A2F2
mov     byte ptr [esi+7], 0
jmp     short loc_42A2FA

loc_42A2F2:
mov     ch, bh
sub     ch, 0Ah
mov     [esi+7], ch

loc_42A2FA:
add     esp, 14h
jmp     loc_429BEF
sub_429C13 endp




sub_42A302 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     esi, offset byte_77E950
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E998, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, 0D2h
mov     ds:dword_77E99C, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9A0, eax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
mov     ds:dword_77E960, eax
cmp     ds:dword_51109C, 0
jz      short loc_42A38F
mov     ecx, ds:dword_5110A0
dec     ecx
mov     ds:dword_5110A0, ecx
jnz     short loc_42A368
mov     ds:dword_51109C, ecx

loc_42A368:
mov     edx, [esi+0Ch]
mov     ebp, ds:dword_5110A0
imul    edx, ebp
mov     eax, 10h
sub     eax, ebp
imul    eax, ds:dword_5110A4
add     eax, edx
sar     eax, 4
mov     [esi+0Ch], eax
jmp     loc_42A3FC

loc_42A38F:
test    byte ptr ds:word_5708DE, 1
jz      short loc_42A3FC
mov     dl, byte ptr ds:dword_77E954+2
inc     dl
mov     byte ptr ds:dword_77E954+2, dl
cmp     dl, 2
jbe     short loc_42A3B2
mov     byte ptr ds:dword_77E954+2, 1

loc_42A3B2:
xor     eax, eax
mov     al, [esi+6]
dec     eax
test    eax, eax
jbe     short loc_42A3C3
cmp     eax, 1
jz      short loc_42A3E3
jmp     short loc_42A3FC

loc_42A3C3:
mov     ds:dword_5110A4, 4B0h
mov     ds:dword_5110A0, 10h
mov     ds:dword_51109C, 1
jmp     short loc_42A3FC

loc_42A3E3:
mov     ds:dword_5110A4, 190h
mov     ds:dword_5110A0, 10h
mov     ds:dword_51109C, eax

loc_42A3FC:
mov     byte ptr ds:dword_77E958, 1
xor     eax, eax
mov     al, [esi+7]
sub     [esi+4Ch], eax
mov     ecx, [esi+14h]
mov     ebx, [esi+10h]
mov     edx, [esi+0Ch]
lea     eax, [esi+48h]
call    sub_42961B
mov     cl, [esi+7]
test    cl, cl
jz      short loc_42A435
cmp     cl, 0Ah
jnb     short loc_42A42E
mov     byte ptr [esi+7], 0
jmp     short loc_42A435

loc_42A42E:
mov     al, cl
sub     al, 0Ah
mov     [esi+7], al

loc_42A435:
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42A302 endp




sub_42A43B proc near
push    ebx
push    edx
push    esi
push    edi
mov     ah, byte ptr ds:dword_77E958
test    ah, ah
jz      loc_42A4DD
mov     al, 40h ; '@'
mov     dh, byte ptr ds:dword_77E958+2
sub     al, dh
mov     byte ptr ds:dword_77E958+2, al
mov     eax, ds:dword_77E95C
mov     ds:dword_77E974, eax
mov     eax, ds:dword_77E964
mov     ds:dword_77E97C, eax
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, 200h
mov     ds:dword_77E994, 30h ; '0'
mov     edi, offset dword_77E9D8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     edi, 96h
mov     ds:dword_77E9AC, edi
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, edi
mov     ds:dword_77E9DC, eax
xor     bl, bl
mov     byte ptr ds:dword_77E958, bl
mov     byte ptr ds:dword_77E958+1, 0F8h
mov     eax, ds:dword_77E960
mov     ds:dword_77E990, eax
mov     ds:dword_77E978, eax
pop     edi
pop     esi
pop     edx
pop     ebx
retn

loc_42A4DD:
mov     ds:dword_77E964, 30h ; '0'
mov     ds:dword_77E95C, 200h
mov     byte ptr ds:dword_77E958+2, ah
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_42A43B endp




sub_42A4FC proc near
xor     ah, ah
mov     byte ptr ds:dword_77E958, ah
mov     ds:dword_77E964, 30h ; '0'
mov     ds:dword_77E95C, 200h
mov     byte ptr ds:dword_77E958+2, 0FFh
mov     ds:dword_77E9AC, 96h
mov     ds:byte_77E951, ah
retn
sub_42A4FC endp




sub_42A530 proc near
push    ebx
push    ecx
push    esi
push    edi
cmp     byte ptr ds:dword_77E954+2, 0
jz      short loc_42A547
mov     ds:dword_77E964, eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_42A547:
cmp     ds:byte_77E951, 0
jnz     loc_42A639
mov     bl, byte ptr ds:dword_77E958
test    bl, bl
jnz     loc_42A5F2
mov     byte ptr ds:dword_77E958+2, 40h ; '@'
mov     edx, ds:dword_77E95C
mov     ds:dword_77E974, edx
mov     edx, ds:dword_77E964
mov     ds:dword_77E97C, edx
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, 190h
mov     ds:dword_77E994, eax
mov     edi, offset dword_77E9D8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     ecx, 0D2h
mov     ds:dword_77E9AC, ecx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, ecx
mov     ds:dword_77E9DC, eax
mov     byte ptr ds:dword_77E958, 3
mov     byte ptr ds:dword_77E958+1, 0F8h
mov     eax, ds:dword_77E960
mov     ds:dword_77E990, eax
mov     ds:dword_77E978, eax
mov     ds:dword_51107C, 200h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_42A5F2:
cmp     bl, 3
jnz     short loc_42A639
mov     ds:dword_77E964, eax
mov     ds:dword_77E994, eax
cmp     byte ptr ds:dword_77E958+2, 0
jg      short loc_42A639
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E998, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     edx, ds:dword_77E9AC
sub     eax, edx
mov     ds:dword_77E99C, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9A0, eax

loc_42A639:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_42A530 endp




sub_42A63E proc near
push    ecx
push    edx
mov     ds:dword_77E964, 30h ; '0'
mov     ecx, 200h
mov     ds:dword_51107C, ecx
mov     ds:dword_77E95C, ecx
mov     byte ptr ds:dword_77E958+2, 0FFh
xor     dl, dl
mov     byte ptr ds:dword_5F88B1, dl
pop     edx
pop     ecx
retn
sub_42A63E endp




sub_42A66D proc near
push    ecx
xor     ah, ah
mov     ds:byte_77E951, ah
mov     ds:dword_77E964, 30h ; '0'
mov     ecx, 200h
mov     ds:dword_51107C, ecx
mov     ds:dword_77E95C, ecx
mov     byte ptr ds:dword_77E958+2, 0FFh
mov     byte ptr ds:dword_5F88B1, ah
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E9D8, eax
mov     ds:dword_77E9B8, eax
mov     ds:dword_77E998, eax
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
mov     ds:dword_77E9DC, eax
mov     ds:dword_77E9BC, eax
mov     ds:dword_77E99C, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9E0, eax
mov     ds:dword_77E9C0, eax
mov     ds:dword_77E9A0, eax
mov     ds:dword_77E9AC, 96h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
mov     ds:dword_77E960, eax
pop     ecx
retn
sub_42A66D endp




sub_42A701 proc near
test    eax, eax
jle     short locret_42A70A
mov     byte ptr ds:dword_77E954+3, al

locret_42A70A:
retn
sub_42A701 endp




sub_42A70B proc near
push    esi
push    edi
push    ebp
mov     esi, eax
test    eax, eax
jle     short loc_42A774
movsx   edi, word ptr [ecx]
mov     eax, ds:dword_56F182
sar     eax, 10h
sub     eax, edi
mov     edi, eax
mov     eax, [ecx]
sar     eax, 10h
mov     ebp, ds:dword_56F182+2
sar     ebp, 10h
sub     ebp, eax
mov     eax, ebp
mov     ecx, [ecx+2]
sar     ecx, 10h
mov     ebp, ds:dword_56F186
sar     ebp, 10h
sub     ebp, ecx
imul    eax, eax
imul    edi, edi
add     edi, eax
mov     eax, ebp
imul    eax, ebp
add     eax, edi
call    sub_4EF075
mov     ecx, eax
cmp     eax, ebx
ja      short loc_42A774
cmp     eax, edx
mov     eax, ebx
sub     eax, ecx
imul    eax, esi
sub     ebx, edx
xor     edx, edx
div     ebx
mov     byte ptr ds:dword_77E954+3, al

loc_42A774:
pop     ebp
pop     edi
pop     esi
retn
sub_42A70B endp




sub_42A778 proc near
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, ds:dword_5110C0
cmp     ecx, 8
jb      short loc_42A78E
xor     eax, eax
pop     esi
pop     edx
pop     ecx
retn

loc_42A78E:
mov     eax, ds:dword_5110BC
add     eax, ecx
and     eax, 7
mov     ds:dword_55926C[eax*4], edx
mov     eax, 1
lea     esi, [ecx+eax]
mov     ds:dword_5110C0, esi
pop     esi
pop     edx
pop     ecx
retn
sub_42A778 endp




sub_42A7B1 proc near
push    edx
xor     edx, edx
mov     ds:dword_5110BC, edx
mov     ds:dword_5110C0, edx
call    sub_42A778
pop     edx
retn
sub_42A7B1 endp

jpt_42A80E dd offset def_42A80E ; jump table for switch statement
dd offset loc_42A815
dd offset loc_42A850
dd offset loc_42A822
dd offset loc_42A83F



sub_42A7DB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, ds:dword_5110C0
test    edx, edx
jz      def_42A80E      ; jumptable 0042A80E default case, case 0
mov     eax, ds:dword_5110BC
mov     eax, ds:dword_55926C[eax*4]
lea     ecx, [edx-1]
mov     ds:dword_5110C0, ecx
mov     eax, [eax]
cmp     eax, 4          ; switch 5 cases
ja      def_42A80E      ; jumptable 0042A80E default case, case 0
jmp     jpt_42A80E[eax*4] ; switch jump

loc_42A815:             ; jumptable 0042A80E case 1
xor     bl, bl
mov     byte ptr ds:dword_77E954+1, bl
jmp     def_42A80E      ; jumptable 0042A80E default case, case 0

loc_42A822:             ; jumptable 0042A80E case 3
mov     ecx, 3Dh ; '='
mov     edi, offset unk_5592E8
mov     esi, offset byte_77E950
rep movsd
mov     byte ptr ds:dword_77E954+1, 6
jmp     def_42A80E      ; jumptable 0042A80E default case, case 0

loc_42A83F:             ; jumptable 0042A80E case 4
mov     ecx, 3Dh ; '='
mov     edi, offset byte_77E950
mov     esi, offset unk_5592E8
rep movsd

loc_42A850:             ; jumptable 0042A80E case 2
mov     byte ptr ds:dword_77E954+1, 4
jmp     def_42A80E      ; jumptable 0042A80E default case, case 0
sub_42A7DB endp




sub_42A85C proc near
cmp     byte ptr ds:dword_77E958, 0
jnz     short loc_42A868
xor     eax, eax
retn

loc_42A868:
mov     eax, ds:dword_77E964
retn
sub_42A85C endp




sub_42A86E proc near
mov     ds:byte_77E952, al
mov     ds:byte_77E953, dl
retn
sub_42A86E endp

push    esi
push    edi
mov     edi, offset dword_77E998
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E95C, edx
mov     ds:dword_77E960, ebx
mov     ds:dword_77E964, ecx
pop     edi
pop     esi
retn
push    esi
push    edi
mov     edi, offset dword_77E9C8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E980, edx
mov     ds:dword_77E984, ebx
mov     ds:dword_77E988, ecx
pop     edi
pop     esi
retn



sub_42A8BE proc near
push    esi
push    edi
mov     edi, offset dword_77E9B8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E974, edx
mov     ds:dword_77E978, ebx
mov     ds:dword_77E97C, ecx
pop     edi
pop     esi
retn
sub_42A8BE endp

push    esi
push    edi
mov     edi, offset unk_77E9A8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E968, edx
mov     ds:dword_77E96C, ebx
mov     ds:dword_77E970, ecx
pop     edi
pop     esi
retn
push    esi
push    edi
mov     edi, offset dword_77E9D8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, edx
mov     ds:dword_77E990, ebx
mov     ds:dword_77E994, ecx
pop     edi
pop     esi
retn



sub_42A924 proc near
push    edx
movsx   edx, word ptr [eax]
add     ds:dword_77E9B8, edx
mov     edx, [eax]
sar     edx, 10h
add     ds:dword_77E9BC, edx
mov     edx, [eax+2]
sar     edx, 10h
add     ds:dword_77E9C0, edx
movsx   edx, word ptr [eax]
add     ds:dword_77E9D8, edx
mov     edx, [eax]
sar     edx, 10h
add     ds:dword_77E9DC, edx
mov     eax, [eax+2]
sar     eax, 10h
add     ds:dword_77E9E0, eax
pop     edx
retn
sub_42A924 endp

mov     al, byte ptr ds:dword_5593E0
mov     byte ptr ds:dword_560BDC+1, al
mov     al, byte ptr ds:dword_5593DC
mov     byte ptr ds:dword_560BDC, al
mov     ds:dword_51107C, 200h
xor     ah, ah
mov     byte ptr ds:dword_5F88B1, ah
retn



sub_42A98E proc near
mov     al, byte ptr ds:dword_5593E0
mov     byte ptr ds:dword_560BDC+1, al
mov     al, byte ptr ds:dword_5593DC
mov     byte ptr ds:dword_560BDC, al
sub_42A98E endp




sub_42A9A2 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ds:dword_51107C, 200h
xor     ah, ah
mov     byte ptr ds:dword_5F88B1, ah
mov     ds:byte_77E951, 2
mov     byte ptr ds:dword_77E958+2, 40h ; '@'
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     eax, ds:dword_77E95C
mov     ds:dword_77E974, eax
mov     eax, ds:dword_77E960
and     eax, 0FFFh
mov     ds:dword_77E978, eax
mov     eax, ds:dword_77E964
mov     ds:dword_77E97C, eax
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     ds:dword_77E9D8, eax
mov     ecx, 96h
mov     ds:dword_77E9AC, ecx
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
sub     eax, ecx
mov     ds:dword_77E9DC, eax
mov     eax, ds:dword_5F837A
sar     eax, 10h
mov     ds:dword_77E9E0, eax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
mov     ds:dword_77E990, eax
mov     ds:dword_77E98C, 200h
mov     ds:dword_77E994, 30h ; '0'
mov     byte ptr ds:dword_77E958+1, 0FCh
mov     eax, ds:dword_77E978
mov     edi, ds:dword_77E990
cmp     eax, edi
jle     short loc_42AA87
lea     edx, [edi+1000h]
mov     ecx, edx
sub     ecx, eax
sub     eax, edi
cmp     eax, ecx
jle     short loc_42AAA3
mov     ds:dword_77E990, edx
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_42AA87:
lea     edx, [eax+1000h]
mov     ecx, edx
sub     ecx, edi
mov     eax, edi
sub     eax, ds:dword_77E978
cmp     eax, ecx
jle     short loc_42AAA3
mov     ds:dword_77E978, edx

loc_42AAA3:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_42A9A2 endp




sub_42AAA8 proc near
push    esi
movzx   esi, byte ptr ds:dword_560BDC+1
mov     ds:dword_5593E0, esi
movzx   esi, byte ptr ds:dword_560BDC
mov     ds:dword_5593DC, esi
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
call    sub_42AAD8
pop     esi
retn
sub_42AAA8 endp




sub_42AAD8 proc near
push    esi
push    edi
push    ebp
mov     ebp, edx
mov     ds:dword_51107C, 200h
xor     dl, dl
mov     byte ptr ds:dword_5F88B1, dl
mov     ds:byte_77E951, 1
mov     byte ptr ds:dword_77E958+2, 40h ; '@'
mov     edi, offset dword_77E9B8
mov     esi, offset dword_77E998
movsd
movsd
movsd
movsd
mov     edx, ds:dword_77E95C
mov     ds:dword_77E974, edx
mov     edx, ds:dword_77E960
and     edx, 0FFFh
mov     ds:dword_77E978, edx
mov     edx, ds:dword_77E964
mov     ds:dword_77E97C, edx
mov     edi, offset dword_77E9D8
mov     esi, eax
movsd
movsd
movsd
movsd
mov     ds:dword_77E98C, ebp
and     ebx, 0FFFh
mov     ds:dword_77E990, ebx
mov     ds:dword_77E994, ecx
mov     byte ptr ds:dword_77E958+1, 0FCh
mov     eax, ds:dword_77E978
cmp     eax, ebx
jle     short loc_42AB82
lea     edx, [ebx+1000h]
mov     ecx, edx
sub     ecx, eax
sub     eax, ebx
cmp     eax, ecx
jle     short loc_42AB9E
mov     ds:dword_77E990, edx
pop     ebp
pop     edi
pop     esi
retn

loc_42AB82:
lea     edx, [eax+1000h]
mov     ecx, edx
sub     ecx, ebx
mov     eax, ebx
sub     eax, ds:dword_77E978
cmp     eax, ecx
jle     short loc_42AB9E
mov     ds:dword_77E978, edx

loc_42AB9E:
pop     ebp
pop     edi
pop     esi
retn
sub_42AAD8 endp




sub_42ABA2 proc near
cmp     byte ptr ds:dword_77E958+2, 0
jge     short loc_42ABAE
xor     eax, eax
retn

loc_42ABAE:
