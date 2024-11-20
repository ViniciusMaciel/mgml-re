loc_401000:             ; Trap to Debugger
int     3
jmp     short loc_401000
___begtext db 4 dup(90h)
align 10h



sub_401010 proc near

var_26= word ptr -26h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
mov     ecx, offset byte_5F8364
add     eax, 550h
mov     [esp+28h+var_20], eax
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
xor     edx, edx
mov     word ptr [esp+28h+var_1C], dx

loc_401056:
mov     eax, [esp+28h+var_20+2]
sar     eax, 10h
mov     word ptr [ebp+eax*8+196h], 4210h
mov     ebx, [esp+28h+var_1C]
inc     ebx
mov     word ptr [esp+28h+var_1C], bx
cmp     bx, 0Dh
jle     short loc_401056
call    rand_
mov     edx, [esp+28h+var_20]
mov     [edx+2], ax
mov     eax, [ebp+80h]
call    sub_4EF075
mov     [edx+0E0h], eax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_40109C[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_4010BB
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
jmp     short loc_4010DD

loc_4010BB:
mov     eax, [esp+28h+var_20]
test    byte ptr [eax], 10h
jz      short loc_4010CD
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4010E4

loc_4010CD:
xor     ebx, ebx
mov     bl, [ebp+0A4h]
xor     edx, edx
mov     dl, [ebp+0ACh]

loc_4010DD:
mov     eax, ebp
call    sub_4DE96B

loc_4010E4:
mov     eax, [esp+28h+var_20]
test    byte ptr [eax], 8
jz      short loc_4010F4
mov     eax, ebp
call    sub_402E6C

loc_4010F4:
xor     edi, edi
mov     word ptr [esp+28h+var_1C], di
jmp     short loc_40110D

loc_4010FD:
mov     eax, [esp+28h+var_1C]
inc     eax
mov     word ptr [esp+28h+var_1C], ax
cmp     ax, 10h
jge     short loc_40115D

loc_40110D:
mov     eax, [esp+28h+var_20+2]
sar     eax, 10h
shl     eax, 2
mov     esi, ds:dword_50B1B9[eax]
sar     esi, 18h
mov     edx, [ecx+12h]
sar     edx, 10h
sar     edx, 9
cmp     edx, esi
jl      short loc_4010FD
mov     esi, ds:(dword_50B1B9+2)[eax]
sar     esi, 18h
cmp     edx, esi
jge     short loc_4010FD
mov     esi, ds:(dword_50B1B9+1)[eax]
sar     esi, 18h
mov     edx, [ecx+16h]
sar     edx, 10h
sar     edx, 9
cmp     edx, esi
jl      short loc_4010FD
mov     eax, ds:(dword_50B1B9+3)[eax]
sar     eax, 18h
cmp     edx, eax
jge     short loc_4010FD

loc_40115D:
mov     al, byte ptr [esp+28h+var_1C]
mov     edx, [esp+28h+var_20]
mov     [edx+0ECh], al
xor     ebx, ebx
mov     word ptr [esp+28h+var_1C], bx
jmp     short loc_401184

loc_401174:
mov     ecx, [esp+28h+var_1C]
inc     ecx
mov     word ptr [esp+28h+var_1C], cx
cmp     cx, 4
jge     short loc_4011D4

loc_401184:
mov     eax, [esp+28h+var_20+2]
sar     eax, 10h
shl     eax, 2
mov     ecx, ds:dword_50B1B9[eax]
sar     ecx, 18h
mov     edx, [ebp+12h]
sar     edx, 10h
sar     edx, 9
cmp     edx, ecx
jl      short loc_401174
mov     ecx, ds:(dword_50B1B9+2)[eax]
sar     ecx, 18h
cmp     edx, ecx
jge     short loc_401174
mov     edx, ds:(dword_50B1B9+1)[eax]
sar     edx, 18h
mov     ecx, [ebp+16h]
sar     ecx, 10h
sar     ecx, 9
cmp     ecx, edx
jl      short loc_401174
mov     eax, ds:(dword_50B1B9+3)[eax]
sar     eax, 18h
cmp     ecx, eax
jge     short loc_401174

loc_4011D4:
cmp     word ptr [esp+28h+var_1C], 4
jnz     short loc_4011E3
mov     word ptr [esp+28h+var_1C], 3

loc_4011E3:
mov     al, byte ptr [esp+28h+var_1C]
mov     edx, [esp+28h+var_20]
mov     [edx+0EDh], al
test    byte ptr [edx+1], 1
jz      short loc_40121B
mov     edi, esp
lea     esi, [ebp+190h]
movsd
movsd
add     [esp+28h+var_26], 1E0h
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 12Ch
mov     eax, esp
call    sub_4ED95E

loc_40121B:
mov     eax, [esp+28h+var_20]
test    byte ptr [eax], 80h
jz      short loc_401272
mov     word ptr [esp+28h+var_1C], 3

loc_40122B:
mov     eax, [esp+28h+var_20+2]
sar     eax, 10h
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, esp
lea     esi, [esi+190h]
movsd
movsd
add     [esp+28h+var_26], 0A0h
mov     ecx, [ebp+54h]
sar     ecx, 10h
mov     ebx, 155h
mov     edx, 0C8h
mov     eax, esp
call    sub_4ED95E
mov     esi, [esp+28h+var_1C]
add     esi, 3
mov     word ptr [esp+28h+var_1C], si
cmp     si, 0Ch
jle     short loc_40122B

loc_401272:
add     esp, 10h

def_402A93:             ; jumptable 00402A93 default case, cases 2,4
pop     ebp

loc_401276:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_401010 endp




sub_40127C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+550h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
cmp     byte ptr [ecx+3], 0
jnz     short loc_4012AC
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax

loc_4012AC:
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
and     byte ptr [ecx+0Ch], 0F0h
cmp     byte ptr [ecx+3], 1
jnz     short loc_4012CE
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_4012D7

loc_4012CE:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_4012D7:
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
mov     word ptr [esi], 19Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
xor     eax, eax

loc_401300:
movsx   edx, ax
shl     edx, 4
mov     dword ptr [edx+esi+10h], 0
mov     dword ptr [edx+esi+14h], 0
inc     eax
cmp     ax, 9
jl      short loc_401300
lea     eax, [esi+0A0h]
mov     ebx, 0FFFFFE0Ch
mov     edx, 0Ah
call    sub_4E19B9
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     edx, [eax+edx*4]
xor     eax, eax
mov     al, [edx+8]
shl     eax, 6
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_50B1B0
mov     al, [ecx+3]
cmp     al, 1
jb      short loc_40136F
jbe     short loc_40137C
cmp     al, 2
jz      short loc_401386
jmp     short loc_401394

loc_40136F:
test    al, al
jnz     short loc_401394
mov     byte ptr [ecx+8], 1
mov     [ecx+9], al
jmp     short loc_40138E

loc_40137C:
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0
jmp     short loc_40138E

loc_401386:
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0

loc_40138E:
mov     word ptr [ecx+0Ah], 0

loc_401394:
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     eax, eax

loc_4013A1:
movsx   edx, ax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     ax, 0Dh
jle     short loc_4013A1
mov     word ptr [ecx+15Eh], 0
mov     byte ptr [esi+0EBh], 0
mov     al, [esi+0EBh]
mov     [esi+0EAh], al
mov     byte ptr [esi+0EDh], 1
mov     byte ptr [esi+0EEh], 1
mov     word ptr [esi+4], 0Fh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40127C endp




sub_4013EA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
cmp     dword ptr [esi+0E0h], 1800h
ja      short loc_401408
call    sub_436700

loc_401408:
test    byte ptr [esi], 2
jz      short loc_401414
mov     eax, edi
call    sub_402FF3

loc_401414:
xor     edx, edx
mov     dl, [edi+9]
mov     eax, edi
call    ds:funcs_40141B[edx*4]
test    byte ptr [esi], 1
jz      short loc_401437
mov     eax, edi
call    sub_402A68
mov     word ptr [edi+0Ah], 0
and     byte ptr [esi], 0FEh

loc_401437:
mov     dx, [esi+0Ah]
test    dx, dx
jz      short loc_401447
mov     ebx, edx
dec     ebx
mov     [esi+0Ah], bx

loc_401447:
mov     ecx, 1000008h
xor     ebx, ebx
mov     edx, 1
mov     eax, edi
call    sub_432697
xor     eax, eax

loc_40145C:
mov     edx, eax
shl     edx, 4
mov     dword ptr [edx+esi+10h], 0
inc     eax
cmp     eax, 9
jl      short loc_40145C
jmp     loc_401276
sub_4013EA endp



; Attributes: thunk

sub_401474 proc near
jmp     sub_4DE336
sub_401474 endp

align 4
jpt_4014B8 dd offset def_4014B8 ; jump table for switch statement
dd offset loc_4014BF
dd offset loc_4014E4
dd offset loc_401521
dd offset loc_401570
dd offset loc_4015CA
dd offset loc_401635
dd offset loc_40168E



sub_40149C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ebx, [eax+550h]
mov     al, [eax+9]
cmp     al, 7           ; switch 8 cases
ja      def_4014B8      ; jumptable 004014B8 default case, case 0
and     eax, 0FFh
jmp     jpt_4014B8[eax*4] ; switch jump

loc_4014BF:             ; jumptable 004014B8 case 1
mov     byte ptr [esi+0ACh], 10h
cmp     byte ptr [esi+0A4h], 4
jnz     def_4014B8      ; jumptable 004014B8 default case, case 0
and     byte ptr [ebx], 0EFh
mov     word ptr [ebx+4], 78h ; 'x'
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4014E4:             ; jumptable 004014B8 case 2
test    byte ptr [ebx+4], 1
jz      short loc_4014F1
mov     eax, esi
call    sub_402910

loc_4014F1:
mov     cx, [ebx+4]
dec     ecx
mov     [ebx+4], cx
cmp     cx, 2
jnz     short loc_401503
or      byte ptr [ebx], 10h

loc_401503:
cmp     word ptr [ebx+4], 0
jnz     short loc_401513
inc     byte ptr [esi+9]
mov     word ptr [esi+46h], 0F000h

loc_401513:
add     word ptr [esi+56h], 6
and     byte ptr [esi+57h], 0Fh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_401521:             ; jumptable 004014B8 case 3
mov     byte ptr [esi+0ACh], 11h
add     word ptr [esi+46h], 80h
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     byte ptr [esi+0Ah], 0
jz      def_4014B8      ; jumptable 004014B8 default case, case 0
xor     eax, eax

loc_401557:
movsx   ebx, ax
mov     word ptr [esi+ebx*8+196h], 2108h
inc     eax
cmp     ax, 0Dh
jle     short loc_401557
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_401570:             ; jumptable 004014B8 case 4
and     word ptr [ebx], 0FE6Fh
or      byte ptr [ebx], 10h
mov     word ptr [esi+14h], 800h
mov     word ptr [esi+16h], 0FFFFh
mov     word ptr [esi+18h], 2A00h
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     byte ptr [esi+0ADh], 0
mov     word ptr [esi+46h], 0EC00h
mov     word ptr [esi+56h], 0
mov     byte ptr [esi+9], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4015CA:             ; jumptable 004014B8 case 5
or      word ptr [ebx], 180h
mov     word ptr [esi+14h], 400h
mov     word ptr [esi+16h], 0D800h
mov     word ptr [esi+18h], 2100h
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     byte ptr [esi+0ADh], 0
mov     word ptr [esi+46h], 0
mov     byte ptr [esi+9], 3
mov     byte ptr [esi+0Ah], 1
xor     eax, eax

loc_40161C:
movsx   ebx, ax
mov     word ptr [esi+ebx*8+196h], 2108h
inc     eax
cmp     ax, 0Dh
jle     short loc_40161C
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_401635:             ; jumptable 004014B8 case 6
add     word ptr [esi+46h], 80h
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [esi+16h], 0
jl      short loc_40167D
mov     word ptr [esi+16h], 0FFFFh
mov     word ptr [esi+48h], 0
mov     ax, [esi+48h]
mov     [esi+46h], ax
mov     [esi+44h], ax
mov     byte ptr [esi+0ACh], 13h
mov     byte ptr [esi+9], 0
mov     eax, esi
call    sub_402910

loc_40167D:
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40168E:             ; jumptable 004014B8 case 7
and     word ptr [ebx], 0FE7Fh
mov     byte ptr [esi+9], 0

def_4014B8:             ; jumptable 004014B8 default case, case 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40149C endp




sub_40169C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 550h
mov     bx, [eax+4]
test    bx, bx
jz      short loc_4016BA
mov     ecx, ebx
dec     ecx
mov     [eax+4], cx
pop     edx
pop     ecx
pop     ebx
retn

loc_4016BA:
mov     byte ptr [edx+9], 1
pop     edx
pop     ecx
pop     ebx
retn
sub_40169C endp




sub_4016C2 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     edx, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4016E0
jbe     short loc_401704
cmp     al, 2
jz      short loc_40171A
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4016E0:
test    al, al
jnz     loc_401757
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jg      short loc_401757
mov     [ecx+0ACh], al
inc     byte ptr [ecx+0Ah]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_401704:
inc     al
mov     [ecx+0Ah], al
mov     word ptr [edx+4], 96h
mov     word ptr [edx+8], 0
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_40171A:
test    [edx+1], al
jz      short loc_401737
cmp     byte ptr [edx+0EDh], 1
jz      short loc_401750

loc_401728:
mov     byte ptr [edx+0EEh], 1

loc_40172F:
or      byte ptr [edx], 1
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_401737:
mov     eax, ecx
call    sub_402CCC
test    eax, eax
jnz     short loc_40172F
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jle     short loc_401728

loc_401750:
mov     eax, ecx
call    sub_402DAA

loc_401757:
pop     edi
pop     edx
pop     ecx
pop     ebx
sub_4016C2 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_23]
jpt_4017EC dd offset loc_4017F3 ; jump table for switch statement
dd offset loc_40189B
dd offset loc_4019A3
dd offset loc_4019E6



sub_40176C proc near

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
add     eax, 550h
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_20], offset byte_5F8364
cmp     byte ptr [ebp+0Bh], 0
jnz     short loc_4017DC
mov     byte ptr [ebp+0Bh], 1
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_4017A3
jbe     short loc_4017B7
cmp     al, 3
jz      short loc_4017D0
jmp     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_4017A3:
test    al, al
jnz     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case
mov     byte ptr [ebp+0ACh], 2
jmp     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_4017B7:
mov     byte ptr [ebp+0ACh], 3
lea     edx, [ebp+14h]
mov     eax, 0CBh
call    sub_4D8BC3
jmp     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_4017D0:
mov     byte ptr [ebp+0ACh], 4
jmp     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_4017DC:
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case
and     eax, 0FFh
jmp     jpt_4017EC[eax*4] ; switch jump

loc_4017F3:             ; jumptable 004017EC case 0
mov     edx, [esp+20h+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, 0Eh
sub     eax, edx
mov     ecx, [esp+20h+var_1C]
mov     ecx, [ecx+0BCh]
sar     ecx, 10h
imul    eax, ecx
mov     ecx, [esp+20h+var_1C]
mov     ecx, [ecx+0C4h]
sar     ecx, 10h
imul    edx, ecx
add     edx, eax
mov     ecx, 0Eh
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [ebp+56h], ax
mov     eax, [esp+20h+var_1C]
inc     word ptr [eax+4]
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case
mov     eax, [esp+20h+var_1C]
mov     ax, [eax+0C6h]
mov     [ebp+56h], ax
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0Bh], 0
xor     eax, eax
mov     edx, [esp+20h+var_1C]
mov     al, [edx+0EEh]
xor     edx, edx
mov     ecx, [esp+20h+var_1C]
mov     dl, [ecx+0EDh]
mov     ax, word ptr ds:dword_50B202[eax*8]
add     ax, word ptr ds:dword_50B202[edx*8]
mov     edx, [esp+20h+var_1C]
mov     [edx+4], ax
jmp     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_40189B:             ; jumptable 004017EC case 1
mov     eax, [esp+20h+var_1C]
test    byte ptr [eax+4], 1
jz      short loc_4018AC
mov     eax, ebp
call    sub_402910

loc_4018AC:
mov     word ptr [ebp+44h], 400h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+20h+var_1C]
mov     si, [eax+4]
dec     si
mov     [eax+4], si
jnz     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case
mov     [ebp+44h], si
movzx   esi, byte ptr [eax+0EEh]
lea     edi, [ebp+14h]
lea     esi, (dword_50B1FA+2)[esi*8]
movsd
movsd
mov     edi, [esp+20h+var_20]
lea     edi, [edi+0C4h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [ebp+0C4h]
lea     esi, [ebp+14h]
movsd
movsd
mov     word ptr [eax+0C8h], 2
mov     word ptr [eax+0CAh], 9
mov     word ptr [eax+0CCh], 4
lea     ecx, [eax+0D0h]
lea     ebx, [eax+0C8h]
mov     edx, [esp+20h+var_20]
mov     eax, ebp
call    sub_4DD6EC
mov     ecx, eax
mov     edx, [esp+20h+var_20]
add     edx, 14h
lea     eax, [ebp+14h]
call    sub_4DDDB4
add     ah, 10h
and     ah, 0Fh
test    cl, 1
jz      short loc_401971
mov     dx, [ebp+56h]
add     dh, 10h
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     edx, [esp+20h+var_1C]
mov     byte ptr [edx+0EFh], 0FFh
jmp     short loc_401986

loc_401971:
add     ah, 10h
sub     ax, [ebp+56h]
and     ah, 0Fh
mov     edx, [esp+20h+var_1C]
mov     byte ptr [edx+0EFh], 1

loc_401986:
movsx   edx, ax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 6
sbb     eax, edx
sar     eax, 6
mov     edx, [esp+20h+var_1C]
mov     [edx+4], ax
inc     byte ptr [ebp+0Ah]
jmp     short def_4017EC ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_4019A3:             ; jumptable 004017EC case 2
mov     eax, [esp+20h+var_1C]
test    byte ptr [eax+4], 1
jz      short loc_4019B4
mov     eax, ebp
call    sub_402910

loc_4019B4:
mov     eax, [esp+20h+var_1C]
movsx   ax, byte ptr [eax+0EFh]
shl     eax, 6
add     [ebp+56h], ax
and     byte ptr [ebp+57h], 0Fh
mov     eax, [esp+20h+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jg      short def_4017EC ; jumptable 004017EC default case
; jumptable 00402380 default case
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0Bh], 0
jmp     short def_4017EC ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_4019E6:             ; jumptable 004017EC case 3
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4017EC ; jumptable 004017EC default case
; jumptable 00402380 default case
mov     eax, [esp+20h+var_1C]
or      byte ptr [eax], 1

def_4017EC:             ; jumptable 004017EC default case
add     esp, 8          ; jumptable 00402380 default case
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4
sub_40176C endp




sub_401A03 proc near

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
cmp     byte ptr [ebp+0Bh], 0
jnz     short loc_401A6B
mov     byte ptr [ebp+0Bh], 1
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_401A32
jbe     short loc_401A46
cmp     al, 2
jz      short loc_401A5F
jmp     loc_401AF2

loc_401A32:
test    al, al
jnz     loc_401AF2
mov     byte ptr [ebp+0ACh], 10h
jmp     loc_401AF2

loc_401A46:
mov     byte ptr [ebp+0ACh], 11h
lea     edx, [ebp+14h]
mov     eax, 0C9h
call    sub_4D8BC3
jmp     loc_401AF2

loc_401A5F:
mov     byte ptr [ebp+0ACh], 12h
jmp     loc_401AF2

loc_401A6B:
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_401A7D
jbe     short loc_401AC5
cmp     al, 3
jz      short loc_401ADE
jmp     loc_401AF2

loc_401A7D:
test    al, al
jnz     loc_401AF2
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_401AF2
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0Bh], 0
mov     byte ptr [ebp+74h], 1
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0E8h], 0
jnz     short loc_401AB4
mov     word ptr [ebp+46h], 0F900h
jmp     short loc_401ABA

loc_401AB4:
mov     word ptr [ebp+46h], 0F200h

loc_401ABA:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0
jmp     short loc_401AF2

loc_401AC5:
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_401AF2
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0Bh], 0
jmp     short loc_401AF2

loc_401ADE:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_401AF2
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 1

loc_401AF2:
cmp     byte ptr [ebp+74h], 0
jz      loc_401CAD
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0E8h], 0
jnz     short loc_401B0F
mov     esi, 1Ch
jmp     short loc_401B14

loc_401B0F:
mov     esi, 38h ; '8'

loc_401B14:
add     word ptr [ebp+46h], 80h
mov     ebx, [ebp+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
movsx   ecx, si
mov     ebx, ecx
sub     ebx, eax
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0B6h]
sar     edx, 10h
imul    ebx, edx
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0BEh]
sar     edx, 10h
imul    edx, eax
add     edx, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [ebp+14h], ax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, ecx
sub     edx, eax
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+0BAh]
sar     ebx, 10h
imul    edx, ebx
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+0C2h]
sar     ebx, 10h
imul    eax, ebx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [ebp+18h], ax
mov     ecx, [esp+1Ch+var_1C]
mov     cx, [ecx+0BEh]
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+0C6h]
movsx   ebx, dx
movsx   eax, cx
mov     edi, ebx
sub     edi, eax
cmp     edi, 800h
jl      short loc_401BC9
add     ch, 10h
jmp     short loc_401BD5

loc_401BC9:
sub     eax, ebx
cmp     eax, 800h
jl      short loc_401BD5
add     dh, 10h

loc_401BD5:
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
movsx   ebx, si
mov     esi, ebx
sub     esi, eax
movsx   ecx, cx
imul    ecx, esi
movsx   edx, dx
imul    edx, eax
add     edx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [ebp+56h], ax
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+4]
cmp     word ptr [ebp+16h], 0
jl      short loc_401C89
lea     edi, [ebp+14h]
mov     esi, eax
lea     esi, [esi+0C0h]
movsd
movsd
mov     word ptr [ebp+1Ah], 0
mov     ax, [eax+0C6h]
mov     [ebp+56h], ax
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0B8h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+0C0h]
movsd
movsd
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
mov     byte ptr [ebp+74h], 0
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0ACh], 13h
lea     ecx, [ebp+14h]
mov     edx, ecx
mov     eax, 0CAh
call    sub_4D8BC3
mov     eax, ebp
call    sub_402910
mov     ebx, 2800h
mov     edx, 400h
mov     eax, 1Eh
call    sub_42A70B

loc_401C89:
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

loc_401CAD:
add     esp, 4
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4
sub_401A03 endp




sub_401CB5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+550h]
cmp     byte ptr [eax+0Bh], 0
jnz     short loc_401CFB
mov     byte ptr [ecx+0Bh], 1
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_401CD7
cmp     al, 0FFh
jz      short loc_401CE3
jmp     short loc_401CEF

loc_401CD7:
mov     byte ptr [ecx+0ACh], 40h ; '@'
jmp     loc_401E20

loc_401CE3:
mov     byte ptr [ecx+0ACh], 42h ; 'B'
jmp     loc_401E20

loc_401CEF:
mov     byte ptr [ecx+0ACh], 41h ; 'A'
jmp     loc_401E20

loc_401CFB:
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_401D0F
cmp     al, 0FFh
jz      loc_401DC3
jmp     loc_401DD6

loc_401D0F:
mov     ebx, [ecx+0A4h]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jnz     loc_401E20
inc     al
mov     [ecx+0Ah], al
mov     byte ptr [ecx+0Bh], 0
test    byte ptr [edx+2], 1
jz      short loc_401D7B
cmp     byte ptr [edx+0EAh], 3
jz      short loc_401D4F
test    byte ptr [edx+1], 4
jnz     short loc_401D4F
mov     byte ptr [edx+0E8h], 0
mov     byte ptr [edx+0E9h], 8
jmp     short loc_401D5D

loc_401D4F:
mov     byte ptr [edx+0E8h], 2
mov     byte ptr [edx+0E9h], 20h ; ' '

loc_401D5D:
mov     bl, [edx+0EAh]
inc     bl
mov     [edx+0EAh], bl
mov     bh, bl
and     bh, 3
mov     [edx+0EAh], bh
jmp     loc_401E20

loc_401D7B:
cmp     byte ptr [edx+0EBh], 3
jz      short loc_401D9A
test    byte ptr [edx+1], 4
jnz     short loc_401D9A
mov     byte ptr [edx+0E8h], 1
mov     byte ptr [edx+0E9h], 4
jmp     short loc_401DA8

loc_401D9A:
mov     byte ptr [edx+0E8h], 3
mov     byte ptr [edx+0E9h], 8

loc_401DA8:
mov     bl, [edx+0EBh]
inc     bl
mov     [edx+0EBh], bl
mov     bh, bl
and     bh, 3
mov     [edx+0EBh], bh
jmp     short loc_401E20

loc_401DC3:
mov     ebx, [ecx+0A4h]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jnz     short loc_401E20
or      byte ptr [edx], 1
jmp     short loc_401E20

loc_401DD6:
cmp     byte ptr [edx+0E8h], 2
jz      short loc_401DED
mov     ebx, [ecx+0A4h]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jnz     short loc_401E20

loc_401DED:
mov     word ptr [edx+0E6h], 0
mov     eax, ecx
call    sub_4024AC
mov     al, [ecx+0Ah]
cmp     al, [edx+0E9h]
jb      short loc_401E0E
mov     byte ptr [ecx+0Ah], 0FFh
jmp     short loc_401E15

loc_401E0E:
mov     bl, al
inc     bl
mov     [ecx+0Ah], bl

loc_401E15:
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0ADh], 0FFh

loc_401E20:
test    byte ptr [edx+1], 4
jnz     short loc_401E2D
mov     edx, 8
jmp     short loc_401E32

loc_401E2D:
mov     edx, 18h

loc_401E32:
movsx   ebx, dx

loc_401E35:
mov     edx, 2
mov     eax, ecx
call    sub_4029BB
pop     edx
pop     ecx
pop     ebx
retn
sub_401CB5 endp




sub_401E45 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+550h]
cmp     byte ptr [eax+0Bh], 0
jnz     short loc_401E9E
mov     byte ptr [ecx+0Bh], 1
mov     al, [ecx+0Ah]
cmp     al, 1
jb      short loc_401E69
jbe     short loc_401E85
cmp     al, 0FFh
jz      short loc_401E79
jmp     short loc_401E92

loc_401E69:
test    al, al
jnz     short loc_401E92
mov     byte ptr [ecx+0ACh], 8
jmp     loc_401F01

loc_401E79:
mov     byte ptr [ecx+0ACh], 0Ah
jmp     loc_401F01

loc_401E85:
lea     edx, [ecx+14h]
mov     eax, 0CFh
call    sub_4D8BC3

loc_401E92:
mov     byte ptr [ecx+0ACh], 9
jmp     loc_401F01

loc_401E9E:
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_401EAB
cmp     al, 0FFh
jz      short loc_401ECD
jmp     short loc_401EE0

loc_401EAB:
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_401F01
inc     al
mov     [ecx+0Ah], al
mov     byte ptr [ecx+0Bh], 0
or      byte ptr [ebx], 40h
mov     word ptr [ebx+4], 0
jmp     short loc_401F01

loc_401ECD:
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_401F01
or      byte ptr [ebx], 1
jmp     short loc_401F01

loc_401EE0:
inc     byte ptr [ecx+0Ah]
inc     word ptr [ebx+4]
test    byte ptr [ebx+4], 1
jnz     short loc_401F01
mov     eax, ecx
call    sub_4026DC
test    byte ptr [ebx], 40h
jnz     short loc_401F01
mov     byte ptr [ecx+0Ah], 0FFh
mov     byte ptr [ecx+0Bh], 0

loc_401F01:
test    byte ptr [ebx+1], 4
jnz     short loc_401F0E
mov     ebx, 2
jmp     short loc_401F13

loc_401F0E:
mov     ebx, 6

loc_401F13:
movsx   ebx, bx
jmp     loc_401E35
sub_401E45 endp




sub_401F1B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+550h]
cmp     byte ptr [eax+0Bh], 0
jnz     short loc_401F39
mov     byte ptr [ecx+0Bh], 1
mov     byte ptr [ecx+0ACh], 43h ; 'C'
jmp     short loc_401F77

loc_401F39:
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_401F46
cmp     al, 1
jz      short loc_401F5C
jmp     short loc_401F77

loc_401F46:
cmp     byte ptr [ecx+0A4h], 10h
jnz     short loc_401F77
inc     al
mov     [ecx+0Ah], al
mov     word ptr [edx+4], 0
jmp     short loc_401F77

loc_401F5C:
inc     word ptr [edx+4]
test    byte ptr [edx+4], 3
jnz     short loc_401F6D
mov     eax, ecx
call    sub_4027F1

loc_401F6D:
cmp     word ptr [edx+4], 3Ch ; '<'
jle     short loc_401F77
or      byte ptr [edx], 1

loc_401F77:
test    byte ptr [edx+1], 4
jnz     short loc_401F87
mov     edx, 4
jmp     loc_401E32

loc_401F87:
mov     edx, 10h
jmp     loc_401E32
sub_401F1B endp

align 4
jpt_402018 dd offset loc_40201F ; jump table for switch statement
dd offset loc_402076
dd offset loc_4020FA
dd offset loc_402221
dd offset loc_402237



sub_401FA8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+550h]
cmp     byte ptr [eax+0Bh], 0
jnz     short loc_402009
mov     byte ptr [esi+0Bh], 1
mov     al, [esi+0Ah]
cmp     al, 1
jb      short loc_401FD0
jbe     short loc_401FE4
cmp     al, 3
jz      short loc_401FFD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_401FD0:
test    al, al
jnz     def_402018      ; jumptable 00402018 default case
mov     byte ptr [esi+0ACh], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_401FE4:
mov     byte ptr [esi+0ACh], 3
lea     edx, [esi+14h]
mov     eax, 0CCh
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_401FFD:
mov     byte ptr [esi+0ACh], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_402009:
mov     al, [esi+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_402018      ; jumptable 00402018 default case
xor     edx, edx
mov     dl, al
jmp     jpt_402018[edx*4] ; switch jump

loc_40201F:             ; jumptable 00402018 case 0
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_402018      ; jumptable 00402018 default case
mov     al, [ecx+0EDh]
mov     [ecx+0EEh], al
test    byte ptr [ecx+1], 4
jnz     short loc_402056
mov     word ptr [ecx+4], 3Ch ; '<'
mov     al, [ecx+2]
and     al, 3
mov     [ecx+0E9h], al
jmp     short loc_402063

loc_402056:
mov     word ptr [ecx+4], 78h ; 'x'
mov     byte ptr [ecx+0E9h], 0

loc_402063:
mov     word ptr [esi+52h], 0
mov     byte ptr [esi+0Ah], 1

loc_40206D:
mov     byte ptr [esi+0Bh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_402076:             ; jumptable 00402018 case 1
test    byte ptr [ecx+4], 1
jz      short loc_402083
mov     eax, esi
call    sub_402910

loc_402083:
mov     ax, [ecx+4]
dec     ax
mov     [ecx+4], ax
jnz     short loc_4020AE
mov     byte ptr [esi+0Ah], 2
mov     al, [ecx+2]
and     al, 1
mov     [ecx+0E8h], al
jz      short loc_4020A8
mov     word ptr [ecx+4], 70h ; 'p'
jmp     short loc_4020AE

loc_4020A8:
mov     word ptr [ecx+4], 90h

loc_4020AE:
test    byte ptr [ecx+1], 4
jnz     short loc_4020BB
mov     eax, 8
jmp     short loc_4020C0

loc_4020BB:
mov     eax, 10h

loc_4020C0:
movsx   ebx, ax
mov     edx, 2
mov     eax, esi
call    sub_4029BB
test    al, 2
jz      def_402018      ; jumptable 00402018 default case
mov     dl, [ecx+0E9h]
test    dl, dl
jnz     def_402018      ; jumptable 00402018 default case
mov     [ecx+0E8h], dl
mov     word ptr [ecx+4], 40h ; '@'
mov     byte ptr [esi+0Ah], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4020FA:             ; jumptable 00402018 case 2
test    byte ptr [ecx+4], 1
jz      short loc_402107
mov     eax, esi
call    sub_402910

loc_402107:
mov     edx, [ecx+2]
sar     edx, 10h
mov     ebx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_40212A
lea     edx, [esi+14h]
mov     eax, 0CDh
call    sub_4D8BC3

loc_40212A:
mov     ax, [ecx+4]
mov     edx, eax
dec     edx
mov     [ecx+4], dx
test    ax, ax
jz      loc_402210
cmp     byte ptr [ecx+0E8h], 0
jz      short loc_40219B
mov     dx, [esi+52h]
cmp     dx, 80h
jge     short loc_402160
mov     ecx, edx
add     ecx, 4
mov     [esi+52h], cx
jmp     loc_4021EE

loc_402160:
test    byte ptr [ecx+1], 2
jnz     short loc_402173
mov     ax, [ecx+2]
and     ah, 3
mov     [esi+44h], ax
jmp     short loc_402179

loc_402173:
mov     word ptr [esi+44h], 0

loc_402179:
cmp     word ptr [ecx+4], 30h ; '0'
jl      loc_4021EE
cmp     dword ptr [ecx+0E0h], 300h
jb      short loc_4021EE
mov     word ptr [ecx+0E6h], 5
jmp     short loc_4021E7

loc_40219B:
mov     dx, [esi+52h]
cmp     dx, 40h ; '@'
jge     short loc_4021B2
mov     eax, edx
add     eax, 2
mov     [esi+52h], ax
jmp     short loc_4021EE

loc_4021B2:
test    byte ptr [ecx+1], 2
jnz     short loc_4021C5
mov     ax, [ecx+2]
and     ah, 1
mov     [esi+44h], ax
jmp     short loc_4021CB

loc_4021C5:
mov     word ptr [esi+44h], 0

loc_4021CB:
mov     bx, [ecx+4]
cmp     bx, 50h ; 'P'
jg      short loc_4021EE
cmp     bx, 30h ; '0'
jl      short loc_4021EE
cmp     dword ptr [ecx+0E0h], 300h
jb      short loc_4021EE

loc_4021E7:
mov     eax, esi
call    sub_4024AC

loc_4021EE:
mov     ax, [esi+52h]
add     [esi+56h], ax
and     byte ptr [esi+57h], 0Fh
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_402210:
mov     [esi+44h], ax
mov     [esi+52h], ax
mov     byte ptr [esi+0Ah], 3
jmp     loc_40206D

loc_402221:             ; jumptable 00402018 case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_402018 ; jumptable 00402018 default case
or      byte ptr [ecx], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_402237:             ; jumptable 00402018 case 4
test    byte ptr [ecx+4], 1
jz      short loc_402244
mov     eax, esi
call    sub_402910

loc_402244:
test    byte ptr [ecx+1], 4
jnz     short loc_402251
mov     eax, 10h
jmp     short loc_402256

loc_402251:
mov     eax, 20h ; ' '

loc_402256:
movsx   ebx, ax
mov     edx, 2
mov     eax, esi
call    sub_4029BB
mov     ax, [ecx+4]
mov     edx, eax
dec     edx
mov     [ecx+4], dx
test    ax, ax
jz      short loc_402210
test    byte ptr [ecx+4], 3
jnz     short def_402018 ; jumptable 00402018 default case
mov     eax, esi
call    sub_4024AC

def_402018:             ; jumptable 00402018 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_401FA8 endp




sub_402287 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 550h
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_4022A5
cmp     dl, 1
jz      short loc_4022C5
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_4022A5:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 20h ; ' '
mov     word ptr [ebp+44h], 0
mov     word ptr [eax+4], 1Ch
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0FBh

loc_4022C5:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      short loc_4022D6
or      byte ptr [eax], 5

loc_4022D6:
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 3
xor     ecx, ecx
xor     ebx, ebx
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
jge     short loc_40231C
neg     eax

loc_40231C:
cmp     eax, 20h ; ' '
jle     def_402A93      ; jumptable 00402A93 default case, cases 2,4
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
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4
sub_402287 endp

jpt_402380 dd offset loc_402387 ; jump table for switch statement
dd offset loc_4023BD
dd offset loc_40243B
dd offset loc_402469



sub_40234C proc near

var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
cmp     ds:word_5F83D2, 0
jl      short loc_402370
mov     eax, 660h
call    sub_47E8B8
call    sub_4D8E21

loc_402370:
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case
and     eax, 0FFh
jmp     jpt_402380[eax*4] ; switch jump

loc_402387:             ; jumptable 00402380 case 0
lea     edi, [ebp+14h]
mov     esi, (offset dword_50B202+2)
movsd
movsd
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

loc_4023B5:
inc     byte ptr [ebp+0Ah]
jmp     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_4023BD:             ; jumptable 00402380 case 1
mov     byte ptr [ebp+0ACh], 20h ; ' '
test    byte ptr [ebp+0Bh], 3
jnz     short loc_402418
call    sub_4DE13B
test    eax, eax
jz      short loc_402418
mov     byte ptr [eax], 7
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
xor     edx, edx
mov     dl, [ebp+0Bh]
sar     edx, 2
xor     ebx, ebx
mov     bl, ds:byte_50B234[edx]
mov     dl, bl
and     edx, 0FFh
shl     edx, 3
lea     esi, [edx+ebp]
mov     edi, esp
lea     esi, [esi+190h]
movsd
movsd
lea     edi, [eax+48h]
mov     esi, esp
movsd
movsd
movsx   eax, bx
mov     byte ptr [ebp+eax*4+0F9h], 0FFh

loc_402418:
mov     dh, [ebp+0Bh]
inc     dh
mov     [ebp+0Bh], dh
cmp     dh, 30h ; '0'
jb      def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0Bh], 0
mov     word ptr [ebp+46h], 0
jmp     def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case

loc_40243B:             ; jumptable 00402380 case 2
add     word ptr [ebp+46h], 80h
mov     ebx, [ebp+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+190h]
sar     eax, 10h
cmp     eax, 0FFFFFF9Ch
jl      def_4017EC      ; jumptable 004017EC default case
; jumptable 00402380 default case
jmp     loc_4023B5

loc_402469:             ; jumptable 00402380 case 3
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
mov     [esp+20h+var_1E], 0FFFFh
call    sub_4DE13B
test    eax, eax
jz      short loc_402492
mov     byte ptr [eax], 7
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 24h ; '$'
lea     edi, [eax+48h]
mov     esi, esp
movsd
movsd

loc_402492:
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
mov     eax, ebp
call    sub_432EAB
jmp     def_4017EC      ; jumptable 004017EC default case
sub_40234C endp         ; jumptable 00402380 default case




sub_4024AC proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
lea     ebp, [eax+550h]
mov     [esp+1Ch+var_1C], offset byte_5F8364
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_401CAD
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     dl, [ebp+0E8h]
and     dl, 1
mov     [eax+0Fh], dl
jnz     short loc_40250F
test    byte ptr [ebp+0E8h], 2
jnz     short loc_402502
mov     ax, [ebp+2]
xor     ah, ah
and     al, 1Fh
sub     eax, 10h
jmp     short loc_402511

loc_402502:
mov     ax, [ebp+2]
xor     ah, ah
and     al, 7Fh
sub     eax, 40h ; '@'
jmp     short loc_402511

loc_40250F:
xor     eax, eax

loc_402511:
mov     edx, [edi+54h]
sar     edx, 10h
movsx   ebx, ax
lea     eax, [edx+800h]
add     eax, ebx
call    sub_4EF003
mov     edx, eax
mov     eax, [edi+54h]
sar     eax, 10h
add     eax, 800h
add     eax, ebx
call    sub_4EF008
mov     ebx, eax
imul    eax, [ebp+0E0h]
shr     eax, 0Ch
mov     ecx, [edi+12h]
sar     ecx, 10h
add     eax, ecx
mov     [edi+0C4h], ax
cmp     byte ptr [esi+0Fh], 1
jnz     short loc_40256D
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4AAh]
add     eax, 50h ; 'P'
jmp     short loc_402577

loc_40256D:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4AAh]

loc_402577:
mov     [edi+0C6h], ax
mov     eax, [ebp+0E0h]
imul    eax, edx
shr     eax, 0Ch
mov     ecx, [edi+16h]
sar     ecx, 10h
add     eax, ecx
mov     [edi+0C8h], ax
cmp     byte ptr [esi+0Fh], 1
jnz     short loc_4025E0
mov     ecx, [edi+18Eh]
sar     ecx, 10h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
sar     eax, 5
add     ecx, eax
mov     [esi+1Ch], ecx
mov     eax, [edi+190h]
sar     eax, 10h
sub     eax, 3Ch ; '<'
mov     [esi+20h], eax
mov     ecx, [edi+192h]
sar     ecx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
sar     eax, 5
add     ecx, eax
mov     [esi+24h], ecx
jmp     short loc_402613

loc_4025E0:
mov     eax, [edi+18Eh]
sar     eax, 10h
sar     ebx, 4
add     eax, ebx
mov     [esi+1Ch], eax
mov     eax, [edi+190h]
sar     eax, 10h
add     eax, 100h
mov     [esi+20h], eax
mov     eax, [edi+192h]
sar     eax, 10h
sar     edx, 4
add     eax, edx
mov     [esi+24h], eax

loc_402613:
shl     dword ptr [esi+1Ch], 10h
shl     dword ptr [esi+20h], 10h
shl     dword ptr [esi+24h], 10h
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     ax, [edi+0C4h]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0C4h], ax
mov     ax, [edi+0C6h]
mov     [edx+0C6h], ax
mov     ax, [edi+0C8h]
mov     [edx+0C8h], ax
cmp     byte ptr [esi+0Fh], 0
jz      short loc_402692
mov     ecx, [ebp+0E4h]
sar     ecx, 10h
shl     ecx, 9
test    byte ptr [ebp+0E8h], 2
jz      short loc_402679
mov     ebx, 78h ; 'x'
jmp     short loc_40267E

loc_402679:
mov     ebx, 28h ; '('

loc_40267E:
mov     edx, [esp+1Ch+var_1C]
mov     eax, esi
call    sub_4DD9FD
lea     edx, [edi+14h]
mov     eax, 0CEh
jmp     short loc_4026BF

loc_402692:
test    byte ptr [ebp+0E8h], 2
jz      short loc_4026A2
mov     ebx, 80h
jmp     short loc_4026A7

loc_4026A2:
mov     ebx, 60h ; '`'

loc_4026A7:
mov     edx, [esp+1Ch+var_1C]
add     edx, 0C4h
mov     eax, esi
call    sub_4DDC7D
lea     edx, [edi+14h]
mov     eax, 0E3h

loc_4026BF:
call    sub_4D8BC3
mov     al, [ebp+0E8h]
and     al, 1
xor     edx, edx
mov     dl, al
mov     eax, esi
call    sub_402968
jmp     loc_401CAD
sub_4024AC endp




sub_4026DC proc near

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
sub     esp, 10h
mov     ecx, eax
lea     ebp, [eax+550h]
xor     ebx, ebx
call    sub_4DE13B
mov     edx, eax
mov     [esp+28h+var_1C], eax
test    eax, eax
jz      short loc_402771
mov     byte ptr [eax], 7
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0FEh
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     esi, eax
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     ebx, eax
xor     eax, eax
mov     al, [ecx+0Ah]
add     eax, 4
imul    ebx, eax
sar     ebx, 6
mov     [esp+28h+var_20], ebx
mov     ebx, [ecx+12h]
sar     ebx, 10h
add     ebx, [esp+28h+var_20]
mov     [esp+28h+var_28], bx
mov     [esp+28h+var_26], 0FFFFh
imul    eax, esi
sar     eax, 6
mov     ebx, [ecx+16h]
sar     ebx, 10h
add     eax, ebx
mov     [esp+28h+var_24], ax
lea     ebx, [edx+14h]
lea     edi, [ebx+34h]
mov     esi, esp
movsd
movsd

loc_402771:
lea     edx, [ebx+34h]
lea     eax, [ecx+14h]
call    sub_4DD685
mov     edx, [ebp+0E0h]
add     edx, 200h
cmp     eax, edx
jbe     short loc_402796
cmp     byte ptr [ecx+0Ah], 3Ch ; '<'
jbe     short loc_402796
and     byte ptr [ebp+0], 0BFh

loc_402796:
lea     esi, [ebx+34h]
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, esi
mov     eax, esi
call    sub_42CE61
mov     ecx, eax
test    eax, eax
jz      loc_401272
call    sub_4EE9F8
test    ax, ax
jz      short loc_4027CB
mov     edx, 190h
mov     eax, ecx
call    sub_4EE6C2
jmp     short loc_4027E8

loc_4027CB:
xor     ecx, ecx
mov     eax, [esp+28h+var_1C]
mov     cl, [eax+1]
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_42C5B7
cmp     eax, 0FFFFFF80h
jge     loc_401272

loc_4027E8:
and     byte ptr [ebp+0], 0BFh
jmp     loc_401272
sub_4026DC endp




sub_4027F1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     edx, [eax+550h]
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_401276
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 1
mov     dx, [edx+2]
mov     eax, edx
and     ah, 0Fh
movsx   ecx, ax
mov     eax, ecx
call    sub_4EF003
mov     ebx, eax
mov     eax, ecx
call    sub_4EF008
sar     dx, 4
and     dh, 3
add     edx, 80h
movsx   edx, dx
imul    eax, edx
sar     eax, 0Ch
mov     ecx, ds:dword_5F8376
sar     ecx, 10h
add     eax, ecx
mov     [edi+0C4h], ax
mov     ax, word ptr ds:dword_5F837A
mov     [edi+0C6h], ax
imul    edx, ebx
sar     edx, 0Ch
mov     eax, ds:dword_5F837A
sar     eax, 10h
add     eax, edx
mov     [edi+0C8h], ax
mov     eax, [edi+18Eh]
sar     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [edi+190h]
sar     eax, 10h
sub     eax, 104h
mov     [esi+20h], eax
mov     eax, [edi+192h]
sar     eax, 10h
mov     [esi+24h], eax
shl     dword ptr [esi+1Ch], 10h
shl     dword ptr [esi+20h], 10h
shl     dword ptr [esi+24h], 10h
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     ax, [edi+0C4h]
mov     word ptr ds:dword_5F8428, ax
mov     ax, [edi+0C6h]
mov     word ptr ds:dword_5F8428+2, ax
mov     ax, [edi+0C8h]
mov     ds:word_5F842C, ax
xor     ecx, ecx
mov     ebx, 32h ; '2'
mov     edx, offset byte_5F8364
mov     eax, esi
call    sub_4DD9FD
lea     edx, [edi+14h]
mov     eax, 0CEh
call    sub_4D8BC3
jmp     loc_401276
sub_4027F1 endp




sub_402910 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ebx, ebx
jmp     short loc_402925

loc_40291A:
inc     ebx
cmp     bx, 4
jge     def_402018      ; jumptable 00402018 default case

loc_402925:
call    sub_4DE13B
test    eax, eax
jz      short loc_40291A
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 3
movsx   ecx, bx
inc     ecx
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     cx, [esi+edx*8+190h]
mov     [eax+1Ch], cx
mov     word ptr [eax+1Eh], 0FFECh
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
jmp     short loc_40291A
sub_402910 endp




sub_402968 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     bl, dl
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4029B8
test    bl, bl
jnz     short loc_402991
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 84h
mov     [eax+4], bl
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 20h ; ' '
jmp     short loc_4029A0

loc_402991:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 3

loc_4029A0:
mov     ax, [ecx+14h]
mov     [edx+1Ch], ax
mov     ax, [ecx+16h]
mov     [edx+1Eh], ax
mov     ax, [ecx+18h]
mov     [edx+20h], ax

loc_4029B8:
pop     ecx
pop     ebx
retn
sub_402968 endp




sub_4029BB proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+14h+var_14], ebx
add     eax, 550h
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F880A+2)
movsd
movsd
lea     edi, [ebp+0C4h]
lea     esi, [ebp+190h]
movsd
movsd
mov     [eax+0C8h], dx
mov     word ptr [eax+0CAh], 9
mov     word ptr [eax+0CCh], 4
lea     ecx, [eax+0D0h]
lea     ebx, [eax+0C8h]
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD6EC
mov     ecx, eax
test    al, 2
jnz     short loc_402A35
test    al, 1
jz      short loc_402A2A
mov     eax, [esp+14h+var_14]
sub     [ebp+56h], ax
jmp     short loc_402A31

loc_402A2A:
mov     eax, [esp+14h+var_14]
add     [ebp+56h], ax

loc_402A31:
and     byte ptr [ebp+57h], 0Fh

loc_402A35:
mov     eax, ecx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4029BB endp

align 10h
jpt_402A93 dd offset loc_402A9A ; jump table for switch statement
dd offset def_402A93
dd offset loc_402B9F
dd offset def_402A93
dd offset loc_402B7F
dd offset loc_402BB1
dd offset loc_402B90
dd offset loc_402BC0
dd offset loc_402BCF
dd offset loc_402C22



sub_402A68 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
lea     ecx, [eax+550h]
mov     ebp, offset byte_5F8364
mov     word ptr [ecx+4], 0
mov     al, [eax+9]
dec     al              ; switch 10 cases
cmp     al, 9
ja      def_402A93      ; jumptable 00402A93 default case, cases 2,4
and     eax, 0FFh
jmp     jpt_402A93[eax*4] ; switch jump

loc_402A9A:             ; jumptable 00402A93 case 1
mov     al, [ecx+0EDh]
cmp     al, [ecx+0EEh]
jz      def_402A93      ; jumptable 00402A93 default case, cases 2,4
xor     eax, eax
mov     al, [ecx+0EDh]
xor     edx, edx
mov     dl, [ecx+0EEh]
sub     eax, edx
add     eax, 4
shl     eax, 0Ah
cmp     dl, 3
jnz     short loc_402ACE
add     ah, 8

loc_402ACE:
and     ah, 0Fh
mov     edx, [ebx+54h]
sar     edx, 10h
movsx   esi, ax
sub     esi, edx
mov     edx, esi
test    esi, esi
jge     short loc_402AE4
neg     edx

loc_402AE4:
mov     edi, [ebx+54h]
sar     edi, 10h
mov     esi, 1000h
sub     esi, edi
mov     edi, esi
movsx   esi, ax
add     esi, edi
cmp     edx, esi
jle     short loc_402AFF
add     ah, 10h

loc_402AFF:
lea     edi, [ecx+0B8h]
lea     esi, [ebx+14h]
movsd
movsd
movzx   esi, byte ptr [ecx+0EDh]
lea     edi, [ecx+0C0h]
lea     esi, (dword_50B1FA+2)[esi*8]
movsd
movsd
mov     dx, [ebx+56h]
mov     [ecx+0BEh], dx
mov     [ecx+0C6h], ax
xor     eax, eax
mov     al, [ecx+0EDh]
shl     eax, 3
mov     esi, ds:dword_50B1FA[eax]
sar     esi, 10h
mov     edx, [ebx+12h]
sar     edx, 10h
cmp     edx, esi
jnz     short loc_402B6C
mov     eax, ds:dword_50B1FE[eax]
sar     eax, 10h
mov     edx, [ebx+16h]
sar     edx, 10h
cmp     edx, eax
jnz     short loc_402B6C
mov     byte ptr [ebx+9], 3
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402B6C:
mov     byte ptr [ebx+9], 5
mov     byte ptr [ecx+0E8h], 0
or      byte ptr [ecx], 40h
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402B7F:             ; jumptable 00402A93 case 5
test    byte ptr [ecx], 40h
jz      short loc_402B90 ; jumptable 00402A93 case 7
mov     byte ptr [ebx+9], 3
and     byte ptr [ecx], 0BFh
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402B90:             ; jumptable 00402A93 case 7
mov     byte ptr [ebx+9], 1
mov     word ptr [ecx+4], 1Eh
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402B9F:             ; jumptable 00402A93 case 3
mov     word ptr [ecx+4], 0Ah
mov     eax, ebx
call    sub_402DAA
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402BB1:             ; jumptable 00402A93 case 6
mov     byte ptr [ebx+9], 1
mov     word ptr [ecx+4], 0Fh
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402BC0:             ; jumptable 00402A93 case 8
mov     byte ptr [ebx+9], 1
mov     word ptr [ecx+4], 5Ah ; 'Z'
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402BCF:             ; jumptable 00402A93 case 9
test    byte ptr [ecx+1], 2
jz      short loc_402C0E
mov     edx, [ebx+12h]
sar     edx, 10h
mov     eax, ds:dword_50B202
sar     eax, 10h
cmp     edx, eax
jnz     short loc_402C0E
mov     edx, [ebx+16h]
sar     edx, 10h
mov     eax, ds:dword_50B206
sar     eax, 10h
cmp     edx, eax
jnz     short loc_402C0E
mov     byte ptr [ebx+9], 1
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ecx+4], 0Ah
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402C0E:
lea     edi, [ecx+0B8h]
lea     esi, [ebx+14h]
movsd
movsd
movzx   esi, byte ptr [ecx+0EEh]
jmp     short loc_402C7B

loc_402C22:             ; jumptable 00402A93 case 10
mov     ah, [ecx]
and     ah, 0BFh
mov     [ecx], ah
cmp     word ptr [ebx+6Eh], 0
jg      short loc_402C46
mov     dh, ah
and     dh, 7Fh
mov     [ecx], dh
mov     byte ptr [ebx+9], 0Bh
mov     word ptr [ebx+0Ah], 0
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402C46:
mov     al, [ecx+0EDh]
cmp     al, [ecx+0EEh]
jnz     short loc_402C69
mov     byte ptr [ebx+9], 1
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ecx+4], 1
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402C69:
lea     edi, [ecx+0B8h]
lea     esi, [ebx+14h]
movsd
movsd
movzx   esi, byte ptr [ecx+0EDh]

loc_402C7B:
lea     edi, [ecx+0C0h]
lea     esi, (dword_50B1FA+2)[esi*8]
movsd
movsd
lea     edx, [ebp+14h]
lea     eax, [ecx+0C0h]
call    sub_4DDDB4
mov     dx, [ebx+56h]
mov     [ecx+0BEh], dx
mov     [ecx+0C6h], ax
mov     byte ptr [ecx+0E8h], 0
mov     byte ptr [ebx+9], 5
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4
sub_402A68 endp

align 4
jpt_402CF9 dd offset loc_402D00 ; jump table for switch statement
dd offset loc_402D29
dd offset loc_402D72
dd offset loc_402D82



sub_402CCC proc near
push    ebx
push    ecx
push    edx
push    esi
lea     edx, [eax+550h]
xor     ecx, ecx
mov     bx, [edx+2]
xor     bh, bh
and     bl, 3
mov     ah, [edx+0EDh]
mov     al, [edx+0ECh]
cmp     ah, 3           ; switch 4 cases
ja      def_402CF9      ; jumptable 00402CF9 default case
movzx   esi, ah
jmp     jpt_402CF9[esi*4] ; switch jump

loc_402D00:             ; jumptable 00402CF9 case 0
cmp     al, 1
jz      short loc_402D1D
cmp     al, 5
jz      short loc_402D1D
cmp     al, 8
jz      short loc_402D1D
cmp     al, 4

loc_402D0E:             ; jumptable 00402CF9 default case
jnz     def_402CF9
test    bx, bx
jnz     def_402CF9      ; jumptable 00402CF9 default case

loc_402D1D:
mov     byte ptr [edx+0EEh], 1
jmp     loc_402D9E

loc_402D29:             ; jumptable 00402CF9 case 1
test    al, al
jz      short loc_402D36
cmp     al, 4
jnz     short loc_402D42
test    bx, bx
jnz     short loc_402D42

loc_402D36:
mov     byte ptr [edx+0EEh], 0
jmp     loc_402D9E

loc_402D42:
cmp     al, 2
jz      short loc_402D4F
cmp     al, 5
jnz     short loc_402D58
test    bx, bx
jnz     short loc_402D58

loc_402D4F:
mov     byte ptr [edx+0EEh], 2
jmp     short loc_402D9E

loc_402D58:
cmp     al, 3
jz      short loc_402D69
cmp     al, 0Eh
jz      short loc_402D69
cmp     al, 8
jnz     short def_402CF9 ; jumptable 00402CF9 default case
test    bx, bx
jnz     short def_402CF9 ; jumptable 00402CF9 default case

loc_402D69:
mov     byte ptr [edx+0EEh], 3
jmp     short loc_402D9E

loc_402D72:             ; jumptable 00402CF9 case 2
cmp     al, 1
jz      short loc_402D1D
cmp     al, 4
jz      short loc_402D1D
cmp     al, 8
jz      short loc_402D1D
cmp     al, 5
jmp     short loc_402D0E

loc_402D82:             ; jumptable 00402CF9 case 3
cmp     al, 1
jz      short loc_402D97
cmp     al, 4
jz      short loc_402D97
cmp     al, 5
jz      short loc_402D97
cmp     al, 8
jnz     short def_402CF9 ; jumptable 00402CF9 default case
test    bx, bx
jnz     short def_402CF9 ; jumptable 00402CF9 default case

loc_402D97:
mov     byte ptr [edx+0EEh], 1

loc_402D9E:
mov     ecx, 1

def_402CF9:             ; jumptable 00402CF9 default case
mov     eax, ecx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_402CCC endp




sub_402DAA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+550h]
mov     eax, [ebp+0E0h]
shr     eax, 0Ah
cmp     ax, 6
jl      short loc_402DD0
mov     byte ptr [ecx+9], 1
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4

loc_402DD0:
mov     dx, [ebp+2]
xor     dh, dh
and     dl, 3
and     edx, 0FFFFh
cwde
mov     al, ds:byte_50B21C[edx+eax*4]
mov     [ecx+9], al
mov     word ptr [ecx+0Ah], 0
cmp     byte ptr [ecx+9], 9
jz      def_402A93      ; jumptable 00402A93 default case, cases 2,4
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4029BB
test    al, 2
jnz     def_402A93      ; jumptable 00402A93 default case, cases 2,4
lea     edi, [ebp+0B8h]
lea     esi, [ecx+14h]
movsd
movsd
movzx   esi, byte ptr [ebp+0EEh]
lea     edi, [ebp+0C0h]
lea     esi, (dword_50B1FA+2)[esi*8]
movsd
movsd
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebp+0C0h]
call    sub_4DDDB4
mov     dx, [ecx+56h]
mov     [ebp+0BEh], dx
mov     [ebp+0C6h], ax
mov     byte ptr [ebp+0E8h], 0
mov     byte ptr [ecx+9], 5
mov     word ptr [ecx+0Ah], 0
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4
sub_402DAA endp




sub_402E6C proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
lea     ebp, [eax+550h]
xor     eax, eax
mov     edx, [esp+24h+var_24]
mov     al, [edx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [ebp+8], ax
xor     edx, edx
mov     word ptr [esp+24h+var_1C], dx
jmp     short loc_402F01

loc_402EA3:
push    0
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+8]
or      eax, 4880000h
push    eax
mov     eax, [esp+30h+var_20+2]
sar     eax, 10h
shl     eax, 4
lea     edx, [ebp+10h]
add     eax, edx
push    eax
xor     eax, eax
mov     edx, [esp+34h+var_24]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+0B0h]
mov     [esp+38h+var_20], eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
call    sub_4E01FC
mov     ebx, [esp+24h+var_1C]
inc     ebx
mov     word ptr [esp+24h+var_1C], bx
cmp     bx, 8
jge     short loc_402F48
cmp     bx, 4
jge     short loc_402F23

loc_402F01:
mov     edx, [esp+24h+var_20+2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     esi, [esp+24h+var_24]
lea     edi, [ebp+0B0h]
lea     esi, [esi+eax*8+1A8h]

loc_402F1F:
movsd
movsd
jmp     short loc_402EA3

loc_402F23:
mov     eax, [esp+24h+var_20+2]
sar     eax, 10h
lea     edx, [eax-4]
mov     esi, edx
shl     esi, 2
sub     esi, edx
shl     esi, 3
add     esi, [esp+24h+var_24]
lea     edi, [ebp+0B0h]
lea     esi, [esi+1A0h]
jmp     short loc_402F1F

loc_402F48:
lea     edi, [ebp+0B0h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+190h]
movsd
movsd
mov     eax, [esp+24h+var_24]
mov     eax, [eax+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
sar     edx, 5
mov     eax, [ebp+0AEh]
sar     eax, 10h
add     eax, edx
mov     [ebp+0B0h], ax
mov     eax, [esp+24h+var_24]
mov     eax, [eax+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
sar     edx, 5
mov     eax, [ebp+0B2h]
sar     eax, 10h
add     eax, edx
mov     [ebp+0B4h], ax
push    0
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+8]
or      eax, 4880000h
push    eax
add     ebp, 90h
push    ebp
xor     eax, eax
mov     edx, [esp+1Ch+var_C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
mov     eax, [esp+20h+var_8]
call    sub_4E01FC
mov     eax, 1
add     esp, 0Ch
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4
sub_402E6C endp




sub_402FF3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     esi, [eax+550h]
xor     edi, edi
mov     ax, [eax+6Eh]
mov     [ecx+0B2h], ax
cmp     byte ptr [ecx+9], 3
jz      loc_403179
xor     ebx, ebx
jmp     short loc_403023

loc_40301C:
inc     ebx
cmp     bx, 4
jge     short loc_403083

loc_403023:
movsx   ebp, bx
mov     edx, ebp
shl     edx, 4
add     edx, esi
mov     eax, [edx+10h]
and     eax, 0FFFFFFh
jz      short loc_40301C
test    byte ptr [edx+13h], 18h
jz      short loc_40301C
sub     [ecx+6Eh], ax
mov     edx, ebp
shl     edx, 2
sub     edx, ebp
mov     word ptr [ecx+edx*8+19Eh], 7FFFh
mov     word ptr [ecx+edx*8+1A6h], 7FFFh
mov     word ptr [ecx+edx*8+1AEh], 7FFFh
lea     edx, [ecx+14h]
test    bx, bx
jnz     short loc_40307C
add     edi, eax
mov     eax, 0A2h

loc_403075:
call    sub_4D8BC3
jmp     short loc_40301C

loc_40307C:
mov     eax, 0A0h
jmp     short loc_403075

loc_403083:
mov     ebx, 4
jmp     short loc_403091

loc_40308A:
inc     ebx
cmp     bx, 8
jge     short loc_4030F5

loc_403091:
movsx   ebp, bx
mov     edx, ebp
shl     edx, 4
add     edx, esi
mov     eax, [edx+10h]
and     eax, 0FFFFFFh
jz      short loc_40308A
test    byte ptr [edx+13h], 18h
jz      short loc_40308A
sub     [ecx+6Eh], ax
sub     ebp, 4
mov     edx, ebp
shl     edx, 2
sub     edx, ebp
mov     word ptr [ecx+edx*8+19Eh], 7FFFh
mov     word ptr [ecx+edx*8+1A6h], 7FFFh
mov     word ptr [ecx+edx*8+1AEh], 7FFFh
lea     edx, [ecx+14h]
cmp     bx, 4
jnz     short loc_4030EE
add     edi, eax
mov     eax, 0A2h

loc_4030E7:
call    sub_4D8BC3
jmp     short loc_40308A

loc_4030EE:
mov     eax, 0A0h
jmp     short loc_4030E7

loc_4030F5:
mov     eax, [esi+90h]
and     eax, 0FFFFFFh
jz      short loc_40312E
test    byte ptr [esi+93h], 18h
jz      short loc_40312E
sub     [ecx+6Eh], ax
mov     word ptr [ecx+196h], 7FFFh
mov     word ptr [ecx+1FEh], 7FFFh
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_40312E:
cmp     byte ptr [ecx+74h], 1
jnz     short loc_403136
xor     edi, edi

loc_403136:
mov     edx, [ecx+0B0h]
sar     edx, 10h
mov     eax, [ecx+6Ch]
sar     eax, 10h
sub     edx, eax
jz      loc_403243
cmp     word ptr [ecx+6Eh], 0
jg      short loc_4031B2
cmp     byte ptr [esi+0EDh], 1
jnz     short loc_4031AC
mov     bh, [esi]
or      bh, 4
mov     [esi], bh
mov     al, bh
and     al, 7Dh
mov     [esi], al
mov     byte ptr [ecx+9], 0Bh
mov     word ptr [ecx+0Ah], 0
jmp     loc_403243

loc_403179:
xor     ebx, ebx
jmp     short loc_403184

loc_40317D:
inc     ebx
cmp     bx, 8
jg      short loc_403136

loc_403184:
movsx   eax, bx
shl     eax, 4
lea     edx, [esi+eax]
mov     eax, [edx+10h]
and     eax, 0FFFFFFh
jz      short loc_40317D
test    byte ptr [edx+13h], 18h
jz      short loc_40317D
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3
jmp     short loc_40317D

loc_4031AC:
mov     word ptr [ecx+6Eh], 1

loc_4031B2:
test    byte ptr [esi], 4
jz      short loc_4031F1
add     [esi+0Ah], di
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+9]
mov     edx, eax
and     edx, 0FFh
shl     edx, 2
mov     eax, [esi+8]
sar     eax, 10h
cmp     eax, edx
jl      short loc_4031F1
mov     byte ptr [ecx+9], 0Ah
mov     word ptr [ecx+0Ah], 0
mov     word ptr [esi+0Ah], 0

loc_4031F1:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
and     eax, 0FFh
shl     eax, 6
mov     edx, [ecx+6Ch]
sar     edx, 10h
cmp     edx, eax
jg      short loc_403218
or      byte ptr [esi+1], 2

loc_403218:
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ch]
and     eax, 0FFh
shl     eax, 6
mov     edx, [ecx+6Ch]
sar     edx, 10h
cmp     edx, eax
jg      short loc_403243
or      byte ptr [esi+1], 4

loc_403243:
mov     eax, 1
jmp     def_402A93      ; jumptable 00402A93 default case, cases 2,4
sub_402FF3 endp

jpt_4032A0 dd offset loc_4032A7 ; jump table for switch statement
dd offset loc_4032EF
dd offset def_4032A0
dd offset loc_4032F8



sub_40325D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+670h]
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 3           ; switch 4 cases
ja      def_4032A0      ; jumptable 004032A0 default case, case 2
and     eax, 0FFh
jmp     jpt_4032A0[eax*4] ; switch jump

loc_4032A7:             ; jumptable 004032A0 case 0
or      byte ptr [ecx], 42h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2800280h
mov     dword ptr [ecx+15Ch], 280h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
inc     byte ptr [ecx+8]
jmp     short def_4032A0 ; jumptable 004032A0 default case, case 2

loc_4032EF:             ; jumptable 004032A0 case 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short def_4032A0 ; jumptable 004032A0 default case, case 2

loc_4032F8:             ; jumptable 004032A0 case 3
cmp     word ptr [ebx], 40h ; '@'
jge     short loc_403314
sub     word ptr [ecx+14h], 4
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
add     word ptr [ecx+56h], 20h ; ' '

loc_403314:
inc     word ptr [ebx]

def_4032A0:             ; jumptable 004032A0 default case, case 2
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_403334
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40333B

loc_403334:
mov     eax, ecx
call    sub_4DEADD

loc_40333B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40325D endp




sub_403341 proc near
push    ecx
push    edx
lea     ecx, [eax+550h]
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_40334E[edx*4]
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+50h], 0
mov     dword ptr [ecx+60h], 0
xor     eax, eax

loc_40336C:
mov     edx, eax
shl     edx, 4
mov     dword ptr [ecx+edx+90h], 0
inc     eax
cmp     eax, 6
jl      short loc_40336C
pop     edx
pop     ecx
retn
sub_403341 endp




sub_403385 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+550h]
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2800280h
mov     dword ptr [ecx+15Ch], 280h
mov     word ptr [ecx+15Eh], 0
xor     eax, eax

loc_4033C0:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 0Fh
jl      short loc_4033C0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     word ptr [ecx+64h], 0Ch
mov     word ptr [ecx+66h], 400h
mov     word ptr [ecx+56h], 0C00h
mov     word ptr [esi], 180Ch
mov     word ptr [esi+0F2h], 0
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
mov     dword ptr [esi+50h], 0
mov     dword ptr [esi+54h], 0
mov     dword ptr [esi+60h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+80h], 0
mov     dword ptr [esi+84h], 0
mov     word ptr [esi+40h], 0
mov     word ptr [esi+0F6h], 0
xor     eax, eax

loc_403470:
mov     edx, eax
mov     dword ptr [esi+edx*4+0E8h], 0
inc     eax
cmp     eax, 2
jl      short loc_403470
xor     eax, eax

loc_403485:
mov     edx, eax
shl     edx, 4
mov     dword ptr [edx+esi+90h], 0
mov     dword ptr [edx+esi+94h], 0
inc     eax
cmp     eax, 6
jl      short loc_403485
lea     eax, [esi+24h]
mov     ebx, 0FFFFFCE0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+42h], 0C00h
mov     ax, [ecx+56h]
add     ax, [esi+42h]
and     ah, 0Fh
mov     [esi+44h], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Eh]
xor     ah, ah
shl     eax, 5
mov     [esi+0F4h], ax
mov     [esi+46h], ax
mov     word ptr [esi+0F0h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     ax, [ecx+6Eh]
mov     [esi+0F8h], ax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_40355E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_403385 endp




sub_40355E proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
lea     ebp, [eax+550h]
mov     edx, offset byte_5F8364
mov     al, [eax+0ACh]
mov     ecx, [esp+20h+var_20]
mov     [ecx+0ADh], al
mov     edi, ecx
lea     edi, [edi+2Ch]
mov     esi, ecx
lea     esi, [esi+14h]
movsd
movsd
mov     edi, ecx
lea     edi, [edi+34h]
mov     esi, ecx
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, ecx
lea     edi, [edi+5Ch]
mov     esi, ecx
lea     esi, [esi+54h]
movsd
movsd
xor     ecx, ecx
mov     [esp+20h+var_1C], ecx
mov     ebx, [esp+20h+var_20]

loc_4035B1:
mov     eax, [esp+20h+var_1C]
shl     eax, 3
add     eax, ebx
mov     word ptr [eax+196h], 4210h
mov     esi, [esp+20h+var_1C]
inc     esi
mov     [esp+20h+var_1C], esi
cmp     esi, 0Fh
jl      short loc_4035B1
call    rand_
mov     [ebp+2], ax
call    sub_436700
test    byte ptr [ebp+1], 4
jz      short loc_40361E
xor     eax, eax
mov     al, [ebx+2]
mov     ecx, ds:dword_55A108
mov     eax, [ecx+eax*4]
xor     ecx, ecx
mov     cl, [eax+0Bh]
mov     ebx, [ebx+6Ch]
sar     ebx, 10h
sub     ebx, ecx
test    ebx, ebx
jle     short loc_403615
mov     al, cl
xor     ah, ah
mov     ecx, [esp+20h+var_20]
sub     [ecx+6Eh], ax
and     byte ptr [ebp+1], 0FBh
jmp     short loc_40361E

loc_403615:
or      ecx, 10000000h
or      [ebp+14h], ecx

loc_40361E:
test    byte ptr [ebp+1], 40h
jz      short loc_403663
xor     eax, eax
mov     ecx, [esp+20h+var_20]
mov     al, [ecx+2]
mov     ecx, ds:dword_55A108
mov     eax, [ecx+eax*4]
xor     ecx, ecx
mov     cl, [eax+0Fh]
mov     ebx, [esp+20h+var_20]
mov     ebx, [ebx+6Ch]
sar     ebx, 10h
sub     ebx, ecx
test    ebx, ebx
jle     short loc_40365A
mov     al, cl
xor     ah, ah
mov     ecx, [esp+20h+var_20]
sub     [ecx+6Eh], ax
and     byte ptr [ebp+1], 0BFh
jmp     short loc_403663

loc_40365A:
or      ecx, 10000000h
or      [ebp+14h], ecx

loc_403663:
test    byte ptr [ebp+1], 10h
jz      short loc_403671
mov     eax, [esp+20h+var_20]
call    sub_405604

loc_403671:
test    byte ptr [ebp+0], 4
jz      short loc_40367F
mov     eax, [esp+20h+var_20]
call    sub_4053C6

loc_40367F:
xor     ecx, ecx
mov     eax, [esp+20h+var_20]
mov     cl, [eax+9]
call    ds:funcs_403687[ecx*4]
test    byte ptr ds:word_77EAB6, 1
jz      short loc_40369E
mov     eax, 0FFFFFFFFh
jmp     short loc_4036A3

loc_40369E:
mov     eax, 0FFFFFFFEh

loc_4036A3:
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
test    byte ptr [ebp+0], 1
jz      loc_40374F
mov     al, [ecx+9]
cmp     al, 4
jb      short loc_4036D8
jbe     short loc_40370A
cmp     al, 6
jb      short loc_40370A
jbe     short loc_4036E2
cmp     al, 0Ah
jz      short loc_40370A
jmp     loc_403733

loc_4036D8:
test    al, al
jbe     short loc_4036E2
cmp     al, 3
jz      short loc_4036F0
jmp     short loc_403733

loc_4036E2:
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0Dh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+9], al
jmp     short loc_403742

loc_4036F0:
mov     bh, [ecx+0Fh]
test    bh, 4
jz      short loc_40370A
mov     dl, bh
and     dl, 0FBh
mov     [ecx+0Fh], dl
mov     byte ptr [ecx+9], 5
or      byte ptr [ebp+1], 1
jmp     short loc_403742

loc_40370A:
mov     cl, [ebp+1]
test    cl, 1
jz      short loc_403733
mov     ch, cl
and     ch, 0FEh
mov     [ebp+1], ch
cmp     byte ptr [edx+76h], 0
jz      short loc_403733
mov     eax, [edx+0C0h]
mov     esi, [esp+1Ch+var_1C]
cmp     eax, esi
jnz     short loc_403733
mov     byte ptr [esi+9], 7
jmp     short loc_403742

loc_403733:
mov     eax, [esp+1Ch+var_1C]
call    sub_4051EB
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 6

loc_403742:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_40374F:
mov     di, [ebp+40h]
test    di, di
jz      short loc_40375F
mov     eax, edi
dec     eax
mov     [ebp+40h], ax

loc_40375F:
mov     dx, [ebp+0Ah]
test    dx, dx
jz      short loc_40376F
mov     ebx, edx
dec     ebx
mov     [ebp+0Ah], bx

loc_40376F:
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0ADh]
mov     edx, [esp+1Ch+var_1C]
cmp     al, [edx+0ACh]
jz      short loc_4037A4
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE9BA
mov     ax, [ebp+42h]
mov     ds:word_560E66, ax
mov     eax, [esp+1Ch+var_1C]
jmp     short loc_4037B7

loc_4037A4:
mov     eax, edx
call    sub_4DEB53
mov     ax, [ebp+42h]
mov     ds:word_560E66, ax
mov     eax, edx

loc_4037B7:
call    sub_4DF795
cmp     dword ptr [ebp+80h], 0
jz      short loc_4037D2
mov     edx, 3
mov     eax, [esp+1Ch+var_1C]
call    sub_4054D8

loc_4037D2:
cmp     dword ptr [ebp+84h], 0
jz      short loc_4037E8
mov     edx, 8
mov     eax, [esp+1Ch+var_1C]
call    sub_4054D8

loc_4037E8:
test    byte ptr [ebp+0F2h], 1
jz      short loc_40383B
cmp     word ptr [ebp+0F0h], 0
jnz     short loc_40380B
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0F3h
call    sub_4D8BC3

loc_40380B:
mov     si, [ebp+0F0h]
inc     esi
mov     [ebp+0F0h], si
cmp     si, 1Eh
jle     short loc_403844
mov     word ptr [ebp+0F0h], 1
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0F4h
call    sub_4D8BC3
jmp     short loc_403844

loc_40383B:
mov     word ptr [ebp+0F0h], 0

loc_403844:
and     byte ptr [ebp+0F2h], 0FEh
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+14h]
mov     edx, [esp+1Ch+var_1C]
sub     ax, [edx+2Ch]
shl     eax, 4
mov     [edx+44h], ax
mov     ax, [edx+16h]
sub     ax, [edx+2Eh]
shl     eax, 4
mov     [edx+46h], ax
mov     ax, [edx+18h]
sub     ax, [edx+30h]
shl     eax, 4
mov     [edx+48h], ax
test    byte ptr [ebp+1], 2
jnz     short loc_4038C7
test    byte ptr [edx], 2
jz      short loc_4038C7
mov     ecx, 1
mov     ebx, 200h
mov     edx, ebx
mov     eax, [esp+1Ch+var_1C]
call    sub_4ED88B
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
xor     ecx, ecx
mov     cl, [eax+0Ch]
or      ecx, 1000000h
xor     ebx, ebx
mov     edx, 1
mov     eax, [esp+1Ch+var_1C]
call    sub_432697

loc_4038C7:
test    byte ptr [ebp+1], 2
jnz     loc_403B9A
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      loc_403B9A
test    byte ptr [ebp+0], 2
jz      loc_403965
lea     edi, [ebp+0Ch]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [ebp+0Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+70h], eax
mov     eax, [ebp+0Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+74h], eax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+78h], eax
push    0
push    0FFFFCE00h
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+70h]
lea     esi, [ebp+0Ch]
mov     ecx, 0D00h
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
push    4080000h
lea     eax, [ebp+14h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, esi
call    sub_4E01FC

loc_403965:
test    byte ptr [ebp+1], 8
jz      loc_403AE0
xor     edx, edx
mov     [esp+1Ch+var_18], edx
jmp     short loc_403989

loc_403977:
mov     ebx, [esp+1Ch+var_18]
inc     ebx
mov     [esp+1Ch+var_18], ebx
cmp     ebx, 6
jge     loc_403AE0

loc_403989:
lea     edi, [ebp+0Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [ebp+0Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+70h], eax
mov     eax, [ebp+0Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+74h], eax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+78h], eax
mov     eax, [esp+1Ch+var_18]
mov     edx, ds:dword_50B2AE[eax*8]
sar     edx, 10h
shl     edx, 4
push    edx
mov     edx, ds:(off_50B2AA+2)[eax*8]
sar     edx, 10h
shl     edx, 4
push    edx
mov     ecx, ds:off_50B2AA[eax*8]
sar     ecx, 10h
shl     ecx, 4
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+54h]
sar     edx, 10h
xor     eax, eax
mov     ax, [ebp+42h]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
lea     edx, [ebp+70h]
lea     esi, [ebp+0Ch]
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Dh]
and     eax, 0FFh
or      eax, 4080000h
push    eax
mov     eax, [esp+28h+var_18]
shl     eax, 4
lea     edx, [ebp+88h]
add     eax, edx
add     eax, 8
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4E01FC
test    byte ptr [ebp+1], 10h
jnz     loc_403977
cmp     [esp+1Ch+var_18], 2
jge     loc_403977
mov     al, [ebp+1]
test    al, 80h
jz      short loc_403AAA
mov     ah, al
and     ah, 7Fh
mov     [ebp+1], ah
call    sub_4DE13B
test    eax, eax
jz      short loc_403AAA
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 0
lea     edi, [eax+48h]
lea     esi, [ebp+0Ch]
movsd
movsd

loc_403AAA:
mov     eax, [esp+1Ch+var_18]
mov     esi, [ebp+eax*4+0E8h]
mov     dx, [ebp+0Ch]
mov     [esi+1Ch], dx
mov     ecx, [ebp+eax*4+0E8h]
mov     dx, [ebp+0Eh]
mov     [ecx+1Eh], dx
mov     eax, [ebp+eax*4+0E8h]
mov     dx, [ebp+10h]
mov     [eax+20h], dx
jmp     loc_403977

loc_403AE0:
test    byte ptr [ebp+0], 20h
jz      short loc_403B3D
lea     edi, [ebp+58h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1D0h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 4000000h
push    eax
lea     eax, [ebp+60h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+58h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC

loc_403B3D:
test    byte ptr [ebp+0], 40h
jz      short loc_403B9A
lea     edi, [ebp+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+1A8h]
movsd
movsd
push    80h
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     al, [edx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
and     eax, 0FFh
or      eax, 4000000h
push    eax
lea     eax, [ebp+50h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC

loc_403B9A:
test    byte ptr [ebp+1], 2
jnz     loc_403D2A
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_403D2A
mov     cl, [ebp+0F2h]
test    cl, 40h
jnz     short loc_403BFC
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, [ebp+0F6h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403BFC
mov     ch, cl
or      ch, 70h
mov     [ebp+0F2h], ch
mov     edx, 6
mov     eax, 4
call    sub_4A0E24

loc_403BFC:
test    byte ptr [ebp+0F2h], 20h
jnz     short loc_403C3D
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0AEh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebp+0F6h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403C3D
or      byte ptr [ebp+0F2h], 30h
mov     edx, 5
mov     eax, 4
call    sub_4A0E24

loc_403C3D:
test    byte ptr [ebp+0F2h], 10h
jnz     short loc_403C72
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0AEh]
sar     edx, 10h
mov     eax, [ebp+0F6h]
sar     eax, 10h
cmp     edx, eax
jz      short loc_403C72
or      byte ptr [ebp+0F2h], 10h
mov     edx, 4
mov     eax, edx
call    sub_4A0E24

loc_403C72:
mov     bl, [ebp+0F2h]
test    bl, 8
jnz     short loc_403CB7
mov     edx, [ebp+0F2h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edx, [ebp+44h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403CB7
mov     bh, bl
or      bh, 0Eh
mov     [ebp+0F2h], bh
mov     edx, 3
mov     eax, 4
call    sub_4A0E24

loc_403CB7:
mov     cl, [ebp+0F2h]
test    cl, 4
jnz     short loc_403CF8
mov     edx, [ebp+0F2h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, [ebp+44h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_403CF8
mov     ch, cl
or      ch, 6
mov     [ebp+0F2h], ch
mov     edx, 2
mov     eax, 4
call    sub_4A0E24

loc_403CF8:
test    byte ptr [ebp+0F2h], 2
jnz     short loc_403D2A
mov     edx, [ebp+0F2h]
sar     edx, 10h
mov     eax, [ebp+44h]
sar     eax, 10h
cmp     edx, eax
jz      short loc_403D2A
or      byte ptr [ebp+0F2h], 2
mov     edx, 1
mov     eax, 4
call    sub_4A0E24

loc_403D2A:
add     esp, 8
jmp     loc_40427B
sub_40355E endp




sub_403D32 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
lea     ecx, [eax+550h]
xor     edx, edx
jmp     short loc_403D4A

loc_403D44:
inc     edx
cmp     edx, 2
jge     short loc_403D61

loc_403D4A:
mov     eax, edx
shl     eax, 2
add     eax, ecx
mov     esi, [eax+0E8h]
test    esi, esi
jz      short loc_403D44
mov     byte ptr [esi+0Ah], 2
jmp     short loc_403D44

loc_403D61:
mov     edi, [ecx+80h]
test    edi, edi
jz      short loc_403D72
mov     eax, edi
call    sub_4DE371

loc_403D72:
mov     ebp, [ecx+84h]
test    ebp, ebp
jz      short loc_403D83
mov     eax, ebp
call    sub_4DE371

loc_403D83:
mov     eax, ebx
call    sub_4DE336
jmp     loc_40427B
sub_403D32 endp




sub_403D8F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
lea     esi, [eax+550h]
mov     eax, offset byte_5F8364
mov     dl, [edi+0Ah]
test    dl, dl
jbe     short loc_403DB3
cmp     dl, 1
jz      short loc_403DC5
jmp     loc_40427B

loc_403DB3:
inc     dl
mov     [edi+0Ah], dl
mov     byte ptr [edi+0ACh], 0
mov     word ptr [esi+4], 3Ch ; '<'

loc_403DC5:
cmp     byte ptr [eax+76h], 0
jz      short loc_403DFA
mov     edx, [eax+0C0h]
cmp     edi, edx
jnz     short loc_403DFA
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     loc_40427B
mov     eax, edx
call    sub_405251
mov     [edx+0Dh], al
mov     ax, [edx+56h]
jmp     loc_403EF0

loc_403DFA:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_403E1B
mov     eax, edi
call    sub_405251
mov     [edi+0Dh], al

loc_403E12:
mov     ax, [edi+56h]
jmp     loc_403EF0

loc_403E1B:
cmp     word ptr [esi+40h], 0
jnz     loc_40427B
mov     ebp, [edi+14h]
sar     ebp, 10h
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
sub     edx, ebp
mov     ebp, edx
test    edx, edx
jge     short loc_403E3F
neg     edx

loc_403E3F:
lea     ebp, [edi+14h]
add     eax, 14h
cmp     edx, 200h
jge     loc_403EBE
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 80h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
mov     edx, eax
test    ax, ax
jge     short loc_403E71
cwde
neg     eax
jmp     short loc_403E72

loc_403E71:
cwde

loc_403E72:
cmp     eax, 80h
jge     short loc_403E8B
cmp     dword ptr [edi+80h], 200000h
jnb     short loc_403E8B
mov     byte ptr [edi+0Dh], 2
jmp     short loc_403E12

loc_403E8B:
test    dx, dx
jge     short loc_403E97
movsx   eax, dx
neg     eax
jmp     short loc_403E9A

loc_403E97:
movsx   eax, dx

loc_403E9A:
cmp     eax, 80h
jge     loc_40427B
cmp     dword ptr [edi+80h], 1200000h
jnb     loc_40427B
mov     byte ptr [edi+0Dh], 0Bh
jmp     loc_403E12

loc_403EBE:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 600h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_403EDC
cwde
neg     eax
jmp     short loc_403EDD

loc_403EDC:
cwde

loc_403EDD:
cmp     eax, 600h
jge     loc_40427B
mov     byte ptr [edi+0Dh], 1
mov     ax, [edi+56h]

loc_403EF0:
add     ax, [esi+42h]
and     ah, 0Fh
mov     [esi+44h], ax
or      byte ptr [esi], 1
jmp     loc_40427B
sub_403D8F endp

db 8Bh, 0C0h
jpt_403F35 dd offset loc_403F3C ; jump table for switch statement
dd offset loc_403F4D
dd offset loc_403FAC
dd offset loc_40401C
dd offset loc_404048



sub_403F19 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
xor     edx, edx
mov     dl, al
jmp     jpt_403F35[edx*4] ; switch jump

loc_403F3C:             ; jumptable 00403F35 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 2
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_403F4D:             ; jumptable 00403F35 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 3
mov     edx, 3
mov     eax, esi
call    sub_405585
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_403FAC:             ; jumptable 00403F35 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     edx, [edi+80h]
test    edx, edx
jnz     short loc_403FFD
add     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 4
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_403FFD:
cmp     byte ptr [edx+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 4
mov     word ptr [edi+4], 0Eh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_40401C:             ; jumptable 00403F35 case 3
mov     dx, [edi+4]
dec     dx
mov     [edi+4], dx
jnz     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     esi, [edi+80h]
add     byte ptr [esi+0Ch], 80h
mov     dword ptr [edi+80h], 0
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404048:             ; jumptable 00403F35 case 4
cmp     byte ptr [esi+0A7h], 0 ; jumptable 00404FD1 case 6
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
mov     word ptr [edi+40h], 78h ; 'x'
or      byte ptr [edi], 1
jmp     def_403F35      ; jumptable 00403F35 default case
sub_403F19 endp         ; jumptable 00404FD1 default case

db 8Bh, 0C0h
jpt_404123 dd offset loc_40412A ; jump table for switch statement
dd offset loc_404163
dd offset loc_404184
dd offset loc_4041E3
dd offset loc_404224
dd offset loc_404255



sub_40407D proc near

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
lea     ebp, [eax+550h]
lea     edi, [ebp+68h]
mov     esi, offset unk_50B294
movsd
movsd
lea     edi, [ebp+70h]
mov     esi, offset unk_50B29C
movsd
movsd
movsd
movsd
add     eax, 14h
mov     [esp+24h+var_20], eax
mov     edx, eax
mov     eax, offset unk_50B294
call    sub_4DDDB4
mov     edx, [esp+24h+var_24]
mov     dx, [edx+64h]
add     edx, eax
mov     [esp+24h+var_1C], edx
push    0
push    0
mov     eax, edx
and     ah, 0Fh
movsx   ebx, ax
lea     edx, [ebp+70h]
lea     eax, [ebp+68h]
mov     ecx, 5000h
call    sub_4DD4C5
mov     edi, [esp+24h+var_24]
lea     edi, [edi+14h]
lea     esi, [ebp+68h]
movsd
movsd
mov     edi, [esp+24h+var_24]
lea     edi, [edi+1Ch]
lea     esi, [ebp+70h]
movsd
movsd
movsd
movsd
mov     eax, [esp+24h+var_1C]
mov     edx, [esp+24h+var_24]
add     ax, [edx+66h]
sub     ax, [edx+56h]
and     ah, 0Fh
mov     [ebp+42h], ax
or      byte ptr [ebp+0F2h], 1
mov     al, [edx+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404123[edx*4] ; switch jump

loc_40412A:             ; jumptable 00404123 case 0
inc     al
mov     edx, [esp+24h+var_24]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 5
mov     dh, [ebp+0]
or      dh, 20h
mov     [ebp+0], dh
mov     bl, dh
and     bl, 0BFh
mov     [ebp+0], bl
mov     word ptr [ebp+4], 7
mov     edx, [esp+24h+var_20]
mov     eax, 0FCh
call    sub_4D8BC3
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_404163:             ; jumptable 00404123 case 1
mov     ax, [ebp+4]
dec     ax
mov     [ebp+4], ax
jnz     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Eh
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_404184:             ; jumptable 00404123 case 2
mov     si, [ebp+4]
dec     si
mov     [ebp+4], si
jnz     short loc_4041BA
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 10h
mov     al, [ebp+0]
or      al, 40h
mov     [ebp+0], al
mov     ah, al
and     ah, 0DFh
mov     [ebp+0], ah
mov     edx, [esp+24h+var_20]
mov     eax, 0FCh
call    sub_4D8BC3

loc_4041BA:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
add     eax, 1Eh
and     ah, 0Fh
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     ax, [ebp+42h]
sub     eax, 1Eh

loc_4041D7:
and     ah, 0Fh
mov     [ebp+42h], ax
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4041E3:             ; jumptable 00404123 case 3
mov     ax, [ebp+4]
dec     ax
mov     [ebp+4], ax
jnz     short loc_404205
mov     eax, [esp+24h+var_24]
sub     word ptr [eax+56h], 2
add     word ptr [ebp+42h], 2
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Ah

loc_404205:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
sub     eax, 35h ; '5'
and     ah, 0Fh
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     ax, [ebp+42h]
add     eax, 35h ; '5'
jmp     short loc_4041D7

loc_404224:             ; jumptable 00404123 case 4
mov     si, [ebp+4]
dec     si
mov     [ebp+4], si
jnz     short loc_404236
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]

loc_404236:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
add     eax, 2Bh ; '+'
and     ah, 0Fh
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     ax, [ebp+42h]
sub     eax, 2Bh ; '+'
jmp     short loc_4041D7

loc_404255:             ; jumptable 00404123 case 5
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+0A7h], 0
jge     short def_404123 ; jumptable 00404123 default case
; jumptable 004042C4 default case
mov     word ptr [ebp+40h], 5Ah ; 'Z'
mov     dh, [ebp+0]
and     dh, 9Eh
mov     [ebp+0], dh
mov     bl, dh
or      bl, 1
mov     [ebp+0], bl

def_404123:             ; jumptable 00404123 default case
add     esp, 0Ch        ; jumptable 004042C4 default case

loc_40427B:
pop     ebp

def_403F35:             ; jumptable 00403F35 default case
pop     edi             ; jumptable 00404FD1 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_40407D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_28]
db 8Dh, 40h, 0
jpt_4042C4 dd offset loc_4042CB ; jump table for switch statement
dd offset loc_404345
dd offset loc_4043E1
dd offset loc_40440A
dd offset loc_4044C3
dd offset loc_4044F8
dd offset loc_404524



sub_4042A1 proc near

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
lea     ebp, [eax+550h]
mov     [esp+24h+var_20], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      short def_404123 ; jumptable 00404123 default case
; jumptable 004042C4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4042C4[edx*4] ; switch jump

loc_4042CB:             ; jumptable 004042C4 case 0
inc     al
mov     edx, [esp+24h+var_24]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 0
mov     word ptr [ebp+4], 0Fh
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     esi, [edx+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
test    eax, eax
jge     short loc_40431E
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
neg     eax
jmp     short loc_404335

loc_40431E:
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552

loc_404335:
sar     eax, 4
mov     [ebp+6Eh], ax
or      byte ptr [ebp+1], 20h
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_404345:             ; jumptable 004042C4 case 1
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     short loc_404363
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2

loc_404363:
mov     eax, [esp+24h+var_20]
cmp     byte ptr [eax+76h], 0
jz      short loc_40437A
mov     eax, [eax+0C0h]
mov     ebx, [esp+24h+var_24]
cmp     eax, ebx
jz      short loc_4043C2

loc_40437A:
mov     ecx, [ebp+6Ch]
sar     ecx, 10h
mov     ebx, [esp+24h+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [esp+24h+var_24]
add     edx, 14h
mov     eax, [esp+24h+var_20]
add     eax, 14h
call    sub_4DE552
mov     edx, [esp+24h+var_24]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ecx, [esp+24h+var_24]
mov     [ecx+56h], dx
mov     dx, [ebp+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [ebp+42h], ax
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4043C2:
inc     byte ptr [ebx+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2
lea     edx, [ebx+14h]
mov     eax, 0F7h

loc_4043D7:
call    sub_4D8BC3
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4043E1:             ; jumptable 004042C4 case 2
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_4043FB
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Ah

loc_4043FB:
xor     edx, edx

loc_4043FD:
mov     eax, [esp+24h+var_24]
call    sub_405294
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_40440A:             ; jumptable 004042C4 case 3
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
call    sub_4DDF54
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      short loc_40449D
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+4], 6
mov     byte ptr [eax+3], 0
mov     eax, [esp+24h+var_24]
mov     al, [eax+1]
mov     edx, [esp+24h+var_1C]
mov     [edx+0Ch], al
mov     eax, edx
mov     byte ptr [edx+0Fh], 1
mov     edi, edx
lea     edi, [edi+14h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
mov     edi, edx
lea     edi, [edi+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFD1E0h
mov     ebx, [esp+2Ch+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
add     edx, 1Ch
add     eax, 14h
mov     ecx, 0D00h
call    sub_4DD4C5
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     edx, [esp+24h+var_1C]
mov     [edx+56h], ax

loc_40449D:
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
mov     eax, [esp+24h+var_20]
cmp     byte ptr [eax+76h], 0
jnz     short loc_4044B8
mov     word ptr [ebp+4], 69h ; 'i'
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4044B8:
mov     word ptr [ebp+4], 2Dh ; '-'
jmp     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case

loc_4044C3:             ; jumptable 004042C4 case 4
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0Fh], 2
jz      def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
lea     edx, [eax+14h]
mov     eax, 0F8h
jmp     loc_4043D7

loc_4044F8:             ; jumptable 004042C4 case 5
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_40451A
mov     eax, [esp+24h+var_24]
inc     byte ptr [eax+0Ah]
and     byte ptr [eax+0Fh], 0FDh
mov     word ptr [ebp+4], 0Fh
and     byte ptr [ebp+0], 0FDh

loc_40451A:
mov     edx, 1
jmp     loc_4043FD

loc_404524:             ; jumptable 004042C4 case 6
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_404123      ; jumptable 00404123 default case
; jumptable 004042C4 default case
or      byte ptr [ebp+0], 1
and     byte ptr [ebp+1], 0DFh
jmp     def_404123      ; jumptable 00404123 default case
sub_4042A1 endp         ; jumptable 004042C4 default case

db 8Bh, 0C0h
jpt_404588 dd offset loc_40458F ; jump table for switch statement
dd offset loc_404609
dd offset loc_4046A7
dd offset loc_4046D0
dd offset loc_4047BE
dd offset loc_4047E5
dd offset loc_40480D



sub_404561 proc near

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
sub     esp, 0Ch
push    eax
lea     ebp, [eax+550h]
mov     [esp+28h+var_24], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_404588      ; jumptable 00404588 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404588[edx*4] ; switch jump

loc_40458F:             ; jumptable 00404588 case 0
inc     al
mov     edx, [esp+28h+var_28]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 0
mov     word ptr [ebp+4], 0Fh
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     esi, [edx+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
test    eax, eax
jge     short loc_4045E2
mov     ebx, [esp+28h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552
neg     eax
jmp     short loc_4045F9

loc_4045E2:
mov     ebx, [esp+28h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 200h
mov     edx, esi
mov     eax, edi
call    sub_4DE552

loc_4045F9:
sar     eax, 4
mov     [ebp+6Eh], ax
or      byte ptr [ebp+1], 20h
jmp     def_404588      ; jumptable 00404588 default case

loc_404609:             ; jumptable 00404588 case 1
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     short loc_404627
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2

loc_404627:
mov     eax, [esp+28h+var_24]
cmp     byte ptr [eax+76h], 0
jz      short loc_40463E
mov     eax, [eax+0C0h]
mov     ebx, [esp+28h+var_28]
cmp     eax, ebx
jz      short loc_404686

loc_40463E:
mov     ecx, [ebp+6Ch]
sar     ecx, 10h
mov     ebx, [esp+28h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_28]
add     edx, 14h
mov     eax, [esp+28h+var_24]
add     eax, 14h
call    sub_4DE552
mov     edx, [esp+28h+var_28]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ecx, [esp+28h+var_28]
mov     [ecx+56h], dx
mov     dx, [ebp+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [ebp+42h], ax
jmp     def_404588      ; jumptable 00404588 default case

loc_404686:
inc     byte ptr [ebx+0Ah]
mov     word ptr [ebp+4], 0Bh
or      byte ptr [ebp+0], 2
mov     edx, eax
add     edx, 14h
mov     eax, 0F7h

loc_40469D:
call    sub_4D8BC3
jmp     def_404588      ; jumptable 00404588 default case

loc_4046A7:             ; jumptable 00404588 case 2
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_4046C1
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Ah

loc_4046C1:
xor     edx, edx

loc_4046C3:
mov     eax, [esp+28h+var_28]
call    sub_405294
jmp     def_404588      ; jumptable 00404588 default case

loc_4046D0:             ; jumptable 00404588 case 3
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     def_404588      ; jumptable 00404588 default case
xor     ecx, ecx
mov     [esp+28h+var_20], ecx
jmp     short loc_4046FC

loc_4046EA:
mov     edi, [esp+28h+var_20]
inc     edi
mov     [esp+28h+var_20], edi
cmp     edi, 4
jge     loc_40479E

loc_4046FC:
call    sub_4DE043
mov     [esp+28h+var_1C], eax
test    eax, eax
jz      short loc_4046EA
lea     edi, [ebp+68h]
mov     esi, [esp+28h+var_28]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+28h+var_28]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+70h], eax
mov     eax, [esp+28h+var_28]
mov     eax, [eax+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+74h], eax
mov     eax, [esp+28h+var_28]
mov     eax, [eax+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+78h], eax
push    0
push    0FFFFCE00h
mov     ebx, [esp+30h+var_28]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+70h]
lea     eax, [ebp+68h]
mov     ecx, 0D00h
call    sub_4DD4C5
mov     eax, [esp+28h+var_1C]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     edi, eax
lea     edi, [edi+14h]
lea     esi, [ebp+68h]
movsd
movsd
mov     edx, [esp+28h+var_28]
mov     dx, [edx+56h]
add     dh, 8
call    rand_
and     ah, 3
add     edx, eax
sub     edx, 200h
mov     eax, [esp+28h+var_1C]
mov     [eax+56h], dx
jmp     loc_4046EA

loc_40479E:
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     eax, [esp+28h+var_24]
cmp     byte ptr [eax+76h], 0
jnz     short loc_4047B6
mov     word ptr [ebp+4], 69h ; 'i'
jmp     short def_404588 ; jumptable 00404588 default case

loc_4047B6:
mov     word ptr [ebp+4], 2Dh ; '-'
jmp     short def_404588 ; jumptable 00404588 default case

loc_4047BE:             ; jumptable 00404588 case 4
mov     di, [ebp+4]
dec     edi
mov     [ebp+4], di
test    di, di
jge     short def_404588 ; jumptable 00404588 default case
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Bh
lea     edx, [eax+14h]
mov     eax, 0F8h
jmp     loc_40469D

loc_4047E5:             ; jumptable 00404588 case 5
mov     cx, [ebp+4]
dec     ecx
mov     [ebp+4], cx
test    cx, cx
jge     short loc_404803
mov     eax, [esp+28h+var_28]
inc     byte ptr [eax+0Ah]
mov     word ptr [ebp+4], 0Fh
and     byte ptr [ebp+0], 0FDh

loc_404803:
mov     edx, 1
jmp     loc_4046C3

loc_40480D:             ; jumptable 00404588 case 6
mov     dx, [ebp+4]
dec     edx
mov     [ebp+4], dx
test    dx, dx
jge     short def_404588 ; jumptable 00404588 default case
or      byte ptr [ebp+0], 1
and     byte ptr [ebp+1], 0DFh

def_404588:             ; jumptable 00404588 default case
add     esp, 10h
jmp     loc_40427B
sub_404561 endp

db 8Bh, 0C0h
jpt_404858 dd offset loc_40485F ; jump table for switch statement
dd offset loc_404870
dd offset loc_4048AD
dd offset loc_404905



sub_40483D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_404858      ; jumptable 00404858 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404858[edx*4] ; switch jump

loc_40485F:             ; jumptable 00404858 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_404870:             ; jumptable 00404858 case 1
cmp     byte ptr [esi+0A7h], 0
jge     def_404858      ; jumptable 00404858 default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 8
add     esi, 14h
mov     edx, esi
mov     eax, 0A1h
call    sub_4D8BC3
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
or      byte ptr [ecx+1], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4048AD:             ; jumptable 00404858 case 2
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4048D9
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 151h
call    sub_4D8BC3
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_4048D9:
cmp     byte ptr [esi+0A7h], 0
jge     short loc_4048EC
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Bh

loc_4048EC:
xor     eax, eax

loc_4048EE:
mov     edx, eax
mov     word ptr [esi+edx*8+196h], 7FFFh
inc     eax
cmp     eax, 0Fh
jl      short loc_4048EE
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_404905:             ; jumptable 00404858 case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_404858 ; jumptable 00404858 default case
or      byte ptr [ecx], 1
mov     word ptr [ecx+40h], 78h ; 'x'

def_404858:             ; jumptable 00404858 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40483D endp

db 90h
jpt_404948 dd offset loc_40494F ; jump table for switch statement
dd offset loc_404960
dd offset loc_40497A
dd offset loc_4049BE



sub_40492D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 550h
mov     dl, [esi+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      def_404948      ; jumptable 00404948 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_404948[ecx*4] ; switch jump

loc_40494F:             ; jumptable 00404948 case 0
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 0Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_404960:             ; jumptable 00404948 case 1
cmp     byte ptr [esi+0A7h], 0
jge     short def_404948 ; jumptable 00404948 default case
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40497A:             ; jumptable 00404948 case 2
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4049A6
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 151h
call    sub_4D8BC3
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_4049A6:
cmp     byte ptr [esi+0A7h], 0
jge     short def_404948 ; jumptable 00404948 default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Bh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4049BE:             ; jumptable 00404948 case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_404948 ; jumptable 00404948 default case
or      byte ptr [eax], 1

def_404948:             ; jumptable 00404948 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40492D endp




sub_4049CF proc near

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
sub     esp, 10h
push    eax
lea     ebp, [eax+550h]
mov     [esp+2Ch+var_1C], offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4049F7
cmp     al, 1
jz      short loc_404A22
jmp     loc_404C7F

loc_4049F7:
inc     al
mov     edx, [esp+2Ch+var_2C]
mov     [edx+0Ah], al
mov     byte ptr [edx+0ACh], 1
test    byte ptr [ebp+0], 80h
jz      short loc_404A1C
mov     eax, edx
mov     dx, [edx+64h]
neg     edx
mov     [eax+64h], dx
neg     word ptr [eax+66h]

loc_404A1C:
mov     word ptr [ebp+4], 78h ; 'x'

loc_404A22:
lea     edi, [ebp+68h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [ebp+70h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     edx, [esp+34h+var_2C]
mov     edx, [edx+54h]
sar     edx, 10h
xor     eax, eax
mov     ax, [ebp+42h]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
lea     eax, [ebp+70h]
mov     [esp+34h+var_28], eax
lea     eax, [ebp+68h]
mov     [esp+34h+var_24], eax
mov     ecx, 800h
mov     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+2Ch+var_2C]
add     eax, 14h
mov     [esp+2Ch+var_20], eax
mov     ecx, 20h ; ' '
mov     edx, [esp+2Ch+var_24]
call    sub_4DE552
mov     edx, [esp+2Ch+var_2C]
mov     dx, [edx+56h]
add     edx, eax
and     dh, 0Fh
mov     ebx, [esp+2Ch+var_2C]
mov     [ebx+56h], dx
mov     dx, [ebp+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [ebp+42h], ax
lea     edi, [ebp+68h]
mov     esi, offset unk_50B294
movsd
movsd
lea     edi, [ebp+70h]
mov     esi, offset unk_50B29C
movsd
movsd
movsd
movsd
mov     edx, [esp+2Ch+var_20]
mov     eax, offset unk_50B294
call    sub_4DDDB4
mov     si, [ebx+64h]
add     esi, eax
push    0
push    0
mov     eax, esi
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 5000h
mov     edx, [esp+34h+var_28]
mov     eax, [esp+34h+var_24]
call    sub_4DD4C5
or      byte ptr [ebp+0F2h], 1
mov     eax, [esp+2Ch+var_2C]
add     si, [eax+66h]
sub     si, [eax+56h]
and     esi, 0FFFh
mov     [ebp+42h], si
mov     edi, eax
lea     edi, [edi+14h]
lea     esi, [ebp+68h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+1Ch]
lea     esi, [ebp+70h]
movsd
movsd
movsd
movsd
mov     eax, [esp+2Ch+var_1C]
cmp     byte ptr [eax+76h], 0
jz      short loc_404B6A
mov     eax, [eax+0C0h]
mov     ecx, [esp+2Ch+var_2C]
cmp     eax, ecx
jnz     short loc_404B6A
mov     bx, [ebp+4]
dec     ebx
mov     [ebp+4], bx
test    bx, bx
jge     loc_404C7F
call    sub_405251
mov     [ecx+0Dh], al
mov     ax, [ecx+56h]
jmp     loc_404C70

loc_404B6A:
mov     ax, [ebp+4]
dec     eax
mov     [ebp+4], ax
test    ax, ax
jge     short loc_404B8F
mov     eax, [esp+2Ch+var_2C]
call    sub_405251
mov     edx, [esp+2Ch+var_2C]
mov     [edx+0Dh], al
mov     ax, [edx+56h]
jmp     loc_404C70

loc_404B8F:
cmp     word ptr [ebp+40h], 0
jnz     loc_404C7F
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+14h]
sar     eax, 10h
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_404BBA
mov     ebx, edx
neg     ebx
jmp     short loc_404BBC

loc_404BBA:
mov     ebx, edx

loc_404BBC:
mov     eax, [esp+2Ch+var_2C]
add     eax, 14h
mov     edx, [esp+2Ch+var_1C]
add     edx, 14h
cmp     ebx, 200h
jge     loc_404C40
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 80h
call    sub_4DE552
mov     esi, eax
test    ax, ax
jge     short loc_404BF4
cwde
neg     eax
jmp     short loc_404BF5

loc_404BF4:
cwde

loc_404BF5:
cmp     eax, 80h
jge     short loc_404C15
mov     eax, [esp+2Ch+var_2C]
cmp     dword ptr [eax+80h], 200000h
jnb     short loc_404C15
mov     byte ptr [eax+0Dh], 2

loc_404C0F:
mov     ax, [eax+56h]
jmp     short loc_404C70

loc_404C15:
test    si, si
jge     short loc_404C21
movsx   eax, si
neg     eax
jmp     short loc_404C24

loc_404C21:
movsx   eax, si

loc_404C24:
cmp     eax, 80h
jge     short loc_404C7F
mov     eax, [esp+2Ch+var_2C]
cmp     dword ptr [eax+80h], 1200000h
jnb     short loc_404C7F
mov     byte ptr [eax+0Dh], 0Bh
jmp     short loc_404C0F

loc_404C40:
mov     ebx, [esp+2Ch+var_2C]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     ecx, 600h
call    sub_4DE552
test    ax, ax
jge     short loc_404C5D
cwde
neg     eax
jmp     short loc_404C5E

loc_404C5D:
cwde

loc_404C5E:
cmp     eax, 600h
jge     short loc_404C7F
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0Dh], 1
mov     ax, [eax+56h]

loc_404C70:
add     ax, [ebp+42h]
and     ah, 0Fh
mov     [ebp+44h], ax
or      byte ptr [ebp+0], 1

loc_404C7F:
mov     eax, [esp+2Ch+var_2C]
cmp     byte ptr [eax+0A6h], 0
jz      short loc_404C98
lea     edx, [eax+14h]
mov     eax, 0F6h
call    sub_4D8BC3

loc_404C98:
add     esp, 14h
jmp     loc_40427B
sub_4049CF endp




sub_404CA0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_404CC1
cmp     al, 1
jz      loc_404D3D
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404CC1:
push    800h
inc     al
mov     [edi+0Ah], al
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [edi+54h]
sar     edx, 10h
add     edx, 400h
and     edx, 0FFFh
lea     eax, [edi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_404D16
mov     byte ptr [edi+0ACh], 6
mov     bh, [esi]
or      bh, 40h
mov     [esi], bh
mov     cl, bh
and     cl, 0DFh
mov     [esi], cl
jmp     short loc_404D2B

loc_404D16:
mov     byte ptr [edi+0ACh], 7
mov     dh, [esi]
or      dh, 20h
mov     [esi], dh
mov     bl, dh
and     bl, 0BFh
mov     [esi], bl

loc_404D2B:
lea     edx, [edi+14h]
mov     eax, 0FCh
call    sub_4D8BC3
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404D3D:
cmp     byte ptr [edi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
or      [esi], al
and     word ptr [esi], 0FE9Fh
jmp     def_403F35      ; jumptable 00403F35 default case
sub_404CA0 endp         ; jumptable 00404FD1 default case

db 8Dh, 40h, 0
jpt_404D8B dd offset loc_404D92 ; jump table for switch statement
dd offset loc_404DCC
dd offset loc_404ECB
dd offset loc_404F0C



sub_404D69 proc near

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
ja      def_404D8B      ; jumptable 00404D8B default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_404D8B[ecx*4] ; switch jump

loc_404D92:             ; jumptable 00404D8B case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0Ch
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 5
mov     word ptr [eax+6], 0
mov     byte ptr [ebp+0Bh], 0
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax+0F2h], 7Eh
jmp     def_404D8B      ; jumptable 00404D8B default case

loc_404DCC:             ; jumptable 00404D8B case 1
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_404D8B      ; jumptable 00404D8B default case
mov     edi, eax
lea     edi, [edi+68h]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+70h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
mov     eax, [eax+4]
sar     eax, 10h
shl     eax, 5
neg     eax
shl     eax, 4
push    eax
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edi, [esp+24h+var_1C]
add     edi, 70h ; 'p'
mov     esi, [esp+24h+var_1C]
add     esi, 68h ; 'h'
mov     ecx, 0D00h
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5
push    0
xor     eax, eax
mov     al, [ebp+0Bh]
mov     ecx, ds:(dword_50B2DA+2)[eax*8]
sar     ecx, 10h
push    ecx
mov     ecx, ds:dword_50B2DA[eax*8]
sar     ecx, 10h
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+4]
sar     ebx, 10h
shl     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5
call    sub_4DE13B
test    eax, eax
jz      short loc_404E83
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 0
lea     edi, [eax+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+68h]
movsd
movsd

loc_404E83:
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+6]
inc     ecx
mov     [eax+6], cx
cmp     cx, 8
jl      short loc_404EBD
mov     ch, [ebp+0Bh]
inc     ch
mov     [ebp+0Bh], ch
cmp     ch, 4
jb      short loc_404EB4
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 8
mov     eax, [esp+1Ch+var_1C]
and     word ptr [eax], 0F7FDh

loc_404EB4:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+6], 0

loc_404EBD:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 2
jmp     def_404D8B      ; jumptable 00404D8B default case

loc_404ECB:             ; jumptable 00404D8B case 2
cmp     byte ptr [ebp+0A6h], 0
jz      short loc_404EF7
lea     ecx, [ebp+14h]
mov     edx, ecx
mov     eax, 151h
call    sub_4D8BC3
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B

loc_404EF7:
cmp     byte ptr [ebp+0A7h], 0
jge     short def_404D8B ; jumptable 00404D8B default case
mov     byte ptr [ebp+0ACh], 9
inc     byte ptr [ebp+0Ah]
jmp     short def_404D8B ; jumptable 00404D8B default case

loc_404F0C:             ; jumptable 00404D8B case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_404F3B
mov     byte ptr [ebp+9], 9
mov     eax, 604h
call    sub_47E8B8
mov     eax, ebp
call    sub_432EAB
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax], 200h
mov     eax, ebp
call    sub_4367FD
jmp     short def_404D8B ; jumptable 00404D8B default case

loc_404F3B:
cmp     byte ptr [ebp+0A7h], 0
jge     short def_404D8B ; jumptable 00404D8B default case
mov     byte ptr [ebp+0ACh], 8
dec     byte ptr [ebp+0Ah]

def_404D8B:             ; jumptable 00404D8B default case
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0F6h], 8
jge     short loc_404F66
mov     word ptr [ebp+15Eh], 4210h
jmp     short loc_404F6F

loc_404F66:
mov     word ptr [ebp+15Eh], 7FFFh

loc_404F6F:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+0F6h]
inc     eax
xor     ah, ah
and     al, 0Fh
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+0F6h], ax
add     esp, 4
jmp     loc_40427B
sub_404D69 endp




sub_404F90 proc near
mov     byte ptr [eax+0ACh], 0Ah
retn
sub_404F90 endp

db 90h
jpt_404FD1 dd offset loc_404FD8 ; jump table for switch statement
dd offset loc_404FE9
dd offset loc_405096
dd offset loc_4050FD
dd offset loc_40514A
dd offset loc_405199
dd offset loc_404048



sub_404FB5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
xor     edx, edx
mov     dl, al
jmp     jpt_404FD1[edx*4] ; switch jump

loc_404FD8:             ; jumptable 00404FD1 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0Dh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_404FE9:             ; jumptable 00404FD1 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
mov     edx, 3
mov     eax, esi
call    sub_405585
mov     edx, 8
mov     eax, esi
call    sub_405585
cmp     dword ptr [edi+80h], 0
jz      short loc_405062
cmp     dword ptr [edi+84h], 0
jz      short loc_405062
inc     byte ptr [esi+0Ah]
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405062:
cmp     dword ptr [edi+80h], 0
jz      short loc_405074
add     byte ptr [esi+0Ah], 2
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405074:
cmp     dword ptr [edi+84h], 0
jz      short loc_405086
add     byte ptr [esi+0Ah], 3
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405086:
add     byte ptr [esi+0Ah], 5
mov     byte ptr [esi+0ACh], 0Fh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_405096:             ; jumptable 00404FD1 case 2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     eax, [edi+80h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
mov     eax, [edi+84h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
add     byte ptr [esi+0Ah], 3

loc_4050F1:
mov     byte ptr [esi+0ACh], 0Eh
jmp     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case

loc_4050FD:             ; jumptable 00404FD1 case 3
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     eax, [edi+80h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
add     byte ptr [esi+0Ah], 2
jmp     short loc_4050F1

loc_40514A:             ; jumptable 00404FD1 case 4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 10h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, [edi+42h]
sub     edx, eax
mov     eax, edx
and     ah, 0Fh
mov     [edi+42h], ax
mov     eax, [edi+84h]
cmp     byte ptr [eax+0Ch], 0
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     byte ptr [esi+0Ah]
jmp     loc_4050F1

loc_405199:             ; jumptable 00404FD1 case 5
cmp     byte ptr [esi+0A7h], 0
jge     def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0Fh
mov     edx, [edi+80h]
test    edx, edx
jz      short loc_4051CA
add     byte ptr [edx+0Ch], 80h
mov     dword ptr [edi+80h], 0

loc_4051CA:
mov     ecx, [edi+84h]
test    ecx, ecx
jz      def_403F35      ; jumptable 00403F35 default case
; jumptable 00404FD1 default case
add     byte ptr [ecx+0Ch], 80h
mov     dword ptr [edi+84h], 0
jmp     def_403F35      ; jumptable 00403F35 default case
sub_404FB5 endp         ; jumptable 00404FD1 default case




sub_4051EB proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+550h]
mov     edx, offset byte_5F8364
cmp     ds:byte_5F83DA, 0
jz      short loc_40520B
cmp     eax, ds:dword_5F8424
jz      short loc_405231

loc_40520B:
push    800h
mov     ecx, [edx+54h]
sar     ecx, 10h
push    ecx
lea     ecx, [edx+1Ch]
xor     edx, edx
mov     dx, [esi+44h]
add     eax, 1Ch
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_405236

loc_405231:
and     byte ptr [esi], 7Fh
jmp     short loc_405247

loc_405236:
or      byte ptr [esi], 80h
mov     ax, [esi+42h]
add     ah, 8
and     ah, 0Fh
mov     [esi+42h], ax

loc_405247:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4051EB endp




sub_405251 proc near
push    edx
mov     edx, eax
add     eax, 550h
cmp     ds:byte_5F83DA, 0
jz      short loc_40527F
cmp     edx, ds:dword_5F8424
jnz     short loc_40527F
mov     ax, [eax+2]
xor     ah, ah
and     al, 0Fh
cmp     ax, 6
jnb     short loc_40528D

loc_405278:
mov     eax, 4
pop     edx
retn

loc_40527F:
mov     ax, [eax+2]
xor     ah, ah
and     al, 0Fh
cmp     ax, 9
jb      short loc_405278

loc_40528D:
mov     eax, 3
pop     edx
retn
sub_405251 endp




sub_405294 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     ebp, edx
lea     ecx, [eax+550h]
xor     esi, esi
jmp     short loc_4052CC

loc_4052A7:
mov     eax, [ecx+38h]
add     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+3Ch]
add     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+34h]
sub     byte ptr [eax+5], 4
mov     eax, [ecx+34h]
sub     byte ptr [eax+7], 4

loc_4052C5:
inc     esi
cmp     si, 3
jge     short loc_405338

loc_4052CC:
movsx   edi, si
shl     edi, 18h
mov     edx, edi
or      edx, 10E01h
mov     eax, [ebx+88h]
call    sub_4EDF7C
mov     [ecx+34h], eax
mov     edx, edi
or      edx, 10E04h
mov     eax, [ebx+88h]
call    sub_4EE014
mov     [ecx+38h], eax
mov     edx, edi
or      edx, 10E05h
mov     eax, [ebx+88h]
call    sub_4EE014
mov     [ecx+3Ch], eax
test    ebp, ebp
jnz     short loc_4052A7
mov     eax, [ecx+38h]
sub     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+3Ch]
sub     word ptr [eax+2], 58h ; 'X'
mov     eax, [ecx+34h]
add     byte ptr [eax+5], 4
mov     eax, [ecx+34h]
add     byte ptr [eax+7], 4
jmp     short loc_4052C5

loc_405338:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_405294 endp




sub_40533E proc near
push    ebx
push    ecx
push    edx
push    esi
call    sub_4DDFD0
mov     esi, eax
test    eax, eax
jz      short loc_4053BC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 1
mov     dword ptr [eax+1Ch], 0EB000000h
mov     dword ptr [eax+20h], 0FFFF0000h
mov     dword ptr [eax+24h], 1A000000h
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
mov     word ptr [esi+0B0h], 0
mov     ax, [esi+0B0h]
mov     [esi+6Eh], ax
push    208080h
mov     ecx, 50h ; 'P'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4053BC:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40533E endp




sub_4053C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+550h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
jz      short loc_4053BC
mov     ah, [ebx+17h]
test    ah, 20h
jnz     short loc_4053BC
test    ah, 18h
jz      loc_4054C6
mov     ah, [ebx+1]
or      ah, 1
mov     [ebx+1], ah
mov     al, ah
and     al, 0BBh
mov     [ebx+1], al
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     esi, eax
sub     esi, edx
mov     [ecx+6Eh], si
test    si, si
jg      short loc_405451
call    sub_4B55BB
test    eax, eax
jz      short loc_40544B
mov     word ptr [ecx+6Eh], 0
and     byte ptr [ebx], 0F3h
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     edx, [edx+eax*4]
mov     dl, [edx+9]
and     edx, 0FFh
mov     byte ptr [ecx+9], 8
mov     word ptr [ecx+0Ah], 0
jmp     short loc_405451

loc_40544B:
mov     word ptr [ecx+6Eh], 1

loc_405451:
test    byte ptr [ebx], 8
jz      short loc_405495
add     [ebx+0Ah], dx
test    byte ptr [ebx+17h], 20h
jnz     short loc_405480
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_4054A2

loc_405480:
lea     edx, [ecx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebx+0Ah], 0
jmp     short loc_4054A2

loc_405495:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_4054A2:
xor     eax, eax

loc_4054A4:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 7FFFh
inc     eax
cmp     eax, 0Fh
jl      short loc_4054A4
mov     ax, [ecx+6Eh]
mov     [ebx+0F8h], ax
jmp     loc_4053BC

loc_4054C6:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3
jmp     loc_4053BC
sub_4053C6 endp




sub_4054D8 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, edx
lea     ecx, [eax+550h]
mov     eax, edx
sar     eax, 3
mov     ecx, [ecx+eax*4+80h]
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 7D0h
mov     word ptr [ecx+18h], 0
lea     ebx, [ecx+1Ch]
lea     edx, [ecx+14h]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
mov     ebp, edi
add     ebp, 250h
add     eax, ebp
call    sub_4EF1FB
mov     eax, esi
mov     si, [ecx+1Ch]
mov     dx, [edi+eax*8+190h]
add     esi, edx
mov     [ecx+14h], si
mov     si, [ecx+20h]
mov     bx, [edi+eax*8+192h]
add     esi, ebx
mov     [ecx+16h], si
mov     si, [ecx+24h]
mov     dx, [edi+eax*8+194h]
add     esi, edx
mov     [ecx+18h], si
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
jmp     loc_405338
sub_4054D8 endp




sub_405585 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
lea     edx, [eax+550h]
call    sub_4DE043
mov     esi, ecx
sar     esi, 3
shl     esi, 2
add     edx, esi
test    eax, eax
jz      short loc_4055F9
mov     [edx+80h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Dh], 0
lea     edi, [eax+14h]
lea     esi, [ebx+ecx*8+190h]
movsd
movsd
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
mov     eax, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4055F9:
mov     [edx+80h], eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_405585 endp




sub_405604 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [eax+550h]
xor     ecx, ecx
xor     edx, edx
xor     esi, esi

loc_405618:
mov     eax, esi
shl     eax, 4
mov     ebx, [edi+eax+90h]
and     ebx, 0FFFFFFh
add     edx, ebx
mov     eax, [edi+eax+90h]
and     eax, 38000000h
or      ecx, eax
inc     esi
cmp     esi, 6
jl      short loc_405618
test    edx, edx
jz      loc_405713
test    ecx, 38000000h
jz      loc_405706
mov     bx, [edi+46h]
sub     ebx, edx
mov     [edi+46h], bx
test    bx, bx
jg      loc_4056EE
test    byte ptr [edi+1], 20h
jz      short loc_405675
mov     word ptr [edi+46h], 1
jmp     short loc_4056EE

loc_405675:
mov     word ptr [edi+46h], 0
mov     dl, [edi+1]
or      dl, 80h
mov     [edi+1], dl
mov     dh, dl
and     dh, 0EFh
mov     [edi+1], dh
sar     word ptr [ebp+64h], 1
xor     esi, esi

loc_405692:
mov     eax, esi
shl     eax, 3
add     eax, offset unk_50B244
push    0
mov     edx, [eax+4]
push    edx
mov     ecx, [eax]
sar     ecx, 10h
xor     ebx, ebx
mov     bl, [eax+1]
xor     edx, edx
mov     dl, [eax]
lea     eax, [ebp+1E8h]
call    sub_43954B
mov     edx, esi
mov     [edi+edx*4+0E8h], eax
inc     esi
cmp     esi, 2
jl      short loc_405692
mov     byte ptr [ebp+9], 0Ah
mov     word ptr [ebp+0Ah], 0
mov     edx, 7
mov     eax, 4
call    sub_4A0E24
or      byte ptr [edi+0F2h], 0Eh
or      byte ptr [edi+1], 40h

loc_4056EE:
lea     edx, [ebp+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebp+1EEh], 7FFFh
jmp     short loc_405713

loc_405706:
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_405713:
mov     eax, 1
jmp     loc_40427B
sub_405604 endp




sub_40571D proc near

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
call    ds:funcs_405772[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 10h
jz      short loc_4057AB
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_4057A2
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4057B9

loc_4057A2:
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4057B9

loc_4057AB:
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

loc_4057B9:
test    byte ptr [ebp+0], 2
jz      short loc_4057D2
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
mov     eax, ebp
call    sub_4ED88B

loc_4057D2:
test    byte ptr [ebp+0], 1
jz      short loc_405822
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_405822
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
or      eax, 4880008h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0D0h
call    sub_4E01FC

loc_405822:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
jmp     def_406C32      ; jumptable 00406C32 default case
sub_40571D endp         ; jumptable 00406DEA default case




sub_405831 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+640h]
call    sub_4DE043
mov     [ecx+34h], eax
test    eax, eax
jz      short loc_40587A
mov     byte ptr [eax], 25h ; '%'
mov     eax, [ecx+34h]
mov     byte ptr [eax+2], 0Ah
mov     eax, [ecx+34h]
mov     byte ptr [eax+3], 0
mov     eax, [ecx+34h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+34h]
mov     byte ptr [eax+0Dh], 2
mov     eax, [ecx+34h]
mov     byte ptr [eax+0Eh], 40h ; '@'
mov     eax, [ecx+34h]
mov     byte ptr [eax+0Fh], 1
jmp     short loc_405881

loc_40587A:
mov     eax, esi
call    sub_4DE336

loc_405881:
call    sub_4DE043
mov     [ecx+38h], eax
test    eax, eax
jz      short loc_4058C6
mov     byte ptr [eax], 25h ; '%'
mov     eax, [ecx+38h]
mov     byte ptr [eax+2], 0Ah
mov     eax, [ecx+38h]
mov     byte ptr [eax+3], 1
mov     eax, [ecx+38h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+38h]
mov     byte ptr [eax+0Dh], 4
cmp     byte ptr [esi+3], 0
jz      short loc_4058BD
mov     eax, [ecx+38h]
mov     byte ptr [eax+0Eh], 1
jmp     short loc_4058D5

loc_4058BD:
mov     eax, [ecx+38h]
mov     byte ptr [eax+0Eh], 0
jmp     short loc_4058D5

loc_4058C6:
mov     eax, esi
call    sub_4DE336
mov     eax, [ecx+34h]
call    sub_4DE371

loc_4058D5:
or      byte ptr [esi], 2
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [ecx], 1Eh
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+18h], 0
xor     eax, eax
mov     al, [esi+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
xor     edx, edx
mov     dl, [esi+3]
shl     edx, 4
mov     eax, [eax]
add     eax, edx
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [ecx+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
xor     edx, edx
mov     dl, [esi+3]
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+8]
xor     ah, ah
shl     eax, 5
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], offset unk_50B34C
mov     dword ptr [esi+10h], 0
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     byte ptr [esi+3], 0
jz      short loc_4059EE
mov     byte ptr [esi+107h], 0FFh
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
push    203050h
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
jmp     short loc_405A0A

loc_4059EE:
mov     byte ptr [esi+8], 4
mov     byte ptr [esi+9], 0Eh
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B

loc_405A0A:
mov     word ptr [esi+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_405831 endp

db 90h
jpt_405ABC dd offset loc_405AE1 ; jump table for switch statement
dd offset def_405ABC
dd offset loc_405AEB
dd offset loc_405AC3
dd offset loc_405ACB



sub_405A2D proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
add     eax, 664h
mov     edx, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_405A4E
or      byte ptr [ebx], 20h
jmp     short loc_405A51

loc_405A4E:
and     byte ptr [ebx], 0DFh

loc_405A51:
test    byte ptr [ebx], 2
jz      short loc_405A5D
mov     eax, ecx
call    sub_4074CC

loc_405A5D:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_405A64[edx*4]
test    byte ptr [ebx], 1
jz      loc_405B03
cmp     word ptr [ecx+6Eh], 0
jg      short loc_405AB0
mov     byte ptr [ecx+9], 0
cmp     ds:byte_77E7D4, 0
jnz     loc_405AFA
mov     al, [ebx]
test    al, 40h
jnz     loc_405AFA
mov     ah, al
or      ah, 40h
mov     [ebx], ah
mov     eax, 606h
call    sub_47E8B8
mov     eax, ecx
call    sub_4367FD
jmp     short loc_405AFA

loc_405AB0:
mov     al, [ecx+9]
cmp     al, 4           ; switch 5 cases
ja      short def_405ABC ; jumptable 00405ABC default case, case 1
and     eax, 0FFh
jmp     jpt_405ABC[eax*4] ; switch jump

loc_405AC3:             ; jumptable 00405ABC case 3
mov     al, [ecx+0Dh]
mov     [ecx+9], al
jmp     short loc_405AFA

loc_405ACB:             ; jumptable 00405ABC case 4
cmp     ds:byte_77E7D4, 9
jnz     short loc_405AE1 ; jumptable 00405ABC case 0
cmp     word ptr [ecx+6Eh], 0
jg      short loc_405AE1 ; jumptable 00405ABC case 0
mov     byte ptr [ecx+9], 5
jmp     short loc_405AFA

loc_405AE1:             ; jumptable 00405ABC case 0
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_405AFA

loc_405AEB:             ; jumptable 00405ABC case 2
mov     byte ptr [ecx+9], 1
jmp     short loc_405AFA

def_405ABC:             ; jumptable 00405ABC default case, case 1
test    byte ptr [ebx], 20h
jnz     short loc_405AEB ; jumptable 00405ABC case 2
mov     byte ptr [ecx+9], 0

loc_405AFA:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_405B03:
mov     di, [ebx+0Ah]
test    di, di
jz      short loc_405B13
mov     eax, edi
dec     eax
mov     [ebx+0Ah], ax

loc_405B13:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_405A2D endp




sub_405B18 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+640h]
add     eax, 664h
mov     edx, [esp+1Ch+var_1C]
call    sub_4E19CA
test    eax, eax
jz      short loc_405B3C
or      byte ptr [ebp+0], 20h
jmp     short loc_405B40

loc_405B3C:
and     byte ptr [ebp+0], 0DFh

loc_405B40:
test    byte ptr [ebp+0], 2
jz      short loc_405B4E
mov     eax, [esp+1Ch+var_1C]
call    sub_4074CC

loc_405B4E:
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+9]
call    ds:funcs_405A64[edx*4]
test    byte ptr [ebp+0], 1
jz      short loc_405BAB
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+9]
cmp     al, 4
jb      short loc_405B75
jbe     short loc_405B87
cmp     al, 0Ah
jz      short loc_405B79
jmp     short loc_405B97

loc_405B75:
cmp     al, 3
jnz     short loc_405B97

loc_405B79:
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+0Dh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+9], al
jmp     short loc_405B9E

loc_405B87:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+6Eh], 0
jg      short loc_405B97
mov     byte ptr [eax+9], 5
jmp     short loc_405B9E

loc_405B97:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 8

loc_405B9E:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_405BAB:
mov     bx, [ebp+0Ah]
test    bx, bx
jz      short loc_405BBB
mov     ecx, ebx
dec     ecx
mov     [ebp+0Ah], cx

loc_405BBB:
mov     si, [ebp+3Ch]
test    si, si
jz      short loc_405BCB
mov     edi, esi
dec     edi
mov     [ebp+3Ch], di

loc_405BCB:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_405BE4
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 100h
call    sub_4ED88B

loc_405BE4:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_405C35
test    byte ptr [ebp+0], 8
jz      short loc_405C35
lea     edi, [ebp+0Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+190h]
movsd
movsd
push    0
push    offset unk_800000
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
mov     edx, 0D0h
call    sub_4E01FC

loc_405C35:
mov     dword ptr [ebp+14h], 0
jmp     def_406C32      ; jumptable 00406C32 default case
sub_405B18 endp         ; jumptable 00406DEA default case




sub_405C41 proc near
push    edx
lea     edx, [eax+640h]
call    sub_4DE336
mov     eax, [edx+34h]
call    sub_4DE371
mov     eax, [edx+38h]
call    sub_4DE371
pop     edx
retn
sub_405C41 endp




sub_405C5F proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 640h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_405C77
cmp     bl, 1
jz      short loc_405C88
pop     edx
pop     ebx
retn

loc_405C77:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+8], 0

loc_405C88:
test    byte ptr [eax], 20h
jnz     short loc_405C96
test    dword ptr [eax+14h], 0FFFFFFh
jz      short loc_405C99

loc_405C96:
or      byte ptr [eax], 1

loc_405C99:
pop     edx
pop     ebx
retn
sub_405C5F endp




sub_405C9C proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     esi, [eax+640h]
mov     edi, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_405CC2
cmp     al, 1
jz      short loc_405CD9
jmp     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case

loc_405CC2:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [esi+4], 50h ; 'P'
mov     word ptr [esi+8], 0

loc_405CD9:
lea     eax, [ebp+1Ch]
mov     [esp+1Ch+var_1C], eax
lea     eax, [edi+1Ch]
cmp     dword ptr [ebp+80h], 0C8000h
jnb     short loc_405D36
mov     dl, [ebp+0ADh]
mov     [ebp+0ACh], dl
push    800h
mov     edx, [edi+54h]
sar     edx, 10h
push    edx
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ecx, eax
mov     ebx, 80h
mov     eax, [esp+24h+var_1C]
call    sub_4DE639
test    eax, eax
jz      short loc_405D29
mov     byte ptr [ebp+9], 6
jmp     loc_405E4E

loc_405D29:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 6
jmp     loc_405E4E

loc_405D36:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_405D84
push    800h
mov     edx, [edi+54h]
sar     edx, 10h
push    edx
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ecx, eax
mov     ebx, 80h
mov     eax, [esp+24h+var_1C]
call    sub_4DE639
test    eax, eax
jz      short loc_405D70
mov     byte ptr [ebp+9], 2
jmp     short loc_405D78

loc_405D70:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 2

loc_405D78:
mov     word ptr [ebp+0Ah], 0
mov     word ptr [esi+6], 3Ch ; '<'

loc_405D84:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     esi, [ebp+14h]
mov     ecx, 20h ; ' '
mov     eax, esi
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ebx, eax
test    byte ptr [ebp+0A4h], 3
jnz     short loc_405DD5
mov     edx, esi
mov     eax, 0C8h
call    sub_4D8BC3

loc_405DD5:
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_405E02
neg     eax

loc_405E02:
cmp     eax, 20h ; ' '
jle     short loc_405E35
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 1
mov     word ptr [ebp+0Ah], 0
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
jmp     short def_406C32 ; jumptable 00406C32 default case
; jumptable 00406DEA default case

loc_405E35:
test    bh, 0Fh
jz      short def_406C32 ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 1

loc_405E4E:
mov     word ptr [ebp+0Ah], 0

def_406C32:             ; jumptable 00406C32 default case
add     esp, 4          ; jumptable 00406DEA default case

loc_405E57:
pop     ebp

def_406FDB:             ; jumptable 00406FDB default case
pop     edi             ; jumptable 004071EF default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_405C9C endp




sub_405E5E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
mov     eax, offset byte_5F8364
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_405E7F
cmp     dl, 1
jz      short loc_405E90
jmp     short loc_405E57

loc_405E7F:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ecx+8], 0

loc_405E90:
mov     edx, [eax+12h]
sar     edx, 10h
mov     esi, ds:dword_50B35A
sar     esi, 10h
sub     edx, esi
mov     esi, edx
mov     ebx, [eax+16h]
sar     ebx, 10h
mov     edx, ds:dword_50B35A+2
sar     edx, 10h
sub     ebx, edx
mov     edx, ebx
mov     ebx, ds:dword_50B35E
sar     ebx, 10h
cmp     esi, ebx
jnb     short loc_405EDD
mov     ebx, ds:dword_50B35E+2
sar     ebx, 10h
cmp     edx, ebx
jnb     short loc_405EDD
mov     byte ptr [ebp+9], 0Ah
mov     byte ptr [ebp+0Dh], 9
jmp     loc_406079

loc_405EDD:
mov     edx, ds:dword_5F8376
sar     edx, 10h
mov     ebx, ds:dword_50B3D2
sar     ebx, 10h
sub     edx, ebx
mov     ebx, edx
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     esi, ds:dword_50B3D2+2
sar     esi, 10h
sub     edx, esi
mov     esi, ds:dword_50B3D6
sar     esi, 10h
cmp     ebx, esi
ja      short loc_405F21
mov     ebx, ds:dword_50B3D6+2
sar     ebx, 10h
cmp     edx, ebx
jbe     short loc_405F36

loc_405F21:
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 0
jmp     loc_406079

loc_405F36:
lea     esi, [ebp+1Ch]
lea     edx, [eax+1Ch]
cmp     dword ptr [ebp+80h], 0C8000h
jnb     short loc_405F90
mov     cl, [ebp+0ADh]
mov     [ebp+0ACh], cl
push    800h
mov     eax, [eax+54h]
sar     eax, 10h
push    eax
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ecx, edx
mov     ebx, 80h
mov     edx, eax
mov     eax, esi
call    sub_4DE639
test    eax, eax
jz      short loc_405F83
mov     byte ptr [ebp+9], 0Dh
jmp     loc_406079

loc_405F83:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 0Dh
jmp     loc_406079

loc_405F90:
cmp     word ptr [ecx+3Ch], 0
jnz     short loc_405FDF
cmp     dword ptr [ebp+80h], 200000h
jbe     short loc_405FDF
push    800h
mov     eax, [eax+54h]
sar     eax, 10h
push    eax
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ecx, edx
mov     ebx, 400h
mov     edx, eax
mov     eax, esi
call    sub_4DE639
test    eax, eax
jz      short loc_405FD2
mov     byte ptr [ebp+9], 0Ch
jmp     loc_406079

loc_405FD2:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 0Ch
jmp     loc_406079

loc_405FDF:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    byte ptr [ebp+0A4h], 3
jnz     short loc_40600C
lea     edx, [ebp+14h]
mov     eax, 0C8h
call    sub_4D8BC3

loc_40600C:
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ecx, [ebp+12h]
sar     ecx, 10h
mov     edx, ds:dword_50B366
sar     edx, 10h
sub     ecx, edx
mov     eax, [ebp+16h]
sar     eax, 10h
mov     edx, ds:dword_50B366+2
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, ds:dword_50B36A
sar     eax, 10h
cmp     ecx, eax
ja      short loc_406063
mov     eax, ds:dword_50B36A+2
sar     eax, 10h
cmp     edx, eax
jbe     loc_405E57

loc_406063:
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
mov     byte ptr [ebp+9], 0Bh

loc_406079:
mov     word ptr [ebp+0Ah], 0
jmp     loc_405E57
sub_405E5E endp




sub_406084 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+24h+var_24], eax
mov     esi, offset byte_5F8364
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4060AC
cmp     al, 1
jz      short loc_4060CB
jmp     loc_406284

loc_4060AC:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+8], 0
mov     ax, [eax+6]
mov     edx, [esp+24h+var_24]
mov     [edx+4], ax

loc_4060CB:
mov     eax, [esp+24h+var_24]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_4060EE
test    byte ptr [eax+17h], 2
jnz     short loc_4060EE
cmp     dword ptr [ebp+80h], 48000h
jnb     short loc_4060F9

loc_4060EE:
mov     eax, [esp+24h+var_24]
or      byte ptr [eax], 1
jmp     loc_406284

loc_4060F9:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
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
mov     eax, [ebp+14h]
sar     eax, 10h
mov     ecx, [ebp+2Ch]
sar     ecx, 10h
sub     eax, ecx
test    eax, eax
jge     short loc_40613D
neg     eax

loc_40613D:
cmp     eax, 20h ; ' '
jle     short loc_406170
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 2
mov     word ptr [ebp+0Ah], 0
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
jmp     short loc_40618F

loc_406170:
test    dh, 0Fh
jz      short loc_4061A2
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 2

loc_406189:
mov     word ptr [ebp+0Ah], 0

loc_40618F:
mov     eax, [esp+24h+var_24]
mov     ax, [eax+4]
mov     edx, [esp+24h+var_24]
mov     [edx+6], ax
jmp     loc_406284

loc_4061A2:
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      short loc_4061DE
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 1
jmp     short loc_406189

loc_4061DE:
cmp     byte ptr [ebp+0A6h], 1
jnz     loc_406284
mov     [esp+24h+var_20], eax
jmp     short loc_4061FF

loc_4061F1:
mov     esi, [esp+24h+var_20]
inc     esi
mov     [esp+24h+var_20], esi
cmp     esi, 3
jge     short loc_40625F

loc_4061FF:
call    sub_4DE13B
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      short loc_4061F1
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     eax, [esp+24h+var_20]
mov     edx, ds:dword_50B3F2[eax*2]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+24h+var_1C]
lea     edi, [edi+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+24h+var_1C]
mov     [edx+4Ah], ax
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
jmp     short loc_4061F1

loc_40625F:
add     ebp, 14h
mov     ecx, ebp
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 1Eh
call    sub_42A70B
mov     edx, ebp
mov     eax, 0C2h
call    sub_4D8BC3

loc_406284:
add     esp, 0Ch
jmp     loc_405E57
sub_406084 endp




sub_40628C proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+24h+var_24], eax
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_4062B2
jbe     short loc_4062F1
cmp     al, 2
jz      loc_406498
jmp     short loc_406284

loc_4062B2:
test    al, al
jnz     short loc_406284
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     eax, [esp+24h+var_24]
mov     word ptr [eax+4], 20h ; ' '
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0FBh
mov     word ptr [eax+3Eh], 0
cmp     word ptr [ebp+56h], 800h
jle     short loc_4062EA
mov     dword ptr [eax+40h], offset unk_50B370
jmp     short loc_4062F1

loc_4062EA:
mov     dword ptr [eax+40h], offset unk_50B3A0

loc_4062F1:
mov     edx, [esp+24h+var_24]
mov     edx, [edx+3Ch]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, [esp+24h+var_24]
mov     edx, [edx+40h]
add     eax, edx
mov     esi, [eax+2]
sar     esi, 10h
mov     edx, [ebp+12h]
sar     edx, 10h
sub     edx, esi
mov     esi, edx
mov     ecx, [eax+4]
sar     ecx, 10h
mov     edx, [ebp+16h]
sar     edx, 10h
sub     edx, ecx
mov     ecx, edx
mov     edx, [eax+6]
sar     edx, 10h
cmp     esi, edx
jnb     loc_4063B2
mov     eax, [eax+8]
sar     eax, 10h
cmp     ecx, eax
jnb     short loc_4063B2
mov     eax, [esp+24h+var_24]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_406380
mov     word ptr [eax+4], 20h ; ' '
mov     di, [eax+3Eh]
inc     edi
mov     [eax+3Eh], di
cmp     di, 3
jle     short loc_4063E7
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [eax+4], 20h ; ' '
jmp     loc_406498

loc_406380:
mov     byte ptr [ebp+0ACh], 3
mov     edx, [eax+3Ch]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, [esp+24h+var_24]
mov     edx, [edx+40h]
add     edx, eax
mov     ax, [ebp+56h]
add     ax, [edx]
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     loc_406284

loc_4063B2:
mov     byte ptr [ebp+0ACh], 2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
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

loc_4063E7:
test    byte ptr [ebp+0A6h], 1
jz      loc_406284
xor     edx, edx
mov     [esp+24h+var_1C], edx
jmp     short loc_40640A

loc_4063FC:
mov     esi, [esp+24h+var_1C]
inc     esi
mov     [esp+24h+var_1C], esi
cmp     esi, 3
jge     short loc_40646E

loc_40640A:
call    sub_4DE13B
mov     [esp+24h+var_20], eax
test    eax, eax
jz      short loc_4063FC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Dh], 2
mov     esi, [esp+24h+var_1C]
mov     edx, ds:dword_50B3F8[esi*2]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+24h+var_20]
lea     edi, [edi+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+24h+var_20]
mov     [edx+4Ah], ax
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
jmp     short loc_4063FC

loc_40646E:
add     ebp, 14h
mov     ecx, ebp
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 1Eh
call    sub_42A70B
mov     edx, ebp
mov     eax, 0C2h
call    sub_4D8BC3
jmp     loc_406284

loc_406498:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
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
test    byte ptr [ebp+0A6h], 1
jz      loc_40655D
xor     ecx, ecx
mov     [esp+24h+var_1C], ecx
jmp     short loc_4064E9

loc_4064DB:
mov     eax, [esp+24h+var_1C]
inc     eax
mov     [esp+24h+var_1C], eax
cmp     eax, 3
jge     short loc_406538

loc_4064E9:
call    sub_4DE13B
mov     esi, eax
test    eax, eax
jz      short loc_4064DB
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Dh], 2
mov     edx, [esp+24h+var_1C]
mov     edx, ds:dword_50B3F8[edx*2]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
lea     edi, [esi+48h]
lea     esi, [ebp+14h]
movsd
movsd
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
jmp     short loc_4064DB

loc_406538:
add     ebp, 14h
mov     ecx, ebp
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 1Eh
call    sub_42A70B
mov     edx, ebp
mov     eax, 0C2h
call    sub_4D8BC3

loc_40655D:
mov     eax, [esp+24h+var_24]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     loc_406284
or      byte ptr [eax], 5
jmp     loc_406284
sub_40628C endp




sub_40657A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset byte_5F8364
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_40659E
cmp     dl, 1
jz      short loc_4065F4
jmp     loc_405E57

loc_40659E:
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 3
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
add     eax, 14h
mov     ecx, 800h
call    sub_4DE552
mov     edx, eax
mov     ecx, 0Ch
sar     edx, 1Fh
idiv    ecx
mov     [esi+66h], ax
test    ax, ax
jge     short loc_4065DE
mov     eax, [esi+64h]
sar     eax, 10h
neg     eax
jmp     short loc_4065E4

loc_4065DE:
mov     eax, [esi+64h]
sar     eax, 10h

loc_4065E4:
mov     [esi+66h], ax
mov     word ptr [edi+4], 0Ch
mov     word ptr [edi+8], 0

loc_4065F4:
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jg      short loc_406605
or      byte ptr [edi], 1

loc_406605:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr [esi+0A4h], 1
jz      loc_405E57
mov     edx, edi
mov     eax, 0C8h
call    sub_4D8BC3
jmp     loc_405E57
sub_40657A endp




sub_406647 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_40666B
cmp     al, 1
jz      loc_4067C7
jmp     loc_406813

loc_40666B:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 3
lea     eax, [esi+1Ch]
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
cmp     word ptr [esi+56h], 800h
jle     loc_406717
push    800h
mov     edx, ds:dword_5F83B8
sar     edx, 10h
push    edx
mov     edx, [esi+54h]
sar     edx, 10h
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_4066E5
mov     eax, ds:off_50B376
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_50B372
sar     edx, 10h
add     eax, edx
mov     [esp+1Ch+var_1C], ax
xor     edx, edx
mov     [esp+1Ch+var_1A], dx
mov     eax, ds:off_50B376+2
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_50B372+2
jmp     loc_40678C

loc_4066E5:
mov     eax, ds:off_50B39A
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_50B396
sar     edx, 10h
add     eax, edx
mov     [esp+1Ch+var_1C], ax
xor     eax, eax
mov     [esp+1Ch+var_1A], ax

loc_406705:
mov     eax, ds:off_50B39A+2
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_50B396+2
jmp     short loc_40678C

loc_406717:
push    800h
mov     edx, ds:dword_5F83B8
sar     edx, 10h
push    edx
mov     edx, [esi+54h]
sar     edx, 10h
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_40675C
mov     eax, ds:off_50B39A
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_50B396
sar     edx, 10h
add     eax, edx
mov     [esp+1Ch+var_1C], ax
xor     ecx, ecx
mov     [esp+1Ch+var_1A], cx
jmp     short loc_406705

loc_40675C:
mov     eax, ds:off_50B376
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_50B372
sar     edx, 10h
add     eax, edx
mov     [esp+1Ch+var_1C], ax
xor     ebx, ebx
mov     [esp+1Ch+var_1A], bx
mov     eax, ds:off_50B376+2
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_50B372+2

loc_40678C:
sar     edx, 10h
add     eax, edx
mov     [esp+1Ch+var_18], ax
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 800h
mov     edx, esp
call    sub_4DE552
mov     edx, eax
mov     ecx, 0Ch
sar     edx, 1Fh
idiv    ecx
mov     [esi+66h], ax
mov     word ptr [edi+4], 0Ch
mov     word ptr [edi+8], 0

loc_4067C7:
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr [esi+0A4h], 1
jz      short loc_4067EC
lea     edx, [esi+14h]
mov     eax, 0C8h
call    sub_4D8BC3

loc_4067EC:
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jg      short loc_406813
cmp     word ptr [esi+56h], 800h
jle     short loc_40680A
mov     word ptr [esi+56h], 0C00h
jmp     short loc_406810

loc_40680A:
mov     word ptr [esi+56h], 400h

loc_406810:
or      byte ptr [edi], 1

loc_406813:
add     esp, 8
jmp     def_406FDB      ; jumptable 00406FDB default case
sub_406647 endp         ; jumptable 004071EF default case




sub_40681B proc near
push    ecx
push    edx
lea     ecx, [eax+640h]
mov     dl, [eax+0Ah]
test    dl, dl
jbe     short loc_406832
cmp     dl, 1
jz      short loc_406849
pop     edx
pop     ecx
retn

loc_406832:
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 3
mov     word ptr [ecx+4], 10h
mov     word ptr [ecx+8], 0

loc_406849:
mov     dx, [eax+56h]
add     edx, 80h
and     dh, 0Fh
mov     [eax+56h], dx
test    byte ptr [eax+0A4h], 1
jz      short loc_406870
lea     edx, [eax+14h]
mov     eax, 0C8h
call    sub_4D8BC3

loc_406870:
mov     dx, [ecx+4]
dec     edx
mov     [ecx+4], dx
test    dx, dx
jg      short loc_406881
or      byte ptr [ecx], 1

loc_406881:
pop     edx
pop     ecx
retn
sub_40681B endp




sub_406884 proc near
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
jbe     short loc_4068A2
cmp     dl, 1
jz      short loc_4068C2
jmp     loc_405E57

loc_4068A2:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 4
mov     word ptr [ebp+44h], 0
mov     word ptr [eax+4], 1Ch
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0FBh

loc_4068C2:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      short loc_4068D3
or      byte ptr [eax], 5

loc_4068D3:
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 3
xor     ecx, ecx
xor     ebx, ebx
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
jge     short loc_406919
neg     eax

loc_406919:
cmp     eax, 20h ; ' '
jle     loc_405E57
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
jmp     loc_405E57
sub_406884 endp

jpt_406973 dd offset loc_40697A ; jump table for switch statement
dd offset loc_406988
dd offset loc_406A66
dd offset loc_406A9F
dd offset loc_406BAD



sub_40694D proc near

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
lea     esi, [eax+640h]
mov     edi, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_406973      ; jumptable 00406973 default case
and     eax, 0FFh
jmp     jpt_406973[eax*4] ; switch jump

loc_40697A:             ; jumptable 00406973 case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0Bh], 0
mov     word ptr [esi+4], 12h

loc_406988:             ; jumptable 00406973 case 1
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jl      loc_406A4E
test    byte ptr [esi+4], 3
jnz     def_406973      ; jumptable 00406973 default case
call    sub_4DE13B
mov     [esp+34h+var_1C], eax
test    eax, eax
jz      loc_406A46
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
xor     edx, edx
mov     dl, [ebp+0Bh]
mov     ax, [ebp+56h]
add     ax, ds:word_50B400[edx*2]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     eax, eax
mov     al, [ebp+0Bh]
shl     eax, 3
lea     esi, [eax+ebp]
lea     edi, [ebp+14h]
lea     esi, [esi+190h]
movsd
movsd
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0B40h
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+34h+var_1C]
lea     edi, [edi+48h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+14h]
lea     esi, [esp+34h+var_24]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, esp
movsd
movsd
movsd
movsd
xor     edx, edx
mov     dl, [ebp+0Bh]
mov     ax, [ebp+56h]
sub     ax, ds:word_50B400[edx*2]
and     ah, 0Fh
mov     [ebp+56h], ax

loc_406A46:
inc     byte ptr [ebp+0Bh]
jmp     def_406973      ; jumptable 00406973 default case

loc_406A4E:
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 4
mov     byte ptr [ebp+0ADh], 0FFh
mov     word ptr [esi+4], 4

loc_406A66:             ; jumptable 00406973 case 2
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     def_406973      ; jumptable 00406973 default case
mov     byte ptr [ebp+0Ah], 3
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+4Eh], 4
mov     ebx, 6

loc_406A8D:
movsx   eax, bx
mov     byte ptr [ebp+eax*4+0FBh], 0FFh
inc     ebx
cmp     bx, 0Ch
jl      short loc_406A8D

loc_406A9F:             ; jumptable 00406973 case 3
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
sub     word ptr [ebp+16h], 46h ; 'F'
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, ebp
call    sub_42DE56
test    ah, 10h
jz      loc_406B9A
and     byte ptr [ebp+0], 0FDh
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 800h
call    sub_4DE689
mov     edx, eax
mov     ebx, eax
mov     eax, [esi+34h]
mov     ch, [eax+0Eh]
test    ch, 1
jnz     short loc_406B28
test    ch, 10h
jnz     short loc_406B1B
test    dx, dx
jz      short loc_406B24

loc_406B1B:
mov     eax, [esi+34h]
mov     byte ptr [eax+9], 2
jmp     short loc_406B28

loc_406B24:
mov     byte ptr [eax+9], 1

loc_406B28:
mov     eax, [esi+38h]
mov     ch, [eax+0Eh]
test    ch, 1
jnz     short loc_406B4A
test    ch, 10h
jnz     short loc_406B3D
test    bx, bx
jz      short loc_406B46

loc_406B3D:
mov     eax, [esi+38h]
mov     byte ptr [eax+9], 2
jmp     short loc_406B4A

loc_406B46:
mov     byte ptr [eax+9], 1

loc_406B4A:
mov     eax, [esi+34h]
mov     word ptr [eax+0Ah], 0
mov     eax, [esi+38h]
mov     word ptr [eax+0Ah], 0
xor     ebx, ebx
jmp     short loc_406B8D

loc_406B60:
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
movsx   edx, bx
mov     esi, edx
lea     edi, [eax+48h]
lea     esi, [ebp+esi*8+190h]
movsd
movsd
mov     eax, edx
mov     byte ptr [ebp+eax*4+0FBh], 0FFh
inc     ebx
cmp     bx, 6
jge     short loc_406B96

loc_406B8D:
call    sub_4DE13B
test    eax, eax
jnz     short loc_406B60

loc_406B96:
mov     byte ptr [ebp+0Ah], 4

loc_406B9A:
add     word ptr [ebp+16h], 46h ; 'F'
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
jmp     short def_406973 ; jumptable 00406973 default case

loc_406BAD:             ; jumptable 00406973 case 4
mov     eax, [esi+34h]
test    byte ptr [eax+0Eh], 1
jz      short def_406973 ; jumptable 00406973 default case
mov     eax, [esi+38h]
test    byte ptr [eax+0Eh], 1
jz      short def_406973 ; jumptable 00406973 default case
mov     eax, ebp
call    sub_4367FD
mov     eax, ebp
call    sub_4DE336
mov     eax, [esi+34h]
call    sub_4DE371
mov     eax, [esi+38h]
call    sub_4DE371
xor     ebx, ebx
mov     bl, [ebp+3]
lea     edx, [ebp+190h]
mov     eax, ebp
call    sub_4AFA70

def_406973:             ; jumptable 00406973 default case
add     esp, 1Ch
jmp     loc_405E57
sub_40694D endp

db 8Bh, 0C0h
jpt_406C32 dd offset loc_406C39 ; jump table for switch statement
dd offset loc_406C5D
dd offset loc_406C99
dd offset loc_406CC8
dd offset loc_406D75
dd offset loc_406D97



sub_406C11 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     esi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
and     eax, 0FFh
jmp     jpt_406C32[eax*4] ; switch jump

loc_406C39:             ; jumptable 00406C32 case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Bh
mov     word ptr [esi+4], 0Dh
mov     word ptr [esi+8], 0
lea     edx, [ebp+14h]
mov     eax, 0BFh
call    sub_4D8BC3

loc_406C5D:             ; jumptable 00406C32 case 1
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     byte ptr [ebp+0Ah], 2
mov     word ptr [esi+4], 0Ah
mov     eax, [esi+34h]
mov     byte ptr [eax+9], 3
mov     eax, [esi+38h]
mov     byte ptr [eax+9], 3
mov     eax, [esi+34h]
mov     word ptr [eax+0Ah], 0
mov     eax, [esi+38h]
mov     word ptr [eax+0Ah], 0

loc_406C99:             ; jumptable 00406C32 case 2
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     byte ptr [ebp+0Ah], 3
inc     byte ptr [ebp+0ACh]
mov     word ptr [esi+4], 14h
lea     edx, [ebp+14h]
mov     eax, 0C0h
call    sub_4D8BC3

loc_406CC8:             ; jumptable 00406C32 case 3
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jl      loc_406D6B
cmp     ax, 3
jnz     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
xor     edx, edx
mov     [esp+1Ch+var_1C], edx
jmp     short loc_406CF7

loc_406CEB:
mov     ecx, [esp+1Ch+var_1C]
inc     ecx
mov     [esp+1Ch+var_1C], ecx
cmp     ecx, 3
jge     short loc_406D41

loc_406CF7:
call    sub_4DE13B
mov     esi, eax
test    eax, eax
jz      short loc_406CEB
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     eax, [esp+1Ch+var_1C]
mov     edx, ds:dword_50B40A[eax*2]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
lea     edi, [esi+48h]
lea     esi, [ebp+14h]
movsd
movsd
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
jmp     short loc_406CEB

loc_406D41:
add     ebp, 14h
mov     ecx, ebp
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 1Eh
call    sub_42A70B
mov     edx, ebp
mov     eax, 0C1h
call    sub_4D8BC3
jmp     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case

loc_406D6B:
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [esi+4], 0Ah

loc_406D75:             ; jumptable 00406C32 case 4
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     byte ptr [ebp+0Ah], 5
inc     byte ptr [ebp+0ACh]
mov     word ptr [esi+4], 0Fh

loc_406D97:             ; jumptable 00406C32 case 5
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
or      byte ptr [esi], 1
jmp     def_406C32      ; jumptable 00406C32 default case
sub_406C11 endp         ; jumptable 00406DEA default case

jpt_406DEA dd offset loc_406DF1 ; jump table for switch statement
dd offset loc_406E15
dd offset loc_406E51
dd offset loc_406E80
dd offset loc_406F31
dd offset loc_406F53



sub_406DC9 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     esi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
and     eax, 0FFh
jmp     jpt_406DEA[eax*4] ; switch jump

loc_406DF1:             ; jumptable 00406DEA case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Bh
mov     word ptr [esi+4], 0Dh
mov     word ptr [esi+8], 0
lea     edx, [ebp+14h]
mov     eax, 0BFh
call    sub_4D8BC3

loc_406E15:             ; jumptable 00406DEA case 1
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     byte ptr [ebp+0Ah], 2
mov     word ptr [esi+4], 0Ah
mov     eax, [esi+34h]
mov     byte ptr [eax+9], 3
mov     eax, [esi+38h]
mov     byte ptr [eax+9], 3
mov     eax, [esi+34h]
mov     word ptr [eax+0Ah], 0
mov     eax, [esi+38h]
mov     word ptr [eax+0Ah], 0

loc_406E51:             ; jumptable 00406DEA case 2
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     byte ptr [ebp+0Ah], 3
inc     byte ptr [ebp+0ACh]
mov     word ptr [esi+4], 14h
lea     edx, [ebp+14h]
mov     eax, 0C0h
call    sub_4D8BC3

loc_406E80:             ; jumptable 00406DEA case 3
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jl      loc_406F27
cmp     ax, 3
jnz     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
xor     edx, edx
mov     [esp+1Ch+var_1C], edx
jmp     short loc_406EAF

loc_406EA3:
mov     ebx, [esp+1Ch+var_1C]
inc     ebx
mov     [esp+1Ch+var_1C], ebx
cmp     ebx, 3
jge     short loc_406EFD

loc_406EAF:
call    sub_4DE13B
mov     esi, eax
test    eax, eax
jz      short loc_406EA3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Dh], 2
mov     eax, [esp+1Ch+var_1C]
mov     edx, ds:dword_50B410[eax*2]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
lea     edi, [esi+48h]
lea     esi, [ebp+14h]
movsd
movsd
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
jmp     short loc_406EA3

loc_406EFD:
add     ebp, 14h
mov     ecx, ebp
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 1Eh
call    sub_42A70B
mov     edx, ebp
mov     eax, 0C1h
call    sub_4D8BC3
jmp     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case

loc_406F27:
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [esi+4], 0Ah

loc_406F31:             ; jumptable 00406DEA case 4
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
mov     byte ptr [ebp+0Ah], 5
inc     byte ptr [ebp+0ACh]
mov     word ptr [esi+4], 0Fh

loc_406F53:             ; jumptable 00406DEA case 5
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     def_406C32      ; jumptable 00406C32 default case
; jumptable 00406DEA default case
cmp     dword ptr [ebp+80h], 0C8000h
jnb     short loc_406F8A
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Dh], 0Dh
jmp     loc_405E4E

loc_406F8A:
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
mov     byte ptr [ebp+9], 0Ah
mov     byte ptr [ebp+0Dh], 8
jmp     loc_405E4E
sub_406DC9 endp

db 8Bh, 0C0h
jpt_406FDB dd offset loc_406FE2 ; jump table for switch statement
dd offset loc_407009
dd offset loc_4070B2
dd offset loc_4070FD
dd offset loc_40715C



sub_406FB9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+640h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
and     eax, 0FFh
jmp     jpt_406FDB[eax*4] ; switch jump

loc_406FE2:             ; jumptable 00406FDB case 0
mov     byte ptr [edi+0Ah], 1
mov     byte ptr [edi+0ACh], 6
mov     word ptr [esi+4], 32h ; '2'
mov     word ptr [esi+8], 0
and     byte ptr [esi], 0FBh
lea     edx, [edi+14h]
mov     eax, 0C3h
call    sub_4D8BC3

loc_407009:             ; jumptable 00406FDB case 1
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jl      loc_4070A0
push    800h
mov     eax, [ecx+54h]
sar     eax, 10h
push    eax
add     ecx, 1Ch
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 100h
call    sub_4DE639
test    eax, eax
jnz     short loc_407057
mov     byte ptr [edi+0Ah], 4
mov     byte ptr [edi+0ACh], 9
mov     word ptr [esi+4], 0Bh
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_407057:
cmp     word ptr [esi+4], 8
jnz     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
mov     eax, [esi+34h]
test    byte ptr [eax+0Eh], 1
jnz     short loc_40706F
mov     byte ptr [eax+9], 4

loc_40706F:
mov     eax, [esi+38h]
test    byte ptr [eax+0Eh], 1
jnz     short loc_40707C
mov     byte ptr [eax+9], 4

loc_40707C:
mov     eax, [esi+34h]
mov     word ptr [eax+0Ah], 0
mov     eax, [esi+38h]
mov     word ptr [eax+0Ah], 0
lea     edx, [edi+14h]
mov     eax, 0C4h
call    sub_4D8BC3
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_4070A0:
mov     byte ptr [edi+0Ah], 2
inc     byte ptr [edi+0ACh]
mov     word ptr [esi+4], 14h
jmp     short loc_4070D6

loc_4070B2:             ; jumptable 00406FDB case 2
cmp     word ptr [esi+4], 0
jnz     short loc_4070CB
mov     eax, [esi+34h]
test    byte ptr [eax+0Eh], 5
jz      short loc_4070CB
mov     eax, [esi+38h]
test    byte ptr [eax+0Eh], 5
jnz     short loc_4070DF

loc_4070CB:
cmp     word ptr [esi+4], 0
jz      def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_4070D6:
dec     word ptr [esi+4]
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_4070DF:
mov     byte ptr [edi+0Ah], 3
inc     byte ptr [edi+0ACh]
mov     word ptr [esi+4], 0Ah
mov     eax, [esi+34h]
and     byte ptr [eax+0Eh], 0FBh
mov     eax, [esi+38h]
and     byte ptr [eax+0Eh], 0FBh

loc_4070FD:             ; jumptable 00406FDB case 3
cmp     word ptr [esi+4], 0
jnz     short loc_407116
mov     eax, [esi+34h]
test    byte ptr [eax+0Eh], 3
jz      short loc_407116
mov     eax, [esi+38h]
test    byte ptr [eax+0Eh], 3
jnz     short loc_40713E

loc_407116:
mov     dx, [esi+4]
test    dx, dx
jz      short loc_40712B
mov     ebx, edx
dec     ebx
mov     [esi+4], bx
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_40712B:
mov     ecx, [esi+34h]
or      byte ptr [ecx+0Eh], 8
mov     eax, [esi+38h]
or      byte ptr [eax+0Eh], 8
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_40713E:
mov     byte ptr [edi+0Ah], 4
inc     byte ptr [edi+0ACh]
mov     word ptr [esi+4], 0Bh
mov     eax, [esi+34h]
and     byte ptr [eax+0Eh], 0FDh
mov     eax, [esi+38h]
and     byte ptr [eax+0Eh], 0FDh

loc_40715C:             ; jumptable 00406FDB case 4
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
push    800h
mov     eax, [ecx+54h]
sar     eax, 10h
push    eax
add     ecx, 1Ch
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 80h
call    sub_4DE639
test    eax, eax
jz      short loc_40719A
mov     byte ptr [edi+9], 2
jmp     short loc_4071A2

loc_40719A:
mov     byte ptr [edi+9], 3
mov     byte ptr [edi+0Dh], 2

loc_4071A2:
mov     word ptr [edi+0Ah], 0
or      byte ptr [esi], 4
mov     word ptr [esi+6], 3Ch ; '<'
jmp     def_406FDB      ; jumptable 00406FDB default case
sub_406FB9 endp         ; jumptable 004071EF default case

db 8Dh, 40h, 0
jpt_4071EF dd offset loc_4071F6 ; jump table for switch statement
dd offset loc_40721D
dd offset loc_4072C6
dd offset loc_407311
dd offset loc_407370



sub_4071CD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+640h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
and     eax, 0FFh
jmp     jpt_4071EF[eax*4] ; switch jump

loc_4071F6:             ; jumptable 004071EF case 0
mov     byte ptr [edi+0Ah], 1
mov     byte ptr [edi+0ACh], 6
mov     word ptr [esi+4], 32h ; '2'
mov     word ptr [esi+8], 0
and     byte ptr [esi], 0FBh
lea     edx, [edi+14h]
mov     eax, 0C3h
call    sub_4D8BC3

loc_40721D:             ; jumptable 004071EF case 1
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jl      loc_4072B4
push    800h
mov     eax, [ecx+54h]
sar     eax, 10h
push    eax
add     ecx, 1Ch
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 100h
call    sub_4DE639
test    eax, eax
jnz     short loc_40726B
mov     byte ptr [edi+0Ah], 4
mov     byte ptr [edi+0ACh], 9
mov     word ptr [esi+4], 0Bh
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_40726B:
cmp     word ptr [esi+4], 8
jnz     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
mov     eax, [esi+34h]
test    byte ptr [eax+0Eh], 1
jnz     short loc_407283
mov     byte ptr [eax+9], 4

loc_407283:
mov     eax, [esi+38h]
test    byte ptr [eax+0Eh], 1
jnz     short loc_407290
mov     byte ptr [eax+9], 4

loc_407290:
mov     eax, [esi+34h]
mov     word ptr [eax+0Ah], 0
mov     eax, [esi+38h]
mov     word ptr [eax+0Ah], 0
lea     edx, [edi+14h]
mov     eax, 0C4h
call    sub_4D8BC3
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_4072B4:
mov     byte ptr [edi+0Ah], 2
inc     byte ptr [edi+0ACh]
mov     word ptr [esi+4], 14h
jmp     short loc_4072EA

loc_4072C6:             ; jumptable 004071EF case 2
cmp     word ptr [esi+4], 0
jnz     short loc_4072DF
mov     eax, [esi+34h]
test    byte ptr [eax+0Eh], 5
jz      short loc_4072DF
mov     eax, [esi+38h]
test    byte ptr [eax+0Eh], 5
jnz     short loc_4072F3

loc_4072DF:
cmp     word ptr [esi+4], 0
jz      def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_4072EA:
dec     word ptr [esi+4]
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_4072F3:
mov     byte ptr [edi+0Ah], 3
inc     byte ptr [edi+0ACh]
mov     word ptr [esi+4], 0Ah
mov     eax, [esi+34h]
and     byte ptr [eax+0Eh], 0FBh
mov     eax, [esi+38h]
and     byte ptr [eax+0Eh], 0FBh

loc_407311:             ; jumptable 004071EF case 3
cmp     word ptr [esi+4], 0
jnz     short loc_40732A
mov     eax, [esi+34h]
test    byte ptr [eax+0Eh], 3
jz      short loc_40732A
mov     eax, [esi+38h]
test    byte ptr [eax+0Eh], 3
jnz     short loc_407352

loc_40732A:
mov     di, [esi+4]
test    di, di
jz      short loc_40733F
mov     eax, edi
dec     eax
mov     [esi+4], ax
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_40733F:
mov     eax, [esi+34h]
or      byte ptr [eax+0Eh], 8
mov     eax, [esi+38h]
or      byte ptr [eax+0Eh], 8
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_407352:
mov     byte ptr [edi+0Ah], 4
inc     byte ptr [edi+0ACh]
mov     word ptr [esi+4], 0Bh
mov     eax, [esi+34h]
and     byte ptr [eax+0Eh], 0FDh
mov     eax, [esi+38h]
and     byte ptr [eax+0Eh], 0FDh

loc_407370:             ; jumptable 004071EF case 4
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
mov     byte ptr [edi+9], 0Ah
mov     byte ptr [edi+0Dh], 8
mov     word ptr [edi+0Ah], 0
or      byte ptr [esi], 4
mov     word ptr [esi+6], 3Ch ; '<'
mov     word ptr [esi+3Ch], 78h ; 'x'
jmp     def_406FDB      ; jumptable 00406FDB default case
sub_4071CD endp         ; jumptable 004071EF default case




sub_4073A4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+640h]
mov     ecx, offset byte_5F8364
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_4073C5
cmp     bl, 1
jz      short loc_4073D6
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_4073C5:
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0
mov     word ptr [edx+8], 0

loc_4073D6:
mov     ebx, [ecx+12h]
sar     ebx, 10h
mov     edi, ds:dword_50B3DE
sar     edi, 10h
sub     ebx, edi
mov     edi, ebx
mov     esi, [ecx+16h]
sar     esi, 10h
mov     ebx, ds:dword_50B3DE+2
sar     ebx, 10h
sub     esi, ebx
mov     ebx, esi
mov     esi, ds:dword_50B3E2
sar     esi, 10h
cmp     edi, esi
jnb     short loc_407446
mov     esi, ds:dword_50B3E2+2
sar     esi, 10h
cmp     ebx, esi
jnb     short loc_407446
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 2
mov     word ptr [edx+4], 20h ; ' '
and     byte ptr [edx], 0FBh
mov     word ptr [eax+56h], 0
mov     word ptr [edx+3Eh], 3
mov     dword ptr [edx+40h], offset unk_50B370
jmp     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case

loc_407446:
mov     esi, [ecx+12h]
sar     esi, 10h
mov     ebx, ds:dword_50B3EA
sar     ebx, 10h
sub     esi, ebx
mov     ecx, [ecx+16h]
sar     ecx, 10h
mov     ebx, ds:dword_50B3EA+2
sar     ebx, 10h
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, ds:dword_50B3EE
sar     ecx, 10h
cmp     esi, ecx
jnb     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
mov     ecx, ds:dword_50B3EE+2
sar     ecx, 10h
cmp     ebx, ecx
jnb     def_406FDB      ; jumptable 00406FDB default case
; jumptable 004071EF default case
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 2
add     byte ptr [eax+19h], 2
mov     ecx, [eax+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
mov     word ptr [edx+4], 20h ; ' '
and     byte ptr [edx], 0FBh
mov     word ptr [eax+56h], 800h
mov     word ptr [edx+3Eh], 1
mov     dword ptr [edx+40h], offset unk_50B3A0
jmp     def_406FDB      ; jumptable 00406FDB default case
sub_4073A4 endp         ; jumptable 004071EF default case




sub_4074CC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
jz      loc_407660
test    byte ptr [ebx+17h], 18h
jz      loc_407653
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     esi, eax
sub     esi, edx
mov     [ecx+6Eh], si
test    si, si
jg      short loc_407572
cmp     ds:byte_77E7D4, 0
jz      short loc_407558
mov     word ptr [ecx+6Eh], 0
mov     dl, [ebx]
and     dl, 0F9h
mov     [ebx], dl
mov     dh, dl
or      dh, 4
mov     [ebx], dh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
add     eax, edx
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 4
mov     eax, [eax]
mov     dl, [edx+eax+9]
and     edx, 0FFh
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
jmp     short loc_407572

loc_407558:
call    sub_4B55BB
test    eax, eax
jz      short loc_40756C
mov     word ptr [ecx+6Eh], 0
and     byte ptr [ebx], 0FDh
jmp     short loc_407572

loc_40756C:
mov     word ptr [ecx+6Eh], 1

loc_407572:
test    byte ptr [ebx], 4
jz      loc_4075F0
lea     eax, [ebx+0Ah]
cmp     edx, 0Ah
jge     short loc_40758A
mov     edi, 0Ah
jmp     short loc_40758C

loc_40758A:
mov     edi, edx

loc_40758C:
movsx   esi, word ptr [eax]
add     esi, edi
mov     [eax], si
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     esi, ds:dword_55A108
add     eax, esi
movzx   esi, byte ptr [ecx+3]
shl     esi, 4
mov     eax, [eax]
mov     al, [esi+eax+9]
and     eax, 0FFh
shl     eax, 2
cmp     edx, eax
jge     short loc_4075C7
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_4075E6

loc_4075C7:
lea     edx, [ecx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_40763A

loc_4075E6:
lea     edx, [ecx+14h]
mov     eax, 0A0h
jmp     short loc_407635

loc_4075F0:
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     esi, ds:dword_55A108
add     eax, esi
movzx   esi, byte ptr [ecx+3]
shl     esi, 4
mov     eax, [eax]
mov     al, [esi+eax+9]
and     eax, 0FFh
shl     eax, 2
cmp     edx, eax
jge     short loc_407623
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_40762D

loc_407623:
lea     edx, [ecx+14h]
mov     eax, 0A2h
jmp     short loc_407635

loc_40762D:
lea     edx, [ecx+14h]
mov     eax, 0A0h

loc_407635:
call    sub_4D8BC3

loc_40763A:
mov     word ptr [ecx+15Eh], 7FFFh
mov     eax, [ebx+34h]
or      byte ptr [eax+0Eh], 20h
mov     eax, [ebx+38h]
or      byte ptr [eax+0Eh], 20h
jmp     short loc_407660

loc_407653:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_407660:
mov     eax, 1
jmp     def_406FDB      ; jumptable 00406FDB default case
sub_4074CC endp         ; jumptable 004071EF default case

jpt_4076E1 dd offset loc_4076E8 ; jump table for switch statement
dd offset loc_4076F8
dd offset loc_4076FD
dd offset loc_407711
jpt_407793 dd offset loc_407759 ; jump table for switch statement
dd offset loc_4077A4
dd offset loc_4077B2
dd offset loc_40779A
dd offset loc_4077A8
dd offset loc_4077B7
dd offset loc_40779F
dd offset loc_4077AD
dd offset loc_4077BC



sub_40769E proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
call    sub_4DDFD0
mov     edi, eax
test    eax, eax
jz      loc_407811
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+4], 0
mov     [eax+3], dl
mov     dword ptr [eax+0Ch], 0
or      byte ptr [eax+6], 20h
mov     dword ptr [eax+10h], 0
lea     esi, [eax+88h]
cmp     dl, 3           ; switch 4 cases
ja      short def_4076E1 ; jumptable 004076E1 default case
xor     eax, eax
mov     al, dl
jmp     jpt_4076E1[eax*4] ; switch jump

loc_4076E8:             ; jumptable 004076E1 case 0
mov     byte ptr [esi], 0

loc_4076EB:
mov     byte ptr [esi+0Eh], 1
mov     dword ptr [esi+14h], 2E404040h
jmp     short loc_40770B

loc_4076F8:             ; jumptable 004076E1 case 1
mov     byte ptr [esi], 3
jmp     short loc_4076EB

loc_4076FD:             ; jumptable 004076E1 case 2
mov     byte ptr [esi], 4
mov     byte ptr [esi+0Eh], 2

loc_407704:
mov     dword ptr [esi+14h], 2E808080h

loc_40770B:
mov     byte ptr [esi+2], 9
jmp     short loc_407727

loc_407711:             ; jumptable 004076E1 case 3
mov     byte ptr [esi], 5
mov     byte ptr [esi+0Eh], 3
jmp     short loc_407704

def_4076E1:             ; jumptable 004076E1 default case
mov     eax, edi
call    sub_4DE336
xor     eax, eax
pop     edi
pop     esi
pop     ecx
retn

loc_407727:
mov     word ptr [esi+0Ch], 3FFh
mov     al, [ecx+1]
mov     [esi+1], al
mov     word ptr [esi+12h], 0
test    dl, dl
jnz     loc_4077C8
xor     dh, dh

loc_407743:
cmp     dh, [esi+2]
jnb     loc_40780F
xor     eax, eax
mov     al, dh
mov     byte ptr [esi+eax+3], 7
xor     dl, dl
jmp     short loc_407773

loc_407759:             ; jumptable 00407793 case 0
lea     ecx, [ebx+10h]

loc_40775C:
mov     [eax], ecx

def_407793:             ; jumptable 00407793 default case
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     word ptr [eax+6], 0
inc     dl
cmp     dl, 8
jnb     short loc_4077C1

loc_407773:
xor     eax, eax
mov     al, dh
mov     ecx, eax
shl     ecx, 7
lea     eax, [esi+18h]
add     ecx, eax
xor     eax, eax
mov     al, dl
shl     eax, 4
add     eax, ecx
cmp     dh, 8           ; switch 9 cases
ja      short def_407793 ; jumptable 00407793 default case
xor     ecx, ecx
mov     cl, dh
jmp     jpt_407793[ecx*4] ; switch jump

loc_40779A:             ; jumptable 00407793 case 3
lea     ecx, [ebx+70h]
jmp     short loc_40775C

loc_40779F:             ; jumptable 00407793 case 6
lea     ecx, [ebx+78h]
jmp     short loc_40775C

loc_4077A4:             ; jumptable 00407793 case 1
mov     [eax], ebx
jmp     short def_407793 ; jumptable 00407793 default case

loc_4077A8:             ; jumptable 00407793 case 4
lea     ecx, [ebx+50h]
jmp     short loc_40775C

loc_4077AD:             ; jumptable 00407793 case 7
lea     ecx, [ebx+60h]
jmp     short loc_40775C

loc_4077B2:             ; jumptable 00407793 case 2
lea     ecx, [ebx+8]
jmp     short loc_40775C

loc_4077B7:             ; jumptable 00407793 case 5
lea     ecx, [ebx+58h]
jmp     short loc_40775C

loc_4077BC:             ; jumptable 00407793 case 8
lea     ecx, [ebx+68h]
jmp     short loc_40775C

loc_4077C1:
inc     dh
jmp     loc_407743

loc_4077C8:
xor     dh, dh

loc_4077CA:
cmp     dh, [esi+2]
jnb     short loc_40780F
xor     eax, eax
mov     al, dh
mov     byte ptr [esi+eax+3], 7
xor     dl, dl

loc_4077DA:
xor     eax, eax
mov     al, dh
shl     eax, 7
lea     ecx, [esi+18h]
add     ecx, eax
xor     eax, eax
mov     al, dl
shl     eax, 4
mov     [ecx+eax], ebx
mov     byte ptr [ecx+eax+4], 0
mov     byte ptr [ecx+eax+5], 0
mov     word ptr [ecx+eax+6], 0
inc     dl
cmp     dl, 8
jb      short loc_4077DA
inc     dh
add     ebx, 8
jmp     short loc_4077CA

loc_40780F:
mov     eax, edi

loc_407811:
pop     edi
pop     esi
pop     ecx
retn
sub_40769E endp

and     dh, 3
mov     [eax+94h], dx
retn



sub_407820 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+88h]
call    ds:funcs_40782D[ecx*4]
pop     edx
pop     ecx
retn
sub_407820 endp




sub_407837 proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     edi, eax
mov     esi, edx
xor     ah, ah
mov     [esp+18h+var_18], ah
xor     ch, ch
jmp     loc_4078E3

loc_40784E:
test    edx, edx
jnz     short loc_407891
test    byte ptr [edi+0Ch], 1
jz      short loc_40785D
mov     edx, 1

loc_40785D:
mov     [esp+18h+var_18], dl
mov     byte ptr [esi], 0
jmp     short loc_407891

loc_407865:
test    byte ptr [edi+0Ch], 2
jz      short loc_407872
mov     edx, 1
jmp     short loc_407874

loc_407872:
xor     edx, edx

loc_407874:
mov     [esp+18h+var_18], dl
mov     byte ptr [esi], 1
jmp     short loc_407891

loc_40787C:
test    byte ptr [edi+0Ch], 4
jz      short loc_407889
mov     edx, 1
jmp     short loc_40788B

loc_407889:
xor     edx, edx

loc_40788B:
mov     [esp+18h+var_18], dl
mov     byte ptr [esi], 2

loc_407891:
cmp     [esp+18h+var_18], 0
jz      short loc_4078DC
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+3]
and     edx, 0FFh
sar     edx, 3
mov     [esp+18h+var_14], dl
xor     cl, cl

loc_4078AE:
cmp     cl, [esp+18h+var_14]
jnb     short loc_4078C7
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_407A2A
inc     cl
jmp     short loc_4078AE

loc_4078C7:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     ah, [edx+3]
cmp     ah, 40h ; '@'
jnb     short loc_4078DC
mov     bl, ah
inc     bl
mov     [edx+3], bl

loc_4078DC:
inc     ch
cmp     ch, 9
jnb     short loc_40790D

loc_4078E3:
xor     edx, edx
mov     dl, ch
mov     ebx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
cmp     edx, 1
jb      loc_40784E
jbe     loc_407865
cmp     edx, 2
jz      loc_40787C
jmp     short loc_407891

loc_40790D:
inc     word ptr [esi+12h]
add     esp, 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_407837 endp




sub_407919 proc near

var_10= byte ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     esi, edx
xor     ch, ch
jmp     short loc_407941

loc_407925:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     bl, [edx+3]
cmp     bl, 40h ; '@'
jnb     short loc_40793A
mov     bh, bl
inc     bh
mov     [edx+3], bh

loc_40793A:
inc     ch
cmp     ch, 9
jnb     short loc_40796F

loc_407941:
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+3]
and     edx, 0FFh
sar     edx, 3
mov     [esp+10h+var_10], dl
xor     cl, cl

loc_407957:
cmp     cl, [esp+10h+var_10]
jnb     short loc_407925
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_407A2A
inc     cl
jmp     short loc_407957

loc_40796F:
inc     word ptr [esi+12h]
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
sub_407919 endp




sub_40797A proc near

var_10= byte ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     esi, edx
xor     ch, ch
jmp     short loc_4079A2

loc_407986:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     bl, [edx+3]
cmp     bl, 40h ; '@'
jnb     short loc_40799B
mov     bh, bl
inc     bh
mov     [edx+3], bh

loc_40799B:
inc     ch
cmp     ch, 9
jnb     short loc_40796F

loc_4079A2:
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+3]
and     edx, 0FFh
sar     edx, 3
mov     [esp+10h+var_10], dl
xor     cl, cl

loc_4079B8:
cmp     cl, [esp+10h+var_10]
jnb     short loc_407986
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_407A2A
inc     cl
jmp     short loc_4079B8
sub_40797A endp




sub_4079D0 proc near

var_10= byte ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     esi, edx
xor     ch, ch
jmp     short loc_4079FC

loc_4079DC:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     bl, [edx+3]
cmp     bl, 40h ; '@'
jnb     short loc_4079F1
mov     bh, bl
inc     bh
mov     [edx+3], bh

loc_4079F1:
inc     ch
cmp     ch, 7
jnb     loc_40796F

loc_4079FC:
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+3]
and     edx, 0FFh
sar     edx, 3
mov     [esp+10h+var_10], dl
xor     cl, cl

loc_407A12:
cmp     cl, [esp+10h+var_10]
jnb     short loc_4079DC
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_407A2A
inc     cl
jmp     short loc_407A12
sub_4079D0 endp




sub_407A2A proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     cl, dl
xor     edx, edx
mov     dl, cl
shl     edx, 7
lea     edi, [eax+18h]
add     edi, edx
xor     edx, edx
mov     dl, bl
shl     edx, 4
lea     ebx, [edi+edx]
movsx   edi, byte ptr [eax]
mov     edx, ebx
call    ds:funcs_407A4C[edi*4]
xor     edi, edi
mov     di, [esi+0Ch]
and     ecx, 0FFh
mov     edx, 1
shl     edx, cl
test    edi, edx
jz      short loc_407A7C
mov     ecx, [esi+0Bh]
sar     ecx, 18h
mov     edx, [esi+14h]
mov     eax, ebx
call    ds:funcs_407A75[ecx*4]

loc_407A7C:
pop     edi
pop     esi
pop     ecx
retn
sub_407A2A endp




sub_407A80 proc near
push    ebx
push    ecx
call    rand_
mov     ebx, eax
mov     cl, [edx+4]
test    cl, cl
jnz     short loc_407ADE
mov     bl, cl
inc     bl
mov     [edx+4], bl
mov     [edx+5], cl
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
sar     eax, 2
and     eax, 7
mov     ecx, 100h
sub     ecx, eax
mov     [edx+8], cx
mov     eax, [edx]
mov     ax, [eax]
mov     [edx+0Ah], ax
mov     eax, [edx]
mov     ax, [eax+2]
mov     [edx+0Ch], ax
mov     eax, [edx]
mov     ax, [eax+4]
mov     [edx+0Eh], ax
pop     ecx
pop     ebx
retn

loc_407ADE:
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
cmp     word ptr [edx+6], 34h ; '4'
jle     short loc_407B09
cwde
mov     ecx, eax
sar     ecx, 4
and     ecx, 3
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ecx, 8
add     eax, ecx
mov     [edx+0Ch], ax

loc_407B09:
movsx   ecx, bx
sar     ecx, 6
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_407B2C
mov     byte ptr [edx+4], 0

loc_407B2C:
pop     ecx
pop     ebx
retn
sub_407A80 endp




sub_407B2F proc near
push    ebx
push    ecx
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     cl, [edx+4]
test    cl, cl
jnz     short loc_407B8A
inc     cl
mov     [edx+4], cl
mov     byte ptr [edx+5], 0
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
sar     eax, 2
and     eax, 7
mov     ecx, 100h
sub     ecx, eax
mov     [edx+8], cx
mov     eax, [edx]
mov     ax, [eax]
mov     [edx+0Ah], ax
mov     eax, [edx]
mov     ax, [eax+2]
mov     [edx+0Ch], ax
mov     eax, [edx]
mov     ax, [eax+4]
mov     [edx+0Eh], ax
pop     ecx
pop     ebx
retn

loc_407B8A:
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
add     ebx, 0Ch
sub     [edx+0Ah], bx
movsx   ecx, ax
mov     ebx, ecx
sar     ebx, 2
and     ebx, 7
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ebx, 0Ch
sub     eax, ebx
mov     [edx+0Ch], ax
sar     ecx, 4
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_407BD7
mov     byte ptr [edx+4], 0

loc_407BD7:
pop     ecx
pop     ebx
retn
sub_407B2F endp




sub_407BDA proc near
push    ebx
push    ecx
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     cl, [edx+4]
test    cl, cl
jnz     short loc_407C35
inc     cl
mov     [edx+4], cl
mov     byte ptr [edx+5], 0
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
sar     eax, 2
and     eax, 7
mov     ecx, 100h
sub     ecx, eax
mov     [edx+8], cx
mov     eax, [edx]
mov     ax, [eax]
mov     [edx+0Ah], ax
mov     eax, [edx]
mov     ax, [eax+2]
mov     [edx+0Ch], ax
mov     eax, [edx]
mov     ax, [eax+4]
mov     [edx+0Eh], ax
pop     ecx
pop     ebx
retn

loc_407C35:
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
add     ebx, 0Ch
add     [edx+0Ah], bx
movsx   ecx, ax
mov     ebx, ecx
sar     ebx, 2
and     ebx, 7
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ebx, 0Ch
sub     eax, ebx
mov     [edx+0Ch], ax
sar     ecx, 4
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_407C82
mov     byte ptr [edx+4], 0

loc_407C82:
pop     ecx
pop     ebx
retn
sub_407BDA endp




sub_407C85 proc near
push    ebx
push    ecx
call    rand_
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_407D01
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ecx, eax
xor     ch, ah
and     cl, 7
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+6], bx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 1Fh
mov     ebx, 12Ch
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 0Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
add     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, eax
sar     ebx, 6
and     ebx, 1Fh
sub     ecx, ebx
mov     [edx+0Ch], cx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 8
and     eax, 1Fh
add     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_407D01:
movsx   ecx, ax
mov     ebx, ecx
sar     ebx, 2
and     ebx, 7
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
mov     eax, [edx+8]
sar     eax, 10h
add     ebx, 0Ah
add     eax, ebx
mov     [edx+0Ah], ax
mov     ebx, ecx
sar     ebx, 4
and     ebx, 7
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ebx, 0Ah
sub     eax, ebx
mov     [edx+0Ch], ax
sar     ecx, 6
and     ecx, 0Fh
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 2Ah ; '*'
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_407D5E
mov     byte ptr [edx+4], 0

loc_407D5E:
pop     ecx
pop     ebx
retn
sub_407C85 endp




sub_407D61 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
call    rand_
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_407DD7
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 1Fh
mov     ebx, 0C8h
sub     ebx, ecx
mov     [edx+8], bx
mov     ecx, [edx]
mov     bx, [ecx]
mov     [edx+0Ah], bx
mov     ecx, [edx]
mov     ebx, [ecx]
sar     ebx, 10h
mov     ecx, eax
sar     ecx, 6
and     ecx, 1Fh
sub     ebx, ecx
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 8
and     eax, 1Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     esi
pop     ecx
pop     ebx
retn

loc_407DD7:
cmp     bl, 1
jnz     short loc_407E33
movsx   ebx, ax
mov     esi, ebx
sar     esi, 4
and     esi, 7
add     byte ptr [edx+5], 2
dec     word ptr [edx+6]
add     word ptr [edx+8], 2
mov     eax, [edx+0Ah]
sar     eax, 10h
add     esi, 2
sub     eax, esi
mov     [edx+0Ch], ax
sar     ebx, 6
and     ebx, 0Fh
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ebx, 18h
add     eax, ebx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_407E33
cmp     word ptr [ecx+12h], 0B4h
jle     short loc_407E2F
mov     byte ptr [edx+4], 2
pop     esi
pop     ecx
pop     ebx
retn

loc_407E2F:
mov     byte ptr [edx+4], 0

loc_407E33:
pop     esi
pop     ecx
pop     ebx
retn
sub_407D61 endp




sub_407E37 proc near
push    ebx
push    ecx
call    rand_
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_407E93
mov     cl, bl
inc     cl
mov     [edx+4], cl
mov     [edx+5], bl
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
sar     eax, 2
and     eax, 1Fh
mov     ecx, 50h ; 'P'
sub     ecx, eax
mov     [edx+8], cx
mov     eax, [edx]
mov     ax, [eax]
mov     [edx+0Ah], ax
mov     eax, [edx]
mov     ax, [eax+2]
mov     [edx+0Ch], ax
mov     eax, [edx]
mov     ax, [eax+4]
mov     [edx+0Eh], ax
pop     ecx
pop     ebx
retn

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

loc_40A219:
lea     ecx, [edx+14h]
lea     eax, [edx+1Ch]
mov     edx, ecx
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_40A209 endp




sub_40A229 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A24F
mov     byte ptr [ecx+0ACh], 15h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A24F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A229 endp




sub_40A253 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A279
mov     byte ptr [ecx+0ACh], 16h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A279:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A253 endp




sub_40A27D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A2A3
mov     byte ptr [ecx+0ACh], 17h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_40A2A0:
inc     byte ptr [ecx+0Ah]

loc_40A2A3:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A27D endp




sub_40A2A7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A2CE
mov     byte ptr [esi+0ACh], 18h
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_40A2CE:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE9h
mov     eax, esi
call    sub_4DD43B
mov     esi, [esi+98h]
mov     dh, [esi]
cmp     dh, 2
jz      short loc_40A2F0
cmp     dh, 25h ; '%'
jnz     short loc_40A301

loc_40A2F0:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_40A301:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A2A7 endp




sub_40A306 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 19h
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
jmp     loc_40A2A0
sub_40A306 endp




sub_40A331 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ah
jnz     short loc_40A342
inc     byte ptr [eax+0Ah]

loc_40A342:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE9h
jmp     loc_40A11F
sub_40A331 endp




sub_40A350 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A356[edx*4]
pop     edx
retn
sub_40A350 endp




sub_40A35F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A385
mov     byte ptr [ecx+0ACh], 1Ch
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_40A382:
inc     byte ptr [ecx+0Ah]

loc_40A385:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A35F endp




sub_40A389 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Ah
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 2Ch ; ','
jmp     short loc_40A382
sub_40A389 endp




sub_40A3AA proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_40A3B8
inc     byte ptr [eax+0Ah]

loc_40A3B8:
pop     edx
retn
sub_40A3AA endp




sub_40A3BA proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Fh
jnz     short loc_40A3C9
inc     byte ptr [eax+0Ah]

loc_40A3C9:
pop     edx
retn
sub_40A3BA endp




sub_40A3CB proc near
push    edx
sub     dword ptr [eax+24h], 140000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ah
jnz     short loc_40A3E6
add     word ptr [eax+22h], 30h ; '0'
inc     byte ptr [eax+0Ah]

loc_40A3E6:
pop     edx
retn
sub_40A3CB endp




sub_40A3E8 proc near
add     word ptr [eax+22h], 30h ; '0'
retn
sub_40A3E8 endp




sub_40A3EE proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_40A3F7[ecx*4]
jmp     loc_40A219
sub_40A3EE endp




sub_40A403 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     loc_40A199
mov     dword ptr [ecx+1Ch], 1F40000h
mov     dword ptr [ecx+20h], 0E5EA0000h
mov     dword ptr [ecx+24h], 0FB2C0000h
mov     byte ptr [ecx+0ACh], 1Bh
jmp     loc_40A185
sub_40A403 endp




sub_40A433 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40A43E[edx*4]
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_40A454
mov     eax, esi
call    sub_4DEADD
jmp     short loc_40A462

loc_40A454:
mov     eax, esi
call    sub_4DFC52
mov     eax, esi
call    sub_4DF795

loc_40A462:
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
sub_40A433 endp




sub_40A47A proc near
push    ebx
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_40A4B2
mov     eax, edx
call    sub_40A433
mov     eax, edx
call    sub_409FCA
jmp     short loc_40A4B9

loc_40A4B2:
mov     eax, edx
call    sub_40A060

loc_40A4B9:
mov     al, [edx+0Bh]
test    al, al
jbe     short loc_40A4F4
cmp     al, 1
jnz     short loc_40A4F4
mov     bl, [edx+0Dh]
add     bl, al
mov     [edx+0Dh], bl
cmp     bl, 4
jnz     short loc_40A4F4
mov     byte ptr [edx+0Dh], 0
mov     bx, [edx+15Eh]
add     ebx, 421h
mov     [edx+15Eh], bx
cmp     bx, 4210h
jnz     short loc_40A4F4
mov     byte ptr [edx+0Bh], 0

loc_40A4F4:
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
pop     ebx
retn
sub_40A47A endp




sub_40A515 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BA70[edx*4]
mov     ds:dword_559050, eax
xor     edx, edx
mov     ds:word_559054, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40A557:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40A515 endp




sub_40A562 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BA7C[edx*4]
mov     ds:dword_559048, eax
xor     edx, edx
mov     ds:word_55904C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40A557
sub_40A562 endp




sub_40A5A6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_559050
test    edx, edx
jz      loc_40A6B6
cmp     ds:dword_559048, 0
jz      loc_40A6B6
mov     eax, edx
inc     ds:word_559054
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559050+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40A63D
add     eax, 4
mov     ds:dword_559050, eax
cmp     word ptr [eax+2], 0
jg      short loc_40A600
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559050, eax

loc_40A600:
xor     ecx, ecx
mov     ds:word_559054, cx
mov     eax, ds:dword_559050
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

loc_40A63D:
mov     eax, ds:dword_559048
inc     ds:word_55904C
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559048+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40A6B6
add     eax, 4
mov     ds:dword_559048, eax
cmp     word ptr [eax+2], 0
jg      short loc_40A679
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
mov     ds:dword_559048, eax

loc_40A679:
xor     ebx, ebx
mov     ds:word_55904C, bx
mov     eax, ds:dword_559048
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

loc_40A6B6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A5A6 endp




sub_40A6BB proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_55905C
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A70A
cmp     dl, ds:byte_560BE4
jnz     short loc_40A70A
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40A70A
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40A70A
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A515
add     ds:dword_55905C, 6

loc_40A70A:
mov     eax, ds:dword_559058
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A744
cmp     dl, [ebx+8]
jnz     short loc_40A744
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40A744
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40A744
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A562
add     ds:dword_559058, 6

loc_40A744:
mov     eax, ecx
call    sub_40A5A6
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A6BB endp




sub_40A751 proc near
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
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     ds:dword_55905C, offset unk_50BA84
mov     ds:dword_559058, offset unk_50BA9C
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx

locret_40A7A6:
retn
sub_40A751 endp




sub_40A7A7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40A7A7 endp




sub_40A7BF proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 18h
jnz     short loc_40A7CE
inc     byte ptr [eax+0Ah]

loc_40A7CE:
pop     edx
retn
sub_40A7BF endp




sub_40A7D0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     word ptr [eax+26h], 5
mov     eax, [eax+98h]
cmp     byte ptr [eax], 36h ; '6'
jnz     short loc_40A7FA
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
add     byte ptr [ecx+57h], 8
inc     byte ptr [ecx+0Ah]

loc_40A7FA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A7D0 endp




sub_40A7FE proc near
push    edx
add     word ptr [eax+26h], 5
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Eh
jnz     short loc_40A812
inc     byte ptr [eax+0Ah]

loc_40A812:
pop     edx
retn
sub_40A7FE endp




sub_40A814 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     word ptr [eax+26h], 20h ; ' '
mov     eax, [eax+98h]
cmp     byte ptr [eax], 1Ch
jnz     short loc_40A83A
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A83A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A814 endp




sub_40A83E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
mov     dl, [eax]
cmp     dl, 4
jz      short loc_40A855
cmp     dl, 0Ch
jnz     short loc_40A866

loc_40A855:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 91h
call    sub_4D89E4

loc_40A866:
add     word ptr [ecx+26h], 20h ; ' '
pop     edx
pop     ecx
pop     ebx
retn
sub_40A83E endp




sub_40A86F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A875[edx*4]
pop     edx
retn
sub_40A86F endp




sub_40A87E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40A889[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
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
sub_40A87E endp




sub_40A8BA proc near
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_40A8EA
mov     eax, edx
call    sub_40A87E
jmp     short loc_40A8F1

loc_40A8EA:
mov     eax, edx
call    sub_40A751

loc_40A8F1:
mov     eax, edx
call    sub_40A6BB
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
retn
sub_40A8BA endp




sub_40A918 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BB94[edx*4]
mov     ds:dword_559068, eax
xor     edx, edx
mov     ds:word_55906C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40A95A:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40A918 endp




sub_40A965 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BBB8[edx*4]
mov     ds:dword_559060, eax
xor     edx, edx
mov     ds:word_559064, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40A95A
sub_40A965 endp




sub_40A9A9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_559068
test    edx, edx
jz      loc_40AACC
cmp     ds:dword_559060, 0
jz      loc_40AACC
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_40A9EC
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559068, eax
xor     ebx, ebx
mov     ds:word_55906C, bx

loc_40A9EC:
mov     eax, ds:dword_559068
inc     ds:word_55906C
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559068+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40AA4A
xor     edi, edi
mov     ds:word_55906C, di
add     eax, 4
mov     ds:dword_559068, eax
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

loc_40AA4A:
mov     eax, ds:dword_559060
cmp     word ptr [eax+2], 0
jg      short loc_40AA6E
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559060, eax
xor     ebx, ebx
mov     ds:word_559064, bx

loc_40AA6E:
mov     eax, ds:dword_559060
inc     ds:word_559064
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559060+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40AACC
xor     edi, edi
mov     ds:word_559064, di
add     eax, 4
mov     ds:dword_559060, eax
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

loc_40AACC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A9A9 endp




sub_40AAD2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_559074
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40AB21
cmp     dl, ds:byte_560BE4
jnz     short loc_40AB21
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40AB21
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40AB21
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A918
add     ds:dword_559074, 6

loc_40AB21:
mov     eax, ds:dword_559070
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40AB5B
cmp     dl, [ebx+8]
jnz     short loc_40AB5B
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40AB5B
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40AB5B
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A965
add     ds:dword_559070, 6

loc_40AB5B:
mov     eax, ecx
call    sub_40A9A9
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40AAD2 endp




sub_40AB68 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+56h], 800h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_559074, offset unk_50BBE8
mov     ds:dword_559070, offset unk_50BC2A
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40AB68 endp




sub_40ABB7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40ABB7 endp




sub_40ABD3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     dword ptr [eax+20h], 23333h
mov     eax, [eax+98h]
cmp     byte ptr [eax], 1Bh
jnz     short loc_40ABED
inc     byte ptr [ecx+0Bh]

loc_40ABED:
cmp     byte ptr [ecx+0Bh], 4
jnz     short loc_40AC04
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC04:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ABD3 endp




sub_40AC08 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 7
jnz     short loc_40AC17
inc     byte ptr [eax+0Ah]

loc_40AC17:
pop     edx
retn
sub_40AC08 endp




sub_40AC19 proc near
push    edx
add     word ptr [eax+22h], 3
mov     edx, [eax+98h]
cmp     byte ptr [edx], 11h
jnz     short loc_40AC2D
inc     byte ptr [eax+0Ah]

loc_40AC2D:
pop     edx
sub_40AC19 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_37]



sub_40AC2F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40AC35[edx*4]
pop     edx
retn
sub_40AC2F endp




sub_40AC3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC5A
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC5A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC3E endp




sub_40AC5E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC7A
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC7A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC5E endp




sub_40AC7E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC9A
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC9A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC7E endp




sub_40AC9E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACBA
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACBA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC9E endp




sub_40ACBE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACDA
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACDA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACBE endp




sub_40ACDE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACFA
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACFA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACDE endp




sub_40ACFE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AD1A
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AD1A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACFE endp




sub_40AD1E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AD3A
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B

loc_40AD37:
inc     byte ptr [ecx+0Ah]

loc_40AD3A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AD1E endp




sub_40AD3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 1Ah
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
jmp     short loc_40AD37
sub_40AD3E endp




sub_40AD55 proc near
push    edx
inc     byte ptr [eax+0Ch]
mov     edx, [eax+98h]
cmp     byte ptr [edx], 10h
jnz     short loc_40AD67
inc     byte ptr [eax+0Ah]

loc_40AD67:
pop     edx
retn
sub_40AD55 endp




sub_40AD69 proc near
push    edx
add     dword ptr [eax+24h], 268000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 18h
jnz     short loc_40AD7F
inc     byte ptr [eax+0Ah]

loc_40AD7F:
pop     edx
sub_40AD69 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_38]



sub_40AD81 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40AD87[edx*4]
pop     edx
retn
sub_40AD81 endp




sub_40AD90 proc near
cmp     byte ptr [eax+8], 0
jz      sub_40AB68
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40ADA3[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40ADC2
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40ADC2:
pop     edx
pop     ecx
retn
sub_40AD90 endp




sub_40ADC5 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+3], 0
jnz     short loc_40ADDC
mov     eax, edx
call    sub_40AD90
mov     eax, edx
call    sub_40AAD2

loc_40ADDC:
pop     edx
retn
sub_40ADC5 endp




sub_40ADDE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
movzx   esi, byte ptr [eax+8]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_40AE1D[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_40B3A2
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_40AE52
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40AE59

loc_40AE52:
mov     eax, ecx
call    sub_4DEADD

loc_40AE59:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40ADDE endp




sub_40AE60 proc near
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
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B370
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B389
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_40AE60 endp

jpt_40AF14 dd offset loc_40AF1B ; jump table for switch statement
dd offset loc_40AF3F
dd offset loc_40AF7A
dd offset loc_40AFF8
dd offset loc_40B031
dd offset loc_40B0A6
dd offset loc_40B0CC
dd offset loc_40B10E
dd offset loc_40B168
dd offset loc_40B196
dd offset loc_40B1B4



sub_40AEFA proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, edx
mov     edi, ebx
mov     al, [eax+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_40AF14      ; jumptable 0040AF14 default case
and     eax, 0FFh
jmp     jpt_40AF14[eax*4] ; switch jump

loc_40AF1B:             ; jumptable 0040AF14 case 0
mov     byte ptr [esi+0ADh], 0FFh
mov     ah, [edx+4]
cmp     ah, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     ah, [edx+5]
jnz     def_40AF14      ; jumptable 0040AF14 default case
add     [esi+9], ah
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AF3F:             ; jumptable 0040AF14 case 1
xor     ecx, ecx
mov     ebx, 0FFFFFFDCh
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ch, [ebp+9]
cmp     ch, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+2], 0
add     [esi+9], ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AF7A:             ; jumptable 0040AF14 case 2
cmp     byte ptr [esi+0A4h], 37h ; '7'
jnb     short loc_40AF96
xor     ecx, ecx
mov     ebx, 0FFFFFFE8h
mov     edx, 8
mov     eax, esi
call    sub_4DD43B

loc_40AF96:
cmp     byte ptr [ebp+9], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, [ebp+10h]
cmp     ebx, 4Bh ; 'K'
jnz     short loc_40AFBB
mov     ebx, 8

loc_40AFAD:
mov     edx, edi
mov     eax, esi
call    sub_40B370
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AFBB:
cmp     ebx, 0AAh
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 1
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 12h

loc_40AFEA:
mov     word ptr [edi+2], 0

loc_40AFF0:
inc     byte ptr [esi+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AFF8:             ; jumptable 0040AF14 case 3
cmp     byte ptr [edx+9], 3
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 2Dh ; '-'
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 2
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 2
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 13h
jmp     short loc_40AFEA

loc_40B031:             ; jumptable 0040AF14 case 4
cmp     byte ptr [edx+9], 3
jnz     short loc_40B06A
mov     ebx, [edx+10h]
cmp     ebx, 55h ; 'U'
jnz     short loc_40B046
mov     ebx, 6
jmp     short loc_40B061

loc_40B046:
cmp     ebx, 0B4h
jnz     short loc_40B06A
mov     ebx, 0Ah
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 2

loc_40B061:
mov     edx, edi
mov     eax, esi
call    sub_40B389

loc_40B06A:
cmp     byte ptr [ebp+9], 4
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 0Bh
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 14h
jmp     loc_40AFEA

loc_40B0A6:             ; jumptable 0040AF14 case 5
cmp     byte ptr [esi+0A4h], 19h
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 14h
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [edi+2], 19h
jmp     loc_40AFF0

loc_40B0CC:             ; jumptable 0040AF14 case 6
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ebx+2], 19h
cmp     byte ptr [edx+9], 4
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 28h ; '('
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 3
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 8
mov     edx, edi
mov     eax, esi
call    sub_40B389
jmp     loc_40AFF0

loc_40B10E:             ; jumptable 0040AF14 case 7
cmp     byte ptr [edx+9], 4
jnz     short loc_40B12D
cmp     dword ptr [edx+10h], 46h ; 'F'
jnz     short loc_40B12D
mov     ebx, 3
mov     edx, edi
mov     eax, esi
call    sub_40B389
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40B12D:
cmp     byte ptr [ebp+9], 5
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     edx, [ebp+10h]
cmp     edx, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, edx
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 4
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 15h
jmp     loc_40AFEA

loc_40B168:             ; jumptable 0040AF14 case 8
cmp     byte ptr [edx+9], 5
jnz     short loc_40B17E
cmp     dword ptr [edx+10h], 14h
jnz     short loc_40B17E
mov     ebx, 0Ch
jmp     loc_40AFAD

loc_40B17E:
cmp     byte ptr [ebp+9], 6
jnz     short def_40AF14 ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 2
jnz     short def_40AF14 ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 0
jmp     loc_40AFEA

loc_40B196:             ; jumptable 0040AF14 case 9
cmp     byte ptr [edx+9], 6
jnz     short def_40AF14 ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 0Ah
jnz     short def_40AF14 ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ebx+2], 0
jmp     loc_40AFF0

loc_40B1B4:             ; jumptable 0040AF14 case 10
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [ebp+8], 1
jnz     short def_40AF14 ; jumptable 0040AF14 default case
xor     ebx, ebx
mov     edx, edi
mov     eax, esi
call    sub_40B370
xor     ebx, ebx
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 16h
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

def_40AF14:             ; jumptable 0040AF14 default case
pop     ebp

def_40B22B:             ; jumptable 0040B22B default case, case 7
pop     edi
pop     esi
pop     ecx
retn
sub_40AEFA endp

db 8Dh, 40h, 0
jpt_40B22B dd offset loc_40B232 ; jump table for switch statement
dd offset loc_40B23B
dd offset loc_40B26F
dd offset loc_40B29F
dd offset loc_40B2C2
dd offset loc_40B311
dd offset loc_40B337
dd offset def_40B22B



sub_40B216 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 7           ; switch 8 cases
ja      short def_40B22B ; jumptable 0040B22B default case, case 7
xor     ebx, ebx
mov     bl, dl
jmp     jpt_40B22B[ebx*4] ; switch jump

loc_40B232:             ; jumptable 0040B22B case 0
inc     dl
mov     [ecx+9], dl
pop     edi
pop     esi
pop     ecx
retn

loc_40B23B:             ; jumptable 0040B22B case 1
cmp     byte ptr [eax+9], 2
jnz     short def_40B22B ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 1
jnz     short def_40B22B ; jumptable 0040B22B default case, case 7
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B370
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B389
mov     byte ptr [ecx+0ACh], 17h
jmp     loc_40B30A

loc_40B26F:             ; jumptable 0040B22B case 2
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 14h
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40B389
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0ACh], 18h
pop     edi
pop     esi
pop     ecx
retn

loc_40B29F:             ; jumptable 0040B22B case 3
cmp     byte ptr [ecx+0A4h], 0Bh
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     byte ptr [ecx+0ACh], 18h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Bh
jmp     short loc_40B30A

loc_40B2C2:             ; jumptable 0040B22B case 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Bh
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     edi, [eax+10h]
cmp     edi, 50h ; 'P'
jnz     short loc_40B2F3
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B389
pop     edi
pop     esi
pop     ecx
retn

loc_40B2F3:
cmp     edi, 64h ; 'd'
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7

loc_40B2FC:
mov     ebx, 0Dh
mov     edx, esi
mov     eax, ecx
call    sub_40B370

loc_40B30A:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_40B311:             ; jumptable 0040B22B case 5
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 0A0h
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     byte ptr [ecx+0ACh], 1Ah
mov     word ptr [esi+2], 0
jmp     short loc_40B2FC

loc_40B337:             ; jumptable 0040B22B case 6
cmp     byte ptr [eax+9], 4
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 1
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40B370
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40B389
mov     byte ptr [ecx+0ACh], 19h
jmp     short loc_40B30A
sub_40B216 endp




sub_40B370 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50BDE9[ebx*4]
mov     [edx+4], eax
retn
sub_40B370 endp




sub_40B389 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50BE21[ebx*4]
mov     [edx+8], eax
retn
sub_40B389 endp




sub_40B3A2 proc near
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
jb      short loc_40B3C7
jbe     short loc_40B3CA
cmp     al, 7Fh
jnz     short loc_40B3C7
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40B3CA

loc_40B3C7:
inc     byte ptr [esi+0Eh]

loc_40B3CA:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40B40C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40B40C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40B42F
jbe     short loc_40B432
cmp     al, 7Fh
jnz     short loc_40B42F
mov     byte ptr [esi+11h], 0
jmp     short loc_40B432

loc_40B42F:
inc     byte ptr [esi+11h]

loc_40B432:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40B474
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40B474:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40B3A2 endp




sub_40B47F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+670h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40B48F[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40B4A3
mov     eax, ecx
call    sub_4DEADD

loc_40B4A3:
mov     edx, ebx
mov     eax, ecx
call    sub_40B7EE
pop     edx
pop     ecx
pop     ebx
retn
sub_40B47F endp




sub_40B4B0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+670h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B4D7
mov     word ptr [ecx+56h], 0C00h
jmp     short loc_40B4DD

loc_40B4D7:
mov     word ptr [ecx+56h], 800h

loc_40B4DD:
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 0
xor     eax, eax

loc_40B502:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 18h
jb      short loc_40B502
or      byte ptr [ecx+23Fh], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
mov     byte ptr [ecx+10Bh], 0
mov     byte ptr [ecx+117h], 0
mov     byte ptr [ecx+143h], 0FFh
mov     byte ptr [ecx+147h], 0FFh
mov     byte ptr [ecx+14Bh], 0FFh
mov     byte ptr [ecx+14Fh], 0FFh
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40B4B0 endp




sub_40B570 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B592
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_40B592:
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B59F
add     word ptr [ecx+14h], 3
jmp     short loc_40B5A4

loc_40B59F:
add     word ptr [ecx+18h], 3

loc_40B5A4:
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
jmp     loc_40B678
sub_40B570 endp




sub_40B5C3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B5EC
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40B5EC:
cmp     dword ptr [esi+10h], 4Bh ; 'K'
jnz     loc_40B678
mov     ebx, 1
mov     edx, edi
mov     eax, ecx
call    sub_40B7AE
jmp     loc_40B678
sub_40B5C3 endp




sub_40B609 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B64E
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+10Bh], 0FFh
mov     byte ptr [ecx+117h], 0FFh
mov     byte ptr [ecx+143h], 0
mov     byte ptr [ecx+147h], 0
inc     byte ptr [ecx+0Ah]

loc_40B64E:
mov     eax, [edi+10h]
cmp     eax, 0C9h
jb      short loc_40B663
jbe     short loc_40B67E
cmp     eax, 0CDh
jz      short loc_40B685
jmp     short loc_40B678

loc_40B663:
cmp     eax, 0BFh
jnz     short loc_40B678
mov     ebx, 2

loc_40B66F:
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE

loc_40B678:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40B67E:
mov     ebx, 3
jmp     short loc_40B66F

loc_40B685:
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
mov     byte ptr [ecx+14Bh], 0
mov     byte ptr [ecx+14Fh], 0
jmp     short loc_40B678
sub_40B609 endp




sub_40B6A3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B6D4
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
inc     byte ptr [ecx+0Ah]

loc_40B6D4:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40B6A3 endp




sub_40B6D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B757
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B6FF
mov     word ptr [ecx+56h], 100h
jmp     short loc_40B705

loc_40B6FF:
mov     word ptr [ecx+56h], 400h

loc_40B705:
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+117h], 0
mov     al, [ecx+117h]
mov     [ecx+10Bh], al
mov     byte ptr [ecx+14Bh], 0FFh
mov     al, [ecx+14Bh]
mov     [ecx+147h], al
mov     [ecx+143h], al
mov     byte ptr [ecx+14Fh], 0FFh
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
inc     byte ptr [ecx+0Ah]

loc_40B757:
mov     eax, [edi+10h]
cmp     eax, 5Ah ; 'Z'
jb      short loc_40B780
jbe     short loc_40B7A4
cmp     eax, 8Ch
jb      short loc_40B776
jbe     short loc_40B7A4
cmp     eax, 0A0h
jz      short loc_40B790
jmp     loc_40B678

loc_40B776:
cmp     eax, 7Ch ; '|'

loc_40B779:
jz      short loc_40B79A
jmp     loc_40B678

loc_40B780:
cmp     eax, 1Eh
jb      loc_40B678
jbe     short loc_40B790
cmp     eax, 46h ; 'F'
jmp     short loc_40B779

loc_40B790:
mov     ebx, 6
jmp     loc_40B66F

loc_40B79A:
mov     ebx, 7
jmp     loc_40B66F

loc_40B7A4:
mov     ebx, 8
jmp     loc_40B66F
sub_40B6D9 endp




sub_40B7AE proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50BF48[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50BF6C[eax*4]
mov     [edx+10h], eax
retn
sub_40B7AE endp




sub_40B7EE proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40B81A
jbe     short loc_40B81E
cmp     ax, 7FFFh
jnz     short loc_40B81A
mov     word ptr [edx+4], 0
jmp     short loc_40B81E

loc_40B81A:
inc     word ptr [esi+4]

loc_40B81E:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_40B863
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40B863:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40B88E
jbe     short loc_40B892
cmp     ax, 7FFFh
jnz     short loc_40B88E
mov     word ptr [esi+0Ah], 0
jmp     short loc_40B892

loc_40B88E:
inc     word ptr [esi+0Ah]

loc_40B892:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_40B8E1
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40B8E1:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40B7EE endp




sub_40B8EE proc near
push    ebx
push    ecx
push    edx
xor     ebx, ebx
mov     bl, [eax+3]
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, ecx
shl     edx, 2
mov     ecx, ds:off_50BFA0[ebx*4]
add     ecx, edx
lea     ebx, [eax+640h]
mov     edx, offset dword_560BDC
call    dword ptr [ecx]
pop     edx
pop     ecx
pop     ebx
retn
sub_40B8EE endp




sub_40B91A proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 1
jb      short loc_40B938
jbe     short loc_40B968
cmp     dl, 2
jz      loc_40B9FE
pop     esi
pop     ecx
retn

loc_40B938:
test    dl, dl
jnz     loc_40BA95
mov     [ebx+12h], dl
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C646
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C755
inc     byte ptr [ecx+9]
pop     esi
pop     ecx
retn

loc_40B968:
mov     bh, [eax+9]
cmp     bh, 1
jnz     short loc_40B998
mov     edx, [eax+10h]
cmp     edx, 1
jnz     short loc_40B98B

loc_40B978:
mov     ebx, 11h

loc_40B97D:
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
jmp     loc_40B9F2

loc_40B98B:
cmp     edx, 23h ; '#'
jnz     loc_40B9F2

loc_40B994:
xor     ebx, ebx
jmp     short loc_40B97D

loc_40B998:
cmp     bh, 2
jnz     loc_40B9F2
mov     eax, [eax+10h]
cmp     eax, 87h
jb      short loc_40B9D1
jbe     short loc_40B994
cmp     eax, 0E6h
jb      short loc_40B9C8
jbe     short loc_40B994
cmp     eax, 0FFh
jb      short loc_40B9F2
jbe     short loc_40B978
cmp     eax, 12Ch
jz      short loc_40B9E4
jmp     short loc_40B9F2

loc_40B9C8:
cmp     eax, 0D2h

loc_40B9CD:
jz      short loc_40B978
jmp     short loc_40B9F2

loc_40B9D1:
cmp     eax, 41h ; 'A'
jb      short loc_40B9DD
jbe     short loc_40B994
cmp     eax, 50h ; 'P'
jmp     short loc_40B9CD

loc_40B9DD:
cmp     eax, 14h
jnz     short loc_40B9F2
jmp     short loc_40B978

loc_40B9E4:
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
inc     byte ptr [ecx+9]

loc_40B9F2:
mov     edx, esi
mov     eax, ecx
call    sub_40C755
pop     esi
pop     ecx
retn

loc_40B9FE:
cmp     byte ptr [eax+9], 8
jnz     loc_40BA95
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_40C646
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C678
mov     byte ptr [esi+12h], 1

loc_40BA72:
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     ebx, [esi]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B

loc_40BA95:
pop     esi
pop     ecx
retn
sub_40B91A endp

db 8Bh, 0C0h
jpt_40BB24 dd offset loc_40BB2B ; jump table for switch statement
dd offset loc_40BB4B
dd offset loc_40BBFA
dd offset loc_40BC34
dd offset loc_40BCC4
dd offset loc_40BD63
dd offset loc_40BDA1
dd offset loc_40BE2A
dd offset loc_40BE7D
dd offset loc_40BEDF
dd offset loc_40BF40
dd offset loc_40BF65
dd offset loc_40BF95
dd offset loc_40C002
dd offset loc_40C066
dd offset loc_40C080
dd offset loc_40C0B9



sub_40BADE proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     eax, edx
mov     [esp+14h+var_14], ebx
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
mov     dl, [ebp+9]
cmp     dl, 10h         ; switch 17 cases
ja      def_40BB24      ; jumptable 0040BB24 default case
and     edx, 0FFh
jmp     jpt_40BB24[edx*4] ; switch jump

loc_40BB2B:             ; jumptable 0040BB24 case 0
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 9
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1

loc_40BB40:             ; jumptable 0040BB24 default case
jnz     def_40BB24
jmp     loc_40BD5B

loc_40BB4B:             ; jumptable 0040BB24 case 1
mov     dl, [eax+9]
cmp     dl, 9
jnz     short loc_40BB8F
mov     eax, [eax+10h]
cmp     eax, 14h
jb      short loc_40BB72
jbe     short loc_40BB85
cmp     eax, 3Ch ; '<'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BB7B
cmp     eax, 64h ; 'd'
jz      short loc_40BB85
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BB72:
cmp     eax, 0Ah
jnz     def_40BB24      ; jumptable 0040BB24 default case

loc_40BB7B:
mov     ebx, 11h
jmp     loc_40C10A

loc_40BB85:
mov     ebx, 1
jmp     loc_40C10A

loc_40BB8F:
cmp     dl, 0Ch
jnz     short loc_40BBB0
cmp     dword ptr [eax+10h], 1
jnz     short loc_40BBB0
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
xor     ebx, ebx
jmp     loc_40C10A

loc_40BBB0:
cmp     byte ptr [eax+9], 0Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 12Ch
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 0Eh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 12h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 11h

loc_40BBEC:
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
jmp     loc_40BD5B

loc_40BBFA:             ; jumptable 0040BB24 case 2
cmp     byte ptr [eax+9], 0Fh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     edi, [eax+10h]
cmp     edi, 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, edi
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 12h
jmp     short loc_40BBEC

loc_40BC34:             ; jumptable 0040BB24 case 3
mov     bl, [eax+9]
cmp     bl, 0Fh
jnz     short loc_40BC71
mov     eax, [eax+10h]
cmp     eax, 14h
jb      short loc_40BC54
jbe     short loc_40BC6A
cmp     eax, 28h ; '('
jb      short loc_40BC9D
jbe     short loc_40BC59
cmp     eax, 50h ; 'P'
jz      short loc_40BC6A
jmp     short loc_40BC9D

loc_40BC54:
cmp     eax, 5
jnz     short loc_40BC9D

loc_40BC59:
mov     ebx, 11h

loc_40BC5E:
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40BC9D

loc_40BC6A:
mov     ebx, 1
jmp     short loc_40BC5E

loc_40BC71:
cmp     bl, 11h
jnz     short loc_40BC9D
cmp     dword ptr [eax+10h], 1
jnz     short loc_40BC9D
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
inc     byte ptr [ebp+9]

loc_40BC9D:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      def_40BB24      ; jumptable 0040BB24 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Ah ; '*'
mov     eax, ebp
call    sub_4DD43B
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BCC4:             ; jumptable 0040BB24 case 4
mov     ch, [eax+9]
cmp     ch, 11h
jnz     short loc_40BD24
mov     ecx, [eax+10h]
cmp     ecx, 0Ah
jnz     short loc_40BCE8
mov     ebx, 0Fh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BCE8:
cmp     ecx, 1Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 14h
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BD24:
cmp     ch, 12h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     word ptr [ebp+56h], 700h
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 2

loc_40BD51:
mov     edx, [esp+14h+var_14]

loc_40BD54:
mov     eax, ebp
call    sub_40C65F

loc_40BD5B:
inc     byte ptr [ebp+9]
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BD63:             ; jumptable 0040BB24 case 5
cmp     byte ptr [eax+9], 13h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 0Ah
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 5
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 15h
jmp     loc_40BBEC

loc_40BDA1:             ; jumptable 0040BB24 case 6
mov     dl, [eax+9]
cmp     dl, 13h
jnz     short loc_40BDED
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_40BDC9
jbe     short loc_40BDD9
cmp     eax, 50h ; 'P'
jb      short loc_40BDC4
jbe     short loc_40BDD9
cmp     eax, 78h ; 'x'

loc_40BDBD:
jz      short loc_40BDE3
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BDC4:
cmp     eax, 37h ; '7'
jmp     short loc_40BDBD

loc_40BDC9:
cmp     eax, 0Fh
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BDD9
cmp     eax, 1Eh
jmp     short loc_40BDBD

loc_40BDD9:
mov     ebx, 13h
jmp     loc_40C10A

loc_40BDE3:
mov     ebx, 2
jmp     loc_40C10A

loc_40BDED:
cmp     dl, 15h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 16h
jmp     loc_40BBEC

loc_40BE2A:             ; jumptable 0040BB24 case 7
cmp     byte ptr [eax+9], 15h
jnz     short loc_40BE54
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_40BE54
mov     ebx, 0Eh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 13h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F

loc_40BE54:
cmp     byte ptr [ebp+0A4h], 0Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 16h
mov     byte ptr [ebp+0ADh], 0FFh

loc_40BE6F:
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0Eh
jmp     loc_40BD5B

loc_40BE7D:             ; jumptable 0040BB24 case 8
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 15h
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     eax, [eax+10h]
cmp     eax, 32h ; '2'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BEA6
cmp     eax, 46h ; 'F'
jz      short loc_40BEBF
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BEA6:
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 15h
jmp     loc_40C10A

loc_40BEBF:
mov     ebx, 11h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 16h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40BE6F

loc_40BEDF:             ; jumptable 0040BB24 case 9
cmp     byte ptr [eax+9], 15h
jnz     short loc_40BF04
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_40BF04
mov     ebx, 7
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 5
jmp     loc_40C10A

loc_40BF04:
cmp     byte ptr [eax+9], 16h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 17h
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
mov     ebx, 2
mov     edx, eax
mov     eax, ebp
call    sub_40C646
mov     ebx, 6
jmp     loc_40BD51

loc_40BF40:             ; jumptable 0040BB24 case 10
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 17h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 69h ; 'i'
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 11h
jmp     loc_40BD51

loc_40BF65:             ; jumptable 0040BB24 case 11
cmp     byte ptr [ebp+0A4h], 8
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 17h
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 8
mov     ebx, 6
mov     edx, eax
jmp     loc_40BD54

loc_40BF95:             ; jumptable 0040BB24 case 12
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [eax+10h]
cmp     eax, 0D2h
jb      short loc_40BFC5
jbe     loc_40BB7B
cmp     eax, 104h
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BFDF
cmp     eax, 118h
jz      short loc_40BFE9
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BFC5:
cmp     eax, 78h ; 'x'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     loc_40BB7B
cmp     eax, 0BEh
jnz     def_40BB24      ; jumptable 0040BB24 default case

loc_40BFDF:
mov     ebx, 6
jmp     loc_40C10A

loc_40BFE9:
mov     ebx, 8
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 17h
jmp     loc_40BD51

loc_40C002:             ; jumptable 0040BB24 case 13
cmp     byte ptr [eax+9], 17h
jnz     short loc_40C01B
cmp     dword ptr [eax+10h], 122h
jnz     short loc_40C01B
mov     ebx, 7
jmp     loc_40C10A

loc_40C01B:
mov     dl, [eax+9]
cmp     dl, 18h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     [ebp+0ACh], dl
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
mov     byte ptr [ebp+108h], 14h
mov     byte ptr [ebp+114h], 15h
mov     ebx, 9
mov     edx, eax
mov     eax, ebp
call    sub_40C646
mov     ebx, 9
jmp     loc_40BD51

loc_40C066:             ; jumptable 0040BB24 case 14
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 19h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 5
jmp     loc_40BB40

loc_40C080:             ; jumptable 0040BB24 case 15
cmp     byte ptr [eax+9], 1Dh
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 5
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 19h
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 0Ah
mov     eax, ebp
call    sub_40C646
mov     ebx, 0Ah
jmp     loc_40BD51

loc_40C0B9:             ; jumptable 0040BB24 case 16
cmp     byte ptr [eax+9], 20h ; ' '
jnz     short def_40BB24 ; jumptable 0040BB24 default case
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_40C0D7
jbe     short loc_40C0FE
cmp     eax, 3Ch ; '<'
jb      short def_40BB24 ; jumptable 0040BB24 default case
jbe     short loc_40C0F7
cmp     eax, 55h ; 'U'
jz      short loc_40C105
jmp     short def_40BB24 ; jumptable 0040BB24 default case

loc_40C0D7:
cmp     eax, 1Eh
jnz     short def_40BB24 ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 1Ah
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 12h
mov     eax, ebp
call    sub_40C646

loc_40C0F7:
mov     ebx, 18h
jmp     short loc_40C10A

loc_40C0FE:
mov     ebx, 0Bh
jmp     short loc_40C10A

loc_40C105:
mov     ebx, 0Bh

loc_40C10A:
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F

def_40BB24:             ; jumptable 0040BB24 default case
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C678
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_40C141
mov     ebx, [esp+14h+var_14]
mov     ebx, [ebx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_40C148

loc_40C141:
mov     eax, ebp
call    sub_4DEADD

loc_40C148:
mov     eax, [esp+14h+var_14]
cmp     byte ptr [eax+12h], 0
jz      short loc_40C164
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40C164:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40BADE endp




sub_40C16C proc near
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
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1Ah
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     byte ptr [ebx+12h], 1
mov     byte ptr [ecx+108h], 14h
mov     byte ptr [ecx+114h], 15h
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40C646
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C678
jmp     loc_40BA72
sub_40C16C endp

jpt_40C283 dd offset loc_40C28A ; jump table for switch statement
dd offset loc_40C2B7
dd offset loc_40C2D7
dd offset loc_40C30A
dd offset loc_40C326
dd offset loc_40C338
dd offset loc_40C3F5
dd offset loc_40C44C
dd offset loc_40C46B
dd offset loc_40C477
dd offset loc_40C4AB
dd offset loc_40C50B
dd offset loc_40C535
dd offset loc_40C583
dd offset loc_40C59A
dd offset loc_40C5BB
dd offset loc_40C5D7
dd offset def_40C283



sub_40C23E proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     [esp+18h+var_14], ebx
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
mov     al, [ebp+9]
cmp     al, 11h         ; switch 18 cases
ja      def_40C283      ; jumptable 0040C283 default case, case 17
xor     edx, edx
mov     dl, al
jmp     jpt_40C283[edx*4] ; switch jump

loc_40C28A:             ; jumptable 0040C283 case 0
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 5
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Bh

loc_40C2A8:
mov     eax, [esp+18h+var_14]
mov     word ptr [eax+2], 0
jmp     loc_40C413

loc_40C2B7:             ; jumptable 0040C283 case 1
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 6
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Ch
jmp     short loc_40C2A8

loc_40C2D7:             ; jumptable 0040C283 case 2
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 6
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 0A0h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Dh
mov     ebx, 13h
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
jmp     short loc_40C2A8

loc_40C30A:             ; jumptable 0040C283 case 3
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 0Dh
jmp     loc_40C3E8

loc_40C326:             ; jumptable 0040C283 case 4
mov     byte ptr [ebp+0ACh], 1Eh

loc_40C32D:
mov     word ptr [ebx+2], 0
jmp     loc_40C413

loc_40C338:             ; jumptable 0040C283 case 5
mov     eax, [esp+18h+var_18]
mov     dl, [eax+9]
cmp     dl, 6
jnz     short loc_40C3A7
mov     eax, [eax+10h]
cmp     eax, 0E6h
jb      short loc_40C368
jbe     short loc_40C38D
cmp     eax, 0FAh
jb      def_40C283      ; jumptable 0040C283 default case, case 17
jbe     short loc_40C383
cmp     eax, 113h
jz      short loc_40C39D
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C368:
cmp     eax, 0C8h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 10h
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646

loc_40C383:
mov     ebx, 19h
jmp     loc_40C4E8

loc_40C38D:
mov     ebx, 0Ch
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646

loc_40C39D:
mov     ebx, 0Dh
jmp     loc_40C4E8

loc_40C3A7:
cmp     dl, 7
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Fh
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     byte ptr [ebp+108h], 4
mov     byte ptr [ebp+114h], 7
mov     ebx, 2
mov     eax, ebp
call    sub_40C646

loc_40C3E3:
mov     ebx, 4

loc_40C3E8:
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40C413

loc_40C3F5:             ; jumptable 0040C283 case 6
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 8
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 0Ah

loc_40C40D:             ; jumptable 0040C283 default case, case 17
jnz     def_40C283

loc_40C413:
inc     byte ptr [ebp+9]

def_40C283:             ; jumptable 0040C283 default case, case 17
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C678
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      loc_40C61A
mov     ebx, [esp+18h+var_14]
mov     ebx, [ebx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     loc_40C621

loc_40C44C:             ; jumptable 0040C283 case 7
mov     eax, [esp+18h+var_18]
mov     ebx, [eax+10h]
cmp     ebx, 32h ; '2'
jnz     short loc_40C461
mov     ebx, 13h
jmp     loc_40C4E8

loc_40C461:
cmp     ebx, 41h ; 'A'
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
jmp     loc_40C3E3

loc_40C46B:             ; jumptable 0040C283 case 8
mov     byte ptr [ebp+0ACh], 20h ; ' '
jmp     loc_40C32D

loc_40C477:             ; jumptable 0040C283 case 9
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 21h ; '!'
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 0Dh
mov     eax, ebp
call    sub_40C646
mov     ebx, 0Eh
jmp     loc_40C3E8

loc_40C4AB:             ; jumptable 0040C283 case 10
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     esi, [eax+10h]
cmp     esi, 0Ah
jnz     short loc_40C4DE
mov     ebx, 6
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 1Ah
jmp     short loc_40C4E8

loc_40C4DE:
cmp     esi, 1Eh
jnz     short loc_40C4F8

loc_40C4E3:
mov     ebx, 0Fh

loc_40C4E8:
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C4F8:
cmp     esi, 3Ch ; '<'
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 1Ah
jmp     loc_40C3E8

loc_40C50B:             ; jumptable 0040C283 case 11
cmp     byte ptr [ebp+0A4h], 0Dh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 21h ; '!'
mov     byte ptr [ebp+114h], 16h
mov     eax, [esp+18h+var_14]
mov     word ptr [eax+2], 0Dh
jmp     loc_40C413

loc_40C535:             ; jumptable 0040C283 case 12
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     short loc_40C54B
cmp     dword ptr [eax+10h], 55h ; 'U'
jz      short loc_40C4E3

loc_40C54B:
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Bh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+114h], 7
mov     ebx, 2
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 10h
jmp     loc_40C3E8

loc_40C583:             ; jumptable 0040C283 case 13
cmp     byte ptr [ebp+0A4h], 12h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
inc     al
mov     [ebp+9], al
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C59A:             ; jumptable 0040C283 case 14
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     loc_40C40D

loc_40C5BB:             ; jumptable 0040C283 case 15
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     byte ptr [ebp+0ACh], 1
jmp     loc_40C2A8

loc_40C5D7:             ; jumptable 0040C283 case 16
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     ah, [ebp+0A4h]
cmp     ah, 3
jz      short loc_40C5F7
cmp     ah, 0Bh
jnz     short loc_40C604

loc_40C5F7:
lea     edx, [ebp+14h]
mov     eax, 91h
call    sub_4D8BC3

loc_40C604:
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ch
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jmp     loc_40C40D

loc_40C61A:
mov     eax, ebp
call    sub_4DEADD

loc_40C621:
mov     eax, [esp+18h+var_14]
cmp     byte ptr [eax+12h], 0
jz      short loc_40C63E
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40C63E:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40C23E endp




sub_40C646 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50C156[ebx*4]
mov     [edx+4], eax
retn
sub_40C646 endp




sub_40C65F proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50C1A6[ebx*4]
mov     [edx+8], eax
retn
sub_40C65F endp




sub_40C678 proc near
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
jb      short loc_40C69D
jbe     short loc_40C6A0
cmp     al, 7Fh
jnz     short loc_40C69D
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40C6A0

loc_40C69D:
inc     byte ptr [esi+0Eh]

loc_40C6A0:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40C6E2
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40C6E2:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40C705
jbe     short loc_40C708
cmp     al, 7Fh
jnz     short loc_40C705
mov     byte ptr [esi+11h], 0
jmp     short loc_40C708

loc_40C705:
inc     byte ptr [esi+11h]

loc_40C708:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40C74A
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40C74A:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40C678 endp




sub_40C755 proc near
push    ebx
push    ecx
mov     eax, offset byte_5F8364
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     ebx, [edx+4]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_40C77B
jbe     short loc_40C77E
cmp     bl, 7Fh
jnz     short loc_40C77B
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40C77E

loc_40C77B:
inc     byte ptr [edx+0Eh]

loc_40C77E:
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     ebx, [edx+4]
mov     bl, [ecx+ebx]
mov     [edx+0Ch], bl
mov     [edx+0Dh], bl
mov     [eax+168h], bl
mov     ecx, [edx+0Eh]
sar     ecx, 18h
mov     ebx, [edx+8]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_40C7B5
jbe     short loc_40C7B8
cmp     bl, 7Fh
jnz     short loc_40C7B5
mov     byte ptr [edx+11h], 0
jmp     short loc_40C7B8

loc_40C7B5:
inc     byte ptr [edx+11h]

loc_40C7B8:
mov     ecx, [edx+0Eh]
sar     ecx, 18h
mov     ebx, [edx+8]
mov     bl, [ecx+ebx]
mov     [edx+0Fh], bl
mov     [edx+10h], bl
mov     [eax+169h], bl
pop     ecx
pop     ebx
retn
sub_40C755 endp




sub_40C7D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559084, dx
mov     eax, ds:dword_559080
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40C80F:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40C7D3 endp




sub_40C81B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55907C, dx
mov     eax, ds:dword_559078
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40C80F
sub_40C81B endp




sub_40C859 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559080
test    ecx, ecx
jz      loc_40C8FF
cmp     ds:dword_559078, 0
jz      loc_40C8FF
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40C8BB
jge     short loc_40C893
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40C8AF

loc_40C893:
inc     ds:word_559084
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559080+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40C8BB
add     eax, 4

loc_40C8AF:
mov     ds:dword_559080, eax
mov     eax, edx
call    sub_40C7D3

loc_40C8BB:
mov     eax, ds:dword_559078
mov     di, [eax+2]
test    di, di
jz      short loc_40C8FF
jge     short loc_40C8D7
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40C8F3

loc_40C8D7:
inc     ds:word_55907C
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559078+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40C8FF
add     eax, 4

loc_40C8F3:
mov     ds:dword_559078, eax
mov     eax, edx
call    sub_40C81B

loc_40C8FF:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40C859 endp




sub_40C904 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_55908C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40C95E
cmp     bl, ds:byte_560BE4
jnz     short loc_40C95E
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40C95E
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40C95E
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C3CA[eax*4]
mov     ds:dword_559080, eax
mov     eax, edx
call    sub_40C7D3
add     ds:dword_55908C, 6

loc_40C95E:
mov     eax, ds:dword_559088
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40C9A5
cmp     bl, [ecx+8]
jnz     short loc_40C9A5
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40C9A5
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40C9A5
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C3FA[eax*4]
mov     ds:dword_559078, eax
mov     eax, edx
call    sub_40C81B
add     ds:dword_559088, 6

loc_40C9A5:
mov     eax, edx
call    sub_40C859
pop     edx
pop     ecx
pop     ebx
retn
sub_40C904 endp




sub_40C9B0 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     ds:dword_55908C, offset unk_50C44A
mov     ds:dword_559088, offset unk_50C498
xor     eax, eax

loc_40C9E5:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 18h
jl      short loc_40C9E5
mov     word ptr [ecx+0Eh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40C9B0 endp




sub_40CA03 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA1F
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA1F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA03 endp




sub_40CA23 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA3F
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA3F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA23 endp




sub_40CA43 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA5F
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA5F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA43 endp




sub_40CA63 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA7F
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA7F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA63 endp




sub_40CA83 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA9F
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA9F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA83 endp




sub_40CAA3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CAB5
jbe     short loc_40CAC2
pop     edx
pop     ecx
pop     ebx
retn

loc_40CAB5:
test    al, al
jnz     short loc_40CADE
xor     ebx, ebx
mov     edx, 1Bh
jmp     short loc_40CAD4

loc_40CAC2:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 35h ; '5'
jnz     short loc_40CADE
xor     ebx, ebx
mov     edx, 15h

loc_40CAD4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CADE:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CAA3 endp




sub_40CAE2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB09
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB09:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CAE2 endp




sub_40CB0D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB29
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB29:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB0D endp




sub_40CB2D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB49
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB49:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB2D endp




sub_40CB4D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB69
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB69:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB4D endp




sub_40CB6D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB89
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB89:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB6D endp




sub_40CB8D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CBA2
jbe     short loc_40CBD1
cmp     al, 2
jz      short loc_40CBE4
jmp     short loc_40CBF6

loc_40CBA2:
test    al, al
jnz     short loc_40CBF6
xor     ebx, ebx
mov     edx, 10h
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 14h
mov     word ptr [esi+56h], 5DCh
mov     dword ptr [esi+1Ch], 0FEB60000h
mov     dword ptr [esi+24h], 0FE520000h
inc     byte ptr [esi+0Ah]
jmp     short loc_40CBF6

loc_40CBD1:
mov     bl, [esi+0Ch]
dec     bl
mov     [esi+0Ch], bl
jnz     short loc_40CBF6
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Ch], 1Ch
jmp     short loc_40CBF6

loc_40CBE4:
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_40CBF1
inc     byte ptr [esi+0Ah]

loc_40CBF1:
add     word ptr [esi+56h], 14h

loc_40CBF6:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB8D endp




sub_40CC0B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CC20
jbe     short loc_40CC4F
cmp     al, 2
jz      short loc_40CC62
jmp     short loc_40CBF6

loc_40CC20:
test    al, al
jnz     short loc_40CBF6
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 14h
mov     word ptr [esi+56h], 0
mov     dword ptr [esi+1Ch], 0FE5C0000h
mov     dword ptr [esi+24h], 0FF3D0000h
inc     byte ptr [esi+0Ah]
jmp     short loc_40CBF6

loc_40CC4F:
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_40CBF6
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Ch], 1Ch
jmp     short loc_40CBF6

loc_40CC62:
sub     word ptr [esi+56h], 14h
jmp     short loc_40CBF6
sub_40CC0B endp




sub_40CC69 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40CC73[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40CC92
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40CC92:
mov     eax, ecx
call    sub_40C904
mov     eax, ds:dword_560C0C
mov     dl, [ecx+9]
cmp     dl, 2
jb      short loc_40CCB2
jbe     short loc_40CCDA
cmp     dl, 5
jz      short loc_40CCF9
jmp     loc_40CD23

loc_40CCB2:
cmp     dl, 1
jnz     loc_40CD23
mov     edx, [ecx+98h]
mov     bl, [edx]
cmp     bl, 22h ; '"'
jb      short loc_40CD23
mov     dl, bl
and     edx, 0FFh
mov     dx, word ptr ds:(off_50C1CE+2)[edx*2]
jmp     short loc_40CD1F

loc_40CCDA:
mov     edx, [ecx+98h]
mov     bh, [edx]
cmp     bh, 4
ja      short loc_40CD23
mov     dl, bh
and     edx, 0FFh
mov     dx, ds:word_50C24C[edx*2]
jmp     short loc_40CD1F

loc_40CCF9:
cmp     byte ptr [ecx+0ACh], 15h
jnz     short loc_40CD23
mov     edx, [ecx+98h]
mov     bl, [edx]
cmp     bl, 1Bh
jb      short loc_40CD23
mov     dl, bl
and     edx, 0FFh
mov     dx, ds:word_50C220[edx*2]

loc_40CD1F:
mov     [eax+0Ch], dx

loc_40CD23:
mov     eax, [ecx+148h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_40CD6E
cmp     byte ptr [ecx+0Fh], 0
jnz     short loc_40CD4A
mov     dl, [ecx+0Eh]
inc     dl
mov     [ecx+0Eh], dl
cmp     dl, 0Fh
jnz     short loc_40CD57
mov     byte ptr [ecx+0Fh], 1
jmp     short loc_40CD57

loc_40CD4A:
mov     al, [ecx+0Eh]
dec     al
mov     [ecx+0Eh], al
jnz     short loc_40CD57
mov     [ecx+0Fh], al

loc_40CD57:
xor     eax, eax
mov     al, [ecx+0Eh]
imul    eax, 421h
add     eax, 4210h
mov     [ecx+236h], ax

loc_40CD6E:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CC69 endp




sub_40CD72 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40CD82
mov     eax, edx
call    sub_40C9B0

loc_40CD82:
mov     eax, edx
call    sub_40CC69
pop     edx
retn
sub_40CD72 endp




sub_40CD8B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55909C, dx
mov     eax, ds:dword_559098
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40CDC7:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CD8B endp




sub_40CDD3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559094, dx
mov     eax, ds:dword_559090
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40CDC7
sub_40CDD3 endp




sub_40CE11 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559098
test    ecx, ecx
jz      loc_40CEB7
cmp     ds:dword_559090, 0
jz      loc_40CEB7
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40CE73
jge     short loc_40CE4B
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40CE67

loc_40CE4B:
inc     ds:word_55909C
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559098+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40CE73
add     eax, 4

loc_40CE67:
mov     ds:dword_559098, eax
mov     eax, edx
call    sub_40CD8B

loc_40CE73:
mov     eax, ds:dword_559090
mov     di, [eax+2]
test    di, di
jz      short loc_40CEB7
jge     short loc_40CE8F
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40CEAB

loc_40CE8F:
inc     ds:word_559094
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559090+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40CEB7
add     eax, 4

loc_40CEAB:
mov     ds:dword_559090, eax
mov     eax, edx
call    sub_40CDD3

loc_40CEB7:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CE11 endp




sub_40CEBC proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590A4
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40CF16
cmp     bl, ds:byte_560BE4
jnz     short loc_40CF16
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40CF16
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40CF16
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C5A0[eax*4]
mov     ds:dword_559098, eax
mov     eax, edx
call    sub_40CD8B
add     ds:dword_5590A4, 6

loc_40CF16:
mov     eax, ds:dword_5590A0
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40CF5D
cmp     bl, [ecx+8]
jnz     short loc_40CF5D
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40CF5D
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40CF5D
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C5AC[eax*4]
mov     ds:dword_559090, eax
mov     eax, edx
call    sub_40CDD3
add     ds:dword_5590A0, 6

loc_40CF5D:
mov     eax, edx
call    sub_40CE11
pop     edx
pop     ecx
pop     ebx
retn
sub_40CEBC endp




sub_40CF68 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr ds:dword_560BDC+1, 48h ; 'H'
jnz     short loc_40CF9B
mov     ds:dword_5590A4, offset unk_50C5B8
mov     ds:dword_5590A0, offset unk_50C5D6
jmp     short loc_40CFAF

loc_40CF9B:
mov     ds:dword_5590A4, offset unk_50C5FA
mov     ds:dword_5590A0, offset unk_50C606

loc_40CFAF:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40CF68 endp




sub_40CFC9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CFE5
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CFE5:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CFC9 endp




sub_40CFE9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D005
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D005:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CFE9 endp




sub_40D009 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D025
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D025:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D009 endp




sub_40D029 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D045
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D045:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D029 endp




sub_40D049 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40D052[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40D071
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40D071:
mov     eax, ecx
call    sub_40CEBC
pop     edx
pop     ecx
retn
sub_40D049 endp




sub_40D07B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40D08E
mov     eax, esi
call    sub_40CF68

loc_40D08E:
mov     eax, esi
call    sub_40D049
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
sub_40D07B endp




sub_40D0AD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590B4, dx
mov     eax, ds:dword_5590B0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40D0E9:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D0AD endp




sub_40D0F5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590AC, dx
mov     eax, ds:dword_5590A8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40D0E9
sub_40D0F5 endp




sub_40D133 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590B0
test    ecx, ecx
jz      loc_40D1D9
cmp     ds:dword_5590A8, 0
jz      loc_40D1D9
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40D195
jge     short loc_40D16D
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40D189

loc_40D16D:
inc     ds:word_5590B4
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590B0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40D195
add     eax, 4

loc_40D189:
mov     ds:dword_5590B0, eax
mov     eax, edx
call    sub_40D0AD

loc_40D195:
mov     eax, ds:dword_5590A8
mov     di, [eax+2]
test    di, di
jz      short loc_40D1D9
jge     short loc_40D1B1
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40D1CD

loc_40D1B1:
inc     ds:word_5590AC
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590A8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40D1D9
add     eax, 4

loc_40D1CD:
mov     ds:dword_5590A8, eax
mov     eax, edx
call    sub_40D0F5

loc_40D1D9:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D133 endp




sub_40D1DE proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590BC
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40D238
cmp     bl, ds:byte_560BE4
jnz     short loc_40D238
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40D238
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40D238
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C824[eax*4]
mov     ds:dword_5590B0, eax
mov     eax, edx
call    sub_40D0AD
add     ds:dword_5590BC, 6

loc_40D238:
mov     eax, ds:dword_5590B8
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40D27F
cmp     bl, [ecx+8]
jnz     short loc_40D27F
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40D27F
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40D27F
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C878[eax*4]
mov     ds:dword_5590A8, eax
mov     eax, edx
call    sub_40D0F5
add     ds:dword_5590B8, 6

loc_40D27F:
mov     eax, edx
call    sub_40D133
pop     edx
pop     ecx
pop     ebx
retn
sub_40D1DE endp




sub_40D28A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_5590BC, offset unk_50C8CC
mov     ds:dword_5590B8, offset unk_50C95C
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40D28A endp

db 8Bh, 0C0h
jpt_40D2EA dd offset loc_40D2F1 ; jump table for switch statement
dd offset def_40D2EA
dd offset loc_40D30A
dd offset def_40D2EA
dd offset loc_40D31B



sub_40D2D9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D2EA[eax*4] ; switch jump

loc_40D2F1:             ; jumptable 0040D2EA case 0
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B

loc_40D2FF:
mov     byte ptr [ecx+0Dh], 1
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D30A:             ; jumptable 0040D2EA case 2
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 9
jnz     short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
jmp     short loc_40D2FF

loc_40D31B:             ; jumptable 0040D2EA case 4
mov     byte ptr [ecx+0Dh], 0

def_40D2EA:             ; jumptable 0040D2EA default case, cases 1,3
pop     edx             ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
pop     ecx
pop     ebx
retn
sub_40D2D9 endp

db 8Bh, 0C0h
jpt_40D34E dd offset loc_40D355 ; jump table for switch statement
dd offset loc_40D369
dd offset def_40D2EA
dd offset loc_40D37A
dd offset loc_40D390
dd offset def_40D2EA



sub_40D33D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D34E[eax*4] ; switch jump

loc_40D355:             ; jumptable 0040D34E case 0
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_40D389

loc_40D369:             ; jumptable 0040D34E case 1
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 9
jnz     short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_40D389

loc_40D37A:             ; jumptable 0040D34E case 3
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 14h

loc_40D387:             ; jumptable 0040D2EA default case, cases 1,3
jnz     short def_40D2EA ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4

loc_40D389:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D390:             ; jumptable 0040D34E case 4
add     dword ptr [ecx+1Ch], 28000h
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 3Dh ; '='
jmp     short loc_40D387
sub_40D33D endp

db 8Dh, 40h, 0
jpt_40D3D2 dd offset loc_40D3D9 ; jump table for switch statement
dd offset loc_40D3F2
dd offset loc_40D416
dd offset loc_40D42F
dd offset def_40D2EA
dd offset loc_40D3EA



sub_40D3BD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D3D2[eax*4] ; switch jump

loc_40D3D9:             ; jumptable 0040D3D2 case 0
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D3EA:             ; jumptable 0040D3D2 case 5
mov     byte ptr [ecx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_40D3F2:             ; jumptable 0040D3D2 case 1
add     dword ptr [ecx+1Ch], 1B102h
sub     dword ptr [ecx+24h], 9D9Ah
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 13h

loc_40D409:             ; jumptable 0040D2EA default case, cases 1,3
jnz     def_40D2EA      ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4

loc_40D40F:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D416:             ; jumptable 0040D3D2 case 2
add     dword ptr [ecx+1Ch], 12CB3h
sub     dword ptr [ecx+24h], 6D72h
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 1Dh
jmp     short loc_40D409

loc_40D42F:             ; jumptable 0040D3D2 case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 31h ; '1'
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_40D40F
sub_40D3BD endp

db 90h
jpt_40D46E dd offset loc_40D475 ; jump table for switch statement
dd offset loc_40D48E
dd offset def_40D2EA
dd offset loc_40D4B2
dd offset def_40D2EA



sub_40D459 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D46E[eax*4] ; switch jump

loc_40D475:             ; jumptable 0040D46E case 0
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_40D48E:             ; jumptable 0040D46E case 1
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 18h
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
xor     ebx, ebx
mov     edx, 14h

loc_40D4A4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D4B2:             ; jumptable 0040D46E case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 0Bh
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
xor     ebx, ebx
mov     edx, 15h
jmp     short loc_40D4A4
sub_40D459 endp




sub_40D4CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D4E6
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D4E6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D4CA endp




sub_40D4EA proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40D4F3[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40D512
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40D512:
mov     eax, ecx
call    sub_40D1DE
pop     edx
pop     ecx
retn
sub_40D4EA endp




sub_40D51C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40D52F
mov     eax, esi
call    sub_40D28A

loc_40D52F:
mov     eax, esi
call    sub_40D4EA
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
sub_40D51C endp




sub_40D54E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
movzx   esi, byte ptr [eax+3]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_40D58D[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_40DE4F
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_40D5C2
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40D5C9

loc_40D5C2:
mov     eax, ecx
call    sub_4DEADD

loc_40D5C9:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D54E endp




sub_40D5D0 proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, offset dword_560BDC
call    ds:funcs_40D5DB[ecx*4]
pop     ecx
retn
sub_40D5D0 endp




sub_40D5E4 proc near
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
mov     word ptr [ecx+15Eh], 0
xor     al, al

loc_40D619:
movsx   edx, al
mov     word ptr [ecx+edx*8+196h], 4210h
inc     al
cmp     al, 12h
jl      short loc_40D619
mov     word ptr [ecx+226h], 4210h
mov     word ptr [ecx+22Eh], 0C210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0
mov     word ptr [esi], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_40D5E4 endp

jpt_40D6B8 dd offset loc_40D6BF ; jump table for switch statement
dd offset loc_40D6E1
dd offset loc_40D74C
dd offset loc_40D7AB
dd offset loc_40D7DB
dd offset loc_40D81A
dd offset loc_40D86C
dd offset loc_40D8E5



sub_40D69E proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+9]
cmp     dl, 7           ; switch 8 cases
ja      def_40D6B8      ; jumptable 0040D6B8 default case
and     edx, 0FFh
jmp     jpt_40D6B8[edx*4] ; switch jump

loc_40D6BF:             ; jumptable 0040D6B8 case 0
mov     byte ptr [esi+0ADh], 0FFh
mov     ch, [eax+4]
cmp     ch, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
cmp     ch, [eax+5]
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
add     [esi+9], ch
pop     esi
pop     ecx
retn

loc_40D6E1:             ; jumptable 0040D6B8 case 1
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_40D70F
jbe     short loc_40D729
cmp     eax, 28h ; '('
jb      def_40D6B8      ; jumptable 0040D6B8 default case
jbe     short loc_40D734
cmp     eax, 32h ; '2'
jz      short loc_40D738
pop     esi
pop     ecx
retn

loc_40D70F:
cmp     eax, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     ebx, 4
mov     eax, esi
mov     edx, ecx
call    sub_40DE1D
pop     esi
pop     ecx
retn

loc_40D729:
mov     ebx, 7

loc_40D72E:
mov     eax, esi
mov     edx, ecx
jmp     short loc_40D77B

loc_40D734:
xor     ebx, ebx
jmp     short loc_40D72E

loc_40D738:
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_40DE36

loc_40D746:
inc     byte ptr [esi+9]
pop     esi
pop     ecx
retn

loc_40D74C:             ; jumptable 0040D6B8 case 2
mov     dh, [eax+9]
cmp     dh, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_40D76C
jbe     short loc_40D783
cmp     eax, 96h
jz      short loc_40D798
pop     esi
pop     ecx
retn

loc_40D76C:
cmp     eax, 6Eh ; 'n'

loc_40D76F:             ; jumptable 0040D6B8 default case
jnz     def_40D6B8

loc_40D775:
xor     ebx, ebx

loc_40D777:
mov     edx, ecx
mov     eax, esi

loc_40D77B:
call    sub_40DE36
pop     esi
pop     ecx
retn

loc_40D783:
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 2
jmp     short loc_40D777

loc_40D798:
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ebx+2], 0
add     [esi+9], dh
pop     esi
pop     ecx
retn

loc_40D7AB:             ; jumptable 0040D6B8 case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
mov     byte ptr [esi+0ACh], 3
mov     word ptr [ebx+2], 0
jmp     loc_40D746

loc_40D7DB:             ; jumptable 0040D6B8 case 4
cmp     byte ptr [esi+0A4h], 4
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
xor     ebx, ebx
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_40DE36
mov     byte ptr [esi+0ACh], 3
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ecx+2], 4
jmp     loc_40D746

loc_40D81A:             ; jumptable 0040D6B8 case 5
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ebx+2], 4
mov     dh, [eax+9]
cmp     dh, 1
jnz     short loc_40D83B
cmp     dword ptr [eax+10h], 0AFh
jmp     loc_40D76F

loc_40D83B:
cmp     dh, 3
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     edx, [eax+10h]
cmp     edx, 1
jz      loc_40D775
cmp     edx, 0Ah
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     ebx, 5
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
jmp     loc_40D746

loc_40D86C:             ; jumptable 0040D6B8 case 6
mov     cl, [esi+0A4h]
cmp     cl, 5
jnz     short loc_40D885
mov     word ptr [esi+44h], 56h ; 'V'
mov     word ptr [esi+48h], 0FF95h
jmp     short loc_40D8CD

loc_40D885:
cmp     cl, 14h
jnz     short loc_40D898
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
jmp     short loc_40D8CD

loc_40D898:
cmp     cl, 34h ; '4'
jnz     short loc_40D8AB
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0FF80h
jmp     short loc_40D8CD

loc_40D8AB:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_40D8CD
and     byte ptr [esi], 0FDh
mov     byte ptr [esi+143h], 0FFh
mov     byte ptr [esi+147h], 0FFh
inc     byte ptr [esi+9]

loc_40D8CD:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_40D8E5:             ; jumptable 0040D6B8 case 7
cmp     byte ptr [eax+8], 1
jnz     short def_40D6B8 ; jumptable 0040D6B8 default case
cmp     byte ptr [eax+9], 0
jnz     short def_40D6B8 ; jumptable 0040D6B8 default case
or      byte ptr [esi], 2
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ecx+2], 0
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 3
mov     edx, ecx
mov     eax, esi
call    sub_40DE36
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

def_40D6B8:             ; jumptable 0040D6B8 default case
pop     esi
pop     ecx
retn
sub_40D69E endp

db 8Dh, 40h, 0
jpt_40D974 dd offset loc_40D97B ; jump table for switch statement
dd offset loc_40D9A0
dd offset loc_40DA5A
dd offset loc_40DA93
dd offset loc_40DABE
dd offset loc_40DAEC
dd offset loc_40DB1D
dd offset loc_40DB57
dd offset loc_40DBBD
dd offset loc_40DBE6
dd offset loc_40DC20
dd offset loc_40DC7B



sub_40D95A proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     al, [eax+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_40D974      ; jumptable 0040D974 default case
and     eax, 0FFh
jmp     jpt_40D974[eax*4] ; switch jump

loc_40D97B:             ; jumptable 0040D974 case 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     bl, [edx+9]
cmp     bl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 1
jnz     def_40D974      ; jumptable 0040D974 default case

loc_40D998:
add     [ecx+9], bl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40D9A0:             ; jumptable 0040D974 case 1
cmp     byte ptr [ecx+0A4h], 10h
jbe     short loc_40D9C7
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_40D9C7
dec     word ptr [ecx+18h]
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_40D9C7:
cmp     byte ptr [edi+9], 1
jnz     def_40D974      ; jumptable 0040D974 default case
mov     eax, [edi+10h]
cmp     eax, 28h ; '('
jb      short loc_40D9F2
jbe     short loc_40DA05
cmp     eax, 32h ; '2'
jb      def_40D974      ; jumptable 0040D974 default case
jbe     short loc_40DA0F
cmp     eax, 82h
jz      short loc_40DA27
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40D9F2:
cmp     eax, 5
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 8
jmp     loc_40DCCB

loc_40DA05:
mov     ebx, 6
jmp     loc_40DCCB

loc_40DA0F:
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 9
jmp     loc_40DCCB

loc_40DA27:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
mov     byte ptr [ecx+0ACh], 6
mov     word ptr [esi+2], 9
mov     word ptr [esi], 0
jmp     loc_40DB4F

loc_40DA5A:             ; jumptable 0040D974 case 2
cmp     word ptr [ebx], 26h ; '&'
jge     short loc_40DA7C
xor     eax, eax
xor     ebx, ebx
mov     edx, 21h ; '!'
mov     edi, ecx
mov     ecx, eax
mov     eax, edi
call    sub_4DD43B
inc     word ptr [esi]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DA7C:
mov     byte ptr [ecx+0ACh], 7
mov     word ptr [ebx+2], 0
mov     word ptr [ebx], 0
jmp     loc_40DB4F

loc_40DA93:             ; jumptable 0040D974 case 3
mov     bl, [edx+9]
cmp     bl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 0D7h
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 8
mov     word ptr [esi+2], 0
jmp     loc_40D998

loc_40DABE:             ; jumptable 0040D974 case 4
mov     dl, [edx+9]
cmp     dl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edi+10h], 19Ah
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 9
mov     word ptr [ebx+2], 0
add     [ecx+9], dl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DAEC:             ; jumptable 0040D974 case 5
cmp     byte ptr [ecx+0A4h], 0Ah
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Ah
jmp     short loc_40DB4F

loc_40DB1D:             ; jumptable 0040D974 case 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0Ah
cmp     byte ptr [edx+9], 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 1C7h
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 7
mov     edx, esi
mov     eax, ecx

loc_40DB4A:
call    sub_40DE1D

loc_40DB4F:
inc     byte ptr [ecx+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DB57:             ; jumptable 0040D974 case 7
cmp     byte ptr [edx+9], 1
jnz     short loc_40DB7E
mov     ebp, [edx+10h]
cmp     ebp, 203h
jz      short loc_40DB70
cmp     ebp, 230h
jnz     short loc_40DB7E

loc_40DB70:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D

loc_40DB7E:
cmp     byte ptr [edi+9], 2
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edi+10h], 1
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
mov     byte ptr [ecx+0ACh], 0Ah
mov     word ptr [esi+2], 0
jmp     short loc_40DB4F

loc_40DBBD:             ; jumptable 0040D974 case 8
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 3
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 64h ; 'd'
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 8
mov     eax, ecx
mov     edx, esi
jmp     loc_40DB4A

loc_40DBE6:             ; jumptable 0040D974 case 9
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_40DBFA
mov     ebx, 0Ah
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DBFA:
cmp     byte ptr [ecx+0A4h], 23h ; '#'
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 0Ah
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 23h ; '#'
jmp     loc_40DB4F

loc_40DC20:             ; jumptable 0040D974 case 10
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 23h ; '#'
cmp     byte ptr [edx+9], 3
jnz     def_40D974      ; jumptable 0040D974 default case
mov     eax, [edx+10h]
cmp     eax, 0A5h
jb      short loc_40DC53
jbe     short loc_40DC68
cmp     eax, 0AFh
jz      loc_40DB4F
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC53:
cmp     eax, 9Bh
jnz     def_40D974      ; jumptable 0040D974 default case

loc_40DC5E:
mov     ebx, 3
jmp     loc_40DCCB

loc_40DC68:
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC7B:             ; jumptable 0040D974 case 11
mov     eax, [edx+10h]
cmp     eax, 12Ch
jb      short loc_40DCA8
jbe     short loc_40DC5E
cmp     eax, 145h
jb      short loc_40DC9C
jbe     short loc_40DC68
cmp     eax, 159h
jz      short loc_40DCC6
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC9C:
cmp     eax, 140h

loc_40DCA1:
jz      short loc_40DCBF
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DCA8:
cmp     eax, 0F5h
jb      short loc_40DCB8
jbe     short loc_40DC5E
cmp     eax, 0FFh
jmp     short loc_40DCA1

loc_40DCB8:
cmp     eax, 0B4h
jnz     short def_40D974 ; jumptable 0040D974 default case

loc_40DCBF:
mov     ebx, 0Ah
jmp     short loc_40DCCB

loc_40DCC6:
mov     ebx, 3

loc_40DCCB:
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

def_40D974:             ; jumptable 0040D974 default case
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40D95A endp

align 2
jpt_40DD02 dd offset loc_40DD09 ; jump table for switch statement
dd offset loc_40DD94
dd offset loc_40DDA9
dd offset def_40DD02



sub_40DCEA proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      def_40DD02      ; jumptable 0040DD02 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_40DD02[edx*4] ; switch jump

loc_40DD09:             ; jumptable 0040DD02 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ebx+2], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DD69:
inc     byte ptr [ecx+8]

def_40DD02:             ; jumptable 0040DD02 default case, case 3
mov     eax, [edi+10h]
cmp     eax, 4Bh ; 'K'
jb      short loc_40DDC1
jbe     loc_40DDDD
cmp     eax, 78h ; 'x'
jb      short loc_40DDB8
jbe     loc_40DDF6
cmp     eax, 82h
jz      loc_40DE0B
pop     edi
pop     esi
pop     ecx
retn

loc_40DD94:             ; jumptable 0040DD02 case 1
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_40DD02 ; jumptable 0040DD02 default case, case 3
inc     al
mov     [ecx+8], al
jmp     short def_40DD02 ; jumptable 0040DD02 default case, case 3

loc_40DDA9:             ; jumptable 0040DD02 case 2
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebx+2], 0
jmp     short loc_40DD69

loc_40DDB8:
cmp     eax, 4Dh ; 'M'
jz      short loc_40DDE4
pop     edi
pop     esi
pop     ecx
retn

loc_40DDC1:
cmp     eax, 23h ; '#'
jb      short loc_40DDD1
jbe     short loc_40DDDD
cmp     eax, 32h ; '2'
jz      short loc_40DDD6
pop     edi
pop     esi
pop     ecx
retn

loc_40DDD1:
cmp     eax, 14h
jnz     short loc_40DE19

loc_40DDD6:
mov     ebx, 0Eh
jmp     short loc_40DE10

loc_40DDDD:
mov     ebx, 0Bh
jmp     short loc_40DE10

loc_40DDE4:
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
pop     edi
pop     esi
pop     ecx
retn

loc_40DDF6:
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 0Fh
jmp     short loc_40DE10

loc_40DE0B:
mov     ebx, 0Dh

loc_40DE10:
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DE19:
pop     edi
pop     esi
pop     ecx
retn
sub_40DCEA endp




sub_40DE1D proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CB0A[ebx*4]
mov     [edx+4], eax
retn
sub_40DE1D endp




sub_40DE36 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CB3E[ebx*4]
mov     [edx+8], eax
retn
sub_40DE36 endp




sub_40DE4F proc near
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
cmp     al, 3Fh ; '?'
jb      short loc_40DE74
jbe     short loc_40DE77
cmp     al, 7Fh
jnz     short loc_40DE74
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40DE77

loc_40DE74:
inc     byte ptr [esi+0Eh]

loc_40DE77:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40DEB9
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40DEB9:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 3Fh ; '?'
jb      short loc_40DEDC
jbe     short loc_40DEDF
cmp     al, 7Fh
jnz     short loc_40DEDC
mov     byte ptr [esi+11h], 0
jmp     short loc_40DEDF

loc_40DEDC:
inc     byte ptr [esi+11h]

loc_40DEDF:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40DF21
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40DF21:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40DE4F endp

jpt_40DF8E dd offset loc_40DF95 ; jump table for switch statement
dd offset loc_40DFF7
dd offset loc_40E01F
dd offset loc_40E08D
dd offset loc_40E0B3



sub_40DF40 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     [esp+1Ch+var_1C], offset dword_560BDC
lea     ebp, [eax+640h]
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 4           ; switch 5 cases
ja      def_40DF8E      ; jumptable 0040DF8E default case
and     eax, 0FFh
jmp     jpt_40DF8E[eax*4] ; switch jump

loc_40DF95:             ; jumptable 0040DF8E case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
xor     ebx, ebx

loc_40DFE6:
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C

loc_40DFEF:
inc     byte ptr [ecx+8]
jmp     def_40DF8E      ; jumptable 0040DF8E default case

loc_40DFF7:             ; jumptable 0040DF8E case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     def_40DF8E      ; jumptable 0040DF8E default case
cmp     ds:dword_560BEC, 0Ah
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     ebx, 2
jmp     short loc_40DFE6

loc_40E01F:             ; jumptable 0040DF8E case 2
cmp     ds:byte_560BE5, 3
jnz     short loc_40E04F
cmp     ds:dword_560BEC, 2Dh ; '-'
jnz     short loc_40E04F
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
jmp     def_40DF8E      ; jumptable 0040DF8E default case

loc_40E04F:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+9], 4
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     edx, [eax+10h]
cmp     edx, 1
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     ebx, edx
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
mov     byte ptr [ecx+0ACh], 5
jmp     loc_40DFEF

loc_40E08D:             ; jumptable 0040DF8E case 3
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 4
jnz     def_40DF8E      ; jumptable 0040DF8E default case
cmp     ds:dword_560BEC, 0Ah
jnz     def_40DF8E      ; jumptable 0040DF8E default case
jmp     loc_40DFEF

loc_40E0B3:             ; jumptable 0040DF8E case 4
cmp     ds:byte_560BE5, 5
jnz     short loc_40E0EA
mov     ebx, ds:dword_560BEC
cmp     ebx, 1
jnz     short loc_40E0D7
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
jmp     short loc_40E0EA

loc_40E0D7:
cmp     ebx, 1Eh
jnz     short loc_40E0EA
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40E163

loc_40E0EA:
mov     al, [ecx+0A4h]
cmp     al, 11h
jb      short loc_40E102
jbe     short loc_40E10F
cmp     al, 19h
jb      short def_40DF8E ; jumptable 0040DF8E default case
jbe     short loc_40E118
cmp     al, 20h ; ' '
jz      short loc_40E121
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E102:
cmp     al, 3
jnz     short def_40DF8E ; jumptable 0040DF8E default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 1
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E10F:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 2
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E118:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 3
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E121:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 4

def_40DF8E:             ; jumptable 0040DF8E default case
mov     edx, ebp
mov     eax, ecx
call    sub_40E195
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_40E152
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40E159

loc_40E152:
mov     eax, ecx
call    sub_4DEADD

loc_40E159:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40DF40 endp




sub_40E163 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CBD1[ebx*4]
mov     [edx+4], eax
retn
sub_40E163 endp




sub_40E17C proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CBE1[ebx*4]
mov     [edx+8], eax
retn
sub_40E17C endp




sub_40E195 proc near
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
jb      short loc_40E1BA
jbe     short loc_40E1BD
cmp     al, 7Fh
jnz     short loc_40E1BA
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40E1BD

loc_40E1BA:
inc     byte ptr [esi+0Eh]

loc_40E1BD:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40E1FF
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E1FF:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40E222
jbe     short loc_40E225
cmp     al, 7Fh
jnz     short loc_40E222
mov     byte ptr [esi+11h], 0
jmp     short loc_40E225

loc_40E222:
inc     byte ptr [esi+11h]

loc_40E225:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40E267
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40E267:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E195 endp

off_40E272 dd offset dword_40E2D4
dd offset byte_40E337
dd offset byte_40E36F
dd offset word_40E37E
dd offset byte_40E393
dd offset off_40E342
word_40E28A dw 5153h
dd 55575652h, 0A88DC189h, 640h, 8D2C798Dh
dd 0A5A51471h, 8D34798Dh, 0A5A51C71h, 798DA5A5h
dd 54718D5Ch, 808AA5A5h, 0ACh, 0AD8188h
dd 418A0000h, 0F053C08h, 7987h, 88D23100h
dd 9524FFC2h
dd offset off_40E272
dword_40E2D4 dd 31020980h, 0E8C889D2h, 0CEE18h, 15881C7h
dd 2000000h, 81C70200h, 15Ch, 200h, 5E81C766h
dd 10000001h, 7841C742h, 0
dd 0AC81C6h, 0C6060000h, 0AD81h, 0C766FF00h
dd 370245h, 45C766h, 0DB310000h, 0C889EA89h
dd 0E8E8h, 89DB3100h, 0E8C889EAh, 0F6h
db 0FEh, 41h, 8
byte_40E337 db 66h
dd 92007D81h, 0FE037500h
db 41h, 8
off_40E342 dd offset loc_45FF66
mov     eax, ds:dword_560BEC
cmp     eax, 37h ; '7'
jb      short loc_40E3A5
jbe     loc_40E3B3
cmp     eax, 91h
jb      short loc_40E39C
jbe     short loc_40E3B3
cmp     eax, 0AFh
jz      loc_40E3CE
jmp     loc_40E3D9
byte_40E36F db 0C6h
dd 0AC81h, 0C7660700h, 245h
db 0EBh, 0C1h
word_40E37E dw 918Bh
dd 0A4h, 8318FAC1h, 0B675FFFAh, 4188C0FEh
db 8, 0EBh, 0AFh
byte_40E393 db 0C6h
dd 0AC81h, 0A3EB0800h

loc_40E39C:
cmp     eax, 87h
jz      short loc_40E3BE
jmp     short loc_40E3D9

loc_40E3A5:
cmp     eax, 1Eh
jb      short loc_40E3D9
jbe     short loc_40E3B3
cmp     eax, 2Dh ; '-'
jz      short loc_40E3BA
jmp     short loc_40E3D9

loc_40E3B3:
mov     ebx, 1
jmp     short loc_40E3D0

loc_40E3BA:
xor     ebx, ebx
jmp     short loc_40E3D0

loc_40E3BE:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40E411
jmp     short loc_40E3BA

loc_40E3CE:
xor     ebx, ebx

loc_40E3D0:
mov     edx, ebp
mov     eax, ecx
call    sub_40E42A

loc_40E3D9:
mov     edx, ebp
mov     eax, ecx
call    sub_40E443
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_40E403
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40E40A

loc_40E403:
mov     eax, ecx
call    sub_4DEADD

loc_40E40A:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_40E411 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CC21[ebx*4]
mov     [edx+4], eax
retn
sub_40E411 endp




sub_40E42A proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CC29[ebx*4]
mov     [edx+8], eax
retn
sub_40E42A endp




sub_40E443 proc near
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
jb      short loc_40E468
jbe     short loc_40E46B
cmp     al, 7Fh
jnz     short loc_40E468
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40E46B

loc_40E468:
inc     byte ptr [esi+0Eh]

loc_40E46B:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40E4AD
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E4AD:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40E4D0
jbe     short loc_40E4D3
cmp     al, 7Fh
jnz     short loc_40E4D0
mov     byte ptr [esi+11h], 0
jmp     short loc_40E4D3

loc_40E4D0:
inc     byte ptr [esi+11h]

loc_40E4D3:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40E515
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40E515:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E443 endp




sub_40E520 proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50CC40[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_40E520 endp




sub_40E533 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50CC61[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_40E533 endp




sub_40E546 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_40E5BA
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_40E56F
jbe     short loc_40E5C1
cmp     al, 7Fh
jnz     short loc_40E56F
mov     byte ptr [edx+4], 0

loc_40E56F:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
mov     al, [ecx+eax+1]
mov     [esi+5], al
add     byte ptr [esi+4], 2
jmp     short loc_40E5C1

loc_40E5BA:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_40E5C1:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_40E62F
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_40E5E1
jbe     short loc_40E636
cmp     al, 7Fh
jnz     short loc_40E5E1
mov     [esi+6], bl

loc_40E5E1:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax+1]
mov     [esi+7], al
add     byte ptr [esi+6], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_40E62F:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_40E636:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E546 endp

align 4
jpt_40E698 dd offset loc_40E69F ; jump table for switch statement
dd offset loc_40E738
dd offset loc_40E710
dd offset loc_40E71E
dd offset loc_40E738



sub_40E650 proc near

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
mov     [esp+20h+var_20], offset dword_560BDC
lea     edx, [eax+640h]
mov     [esp+20h+var_1C], edx
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
mov     dl, [eax+8]
cmp     dl, 4           ; switch 5 cases
ja      def_40E698      ; jumptable 0040E698 default case
and     edx, 0FFh
jmp     jpt_40E698[edx*4] ; switch jump

loc_40E69F:             ; jumptable 0040E698 case 0
or      byte ptr [eax], 2
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     byte ptr [ebp+0Ch], 0
mov     byte ptr [ebp+0Dh], 0
xor     edx, edx
mov     eax, [esp+20h+var_1C]
call    sub_40E520
xor     edx, edx
mov     eax, [esp+20h+var_1C]
call    sub_40E533
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short def_40E698 ; jumptable 0040E698 default case

loc_40E710:             ; jumptable 0040E698 case 2
mov     word ptr [eax+48h], 20h ; ' '
mov     ah, [eax+8]
inc     ah
mov     [ebp+8], ah

loc_40E71E:             ; jumptable 0040E698 case 3
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_4DEADD
jmp     short def_40E698 ; jumptable 0040E698 default case

loc_40E738:             ; jumptable 0040E698 cases 1,4
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

def_40E698:             ; jumptable 0040E698 default case
mov     edx, [esp+20h+var_20]
cmp     byte ptr [edx+9], 6
jnz     loc_40E7DC
mov     ecx, [edx+10h]
cmp     ecx, 2Dh ; '-'
jnz     short loc_40E762

loc_40E75B:
mov     edx, 1
jmp     short loc_40E769

loc_40E762:
cmp     ecx, 35h ; '5'
jnz     short loc_40E777

loc_40E767:
xor     edx, edx

loc_40E769:
mov     eax, [esp+20h+var_1C]
call    sub_40E520
jmp     loc_40E7D1

loc_40E777:
cmp     ecx, 41h ; 'A'
jnz     short loc_40E783
mov     edx, 2
jmp     short loc_40E7C8

loc_40E783:
cmp     ecx, 96h
jnz     short loc_40E78F
xor     edx, edx
jmp     short loc_40E7C8

loc_40E78F:
cmp     ecx, 0A0h
jz      short loc_40E75B
cmp     ecx, 0A8h
jz      short loc_40E767
cmp     ecx, 0C8h
jz      short loc_40E75B
cmp     ecx, 0D0h
jz      short loc_40E767
cmp     ecx, 0DAh
jnz     short loc_40E7BE
mov     edx, 1
jmp     short loc_40E7C8

loc_40E7BE:
cmp     ecx, 0E6h
jnz     short loc_40E7D1
xor     edx, edx

loc_40E7C8:
mov     eax, [esp+20h+var_1C]
call    sub_40E533

loc_40E7D1:
mov     edx, [esp+20h+var_1C]
mov     eax, ebp
call    sub_40E546

loc_40E7DC:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E650 endp




sub_40E7E6 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50CD44[edx*4]
mov     ds:dword_5590C8, eax
xor     edx, edx
mov     ds:word_5590CC, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40E828:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40E7E6 endp




sub_40E833 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50CD6C[edx*4]
mov     ds:dword_5590C0, eax
xor     edx, edx
mov     ds:word_5590C4, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40E828
sub_40E833 endp




sub_40E877 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_5590C8
test    edx, edx
jz      loc_40E99A
cmp     ds:dword_5590C0, 0
jz      loc_40E99A
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_40E8BA
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_5590C8, eax
xor     ebx, ebx
mov     ds:word_5590CC, bx

loc_40E8BA:
mov     eax, ds:dword_5590C8
inc     ds:word_5590CC
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_5590C8+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40E918
xor     edi, edi
mov     ds:word_5590CC, di
add     eax, 4
mov     ds:dword_5590C8, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E918:
mov     eax, ds:dword_5590C0
cmp     word ptr [eax+2], 0
jg      short loc_40E93C
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_5590C0, eax
xor     ebx, ebx
mov     ds:word_5590C4, bx

loc_40E93C:
mov     eax, ds:dword_5590C0
inc     ds:word_5590C4
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_5590C0+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40E99A
xor     edi, edi
mov     ds:word_5590C4, di
add     eax, 4
mov     ds:dword_5590C0, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40E99A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E877 endp




sub_40E9A0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_5590D4
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40E9EF
cmp     dl, ds:byte_560BE4
jnz     short loc_40E9EF
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40E9EF
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40E9EF
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40E7E6
add     ds:dword_5590D4, 6

loc_40E9EF:
mov     eax, ds:dword_5590D0
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40EA29
cmp     dl, [ebx+8]
jnz     short loc_40EA29
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40EA29
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40EA29
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40E833
add     ds:dword_5590D0, 6

loc_40EA29:
mov     eax, ecx
call    sub_40E877
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E9A0 endp




sub_40EA36 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     byte ptr [ecx+147h], 0FFh
mov     al, [ecx+147h]
mov     [ecx+143h], al
mov     ds:dword_5590D4, offset unk_50CD90
mov     ds:dword_5590D0, offset unk_50CDF6
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40EA36 endp




sub_40EA86 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EAA2
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B

loc_40EA9F:
inc     byte ptr [ecx+0Ah]

loc_40EAA2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EA86 endp




sub_40EAA6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 7
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 5Ah ; 'Z'
jmp     short loc_40EA9F
sub_40EAA6 endp




sub_40EABD proc near
push    edx
dec     byte ptr [eax+0Ch]
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ch
jnz     short loc_40EACF
inc     byte ptr [eax+0Ah]

loc_40EACF:
pop     edx
retn
sub_40EABD endp




sub_40EAD1 proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_40EAE2
mov     eax, [eax+44h]
inc     byte ptr [eax+8]

loc_40EAE2:
pop     edx

locret_40EAE3:
retn
sub_40EAD1 endp




sub_40EAE4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EB00
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB00:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EAE4 endp




sub_40EB04 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EB25
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB25:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EB04 endp




sub_40EB29 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 22h ; '"'
jnz     short loc_40EB4A
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB4A:
pop     edx
pop     ecx
pop     ebx

locret_40EB4D:
retn
sub_40EB29 endp




sub_40EB4E proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EB54[edx*4]
pop     edx
retn
sub_40EB4E endp




sub_40EB5D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EB7E
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB7E:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EB5D endp




sub_40EB82 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EBA3
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBA3:
pop     edx
pop     ecx
pop     ebx
sub_40EB82 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_39]



sub_40EBA7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EBAD[edx*4]
pop     edx
retn
sub_40EBA7 endp




sub_40EBB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EBD2
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBD2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBB6 endp




sub_40EBD6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EBF2
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBF2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBD6 endp




sub_40EBF6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EC12
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EC12:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBF6 endp




sub_40EC16 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EC32
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx

loc_40EC2A:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EC32:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EC16 endp




sub_40EC36 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 9
jmp     short loc_40EC2A
sub_40EC36 endp




sub_40EC44 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 12h
jnz     short loc_40EC53
inc     byte ptr [eax+0Ah]

loc_40EC53:
pop     edx
retn
sub_40EC44 endp




sub_40EC55 proc near
push    edx
add     word ptr [eax+26h], 2Ch ; ','
mov     edx, [eax+98h]
cmp     byte ptr [edx], 17h
jnz     short loc_40EC69
inc     byte ptr [eax+0Ah]

loc_40EC69:
pop     edx
sub_40EC55 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_40]



sub_40EC6B proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EC71[edx*4]
pop     edx
retn
sub_40EC6B endp




sub_40EC7A proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40EC80[edx*4]
pop     edx
retn
sub_40EC7A endp




sub_40EC89 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40EC9A
mov     eax, ecx
call    sub_40EA36

loc_40EC9A:
mov     eax, ecx
call    sub_40EC7A
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_40ECB9
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40ECB9:
mov     eax, ecx
call    sub_40E9A0
mov     eax, ecx
call    sub_40ECF2
pop     edx
pop     ecx
retn
sub_40EC89 endp

jpt_40ED13 dd offset def_40ED13 ; jump table for switch statement
dd offset loc_40ED1A
dd offset loc_40ED1A
dd offset loc_40ED1A
dd offset loc_40ED3E
dd offset loc_40ED56
dd offset loc_40ED60
dd offset loc_40ED6A
dd offset loc_40ED97
dd offset loc_40EDA1



sub_40ECF2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, ds:dword_560C10
mov     byte ptr [eax+0Ch], 1
mov     bl, [edx+0ACh]
cmp     bl, 9           ; switch 10 cases
ja      def_40ED13      ; jumptable 0040ED13 default case, case 0
xor     ecx, ecx
mov     cl, bl
jmp     jpt_40ED13[ecx*4] ; switch jump

loc_40ED1A:             ; jumptable 0040ED13 cases 1-3
mov     edx, [edx+98h]
mov     dl, [edx]
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF0A

loc_40ED30:
mov     dx, [edx]
imul    edx, -1
mov     [eax+58h], dx
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED3E:             ; jumptable 0040ED13 case 4
mov     edx, [edx+98h]
mov     dl, [edx]
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF4C
jmp     short loc_40ED30

loc_40ED56:             ; jumptable 0040ED13 case 5
mov     word ptr [eax+58h], 13Eh
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED60:             ; jumptable 0040ED13 case 6
mov     word ptr [eax+58h], 0FFC1h
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED6A:             ; jumptable 0040ED13 case 7
mov     edx, [edx+98h]
mov     bh, [edx]
cmp     bh, 1Fh
jnb     short loc_40ED89
mov     dl, bh
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF92
jmp     short loc_40ED30

loc_40ED89:
mov     byte ptr [eax+0Ch], 0
sub     word ptr [eax+58h], 11Ch
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED97:             ; jumptable 0040ED13 case 8
mov     word ptr [eax+58h], 0FEC2h
pop     edx
pop     ecx
pop     ebx
retn

loc_40EDA1:             ; jumptable 0040ED13 case 9
mov     word ptr [eax+58h], 0FEC2h
mov     edx, [edx+98h]
cmp     byte ptr [edx], 12h
jb      short def_40ED13 ; jumptable 0040ED13 default case, case 0
mov     byte ptr [eax+0Ch], 0

def_40ED13:             ; jumptable 0040ED13 default case, case 0
pop     edx
pop     ecx
pop     ebx
retn
sub_40ECF2 endp




sub_40EDBA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40EDCA[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40EDDE
mov     eax, ecx
call    sub_4DEADD

loc_40EDDE:
mov     edx, ebx
mov     eax, ecx
call    sub_40EF30
pop     edx
pop     ecx
pop     ebx
retn
sub_40EDBA endp




sub_40EDEB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_40EEF0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40EDEB endp




sub_40EE43 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 64h ; 'd'
jb      short loc_40EE86
jbe     loc_40EEBC
cmp     eax, 8Ch
jb      short loc_40EE7C
jbe     loc_40EED6
cmp     eax, 0BEh
jz      loc_40EEDD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE7C:
cmp     eax, 78h ; 'x'
jz      short loc_40EEC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE86:
cmp     eax, 2Dh ; '-'
jb      short loc_40EE97
jbe     short loc_40EEAE
cmp     eax, 5Fh ; '_'
jz      short loc_40EEB5
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE97:
cmp     eax, 1Eh
jnz     short loc_40EEEB
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
jmp     short loc_40EEE2

loc_40EEAE:
mov     ebx, 1
jmp     short loc_40EEE2

loc_40EEB5:
mov     ebx, 2
jmp     short loc_40EEE2

loc_40EEBC:
mov     ebx, 3
jmp     short loc_40EEE2

loc_40EEC3:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EED6:
mov     ebx, 4
jmp     short loc_40EEE2

loc_40EEDD:
mov     ebx, 5

loc_40EEE2:
mov     edx, esi
mov     eax, ecx
call    sub_40EEF0

loc_40EEEB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40EE43 endp




sub_40EEF0 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50D080[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50D09C[eax*4]
mov     [edx+10h], eax
retn
sub_40EEF0 endp




sub_40EF30 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40EF5C
jbe     short loc_40EF60
cmp     ax, 7FFFh
jnz     short loc_40EF5C
mov     word ptr [edx+4], 0
jmp     short loc_40EF60

loc_40EF5C:
inc     word ptr [esi+4]

loc_40EF60:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_40EFA5
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40EFA5:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40EFD0
jbe     short loc_40EFD4
cmp     ax, 7FFFh
jnz     short loc_40EFD0
mov     word ptr [esi+0Ah], 0
jmp     short loc_40EFD4

loc_40EFD0:
inc     word ptr [esi+0Ah]

loc_40EFD4:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_40F023
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40F023:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40EF30 endp

jpt_40F09F dd offset loc_40F0A6 ; jump table for switch statement
dd offset loc_40F0E0
dd offset loc_40F106
dd offset loc_40F1BF
dd offset loc_40F1E3
dd offset loc_40F1FB
dd offset loc_40F249
dd offset def_40F09F



sub_40F050 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     edx, offset dword_560BDC
mov     [esp+1Ch+var_1C], edx
lea     ebp, [eax+640h]
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 7           ; switch 8 cases
ja      def_40F09F      ; jumptable 0040F09F default case, case 7
and     eax, 0FFh
jmp     jpt_40F09F[eax*4] ; switch jump

loc_40F0A6:             ; jumptable 0040F09F case 0
mov     edx, ebp
mov     eax, ecx
call    sub_40F299

def_40F09F:             ; jumptable 0040F09F default case, case 7
mov     edx, ebp
mov     eax, ecx
call    sub_40F332
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      loc_40F288
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     loc_40F28F

loc_40F0E0:             ; jumptable 0040F09F case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 1Bh
jnz     short def_40F09F ; jumptable 0040F09F default case, case 7
cmp     dword ptr [edx+10h], 5
jnz     short def_40F09F ; jumptable 0040F09F default case, case 7
mov     ebx, 2

loc_40F0F8:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319

loc_40F101:
inc     byte ptr [ecx+8]
jmp     short def_40F09F ; jumptable 0040F09F default case, case 7

loc_40F106:             ; jumptable 0040F09F case 2
cmp     ds:byte_560BE5, 1Bh
jnz     loc_40F191
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_40F13F
jbe     loc_40F183
cmp     eax, 0D7h
jb      short loc_40F138
jbe     short loc_40F176
cmp     eax, 0FAh
jz      short loc_40F183
jmp     loc_40F191

loc_40F138:
cmp     eax, 64h ; 'd'
jz      short loc_40F166
jmp     short loc_40F191

loc_40F13F:
cmp     eax, 1Eh
jb      short loc_40F14D
jbe     short loc_40F15F
cmp     eax, 32h ; '2'
jz      short loc_40F152
jmp     short loc_40F191

loc_40F14D:
cmp     eax, 14h
jnz     short loc_40F191

loc_40F152:
xor     ebx, ebx

loc_40F154:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319
jmp     short loc_40F191

loc_40F15F:
mov     ebx, 2
jmp     short loc_40F154

loc_40F166:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     short loc_40F15F

loc_40F176:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     short loc_40F152

loc_40F183:
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40F300

loc_40F191:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+9], 1Dh
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     esi, [eax+10h]
cmp     esi, 1
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
mov     ebx, esi
jmp     loc_40F0F8

loc_40F1BF:             ; jumptable 0040F09F case 3
cmp     ds:dword_560BEC, 19h
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebp+2], 0

loc_40F1D9:
mov     ebx, 3
jmp     loc_40F0F8

loc_40F1E3:             ; jumptable 0040F09F case 4
cmp     byte ptr [ecx+0A4h], 0Fh
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     word ptr [ebp+2], 0Fh
jmp     loc_40F101

loc_40F1FB:             ; jumptable 0040F09F case 5
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, ds:dword_560BEC
cmp     eax, 6Eh ; 'n'
jb      short loc_40F21A
jbe     short loc_40F236
cmp     eax, 82h
jz      short loc_40F1D9
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F21A:
cmp     eax, 5Fh ; '_'

loc_40F21D:             ; jumptable 0040F09F default case, case 7
jnz     def_40F09F
mov     ebx, 1

loc_40F228:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F236:
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F249:             ; jumptable 0040F09F case 6
mov     eax, ds:dword_560BEC
cmp     eax, 0A0h
jb      short loc_40F270
jbe     short loc_40F277
cmp     eax, 0C6h
jb      def_40F09F      ; jumptable 0040F09F default case, case 7
jbe     short loc_40F27E
cmp     eax, 0F0h
jz      short loc_40F236
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F270:
cmp     eax, 91h
jmp     short loc_40F21D

loc_40F277:
mov     ebx, 3
jmp     short loc_40F228

loc_40F27E:
mov     ebx, 1
jmp     loc_40F0F8

loc_40F288:
mov     eax, ecx
call    sub_4DEADD

loc_40F28F:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F050 endp




sub_40F299 proc near
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
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40F300
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40F319
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_40F299 endp




sub_40F300 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D114[ebx*4]
mov     [edx+4], eax
retn
sub_40F300 endp




sub_40F319 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D128[ebx*4]
mov     [edx+8], eax
retn
sub_40F319 endp




sub_40F332 proc near
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
cmp     al, 3Fh ; '?'
jb      short loc_40F357
jbe     short loc_40F35A
cmp     al, 7Fh
jnz     short loc_40F357
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40F35A

loc_40F357:
inc     byte ptr [esi+0Eh]

loc_40F35A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40F39C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40F39C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 3Fh ; '?'
jb      short loc_40F3BF
jbe     short loc_40F3C2
cmp     al, 7Fh
jnz     short loc_40F3BF
mov     byte ptr [esi+11h], 0
jmp     short loc_40F3C2

loc_40F3BF:
inc     byte ptr [esi+11h]

loc_40F3C2:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40F404
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40F404:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40F332 endp




sub_40F40F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_40F41A[ecx*4]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F40F endp




sub_40F47A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 640h
or      byte ptr [ecx], 2
mov     word ptr [eax], 2
mov     dx, [ecx+56h]
mov     [eax+0Ah], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_50D138
mov     byte ptr [ecx+9], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40F47A endp




sub_40F505 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+640h]
mov     [esp+1Ch+var_1C], edx
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
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
mov     edx, [esp+1Ch+var_1C]
test    byte ptr [edx], 2
jz      short loc_40F54E
mov     eax, ebp
call    sub_40F7F8

loc_40F54E:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_40F555[edx*4]
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      short loc_40F57D
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_40F584

loc_40F57D:
mov     eax, ebp
call    sub_4DEADD

loc_40F584:
test    byte ptr [ebp+0], 2
jz      short loc_40F59D
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40F59D:
mov     edx, [esp+1Ch+var_1C]
test    byte ptr [edx], 4
jnz     short loc_40F5B8
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697

loc_40F5B8:
add     esp, 4
jmp     loc_40F745
sub_40F505 endp



; Attributes: thunk

sub_40F5C0 proc near
jmp     sub_4DE336
sub_40F5C0 endp




sub_40F5C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40F5CB[edx*4]
pop     edx
retn
sub_40F5C5 endp




sub_40F5D4 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+640h]
mov     byte ptr [eax+0ACh], 0
call    rand_
and     eax, 0Fh
mov     al, ds:byte_50D164[eax]
xor     ah, ah
mov     [ecx+8], ax
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
retn
sub_40F5D4 endp




sub_40F5FF proc near
push    ebx
push    edx
lea     edx, [eax+640h]
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     short loc_40F61D
mov     byte ptr [eax+0ACh], 9
inc     byte ptr [eax+0Ah]

loc_40F61D:
pop     edx
pop     ebx
retn
sub_40F5FF endp




sub_40F620 proc near
cmp     byte ptr [eax+0A7h], 0
jge     short locret_40F62D
mov     byte ptr [eax+0Ah], 0

locret_40F62D:
retn
sub_40F620 endp




sub_40F62E proc near
push    edx
lea     edx, [eax+640h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_40F63E[edx*4]
pop     edx
retn
sub_40F62E endp




sub_40F647 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+640h]
inc     byte ptr [edi+3]
mov     ax, [esi+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
mov     eax, esi
add     eax, 14h
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_40F6B2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
neg     eax
jmp     short loc_40F6C7

loc_40F6B2:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552

loc_40F6C7:
sar     eax, 3
mov     [edi+6], ax
xor     ecx, ecx
mov     cl, [esi+0Ch]
lea     eax, [esi+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
jmp     loc_40F5B8
sub_40F647 endp




sub_40F6E4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_40F731
mov     byte ptr [esi+0ACh], 9
inc     byte ptr [edi+3]

loc_40F731:
mov     dh, [ebp+0]
test    dh, dh
jnz     short loc_40F745
and     byte ptr [edi], 0FBh
mov     byte ptr [edi+3], 3
mov     [esi+0ACh], dh

loc_40F745:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F6E4 endp




sub_40F74C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_40F731
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [edi+3]
jmp     short loc_40F731
sub_40F74C endp




sub_40F79B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_40F7D3
mov     eax, 4Eh ; 'N'
call    sub_47E888
test    eax, eax
jz      short loc_40F7E8

loc_40F7D3:
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     byte ptr [ecx+9], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40F7E8:
add     dx, [ecx+56h]
and     dh, 0Fh
mov     [ecx+56h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F79B endp




sub_40F7F8 proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 640h
mov     ecx, ds:dword_5F84E8
cmp     edx, ecx
jnz     short loc_40F821
mov     byte ptr [ecx+9], 1
mov     byte ptr [eax+3], 0
mov     dl, [eax]
or      dl, 4
mov     [eax], dl
mov     dh, dl
and     dh, 0FDh
mov     [eax], dh

loc_40F821:
pop     edx
pop     ecx
retn
sub_40F7F8 endp




sub_40F824 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590E4, dx
mov     eax, ds:dword_5590E0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40F860:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F824 endp




sub_40F86C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590DC, dx
mov     eax, ds:dword_5590D8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40F860
sub_40F86C endp




sub_40F8AA proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590E0
test    ecx, ecx
jz      loc_40F950
cmp     ds:dword_5590D8, 0
jz      loc_40F950
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40F90C
jge     short loc_40F8E4
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40F900

loc_40F8E4:
inc     ds:word_5590E4
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590E0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40F90C
add     eax, 4

loc_40F900:
mov     ds:dword_5590E0, eax
mov     eax, edx
call    sub_40F824

loc_40F90C:
mov     eax, ds:dword_5590D8
mov     di, [eax+2]
test    di, di
jz      short loc_40F950
jge     short loc_40F928
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40F944

loc_40F928:
inc     ds:word_5590DC
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590D8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40F950
add     eax, 4

loc_40F944:
mov     ds:dword_5590D8, eax
mov     eax, edx
call    sub_40F86C

loc_40F950:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F8AA endp




sub_40F955 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590EC
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40F9AF
cmp     bl, ds:byte_560BE4
jnz     short loc_40F9AF
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40F9AF
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40F9AF
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D2C0[eax*4]
mov     ds:dword_5590E0, eax
mov     eax, edx
call    sub_40F824
add     ds:dword_5590EC, 6

loc_40F9AF:
mov     eax, ds:dword_5590E8
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40F9F6
cmp     bl, [ecx+8]
jnz     short loc_40F9F6
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40F9F6
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40F9F6
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D2F4[eax*4]
mov     ds:dword_5590D8, eax
mov     eax, edx
call    sub_40F86C
add     ds:dword_5590E8, 6

loc_40F9F6:
mov     eax, edx
call    sub_40F8AA
pop     edx
pop     ecx
pop     ebx
retn
sub_40F955 endp




sub_40FA01 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_5590EC, offset unk_50D330
mov     ds:dword_5590E8, offset unk_50D384
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40FA01 endp




sub_40FA3A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA56
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA56:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA3A endp




sub_40FA5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA76
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA76:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA5A endp




sub_40FA7A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA96
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA96:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA7A endp




sub_40FA9A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAB6
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAB6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA9A endp




sub_40FABA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAD6
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAD6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FABA endp




sub_40FADA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAF6
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FADA endp




sub_40FAFA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FB16
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FB16:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FAFA endp




sub_40FB1A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FB36
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FB36:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FB1A endp




sub_40FB3A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FB43[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40FB62
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40FB62:
mov     eax, ecx
call    sub_40F955
pop     edx
pop     ecx
retn
sub_40FB3A endp




sub_40FB6C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40FB7C
mov     eax, edx
call    sub_40FA01

loc_40FB7C:
mov     eax, edx
call    sub_40FB3A
pop     edx
retn
sub_40FB6C endp




sub_40FB85 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FBA2
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FBA2:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_40FB85 endp




sub_40FBB4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FBD1
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FBD1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_40FBB4 endp




sub_40FBDC proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FBE2[edx*4]
pop     edx
retn
sub_40FBDC endp




sub_40FBEB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+640h]
mov     [esp+1Ch+var_1C], offset dword_560BDC
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_40FC8F
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     word ptr [ebp+0], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD22
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
inc     byte ptr [ecx+8]

loc_40FC8F:
mov     eax, ecx
call    sub_40FBDC
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+8]
cmp     dh, 1
jnz     loc_40FD18
mov     al, [eax+9]
test    al, al
jbe     short loc_40FCB2
cmp     al, dh
jz      short loc_40FCDC
jmp     short loc_40FD0B

loc_40FCB2:
mov     ax, [ebp+0]
cmp     ax, 0Ah
jnz     short loc_40FD0B
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FCD5
mov     ebx, 1

loc_40FCCA:
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
jmp     short loc_40FCFD

loc_40FCD5:
mov     ebx, 3
jmp     short loc_40FCCA

loc_40FCDC:
mov     ax, [ebp+0]
cmp     ax, 32h ; '2'
jb      short loc_40FD0B
jbe     short loc_40FCF0
cmp     ax, 3Ch ; '<'
jz      short loc_40FCFD
jmp     short loc_40FD0B

loc_40FCF0:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
jmp     short loc_40FD0B

loc_40FCFD:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FD22

loc_40FD0B:
mov     edx, ebp
mov     eax, ecx
call    sub_40FD54
inc     word ptr [ebp+0]

loc_40FD18:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FBEB endp




sub_40FD22 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D4F6[ebx*4]
mov     [edx+4], eax
retn
sub_40FD22 endp




sub_40FD3B proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D506[ebx*4]
mov     [edx+8], eax
retn
sub_40FD3B endp




sub_40FD54 proc near
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
jb      short loc_40FD79
jbe     short loc_40FD7C
cmp     al, 7Fh
jnz     short loc_40FD79
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40FD7C

loc_40FD79:
inc     byte ptr [esi+0Eh]

loc_40FD7C:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40FDBE
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40FDBE:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40FDE1
jbe     short loc_40FDE4
cmp     al, 7Fh
jnz     short loc_40FDE1
mov     byte ptr [esi+11h], 0
jmp     short loc_40FDE4

loc_40FDE1:
inc     byte ptr [esi+11h]

loc_40FDE4:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40FE26
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40FE26:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40FD54 endp




sub_40FE31 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FE54
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FE54:
mov     dl, [esi+8]
cmp     dl, 1
jnz     short loc_40FE7B
cmp     dl, [esi+9]
jnz     short loc_40FE6D
mov     eax, ecx
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40FE6D:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_40FE7B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FE31 endp




sub_40FE80 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FE86[edx*4]
pop     edx
retn
sub_40FE80 endp




sub_40FE8F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+640h]
mov     [esp+1Ch+var_1C], offset dword_560BDC
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_40FF33
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     word ptr [ebp+0], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFE1
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA
inc     byte ptr [ecx+8]

loc_40FF33:
mov     eax, ecx
call    sub_40FE80
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+8]
cmp     dh, 1
jnz     loc_40FFD7
mov     al, [eax+9]
test    al, al
jbe     short loc_40FF59
cmp     al, dh
jz      short loc_40FF8F
jmp     loc_40FFCA

loc_40FF59:
mov     ax, [ebp+0]
cmp     ax, 28h ; '('
jb      loc_40FFCA
jbe     short loc_40FF71
cmp     ax, 78h ; 'x'

loc_40FF6D:
jz      short loc_40FFBF
jmp     short loc_40FFCA

loc_40FF71:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FFE1
jmp     short loc_40FFCA

loc_40FF8F:
mov     ax, [ebp+0]
cmp     ax, 0AAh
jb      short loc_40FFCA
jbe     short loc_40FFA1
cmp     ax, 0DCh
jmp     short loc_40FF6D

loc_40FFA1:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_41002C
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_410013
jmp     short loc_40FFCA

loc_40FFBF:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA

loc_40FFCA:
mov     edx, ebp
mov     eax, ecx
call    sub_410045
inc     word ptr [ebp+0]

loc_40FFD7:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FE8F endp




sub_40FFE1 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D57B[ebx*4]
mov     [edx+4], eax
retn
sub_40FFE1 endp




sub_40FFFA proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D58B[ebx*4]
mov     [edx+8], eax
retn
sub_40FFFA endp




sub_410013 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D583[ebx*4]
mov     [edx+4], eax
retn
sub_410013 endp




sub_41002C proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D593[ebx*4]
mov     [edx+8], eax
retn
sub_41002C endp




sub_410045 proc near
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
jb      short loc_41006A
jbe     short loc_41006D
cmp     al, 7Fh
jnz     short loc_41006A
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41006D

loc_41006A:
inc     byte ptr [esi+0Eh]

loc_41006D:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4100AF
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_4100AF:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4100D2
jbe     short loc_4100D5
cmp     al, 7Fh
jnz     short loc_4100D2
mov     byte ptr [esi+11h], 0
jmp     short loc_4100D5

loc_4100D2:
inc     byte ptr [esi+11h]

loc_4100D5:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_410117
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_410117:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_410045 endp




sub_410122 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590FC, dx
mov     eax, ds:dword_5590F8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_41015E:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410122 endp




sub_41016A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590F4, dx
mov     eax, ds:dword_5590F0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_41015E
sub_41016A endp




sub_4101A8 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590F8
test    ecx, ecx
jz      loc_41024E
cmp     ds:dword_5590F0, 0
jz      loc_41024E
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41020A
jge     short loc_4101E2
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4101FE

loc_4101E2:
inc     ds:word_5590FC
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590F8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41020A
add     eax, 4

loc_4101FE:
mov     ds:dword_5590F8, eax
mov     eax, edx
call    sub_410122

loc_41020A:
mov     eax, ds:dword_5590F0
mov     di, [eax+2]
test    di, di
jz      short loc_41024E
jge     short loc_410226
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410242

loc_410226:
inc     ds:word_5590F4
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590F0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41024E
add     eax, 4

loc_410242:
mov     ds:dword_5590F0, eax
mov     eax, edx
call    sub_41016A

loc_41024E:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4101A8 endp




sub_410253 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559104
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4102AD
cmp     bl, ds:byte_560BE4
jnz     short loc_4102AD
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_4102AD
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_4102AD
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D5F8[eax*4]
mov     ds:dword_5590F8, eax
mov     eax, edx
call    sub_410122
add     ds:dword_559104, 6

loc_4102AD:
mov     eax, ds:dword_559100
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4102F4
cmp     bl, [ecx+8]
jnz     short loc_4102F4
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_4102F4
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_4102F4
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D608[eax*4]
mov     ds:dword_5590F0, eax
mov     eax, edx
call    sub_41016A
add     ds:dword_559100, 6

loc_4102F4:
mov     eax, edx
call    sub_4101A8
pop     edx
pop     ecx
pop     ebx
retn
sub_410253 endp




sub_4102FF proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr ds:dword_560BDC+1, 48h ; 'H'
jnz     short loc_410332
mov     ds:dword_559104, offset unk_50D618
mov     ds:dword_559100, offset unk_50D636
jmp     short loc_410346

loc_410332:
mov     ds:dword_559104, offset unk_50D678
mov     ds:dword_559100, offset unk_50D68A

loc_410346:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4102FF endp




sub_410360 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41037C
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41037C:
pop     edx
pop     ecx
pop     ebx
retn
sub_410360 endp




sub_410380 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41039D
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_41039D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Dh ; '='
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410380 endp




sub_4103B2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4103CE
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4103CE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103B2 endp




sub_4103D2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4103EE
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4103EE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103D2 endp




sub_4103F2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41040E
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41040E:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103F2 endp

jpt_410442 dd offset loc_410449 ; jump table for switch statement
dd offset def_410442
dd offset loc_410462
dd offset loc_410481
dd offset loc_410497
dd offset loc_4104AF
dd offset def_410442



sub_41042E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_410442      ; jumptable 00410442 default case, cases 1,6
xor     edx, edx
mov     dl, al
jmp     jpt_410442[edx*4] ; switch jump

loc_410449:             ; jumptable 00410442 case 0
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Ch], 50h ; 'P'
pop     edx
pop     ecx
pop     ebx
retn

loc_410462:             ; jumptable 00410442 case 2
add     dword ptr [ecx+1Ch], 3AEEh
add     dword ptr [ecx+20h], 39DCCh
mov     al, [ecx+0Ch]
dec     al
mov     [ecx+0Ch], al
jnz     short def_410442 ; jumptable 00410442 default case, cases 1,6

loc_41047A:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410481:             ; jumptable 00410442 case 3
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
sub     word ptr [ecx+56h], 400h
jmp     short loc_41047A

loc_410497:             ; jumptable 00410442 case 4
mov     edx, [ecx+98h]
cmp     byte ptr [edx], 11h
jnz     short def_410442 ; jumptable 00410442 default case, cases 1,6
inc     al
mov     [ecx+0Ah], al
mov     byte ptr [ecx+0Ch], 16h
pop     edx
pop     ecx
pop     ebx
retn

loc_4104AF:             ; jumptable 00410442 case 5
mov     ah, [ecx+0Ch]
dec     ah
mov     [ecx+0Ch], ah
jnz     short loc_4104BC
inc     byte ptr [ecx+0Ah]

loc_4104BC:
sub     dword ptr [ecx+24h], 32000h

def_410442:             ; jumptable 00410442 default case, cases 1,6
pop     edx
pop     ecx
pop     ebx
retn
sub_41042E endp




sub_4104C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4104E3
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4104E3:
pop     edx
pop     ecx
pop     ebx
retn
sub_4104C7 endp




sub_4104E7 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4104F0[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41050F
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_41050F:
mov     eax, ecx
call    sub_410253
pop     edx
pop     ecx
retn
sub_4104E7 endp




sub_410519 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41052C
mov     eax, esi
call    sub_4102FF

loc_41052C:
mov     eax, esi
call    sub_4104E7
mov     dl, [esi+9]
test    dl, dl
jz      short loc_410552
cmp     dl, 5
jz      short loc_410552
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_410552:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410519 endp




sub_410557 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559114, dx
mov     eax, ds:dword_559110
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_410593:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410557 endp




sub_41059F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55910C, dx
mov     eax, ds:dword_559108
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_410593
sub_41059F endp




sub_4105DD proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559110
test    ecx, ecx
jz      loc_410683
cmp     ds:dword_559108, 0
jz      loc_410683
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41063F
jge     short loc_410617
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410633

loc_410617:
inc     ds:word_559114
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559110+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41063F
add     eax, 4

loc_410633:
mov     ds:dword_559110, eax
mov     eax, edx
call    sub_410557

loc_41063F:
mov     eax, ds:dword_559108
mov     di, [eax+2]
test    di, di
jz      short loc_410683
jge     short loc_41065B
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410677

loc_41065B:
inc     ds:word_55910C
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559108+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_410683
add     eax, 4

loc_410677:
mov     ds:dword_559108, eax
mov     eax, edx
call    sub_41059F

loc_410683:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4105DD endp




sub_410688 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_55911C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4106E2
cmp     bl, ds:byte_560BE4
jnz     short loc_4106E2
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_4106E2
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_4106E2
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D928[eax*4]
mov     ds:dword_559110, eax
mov     eax, edx
call    sub_410557
add     ds:dword_55911C, 6

loc_4106E2:
mov     eax, ds:dword_559118
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_410729
cmp     bl, [ecx+8]
jnz     short loc_410729
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_410729
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_410729
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D97C[eax*4]
mov     ds:dword_559108, eax
mov     eax, edx
call    sub_41059F
add     ds:dword_559118, 6

loc_410729:
mov     eax, edx
call    sub_4105DD

def_410794:             ; jumptable 00410794 default case, cases 1,4
pop     edx
pop     ecx
pop     ebx
retn
sub_410688 endp




sub_410734 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_55911C, offset unk_50D9F4
mov     ds:dword_559118, offset unk_50DA78
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_410734 endp

db 8Bh, 0C0h
jpt_410794 dd offset loc_41079B ; jump table for switch statement
dd offset def_410794
dd offset loc_4107B0
dd offset loc_4107C8
dd offset def_410794



sub_410783 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_410794 ; jumptable 00410794 default case, cases 1,4
and     eax, 0FFh
jmp     jpt_410794[eax*4] ; switch jump

loc_41079B:             ; jumptable 00410794 case 0
xor     ebx, ebx
mov     edx, 1

loc_4107A2:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4107B0:             ; jumptable 00410794 case 2
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 0
jnz     def_410794      ; jumptable 00410794 default case, cases 1,4
xor     ebx, ebx
mov     edx, 2
jmp     short loc_4107A2

loc_4107C8:             ; jumptable 00410794 case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 22h ; '"'
jnz     def_410794      ; jumptable 00410794 default case, cases 1,4
mov     ebx, 23h ; '#'
mov     edx, 3
jmp     short loc_4107A2
sub_410783 endp




sub_4107E3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4107FF
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4107FF:
pop     edx
pop     ecx
pop     ebx
retn
sub_4107E3 endp




sub_410803 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_410815
jbe     short loc_410829
pop     edx
pop     ecx
pop     ebx
retn

loc_410815:
test    al, al
jnz     short loc_410848
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_410845

loc_410829:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 2Ch ; ','
jnz     short loc_410848
mov     ebx, 23h ; '#'
mov     edx, 3
mov     eax, ecx
call    sub_4DE9BA

loc_410845:
inc     byte ptr [ecx+0Ah]

loc_410848:
pop     edx
pop     ecx
pop     ebx
retn
sub_410803 endp




sub_41084C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410868
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410868:
pop     edx
pop     ecx
pop     ebx
retn
sub_41084C endp




sub_41086C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410888
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410888:
pop     edx
pop     ecx
pop     ebx
retn
sub_41086C endp




sub_41088C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4108A8
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4108A8:
pop     edx
pop     ecx
pop     ebx
retn
sub_41088C endp




sub_4108AC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4108B5[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4108D4
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_4108D4:
mov     eax, ecx
call    sub_410688
pop     edx
pop     ecx
retn
sub_4108AC endp




sub_4108DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4108F1
mov     eax, esi
call    sub_410734

loc_4108F1:
mov     eax, esi
call    sub_4108AC
mov     dl, [esi+9]
test    dl, dl
jz      short loc_410917
cmp     dl, 5
jz      short loc_410917
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_410917:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4108DE endp




sub_41091C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_41091C endp




sub_410945 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410967
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+0Ah]
jmp     short loc_410983

loc_410967:
mov     dl, [ecx+0Ch]
inc     dl
mov     [ecx+0Ch], dl
cmp     dl, 1Eh
jnz     short loc_41097C
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0

loc_41097C:
mov     eax, ecx
call    sub_4DEADD

loc_410983:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
pop     ebx
retn
sub_410945 endp




sub_410992 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4109B0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     short loc_410983

loc_4109B0:
mov     eax, ecx
call    sub_4DEADD
mov     edx, [ecx+98h]
cmp     byte ptr [edx], 47h ; 'G'
jnz     short loc_410983
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_410983
sub_410992 endp




sub_4109CC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
cmp     byte ptr [ecx+0Ah], 0
jnz     short loc_4109FB
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4109FB:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4109CC endp

; START OF FUNCTION CHUNK FOR sub_410A1F

loc_410A06:
cmp     byte ptr [eax+8], 0
jz      sub_41091C
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_410A16[edx*4]
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_410A1F



sub_410A1F proc near

; FUNCTION CHUNK AT 00410A06 SIZE 00000019 BYTES

cmp     byte ptr [eax+3], 0
jz      short loc_410A06
retn
sub_410A1F endp




sub_410A26 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     byte ptr [ecx+0ACh], 0
mov     dword ptr [ecx+1Ch], 2000000h
mov     dword ptr [ecx+20h], 0E3FF0000h
mov     dword ptr [ecx+24h], 3000000h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+103h], 0
mov     byte ptr [ecx+10Bh], 0FFh
mov     dl, [ecx+10Bh]
mov     [ecx+107h], dl
mov     byte ptr [ecx+128h], 0Dh
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+15Eh], 14A5h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_410A26 endp




sub_410AB5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410ACE
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx

loc_410AC6:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410ACE:
pop     edx
pop     ecx
pop     ebx
retn
sub_410AB5 endp




sub_410AD2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
jmp     short loc_410AC6
sub_410AD2 endp




sub_410AE0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 12h
jnz     short loc_410B02
xor     ebx, ebx
mov     edx, 11h
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_410B02:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410AE0 endp




sub_410B17 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_410B17 endp




sub_410B2C proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_410B32[edx*4]
pop     edx
retn
sub_410B2C endp




sub_410B3B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 12h
jmp     loc_410AC6
sub_410B3B endp




sub_410B4C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 77h ; 'w'
jnz     short loc_410B6D
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410B6D:
pop     edx
pop     ecx
pop     ebx
sub_410B4C endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_41]



sub_410B71 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_410B77[edx*4]
pop     edx
retn
sub_410B71 endp




sub_410B80 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410B9C
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410B9C:
pop     edx
pop     ecx
pop     ebx
retn
sub_410B80 endp




sub_410BA0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_410BAB[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 190h
mov     eax, esi
call    sub_4ED88B
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410BA0 endp




sub_410BDC proc near
cmp     byte ptr [eax+8], 0
jnz     short sub_410BA0
jmp     sub_410A26
sub_410BDC endp




sub_410BE7 proc near
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
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     byte ptr [ecx+103h], 0
mov     byte ptr [ecx+10Bh], 0FFh
mov     al, [ecx+10Bh]
mov     [ecx+107h], al
mov     byte ptr [ecx+128h], 0Dh
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_410BE7 endp




sub_410C4A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410C67
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410C67:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410C4A endp




sub_410C79 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410C99
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410C99:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410C79 endp




sub_410CAB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410CCB
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410CCB:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410CAB endp




sub_410CDD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410CF6
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410CF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_410CDD endp




sub_410CFA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_410D12[edx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 190h
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410CFA endp




sub_410D31 proc near
cmp     byte ptr [eax+8], 0
jnz     short sub_410CFA
jmp     sub_410BE7
sub_410D31 endp




sub_410D3C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 1
jb      short loc_410D86
jbe     short loc_410DF0
cmp     al, 2
jz      loc_410E21
jmp     loc_410E85

loc_410D86:
test    al, al
jnz     loc_410E85
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_410ED6

loc_410DE8:
inc     byte ptr [ecx+8]
jmp     loc_410E85

loc_410DF0:
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     loc_410E85
cmp     ds:dword_560BEC, 0Ah
jnz     loc_410E85
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
jmp     short loc_410DE8

loc_410E21:
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_410E3D
jbe     short loc_410E62
cmp     eax, 46h ; 'F'
jb      short loc_410E85
jbe     short loc_410E4B
cmp     eax, 8Ch
jz      short loc_410E69
jmp     short loc_410E85

loc_410E3D:
cmp     eax, 1Eh
jb      short loc_410E85
jbe     short loc_410E4B
cmp     eax, 32h ; '2'
jz      short loc_410E52
jmp     short loc_410E85

loc_410E4B:
mov     ebx, 2
jmp     short loc_410E7C

loc_410E52:
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
jmp     short loc_410E85

loc_410E62:
mov     ebx, 1
jmp     short loc_410E7C

loc_410E69:
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
mov     ebx, 1

loc_410E7C:
mov     edx, ebp
mov     eax, ecx
call    sub_410ED6

loc_410E85:
mov     edx, ebp
mov     eax, ecx
call    sub_410EEF
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_410EAF
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_410EB6

loc_410EAF:
mov     eax, ecx
call    sub_4DEADD

loc_410EB6:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410D3C endp




sub_410EBD proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50DBF1[ebx*4]
mov     [edx+4], eax
retn
sub_410EBD endp




sub_410ED6 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50DBFD[ebx*4]
mov     [edx+8], eax
retn
sub_410ED6 endp




sub_410EEF proc near
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
jb      short loc_410F14
jbe     short loc_410F17
cmp     al, 7Fh
jnz     short loc_410F14
mov     byte ptr [edx+0Eh], 0
jmp     short loc_410F17

loc_410F14:
inc     byte ptr [esi+0Eh]

loc_410F17:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_410F59
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_410F59:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_410F7C
jbe     short loc_410F7F
cmp     al, 7Fh
jnz     short loc_410F7C
mov     byte ptr [esi+11h], 0
jmp     short loc_410F7F

loc_410F7C:
inc     byte ptr [esi+11h]

loc_410F7F:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_410FC1
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044

loc_410FC1:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_410EEF endp

jpt_411027 dd offset loc_41102E ; jump table for switch statement
dd offset loc_411093
dd offset loc_4110C6
dd offset loc_411118



sub_410FDC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     eax, offset dword_560BDC
lea     ebp, [ecx+640h]
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
mov     dl, [ecx+0ACh]
mov     [ecx+0ADh], dl
mov     dl, [ecx+8]
cmp     dl, 3           ; switch 4 cases
ja      def_411027      ; jumptable 00411027 default case
and     edx, 0FFh
jmp     jpt_411027[edx*4] ; switch jump

loc_41102E:             ; jumptable 00411027 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_411194
xor     ebx, ebx

loc_411082:
mov     edx, ebp
mov     eax, ecx
call    sub_4111AD
inc     byte ptr [ecx+8]
jmp     def_411027      ; jumptable 00411027 default case

loc_411093:             ; jumptable 00411027 case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     def_411027      ; jumptable 00411027 default case
mov     esi, ds:dword_560BEC
cmp     esi, 37h ; '7'
jz      loc_41114E
cmp     esi, 41h ; 'A'
jnz     def_411027      ; jumptable 00411027 default case
mov     ebx, 2
jmp     short loc_411082

loc_4110C6:             ; jumptable 00411027 case 2
cmp     ds:byte_560BE5, 3
jnz     short loc_4110E8
cmp     ds:dword_560BEC, 73h ; 's'
jnz     short loc_4110E8
xor     ebx, ebx

loc_4110DA:
mov     edx, ebp
mov     eax, ecx
call    sub_4111AD
jmp     def_411027      ; jumptable 00411027 default case

loc_4110E8:
cmp     byte ptr [eax+9], 4
jnz     def_411027      ; jumptable 00411027 default case
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     def_411027      ; jumptable 00411027 default case
mov     byte ptr [ecx+0ACh], 2
mov     edx, ebp
mov     eax, ecx
call    sub_411194
mov     ebx, 1
jmp     loc_411082

loc_411118:             ; jumptable 00411027 case 3
mov     eax, ds:dword_560BEC
cmp     eax, 28h ; '('
jb      short loc_411132
jbe     short loc_411140
cmp     eax, 4Bh ; 'K'
jb      short def_411027 ; jumptable 00411027 default case
jbe     short loc_411147
cmp     eax, 5Ah ; 'Z'
jz      short loc_41114E
jmp     short def_411027 ; jumptable 00411027 default case

loc_411132:
cmp     eax, 0Ah
jb      short def_411027 ; jumptable 00411027 default case
jbe     short loc_411140
cmp     eax, 1Eh
jz      short loc_411147
jmp     short def_411027 ; jumptable 00411027 default case

loc_411140:
mov     ebx, 3
jmp     short loc_4110DA

loc_411147:
mov     ebx, 1
jmp     short loc_4110DA

loc_41114E:
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_411194

def_411027:             ; jumptable 00411027 default case
mov     edx, ebp
mov     eax, ecx
call    sub_4111C6
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_411186
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41118D

loc_411186:
mov     eax, ecx
call    sub_4DEADD

loc_41118D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410FDC endp




sub_411194 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50DC66[ebx*4]
mov     [edx+4], eax
retn
sub_411194 endp




sub_4111AD proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50DC76[ebx*4]
mov     [edx+8], eax
retn
sub_4111AD endp




sub_4111C6 proc near
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
jb      short loc_4111EB
jbe     short loc_4111EE
cmp     al, 7Fh
jnz     short loc_4111EB
mov     byte ptr [edx+0Eh], 0
jmp     short loc_4111EE

loc_4111EB:
inc     byte ptr [esi+0Eh]

loc_4111EE:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_411230
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_411230:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_411253
jbe     short loc_411256
cmp     al, 7Fh
jnz     short loc_411253
mov     byte ptr [esi+11h], 0
jmp     short loc_411256

loc_411253:
inc     byte ptr [esi+11h]

loc_411256:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_411298
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044

loc_411298:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4111C6 endp




sub_4112A3 proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50DC92[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_4112A3 endp




sub_4112B6 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50DCAA[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_4112B6 endp




sub_4112C9 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_41133D
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_4112F2
jbe     short loc_411344
cmp     al, 7Fh
jnz     short loc_4112F2
mov     byte ptr [edx+4], 0

loc_4112F2:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
mov     al, [ecx+eax+1]
mov     [esi+5], al
add     byte ptr [esi+4], 2
jmp     short loc_411344

loc_41133D:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_411344:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_4113B2
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_411364
jbe     short loc_4113B9
cmp     al, 7Fh
jnz     short loc_411364
mov     [esi+6], bl

loc_411364:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax+1]
mov     [esi+7], al
add     byte ptr [esi+6], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4113B2:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_4113B9:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4112C9 endp

db 90h
jpt_411411 dd offset loc_411418 ; jump table for switch statement
dd offset loc_411487
dd offset def_411411
dd offset loc_411487



sub_4113CF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     [esp+1Ch+var_1C], offset dword_560BDC
lea     ebp, [eax+640h]
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
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      def_411411      ; jumptable 00411411 default case, case 2
and     eax, 0FFh
jmp     jpt_411411[eax*4] ; switch jump

loc_411418:             ; jumptable 00411411 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
xor     edx, edx
mov     eax, ebp
call    sub_4112A3
xor     edx, edx
mov     eax, ebp
call    sub_4112B6
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short def_411411 ; jumptable 00411411 default case, case 2

loc_411487:             ; jumptable 00411411 cases 1,3
mov     eax, ecx
call    sub_4DEADD

def_411411:             ; jumptable 00411411 default case, case 2
mov     eax, [esp+1Ch+var_1C]
mov     ebx, [eax+10h]
cmp     ebx, 0Ah
jnz     short loc_4114A7

loc_411499:
mov     edx, 1

loc_41149E:
mov     eax, ebp
call    sub_4112B6
jmp     short loc_4114E4

loc_4114A7:
cmp     ebx, 55h ; 'U'
jnz     short loc_4114B7
xor     edx, edx
mov     eax, ebp
call    sub_4112B6
jmp     short loc_4114D8

loc_4114B7:
cmp     ebx, 69h ; 'i'
jz      short loc_411499
cmp     ebx, 96h
jnz     short loc_4114C8
xor     edx, edx
jmp     short loc_41149E

loc_4114C8:
cmp     ebx, 0A0h
jz      short loc_4114D8
cmp     ebx, 0AAh
jnz     short loc_4114E4

loc_4114D8:
mov     edx, 1
mov     eax, ebp
call    sub_4112A3

loc_4114E4:
mov     edx, ebp
mov     eax, ecx
call    sub_4112C9
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4113CF endp




sub_4114F7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_411502[edx*4]
test    byte ptr [esi], 2
jz      short loc_41152A
cmp     dword ptr [esi+6A4h], 0
jz      short loc_41152A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 20h ; ' '
mov     eax, esi
call    sub_4ED88B

loc_41152A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4114F7 endp




sub_41152F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 4
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     ds:word_559120, dx
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_50DD5C
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_50DCCC[eax*8]
mov     [ecx+0Eh], al
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
xor     edx, edx
jmp     short loc_4115DC

loc_4115D5:
inc     edx
cmp     dx, 10h
jge     short loc_41160F

loc_4115DC:
movsx   ebx, dx
mov     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 2
add     eax, ebx
shl     eax, 5
test    ds:byte_6DD9CC[eax], 1
jz      short loc_4115D5
cmp     ds:byte_6DD9CE[eax], 2Ah ; '*'
jnz     short loc_4115D5
mov     ebx, offset byte_6DD9CC
add     ebx, eax
mov     [ecx+6A0h], ebx
jmp     short loc_4115D5

loc_41160F:
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+6A4h], 0
mov     ds:dword_55A310, ecx
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_41152F endp

db 90h
jpt_4116AC dd offset loc_4116B3 ; jump table for switch statement
dd offset loc_4116C7
dd offset loc_4116DB
dd offset loc_4116E1
dd offset loc_4116E8
dd offset loc_4116E1
dd offset loc_4116F6
dd offset loc_4116B3
dd offset loc_4116FC
dd offset loc_41170B



sub_411653 proc near

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
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     al, [eax+0Eh]
movsx   ecx, al
inc     al
mov     [ebp+0Eh], al
cmp     ecx, ds:dword_50DCCC[edx*8]
jnz     loc_41172B
mov     al, [ebp+0Dh]
cmp     al, 9           ; switch 10 cases
ja      def_4116AC      ; jumptable 004116AC default case
xor     edx, edx
mov     dl, al
jmp     jpt_4116AC[edx*4] ; switch jump

loc_4116B3:             ; jumptable 004116AC cases 0,7
inc     al
mov     [ebp+0Dh], al

loc_4116B8:
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]
jmp     short loc_41171C

loc_4116C7:             ; jumptable 004116AC case 1
inc     al
mov     [ebp+0Dh], al
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
jmp     short loc_41171C

loc_4116DB:             ; jumptable 004116AC case 2
mov     byte ptr [ebp+0Dh], 9
jmp     short def_4116AC ; jumptable 004116AC default case

loc_4116E1:             ; jumptable 004116AC cases 3,5
inc     al
mov     [ebp+0Dh], al
jmp     short def_4116AC ; jumptable 004116AC default case

loc_4116E8:             ; jumptable 004116AC case 4
xor     esi, esi
mov     ds:word_559120, si
inc     byte ptr [ebp+0Dh]
jmp     short loc_4116B8

loc_4116F6:             ; jumptable 004116AC case 6
mov     byte ptr [ebp+0Dh], 0
jmp     short loc_4116B8

loc_4116FC:             ; jumptable 004116AC case 8
mov     ds:word_559120, 1
mov     byte ptr [ebp+0Dh], 3
jmp     short loc_4116B8

loc_41170B:             ; jumptable 004116AC case 9
mov     byte ptr [ebp+0Dh], 0
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]

loc_41171C:
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B

def_4116AC:             ; jumptable 004116AC default case
mov     byte ptr [ebp+0Eh], 0
jmp     short loc_411781

loc_41172B:
mov     eax, [ebp+6A0h]
cmp     byte ptr [eax+8], 2
jnz     short loc_41176A
cmp     ds:word_559120, 1
jz      short loc_41176A
mov     ds:word_559120, 1
mov     byte ptr [ebp+0Dh], 3
mov     byte ptr [ebp+0Eh], 0
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_411781

loc_41176A:
mov     eax, [ebp+0Ah]
sar     eax, 18h
cmp     ds:dword_50DCC8[eax*8], 0FFFFFFFFh
jz      short loc_411781
mov     eax, ebp
call    sub_4DEADD

loc_411781:
mov     eax, ds:dword_55911C+2
sar     eax, 10h
mov     eax, ds:dword_50DD55[eax*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [ebp+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_55911C+2
sar     eax, 10h
mov     eax, ds:(dword_50DD55+1)[eax*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [ebp+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044
mov     eax, [esp+1Ch+var_1C]
mov     edi, [eax+184h]
cmp     ebp, edi
jnz     short loc_411822
mov     byte ptr [edi+9], 1
mov     byte ptr [edi+0Ah], 0
mov     byte ptr [edi+0Fh], 0
or      byte ptr [eax+0BDh], 20h
xor     byte ptr [eax], 2
mov     dword ptr [eax+184h], 0

loc_411822:
cmp     byte ptr [ebp+9], 1
jnz     short loc_41182F
mov     eax, ebp
call    sub_411B13

loc_41182F:
add     esp, 4
pop     ebp
pop     edi

def_411984:             ; jumptable 00411984 default case, case 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_411653 endp

db 8Bh, 0C0h
jpt_411893 dd offset loc_41189A ; jump table for switch statement
dd offset loc_4118B6
dd offset loc_4118CA
dd offset loc_4118D1
dd offset loc_4118CA
dd offset loc_4118D1
dd offset loc_4118D8
dd offset loc_4118D1
dd offset def_411893



sub_41185F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
mov     dl, [ecx+0Eh]
movsx   ebx, dl
inc     dl
mov     [ecx+0Eh], dl
cmp     ebx, ds:dword_50DCCC[eax*8]
jnz     loc_411905
mov     al, [ecx+0Dh]
mov     ah, al
sub     ah, 9           ; switch 9 cases
cmp     ah, 8
ja      short def_411893 ; jumptable 00411893 default case, case 17
xor     edx, edx
mov     dl, ah
jmp     jpt_411893[edx*4] ; switch jump

loc_41189A:             ; jumptable 00411893 case 9
mov     byte ptr [ecx+0Dh], 0Ah

loc_41189E:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_50DCC8[eax*8]

loc_4118AB:
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short def_411893 ; jumptable 00411893 default case, case 17

loc_4118B6:             ; jumptable 00411893 case 10
inc     al
mov     [ecx+0Dh], al
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
jmp     short loc_4118AB

loc_4118CA:             ; jumptable 00411893 cases 11,13
inc     al
mov     [ecx+0Dh], al
jmp     short loc_41189E

loc_4118D1:             ; jumptable 00411893 cases 12,14,16
inc     al
mov     [ecx+0Dh], al
jmp     short def_411893 ; jumptable 00411893 default case, case 17

loc_4118D8:             ; jumptable 00411893 case 15
inc     al
mov     [ecx+0Dh], al
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_50DCC8[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+6A4h], 1

def_411893:             ; jumptable 00411893 default case, case 17
mov     byte ptr [ecx+0Eh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_411905:
mov     eax, [ecx+0Ah]
sar     eax, 18h
cmp     ds:dword_50DCC8[eax*8], 0FFFFFFFFh
jz      short loc_411920
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn

loc_411920:
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_41185F endp

jpt_411984 dd offset loc_41198B ; jump table for switch statement
dd offset loc_411A09
dd offset loc_411A29
dd offset loc_411ABC
dd offset def_411984



sub_41194F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0A4h], 4
jz      short loc_411967
cmp     byte ptr [esi+0A4h], 0Ah
jnz     short loc_411974

loc_411967:
lea     edx, [esi+14h]
mov     eax, 112h
call    sub_4D8BC3

loc_411974:
mov     al, [esi+0Dh]
cmp     al, 4           ; switch 5 cases
ja      def_411984      ; jumptable 00411984 default case, case 4
and     eax, 0FFh
jmp     jpt_411984[eax*4] ; switch jump

loc_41198B:             ; jumptable 00411984 case 0
mov     ebx, 4
mov     edx, 6
mov     eax, esi
call    sub_4DE96B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 166h
mov     eax, esi
call    sub_4DD43B
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4119FE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [esi+14h]
sub     eax, 1Fh
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+16h]
sub     eax, 0Fh
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [esi+18h]
sub     eax, 1Fh
mov     [edx+20h], ax

loc_4119FE:
inc     byte ptr [esi+0Fh]

loc_411A01:
inc     byte ptr [esi+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_411A09:             ; jumptable 00411984 case 1
mov     eax, esi
call    sub_4DEADD
mov     ah, [esi+0Fh]
inc     ah
mov     [esi+0Fh], ah
cmp     ah, 3Ch ; '<'
jnz     short loc_411A51
inc     byte ptr [esi+0Dh]

loc_411A20:
mov     byte ptr [esi+0Fh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_411A29:             ; jumptable 00411984 case 2
mov     eax, esi
call    sub_4DEADD
mov     cl, [esi+0Fh]
inc     cl
mov     [esi+0Fh], cl
cmp     cl, 3Ch ; '<'
jnz     short loc_411A43
add     byte ptr [esi+0Dh], 2
jmp     short loc_411A20

loc_411A43:
mov     ax, [esi+56h]
sub     eax, 10h
and     ah, 0Fh
mov     [esi+56h], ax

loc_411A51:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 166h
mov     eax, esi
call    sub_4DD43B
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      def_411984      ; jumptable 00411984 default case, case 4
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [esi+14h]
sub     eax, 1Fh
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+16h]
sub     eax, 0Fh
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [esi+18h]
sub     eax, 1Fh
mov     [edx+20h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_411ABC:             ; jumptable 00411984 case 3
mov     eax, esi
call    sub_4DEADD
mov     dh, [esi+0Fh]
inc     dh
mov     [esi+0Fh], dh
cmp     dh, 78h ; 'x'
jz      loc_411A01
jmp     loc_411A43
sub_41194F endp




sub_411AD9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 0
jnz     short loc_411AF5
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Fh]

loc_411AF5:
pop     edx
pop     ecx
pop     ebx
retn
sub_411AD9 endp

db 8Bh, 0C0h
jpt_411B2B dd offset loc_411B32 ; jump table for switch statement
dd offset loc_411B8D
dd offset loc_411BAC
dd offset loc_411C03
dd offset loc_411C13
dd offset loc_411C28



sub_411B13 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_411B2B      ; jumptable 00411B2B default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_411B2B[ecx*4] ; switch jump

loc_411B32:             ; jumptable 00411B2B case 0
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
and     ds:byte_5F8364, 0FDh
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+20h+var_20], eax
mov     eax, [esi+190h]
sar     eax, 10h
add     eax, 10h
mov     [esp+20h+var_1C], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+20h+var_18], eax
mov     ecx, ds:dword_77E964
mov     ebx, 0C00h
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
mov     byte ptr [esi+0Fh], 0
jmp     short loc_411BA4

loc_411B8D:             ; jumptable 00411B2B case 1
call    sub_42ABA2
test    eax, eax
jnz     def_411B2B      ; jumptable 00411B2B default case
mov     edx, 1

loc_411B9F:
call    sub_4A0E24

loc_411BA4:
inc     byte ptr [esi+0Ah]
jmp     def_411B2B      ; jumptable 00411B2B default case

loc_411BAC:             ; jumptable 00411B2B case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_411B2B      ; jumptable 00411B2B default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0Fh], 0
mov     esi, ds:dword_55A314
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+20h+var_20], eax
mov     eax, [esi+190h]
sar     eax, 10h
mov     [esp+20h+var_1C], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+20h+var_18], eax
mov     ecx, 100h
mov     ebx, 400h
mov     edx, ecx
mov     eax, esp
call    sub_42AAA8
jmp     short def_411B2B ; jumptable 00411B2B default case

loc_411C03:             ; jumptable 00411B2B case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_411B2B ; jumptable 00411B2B default case
mov     edx, 0Bh
jmp     short loc_411B9F

loc_411C13:             ; jumptable 00411B2B case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_411B2B ; jumptable 00411B2B default case
inc     al
mov     [esi+0Ah], al
call    sub_42A98E
jmp     short def_411B2B ; jumptable 00411B2B default case

loc_411C28:             ; jumptable 00411B2B case 5
call    sub_42ABA2
test    eax, eax
jnz     short def_411B2B ; jumptable 00411B2B default case
and     ds:byte_5F8421, 0DFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+9], 0
xor     dh, dh
mov     byte ptr ds:dword_560BDC+1, dh
mov     byte ptr ds:dword_560BDC, dh

def_411B2B:             ; jumptable 00411B2B default case
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_411B13 endp




sub_411C59 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 670h
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
cmp     byte ptr [ebp+9], 0
jnz     short loc_411CB7
test    byte ptr ds:word_77EAB6, 1
jz      short loc_411CAC
mov     word ptr [ebp+15Eh], 3126h
jmp     short loc_411CC0

loc_411CAC:
mov     word ptr [ebp+15Eh], 3547h
jmp     short loc_411CC0

loc_411CB7:
mov     word ptr [ebp+15Eh], 4210h

loc_411CC0:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
call    rand_
mov     [edx+14h], ax
mov     ax, [edx+0Ch]
mov     [edx+0Eh], ax
mov     ax, [edx+10h]
mov     [edx+12h], ax
mov     eax, ds:dword_55912C
mov     ds:dword_559130, eax
mov     eax, ds:dword_559124
mov     ds:dword_559128, eax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_411D01[edx*4]
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_411D22
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
jmp     short loc_411D43

loc_411D22:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_411D33
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_411D4A

loc_411D33:
xor     ebx, ebx
mov     bl, [ebp+0A4h]
xor     edx, edx
mov     dl, [ebp+0ACh]

loc_411D43:
mov     eax, ebp
call    sub_4DE96B

loc_411D4A:
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Ch]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0Ah]
sar     eax, 10h
cmp     edx, eax
jz      short loc_411D88
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [ebp+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_411D88:
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+10h]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0Eh]
sar     eax, 10h
cmp     edx, eax
jz      short loc_411DC6
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ebp, [ebp+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ebp
call    sub_4EE044

loc_411DC6:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_411C59 endp




sub_411DD0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 670h
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     word ptr [eax+2], 1
mov     dx, [eax+2]
mov     [eax], dx
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+10h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_411E4F

def_411EC3:             ; jumptable 00411EC3 default case
pop     edx             ; jumptable 00411F92 default case
pop     ecx
pop     ebx
retn
sub_411DD0 endp




sub_411E4F proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_411E58[ecx*4]
mov     eax, edx
call    sub_412506
pop     edx
pop     ecx
retn
sub_411E4F endp



; Attributes: thunk

sub_411E69 proc near
jmp     sub_4DE336
sub_411E69 endp

db 8Dh, 40h, 0
jpt_411EC3 dd offset loc_411ECA ; jump table for switch statement
dd offset loc_411EF0
dd offset loc_411F16
dd offset loc_411F3C
dd offset loc_411F5B
jpt_411F92 dd offset loc_411F99 ; jump table for switch statement
dd offset loc_411FC8
dd offset loc_411FEF
dd offset loc_41204C
dd offset loc_412099



sub_411E99 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 670h
cmp     byte ptr [edx+0Bh], 0
jnz     loc_411F7E
mov     byte ptr [edx+0Bh], 1
mov     word ptr [eax+4], 0
mov     bl, [edx+0Ah]
cmp     bl, 4           ; switch 5 cases
ja      short def_411EC3 ; jumptable 00411EC3 default case
; jumptable 00411F92 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_411EC3[ecx*4] ; switch jump

loc_411ECA:             ; jumptable 00411EC3 case 0
mov     byte ptr [edx+0ACh], 1
and     byte ptr [eax], 0FEh

loc_411ED4:
mov     edx, ds:off_50DDE8 ; "\n\v\n"
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 0Ch
mov     word ptr [eax+0Ch], 7
pop     edx
pop     ecx
pop     ebx
retn

loc_411EF0:             ; jumptable 00411EC3 case 1
mov     byte ptr [edx+0ACh], 1
and     byte ptr [eax], 0FEh
mov     edx, ds:off_50DDDC
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 3
mov     word ptr [eax+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_411F16:             ; jumptable 00411EC3 case 2
mov     byte ptr [edx+0ACh], 1
and     byte ptr [eax], 0FEh
mov     edx, ds:off_50DDDC
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 3
mov     word ptr [eax+0Ch], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_411F3C:             ; jumptable 00411EC3 case 3
or      byte ptr [eax], 1
mov     edx, ds:off_50DDE0
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 4
mov     word ptr [eax+0Ch], 4
pop     edx
pop     ecx
pop     ebx
retn

loc_411F5B:             ; jumptable 00411EC3 case 4
mov     byte ptr [edx+0ACh], 2
mov     edx, ds:off_50DDE4 ; "\a\b\a\t\a\t\b\t\n\v\n"
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 9
mov     word ptr [eax+0Ch], 6
pop     edx
pop     ecx
pop     ebx
retn

loc_411F7E:
inc     word ptr [eax+4]
mov     bl, [edx+0Ah]
cmp     bl, 4           ; switch 5 cases
ja      def_411EC3      ; jumptable 00411EC3 default case
; jumptable 00411F92 default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_411F92[ecx*4] ; switch jump

loc_411F99:             ; jumptable 00411F92 case 0
mov     dx, [eax+4]
cmp     dx, 0Ah
jb      def_411EC3      ; jumptable 00411EC3 default case
; jumptable 00411F92 default case
jbe     short loc_411FB4
cmp     dx, 0D2h
jz      short loc_411FBB
pop     edx
pop     ecx
pop     ebx
retn

loc_411FB4:
or      byte ptr [eax], 4
pop     edx
pop     ecx
pop     ebx
retn

loc_411FBB:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 0Ch
pop     edx
pop     ecx
pop     ebx
retn

loc_411FC8:             ; jumptable 00411F92 case 1
mov     dx, [eax+4]
cmp     dx, 28h ; '('
jb      def_411EC3      ; jumptable 00411EC3 default case
; jumptable 00411F92 default case
jbe     short loc_411FB4
cmp     dx, 46h ; 'F'
jnz     def_411EC3      ; jumptable 00411EC3 default case
; jumptable 00411F92 default case

loc_411FE2:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_411FEF:             ; jumptable 00411F92 case 2
mov     dx, [eax+4]
cmp     dx, 0C3h
jb      short loc_412017
jbe     short loc_411FE2
cmp     dx, 0DDh
jb      short loc_412010
jbe     short loc_412042
cmp     dx, 0E0h

loc_41200A:
jz      short loc_412038
pop     edx
pop     ecx
pop     ebx
retn

loc_412010:
cmp     dx, 0DCh
jmp     short loc_41200A

loc_412017:
cmp     dx, 55h ; 'U'
jb      short loc_412029
jbe     short loc_411FE2
cmp     dx, 73h ; 's'
jz      short loc_411FB4
pop     edx
pop     ecx
pop     ebx
retn

loc_412029:
cmp     dx, 0Fh
jnz     def_411EC3      ; jumptable 00411EC3 default case
; jumptable 00411F92 default case
jmp     loc_411FB4

loc_412038:
mov     word ptr [eax+0Ch], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_412042:
mov     word ptr [eax+0Ch], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_41204C:             ; jumptable 00411F92 case 3
mov     dx, [eax+4]
cmp     dx, 50h ; 'P'
jb      short loc_412069
jbe     short loc_412074
cmp     dx, 64h ; 'd'
jb      short loc_41207D
jbe     short loc_41206F
cmp     dx, 0D2h
jz      short loc_412074
jmp     short loc_41207D

loc_412069:
cmp     dx, 14h
jnz     short loc_41207D

loc_41206F:
or      byte ptr [eax], 4
jmp     short loc_41207D

loc_412074:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 4

loc_41207D:
cmp     word ptr [eax+4], 0FFh
jnz     def_411EC3      ; jumptable 00411EC3 default case
; jumptable 00411F92 default case
mov     word ptr [eax+0Ch], 5
mov     word ptr [eax+10h], 5
pop     edx
pop     ecx
pop     ebx
retn

loc_412099:             ; jumptable 00411F92 case 4
mov     bx, [eax+4]
cmp     bx, 64h ; 'd'
jb      short loc_4120D0
jbe     loc_4120F9
cmp     bx, 0AAh
jb      short loc_4120C8
jbe     loc_412104
cmp     bx, 0BEh
jb      short loc_41210D
jbe     short loc_4120F4
cmp     bx, 17Eh
jz      short loc_412104
jmp     short loc_41210D

loc_4120C8:
cmp     bx, 73h ; 's'

loc_4120CC:
jz      short loc_4120F4
jmp     short loc_41210D

loc_4120D0:
cmp     bx, 23h ; '#'
jb      short loc_4120DE
jbe     short loc_4120EC
cmp     bx, 2Dh ; '-'
jmp     short loc_4120CC

loc_4120DE:
cmp     bx, 0Ah
jnz     short loc_41210D
mov     word ptr [eax+10h], 7
jmp     short loc_41210D

loc_4120EC:
mov     word ptr [eax+10h], 8
jmp     short loc_41210D

loc_4120F4:
or      byte ptr [eax], 4
jmp     short loc_41210D

loc_4120F9:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 9
jmp     short loc_41210D

loc_412104:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 0Ch

loc_41210D:
cmp     word ptr [eax+4], 6Eh ; 'n'
jnz     def_411EC3      ; jumptable 00411EC3 default case
; jumptable 00411F92 default case
mov     byte ptr [edx+0ACh], 3
jmp     loc_411ED4
sub_411E99 endp

db 90h
jpt_412289 dd offset loc_412290 ; jump table for switch statement
dd offset loc_4122C8
dd offset def_412289
dd offset loc_4122EF
dd offset def_412289
dd offset loc_412332
dd offset loc_412396
dd offset def_412289
dd offset loc_4123F3
dd offset loc_4124AF



sub_41214D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 670h
cmp     byte ptr [edx+0Dh], 0
jz      short loc_41216D
mov     byte ptr [edx+0Dh], 0
mov     bl, [edx+0Eh]
mov     [edx+0Ah], bl
mov     byte ptr [edx+0Bh], 0
jmp     short loc_412177

loc_41216D:
cmp     byte ptr [edx+0Bh], 0
jnz     loc_412275

loc_412177:
mov     byte ptr [edx+0Bh], 1
mov     word ptr [eax+4], 0
mov     bl, [edx+0Ah]
cmp     bl, 5
jb      short loc_4121B4
jbe     loc_412204
cmp     bl, 8
jb      short loc_4121A7
jbe     loc_412240
cmp     bl, 9
jz      loc_41225C
pop     edx
pop     ecx
pop     ebx
retn

loc_4121A7:
cmp     bl, 6
jz      loc_41222E
pop     edx
pop     ecx
pop     ebx
retn

loc_4121B4:
test    bl, bl
jbe     short loc_4121C1
cmp     bl, 3
jz      short loc_4121F3
pop     edx
pop     ecx
pop     ebx
retn

loc_4121C1:
mov     byte ptr [edx+0ACh], 4
and     byte ptr [eax], 0FEh
mov     word ptr [eax+0Ch], 7
mov     edx, ds:off_50DDE8 ; "\n\v\n"
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 0Ch
mov     word ptr [eax+0Eh], 0FFh
mov     word ptr [eax+12h], 0FFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4121F3:
mov     byte ptr [edx+0ACh], 5
mov     word ptr [eax+0Ch], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_412204:
mov     byte ptr [edx+0ACh], 6
mov     byte ptr [edx+108h], 13h
mov     edx, ds:off_50DDEC
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 0Fh

loc_412224:
mov     word ptr [eax+0Ch], 9
pop     edx
pop     ecx
pop     ebx
retn

loc_41222E:
mov     byte ptr [edx+0ACh], 7
mov     byte ptr [edx+108h], 4
pop     edx
pop     ecx
pop     ebx
retn

loc_412240:
mov     edx, ds:off_50DDE8 ; "\n\v\n"
mov     ds:dword_559124, edx
mov     word ptr [eax+10h], 4
mov     word ptr [eax+0Ch], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_41225C:
mov     word ptr [eax+0Ch], 7
mov     edx, ds:off_50DDE4 ; "\a\b\a\t\a\t\b\t\n\v\n"
mov     ds:dword_559124, edx

loc_41226E:
or      byte ptr [eax], 4
pop     edx
pop     ecx
pop     ebx
retn

loc_412275:
inc     word ptr [eax+4]
mov     bl, [edx+0Ah]
cmp     bl, 9           ; switch 10 cases
ja      def_412289      ; jumptable 00412289 default case, cases 2,4,7
xor     ecx, ecx
mov     cl, bl
jmp     jpt_412289[ecx*4] ; switch jump

loc_412290:             ; jumptable 00412289 case 0
mov     bx, [eax+4]
cmp     bx, 28h ; '('
jb      short loc_4122B2
jbe     short loc_4122A4
cmp     bx, 4Bh ; 'K'
jz      short loc_4122A9
jmp     short loc_4122B2

loc_4122A4:
or      byte ptr [eax], 4
jmp     short loc_4122B2

loc_4122A9:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 0Ch

loc_4122B2:
cmp     word ptr [eax+4], 10h
jnz     def_412289      ; jumptable 00412289 default case, cases 2,4,7
or      byte ptr [eax], 1
mov     byte ptr [edx+9], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4122C8:             ; jumptable 00412289 case 1
mov     dx, [eax+4]
cmp     dx, 0Ah
jb      def_412289      ; jumptable 00412289 default case, cases 2,4,7
jbe     short loc_41226E
cmp     dx, 50h ; 'P'
jnz     def_412289      ; jumptable 00412289 default case, cases 2,4,7

loc_4122E2:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 0Ch
pop     edx
pop     ecx
pop     ebx
retn

loc_4122EF:             ; jumptable 00412289 case 3
mov     dx, [eax+4]
cmp     dx, 32h ; '2'
jb      short loc_41231C
jbe     loc_41226E
cmp     dx, 5Ah ; 'Z'
jb      short loc_412316
jbe     loc_41226E
cmp     dx, 94h

loc_412310:
jz      short loc_4122E2
pop     edx
pop     ecx
pop     ebx
retn

loc_412316:
cmp     dx, 55h ; 'U'
jmp     short loc_412310

loc_41231C:
cmp     dx, 5
jb      def_412289      ; jumptable 00412289 default case, cases 2,4,7
jbe     loc_41226E
cmp     dx, 1Eh
jmp     short loc_412310

loc_412332:             ; jumptable 00412289 case 5
mov     dx, [eax+4]
cmp     dx, 36h ; '6'
jb      short loc_412365
jbe     loc_412224
cmp     dx, 0B4h
jb      short loc_41235A
jbe     short loc_41238C
cmp     dx, 0B8h

loc_412350:
jz      loc_412224
pop     edx
pop     ecx
pop     ebx
retn

loc_41235A:
cmp     dx, 0AAh

loc_41235F:
jz      short loc_41237F
pop     edx
pop     ecx
pop     ebx
retn

loc_412365:
cmp     dx, 0Ah
jb      def_412289      ; jumptable 00412289 default case, cases 2,4,7
jbe     loc_41226E
cmp     dx, 32h ; '2'
jz      short loc_41238C
pop     edx
pop     ecx
pop     ebx
retn

loc_41237F:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 0Fh
pop     edx
pop     ecx
pop     ebx
retn

loc_41238C:
mov     word ptr [eax+0Ch], 0Ah
pop     edx
pop     ecx
pop     ebx
retn

loc_412396:             ; jumptable 00412289 case 6
mov     dx, [eax+4]
cmp     dx, 87h
jb      short loc_4123D3
jbe     short loc_41237F
cmp     dx, 0C8h
jb      short loc_4123C4
jbe     short loc_41238C
cmp     dx, 0CCh
jb      def_412289      ; jumptable 00412289 default case, cases 2,4,7
jbe     loc_412224
cmp     dx, 0FFh
jmp     short loc_41235F

loc_4123C4:
cmp     dx, 0AAh
jz      loc_41226E
pop     edx
pop     ecx
pop     ebx
retn

loc_4123D3:
cmp     dx, 28h ; '('
jb      short loc_4123E4
jbe     short loc_41238C
cmp     dx, 2Ch ; ','
jmp     loc_412350

loc_4123E4:
cmp     dx, 5
jnz     def_412289      ; jumptable 00412289 default case, cases 2,4,7
jmp     loc_41226E

loc_4123F3:             ; jumptable 00412289 case 8
mov     bx, [eax+4]
cmp     bx, 73h ; 's'
jb      short loc_412422
jbe     short loc_41243B
cmp     bx, 0B9h
jb      short loc_41241A
jbe     short loc_41243B
cmp     bx, 0C8h
jb      short loc_412444
jbe     short loc_412436
cmp     bx, 0FFh
jz      short loc_41243B
jmp     short loc_412444

loc_41241A:
cmp     bx, 78h ; 'x'

loc_41241E:
jz      short loc_412436
jmp     short loc_412444

loc_412422:
cmp     bx, 41h ; 'A'
jb      short loc_412430
jbe     short loc_41243B
cmp     bx, 46h ; 'F'
jmp     short loc_41241E

loc_412430:
cmp     bx, 1Eh
jnz     short loc_412444

loc_412436:
or      byte ptr [eax], 4
jmp     short loc_412444

loc_41243B:
and     byte ptr [eax], 0FBh
mov     word ptr [eax+10h], 0Ch

loc_412444:
mov     bx, [eax+4]
cmp     bx, 5Ah ; 'Z'
jb      short loc_412467
jbe     short loc_412499
cmp     bx, 7Dh ; '}'
jb      def_412289      ; jumptable 00412289 default case, cases 2,4,7
jbe     short loc_412499
cmp     bx, 0D2h
jz      short loc_4124A4
pop     edx
pop     ecx
pop     ebx
retn

loc_412467:
cmp     bx, 1Eh
jb      def_412289      ; jumptable 00412289 default case, cases 2,4,7
jbe     short loc_41247D
cmp     bx, 46h ; 'F'
jz      short loc_41248E
pop     edx
pop     ecx
pop     ebx
retn

loc_41247D:
mov     byte ptr [edx+0ACh], 8
mov     word ptr [eax+0Ch], 7
pop     edx
pop     ecx
pop     ebx
retn

loc_41248E:
mov     byte ptr [edx+0ACh], 9
pop     edx
pop     ecx
pop     ebx
retn

loc_412499:
mov     byte ptr [edx+0ADh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4124A4:
mov     byte ptr [edx+0ACh], 0Ah
pop     edx
pop     ecx
pop     ebx
retn

loc_4124AF:             ; jumptable 00412289 case 9
mov     bx, [eax+4]
cmp     bx, 0BEh
jb      short loc_4124D0
jbe     short loc_4124E1
cmp     bx, 0F5h
jb      short def_412289 ; jumptable 00412289 default case, cases 2,4,7
jbe     short loc_4124EC
cmp     bx, 113h
jz      short loc_4124E1
pop     edx
pop     ecx
pop     ebx
retn

loc_4124D0:
cmp     bx, 1
jnz     short def_412289 ; jumptable 00412289 default case, cases 2,4,7
mov     byte ptr [edx+0ACh], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_4124E1:
mov     byte ptr [edx+0ACh], 0Ch
pop     edx
pop     ecx
pop     ebx
retn

loc_4124EC:
mov     byte ptr [edx+0ACh], 0Dh
and     byte ptr [eax], 0FBh
mov     word ptr [eax+0Ch], 0Ch
mov     word ptr [eax+10h], 10h

def_412289:             ; jumptable 00412289 default case, cases 2,4,7
pop     edx
pop     ecx
pop     ebx
retn
sub_41214D endp




sub_412506 proc near
push    ebx
push    ecx
push    edx
push    esi
lea     ecx, [eax+670h]
mov     eax, ds:dword_559124
mov     edx, ds:dword_559128
cmp     eax, edx
jnz     short loc_412530
xor     eax, edx
mov     ax, [ecx+2]
xor     edx, edx
mov     dx, [ecx]
xor     eax, edx
test    al, 4
jz      short loc_412536

loc_412530:
mov     word ptr [ecx+0Ah], 0

loc_412536:
test    byte ptr [ecx], 4
jz      short loc_41257E
mov     ebx, [ecx+8]
sar     ebx, 10h
mov     esi, 3
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     short loc_41256A
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     edx, ds:dword_559124
mov     ax, [edx+eax*2]
mov     [ecx+10h], ax

loc_41256A:
mov     dx, [ecx+0Ah]
inc     edx
mov     [ecx+0Ah], dx
mov     ebx, edx
xor     bh, dh
and     bl, 0Fh
mov     [ecx+0Ah], bx

loc_41257E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_412506 endp




sub_412583 proc near
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
lea     ebx, [eax+640h]
mov     edx, ebx
call    ds:funcs_4125B0[esi*4]
mov     edx, ebx
mov     eax, ecx
call    sub_412B2E
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_412583 endp

db 90h
jpt_4125F3 dd offset loc_4125FA ; jump table for switch statement
dd offset loc_4126A5
dd offset loc_4126B4
dd offset loc_4126D4



sub_4125D7 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     edx, offset dword_560BDC
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4125F3      ; jumptable 004125F3 default case
and     eax, 0FFh
jmp     jpt_4125F3[eax*4] ; switch jump

loc_4125FA:             ; jumptable 004125F3 case 0
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_412677
or      byte ptr [esi], 2
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     eax, esi
call    sub_42C592
add     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [ecx+15h], 0
xor     edx, edx
mov     eax, ecx
call    sub_412AF4
xor     eax, eax
mov     al, [esi+8]
xor     edx, edx
mov     dl, ds:byte_50DE14[eax]
xor     ebx, ebx

loc_412664:
mov     eax, esi
call    sub_4DE96B
mov     eax, esi
call    sub_412C2E

loc_412672:
inc     byte ptr [esi+0Ah]
jmp     short def_4125F3 ; jumptable 004125F3 default case

loc_412677:
test    byte ptr [esi+0A4h], 1
jnz     short loc_412687
mov     eax, esi
call    sub_412C2E

loc_412687:
mov     eax, esi
call    sub_4DEADD

def_4125F3:             ; jumptable 004125F3 default case
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     ecx
pop     ebx
retn

loc_4126A5:             ; jumptable 004125F3 case 1
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_412677
xor     ebx, ebx
mov     edx, 19h
jmp     short loc_412664

loc_4126B4:             ; jumptable 004125F3 case 2
test    byte ptr [ecx+15h], 1
jz      short loc_4126C1
mov     eax, esi
call    sub_412C2E

loc_4126C1:
inc     byte ptr [ecx+15h]
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, esi
call    sub_4DE96B
jmp     short def_4125F3 ; jumptable 004125F3 default case

loc_4126D4:             ; jumptable 004125F3 case 3
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_4126EA
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, esi
call    sub_4DE96B
jmp     short loc_412672

loc_4126EA:
cmp     byte ptr [esi+0A4h], 9
jnz     short loc_4126FA
mov     eax, esi
call    sub_412CB1

loc_4126FA:
mov     eax, esi
call    sub_4DEADD
cmp     byte ptr [edx+5], 4
jnz     short def_4125F3 ; jumptable 004125F3 default case
cmp     byte ptr [edx+9], 0
jnz     short def_4125F3 ; jumptable 004125F3 default case
cmp     dword ptr [edx+10h], 1
jnz     def_4125F3      ; jumptable 004125F3 default case
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
jmp     def_4125F3      ; jumptable 004125F3 default case
sub_4125D7 endp




sub_412727 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, edx
mov     edi, offset dword_560BDC
mov     ah, [eax+9]
test    ah, ah
jnz     short loc_412770
mov     [edx+15h], ah
mov     [edx+14h], ah
xor     edx, edx
mov     eax, ecx
call    sub_412AF4
mov     eax, esi
call    sub_412CB1
xor     edx, edx
mov     dl, [esi+8]
mov     dl, ds:byte_50DE14[edx]
and     edx, 0FFh
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
jmp     short loc_412777

loc_412770:
mov     eax, esi
call    sub_4DEADD

loc_412777:
cmp     byte ptr [edi+9], 0
jnz     short loc_4127A2
mov     edx, [edi+10h]
cmp     edx, 0Eh
jz      short loc_41278F
cmp     edx, 18h
jz      short loc_41278F
cmp     edx, 28h ; '('
jnz     short loc_4127A2

loc_41278F:
mov     edx, 1
mov     eax, ecx
call    sub_412AF4
mov     eax, esi
call    sub_412D2B

loc_4127A2:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_412727 endp




sub_4127BA proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
cmp     byte ptr [eax+9], 0
jnz     short loc_4127F9
mov     edx, 5
mov     eax, ecx
call    sub_412AF4
xor     edx, edx
mov     dl, [esi+8]
mov     dl, ds:byte_50DE14[edx]
and     edx, 0FFh
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [ecx+16h], 0
inc     byte ptr [esi+9]
jmp     def_4125F3      ; jumptable 004125F3 default case

loc_4127F9:
mov     al, [edx+16h]
cmp     al, 14h
jb      short loc_412812
jbe     short loc_41281C
cmp     al, 50h ; 'P'
jb      short loc_41280E
jbe     short loc_41281C
cmp     al, 87h

loc_41280A:
jz      short loc_412823
jmp     short loc_41282F

loc_41280E:
cmp     al, 46h ; 'F'
jmp     short loc_41280A

loc_412812:
cmp     al, 5
jb      short loc_41282F
jbe     short loc_41281C
cmp     al, 0Ah
jmp     short loc_41280A

loc_41281C:
mov     edx, 2
jmp     short loc_412828

loc_412823:
mov     edx, 5

loc_412828:
mov     eax, ecx
call    sub_412AF4

loc_41282F:
mov     eax, esi
call    sub_4DEADD
inc     byte ptr [ecx+16h]
jmp     def_4125F3      ; jumptable 004125F3 default case
sub_4127BA endp




sub_41283E proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
cmp     byte ptr ds:dword_560BE0+3, 3
jnz     short loc_412857
inc     byte ptr [esi+9]
inc     byte ptr ds:dword_560BE0+3

loc_412857:
cmp     byte ptr [esi+9], 0
jnz     short loc_412882
mov     edx, 3
call    sub_412AF4
xor     eax, eax
mov     al, [esi+8]
xor     edx, edx
mov     dl, ds:byte_50DE14[eax]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
jmp     def_4125F3      ; jumptable 004125F3 default case

loc_412882:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_412687
add     word ptr [esi+56h], 80h
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     loc_412687
sub_41283E endp




sub_4128A6 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
cmp     byte ptr [eax+9], 0
jnz     short loc_4128D8
mov     word ptr [esi+56h], 800h
xor     eax, eax
mov     al, [esi+8]
xor     edx, edx
mov     dl, ds:byte_50DE14[eax]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [ecx+14h], 0
inc     byte ptr [esi+9]
jmp     short loc_41290A

loc_4128D8:
mov     eax, [esi+0A4h]
sar     eax, 18h
test    al, 80h
jz      short loc_4128F7
cmp     byte ptr [edx+14h], 0
jbe     short loc_4128F4
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short loc_412903

loc_4128F4:
inc     byte ptr [ecx+14h]

loc_4128F7:
add     dword ptr [esi+24h], 43E1Dh
add     word ptr [esi+18h], 4

loc_412903:
mov     eax, esi
call    sub_4DEADD

loc_41290A:
cmp     byte ptr [esi+0A6h], 0
jz      def_4125F3      ; jumptable 004125F3 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 111h
call    sub_4D89E4
jmp     def_4125F3      ; jumptable 004125F3 default case
sub_4128A6 endp




sub_41292A proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
cmp     byte ptr [eax+9], 0
jnz     short loc_41295A
xor     edx, edx
mov     dl, [esi+8]
mov     dl, ds:byte_50DE14[edx]
and     edx, 0FFh
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [ecx+15h], 0
inc     byte ptr [esi+9]
jmp     short loc_4129BA

loc_41295A:
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_412971
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short loc_4129B3

loc_412971:
cmp     byte ptr [ecx+15h], 28h ; '('
jnb     short loc_4129B0
xor     edx, edx
mov     dl, [ecx+15h]
mov     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_41299A
sub     dword ptr [esi+20h], 40000h
sub     word ptr [esi+16h], 4
jmp     short loc_4129A6

loc_41299A:
add     dword ptr [esi+20h], 0FFF98000h
sub     word ptr [esi+16h], 3

loc_4129A6:
add     word ptr [esi+1Eh], 3
add     word ptr [esi+14h], 3

loc_4129B0:
inc     byte ptr [ecx+15h]

loc_4129B3:
mov     eax, esi
call    sub_4DEADD

loc_4129BA:
cmp     byte ptr [ecx+15h], 8
jnb     short loc_4129D3
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_4129D3:
pop     esi
pop     ecx
pop     ebx
retn
sub_41292A endp




sub_4129D7 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
cmp     byte ptr [eax+9], 0
jnz     short loc_412A19
add     byte ptr [ecx+57h], 2
mov     edx, 6
mov     eax, esi
call    sub_412AF4
xor     eax, eax
mov     al, [ecx+8]
xor     edx, edx
mov     dl, ds:byte_50DE14[eax]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [esi+15h], 0
mov     byte ptr [esi+16h], 0
inc     byte ptr [ecx+9]
pop     esi
pop     ecx
pop     ebx
retn

loc_412A19:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_412A2E
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0

loc_412A2E:
mov     al, [esi+16h]
cmp     al, 41h ; 'A'
jb      short loc_412A47
jbe     short loc_412A4F
cmp     al, 0AAh
jb      short loc_412A43
jbe     short loc_412A4F
cmp     al, 0FFh

loc_412A3F:
jz      short loc_412A56
jmp     short loc_412A62

loc_412A43:
cmp     al, 0A5h
jmp     short loc_412A3F

loc_412A47:
test    al, al
jbe     short loc_412A4F
cmp     al, 3Ch ; '<'
jmp     short loc_412A3F

loc_412A4F:
mov     edx, 4
jmp     short loc_412A5B

loc_412A56:
mov     edx, 6

loc_412A5B:
mov     eax, esi
call    sub_412AF4

loc_412A62:
inc     byte ptr [esi+16h]
cmp     byte ptr [esi+15h], 0AAh
jnb     short loc_412A98
cmp     byte ptr [ecx+0A4h], 0Eh
jnz     short loc_412A98
xor     edx, edx
mov     dl, [ecx+8]
mov     dl, ds:byte_50DE14[edx]
and     edx, 0FFh
mov     ebx, 0Eh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [esi+15h]
pop     esi
pop     ecx
pop     ebx
retn

loc_412A98:
mov     eax, ecx
call    sub_4DEADD
pop     esi
pop     ecx
pop     ebx
retn
sub_4129D7 endp




sub_412AA3 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
cmp     byte ptr [ecx+9], 0
jnz     short loc_412AD5
mov     edx, 3
call    sub_412AF4
xor     eax, eax
mov     al, [ecx+8]
xor     edx, edx
mov     dl, ds:byte_50DE14[eax]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     ecx
pop     ebx
retn

loc_412AD5:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_412AEA
mov     eax, ecx
call    sub_4DE336

loc_412AEA:
mov     eax, ecx
call    sub_4DEADD
pop     ecx
pop     ebx
retn
sub_412AA3 endp




sub_412AF4 proc near
push    ecx
mov     word ptr [eax+4], 0
mov     cx, [eax+4]
mov     [eax+2], cx
mov     [eax], cx
mov     word ptr [eax+0Ah], 0
mov     cx, [eax+0Ah]
mov     [eax+8], cx
mov     [eax+6], cx
mov     ecx, ds:off_50DEB6[edx*4]
mov     [eax+0Ch], ecx
mov     edx, ds:off_50DED2[edx*4]
mov     [eax+10h], edx
pop     ecx
retn
sub_412AF4 endp




sub_412B2E proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ax, [edx]
mov     [edx+2], ax
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_412B61
jbe     short loc_412B65
cmp     ax, 7FFFh
jnz     short loc_412B61
mov     word ptr [edx+4], 0
jmp     short loc_412B65

loc_412B61:
inc     word ptr [esi+4]

loc_412B65:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_412BAA
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_412BAA:
mov     ax, [esi+6]
mov     [esi+8], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_412BD6
jbe     short loc_412BDA
cmp     ax, 7FFFh
jnz     short loc_412BD6
mov     word ptr [esi+0Ah], 0
jmp     short loc_412BDA

loc_412BD6:
inc     word ptr [esi+0Ah]

loc_412BDA:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_412C29
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_412C29:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_412B2E endp




sub_412C2E proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ebx, eax
xor     ecx, ecx
jmp     short loc_412C41

loc_412C3B:
inc     ecx
cmp     ecx, 8
jge     short loc_412CA9

loc_412C41:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_412C3B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
movsx   si, ds:byte_50DEEE[ecx]
mov     ax, [ebx+14h]
add     eax, esi
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ebx+16h]
sub     eax, 20h ; ' '
mov     [edx+1Eh], ax
movsx   si, ds:byte_50DEF6[ecx]
mov     ax, [ebx+18h]
add     eax, esi
mov     [edx+20h], ax
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 0Fh
mov     [edx+9], al
jmp     short loc_412C3B

loc_412CA9:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_412C2E endp




sub_412CB1 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ebx, eax
xor     ecx, ecx
jmp     short loc_412CC4

loc_412CBE:
inc     ecx
cmp     ecx, 8
jge     short loc_412CA9

loc_412CC4:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_412CBE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
movsx   si, ds:byte_50DEFE[ecx]
mov     ax, [ebx+14h]
add     eax, esi
mov     [edx+1Ch], ax
movsx   ax, ds:byte_50DF06[ecx]
add     ax, [ebx+16h]
sub     eax, 78h ; 'x'
mov     [edx+1Eh], ax
movsx   si, ds:byte_50DF0E[ecx]
mov     ax, [ebx+18h]
add     eax, esi
mov     [edx+20h], ax
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 0Fh
mov     [edx+9], al
jmp     short loc_412CBE
sub_412CB1 endp




sub_412D2B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_412D83
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     bx, [ecx+14h]
sub     ebx, 8
call    rand_
xor     ah, ah
and     al, 1
add     ebx, eax
mov     [edx+1Ch], bx
mov     word ptr [edx+1Eh], 0FF7Ch
mov     cx, [ecx+18h]
sub     ecx, 0Fh
call    rand_
xor     ah, ah
and     al, 1
add     ecx, eax
mov     [edx+20h], cx
mov     [edx+9], ah

loc_412D83:
pop     edx
pop     ecx
pop     ebx
retn
sub_412D2B endp




sub_412D87 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_412D97[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_412DAB
mov     eax, ecx
call    sub_4DEADD

loc_412DAB:
mov     edx, ebx
mov     eax, ecx
call    sub_413076
pop     edx
pop     ecx
pop     ebx
retn
sub_412D87 endp




sub_412DB8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 3
jb      short loc_412DFD
jbe     short loc_412E27
cmp     al, 5
jz      short loc_412E5B
jmp     loc_412E8D

loc_412DFD:
test    al, al
jnz     loc_412E8D
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_413036
mov     byte ptr [ecx+9], 1
jmp     short loc_412E8D

loc_412E27:
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_413036
mov     word ptr [ecx+14h], 104h
mov     word ptr [ecx+16h], 14h
mov     word ptr [ecx+18h], 0D2h
mov     byte ptr [ecx+9], 3
jmp     short loc_412E8D

loc_412E5B:
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_413036
mov     word ptr [ecx+14h], 104h
mov     word ptr [ecx+16h], 14h
mov     word ptr [ecx+18h], 0D2h
mov     byte ptr [ecx+9], 4

loc_412E8D:
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_412DB8 endp




sub_412E99 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_412ED0
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_413036
inc     byte ptr [ecx+0Ah]

loc_412ED0:
cmp     dword ptr [edi+10h], 1Eh
jnz     short loc_412EE1
xor     ebx, ebx

loc_412ED8:
mov     edx, esi
mov     eax, ecx
call    sub_413036

loc_412EE1:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_412E99 endp




sub_412EE7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_412F1E
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_413036
inc     byte ptr [ecx+0Ah]

loc_412F1E:
cmp     dword ptr [edi+10h], 19h
jnz     short loc_412F32
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_413036

loc_412F32:
cmp     dword ptr [edi+10h], 91h
jnz     short loc_412EE1
mov     ebx, 5
jmp     short loc_412ED8
sub_412EE7 endp




sub_412F42 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_412F6B
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_412F6B:
mov     eax, [edi+10h]
cmp     eax, 48h ; 'H'
jb      short loc_412F8C
jbe     short loc_412FB6
cmp     eax, 55h ; 'U'
jb      loc_412EE1
jbe     short loc_412FAC
cmp     eax, 0AAh
jz      short loc_412FB6
jmp     loc_412EE1

loc_412F8C:
cmp     eax, 1
jnz     loc_412EE1
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_413036
mov     byte ptr [ecx+0Dh], 0
jmp     loc_412EE1

loc_412FAC:
mov     ebx, 4
jmp     loc_412ED8

loc_412FB6:
mov     ebx, 6
jmp     loc_412ED8
sub_412F42 endp




sub_412FC0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_412FF7
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_413036
inc     byte ptr [ecx+0Ah]

loc_412FF7:
cmp     byte ptr [edi+9], 1
jnz     loc_412EE1
mov     eax, [edi+10h]
cmp     eax, 12Ch
jb      short loc_413019
jbe     short loc_41302C
cmp     eax, 15Eh
jz      short loc_41302C
jmp     loc_412EE1

loc_413019:
cmp     eax, 20h ; ' '
jnz     loc_412EE1
mov     ebx, 8
jmp     loc_412ED8

loc_41302C:
mov     ebx, 9
jmp     loc_412ED8
sub_412FC0 endp




sub_413036 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50E010[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50E038[eax*4]
mov     [edx+10h], eax
retn
sub_413036 endp




sub_413076 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_4130A2
jbe     short loc_4130A6
cmp     ax, 7FFFh
jnz     short loc_4130A2
mov     word ptr [edx+4], 0
jmp     short loc_4130A6

loc_4130A2:
inc     word ptr [esi+4]

loc_4130A6:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_4130EB
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_4130EB:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_413116
jbe     short loc_41311A
cmp     ax, 7FFFh
jnz     short loc_413116
mov     word ptr [esi+0Ah], 0
jmp     short loc_41311A

loc_413116:
inc     word ptr [esi+0Ah]

loc_41311A:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_413169
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_413169:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_413076 endp




sub_413176 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_413186[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41319A
mov     eax, ecx
call    sub_4DEADD

loc_41319A:
mov     edx, ebx
mov     eax, ecx
call    sub_413467
pop     edx
pop     ecx
pop     ebx
retn
sub_413176 endp




sub_4131A7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_413427
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1

loc_4131F7:
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4131A7 endp




sub_413200 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413223
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_413223:
mov     eax, ds:dword_560BEC
cmp     eax, 28h ; '('
jb      short loc_41324B
jbe     short loc_413239
cmp     eax, 41h ; 'A'
jz      short loc_413240
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_413239:
mov     ebx, 1
jmp     short loc_413242

loc_413240:
xor     ebx, ebx

loc_413242:
mov     edx, esi
mov     eax, ecx
call    sub_413427

loc_41324B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413200 endp




sub_413250 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_413427
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 3
jmp     loc_4131F7
sub_413250 endp




sub_4132A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4132D9
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_413427
inc     byte ptr [ecx+0Ah]

loc_4132D9:
mov     eax, ds:dword_560BEC
cmp     eax, 2Dh ; '-'
jb      short loc_413301
jbe     short loc_41330D
cmp     eax, 96h
jb      short loc_4132FA
jbe     short loc_41330D
cmp     eax, 0C0h

loc_4132F3:
jz      short loc_413314
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4132FA:
cmp     eax, 87h
jmp     short loc_4132F3

loc_413301:
cmp     eax, 0Ah
jb      short loc_413322
jbe     short loc_41330D
cmp     eax, 1Eh
jmp     short loc_4132F3

loc_41330D:
mov     ebx, 3
jmp     short loc_413319

loc_413314:
mov     ebx, 0Bh

loc_413319:
mov     edx, esi
mov     eax, ecx
call    sub_413427

loc_413322:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4132A8 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_42]



sub_413327 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41335C
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_413427
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41335C:
mov     eax, ds:dword_560BEC
cmp     eax, 0D2h
jb      short loc_4133B5
jbe     loc_4133F1
cmp     eax, 140h
jb      short loc_41339C
jbe     loc_413406
cmp     eax, 16Dh
jb      loc_413422
jbe     loc_41340D
cmp     eax, 190h
jz      loc_413414
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41339C:
cmp     eax, 11Dh
jb      loc_413422
jbe     short loc_4133F8
cmp     eax, 12Ch
jz      short loc_4133FF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4133B5:
cmp     eax, 91h
jb      short loc_4133D7
jbe     short loc_4133EA
cmp     eax, 9Bh
jb      loc_413422
jbe     short loc_4133F1
cmp     eax, 0B4h
jz      short loc_4133F8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4133D7:
cmp     eax, 50h ; 'P'
jb      short loc_413422
jbe     short loc_4133EA
cmp     eax, 64h ; 'd'
jnz     short loc_413422
mov     ebx, 6
jmp     short loc_413419

loc_4133EA:
mov     ebx, 7
jmp     short loc_413419

loc_4133F1:
mov     ebx, 0Ch
jmp     short loc_413419

loc_4133F8:
mov     ebx, 5
jmp     short loc_413419

loc_4133FF:
mov     ebx, 8
jmp     short loc_413419

loc_413406:
mov     ebx, 0Dh
jmp     short loc_413419

loc_41340D:
mov     ebx, 0Eh
jmp     short loc_413419

loc_413414:
mov     ebx, 0Ah

loc_413419:
mov     edx, esi
mov     eax, ecx
call    sub_413427

loc_413422:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413327 endp




sub_413427 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50E1C6[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50E202[eax*4]
mov     [edx+10h], eax
retn
sub_413427 endp




sub_413467 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_413493
jbe     short loc_413497
cmp     ax, 7FFFh
jnz     short loc_413493
mov     word ptr [edx+4], 0
jmp     short loc_413497

loc_413493:
inc     word ptr [esi+4]

loc_413497:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_4134DC
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_4134DC:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_413507
jbe     short loc_41350B
cmp     ax, 7FFFh
jnz     short loc_413507
mov     word ptr [esi+0Ah], 0
jmp     short loc_41350B

loc_413507:
inc     word ptr [esi+0Ah]

loc_41350B:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_41355A
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_41355A:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_413467 endp




sub_413567 proc near
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
call    ds:funcs_4135A6[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_413D26
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_4135DA
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4135E1

loc_4135DA:
mov     eax, ebp
call    sub_4DEADD

loc_4135E1:
cmp     byte ptr [ecx+12h], 0
jz      short loc_4135FA
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4135FA:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413567 endp




sub_413601 proc near
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
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     byte ptr [ebx+12h], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_413CF4
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_413D0D
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     ecx
retn
sub_413601 endp

db 8Dh, 40h, 0
jpt_4136F7 dd offset loc_4136FE ; jump table for switch statement
dd offset loc_413721
dd offset loc_41379D
dd offset loc_4137E3
dd offset loc_413880
dd offset loc_41389F
dd offset loc_4138EB
dd offset loc_413946
dd offset loc_413975
dd offset loc_41399E
dd offset loc_4139BB
dd offset loc_4139F4
dd offset loc_413A1F
dd offset loc_413A77
dd offset loc_413AA1
dd offset loc_413B43
dd offset loc_413B5D
dd offset loc_413BBA
dd offset loc_413C30
dd offset loc_413C9C
dd offset loc_413CCA
dd offset def_4136F7



sub_4136DB proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+9]
cmp     dl, 15h         ; switch 22 cases
ja      def_4136F7      ; jumptable 004136F7 default case, case 21
and     edx, 0FFh
jmp     jpt_4136F7[edx*4] ; switch jump

loc_4136FE:             ; jumptable 004136F7 case 0
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 0Ah

loc_413713:             ; jumptable 004136F7 default case, case 21
jnz     def_4136F7

loc_413719:
inc     byte ptr [esi+9]

def_4136F7:             ; jumptable 004136F7 default case, case 21
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413721:             ; jumptable 004136F7 case 1
mov     bl, [eax+9]
cmp     bl, 1
jnz     short def_4136F7 ; jumptable 004136F7 default case, case 21
mov     eax, [eax+10h]
cmp     eax, 2Dh ; '-'
jb      short loc_413746
jbe     short loc_41377E
cmp     eax, 41h ; 'A'
jb      short def_4136F7 ; jumptable 004136F7 default case, case 21
jbe     short loc_413777
cmp     eax, 122h
jz      short loc_413788
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413746:
cmp     eax, 14h
jb      short def_4136F7 ; jumptable 004136F7 default case, case 21
jbe     short loc_413757
cmp     eax, 28h ; '('
jz      short loc_413777
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413757:
mov     ebx, 0Bh
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ecx+2], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413777:
xor     ebx, ebx
jmp     loc_413C18

loc_41377E:
mov     ebx, 0Bh
jmp     loc_413C18

loc_413788:
mov     byte ptr [esi+0ACh], 3
mov     word ptr [ecx+2], 0
add     [esi+9], bl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41379D:             ; jumptable 004136F7 case 2
cmp     byte ptr [eax+9], 2
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 4
mov     word ptr [ebx+2], 0
mov     ebx, 6
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [ecx+12h], 1
jmp     loc_413719

loc_4137E3:             ; jumptable 004136F7 case 3
cmp     byte ptr [eax+9], 2
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     eax, [eax+10h]
cmp     eax, 46h ; 'F'
jb      short loc_413816
jbe     short loc_413834
cmp     eax, 0DCh
jb      short loc_41380C
jbe     short loc_413848
cmp     eax, 15Eh
jz      short loc_41385B
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41380C:
cmp     eax, 78h ; 'x'

loc_41380F:
jz      short loc_41383E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413816:
cmp     eax, 28h ; '('
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     short loc_413826
cmp     eax, 3Ch ; '<'
jmp     short loc_41380F

loc_413826:
mov     ebx, 0Bh
mov     edx, ecx
mov     eax, esi
call    sub_413CF4

loc_413834:
mov     ebx, 0Ch
jmp     loc_413C18

loc_41383E:
mov     ebx, 1
jmp     loc_413C18

loc_413848:
mov     ebx, 0Bh

loc_41384D:
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41385B:
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ecx+2], 0
mov     ebx, 6
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 0Ch
jmp     loc_413A69

loc_413880:             ; jumptable 004136F7 case 4
cmp     byte ptr [esi+0A4h], 0Eh
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ebx+2], 0Eh
jmp     loc_413719

loc_41389F:             ; jumptable 004136F7 case 5
mov     byte ptr [esi+0ADh], 0FFh
mov     edi, [eax+10h]
cmp     edi, 186h
jz      short loc_41383E
cmp     edi, 1B3h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 0Ch
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ecx+2], 0Eh
jmp     loc_413719

loc_4138EB:             ; jumptable 004136F7 case 6
mov     ebp, [eax+10h]
cmp     ebp, 1EAh
jz      loc_41383E
cmp     ebp, 226h
jnz     short loc_41390C
mov     ebx, 8
jmp     loc_41384D

loc_41390C:
cmp     ebp, 27Bh
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [esi+0ACh], 6
mov     word ptr [ecx+2], 0
jmp     loc_413719

loc_413946:             ; jumptable 004136F7 case 7
cmp     byte ptr [esi+0A4h], 7
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
add     word ptr [esi+14h], 0Ah
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     loc_413713

loc_413975:             ; jumptable 004136F7 case 8
mov     byte ptr [esi+0ACh], 7
mov     word ptr [ebx+2], 0
mov     word ptr [esi+56h], 0C00h
add     word ptr [esi+14h], 0Ah
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
jmp     loc_413719

loc_41399E:             ; jumptable 004136F7 case 9
add     word ptr [esi+14h], 0Ah
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
cmp     dword ptr [eax+10h], 2CEh
jmp     loc_413713

loc_4139BB:             ; jumptable 004136F7 case 10
cmp     byte ptr [eax+9], 3
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 8
mov     word ptr [ecx+2], 0
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 3
jmp     loc_413A69

loc_4139F4:             ; jumptable 004136F7 case 11
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 4
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebp, [eax+10h]
cmp     ebp, 0Ah
jnz     short loc_413A17
mov     ebx, 0Dh
jmp     loc_413C18

loc_413A17:
cmp     ebp, 32h ; '2'
jmp     loc_413713

loc_413A1F:             ; jumptable 004136F7 case 12
cmp     byte ptr [eax+9], 4
jnz     short loc_413A35
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_413A35
mov     ebx, 3
jmp     loc_413C18

loc_413A35:
cmp     byte ptr [eax+9], 5
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 7

loc_413A50:
mov     word ptr [ecx+2], 0
mov     ebx, 3
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 6

loc_413A69:
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
jmp     loc_413719

loc_413A77:             ; jumptable 004136F7 case 13
cmp     byte ptr [eax+9], 6
jnz     short loc_413A8C
cmp     dword ptr [eax+10h], 1
jnz     short loc_413A8C
mov     byte ptr [esi+0ACh], 9
jmp     short loc_413A50

loc_413A8C:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A4h
mov     eax, esi
call    sub_4DD43B
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413AA1:             ; jumptable 004136F7 case 14
mov     dl, [eax+9]
cmp     dl, 6
jnz     short loc_413B0B
mov     eax, [eax+10h]
cmp     eax, 41h ; 'A'
jb      short loc_413ACA
jbe     short loc_413ADF
cmp     eax, 4Bh ; 'K'
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     short loc_413AE9
cmp     eax, 11Dh
jz      short loc_413AF3
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413ACA:
cmp     eax, 1Eh
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     short loc_413ADF
cmp     eax, 37h ; '7'
jz      short loc_413AE9
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413ADF:
mov     ebx, 0Eh
jmp     loc_413C18

loc_413AE9:
mov     ebx, 6
jmp     loc_413C18

loc_413AF3:
mov     ebx, 0Ah
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 10h
jmp     loc_413C18

loc_413B0B:
cmp     dl, 7
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [ebx+2], 0
mov     ebx, 4
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 7
jmp     loc_413A69

loc_413B43:             ; jumptable 004136F7 case 15
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 8
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 14h
jmp     loc_413713

loc_413B5D:             ; jumptable 004136F7 case 16
cmp     byte ptr [eax+9], 8
jnz     short loc_413B81
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_413B81
mov     ebx, 5
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 8
jmp     loc_413C18

loc_413B81:
cmp     byte ptr [eax+9], 9
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 0Bh
mov     word ptr [ecx+2], 0
mov     ebx, 6
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 9
jmp     loc_413A69

loc_413BBA:             ; jumptable 004136F7 case 17
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 9
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_413BF4
jbe     short loc_413C13
cmp     eax, 80h
jb      short loc_413BEA
jbe     short loc_413C13
cmp     eax, 0A5h
jz      short loc_413C26
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413BEA:
cmp     eax, 32h ; '2'
jz      short loc_413C0C
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413BF4:
cmp     eax, 5
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     loc_413848
cmp     eax, 14h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21

loc_413C0C:
mov     ebx, 0Fh
jmp     short loc_413C18

loc_413C13:
mov     ebx, 9

loc_413C18:
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413C26:
mov     ebx, 0Fh
jmp     loc_413A69

loc_413C30:             ; jumptable 004136F7 case 18
mov     dl, [eax+9]
cmp     dl, 9
jnz     short loc_413C65
mov     eax, [eax+10h]
cmp     eax, 0FAh
jb      short loc_413C58
jbe     loc_413848
cmp     eax, 104h
jz      loc_413848
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413C58:
cmp     eax, 0F3h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
jmp     short loc_413C13

loc_413C65:
cmp     dl, 0Ch
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     [esi+0ACh], dl
mov     word ptr [ebx+2], 0
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 0Ah
jmp     loc_413A69

loc_413C9C:             ; jumptable 004136F7 case 19
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 0Ch
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, [eax+10h]
cmp     ebx, 5Ah ; 'Z'
jnz     short loc_413CBF
mov     ebx, 0Ch
jmp     loc_41384D

loc_413CBF:
cmp     ebx, 0B9h
jmp     loc_413713

loc_413CCA:             ; jumptable 004136F7 case 20
cmp     byte ptr [eax+9], 0Ch
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 0C8h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, 0Ch
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
jmp     loc_413719
sub_4136DB endp




sub_413CF4 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50E329[ebx*4]
mov     [edx+4], eax
retn
sub_413CF4 endp




sub_413D0D proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50E35D[ebx*4]
mov     [edx+8], eax
retn
sub_413D0D endp




sub_413D26 proc near
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
jb      short loc_413D4B
jbe     short loc_413D4E
cmp     al, 7Fh
jnz     short loc_413D4B
mov     byte ptr [edx+0Eh], 0
jmp     short loc_413D4E

loc_413D4B:
inc     byte ptr [esi+0Eh]

loc_413D4E:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_413D90
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_413D90:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_413DB3
jbe     short loc_413DB6
cmp     al, 7Fh
jnz     short loc_413DB3
mov     byte ptr [esi+11h], 0
jmp     short loc_413DB6

loc_413DB3:
inc     byte ptr [esi+11h]

loc_413DB6:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_413DF8
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044

loc_413DF8:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_413D26 endp




sub_413E03 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_413E15[edx*4]
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
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_413E45
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_413E53

loc_413E45:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_413E53:
mov     edx, ebx
mov     eax, ecx
call    sub_4143B7
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413E03 endp




sub_413E62 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413ECD
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Eh]
inc     byte ptr [ecx+9]
inc     byte ptr [ecx+0Ah]

loc_413ECD:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413E62 endp




sub_413ED2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 5Ah ; 'Z'
jb      short loc_413F14
jbe     short loc_413EF2
cmp     eax, 9Bh
jz      short loc_413F06
jmp     short loc_413F14

loc_413EF2:
mov     ebx, 1
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Eh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_413F06:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B

loc_413F14:
cmp     byte ptr [ecx+0Eh], 0
jz      short loc_413F1F
sub     word ptr [ecx+18h], 3

loc_413F1F:
pop     edx
pop     ecx
pop     ebx
retn
sub_413ED2 endp




sub_413F23 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413F71
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+108h], 13h
mov     word ptr [ecx+14h], 0FF9Ch
mov     word ptr [ecx+18h], 64h ; 'd'
mov     word ptr [ecx+56h], 400h
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_413F71:
cmp     ds:dword_560BEC, 0Ah
jnz     short loc_413F88
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_413F88:
cmp     ds:dword_560BEC, 16h
jnz     short loc_413F9F
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_413F9F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413F23 endp




sub_413FA4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413FE0
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+108h], 4
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_413FE0:
cmp     ds:dword_560BEC, 0Ah
jnz     short loc_413FF7
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_413FF7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413FA4 endp




sub_413FFC proc near
push    ebx
push    edx
lea     edx, [eax+640h]
mov     ebx, ds:dword_560BEC
cmp     ebx, 28h ; '('
jb      short loc_414020
jbe     short loc_41402F
cmp     ebx, 5Ah ; 'Z'
jb      short loc_41404E
jbe     short loc_41403D
cmp     ebx, 69h ; 'i'
jz      short loc_414044
pop     edx
pop     ebx
retn

loc_414020:
cmp     ebx, 5
jb      short loc_41404E
jbe     short loc_41402F
cmp     ebx, 14h
jz      short loc_414036
pop     edx
pop     ebx
retn

loc_41402F:
mov     ebx, 0Bh
jmp     short loc_414049

loc_414036:
mov     ebx, 0Ch
jmp     short loc_414049

loc_41403D:
mov     ebx, 0Dh
jmp     short loc_414049

loc_414044:
mov     ebx, 0Eh

loc_414049:
call    sub_414377

loc_41404E:
pop     edx
pop     ebx
retn
sub_413FFC endp




sub_414051 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414078
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_414078:
mov     edx, ds:dword_560BEC
cmp     edx, 0Ah
jz      short loc_414088
cmp     edx, 1Eh
jnz     short loc_414096

loc_414088:
mov     ebx, 0Fh
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414096:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414051 endp




sub_41409B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 1Eh
jb      short loc_4140C2
jbe     short loc_4140C7
cmp     eax, 32h ; '2'
jb      short loc_4140D3
jbe     short loc_4140C7
cmp     eax, 50h ; 'P'
jz      short loc_4140C7
pop     edx
pop     ecx
pop     ebx
retn

loc_4140C2:
cmp     eax, 1
jnz     short loc_4140D3

loc_4140C7:
mov     ebx, 11h
mov     eax, ecx
call    sub_414377

loc_4140D3:
pop     edx
pop     ecx
pop     ebx
retn
sub_41409B endp




sub_4140D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41410C
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 12h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41410C:
cmp     ds:dword_560BEC, 5
jnz     short loc_414123
mov     ebx, 13h
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414123:
cmp     ds:dword_560BEC, 3Ch ; '<'
jnz     short loc_41413A
mov     ebx, 12h
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41413A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4140D7 endp




sub_41413F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414174
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 14h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_414174:
mov     eax, ds:dword_560BEC
cmp     eax, 87h
jb      short loc_414197
jbe     short loc_4141A3
cmp     eax, 8Ch
jb      short loc_4141B8
jbe     short loc_4141AA
cmp     eax, 96h
jz      short loc_4141AA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_414197:
cmp     eax, 1Eh
jnz     short loc_4141B8
mov     ebx, 15h
jmp     short loc_4141AF

loc_4141A3:
mov     ebx, 16h
jmp     short loc_4141AF

loc_4141AA:
mov     ebx, 17h

loc_4141AF:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_4141B8:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41413F endp




sub_4141BD proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_4141D1
mov     word ptr [eax+18h], 12Ch
mov     [eax+0Dh], dl
inc     byte ptr [eax+0Ah]

loc_4141D1:
pop     edx
retn
sub_4141BD endp




sub_4141D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41420E
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 18h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     word ptr [ecx+18h], 64h ; 'd'
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41420E:
mov     eax, ds:dword_560BEC
cmp     eax, 50h ; 'P'
jb      short loc_41422D
jbe     short loc_414239
cmp     eax, 69h ; 'i'
jb      short loc_41424E
jbe     short loc_414232
cmp     eax, 0AAh
jz      short loc_414240
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41422D:
cmp     eax, 0Ah
jnz     short loc_41424E

loc_414232:
mov     ebx, 19h
jmp     short loc_414245

loc_414239:
mov     ebx, 1Ah
jmp     short loc_414245

loc_414240:
mov     ebx, 18h

loc_414245:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41424E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4141D3 endp




sub_414253 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0Ah
jb      short loc_414298
jbe     short loc_414275
cmp     eax, 69h ; 'i'
jz      short loc_41428A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_414275:
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 19h
jmp     short loc_41428F

loc_41428A:
mov     ebx, 18h

loc_41428F:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414298:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414253 endp




sub_41429D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0AAh
jb      short loc_4142C3
jbe     short loc_4142F6
cmp     eax, 0C8h
jz      short loc_4142FD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4142C3:
cmp     eax, 9Bh
jnz     short loc_41430B
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+114h], 14h
mov     ebx, 1Bh
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4142F6:
mov     ebx, 1Ch
jmp     short loc_414302

loc_4142FD:
mov     ebx, 1Dh

loc_414302:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41430B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41429D endp




sub_414310 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414367
mov     word ptr [ecx+14h], 3Ch ; '<'
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 96h
mov     word ptr [ecx+56h], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+114h], 7
mov     ebx, 1Fh
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Eh]
inc     byte ptr [ecx+0Ah]

loc_414367:
cmp     byte ptr [ecx+0Eh], 0
jz      short loc_414372
sub     word ptr [ecx+18h], 8

loc_414372:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414310 endp




sub_414377 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50E614[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50E694[eax*4]
mov     [edx+10h], eax
retn
sub_414377 endp




sub_4143B7 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_4143E3
jbe     short loc_4143E7
cmp     ax, 7FFFh
jnz     short loc_4143E3
mov     word ptr [edx+4], 0
jmp     short loc_4143E7

loc_4143E3:
inc     word ptr [esi+4]

loc_4143E7:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_41442C
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_41442C:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_414457
jbe     short loc_41445B
cmp     ax, 7FFFh
jnz     short loc_414457
mov     word ptr [esi+0Ah], 0
jmp     short loc_41445B

loc_414457:
inc     word ptr [esi+0Ah]

loc_41445B:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_4144AA
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_4144AA:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4143B7 endp




sub_4144B7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559140, dx
mov     eax, ds:dword_55913C
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 10000Fh

loc_4144F3:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4144B7 endp




sub_4144FF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559138, dx
mov     eax, ds:dword_559134
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 120011h
jmp     short loc_4144F3
sub_4144FF endp




sub_41453D proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_55913C
test    ecx, ecx
jz      loc_4145E3
cmp     ds:dword_559134, 0
jz      loc_4145E3
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41459F
jge     short loc_414577
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_414593

loc_414577:
inc     ds:word_559140
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_55913C+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41459F
add     eax, 4

loc_414593:
mov     ds:dword_55913C, eax
mov     eax, edx
call    sub_4144B7

loc_41459F:
mov     eax, ds:dword_559134
mov     di, [eax+2]
test    di, di
jz      short loc_4145E3
jge     short loc_4145BB
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4145D7

loc_4145BB:
inc     ds:word_559138
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559134+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_4145E3
add     eax, 4

loc_4145D7:
mov     ds:dword_559134, eax
mov     eax, edx
call    sub_4144FF

loc_4145E3:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41453D endp




sub_4145E8 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559148
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_414642
cmp     bl, ds:byte_560BE4
jnz     short loc_414642
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_414642
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_414642
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50E740[eax*4]
mov     ds:dword_55913C, eax
mov     eax, edx
call    sub_4144B7
add     ds:dword_559148, 6

loc_414642:
mov     eax, ds:dword_559144
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_414689
cmp     bl, [ecx+8]
jnz     short loc_414689
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_414689
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_414689
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50E814[eax*4]
mov     ds:dword_559134, eax
mov     eax, edx
call    sub_4144FF
add     ds:dword_559144, 6

loc_414689:
mov     eax, edx
call    sub_41453D
pop     edx
pop     ecx
pop     ebx
retn
sub_4145E8 endp




sub_414694 proc near
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
cmp     byte ptr ds:dword_77E7D5+1, 6
jnz     short loc_4146DE
mov     ds:dword_559148, offset unk_50E89A
mov     ds:dword_559144, offset unk_50E8CA
jmp     short loc_4146F2

loc_4146DE:
mov     ds:dword_559148, offset unk_50E84C
mov     ds:dword_559144, offset unk_50E864

loc_4146F2:
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_4147FD
pop     edx
pop     ecx
pop     ebx
retn
sub_414694 endp




sub_414700 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414719
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414719:
pop     edx
pop     ecx
pop     ebx
retn
sub_414700 endp




sub_41471D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414739
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414739:
pop     edx
pop     ecx
pop     ebx
retn
sub_41471D endp




sub_41473D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414759
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414759:
pop     edx
pop     ecx
pop     ebx
retn
sub_41473D endp




sub_41475D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414779
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414779:
pop     edx
pop     ecx
pop     ebx
retn
sub_41475D endp




sub_41477D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414799
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414799:
pop     edx
pop     ecx
pop     ebx
retn
sub_41477D endp




sub_41479D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147B9
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147B9:
pop     edx
pop     ecx
pop     ebx
retn
sub_41479D endp




sub_4147BD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147D9
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147D9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4147BD endp




sub_4147DD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147F9
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147F9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4147DD endp




sub_4147FD proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_414806[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_414825
mov     eax, ecx
call    sub_4DEADD

loc_414825:
mov     eax, ecx
call    sub_4145E8
pop     edx
pop     ecx
retn
sub_4147FD endp



; Attributes: thunk

sub_41482F proc near
jmp     sub_4DE336
sub_41482F endp




sub_414834 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41483A[edx*4]
pop     edx
retn
sub_414834 endp




sub_414843 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_414866
mov     word ptr [ecx+56h], 0FA00h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414866:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_414843 endp




sub_414878 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_414895
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414895:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414878 endp




sub_4148A0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4148B6
jbe     short loc_4148E3
cmp     al, 2
jz      short loc_4148F5
pop     edx
pop     ecx
pop     ebx
retn

loc_4148B6:
test    al, al
jnz     short loc_4148FC
mov     word ptr [ecx+14h], 0FFA6h
mov     word ptr [ecx+16h], 0FFDDh
mov     word ptr [ecx+18h], 154h
mov     word ptr [ecx+56h], 0FE40h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4148E3:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4148F5:
mov     eax, ecx
call    sub_4DEADD

loc_4148FC:
pop     edx
pop     ecx
pop     ebx
retn
sub_4148A0 endp




sub_414900 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414914
cmp     al, 1
jz      short loc_41493D
pop     edx
pop     ecx
pop     ebx
retn

loc_414914:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 0FE00h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41493D:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414900 endp




sub_414948 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41495C
cmp     al, 1
jz      short loc_414985
pop     edx
pop     ecx
pop     ebx
retn

loc_41495C:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 0FC40h
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414985:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414948 endp




sub_414990 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4149A4
cmp     al, 1
jz      short loc_4149CD
pop     edx
pop     ecx
pop     ebx
retn

loc_4149A4:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 400h
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4149CD:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414990 endp




sub_4149D8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4149EC
cmp     al, 1
jz      short loc_414A0F
pop     edx
pop     ecx
pop     ebx
retn

loc_4149EC:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414A0F:
mov     eax, ecx
call    sub_4DEADD
sub     word ptr [ecx+14h], 2
pop     edx
pop     ecx
pop     ebx
retn
sub_4149D8 endp




sub_414A1F proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A2F
cmp     al, 1
jz      short loc_414A3F
pop     edx
retn

loc_414A2F:
mov     word ptr [edx+14h], 0FB50h
mov     eax, edx
call    sub_4DEADD
inc     byte ptr [edx+0Ah]

loc_414A3F:
mov     eax, edx
call    sub_4DEADD
dec     word ptr [edx+14h]
pop     edx
retn
sub_414A1F endp




sub_414A4C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A60
cmp     al, 1
jz      short loc_414A71
pop     edx
pop     ecx
pop     ebx
retn

loc_414A60:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414A71:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414A4C endp




sub_414A7C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A90
cmp     al, 1
jz      short loc_414AA1
pop     edx
pop     ecx
pop     ebx
retn

loc_414A90:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414AA1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414A7C endp




sub_414AAC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414AC0
cmp     al, 1
jz      short loc_414AD1
pop     edx
pop     ecx
pop     ebx
retn

loc_414AC0:
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414AD1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414AAC endp

db 8Dh, 40h, 0
jpt_414B00 dd offset loc_414B07 ; jump table for switch statement
dd offset loc_414B2F
dd offset loc_414B45
dd offset loc_414B57



sub_414AEF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_414B00 ; jumptable 00414B00 default case
and     eax, 0FFh
jmp     jpt_414B00[eax*4] ; switch jump

loc_414B07:             ; jumptable 00414B00 case 0
mov     word ptr [ecx+14h], 0F5A6h
mov     word ptr [ecx+56h], 4FCh
mov     word ptr [ecx+18h], 15Eh
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_414B2F:             ; jumptable 00414B00 case 1
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_414B45:             ; jumptable 00414B00 case 2
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_414B57:             ; jumptable 00414B00 case 3
mov     eax, ecx
call    sub_4DEADD

def_414B00:             ; jumptable 00414B00 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_414AEF endp




sub_414B62 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_414B68[edx*4]
pop     edx
retn
sub_414B62 endp




sub_414B71 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+640h]
mov     [esp+1Ch+var_1C], offset dword_560BDC
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_414C15
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     word ptr [ebp+0], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
inc     byte ptr [ecx+8]

loc_414C15:
mov     eax, ecx
call    sub_414B62
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+8]
cmp     al, 0Bh
jb      short loc_414C5E
jbe     loc_414D18
cmp     al, 0Eh
jb      short loc_414C51
jbe     loc_414DC1
cmp     al, 10h
jb      loc_414EAE
jbe     loc_414E0B
cmp     al, 11h
jz      loc_414E89
jmp     loc_414EAE

loc_414C51:
cmp     al, 0Ch
jz      loc_414D6B
jmp     loc_414EAE

loc_414C5E:
cmp     al, 7
jb      short loc_414C6D
jbe     short loc_414C9D
cmp     al, 9
jz      short loc_414CD3
jmp     loc_414EAE

loc_414C6D:
test    al, al
jnz     loc_414EAE
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     loc_414EAE
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
xor     ebx, ebx

loc_414C8F:
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
jmp     loc_414EAE

loc_414C9D:
mov     eax, [esp+1Ch+var_1C]
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     short loc_414CB1
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414CB1:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     loc_414EAE
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
mov     ebx, 2
jmp     short loc_414C8F

loc_414CD3:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414CEA
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414CEA:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 18h
jnz     short loc_414D01
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D01:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 20h ; ' '
jnz     loc_414EAE
mov     ebx, 0Ch
jmp     loc_414C8F

loc_414D18:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414D3D
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D3D:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     short loc_414D54
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D54:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     loc_414EAE
mov     ebx, 5
jmp     loc_414C8F

loc_414D6B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414D90
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414D90:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_414DA7
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414DA7:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 8Ch
jnz     loc_414EAE
mov     ebx, 7
jmp     loc_414C8F

loc_414DC1:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414DE6
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414DE6:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0Ah
jnz     loc_414EAE
mov     ebx, 9
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 5
jmp     loc_414EA5

loc_414E0B:
mov     eax, [esp+1Ch+var_1C]
mov     esi, [eax+10h]
cmp     esi, 0Ah
jnz     short loc_414E2F
mov     ebx, esi
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414E2F:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 29h ; ')'
jnz     short loc_414E54
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414E54:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_414E6B
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414E6B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_414EAE
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 7
jmp     short loc_414EA5

loc_414E89:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414EAE
mov     ebx, 0Bh
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 6

loc_414EA5:
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414EAE:
mov     edx, ebp
mov     eax, ecx
call    sub_414EF7
inc     word ptr [ebp+0]
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414B71 endp




sub_414EC5 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50E9F4[ebx*4]
mov     [edx+4], eax
retn
sub_414EC5 endp




sub_414EDE proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EA28[ebx*4]
mov     [edx+8], eax
retn
sub_414EDE endp




sub_414EF7 proc near
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
jb      short loc_414F1C
jbe     short loc_414F1F
cmp     al, 7Fh
jnz     short loc_414F1C
mov     byte ptr [edx+0Eh], 0
jmp     short loc_414F1F

loc_414F1C:
inc     byte ptr [esi+0Eh]

loc_414F1F:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_414F61
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_414F61:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_414F84
jbe     short loc_414F87
cmp     al, 7Fh
jnz     short loc_414F84
mov     byte ptr [esi+11h], 0
jmp     short loc_414F87

loc_414F84:
inc     byte ptr [esi+11h]

loc_414F87:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_414FC9
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044

loc_414FC9:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_414EF7 endp




sub_414FD4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559158, dx
mov     eax, ds:dword_559154
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 10000Fh

loc_415010:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414FD4 endp




sub_41501C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559150, dx
mov     eax, ds:dword_55914C
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 120011h
jmp     short loc_415010
sub_41501C endp




sub_41505A proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559154
test    ecx, ecx
jz      loc_415100
cmp     ds:dword_55914C, 0
jz      loc_415100
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_4150BC
jge     short loc_415094
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4150B0

loc_415094:
inc     ds:word_559158
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559154+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_4150BC
add     eax, 4

loc_4150B0:
mov     ds:dword_559154, eax
mov     eax, edx
call    sub_414FD4

loc_4150BC:
mov     eax, ds:dword_55914C
mov     di, [eax+2]
test    di, di
jz      short loc_415100
jge     short loc_4150D8
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4150F4

loc_4150D8:
inc     ds:word_559150
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_55914C+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_415100
add     eax, 4

loc_4150F4:
mov     ds:dword_55914C, eax
mov     eax, edx
call    sub_41501C

loc_415100:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41505A endp




sub_415105 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559160
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_41515F
cmp     bl, ds:byte_560BE4
jnz     short loc_41515F
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_41515F
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_41515F
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50EB9C[eax*4]
mov     ds:dword_559154, eax
mov     eax, edx
call    sub_414FD4
add     ds:dword_559160, 6

loc_41515F:
mov     eax, ds:dword_55915C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4151A6
cmp     bl, [ecx+8]
jnz     short loc_4151A6
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_4151A6
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_4151A6
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50EBC0[eax*4]
mov     ds:dword_55914C, eax
mov     eax, edx
call    sub_41501C
add     ds:dword_55915C, 6

loc_4151A6:
mov     eax, edx
call    sub_41505A
pop     edx
pop     ecx
pop     ebx
retn
sub_415105 endp




sub_4151B1 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_559160, offset unk_50EBF4
mov     ds:dword_55915C, offset unk_50EC2A
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4151B1 endp




sub_4151EA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415206
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415206:
pop     edx
pop     ecx
pop     ebx
retn
sub_4151EA endp




sub_41520A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415226
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415226:
pop     edx
pop     ecx
pop     ebx
retn
sub_41520A endp




sub_41522A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415246
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415246:
pop     edx
pop     ecx
pop     ebx
retn
sub_41522A endp




sub_41524A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_415253[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_415272
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_415272:
mov     eax, ecx
call    sub_415105
pop     edx
pop     ecx
retn
sub_41524A endp




sub_41527C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41528C
mov     eax, edx
call    sub_4151B1

loc_41528C:
mov     eax, edx
call    sub_41524A
pop     edx
retn
sub_41527C endp

jpt_4152D2 dd offset loc_4152D9 ; jump table for switch statement
dd offset def_4152D2
dd offset loc_415336
dd offset def_4152D2



sub_4152A5 proc near
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
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      short def_4152D2 ; jumptable 004152D2 default case, cases 1,3
and     eax, 0FFh
jmp     jpt_4152D2[eax*4] ; switch jump

loc_4152D9:             ; jumptable 004152D2 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short def_4152D2 ; jumptable 004152D2 default case, cases 1,3

loc_415336:             ; jumptable 004152D2 case 2
mov     eax, ecx
call    sub_4DEADD

def_4152D2:             ; jumptable 004152D2 default case, cases 1,3
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4152A5 endp




sub_415343 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_415387
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_415387:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_415343 endp




sub_415392 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4153B5
mov     word ptr [ecx+56h], 0FA00h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4153B5:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_415392 endp




sub_4153C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4153DD
jbe     short loc_41540A
cmp     al, 2
jz      short loc_41541C
pop     edx
pop     ecx
pop     ebx
retn

loc_4153DD:
test    al, al
jnz     short loc_415423
mov     word ptr [ecx+14h], 0FFB0h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
mov     word ptr [ecx+56h], 0FD00h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41540A:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_41541C:
mov     eax, ecx
call    sub_4DEADD

loc_415423:
pop     edx
pop     ecx
pop     ebx
retn
sub_4153C7 endp




sub_415427 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41543B
cmp     al, 1
jz      short loc_415464
pop     edx
pop     ecx
pop     ebx
retn

loc_41543B:
mov     word ptr [ecx+14h], 0FFB0h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
mov     word ptr [ecx+56h], 480h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415464:
mov     eax, ecx
call    sub_4DEADD
sub     word ptr [ecx+14h], 2
pop     edx
pop     ecx
pop     ebx
retn
sub_415427 endp




sub_415474 proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_415484
cmp     al, 1
jz      short loc_415494
pop     edx
retn

loc_415484:
mov     word ptr [edx+14h], 0FAECh
mov     eax, edx
call    sub_4DEADD
inc     byte ptr [edx+0Ah]

loc_415494:
mov     eax, edx
call    sub_4DEADD
dec     word ptr [edx+14h]
pop     edx
retn
sub_415474 endp




sub_4154A1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4154B7
jbe     short loc_4154DE
cmp     al, 2
jz      short loc_4154F0
pop     edx
pop     ecx
pop     ebx
retn

loc_4154B7:
test    al, al
jnz     short loc_4154F7
mov     word ptr [ecx+14h], 0F98Eh
mov     word ptr [ecx+16h], 0FFF6h
mov     word ptr [ecx+18h], 28Ah
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4154DE:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4154F0:
mov     eax, ecx
call    sub_4DEADD

loc_4154F7:
pop     edx
pop     ecx
pop     ebx
retn
sub_4154A1 endp




sub_4154FB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_415511
jbe     short loc_415538
cmp     al, 2
jz      short loc_41554A
pop     edx
pop     ecx
pop     ebx
retn

loc_415511:
test    al, al
jnz     short loc_415551
mov     word ptr [ecx+14h], 0F60Ah
mov     word ptr [ecx+18h], 186h
mov     word ptr [ecx+56h], 200h
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415538:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_41554A:
mov     eax, ecx
call    sub_4DEADD

loc_415551:
pop     edx
pop     ecx
pop     ebx
retn
sub_4154FB endp




sub_415555 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_41555B[edx*4]
pop     edx
retn
sub_415555 endp




sub_415564 proc near
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_4155D4
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

loc_4155D4:
mov     eax, ecx
call    sub_415555
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_415564 endp




sub_4155E0 proc near
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
movzx   edi, byte ptr [eax+3]
lea     esi, [eax+5B0h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    ds:funcs_41561E[edi*4]
mov     edx, esi
mov     eax, ecx
call    sub_415BC2
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41564F
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_415656

loc_41564F:
mov     eax, ecx
call    sub_4DEADD

loc_415656:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4155E0 endp

jpt_4156BA dd offset loc_4156C1 ; jump table for switch statement
dd offset loc_41571E
dd offset loc_415764
dd offset loc_4157A9
dd offset loc_4157B2
dd offset loc_4157DC
dd offset loc_4157E5
dd offset loc_415822
dd offset loc_415830
dd offset loc_415870
dd offset loc_415891
dd offset loc_4158C3
dd offset loc_4158CF
dd offset loc_4158F4
dd offset loc_41597B
dd offset loc_415999
dd offset loc_4159A5



sub_4156A0 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edi, edx
mov     ebp, ebx
mov     al, [eax+8]
cmp     al, 10h         ; switch 17 cases
ja      def_4156BA      ; jumptable 004156BA default case
and     eax, 0FFh
jmp     jpt_4156BA[eax*4] ; switch jump

loc_4156C1:             ; jumptable 004156BA case 0
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 1400140h
mov     dword ptr [esi+15Ch], 140h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 1
mov     byte ptr [esi+0ADh], 0FFh
xor     ebx, ebx
mov     eax, esi
mov     edx, ebp
call    sub_415B6E
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41571E:             ; jumptable 004156BA case 1
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 2
jnz     def_4156BA      ; jumptable 004156BA default case
mov     eax, [edx+10h]
cmp     eax, 28h ; '('
jb      short loc_415747
jbe     short loc_41575A
cmp     eax, 2Dh ; '-'

loc_41573C:
jz      loc_4157D4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415747:
cmp     eax, 0Ah
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 1
jmp     loc_415963

loc_41575A:
mov     ebx, 2
jmp     loc_415963

loc_415764:             ; jumptable 004156BA case 2
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_41578B
cmp     byte ptr [esi+0A4h], 24h ; '$'
jbe     short loc_41578B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 48h ; 'H'
mov     eax, esi
call    sub_4DD43B

loc_41578B:
cmp     byte ptr [edi+9], 3
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 1
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 4
jmp     loc_415862

loc_4157A9:             ; jumptable 004156BA case 3
mov     byte ptr [esi+0ACh], 2
jmp     short loc_4157D4

loc_4157B2:             ; jumptable 004156BA case 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh

loc_4157CE:             ; jumptable 004156BA default case
jnz     def_4156BA

loc_4157D4:
inc     byte ptr [esi+8]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4157DC:             ; jumptable 004156BA case 5
mov     byte ptr [esi+0ACh], 7
jmp     short loc_4157D4

loc_4157E5:             ; jumptable 004156BA case 6
cmp     byte ptr [edx+9], 4
jnz     def_4156BA      ; jumptable 004156BA default case
mov     eax, [edx+10h]
cmp     eax, 82h
jb      short loc_415805
jbe     short loc_415818
cmp     eax, 8Ch
jmp     loc_41573C

loc_415805:
cmp     eax, 3Ch ; '<'
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 3
jmp     loc_415963

loc_415818:
mov     ebx, 4
jmp     loc_415963

loc_415822:             ; jumptable 004156BA case 7
mov     byte ptr [esi+0ACh], 3
mov     ebx, 5
jmp     short loc_415862

loc_415830:             ; jumptable 004156BA case 8
cmp     byte ptr [edx+9], 4
jnz     short loc_415849
cmp     dword ptr [edx+10h], 96h
jnz     short loc_415849
mov     ebx, 6
jmp     loc_415963

loc_415849:
cmp     byte ptr [edi+9], 5
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 1

loc_415857:             ; jumptable 004156BA default case
jnz     def_4156BA
mov     ebx, 8

loc_415862:
mov     edx, ebp
mov     eax, esi
call    sub_415B6E
jmp     loc_4157D4

loc_415870:             ; jumptable 004156BA case 9
mov     byte ptr [esi+0ACh], 4
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 6Eh ; 'n'
jmp     loc_4157CE

loc_415891:             ; jumptable 004156BA case 10
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_4158A5
mov     ebx, 7
mov     edx, ebp
mov     eax, esi
call    sub_415B6E

loc_4158A5:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     short loc_415857

loc_4158C3:             ; jumptable 004156BA case 11
mov     byte ptr [esi+0ACh], 8
jmp     loc_4157D4

loc_4158CF:             ; jumptable 004156BA case 12
cmp     byte ptr [edx+9], 6
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edx+10h], 1
jnz     def_4156BA      ; jumptable 004156BA default case
mov     byte ptr [esi+0ACh], 5
mov     ebx, 0Ah
jmp     loc_415862

loc_4158F4:             ; jumptable 004156BA case 13
mov     byte ptr [esi+0ADh], 0FFh
mov     eax, [edx+10h]
cmp     eax, 0C8h
jb      short loc_415935
jbe     short loc_415957
cmp     eax, 104h
jb      short loc_415929
jbe     short loc_415957
cmp     eax, 136h
jb      def_4156BA      ; jumptable 004156BA default case
jbe     short loc_41595E
cmp     eax, 15Eh
jz      short loc_415971
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415929:
cmp     eax, 0F0h

loc_41592E:
jz      short loc_41595E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415935:
cmp     eax, 64h ; 'd'
jb      short loc_41594E
jbe     short loc_41595E
cmp     eax, 6Eh ; 'n'
jb      def_4156BA      ; jumptable 004156BA default case
jbe     short loc_415957
cmp     eax, 0AAh
jmp     short loc_41592E

loc_41594E:
cmp     eax, 0Ah
jnz     def_4156BA      ; jumptable 004156BA default case

loc_415957:
mov     ebx, 9
jmp     short loc_415963

loc_41595E:
mov     ebx, 0Ah

loc_415963:
mov     edx, ebp
mov     eax, esi
call    sub_415B6E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415971:
mov     ebx, 9
jmp     loc_415862

loc_41597B:             ; jumptable 004156BA case 14
cmp     byte ptr [edx+9], 6
jnz     short loc_41598A
cmp     dword ptr [edi+10h], 168h
jz      short loc_41595E

loc_41598A:
cmp     byte ptr [edi+9], 7
jnz     short def_4156BA ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 0Ah
jmp     loc_4157CE

loc_415999:             ; jumptable 004156BA case 15
mov     byte ptr [esi+0ACh], 6
jmp     loc_4157D4

loc_4159A5:             ; jumptable 004156BA case 16
cmp     byte ptr [esi+0A4h], 11h
jbe     short def_4156BA ; jumptable 004156BA default case
add     word ptr [esi+56h], 14h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF60h
mov     eax, esi
call    sub_4DD43B

def_4156BA:             ; jumptable 004156BA default case
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4156A0 endp

jpt_415A06 dd offset loc_415A0D ; jump table for switch statement
dd offset loc_415A8D
dd offset loc_415AE6
dd offset loc_415AF0
dd offset loc_415AFC
dd offset loc_415B0A
dd offset loc_415B4A
dd offset loc_415B61
dd offset def_415A06



sub_4159EC proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+8]
cmp     dl, 8           ; switch 9 cases
ja      def_415A06      ; jumptable 00415A06 default case, case 8
and     edx, 0FFh
jmp     jpt_415A06[edx*4] ; switch jump

loc_415A0D:             ; jumptable 00415A06 case 0
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 10h
mov     byte ptr [esi+0ADh], 0FFh
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
mov     edx, ecx
mov     eax, esi
call    sub_415C9F
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0

def_415A06:             ; jumptable 00415A06 default case, case 8
cmp     byte ptr [esi+8], 6
jnb     short loc_415A8A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4ED88B

loc_415A8A:
pop     esi
pop     ecx
retn

loc_415A8D:             ; jumptable 00415A06 case 1
mov     dl, [eax+9]
test    dl, dl
jnz     short loc_415AC7
mov     eax, [eax+10h]
cmp     eax, 41h ; 'A'
jb      short loc_415AAE
jbe     short loc_415AC0
cmp     eax, 5Fh ; '_'
jb      short def_415A06 ; jumptable 00415A06 default case, case 8
jbe     short loc_415AB3
cmp     eax, 0EBh
jz      short loc_415AC0
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AAE:
cmp     eax, 2Dh ; '-'
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AB3:
xor     ebx, ebx

loc_415AB5:
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AC0:
mov     ebx, 1
jmp     short loc_415AB5

loc_415AC7:
cmp     dl, 1
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8
cmp     dl, [eax+7]
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8
xor     ebx, ebx
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
mov     word ptr [ecx], 0

loc_415AE1:
inc     byte ptr [esi+8]
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AE6:             ; jumptable 00415A06 case 2
mov     byte ptr [esi+0ACh], 11h
inc     byte ptr [esi+8]

loc_415AF0:             ; jumptable 00415A06 case 3
cmp     byte ptr [eax+7], 2
jnz     def_415A06      ; jumptable 00415A06 default case, case 8
jmp     short loc_415AE1

loc_415AFC:             ; jumptable 00415A06 case 4
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 12h
jmp     short loc_415AE1

loc_415B0A:             ; jumptable 00415A06 case 5
cmp     word ptr [ebx], 1Eh
jle     short loc_415B14
mov     byte ptr [eax+7], 3

loc_415B14:
inc     word ptr [ecx]
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_415B28
inc     byte ptr [esi+8]

loc_415B28:
cmp     byte ptr [esi+0A4h], 0Fh
jbe     def_415A06      ; jumptable 00415A06 default case, case 8
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC9h
mov     eax, esi
call    sub_4DD43B
jmp     def_415A06      ; jumptable 00415A06 default case, case 8

loc_415B4A:             ; jumptable 00415A06 case 6
mov     byte ptr [esi+0ACh], 13h
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
jmp     short loc_415AE1

loc_415B61:             ; jumptable 00415A06 case 7
mov     eax, [ebx+14h]
call    sub_4DE2F6
jmp     loc_415AE1
sub_4159EC endp




sub_415B6E proc near
push    ecx
mov     ecx, eax
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     al, [edx+10h]
mov     [edx+0Dh], al
mov     eax, ebx
shl     eax, 2
cmp     byte ptr [ecx+3], 0
jnz     short loc_415BAE
mov     ecx, ds:off_50ED0F[eax]
mov     [edx+4], ecx
mov     eax, ds:off_50ED3B[eax]
mov     [edx+8], eax
pop     ecx
retn

loc_415BAE:
mov     ecx, ds:off_50ED67[eax]
mov     [edx+4], ecx
mov     eax, ds:off_50ED73[eax]
mov     [edx+8], eax
pop     ecx
retn
sub_415B6E endp




sub_415BC2 proc near
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
jb      short loc_415BE7
jbe     short loc_415BEA
cmp     al, 7Fh
jnz     short loc_415BE7
mov     byte ptr [edx+0Eh], 0
jmp     short loc_415BEA

loc_415BE7:
inc     byte ptr [esi+0Eh]

loc_415BEA:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_415C2C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_415C2C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_415C4F
jbe     short loc_415C52
cmp     al, 7Fh
jnz     short loc_415C4F
mov     byte ptr [esi+11h], 0
jmp     short loc_415C52

loc_415C4F:
inc     byte ptr [esi+11h]

loc_415C52:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_415C94
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_415C94:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_415BC2 endp




sub_415C9F proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
xor     cl, cl
lea     ebx, [edx+18h]
mov     edx, 3
call    sub_451925
mov     edx, [esp+18h+var_18]
mov     [edx+14h], eax
mov     byte ptr [eax+0Ch], 3Fh ; '?'

loc_415CC5:
movsx   edx, cl
shl     edx, 3
mov     eax, [esp+18h+var_18]
add     eax, edx
lea     edi, [eax+18h]
lea     esi, [ebp+14h]
movsd
movsd
mov     bx, ds:word_50ED7F[edx]
add     [eax+18h], bx
mov     bx, ds:word_50ED81[edx]
add     [eax+1Ah], bx
mov     dx, ds:word_50ED83[edx]
add     [eax+1Ch], dx
inc     cl
cmp     cl, 6
jl      short loc_415CC5
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_415C9F endp




sub_415D09 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
movzx   esi, byte ptr [eax+8]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_415D48[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_416222
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_415D7D
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_415D84

loc_415D7D:
mov     eax, ecx
call    sub_4DEADD

loc_415D84:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_415D09 endp




sub_415D8B proc near
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
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_416209
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_415D8B endp

db 90h
jpt_415E54 dd offset loc_415E5B ; jump table for switch statement
dd offset loc_415E7A
dd offset loc_415F3B
dd offset loc_415F74
dd offset loc_415FA3
dd offset loc_415FC5
dd offset loc_41603D
dd offset loc_41606F
dd offset loc_416105
dd offset loc_416142
dd offset loc_416190
dd offset loc_4161A8
dd offset loc_4161C7



sub_415E39 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 0Ch         ; switch 13 cases
ja      def_415E54      ; jumptable 00415E54 default case
and     edx, 0FFh
jmp     jpt_415E54[edx*4] ; switch jump

loc_415E5B:             ; jumptable 00415E54 case 0
cmp     byte ptr [ecx+0A4h], 0Eh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0Eh
jmp     loc_41613B

loc_415E7A:             ; jumptable 00415E54 case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_415E54      ; jumptable 00415E54 default case
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_415EC9
jbe     loc_415F01
cmp     eax, 96h
jb      short loc_415EBE
jbe     loc_415F0F
cmp     eax, 0C8h
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_415F19
cmp     eax, 0DCh
jz      short loc_415F23
pop     edi
pop     esi
pop     ecx
retn

loc_415EBE:
cmp     eax, 8Ch

loc_415EC3:
jz      short loc_415F19
pop     edi
pop     esi
pop     ecx
retn

loc_415EC9:
cmp     eax, 28h ; '('
jb      short loc_415ED9
jbe     short loc_415EF0
cmp     eax, 5Fh ; '_'
jz      short loc_415EFA
pop     edi
pop     esi
pop     ecx
retn

loc_415ED9:
cmp     eax, 14h
jnz     def_415E54      ; jumptable 00415E54 default case
mov     ebx, 1
mov     eax, ecx
mov     edx, esi
jmp     loc_4161E7

loc_415EF0:
mov     ebx, 0Bh
jmp     loc_416183

loc_415EFA:
xor     ebx, ebx
jmp     loc_416183

loc_415F01:
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_415F0F:
mov     ebx, 0Ah
jmp     loc_416183

loc_415F19:
mov     ebx, 1
jmp     loc_416183

loc_415F23:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 2
jmp     loc_416132

loc_415F3B:             ; jumptable 00415E54 case 2
cmp     byte ptr [eax+9], 1
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Ah
mov     word ptr [esi+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 6
jmp     loc_416132

loc_415F74:             ; jumptable 00415E54 case 3
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     di, [ebx]
cmp     di, 1Eh
jge     short loc_415F99
mov     eax, edi
inc     eax
mov     [ebx], ax
pop     edi
pop     esi
pop     ecx
retn

loc_415F99:
mov     word ptr [ebx], 0
jmp     loc_41613B

loc_415FA3:             ; jumptable 00415E54 case 4
mov     byte ptr [ecx+0ACh], 0Bh
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Bh
jmp     loc_416132

loc_415FC5:             ; jumptable 00415E54 case 5
mov     dl, [eax+9]
cmp     dl, 2
jnz     short loc_416005
mov     eax, [eax+10h]
cmp     eax, 19h
jb      short loc_415FE4
jbe     loc_415EF0
cmp     eax, 30h ; '0'
jz      short loc_415FFB
pop     edi
pop     esi
pop     ecx
retn

loc_415FE4:
cmp     eax, 0Ah
jnz     def_415E54      ; jumptable 00415E54 default case
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_415FFB:
mov     ebx, 4
jmp     loc_416183

loc_416005:
cmp     dl, 4
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Ch
mov     word ptr [ebx+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Ch
jmp     loc_416132

loc_41603D:             ; jumptable 00415E54 case 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     dx, [ebx]
cmp     dx, 0Ah
jge     short loc_416057
mov     ebx, edx
inc     ebx
mov     [esi], bx
pop     edi
pop     esi
pop     ecx
retn

loc_416057:
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     word ptr [esi], 0
jmp     loc_41613B

loc_41606F:             ; jumptable 00415E54 case 7
mov     dl, [eax+9]
cmp     dl, 4
jnz     short loc_4160D0
mov     eax, [eax+10h]
cmp     eax, 55h ; 'U'
jb      short loc_416096
jbe     short loc_4160B8
cmp     eax, 7Dh ; '}'
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_4160AE
cmp     eax, 0C3h
jmp     loc_415EC3

loc_416096:
cmp     eax, 19h
jb      def_415E54      ; jumptable 00415E54 default case
jbe     loc_415F19
cmp     eax, 37h ; '7'
jnz     def_415E54      ; jumptable 00415E54 default case

loc_4160AE:
mov     ebx, 0Ch
jmp     loc_416183

loc_4160B8:
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 5
jmp     loc_416183

loc_4160D0:
cmp     dl, 5
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Dh
mov     word ptr [ebx+2], 0
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 7
jmp     short loc_416132

loc_416105:             ; jumptable 00415E54 case 8
cmp     byte ptr [ecx+0A4h], 0Eh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Eh

loc_41611F:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Dh

loc_416132:
mov     edx, esi
mov     eax, ecx
call    sub_416209

loc_41613B:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_416142:             ; jumptable 00415E54 case 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_416167
jbe     short loc_416189
cmp     eax, 64h ; 'd'
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_41617E
cmp     eax, 78h ; 'x'
jz      short loc_41611F
pop     edi
pop     esi
pop     ecx
retn

loc_416167:
cmp     eax, 32h ; '2'
jnz     def_415E54      ; jumptable 00415E54 default case

loc_416170:
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_41617E:
mov     ebx, 7

loc_416183:
mov     edx, esi
mov     eax, ecx
jmp     short loc_4161E7

loc_416189:
mov     ebx, 0Dh
jmp     short loc_416183

loc_416190:             ; jumptable 00415E54 case 10
cmp     byte ptr [ecx+0A4h], 20h ; ' '
jnz     short def_415E54 ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 20h ; ' '
jmp     short loc_41613B

loc_4161A8:             ; jumptable 00415E54 case 11
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, [eax+10h]
cmp     ebx, 0AAh
jz      short loc_416170
cmp     ebx, 0C8h
jnz     short def_415E54 ; jumptable 00415E54 default case
jmp     loc_41611F

loc_4161C7:             ; jumptable 00415E54 case 12
cmp     dword ptr [eax+10h], 0F3h
jnz     short def_415E54 ; jumptable 00415E54 default case
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 8
mov     edx, esi
mov     eax, ecx

loc_4161E7:
call    sub_416209

def_415E54:             ; jumptable 00415E54 default case
pop     edi
pop     esi
pop     ecx
retn
sub_415E39 endp




sub_4161F0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50EE8E[ebx*4]
mov     [edx+4], eax
retn
sub_4161F0 endp




sub_416209 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EEB2[ebx*4]
mov     [edx+8], eax
retn
sub_416209 endp




sub_416222 proc near
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
jb      short loc_416247
jbe     short loc_41624A
cmp     al, 7Fh
jnz     short loc_416247
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41624A

loc_416247:
inc     byte ptr [esi+0Eh]

loc_41624A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41628C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41628C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4162AF
jbe     short loc_4162B2
cmp     al, 7Fh
jnz     short loc_4162AF
mov     byte ptr [esi+11h], 0
jmp     short loc_4162B2

loc_4162AF:
inc     byte ptr [esi+11h]

loc_4162B2:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_4162F4
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_4162F4:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_416222 endp

jpt_41635F dd offset loc_416366 ; jump table for switch statement
dd offset loc_4163CB
dd offset loc_4163F8
dd offset loc_41643C
dd offset loc_416474
dd offset loc_4164F6
dd offset loc_416547



sub_41631B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 6           ; switch 7 cases
ja      def_41635F      ; jumptable 0041635F default case
and     eax, 0FFh
jmp     jpt_41635F[eax*4] ; switch jump

loc_416366:             ; jumptable 0041635F case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 5

loc_4163BD:
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9
jmp     loc_4164EE

loc_4163CB:             ; jumptable 0041635F case 1
cmp     byte ptr [ecx+0A4h], 1Dh
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 6
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 1Dh
jmp     loc_4164EE

loc_4163F8:             ; jumptable 0041635F case 2
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, ds:dword_560BEC
cmp     ebx, 32h ; '2'
jnz     short loc_416414
mov     ebx, 0Ah
jmp     loc_41657F

loc_416414:
cmp     ebx, 5Ah ; 'Z'
jnz     short loc_41642B
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 6
jmp     short loc_4163BD

loc_41642B:
cmp     ebx, 0A0h
jnz     def_41635F      ; jumptable 0041635F default case
jmp     loc_4164EE

loc_41643C:             ; jumptable 0041635F case 3
mov     bh, ds:byte_560BE5
cmp     bh, 1
jz      def_41635F      ; jumptable 0041635F default case
cmp     bh, 2
jnz     def_41635F      ; jumptable 0041635F default case
cmp     ds:dword_560BEC, 1
jnz     def_41635F      ; jumptable 0041635F default case
mov     [ecx+0ACh], bh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
jmp     loc_4163BD

loc_416474:             ; jumptable 0041635F case 4
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_41648C
jbe     short loc_4164AD
cmp     eax, 82h
jz      short loc_4164C5
jmp     def_41635F      ; jumptable 0041635F default case

loc_41648C:
cmp     eax, 0Ah
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 7
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 7
jmp     loc_41657F

loc_4164AD:
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 8
jmp     loc_41657F

loc_4164C5:
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9
mov     byte ptr [ecx+0ACh], 3

loc_4164E8:
mov     word ptr [ebp+2], 0

loc_4164EE:
inc     byte ptr [ecx+8]
jmp     def_41635F      ; jumptable 0041635F default case

loc_4164F6:             ; jumptable 0041635F case 5
mov     ah, ds:byte_560BE5
cmp     ah, 2
jnz     short loc_416530
mov     edi, ds:dword_560BEC
cmp     edi, 96h
jz      short loc_4164AD
cmp     edi, 0C8h
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 2
jmp     short loc_41657F

loc_416530:
cmp     ah, 3
jnz     short def_41635F ; jumptable 0041635F default case
cmp     ds:dword_560BEC, 1
jnz     short def_41635F ; jumptable 0041635F default case
mov     byte ptr [ecx+0ACh], 4
jmp     short loc_4164E8

loc_416547:             ; jumptable 0041635F case 6
mov     edx, ds:dword_560BEC
cmp     edx, 1
jnz     short loc_416567
mov     ebx, 9
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 9
jmp     short loc_41657F

loc_416567:
cmp     edx, 3Ch ; '<'
jnz     short def_41635F ; jumptable 0041635F default case
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 4

loc_41657F:
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9

def_41635F:             ; jumptable 0041635F default case
mov     edx, ebp
mov     eax, ecx
call    sub_4165F2
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_4165B2
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4165B9

loc_4165B2:
mov     eax, ecx
call    sub_4DEADD

loc_4165B9:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41631B endp




sub_4165C0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50EF7C[ebx*4]
mov     [edx+4], eax
retn
sub_4165C0 endp




sub_4165D9 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EFA4[ebx*4]
mov     [edx+8], eax
retn
sub_4165D9 endp




sub_4165F2 proc near
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
jb      short loc_416617
jbe     short loc_41661A
cmp     al, 7Fh
jnz     short loc_416617
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41661A

loc_416617:
inc     byte ptr [esi+0Eh]

loc_41661A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41665C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41665C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_41667F
jbe     short loc_416682
cmp     al, 7Fh
jnz     short loc_41667F
mov     byte ptr [esi+11h], 0
jmp     short loc_416682

loc_41667F:
inc     byte ptr [esi+11h]

loc_416682:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_4166C4
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_4166C4:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4165F2 endp




sub_4166CF proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50EFDC[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_4166CF endp




sub_4166E2 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50EFF8[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_4166E2 endp




sub_4166F5 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_416769
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_41671E
jbe     short loc_416770
cmp     al, 7Fh
jnz     short loc_41671E
mov     byte ptr [edx+4], 0

loc_41671E:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
mov     al, [ecx+eax+1]
mov     [esi+5], al
add     byte ptr [esi+4], 2
jmp     short loc_416770

loc_416769:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_416770:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_4167DE
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_416790
jbe     short loc_4167E5
cmp     al, 7Fh
jnz     short loc_416790
mov     [esi+6], bl

loc_416790:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax+1]
mov     [esi+7], al
add     byte ptr [esi+6], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4167DE:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_4167E5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4166F5 endp




sub_4167EA proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     [esp+1Ch+var_1C], offset dword_560BDC
lea     ebp, [eax+640h]
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
mov     ah, ds:byte_560BE5
cmp     ah, 2
jnz     loc_416969
mov     ebx, ds:dword_560BEC
cmp     ebx, 1
jnz     short loc_4168A1
or      [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
xor     edx, edx
mov     eax, ebp
call    sub_4166CF
xor     edx, edx
mov     eax, ebp
call    sub_4166E2
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4168BE

loc_4168A1:
cmp     ebx, 3Eh ; '>'
jge     short loc_4168AB
cmp     ebx, 15h
jg      short loc_4168B7

loc_4168AB:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1AEh
jle     short loc_4168BE

loc_4168B7:
mov     eax, ecx
call    sub_4DEADD

loc_4168BE:
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+10h]
cmp     eax, 10Eh
jb      short loc_416911
jbe     loc_416944
cmp     eax, 19Ah
jb      short loc_4168FB
jbe     loc_416954
cmp     eax, 1AEh
jb      loc_416960
jbe     short loc_416936
cmp     eax, 1F4h

loc_4168F0:
jz      loc_416944
jmp     loc_416960

loc_4168FB:
cmp     eax, 12Ch
jb      loc_416960
jbe     short loc_416936
cmp     eax, 17Ch
jz      short loc_416950
jmp     short loc_416960

loc_416911:
cmp     eax, 69h ; 'i'
jb      short loc_41692A
jbe     short loc_416936
cmp     eax, 0A5h
jb      short loc_416960
jbe     short loc_416950
cmp     eax, 0B4h
jz      short loc_416936
jmp     short loc_416960

loc_41692A:
cmp     eax, 14h
jb      short loc_416960
jbe     short loc_416936
cmp     eax, 4Bh ; 'K'
jmp     short loc_4168F0

loc_416936:
mov     edx, 1

loc_41693B:
mov     eax, ebp
call    sub_4166E2
jmp     short loc_416960

loc_416944:
mov     edx, 1
mov     eax, ebp
call    sub_4166CF

loc_416950:
xor     edx, edx
jmp     short loc_41693B

loc_416954:
mov     edx, 1
mov     eax, ebp
call    sub_4166CF

loc_416960:
mov     edx, ebp
mov     eax, ecx
call    sub_4166F5

loc_416969:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4167EA endp




sub_416973 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_416983[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_416997
mov     eax, ecx
call    sub_4DEADD

loc_416997:
mov     edx, ebx
mov     eax, ecx
call    sub_416D8E
pop     edx
pop     ecx
pop     ebx
retn
sub_416973 endp




sub_4169A4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 4
jb      short loc_4169EF
jbe     short loc_416A07
cmp     al, 8
jb      loc_416A50
jbe     short loc_416A21
cmp     al, 0Bh
jz      short loc_416A3B
jmp     short loc_416A50

loc_4169EF:
cmp     al, 2
jnz     short loc_416A50
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 1
jmp     short loc_416A50

loc_416A07:
mov     word ptr [ecx+18h], 0FAh
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 3
jmp     short loc_416A50

loc_416A21:
mov     word ptr [ecx+18h], 0F0h
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 4
jmp     short loc_416A50

loc_416A3B:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 5

loc_416A50:
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4169A4 endp




sub_416A67 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_416A91
mov     [ecx+0Dh], ah
inc     byte ptr [ecx+0Ah]
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416A91:
mov     eax, [edi+10h]
cmp     eax, 23h ; '#'
jb      short loc_416AA4
jbe     short loc_416AAE
cmp     eax, 122h
jz      short loc_416AB5
jmp     short loc_416AC3

loc_416AA4:
cmp     eax, 14h
jnz     short loc_416AC3
inc     byte ptr [ecx+0Dh]
jmp     short loc_416AC3

loc_416AAE:
mov     ebx, 1
jmp     short loc_416ABA

loc_416AB5:
mov     ebx, 2

loc_416ABA:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416AC3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416A67 endp




sub_416AC9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416B04
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_416B04:
mov     eax, [edi+10h]
cmp     eax, 19h
jb      short loc_416AC3
jbe     short loc_416B15
cmp     eax, 55h ; 'U'
jz      short loc_416B1C
jmp     short loc_416AC3

loc_416B15:
mov     ebx, 4
jmp     short loc_416ABA

loc_416B1C:
mov     ebx, 5
jmp     short loc_416ABA
sub_416AC9 endp




sub_416B23 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416B50
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_416B50:
cmp     dword ptr [edi+10h], 37h ; '7'
jnz     loc_416AC3
mov     ebx, 7
jmp     loc_416ABA
sub_416B23 endp




sub_416B64 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 2Dh ; '-'
jb      short loc_416B9D
jbe     short loc_416BAE
cmp     eax, 78h ; 'x'
jb      short loc_416B93
jbe     short loc_416BE8
cmp     eax, 0B4h
jz      loc_416BFD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416B93:
cmp     eax, 50h ; 'P'
jz      short loc_416BD8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416B9D:
cmp     eax, 1
jb      short loc_416C0E
jbe     short loc_416BAE
cmp     eax, 5
jz      short loc_416BC1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BAE:
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BC1:
mov     ebx, 9

loc_416BC6:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416BCF:
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BD8:
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_416BCF

loc_416BE8:
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
jmp     short loc_416BC6

loc_416BFD:
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Dh]

loc_416C0E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416B64 endp




sub_416C13 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416C33
mov     ebx, 0Ah
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]

loc_416C33:
pop     edx
pop     ecx
pop     ebx
retn
sub_416C13 endp




sub_416C37 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0EBh
jb      short loc_416CB0
jbe     loc_416D16
cmp     eax, 140h
jb      short loc_416C8F
jbe     loc_416D1D
cmp     eax, 1AEh
jb      short loc_416C7F
jbe     loc_416D3B
cmp     eax, 1E0h

loc_416C74:
jz      loc_416CEA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416C7F:
cmp     eax, 168h
jz      loc_416CF1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416C8F:
cmp     eax, 104h
jb      loc_416D49
jbe     loc_416D0F
cmp     eax, 136h
jz      loc_416D16
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416CB0:
cmp     eax, 5Ah ; 'Z'
jb      short loc_416CD3
jbe     short loc_416CF1
cmp     eax, 0B9h
jb      short loc_416CCC
jbe     short loc_416CF8
cmp     eax, 0C8h
jz      short loc_416D0F
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416CCC:
cmp     eax, 0A5h
jmp     short loc_416C74

loc_416CD3:
cmp     eax, 1
jb      loc_416D49
jbe     short loc_416CE3
cmp     eax, 32h ; '2'
jmp     short loc_416C74

loc_416CE3:
mov     ebx, 0Bh
jmp     short loc_416D40

loc_416CEA:
mov     ebx, 0Ch
jmp     short loc_416D40

loc_416CF1:
mov     ebx, 0Dh
jmp     short loc_416D40

loc_416CF8:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B

loc_416D06:
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416D0F:
mov     ebx, 0Eh
jmp     short loc_416D40

loc_416D16:
mov     ebx, 0Fh
jmp     short loc_416D40

loc_416D1D:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 0Ah
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
jmp     short loc_416D06

loc_416D3B:
mov     ebx, 0Bh

loc_416D40:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416D49:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416C37 endp




sub_416D4E proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F188[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F188[eax*4]
mov     [edx+10h], eax
retn
sub_416D4E endp




sub_416D8E proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_416DBA
jbe     short loc_416DBE
cmp     ax, 7FFFh
jnz     short loc_416DBA
mov     word ptr [edx+4], 0
jmp     short loc_416DBE

loc_416DBA:
inc     word ptr [esi+4]

loc_416DBE:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_416E03
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_416E03:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_416E2E
jbe     short loc_416E32
cmp     ax, 7FFFh
jnz     short loc_416E2E
mov     word ptr [esi+0Ah], 0
jmp     short loc_416E32

loc_416E2E:
inc     word ptr [esi+0Ah]

loc_416E32:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_416E81
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_416E81:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_416D8E endp




sub_416E8E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_416E9E[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_416EB2
mov     eax, ecx
call    sub_4DEADD

loc_416EB2:
mov     edx, ebx
mov     eax, ecx
call    sub_417295
pop     edx
pop     ecx
pop     ebx
retn
sub_416E8E endp




sub_416EBF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 3
jb      short loc_416F03
jbe     short loc_416F2D
cmp     al, 5
jz      short loc_416F68
jmp     loc_416FA1

loc_416F03:
test    al, al
jnz     loc_416FA1
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     byte ptr [ecx+9], 1
jmp     short loc_416FA1

loc_416F2D:
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     word ptr [ecx+14h], 0FFh
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 190h
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 5
jmp     short loc_416FA1

loc_416F68:
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     word ptr [ecx+14h], 0FFh
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 190h
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 6

loc_416FA1:
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416EBF endp




sub_416FAD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416FE4
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_416FE4:
cmp     dword ptr [edi+10h], 1Eh
jnz     short loc_416FF5
xor     ebx, ebx

loc_416FEC:
mov     edx, esi

loc_416FEE:
mov     eax, ecx
call    sub_417255

loc_416FF5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416FAD endp




sub_416FFB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417032
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417032:
cmp     dword ptr [edi+10h], 0Ah
jnz     short loc_417046
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_417255

loc_417046:
cmp     dword ptr [edi+10h], 23h ; '#'
jnz     short loc_416FF5
mov     ebx, 1
jmp     short loc_416FEC
sub_416FFB endp




sub_417053 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417084
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417084:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_417053 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_43]



sub_417089 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4170B2
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4170B2:
cmp     dword ptr [esi+10h], 7
jnz     short loc_4170C6
mov     ebx, 4
mov     edx, edi
mov     eax, ecx
call    sub_417255

loc_4170C6:
cmp     dword ptr [esi+10h], 4Bh ; 'K'
jnz     loc_416FF5
mov     ebx, 5
mov     edx, edi
jmp     loc_416FEE
sub_417089 endp




sub_4170DC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417113
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417113:
mov     eax, [edi+10h]
cmp     eax, 80h
jb      short loc_41712B
jbe     short loc_41713E
cmp     eax, 8Ch
jz      short loc_417134
jmp     loc_416FF5

loc_41712B:
cmp     eax, 5
jnz     loc_416FF5

loc_417134:
mov     ebx, 7
jmp     loc_416FEC

loc_41713E:
mov     ebx, 6
jmp     loc_416FEC
sub_4170DC endp




sub_417148 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41717F
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_41717F:
cmp     byte ptr [edi+9], 0
jnz     loc_416FF5
mov     eax, [edi+10h]
cmp     eax, 50h ; 'P'
jb      short loc_4171E2
jbe     loc_417229
cmp     eax, 11Dh
jb      short loc_4171C5
jbe     loc_417221
cmp     eax, 172h
jb      loc_416FF5
jbe     loc_417237
cmp     eax, 190h
jz      loc_41723E
jmp     loc_416FF5

loc_4171C5:
cmp     eax, 0F0h
jb      loc_416FF5
jbe     loc_417237
cmp     eax, 10Eh
jz      short loc_417230
jmp     loc_416FF5

loc_4171E2:
cmp     eax, 32h ; '2'
jb      short loc_4171FE
jbe     short loc_41721A
cmp     eax, 39h ; '9'
jb      loc_416FF5
jbe     short loc_417221
cmp     eax, 46h ; 'F'
jz      short loc_417207
jmp     loc_416FF5

loc_4171FE:
cmp     eax, 14h
jnz     loc_416FF5

loc_417207:
mov     ebx, 0Bh

loc_41720C:
mov     edx, esi
mov     eax, ecx
call    sub_417255
jmp     loc_416FF5

loc_41721A:
mov     ebx, 8
jmp     short loc_417243

loc_417221:
inc     byte ptr [ecx+0Dh]
jmp     loc_416FF5

loc_417229:
mov     ebx, 9
jmp     short loc_41720C

loc_417230:
mov     ebx, 9
jmp     short loc_417243

loc_417237:
mov     ebx, 0Ch
jmp     short loc_41720C

loc_41723E:
mov     ebx, 0Ah

loc_417243:
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     byte ptr [ecx+0Dh], 0
jmp     loc_416FF5
sub_417148 endp




sub_417255 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F32E[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F362[eax*4]
mov     [edx+10h], eax
retn
sub_417255 endp




sub_417295 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_4172C1
jbe     short loc_4172C5
cmp     ax, 7FFFh
jnz     short loc_4172C1
mov     word ptr [edx+4], 0
jmp     short loc_4172C5

loc_4172C1:
inc     word ptr [esi+4]

loc_4172C5:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_41730A
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41730A:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417335
jbe     short loc_417339
cmp     ax, 7FFFh
jnz     short loc_417335
mov     word ptr [esi+0Ah], 0
jmp     short loc_417339

loc_417335:
inc     word ptr [esi+0Ah]

loc_417339:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_417388
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417388:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_417295 endp




sub_417395 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4173AB[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4173BF
mov     eax, ecx
call    sub_4DEADD

loc_4173BF:
cmp     byte ptr [esi+7], 0
jnz     short loc_4173CE
mov     edx, ebx
mov     eax, ecx
call    sub_41778E

loc_4173CE:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_417395 endp




sub_4173D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4173D3 endp




sub_41742C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417460
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Ah]

loc_417460:
mov     eax, [edi+10h]
cmp     eax, 96h
jb      short loc_417485
jbe     short loc_417498
cmp     eax, 0AAh
jb      loc_41765D
jbe     short loc_41748E
cmp     eax, 104h
jz      short loc_417498
jmp     loc_41765D

loc_417485:
cmp     eax, 50h ; 'P'
jnz     loc_41765D

loc_41748E:
mov     ebx, 1
jmp     loc_417654

loc_417498:
mov     ebx, 2
jmp     loc_417654
sub_41742C endp




sub_4174A2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4174D9
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Ah]

loc_4174D9:
cmp     dword ptr [edi+10h], 28h ; '('
jnz     loc_41765D
jmp     short loc_417498
sub_4174A2 endp




sub_4174E5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4174E5 endp




sub_41752B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417566
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_417566:
mov     eax, [edi+10h]
cmp     eax, 14h
jb      loc_41765D
jbe     short loc_417580
cmp     eax, 0C3h
jz      short loc_41758A
jmp     loc_41765D

loc_417580:
mov     ebx, 5
jmp     loc_417654

loc_41758A:
mov     ebx, 4
jmp     loc_417654
sub_41752B endp




sub_417594 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4175CF
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_4175CF:
mov     eax, [edi+10h]
cmp     eax, 28h ; '('
jb      short loc_4175E5
jbe     short loc_4175F5
cmp     eax, 0AAh
jz      short loc_4175EE
jmp     loc_41765D

loc_4175E5:
cmp     eax, 19h
jnz     loc_41765D

loc_4175EE:
mov     ebx, 6
jmp     short loc_417654

loc_4175F5:
mov     ebx, 7
jmp     short loc_417654
sub_417594 endp




sub_4175FC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417637
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_417637:
mov     eax, [edi+10h]
cmp     eax, 0Ah
jb      short loc_41765D
jbe     short loc_417648
cmp     eax, 4Bh ; 'K'
jz      short loc_41764F
jmp     short loc_41765D

loc_417648:
mov     ebx, 9
jmp     short loc_417654

loc_41764F:
mov     ebx, 0Ah

loc_417654:
mov     edx, esi
mov     eax, ecx
call    sub_41774E

loc_41765D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4175FC endp




sub_417663 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41769E
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41769E:
cmp     dword ptr [edi+10h], 0DCh
jnz     short loc_41765D
jmp     short loc_41764F
sub_417663 endp




sub_4176A9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4176E4
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_4176E4:
cmp     dword ptr [edi+10h], 127h
jnz     loc_41765D
mov     ebx, 0Bh
jmp     loc_417654
sub_4176A9 endp




sub_4176FB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417749
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_417749:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4176FB endp




sub_41774E proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F4E6[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F516[eax*4]
mov     [edx+10h], eax
retn
sub_41774E endp




sub_41778E proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_4177BA
jbe     short loc_4177BE
cmp     ax, 7FFFh
jnz     short loc_4177BA
mov     word ptr [edx+4], 0
jmp     short loc_4177BE

loc_4177BA:
inc     word ptr [esi+4]

loc_4177BE:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_417803
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_417803:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_41782E
jbe     short loc_417832
cmp     ax, 7FFFh
jnz     short loc_41782E
mov     word ptr [esi+0Ah], 0
jmp     short loc_417832

loc_41782E:
inc     word ptr [esi+0Ah]

loc_417832:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_417881
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417881:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41778E endp




sub_41788E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4178A0[edx*4]
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
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4178D0
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4178DE

loc_4178D0:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_4178DE:
mov     edx, ebx
mov     eax, ecx
call    sub_417A77
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41788E endp




sub_4178ED proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417957
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 400h
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417A37
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+9]
inc     byte ptr [ecx+0Ah]

loc_417957:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4178ED endp




sub_41795C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 168h
jb      short loc_4179B4
jbe     loc_417A1D
cmp     eax, 1F4h
jb      short loc_4179A8
jbe     loc_417A14
cmp     eax, 214h
jb      loc_417A32
jbe     loc_417A1D
cmp     eax, 258h
jz      loc_417A24
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179A8:
cmp     eax, 17Ch
jz      short loc_417A0D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179B4:
cmp     eax, 0EBh
jb      short loc_4179C9
jbe     short loc_4179F1
cmp     eax, 104h
jz      short loc_4179F8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179C9:
cmp     eax, 0BAh
jnz     short loc_417A32
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4

loc_4179E3:
mov     edx, esi
mov     eax, ecx
call    sub_417A37
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179F1:
mov     ebx, 5
jmp     short loc_4179E3

loc_4179F8:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
jmp     short loc_4179E3

loc_417A0D:
mov     ebx, 7
jmp     short loc_4179E3

loc_417A14:
xor     ebx, ebx
mov     edx, 4
jmp     short loc_417A2B

loc_417A1D:
mov     ebx, 8
jmp     short loc_4179E3

loc_417A24:
xor     ebx, ebx
mov     edx, 5

loc_417A2B:
mov     eax, ecx
call    sub_4DE96B

loc_417A32:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41795C endp




sub_417A37 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50F642[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F642[eax*4]
mov     [edx+10h], eax
retn
sub_417A37 endp




sub_417A77 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417AA3
jbe     short loc_417AA7
cmp     ax, 7FFFh
jnz     short loc_417AA3
mov     word ptr [edx+4], 0
jmp     short loc_417AA7

loc_417AA3:
inc     word ptr [esi+4]

loc_417AA7:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_417AEC
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_417AEC:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417B17
jbe     short loc_417B1B
cmp     ax, 7FFFh
jnz     short loc_417B17
mov     word ptr [esi+0Ah], 0
jmp     short loc_417B1B

loc_417B17:
inc     word ptr [esi+0Ah]

loc_417B1B:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_417B6A
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417B6A:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_417A77 endp




sub_417B77 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
cmp     byte ptr [eax+8], 0
jnz     short loc_417BF0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
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
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_417C73
inc     byte ptr [ecx+8]
jmp     loc_417C63

loc_417BF0:
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
cmp     ds:byte_560BE4, 4
jnz     short loc_417C5C
mov     dh, ds:byte_560BE5
cmp     dh, 1
jnz     short loc_417C39
mov     esi, ds:dword_560BEC
cmp     esi, 0Ah
jnz     short loc_417C30

loc_417C29:
mov     ebx, 2
jmp     short loc_417C53

loc_417C30:
cmp     esi, 5Ah ; 'Z'
jnz     short loc_417C5C
xor     ebx, ebx
jmp     short loc_417C53

loc_417C39:
cmp     dh, 2
jnz     short loc_417C5C
mov     edx, ds:dword_560BEC
cmp     edx, 1
jz      short loc_417C29
cmp     edx, 32h ; '2'
jnz     short loc_417C5C
mov     ebx, 1

loc_417C53:
mov     edx, ebp
mov     eax, ecx
call    sub_417C73

loc_417C5C:
mov     eax, ecx
call    sub_4DEADD

loc_417C63:
mov     edx, ebp
mov     eax, ecx
call    sub_417CA7
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_417B77 endp




sub_417C73 proc near
mov     byte ptr [edx+0Ah], 0
mov     al, [edx+0Ah]
mov     [edx+8], al
mov     byte ptr [edx+0Dh], 0
mov     al, [edx+0Dh]
mov     [edx+0Bh], al
mov     byte ptr [edx+0Ch], 0FFh
mov     al, [edx+0Ch]
mov     [edx+9], al
mov     eax, ebx
mov     ebx, ds:off_50F68F[ebx*4]
mov     [edx], ebx
mov     eax, ds:off_50F69B[eax*4]
mov     [edx+4], eax
retn
sub_417C73 endp




sub_417CA7 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+7]
sar     eax, 18h
mov     ecx, [edx]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_417CCB
jbe     short loc_417CCE
cmp     al, 7Fh
jnz     short loc_417CCB
mov     byte ptr [edx+0Ah], 0
jmp     short loc_417CCE

loc_417CCB:
inc     byte ptr [esi+0Ah]

