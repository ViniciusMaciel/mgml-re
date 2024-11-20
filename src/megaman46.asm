add     esp, 0Ch
jmp     loc_470478
sub_47047F endp



; Attributes: thunk

sub_470A1B proc near
jmp     sub_4DE2F6
sub_470A1B endp




sub_470A20 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
test    byte ptr [eax+0Ch], 1
jnz     short loc_470A4D
mov     byte ptr [ecx+0ACh], 1

loc_470A3D:
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_470AA7
jmp     short loc_470A94

loc_470A4D:
mov     dh, [ecx+0Eh]
test    dh, 4
jz      short loc_470A5E
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_470A3D

loc_470A5E:
test    dh, 8
jz      short loc_470A6C
mov     byte ptr [ecx+0ACh], 3
jmp     short loc_470A3D

loc_470A6C:
test    dh, 10h
jz      short loc_470A7A
mov     byte ptr [ecx+0ACh], 4
jmp     short loc_470A3D

loc_470A7A:
test    dh, 20h
jz      short loc_470AA7
mov     byte ptr [ecx+0ACh], 5
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_470AA7

loc_470A94:
mov     [ecx+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA

loc_470AA7:
pop     edx
pop     ecx
pop     ebx
retn
sub_470A20 endp




sub_470AAB proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_470AB1[edx*4]
pop     edx
retn
sub_470AAB endp




sub_470ABA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+0Eh], 4
jnz     short loc_470AF0
mov     byte ptr [ecx+0ACh], 5
mov     dl, [ecx+0ACh]
mov     [ecx+0ADh], dl
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_470AF0:
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_470ABA endp




sub_470AF8 proc near
push    edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_470B0F
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+9], 0

loc_470B0F:
pop     edx
retn
sub_470AF8 endp




sub_470B11 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+3A8h]
cmp     byte ptr [ecx+48h], 0
jz      loc_470BC1
mov     edx, [ecx+45h]
sar     edx, 18h
mov     esi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_470BC5
mov     dl, [ecx+46h]
and     dl, 7
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     dh, ds:byte_51721C[eax*2]
lea     edi, [ecx+38h]
lea     esi, unk_51721E[eax*2]
movsd
movsd
call    sub_4DE13B
test    eax, eax
jz      short loc_470BC5
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     dl, [ecx+46h]
and     dl, 3
mov     [eax+0Dh], dl
mov     dl, dh
and     edx, 0FFh
shl     edx, 3
add     edx, ebx
mov     bx, [edx+190h]
mov     si, [ecx+38h]
add     ebx, esi
mov     [eax+48h], bx
mov     bx, [edx+192h]
mov     di, [ecx+3Ah]
add     ebx, edi
mov     [eax+4Ah], bx
mov     dx, [edx+194h]
mov     bx, [ecx+3Ch]
add     edx, ebx
mov     [eax+4Ch], dx
jmp     short loc_470BC5

loc_470BC1:
mov     byte ptr [ebx+8], 2

loc_470BC5:
dec     byte ptr [ecx+48h]
jmp     loc_470479
sub_470B11 endp




sub_470BCD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_470BED
jbe     loc_470CC9
cmp     al, 2
jz      loc_470CF8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470BED:
test    al, al
jnz     loc_470D3F
or      byte ptr [esi], 2
mov     edx, [esi+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_51726D[eax]
mov     [esi+3], al
mov     edx, [esi+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_51726C[eax]
mov     [esi+2], al
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     byte ptr [esi+2], 49h ; 'I'
mov     word ptr [esi+54h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 42100200h
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+34h], eax
mov     [esi+1Ch], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+3Ch], eax
mov     [esi+24h], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+38h], eax
mov     [esi+20h], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
cmp     byte ptr [esi+0Ch], 4
jnz     short loc_470CC1
mov     byte ptr [esi+0Dh], 40h ; '@'
mov     byte ptr [esi+8], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470CC1:
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470CC9:
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+34h], eax
mov     [esi+1Ch], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+3Ch], eax
mov     [esi+24h], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+38h], eax
mov     [esi+20h], eax
jmp     short loc_470D15

loc_470CF8:
dec     byte ptr [esi+0Dh]
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_470D15
mov     byte ptr [esi+8], 1

loc_470D15:
mov     eax, esi
call    sub_4DEADD
mov     edx, [esi+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_51726E[eax]
xor     ecx, ecx
mov     ebx, 200h
mov     eax, esi
call    sub_4ED88B

loc_470D3F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470BCD endp




sub_470D44 proc near
push    edx
mov     eax, offset byte_6DD9CC
xor     edx, edx
jmp     short loc_470D59

loc_470D4E:
inc     edx
add     eax, 4A0h
cmp     edx, 10h
jge     short loc_470D64

loc_470D59:
cmp     byte ptr [eax], 0
jz      short loc_470D4E
cmp     byte ptr [eax+2], 50h ; 'P'
jnz     short loc_470D4E

loc_470D64:
pop     edx
retn
sub_470D44 endp




sub_470D66 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     word ptr [ecx+5Ch], 0
mov     dx, [ecx+5Ch]
mov     [ecx+54h], dx
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+60h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+34h], edx
mov     [ecx+1Ch], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+3Ch], edx
mov     [ecx+24h], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+38h], edx
mov     [ecx+20h], edx
mov     byte ptr [ebp+12h], 0
xor     edx, edx
mov     dl, [ebp+12h]
mov     dl, ds:byte_517284[edx*2]
mov     [ebp+10h], dl
xor     edx, edx
mov     dl, [ebp+12h]
mov     dl, ds:byte_517285[edx*2]
mov     [ebp+11h], dl
xor     edx, edx
mov     dl, [ebp+10h]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_51728C
mov     dword ptr [ebp+0], 0
inc     byte ptr [ecx+8]
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470D66 endp




