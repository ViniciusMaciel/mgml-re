xor     ebx, ebx
mov     edx, 1
mov     eax, 80010023h
call    sub_4D89E4
mov     ds:byte_55D3BC, 0FFh
jmp     short loc_4C7B67

loc_4C7AF8:
mov     edx, [esi+58h]
mov     eax, offset dword_77E8C8
call    sub_4C7749
mov     ds:byte_55D3BC, al
test    al, al
jnz     short loc_4C7B43
mov     eax, esi
call    sub_4C77BF
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010024h
call    sub_4D89E4
mov     edx, (offset dword_5F8376+2)
mov     eax, 16Eh
call    sub_4D8BC3
jmp     short loc_4C7B67

loc_4C7B43:
mov     eax, esi
call    sub_4C77BF
mov     edx, 11h
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 1
mov     eax, 80010023h
call    sub_4D89E4

loc_4C7B67:
mov     edi, ds:dword_77E8D4
cmp     edi, 3
jnb     short loc_4C7BE3
lea     ebp, [edi+1]
mov     ds:dword_77E8D4, ebp
jmp     short loc_4C7BE3

loc_4C7B7D:             ; jumptable 004C7912 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
cmp     ds:byte_55D3BC, 3
jnb     short loc_4C7BAC
xor     eax, eax
mov     al, ds:byte_55D3BC
add     eax, 0Ch
call    sub_4A62B7
mov     edx, 24h ; '$'
jmp     loc_4C793B

loc_4C7BAC:
mov     edx, 1Dh
jmp     loc_4C793B

loc_4C7BB6:             ; jumptable 004C7912 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C7912      ; jumptable 004C7912 default case
call    sub_4D8EFD
test    eax, eax
jnz     def_4C7912      ; jumptable 004C7912 default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4C7BE8
mov     eax, 9

loc_4C7BDE:
call    sub_49E0D7

loc_4C7BE3:
inc     byte ptr [esi+9]
jmp     short def_4C7912 ; jumptable 004C7912 default case

loc_4C7BE8:
inc     byte ptr [esi+8]

loc_4C7BEB:
mov     byte ptr [esi+9], 0
jmp     short def_4C7912 ; jumptable 004C7912 default case

loc_4C7BF1:             ; jumptable 004C7912 case 7
cmp     ds:word_6E23D6, 0
jnz     short def_4C7912 ; jumptable 004C7912 default case
mov     edx, 80h
mov     eax, 18h
call    sub_4DC979
jmp     short loc_4C7BE3

loc_4C7C0C:             ; jumptable 004C7912 case 8
mov     eax, esi
call    sub_4C762A
xor     ecx, ecx
mov     ebx, 300h
mov     edx, 0FFFFFFFFh
xor     eax, eax
call    sub_4C75C2
mov     eax, 1
jmp     short loc_4C7BDE

loc_4C7C2D:             ; jumptable 004C7912 case 9
cmp     ds:word_6E23D6, 0
jz      short loc_4C7BEB

def_4C7912:             ; jumptable 004C7912 default case
mov     eax, [esi+58h]
call    sub_4A62AB
jmp     loc_4C7742
sub_4C78FA endp




sub_4C7C44 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C7C5C
jbe     short loc_4C7C76
cmp     al, 2
jz      loc_4C7CD4
pop     edx
pop     ecx
retn

loc_4C7C5C:
test    al, al
jnz     loc_4C7CFC
mov     edx, 15h
xor     eax, eax
call    sub_4A0E24

loc_4C7C70:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
retn

loc_4C7C76:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C7CFC
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 8
mov     ds:byte_77EA5F, 2
mov     word ptr ds:dword_77EA4E+2, 0FF42h
mov     word ptr ds:dword_77EA52, 0FFBFh
mov     word ptr ds:dword_77EA52+2, 296h
mov     word ptr ds:dword_77EA5A, 800h
xor     ah, ah
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
jmp     short loc_4C7C70

loc_4C7CD4:
cmp     al, byte ptr ds:dword_77EA5A+2
jnz     short loc_4C7CFC
inc     byte ptr ds:dword_77EA5A+2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     ds:word_77EA80, 7Fh
mov     eax, ecx
call    sub_4DE477

loc_4C7CFC:
pop     edx
pop     ecx
retn
sub_4C7C44 endp




sub_4C7CFF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C7D05[edx*4]
pop     edx
retn
sub_4C7CFF endp




sub_4C7D0E proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
cmp     byte ptr [edx+3], 0FFh
jnz     short loc_4C7D2C
call    sub_4C7D5E
mov     eax, edx
call    sub_4DE477
pop     edx
pop     ebx
retn

loc_4C7D2C:
cmp     byte ptr [edx+8], 0
jnz     short loc_4C7D38
or      byte ptr [edx], 2
inc     byte ptr [edx+8]

loc_4C7D38:
mov     bx, [eax+56h]
cmp     bx, 3ACh
jl      short loc_4C7D4A
cmp     bx, 0C54h
jle     short loc_4C7D54

loc_4C7D4A:
mov     dword ptr [edx+50h], 2404040h
pop     edx
pop     ebx
retn

loc_4C7D54:
mov     dword ptr [edx+50h], offset unk_808080
pop     edx
pop     ebx
retn
sub_4C7D0E endp




sub_4C7D5E proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 28h
mov     eax, ds:off_538160
mov     [esp+40h+var_20], eax
xor     edx, edx
mov     [esp+40h+var_1C], edx
xor     ecx, ecx

loc_4C7D78:
mov     eax, [esp+40h+var_1C]
shl     eax, 3
cmp     ds:byte_53815C[eax], 0FFh
jz      short loc_4C7DB6
mov     dl, ds:byte_77E7D4
cmp     dl, ds:byte_53815C[eax]
jnz     short loc_4C7DB0
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_53815D[eax]
jnz     short loc_4C7DB0
mov     eax, ds:off_538160[eax]
mov     [esp+40h+var_20], eax
jmp     short loc_4C7DBE

loc_4C7DB0:
inc     [esp+40h+var_1C]
jmp     short loc_4C7D78

loc_4C7DB6:
test    ecx, ecx
jz      loc_4C7F98

loc_4C7DBE:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+40h+var_34], eax
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+40h+var_3C], eax
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+40h+var_38], eax
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+40h+var_40], eax
xor     eax, eax
mov     al, ds:byte_77E802
mov     [esp+40h+var_24], eax
mov     eax, [esp+40h+var_38]
mov     [esp+40h+var_30], eax

loc_4C7DFC:
mov     eax, [esp+40h+var_30]
cmp     eax, [esp+40h+var_40]
jge     loc_4C7F98
mov     eax, [esp+40h+var_34]
mov     [esp+40h+var_2C], eax

loc_4C7E11:
mov     eax, [esp+40h+var_2C]
cmp     eax, [esp+40h+var_3C]
jge     loc_4C7F8F
sub     eax, [esp+40h+var_34]
add     eax, eax
add     eax, ds:dword_77E700
mov     ebp, [esp+40h+var_30]
sub     ebp, [esp+40h+var_38]
xor     ecx, ecx
mov     cx, ds:word_77EAAE
imul    ebp, ecx
add     ebp, ebp
movsx   ebp, word ptr [eax+ebp]
test    ebp, ebp
jle     loc_4C7F86
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     [esp+40h+var_28], eax
xor     esi, esi
mov     [esp+40h+var_1C], esi

loc_4C7E67:
mov     eax, [esp+40h+var_1C]
shl     eax, 4
add     eax, [esp+40h+var_20]
mov     eax, [eax+4]
cmp     eax, [esp+40h+var_28]
jnz     loc_4C7F6D
xor     edi, edi
jmp     short loc_4C7E8D

loc_4C7E83:
inc     edi
cmp     edi, 2
jge     loc_4C7F63

loc_4C7E8D:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C7E83
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 34h ; '4'
mov     ebx, [esp+40h+var_1C]
shl     ebx, 4
add     ebx, [esp+40h+var_20]
lea     esi, [ebx+edi]
xor     eax, eax
mov     al, [esi+0Eh]
sar     eax, 4
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dl, [esi+0Eh]
and     dl, 0Fh
mov     [ecx+0Ch], dl
mov     al, byte ptr [esp+40h+var_24]
mov     [ecx+0Dh], al
mov     esi, ebp
shl     esi, 2
sub     esi, ebp
mov     dx, word ptr ds:(dword_6E40AA+2)[esi*4]
mov     ax, [ebx+8]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_53817C[eax*4]
add     edx, eax
mov     [ecx+48h], dx
mov     dx, word ptr ds:(dword_6E40AE+2)[esi*4]
mov     ax, [ebx+0Ch]
add     edx, eax
mov     eax, [ecx+9]
sar     eax, 18h
mov     ax, ds:word_53817E[eax*4]
add     edx, eax
mov     [ecx+4Ch], dx
mov     dx, word ptr ds:dword_6E40AE[esi*4]
mov     ax, [ebx+0Ah]
add     edx, eax
mov     [ecx+4Ah], dx
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[esi*4]
mov     [ecx+3Ch], eax
mov     eax, [ebx]
call    sub_4A7AAC
mov     [ecx+40h], eax
jmp     loc_4C7E83

