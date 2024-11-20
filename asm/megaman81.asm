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

loc_4C02BB:
call    sub_4DE227
mov     ebx, eax
test    eax, eax
jz      short loc_4C031D
mov     al, [ecx]
mov     [ebx], al
mov     al, [ecx+2]
mov     [ebx+2], al
mov     byte ptr [ebx+3], 1
mov     byte ptr [ebx+0Ch], 0
mov     byte ptr [ebx+0Dh], 0
mov     byte ptr [ebx+0Eh], 0
mov     byte ptr [ebx+0Fh], 0
mov     ax, [ecx+48h]
mov     [ebx+48h], ax
mov     ax, [ecx+4Ah]
mov     [ebx+4Ah], ax
mov     ax, [ecx+4Ch]
mov     [ebx+4Ch], ax
lea     edx, [ebx+3]
mov     eax, ebx
call    sub_4DD0F8
mov     dword ptr [ebx+50h], 2C808080h
mov     dword ptr [ebx+5Ch], 0
inc     byte ptr [ebx+8]
mov     [ecx+58h], ebx
inc     byte ptr [ecx+0Dh]

loc_4C031D:
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0264 endp




; int __fastcall sub_4C0324(int, int)
sub_4C0324 proc near
push    ecx             ; int
push    edx             ; int
mov     edx, eax
add     dword ptr [eax+5Ch], 20h ; ' '
lea     ecx, [eax+18h]
mov     eax, ecx
call    sub_4EF184
mov     eax, [edx+5Ch]
mov     edx, ecx
call    sub_4EF50D
mov     edx, offset unk_5372A4
mov     eax, ecx
call    sub_4EF689
pop     edx
pop     ecx
retn
sub_4C0324 endp




sub_4C034F proc near
push    edx
mov     edx, eax
call    sub_4DE477
cmp     byte ptr [edx+0Dh], 0
jz      short loc_4C0365
mov     eax, [edx+58h]
call    sub_4DE477

loc_4C0365:
xor     edx, edx

loc_4C0367:
mov     eax, ds:dword_55D0A4[edx*4]
call    sub_4DE3EA
inc     edx
cmp     edx, 7
jb      short loc_4C0367
pop     edx
retn
sub_4C034F endp




sub_4C037B proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C0381[edx*4]
pop     edx
retn
sub_4C037B endp




sub_4C038A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C0390[edx*4]
pop     edx
retn
sub_4C038A endp




sub_4C0399 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, offset byte_5F8364
lea     edi, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [esi], ah
lea     edx, [esi+18h]
mov     eax, edx
call    sub_4EF184
mov     word ptr [edi+4], 0
movsx   ax, byte ptr [esi+0Fh]
shl     eax, 4
mov     [edi+6], ax
mov     word ptr [edi+8], 0
lea     eax, [edi+4]
call    sub_4EF638
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C03E7
xor     edx, edx
jmp     short loc_4C03F1

loc_4C03E7:
lea     edx, [esi+0Ch]
cmp     ds:byte_77E7D4, 14h

loc_4C03F1:
mov     eax, esi
call    sub_4DD0F8
mov     al, [esi+0Dh]
mov     [esi+0Bh], al
mov     bh, ds:byte_77E7D4
cmp     bh, 0Eh
jz      short loc_4C0424
cmp     bh, 14h
jz      short loc_4C0424
cmp     bh, 13h
jnz     loc_4C0634
cmp     byte ptr ds:dword_77E7D5, 0
jnz     loc_4C0634

loc_4C0424:
mov     dword ptr [esi+10h], offset unk_5372CC
test    byte ptr [esi+5], 0Fh
jnz     short loc_4C043B
cmp     ds:word_77E918, 0
jz      short loc_4C046F

loc_4C043B:
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jnz     short loc_4C0456
mov     word ptr [esi+4Ah], 0FE7Fh
jmp     short loc_4C0466

loc_4C0456:
cmp     dh, 14h
jz      short loc_4C0460
cmp     dh, 13h
jnz     short loc_4C0466

loc_4C0460:
mov     word ptr [esi+4Ah], 0FFFFh