sub_470E6A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 408h
mov     edx, ds:dword_5F84E8
cmp     esi, edx
jnz     short loc_470EE3
mov     eax, 36h ; '6'
call    sub_47E888
test    eax, eax
jz      short loc_470EA3
lea     eax, [edx+14h]
mov     ecx, 1Ah
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470EA3:
mov     eax, 549h
call    sub_47E888
test    eax, eax
jz      short loc_470ED4
mov     eax, 57h ; 'W'
call    sub_47EB4B
mov     ds:dword_560C00, edx
call    sub_470D44
mov     ds:dword_560C04, eax
mov     byte ptr [edx+9], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470ED4:
or      ds:byte_5F8421, 40h
inc     byte ptr [edx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_470EE3:
mov     dl, [eax+11h]
test    dl, dl
jnz     short loc_470F32
mov     bl, [eax+12h]
inc     bl
mov     [eax+12h], bl
xor     edx, edx
mov     dl, bl
cmp     ds:byte_517284[edx*2], 0FFh
jnz     short loc_470F04
mov     byte ptr [eax+12h], 0

loc_470F04:
xor     edx, edx
mov     dl, [eax+12h]
mov     dl, ds:byte_517284[edx*2]
mov     [eax+10h], dl
xor     edx, edx
mov     dl, [eax+12h]
mov     dl, ds:byte_517285[edx*2]
mov     [eax+11h], dl
xor     edx, edx
mov     dl, [eax+10h]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
jmp     short loc_470F40

loc_470F32:
mov     dh, dl
dec     dh
mov     [eax+11h], dh
mov     eax, esi
call    sub_4DEADD

loc_470F40:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470E6A endp

jpt_470F87 dd offset loc_470F8E ; jump table for switch statement
dd offset loc_470FE8
dd offset loc_47100B
dd offset loc_471025



sub_470F68 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_470F87      ; jumptable 00470F87 default case
and     eax, 0FFh
jmp     jpt_470F87[eax*4] ; switch jump

loc_470F8E:             ; jumptable 00470F87 case 0
call    sub_470D44
mov     edx, [eax+12h]
sar     edx, 10h
add     edx, 20h ; ' '
mov     [esp+20h+var_20], edx
mov     edx, [eax+14h]
sar     edx, 10h
sub     edx, 79h ; 'y'
mov     [esp+20h+var_1C], edx
mov     edx, [eax+16h]
sar     edx, 10h
add     edx, 18h
mov     [esp+20h+var_18], edx
mov     ebx, [eax+54h]
sar     ebx, 10h
sub     ebx, 800h
mov     ecx, 12h
mov     edx, 107h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh
and     byte ptr [esi], 0FDh

loc_470FE0:
inc     byte ptr [esi+0Ah]
jmp     def_470F87      ; jumptable 00470F87 default case

loc_470FE8:             ; jumptable 00470F87 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_470F87      ; jumptable 00470F87 default case
lea     eax, [esi+14h]
mov     ecx, 14h
xor     ebx, ebx
mov     edx, 1
call    sub_4A62D4
jmp     short loc_470FE0

loc_47100B:             ; jumptable 00470F87 case 2
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_470F87 ; jumptable 00470F87 default case
call    sub_42A98E
or      ds:byte_5F8364, 2
or      byte ptr [esi], 2
jmp     short loc_470FE0

loc_471025:             ; jumptable 00470F87 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_470F87 ; jumptable 00470F87 default case
and     ds:byte_5F8421, 0BFh
mov     byte ptr [edx+12h], 0
xor     eax, eax
mov     al, [edx+12h]
mov     al, ds:byte_517284[eax*2]
mov     [edx+10h], al
xor     eax, eax
mov     al, [edx+12h]
mov     al, ds:byte_517285[eax*2]
mov     [edx+11h], al
mov     dl, [edx+10h]
and     edx, 0FFh
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
dec     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0

def_470F87:             ; jumptable 00470F87 default case
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470F68 endp




sub_471078 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     word ptr [eax+44h], 0
jz      short loc_4710AB
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_4710AB:
cmp     byte ptr [esi+0Eh], 0
jnz     short loc_4710BD
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4710BD:
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Eh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_471078 endp




sub_4710D5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4710DB[edx*4]
pop     edx
retn
sub_4710D5 endp



; Attributes: thunk

sub_4710E4 proc near
jmp     sub_4DE2F6
sub_4710E4 endp




sub_4710E9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4710F4[edx*4]
test    byte ptr [esi], 2
jz      short loc_471113
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4ED88B

loc_471113:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4710E9 endp




sub_471118 proc near
push    edx
xor     edx, edx
jmp     short loc_471123

loc_47111D:
inc     edx
cmp     edx, 8
jge     short loc_471136

loc_471123:
lea     eax, [edx+54Bh]
call    sub_47E888
test    eax, eax
jz      short loc_47111D
mov     al, dl
pop     edx
retn

loc_471136:
mov     al, 0FFh
pop     edx
retn
sub_471118 endp




sub_47113A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     word ptr [ecx+5Ch], 0
mov     ax, [ecx+5Ch]
mov     [ecx+54h], ax
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+60h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_5172B0
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47113A endp




sub_47120A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_47123D
or      ds:byte_5F8421, 40h
mov     eax, 40h ; '@'
call    sub_47E888
test    eax, eax
jnz     short loc_471239
mov     dl, [edx+9]
inc     dl
mov     [esi+9], dl
jmp     short loc_47123D

loc_471239:
mov     byte ptr [edx+9], 2

loc_47123D:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47120A endp

align 4
jpt_471287 dd offset loc_47128E ; jump table for switch statement
dd offset loc_4712E1
dd offset loc_47130E
dd offset loc_471325



sub_471268 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 14h
mov     esi, eax
xor     ah, ah
mov     [esp+24h+var_14], ah
mov     al, [esi+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
and     eax, 0FFh
jmp     jpt_471287[eax*4] ; switch jump

loc_47128E:             ; jumptable 00471287 case 0
mov     eax, [esi+12h]
sar     eax, 10h
mov     [esp+24h+var_24], eax
mov     eax, [esi+14h]
sar     eax, 10h
sub     eax, 92h
mov     [esp+24h+var_20], eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0D4h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh

loc_4712C7:
inc     byte ptr [esi+0Ah]

def_471287:             ; jumptable 00471287 default case
cmp     [esp+24h+var_14], 0 ; jumptable 00471398 default case
jnz     loc_471351
mov     eax, esi
call    sub_4DEADD
jmp     loc_471351

loc_4712E1:             ; jumptable 00471287 case 1
call    sub_42ABA2
test    eax, eax
jnz     short def_471287 ; jumptable 00471287 default case
; jumptable 00471398 default case
lea     eax, [esi+14h]
mov     ecx, 1
xor     ebx, ebx
mov     edx, ecx
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
jmp     short loc_471351

loc_47130E:             ; jumptable 00471287 case 2
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_471287 ; jumptable 00471287 default case
; jumptable 00471398 default case
call    sub_42A98E
or      ds:byte_5F8364, 2
jmp     short loc_4712C7

loc_471325:             ; jumptable 00471287 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_471287 ; jumptable 00471287 default case
; jumptable 00471398 default case
and     ds:byte_5F8421, 0BFh
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     eax, 40h ; '@'
call    sub_47E8B8
dec     byte ptr [esi+9]

loc_47134D:
mov     byte ptr [esi+0Ah], 0

loc_471351:
add     esp, 14h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_471268 endp

align 4
jpt_471398 dd offset loc_47139F ; jump table for switch statement
dd offset loc_4713E0
dd offset loc_471417
dd offset loc_471439
dd offset loc_471484
dd offset loc_4714D5



sub_471374 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 14h
mov     esi, eax
xor     ah, ah
mov     [esp+24h+var_14], ah
mov     ecx, offset byte_5F8364
mov     al, [esi+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
and     eax, 0FFh
jmp     jpt_471398[eax*4] ; switch jump

loc_47139F:             ; jumptable 00471398 case 0
mov     eax, [esi+12h]
sar     eax, 10h
mov     [esp+24h+var_24], eax
mov     eax, [esi+14h]
sar     eax, 10h
sub     eax, 92h
mov     [esp+24h+var_20], eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     [esp+24h+var_1C], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0D4h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh

loc_4713D8:
inc     byte ptr [esi+0Ah]
jmp     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case

loc_4713E0:             ; jumptable 00471398 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
call    sub_471118
cmp     al, 0FFh
jnz     short loc_471403
mov     byte ptr [esi+0Ch], 1
mov     byte ptr [esi+0Ah], 3
jmp     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case

loc_471403:
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 1Eh
jmp     short loc_4713D8

loc_471417:             ; jumptable 00471398 case 2
mov     dl, [esi+0Ch]
dec     dl
mov     [esi+0Ch], dl
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
mov     byte ptr [esi+0Ch], 0Fh
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, esi
call    sub_4DE96B
jmp     short loc_4713D8

loc_471439:             ; jumptable 00471398 case 3
mov     ch, [esi+0Ch]
dec     ch
mov     [esi+0Ch], ch
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
call    sub_471118
xor     edx, edx
mov     dl, al
lea     eax, [esi+14h]
cmp     edx, 0FFh
jnz     short loc_471470
mov     ecx, 2
jmp     short loc_471473

loc_471470:
lea     ecx, [edx+3]

loc_471473:
xor     ebx, ebx
mov     edx, 1
call    sub_4A62D4
jmp     loc_4713D8

loc_471484:             ; jumptable 00471398 case 4
cmp     byte ptr ds:dword_77E760, 0
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
call    sub_42A98E
call    sub_471118
xor     edx, edx
mov     dl, al
cmp     edx, 0FFh
jz      short loc_4714CD
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4714CD
lea     eax, [edx+38h]
call    sub_47E8B8
lea     eax, [edx+54Bh]
call    sub_47EA91
mov     eax, 19h
call    sub_47EEAE

loc_4714CD:
or      byte ptr [ecx], 2
jmp     loc_4713D8

loc_4714D5:             ; jumptable 00471398 case 5
call    sub_42ABA2
test    eax, eax
jnz     def_471287      ; jumptable 00471287 default case
; jumptable 00471398 default case
and     ds:byte_5F8421, 0BFh
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     eax, 40h ; '@'
call    sub_47E8B8
mov     byte ptr [esi+9], 0
jmp     loc_47134D
sub_471374 endp




sub_471507 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_47150D[edx*4]
pop     edx
retn
sub_471507 endp



; Attributes: thunk

sub_471516 proc near
jmp     sub_4DE2F6
sub_471516 endp




sub_47151B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_471526[edx*4]
test    byte ptr [esi], 2
jz      short loc_471545
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 3Ch ; '<'
mov     eax, esi
call    sub_4ED88B

loc_471545:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47151B endp




sub_47154A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3D8h]
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
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_471597[edx*4]
mov     al, [ecx+0ADh]
mov     ah, [ecx+0ACh]
cmp     al, ah
jz      short loc_4715B6
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
jmp     short loc_4715D1

loc_4715B6:
test    byte ptr [ebp+4], 10h
jz      short loc_4715C5
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4715D8

loc_4715C5:
xor     ebx, ebx
mov     bl, [ecx+0A4h]
xor     edx, edx
mov     dl, ah

loc_4715D1:
mov     eax, ecx
call    sub_4DE96B

loc_4715D8:
test    byte ptr [ebp+4], 8
jz      loc_47217C
mov     eax, ecx
call    sub_4725D8
jmp     loc_47217C
sub_47154A endp




sub_4715EE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     byte ptr [eax+0Fh], 1
lea     esi, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi+4], 5Ah ; 'Z'
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+0Ch], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+eax*4]
mov     dl, [edx+0Fh]
and     edx, 0FFh
lea     eax, [esi+28h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     dword ptr [esi+18h], 0
mov     dword ptr [esi+1Ch], 0
mov     dword ptr [esi+2Ch], 0
mov     word ptr [esi+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_517304
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+44h], 180h
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     dword ptr [ecx+4Ch], 0
mov     dword ptr [ecx+50h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4715EE endp




sub_471704 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     ebx, [eax+3D8h]
add     eax, 400h
mov     edx, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_471726
or      byte ptr [ebx+4], 20h
jmp     short loc_47172A

loc_471726:
and     byte ptr [ebx+4], 0DFh

loc_47172A:
test    byte ptr [ebx+4], 2
jz      short loc_471737
mov     eax, ecx
call    sub_472687

loc_471737:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_47173E[edx*4]
xor     eax, eax
mov     edx, [ecx+2Ah]
sar     edx, 10h
cmp     edx, 0FFFFFB00h
jge     short loc_471768
mov     edx, [ecx+12h]
sar     edx, 10h
cmp     edx, 0FFFFFB00h
jl      short loc_471768
mov     eax, 1

loc_471768:
mov     edx, [ecx+2Ah]
sar     edx, 10h
cmp     edx, 0FFFFFD00h
jle     short loc_471789
mov     edx, [ecx+12h]
sar     edx, 10h
cmp     edx, 0FFFFFD00h
jg      short loc_471789
mov     eax, 2

loc_471789:
cmp     word ptr [ecx+2Ch], 100h
jle     short loc_47179E
cmp     word ptr [ecx+14h], 100h
jg      short loc_47179E
mov     eax, 3

loc_47179E:
mov     edx, [ecx+2Ah]
sar     edx, 10h
cmp     edx, 0FFFFFF00h
jge     short loc_4717C1
mov     edx, [ecx+12h]
sar     edx, 10h
cmp     edx, 0FFFFFF00h
jl      short loc_4717C1
mov     eax, 4
jmp     short loc_4717C6

loc_4717C1:
test    ax, ax
jz      short loc_4717D1

loc_4717C6:
dec     eax
movsx   edx, ax
mov     eax, ecx
call    sub_472329

loc_4717D1:
test    byte ptr [ebx+4], 1
jz      short loc_4717E8
mov     eax, ecx
call    sub_47242E
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx+4], 0FEh

loc_4717E8:
mov     di, [ebx+0Eh]
test    di, di
jz      short loc_4717F8
mov     eax, edi
dec     eax
mov     [ebx+0Eh], ax

loc_4717F8:
mov     dword ptr [ebx+18h], 0
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_471704 endp




sub_471804 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     dl, [eax+0Bh]
test    dl, dl
jbe     short loc_47181B
cmp     dl, 1
jz      short loc_471841
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47181B:
mov     word ptr [eax+44h], 0
mov     word ptr [eax+46h], 0
mov     word ptr [eax+48h], 0
mov     byte ptr [eax+0ACh], 4
mov     ah, [eax+0Bh]
inc     ah
mov     [esi+0Bh], ah
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_471841:
add     word ptr [eax+46h], 40h ; '@'
mov     ebx, [eax+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
call    sub_4DD43B
mov     eax, [esi+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jl      short loc_47189C
lea     edx, [esi+190h]
mov     eax, edx
call    sub_4722B0
lea     eax, [esi+198h]
call    sub_4722B0
lea     eax, [esi+1C8h]
call    sub_4722B0
lea     eax, [esi+1D0h]
call    sub_4722B0
mov     eax, esi
call    sub_4AF9F8
mov     eax, esi
call    sub_4DE2F6

loc_47189C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_471804 endp




sub_4718A1 proc near
mov     byte ptr [eax+0ACh], 0
retn
sub_4718A1 endp




sub_4718A9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+3D8h]
mov     ebx, 8
mov     edx, 2
call    sub_472399
mov     edx, eax
mov     al, [esi+0Bh]
cmp     al, 1
jb      short loc_4718D8
jbe     short loc_4718F1
cmp     al, 2
jz      short loc_471906
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4718D8:
test    al, al
jnz     short loc_471922
mov     word ptr [ecx+8], 1Eh
mov     [esi+0ACh], al
mov     byte ptr [esi+0Bh], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4718F1:
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     short loc_471922
mov     byte ptr [esi+0Bh], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_471906:
mov     ah, [ecx+4]
test    ah, 20h
jz      short loc_47191E
mov     dh, ah
or      dh, 80h
mov     [ecx+4], dh
test    dl, al
jz      short loc_47191E
or      byte ptr [ecx+5], 1

loc_47191E:
or      byte ptr [ecx+4], 1

loc_471922:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4718A9 endp

db 8Dh, 40h, 0
jpt_471960 dd offset loc_471967 ; jump table for switch statement
dd offset loc_47198F
dd offset loc_4719F9
dd offset loc_471A06
dd offset loc_471A1A



sub_47193E proc near

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
mov     al, [ebp+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_471960      ; jumptable 00471960 default case
xor     edx, edx
mov     dl, al
jmp     jpt_471960[edx*4] ; switch jump

loc_471967:             ; jumptable 00471960 case 0
mov     byte ptr [ebp+0Bh], 1
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+6]
mov     ecx, 3Ch ; '<'
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
add     edx, 1Eh
mov     eax, [esp+1Ch+var_1C]
mov     [eax+8], dx
jmp     def_471960      ; jumptable 00471960 default case

loc_47198F:             ; jumptable 00471960 case 1
mov     edx, [esp+1Ch+var_1C]
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     def_471960      ; jumptable 00471960 default case
mov     dx, [edx+6]
xor     dh, dh
and     dl, 0Fh
mov     word ptr [ebp+44h], 180h
cmp     dx, 7
jge     short loc_4719C6
mov     eax, [esp+1Ch+var_1C]
mov     [eax+3Ch], bx

loc_4719BE:
mov     [ebp+0Bh], dh
jmp     def_471960      ; jumptable 00471960 default case

loc_4719C6:
cmp     dx, 0Bh
jge     short loc_4719D7
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+3Ch], 20h ; ' '
jmp     short loc_4719BE

loc_4719D7:
cmp     dx, 0Fh
jge     short loc_4719E8
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+3Ch], 0FFE0h
jmp     short loc_4719BE