loc_4C7F63:
inc     [esp+40h+var_24]
inc     ds:byte_77E802

loc_4C7F6D:
mov     eax, [esp+40h+var_1C]
inc     eax
mov     [esp+40h+var_1C], eax
shl     eax, 4
add     eax, [esp+40h+var_20]
cmp     dword ptr [eax], 0
jnz     loc_4C7E67

loc_4C7F86:
inc     [esp+40h+var_2C]
jmp     loc_4C7E11

loc_4C7F8F:
inc     [esp+40h+var_30]
jmp     loc_4C7DFC

loc_4C7F98:
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C7D5E endp




sub_4C7FA2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+3], 1
jnz     short loc_4C7FBF
mov     eax, edx
call    sub_4C8364
mov     eax, edx
call    sub_4DE477
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7FBF:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_4C7FC6[ecx*4]
cmp     byte ptr [edx+0Ch], 0
jnz     short loc_4C7FF3
mov     bx, word ptr ds:dword_5F83B8+2
cmp     bx, 3ACh
jl      short loc_4C7FE8
cmp     bx, 0C54h
jle     short loc_4C8018

loc_4C7FE8:
mov     dword ptr [edx+50h], 2404040h
pop     edx
pop     ecx
pop     ebx
retn

loc_4C7FF3:
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
movsx   ecx, ax
mov     eax, [edx+9]
sar     eax, 18h
shl     eax, 0Ah
sub     ecx, eax
mov     eax, ecx
call    abs_
cmp     eax, 3ACh
jl      short loc_4C7FE8

loc_4C8018:
mov     dword ptr [edx+50h], offset unk_808080
pop     edx
pop     ecx
pop     ebx
retn
sub_4C7FA2 endp

db 8Dh, 40h, 0
jpt_4C8069 dd offset loc_4C8070 ; jump table for switch statement
dd offset loc_4C8077
dd offset loc_4C807E
dd offset loc_4C8070
dd offset loc_4C8077
dd offset loc_4C807E



sub_4C803E proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
or      byte ptr [edx], 2
mov     byte ptr [edx+8], 7
mov     dword ptr [edx+10h], offset unk_538420
cmp     byte ptr [edx+3], 0
jnz     short loc_4C8097
mov     cl, byte ptr ds:dword_77E7D5
cmp     cl, 5           ; switch 6 cases
ja      short def_4C8069 ; jumptable 004C8069 default case
and     ecx, 0FFh
jmp     jpt_4C8069[ecx*4] ; switch jump

loc_4C8070:             ; jumptable 004C8069 cases 0,3
mov     eax, 66h ; 'f'
jmp     short def_4C8069 ; jumptable 004C8069 default case

loc_4C8077:             ; jumptable 004C8069 cases 1,4
mov     eax, 67h ; 'g'
jmp     short def_4C8069 ; jumptable 004C8069 default case

loc_4C807E:             ; jumptable 004C8069 cases 2,5
mov     eax, 68h ; 'h'

def_4C8069:             ; jumptable 004C8069 default case
call    sub_47E888
test    eax, eax
jz      short loc_4C8093
mov     byte ptr [edx+0Eh], 0
pop     edx
pop     ecx
retn

loc_4C8093:
mov     byte ptr [edx+0Eh], 0Ah

loc_4C8097:
pop     edx
pop     ecx
retn
sub_4C803E endp

jpt_4C811C dd offset loc_4C8123 ; jump table for switch statement
dd offset loc_4C812A
dd offset loc_4C8131
dd offset loc_4C8123
dd offset loc_4C812A
dd offset loc_4C8131



sub_4C80B2 proc near
push    ebx
push    ecx
push    edx
push    ebp
mov     edx, eax
mov     ecx, offset byte_5F8364
xor     ebx, ebx
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_4C8104
cmp     ds:dword_77E778, 0
jnz     short loc_4C8104
cmp     ds:dword_77E758, 0
jnz     short loc_4C8104
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4C80E8
jbe     short loc_4C80F3
cmp     al, 2
jz      short loc_4C80FA
jmp     short loc_4C8104

loc_4C80E8:
test    al, al
jnz     short loc_4C8104
mov     eax, 616h
jmp     short loc_4C80FF

loc_4C80F3:
mov     eax, 617h
jmp     short loc_4C80FF

loc_4C80FA:
mov     eax, 618h

loc_4C80FF:
call    sub_47E8B8

loc_4C8104:
cmp     byte ptr [edx+3], 0
jnz     loc_4C81BC
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 5           ; switch 6 cases
ja      short def_4C811C ; jumptable 004C811C default case
and     eax, 0FFh
jmp     jpt_4C811C[eax*4] ; switch jump

loc_4C8123:             ; jumptable 004C811C cases 0,3
mov     ebx, 66h ; 'f'
jmp     short def_4C811C ; jumptable 004C811C default case

loc_4C812A:             ; jumptable 004C811C cases 1,4
mov     ebx, 67h ; 'g'
jmp     short def_4C811C ; jumptable 004C811C default case

loc_4C8131:             ; jumptable 004C811C cases 2,5
mov     ebx, 68h ; 'h'

def_4C811C:             ; jumptable 004C811C default case
mov     al, [edx+0Eh]
test    al, al
jnz     loc_4C81B0
cmp     ds:dword_77E778, 0
jnz     short loc_4C8153
cmp     ds:dword_77E758, 0
jz      short loc_4C815E

loc_4C8153:
mov     eax, ebx
call    sub_47E888
test    eax, eax
jz      short loc_4C817F

loc_4C815E:
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+0Bh], 10h
add     edx, 48h ; 'H'
mov     eax, 105h
call    sub_4D8BC3
mov     eax, ebx

loc_4C8175:
call    sub_47E8B8
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn

loc_4C817F:
cmp     edx, [ecx+184h]
jnz     loc_4C8202
mov     [ecx+184h], eax
mov     eax, 65h ; 'e'
call    sub_47E888
test    eax, eax
jnz     short loc_4C8202
mov     edx, 2
call    sub_4A0E24
mov     eax, 65h ; 'e'
jmp     short loc_4C8175

loc_4C81B0:
mov     ah, al
dec     ah
mov     [edx+0Eh], ah
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn

loc_4C81BC:
mov     ebp, [ecx+184h]
cmp     edx, ebp
jnz     short loc_4C8202
mov     dword ptr [ecx+184h], 0
mov     ah, [ecx+0BDh]
test    ah, 40h
jnz     short loc_4C8202
mov     bl, ah
or      bl, 40h
mov     [ecx+0BDh], bl
mov     eax, 0Ah
call    sub_49E0D7
mov     eax, 5Fh ; '_'
call    sub_47E8B8
mov     byte ptr [ebp+8], 6
mov     byte ptr [ebp+9], 0

loc_4C8202:
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_4C80B2 endp




; int __fastcall sub_4C8207(int, int)
sub_4C8207 proc near

var_C= dword ptr -0Ch

push    ecx             ; int
push    edx             ; int
sub     esp, 4
mov     ecx, eax
lea     edx, [eax+18h]
mov     eax, edx
call    sub_4EF1AB
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [esp+0Ch+var_C], eax ; int
fild    word ptr [esp+0Ch+var_C]
fmul    ds:flt_50A420
fstp    dword ptr [ecx+18h]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     ah, [ecx+0Bh]
dec     ah
mov     [ecx+0Bh], ah
jnz     short loc_4C8268
mov     eax, 10h
call    sub_4D8E2B
inc     byte ptr [ecx+8]
and     byte ptr [ecx], 0FDh
mov     edx, [ecx+54h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [ecx+40h]
mov     ds:dword_6E40B4[eax*4], edx

loc_4C8268:
add     esp, 4
pop     edx
pop     ecx
retn
sub_4C8207 endp




sub_4C826E proc near
push    edx
mov     edx, eax
mov     eax, 5Fh ; '_'
call    sub_47E888
test    eax, eax
jz      short loc_4C8282
inc     byte ptr [edx+8]

loc_4C8282:
pop     edx
retn
sub_4C826E endp




sub_4C8284 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+54h]
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ecx, [edx+3Ch]
mov     ds:dword_6E40B4[eax*4], ecx
mov     byte ptr [edx+8], 2
pop     edx
pop     ecx
retn
sub_4C8284 endp