loc_4C0466:
mov     byte ptr [esi+0Eh], 8
jmp     loc_4C06C1

loc_4C046F:
mov     edx, [esi+46h]
sar     edx, 10h
mov     eax, [ecx+12h]
sar     eax, 10h
cmp     edx, eax
jnz     loc_4C0603
mov     edx, [esi+4Ah]
sar     edx, 10h
mov     eax, [ecx+16h]
sar     eax, 10h
cmp     edx, eax
jnz     loc_4C0603
mov     ax, [esi+48h]
mov     [ecx+14h], ax
mov     [ecx+538h], ax
mov     ax, [esi+4Ah]
mov     [ecx+16h], ax
mov     [ecx+53Ah], ax
mov     ax, [esi+4Ch]
mov     [ecx+18h], ax
mov     [ecx+53Ch], ax
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     ax, [edi+6]
add     ah, 8
and     ah, 0Fh
mov     [ecx+56h], ax
mov     [ecx+542h], ax
mov     eax, ecx
call    sub_4B55D5
cmp     eax, 1
jnz     loc_4C06D7
cmp     byte ptr [ecx+8], 3
jz      loc_4C06D7
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     ax, [esi+48h]
mov     [ecx+14h], ax
mov     [ecx+538h], ax
mov     ax, [esi+4Ah]
mov     [ecx+16h], ax
mov     [ecx+53Ah], ax
mov     ax, [esi+4Ch]
mov     [ecx+18h], ax
mov     [ecx+53Ch], ax
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 0
mov     ax, [edi+6]
add     ah, 8
and     ah, 0Fh
mov     [ecx+56h], ax
mov     [ecx+542h], ax
mov     byte ptr [esi+0Eh], 8
mov     byte ptr [esi+9], 2
lea     ebp, [esi+48h]
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_5372C0
mov     eax, ebp
call    sub_42C5B7
mov     [edi], eax
mov     edx, ebp
mov     eax, 176h
call    sub_4D8BC3

loc_4C05F5:
mov     ds:word_77E918, 1
jmp     loc_4C06C1

loc_4C0603:
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     cl, ds:byte_77E7D4
cmp     cl, 0Eh
jnz     short loc_4C061E
mov     word ptr [esi+4Ah], 0FE7Fh
jmp     short loc_4C062E

loc_4C061E:
cmp     cl, 14h
jz      short loc_4C0628
cmp     cl, 13h
jnz     short loc_4C062E

loc_4C0628:
mov     word ptr [esi+4Ah], 0FFFFh

loc_4C062E:
mov     byte ptr [esi+0Eh], 8
jmp     short loc_4C05F5

loc_4C0634:
cmp     byte ptr [esi+0Fh], 0
jnz     short loc_4C0643
mov     dword ptr [esi+10h], offset unk_5372CC
jmp     short loc_4C064A

loc_4C0643:
mov     dword ptr [esi+10h], offset unk_5372D8

loc_4C064A:
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     al, [esi+5]
and     al, 0Fh
cmp     al, 2
jnz     short loc_4C0687
cmp     ds:word_77E91E, 0
jz      short loc_4C067D
mov     eax, [esi+48h]
sar     eax, 10h
mov     [edi], eax
mov     ax, ds:word_77E91E
mov     [esi+4Ah], ax
mov     byte ptr [esi+5], 11h
jmp     short loc_4C06C1

loc_4C067D:
mov     eax, [esi+48h]
sar     eax, 10h
mov     [edi], eax
jmp     short loc_4C06C1

loc_4C0687:
mov     eax, [esi+48h]
sar     eax, 10h
mov     [edi], eax
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_4C06A7
mov     bx, ds:word_77E91A
test    bx, bx
jz      short loc_4C06C1
mov     [esi+4Ah], bx
jmp     short loc_4C06B7

loc_4C06A7:
mov     dx, ds:word_77E91C
test    dx, dx
jz      short loc_4C06C1
mov     [esi+4Ah], dx

loc_4C06B7:
mov     al, [esi+5]
and     al, 0F0h
or      al, 2
mov     [esi+5], al

