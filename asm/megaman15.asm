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

loc_422543:
cmp     bh, 14h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebp, [eax+10h]
cmp     ebp, 1
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, ebp
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, ebp
jmp     loc_422214

loc_42256A:             ; jumptable 00422165 case 10
mov     dl, [eax+9]
cmp     dl, 14h
jnz     loc_422622
mov     eax, [eax+10h]
cmp     eax, 116h
jb      short loc_4225D1
jbe     loc_4225FE
cmp     eax, 1AEh
jb      short loc_4225B4
jbe     loc_4224A7
cmp     eax, 217h
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_4223A3
cmp     eax, 230h
jz      loc_4224A7
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4225B4:
cmp     eax, 1A4h
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422359
cmp     eax, 1A9h
jz      short loc_422608
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4225D1:
cmp     eax, 87h
jb      short loc_4225F5
jbe     loc_422359
cmp     eax, 9Fh
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_4225FE
cmp     eax, 0FEh
jmp     loc_422301

loc_4225F5:
cmp     eax, 14h
jnz     def_422165      ; jumptable 00422165 default case

loc_4225FE:
mov     ebx, 4
jmp     loc_42233D

loc_422608:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     byte ptr [ecx+0ACh], 7
jmp     loc_422538

loc_422622:
cmp     dl, 15h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 400h
mov     byte ptr [ecx+0ACh], 4
mov     word ptr [ebx+2], 0
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 8
jmp     loc_422214

loc_422660:             ; jumptable 00422165 case 11
mov     bl, [eax+9]
cmp     bl, 16h
jnz     short loc_4226B5
mov     eax, [eax+10h]
cmp     eax, 69h ; 'i'
jb      short loc_42268C
jbe     short loc_4226AB
cmp     eax, 0BEh
jb      short loc_422687
jbe     short loc_4226AB
cmp     eax, 0C8h

loc_422680:
jz      short loc_4226A1
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422687:
cmp     eax, 78h ; 'x'
jmp     short loc_422680

loc_42268C:
cmp     eax, 28h ; '('
jb      short loc_422698
jbe     short loc_4226AB
cmp     eax, 3Ch ; '<'
jmp     short loc_422680

loc_422698:
cmp     eax, 0Ah
jnz     def_422165      ; jumptable 00422165 default case

loc_4226A1:
mov     ebx, 0Eh
jmp     loc_42234B

loc_4226AB:
mov     ebx, 8
jmp     loc_42234B

loc_4226B5:
cmp     bl, 17h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 0
mov     byte ptr [ecx+0ACh], 8
mov     word ptr [esi+2], 0
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
jmp     loc_422214

loc_4226F0:             ; jumptable 00422165 case 12
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 18h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 0Ah
jmp     loc_422181

loc_42270A:             ; jumptable 00422165 case 13
cmp     byte ptr [eax+9], 19h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 9
jmp     loc_42229A

loc_42272A:             ; jumptable 00422165 case 14
mov     byte ptr [ecx+0ADh], 0FFh
mov     dl, [eax+9]
cmp     dl, 1Eh
jnz     short loc_42279C
mov     eax, [eax+10h]
cmp     eax, 0DCh
jb      short loc_42277B
jbe     loc_422359
cmp     eax, 190h
jb      short loc_422771
jbe     loc_422359
cmp     eax, 19Ah
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422338
cmp     eax, 1D6h
jmp     loc_422301

loc_422771:
cmp     eax, 0FAh
jmp     loc_422321

loc_42277B:
cmp     eax, 3Ch ; '<'
jb      short loc_42278E
jbe     loc_422359
cmp     eax, 5Ah ; 'Z'
jmp     loc_422321

loc_42278E:
cmp     eax, 1Eh
jnz     def_422165      ; jumptable 00422165 default case
jmp     loc_422338

loc_42279C:
cmp     dl, 1Fh
jnz     def_422165      ; jumptable 00422165 default case
mov     edi, [eax+10h]
cmp     edi, 0Ah
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, edi
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, edi
jmp     loc_422214

loc_4227C3:             ; jumptable 00422165 case 15
cmp     byte ptr [eax+9], 1Fh
jnz     short loc_4227EB
cmp     dword ptr [eax+10h], 14h
jnz     short loc_4227EB
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_422847

loc_4227EB:
cmp     byte ptr [ecx+0A4h], 27h ; '''
jnz     short def_422165 ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 9
mov     word ptr [esi+2], 27h ; '''
jmp     loc_42221D

loc_422806:             ; jumptable 00422165 case 16
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 21h ; '!'
jnz     short def_422165 ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     short def_422165 ; jumptable 00422165 default case
mov     byte ptr [ebx+12h], 0
jmp     loc_42221D

loc_422822:             ; jumptable 00422165 case 17
mov     byte ptr [ecx+0ADh], 0FFh

def_422165:             ; jumptable 00422165 default case
pop     ebp
pop     edi
pop     esi
pop     ecx
sub_422149 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_46]



sub_42282E proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_510B91[ebx*4]
mov     [edx+4], eax
retn
sub_42282E endp




sub_422847 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_510BBD[ebx*4]
mov     [edx+8], eax
retn
sub_422847 endp




sub_422860 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_422885
jbe     short loc_422888
cmp     al, 7Fh
jnz     short loc_422885
mov     byte ptr [edx+0Eh], 0
jmp     short loc_422888

loc_422885:
inc     byte ptr [esi+0Eh]

loc_422888:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4228CA
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 0E000Dh
mov     eax, ecx
call    sub_4EE044

loc_4228CA:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4228ED
jbe     short loc_4228F0
cmp     al, 7Fh
jnz     short loc_4228ED
mov     byte ptr [esi+11h], 0
jmp     short loc_4228F0

loc_4228ED:
inc     byte ptr [esi+11h]

loc_4228F0:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_422932
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, edi
call    sub_4EE044

loc_422932:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_422860 endp




sub_42293D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+550h]
xor     ebx, ebx
mov     bl, [eax+8]
call    ds:funcs_42294D[ebx*4]
cmp     word ptr [ecx+7Ah], 2
jge     short loc_422994
cmp     ds:word_5F83D2, 0
jg      short loc_422990
test    byte ptr [ecx+2], 1
jnz     short loc_42298A
test    byte ptr [ecx+1], 2
jnz     short loc_42298A
mov     word ptr [ecx+7Ah], 2
mov     word ptr [ecx+78h], 3Ch ; '<'
add     edx, 14h
mov     eax, 1E9h
call    sub_4D8BC3

loc_42298A:
or      byte ptr [ecx+1], 2
jmp     short loc_422994

loc_422990:
and     byte ptr [ecx+1], 0FDh

loc_422994:
mov     dword ptr [ecx+18h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_42293D endp




sub_42299F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+550h]
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 0
xor     eax, eax

loc_4229DA:
mov     edx, eax
mov     word ptr [esi+edx*8+196h], 4210h
inc     eax
cmp     eax, 10h
jl      short loc_4229DA
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
mov     word ptr [ecx], 26h ; '&'
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+18h], 0
mov     dword ptr [ecx+1Ch], 0
lea     eax, [ecx+28h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+52h], 0
mov     byte ptr [ecx+53h], 0
mov     dword ptr [ecx+54h], 0
mov     word ptr [ecx+70h], 0
mov     byte ptr [ecx+72h], 0
mov     byte ptr [ecx+73h], 0
mov     word ptr [ecx+7Ah], 0FFFFh
mov     word ptr [ecx+78h], 0
mov     byte ptr [ecx+7Eh], 0
mov     byte ptr [ecx+7Ch], 0
mov     byte ptr [ecx+7Dh], 0
mov     byte ptr [ecx+7Fh], 0
call    sub_4DE043
mov     [ecx+58h], eax
test    eax, eax
jz      short loc_422AB1
mov     byte ptr [eax], 1
mov     eax, [ecx+58h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+58h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+58h]
mov     byte ptr [eax+0Dh], 5
mov     byte ptr [esi+10Fh], 0FFh
mov     eax, [ecx+58h]
or      byte ptr [eax+6], 20h

loc_422AB1:
call    sub_4DE043
mov     [ecx+5Ch], eax
test    eax, eax
jz      short loc_422AE5
mov     byte ptr [eax], 1
mov     eax, [ecx+5Ch]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+5Ch]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+5Ch]
mov     byte ptr [eax+0Dh], 0Ah
mov     byte ptr [esi+123h], 0FFh
mov     eax, [ecx+5Ch]
or      byte ptr [eax+6], 20h

loc_422AE5:
call    sub_4DE043
mov     [ecx+60h], eax
test    eax, eax
jz      short loc_422B19
mov     byte ptr [eax], 1
mov     eax, [ecx+60h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+60h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+60h]
mov     byte ptr [eax+0Dh], 6
mov     byte ptr [esi+113h], 0FFh
mov     eax, [ecx+60h]
or      byte ptr [eax+6], 20h

loc_422B19:
call    sub_4DE043
mov     [ecx+64h], eax
test    eax, eax
jz      short loc_422B4D
mov     byte ptr [eax], 1
mov     eax, [ecx+64h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+64h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+64h]
mov     byte ptr [eax+0Dh], 0Bh
mov     byte ptr [esi+127h], 0FFh
mov     eax, [ecx+64h]
or      byte ptr [eax+6], 20h

loc_422B4D:
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 7
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], 0
mov     dword ptr [esi+10h], 0
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     ebx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 3
add     eax, edx
mov     ds:dword_559258, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
mov     ds:dword_55925C, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
shl     eax, 2
mov     ds:dword_559260, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ds:dword_559264, eax
mov     ds:dword_559268, 0FFFFFFFFh
mov     dword ptr [ecx+74h], offset dword_559258
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
push    offset unk_805058
mov     ecx, 81h
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
mov     eax, esi
call    sub_422C4D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42299F endp

db 8Dh, 40h, 0
jpt_422D14 dd offset loc_422D33 ; jump table for switch statement
dd offset loc_422D49
dd offset loc_422D33
dd offset loc_422D33
dd offset loc_422D33
dd offset loc_422D1B
dd offset loc_422D33



sub_422C4D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
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
xor     eax, eax

loc_422C88:
mov     edx, eax
mov     word ptr [ebp+edx*8+196h], 4210h
inc     eax
cmp     eax, 10h
jl      short loc_422C88
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
call    sub_436700
and     byte ptr [ebp+0Eh], 0F8h
and     byte ptr [ebp+0Fh], 11h
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_422CC2
mov     eax, ebp
call    sub_42497B

loc_422CC2:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_422CC9[edx*4]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+50h]
sar     eax, 18h
mov     eax, ds:off_510C40[eax*4]
mov     [ebp+78h], eax
test    eax, eax
jz      short loc_422CF6
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0Ch], eax
jmp     short loc_422D00

loc_422CF6:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+0Ch], 0

loc_422D00:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_422D5F
mov     al, [ebp+9]
cmp     al, 6           ; switch 7 cases
ja      short def_422D14 ; jumptable 00422D14 default case
and     eax, 0FFh
jmp     jpt_422D14[eax*4] ; switch jump

loc_422D1B:             ; jumptable 00422D14 case 5
cmp     word ptr [ebp+6Eh], 0
jle     short loc_422D33 ; jumptable 00422D14 cases 0,2-4,6
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+70h]
dec     ebx
mov     [eax+70h], bx
test    bx, bx
ja      short loc_422D53

loc_422D33:             ; jumptable 00422D14 cases 0,2-4,6
cmp     word ptr [ebp+6Eh], 0
jle     short loc_422D43
mov     eax, ebp
call    sub_424865
jmp     short loc_422D53

loc_422D43:
mov     byte ptr [ebp+9], 7
jmp     short loc_422D53

loc_422D49:             ; jumptable 00422D14 case 1
mov     byte ptr [ebp+9], 2
jmp     short loc_422D53

def_422D14:             ; jumptable 00422D14 default case
mov     byte ptr [ebp+9], 0

loc_422D53:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_422D5F:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+0Ah]
test    di, di
jz      short loc_422D72
mov     edx, edi
dec     edx
mov     [eax+0Ah], dx

loc_422D72:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+78h]
test    bx, bx
jz      short loc_422D87
mov     ecx, ebx
dec     ecx
mov     [eax+78h], cx
jmp     short loc_422D8D

loc_422D87:
mov     word ptr [eax+7Ah], 0FFFFh

loc_422D8D:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_422DBD
mov     al, [ebp+0ADh]
mov     ch, [ebp+0ACh]
cmp     al, ch
jz      short loc_422DB4
xor     edx, edx
mov     dl, ch
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_422DCB

loc_422DB4:
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_422DCB

loc_422DBD:
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

loc_422DCB:
mov     ax, [ebp+14h]
sub     ax, [ebp+2Ch]
shl     eax, 4
mov     [ebp+44h], ax
mov     ax, [ebp+16h]
sub     ax, [ebp+2Eh]
shl     eax, 4
mov     [ebp+46h], ax
mov     ax, [ebp+18h]
sub     ax, [ebp+30h]
shl     eax, 4
mov     [ebp+48h], ax
test    byte ptr [ebp+0], 2
jz      short loc_422E1C
cmp     word ptr [ebp+196h], 4210h
jnz     short loc_422E1C
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_422E1C:
test    byte ptr [ebp+0], 1
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     word ptr [eax+38h], 0
test    byte ptr [eax+1], 4
jz      short loc_422E46
mov     word ptr [eax+3Ah], 0FE00h
jmp     short loc_422E4C

loc_422E46:
mov     word ptr [eax+3Ah], 200h

loc_422E4C:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+3Ch], 0
lea     ebx, [eax+40h]
lea     edx, [eax+38h]
lea     eax, [ebp+250h]
call    sub_4EF1FB
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+40h]
add     ax, [ebp+190h]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+10h], ax
mov     ax, [edx+44h]
mov     si, [ebp+192h]
add     eax, esi
mov     [edx+12h], ax
mov     ax, [edx+48h]
mov     di, [ebp+194h]
add     eax, edi
mov     [edx+14h], ax
push    0
push    0
mov     eax, [edx+4Fh]
sar     eax, 18h
xor     edx, edx
mov     ebx, [esp+24h+var_1C]
mov     dx, [ebx+8]
or      edx, ds:dword_510C4C[eax*4]
push    edx
lea     eax, [ebx+18h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebx+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 68h ; 'h'
call    sub_4E01FC
jmp     def_4232E3      ; jumptable 004232E3 default case
sub_422C4D endp         ; jumptable 00423877 default case
; jumptable 00423D8F default case


; Attributes: thunk

sub_422EDC proc near
jmp     sub_4DE336
sub_422EDC endp




sub_422EE1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_422F02
cmp     al, 1
jz      loc_422F86
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_422F02:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0
or      byte ptr [esi], 20h
mov     word ptr [esi+50h], 0FFA0h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
mov     [esi+53h], ah
mov     [esi+52h], ah
call    sub_4DE043
test    eax, eax
jz      short loc_422F86
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FDh
mov     word ptr [eax+2Ch], 0C8h
mov     word ptr [eax+2Eh], 0C8h
mov     word ptr [eax+30h], 0C8h
mov     word ptr [eax+32h], 700h
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 500h
mov     byte ptr [eax+0Bh], 3Ch ; '<'
mov     byte ptr [eax+0Ah], 0

loc_422F86:
mov     eax, edi
call    sub_42C592
add     ax, [esi+50h]
mov     bx, [edi+16h]
sub     eax, ebx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [edi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+4], 3Fh ; '?'
jnz     short loc_422FCE
or      byte ptr [esi], 1

loc_422FCE:
mov     ax, [esi+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [esi+4], ax
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_422EE1 endp         ; jumptable 004240AD default case

db 90h
jpt_423012 dd offset loc_423019 ; jump table for switch statement
dd offset loc_423083
dd offset loc_4230B1
dd offset loc_423161
dd offset loc_423253



sub_422FF5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_423012      ; jumptable 00423012 default case
xor     edx, edx
mov     dl, al
jmp     jpt_423012[edx*4] ; switch jump

loc_423019:             ; jumptable 00423012 case 0
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0Dh
or      byte ptr [esi], 20h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [esi+8], ax
mov     byte ptr [esi+53h], 1
mov     [esi+52h], ah
cmp     word ptr [esi+7Ah], 1
jge     def_423012      ; jumptable 00423012 default case
test    byte ptr [esi+2], 3
jnz     def_423012      ; jumptable 00423012 default case
mov     word ptr [esi+7Ah], 1
mov     word ptr [esi+78h], 3Ch ; '<'
lea     edx, [edi+14h]
mov     eax, 1E4h

loc_423079:
call    sub_4D8BC3
jmp     def_423012      ; jumptable 00423012 default case

loc_423083:             ; jumptable 00423012 case 1
cmp     byte ptr [edi+0A7h], 0
jge     def_423012      ; jumptable 00423012 default case
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0Eh
mov     word ptr [esi+4], 10h
mov     word ptr [esi+50h], 0FF00h
mov     byte ptr [esi+52h], 1
jmp     def_423012      ; jumptable 00423012 default case

loc_4230B1:             ; jumptable 00423012 case 2
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     ebp, [edi+14h]
mov     ecx, 100h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, edi
call    sub_42C592
mov     dx, [esi+50h]
add     edx, eax
mov     ax, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, ds:dword_564C72[eax*2]
sar     eax, 10h
mov     ebx, [edi+4Ch]
sar     ebx, 10h
imul    ebx, eax
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     def_423012      ; jumptable 00423012 default case
inc     byte ptr [edi+0Ah]
mov     byte ptr [edi+0ACh], 0Fh
mov     word ptr [esi+4], 0
mov     word ptr [esi+6], 0
mov     word ptr [esi+54h], 78h ; 'x'
mov     word ptr [esi+50h], 0C0h
mov     byte ptr [esi+52h], 1
mov     edx, ebp
mov     eax, 1D3h
call    sub_4D8BC3
or      byte ptr [esi+1], 4
jmp     def_423012      ; jumptable 00423012 default case

loc_423161:             ; jumptable 00423012 case 3
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     ecx, 8
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     ax, word ptr ds:dword_5F880E
add     ax, [esi+50h]
mov     dx, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [edi+4Ch]
sar     ebx, 10h
add     ebx, eax
mov     edx, [edi+4Ah]
sar     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DD43B
mov     bx, [edi+4Ch]
cmp     bx, 600h
jge     short loc_4231D9
mov     ecx, ebx
add     ecx, 60h ; '`'
mov     [edi+4Ch], cx

loc_4231D9:
mov     ax, [esi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [esi+4], ax
mov     ax, [esi+6]
cmp     ax, 40h ; '@'
jge     short loc_4231FD
mov     edx, eax
add     edx, 4
mov     [esi+6], dx

loc_4231FD:
test    byte ptr [esi+0Dh], 0Fh
jnz     short loc_423215
mov     bx, [esi+54h]
dec     ebx
mov     [esi+54h], bx
test    bx, bx
jge     def_423012      ; jumptable 00423012 default case

loc_423215:
inc     byte ptr [edi+0Ah]
mov     byte ptr [edi+0ACh], 10h
mov     word ptr [esi+4], 10h
mov     word ptr [esi+50h], 0FE80h
mov     byte ptr [esi+52h], 0
xor     eax, eax
mov     al, [edi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
lea     edx, [edi+14h]
mov     eax, 1D4h
jmp     loc_423079

loc_423253:             ; jumptable 00423012 case 4
mov     eax, edi
call    sub_42C592
mov     dx, [esi+50h]
add     edx, eax
mov     ax, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [edi+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_423012      ; jumptable 00423012 default case
or      byte ptr [esi], 1
and     byte ptr [esi+1], 0FBh
jmp     def_423012      ; jumptable 00423012 default case
sub_422FF5 endp

db 8Bh, 0C0h
jpt_4232E3 dd offset loc_4232EA ; jump table for switch statement
dd offset loc_42337C
dd offset loc_423436
dd offset loc_4234EA



sub_4232C1 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 550h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_4232E3[edx*4] ; switch jump

loc_4232EA:             ; jumptable 004232E3 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0Dh
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_42331E
mov     eax, 0FFFFFFC0h
jmp     short loc_423323

loc_42331E:
mov     eax, 40h ; '@'

loc_423323:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 2
mov     [ebp+64h], ax
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+50h], 60h ; '`'
mov     word ptr [eax+4], 10h
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     byte ptr [edx+53h], 2
mov     [edx+52h], ah
and     byte ptr [edx], 0FDh
lea     edx, [ebp+14h]
mov     eax, 1DCh
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_42337C:             ; jumptable 004232E3 case 1
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
add     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+2]
sar     ebx, 10h
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [ebp+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_4233DB:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      edx, ebx
or      dh, 80h
mov     ebx, edx
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_4233DB
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
and     byte ptr [ebp+0], 0FDh
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Fh
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_423436:             ; jumptable 004232E3 case 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0ACh], 0
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FFA0h
mov     dword ptr [eax+40h], 0
mov     dword ptr [eax+44h], 0FF3F0000h
mov     dword ptr [eax+48h], 4000000h
lea     esi, [eax+38h]
lea     edi, [eax+40h]
mov     edx, esi
mov     eax, edi
call    sub_4DD57B
push    0
push    0
lea     edx, [ebp+2Ch]
mov     eax, esi
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     ecx, 3000h
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5
lea     edi, [ebp+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+38h]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+40h]
movsd
movsd
movsd
movsd
lea     esi, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, esi
mov     eax, 20Bh
call    sub_4D8BC3

loc_4234EA:             ; jumptable 004232E3 case 3
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_423532:
mov     edx, 10h
mov     ebx, [esp+1Ch+var_1C]
sub     dx, [ebx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      ebx, edx
or      bh, 80h
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_423532
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [eax], 3
jmp     def_4232E3      ; jumptable 004232E3 default case
sub_4232C1 endp         ; jumptable 00423877 default case
; jumptable 00423D8F default case
db 8Bh, 0C0h
jpt_4235B5 dd offset loc_4235BC ; jump table for switch statement
dd offset loc_423631
dd offset loc_423733
dd offset loc_4237B0
dd offset loc_4237DF



sub_423599 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
xor     edx, edx
mov     dl, al
jmp     jpt_4235B5[edx*4] ; switch jump

loc_4235BC:             ; jumptable 004235B5 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 6
or      byte ptr [edi], 20h
mov     word ptr [edi+50h], 60h ; '`'
mov     word ptr [edi+4], 0
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edi+8], ax
mov     [edi+53h], ah
mov     [edi+52h], ah
mov     [edi+72h], ah
mov     [edi+73h], ah
add     esi, 14h
mov     edx, esi
mov     eax, 1D7h
call    sub_4D8BC3
cmp     word ptr [edi+7Ah], 1
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     word ptr [edi+7Ah], 1
mov     word ptr [edi+78h], 3Ch ; '<'
mov     edx, esi
mov     eax, 1E3h
call    sub_4D8BC3
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_423631:             ; jumptable 004235B5 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     dx, word ptr ds:dword_5F880E
add     dx, [edi+50h]
mov     ax, [esi+16h]
sub     edx, eax
mov     [esi+4Eh], dx
mov     eax, [edi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [esi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [edi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [edi+4], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_423713
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 7
and     word ptr [edi], 0FE7Fh
xor     edx, edx
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4236CB
or      byte ptr [edi], 80h

loc_4236CB:
mov     edx, 1
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4236DF
or      byte ptr [edi+1], 1

loc_4236DF:
test    word ptr [edi], 180h
jz      short loc_4236F3
lea     edx, [esi+14h]
mov     eax, 1D8h
call    sub_4D8BC3

loc_4236F3:
mov     word ptr [esi+66h], 0
test    byte ptr [edi+2], 1
jz      short loc_423706
mov     eax, 2
jmp     short loc_42370B

loc_423706:
mov     eax, 0FFFFFFFEh

loc_42370B:
mov     [esi+64h], ax
or      byte ptr [esi+0Fh], 40h

loc_423713:
xor     edx, edx
mov     eax, esi
call    sub_424670
mov     edx, 1
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+72h]
inc     byte ptr [edi+73h]
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_423733:             ; jumptable 004235B5 case 2
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+64h]
add     [esi+66h], ax
cmp     byte ptr [edi+72h], 0
jz      short loc_42375C
xor     edx, edx
mov     eax, esi
call    sub_424670
dec     byte ptr [edi+72h]

loc_42375C:
cmp     byte ptr [edi+73h], 0
jz      short loc_423771
mov     edx, 1
mov     eax, esi
call    sub_424670
dec     byte ptr [edi+73h]

loc_423771:
cmp     byte ptr [esi+0A7h], 0
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
test    byte ptr [edi], 80h
jz      short loc_42378A
mov     eax, [edi+68h]
mov     byte ptr [eax+0Eh], 1

loc_42378A:
test    byte ptr [edi+1], 1
jz      short loc_423797
mov     eax, [edi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_423797:
inc     byte ptr [esi+0Ah]
mov     bh, [esi+0Fh]
or      bh, 80h
mov     [esi+0Fh], bh
mov     cl, bh
and     cl, 0EFh
mov     [esi+0Fh], cl
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4237B0:             ; jumptable 004235B5 case 3
mov     dl, [esi+0Fh]
test    dl, 10h
jz      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     dh, dl
and     dh, 0EFh
mov     [esi+0Fh], dh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 8
mov     word ptr [edi+4], 10h
mov     word ptr [edi+50h], 0FE80h
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4237DF:             ; jumptable 004235B5 case 4
mov     eax, esi
call    sub_42C592
mov     dx, [edi+50h]
add     edx, eax
mov     ax, [esi+16h]
sub     eax, edx
mov     [esi+4Eh], ax
mov     eax, [edi+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [esi+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