sub_4C82A3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+9], 0
jnz     loc_4C8334
mov     byte ptr ds:dword_77EA5A+2, 1
mov     ds:byte_77EA5E, 1Dh
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
add     eax, ecx
mov     cx, ds:word_5383E4[eax*2]
mov     word ptr ds:dword_77EA4E+2, cx
mov     cx, ds:word_5383E6[eax*2]
mov     word ptr ds:dword_77EA52, cx
mov     cx, ds:word_5383E8[eax*2]
mov     word ptr ds:dword_77EA52+2, cx
mov     cx, ds:word_5383EA[eax*2]
mov     word ptr ds:dword_77EA5A, cx
mov     al, ds:byte_5383EC[eax*2]
mov     ds:byte_77EA5F, al
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
inc     byte ptr [edx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8334:
mov     bl, byte ptr ds:dword_77EA5A+2
cmp     bl, 2
jnz     short loc_4C8356
mov     bh, bl
inc     bh
mov     byte ptr ds:dword_77EA5A+2, bh
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [edx+8], bl

loc_4C8356:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C82A3 endp



; Attributes: thunk

sub_4C835A proc near
jmp     sub_4DE477
sub_4C835A endp




sub_4C835F proc near
mov     byte ptr [eax+8], 1
retn
sub_4C835F endp




sub_4C8364 proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi             ; int
push    edi             ; float
push    ebp             ; float
sub     esp, 2Ch
xor     edx, edx
mov     [esp+44h+var_2C], edx ; int
xor     ah, ah
mov     byte ptr [esp+44h+var_24], ah
mov     byte ptr [esp+44h+var_20], ah ; int
xor     ebx, ebx
xor     ecx, ecx

loc_4C8381:
mov     eax, ebx
shl     eax, 3
mov     dh, ds:byte_5383AC[eax]
cmp     dh, 0FFh
jz      short loc_4C83B6
cmp     dh, ds:byte_77E7D4
jnz     short loc_4C83B3
mov     dl, byte ptr ds:dword_77E7D5
cmp     dl, ds:byte_5383AD[eax]
jnz     short loc_4C83B3
mov     eax, ds:off_5383B0[eax]
mov     [esp+44h+var_2C], eax
jmp     short loc_4C83BE

loc_4C83B3:
inc     ebx
jmp     short loc_4C8381

loc_4C83B6:
test    ecx, ecx
jz      loc_4C8706

loc_4C83BE:
xor     eax, eax
mov     al, ds:byte_77EAC5
mov     [esp+44h+var_38], eax ; int
xor     eax, eax
mov     al, ds:byte_77EAC4
mov     [esp+44h+var_40], eax ; int
xor     eax, eax
mov     al, ds:byte_77EAC3
mov     [esp+44h+var_3C], eax ; int
xor     eax, eax
mov     al, ds:byte_77EAC2
mov     [esp+44h+var_44], eax ; int
mov     eax, 5Fh ; '_'
call    sub_47EA91
mov     eax, [esp+44h+var_3C]
mov     [esp+44h+var_34], eax ; int

loc_4C83FB:
mov     eax, [esp+44h+var_34]
cmp     eax, [esp+44h+var_44]
jge     loc_4C8706
mov     eax, [esp+44h+var_38]
mov     [esp+44h+var_30], eax ; float

loc_4C8410:
mov     eax, [esp+44h+var_30]
cmp     eax, [esp+44h+var_40]
jge     loc_4C86FD
sub     eax, [esp+44h+var_38]
add     eax, eax
mov     ebp, ds:dword_77E700
add     ebp, eax
mov     edx, [esp+44h+var_34]
sub     edx, [esp+44h+var_3C]
xor     eax, eax
mov     ax, ds:word_77EAAE
imul    eax, edx
movsx   ebp, word ptr [ebp+eax*2+0]
test    ebp, ebp
jle     loc_4C86F4
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     eax, ds:dword_6E40B4[eax*4]
mov     eax, [eax]
mov     ds:dword_55D3C0, eax
cmp     byte ptr [esp+44h+var_24], 0
jnz     loc_4C85A9
xor     ebx, ebx
mov     eax, [esp+44h+var_2C]
mov     eax, [eax]
mov     edx, ds:dword_55D3C0
cmp     eax, edx
jz      short loc_4C848B
mov     eax, [esp+44h+var_2C]
cmp     edx, [eax+4]
jnz     loc_4C85A9

loc_4C848B:
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     eax, [eax]
cmp     eax, ds:dword_55D3C0
jnz     short loc_4C84A5
mov     byte ptr [esp+44h+var_1C], 1
jmp     short loc_4C84AB

loc_4C84A5:
xor     cl, cl
mov     byte ptr [esp+44h+var_1C], cl ; int

loc_4C84AB:
cmp     byte ptr [esp+44h+var_1C], 0
jz      short loc_4C84DB
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     edx, [eax]
mov     ds:dword_55D3C0, edx
mov     eax, [eax+4]
call    sub_4A7AAC
mov     ecx, eax
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     ds:dword_6E40B4[eax*4], ecx

loc_4C84DB:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      loc_4C859D
mov     byte ptr [esp+44h+var_24], 1 ; int
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 35h ; '5'
test    ebx, ebx
jnz     short loc_4C8500
mov     byte ptr [eax+3], 0
jmp     short loc_4C8504

loc_4C8500:
mov     byte ptr [eax+3], 2

loc_4C8504:
mov     esi, ebx
shl     esi, 4
add     esi, [esp+44h+var_2C]
mov     al, [esi+0Fh]
mov     [ecx+0Dh], al
lea     edx, [ecx+0Dh]
mov     eax, ecx
call    sub_4DD0F8
mov     al, [esi+0Eh]
mov     [ecx+0Ch], al
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     edi, ebp
shl     edi, 2
sub     edi, ebp
mov     ax, word ptr ds:(dword_6E40AA+2)[edi*4]
mov     [esp+44h+var_28], eax
mov     ax, [esi+8]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+48h], ax
mov     ax, word ptr ds:(dword_6E40AE+2)[edi*4]
mov     [esp+44h+var_28], eax ; int
mov     ax, [esi+0Ch]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+4Ch], ax
mov     ax, word ptr ds:dword_6E40AE[edi*4]
mov     [ecx+4Ah], ax
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[edi*4]
mov     [ecx+3Ch], eax
mov     eax, [esi]
call    sub_4A7AAC
mov     [ecx+40h], eax

loc_4C859D:
add     ebx, 2
cmp     ebx, 4
jl      loc_4C84AB

loc_4C85A9:
cmp     byte ptr [esp+44h+var_20], 0
jnz     loc_4C86F4
mov     ebx, 1
mov     eax, [esp+44h+var_2C]
add     eax, 10h
mov     edx, [eax]
mov     ecx, ds:dword_55D3C0
cmp     edx, ecx
jz      short loc_4C85D5
cmp     ecx, [eax+4]
jnz     loc_4C86F4

loc_4C85D5:
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     eax, [eax]
cmp     eax, ds:dword_55D3C0
jnz     short loc_4C85EF
mov     byte ptr [esp+44h+var_1C], 1
jmp     short loc_4C85F5

loc_4C85EF:
xor     cl, cl
mov     byte ptr [esp+44h+var_1C], cl ; int

loc_4C85F5:
cmp     byte ptr [esp+44h+var_1C], 0
jz      short loc_4C8625
mov     eax, ebx
shl     eax, 4
add     eax, [esp+44h+var_2C]
mov     edx, [eax]
mov     ds:dword_55D3C0, edx
mov     eax, [eax+4]
call    sub_4A7AAC
mov     edx, eax
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
mov     ds:dword_6E40B4[eax*4], edx

loc_4C8625:
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      loc_4C86E8
mov     byte ptr [esp+44h+var_20], 1 ; int
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 35h ; '5'
cmp     ebx, 1
jnz     short loc_4C864B
mov     byte ptr [eax+3], 0
jmp     short loc_4C864F

loc_4C864B:
mov     byte ptr [eax+3], 2