loc_4719E8:
mov     eax, [esp+1Ch+var_1C]
mov     [eax+3Ch], bx
mov     [ebp+44h], bx
mov     byte ptr [ebp+0Bh], 2
jmp     short def_471960 ; jumptable 00471960 default case

loc_4719F9:             ; jumptable 00471960 case 2
mov     byte ptr [ebp+0Bh], 3
mov     byte ptr [ebp+0ACh], 2
jmp     short def_471960 ; jumptable 00471960 default case

loc_471A06:             ; jumptable 00471960 case 3
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_471960 ; jumptable 00471960 default case
mov     byte ptr [ebp+0Bh], 4
jmp     short def_471960 ; jumptable 00471960 default case

loc_471A1A:             ; jumptable 00471960 case 4
mov     byte ptr [ebp+0Bh], 1
mov     word ptr [ebp+44h], 180h
sub     word ptr [ebp+56h], 800h
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 2

def_471960:             ; jumptable 00471960 default case
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Ch]
add     [ebp+56h], ax
and     byte ptr [ebp+57h], 0Fh
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_472530
test    ax, ax
jz      short loc_471A8B
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
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+3Ch], 0
mov     word ptr [ebp+44h], 0
mov     byte ptr [ebp+0Bh], 2

loc_471A8B:
mov     word ptr [ebp+16h], 0FE00h
mov     edx, [ebp+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+20h], edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+4]
test    dl, 20h
jz      short loc_471AB0
mov     bl, dl
or      bl, 1
mov     [eax+4], bl

loc_471AB0:
add     esp, 4
jmp     loc_47217C
sub_47193E endp

db 8Bh, 0C0h
jpt_471B03 dd offset loc_471B0A ; jump table for switch statement
dd offset loc_471BA3
dd offset loc_471BFB
dd offset loc_471C42
dd offset loc_471C5D
dd offset loc_471C7E
dd offset loc_471CD0
dd offset loc_471D17
dd offset loc_471D4A
dd offset loc_471D83
dd offset loc_471DED



sub_471AE6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Bh]
cmp     dl, 0Ah         ; switch 11 cases
ja      def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
xor     eax, eax
mov     al, dl
jmp     jpt_471B03[eax*4] ; switch jump

loc_471B0A:             ; jumptable 00471B03 case 0
mov     byte ptr [esi+0ACh], 1
mov     eax, [esi+12h]
sar     eax, 10h
cmp     eax, 0FFFFFE00h
jge     short loc_471B3D
mov     eax, [esi+12h]
sar     eax, 10h
cmp     eax, 0FFFFF800h
jge     short loc_471B31
mov     byte ptr [esi+0Bh], 5
jmp     short loc_471B4F

loc_471B31:
mov     byte ptr [esi+0Bh], 1

loc_471B35:
mov     word ptr [edi+3Ah], 400h
jmp     short loc_471B55

loc_471B3D:
cmp     word ptr [esi+14h], 400h
jle     short loc_471B4B
mov     byte ptr [esi+0Bh], 5
jmp     short loc_471B35

loc_471B4B:
mov     byte ptr [esi+0Bh], 1

loc_471B4F:
mov     word ptr [edi+3Ah], 0C00h

loc_471B55:
mov     ax, [esi+56h]
mov     [edi+38h], ax
mov     word ptr [edi+0Ah], 1Eh
mov     ax, [edi+0Ah]
mov     [edi+8], ax
mov     eax, [edi+38h]
sar     eax, 10h
mov     edx, [edi+36h]
sar     edx, 10h
mov     ecx, eax
sub     ecx, edx
cmp     ecx, 800h
jl      short loc_471B8C
add     byte ptr [edi+39h], 10h
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471B8C:
sub     edx, eax
cmp     edx, 800h
jl      def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
add     byte ptr [edi+3Bh], 10h
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471BA3:             ; jumptable 00471B03 case 1
dec     word ptr [edi+8]
mov     ecx, [edi+8]
sar     ecx, 10h
mov     eax, [edi+6]
sar     eax, 10h
mov     ebx, ecx
sub     ebx, eax
mov     edx, [edi+38h]
sar     edx, 10h
imul    ebx, edx
mov     edx, [edi+36h]
sar     edx, 10h
imul    edx, eax
add     edx, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esi+56h], ax
cmp     word ptr [edi+8], 0
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     dx, [edi+3Ah]
and     dh, 0Fh
mov     [esi+56h], dx
mov     word ptr [esi+44h], 200h
mov     byte ptr [esi+0Bh], 2
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471BFB:             ; jumptable 00471B03 case 2
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+12h]
sar     eax, 10h
cmp     eax, 0FFFFFE00h
jge     short loc_471C34
cmp     eax, 0FFFFF600h
jge     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471C24:
mov     byte ptr [esi+0ACh], 2
mov     byte ptr [esi+0Bh], 3
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471C34:
cmp     word ptr [esi+14h], 600h
jle     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
jmp     short loc_471C24

loc_471C42:             ; jumptable 00471B03 case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     byte ptr [esi+0Bh], 4
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471C5D:             ; jumptable 00471B03 case 4
mov     dl, [esi+57h]
add     dl, 8
mov     [esi+57h], dl
mov     dh, dl
and     dh, 0Fh
mov     [esi+57h], dh
mov     byte ptr [esi+0ACh], 1

loc_471C75:
mov     byte ptr [esi+0Bh], 6
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471C7E:             ; jumptable 00471B03 case 5
dec     word ptr [edi+8]
mov     ecx, [edi+8]
sar     ecx, 10h
mov     eax, [edi+6]
sar     eax, 10h
mov     ebx, ecx
sub     ebx, eax
mov     edx, [edi+38h]
sar     edx, 10h
imul    ebx, edx
mov     edx, [edi+36h]
sar     edx, 10h
imul    eax, edx
lea     edx, [eax+ebx]
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esi+56h], ax
cmp     word ptr [edi+8], 0
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     dx, [edi+3Ah]
and     dh, 0Fh
mov     [esi+56h], dx
mov     word ptr [esi+44h], 200h
jmp     short loc_471C75

loc_471CD0:             ; jumptable 00471B03 case 6
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+12h]
sar     eax, 10h
cmp     eax, 0FFFFFE00h
jge     short loc_471D09
cmp     eax, 0FFFFF800h
jle     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471CF9:
mov     byte ptr [esi+0ACh], 8
mov     byte ptr [esi+0Bh], 7
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471D09:
cmp     word ptr [esi+14h], 400h
jge     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
jmp     short loc_471CF9

loc_471D17:             ; jumptable 00471B03 case 7
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     byte ptr [esi+0ACh], 9
mov     byte ptr [esi+0Bh], 8
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471D4A:             ; jumptable 00471B03 case 8
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     byte ptr [esi+0ACh], 0Ah
mov     byte ptr [esi+0Bh], 9
mov     word ptr [esi+46h], 0
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471D83:             ; jumptable 00471B03 case 9
add     word ptr [esi+46h], 40h ; '@'
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jl      def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     word ptr [esi+14h], 0FE00h
mov     word ptr [esi+16h], 0FFFFh
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     word ptr [esi+46h], 0
mov     dword ptr [esi+48h], 0
mov     byte ptr [esi+0ACh], 0Bh
mov     byte ptr [esi+0Bh], 0Ah
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471DED:             ; jumptable 00471B03 case 10
sub     word ptr [esi+44h], 20h ; ' '
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
cmp     word ptr [esi+44h], 0
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     byte ptr [esi+0ACh], 0

loc_471E15:
or      byte ptr [edi+4], 1
jmp     def_471B03      ; jumptable 00471B03 default case
sub_471AE6 endp         ; jumptable 00471E4F default case

jpt_471E4F dd offset loc_471E56 ; jump table for switch statement
dd offset loc_471E66
dd offset loc_471EA7
dd offset loc_471EE0
dd offset loc_471F25



sub_471E32 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Bh]
cmp     dl, 4           ; switch 5 cases
ja      def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
xor     eax, eax
mov     al, dl
jmp     jpt_471E4F[eax*4] ; switch jump

loc_471E56:             ; jumptable 00471E4F case 0
mov     byte ptr [esi+0ACh], 0Ch
mov     byte ptr [esi+0Bh], 1
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471E66:             ; jumptable 00471E4F case 1
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     word ptr [esi+44h], 200h
mov     word ptr [esi+46h], 0FC00h
mov     word ptr [edi+8], 10h
mov     byte ptr [esi+0ACh], 0Dh
mov     byte ptr [esi+0Bh], 2
lea     edx, [esi+14h]
mov     eax, 194h
call    sub_4D8BC3
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471EA7:             ; jumptable 00471E4F case 2
dec     word ptr [edi+8]
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
add     word ptr [esi+46h], 40h ; '@'
cmp     word ptr [edi+8], 0
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     byte ptr [esi+0ACh], 0Eh
mov     byte ptr [esi+0Bh], 3
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471EE0:             ; jumptable 00471E4F case 3
mov     word ptr [esi+46h], 0
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
mov     word ptr [esi+44h], 180h
mov     word ptr [esi+46h], 0
mov     byte ptr [esi+0ACh], 0Fh
mov     byte ptr [esi+0Bh], 4
jmp     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case

loc_471F25:             ; jumptable 00471E4F case 4
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_471B03      ; jumptable 00471B03 default case
; jumptable 00471E4F default case
lea     eax, [edi+28h]
call    sub_4E19B4
mov     byte ptr [esi+0ACh], 1
jmp     loc_471E15
sub_471E32 endp

db 8Bh, 0C0h
jpt_471F8E dd offset loc_471F95 ; jump table for switch statement
dd offset loc_472049
dd offset loc_472084
dd offset loc_472164



sub_471F6E proc near

var_24= dword ptr -24h
var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
lea     ebp, [eax+3D8h]
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_471F8E      ; jumptable 00471F8E default case
and     eax, 0FFh
jmp     jpt_471F8E[eax*4] ; switch jump

loc_471F95:             ; jumptable 00471F8E case 0
lea     edi, [ebp+48h]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [esp+24h+var_20]
lea     esi, [ebp+48h]
movsd
movsd
lea     edi, [ebp+40h]
lea     esi, [esp+24h+var_20]
movsd
movsd
mov     eax, [esp+24h+var_24]
mov     ax, [eax+56h]
mov     [ebp+38h], ax
test    byte ptr [ebp+4], 80h
jz      short loc_471FE0
cmp     word ptr [ebp+3Eh], 3
jge     short loc_471FE0
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebp+48h]
call    sub_4DDDB4
mov     [ebp+3Ah], ax
jmp     short loc_471FFC

loc_471FE0:
test    byte ptr [ebp+6], 1
jz      short loc_471FED
mov     eax, 400h
jmp     short loc_471FF2

loc_471FED:
mov     eax, 0C00h

loc_471FF2:
mov     [ebp+3Ah], ax
mov     word ptr [ebp+48h], 0FE00h

loc_471FFC:
mov     eax, [ebp+38h]
sar     eax, 10h
mov     edx, [ebp+36h]
sar     edx, 10h
mov     ecx, eax
sub     ecx, edx
cmp     ecx, 800h
jl      short loc_47201A
add     byte ptr [ebp+39h], 10h
jmp     short loc_472028

loc_47201A:
sub     edx, eax
cmp     edx, 800h
jl      short loc_472028
add     byte ptr [ebp+3Bh], 10h

loc_472028:
mov     word ptr [ebp+0Ah], 1Eh
mov     ax, [ebp+0Ah]
mov     [ebp+8], ax
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+0ACh], 10h
mov     byte ptr [eax+0Bh], 1
jmp     def_471F8E      ; jumptable 00471F8E default case

loc_472049:             ; jumptable 00471F8E case 1
mov     eax, [esp+24h+var_24]
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_471F8E      ; jumptable 00471F8E default case
mov     eax, [esp+24h+var_24]
mov     byte ptr [eax+0ACh], 11h
mov     word ptr [eax+46h], 0FC00h
mov     byte ptr [eax+0Bh], 2
lea     edx, [eax+14h]
mov     eax, 194h
call    sub_4D8BC3
jmp     def_471F8E      ; jumptable 00471F8E default case

loc_472084:             ; jumptable 00471F8E case 2
mov     eax, [esp+24h+var_24]
cmp     word ptr [eax+46h], 0
jl      short loc_472095
mov     byte ptr [eax+0ACh], 12h

loc_472095:
dec     word ptr [ebp+8]
mov     eax, [esp+24h+var_24]
add     word ptr [eax+46h], 40h ; '@'
mov     ebx, [eax+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
call    sub_4DD43B
mov     ecx, [ebp+8]
sar     ecx, 10h
mov     eax, [ebp+6]
sar     eax, 10h
mov     ebx, ecx
sub     ebx, eax
mov     edx, [ebp+46h]
sar     edx, 10h
imul    ebx, edx
mov     edx, [ebp+3Eh]
sar     edx, 10h
imul    edx, eax
add     edx, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+24h+var_24]
mov     [edx+14h], ax
mov     ecx, [ebp+8]
sar     ecx, 10h
mov     eax, [ebp+6]
sar     eax, 10h
mov     edx, ecx
sub     edx, eax
mov     ebx, [ebp+38h]
sar     ebx, 10h
imul    ebx, edx
mov     edx, [ebp+36h]
sar     edx, 10h
imul    edx, eax
add     edx, ebx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
cmp     word ptr [ebp+8], 0
jnz     short def_471F8E ; jumptable 00471F8E default case
mov     edi, edx
lea     edi, [edi+14h]
lea     esi, [ebp+48h]
movsd
movsd
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
mov     dx, [ebp+3Ah]
and     dh, 0Fh
mov     eax, [esp+24h+var_24]
mov     [eax+56h], dx
mov     byte ptr [eax+0ACh], 13h
mov     byte ptr [eax+0Bh], 3
jmp     short def_471F8E ; jumptable 00471F8E default case

loc_472164:             ; jumptable 00471F8E case 3
mov     eax, [esp+24h+var_24]
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_471F8E ; jumptable 00471F8E default case
or      byte ptr [ebp+4], 1

def_471F8E:             ; jumptable 00471F8E default case
add     esp, 0Ch

loc_47217C:
pop     ebp

def_471B03:             ; jumptable 00471B03 default case
pop     edi             ; jumptable 00471E4F default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_471F6E endp

db 8Dh, 40h, 0
jpt_4721B2 dd offset loc_4721B9 ; jump table for switch statement
dd offset loc_4721C9
dd offset loc_4721ED
dd offset loc_472227



sub_472196 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     al, [eax+0Bh]
cmp     al, 3           ; switch 4 cases
ja      def_4721B2      ; jumptable 004721B2 default case
and     eax, 0FFh
jmp     jpt_4721B2[eax*4] ; switch jump

loc_4721B9:             ; jumptable 004721B2 case 0
mov     byte ptr [ecx+0ACh], 5
mov     byte ptr [ecx+0Bh], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4721C9:             ; jumptable 004721B2 case 1
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4721B2 ; jumptable 004721B2 default case
mov     word ptr [esi+8], 3Ch ; '<'
mov     byte ptr [ecx+0ACh], 6
mov     byte ptr [ecx+0Bh], 2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4721ED:             ; jumptable 004721B2 case 2
mov     ebx, 10h
mov     edx, 2
mov     eax, ecx
call    sub_472399
test    byte ptr [esi+8], 0Fh
jnz     short loc_47220B
mov     eax, ecx
call    sub_4722E2

loc_47220B:
mov     dx, [esi+8]
dec     dx
mov     [esi+8], dx
jnz     short def_4721B2 ; jumptable 004721B2 default case
mov     byte ptr [ecx+0ACh], 7
mov     byte ptr [ecx+0Bh], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_472227:             ; jumptable 004721B2 case 3
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short def_4721B2 ; jumptable 004721B2 default case
or      byte ptr [esi+4], 1

def_4721B2:             ; jumptable 004721B2 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_472196 endp




sub_47223E proc near
push    ebx
push    edx
lea     edx, [eax+3D8h]
mov     bl, [eax+0Bh]
test    bl, bl
jbe     short loc_472255
cmp     bl, 1
jz      short loc_472263
pop     edx
pop     ebx
retn

loc_472255:
mov     byte ptr [eax+0ACh], 3
mov     byte ptr [eax+0Bh], 1
pop     edx
pop     ebx
retn

loc_472263:
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_472274
or      [edx+4], bl

loc_472274:
pop     edx
pop     ebx
retn
sub_47223E endp




sub_472277 proc near
push    ebx
push    edx
lea     edx, [eax+3D8h]
mov     bl, [eax+0Bh]
test    bl, bl
jbe     short loc_47228E
cmp     bl, 1
jz      short loc_47229C
pop     edx
pop     ebx
retn

loc_47228E:
mov     byte ptr [eax+0ACh], 4
mov     byte ptr [eax+0Bh], 1
pop     edx
pop     ebx
retn

loc_47229C:
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4722AD
or      [edx+4], bl

loc_4722AD:
pop     edx
pop     ebx
retn
sub_472277 endp




sub_4722B0 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4722DF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     bx, [edx]
mov     [eax+48h], bx
mov     bx, [edx+2]
mov     [eax+4Ah], bx
mov     dx, [edx+4]
mov     [eax+4Ch], dx

loc_4722DF:
pop     edx
pop     ebx
retn
sub_4722B0 endp




sub_4722E2 proc near
push    ebx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE043
test    eax, eax
jz      short loc_472317
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 28h ; '('
mov     byte ptr [eax+3], 0
lea     edi, [eax+14h]
lea     esi, [edx+198h]
movsd
movsd
mov     bx, [edx+54h]
mov     [eax+64h], bx
mov     bx, [edx+56h]
mov     [eax+66h], bx

loc_472317:
add     edx, 14h
mov     eax, 193h
call    sub_4D8BC3
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4722E2 endp




sub_472329 proc near

var_C= word ptr -0Ch

push    ebx
push    ecx
sub     esp, 4
mov     ecx, eax
mov     [esp+0Ch+var_C], dx
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_472379
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 17h
mov     byte ptr [eax+3], 0
mov     bl, byte ptr [esp+0Ch+var_C]
mov     [eax+0Ch], bl
test    bl, 2
jz      short loc_47235D
mov     word ptr [eax+48h], 0
jmp     short loc_472363

loc_47235D:
mov     word ptr [eax+48h], 0FC00h

loc_472363:
mov     ax, [ecx+16h]
sub     eax, 80h
mov     [edx+4Ah], ax
mov     ax, [ecx+18h]
mov     [edx+4Ch], ax

loc_472379:
lea     edx, [ecx+14h]
test    byte ptr [esp+0Ch+var_C], 1
jnz     short loc_472389
mov     eax, 192h
jmp     short loc_47238E

loc_472389:
mov     eax, 195h

loc_47238E:
call    sub_4D8BC3
add     esp, 4
pop     ecx
pop     ebx
retn
sub_472329 endp




sub_472399 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+2Ch+var_14], ebx
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F880A+2)
movsd
movsd
lea     edi, [ebp+0C4h]
lea     esi, [ebp+190h]
movsd
movsd
mov     [esp+2Ch+var_1C], dx
mov     [esp+2Ch+var_1A], 9
mov     [esp+2Ch+var_18], 4
mov     ecx, esp
lea     ebx, [esp+2Ch+var_1C]
mov     edx, offset byte_5F8364
call    sub_4DD6EC
mov     ecx, eax
test    al, 2
jnz     short loc_472403
test    al, 1
jz      short loc_4723F7
mov     eax, [esp+2Ch+var_14]
sub     [ebp+56h], ax
jmp     short loc_4723FF

loc_4723F7:
mov     eax, [esp+2Ch+var_14]
add     [ebp+56h], ax

loc_4723FF:
and     byte ptr [ebp+57h], 0Fh

loc_472403:
mov     eax, ecx
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_472399 endp

align 2
jpt_472460 dd offset loc_472467 ; jump table for switch statement
dd offset loc_4724B8
dd offset loc_4724C0
dd offset loc_4724CC
dd offset loc_4724D4
dd offset loc_472524
dd offset loc_472524
dd offset loc_472528



sub_47242E proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [eax+5]
test    bl, 2
jz      short loc_47244E
and     bl, 0FDh
mov     [eax+5], bl
mov     byte ptr [edx+9], 7
pop     edx
pop     ecx
pop     ebx
retn

loc_47244E:
mov     cl, [edx+9]
cmp     cl, 7           ; switch 8 cases
ja      def_472460      ; jumptable 00472460 default case
and     ecx, 0FFh
jmp     jpt_472460[ecx*4] ; switch jump

loc_472467:             ; jumptable 00472460 case 0
mov     bh, [eax+4]
and     bh, 0FBh
mov     [eax+4], bh
test    byte ptr [eax+5], 1
jz      short loc_4724AC
cmp     word ptr [eax+3Eh], 3
jge     short loc_4724AC
mov     ch, bh
or      ch, 4
mov     [eax+4], ch
cmp     dword ptr [edx+80h], 40000h
ja      short loc_4724A6
mov     cx, [eax+6]
xor     ch, ch
and     cl, 0Fh
cmp     cx, 0Dh
jnb     short loc_4724A6
mov     byte ptr [edx+9], 6
jmp     short loc_4724B0

loc_4724A6:
mov     byte ptr [edx+9], 5
jmp     short loc_4724B0

loc_4724AC:
mov     byte ptr [edx+9], 4

loc_4724B0:
and     byte ptr [eax+5], 0FEh
pop     edx
pop     ecx
pop     ebx
retn

loc_4724B8:             ; jumptable 00472460 case 1
mov     byte ptr [edx+9], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4724C0:             ; jumptable 00472460 case 2
or      byte ptr [eax+4], 80h
mov     byte ptr [edx+9], 4
pop     edx
pop     ecx
pop     ebx
retn

loc_4724CC:             ; jumptable 00472460 case 3
mov     byte ptr [edx+9], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4724D4:             ; jumptable 00472460 case 4
mov     bh, [eax+4]
test    bh, 80h
jz      short loc_472512
cmp     word ptr [eax+3Eh], 3
jge     short loc_472512
mov     cl, bh
or      cl, 4
mov     [eax+4], cl
cmp     dword ptr [edx+80h], 40000h
ja      short loc_47250C
mov     cx, [eax+6]
xor     ch, ch
and     cl, 0Fh
cmp     cx, 0Dh
jnb     short loc_47250C
mov     byte ptr [edx+9], 6
jmp     short loc_47251C

loc_47250C:
mov     byte ptr [edx+9], 5
jmp     short loc_47251C

loc_472512:
mov     word ptr [eax+3Eh], 0
mov     byte ptr [edx+9], 3

loc_47251C:
and     byte ptr [eax+4], 7Fh
pop     edx
pop     ecx
pop     ebx
retn

loc_472524:             ; jumptable 00472460 cases 5,6
inc     word ptr [eax+3Eh]

loc_472528:             ; jumptable 00472460 case 7
mov     byte ptr [edx+9], 0

def_472460:             ; jumptable 00472460 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47242E endp




sub_472530 proc near

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
xor     edx, edx
mov     [esp+24h+var_1C], edx
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
mov     bx, [eax+56h]
cmp     bx, 0C00h
jge     short loc_47255A
cmp     bx, 400h
jge     short loc_472563

loc_47255A:
sub     [esp+24h+var_20], 100h
jmp     short loc_472567

loc_472563:
inc     byte ptr [esp+24h+var_20+1]

loc_472567:
xor     ecx, ecx
mov     cl, [ebp+1]
xor     ebx, ebx
xor     edx, edx
mov     eax, esp
call    sub_42C5B7
mov     esi, eax
xor     ecx, ecx
mov     cl, [ebp+1]
lea     eax, [ebp+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_42C5B7
movsx   ecx, si
cwde
cmp     ecx, eax
jz      short loc_47259A
mov     [esp+24h+var_1C], 1

loc_47259A:
mov     eax, [ebp+12h]
sar     eax, 10h
cmp     eax, 0FFFFFE00h
jge     short loc_4725B7
cmp     eax, 0FFFFEF00h
jl      short loc_4725C7
cmp     eax, 0FFFFFB00h
jle     short loc_4725CF
jmp     short loc_4725C7

loc_4725B7:
mov     ax, [ebp+14h]
cmp     ax, 100h
jl      short loc_4725C7
cmp     ax, 0D00h
jle     short loc_4725CF

loc_4725C7:
mov     [esp+24h+var_1C], 1

loc_4725CF:
mov     eax, [esp+24h+var_1C]
jmp     def_471F8E      ; jumptable 00471F8E default case
sub_472530 endp




sub_4725D8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+3D8h]
cmp     byte ptr [eax+9], 6
jnz     short loc_472626
cmp     byte ptr [eax+0Bh], 1
jnz     short loc_472626
xor     ecx, ecx
mov     cl, [eax+2]
mov     ebx, ds:dword_55A10C
mov     ecx, [ebx+ecx*4]
mov     cl, [ecx+0Bh]
xor     ch, ch
mov     [edx+0Ch], cx
lea     edi, [edx+10h]
lea     esi, [eax+1D0h]
movsd
movsd
push    0
push    offset unk_800000
xor     ecx, ecx
mov     cx, [edx+0Ch]
or      ecx, 5880000h
jmp     short loc_47265B

loc_472626:
xor     ecx, ecx
mov     cl, [eax+2]
mov     ebx, ds:dword_55A10C
mov     ecx, [ebx+ecx*4]
mov     cl, [ecx+0Ah]
xor     ch, ch
mov     [edx+0Ch], cx
lea     edi, [edx+10h]
lea     esi, [eax+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     ecx, ecx
mov     cx, [edx+0Ch]
or      ecx, 4880000h

loc_47265B:
push    ecx
lea     ecx, [edx+18h]
push    ecx
mov     al, [eax+1]
and     eax, 0FFh
push    eax
lea     eax, [edx+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
call    sub_4E01FC
mov     eax, 1
jmp     def_471B03      ; jumptable 00471B03 default case
sub_4725D8 endp         ; jumptable 00471E4F default case




sub_472687 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     ax, [eax+6Eh]
mov     [ecx+0B2h], ax
mov     eax, [ebx+18h]
and     eax, 0FFFFFFh
jz      short loc_4726C7
test    byte ptr [ebx+1Bh], 18h
jz      short loc_4726C7
sub     [ecx+6Eh], ax
mov     word ptr [ecx+15Eh], 7FFFh
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_4726C7:
mov     edx, [ecx+0B0h]
sar     edx, 10h
mov     eax, [ecx+6Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
jz      loc_472753
cmp     word ptr [ecx+6Eh], 0
jg      short loc_47271A
mov     edx, [ecx+12h]
sar     edx, 10h
cmp     edx, 0FFFFFC00h
jl      short loc_472714
cmp     word ptr [ecx+14h], 0
jg      short loc_472714
lea     eax, [ecx+14h]
call    sub_4722B0
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
jmp     short loc_472753

loc_472714:
mov     word ptr [ecx+6Eh], 1

loc_47271A:
test    byte ptr [ebx+4], 4
jz      short loc_472753
add     [ebx+0Eh], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
shl     eax, 2
mov     edx, [ebx+0Ch]
sar     edx, 10h
cmp     edx, eax
jl      short loc_472753
or      word ptr [ebx+4], 201h
mov     word ptr [ebx+0Eh], 0

loc_472753:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_472687 endp




sub_47275C proc near
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_472783[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4727A3
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0Ch
mov     eax, ebp
call    sub_4ED88B

loc_4727A3:
mov     dl, [ebp+0Bh]
test    dl, dl
jz      short loc_4727B3
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4727BA

loc_4727B3:
mov     dh, dl
inc     dh
mov     [ebp+0Bh], dh

loc_4727BA:
pop     ebp

loc_4727BB:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47275C endp




sub_4727C1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8
mov     [ecx+66h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 1800180h
mov     dword ptr [ecx+15Ch], 180h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
sub     eax, 64h ; 'd'
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
lea     edi, [ebx+1Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     word ptr [ecx+44h], 10h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
call    rand_
xor     ah, ah
and     al, 7Fh
or      al, 1
mov     [ebx+4], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+0Bh], 0
jmp     loc_4727BB
sub_4727C1 endp




sub_47289D proc near
push    ebx
push    edx
push    esi
lea     edx, [eax+408h]
mov     bx, [eax+66h]
add     [eax+56h], bx
and     byte ptr [eax+57h], 0Fh
mov     si, [edx+4]
dec     si
mov     [edx+4], si
jnz     short loc_4728C6
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 0

loc_4728C6:
call    sub_47295F
pop     esi
pop     edx
pop     ebx
retn
sub_47289D endp




sub_4728CF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
lea     edx, [eax+424h]
lea     ebp, [eax+14h]
mov     eax, ebp
call    sub_4DD685
sar     eax, 7
mov     [edi+8], eax
mov     al, [esi+9]
test    al, al
jbe     short loc_472900
cmp     al, 1
jz      short loc_472918
jmp     short loc_47294E

loc_472900:
mov     edx, [esi+0Ah]
sar     edx, 18h
cmp     edx, [edi+8]
ja      short loc_47293F
cmp     byte ptr [esi+0Dh], 0
jz      short loc_47293F
inc     al
mov     [esi+9], al
jmp     short loc_47294E

loc_472918:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+1Ch]
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     dword ptr [edi+8], 2
jnb     short loc_47294E

loc_47293F:
mov     eax, esi
call    sub_4729FA
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0

loc_47294E:
mov     eax, esi
call    sub_47295F
jmp     loc_4727BA
sub_4728CF endp



; Attributes: thunk

sub_47295A proc near
jmp     sub_4DE2F6
sub_47295A endp




sub_47295F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B
lea     eax, [esi+14h]
call    sub_42C517
test    eax, eax
jz      short loc_472991
mov     eax, esi
call    sub_4DE2F6
jmp     loc_4727BB

loc_472991:
mov     eax, esi
call    sub_42C592
xor     edx, edx
mov     dx, ds:word_77EAB6
and     edx, 7
mov     dx, ds:word_517320[edx*2]
mov     ebx, [esi+14h]
sar     ebx, 10h
movsx   ecx, ax
lea     edi, [ecx-64h]
cmp     ebx, edi
jle     short loc_4729D0
sub     eax, 64h ; 'd'
add     eax, edx
mov     [esi+16h], ax
mov     word ptr [esi+46h], 0FFF0h
jmp     loc_4727BB

loc_4729D0:
sub     ecx, 190h
cmp     ebx, ecx
jge     short loc_4729F1
sub     eax, 190h
add     eax, edx
mov     [esi+16h], ax
mov     word ptr [esi+46h], 10h
jmp     loc_4727BB

loc_4729F1:
add     [esi+16h], dx
jmp     loc_4727BB
sub_47295F endp




sub_4729FA proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
call    rand_
xor     ah, ah
and     al, 7Fh
or      al, 1
mov     [ecx+4], ax
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, 8
mov     [edx+46h], ax
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8
mov     [edx+66h], ax
pop     edx
pop     ecx
retn
sub_4729FA endp




sub_472A38 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_472A41[ecx*4]
cmp     byte ptr [edx+0Ch], 0
jz      short loc_472A55
mov     eax, edx
call    sub_4DEADD

loc_472A55:
pop     edx
pop     ecx
retn
sub_472A38 endp




sub_472A58 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Ah]
test    ah, ah
jnz     loc_472AD2
or      byte ptr [ecx], 2
mov     [ecx+0Ch], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     bl, bl
inc     byte ptr [ecx+0Ah]
jmp     short loc_472AA4

loc_472A9D:
inc     bl
cmp     bl, 3
jnb     short loc_472AD2

loc_472AA4:
xor     dl, dl
jmp     short loc_472AAF

loc_472AA8:
inc     dl
cmp     dl, 2
jnb     short loc_472A9D

loc_472AAF:
call    sub_4DE13B
test    eax, eax
jz      short loc_472AA8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1Ah
mov     byte ptr [eax+3], 0
mov     dh, [ecx+1]
mov     [eax+0Ch], dh
mov     dh, bl
inc     dh
mov     [eax+0Dh], dh
jmp     short loc_472AA8

loc_472AD2:
cmp     ds:dword_560BEC, 0Fh
jnz     short loc_472ADE
inc     byte ptr [ecx+0Ch]

loc_472ADE:
pop     edx
pop     ecx
pop     ebx
retn
sub_472A58 endp




sub_472AE2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+14h], 0FB50h
mov     word ptr [ecx+18h], 0FF13h
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0C00h
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [esi+18h], 0
xor     edx, edx
mov     dl, [esi+18h]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [esi+8], 0
inc     byte ptr [ecx+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_472AE2 endp




sub_472BCA proc near
push    ebx
push    edx
lea     edx, [eax+408h]
test    byte ptr ds:word_5708DE+1, 20h
jz      short loc_472BFF
mov     bh, [edx+18h]
inc     bh
mov     [edx+18h], bh
cmp     bh, 3
jbe     short loc_472BEC
mov     byte ptr [edx+18h], 0

loc_472BEC:
mov     dl, [edx+18h]
and     edx, 0FFh
xor     ebx, ebx
call    sub_4DE96B
pop     edx
pop     ebx
retn

loc_472BFF:
test    byte ptr ds:word_5708DA, 10h
jz      short loc_472C0D
sub     word ptr [eax+14h], 0Ah

loc_472C0D:
test    byte ptr ds:word_5708DA, 40h
jz      short loc_472C1B
add     word ptr [eax+14h], 0Ah

loc_472C1B:
test    byte ptr ds:word_5708DA, 80h
jz      short loc_472C29
sub     word ptr [eax+18h], 0Ah

loc_472C29:
test    byte ptr ds:word_5708DA, 20h
jz      short loc_472C37
add     word ptr [eax+18h], 0Ah

loc_472C37:
test    byte ptr ds:word_5708DA+1, 4
jz      short loc_472C45
sub     word ptr [eax+16h], 0Ah

loc_472C45:
test    byte ptr ds:word_5708DA+1, 1
jz      short loc_472C53
add     word ptr [eax+16h], 0Ah

loc_472C53:
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
call    sub_4DEADD
pop     edx
pop     ebx
retn
sub_472BCA endp




sub_472C7F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_472C85[edx*4]
pop     edx
retn
sub_472C7F endp




sub_472C8E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ecx+6Ah], ax
xor     ebx, ebx
mov     bl, [edx+8]
mov     eax, edx
call    ds:funcs_472CCE[ebx*4]
mov     dword ptr [ecx+8], 0
jmp     loc_473565
sub_472C8E endp




sub_472CE1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
lea     ebx, [eax+1E8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     al, [ecx+3]
and     al, 0Fh
mov     [ecx+0Fh], al
lea     edx, [ecx+0Fh]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+0Ch], 0
test    byte ptr [ecx+3], 0F0h
jnz     short loc_472D46
mov     byte ptr [esi+6Ch], 28h ; '('
jmp     short loc_472D4A

loc_472D46:
mov     byte ptr [esi+6Ch], 8

loc_472D4A:
mov     word ptr [esi+66h], 0
mov     word ptr [ebx], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
mov     [ecx+73h], al
lea     eax, [esi+18h]
mov     ebx, 0FFFFFFA0h
mov     edx, 7
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 5
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_51739C
mov     word ptr [ecx+44h], 140h
mov     byte ptr [ecx+0ACh], 0
mov     al, [ecx+0ACh]
mov     [ecx+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_42DE56
mov     [esi+60h], eax
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+64h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_472CE1 endp




sub_472E06 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
lea     ecx, [eax+1E8h]
add     eax, 420h
mov     edx, esi
call    sub_4E19CA
test    eax, eax
jnz     short loc_472E2F
and     byte ptr [edi+6Ch], 0EFh
jmp     short loc_472E33

loc_472E2F:
or      byte ptr [edi+6Ch], 10h

loc_472E33:
mov     dx, [edi+66h]
test    dx, dx
jz      short loc_472E43
mov     ebx, edx
dec     ebx
mov     [edi+66h], bx

loc_472E43:
mov     eax, [edi+8]
and     eax, 0FFFFFFh
jz      loc_472F64
mov     dx, [esi+6Eh]
mov     [esi+0B2h], dx
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      short loc_472E9D
and     byte ptr [edi+6Ch], 0F7h
mov     byte ptr [esi+9], 5
mov     byte ptr [esi+0ACh], 9
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     word ptr [ecx], 0
mov     byte ptr [ecx+5], 0
jmp     loc_472F64

loc_472E9D:
mov     cx, [edi+66h]
add     ecx, eax
mov     [edi+66h], cx
test    byte ptr [edi+6Ch], 4
jnz     short loc_472F14
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+9]
and     eax, 0FFh
shl     eax, 4
xor     edx, edx
mov     dx, cx
cmp     edx, eax
jl      short loc_472F14
or      byte ptr [edi+6Ch], 4
mov     word ptr [edi+66h], 0
mov     byte ptr [esi+9], 4
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0ACh], 9
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
lea     edx, [esi+14h]
mov     eax, 0A2h
call    sub_4D8BC3
jmp     short loc_472F5B

loc_472F14:
lea     edx, [esi+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     bl, [esi+9]
cmp     bl, 2
jz      short loc_472F5B
cmp     bl, 4
jz      short loc_472F5B
mov     byte ptr [esi+9], 3
cmp     byte ptr [esi+0ACh], 0
jnz     short loc_472F5B
mov     byte ptr [esi+0ACh], 1
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B

loc_472F5B:
mov     word ptr [esi+15Eh], 7FFFh

loc_472F64:
test    byte ptr [edi+6Ch], 8
jz      short loc_472F81
mov     dl, [esi+9]
cmp     dl, 2
jz      short loc_472F81
test    byte ptr [edi+61h], 0Fh
jnz     short loc_472F7D
cmp     dl, 1
jnz     short loc_472F81

loc_472F7D:
mov     byte ptr [esi+9], 1

loc_472F81:
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_472F88[edx*4]
mov     eax, esi
call    sub_4DEADD
test    byte ptr [esi+0A6h], 40h
jz      short loc_472FAC
lea     edx, [esi+14h]
mov     eax, 1BDh
call    sub_4D8BC3

loc_472FAC:
mov     eax, esi
call    sub_42DE56
mov     [edi+60h], eax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
test    byte ptr [edi+6Ch], 8
jz      short loc_473009
cmp     byte ptr [esi+9], 1
jz      short loc_473009
test    byte ptr [edi+61h], 0Fh
jz      short loc_473009
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [edi+64h], ax
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [esi+5Ch]
sar     eax, 10h
sub     edx, eax
test    edx, edx
jle     short loc_473005
mov     byte ptr [esi+0Ch], 0
jmp     short loc_473009

loc_473005:
mov     byte ptr [esi+0Ch], 1

loc_473009:
test    byte ptr [esi], 2
jz      short loc_473021
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, esi
call    sub_4ED88B

loc_473021:
test    byte ptr [edi+6Ch], 8
jz      loc_473565
mov     ax, [esi+190h]
mov     [edi], ax
mov     ax, [esi+192h]
sub     eax, 2Eh ; '.'
mov     [edi+2], ax
mov     ax, [esi+194h]
mov     [edi+4], ax
push    0
push    0
mov     eax, [esi+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [edi+8]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0E0h
mov     eax, edi
call    sub_4E01FC
jmp     loc_473565
sub_472E06 endp



; Attributes: thunk

sub_473080 proc near
jmp     sub_4DE2F6
sub_473080 endp




sub_473085 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     ebp, [eax+408h]
lea     edi, [eax+1E8h]
test    byte ptr [ebp+6Ch], 20h
jz      loc_473164
mov     dx, [edi]
test    dx, dx
jnz     short loc_4730F4
mov     ax, [ebp+6Ah]
xor     ah, ah
and     al, 0Fh
cmp     ax, 4
jnb     short loc_4730BF
mov     byte ptr [esi+0Ah], 1
jmp     short loc_4730ED

loc_4730BF:
cmp     ax, 7
jnb     short loc_4730CB
mov     byte ptr [esi+0Ah], 2
jmp     short loc_4730ED

loc_4730CB:
cmp     ax, 0Ah
jnb     short loc_4730D7
mov     byte ptr [esi+0Ah], 3
jmp     short loc_4730ED

loc_4730D7:
mov     [esi+0Ah], ah
mov     [esi+0ACh], ah
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B

loc_4730ED:
