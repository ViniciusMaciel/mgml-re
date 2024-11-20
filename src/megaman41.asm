test    ah, 20h
jz      short loc_463EF7
mov     dx, [ecx+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     di, [ecx+58h]
cmp     di, 80h
jge     short loc_463EC1
mov     eax, edi
add     eax, 8
mov     [ecx+58h], ax
jmp     short loc_463EC1

loc_463EF7:
mov     edx, [edx+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_463F3E
mov     si, [ecx+58h]
test    si, si
jz      short loc_463F23
jle     short loc_463F18
mov     edx, esi
sub     edx, 8
mov     [ecx+58h], dx
jmp     short loc_463F23

loc_463F18:
mov     eax, esi
add     eax, 8
mov     [ecx+58h], ax

loc_463F23:
cmp     word ptr [ecx+58h], 0
jnz     short loc_463F5E
mov     edx, [ebx]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     [ebx+0Ch], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_463F3E:
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     dx, ds:word_516C24[edx*2]
mov     [ecx+58h], dx
inc     word ptr [ebx+0Ch]
and     byte ptr [ebx+0Dh], 7Fh

loc_463F5E:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463E94 endp




sub_463F63 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
test    byte ptr [edx], 60h
jz      short loc_463F8A
mov     eax, [edi+54h]
sar     eax, 10h
add     eax, 80h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
jmp     short loc_463F99

loc_463F8A:
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1800h

loc_463F99:
mov     esi, esp
call    sub_4DD510
mov     eax, [edi+1Ch]
add     [esp+2Ch+var_2C], eax
mov     eax, [edi+24h]
add     [esp+2Ch+var_24], eax
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_516C18
lea     eax, [esp+2Ch+var_1C]
call    sub_42C5B7
cmp     eax, 0FFFFFD80h
jle     short loc_463FDB
mov     eax, 0FFFFFCC0h
jmp     short loc_463FE0

loc_463FDB:
mov     eax, 0FFFFFB40h

loc_463FE0:
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jle     short loc_464021
mov     si, [ebp+12h]
cmp     si, 18h
jge     short loc_464000
mov     edx, esi
add     edx, 8
mov     [ebp+12h], dx

loc_464000:
mov     word ptr [ebp+14h], 8
mov     dx, [ebp+12h]
sub     [edi+16h], dx
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jge     short loc_464061

loc_46401B:
mov     [edi+16h], ax
jmp     short loc_464061

loc_464021:
jge     short loc_464053
mov     dx, [ebp+14h]
cmp     dx, 18h
jge     short loc_464036
mov     ebx, edx
add     ebx, 8
mov     [ebp+14h], bx

loc_464036:
mov     word ptr [ebp+12h], 8
mov     dx, [ebp+14h]
add     [edi+16h], dx
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jle     short loc_464061
jmp     short loc_46401B

loc_464053:
mov     word ptr [ebp+14h], 8
mov     ax, [ebp+14h]
mov     [ebp+12h], ax

loc_464061:
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
add     esp, 18h
jmp     loc_463E8E
sub_463F63 endp




sub_464075 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, [eax+54h]
sar     esi, 10h
lea     ebx, [eax+1Ch]
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     esi, eax
test    esi, esi
jge     short loc_4640B0
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx
neg     eax
jmp     short loc_4640C6

loc_4640B0:
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx

loc_4640C6:
cmp     eax, 50h ; 'P'
jge     short loc_4640D5
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4640D5:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_464075 endp




sub_4640DC proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_46411D
mov     ax, [edx+4]
xor     ah, ah
and     al, 3Fh
cwde
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 3
sar     eax, 0Ch
sub     eax, 400h
mov     [ecx+16h], ax
inc     word ptr [edx+4]
jmp     short loc_46412C

loc_46411D:
mov     word ptr [ecx+16h], 0FC00h
mov     word ptr [edx+4], 0
or      byte ptr [edx], 1

loc_46412C:
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
pop     ecx
pop     ebx
retn
sub_4640DC endp




sub_46413B proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     [esp+18h+var_18], offset byte_5F8364
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46416F
mov     edx, [esi]
sar     edx, 10h
mov     ebx, 28h ; '('
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     edx, 5Ah ; 'Z'
mov     [esi+4], dx
inc     byte ptr [edi+0Ah]

loc_46416F:
lea     eax, [esi+28h]
test    byte ptr [esi], 8
jz      loc_4641E6
mov     edx, edi
call    sub_4E19CA
mov     ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, edi
call    sub_4DD43B
mov     al, [esi]
test    al, 10h
jnz     short loc_4641DB
test    ebp, ebp
jz      short loc_4641A7
mov     bl, al
or      bl, 80h
mov     [esi], bl
jmp     short loc_4641DB

loc_4641A7:
cmp     word ptr [esi+4], 0
jge     short loc_4641DB
mov     ah, al
and     ah, 7Fh
mov     [esi], ah
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esp+18h+var_18]
add     edx, 14h
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_4641D8
or      byte ptr [esi], 41h
jmp     short loc_4641DB

loc_4641D8:
or      byte ptr [esi], 21h

loc_4641DB:
test    byte ptr [esi], 80h
jnz     short loc_464218
dec     word ptr [esi+4]
jmp     short loc_464218

loc_4641E6:
call    sub_4E19B4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, edi
call    sub_4DD43B
mov     bl, [esi]
and     bl, 7Fh
mov     [esi], bl
test    byte ptr [esi+2], 1
jz      short loc_464211
mov     ch, bl
or      ch, 41h
mov     [esi], ch
jmp     short loc_464218

loc_464211:
mov     cl, bl
or      cl, 21h
mov     [esi], cl

loc_464218:
add     esp, 4
jmp     loc_463E8E
sub_46413B endp




sub_464220 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_464242
mov     ax, [edx+2]
xor     ah, ah
and     al, 1Fh
add     eax, 40h ; '@'
mov     [edx+4], ax
inc     byte ptr [edi+0Ah]

loc_464242:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, edi
call    sub_4DD43B
lea     eax, [esi+28h]
test    byte ptr [esi], 8
jz      short loc_464283
mov     edx, edi
call    sub_4E19CA
mov     eax, edi
call    sub_464075
test    eax, eax
jnz     short loc_464273
cmp     word ptr [esi+4], 0
jnz     short loc_4642A3

loc_464273:
mov     cl, [esi]
and     cl, 9Eh
mov     [esi], cl
mov     ch, cl
or      ch, 1
mov     [esi], ch
jmp     short loc_4642A3

loc_464283:
call    sub_4E19B4
cmp     word ptr [esi+4], 0
jnz     short loc_4642A3
mov     bl, [esi]
and     bl, 86h
mov     [esi], bl
mov     bh, bl
or      bh, 19h
mov     [esi], bh
mov     word ptr [esi+6], 20h ; ' '

loc_4642A3:
dec     word ptr [esi+4]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464220 endp

db 8Bh, 0C0h
jpt_4642E4 dd offset loc_4642EB ; jump table for switch statement
dd offset loc_4643A8
dd offset loc_46446C
dd offset loc_464551
dd offset loc_4645E3
dd offset loc_464712



sub_4642C6 proc near

var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= byte ptr -20h
var_1E= dword ptr -1Eh
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+30h+var_18], edx
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_4642E4      ; jumptable 004642E4 default case
and     eax, 0FFh
jmp     jpt_4642E4[eax*4] ; switch jump

loc_4642EB:             ; jumptable 004642E4 case 0
call    sub_4DE13B
test    eax, eax
jz      short loc_464307
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_464307:
lea     edx, [ebp+14h]
mov     eax, 0A1h
call    sub_4D8BC3
mov     eax, [esp+30h+var_18]
or      byte ptr [eax], 4
mov     word ptr [eax+4], 78h ; 'x'
mov     word ptr [eax+16h], 8
mov     word ptr [eax+0Ah], 0
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jz      short loc_46439B
mov     eax, 1
jmp     short loc_4643A0

loc_46439B:
mov     eax, 2

loc_4643A0:
mov     [ebp+0Ah], al
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_4643A8:             ; jumptable 004642E4 case 1
mov     ax, [ebp+56h]
add     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jnz     short loc_464444
mov     eax, [esp+30h+var_18]
or      byte ptr [eax], 8
mov     word ptr [eax+4], 78h ; 'x'

loc_46443C:
inc     byte ptr [ebp+0Ah]
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_464444:
mov     eax, [esp+30h+var_18]
mov     bx, [eax+4]
test    bx, bx
jg      short loc_464460

loc_464451:
mov     word ptr [eax+4], 0
mov     byte ptr [ebp+0Ah], 4
jmp     loc_46476A