loc_4C864F:
mov     esi, ebx
shl     esi, 4
add     esi, [esp+44h+var_2C]
mov     al, [esi+0Fh]
mov     [ecx+0Dh], al
lea     edx, [ecx+0Dh]
mov     eax, ecx
call    sub_4DD0F8
mov     al, [esi+0Eh]
mov     [ecx+0Ch], al
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF1AB
mov     edi, ebp
shl     edi, 2
sub     edi, ebp
mov     ax, word ptr ds:(dword_6E40AA+2)[edi*4]
mov     [esp+44h+var_28], eax
mov     ax, [esi+8]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+48h], ax
mov     ax, word ptr ds:(dword_6E40AE+2)[edi*4]
mov     [esp+44h+var_28], eax ; int
mov     ax, [esi+0Ch]
add     [esp+44h+var_28], eax
mov     eax, [esp+44h+var_28]
mov     [ecx+4Ch], ax
mov     ax, word ptr ds:dword_6E40AE[edi*4]
mov     [ecx+4Ah], ax
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     [ecx+54h], ebp
mov     eax, ds:dword_6E40B4[edi*4]
mov     [ecx+3Ch], eax
mov     eax, [esi]
call    sub_4A7AAC
mov     [ecx+40h], eax

loc_4C86E8:
add     ebx, 2
cmp     ebx, 4
jl      loc_4C85F5

loc_4C86F4:
inc     [esp+44h+var_30]
jmp     loc_4C8410

loc_4C86FD:
inc     [esp+44h+var_34]
jmp     loc_4C83FB

loc_4C8706:
add     esp, 2Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8364 endp




sub_4C8710 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C8719[ecx*4]
mov     eax, edx
call    sub_4C8EF1
cmp     byte ptr [edx+0Fh], 0
jz      short loc_4C8734
mov     eax, edx
call    sub_4C8FCB

loc_4C8734:
pop     edx
pop     ecx
retn
sub_4C8710 endp




sub_4C8737 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C873D[edx*4]
pop     edx
retn
sub_4C8737 endp




sub_4C8746 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 5Ah ; 'Z'
call    sub_47E888
test    eax, eax
jz      short loc_4C878E
mov     eax, offset unk_538478
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C878E:
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C8746 endp




sub_4C87AB proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 5Bh ; '['
call    sub_47E888
test    eax, eax
jz      short loc_4C87F3
mov     eax, offset unk_538480
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A8
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C87F3:
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C87AB endp




sub_4C8810 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 5Ch ; '\'
call    sub_47E888
test    eax, eax
jz      short loc_4C8858
mov     eax, offset unk_538488
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384B0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C8858:
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C8810 endp




sub_4C8875 proc near
push    edx
mov     edx, eax
mov     dword ptr [eax+54h], 0
call    sub_4C8F4A
mov     byte ptr [edx+0Ch], 0
mov     byte ptr [edx+0Dh], 0
mov     byte ptr [edx+0Fh], 1
mov     eax, edx
call    sub_4C8F7C
pop     edx
retn
sub_4C8875 endp




sub_4C8899 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+54h], 0
mov     eax, 56h ; 'V'
call    sub_47E888
test    eax, eax
jz      short loc_4C88E1
mov     eax, offset unk_538498
call    sub_42C443
mov     edx, 10060100h
call    sub_4A7AE1
mov     eax, offset unk_5384C0
call    sub_42C443
mov     edx, 10060102h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C88E1:
mov     byte ptr [ecx+2], 2Fh ; '/'
mov     eax, ecx
call    sub_4C8F4A
mov     byte ptr [ecx+2], 36h ; '6'
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Fh], 1
mov     eax, ecx
call    sub_4C8F7C
pop     edx
pop     ecx
retn
sub_4C8899 endp




sub_4C8906 proc near
push    edx
mov     edx, eax
mov     eax, [eax+54h]
cmp     byte ptr [eax+3], 4
jnz     short loc_4C8916
mov     byte ptr [edx+2], 2Fh ; '/'

loc_4C8916:
mov     eax, edx
call    sub_4C8F4A
mov     byte ptr [edx+2], 36h ; '6'
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 1

loc_4C8929:
mov     byte ptr [edx+0Fh], 0
pop     edx
retn
sub_4C8906 endp




sub_4C892F proc near
push    edx
mov     edx, eax
mov     dword ptr [eax+54h], 0
call    sub_4C8F4A
mov     byte ptr [edx+0Ch], 2
cmp     byte ptr [edx+3], 6
jnz     short loc_4C894C
xor     eax, eax
jmp     short loc_4C8951

loc_4C894C:
mov     eax, 1

loc_4C8951:
mov     [edx+0Dh], al
jmp     short loc_4C8929
sub_4C892F endp




sub_4C8956 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C895C[edx*4]
pop     edx
retn
sub_4C8956 endp

align 4
jpt_4C898C dd offset loc_4C8993 ; jump table for switch statement
dd offset loc_4C89A9
dd offset loc_4C89D7
dd offset loc_4C8A01



sub_4C8978 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C898C      ; jumptable 004C898C default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C898C[edx*4] ; switch jump

loc_4C8993:             ; jumptable 004C898C case 0
test    byte ptr ds:dword_77E8F8, 1
jz      def_4C898C      ; jumptable 004C898C default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4C89A9:             ; jumptable 004C898C case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C898C      ; jumptable 004C898C default case
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0FEh
or      ds:byte_5F8421, 40h

loc_4C89D0:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C89D7:             ; jumptable 004C898C case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C898C      ; jumptable 004C898C default case
mov     eax, 5Ah ; 'Z'
call    sub_47E888
test    eax, eax
jnz     short loc_4C89D0
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8A01:             ; jumptable 004C898C case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8A15
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8A15:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C898C ; jumptable 004C898C default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538478
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+8], 2

def_4C898C:             ; jumptable 004C898C default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8978 endp

jpt_4C8A88 dd offset loc_4C8A8F ; jump table for switch statement
dd offset loc_4C8AA5
dd offset loc_4C8AD3
dd offset loc_4C8AFD



sub_4C8A74 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8A88      ; jumptable 004C8A88 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C8A88[edx*4] ; switch jump

loc_4C8A8F:             ; jumptable 004C8A88 case 0
test    byte ptr ds:dword_77E8F8, 2
jz      def_4C8A88      ; jumptable 004C8A88 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8AA5:             ; jumptable 004C8A88 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8A88      ; jumptable 004C8A88 default case
mov     edx, 0Fh
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0FDh
or      ds:byte_5F8421, 40h

loc_4C8ACC:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8AD3:             ; jumptable 004C8A88 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8A88      ; jumptable 004C8A88 default case
mov     eax, 5Bh ; '['
call    sub_47E888
test    eax, eax
jnz     short loc_4C8ACC
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8AFD:             ; jumptable 004C8A88 case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8B11
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8B11:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C8A88 ; jumptable 004C8A88 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538480
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384A8
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+8], 2

def_4C8A88:             ; jumptable 004C8A88 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8A74 endp

jpt_4C8B84 dd offset loc_4C8B8B ; jump table for switch statement
dd offset loc_4C8BA1
dd offset loc_4C8BCF
dd offset loc_4C8BF9



sub_4C8B70 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8B84      ; jumptable 004C8B84 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C8B84[edx*4] ; switch jump

loc_4C8B8B:             ; jumptable 004C8B84 case 0
test    byte ptr ds:dword_77E8F8, 4
jz      def_4C8B84      ; jumptable 004C8B84 default case
inc     al
mov     [ecx+9], al
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8BA1:             ; jumptable 004C8B84 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8B84      ; jumptable 004C8B84 default case
mov     edx, 11h
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0FBh
or      ds:byte_5F8421, 40h

loc_4C8BC8:
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8BCF:             ; jumptable 004C8B84 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8B84      ; jumptable 004C8B84 default case
mov     eax, 5Ch ; '\'
call    sub_47E888
test    eax, eax
jnz     short loc_4C8BC8
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8BF9:             ; jumptable 004C8B84 case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8C0D
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8C0D:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C8B84 ; jumptable 004C8B84 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538488
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384B0
call    sub_42C443
mov     edx, 10060300h
call    sub_4A7AE1
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+8], 2

def_4C8B84:             ; jumptable 004C8B84 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8B70 endp

jpt_4C8C80 dd offset loc_4C8C87 ; jump table for switch statement
dd offset loc_4C8C9E
dd offset loc_4C8CFE
dd offset loc_4C8D3D



sub_4C8C6C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8C80      ; jumptable 004C8C80 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C8C80[edx*4] ; switch jump

loc_4C8C87:             ; jumptable 004C8C80 case 0
test    byte ptr ds:dword_77E8F8, 8
jz      def_4C8C80      ; jumptable 004C8C80 default case
inc     al
mov     [ecx+9], al
jmp     def_4C8C80      ; jumptable 004C8C80 default case

loc_4C8C9E:             ; jumptable 004C8C80 case 1
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8CB2
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8CB2:
mov     al, [ecx+0Eh]
dec     al
mov     [ecx+0Eh], al
jnz     def_4C8C80      ; jumptable 004C8C80 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538490
call    sub_42C443
mov     edx, 10060200h
call    sub_4A7AE1
mov     eax, offset unk_5384B8
call    sub_42C443
mov     edx, 10060300h