loc_4C06C1:
mov     byte ptr [esi+8], 1
mov     dword ptr [esi+50h], 2C808080h
mov     byte ptr [esi+0Dh], 78h ; 'x'
mov     eax, esi
call    sub_4C06DE

loc_4C06D7:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0399 endp




sub_4C06DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C06E9[edx*4]

loc_4C06F0:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C06DE endp



; Attributes: thunk

sub_4C0708 proc near
jmp     sub_4DE477
sub_4C0708 endp




sub_4C070D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
mov     ecx, offset byte_5F8364
lea     esi, [eax+3Ch]
cmp     ds:byte_77E7D4, 13h
jnz     short loc_4C0736
mov     eax, 64Bh
call    sub_47E888
test    eax, eax
jnz     loc_4C0990

loc_4C0736:
cmp     byte ptr [ebx+0Ah], 1
jz      short loc_4C074E
mov     eax, 49h ; 'I'
call    sub_47E888
test    eax, eax
jz      short loc_4C074E
xor     edx, edx
jmp     short loc_4C0754

loc_4C074E:
mov     edx, ds:dword_55BD7C

loc_4C0754:
cmp     byte ptr [ebx+0Ah], 0
jnz     loc_4C07FA
mov     eax, [esi+4]
sar     eax, 10h
lea     esi, [eax+620h]
and     esi, 0FFFh
mov     edx, [ecx+54h]
sar     edx, 10h
cmp     edx, esi
jle     loc_4C0990
add     eax, 9E0h
and     eax, 0FFFh
cmp     edx, eax
jge     loc_4C0990
mov     edx, [ecx+184h]
cmp     ebx, edx
jnz     loc_4C0990
mov     byte ptr [edx+0Ah], 1
mov     dword ptr [ecx+184h], 0
or      byte ptr [ecx+0BDh], 40h
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jz      short loc_4C07C3
cmp     dh, 14h
jnz     short loc_4C07D4

loc_4C07C3:
mov     edx, 13h

loc_4C07C8:
xor     eax, eax

loc_4C07CA:
call    sub_4A0E24
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C07D4:
cmp     byte ptr [ebx+5], 0
jnz     short loc_4C07E1
mov     edx, 17h
jmp     short loc_4C07C8

loc_4C07E1:
mov     eax, 49h ; 'I'
call    sub_47E888
test    eax, eax
jnz     loc_4C0990
mov     edx, 6
jmp     short loc_4C07CA

loc_4C07FA:
test    edx, 80000000h
jnz     loc_4C0990
test    dl, 0FFh
jnz     loc_4C0985
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_4C0990
mov     dl, ds:byte_77E7D4
cmp     dl, 0Eh
jz      short loc_4C083C
cmp     dl, 14h
jz      short loc_4C083C
cmp     dl, 13h
jnz     short loc_4C0860
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4C0860

loc_4C083C:
mov     byte ptr [ebx+9], 1
mov     al, [ebx+0Eh]
mov     ah, 0FFh
imul    ah
mov     [ebx+0Eh], al
mov     byte ptr [ebx+0Dh], 9Fh
lea     edx, [ebx+48h]

loc_4C0851:
mov     eax, 178h

loc_4C0856:
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0860:
mov     eax, 49h ; 'I'
call    sub_47E888
test    eax, eax
jz      loc_4C0985
mov     al, [ebx+5]
and     al, 0Fh
lea     edx, [ebx+48h]
cmp     al, 2
jnz     loc_4C0978
mov     eax, ecx
call    sub_4B55D5
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     ax, [ecx+14h]
mov     [ecx+538h], ax
mov     ax, [ecx+16h]
mov     [ecx+53Ah], ax
mov     ax, [ecx+18h]
mov     [ecx+53Ch], ax
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 0
mov     ax, [ecx+56h]
mov     [ecx+542h], ax
test    byte ptr [ebx+5], 0F0h
jz      short loc_4C096E
mov     eax, 6Bh ; 'k'
call    sub_47E888
test    eax, eax
jz      short loc_4C0942
mov     byte ptr [ebx+0Eh], 4
mov     byte ptr [ebx+9], 2
mov     word ptr [ecx+542h], 7FFh

loc_4C0938:
mov     eax, 176h
jmp     loc_4C0856

loc_4C0942:
mov     byte ptr [ebx+0Eh], 0Ch
mov     eax, 6Bh ; 'k'
call    sub_47E8B8
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebx+9], 5
mov     word ptr [ecx+542h], 7FFh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C096E:
mov     byte ptr [ebx+0Eh], 0Ch
mov     byte ptr [ebx+9], 2
jmp     short loc_4C0938

loc_4C0978:
mov     byte ptr [ebx+0Eh], 0F4h
mov     byte ptr [ebx+9], 1
jmp     loc_4C0851

loc_4C0985:
and     byte ptr [ecx+0BDh], 0BFh
mov     byte ptr [ebx+0Ah], 0

loc_4C0990:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C070D endp




sub_4C0995 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     ebx, offset byte_5F8364
mov     ah, ds:byte_77E7D4
cmp     ah, 0Eh
jz      short loc_4C09C1
cmp     ah, 14h
jz      short loc_4C09C1
cmp     ah, 13h
jnz     short loc_4C09EB
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4C09EB

loc_4C09C1:
cmp     byte ptr [ecx+0Dh], 30h ; '0'
jz      short loc_4C09D8
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
dec     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C09D8:
mov     eax, 0Ah
call    sub_49E0D7
mov     byte ptr [ecx+9], 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C09EB:
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
lea     esi, [ecx+48h]
test    byte ptr [ecx+5], 0F0h
jnz     short loc_4C0A6B
mov     eax, [ecx+48h]
sar     eax, 10h
sub     eax, [edx]
call    abs_
cmp     eax, 2E0h
jl      loc_4C0AB3
mov     ax, [edx]
sub     eax, 2E0h
mov     [ecx+4Ah], ax
mov     byte ptr [ecx+9], 0
and     byte ptr [ebx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     edx, esi
mov     eax, 179h
call    sub_4D8BC3
mov     al, [ecx+5]
and     al, 0F0h
or      al, 2
mov     [ecx+5], al
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_4C0A5C
mov     ax, [ecx+4Ah]
mov     ds:word_77E91A, ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0A5C:
mov     ax, [ecx+4Ah]
mov     ds:word_77E91C, ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0A6B:
mov     eax, [ecx+48h]
sar     eax, 10h
cmp     eax, [edx]
jg      short loc_4C0AB3
mov     ax, [ecx+4Ah]
sub     ax, [edx]
add     eax, 10h
add     [ecx+4Ah], ax
mov     byte ptr [ecx+9], 0
and     byte ptr [ebx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     edx, esi
mov     eax, 179h
call    sub_4D8BC3
mov     al, [ecx+5]
and     al, 0F0h
or      al, 2
mov     [ecx+5], al
xor     ebx, ebx
mov     ds:word_77E91E, bx

loc_4C0AB3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0995 endp




sub_4C0AB8 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
lea     ebx, [eax+3Ch]
mov     ah, ds:byte_77E7D4
cmp     ah, 0Eh
jz      short loc_4C0AE4
cmp     ah, 14h
jz      short loc_4C0AE4
cmp     ah, 13h
jnz     short loc_4C0B3B
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_4C0B3B

loc_4C0AE4:
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
movsx   ax, byte ptr [ecx+0Eh]
add     [edx+53Ah], ax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax
mov     eax, [ecx+48h]
sar     eax, 10h
cmp     eax, [ebx]
jl      loc_4C0C43
mov     eax, edx
call    sub_4B565A
and     byte ptr [edx+0BDh], 0BFh
mov     ax, [ebx]
mov     [ecx+4Ah], ax
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     loc_4C0C36

loc_4C0B3B:
test    byte ptr [ecx+5], 0F0h
jnz     loc_4C0BC9
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
movsx   ax, byte ptr [ecx+0Eh]
add     [edx+53Ah], ax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax
mov     eax, [ecx+48h]
sar     eax, 10h
cmp     eax, [ebx]
jl      loc_4C0C43
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ecx+9], 0
and     byte ptr [edx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     al, [ecx+5]
and     al, 0F0h
or      al, 1
mov     [ecx+5], al
lea     edx, [ecx+48h]
mov     eax, 177h
call    sub_4D8BC3
mov     al, [ecx+0Bh]
test    al, al
jnz     short loc_4C0BBB
xor     ah, ah
mov     ds:word_77E91A, ax
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0BBB:
xor     edi, edi
mov     ds:word_77E91C, di
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C0BC9:
cmp     word ptr [edx+56h], 7FFh
jnz     short loc_4C0BF8
movsx   ax, byte ptr [ecx+0Eh]
add     [ecx+4Ah], ax
movsx   ax, byte ptr [ecx+0Eh]
add     [edx+53Ah], ax
mov     eax, [edx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+52Ch], eax

loc_4C0BF8:
mov     eax, [ecx+48h]
sar     eax, 10h
sub     eax, [ebx]
call    abs_
cmp     eax, 460h
jl      short loc_4C0C43
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ecx+9], 0
and     byte ptr [edx+0BDh], 0BFh
mov     byte ptr [ecx+0Ah], 0
mov     ax, [ecx+4Ah]
mov     ds:word_77E91E, ax
mov     al, [ecx+5]
and     al, 0F0h
or      al, 1
mov     [ecx+5], al

loc_4C0C36:
lea     edx, [ecx+48h]
mov     eax, 177h
call    sub_4D8BC3

loc_4C0C43:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0AB8 endp




sub_4C0C48 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, offset dword_77EA48
mov     byte ptr ds:dword_77EA5A+2, 1
lea     edx, [ecx+48h]
mov     eax, 179h
call    sub_4D8BC3
mov     dl, ds:byte_77E7D4
cmp     dl, 0Eh
jnz     short loc_4C0CA1
mov     ds:byte_77EA5E, 0Ch
xor     al, al
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 0BECh
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 13FDh
xor     ah, ah
jmp     loc_4C0D39

loc_4C0CA1:
cmp     dl, 14h
jnz     short loc_4C0CD3
mov     ds:byte_77EA5E, 0Bh
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, 0FE00h
mov     word ptr ds:dword_77EA52, 0FEFFh
mov     word ptr ds:dword_77EA52+2, 0FD8Fh
xor     eax, eax
jmp     short loc_4C0D39

loc_4C0CD3:
mov     al, ds:byte_77E7FF
test    al, al
jz      short loc_4C0D10
mov     ds:byte_77EA5E, 13h
mov     ds:byte_77EA5F, 0Ch
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0FE40h
mov     word ptr ds:dword_77EA5A, 800h
jmp     short loc_4C0D3F

loc_4C0D10:
mov     ds:byte_77EA5E, 0Ah
mov     ds:byte_77EA5F, al
mov     word ptr ds:dword_77EA4E+2, 0E600h
mov     word ptr ds:dword_77EA52, 0F9FFh
mov     word ptr ds:dword_77EA52+2, 17E0h
xor     ah, ah

loc_4C0D39:
mov     word ptr ds:dword_77EA5A, ax

loc_4C0D3F:
mov     byte ptr [ebx+15h], 0
mov     byte ptr [ebx+19h], 0FFh
mov     byte ptr [ebx+18h], 2
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0C48 endp




sub_4C0D52 proc near
push    edx
mov     ah, byte ptr ds:dword_77EA5A+2
cmp     ah, 2
jnz     short loc_4C0D7C
cmp     ds:word_6E23D6, 0
jnz     short loc_4C0D7C
mov     dl, ah
inc     dl
mov     byte ptr ds:dword_77EA5A+2, dl
mov     eax, offset byte_5F8364
call    sub_4B565A

loc_4C0D7C:
pop     edx
retn
sub_4C0D52 endp




sub_4C0D7E proc near
push    edx
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C0DA9
mov     byte ptr [eax+0Eh], 4
mov     byte ptr [eax+9], 2
lea     edx, [eax+48h]
mov     eax, 176h
call    sub_4D8BC3
mov     edx, 1Bh
xor     eax, eax
call    sub_4A0E24

loc_4C0DA9:
pop     edx
retn
sub_4C0D7E endp




sub_4C0DAB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C0DB1[edx*4]
pop     edx
retn
sub_4C0DAB endp




sub_4C0DBA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+3Ch]
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
mov     word ptr [edx+8], 0
lea     eax, [edx+4]
mov     edx, ebx
call    sub_4EF638
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     eax, ecx
call    sub_4C0E13
pop     edx
pop     ecx
pop     ebx
retn
sub_4C0DBA endp




sub_4C0E13 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C0E19[edx*4]
pop     edx
sub_4C0E13 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_96]



sub_4C0E22 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     ds:byte_5F83DA, 0
jz      loc_4C06F0
mov     edx, ds:dword_5F8424
cmp     esi, edx
jnz     loc_4C06F0
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+3], 2
add     edx, 48h ; 'H'
mov     eax, 113h
call    sub_4D8BC3
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     byte ptr [esi+0Dh], 1Eh
jmp     loc_4C06F0
sub_4C0E22 endp




sub_4C0E6B proc near

var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
cmp     byte ptr [eax+0Dh], 0
jz      short loc_4C0E97
dec     byte ptr [ebp+0Dh]
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 5
mov     eax, ebp
call    sub_432697
jmp     loc_4C10BC

loc_4C0E97:
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
sub     [esp+20h+var_1E], 301h
sub     [esp+20h+var_20], 3Eh ; '>'
sub     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
sub     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
mov     ax, [ebp+48h]
mov     [esp+20h+var_20], ax
mov     ax, [ebp+4Ch]
mov     [esp+20h+var_1C], ax
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, eax
add     ecx, 3Eh ; '>'
mov     [esp+20h+var_1C], cx
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
add     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
mov     ax, [ebp+48h]
mov     [esp+20h+var_20], ax
mov     ax, [ebp+4Ch]
mov     [esp+20h+var_1C], ax
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, eax
add     ecx, 3Eh ; '>'
mov     [esp+20h+var_1C], cx
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
add     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
sub     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
mov     ax, [ebp+48h]
mov     [esp+20h+var_20], ax
mov     ax, [ebp+4Ch]
mov     [esp+20h+var_1C], ax
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, eax
sub     ecx, 3Eh ; '>'
mov     [esp+20h+var_1C], cx
mov     ecx, esp
mov     ebx, 1
mov     edx, 6
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
sub     [esp+20h+var_1C], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 5
xor     eax, eax
call    sub_43C263
add     [esp+20h+var_20], 3Eh ; '>'
mov     ecx, esp
mov     ebx, 1
mov     edx, 4
xor     eax, eax
call    sub_43C263
mov     eax, ebp
call    sub_432EAB
cmp     byte ptr [ebp+5], 0
jz      short loc_4C10AB
mov     eax, 60Ch
call    sub_47E8B8

loc_4C10AB:
mov     byte ptr [ebp+8], 2
lea     edx, [ebp+48h]
mov     eax, 114h
call    sub_4D8BC3

loc_4C10BC:
add     esp, 8
jmp     loc_4C06D7
sub_4C0E6B endp




sub_4C10C4 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    edx
sub     esp, 10h
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C10D0[ecx*4]
lea     ecx, [edx+18h]  ; int
lea     eax, [edx+40h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 1000h
mov     [esp+18h+var_18], edx
mov     [esp+18h+var_14], edx
mov     [esp+18h+var_10], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edx
pop     ecx
retn
sub_4C10C4 endp




sub_4C1103 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ecx
push    edx
sub     esp, 8
mov     ecx, eax
add     eax, 3Ch ; '<'
or      byte ptr [ecx], 6
mov     word ptr [eax+4], 0
mov     word ptr [eax+6], 0
mov     word ptr [eax+8], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     byte ptr [ecx+0Dh], 28h ; '('
mov     byte ptr [ecx+0Eh], 78h ; 'x'
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4C1170
mov     [esp+10h+var_10], 0F700h
mov     [esp+10h+var_E], 0FED5h
mov     [esp+10h+var_C], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 61302h
jmp     short loc_4C1195

loc_4C1170:
mov     [esp+10h+var_10], 0E900h
mov     [esp+10h+var_E], 0FD55h
mov     [esp+10h+var_C], 0DD00h
mov     edx, esp
mov     eax, 2
call    sub_42C4B7
mov     edx, 61402h

loc_4C1195:
call    sub_4A7AE1
add     esp, 8
pop     edx
pop     ecx
retn
sub_4C1103 endp




sub_4C11A0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C11A6[edx*4]
pop     edx
retn
sub_4C11A0 endp




sub_4C11AF proc near

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
mov     esi, eax
lea     ecx, [eax+3Ch]
lea     edx, [eax+48h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DD685
cmp     eax, 384h
jge     loc_4C12A0
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+48h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+28h+var_24], eax
mov     eax, [esi+4Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esp+28h+var_20], eax
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     eax, offset byte_5F8364
add     eax, 1Ch
mov     edx, [ecx+4]
sar     edx, 10h
add     edx, 400h
mov     ecx, eax
mov     ebx, 100h
lea     eax, [esp+30h+var_28]
call    sub_4DE639
test    eax, eax
jz      short loc_4C12A0
mov     byte ptr [esi+9], 1
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_4C1266
mov     [esp+28h+var_18], 0F700h
mov     [esp+28h+var_16], 0FED5h
mov     [esp+28h+var_14], 0DD00h
lea     edx, [esp+28h+var_18]
mov     eax, 2
call    sub_42C4B7
mov     edx, 60302h
jmp     short loc_4C128E

loc_4C1266:
mov     [esp+28h+var_18], 0E900h
mov     [esp+28h+var_16], 0FD55h
mov     [esp+28h+var_14], 0DD00h
lea     edx, [esp+28h+var_18]
mov     eax, 2
call    sub_42C4B7
mov     edx, 60402h

loc_4C128E:
call    sub_4A7AE1
lea     edx, [esi+48h]
mov     eax, 175h
call    sub_4D8BC3

loc_4C12A0:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C11AF endp




sub_4C12A8 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3Ch ; '<'
mov     bx, [eax+8]
sub     ebx, 50h ; 'P'
and     bh, 0Fh
mov     [eax+8], bx
cmp     bx, 0C00h
jg      short loc_4C12CE
mov     word ptr [eax+8], 0C00h
mov     byte ptr [edx+9], 2

loc_4C12CE:
pop     edx
pop     ebx
sub_4C12A8 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_97]



sub_4C12D1 proc near

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
mov     edx, eax
lea     ebx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C12E1[ecx*4]
xor     ecx, ecx
mov     [esp+24h+var_14], cx
mov     [esp+24h+var_12], cx

loc_4C12F4:
mov     [esp+24h+var_10], cx
lea     ecx, [edx+18h]  ; int
mov     edx, ecx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+24h+var_24], edx
mov     eax, [ebx]
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C12D1 endp




sub_4C1329 proc near
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
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+50h], 2C808080h
mov     dword ptr [ebx], 1000h
pop     edx
pop     ecx
pop     ebx
sub_4C1329 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_98]



sub_4C1367 proc near

var_24= byte ptr -24h
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
add     eax, 58h ; 'X'
mov     [esp+24h+var_1C], eax
cmp     dword ptr [eax], 0
jz      short loc_4C1382
mov     byte ptr [ebp+9], 1

loc_4C1382:
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
mov     ecx, [esp+30h+var_1C]
push    ecx
sub     [esp+34h+var_22], 28h ; '('
sub     [esp+34h+var_20], 80h
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 0C000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
lea     eax, [esp+38h+var_24]
call    sub_4E01FC
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4C13C9[edx*4]
mov     eax, [esp+24h+var_1C]
mov     dword ptr [eax], 0
add     esp, 0Ch
jmp     loc_4C06D7
sub_4C1367 endp




sub_4C13E2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+3Ch]
lea     edx, [eax+48h]
cmp     byte ptr [eax+5], 0
jnz     short loc_4C1412
mov     eax, 605h
call    sub_47E888
test    eax, eax
jnz     short loc_4C140B
mov     eax, 11Eh
call    sub_4D8BC3

loc_4C140B:
mov     eax, 605h
jmp     short loc_4C1459

loc_4C1412:
mov     al, [ecx+5]
cmp     al, 1
jnz     short loc_4C1438
mov     eax, 606h
call    sub_47E888
test    eax, eax
jnz     short loc_4C1431
mov     eax, 11Eh
call    sub_4D8BC3

loc_4C1431:
mov     eax, 606h
jmp     short loc_4C1459

loc_4C1438:
cmp     al, 2
jnz     short loc_4C145E
mov     eax, 604h
call    sub_47E888
test    eax, eax
jnz     short loc_4C1454
mov     eax, 11Eh
call    sub_4D8BC3

loc_4C1454:
mov     eax, 604h

loc_4C1459:
call    sub_47E8B8

loc_4C145E:
mov     dword ptr [ebx], 10h
mov     byte ptr [ecx+9], 2
mov     byte ptr [ecx+0Bh], 80h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C13E2 endp




sub_4C1470 proc near
push    ebx
push    edx
lea     edx, [eax+3Ch]
mov     bl, [eax+0Bh]
test    bl, bl
jz      short loc_4C1486
mov     dl, bl
dec     dl
mov     [eax+0Bh], dl
pop     edx
pop     ebx
retn

loc_4C1486:
mov     dword ptr [edx], 1000h
mov     [eax+9], bl
mov     bh, [eax+5]
test    bh, bh
jnz     short loc_4C149D
mov     eax, 605h
jmp     short loc_4C14B3

loc_4C149D:
cmp     bh, 1
jnz     short loc_4C14A9
mov     eax, 606h
jmp     short loc_4C14B3

loc_4C14A9:
cmp     bh, 2
jnz     short loc_4C14B8
mov     eax, 604h

loc_4C14B3:
call    sub_47EA91

loc_4C14B8:
pop     edx
pop     ebx
retn
sub_4C1470 endp




sub_4C14BB proc near

var_14= word ptr -14h
var_12= word ptr -12h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     edx, eax
lea     ebx, [eax+3Ch]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C14CB[ecx*4]
xor     ecx, ecx
mov     [esp+24h+var_14], cx
mov     [esp+24h+var_12], 400h
jmp     loc_4C12F4
sub_4C14BB endp




sub_4C14E5 proc near
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
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C150A
lea     edx, [ecx+3]
jmp     short loc_4C150D

loc_4C150A:
lea     edx, [ecx+0Ch]

loc_4C150D:
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     dword ptr [ecx+50h], 2E808080h
mov     dword ptr [ebx], 1000h
call    sub_4DE227
mov     edx, eax
test    eax, eax
jz      short loc_4C1591
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     byte ptr [eax+8], 0
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C157C
mov     word ptr [eax+48h], 4FEh
mov     word ptr [eax+4Ah], 0FDAAh
mov     word ptr [eax+4Ch], 0B00h
jmp     short loc_4C158E

loc_4C157C:
mov     word ptr [eax+48h], 0FF00h
mov     word ptr [eax+4Ah], 0FF24h
mov     word ptr [eax+4Ch], 300h

loc_4C158E:
mov     [ecx+58h], edx

loc_4C1591:
mov     eax, ecx
call    sub_4C159C
pop     edx
pop     ecx
pop     ebx
retn
sub_4C14E5 endp




sub_4C159C proc near

var_28= byte ptr -28h
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
mov     [esp+28h+var_1C], offset byte_5F8364
add     eax, 3Ch ; '<'
mov     [esp+28h+var_20], eax
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000001h
sub     [esp+34h+var_26], 96h
lea     eax, [ebp+40h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 96h
lea     eax, [esp+3Ch+var_28]
call    sub_4E01FC
cmp     byte ptr [ebp+0Ah], 0
jnz     short loc_4C1638
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C160E
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short loc_4C1638
jmp     short loc_4C161C

loc_4C160E:
mov     eax, 605h
call    sub_47E888
test    eax, eax
jz      short loc_4C1638

loc_4C161C:
call    sub_4A0E35
mov     edx, 9
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebp+0Ah], 1
or      ds:byte_5F8421, 40h

