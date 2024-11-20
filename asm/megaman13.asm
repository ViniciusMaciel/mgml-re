loc_41C843:
mov     [ebp+4Ch], ax
mov     eax, [esp+28h+var_20]
mov     ax, [eax+16h]
sub     eax, 40h ; '@'
mov     dx, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     edx, [esp+28h+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, dword ptr ds:unk_564C32[edx*2]
sar     eax, 10h
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
imul    ebx, eax
sar     ebx, 0Ch
mov     edx, [ebp+4Ah]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_41D118
test    eax, eax
jz      short loc_41C8A9
mov     byte ptr [ebp+0Ah], 5
mov     eax, [esp+28h+var_1C]
or      byte ptr [eax], 20h
jmp     def_41C72B      ; jumptable 0041C72B default case

loc_41C8A9:
mov     eax, [esp+28h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_41C72B      ; jumptable 0041C72B default case
inc     byte ptr [ebp+0Ah]
or      byte ptr [eax], 0E0h
jmp     loc_41C781

loc_41C8CA:             ; jumptable 0041C72B case 3
cmp     byte ptr [ebp+0A6h], 0
jz      short loc_41C8E0
lea     edx, [ebp+14h]
mov     eax, 0FEh
call    sub_4D8BC3

loc_41C8E0:
cmp     byte ptr [ebp+0A7h], 0
jge     def_41C72B      ; jumptable 0041C72B default case
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+4], 10h
and     byte ptr [eax], 3Fh
jmp     def_41C72B      ; jumptable 0041C72B default case

loc_41C909:             ; jumptable 0041C72B case 4
mov     eax, [esp+28h+var_1C]
test    byte ptr [eax+1], 4
jz      short loc_41C91F
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, offset unk_510654
jmp     short loc_41C929

loc_41C91F:
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, (offset dword_5F8376+2)

loc_41C929:
movsd
movsd
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_1C]
add     edx, 50h ; 'P'
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     eax, ebp
call    sub_42C592
sub     eax, 400h
mov     dx, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+28h+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+28h+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_41C72B ; jumptable 0041C72B default case
mov     byte ptr [ebp+0Dh], 6
jmp     short loc_41C9BB

loc_41C9AA:             ; jumptable 0041C72B case 5
cmp     byte ptr [ebp+0A7h], 0
jge     short def_41C72B ; jumptable 0041C72B default case
mov     byte ptr [ebp+0Dh], 5
mov     eax, [esp+28h+var_1C]

loc_41C9BB:
or      byte ptr [eax], 1
mov     word ptr [eax+0Ch], 1Eh

def_41C72B:             ; jumptable 0041C72B default case
add     esp, 10h
jmp     def_41CA01      ; jumptable 0041CA01 default case
sub_41C6FF endp

db 8Dh, 40h, 0
jpt_41CA01 dd offset loc_41CA08 ; jump table for switch statement
dd offset loc_41CA30
dd offset loc_41CACA
dd offset loc_41CAE3



sub_41C9DF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+550h]
mov     ecx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_41CA01      ; jumptable 0041CA01 default case
xor     edx, edx
mov     dl, al
jmp     jpt_41CA01[edx*4] ; switch jump

loc_41CA08:             ; jumptable 0041CA01 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 4
or      byte ptr [esi], 20h
inc     word ptr [esi+88h]
lea     edx, [ebp+14h]
mov     eax, 141h
call    sub_4D8BC3
jmp     def_41CA01      ; jumptable 0041CA01 default case

loc_41CA30:             ; jumptable 0041CA01 case 1
cmp     byte ptr [ebp+0A6h], 0
jz      short loc_41CA46
lea     edx, [ebp+14h]
mov     eax, 154h
call    sub_4D8BC3

loc_41CA46:
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     eax, [ebp+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jge     short loc_41CA73
cwde
neg     eax
jmp     short loc_41CA74

loc_41CA73:
cwde

loc_41CA74:
cmp     eax, 40h ; '@'
jge     def_41CA01      ; jumptable 0041CA01 default case
cmp     byte ptr [ebp+0A7h], 0
jge     def_41CA01      ; jumptable 0041CA01 default case
call    sub_4DDF54
test    eax, eax
jz      short loc_41CABB
mov     [esi+84h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Eh ; '.'
mov     byte ptr [eax+4], 0
lea     edi, [eax+14h]
lea     esi, [ebp+198h]
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     byte ptr [eax+0Ch], 0

loc_41CABB:
mov     byte ptr [ebp+0ACh], 5

loc_41CAC2:
inc     byte ptr [ebp+0Ah]
jmp     def_41CA01      ; jumptable 0041CA01 default case

loc_41CACA:             ; jumptable 0041CA01 case 2
mov     eax, [esi+84h]
cmp     byte ptr [eax+0Ch], 0
jz      def_41CA01      ; jumptable 0041CA01 default case
mov     byte ptr [ebp+0ACh], 6
jmp     short loc_41CAC2

loc_41CAE3:             ; jumptable 0041CA01 case 3
cmp     byte ptr [ebp+0A7h], 0
jge     def_41CA01      ; jumptable 0041CA01 default case
or      byte ptr [esi], 1
mov     word ptr [esi+0Ch], 3Ch ; '<'
jmp     def_41CA01      ; jumptable 0041CA01 default case
sub_41C9DF endp

db 90h
jpt_41CB2A dd offset loc_41CB31 ; jump table for switch statement
dd offset loc_41CB4E
dd offset loc_41CB9E
dd offset loc_41CBB7



sub_41CB0F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 550h
mov     dl, [esi+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      def_41CB2A      ; jumptable 0041CB2A default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_41CB2A[ecx*4] ; switch jump

loc_41CB31:             ; jumptable 0041CB2A case 0
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 1
or      byte ptr [eax], 20h
mov     word ptr [eax+88h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41CB4E:             ; jumptable 0041CB2A case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jge     short loc_41CB80
cwde
neg     eax
jmp     short loc_41CB81

loc_41CB80:
cwde

loc_41CB81:
cmp     eax, 40h ; '@'
jge     short def_41CB2A ; jumptable 0041CB2A default case
cmp     byte ptr [esi+0A7h], 0
jge     short def_41CB2A ; jumptable 0041CB2A default case
mov     byte ptr [esi+0ACh], 2

loc_41CB96:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41CB9E:             ; jumptable 0041CB2A case 2
cmp     byte ptr [esi+0A7h], 0
jge     short def_41CB2A ; jumptable 0041CB2A default case
mov     eax, esi
call    sub_41D2D1
mov     byte ptr [esi+0ACh], 3
jmp     short loc_41CB96

loc_41CBB7:             ; jumptable 0041CB2A case 3
cmp     byte ptr [esi+0A7h], 0
jge     short def_41CB2A ; jumptable 0041CB2A default case
or      byte ptr [eax], 1
mov     word ptr [eax+0Ch], 5Ah ; 'Z'

def_41CB2A:             ; jumptable 0041CB2A default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41CB0F endp




sub_41CBCE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 550h
mov     dl, [esi+0Ah]
cmp     dl, 1
jb      short loc_41CBEE
jbe     short loc_41CC1D
cmp     dl, 2
jz      short loc_41CC43
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CBEE:
test    dl, dl
jnz     def_41CCE3      ; jumptable 0041CCE3 default case
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 0Bh
mov     word ptr [esi+4Eh], 10h
mov     word ptr [eax+4], 10h
or      byte ptr [eax], 20h
mov     dword ptr [esi+78h], 0
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CC1D:
sar     word ptr [esi+44h], 1
mov     dx, [esi+4Eh]
add     [esi+46h], dx
sar     word ptr [esi+48h], 1
add     word ptr [esi+4Eh], 10h
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_41CC43
inc     byte ptr [esi+0Ah]

loc_41CC43:
cmp     byte ptr [esi+0ACh], 0Ch
jz      short loc_41CC5C
cmp     byte ptr [esi+0A7h], 0
jge     short loc_41CC5C
mov     byte ptr [esi+0ACh], 0Ch

loc_41CC5C:
test    byte ptr [eax+79h], 10h
jz      short loc_41CC92
or      byte ptr [eax], 1
call    sub_4DE13B
test    eax, eax
jz      def_41CCE3      ; jumptable 0041CCE3 default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CC92:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     def_41CCE3      ; jumptable 0041CCE3 default case
sub_41CBCE endp

db 8Dh, 40h, 0
jpt_41CCE3 dd offset loc_41CCEA ; jump table for switch statement
dd offset loc_41CCFE
dd offset loc_41CD82
dd offset loc_41CDE8
dd offset loc_41CE65



sub_41CCC7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_41CCE3      ; jumptable 0041CCE3 default case
xor     edx, edx
mov     dl, al
jmp     jpt_41CCE3[edx*4] ; switch jump

loc_41CCEA:             ; jumptable 0041CCE3 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 8
or      byte ptr [edi], 20h
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CCFE:             ; jumptable 0041CCE3 case 1
cmp     byte ptr [esi+0A7h], 0
jge     short loc_41CD16
mov     byte ptr [esi+0ACh], 9

loc_41CD0E:
inc     byte ptr [esi+0Ah]
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CD16:
cmp     byte ptr [esi+0A6h], 0
jz      def_41CCE3      ; jumptable 0041CCE3 default case
test    byte ptr [edi+1], 8
jnz     short loc_41CD34
mov     eax, esi
call    sub_41D118
test    eax, eax
jnz     short loc_41CD44

loc_41CD34:
add     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 0Ah
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CD44:
lea     ecx, [esi+14h]
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
xor     eax, eax
mov     al, [esi+2]
mov     ecx, ds:dword_55A108
mov     ecx, [ecx+eax*4]
xor     edx, edx
mov     dl, [ecx+0Bh]

loc_41CD6E:
mov     eax, [edi+7Ch]
call    sub_4EE6C2
mov     eax, esi
call    sub_41D19D
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CD82:             ; jumptable 0041CCE3 case 2
cmp     byte ptr [esi+0A6h], 0
jz      def_41CCE3      ; jumptable 0041CCE3 default case
test    byte ptr [edi+1], 8
jnz     short loc_41CDA0
mov     eax, esi
call    sub_41D118
test    eax, eax
jnz     short loc_41CDB8

loc_41CDA0:
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [edi+4], 10h
or      byte ptr [edi], 0C0h
jmp     def_41CCE3      ; jumptable 0041CCE3 default case

loc_41CDB8:
lea     ecx, [esi+14h]
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+0Bh]
jmp     short loc_41CD6E

loc_41CDE8:             ; jumptable 0041CCE3 case 3
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_42C592
mov     edx, eax
sub     edx, 400h
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
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     def_41CCE3      ; jumptable 0041CCE3 default case
jmp     loc_41CD0E

loc_41CE65:             ; jumptable 0041CCE3 case 4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_41CCE3      ; jumptable 0041CCE3 default case
or      byte ptr [edi], 1
and     word ptr [edi], 0F73Fh
cmp     word ptr [edi+0Eh], 0
jnz     def_41CCE3      ; jumptable 0041CCE3 default case
and     byte ptr [edi+1], 0FBh
jmp     def_41CCE3      ; jumptable 0041CCE3 default case
sub_41CCC7 endp




sub_41CEB4 proc near

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
test    byte ptr [eax+1], 4
jz      short loc_41CED9
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, offset unk_510654
jmp     short loc_41CEE3

loc_41CED9:
mov     edi, eax
lea     edi, [edi+50h]
mov     esi, (offset dword_5F8376+2)

loc_41CEE3:
movsd
movsd
mov     al, [ebp+0Ah]
cmp     al, 1
jb      short loc_41CEFB
jbe     short loc_41CF1B
cmp     al, 2
jz      loc_41CF75
jmp     loc_41C6B5

loc_41CEFB:
test    al, al
jnz     loc_41C6B5
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+4Ch], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h

loc_41CF1B:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 50h ; 'P'
lea     eax, [ebp+14h]
mov     ecx, 60h ; '`'
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
cmp     ax, 60h ; '`'
jge     loc_41C6B5
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+2], 1
jz      short loc_41CF64
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41CF64
mov     byte ptr [ebp+0Dh], 3
jmp     loc_41CFFF

loc_41CF64:
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0
jmp     loc_41C6B5

loc_41CF75:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 50h ; 'P'
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41CFBB
test    byte ptr [eax+1], 4
jnz     short loc_41CFBB
cmp     dword ptr [ebp+80h], 80000h
jnb     short loc_41CFBB

loc_41CFB5:
mov     byte ptr [ebp+0Dh], 1
jmp     short loc_41CFFF

loc_41CFBB:
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+0Ch], 0
jnz     short loc_41D007
mov     bl, [eax+1]
test    bl, 4
jnz     short loc_41D007
test    bl, 1
jz      short loc_41D007
mov     ecx, [ebp+80h]
cmp     ecx, 80000h
jb      short loc_41CFB5
cmp     word ptr [eax+88h], 2
jz      short loc_41CFF8
cmp     ecx, 200000h
jnb     short loc_41CFF8
mov     byte ptr [ebp+0Dh], 2
jmp     short loc_41CFFF

loc_41CFF8:
mov     byte ptr [ebp+0Dh], 3

loc_41CFFC:
mov     eax, [esp+1Ch+var_1C]

loc_41CFFF:
or      byte ptr [eax], 1
jmp     loc_41C6B5

loc_41D007:
mov     eax, ebp
call    sub_41D118
test    eax, eax
jz      short loc_41D018
mov     byte ptr [ebp+0Dh], 5
jmp     short loc_41CFFC

loc_41D018:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+79h], 0Fh
jz      short loc_41D02E
and     byte ptr [eax+1], 0FBh
inc     word ptr [eax+80h]
jmp     short loc_41D037

loc_41D02E:
mov     word ptr [eax+80h], 0

loc_41D037:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+80h]
shl     edx, 3
add     dh, 2
mov     eax, ebp
call    sub_42C592
sub     eax, edx
mov     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
test    dx, dx
jge     short loc_41D06B
mov     eax, [ebp+4Ch]
sar     eax, 10h
neg     eax
jmp     short loc_41D071

loc_41D06B:
mov     eax, [ebp+4Ch]
sar     eax, 10h

loc_41D071:
cmp     eax, 40h ; '@'
jle     short loc_41D0AB
mov     ax, [ebp+4Eh]
test    ax, ax
jge     short loc_41D091
mov     eax, [ebp+4Ch]
sar     eax, 10h
cmp     eax, 0FFFFFFF8h
jge     short loc_41D0A4
mov     eax, 0FFFFFFF8h
jmp     short loc_41D0A4

loc_41D091:
cmp     ax, 8
jle     short loc_41D09E
mov     eax, 8
jmp     short loc_41D0A4

loc_41D09E:
mov     eax, [ebp+4Ch]
sar     eax, 10h

loc_41D0A4:
shl     eax, 4
mov     [ebp+4Eh], ax

loc_41D0AB:
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, dword ptr ds:unk_564C32[eax*2]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
mov     edx, [ebp+4Ah]
sar     edx, 10h
add     edx, 100h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
mov     bx, [ebp+4Ch]
cmp     bx, 80h
jge     loc_41C6B5
mov     ecx, ebx
add     ecx, 10h
mov     [ebp+4Ch], cx
jmp     loc_41C6B5
sub_41CEB4 endp




sub_41D118 proc near

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
cmp     word ptr [eax+82h], 0
jnz     short loc_41D196
mov     edi, eax
lea     edi, [edi+38h]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+40h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [eax+40h]
lea     esi, [eax+38h]
mov     ecx, 800h
mov     eax, esi
call    sub_4DD4C5
xor     ecx, ecx
mov     cl, [ebp+1]
mov     ebx, [ebp+78h]
lea     edx, [ebp+14h]
mov     eax, esi
call    sub_42CE61
mov     edx, [esp+1Ch+var_1C]
mov     [edx+7Ch], eax
test    eax, eax
jz      short loc_41D196
call    sub_4EE9F8
test    eax, eax
jle     short loc_41D196
mov     eax, 1
jmp     loc_41C6B5

loc_41D196:
xor     eax, eax
jmp     loc_41C6B5
sub_41D118 endp




sub_41D19D proc near
push    esi
push    edi
mov     esi, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_41D1DC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_41D1D1
lea     edi, [eax+48h]
lea     esi, [esi+1B8h]
jmp     short loc_41D1DA

loc_41D1D1:
lea     edi, [eax+48h]
lea     esi, [esi+1E0h]

loc_41D1DA:
movsd
movsd

loc_41D1DC:
xor     eax, eax
pop     edi
pop     esi
retn
sub_41D19D endp




sub_41D1E1 proc near
push    ecx
push    edx
mov     ecx, [eax+12h]
sar     ecx, 10h
sar     ecx, 9
mov     edx, ds:dword_51065A
sar     edx, 10h
sub     ecx, edx
mov     edx, [eax+16h]
sar     edx, 10h
sar     edx, 9
mov     eax, ds:dword_51065A+2
sar     eax, 10h
sub     edx, eax
mov     eax, ds:dword_51065E
sar     eax, 10h
cmp     ecx, eax
jnb     short loc_41D227
mov     eax, ds:dword_51065E+2
sar     eax, 10h
cmp     edx, eax
jnb     short loc_41D227
xor     eax, eax
pop     edx
pop     ecx
retn

loc_41D227:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_41D1E1 endp




sub_41D22F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
call    sub_4DDFD0
mov     esi, eax
test    eax, eax
jz      loc_41D2C7
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Dh
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 0
mov     al, [edx+0A4h]
mov     [esi+0Ch], al
mov     byte ptr [esi+0Fh], 1
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     ax, [edx+56h]
mov     [esi+56h], ax
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     word ptr [esi+0B0h], 0
mov     ax, [esi+0B0h]
mov     [esi+6Eh], ax
push    305880h
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

loc_41D2C7:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41D22F endp




sub_41D2D1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     ecx, [eax+550h]
xor     ebx, ebx
jmp     short loc_41D334

loc_41D2E3:
mov     ax, [esi+56h]
sub     eax, 400h

loc_41D2ED:
and     ah, 0Fh
mov     [ecx+3Ah], ax
lea     edi, [ebp+8Ch]
lea     eax, [ecx+38h]
mov     edx, edi
call    sub_4EF638
mov     dword ptr [ecx+40h], 200h
mov     dword ptr [ecx+44h], 200h
mov     dword ptr [ecx+48h], 200h
mov     dword ptr [ecx+4Ch], 0
lea     edx, [ecx+40h]
mov     eax, edi
call    sub_4EF689

loc_41D32A:
inc     ebx
cmp     ebx, 6
jge     loc_41D3C9

loc_41D334:
call    sub_4DE043
mov     ebp, eax
test    eax, eax
jz      short loc_41D32A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 3
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
movzx   edi, ds:byte_510670[ebx]
mov     dx, [esi+edi*8+190h]
mov     [eax+14h], dx
movzx   edi, ds:byte_510670[ebx]
mov     dx, [esi+edi*8+192h]
mov     [eax+16h], dx
xor     edx, edx
mov     dl, ds:byte_510670[ebx]
shl     edx, 3
lea     edi, [esi+edx]
mov     dx, [edi+194h]
mov     [eax+18h], dx
mov     dword ptr [ecx+38h], 0
mov     dword ptr [ecx+3Ch], 0
mov     ax, [esi+54h]
add     ax, ds:word_510664[ebx*2]
and     ah, 0Fh
mov     [ecx+38h], ax
cmp     ebx, 3
jge     loc_41D2E3
mov     ax, [esi+56h]
add     ah, 4
jmp     loc_41D2ED

loc_41D3C9:
xor     eax, eax
jmp     def_41CA01      ; jumptable 0041CA01 default case
sub_41D2D1 endp




sub_41D3D0 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     ebx, [eax+550h]
and     byte ptr [ebx+1], 0F6h
mov     edx, [ebx+18h]
and     edx, 0FFFFFFh
jz      loc_41D4DA
test    byte ptr [ebx+1Bh], 38h
jz      loc_41D4CD
mov     word ptr [ebx+0Ch], 0
cmp     word ptr [ebx+0Eh], 0
jnz     short loc_41D40A
and     byte ptr [ebx+1], 0FBh

loc_41D40A:
or      byte ptr [ebx+1], 9
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     edi, eax
sub     edi, edx
mov     [ecx+6Eh], di
test    di, di
jg      short loc_41D474
cmp     byte ptr [ecx+9], 2
jz      short loc_41D46E
call    sub_4B55BB
test    eax, eax
jz      short loc_41D46E
mov     word ptr [ecx+0B2h], 0
mov     ax, [ecx+0B2h]
mov     [ecx+6Eh], ax
and     byte ptr [ebx], 0F3h
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     edx, [eax+edx*4]
mov     dl, [edx+9]
and     edx, 0FFh
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
jmp     short loc_41D474

loc_41D46E:
mov     word ptr [ecx+6Eh], 1

loc_41D474:
test    byte ptr [ebx], 8
jz      short loc_41D4B5
add     [ebx+0Ah], dx
test    byte ptr [ebx+1Bh], 20h
jnz     short loc_41D4A0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A108
mov     edx, [edx+eax*4]
xor     eax, eax
mov     al, [edx+9]
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jl      short loc_41D4C2

loc_41D4A0:
lea     edx, [ecx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ebx+0Ah], 0
jmp     short loc_41D4C2

loc_41D4B5:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_41D4C2:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_41D4DA

loc_41D4CD:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_41D4DA:
mov     eax, 1
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41D3D0 endp




sub_41D4E4 proc near
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
lea     esi, [eax+640h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    sub_41D588
mov     edx, esi
mov     eax, ecx
call    sub_41D809
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41D54D
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41D554

loc_41D54D:
mov     eax, ecx
call    sub_4DEADD

loc_41D554:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41D4E4 endp

align 4
jpt_41D5A7 dd offset loc_41D5AE ; jump table for switch statement
dd offset loc_41D604
dd offset loc_41D62E
dd offset loc_41D6AE
dd offset loc_41D6F3
dd offset loc_41D74A
dd offset loc_41D770
dd offset loc_41D79F
dd offset loc_41D7CF
dd offset loc_41D7E6
dd offset def_41D5A7



sub_41D588 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     edi, eax
mov     ebp, edx
mov     [esp+2Ch+var_14], ebx
mov     dl, [eax+8]
cmp     dl, 0Ah         ; switch 11 cases
ja      def_41D5A7      ; jumptable 0041D5A7 default case, case 10
xor     eax, eax
mov     al, dl
jmp     jpt_41D5A7[eax*4] ; switch jump

loc_41D5AE:             ; jumptable 0041D5A7 case 0
or      byte ptr [edi], 2
xor     edx, edx
mov     eax, edi
call    sub_4DD0F8
mov     dword ptr [edi+158h], 2000200h
mov     dword ptr [edi+15Ch], 200h
mov     word ptr [edi+15Eh], 4210h
mov     dword ptr [edi+78h], 0
mov     byte ptr [edi+0ACh], 1
mov     byte ptr [edi+0ADh], 0FFh
xor     ebx, ebx

loc_41D5EE:
mov     edx, [esp+2Ch+var_14]

loc_41D5F2:
mov     eax, edi
call    sub_41D7F0

loc_41D5F9:
inc     byte ptr [edi+8]

def_41D5A7:             ; jumptable 0041D5A7 default case, case 10
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41D604:             ; jumptable 0041D5A7 case 1
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Eh ; '.'
mov     eax, edi
call    sub_4DD43B
cmp     dword ptr [ebp+10h], 0Ch
jle     short loc_41D61F
sub     word ptr [edi+56h], 16h

loc_41D61F:
cmp     dword ptr [ebp+10h], 20h ; ' '
jnz     short def_41D5A7 ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 2
jmp     short loc_41D5F9

loc_41D62E:             ; jumptable 0041D5A7 case 2
cmp     byte ptr [edi+0A4h], 11h
jnb     short loc_41D67A
mov     eax, [edi+54h]
sar     eax, 10h
sub     eax, 1B8h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Eh ; '.'
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     eax, [esp+2Ch+var_1C]
add     [edi+14h], ax
mov     eax, [esp+2Ch+var_18]
add     [edi+18h], ax
mov     eax, [esp+2Ch+var_2C]
add     [edi+1Ch], eax
mov     eax, [esp+2Ch+var_24]
add     [edi+24h], eax

loc_41D67A:
cmp     byte ptr [ebp+9], 4
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     ebx, [ebp+10h]
cmp     ebx, 69h ; 'i'
jnz     short loc_41D696
mov     ebx, 1
jmp     loc_41D730

loc_41D696:
cmp     ebx, 0B4h
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 3
jmp     loc_41D5F9

loc_41D6AE:             ; jumptable 0041D5A7 case 3
mov     ah, [edi+0A4h]
cmp     ah, 19h
jnz     short loc_41D6C0
mov     ebx, 2
jmp     short loc_41D6CA

loc_41D6C0:
cmp     ah, 1Ah
jnz     short loc_41D6D5
mov     ebx, 3

loc_41D6CA:
mov     edx, [esp+2Ch+var_14]
mov     eax, edi
call    sub_41D7F0

loc_41D6D5:
mov     dh, [ebp+8]
cmp     dh, 1
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
cmp     byte ptr [ebp+9], 0
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
add     [edi+8], dh
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D6F3:             ; jumptable 0041D5A7 case 4
cmp     byte ptr [ebp+9], 1
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     eax, [ebp+10h]
cmp     eax, 0B4h
jb      short loc_41D722
jbe     short loc_41D72B
cmp     eax, 10Eh
jb      def_41D5A7      ; jumptable 0041D5A7 default case, case 10
jbe     short loc_41D72B
cmp     eax, 118h
jz      short loc_41D740
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D722:
cmp     eax, 78h ; 'x'
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D72B:
mov     ebx, 4

loc_41D730:
mov     edx, [esp+2Ch+var_14]
mov     eax, edi
call    sub_41D7F0
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D740:
inc     dl
mov     [edi+8], dl
jmp     def_41D5A7      ; jumptable 0041D5A7 default case, case 10

loc_41D74A:             ; jumptable 0041D5A7 case 5
cmp     byte ptr [ebp+9], 2
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
cmp     dword ptr [ebp+10h], 1
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 6
mov     word ptr [ebx+2], 0
jmp     loc_41D5F9

loc_41D770:             ; jumptable 0041D5A7 case 6
mov     byte ptr [edi+0ADh], 0FFh
cmp     byte ptr [ebp+9], 2
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     ecx, [ebp+10h]
cmp     ecx, 23h ; '#'
jz      short loc_41D72B
cmp     ecx, 46h ; 'F'
jz      short loc_41D72B
cmp     ecx, 96h
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
jmp     loc_41D5F9

loc_41D79F:             ; jumptable 0041D5A7 case 7
cmp     byte ptr [ebp+9], 2
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
cmp     dword ptr [ebp+10h], 0E6h
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
mov     byte ptr [edi+0ACh], 4
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 5
jmp     loc_41D5F2

loc_41D7CF:             ; jumptable 0041D5A7 case 8
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_41D5A7      ; jumptable 0041D5A7 default case, case 10
jmp     loc_41D740

loc_41D7E6:             ; jumptable 0041D5A7 case 9
mov     ebx, 5
jmp     loc_41D5EE
sub_41D588 endp




sub_41D7F0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_51069D[ebx*4]
mov     [edx+4], eax
retn
sub_41D7F0 endp




sub_41D809 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     edx, [edx+4]
mov     al, [edx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_41D82E
jbe     short loc_41D831
cmp     al, 7Fh
jnz     short loc_41D82E
mov     byte ptr [esi+0Eh], 0
jmp     short loc_41D831

loc_41D82E:
inc     byte ptr [esi+0Eh]

loc_41D831:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     edx, [esi+4]
mov     al, [edx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41D873
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 8
mov     ebx, 21h ; '!'
mov     edx, 1Fh
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 0C000Bh
mov     eax, edi
call    sub_4EE044

loc_41D873:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41D809 endp




sub_41D87E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41D884[edx*4]
pop     edx
retn
sub_41D87E endp




sub_41D88D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
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
mov     word ptr [ecx+56h], 400h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
call    sub_436708
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0Ch], 0
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A108
mov     eax, [eax+edx*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 1
mov     word ptr [ebx+8], 0
mov     word ptr [ebx+0Ah], 0
mov     word ptr [ebx+0Ch], 0
lea     edi, [ebx+10h]
lea     esi, [ebx+8]
movsd
movsd
mov     ax, [ecx+56h]
add     ah, 4
mov     [ebx], ax
mov     ax, [ebx+8]
mov     [ecx+14h], ax
mov     ax, [ebx+0Ch]
sub     eax, 0E00h
mov     [ecx+18h], ax
mov     ax, [ebx+0Ah]
sub     eax, 800h
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     edx, edx

loc_41D9AF:
xor     esi, esi
mov     ds:dword_559198[edx*8], esi
mov     ds:dword_55919C[edx*8], esi
inc     edx
cmp     edx, 8
jb      short loc_41D9AF
mov     word ptr [ebx+2], 80h
mov     word ptr [ebx+4], 3Ch ; '<'
mov     word ptr [ebx+6], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
jmp     loc_41DDDD
sub_41D88D endp




sub_41D9F7 proc near
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
mov     word ptr [eax+15Eh], 4210h
call    sub_41DA88
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_41DA39[edx*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41DA61
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41DA68

loc_41DA61:
mov     eax, ecx
call    sub_4DEADD

loc_41DA68:
cmp     byte ptr [ecx+8], 2
jz      loc_41DDDD
cmp     byte ptr [ecx+9], 3
jz      loc_41DDDD
mov     eax, ecx
call    sub_41DADD
jmp     loc_41DDDD
sub_41D9F7 endp




sub_41DA88 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 3
jz      short loc_41DAD9
xor     eax, eax
jmp     short loc_41DA9D

loc_41DA97:
inc     eax
cmp     eax, 8
jge     short loc_41DAAC

loc_41DA9D:
mov     edx, ds:dword_559198[eax*8]
and     edx, 0FFFFFFh
jz      short loc_41DA97

loc_41DAAC:
test    edx, edx
jz      short loc_41DAD9
sub     [ecx+6Eh], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A0h
call    sub_4D89E4
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_41DAD9
mov     eax, ecx
call    sub_41E39B

loc_41DAD9:
pop     edx
pop     ecx
pop     ebx
retn
sub_41DA88 endp




sub_41DADD proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
xor     ebp, ebp
jmp     short loc_41DAEE

loc_41DAE8:
inc     ebp
cmp     ebp, 8
jnb     short loc_41DB5E

loc_41DAEE:
mov     eax, ebp
shl     eax, 3
xor     edx, edx
mov     ds:dword_559198[eax], edx
mov     edx, ss:(off_5106DA+1)[ebp]
sar     edx, 18h
mov     esi, [esp+1Ch+var_1C]
lea     edi, unk_5591D8[eax]
lea     esi, [esi+edx*8+190h]
movsd
movsd
lea     edx, [ebp+ebp+0]
mov     esi, offset unk_5591D8
add     esi, eax
add     eax, offset dword_559198
test    ebp, ebp
jnz     short loc_41DB55
push    ebp
push    ebp

loc_41DB2C:
push    4080000h
push    eax
xor     eax, eax
mov     ecx, [esp+2Ch+var_1C]
mov     al, [ecx+1]
push    eax
mov     edx, ds:dword_5106E4[edx]
sar     edx, 10h
mov     ecx, 8000h
xor     ebx, ebx
mov     eax, esi
call    sub_4E01FC
jmp     short loc_41DAE8

loc_41DB55:
push    80h
push    0
jmp     short loc_41DB2C

loc_41DB5E:
add     esp, 4
jmp     loc_41DDDC
sub_41DADD endp




sub_41DB66 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ax, [eax+56h]
sub     eax, 0Ch
and     ah, 0Fh
mov     [ecx+56h], ax
sub     eax, 400h
and     ah, 0Fh
mov     [esi], ax
cwde
call    sub_4EF008
shl     eax, 9
mov     edx, eax
shl     eax, 3
sub     eax, edx
sar     eax, 0Ch
mov     [ecx+14h], ax
mov     ax, [esi+0Ah]
sub     eax, 800h
mov     [ecx+16h], ax
movsx   eax, word ptr [esi]
call    sub_4EF003
shl     eax, 9
mov     edx, eax
shl     eax, 3
sub     eax, edx
sar     eax, 0Ch
mov     [ecx+18h], ax
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
mov     dx, [esi+4]
test    dx, dx
jnz     short loc_41DC2B
cmp     word ptr [esi+6], 2
jnz     short loc_41DC0A
mov     word ptr [esi+4], 0C8h
mov     [esi+6], dx
jmp     short loc_41DC14

loc_41DC0A:
mov     word ptr [esi+4], 0Fh
inc     word ptr [esi+6]

loc_41DC14:
mov     eax, ecx
call    sub_41E8A6
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A3h
call    sub_4D89E4
jmp     short loc_41DC32

loc_41DC2B:
mov     ebx, edx
dec     ebx
mov     [esi+4], bx

loc_41DC32:
mov     dx, [esi+2]
test    dx, dx
jnz     short loc_41DC65
call    rand_
test    al, 3Fh
jnz     short loc_41DC6C
call    rand_
test    al, 1
jz      short loc_41DC59
mov     eax, ecx
call    sub_41E305
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DC59:
mov     eax, ecx
call    sub_41E2C6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DC65:
mov     ebx, edx
dec     ebx
mov     [esi+2], bx

loc_41DC6C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41DB66 endp




sub_41DC71 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41DC77[edx*4]
pop     edx
retn
sub_41DC71 endp




sub_41DC80 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
lea     ebp, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [ebp+2]
test    dx, dx
jnz     loc_41DD3D
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0ACh], 1
lea     edi, [ebp+1Ah]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     ax, [eax+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [ebp+22h], ax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_20], eax
push    0
push    0
mov     ebx, [ebp+20h]
sar     ebx, 10h
lea     eax, [ebp+1Ah]
mov     ecx, 7000h
lea     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ax, [ebp+22h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+22h], ax
mov     word ptr [ebp+2], 40h ; '@'
mov     word ptr [ebp+4], 0
mov     eax, [esp+2Ch+var_2C]
inc     byte ptr [eax+0Ah]
jmp     short loc_41DD44

loc_41DD3D:
mov     ebx, edx
dec     ebx
mov     [ebp+2], bx

loc_41DD44:
add     esp, 14h
jmp     loc_41DDDC
sub_41DC80 endp




sub_41DD4C proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+34h+var_1C], eax
cmp     byte ptr [ebp+0ACh], 1
jnz     short loc_41DD79
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DD79
mov     byte ptr [ebp+0ACh], 3

loc_41DD79:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 14h
jnz     short loc_41DD8D
mov     byte ptr [ebp+0ACh], 2
jmp     short loc_41DD96

loc_41DD8D:
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_41DDA6

loc_41DD96:
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DDA6
mov     byte ptr [ebp+0ACh], 0

loc_41DDA6:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 0
jnz     short loc_41DDE3
mov     byte ptr [ebp+0ACh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A4h
call    sub_4D89E4
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+2], 58h ; 'X'
mov     word ptr [eax+4], 0

loc_41DDD6:
inc     byte ptr [ebp+0Ah]

loc_41DDD9:
add     esp, 1Ch

loc_41DDDC:
pop     ebp

loc_41DDDD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41DDE3:
lea     edi, [esp+34h+var_24]
mov     esi, eax
lea     esi, [esi+1Ah]
movsd
movsd
mov     eax, [esp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [esp+34h+var_24]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_30], eax
mov     eax, [esp+34h+var_24+2]
sar     eax, 10h
shl     eax, 10h
mov     [esp+34h+var_2C], eax
push    0
push    0
mov     ebx, [esp+3Ch+var_1C]
mov     ebx, [ebx+20h]
sar     ebx, 10h
mov     ecx, 7000h
lea     edx, [esp+3Ch+var_34]
lea     eax, [esp+3Ch+var_24]
call    sub_4DD4C5
mov     eax, [esp+34h+var_1C]
mov     ax, [eax+22h]
sub     eax, 20h ; ' '
and     ah, 0Fh
mov     edx, [esp+34h+var_1C]
mov     [edx+22h], ax
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
mov     ax, [ebp+56h]
sub     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
dec     word ptr [edx+2]
jmp     loc_41DDD9
sub_41DD4C endp




sub_41DE76 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
lea     ebp, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     word ptr [ebp+2], 0
jnz     loc_41DF2E
mov     eax, [esp+2Ch+var_2C]
mov     byte ptr [eax+0ACh], 1
lea     edi, [ebp+1Ah]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     ax, [eax+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [ebp+22h], ax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [esp+2Ch+var_20], eax
push    0
push    0
mov     ebx, [ebp+20h]
sar     ebx, 10h
lea     eax, [ebp+1Ah]
mov     ecx, 7000h
lea     edx, [esp+34h+var_28]
call    sub_4DD4C5
mov     ax, [ebp+22h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+22h], ax
mov     word ptr [ebp+2], 40h ; '@'
mov     eax, [esp+2Ch+var_2C]
inc     byte ptr [eax+0Ah]
jmp     loc_41DD44

loc_41DF2E:
mov     eax, [esp+2Ch+var_2C]
call    sub_41E551
dec     word ptr [ebp+2]
jmp     loc_41DD44
sub_41DE76 endp




sub_41DF3F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 640h
mov     [esp+34h+var_1C], eax
cmp     byte ptr [ebp+0ACh], 1
jnz     short loc_41DF6C
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DF6C
mov     byte ptr [ebp+0ACh], 3

loc_41DF6C:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 14h
jnz     short loc_41DF80
mov     byte ptr [ebp+0ACh], 2
jmp     short loc_41DF89

loc_41DF80:
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_41DF99

loc_41DF89:
cmp     byte ptr [ebp+0A7h], 0
jz      short loc_41DF99
mov     byte ptr [ebp+0ACh], 0

loc_41DF99:
mov     eax, [esp+34h+var_1C]
cmp     word ptr [eax+2], 0
jnz     loc_41DDE3
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [eax+2], 18h
jmp     loc_41DDD6
sub_41DF3F endp




sub_41DFBA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [edi+2]
test    dx, dx
jnz     short loc_41DFF3
mov     eax, esi
call    sub_41E268
jmp     loc_41DDDD

loc_41DFF3:
mov     ebx, edx
dec     ebx
mov     [edi+2], bx
jmp     loc_41DDDD
sub_41DFBA endp




sub_41DFFF proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_41E005[edx*4]
pop     edx
retn
sub_41DFFF endp




sub_41E00E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     byte ptr [esi+0A7h], 0
jz      loc_41DDDD
mov     byte ptr [esi+0ACh], 4
mov     word ptr [edi+2], 22h ; '"'
inc     byte ptr [esi+0Ah]
jmp     loc_41DDDD
sub_41E00E endp




sub_41E054 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
cmp     word ptr [edi+2], 0
jnz     short loc_41E07C
mov     byte ptr [eax+0ACh], 7
mov     ah, [eax+0Ah]
inc     ah
mov     [esi+0Ah], ah
jmp     loc_41DDDD

loc_41E07C:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
cmp     word ptr [edi+2], 2
jle     short loc_41E0A8
mov     dx, [esi+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [esi+56h], dx

loc_41E0A8:
dec     word ptr [edi+2]
jmp     loc_41DDDD
sub_41E054 endp




sub_41E0B1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 640h
cmp     byte ptr [ecx+0A7h], 0
jz      short loc_41E0ED
mov     word ptr [ecx+44h], 400h
mov     word ptr [ecx+46h], 900h
mov     word ptr [ecx+48h], 0
mov     word ptr [eax+2], 20h ; ' '
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A7h
call    sub_4D89E4
inc     byte ptr [ecx+0Ah]

loc_41E0ED:
pop     edx
pop     ecx
pop     ebx
retn
sub_41E0B1 endp




sub_41E0F1 proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+640h]
mov     dx, [esi+2]
test    dx, dx
jnz     short loc_41E116
mov     word ptr [esi+2], 5Ah ; 'Z'
mov     [esi+4], dx
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E116:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
dec     word ptr [esi+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E0F1 endp




sub_41E136 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     bx, [edx+2]
test    bx, bx
jnz     short loc_41E171
mov     word ptr [eax+44h], 500h
mov     word ptr [eax+46h], 180h
mov     word ptr [edx+2], 40h ; '@'
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A8h
call    sub_4D89E4
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_41E171:
mov     eax, ebx
xor     ah, bh
and     al, 0Fh
cwde
movsx   ax, ds:byte_510726[eax]
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     eax, ecx
call    sub_41E71F
dec     word ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn
sub_41E136 endp




sub_41E19F proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+640h]
cmp     word ptr [esi+2], 0
jnz     short loc_41E1BF
mov     byte ptr [eax+0ACh], 8
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E1BF:
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
dec     word ptr [esi+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E19F endp




sub_41E1DF proc near
push    edx
mov     dx, [eax+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [eax+56h], dx
cmp     byte ptr [eax+0A7h], 0
jz      short loc_41E1FC
call    sub_41E268

loc_41E1FC:
pop     edx
retn
sub_41E1DF endp




sub_41E1FE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+640h]
call    sub_41E45D
cmp     byte ptr [edx+0Ah], 0
jnz     short loc_41E230
cmp     ds:byte_77EAB8, 0
jnz     short loc_41E230
mov     eax, 10h
call    sub_4D9040
call    sub_436710
inc     byte ptr [edx+0Ah]

loc_41E230:
mov     bx, [ecx+2]
test    bx, bx
jnz     short loc_41E25C
cmp     byte ptr [edx+0Ah], 0
jz      short loc_41E263
mov     ch, ds:byte_77EAB8
test    ch, ch
jnz     short loc_41E263
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+8], 2
mov     [edx+9], ch
mov     [edx+0Ah], ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E25C:
mov     esi, ebx
dec     esi
mov     [ecx+2], si

loc_41E263:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E1FE endp




sub_41E268 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+640h]
lea     edi, [eax+14h]
lea     esi, [edx+10h]
movsd
movsd
mov     bx, [edx+18h]
mov     [eax+56h], bx
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
mov     word ptr [edx+2], 80h
mov     word ptr [edx+4], 1Eh
mov     word ptr [edx+6], 0
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
jmp     loc_41DDDD
sub_41E268 endp




sub_41E2C6 proc near
push    ebx
push    edx
push    esi
push    edi
lea     edx, [eax+640h]
lea     edi, [edx+10h]
lea     esi, [eax+14h]
movsd
movsd
mov     bx, [eax+56h]
mov     [edx+18h], bx
mov     word ptr [edx+2], 40h ; '@'
mov     word ptr [eax+44h], 600h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_41E2C6 endp




sub_41E305 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [edx+18h], ax
sub     eax, 400h
and     ah, 0Fh
mov     [edx], ax
cwde
call    sub_4EF008
shl     eax, 9
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
sar     eax, 0Ch
mov     [edx+10h], ax
mov     ax, [edx+0Ah]
sub     eax, 800h
mov     [edx+12h], ax
movsx   eax, word ptr [edx]
call    sub_4EF003
shl     eax, 9
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
sar     eax, 0Ch
mov     [edx+14h], ax
mov     byte ptr [ecx+0ACh], 5
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A6h
call    sub_4D89E4
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0FA00h
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+9], 2
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_41E305 endp




sub_41E39B proc near

var_28= dword ptr -28h
var_24= byte ptr -24h
var_22= word ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
add     eax, 640h
mov     [esp+28h+var_1C], eax
xor     ebx, ebx
mov     edx, 9
mov     eax, [esp+28h+var_28]
call    sub_4DE96B
mov     eax, [esp+28h+var_1C]
mov     word ptr [eax+2], 96h
mov     word ptr [eax+4], 0
mov     eax, [esp+28h+var_28]
mov     word ptr [eax+44h], 280h
mov     word ptr [eax+46h], 1
mov     eax, 11h
call    sub_4D8E2B
mov     eax, 13h
call    sub_4D8E2B
xor     ebp, ebp

loc_41E3F2:
movzx   esi, ds:byte_5106B8[ebp*2]
shl     esi, 3
add     esi, [esp+28h+var_28]
lea     edi, [esp+28h+var_24]
lea     esi, [esi+190h]
movsd
movsd
mov     al, ds:byte_5106B9[ebp*2]
xor     ah, ah
sub     [esp+28h+var_22], ax
push    0
push    0FFFFFFF8h
mov     ecx, 10h
mov     ebx, 1
mov     edx, 80h
lea     eax, [esp+30h+var_24]
call    sub_43954B
mov     esi, eax
mov     eax, ebp
shl     eax, 2
add     eax, [esp+28h+var_1C]
mov     [eax+24h], esi
inc     ebp
cmp     ebp, 4
jb      short loc_41E3F2
mov     eax, [esp+28h+var_28]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
add     esp, 10h
jmp     loc_41DDDC
sub_41E39B endp




sub_41E45D proc near

var_22= dword ptr -22h
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
mov     [esp+24h+var_1C], eax
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+24h+var_1C]
mov     dx, [eax+4]
test    dx, dx
jnz     short loc_41E4EE
call    rand_
and     eax, 7
movsx   ax, ds:byte_510736[eax]
mov     edx, [esp+24h+var_1C]
mov     [edx+4], ax
xor     edx, edx
jmp     short loc_41E4B9

loc_41E4B3:
inc     edx
cmp     edx, 3
jnb     short loc_41E4F5

loc_41E4B9:
call    rand_
and     eax, 0Fh
movzx   esi, ds:byte_51073E[eax]
call    sub_4DE13B
test    eax, eax
jz      short loc_41E4B3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
lea     edi, [eax+48h]
lea     esi, [ebp+esi*8+190h]
movsd
movsd
mov     byte ptr [eax+0Dh], 2
jmp     short loc_41E4B3

loc_41E4EE:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx

loc_41E4F5:
xor     edx, edx
mov     ebx, [esp+24h+var_1C]

loc_41E4FB:
movzx   esi, ds:byte_5106B8[edx*2]
mov     edi, esp
lea     esi, [ebp+esi*8+190h]
movsd
movsd
mov     al, ds:byte_5106B9[edx*2]
xor     ah, ah
sub     word ptr [esp+24h+var_22], ax
mov     ecx, edx
shl     ecx, 2
add     ecx, ebx
mov     esi, [ecx+24h]
mov     eax, [esp]
mov     [esi+1Ch], ax
mov     esi, [ecx+24h]
mov     eax, [esp+24h+var_22]
mov     [esi+1Eh], ax
mov     ecx, [ecx+24h]
mov     eax, [esp+24h+var_22+2]
mov     [ecx+20h], ax
inc     edx
cmp     edx, 4
jb      short loc_41E4FB
add     esp, 0Ch
jmp     loc_41DDDC
sub_41E45D endp




sub_41E551 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 640h
cmp     dword ptr [ecx+80h], 0F42400h
ja      loc_41E5E3
mov     dx, [eax+4]
test    dx, dx
jnz     short loc_41E5DC
mov     word ptr [eax+4], 2
xor     esi, esi
cmp     dword ptr [ecx+80h], offset unk_53EC60
ja      short loc_41E58E
mov     esi, 1

loc_41E58E:
cmp     dword ptr [ecx+80h], offset unk_557300
ja      short loc_41E59F
mov     esi, 2

loc_41E59F:
cmp     dword ptr [ecx+80h], 225510h
ja      short loc_41E5B0
mov     esi, 3

loc_41E5B0:
mov     ebx, esi
xor     edx, edx
mov     eax, ecx
call    sub_41E5E8
mov     ebx, esi
mov     edx, 1
mov     eax, ecx
call    sub_41E5E8
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A5h
call    sub_4D89E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41E5DC:
mov     ebx, edx
dec     ebx
mov     [eax+4], bx

loc_41E5E3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E551 endp




sub_41E5E8 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
lea     eax, [ebx+ebx]
test    edx, edx
jnz     short loc_41E60F
mov     eax, ds:off_51074E[eax]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
sub     edx, eax
mov     eax, edx
jmp     short loc_41E620

loc_41E60F:
mov     eax, ds:off_51074E[eax]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
add     eax, edx

loc_41E620:
and     eax, 0FFFh
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+28h+var_18]
mov     eax, esp
call    sub_4DD57B
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_41E717
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+190h]
mov     [esi+14h], ax
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+192h]
sub     eax, 8
mov     [esi+16h], ax
xor     eax, eax
mov     al, byte ptr ss:off_51074E[ebp]
mov     ax, [edi+eax*8+194h]
mov     [esi+18h], ax
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
mov     eax, ds:(dword_510756+2)[ebp*4]
sar     eax, 10h
push    eax
push    0
mov     ecx, ds:dword_510756[ebp*4]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, [esp+28h+var_18]
shl     eax, 8
mov     [esi+44h], ax
mov     word ptr [esi+46h], 3000h
mov     eax, [esp+28h+var_14]
shl     eax, 8
mov     [esi+48h], ax
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0

loc_41E717:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_41E5E8 endp




sub_41E71F proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
lea     ecx, [eax+640h]
mov     dx, [ecx+4]
test    dx, dx
jnz     short loc_41E774
mov     word ptr [ecx+4], 2
mov     edx, [ecx+4]
sar     edx, 10h
call    sub_41E77F
mov     edx, [ecx+4]
sar     edx, 10h
add     edx, 4
mov     eax, ebx
call    sub_41E77F
mov     dx, [ecx+6]
inc     edx
xor     dh, dh
and     dl, 3
mov     [ecx+6], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 1A9h
call    sub_4D89E4
pop     edx
pop     ecx
pop     ebx
retn

loc_41E774:
mov     ebx, edx
dec     ebx
mov     [ecx+4], bx
pop     edx
pop     ecx
pop     ebx
retn
sub_41E71F endp




sub_41E77F proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
call    rand_
and     eax, 7
mov     edx, ds:dword_510786[eax*2]
sar     edx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
add     eax, edx
and     eax, 0FFFh
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
call    sub_4DE043
mov     esi, eax
test    eax, eax
jz      loc_41E89D
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
mov     ax, [edi+1B8h]
mov     [esi+14h], ax
mov     ecx, ebp
and     ecx, 3
mov     ax, [edi+1BAh]
mov     dx, ds:word_510780[ecx*2]
sub     eax, edx
mov     [esi+16h], ax
mov     ax, [edi+1BCh]
mov     [esi+18h], ax
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
mov     eax, ebp
mov     edx, ds:(dword_51075E+2)[eax*4]
sar     edx, 10h
push    edx
push    0
mov     ecx, ds:dword_51075E[eax*4]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, [esp+2Ch+var_1C]
shl     eax, 8
mov     [esi+44h], ax
call    rand_
and     eax, 7
mov     ax, ds:word_510798[eax*2]
mov     [esi+46h], ax
mov     eax, [esp+2Ch+var_18]
shl     eax, 8
mov     [esi+48h], ax
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0

loc_41E89D:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41E77F endp




sub_41E8A6 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      loc_41E971
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 6
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     ax, [ecx+1E0h]
mov     [edx+14h], ax
mov     ax, [ecx+1E2h]
sub     eax, 100h
mov     [edx+16h], ax
mov     ax, [ecx+1E4h]
mov     [edx+18h], ax
mov     eax, [edx+12h]
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
xor     ebx, ebx
mov     [esp+24h+var_10], bx
call    rand_
and     ah, 3
mov     [esp+24h+var_14], ax
mov     ecx, eax
neg     ecx
mov     [esp+24h+var_14], cx
call    rand_
and     ah, 0Fh
mov     [esp+24h+var_12], ax
lea     ecx, [edx+8Ch]  ; int
mov     edx, ecx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689

loc_41E971:
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_41E8A6 endp




sub_41E978 proc near
push    edx
mov     edx, eax
call    sub_41E45D
mov     eax, edx
call    sub_4DEADD
pop     edx
retn
sub_41E978 endp




sub_41E989 proc near
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
movzx   esi, byte ptr [eax+8]
lea     ebx, [eax+550h]
mov     edx, offset dword_560BDC
call    ds:funcs_41E9C5[esi*4]
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41E9F1
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_41E9F8

loc_41E9F1:
mov     eax, ecx
call    sub_4DEADD

loc_41E9F8:
lea     edx, [ecx+550h]
mov     eax, ecx
call    sub_41EB97
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41E989 endp




sub_41EA0B proc near
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
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+44h], 300h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
add     ebx, 4
mov     edx, 2
mov     eax, ecx
call    sub_40769E
mov     [esi], eax
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_41EA0B endp




sub_41EA88 proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     dl, [esi+9]
cmp     dl, 1
jb      short loc_41EAA0
jbe     short loc_41EAD5
cmp     dl, 2
jz      short loc_41EADE
pop     esi
pop     ecx
retn

loc_41EAA0:
test    dl, dl
jnz     short loc_41EAEB
cmp     byte ptr [eax+9], 0
jnz     short loc_41EAC3
cmp     dword ptr [eax+10h], 3Ch ; '<'
jl      short loc_41EAC3
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_41EAC3:
cmp     byte ptr [eax+9], 1
jnz     short loc_41EAEB
cmp     dword ptr [eax+10h], 1
jnz     short loc_41EAEB

loc_41EACF:
inc     byte ptr [esi+9]
pop     esi
pop     ecx
retn

loc_41EAD5:
mov     eax, [ebx]
call    sub_4DE336
jmp     short loc_41EACF

loc_41EADE:
cmp     byte ptr [eax+9], 5
jnz     short loc_41EAEB
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

loc_41EAEB:
pop     esi
pop     ecx
retn
sub_41EA88 endp

db 8Dh, 40h, 0
jpt_41EB14 dd offset loc_41EB1B ; jump table for switch statement
dd offset loc_41EB35
dd offset loc_41EB57
dd offset loc_41EB6B



sub_41EB01 proc near
push    ecx
mov     bl, [eax+9]
cmp     bl, 3           ; switch 4 cases
ja      def_41EB14      ; jumptable 0041EB14 default case
and     ebx, 0FFh
jmp     jpt_41EB14[ebx*4] ; switch jump

loc_41EB1B:             ; jumptable 0041EB14 case 0
mov     ch, [eax+0Ch]
cmp     ch, 20h ; ' '
jge     short loc_41EB2C
mov     dh, ch
inc     dh
mov     [eax+0Ch], dh
jmp     short loc_41EB82

loc_41EB2C:
mov     byte ptr [eax+0Ch], 0

loc_41EB30:
inc     byte ptr [eax+9]
jmp     short loc_41EB82

loc_41EB35:             ; jumptable 0041EB14 case 1
cmp     byte ptr [eax+0Ch], 10h
jle     short loc_41EB42
mov     byte ptr [eax+0ACh], 5

loc_41EB42:
cmp     byte ptr [eax+0Ch], 40h ; '@'
jge     short loc_41EB30
sub     word ptr [eax+44h], 0Ch
sub     word ptr [eax+46h], 0Ch
inc     byte ptr [eax+0Ch]
jmp     short loc_41EB82

loc_41EB57:             ; jumptable 0041EB14 case 2
mov     byte ptr [eax+0ACh], 4
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+9]
pop     ecx
retn

loc_41EB6B:             ; jumptable 0041EB14 case 3
cmp     dword ptr [edx+10h], 97h
jge     short loc_41EB7C
mov     word ptr [eax+46h], 0
jmp     short loc_41EB82

loc_41EB7C:
mov     word ptr [eax+46h], 0FC00h

loc_41EB82:
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B

def_41EB14:             ; jumptable 0041EB14 default case
pop     ecx
retn
sub_41EB01 endp




sub_41EB97 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
xor     al, al

loc_41EBA1:
movsx   edx, al
shl     edx, 3
lea     esi, [ebx+edx]
lea     edi, [ecx+edx+4]
lea     esi, [esi+198h]
movsd
movsd
inc     al
cmp     al, 9
jl      short loc_41EBA1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41EB97 endp

jpt_41EC12 dd offset loc_41EC19 ; jump table for switch statement
dd offset loc_41EC93
dd offset def_41EC12
dd offset loc_41EC9F
dd offset loc_41ECBB
dd offset loc_41ECFD



sub_41EBD9 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 38h
mov     ecx, eax
mov     edx, offset dword_560BDC
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
cmp     al, 5           ; switch 6 cases
ja      def_41EC12      ; jumptable 0041EC12 default case, case 2
and     eax, 0FFh
jmp     jpt_41EC12[eax*4] ; switch jump

loc_41EC19:             ; jumptable 0041EC12 case 0
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
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
mov     ebx, offset word_559218
mov     edx, 3
mov     eax, ecx
call    sub_40769E
mov     ds:dword_560C7C, eax
or      byte ptr [eax+6], 20h
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41EC93:             ; jumptable 0041EC12 case 1
mov     eax, ecx
call    sub_4DEADD
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41EC9F:             ; jumptable 0041EC12 case 3
mov     word ptr [ecx+58h], 28h ; '('
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
inc     byte ptr [ecx+8]
jmp     def_41EC12      ; jumptable 0041EC12 default case, case 2

loc_41ECBB:             ; jumptable 0041EC12 case 4
test    byte ptr ds:dword_560BEC, 8
jz      short loc_41ECCB
add     word ptr [ecx+58h], 0Ah
jmp     short loc_41ECD0

loc_41ECCB:
sub     word ptr [ecx+58h], 0Ah

loc_41ECD0:
cmp     dword ptr [edx+10h], 5Ah ; 'Z'
jnz     loc_41ED68
mov     word ptr [ecx+44h], 0FFECh
mov     word ptr [ecx+46h], 40h ; '@'
mov     word ptr [ecx+4Eh], 4
mov     word ptr [ecx+48h], 0FEC0h
mov     word ptr [ecx+50h], 0FFFCh
inc     byte ptr [ecx+8]
jmp     short loc_41ED68

loc_41ECFD:             ; jumptable 0041EC12 case 5
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     edx, [ecx+46h]
sar     edx, 10h
sar     edx, 4
mov     eax, [ecx+56h]
sar     eax, 10h
add     eax, edx
mov     [ecx+58h], ax
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     edx, [ecx+44h]
sar     edx, 10h
sar     edx, 4
mov     eax, [ecx+14h]
sar     eax, 10h
add     eax, edx
mov     [ecx+16h], ax
add     word ptr [ecx+18h], 0Fh
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

loc_41ED68:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB

def_41EC12:             ; jumptable 0041EC12 default case, case 2
xor     edi, edi