loc_4C8CF1:
call    sub_4A7AE1
inc     byte ptr [ecx+9]
jmp     def_4C8C80      ; jumptable 004C8C80 default case

loc_4C8CFE:             ; jumptable 004C8C80 case 2
mov     eax, ds:dword_5F837A
sar     eax, 10h
sub     eax, 500h
test    eax, eax
jge     short loc_4C8D11
neg     eax

loc_4C8D11:
cmp     eax, 200h
jle     short def_4C8C80 ; jumptable 004C8C80 default case
mov     eax, offset unk_538490
call    sub_42C443
mov     edx, 63200h
call    sub_4A7AE1
mov     eax, offset unk_5384B8
call    sub_42C443
mov     edx, 63300h
jmp     short loc_4C8CF1

loc_4C8D3D:             ; jumptable 004C8C80 case 3
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_4C8D51
xor     ebx, ebx
xor     edx, edx
mov     eax, 106h
call    sub_4D89E4

loc_4C8D51:
mov     dl, [ecx+0Eh]
inc     dl
mov     [ecx+0Eh], dl
cmp     dl, 20h ; ' '
jnz     short def_4C8C80 ; jumptable 004C8C80 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 186h
call    sub_4D89E4
mov     byte ptr [ecx+9], 0

def_4C8C80:             ; jumptable 004C8C80 default case
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_4C8D7B
and     byte ptr [ecx], 0FDh
jmp     short loc_4C8D7E

loc_4C8D7B:
or      byte ptr [ecx], 2

loc_4C8D7E:
and     byte ptr ds:dword_77E8F8, 0F7h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8C6C endp

align 4
jpt_4C8DB1 dd offset loc_4C8DB8 ; jump table for switch statement
dd offset loc_4C8DE8
dd offset loc_4C8E16
dd offset loc_4C8E2E



sub_4C8D9C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4C8DB1      ; jumptable 004C8DB1 default case
and     eax, 0FFh
jmp     jpt_4C8DB1[eax*4] ; switch jump

loc_4C8DB8:             ; jumptable 004C8DB1 case 0
cmp     ds:word_77E900, 1
jnz     short loc_4C8DD3
xor     ebx, ebx
mov     ds:word_77E900, bx
mov     byte ptr [ecx+9], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8DD3:
test    byte ptr ds:dword_77E8F8, 10h
jz      def_4C8DB1      ; jumptable 004C8DB1 default case
mov     byte ptr [ecx+9], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8DE8:             ; jumptable 004C8DB1 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4C8DB1      ; jumptable 004C8DB1 default case
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
and     byte ptr ds:dword_77E8F8, 0EFh
or      ds:byte_5F8421, 40h
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8E16:             ; jumptable 004C8DB1 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C8DB1 ; jumptable 004C8DB1 default case
and     ds:byte_5F8421, 0BFh
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4C8E2E:             ; jumptable 004C8DB1 case 3
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C8E42
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C8E42:
mov     dl, [ecx+0Eh]
dec     dl
mov     [ecx+0Eh], dl
jnz     short def_4C8DB1 ; jumptable 004C8DB1 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538498
call    sub_42C443
mov     edx, 10060100h
call    sub_4A7AE1
mov     eax, offset unk_5384C0
call    sub_42C443
mov     edx, 10060102h
call    sub_4A7AE1
mov     byte ptr [ecx+8], 2

def_4C8DB1:             ; jumptable 004C8DB1 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8D9C endp




sub_4C8E8A proc near
push    ebx
push    edx
mov     edx, [eax+54h]
mov     bl, [edx+8]
mov     [eax+8], bl
mov     bl, [edx+0Eh]
mov     [eax+0Eh], bl
mov     edx, [edx+50h]
mov     [eax+50h], edx
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_4C8EAD
and     byte ptr [eax], 0FDh
pop     edx
pop     ebx
retn

loc_4C8EAD:
or      byte ptr [eax], 2
pop     edx
pop     ebx
retn
sub_4C8E8A endp




sub_4C8EB3 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 1
jb      short loc_4C8EC0
jbe     short loc_4C8EDD
pop     edx
retn

loc_4C8EC0:
test    dl, dl
jnz     short loc_4C8EEA
cmp     ds:byte_560BE5, 21h ; '!'
jnz     short loc_4C8EEA
cmp     ds:dword_560BEC, 0
jnz     short loc_4C8EEA
inc     dl
mov     [eax+9], dl
pop     edx
retn

loc_4C8EDD:
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     short loc_4C8EEA
inc     byte ptr [eax+9]

loc_4C8EEA:
pop     edx
retn
sub_4C8EB3 endp



; Attributes: thunk

sub_4C8EEC proc near
jmp     sub_4DE477
sub_4C8EEC endp




; int __thiscall sub_4C8EF1(int)
sub_4C8EF1 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx             ; int
push    ecx             ; int
push    edx             ; float
push    edi             ; int
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF184
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     [esp+20h+var_20], eax ; int
mov     edx, 1000h
mov     [esp+20h+var_1C], edx ; int
mov     [esp+20h+var_18], edx ; int
xor     edi, edi
mov     [esp+20h+var_14], edi ; int
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4C8F36
xor     eax, eax
jmp     short loc_4C8F3B

loc_4C8F36:
mov     eax, 800h

loc_4C8F3B:
mov     edx, ebx
call    sub_4EF50D
add     esp, 10h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8EF1 endp




sub_4C8F4A proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     byte ptr [ecx+0Eh], 20h ; ' '
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
retn
sub_4C8F4A endp




sub_4C8F7C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
call    sub_4DE227
mov     ecx, eax
test    eax, eax
jz      short loc_4C8FC7
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 36h ; '6'
mov     byte ptr [eax+3], 5
cmp     byte ptr [edx+3], 4
jz      short loc_4C8FA6
mov     bx, [edx+48h]
add     bh, 3
jmp     short loc_4C8FAD

loc_4C8FA6:
mov     bx, [edx+48h]
add     bh, 2

loc_4C8FAD:
mov     [eax+48h], bx
mov     ax, [edx+4Ah]
mov     [ecx+4Ah], ax
mov     ax, [edx+4Ch]
mov     [ecx+4Ch], ax
mov     [ecx+54h], edx
mov     [edx+54h], ecx

loc_4C8FC7:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8F7C endp




sub_4C8FCB proc near

var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_64= dword ptr -64h
var_5C= dword ptr -5Ch
var_54= dword ptr -54h
var_4C= dword ptr -4Ch
var_44= dword ptr -44h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    edi
push    ebp
sub     esp, 90h
mov     ecx, eax
cmp     byte ptr [eax+3], 4
jz      short loc_4C8FE5
mov     eax, 300h
jmp     short loc_4C8FEA

loc_4C8FE5:
mov     eax, 200h

loc_4C8FEA:
mov     [esp+0A4h+var_24], ax
xor     edx, edx
mov     [esp+0A4h+var_22], dx
mov     [esp+0A4h+var_20], dx
mov     eax, esp
call    sub_4EF1AB
mov     edx, esp
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4C9017
xor     eax, eax
jmp     short loc_4C901C

loc_4C9017:
mov     eax, 800h

loc_4C901C:
call    sub_4EF50D
lea     ebx, [esp+0A4h+var_74]
lea     edx, [esp+0A4h+var_24]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ecx+46h]
sar     eax, 10h
add     [esp+0A4h+var_74], eax
mov     eax, [esp+0A4h+var_74]
mov     [esp+0A4h+var_24], ax
mov     eax, [ecx+48h]
sar     eax, 10h
add     [esp+0A4h+var_70], eax
mov     eax, [esp+0A4h+var_70]
mov     [esp+0A4h+var_22], ax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     [esp+0A4h+var_6C], eax
mov     eax, [esp+0A4h+var_6C]
mov     [esp+0A4h+var_20], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, (offset dword_5F8376+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A4h+var_54]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A4h+var_34]
call    sub_4F0003
lea     eax, [esp+0A4h+var_24]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A4h+var_64]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A4h+var_2C]
call    sub_4F0003
lea     eax, [ecx+48h]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+0A4h+var_44]
call    sub_4EFFB8
call    sub_4EFDC9
lea     eax, [esp+0A4h+var_1C]
call    sub_4F0003
mov     ebx, [esp+0A4h+var_44]
mov     edi, [esp+0A4h+var_64]
sub     ebx, edi
jz      short loc_4C916F
mov     edx, [esp+0A4h+var_3C]
mov     ebp, [esp+0A4h+var_5C]
sub     edx, ebp
mov     eax, [esp+0A4h+var_54]
sub     eax, edi
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebp
cmp     eax, [esp+0A4h+var_4C]
jge     short loc_4C916F
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_2C]
fnstsw  ax
sahf
jnb     short loc_4C9149
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_1C]
fnstsw  ax
sahf
ja      short loc_4C9166

loc_4C9149:
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_2C]
fnstsw  ax
sahf
jbe     short loc_4C916F
fld     [esp+0A4h+var_34]
fcomp   [esp+0A4h+var_1C]
fnstsw  ax
sahf
jnb     short loc_4C916F

loc_4C9166:
mov     dword ptr [ecx+50h], 2404040h
jmp     short loc_4C9176

loc_4C916F:
mov     dword ptr [ecx+50h], offset unk_808080

loc_4C9176:
add     esp, 90h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C8FCB endp




sub_4C9182 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C918B[ecx*4]
mov     eax, edx
call    sub_4C95CA
pop     edx
pop     ecx
retn
sub_4C9182 endp




sub_4C919C proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C91A2[edx*4]
pop     edx
retn
sub_4C919C endp




sub_4C91AB proc near
push    edx
mov     edx, eax
mov     dword ptr [eax+54h], 0
call    sub_4C965B
mov     byte ptr [edx+0Ch], 0
mov     byte ptr [edx+0Dh], 0
mov     eax, edx
call    sub_4C967F
pop     edx
retn
sub_4C91AB endp




sub_4C91CB proc near
push    edx
mov     edx, eax
call    sub_4C965B
mov     byte ptr [edx+0Ch], 1
mov     byte ptr [edx+0Dh], 1
pop     edx
retn
sub_4C91CB endp




sub_4C91DD proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jnz     short loc_4C920B
mov     eax, 58h ; 'X'
call    sub_47E888
test    eax, eax
jnz     short loc_4C920B
mov     eax, 6Ch ; 'l'
call    sub_47E888
test    eax, eax
jz      short loc_4C9212

loc_4C920B:
mov     byte ptr [ecx+8], 2
pop     edx
pop     ecx
retn

loc_4C9212:
mov     [ecx+54h], eax
or      byte ptr [ecx], 6
mov     byte ptr [ecx+2], 16h
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 37h ; '7'
mov     byte ptr [ecx+3], 2
mov     dword ptr [ecx+50h], 2808080h
mov     eax, ecx
call    sub_4C96BB
xor     dl, dl
jmp     short loc_4C924B

loc_4C9244:
inc     dl
cmp     dl, 0Ch
jge     short loc_4C9267

loc_4C924B:
call    sub_4DE13B
test    eax, eax
jz      short loc_4C9244
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 18h
mov     byte ptr [eax+3], 1
mov     dh, [ecx+1]
mov     [eax+0Ch], dh
jmp     short loc_4C9244

loc_4C9267:
mov     dword ptr [ecx+58h], 0

loc_4C926E:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
retn
sub_4C91DD endp




sub_4C9281 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     byte ptr [ecx+2], 16h
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 37h ; '7'
mov     byte ptr [ecx+3], 3
mov     dword ptr [ecx+50h], 2C808080h
jmp     short loc_4C9267
sub_4C9281 endp




sub_4C92AF proc near
push    edx
mov     edx, eax
call    sub_4C965B
mov     byte ptr [edx+0Ch], 2
cmp     byte ptr [edx+3], 4
jnz     short loc_4C92C8
xor     eax, eax
mov     [edx+0Dh], al
pop     edx
retn

loc_4C92C8:
mov     eax, 1
mov     [edx+0Dh], al
pop     edx
retn
sub_4C92AF endp




sub_4C92D2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C92D8[edx*4]
pop     edx
retn
sub_4C92D2 endp

align 2
jpt_4C932E dd offset loc_4C9335 ; jump table for switch statement
dd offset loc_4C9355
dd offset loc_4C936D
dd offset loc_4C9389
dd offset loc_4C9391
dd offset loc_4C93A2
dd offset loc_4C9422
dd offset loc_4C9487
dd offset loc_4C94E4
dd offset loc_4C94F1
dd offset loc_4C9518
dd offset loc_4C9563



sub_4C9312 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_4C932E      ; jumptable 004C932E default case
and     eax, 0FFh
jmp     jpt_4C932E[eax*4] ; switch jump

loc_4C9335:             ; jumptable 004C932E case 0
mov     eax, 57h ; 'W'
call    sub_47E888
test    eax, eax
jz      short loc_4C934C

loc_4C9343:
mov     byte ptr [ecx+9], 0FFh
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C934C:
inc     byte ptr [ecx+9]

def_4C932E:             ; jumptable 004C932E default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C9355:             ; jumptable 004C932E case 1
mov     ah, byte ptr ds:dword_77E8F8
test    ah, 20h
jz      short def_4C932E ; jumptable 004C932E default case
mov     dl, ah
and     dl, 0DFh
mov     byte ptr ds:dword_77E8F8, dl
jmp     short loc_4C934C

loc_4C936D:             ; jumptable 004C932E case 2
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      short def_4C932E ; jumptable 004C932E default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
jmp     short loc_4C934C

loc_4C9389:             ; jumptable 004C932E case 3
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_4C934C

loc_4C9391:             ; jumptable 004C932E case 4
or      ds:byte_5F8421, 20h
xor     eax, eax
mov     ds:word_57096A, ax
jmp     short loc_4C934C

loc_4C93A2:             ; jumptable 004C932E case 5
cmp     byte ptr [ecx+0Eh], 20h ; ' '
jnz     short loc_4C93B6
xor     ebx, ebx
xor     edx, edx
mov     eax, 105h
call    sub_4D89E4

loc_4C93B6:
mov     bl, [ecx+0Eh]
dec     bl
mov     [ecx+0Eh], bl
jnz     short def_4C932E ; jumptable 004C932E default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 185h
call    sub_4D89E4
mov     eax, offset unk_538504
call    sub_42C443
mov     edx, 10060400h
call    sub_4A7AE1
mov     eax, offset unk_53850C
call    sub_42C443
mov     edx, 10060500h
call    sub_4A7AE1
mov     byte ptr [ecx+0Fh], 0
mov     bx, [esi+56h]
cmp     bx, 800h
jge     short loc_4C940E
mov     byte ptr [ecx+9], 6
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C940E:
jle     short loc_4C9419
mov     byte ptr [ecx+9], 7
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C9419:
mov     byte ptr [ecx+9], 8
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C9422:             ; jumptable 004C932E case 6
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ax, 800h
jle     short loc_4C9476
xor     esi, esi
mov     ds:word_57096A, si
or      ds:byte_5F8421, 10h
mov     edi, (offset dword_5F889A+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F888C
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, di
jmp     short loc_4C9419

loc_4C9476:
mov     ax, ds:word_5F848E

loc_4C947C:
mov     ds:word_57096A, ax
jmp     def_4C932E      ; jumptable 004C932E default case

loc_4C9487:             ; jumptable 004C932E case 7
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
cmp     ax, 800h
jge     short loc_4C94DC
xor     edi, edi
mov     ds:word_57096A, di
or      ds:byte_5F8421, 10h
mov     edi, (offset dword_5F889A+2)
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset dword_5F888C
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
jmp     loc_4C9419

loc_4C94DC:
mov     ax, ds:word_5F848C
jmp     short loc_4C947C

loc_4C94E4:             ; jumptable 004C932E case 8
mov     eax, 10h
call    sub_4D9040
inc     byte ptr [ecx+9]

loc_4C94F1:             ; jumptable 004C932E case 9
mov     ax, [esi+124h]
mov     ds:word_57096A, ax
cmp     word ptr [esi+18h], 300h
jle     def_4C932E      ; jumptable 004C932E default case
xor     esi, esi
mov     ds:word_57096A, si
jmp     loc_4C934C

loc_4C9518:             ; jumptable 004C932E case 10
xor     edx, edx
mov     ds:word_57096A, dx
mov     dl, [ecx+0Fh]
inc     dl
mov     [ecx+0Fh], dl
cmp     dl, 0Fh
jnz     def_4C932E      ; jumptable 004C932E default case
mov     byte ptr [ecx+0Eh], 20h ; ' '
mov     eax, offset unk_538504
call    sub_42C443
mov     edx, 60400h
call    sub_4A7AE1
mov     eax, offset unk_53850C
call    sub_42C443
mov     edx, 60500h
call    sub_4A7AE1
jmp     loc_4C934C

loc_4C9563:             ; jumptable 004C932E case 11
cmp     ds:byte_77EAB8, 0
jnz     def_4C932E      ; jumptable 004C932E default case
mov     eax, 57h ; 'W'
call    sub_47E8B8
jmp     loc_4C9343
sub_4C9312 endp




sub_4C957F proc near
push    edx
mov     edx, [eax+54h]
mov     dl, [edx+8]
mov     [eax+8], dl
mov     edx, [eax+54h]
mov     dl, [edx+0Eh]
mov     [eax+0Eh], dl
test    dl, dl
jnz     short loc_4C959B
and     byte ptr [eax], 0FDh
pop     edx
retn

loc_4C959B:
or      byte ptr [eax], 2
pop     edx
retn
sub_4C957F endp




sub_4C95A0 proc near
push    ecx
push    edx
mov     edx, [eax+58h]
add     edx, 8
mov     [eax+58h], edx
mov     ecx, edx
and     ecx, 0FFFh
mov     [eax+58h], ecx
pop     edx
pop     ecx
retn
sub_4C95A0 endp




sub_4C95B9 proc near
push    edx
mov     edx, [eax+54h]
mov     edx, [edx+58h]
mov     [eax+58h], edx
pop     edx
sub_4C95B9 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_102]


; Attributes: thunk

sub_4C95C5 proc near
jmp     sub_4DE477
sub_4C95C5 endp




; int __fastcall sub_4C95CA(int, int)
sub_4C95CA proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    edi             ; float
push    ebp             ; int
sub     esp, 10h
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF184
mov     ah, [ecx+3]
cmp     ah, 2
jz      short loc_4C95EB
cmp     ah, 3
jnz     short loc_4C9614

loc_4C95EB:
mov     ebp, 600h
mov     [esp+24h+var_1C], ebp
mov     [esp+24h+var_20], ebp
mov     [esp+24h+var_24], ebp
xor     ebx, ebx
mov     [esp+24h+var_18], ebx
lea     ebx, [ecx+18h]
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+58h]
mov     edx, ebx
jmp     short loc_4C964D

loc_4C9614:
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 7
mov     [esp+24h+var_24], eax ; int
mov     edx, 1000h
mov     [esp+24h+var_20], edx ; int
mov     [esp+24h+var_1C], edx ; int
xor     edi, edi
mov     [esp+24h+var_18], edi ; int
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     edx, ebx
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4C9648
xor     eax, eax
jmp     short loc_4C964D

loc_4C9648:
mov     eax, 800h

loc_4C964D:
call    sub_4EF50D
add     esp, 10h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C95CA endp




sub_4C965B proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     byte ptr [ecx+0Eh], 20h ; ' '
jmp     loc_4C926E
sub_4C965B endp




sub_4C967F proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE227
test    eax, eax
jz      short loc_4C96B8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     byte ptr [eax+3], 1
mov     bx, [edx+48h]
add     bh, 4
mov     [eax+48h], bx
mov     bx, [edx+4Ah]
mov     [eax+4Ah], bx
mov     bx, [edx+4Ch]
mov     [eax+4Ch], bx
mov     [eax+54h], edx
mov     [edx+54h], eax

loc_4C96B8:
pop     edx
pop     ebx
retn
sub_4C967F endp




sub_4C96BB proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE227
test    eax, eax
jz      short loc_4C96F1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 37h ; '7'
mov     byte ptr [eax+3], 3
mov     bx, [edx+48h]
mov     [eax+48h], bx
mov     bx, [edx+4Ah]
mov     [eax+4Ah], bx
mov     bx, [edx+4Ch]
mov     [eax+4Ch], bx
mov     [eax+54h], edx
mov     [edx+54h], eax

loc_4C96F1:
pop     edx
pop     ebx
retn
sub_4C96BB endp




sub_4C96F4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C96FA[edx*4]
pop     edx
retn
sub_4C96F4 endp




sub_4C9703 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx             ; int
push    ecx             ; float
push    edx             ; int
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     ebx, [ecx+18h]
mov     eax, ebx
call    sub_4EF184
mov     edx, 200h
mov     [esp+1Ch+var_14], edx ; int
mov     [esp+1Ch+var_18], edx ; int
mov     [esp+1Ch+var_1C], edx ; int
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 5
mov     edx, ebx
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
sub_4C9703 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_103]



sub_4C976E proc near
push    ecx
push    edx
mov     edx, eax        ; int
xor     ecx, ecx
mov     cl, [eax+8]     ; int
call    ds:funcs_4C9777[ecx*4]
mov     dword ptr [edx+58h], 0
pop     edx
pop     ecx
retn
sub_4C976E endp




; int __fastcall sub_4C9788(int, int)
sub_4C9788 proc near
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
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_538524
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C9788 endp




sub_4C97D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
call    sub_432697
cmp     esi, ds:dword_5F84E8
jnz     short loc_4C97FB
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_4C97FB:
push    80h
push    0
push    4000000h
lea     eax, [esi+58h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C97D7 endp




sub_4C982A proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_4C983E
cmp     al, 1
jz      short loc_4C9855
jmp     short loc_4C988D

loc_4C983E:
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]

loc_4C9855:
xor     edx, edx
mov     [esp+20h+var_10], dx
mov     [esp+20h+var_E], dx
mov     [esp+20h+var_C], dx
add     ecx, 18h        ; int
mov     edx, ecx
lea     eax, [esp+20h+var_10]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+20h+var_20], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_18], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689

loc_4C988D:
add     esp, 18h
pop     edx
pop     ecx
retn
sub_4C982A endp

unk_4C9893 db    0
dword_4C9894 dd 3 dup(20h), 53000000h, 57565251h, 8910EC83h
dd 0BEE789C1h
dd offset unk_4C9893
movsd
movsd
movsd
movsd
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C98BD[edx*4]
mov     edx, [ecx+9]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4C98EE
mov     edx, [ecx+0Bh]
sar     edx, 18h
mov     ebx, 4
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
test    edx, edx
jnz     short loc_4C98EB
mov     dl, [ecx+0Ch]
add     [ecx+0Dh], dl

loc_4C98EB:
inc     byte ptr [ecx+0Eh]

loc_4C98EE:
movsx   dx, byte ptr [ecx+0Dh]
add     [ecx+4Ah], dx
add     ecx, 18h
mov     eax, ecx
call    sub_4EF184
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     edx, ecx
mov     eax, 800h
call    sub_4EF50D
add     esp, 10h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_4C991F proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     byte ptr [ecx+2], 29h ; ')'
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 3Bh ; ';'
mov     dword ptr [ecx+50h], offset unk_808080
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 4
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
retn
sub_4C991F endp




sub_4C9961 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+9]
mov     edx, offset dword_560BDC
call    ds:funcs_4C996D[ecx*4]
pop     edx
pop     ecx
retn
sub_4C9961 endp




sub_4C9977 proc near
mov     dl, [eax+0Fh]
cmp     dl, 66h ; 'f'
jnz     short loc_4C998B
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Ch], 0FFh
inc     byte ptr [eax+0Fh]
retn

loc_4C998B:
cmp     dl, 76h ; 'v'
jnz     short loc_4C999F
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ah], 0

loc_4C999F:
inc     byte ptr [eax+0Fh]
retn
sub_4C9977 endp




sub_4C99A3 proc near
push    ebx
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4C99B0
jbe     short loc_4C99D4
pop     ebx
retn

loc_4C99B0:
test    bl, bl
jnz     short loc_4C99E4
cmp     byte ptr [edx+9], 0Fh
jnz     short loc_4C99E4
cmp     dword ptr [edx+10h], 258h
jnz     short loc_4C99E4
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Ch], 0FFh
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+0Ah]
pop     ebx
retn

loc_4C99D4:
cmp     dword ptr [edx+10h], 268h
jnz     short loc_4C99E4
mov     byte ptr [eax+0Ch], 0
inc     byte ptr [eax+0Ah]

loc_4C99E4:
pop     ebx
retn
sub_4C99A3 endp


loc_4C99E6:
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C99EC[edx*4]
pop     edx
retn



sub_4C99F5 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 30h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset byte_538540
add     eax, 10h
mov     [ecx+78h], eax
xor     edx, edx
mov     word ptr [esp+44h+var_24], dx
mov     word ptr [esp+44h+var_24+2], dx
mov     [esp+44h+var_20], 0F000h
lea     eax, [ecx+8Ch]
mov     ebx, esp
lea     edx, [esp+44h+var_24]
call    sub_4EF1FB
lea     edx, [esp+44h+var_34]
mov     eax, esp
call    sub_4EF886
mov     eax, [esp+44h+var_34]
mov     word ptr [esp+44h+var_24], ax
mov     eax, [esp+44h+var_30]
mov     word ptr [esp+44h+var_24+2], ax
mov     eax, [esp+44h+var_2C]
mov     [esp+44h+var_20], ax
lea     edi, [ecx+0DCh]
lea     esi, [esp+44h+var_24]
movsd
movsd
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, word ptr ds:dword_538542[eax*4]
mov     [ecx+6Eh], ax
cwde
mov     edx, [esp+1Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+44h+var_24]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+44h+var_24+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_538542[eax*4]
sar     eax, 10h
mov     edx, [esp+1Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+4Ch], dx
mov     edx, [esp+44h+var_24]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+4Eh], dx
mov     edx, [esp+44h+var_24+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+50h], ax
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_538540[eax*4]
mov     [ecx+2], al
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset byte_538540
lea     edx, [eax+1]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 0
lea     eax, [ecx+88h]
mov     dx, [ecx+14h]
mov     [eax+34h], dx
mov     dx, [ecx+16h]
mov     [eax+36h], dx
mov     dx, [ecx+18h]
mov     [eax+38h], dx
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+1Ch], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+24h], edx
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+0E4h]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [esp+44h+var_1C]
lea     esi, [ecx+0E4h]
movsd
movsd
lea     edi, [ecx+0ECh]
lea     esi, [esp+44h+var_1C]
movsd
movsd
lea     edi, [esp+44h+var_1C]
lea     esi, [ecx+0ECh]
movsd
movsd
lea     edi, [ecx+0F4h]
lea     esi, [esp+44h+var_1C]
movsd
movsd
lea     edi, [esp+44h+var_1C]
lea     esi, [ecx+0F4h]
movsd
movsd
lea     edi, [ecx+0FCh]
lea     esi, [esp+44h+var_1C]
movsd
movsd
mov     dword ptr [eax+3Ch], offset unk_808080
inc     byte ptr [ecx+8]
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     al, ds:byte_538560[eax*4]
mov     [ecx+0Bh], al
mov     eax, ecx
call    sub_4C9F90
xor     edx, edx
mov     dl, [ecx+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_53855C[eax*4]
mov     eax, ecx
call    ds:funcs_4C9C73[edx*4]
add     esp, 30h

loc_4C9C7D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4C99F5 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_25]



sub_4C9C83 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= byte ptr -28h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
xor     edx, edx
mov     dl, [eax+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_538562[eax*4]
mov     eax, ebp
call    sub_4EE66E
test    eax, eax
jz      short loc_4C9D25
cmp     eax, 7FFFh
jnz     short loc_4C9CF6
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, [ebp+0D4h]
test    ds:dword_538564[eax], edx
jz      short loc_4C9D25
xor     edx, edx
mov     dl, ds:byte_53855C[eax]
mov     eax, ebp
call    ds:funcs_4C9CE6[edx*4]
mov     eax, ebp
call    sub_4DE371
jmp     short loc_4C9D25

loc_4C9CF6:
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_53855C[eax*4]
mov     eax, ebp
call    ds:funcs_4C9CE6[edx*4]
mov     eax, ebp
call    sub_4DE371
jmp     loc_4C9F45

loc_4C9D25:
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+0FCh]
lea     esi, [ebp+0F4h]
movsd
movsd
lea     edi, [ebp+0F4h]
lea     esi, [ebp+0ECh]
movsd
movsd
lea     edi, [ebp+0ECh]
lea     esi, [ebp+0E4h]
movsd
movsd
lea     edi, [ebp+0E4h]
lea     esi, [ebp+14h]
movsd
movsd
mov     al, [ebp+0Bh]
mov     ah, al
dec     ah
mov     [ebp+0Bh], ah
test    al, al
jbe     loc_4C9CF6
mov     eax, [ebp+0C8h]
movsx   edx, word ptr [eax]
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_38], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_34], edx
mov     eax, [ebp+0C8h]
mov     edx, [eax+2]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+38h+var_30], edx
mov     eax, [esp+38h+var_38]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4C9DED
mov     eax, [esp+38h+var_34]
add     eax, 687Eh
cmp     eax, 0D0FCh
ja      short loc_4C9DED
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
jbe     short loc_4C9DFB

loc_4C9DED:
sar     [esp+38h+var_38], 2
sar     [esp+38h+var_34], 2
sar     [esp+38h+var_30], 2

loc_4C9DFB:
lea     edx, [esp+38h+var_28]
mov     eax, esp
call    sub_4EF932
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
mov     ecx, ds:dword_53854C[eax*4]
mov     ebx, ds:dword_538548[eax*4]
lea     edx, [ebp+0DCh]
lea     eax, [esp+38h+var_28]
lea     esi, [esp+38h+var_20]
call    sub_4DFFB5
lea     edi, [ebp+0DCh]
lea     esi, [esp+38h+var_20]
movsd
movsd
mov     edx, [ebp+6Ch]
sar     edx, 10h
mov     eax, [esp+16h]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+44h], ax
mov     eax, [esp+38h+var_20]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+46h], ax
mov     eax, [esp+38h+var_20+2]
sar     eax, 10h
imul    eax, edx
sar     eax, 4
mov     [ebp+48h], ax
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_538542[eax]
sar     edx, 10h
mov     ecx, [ebp+6Ch]
sar     ecx, 10h
add     edx, ecx
xor     ecx, ecx
mov     cx, ds:word_538546[eax]
cmp     edx, ecx
jl      short loc_4C9EB5
mov     [ebp+6Eh], cx
jmp     short loc_4C9EB9

loc_4C9EB5:
mov     [ebp+6Eh], dx

loc_4C9EB9:
mov     eax, ebp
call    sub_4C9FF2
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 8
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 8
add     [ebp+20h], eax
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 8
add     [ebp+24h], eax
lea     eax, [ebp+88h]
mov     edx, [ebp+1Ch]
sar     edx, 10h
mov     [ebp+14h], dx
mov     [eax+34h], dx
mov     edx, [ebp+20h]
sar     edx, 10h
mov     [ebp+16h], dx
mov     [eax+36h], dx
mov     edx, [ebp+24h]
sar     edx, 10h
mov     [ebp+18h], dx
mov     [eax+38h], dx
mov     eax, ebp
call    sub_4C9F90
mov     eax, ebp
call    sub_4CA0AA
xor     edx, edx
mov     dl, [ebp+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_53855C[eax*4]
mov     eax, ebp
call    ds:funcs_4C9F3E[edx*4]

loc_4C9F45:
add     esp, 20h
pop     ebp
jmp     loc_4C9C7D
sub_4C9C83 endp




sub_4C9F4E proc near
push    edx
lea     edx, [eax+14h]
mov     eax, 144h

loc_4C9F57:
call    sub_4D8BC3
pop     edx
sub_4C9F4E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_26]



sub_4C9F5E proc near
push    edx
mov     byte ptr [eax+0Ch], 0Ah
lea     edx, [eax+14h]
mov     eax, 141h
jmp     short loc_4C9F57
sub_4C9F5E endp




sub_4C9F6D proc near
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4C9F8D
cmp     byte ptr [ecx+0Ch], 1
jnz     short loc_4C9F8A
lea     edx, [ecx+14h]
mov     eax, 142h
call    sub_4D8BC3

loc_4C9F8A:
dec     byte ptr [ecx+0Ch]

loc_4C9F8D:
pop     edx
pop     ecx
retn
sub_4C9F6D endp




sub_4C9F90 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
push    80h
push    0
xor     edx, edx
mov     dl, [eax+3]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     dl, ds:byte_538561[eax*4]
or      edx, 40A0000h
push    edx
lea     edx, [esi+0D4h]
push    edx
xor     edx, edx
mov     dl, [esi+1]
push    edx
xor     edx, edx
mov     dl, ds:byte_53855F[eax*4]
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC
mov     dword ptr [esi+0D4h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C9F90 endp




sub_4C9FF2 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     ebx, [eax+42h]
sar     ebx, 10h
mov     esi, [eax+46h]
sar     esi, 10h
mov     eax, ebx
imul    eax, ebx
mov     edx, esi
imul    edx, esi
add     eax, edx
call    sub_4EF075
mov     edi, [ecx+44h]
sar     edi, 10h
mov     edx, eax
mov     eax, edi
call    sub_4EF04B
mov     [esp+2Ch+var_1C], ax
mov     edx, esi
mov     eax, ebx
call    sub_4EF04B
add     ah, 8
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
mov     edx, 200h
mov     [esp+2Ch+var_24], edx
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_2C], edx
add     ecx, 8Ch        ; int
mov     edx, ecx
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 18h
jmp     loc_4C9C7D
sub_4C9FF2 endp




sub_4CA077 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4CA0A7
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
mov     bx, [edx+14h]
mov     [eax+48h], bx
mov     bx, [edx+16h]
mov     [eax+4Ah], bx
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_4CA0A7:
pop     edx
pop     ebx
retn
sub_4CA077 endp




sub_4CA0AA proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    eax
xor     edx, edx

loc_4CA0B2:
