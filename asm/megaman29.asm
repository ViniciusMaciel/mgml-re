loc_442E6F:
cmp     word ptr [esi], 0Dh
jl      loc_442DE4
jmp     short loc_442DFB

loc_442E7B:             ; jumptable 00442D94 case 9
mov     byte ptr [eax+0ACh], 8
mov     word ptr [eax+16h], 0FFFFh
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_442D94 ; jumptable 00442D94 default case
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

def_442D94:             ; jumptable 00442D94 default case
pop     esi
pop     ecx
retn
sub_442D7E endp

db 8Bh, 0C0h
jpt_442EEA dd offset loc_442EF1 ; jump table for switch statement
dd offset loc_442F00
dd offset loc_442F21
dd offset loc_442F33
dd offset loc_442F57
dd offset loc_442F69
dd offset loc_442F79
dd offset loc_442F89
dd offset loc_442F98
dd offset loc_442FA9



sub_442ED6 proc near
push    ecx
push    esi
mov     edx, ebx
mov     bl, [eax+9]
cmp     bl, 9           ; switch 10 cases
ja      def_442EEA      ; jumptable 00442EEA default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_442EEA[ecx*4] ; switch jump

loc_442EF1:             ; jumptable 00442EEA case 0
mov     byte ptr [eax+0ACh], 9
mov     word ptr [edx], 0
inc     byte ptr [eax+9]

loc_442F00:             ; jumptable 00442EEA case 1
cmp     word ptr [edx], 4
jge     short loc_442F10
add     word ptr [eax+56h], 8
inc     word ptr [edx]
jmp     short loc_442F13

loc_442F10:
inc     byte ptr [eax+9]

loc_442F13:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
jmp     loc_442FCA

loc_442F21:             ; jumptable 00442EEA case 2
mov     byte ptr [eax+0ACh], 5

loc_442F28:
mov     word ptr [edx], 0
inc     byte ptr [eax+9]
pop     esi
pop     ecx
retn

loc_442F33:             ; jumptable 00442EEA case 3
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jz      short loc_442F4F
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     loc_442FCA

loc_442F4F:
inc     bl
mov     [eax+9], bl
pop     esi
pop     ecx
retn

loc_442F57:             ; jumptable 00442EEA case 4
mov     cx, [edx]
cmp     cx, 32h ; '2'
jge     short loc_442F4F
mov     esi, ecx
inc     esi
mov     [edx], si
pop     esi
pop     ecx
retn

loc_442F69:             ; jumptable 00442EEA case 5
mov     byte ptr [eax+0ACh], 23h ; '#'
mov     byte ptr [eax+110h], 8
jmp     short loc_442F28

loc_442F79:             ; jumptable 00442EEA case 6
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_442EEA ; jumptable 00442EEA default case
jmp     short loc_442F4F

loc_442F89:             ; jumptable 00442EEA case 7
mov     byte ptr [eax+0ACh], 14h
mov     word ptr [edx], 0
inc     byte ptr [eax+9]

loc_442F98:             ; jumptable 00442EEA case 8
cmp     word ptr [edx], 10h
jge     short loc_442F28
add     word ptr [eax+56h], 72h ; 'r'
inc     word ptr [edx]
pop     esi
pop     ecx
retn

loc_442FA9:             ; jumptable 00442EEA case 9
mov     bx, [edx]
cmp     bx, 2Eh ; '.'
jge     short loc_442FBA
mov     ecx, ebx
inc     ecx
mov     [edx], cx
jmp     short loc_442FC1

loc_442FBA:
inc     byte ptr [eax+8]
mov     byte ptr [eax+9], 0

loc_442FC1:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 30h ; '0'

loc_442FCA:
call    sub_4DD43B

def_442EEA:             ; jumptable 00442EEA default case
pop     esi
pop     ecx
retn
sub_442ED6 endp

jpt_443003 dd offset loc_44300A ; jump table for switch statement
dd offset loc_44301D
dd offset loc_443080
dd offset loc_44308F
dd offset loc_4430C1
dd offset loc_4430E5



sub_442FEA proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     eax, ebx
mov     dl, [esi+9]
cmp     dl, 5           ; switch 6 cases
ja      def_443003      ; jumptable 00443003 default case
and     edx, 0FFh
jmp     jpt_443003[edx*4] ; switch jump

loc_44300A:             ; jumptable 00443003 case 0
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 15h

loc_443016:
inc     byte ptr [esi+9]
pop     edi
pop     esi
pop     ecx
retn

loc_44301D:             ; jumptable 00443003 case 1
cmp     byte ptr [esi+0A4h], 12h
jnz     short loc_44302C
mov     word ptr [eax+2], 0

loc_44302C:
mov     bh, [esi+0A4h]
cmp     bh, 0Ah
jb      short loc_443051
cmp     bh, 1Bh
jnb     short loc_443051
xor     ecx, ecx
mov     ebx, 0FFFFFFD0h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4DD43B
jmp     short loc_44306C

loc_443051:
cmp     byte ptr [esi+0A4h], 1Bh
jnz     short loc_44306C
mov     word ptr [esi+16h], 0FFCCh
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_44306C:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_443003      ; jumptable 00443003 default case
jmp     short loc_443016

loc_443080:             ; jumptable 00443003 case 2
mov     byte ptr [esi+0ACh], 14h
mov     word ptr [ebx], 0
inc     byte ptr [esi+9]

loc_44308F:             ; jumptable 00443003 case 3
mov     cx, [eax]
cmp     cx, 10h
jge     short loc_4430A0
mov     edi, ecx
inc     edi
mov     [eax], di
jmp     short loc_4430A8

loc_4430A0:
mov     word ptr [eax], 0
inc     byte ptr [esi+9]

loc_4430A8:
sub     word ptr [esi+56h], 38h ; '8'
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 10h

loc_4430B6:
mov     eax, esi
call    sub_4DD43B
pop     edi
pop     esi
pop     ecx
retn

loc_4430C1:             ; jumptable 00443003 case 4
mov     dx, [ebx]
cmp     dx, 0Ah
jge     short loc_4430D2
mov     ebx, edx
inc     ebx
mov     [eax], bx
jmp     short loc_4430DA

loc_4430D2:
mov     word ptr [ebx], 0
inc     byte ptr [esi+9]

loc_4430DA:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     short loc_4430B6

loc_4430E5:             ; jumptable 00443003 case 5
mov     word ptr [esi+56h], 0C00h
mov     byte ptr [esi+0ACh], 17h

def_443003:             ; jumptable 00443003 default case
pop     edi
pop     esi
pop     ecx
retn
sub_442FEA endp




sub_4430F6 proc near
push    edx
push    esi
push    edi
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_443118[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4430F6 endp




sub_443123 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4431A8
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+0Ch], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
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
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
jmp     short loc_4431C4

loc_4431A8:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4431BD
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_4431BD:
mov     eax, ecx
call    sub_4DEADD

loc_4431C4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443123 endp

jpt_4431EA dd offset loc_4431F1 ; jump table for switch statement
dd offset loc_443206
dd offset loc_44321B
dd offset loc_443224



sub_4431DA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      short def_4431EA ; jumptable 004431EA default case
xor     edx, edx
mov     dl, al
jmp     jpt_4431EA[edx*4] ; switch jump

loc_4431F1:             ; jumptable 004431EA case 0
xor     ebx, ebx
mov     edx, 0Dh

loc_4431F8:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_443206:             ; jumptable 004431EA case 1
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_44323C
inc     al
mov     [ecx+9], al
jmp     short loc_44323C

loc_44321B:             ; jumptable 004431EA case 2
xor     ebx, ebx
mov     edx, 2Ah ; '*'
jmp     short loc_4431F8

loc_443224:             ; jumptable 004431EA case 3
mov     ah, [ecx+0Ch]
inc     ah
mov     [ecx+0Ch], ah
cmp     ah, 20h ; ' '
jnz     short loc_44323C
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_44323C:
mov     eax, ecx
call    sub_4DEADD

def_4431EA:             ; jumptable 004431EA default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4431DA endp




sub_443247 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_44325D
jbe     short loc_443292
cmp     al, 2
jz      short loc_4432A2
pop     edx
pop     ecx
pop     ebx
retn

loc_44325D:
test    al, al
jnz     short loc_4432BE
mov     ebx, 7
mov     edx, 2Ah ; '*'
mov     eax, ecx
call    sub_4DE96B
mov     dl, [ecx+0Ch]
inc     dl
mov     [ecx+0Ch], dl
cmp     dl, 3
jnz     short loc_443285
mov     byte ptr ds:dword_560BE0+3, dl

loc_443285:
cmp     byte ptr [ecx+0Ch], 0Fh
jnz     short loc_4432BE

loc_44328B:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_443292:
xor     ebx, ebx
mov     edx, 0Eh
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_44328B

loc_4432A2:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4432B7
mov     eax, ecx
call    sub_4DE2F6

loc_4432B7:
mov     eax, ecx
call    sub_4DEADD

loc_4432BE:
pop     edx
pop     ecx
pop     ebx
retn
sub_443247 endp




sub_4432C2 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4432D8
mov     eax, edx
call    sub_443306
inc     byte ptr [edx+8]

loc_4432D8:
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
mov     ecx, [edx+9]
sar     ecx, 18h
mov     eax, edx
call    ds:funcs_4432FA[ecx*4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4432C2 endp




sub_443306 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr [ecx+0Eh], 1
jnz     short loc_443342
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
jmp     short loc_443356

loc_443342:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h

loc_443356:
cmp     byte ptr [ecx+0Fh], 1
jnz     short loc_443367
mov     word ptr [ecx+15Eh], 318Ch
jmp     short loc_443370

loc_443367:
mov     word ptr [ecx+15Eh], 4210h

loc_443370:
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
retn
sub_443306 endp




sub_443395 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4433B6
mov     edx, [ecx+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4433B6:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_443395 endp




sub_4433C1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4433E1
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
jmp     short loc_4433E8

loc_4433E1:
mov     eax, esi
call    sub_4DEADD

loc_4433E8:
xor     ecx, ecx
mov     ebx, 200h
cmp     word ptr [esi+158h], 400h
jnz     loc_443476
jmp     loc_4434E1
sub_4433C1 endp




sub_443403 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_560BEC
cmp     edx, 14h
jge     short loc_443422
sub     word ptr [eax+18h], 3
sub     dword ptr [eax+24h], 39581h
jmp     short loc_443453

loc_443422:
cmp     edx, 28h ; '('
jge     short loc_443453
inc     word ptr [eax+14h]
dec     word ptr [eax+18h]
add     dword ptr [eax+1Ch], 19581h
sub     dword ptr [eax+24h], 19581h
jmp     short loc_443453
sub_443403 endp




sub_44343F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h

loc_44344E:
call    sub_4DD43B

loc_443453:
cmp     byte ptr [esi+9], 0
jnz     loc_443553
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]

loc_44346F:
xor     ecx, ecx
mov     ebx, 200h

loc_443476:
mov     edx, 28h ; '('

loc_44347B:
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44343F endp




sub_443487 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_560BEC
cmp     edx, 14h
jge     short loc_4434B2
sub     word ptr [eax+18h], 3
sub     dword ptr [eax+24h], 39581h
sub     word ptr [eax+14h], 3
sub     dword ptr [eax+1Ch], 39581h
jmp     short loc_4434C2

loc_4434B2:
cmp     edx, 28h ; '('
jge     short loc_4434C2
dec     word ptr [eax+18h]
sub     dword ptr [eax+24h], 19581h

loc_4434C2:
cmp     byte ptr [esi+9], 0
jnz     short loc_4434E8
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]

loc_4434DA:
xor     ecx, ecx
mov     ebx, 200h

loc_4434E1:
mov     edx, 50h ; 'P'
jmp     short loc_44347B

loc_4434E8:
mov     eax, esi
call    sub_4DEADD
jmp     short loc_4434DA
sub_443487 endp




sub_4434F1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     ds:dword_560BEC, 4Bh ; 'K'
jle     short loc_4434C2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
call    sub_4DD43B
jmp     short loc_4434C2
sub_4434F1 endp




sub_443510 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_443533
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
jmp     loc_44346F

loc_443533:
mov     edx, ds:dword_560BEC
cmp     edx, 50h ; 'P'
jle     short loc_443553
cmp     edx, 7Dh ; '}'
jge     short loc_44355F
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B

loc_443553:
mov     eax, esi
call    sub_4DEADD
jmp     loc_44346F

loc_44355F:
cmp     edx, 8Bh
jge     short loc_443553
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, esi
call    sub_4DD43B
cmp     ds:dword_560BEC, 7Dh ; '}'
jnz     short loc_443553
xor     ebx, ebx
mov     edx, 13h
mov     eax, esi
call    sub_4DE96B
jmp     loc_44346F
sub_443510 endp




sub_443593 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     loc_44344E
sub_443593 endp




sub_4435A7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4435AD[edx*4]
pop     edx
retn
sub_4435A7 endp




sub_4435B6 proc near

var_28= byte ptr -28h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ecx+0Ch]
mov     ecx, 100h
lea     edx, [esp+30h+var_28]
call    sub_4DD4C5
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_515000
mov     dword ptr [ebp+10h], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_443697
add     esp, 10h

loc_443690:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4435B6 endp




sub_443697 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+438h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4436E4[ecx*4]
test    byte ptr [edx], 1
jz      short loc_4436FD
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_4436FD:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_44371C
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_443723

loc_44371C:
mov     eax, ebp
call    sub_4DEADD

loc_443723:
test    byte ptr [ebp+0], 2
jz      loc_443690
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_443690
sub_443697 endp



; Attributes: thunk

sub_443745 proc near
jmp     sub_4DE2F6
sub_443745 endp




sub_44374A proc near
push    ebx
push    edx
push    esi
lea     edx, [eax+438h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_443766
jbe     short loc_443787
cmp     bl, 2
jz      short loc_4437A9
pop     esi
pop     edx
pop     ebx
retn

loc_443766:
test    bl, bl
jnz     short loc_4437D1
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0
mov     byte ptr [eax+110h], 9
mov     word ptr [edx+4], 0Ah
pop     esi
pop     edx
pop     ebx
retn

loc_443787:
mov     si, [edx+4]
dec     esi
mov     [edx+4], si
test    si, si
jge     short loc_4437D1
mov     byte ptr [eax+110h], 0Ah
mov     word ptr [edx+4], 5
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ebx
retn

loc_4437A9:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_4437D1
mov     byte ptr [eax+110h], 9
mov     bx, [edx+2]
xor     bh, bh
and     bl, 3Fh
add     ebx, 10h
mov     [edx+4], bx
dec     byte ptr [eax+0Ah]

loc_4437D1:
pop     esi
pop     edx
pop     ebx
retn
sub_44374A endp




sub_4437D5 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_4437E2
jbe     short loc_4437FB
pop     edx
retn

loc_4437E2:
test    dl, dl
jnz     short loc_443815
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 13h
mov     byte ptr [eax+110h], 0Ah
pop     edx
retn

loc_4437FB:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_443815
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+110h], 9

loc_443815:
pop     edx
retn
sub_4437D5 endp




sub_443817 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_443842
inc     al
mov     [ecx+0Ah], al
mov     byte ptr [ecx+0ACh], 21h ; '!'
lea     edx, [ecx+14h]
mov     eax, 0DAh
call    sub_4D8BC3
mov     byte ptr [ecx+110h], 7

loc_443842:
pop     edx
pop     ecx
retn
sub_443817 endp




sub_443845 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 438h
mov     dl, [esi+0Ah]
cmp     dl, 1
jb      short loc_44385F
jbe     short loc_44389C
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44385F:
test    dl, dl
jnz     loc_443991
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 2
mov     word ptr [esi+44h], 80h
xor     edx, edx
mov     dl, [esi+3]
mov     dx, ds:word_515012[edx*8]
mov     [esi+64h], dx
mov     byte ptr [esi+110h], 9
mov     word ptr [eax+4], 0Ah
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_44389C:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4438D9
cmp     byte ptr [esi+110h], 9
jnz     short loc_4438C2
mov     byte ptr [esi+110h], 0Ah
mov     word ptr [eax+4], 5
jmp     short loc_4438D9

loc_4438C2:
mov     byte ptr [esi+110h], 9
mov     dx, [eax+2]
xor     dh, dh
and     dl, 1Fh
add     edx, 10h
mov     [eax+4], dx

loc_4438D9:
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4438EF
lea     edx, [esi+14h]
mov     eax, 0D7h
call    sub_4D8BC3

loc_4438EF:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
xor     eax, eax
mov     al, [esi+3]
shl     eax, 3
mov     edx, (offset dword_51500A+2)
add     edx, eax
lea     eax, [esi+14h]
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
xor     eax, eax
mov     al, [esi+3]
mov     edx, ds:dword_51500A[eax*8]
sar     edx, 10h
mov     ecx, [esi+12h]
sar     ecx, 10h
sub     ecx, edx
mov     edx, ecx
mov     eax, ds:dword_51500E[eax*8]
sar     eax, 10h
mov     ecx, [esi+16h]
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    edx, edx
imul    eax, ecx
add     eax, edx
cmp     eax, 800h
jge     short loc_443991
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0
xor     eax, eax
mov     al, [esi+3]
add     eax, 61Ah
call    sub_47E8B8

loc_443991:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443845 endp




sub_443996 proc near
push    ecx
push    edx
lea     edx, [eax+3D8h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4439A3[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_443996 endp




sub_4439B4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ebp+0], 0Eh
mov     dword ptr [ebp+4], 0
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+14h], 0
mov     dword ptr [ebp+18h], 0
lea     eax, [ebp+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
lea     edi, [ebp+34h]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebp+3Ch], 0
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
mov     [ebp+40h], eax
xor     eax, eax
mov     al, [ecx+2]
mov     ebp, ds:dword_55A10C
mov     eax, [ebp+eax*4+0]
mov     al, [eax+28h]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_51503C
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_443AB7
jmp     loc_443C0E
sub_4439B4 endp




sub_443AB7 proc near

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
lea     eax, [edx+24h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_443B1B
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 10h
jmp     short loc_443B21

loc_443B1B:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0EFh

loc_443B21:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_443B30
mov     eax, ebp
call    sub_443F91

loc_443B30:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_443B37[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_443B6E
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_443B55
jbe     short loc_443B5B
cmp     al, 2
jz      short loc_443B5B
jmp     short loc_443B62

loc_443B55:
test    al, al
jnz     short loc_443B62
jmp     short loc_443B62

loc_443B5B:
mov     eax, ebp
call    sub_4DE2F6

loc_443B62:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_443B6E:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ah]
test    dx, dx
jz      short loc_443B81
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_443B81:
mov     al, [ebp+0ADh]
mov     ch, [ebp+0ACh]
cmp     al, ch
jz      short loc_443BA0
xor     edx, edx
mov     dl, ch
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_443BA7

loc_443BA0:
mov     eax, ebp
call    sub_4DEADD

loc_443BA7:
test    byte ptr [ebp+0], 2
jz      short loc_443BC0
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_443BC0:
test    byte ptr [ebp+0], 1
jz      short loc_443C0B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_443C0B
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    offset unk_800000
push    4000000h
sub     word ptr [eax+0Eh], 28h ; '('
add     eax, 14h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 0Ch
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_443C0B:
add     esp, 4

loc_443C0E:
pop     ebp

def_443EA6:             ; jumptable 00443EA6 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443AB7 endp



; Attributes: thunk

sub_443C15 proc near
jmp     sub_4DE2F6
sub_443C15 endp




sub_443C1A proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_443C2E
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_443C2E:
pop     edx
retn
sub_443C1A endp

db 8Bh, 0C0h
jpt_443C6A dd offset loc_443C71 ; jump table for switch statement
dd offset loc_443CB4
dd offset loc_443D15
dd offset loc_443D77
dd offset loc_443DD9
dd offset loc_443E1F
dd offset loc_443E4A



sub_443C4E proc near

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
cmp     al, 6           ; switch 7 cases
ja      def_443C6A      ; jumptable 00443C6A default case
xor     edx, edx
mov     dl, al
jmp     jpt_443C6A[edx*4] ; switch jump

loc_443C71:             ; jumptable 00443C6A case 0
inc     al
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 9
mov     word ptr [ebp+4], 0Ah
mov     word ptr [ebp+6], 0
call    sub_4DE043
mov     [ebp+3Ch], eax
test    eax, eax
jz      short loc_443CB4 ; jumptable 00443C6A case 1
mov     byte ptr [eax], 1
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+2], 6
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+3], 81h
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+8], 4
or      byte ptr [ebp+0], 20h

loc_443CB4:             ; jumptable 00443C6A case 1
mov     ax, [ebp+4]
dec     eax
mov     [ebp+4], ax
test    ax, ax
jge     short loc_443CC8
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]

loc_443CC8:
inc     word ptr [ebp+6]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, [esp+1Ch+var_1C]
call    sub_4DD43B
mov     esi, [ebp+3Ch]
lea     edi, [esi+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+14h]
sar     edx, 10h
sub     edx, 64h ; 'd'
shl     edx, 10h
mov     eax, [ebp+3Ch]
mov     [eax+20h], edx
mov     eax, [ebp+3Ch]
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
jmp     def_443C6A      ; jumptable 00443C6A default case

loc_443D15:             ; jumptable 00443C6A case 2
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ebx, [esp+1Ch+var_1C]
mov     [ebx+56h], dx
test    ax, ax
jge     short loc_443D53
cwde
neg     eax
jmp     short loc_443D54

loc_443D53:
cwde

loc_443D54:
cmp     eax, 80h
jge     def_443C6A      ; jumptable 00443C6A default case
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 30h ; '0'
mov     word ptr [ebp+4], 0Fh
jmp     def_443C6A      ; jumptable 00443C6A default case

loc_443D77:             ; jumptable 00443C6A case 3
mov     si, [ebp+4]
dec     si
mov     [ebp+4], si
jnz     def_443C6A      ; jumptable 00443C6A default case
test    byte ptr [ebp+0], 20h
jz      short loc_443DC7
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+3], 80h
mov     eax, [ebp+3Ch]
mov     byte ptr [eax+8], 0
mov     eax, [ebp+3Ch]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
mov     [eax+64h], dx
mov     eax, [ebp+3Ch]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [ebp+3Ch]
mov     dword ptr [eax+0A0h], 0Ch
and     byte ptr [ebp+0], 0DFh

loc_443DC7:
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 9
jmp     def_443C6A      ; jumptable 00443C6A default case

loc_443DD9:             ; jumptable 00443C6A case 4
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+34h]
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 80h
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ebx, [esp+1Ch+var_1C]
mov     [ebx+56h], dx
test    ax, ax
jnz     short def_443C6A ; jumptable 00443C6A default case
mov     eax, ebx
mov     bl, [ebx+0Ah]
inc     bl
mov     [eax+0Ah], bl
mov     word ptr [ebp+4], 0Ah
jmp     short def_443C6A ; jumptable 00443C6A default case