loc_464460:
mov     ecx, ebx
dec     ecx
mov     [eax+4], cx
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_46446C:             ; jumptable 004642E4 case 2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jz      short loc_464505
mov     ax, [ebp+56h]
add     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, ebp
call    sub_4DD43B
jmp     short loc_464534

loc_464505:
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_516C18
lea     eax, [esp+30h+var_20]
call    sub_42C5B7
cmp     eax, 0FFFFFD80h
jle     short loc_464534
mov     eax, [esp+30h+var_18]
mov     word ptr [eax+0Ah], 0
or      byte ptr [eax+1], 4
jmp     loc_46443C

loc_464534:
mov     eax, [esp+30h+var_18]
mov     di, [eax+4]
test    di, di
jle     loc_464451
mov     edx, edi
dec     edx
mov     [eax+4], dx
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_464551:             ; jumptable 004642E4 case 3
cmp     word ptr [edx+0Ah], 0Ah
jnz     short loc_46455E
mov     word ptr [edx+16h], 8

loc_46455E:
mov     eax, [esp+30h+var_18]
mov     dx, [eax+0Ah]
cmp     dx, 1Eh
jnz     short loc_464574
mov     word ptr [eax+16h], 0Ch
jmp     short loc_464580

loc_464574:
cmp     dx, 32h ; '2'
jnz     short loc_464580
mov     word ptr [eax+16h], 10h

loc_464580:
mov     eax, [esp+30h+var_18]
cmp     word ptr [eax+0Ah], 3Ch ; '<'
jge     short loc_46459B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B

loc_46459B:
mov     eax, [esp+30h+var_18]
mov     ax, [eax+16h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFF40h
jg      short loc_4645D4
mov     eax, [esp+30h+var_18]
test    byte ptr [eax+19h], 10h
jnz     short loc_4645D4
cmp     dword ptr [eax+1Ch], 1
jnz     def_4642E4      ; jumptable 004642E4 default case

loc_4645D4:
mov     eax, [esp+30h+var_18]
mov     word ptr [eax+4], 0
jmp     loc_46443C

loc_4645E3:             ; jumptable 004642E4 case 4
mov     ax, [edx+16h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+30h+var_18]
cmp     word ptr [eax+4], 4
jnz     loc_464686
and     byte ptr [ebp+0], 0FDh
call    sub_4DDF54
test    eax, eax
jz      short loc_46467C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 1
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
sub     dword ptr [eax+20h], 0C8h
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
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
call    sub_4DD43B

loc_46467C:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8

loc_464686:
mov     eax, [esp+30h+var_18]
test    byte ptr [eax+4], 3
jnz     short loc_4646F7
call    sub_4DE13B
mov     edx, eax
mov     esi, eax
test    eax, eax
jz      short loc_4646EA
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+14h]
add     eax, ebx
mov     [edx+48h], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+16h]
add     eax, ebx
mov     [edx+4Ah], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+18h]
add     eax, ebx
mov     [edx+4Ch], ax

loc_4646EA:
lea     edx, [esi+48h]
mov     eax, 0A1h
call    sub_4D8BC3

loc_4646F7:
mov     eax, [esp+30h+var_18]
mov     cx, [eax+4]
cmp     cx, 9
jz      loc_46443C
mov     esi, ecx
inc     esi
mov     [eax+4], si
jmp     short def_4642E4 ; jumptable 004642E4 default case

loc_464712:             ; jumptable 004642E4 case 5
mov     eax, edx
mov     dl, [edx]
or      dl, 1
mov     [eax], dl

def_4642E4:             ; jumptable 004642E4 default case
cmp     byte ptr [ebp+0Ah], 4
jnb     short loc_46476A
call    sub_4DE13B
test    eax, eax
jz      short loc_46476A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     dx, [ebp+14h]
mov     [eax+1Ch], dx
mov     dx, [ebp+16h]
mov     [eax+1Eh], dx
mov     dx, [ebp+18h]
mov     [eax+20h], dx
mov     edx, [esp+30h+var_18]
mov     dl, [edx+2]
and     dl, 0Fh
mov     [eax+9], dl

loc_46476A:
mov     eax, [esp+30h+var_18]
inc     word ptr [eax+0Ah]
add     esp, 1Ch
jmp     loc_463E8E
sub_4642C6 endp



; Attributes: thunk

sub_46477A proc near
jmp     sub_4DE2F6
sub_46477A endp




sub_46477F proc near
push    edx
mov     word ptr [eax+15Eh], 4210h
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46478E[edx*4]
pop     edx
retn
sub_46477F endp




sub_464797 proc near
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
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+56h], 0C00h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+44h], 1640h
mov     word ptr [ecx+46h], 0EF50h
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0FFC0h
mov     word ptr [ecx+4Eh], 30h ; '0'
mov     word ptr [ecx+50h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_464797 endp



; Attributes: thunk

sub_46480A proc near
jmp     sub_4DEADD
sub_46480A endp




sub_46480F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     edx, [esi+44h]
sar     edx, 10h
shl     edx, 0Ch
mov     ecx, [esi+20h]
sub     ecx, edx
mov     [esi+20h], ecx
mov     edx, ecx
sar     edx, 10h
mov     [esi+16h], dx
mov     dx, [esi+4Ch]
add     [esi+44h], dx
mov     dx, [esi+4Eh]
add     [esi+46h], dx
mov     dx, [esi+50h]
add     [esi+48h], dx
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46480F endp




sub_464862 proc near
mov     word ptr [eax+4Ch], 0FFC0h
mov     byte ptr [eax+8], 4
jmp     sub_4DEADD
sub_464862 endp




sub_464871 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ax, [eax+4Ch]
add     [esi+44h], ax
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     ax, [esi+50h]
add     [esi+48h], ax
mov     ax, [esi+44h]
neg     eax
movsx   edx, ax
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 0Ch
mov     edx, [esi+20h]
sub     edx, eax
mov     [esi+20h], edx
mov     eax, edx
sar     eax, 10h
mov     [esi+16h], ax
mov     eax, esi
call    sub_4DEADD
mov     eax, ds:dword_560C04
mov     edx, [esi+1Ch]
mov     [eax+1Ch], edx
mov     edx, [esi+20h]
add     edx, 2600000h
mov     [eax+20h], edx
mov     edx, [esi+24h]
mov     [eax+24h], edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_464871 endp




sub_4648F1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
mov     word ptr [ecx+15Eh], 4210h
call    rand_
mov     [ebp+16h], ax
movzx   esi, byte ptr [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_46493F[esi*4]
test    byte ptr [ebp+14h], 80h
jnz     short loc_464957
mov     dl, [ecx+0ACh]
cmp     dl, 1
jnz     short loc_46497F

loc_464957:
mov     al, [ecx+0ADh]
mov     bl, [ecx+0ACh]
cmp     al, bl
jz      short loc_464976
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4649C7

loc_464976:
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4649C7

loc_46497F:
mov     esi, offset word_560E0C
cmp     dl, [ecx+0ADh]
jz      short loc_46499F
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_4649A6

loc_46499F:
mov     eax, ecx
call    sub_4DEB53

loc_4649A6:
mov     ax, [ecx+54h]
mov     [esi], ax
test    ax, ax
jz      short loc_4649B6
xor     eax, eax
jmp     short loc_4649BC

loc_4649B6:
mov     eax, [ecx+56h]
sar     eax, 10h

loc_4649BC:
mov     [esi+4], ax
mov     eax, ecx
call    sub_4DF795

loc_4649C7:
mov     eax, ecx
call    sub_42C592
mov     esi, eax
mov     edx, eax
mov     dword ptr [ebp+30h], 0
mov     eax, ecx
call    sub_42DE56
mov     [ebp+2Ch], eax
test    byte ptr [ebp+2Dh], 10h
jnz     short loc_4649FD
mov     ebx, [ecx+14h]
sar     ebx, 10h
movsx   eax, si
cmp     ebx, eax
jnz     short loc_4649FD
mov     dword ptr [ebp+30h], 1

loc_4649FD:
movsx   eax, dx
cmp     eax, 0FFFFFFFFh
jnz     short loc_464A09
xor     eax, eax
jmp     short loc_464A0E

loc_464A09:
mov     eax, 1

loc_464A0E:
mov     [ebp+34h], eax
test    byte ptr [ebp+14h], 80h
jz      short loc_464A1E
mov     eax, 80h
jmp     short loc_464A20

loc_464A1E:
xor     eax, eax

loc_464A20:
push    eax
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+1Eh]
or      eax, 5880000h
push    eax
lea     eax, [ebp+38h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC
mov     dword ptr [ebp+38h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4648F1 endp




sub_464A61 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+14h], 2
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+1Eh], ax
cmp     byte ptr [ecx+0Ch], 1
jnz     short loc_464AA2
movsx   ax, byte ptr [ecx+0Dh]
shl     eax, 9
mov     [edx+26h], ax
jmp     short loc_464AA8

loc_464AA2:
mov     word ptr [edx+26h], 0

loc_464AA8:
mov     word ptr [edx+22h], 8
mov     ax, [edx+22h]
mov     [edx+20h], ax
movsx   ax, byte ptr [ecx+0Eh]
imul    eax, 0C8h
sub     eax, 6A4h
mov     [edx+28h], ax
mov     dword ptr [edx+2Ch], 0
mov     dword ptr [edx+30h], 0
mov     dword ptr [edx+34h], 0
mov     word ptr [edx+2Ah], 0FFFFh
mov     dword ptr [edx+38h], 0
mov     dword ptr [edx+3Ch], 0
lea     eax, [edx+40h]
xor     ebx, ebx
mov     edx, 0Bh
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516C98
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     ecx
pop     ebx
retn
sub_464A61 endp




sub_464B7F proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx+14h], 2
jz      short loc_464B93
mov     eax, ecx
call    sub_464C82

loc_464B93:
test    byte ptr [ebx+14h], 80h
jnz     short loc_464BB4
mov     edx, ebx
mov     eax, ecx
call    sub_464CF1
mov     edx, ebx
mov     eax, ecx
call    sub_464F5C
mov     edx, ebx
mov     eax, ecx
call    sub_46502D

loc_464BB4:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_464BC9
jbe     short loc_464BE9
cmp     al, 2
jz      short loc_464C16
jmp     loc_464C2B

loc_464BC9:
test    al, al
jnz     short loc_464C2B
test    byte ptr [ebx+14h], 4
jz      short loc_464BDA
mov     byte ptr [ecx+0ACh], 1

loc_464BDA:
test    byte ptr [ebx+15h], 1
jz      short loc_464C2B
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_464C2B

loc_464BE9:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_464BDA
test    byte ptr [ebx+14h], 4
jz      short loc_464C0D
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_464BDA

loc_464C0D:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_464BDA

loc_464C16:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_464C2B
mov     byte ptr [ecx+0ACh], 3

loc_464C2B:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_464C33[esi*4]
mov     dh, [ebx+14h]
test    dh, 1
jz      short loc_464C7E
mov     al, [ecx+9]
cmp     al, 1
jb      short loc_464C51
jbe     short loc_464C66
cmp     al, 2
jz      short loc_464C6D
jmp     short loc_464C74

loc_464C51:
test    al, al
jnz     short loc_464C74
test    dh, 80h
jz      short loc_464C60

loc_464C5A:
mov     byte ptr [ecx+9], 2
jmp     short loc_464C74

loc_464C60:
mov     byte ptr [ecx+9], 1
jmp     short loc_464C74

loc_464C66:
test    dh, 80h
jnz     short loc_464C5A
jmp     short loc_464C70

loc_464C6D:
mov     [ecx+8], al

loc_464C70:
mov     byte ptr [ecx+9], 0

loc_464C74:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx+14h], 0FEh

loc_464C7E:
pop     esi
pop     ecx
pop     ebx
retn
sub_464B7F endp




sub_464C82 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+38h]
and     eax, 0FFFFFFh
jz      short loc_464CEA
test    byte ptr [edx+3Bh], 18h
jz      short loc_464CD6
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_464CBE
mov     dh, [ecx+14h]
and     dh, 44h
mov     [ecx+14h], dh
mov     al, dh
or      al, 81h
mov     [ecx+14h], al

loc_464CBE:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_464CE3

loc_464CD6:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_464CE3:
or      byte ptr [ecx+14h], 4
pop     ecx
pop     ebx
retn

loc_464CEA:
and     byte ptr [edx+14h], 0FBh
pop     ecx
pop     ebx
retn
sub_464C82 endp




sub_464CF1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     byte ptr [eax+0ACh], 1
jnz     short loc_464D0B
mov     dl, [edx+14h]
and     dl, 0DFh
mov     [ecx+14h], dl

loc_464D0B:
mov     dh, [ecx+14h]
test    dh, 20h
jz      short loc_464D51
test    dh, 40h
jz      short loc_464D2D
test    byte ptr [ecx+1Ah], 3
jnz     short loc_464D27
mov     edx, ecx
mov     eax, ebx
call    sub_464DAA

loc_464D27:
inc     word ptr [ecx+1Ah]
jmp     short loc_464D6D

loc_464D2D:
mov     di, [ebx+54h]
cmp     di, 200h
jge     short loc_464D45
mov     eax, edi
add     eax, 20h ; ' '
mov     [ebx+54h], ax
jmp     short loc_464D6D

loc_464D45:
mov     word ptr [ebx+54h], 200h
or      byte ptr [ecx+14h], 40h
jmp     short loc_464D6D

loc_464D51:
mov     word ptr [ecx+1Ah], 0
and     byte ptr [ecx+14h], 0BFh
mov     dx, [ebx+54h]
test    dx, dx
jle     short loc_464D6D
mov     esi, edx
sub     esi, 20h ; ' '
mov     [ebx+54h], si

loc_464D6D:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_464D95
mov     al, [ecx+15h]
test    al, 2
jnz     short loc_464D95
mov     ah, al
or      ah, 2
mov     [ecx+15h], ah
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_464D95:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_464DA5
and     byte ptr [ecx+15h], 0FDh

loc_464DA5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464CF1 endp




sub_464DAA proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_464E87
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 480h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     edi, 1

loc_464E87:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_464F31
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFB80h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
jmp     short loc_464F35

loc_464F31:
test    edi, edi
jz      short loc_464F53

loc_464F35:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_464F42
lea     edx, [ecx+14h]
jmp     short loc_464F49

loc_464F42:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_464F49:
mov     eax, 0D0h
call    sub_4D8BC3

loc_464F53:
add     esp, 44h

loc_464F56:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464DAA endp




sub_464F5C proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx+14h]
test    ah, 10h
jz      short loc_464F95
mov     dx, [ecx+56h]
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     edx, [ecx+56h]
sar     edx, 10h
cmp     edx, 0FFFFFF80h
jle     short loc_464F8A
sub     word ptr [ecx+58h], 8

loc_464F8A:
mov     word ptr [ebx+2Ah], 0FFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_464F95:
test    ah, 8
jz      short loc_464FC0
mov     dx, [ecx+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     di, [ecx+58h]
cmp     di, 80h
jge     short loc_464F8A
mov     eax, edi
add     eax, 8
mov     [ecx+58h], ax
jmp     short loc_464F8A

loc_464FC0:
mov     edx, [edx+28h]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_465008
mov     si, [ecx+58h]
test    si, si
jz      short loc_464FEC
jle     short loc_464FE1
mov     edx, esi
sub     edx, 8
mov     [ecx+58h], dx
jmp     short loc_464FEC

loc_464FE1:
mov     eax, esi
add     eax, 8
mov     [ecx+58h], ax

loc_464FEC:
cmp     word ptr [ecx+58h], 0
jnz     short loc_465028
mov     edx, [ebx+14h]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     [ebx+2Ah], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_465008:
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     dx, ds:word_516CA4[edx*2]
mov     [ecx+58h], dx
inc     word ptr [ebx+2Ah]
and     byte ptr [ebx+2Bh], 7Fh

loc_465028:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464F5C endp




sub_46502D proc near
push    ebx
push    ecx
push    esi
mov     ecx, [eax+12h]
sar     ecx, 10h
sub     ecx, 1200h
test    ecx, ecx
jge     short loc_465042
neg     ecx

loc_465042:
cmp     ecx, 2C00h
jge     short loc_46506C
mov     ecx, [eax+16h]
sar     ecx, 10h
add     ecx, 600h
test    ecx, ecx
jge     short loc_46505C
neg     ecx

loc_46505C:
cmp     ecx, 2A00h
jge     short loc_46506C
mov     ebx, [edx+26h]
sar     ebx, 10h
jmp     short loc_465071

loc_46506C:
mov     ebx, 0FFFFF830h

loc_465071:
mov     esi, [eax+14h]
sar     esi, 10h
movsx   ecx, bx
cmp     esi, ecx
jle     short loc_4650B2
mov     cx, [edx+20h]
cmp     cx, 20h ; ' '
jge     short loc_465091
mov     esi, ecx
add     esi, 8
mov     [edx+20h], si

loc_465091:
mov     word ptr [edx+22h], 8
mov     dx, [edx+20h]
sub     [eax+16h], dx
mov     edx, [eax+14h]
sar     edx, 10h
movsx   ecx, bx
cmp     edx, ecx
jge     short loc_4650F2

loc_4650AC:
mov     [eax+16h], bx
jmp     short loc_4650F2

loc_4650B2:
jge     short loc_4650E4
mov     cx, [edx+22h]
cmp     cx, 20h ; ' '
jge     short loc_4650C7
mov     esi, ecx
add     esi, 8
mov     [edx+22h], si

loc_4650C7:
mov     word ptr [edx+20h], 8
mov     dx, [edx+22h]
add     [eax+16h], dx
mov     ecx, [eax+14h]
sar     ecx, 10h
movsx   edx, bx
cmp     ecx, edx
jle     short loc_4650F2
jmp     short loc_4650AC

loc_4650E4:
mov     word ptr [edx+22h], 8
mov     bx, [edx+22h]
mov     [edx+20h], bx

loc_4650F2:
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
pop     esi
pop     ecx
pop     ebx
retn
sub_46502D endp




sub_465102 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, [eax+54h]
sar     esi, 10h
lea     ebx, [eax+1Ch]
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     esi, eax
test    esi, esi
jge     short loc_46513D
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx
neg     eax
jmp     short loc_465153

loc_46513D:
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx

loc_465153:
cmp     eax, 50h ; 'P'
jge     short loc_465162
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_465162:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_465102 endp




sub_465169 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     ebp, offset byte_5F8364
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46519C
mov     edx, [edx+14h]
sar     edx, 10h
mov     ebx, 28h ; '('
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     edx, 5Ah ; 'Z'
mov     [esi+18h], dx
inc     byte ptr [edi+0Ah]

loc_46519C:
lea     eax, [esi+40h]
mov     edx, edi
call    sub_4E19CA
mov     [esp+18h+var_18], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+26h]
test    dx, dx
jl      short loc_4651CB
mov     ebx, edx
sub     ebx, 30h ; '0'
mov     [esi+26h], bx

loc_4651CB:
cmp     [esp+18h+var_18], 0
jz      short loc_4651D7
or      byte ptr [esi+14h], 20h
jmp     short loc_465213

loc_4651D7:
and     byte ptr [esi+14h], 0DFh
cmp     byte ptr [edi+0Ch], 2
jnz     short loc_465213
cmp     word ptr [esi+18h], 0
jge     short loc_465213
cmp     byte ptr [edi+0Fh], 0
jnz     short loc_465213
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_46520F
or      byte ptr [esi+14h], 11h
jmp     short loc_465213

loc_46520F:
or      byte ptr [esi+14h], 9

loc_465213:
cmp     byte ptr [edi+0Ch], 1
jnz     short loc_465231
cmp     word ptr [esi+26h], 0
jge     short loc_465231
mov     dl, [esi+14h]
and     dl, 0D6h
mov     [esi+14h], dl
mov     dh, dl
or      dh, 9
mov     [esi+14h], dh

loc_465231:
dec     word ptr [esi+18h]
add     esp, 4
jmp     loc_464F56
sub_465169 endp




sub_46523D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46526D
cmp     byte ptr [edi+0Ch], 1
jnz     short loc_465259
mov     word ptr [esi+18h], 40h ; '@'
jmp     short loc_46526A

loc_465259:
mov     ax, [esi+16h]
xor     ah, ah
and     al, 1Fh
add     eax, 40h ; '@'
mov     [esi+18h], ax

loc_46526A:
inc     byte ptr [edi+0Ah]

loc_46526D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 120h
mov     eax, edi
call    sub_4DD43B
mov     bl, [edi+0Ch]
cmp     bl, 1
jz      short loc_46528B
cmp     byte ptr [edi+0Fh], 1
jnz     short loc_4652B1

loc_46528B:
lea     eax, [esi+40h]
call    sub_4E19B4
cmp     word ptr [esi+18h], 0
jnz     short loc_4652E2
mov     byte ptr [edi+0Ch], 0
mov     ah, [esi+14h]
and     ah, 0E6h
mov     [esi+14h], ah
mov     dl, ah
or      dl, 1
mov     [esi+14h], dl
jmp     short loc_4652E2

loc_4652B1:
cmp     bl, 2
jnz     short loc_4652E2
lea     eax, [esi+40h]
mov     edx, edi
call    sub_4E19CA
mov     eax, edi
call    sub_465102
test    eax, eax
jnz     short loc_4652D2
cmp     word ptr [esi+18h], 0
jnz     short loc_4652E2

loc_4652D2:
mov     ch, [esi+14h]
and     ch, 0E6h
mov     [esi+14h], ch
mov     al, ch
or      al, 1
mov     [esi+14h], al

loc_4652E2:
dec     word ptr [esi+18h]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_46523D endp

db 8Bh, 0C0h
jpt_465318 dd offset loc_46531F ; jump table for switch statement
dd offset loc_4653AB
dd offset loc_46541D
dd offset loc_465572



sub_4652FD proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
push    eax
mov     ebp, edx
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_465318      ; jumptable 00465318 default case
and     eax, 0FFh
jmp     jpt_465318[eax*4] ; switch jump

loc_46531F:             ; jumptable 00465318 case 0
call    sub_4DE13B
test    eax, eax
jz      short loc_46533E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
mov     esi, [esp+30h+var_30]
lea     esi, [esi+14h]
movsd
movsd

loc_46533E:
mov     edx, [esp+30h+var_30]
add     edx, 14h
mov     eax, 0A1h
call    sub_4D8BC3
or      byte ptr [ebp+15h], 1
mov     word ptr [ebp+18h], 78h ; 'x'
mov     word ptr [ebp+24h], 8
mov     word ptr [ebp+1Ch], 0
mov     eax, [esp+30h+var_30]
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
lea     esi, [esp+30h+var_2C]
call    sub_4DD510
mov     eax, [esp+30h+var_30]
mov     eax, [eax+1Ch]
add     [esp+30h+var_2C], eax
mov     eax, [esp+30h+var_30]
mov     eax, [eax+24h]
add     [esp+30h+var_24], eax
lea     edx, [esp+30h+var_1C]
lea     eax, [esp+30h+var_2C]
call    sub_4DD57B

loc_4653A0:
mov     eax, [esp+30h+var_30]
inc     byte ptr [eax+0Ah]
jmp     def_465318      ; jumptable 00465318 default case

loc_4653AB:             ; jumptable 00465318 case 1
cmp     word ptr [edx+1Ch], 0Ah
jnz     short loc_4653B8
mov     word ptr [edx+24h], 8

loc_4653B8:
mov     ax, [ebp+1Ch]
cmp     ax, 1Eh
jnz     short loc_4653CA
mov     word ptr [ebp+24h], 0Ch
jmp     short loc_4653D6

loc_4653CA:
cmp     ax, 32h ; '2'
jnz     short loc_4653D6
mov     word ptr [ebp+24h], 10h

loc_4653D6:
cmp     word ptr [ebp+1Ch], 3Ch ; '<'
jge     short loc_4653EE
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, [esp+30h+var_30]
call    sub_4DD43B

loc_4653EE:
mov     ax, [ebp+24h]
mov     edx, [esp+30h+var_30]
add     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
test    byte ptr [ebp+2Dh], 10h
jnz     short loc_465415
cmp     dword ptr [ebp+30h], 1
jnz     def_465318      ; jumptable 00465318 default case

loc_465415:
mov     word ptr [ebp+18h], 0
jmp     short loc_4653A0

loc_46541D:             ; jumptable 00465318 case 2
cmp     dword ptr [edx+34h], 1
jnz     short loc_465497
test    byte ptr [ebp+18h], 3
jnz     loc_46554E
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_46548A
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+14h]
add     eax, esi
mov     [edx+48h], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+16h]
add     eax, esi
mov     [edx+4Ah], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+18h]
add     eax, esi
mov     [edx+4Ch], ax

loc_46548A:
lea     edx, [ecx+48h]
mov     eax, 0A1h
jmp     loc_465549

loc_465497:
cmp     word ptr [ebp+18h], 0
jnz     loc_46554E
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_4654FF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+14h]
add     eax, esi
mov     [edx+48h], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+16h]
add     eax, esi
mov     [edx+4Ah], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+18h]
add     eax, esi
mov     [edx+4Ch], ax

loc_4654FF:
call    sub_4DE13B
mov     [ebp+4], eax
test    eax, eax
jz      short loc_465541
mov     byte ptr [eax], 5
mov     eax, [ebp+4]
mov     byte ptr [eax+2], 10h
mov     eax, [ebp+4]
mov     byte ptr [eax+3], 5
mov     eax, [ebp+4]
mov     edx, [esp+30h+var_30]
mov     dx, [edx+14h]
mov     [eax+48h], dx
mov     eax, [ebp+4]
mov     word ptr [eax+4Ah], 0
mov     eax, [ebp+4]
mov     edx, [esp+30h+var_30]
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_465541:
lea     edx, [ecx+48h]
mov     eax, 14Dh

loc_465549:
call    sub_4D8BC3

loc_46554E:
mov     bx, [ebp+18h]
cmp     bx, 2
jnz     short loc_465560
mov     eax, [esp+30h+var_30]
and     byte ptr [eax], 0FDh
jmp     short loc_46556C

loc_465560:
cmp     bx, 7
jnz     short loc_46556C
mov     eax, [esp+30h+var_30]
inc     byte ptr [eax+0Ah]

loc_46556C:
inc     word ptr [ebp+18h]
jmp     short def_465318 ; jumptable 00465318 default case

loc_465572:             ; jumptable 00465318 case 3
or      byte ptr [edx+14h], 1

def_465318:             ; jumptable 00465318 default case
mov     eax, [esp+30h+var_30]
cmp     byte ptr [eax+0Ah], 2
jnb     short loc_4655CD
call    sub_4DE13B
test    eax, eax
jz      short loc_4655CD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     edx, [esp+30h+var_30]
mov     dx, [edx+14h]
mov     [eax+1Ch], dx
mov     edx, [esp+30h+var_30]
mov     dx, [edx+16h]
mov     [eax+1Eh], dx
mov     edx, [esp+30h+var_30]
mov     dx, [edx+18h]
mov     [eax+20h], dx
mov     dl, [ebp+16h]
and     dl, 0Fh
mov     [eax+9], dl

loc_4655CD:
inc     word ptr [ebp+1Ch]
add     esp, 1Ch
jmp     loc_464F56
sub_4652FD endp



; Attributes: thunk

sub_4655D9 proc near
jmp     sub_4DE2F6
sub_4655D9 endp




sub_4655DE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
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
mov     word ptr [ecx+15Eh], 4210h
call    rand_
mov     [ebp+6], ax
xor     ebx, ebx
mov     bl, [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_46562D[ebx*4]
mov     ah, [ecx+0ACh]
test    ah, ah
jnz     loc_46572B
mov     dx, [ecx+44h]
test    dx, dx
jnz     loc_4656CF
mov     edx, [ebp+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4656AD
mov     bx, [ecx+58h]
test    bx, bx
jz      short loc_465679
jle     short loc_465670
mov     eax, ebx
sub     eax, 8
mov     [ecx+58h], ax
jmp     short loc_465679

loc_465670:
mov     edi, ebx
add     edi, 8
mov     [ecx+58h], di

loc_465679:
cmp     word ptr [ecx+58h], 0
jnz     loc_4656FC
test    byte ptr [ecx+0Dh], 1
jnz     short loc_46569C
mov     eax, [ebp+4]
sar     eax, 10h
sar     eax, 4
and     eax, 3

loc_465696:
mov     [ebp+0Ch], ax
jmp     short loc_4656FC

loc_46569C:
mov     eax, [ebp+4]
sar     eax, 10h
sar     eax, 6
and     eax, 3
add     eax, 12h
jmp     short loc_465696

loc_4656AD:
mov     ebx, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ax, ds:word_516D1C[edx*2]
mov     [ecx+58h], ax
inc     word ptr [ebp+0Ch]
and     byte ptr [ebp+0Dh], 7Fh
jmp     short loc_4656FC

loc_4656CF:
jge     short loc_4656E3
mov     eax, [ecx+56h]
sar     eax, 10h
cmp     eax, 0FFFFFFA0h
jle     short loc_4656F6
sub     word ptr [ecx+58h], 8
jmp     short loc_4656F6

loc_4656E3:
mov     si, [ecx+58h]
cmp     si, 60h ; '`'
jge     short loc_4656F6
mov     edi, esi
add     edi, 8
mov     [ecx+58h], di

loc_4656F6:
mov     word ptr [ebp+0Ch], 0FFFFh

loc_4656FC:
mov     al, [ecx+0ADh]
mov     bh, [ecx+0ACh]
cmp     al, bh
jz      short loc_46571B
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_465722

loc_46571B:
mov     eax, ecx
call    sub_4DEB53

loc_465722:
mov     eax, ecx
call    sub_4DF7CB
jmp     short loc_465749

loc_46572B:
cmp     ah, [ecx+0ADh]
jz      short loc_465742
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_465749

loc_465742:
mov     eax, ecx
call    sub_4DEADD

loc_465749:
test    byte ptr [ebp+4], 10h
jz      short loc_465756
mov     edx, 80h
jmp     short loc_465758

loc_465756:
xor     edx, edx

loc_465758:
push    edx
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+8]
or      eax, 5880000h
push    eax
lea     eax, [ebp+28h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0DCh
call    sub_4E01FC
mov     dword ptr [ebp+28h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4655DE endp




sub_465799 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+4], 0
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+10h], 0
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 0FFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+8], ax
mov     word ptr [edx+18h], 0
mov     ax, [edx+18h]
mov     [edx+16h], ax
mov     [edx+14h], ax
mov     [edx+12h], ax
mov     word ptr [edx+1Ah], 0
mov     ax, [edx+1Ah]
mov     [edx+1Ch], ax
mov     [edx+1Eh], ax
mov     word ptr [edx+24h], 0
mov     ax, [edx+24h]
mov     [edx+22h], ax
mov     [edx+20h], ax
mov     dword ptr [edx+28h], 0
mov     dword ptr [edx+2Ch], 0
lea     eax, [edx+30h]
xor     ebx, ebx
xor     edx, edx
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516D10
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_465799 endp




sub_4658AF proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx+4], 2
jz      short loc_4658C3
mov     eax, ecx
call    sub_4665A1

loc_4658C3:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_4658DC
jbe     short loc_465906
cmp     al, 2
jz      loc_465947
jmp     loc_46595C

loc_4658DC:
test    al, al
jnz     loc_46595C
mov     dl, [ebx+4]
test    dl, 20h
jz      short loc_4658F8

loc_4658EC:
mov     byte ptr [ecx+0ACh], 2
jmp     loc_46595C

loc_4658F8:
test    dl, 4
jz      short loc_46595C
mov     byte ptr [ecx+0ACh], 1
jmp     short loc_46595C

loc_465906:
mov     dl, [ebx+4]
test    dl, 10h
jz      short loc_46591F
mov     ah, dl
and     ah, 0FBh
mov     [ebx+4], ah

loc_465916:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_46595C

loc_46591F:
test    dl, 20h
jnz     short loc_4658EC
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_46595C
test    dl, 4
jz      short loc_465916
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_46595C

loc_465947:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_46595C
mov     byte ptr [ecx+0ACh], 3

loc_46595C:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_465964[esi*4]
test    byte ptr [ebx+4], 1
jz      short loc_465996
mov     al, [ecx+9]
test    al, al
jbe     short loc_46597E
cmp     al, 1
jz      short loc_465984
jmp     short loc_46598C

loc_46597E:
mov     byte ptr [ecx+9], 1
jmp     short loc_46598C

loc_465984:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

loc_46598C:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx+4], 0FEh

loc_465996:
pop     esi
pop     ecx
pop     ebx
retn
sub_4658AF endp




sub_46599A proc near
push    ebx
push    ecx
mov     edx, [edx]
mov     cl, [eax+0Ch]
mov     bl, 1
shl     bl, cl
or      [edx+0Ch], bl
call    sub_4DE2F6
pop     ecx
pop     ebx
retn
sub_46599A endp




sub_4659B0 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
lea     eax, [edx+30h]
mov     edx, ebx
call    sub_4E19CA
movzx   esi, byte ptr [ebx+0Ah]
mov     edx, ecx
mov     eax, ebx
call    ds:funcs_4659C9[esi*4]
cmp     byte ptr [ebx+0ACh], 1
jnz     short loc_4659DD
and     byte ptr [ecx+4], 0F7h

loc_4659DD:
test    byte ptr [ecx+4], 8
jz      short loc_4659FA
test    byte ptr [ecx+0Ah], 3
jnz     short loc_4659F2
mov     edx, ecx
mov     eax, ebx
call    sub_466610

loc_4659F2:
inc     word ptr [ecx+0Ah]
pop     esi
pop     ecx
pop     ebx
retn

loc_4659FA:
mov     word ptr [ecx+0Ah], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4659B0 endp




sub_465A04 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_465A2B
jbe     loc_465AB2
cmp     al, 2
jz      loc_465B0B
jmp     loc_465B4E

loc_465A2B:
test    al, al
jnz     loc_465B4E
call    sub_4DE13B
test    eax, eax
jz      short loc_465A4F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_465A4F:
mov     eax, [esp+18h+var_18]
mov     word ptr [eax+0Eh], 0
cmp     word ptr [ebp+18h], 400h
jge     short loc_465A90
mov     word ptr [ebp+46h], 0
cmp     word ptr [ebp+14h], 0
jge     short loc_465A75
mov     word ptr [ebp+44h], 0FF00h
jmp     short loc_465A7B

loc_465A75:
mov     word ptr [ebp+44h], 100h

loc_465A7B:
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0FF80h
mov     byte ptr [ebp+0Ah], 1
jmp     loc_465B4E

loc_465A90:
mov     eax, [esp+18h+var_18]
or      byte ptr [eax+4], 20h
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 80h
mov     word ptr [ebp+48h], 0FE00h
mov     byte ptr [ebp+0Ah], 2
jmp     loc_465B4E

loc_465AB2:
mov     ecx, [ebp+42h]
sar     ecx, 10h
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
cmp     word ptr [ebp+14h], 0
jge     short loc_465AD8
mov     eax, [ebp+12h]
sar     eax, 10h
neg     eax
jmp     short loc_465ADE

loc_465AD8:
mov     eax, [ebp+12h]
sar     eax, 10h

loc_465ADE:
cmp     eax, 600h
jg      short loc_465AED
cmp     word ptr [ebp+18h], 400h
jl      short loc_465B4E

loc_465AED:
call    sub_4DE13B
test    eax, eax
jz      short loc_465A90
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
jmp     short loc_465A90

loc_465B0B:
add     word ptr [ebp+46h], 4
mov     eax, [esp+18h+var_18]
cmp     word ptr [eax+0Eh], 3Ch ; '<'
jnz     short loc_465B20
mov     word ptr [ebp+48h], 0FC00h

loc_465B20:
mov     eax, [esp+18h+var_18]
inc     word ptr [eax+0Eh]
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFF80h
jle     short loc_465B4E
mov     eax, [esp+18h+var_18]
or      byte ptr [eax+4], 1

loc_465B4E:
add     esp, 4

loc_465B51:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_465A04 endp

db 8Dh, 40h, 0
jpt_465BF5 dd offset loc_465BFC ; jump table for switch statement
dd offset loc_465C11
dd offset loc_465C22
dd offset loc_465CA3
dd offset loc_465CC4
dd offset loc_465CFE
dd offset loc_465D1C
dd offset loc_465D32
dd offset loc_465D69
dd offset loc_465DDB
dd offset loc_465E16
dd offset loc_465E55
jpt_465C4D dd offset loc_465C5C ; jump table for switch statement
dd offset loc_465C54
dd offset loc_465C54
dd offset loc_465C64
dd offset loc_465C64
jpt_465D44 dd offset loc_465D53 ; jump table for switch statement
dd offset loc_465D4B
dd offset loc_465D4B
dd offset loc_465D5E
dd offset loc_465D5E
jpt_465D91 dd offset loc_465D98 ; jump table for switch statement
dd offset loc_465DA9
dd offset loc_465DB1
dd offset loc_465DC2
dd offset loc_465DCA



sub_465BC6 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
cmp     byte ptr [eax+0Bh], 0
jbe     short loc_465BE6
cmp     byte ptr [ecx+0Bh], 6
jnb     short loc_465BE6
mov     eax, [ebx]
cmp     byte ptr [eax+0Eh], 0
jle     short loc_465BE6
mov     byte ptr [ecx+0Bh], 6

loc_465BE6:
mov     al, [ecx+0Bh]
cmp     al, 0Bh         ; switch 12 cases
ja      def_465BF5      ; jumptable 00465BF5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_465BF5[edx*4] ; switch jump

loc_465BFC:             ; jumptable 00465BF5 case 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 0
inc     byte ptr [ecx+0Bh]

loc_465C11:             ; jumptable 00465BF5 case 1
mov     eax, [ebx]
cmp     byte ptr [eax+9], 2
jnz     def_465BF5      ; jumptable 00465BF5 default case
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465C22:             ; jumptable 00465BF5 case 2
sub     word ptr [ecx+18h], 80h
mov     dx, [ebx+0Eh]
inc     edx
mov     [ebx+0Eh], dx
cmp     dx, 60h ; '`'
jnz     def_465BF5      ; jumptable 00465BF5 default case
mov     word ptr [ecx+16h], 0
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      short def_465C4D ; jumptable 00465C4D default case
and     eax, 0FFh
jmp     jpt_465C4D[eax*4] ; switch jump

loc_465C54:             ; jumptable 00465C4D cases 1,2
mov     word ptr [ecx+18h], 0A00h
jmp     short def_465C4D ; jumptable 00465C4D default case

loc_465C5C:             ; jumptable 00465C4D case 0
mov     word ptr [ecx+18h], 800h
jmp     short def_465C4D ; jumptable 00465C4D default case

loc_465C64:             ; jumptable 00465C4D cases 3,4
mov     word ptr [ecx+18h], 0C00h

def_465C4D:             ; jumptable 00465C4D default case
mov     al, [ecx+0Ch]
test    al, al
jnz     short loc_465C7F
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 10h
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465C7F:
cmp     al, 1
jz      short loc_465C87
cmp     al, 2
jnz     short loc_465C95

loc_465C87:
mov     word ptr [ebx+0Eh], 8
mov     word ptr [ebx+10h], 8
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465C95:
mov     word ptr [ebx+0Eh], 10h
mov     word ptr [ebx+10h], 0
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465CA3:             ; jumptable 00465BF5 case 3
mov     si, [ebx+0Eh]
test    si, si
jnz     short loc_465CB8
mov     dh, al
inc     dh
mov     [ecx+0Bh], dh
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CB8:
mov     edi, esi
dec     edi
mov     [ebx+0Eh], di
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CC4:             ; jumptable 00465BF5 case 4
sub     word ptr [ecx+16h], 10h
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFF800h
jg      short loc_465CE4

def_465D44:             ; jumptable 00465D44 default case
mov     word ptr [ecx+16h], 0F800h

def_465D91:             ; jumptable 00465D91 default case
inc     byte ptr [ecx+0Bh]
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CE4:
mov     ax, [ecx+46h]
cmp     ax, 2
jle     def_465BF5      ; jumptable 00465BF5 default case
mov     edx, eax
dec     edx
mov     [ecx+46h], dx
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CFE:             ; jumptable 00465BF5 case 5
mov     dx, [ebx+10h]
test    dx, dx
jnz     short loc_465D10
mov     byte ptr [ecx+0Bh], 8
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D10:
mov     esi, edx
dec     esi
mov     [ebx+10h], si
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D1C:             ; jumptable 00465BF5 case 6
mov     ebx, [ebx]
cmp     byte ptr [ebx+0Eh], 2
jnz     def_465BF5      ; jumptable 00465BF5 default case
inc     al
mov     [ecx+0Bh], al
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D32:             ; jumptable 00465BF5 case 7
mov     word ptr [ecx+16h], 0
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      short def_465D44 ; jumptable 00465D44 default case
and     eax, 0FFh
jmp     jpt_465D44[eax*4] ; switch jump

loc_465D4B:             ; jumptable 00465D44 cases 1,2
mov     word ptr [ecx+18h], 0A00h
jmp     short def_465D44 ; jumptable 00465D44 default case

loc_465D53:             ; jumptable 00465D44 case 0
mov     word ptr [ecx+18h], 800h
jmp     def_465D44      ; jumptable 00465D44 default case

loc_465D5E:             ; jumptable 00465D44 cases 3,4
mov     word ptr [ecx+18h], 0C00h
jmp     def_465D44      ; jumptable 00465D44 default case

loc_465D69:             ; jumptable 00465BF5 case 8
mov     eax, [ebx]
cmp     byte ptr [eax+9], 3
jnz     def_465BF5      ; jumptable 00465BF5 default case
mov     word ptr [ebx+0Eh], 80h
mov     word ptr [ecx+46h], 4
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      def_465D91      ; jumptable 00465D91 default case
and     eax, 0FFh
jmp     jpt_465D91[eax*4] ; switch jump

loc_465D98:             ; jumptable 00465D91 case 0
mov     word ptr [ecx+44h], 0

loc_465D9E:
mov     word ptr [ecx+48h], 0
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DA9:             ; jumptable 00465D91 case 1
mov     word ptr [ecx+44h], 4
jmp     short loc_465D9E

