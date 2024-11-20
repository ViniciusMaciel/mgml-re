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