loc_443E1F:             ; jumptable 00443C6A case 5
dec     word ptr [ebp+6]
mov     bx, [ebp+4]
dec     ebx
mov     [ebp+4], bx
test    bx, bx
jge     short loc_443E37
mov     eax, [esp+1Ch+var_1C]
inc     byte ptr [eax+0Ah]

loc_443E37:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, [esp+1Ch+var_1C]
call    sub_4DD43B
jmp     short def_443C6A ; jumptable 00443C6A default case

loc_443E4A:             ; jumptable 00443C6A case 6
or      byte ptr [ebp+0], 1
mov     eax, [ebp+40h]
or      byte ptr [eax+0Fh], 2

def_443C6A:             ; jumptable 00443C6A default case
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0A6h], 0
jz      loc_443C0B
lea     edx, [eax+14h]
mov     eax, 0D7h
call    sub_4D8BC3
jmp     loc_443C0B
sub_443C4E endp

db 8Dh, 40h, 0
jpt_443EA6 dd offset loc_443EAD ; jump table for switch statement
dd offset loc_443EEC
dd offset loc_443F45
dd offset loc_443F82



sub_443E8A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_443EA6      ; jumptable 00443EA6 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_443EA6[ecx*4] ; switch jump

loc_443EAD:             ; jumptable 00443EA6 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     eax, [edx+40h]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax
mov     byte ptr [esi+110h], 7
and     byte ptr [edx], 0F7h
mov     word ptr [edx+4], 4
lea     edx, [esi+14h]
mov     eax, 0DAh
call    sub_4D8BC3
jmp     def_443EA6      ; jumptable 00443EA6 default case

loc_443EEC:             ; jumptable 00443EA6 case 1
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jge     def_443EA6      ; jumptable 00443EA6 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 26h ; '&'
test    byte ptr [edx], 20h
jz      def_443EA6      ; jumptable 00443EA6 default case
mov     esi, [edx+3Ch]
mov     byte ptr [esi+8], 0
mov     eax, [edx+40h]
mov     esi, [edx+3Ch]
mov     ax, [eax+56h]
mov     [esi+64h], ax
mov     eax, [edx+3Ch]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edx+3Ch]
mov     dword ptr [eax+0A0h], 4
jmp     def_443EA6      ; jumptable 00443EA6 default case

loc_443F45:             ; jumptable 00443EA6 case 2
mov     bx, [edx+6]
dec     ebx
mov     [edx+6], bx
test    bx, bx
jge     short loc_443F6D
inc     byte ptr [esi+0Ah]
test    byte ptr [edx], 20h
jz      short loc_443F6D
mov     eax, [edx+3Ch]
call    sub_4DE371
and     byte ptr [edx], 0DFh
mov     edx, [edx+40h]
or      byte ptr [edx+0Fh], 4

loc_443F6D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF50h
mov     eax, esi
call    sub_4DD43B
jmp     def_443EA6      ; jumptable 00443EA6 default case

loc_443F82:             ; jumptable 00443EA6 case 3
or      byte ptr [edx], 9
mov     edx, [edx+40h]
or      byte ptr [edx+0Fh], 2
jmp     def_443EA6      ; jumptable 00443EA6 default case
sub_443E8A endp




sub_443F91 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+3D8h]
mov     eax, [ecx+14h]
and     eax, 0FFFFFFh
jz      loc_444036
lea     edx, [ebx+14h]
test    byte ptr [ecx+17h], 38h
jz      loc_44402C
test    byte ptr [ecx], 8
jz      short loc_444017
add     [ecx+0Ah], ax
test    byte ptr [ecx+17h], 20h
jnz     short loc_443FE7
xor     eax, eax
mov     al, [ebx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+29h]
and     eax, 0FFh
mov     esi, [ecx+8]
sar     esi, 10h
cmp     esi, eax
jl      short loc_444017

loc_443FE7:
lea     edx, [ebx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     edx, [ecx+40h]
mov     ax, [edx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
mov     byte ptr [ebx+9], 1
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ecx+0Ah], 0
jmp     short loc_444021

loc_444017:
mov     eax, 0A0h
call    sub_4D8BC3

loc_444021:
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_444036

loc_44402C:
mov     eax, 0A3h
call    sub_4D8BC3

loc_444036:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_443F91 endp




sub_444040 proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
cmp     byte ptr [eax+8], 0
jnz     short loc_4440B4
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

loc_4440B4:
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_4440D5
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4440DC

loc_4440D5:
mov     eax, ecx
call    sub_4DEADD

loc_4440DC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_444040 endp




sub_4440E2 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4440EF[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4440E2 endp

db 8Bh, 0C0h
jpt_4441DE dd offset loc_4441E5 ; jump table for switch statement
dd offset loc_4441F8
dd offset loc_444202
dd offset loc_44420C



sub_444112 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ebx], 0Eh
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+14h], 0
mov     dword ptr [ebx+18h], 0
mov     word ptr [ebx+34h], 0
lea     eax, [ebx+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
xor     ebx, ebx
mov     bl, [ecx+2]
mov     eax, ds:dword_55A10C
mov     eax, [eax+ebx*4]
mov     al, [eax+18h]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_51506C
mov     dword ptr [ecx+10h], 0
mov     al, [ecx+3]
cmp     al, 3           ; switch 4 cases
ja      short def_4441DE ; jumptable 004441DE default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_4441DE[ebx*4] ; switch jump

loc_4441E5:             ; jumptable 004441DE case 0
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah

loc_4441EC:
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_444221

loc_4441F8:             ; jumptable 004441DE case 1
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
jmp     short loc_4441EC

loc_444202:             ; jumptable 004441DE case 2
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 3
jmp     short loc_4441EC

loc_44420C:             ; jumptable 004441DE case 3
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 21h ; '!'

loc_444221:
mov     eax, ecx
call    sub_4DE96B

def_4441DE:             ; jumptable 004441DE default case
mov     eax, ecx
call    sub_44424E
pop     edx
pop     ecx
pop     ebx
retn
sub_444112 endp

db 8Dh, 40h, 0
jpt_4442F1 dd offset loc_4442F8 ; jump table for switch statement
dd offset loc_4442F8
dd offset loc_4442F8
dd offset def_4442F1
dd offset loc_4442F8
dd offset loc_4442F8



sub_44424E proc near

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
test    byte ptr [edx], 20h
jnz     short loc_4442BA
mov     eax, [esp+1Ch+var_1C]
add     eax, 24h ; '$'
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_4442BA
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 10h
jmp     short loc_4442C0

loc_4442BA:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0EFh

loc_4442C0:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_4442CF
mov     eax, ebp
call    sub_444B50

loc_4442CF:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4442D6[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_444308
mov     al, [ebp+9]
cmp     al, 5           ; switch 6 cases
ja      short def_4442F1 ; jumptable 004442F1 default case, case 3
and     eax, 0FFh
jmp     jpt_4442F1[eax*4] ; switch jump

loc_4442F8:             ; jumptable 004442F1 cases 0-2,4,5
mov     byte ptr [ebp+9], 4

def_4442F1:             ; jumptable 004442F1 default case, case 3
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_444308:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ah]
test    dx, dx
jz      short loc_44431B
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_44431B:
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_44433A
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_444341

loc_44433A:
mov     eax, ebp
call    sub_4DEADD

loc_444341:
test    byte ptr [ebp+0], 2
jz      short loc_44435A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44435A:
test    byte ptr [ebp+0], 1
jz      short loc_4443B3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4443B3
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
sub     word ptr [eax+0Eh], 28h ; '('
add     eax, 0Ch
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     ecx, [esp+1Ch+var_1C]
test    byte ptr [ecx], 20h
jz      short loc_44438F
push    80h
jmp     short loc_444391

loc_44438F:
push    0

loc_444391:
push    offset unk_800000
push    4000000h
push    edx
xor     edx, edx
mov     dl, [ebp+1]
push    edx
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_4443B3:
add     esp, 4
pop     ebp

def_444422:             ; jumptable 00444422 default case
pop     edi             ; jumptable 0044456A default case
; jumptable 00444A4F default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_44424E endp



; Attributes: thunk

sub_4443BD proc near
jmp     sub_4DE2F6
sub_4443BD endp




sub_4443C2 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_4443D9
cmp     bl, 1
jz      short loc_4443E5
pop     edx
pop     ebx
retn

loc_4443D9:
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 0

loc_4443E5:
test    byte ptr [edx], 10h
jnz     short loc_4443F3
test    dword ptr [edx+14h], 0FFFFFFh
jz      short loc_4443F6

loc_4443F3:
or      byte ptr [edx], 1

loc_4443F6:
pop     edx
pop     ebx
retn
sub_4443C2 endp

align 2
jpt_444422 dd offset loc_444429 ; jump table for switch statement
dd offset loc_444457
dd offset loc_4444A0
dd offset loc_444517



sub_44440A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_444422 ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_444422[edx*4] ; switch jump

loc_444429:             ; jumptable 00444422 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_444457:             ; jumptable 00444422 case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_444490
cmp     cx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444490:
mov     word ptr [edi+4], 7
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_4444A0:             ; jumptable 00444422 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 4
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_4444EE
mov     word ptr [esi+44h], 0

loc_4444EE:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444517:             ; jumptable 00444422 case 3
mov     dx, [edi+4]     ; jumptable 00444A4F case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     byte ptr [esi+110h], 6
or      byte ptr [edi], 9
jmp     def_444422      ; jumptable 00444422 default case
sub_44440A endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case
db 8Bh, 0C0h
jpt_44456A dd offset loc_444571 ; jump table for switch statement
dd offset loc_44459F
dd offset loc_4445E8
dd offset loc_44465C
dd offset loc_44467E



sub_44454E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_44456A[edx*4] ; switch jump

loc_444571:             ; jumptable 0044456A case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_44459F:             ; jumptable 0044456A case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_4445D8
cmp     dx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_4445D8:
mov     word ptr [edi+4], 0Bh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4445E8:             ; jumptable 0044456A case 2
dec     word ptr [edi+4]
mov     eax, 8
sub     ax, [edi+4]
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_444633
mov     word ptr [esi+44h], 0

loc_444633:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 26h ; '&'
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_44465C:             ; jumptable 0044456A case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 11h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 28h ; '('

loc_44467E:             ; jumptable 0044456A case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
or      byte ptr [edi], 9
mov     byte ptr [esi+110h], 6
jmp     def_444422      ; jumptable 00444422 default case
sub_44454E endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case
db 8Dh, 40h, 0
jpt_4446D5 dd offset loc_4447DF ; jump table for switch statement
dd offset loc_444839
dd offset loc_444839
dd offset loc_4448D8
dd offset loc_4446DC



sub_4446B6 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4446D5      ; jumptable 004446D5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4446D5[edx*4] ; switch jump

loc_4446DC:             ; jumptable 004446D5 case 4
test    byte ptr [edi+17h], 20h
jnz     loc_4447AF
xor     eax, eax
mov     al, [esi+0Bh]
mov     al, ds:byte_515078[eax]
and     eax, 0FFh
mov     edx, [edi+2]
sar     edx, 10h
cmp     edx, eax
jnz     loc_444796
cmp     word ptr [edi+34h], 3
jge     loc_444796
xor     edx, edx
jmp     short loc_444783

loc_444713:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+190h]
mov     [eax+1Ch], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
imul    ecx, edx, 0Ch
mov     bx, [esi+ebx*8+192h]
sub     ebx, ecx
mov     [eax+1Eh], bx
xor     ebx, ebx
mov     bl, [esi+0Bh]
mov     bl, ds:byte_51507C[edx+ebx*4]
and     ebx, 0FFh
mov     bx, [esi+ebx*8+194h]
mov     [eax+20h], bx
inc     edx
cmp     edx, 4
jge     short loc_44478C

loc_444783:
call    sub_4DE13B
test    eax, eax
jnz     short loc_444713

loc_44478C:
mov     al, [esi+0Bh]
inc     al
and     al, 3
mov     [esi+0Bh], al

loc_444796:
mov     ax, [edi+4]
inc     eax
mov     [edi+4], ax
mov     edx, eax
xor     dh, ah
and     dl, 3Fh
mov     [edi+4], dx
jmp     def_4446D5      ; jumptable 004446D5 default case

loc_4447AF:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+1Ch]
lea     eax, [esi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     [esp+18h+var_18], eax
mov     edx, [esp+18h+var_18]
test    eax, 0FFFF0000h
jz      short loc_4447D5
add     dh, 8
and     dh, 0Fh

loc_4447D5:
mov     [esi+56h], dx
mov     word ptr [esi+0Ah], 0

loc_4447DF:             ; jumptable 004446D5 case 0
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Bh], 0
mov     byte ptr [esi+0ACh], 4
mov     word ptr [esi+44h], 0FF00h
mov     word ptr [esi+46h], 300h
mov     byte ptr [esi+110h], 7
mov     bl, [edi]
or      bl, 20h
mov     [edi], bl
mov     bh, bl
and     bh, 0B3h
mov     [edi], bh
mov     word ptr [edi+8], 0
mov     word ptr [edi+4], 0
mov     word ptr [esi+44h], 100h
mov     word ptr [esi+46h], 0FD00h
mov     word ptr [esi+4Eh], 80h
lea     edx, [esi+14h]
mov     eax, 0A2h
call    sub_4D8BC3

loc_444839:             ; jumptable 004446D5 cases 1,2
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
mov     [esp+18h+var_18], eax
test    eax, eax
jz      def_4446D5      ; jumptable 004446D5 default case
test    ah, 0Fh
jz      short loc_44487B
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax

loc_44487B:
test    byte ptr [esp+18h+var_18+1], 10h
jz      def_4446D5      ; jumptable 004446D5 default case
mov     ch, [edi]
test    ch, 40h
jnz     short loc_4448BA
mov     al, ch
or      al, 40h
mov     [edi], al
test    al, 80h
jz      short loc_4448B7
mov     cx, [edi+34h]
cmp     cx, 3
jge     short loc_4448B7
mov     eax, ecx
inc     eax
mov     [edi+34h], ax
lea     edx, [esi+14h]
mov     ebx, 1
mov     eax, esi
call    sub_4AFA70

loc_4448B7:
or      byte ptr [edi], 80h

loc_4448BA:
lea     edx, [esi+14h]
mov     eax, 0DAh
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
mov     word ptr [esi+44h], 60h ; '`'
mov     word ptr [esi+46h], 0FE00h
jmp     short def_4446D5 ; jumptable 004446D5 default case

loc_4448D8:             ; jumptable 004446D5 case 3
mov     dl, [esi+0A4h]
test    dl, dl
jnz     short def_4446D5 ; jumptable 004446D5 default case
inc     al
mov     [esi+0Ah], al
mov     [esi+0Bh], dl
mov     byte ptr [esi+0ACh], 5

def_4446D5:             ; jumptable 004446D5 default case
mov     word ptr [esi+15Eh], 190Ch
cmp     dword ptr [esi+80h], offset unk_800000
jbe     short loc_444913
test    byte ptr [esi+6], 80h
jnz     short loc_444913
mov     eax, esi
call    sub_4DE2F6

loc_444913:
add     esp, 4
jmp     def_444422      ; jumptable 00444422 default case
sub_4446B6 endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case



sub_44491B proc near

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
mov     ecx, offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_444943
cmp     al, 1
jz      short loc_44495A
jmp     loc_4449F9

loc_444943:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 0C0h
mov     word ptr [ebp+66h], 18h
mov     byte ptr [ebp+0ACh], 9

loc_44495A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [ecx+14h]
mov     ecx, 18h
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
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
jnz     short loc_4449C4
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
cmp     edx, 10h
jle     short loc_4449E4

loc_4449C4:
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

loc_4449E4:
mov     eax, [esp+1Ch+var_1C]
test    word ptr [eax+2], 1FFh
jnz     short loc_4449F9
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0

loc_4449F9:
mov     ah, [ebp+0A4h]
test    ah, ah
jz      short loc_444A0C
cmp     ah, 8
jnz     loc_4443B3

loc_444A0C:
lea     edx, [ebp+14h]
mov     eax, 0D7h
call    sub_4D8BC3
jmp     loc_4443B3
sub_44491B endp

jpt_444A4F dd offset loc_444A56 ; jump table for switch statement
dd offset loc_444A84
dd offset loc_444ACB
dd offset loc_444517



sub_444A2E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ebx, 0Ch
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
xor     edx, edx
mov     dl, al
jmp     jpt_444A4F[edx*4] ; switch jump

loc_444A56:             ; jumptable 00444A4F case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 12h
mov     word ptr [esi+46h], 0FFC0h
mov     byte ptr [esi+110h], 7
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0

loc_444A84:             ; jumptable 00444A4F case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_444ABD
cmp     cx, 2
jge     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case

loc_444ABD:
mov     [edi+4], bx
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_444ACB:             ; jumptable 00444A4F case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 4
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
test    ah, 0Fh
jz      short loc_444B19
mov     word ptr [esi+44h], 0

loc_444B19:
test    dh, 10h
jz      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
cmp     word ptr [edi+4], 0
jg      def_444422      ; jumptable 00444422 default case
; jumptable 0044456A default case
; jumptable 00444A4F default case
mov     word ptr [edi+4], 12h
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 23h ; '#'
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D8h
call    sub_4D89E4
jmp     def_444422      ; jumptable 00444422 default case
sub_444A2E endp         ; jumptable 0044456A default case
; jumptable 00444A4F default case



sub_444B50 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     ebp, [eax+408h]
mov     eax, [ebp+14h]
and     eax, 0FFFFFFh
mov     [esp+1Ch+var_1C], eax
jz      loc_444CE8
test    byte ptr [ebp+17h], 38h
jz      loc_444CDB
mov     ax, [esi+6Eh]
mov     [esi+0B2h], ax
mov     eax, [esp+1Ch+var_1C]
mov     dx, [esi+6Eh]
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      loc_444C3F
mov     word ptr [esi+0B2h], 0FFFFh
mov     ax, [esi+0B2h]
mov     [esi+6Eh], ax
and     byte ptr [ebp+0], 0F3h
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+19h]
and     eax, 0FFh
mov     [esp+1Ch+var_1C], eax
xor     ebx, ebx
jmp     short loc_444C2C

loc_444BD2:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 3
movsx   edx, bx
xor     ecx, ecx
mov     cl, ds:byte_515094[edx]
mov     cx, [esi+ecx*8+190h]
mov     [eax+1Ch], cx
xor     ecx, ecx
mov     cl, ds:byte_515094[edx]
imul    edi, ebx, 0Ch
mov     cx, [esi+ecx*8+192h]
sub     ecx, edi
mov     [eax+1Eh], cx
mov     dl, ds:byte_515094[edx]
and     edx, 0FFh
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
inc     ebx
cmp     bx, 4
jge     short loc_444C35

loc_444C2C:
call    sub_4DE13B
test    eax, eax
jnz     short loc_444BD2

loc_444C35:
mov     byte ptr [esi+9], 3
mov     word ptr [esi+0Ah], 0

loc_444C3F:
test    byte ptr [ebp+0], 8
jz      loc_444CC3
mov     eax, [esp+1Ch+var_1C]
add     [ebp+0Ah], ax
test    byte ptr [ebp+17h], 20h
jnz     short loc_444C7A
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+19h]
and     eax, 0FFh
mov     edx, [ebp+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_444CBB

loc_444C7A:
lea     edi, [esi+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
add     dh, 8
mov     [esi+56h], dx
test    eax, 0FFFF0000h
jz      short loc_444CB1
mov     byte ptr [esi+9], 1
jmp     short loc_444CB5

loc_444CB1:
mov     byte ptr [esi+9], 2

loc_444CB5:
mov     word ptr [ebp+0Ah], 0

loc_444CBB:
mov     word ptr [esi+0Ah], 0
jmp     short loc_444CD0

loc_444CC3:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_444CD0:
mov     word ptr [esi+15Eh], 7FFFh
jmp     short loc_444CE8

loc_444CDB:
lea     edx, [esi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_444CE8:
mov     eax, 1
jmp     loc_4443B3
sub_444B50 endp




sub_444CF2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444CF8[edx*4]
pop     edx
retn
sub_444CF2 endp




sub_444D01 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444D3F
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     dl, [ecx+3]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444D3F:
mov     al, [ecx+0Ch]
cmp     al, 2
jb      short loc_444D4E
jbe     short loc_444D58
cmp     al, 3
jz      short loc_444D5F
jmp     short loc_444D64

loc_444D4E:
cmp     al, 1
jnz     short loc_444D64
inc     word ptr [ecx+14h]
jmp     short loc_444D64

loc_444D58:
sub     word ptr [ecx+18h], 6
jmp     short loc_444D64

loc_444D5F:
add     word ptr [ecx+18h], 2

loc_444D64:
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
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_444D01 endp




sub_444D8B proc near
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
call    sub_444EF6
pop     edx
pop     ecx
pop     ebx
retn
sub_444D8B endp




sub_444DC4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444DDD
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444DDD:
pop     edx
pop     ecx
pop     ebx
retn
sub_444DC4 endp




sub_444DE1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444DFD
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444DFD:
pop     edx
pop     ecx
pop     ebx
retn
sub_444DE1 endp




sub_444E01 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E2B
mov     byte ptr [ecx+110h], 9
mov     byte ptr [ecx+100h], 0Ch
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E2B:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E01 endp




sub_444E2F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E52
mov     byte ptr [ecx+110h], 9
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E52:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E2F endp




sub_444E56 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E72
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E72:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E56 endp




sub_444E76 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444E92
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444E92:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E76 endp




sub_444E96 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444EB2
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444EB2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444E96 endp




sub_444EB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444ED2
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444ED2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444EB6 endp




sub_444ED6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444EF2
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444EF2:
pop     edx
pop     ecx
pop     ebx
retn
sub_444ED6 endp




sub_444EF6 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444EFF[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_444F1E
mov     eax, ecx
call    sub_4DEADD

loc_444F1E:
pop     edx
pop     ecx
retn
sub_444EF6 endp



; Attributes: thunk

sub_444F21 proc near
jmp     sub_4DE2F6
sub_444F21 endp




sub_444F26 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_444F2C[edx*4]
pop     edx
retn
sub_444F26 endp




sub_444F35 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_444F35 endp




sub_444F5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444F76
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444F76:
pop     edx
pop     ecx
pop     ebx
retn
sub_444F5A endp




sub_444F7A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_444F93
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_444F93:
pop     edx
pop     ecx
pop     ebx
retn
sub_444F7A endp




sub_444F97 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_444FA0[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_444FBF
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_444FBF:
pop     edx
pop     ecx
retn
sub_444F97 endp


loc_444FC2:
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_444FD2
mov     eax, edx
call    sub_444F35

loc_444FD2:
mov     eax, edx
call    sub_444F97
pop     edx
retn



sub_444FDB proc near

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
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_445030[ecx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_445056
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_44505D

loc_445056:
mov     eax, ebp
call    sub_4DEB53

loc_44505D:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Ch]
mov     ds:word_560E1E, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_44508A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_44508A:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+4Ch], 0

