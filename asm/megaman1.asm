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