loc_465DB1:             ; jumptable 00465D91 case 2
mov     word ptr [ecx+44h], 0FFFCh

loc_465DB7:
mov     word ptr [ecx+48h], 4
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DC2:             ; jumptable 00465D91 case 3
mov     word ptr [ecx+44h], 8
jmp     short loc_465DB7

loc_465DCA:             ; jumptable 00465D91 case 4
mov     word ptr [ecx+44h], 0FFF8h
mov     word ptr [ecx+48h], 8
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DDB:             ; jumptable 00465BF5 case 9
mov     ax, [ebx+0Eh]
test    ax, ax
jnz     short loc_465DF5
mov     [ecx+44h], ax
mov     [ecx+48h], ax
mov     [ecx+46h], ax
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DF5:
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
dec     word ptr [ebx+0Eh]
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465E16:             ; jumptable 00465BF5 case 10
or      byte ptr [ebx+4], 2
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ebx+16h], 0
mov     ax, [ebx+16h]
mov     [ebx+14h], ax
mov     [ebx+12h], ax
mov     word ptr [ebx+0Eh], 0
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 6
mov     [ebx+10h], ax
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465E55:             ; jumptable 00465BF5 case 11
cmp     word ptr [ebx+10h], 0
jnz     short loc_465E8D
lea     edx, [ecx+14h]
mov     eax, 1A0h
call    sub_4D8BC3
mov     word ptr [ecx+48h], 0
mov     eax, [ebx+4]
sar     eax, 10h
sar     eax, 8
xor     ah, ah
and     al, 0Fh
cwde
shl     eax, 8
mov     [ebx+1Ch], ax
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Bh], 0
jmp     short loc_465E97

loc_465E8D:
mov     word ptr [ecx+48h], 0FFF8h
dec     word ptr [ebx+10h]

loc_465E97:
mov     ax, [ecx+48h]
add     [ecx+18h], ax

def_465BF5:             ; jumptable 00465BF5 default case
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
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_465BC6 endp




sub_465EC8 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_465EDE
cmp     al, 1
jz      short loc_465F26
jmp     loc_466013

loc_465EDE:
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+10h], 0
mov     word ptr [edx+1Ah], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+18h], 0
test    byte ptr [edx+6], 1
jz      short loc_465F10
mov     eax, [edx+4]
sar     eax, 10h
sar     eax, 2
and     eax, 7
jmp     short loc_465F1F

loc_465F10:
mov     eax, [edx+4]
sar     eax, 10h
sar     eax, 4
and     eax, 7
cwde
neg     eax

loc_465F1F:
mov     [edx+1Eh], ax
inc     byte ptr [ebx+0Bh]

loc_465F26:
mov     dx, [ecx+0Eh]
cmp     dx, 140h
jge     loc_465FF0
mov     eax, edx
cmp     dx, 80h
jb      short loc_465F8B
jbe     loc_465FCE
cmp     dx, 0E0h
jb      short loc_465F6E
jbe     loc_465FBE
cmp     dx, 100h
jb      loc_465FE2
jbe     short loc_465FAE
cmp     dx, 120h
jz      loc_465FDC
jmp     loc_465FE2

loc_465F6E:
cmp     dx, 0A0h
jb      loc_465FE2
jbe     loc_465FD6
cmp     dx, 0C0h
jz      short loc_465FB6
jmp     loc_465FE2

loc_465F8B:
cmp     dx, 20h ; ' '
jb      short loc_465FA3
jbe     short loc_465FB6
cmp     dx, 40h ; '@'
jb      short loc_465FE2
jbe     short loc_465FBE
cmp     dx, 60h ; '`'
jz      short loc_465FC6
jmp     short loc_465FE2

loc_465FA3:
test    dx, dx
jnz     short loc_465FE2
mov     word ptr [ecx+16h], 0FFFFh

loc_465FAE:
mov     word ptr [ecx+18h], 14h
jmp     short loc_465FE2

loc_465FB6:
mov     word ptr [ecx+16h], 0
jmp     short loc_465FE2

loc_465FBE:
mov     word ptr [ecx+18h], 0
jmp     short loc_465FE2

loc_465FC6:
mov     word ptr [ecx+18h], 0FFECh
jmp     short loc_465FE2

loc_465FCE:
mov     word ptr [ecx+16h], 1
jmp     short loc_465FE2

loc_465FD6:
or      byte ptr [ecx+4], 40h
jmp     short loc_465FE2

loc_465FDC:
mov     word ptr [ecx+16h], 0FFFFh

loc_465FE2:
mov     ax, [ecx+1Eh]
add     [ecx+1Ch], ax
inc     word ptr [ecx+0Eh]
jmp     short loc_466013

loc_465FF0:
or      byte ptr [ecx+4], 40h
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 0
cmp     byte ptr [ebx+0Eh], 2
jg      short loc_46600F
cmp     byte ptr [ebx+0Fh], 0
jz      short loc_46600F
inc     byte ptr [ebx+0Ah]

loc_46600F:
mov     byte ptr [ebx+0Bh], 0

loc_466013:
mov     ax, [ecx+16h]
mov     dx, [ebx+48h]
add     edx, eax
mov     [ebx+48h], dx
add     [ebx+18h], dx
mov     ax, [ecx+18h]
add     [ecx+1Ah], ax
mov     edx, [ecx+18h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     [ebx+14h], ax
mov     edx, [ecx+18h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
cwde
sub     eax, 600h
mov     [ebx+16h], ax
mov     edx, [ebx+2Ah]
sar     edx, 10h
mov     eax, [ebx+12h]
sar     eax, 10h
cmp     edx, eax
jge     short loc_466080
mov     eax, 1
jmp     short loc_466085

loc_466080:
mov     eax, 0FFFFFFFFh

loc_466085:
mov     [ebx+44h], ax
test    byte ptr [ecx+4], 40h
jz      short loc_4660C1
cmp     word ptr [ecx+0Eh], 0A1h
jnz     short loc_4660AB
mov     word ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0FA00h
mov     word ptr [ebx+18h], 0F800h
jmp     short loc_4660BD

loc_4660AB:
mov     word ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0FA00h
mov     word ptr [ebx+18h], 800h

loc_4660BD:
and     byte ptr [ecx+4], 0BFh

loc_4660C1:
mov     eax, [ebx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+1Ch], eax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     eax, [ebx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+24h], eax
cmp     word ptr [ebx+18h], 300h
jge     short loc_4660F3
and     byte ptr [ecx+4], 0F7h
jmp     short loc_46610A

loc_4660F3:
test    byte ptr [ecx+6], 1
jz      short loc_46610A
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFA00h
jge     short loc_46610A
or      byte ptr [ecx+4], 8

loc_46610A:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_466133
mov     ah, [ecx+4]
test    ah, 80h
jnz     short loc_466133
mov     dl, ah
or      dl, 80h
mov     [ecx+4], dl
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_466133:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_466143
and     byte ptr [ecx+4], 7Fh

loc_466143:
pop     ecx
pop     ebx
retn
sub_465EC8 endp

jpt_46616D dd offset loc_466174 ; jump table for switch statement
dd offset loc_46619B
dd offset loc_466272
dd offset loc_466286
dd offset loc_4662DD



sub_46615A proc near
push    ebx
push    ecx
push    esi
mov     bl, [eax+0Bh]
cmp     bl, 4           ; switch 5 cases
ja      def_46616D      ; jumptable 0046616D default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_46616D[ecx*4] ; switch jump

loc_466174:             ; jumptable 0046616D case 0
and     byte ptr [edx+4], 0F7h
mov     word ptr [edx+10h], 0
mov     bx, [edx+10h]
mov     [edx+0Eh], bx
mov     word ptr [eax+48h], 0
mov     bx, [eax+48h]
mov     [eax+46h], bx
mov     [eax+44h], bx
inc     byte ptr [eax+0Bh]

loc_46619B:             ; jumptable 0046616D case 1
mov     si, [edx+0Eh]
cmp     si, 40h ; '@'
jge     loc_466253
mov     ebx, esi
cmp     si, 10h
jb      short loc_4661DD
jbe     loc_466216
cmp     si, 30h ; '0'
jb      short loc_4661D2
jbe     loc_46622C
cmp     si, 34h ; '4'
jz      loc_466244
jmp     loc_46624A

loc_4661D2:
cmp     si, 20h ; ' '
jz      short loc_466224
jmp     loc_46624A

loc_4661DD:
test    si, si
jbe     short loc_4661EA
cmp     si, 0Ch
jz      short loc_46620E
jmp     short loc_46624A

loc_4661EA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4661F7
mov     ecx, 0FFFFFFFFh
jmp     short loc_4661FC

loc_4661F7:
mov     ecx, 1

loc_4661FC:
mov     [edx+12h], cx
mov     word ptr [edx+14h], 0FFFFh
mov     word ptr [edx+16h], 2
jmp     short loc_46624A

loc_46620E:
mov     word ptr [edx+16h], 0
jmp     short loc_46624A

loc_466216:
mov     word ptr [edx+12h], 0

loc_46621C:
mov     word ptr [edx+14h], 0
jmp     short loc_46624A

loc_466224:
mov     word ptr [edx+14h], 1
jmp     short loc_46624A

loc_46622C:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_466239
mov     ecx, 1
jmp     short loc_46623E

loc_466239:
mov     ecx, 0FFFFFFFFh

loc_46623E:
mov     [edx+12h], cx
jmp     short loc_46621C

loc_466244:
mov     word ptr [edx+16h], 0FFFEh

loc_46624A:
inc     word ptr [edx+0Eh]
jmp     def_46616D      ; jumptable 0046616D default case

loc_466253:
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     ecx, [edx]
dec     byte ptr [ecx+0Fh]

loc_46626A:
inc     byte ptr [eax+0Bh]
jmp     def_46616D      ; jumptable 0046616D default case

loc_466272:             ; jumptable 0046616D case 2
mov     ecx, [edx]
cmp     byte ptr [ecx+0Fh], 0
jg      def_46616D      ; jumptable 0046616D default case
mov     word ptr [edx+0Eh], 0
jmp     short loc_46626A

loc_466286:             ; jumptable 0046616D case 3
mov     bx, [edx+0Eh]
cmp     bx, 28h ; '('
jge     short loc_4662D5
cmp     bx, 8
jb      short loc_4662A0
jbe     short loc_4662B2
cmp     bx, 20h ; ' '
jz      short loc_4662BA
jmp     short loc_46624A

loc_4662A0:
test    bx, bx
jnz     short loc_46624A
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4662C0
mov     ecx, 1
jmp     short loc_4662CC

loc_4662B2:
mov     word ptr [edx+14h], 0
jmp     short loc_46624A

loc_4662BA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4662C7

loc_4662C0:
mov     ecx, 0FFFFFFFFh
jmp     short loc_4662CC

loc_4662C7:
mov     ecx, 1

loc_4662CC:
mov     [edx+14h], cx
jmp     loc_46624A

loc_4662D5:
mov     word ptr [edx+14h], 0
jmp     short loc_46626A

loc_4662DD:             ; jumptable 0046616D case 4
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0Bh], 0

def_46616D:             ; jumptable 0046616D default case
mov     bx, [edx+12h]
add     [eax+44h], bx
mov     bx, [edx+14h]
add     [eax+46h], bx
mov     dx, [edx+16h]
add     [eax+48h], dx
mov     dx, [eax+44h]
add     [eax+14h], dx
mov     dx, [eax+46h]
add     [eax+16h], dx
mov     dx, [eax+48h]
add     [eax+18h], dx
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
pop     ecx
pop     ebx
retn
sub_46615A endp




sub_46633C proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Bh]
cmp     al, 1
jb      short loc_466358
jbe     short loc_4663B9
cmp     al, 2
jz      loc_4663DC
jmp     loc_4664F0

loc_466358:
test    al, al
jnz     loc_4664F0
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
cmp     word ptr [ebx+14h], 0
jge     short loc_466391
mov     word ptr [edx+20h], 300h
mov     ax, [ebx+16h]
sub     eax, 200h
jmp     short loc_46639E

loc_466391:
mov     word ptr [edx+20h], 0FD00h
mov     ax, [ebx+16h]
add     ah, 2

loc_46639E:
mov     [edx+22h], ax
mov     ax, [ebx+18h]
mov     [ecx+24h], ax
mov     ax, [ecx+6]
xor     ah, ah
and     al, 1
mov     [ecx+1Ah], ax
inc     byte ptr [ebx+0Bh]

loc_4663B9:
cmp     word ptr [ecx+1Ah], 0
jnz     short loc_4663CE
mov     edx, ecx
mov     eax, ebx
call    sub_466831
jmp     loc_4664F0

loc_4663CE:
mov     edx, ecx
mov     eax, ebx
call    sub_46697C
jmp     loc_4664F0

loc_4663DC:
cmp     word ptr [edx+0Eh], 50h ; 'P'
jge     loc_4664D0
mov     ax, [ecx+0Eh]
cmp     ax, 20h ; ' '
jb      short loc_466421
jbe     loc_466483
cmp     ax, 40h ; '@'
jb      short loc_466412
jbe     loc_4664BD
cmp     ax, 48h ; 'H'
jz      loc_4664C6
jmp     loc_4664CA

loc_466412:
cmp     ax, 30h ; '0'
jz      loc_4664A0
jmp     loc_4664CA

loc_466421:
test    ax, ax
jbe     short loc_466431
cmp     ax, 8
jz      short loc_46647D
jmp     loc_4664CA

loc_466431:
cmp     word ptr [ebx+14h], 0
jge     short loc_466456
mov     word ptr [ecx+12h], 1
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+20h], 300h
mov     ax, [ebx+16h]
sub     eax, 200h
jmp     short loc_46646F

loc_466456:
mov     word ptr [ecx+12h], 0FFFFh
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+20h], 0FD00h
mov     ax, [ebx+16h]
add     ah, 2

loc_46646F:
mov     [ecx+22h], ax
mov     ax, [ebx+18h]
mov     [ecx+24h], ax
jmp     short loc_4664CA

loc_46647D:
or      byte ptr [ecx+4], 8
jmp     short loc_4664CA

loc_466483:
mov     word ptr [ecx+12h], 0
cmp     word ptr [ebx+14h], 0
jge     short loc_466498

loc_466490:
mov     word ptr [ecx+14h], 0FFFFh
jmp     short loc_4664CA

loc_466498:
mov     word ptr [ecx+14h], 1
jmp     short loc_4664CA

loc_4664A0:
cmp     word ptr [ebx+14h], 0
jge     short loc_4664AF
mov     word ptr [ecx+12h], 1
jmp     short loc_4664B5

loc_4664AF:
mov     word ptr [ecx+12h], 0FFFFh

loc_4664B5:
mov     word ptr [ecx+14h], 0
jmp     short loc_4664CA

loc_4664BD:
cmp     word ptr [ebx+14h], 0
jl      short loc_466490
jmp     short loc_466498

loc_4664C6:
and     byte ptr [ecx+4], 0F7h

loc_4664CA:
inc     word ptr [ecx+0Eh]
jmp     short loc_4664F0

loc_4664D0:
or      byte ptr [ecx+4], 40h
mov     word ptr [ecx+12h], 0
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+0Eh], 0
mov     byte ptr [ebx+0Bh], 0

loc_4664F0:
mov     ax, [ecx+12h]
add     [ebx+44h], ax
mov     ax, [ecx+14h]
add     [ebx+46h], ax
mov     ax, [ecx+16h]
add     [ebx+48h], ax
mov     ax, [ebx+44h]
add     [ebx+14h], ax
mov     ax, [ebx+46h]
add     [ebx+16h], ax
mov     ax, [ebx+48h]
add     [ebx+18h], ax
test    byte ptr [ecx+4], 40h
jz      short loc_466542
mov     ax, [ecx+20h]
mov     [ebx+14h], ax
mov     ax, [ecx+22h]
mov     [ebx+16h], ax
mov     ax, [ecx+24h]
mov     [ebx+18h], ax
and     byte ptr [ecx+4], 0BFh

loc_466542:
mov     edx, [ebx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+1Ch], edx
mov     edx, [ebx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+20h], edx
mov     edx, [ebx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+24h], edx
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_46658E
mov     dh, [ecx+4]
test    dh, 80h
jnz     short loc_46658E
mov     al, dh
or      al, 80h
mov     [ecx+4], al
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_46658E:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_46659E
and     byte ptr [ecx+4], 7Fh

loc_46659E:
pop     ecx
pop     ebx
retn
sub_46633C endp




sub_4665A1 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+28h]
and     eax, 0FFFFFFh
jz      short loc_466609
test    byte ptr [edx+2Bh], 18h
jz      short loc_4665F5
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_4665DD
mov     dh, [ecx+4]
and     dh, 0E4h
mov     [ecx+4], dh
mov     al, dh
or      al, 11h
mov     [ecx+4], al

loc_4665DD:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_466602

loc_4665F5:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_466602:
or      byte ptr [ecx+4], 4
pop     ecx
pop     ebx
retn

loc_466609:
