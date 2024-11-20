loc_445094:
mov     edi, offset unk_559E08
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset unk_559E10
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     ax, [ebp+56h]
mov     [ebp+64h], ax
lea     edi, [ebp+14h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     ecx, [ebp+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+1Ch], ecx
mov     ecx, [ebp+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+20h], ecx
mov     ecx, [ebp+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [ebp+24h], ecx
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Ch]
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+4Ch]
mov     ecx, ds:dword_51512A[ecx*2]
sar     ecx, 10h
mov     ebx, 0FFFFFE00h
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+4Ch]
shl     ecx, 2
mov     edx, [esp+1Ch+var_1C]
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+14h]
mov     [ecx+1Ch], ax
mov     ecx, [edx+4Ch]
shl     ecx, 2
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+16h]
mov     [ecx+1Eh], ax
mov     ecx, [edx+4Ch]
shl     ecx, 2
add     ecx, edx
mov     ecx, [ecx+44h]
mov     ax, [ebp+18h]
mov     [ecx+20h], ax
lea     edi, [ebp+14h]
mov     esi, offset unk_559E08
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset unk_559E10
movsd
movsd
movsd
movsd
mov     ax, [ebp+64h]
mov     [ebp+56h], ax
mov     edi, [edx+4Ch]
inc     edi
mov     [edx+4Ch], edi
cmp     edi, 2
jl      loc_445094
test    byte ptr [ebp+0], 2
jz      short loc_4451D3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_4451D3
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
add     word ptr [eax+0Eh], 1Eh
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 4880000h
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

loc_4451D3:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0
sub_444FDB endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_445357
;   ADDITIONAL PARENT FUNCTION sub_44569A
;   ADDITIONAL PARENT FUNCTION sub_446357

def_446381:             ; jumptable 00446381 default case
add     esp, 4

loc_4451E0:
pop     ebp
jmp     def_445C30      ; jumptable 00445C30 default case
; END OF FUNCTION CHUNK FOR sub_445357 ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_4451E6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 26h ; '&'
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+0Fh]
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     word ptr [esi+34h], 0
mov     word ptr [esi+36h], 0
mov     word ptr [esi+3Ch], 0
mov     word ptr [esi+38h], 4
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esi+40h], eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esi+44h], eax
mov     eax, [esi+40h]
mov     eax, [eax+0Bh]
sar     eax, 18h
call    sub_4E1877
mov     [esi+48h], eax
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
mov     dword ptr [ecx+78h], offset unk_515120
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4451E6 endp

db 90h
jpt_445426 dd offset loc_44545A ; jump table for switch statement
dd offset def_445426
dd offset def_445426
dd offset loc_44545A
dd offset loc_445448
dd offset def_445426
dd offset loc_44542D
dd offset loc_445436
dd offset loc_44543F
dd offset loc_44543F
dd offset def_445426
dd offset loc_44545A
dd offset loc_445451
dd offset loc_44545A



sub_445357 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+3D8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
xor     edx, edx
mov     dx, [ebp+3Ch]
add     ebx, edx
and     ebx, 0FFFh
lea     eax, [ebp+24h]
mov     edx, [esp+1Ch+var_1C]
call    sub_4E19D8
test    eax, eax
jz      short loc_44538D
or      byte ptr [ebp+1], 1
jmp     short loc_445391

loc_44538D:
and     byte ptr [ebp+1], 0FEh

loc_445391:
test    byte ptr [ebp+0], 2
jz      short loc_44539F
mov     eax, [esp+1Ch+var_1C]
call    sub_446779

loc_44539F:
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+54h]
sar     edx, 10h
xor     eax, eax
mov     ax, [ebp+3Ch]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
mov     eax, [esp+1Ch+var_1C]
add     eax, 14h
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     [edx+64h], ax
xor     edx, edx
mov     dx, [ebp+3Ch]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+62h]
sar     eax, 10h
add     eax, edx
add     eax, 500h
and     eax, 0FFFh
cmp     eax, 0A00h
jge     short loc_445402
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+64h]
add     edx, eax
mov     [ebp+3Ch], dx

loc_445402:
xor     edx, edx
mov     eax, [esp+1Ch+var_1C]
mov     dl, [eax+9]
call    ds:funcs_44540A[edx*4]
test    byte ptr [ebp+0], 1
jz      short loc_445474
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+9]
cmp     al, 0Dh         ; switch 14 cases
ja      short def_445426 ; jumptable 00445426 default case, cases 1,2,5,10
and     eax, 0FFh
jmp     jpt_445426[eax*4] ; switch jump

loc_44542D:             ; jumptable 00445426 case 6
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 8
jmp     short loc_445467

loc_445436:             ; jumptable 00445426 case 7
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 9
jmp     short loc_445467

loc_44543F:             ; jumptable 00445426 cases 8,9
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 4
jmp     short loc_445467

loc_445448:             ; jumptable 00445426 case 4
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 1
jmp     short loc_445467

loc_445451:             ; jumptable 00445426 case 12
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 3
jmp     short loc_445467

loc_44545A:             ; jumptable 00445426 cases 0,3,11,13
test    byte ptr [ebp+1], 1
jnz     short loc_44543F ; jumptable 00445426 cases 8,9

def_445426:             ; jumptable 00445426 default case, cases 1,2,5,10
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+9], 0

loc_445467:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
and     byte ptr [ebp+0], 0FEh

loc_445474:
mov     bx, [ebp+34h]
test    bx, bx
jz      short loc_445484
mov     ecx, ebx
dec     ecx
mov     [ebp+34h], cx

loc_445484:
mov     si, [ebp+0Ah]
test    si, si
jz      short loc_445494
mov     edi, esi
dec     edi
mov     [ebp+0Ah], di

loc_445494:
mov     ax, [ebp+36h]
test    ax, ax
jz      short loc_4454A4
mov     edx, eax
dec     edx
mov     [ebp+36h], dx

loc_4454A4:
test    byte ptr [ebp+1], 8
jz      def_446381      ; jumptable 00446381 default case
mov     bx, [ebp+38h]
dec     ebx
mov     [ebp+38h], bx
test    bx, bx
jge     def_446381      ; jumptable 00446381 default case
call    sub_4DE13B
mov     [ebp+50h], eax
test    eax, eax
jz      short loc_4454EB
mov     byte ptr [eax], 5
mov     eax, [ebp+50h]
mov     byte ptr [eax+2], 80h
mov     eax, [ebp+50h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [ebp+50h]
lea     edi, [esi+48h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd

loc_4454EB:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE2F6
mov     eax, [ebp+44h]
call    sub_4DE3EA
mov     eax, [ebp+48h]
call    sub_4DE3EA
mov     ebp, [ebp+40h]
or      byte ptr [ebp+0Fh], 2
mov     ebp, [esp+1Ch+var_1C]
add     ebp, 190h
xor     ebx, ebx
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4AFA70
mov     edx, ebp
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_446381      ; jumptable 00446381 default case
sub_445357 endp




sub_445530 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+3D8h]
test    byte ptr [edx], 2
jz      short loc_445549
mov     eax, ecx
call    sub_446779

loc_445549:
mov     ax, [edx+3Ch]
sub     eax, 80h
mov     si, [edx+2]
and     esi, 0FFh
sub     eax, esi
and     ah, 0Fh
mov     [edx+3Ch], ax
movzx   esi, byte ptr [ecx+9]
mov     eax, ecx
call    ds:funcs_44540A[esi*4]
test    byte ptr [edx], 1
jz      short loc_4455A0
mov     al, [ecx+9]
cmp     al, 6
jb      short loc_445593
jbe     short loc_445587
cmp     al, 7
jz      short loc_44558D
jmp     short loc_445593

loc_445587:
mov     byte ptr [ecx+9], 8
jmp     short loc_445597

loc_44558D:
mov     byte ptr [ecx+9], 9
jmp     short loc_445597

loc_445593:
mov     byte ptr [ecx+9], 2

loc_445597:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_4455A0:
mov     bx, [edx+0Ah]
test    bx, bx
jz      short loc_4455B0
mov     esi, ebx
dec     esi
mov     [edx+0Ah], si

loc_4455B0:
test    byte ptr [edx+1], 8
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     di, [edx+36h]
dec     edi
mov     [edx+36h], di
test    di, di
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
call    sub_4DE13B
mov     [edx+50h], eax
mov     esi, eax
test    eax, eax
jz      short loc_4455F6
mov     byte ptr [eax], 5
mov     esi, [edx+50h]
mov     byte ptr [esi+2], 80h
mov     eax, [edx+50h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [edx+50h]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4455F6:
mov     eax, ecx
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE3EA
mov     eax, [edx+48h]
call    sub_4DE3EA
mov     edx, [edx+40h]
or      byte ptr [edx+0Fh], 2
lea     esi, [ecx+190h]
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_4AFA70
mov     edx, esi
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_445C30      ; jumptable 00445C30 default case
sub_445530 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_445639 proc near
push    edx
lea     edx, [eax+3D8h]
call    sub_4DE2F6
mov     eax, [edx+44h]
call    sub_4DE3EA
mov     eax, [edx+48h]
call    sub_4DE3EA
pop     edx
retn
sub_445639 endp




sub_445657 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_44566F
cmp     bl, 1
jz      short loc_445686
pop     edx
pop     ebx
retn

loc_44566F:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 1Eh
mov     word ptr [eax+8], 0

loc_445686:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_445697
or      byte ptr [eax], 1

loc_445697:
pop     edx
pop     ebx
retn
sub_445657 endp




sub_44569A proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

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
mov     dword ptr [eax+58h], offset byte_5F8364
test    byte ptr [eax+17h], 2
jz      short loc_4456C0
mov     word ptr [eax+8], 0

loc_4456C0:
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4456D0
cmp     al, 1
jz      short loc_445707
jmp     def_446381      ; jumptable 00446381 default case

loc_4456D0:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0
mov     ax, [eax+2]
xor     ah, ah
and     al, 1Fh
add     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     [edx+36h], ax
cmp     byte ptr [ebp+3], 0
jnz     short loc_445707
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+34h], 12Ch

loc_445707:
cmp     byte ptr [ebp+0A6h], 2
jnz     short loc_44571D
lea     edx, [ebp+14h]
mov     eax, 0B6h
call    sub_4D8BC3

loc_44571D:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+58h]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 10h
call    sub_4DE552
mov     [ebp+64h], ax
mov     ax, [ebp+56h]
add     ax, [ebp+64h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+5Ch], eax
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
jge     short loc_445796
neg     eax

loc_445796:
cmp     eax, 20h ; ' '
jle     short loc_4457B8
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah

loc_4457AD:
mov     word ptr [ebp+0Ah], 0
jmp     def_446381      ; jumptable 00446381 default case

loc_4457B8:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+5Dh], 0Fh
jz      short loc_4457D9
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
jmp     short loc_4457AD

loc_4457D9:
cmp     byte ptr [ebp+3], 0
jnz     short loc_4457F5
mov     bx, [eax+34h]
test    bx, bx
jnz     short loc_4457F5
mov     byte ptr [ebp+9], 4
mov     [ebp+0Ah], bx
jmp     def_446381      ; jumptable 00446381 default case

loc_4457F5:
cmp     dword ptr [ebp+80h], 20000h
jnb     short loc_44582A
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
cmp     byte ptr [ebp+0A4h], 0Fh
jnb     short loc_44581F
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 8
jmp     def_446381      ; jumptable 00446381 default case

loc_44581F:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0F7h
jmp     def_446381      ; jumptable 00446381 default case

loc_44582A:
cmp     byte ptr [ebp+3], 0
jnz     loc_4458A1
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+36h], 0
jnz     short loc_4458A1
push    100h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 100h
call    sub_4DE639
test    eax, eax
jz      short loc_4458A1
mov     eax, ebp
call    sub_446729
test    eax, eax
jbe     short loc_445879
cmp     eax, 1
jz      short loc_44587F
jmp     short loc_4458A1

loc_445879:
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 40h

loc_44587F:
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax+1], 2
cmp     byte ptr [ebp+0A4h], 0Fh
jnb     short loc_44589E
or      byte ptr [eax], 8
jmp     short loc_4458A1

loc_44589E:
and     byte ptr [eax], 0F7h

loc_4458A1:
cmp     byte ptr [ebp+3], 1
jnz     def_446381      ; jumptable 00446381 default case
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+34h], 0
jnz     def_446381      ; jumptable 00446381 default case
push    300h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ebx, [esp+24h+var_1C]
mov     ax, [ebx+3Ch]
add     edx, eax
and     edx, 0FFFh
lea     eax, [ebp+1Ch]
mov     ebx, 18h
call    sub_4DE639
test    eax, eax
jz      def_446381      ; jumptable 00446381 default case
call    sub_4DE043
mov     edx, [esp+1Ch+var_1C]
mov     [edx+54h], eax
test    eax, eax
jz      def_446381      ; jumptable 00446381 default case
mov     byte ptr [eax], 1
mov     eax, [edx+54h]
mov     byte ptr [eax+2], 9
mov     eax, [edx+54h]
mov     byte ptr [eax+3], 0
mov     esi, [edx+54h]
lea     edi, [esi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     esi, [edx+54h]
lea     edi, [esi+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFF300h
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ecx, [esp+24h+var_1C]
mov     ax, [ecx+3Ch]
lea     ebx, [eax+edx]
and     ebx, 0FFFh
mov     eax, [ecx+54h]
lea     edx, [eax+1Ch]
add     eax, 14h
mov     ecx, 6E0h
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+54h]
mov     dx, [ebp+56h]
mov     [eax+64h], dx
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+34h], 3Ch ; '<'
mov     eax, [eax+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 0
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 0
jmp     def_446381      ; jumptable 00446381 default case
sub_44569A endp




sub_44599E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+3D8h]
mov     dword ptr [esi+58h], offset byte_5F8364
test    byte ptr [esi+17h], 2
jz      short loc_4459BF
mov     word ptr [esi+8], 0

loc_4459BF:
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_4459CF
cmp     al, 1
jz      short loc_4459F1
jmp     loc_4451E0

loc_4459CF:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax

loc_4459F1:
cmp     byte ptr [ebp+0A6h], 2
jnz     short loc_445A07
lea     edx, [ebp+14h]
mov     eax, 0B6h
call    sub_4D8BC3

loc_445A07:
test    byte ptr [esi+1], 1
jnz     short loc_445A15
or      byte ptr [esi], 1
jmp     loc_4451E0

loc_445A15:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     [esi+5Ch], eax
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
jge     short loc_445A5A
neg     eax

loc_445A5A:
cmp     eax, 20h ; ' '
jle     short loc_445A7C
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah

loc_445A71:
mov     word ptr [ebp+0Ah], 0
jmp     loc_4451E0

loc_445A7C:
test    byte ptr [esi+5Dh], 0Fh
jnz     short loc_445A88
test    byte ptr [esi+17h], 2
jz      short loc_445AA0

loc_445A88:
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
jmp     short loc_445A71

loc_445AA0:
cmp     dword ptr [ebp+80h], offset loc_480000
jbe     loc_4451E0
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     eax, [esi+58h]
mov     edx, [eax+54h]
sar     edx, 10h
add     eax, 1Ch
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      loc_4451E0
mov     byte ptr [ebp+9], 0Dh
mov     word ptr [ebp+0Ah], 0
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_445AF8
or      byte ptr [esi], 8
jmp     loc_4451E0

loc_445AF8:
and     byte ptr [esi], 0F7h
jmp     loc_4451E0
sub_44599E endp




sub_445B00 proc near
push    ebx
push    edx
lea     edx, [eax+3D8h]
mov     bl, [eax+0Ah]
test    bl, bl
ja      short loc_445B20
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 0
mov     word ptr [edx+8], 0

loc_445B20:
pop     edx
pop     ebx
retn
sub_445B00 endp




sub_445B23 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_445B4B
cmp     al, 1
jz      loc_44621C      ; jumptable 00446167 case 4
; jumptable 0044664F case 3
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445B4B:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 5
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
sar     eax, 2
mov     [esi+66h], ax
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0
mov     eax, [edi+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [edi+44h]
mov     byte ptr [eax+9], 0
mov     eax, [edi+48h]
mov     byte ptr [eax+9], 0
jmp     loc_44621C      ; jumptable 00446167 case 4
sub_445B23 endp         ; jumptable 0044664F case 3

; START OF FUNCTION CHUNK FOR sub_446143

loc_445B9C:
mov     ecx, [esi+64h]
sar     ecx, 10h
jmp     loc_446240
; END OF FUNCTION CHUNK FOR sub_446143



sub_445BA7 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_445BBF
cmp     bl, 1
jz      short loc_445BD6
pop     edx
pop     ebx
retn

loc_445BBF:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 5
mov     word ptr [eax+4], 10h
mov     word ptr [eax+8], 0

loc_445BD6:
mov     bx, [edx+56h]
add     ebx, 80h
and     bh, 0Fh
mov     [edx+56h], bx
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jg      short loc_445BF8
or      byte ptr [eax], 1

loc_445BF8:
pop     edx
pop     ebx
retn
sub_445BA7 endp

jpt_445C30 dd offset loc_445C37 ; jump table for switch statement
dd offset loc_445C75
dd offset loc_445C9A
dd offset loc_445CB2
dd offset loc_445D10
dd offset loc_445D7E



sub_445C13 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
xor     eax, eax
mov     al, dl
jmp     jpt_445C30[eax*4] ; switch jump

loc_445C37:             ; jumptable 00445C30 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 20h ; ' '
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0DFh
and     byte ptr [esi+57h], 0Fh
cmp     word ptr [esi+6Eh], 0
jg      short loc_445C59
and     byte ptr [edi], 0FBh

loc_445C59:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFBA0h

loc_445C62:
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445C75:             ; jumptable 00445C30 case 1
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 0FE70h
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     ebx, 0FFFFF6A0h
jmp     short loc_445C62

loc_445C9A:             ; jumptable 00445C30 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_445CB2 ; jumptable 00445C30 case 3
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+46h], 158h

loc_445CB2:             ; jumptable 00445C30 case 3
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445CE4
mov     word ptr [esi+44h], 0

loc_445CE4:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+44h], 0FF60h

loc_445CFF:
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 6
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445D10:             ; jumptable 00445C30 case 4
mov     cx, [edi+4]     ; jumptable 00445DD0 case 4
test    cx, cx
jz      short loc_445D20
mov     eax, ecx
dec     eax
mov     [edi+4], ax

loc_445D20:
mov     eax, 3
sub     ax, [edi+4]
shl     eax, 4
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445D65
mov     word ptr [esi+44h], 0

loc_445D65:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 5
mov     word ptr [edi+4], 0Ah
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445D7E:             ; jumptable 00445C30 case 5
mov     dx, [edi+4]     ; jumptable 00445DD0 case 5
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
or      byte ptr [edi], 1
jmp     def_445C30      ; jumptable 00445C30 default case
sub_445C13 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
db 8Dh, 40h, 0
jpt_445DD0 dd offset loc_445DD7 ; jump table for switch statement
dd offset loc_445E15
dd offset loc_445E3A
dd offset loc_445E52
dd offset loc_445D10
dd offset loc_445D7E



sub_445DB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dl, [eax+0Ah]
cmp     dl, 5           ; switch 6 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
xor     eax, eax
mov     al, dl
jmp     jpt_445DD0[eax*4] ; switch jump

loc_445DD7:             ; jumptable 00445DD0 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Eh
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0DFh
and     byte ptr [esi+57h], 0Fh
cmp     word ptr [esi+6Eh], 0
jg      short loc_445DF9
and     byte ptr [edi], 0FBh

loc_445DF9:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 460h

loc_445E02:
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_445E15:             ; jumptable 00445DD0 case 1
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 190h
mov     word ptr [esi+46h], 0
mov     word ptr [edi+4], 3
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     ebx, 0FFFFF6A0h
jmp     short loc_445E02

loc_445E3A:             ; jumptable 00445DD0 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_445E52 ; jumptable 00445DD0 case 3
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+46h], 158h

loc_445E52:             ; jumptable 00445DD0 case 3
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
test    eax, eax
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
test    ah, 0Fh
jz      short loc_445E84
mov     word ptr [esi+44h], 0

loc_445E84:
test    byte ptr [edi+5Dh], 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0ACh], 1Fh
mov     byte ptr [esi+0Ah], 4
mov     word ptr [esi+44h], 0A0h
jmp     loc_445CFF
sub_445DB3 endp

db 8Dh, 40h, 0
jpt_445ED8 dd offset loc_445EDF ; jump table for switch statement
dd offset loc_445EF6
dd offset loc_445F12
dd offset loc_445F2E
dd offset loc_445FAA



sub_445EBB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_445ED8      ; jumptable 00445ED8 default case
and     edx, 0FFh
jmp     jpt_445ED8[edx*4] ; switch jump

loc_445EDF:             ; jumptable 00445ED8 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Ch
mov     word ptr [eax+4], 7
mov     word ptr [eax+8], 0

loc_445EF6:             ; jumptable 00445ED8 case 1
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_445ED8      ; jumptable 00445ED8 default case
mov     byte ptr [esi+0Ah], 2
mov     word ptr [eax+4], 6

loc_445F12:             ; jumptable 00445ED8 case 2
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_445ED8      ; jumptable 00445ED8 default case
mov     byte ptr [esi+0Ah], 3
mov     word ptr [eax+4], 0Ah

loc_445F2E:             ; jumptable 00445ED8 case 3
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_445FA0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0F0h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_445F7E
neg     eax

loc_445F7E:
cmp     eax, 20h ; ' '
jle     short def_445ED8 ; jumptable 00445ED8 default case
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_445FA0:
mov     byte ptr [esi+0Ah], 4
mov     word ptr [eax+4], 7

loc_445FAA:             ; jumptable 00445ED8 case 4
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short def_445ED8 ; jumptable 00445ED8 default case
or      byte ptr [eax], 21h

def_445ED8:             ; jumptable 00445ED8 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_445EBB endp

db 8Dh, 40h, 0
jpt_445FF4 dd offset loc_445FFB ; jump table for switch statement
dd offset loc_446012
dd offset loc_44607C
dd offset loc_446098
dd offset loc_4460B9



sub_445FD7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_445FF4      ; jumptable 00445FF4 default case
and     edx, 0FFh
jmp     jpt_445FF4[edx*4] ; switch jump

loc_445FFB:             ; jumptable 00445FF4 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1Dh
mov     word ptr [eax+4], 0Dh
mov     word ptr [eax+8], 0

loc_446012:             ; jumptable 00445FF4 case 1
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_446072
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFB0h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+2Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_446064
neg     eax

loc_446064:
cmp     eax, 20h ; ' '
jle     def_445FF4      ; jumptable 00445FF4 default case
jmp     loc_446111

loc_446072:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [eax+4], 3

loc_44607C:             ; jumptable 00445FF4 case 2
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_445FF4      ; jumptable 00445FF4 default case
mov     byte ptr [esi+0Ah], 3
mov     word ptr [eax+4], 8

loc_446098:             ; jumptable 00445FF4 case 3
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_445FF4      ; jumptable 00445FF4 default case
mov     byte ptr [esi+0Ah], 4
mov     word ptr [eax+4], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4460B9:             ; jumptable 00445FF4 case 4
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4460CA
or      byte ptr [eax], 21h

loc_4460CA:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF80h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_44610C
neg     eax

loc_44610C:
cmp     eax, 20h ; ' '
jle     short def_445FF4 ; jumptable 00445FF4 default case

loc_446111:
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0

def_445FF4:             ; jumptable 00445FF4 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_445FD7 endp

db 90h
jpt_446167 dd offset loc_44616E ; jump table for switch statement
dd offset loc_446185
dd offset loc_4461A6
dd offset loc_4461DB
dd offset loc_44621C



sub_446143 proc near

; FUNCTION CHUNK AT 00445B9C SIZE 0000000B BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
and     eax, 0FFh
jmp     jpt_446167[eax*4] ; switch jump

loc_44616E:             ; jumptable 00446167 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 0Ah
mov     word ptr [edi+8], 0

loc_446185:             ; jumptable 00446167 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_446199
mov     byte ptr [esi+0Ah], 2
jmp     short loc_4461A6 ; jumptable 00446167 case 2

loc_446199:
mov     eax, edx
mov     edx, 0Ah
sub     edx, eax
mov     [esi+46h], dx

loc_4461A6:             ; jumptable 00446167 case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 7
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 12h
mov     word ptr [edi+4], 3

loc_4461DB:             ; jumptable 00446167 case 3
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     short def_445C30 ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 4

loc_4461ED:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
mov     edx, eax
mov     ecx, 3
sar     edx, 1Fh
idiv    ecx
mov     [esi+66h], ax
mov     word ptr [edi+4], 3

loc_44621C:             ; jumptable 00446167 case 4
mov     dx, [edi+4]     ; jumptable 0044664F case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_44622D
or      byte ptr [edi], 1

loc_44622D:
cmp     word ptr [esi+66h], 0
jge     loc_445B9C
mov     ecx, [esi+64h]
sar     ecx, 10h
neg     ecx

loc_446240:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+58h]
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

def_445C30:             ; jumptable 00445C30 default case
pop     edi             ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446143 endp




sub_446265 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 3D8h
mov     dl, [esi+0Ah]
cmp     dl, 1
jb      short loc_446288
jbe     short loc_4462A7
cmp     dl, 2
jz      loc_44632A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_446288:
test    dl, dl
jnz     loc_44633B
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 13h
mov     word ptr [eax+4], 0Dh
mov     word ptr [eax+8], 0

loc_4462A7:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_446319
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     edx, [esi+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_4462F7
neg     eax

loc_4462F7:
cmp     eax, 20h ; ' '
jle     short loc_44633B
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah
mov     word ptr [esi+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_446319:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 0
mov     word ptr [eax+4], 6

loc_44632A:
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short loc_44633B
or      byte ptr [eax], 1

loc_44633B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446265 endp

db 8Dh, 40h, 0
jpt_446381 dd offset loc_446388 ; jump table for switch statement
dd offset loc_4463BF
dd offset loc_44645D
dd offset loc_4465B7
dd offset loc_4465D7



sub_446357 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004451DD SIZE 00000009 BYTES

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
mov     dword ptr [eax+58h], offset byte_5F8364
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_446381      ; jumptable 00446381 default case
and     eax, 0FFh
jmp     jpt_446381[eax*4] ; switch jump

loc_446388:             ; jumptable 00446381 case 0
mov     byte ptr [ebp+0Ah], 1
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_4463A3
mov     byte ptr [ebp+0ACh], 18h
mov     word ptr [ebp+48h], 0FFE4h
jmp     short loc_4463B0

loc_4463A3:
mov     byte ptr [ebp+0ACh], 14h
mov     word ptr [ebp+48h], 1Ch

loc_4463B0:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 5
mov     word ptr [eax+8], 0

loc_4463BF:             ; jumptable 00446381 case 1
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_4463F5
mov     byte ptr [ebp+0Ah], 2
inc     byte ptr [ebp+0ACh]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Ah
lea     edx, [ebp+14h]
mov     eax, 0B7h
call    sub_4D8BC3
jmp     def_446381      ; jumptable 00446381 default case

loc_4463F5:
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
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_446437
neg     eax

loc_446437:
cmp     eax, 20h ; ' '
jle     def_446381      ; jumptable 00446381 default case
mov     ax, [ebp+2Eh]
mov     [ebp+16h], ax
mov     eax, [ebp+38h]
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 0Ah
mov     word ptr [ebp+0Ah], 0
jmp     def_446381      ; jumptable 00446381 default case

loc_44645D:             ; jumptable 00446381 case 2
mov     eax, [esp+1Ch+var_1C]
dec     word ptr [eax+4]
mov     eax, [eax+2]
sar     eax, 10h
mov     edx, 5
sub     edx, eax
mov     eax, edx
shl     eax, 2
mov     [ebp+46h], ax
mov     ecx, [ebp+46h]
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    ah, 10h
jz      def_446381      ; jumptable 00446381 default case
lea     edx, [ebp+14h]
mov     eax, 0B8h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+1], 2
jz      loc_44659F
push    300h
mov     eax, [eax+58h]
mov     edx, [eax+54h]
sar     edx, 10h
push    edx
lea     ecx, [eax+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
xor     eax, eax
mov     ebx, [esp+24h+var_1C]
mov     ax, [ebx+3Ch]
add     edx, eax
and     edx, 0FFFh
lea     eax, [ebp+1Ch]
mov     ebx, 18h
call    sub_4DE639
test    eax, eax
jz      loc_44659F
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax+1], 0FDh
call    sub_4DE043
mov     edx, [esp+1Ch+var_1C]
mov     [edx+54h], eax
test    eax, eax
jz      loc_44659F
mov     byte ptr [eax], 1
mov     eax, [edx+54h]
mov     byte ptr [eax+2], 9
mov     eax, [edx+54h]
mov     byte ptr [eax+3], 0
mov     esi, [edx+54h]
lea     edi, [esi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     esi, [edx+54h]
lea     edi, [esi+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0FFFFF300h
mov     ebx, [ebp+54h]
sar     ebx, 10h
xor     edx, edx
mov     ecx, [esp+24h+var_1C]
mov     dx, [ecx+3Ch]
add     ebx, edx
and     ebx, 0FFFh
mov     eax, [ecx+54h]
lea     edx, [eax+1Ch]
add     eax, 14h
mov     ecx, 6E0h
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+54h]
mov     dx, [ebp+56h]
mov     [eax+64h], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+40h]
or      byte ptr [eax+0Fh], 1
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+44h]
mov     byte ptr [eax+9], 0
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+48h]
mov     byte ptr [eax+9], 0

loc_44659F:
mov     byte ptr [ebp+0Ah], 3
inc     byte ptr [ebp+0ACh]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 4
jmp     def_446381      ; jumptable 00446381 default case

loc_4465B7:             ; jumptable 00446381 case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4465D7 ; jumptable 00446381 case 4
test    byte ptr [eax], 40h
jz      short loc_4465D7 ; jumptable 00446381 case 4
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [eax+4], 0Fh

loc_4465D7:             ; jumptable 00446381 case 4
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_446381      ; jumptable 00446381 default case
mov     dh, [eax]
or      dh, 1
mov     [eax], dh
test    dh, 40h
jz      short loc_44660D
test    dh, 8
jz      short loc_446603
add     byte ptr [ebp+57h], 4
jmp     short loc_446609

loc_446603:
sub     word ptr [ebp+56h], 400h

loc_446609:
and     byte ptr [ebp+57h], 0Fh

loc_44660D:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0BFh
jmp     def_446381      ; jumptable 00446381 default case
sub_446357 endp

db 8Dh, 40h, 0
jpt_44664F dd offset loc_446656 ; jump table for switch statement
dd offset loc_44667B
dd offset loc_44670E
dd offset loc_44621C



sub_44662B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3D8h]
mov     dword ptr [edi+58h], offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
and     eax, 0FFh
jmp     jpt_44664F[eax*4] ; switch jump

loc_446656:             ; jumptable 0044664F case 0
mov     byte ptr [esi+0Ah], 1
test    byte ptr [edi], 8
jz      short loc_446668
mov     byte ptr [esi+0ACh], 1Bh
jmp     short loc_44666F

loc_446668:
mov     byte ptr [esi+0ACh], 17h

loc_44666F:
mov     word ptr [edi+4], 6
mov     word ptr [edi+8], 0

loc_44667B:             ; jumptable 0044664F case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      loc_446704
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 180h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     [edi+5Ch], eax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+2Ch]
sar     eax, 10h
sub     edx, eax
test    edx, edx
jge     short loc_4466D2
neg     edx

loc_4466D2:
cmp     edx, 20h ; ' '
jle     short loc_4466F4
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
mov     byte ptr [esi+9], 0Ah

loc_4466E9:
mov     word ptr [esi+0Ah], 0
jmp     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case

loc_4466F4:
test    byte ptr [edi+5Dh], 0Fh
jz      def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+9], 0Bh
jmp     short loc_4466E9

loc_446704:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [edi+4], 4

loc_44670E:             ; jumptable 0044664F case 2
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_445C30      ; jumptable 00445C30 default case
; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case
mov     byte ptr [esi+0Ah], 3
jmp     loc_4461ED
sub_44662B endp




sub_446729 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+3D8h]
mov     word ptr [eax+64h], 0
mov     ax, [eax+64h]
cwde
mov     [edx+4Ch], eax

loc_446742:
mov     ebx, [edx+4Ch]
cmp     ebx, 2
jge     short loc_446772
mov     al, ds:byte_515130[ebx]
xor     ah, ah
add     [ecx+64h], ax
mov     ax, [edx+2]
xor     ah, ah
and     al, 0Fh
xor     ebx, ebx
mov     bx, ax
mov     eax, [ecx+62h]
sar     eax, 10h
cmp     ebx, eax
jl      short loc_446772
inc     dword ptr [edx+4Ch]
jmp     short loc_446742

loc_446772:
mov     eax, [edx+4Ch]
pop     edx
pop     ecx
pop     ebx
retn
sub_446729 endp




sub_446779 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+3D8h]
mov     edx, [ebx+14h]
and     edx, 0FFFFFFh
mov     [ebx+4Ch], edx
jz      loc_446936
test    byte ptr [ebx+17h], 38h
jz      loc_446929
mov     ax, [ecx+6Eh]
mov     [ecx+0B2h], ax
mov     ax, [ebx+4Ch]
mov     dx, [ecx+6Eh]
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_4467EF
mov     di, [ebx]
and     edi, 0FFFFF7DDh
mov     [ebx], di
mov     eax, edi
or      eax, 820h
mov     [ebx], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     [ebx+4Ch], eax

loc_4467EF:
lea     edx, [ecx+14h]
test    byte ptr [ebx], 20h
jz      loc_4468E4
mov     ax, [ebx+4Ch]
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_44682A
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     esi, [esi+eax*4]
xor     eax, eax
mov     al, [esi+9]
mov     esi, [ebx+8]
sar     esi, 10h
cmp     esi, eax
jl      loc_4468DD

loc_44682A:
lea     esi, [ecx+14h]
mov     edx, esi
mov     eax, 0A2h
call    sub_4D8BC3
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_446887
mov     eax, esi
call    sub_4DDDB4
mov     [ecx+64h], ax
mov     edx, [ecx+54h]
sar     edx, 10h
mov     eax, [ecx+62h]
sar     eax, 10h
sub     edx, eax
lea     eax, [edx+400h]
and     eax, 0FFFh
cmp     eax, 800h
jge     short loc_446877
mov     byte ptr [ecx+9], 6

loc_446871:
mov     ax, [ecx+64h]
jmp     short loc_4468CB

loc_446877:
mov     byte ptr [ecx+9], 7
mov     ax, [ecx+64h]
add     ah, 8
and     ah, 0Fh
jmp     short loc_4468CB

loc_446887:
mov     eax, offset unk_515132
call    sub_4DDDB4
mov     [ecx+64h], ax
mov     edx, [ecx+62h]
sar     edx, 10h
mov     eax, [ecx+54h]
sar     eax, 10h
sub     edx, eax
add     edx, 400h
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_4468BD
mov     byte ptr [ecx+9], 7
jmp     short loc_446871

loc_4468BD:
mov     byte ptr [ecx+9], 6
mov     ax, [ecx+64h]
add     ah, 8
and     ah, 0Fh

loc_4468CB:
mov     [ecx+56h], ax
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebx+0Ah], 0
jmp     short loc_44691E

loc_4468DD:
mov     eax, 0A0h
jmp     short loc_446919

loc_4468E4:
test    byte ptr [ebx+17h], 20h
jnz     short loc_44690A
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     eax, [esi+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     ebx, [ebx+8]
sar     ebx, 10h
cmp     ebx, eax
jl      short loc_446914

loc_44690A:
lea     edx, [ecx+14h]
mov     eax, 0A2h
jmp     short loc_446919

loc_446914:
mov     eax, 0A0h

loc_446919:
call    sub_4D8BC3

loc_44691E:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     short loc_446936

loc_446929:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_446936:
mov     eax, 1
jmp     def_445C30      ; jumptable 00445C30 default case
sub_446779 endp         ; jumptable 00445DD0 default case
; jumptable 00446167 default case
; jumptable 0044664F default case



sub_446940 proc near

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
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_446995[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_4469BB
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4469C2

loc_4469BB:
mov     eax, ebp
call    sub_4DEADD

loc_4469C2:
test    byte ptr [ebp+0], 2
jz      short loc_4469DB
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4469DB:
test    byte ptr [ebp+0], 1
jz      short loc_446A2B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_446A2B
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
or      eax, 4880000h
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

loc_446A2B:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

def_446FDF:             ; jumptable 00446FDF default case
add     esp, 4
jmp     def_44720A      ; jumptable 0044720A default case
sub_446940 endp




sub_446A3D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3D8h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
test    byte ptr [ecx+3], 20h
jz      short loc_446A9B
mov     word ptr [esi], 0
jmp     short loc_446AA0

loc_446A9B:
mov     word ptr [esi], 0Eh

loc_446AA0:
mov     dword ptr [esi+4], 0
test    byte ptr [ecx+0Ch], 10h
jz      short loc_446AB3
mov     word ptr [esi+6], 1

loc_446AB3:
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     dl, [edx+eax+0Fh]
and     edx, 0FFh
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
call    sub_4E19B9
mov     word ptr [esi+34h], 0
mov     word ptr [esi+36h], 0
mov     word ptr [esi+38h], 4
mov     ax, [ecx+1Ah]
mov     [esi+3Ah], ax
mov     dword ptr [esi+40h], 0
mov     word ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esi+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+8]
xor     ah, ah
mov     edx, eax
shl     edx, 4
mov     al, [ecx+0Fh]
and     al, 7Fh
cbw
inc     eax
imul    edx, eax
mov     [ecx+6Eh], dx
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], offset unk_515174
mov     dword ptr [ecx+10h], 0
test    byte ptr [ecx+3], 40h
jz      short loc_446BA7
add     word ptr [ecx+16h], 20h ; ' '
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 8
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 0Ch
jmp     short loc_446BD0

loc_446BA7:
mov     eax, ecx
call    sub_42C592
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

loc_446BD0:
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_446A3D endp




sub_446BE5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+3D8h]
test    byte ptr [eax+3], 20h
jnz     short loc_446C0C
lea     eax, [ecx+24h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_446C0C
or      byte ptr [ecx], 10h
jmp     short loc_446C0F

loc_446C0C:
and     byte ptr [ecx], 0EFh

loc_446C0F:
test    byte ptr [ecx], 2
jz      short loc_446C1B
mov     eax, ebp
call    sub_447CDC

loc_446C1B:
xor     ebx, ebx
mov     bl, [ebp+9]
mov     eax, ebp
call    ds:funcs_446C22[ebx*4]
mov     bh, [ecx]
test    bh, 1
jz      short loc_446C78
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_446C5F
jbe     short loc_446C3F
cmp     al, 6
jz      short loc_446C47
jmp     short loc_446C5F

loc_446C3F:
mov     al, [ebp+0Eh]
mov     [ebp+9], al
jmp     short loc_446C6B

loc_446C47:
cmp     word ptr [ebp+6Eh], 32h ; '2'
jg      short loc_446C54
mov     byte ptr [ebp+9], 5
jmp     short loc_446C6B

loc_446C54:
test    bh, 10h
jz      short loc_446C64

loc_446C59:
mov     byte ptr [ebp+9], 9
jmp     short loc_446C6B

loc_446C5F:
test    byte ptr [ecx], 10h
jnz     short loc_446C59

loc_446C64:
mov     eax, ebp
call    sub_447B88

loc_446C6B:
and     byte ptr [ebp+3], 0BFh
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_446C78:
mov     bx, [ecx+34h]
test    bx, bx
jz      short loc_446C88
mov     esi, ebx
dec     esi
mov     [ecx+34h], si

loc_446C88:
mov     di, [ecx+36h]
test    di, di
jz      short loc_446C98
mov     eax, edi
dec     eax
mov     [ecx+36h], ax

loc_446C98:
mov     dx, [ecx+0Ah]
test    dx, dx
jz      short loc_446CA8
mov     ebx, edx
dec     ebx
mov     [ecx+0Ah], bx

loc_446CA8:
test    byte ptr [ecx], 40h
jz      def_44720A      ; jumptable 0044720A default case
mov     si, [ecx+38h]
dec     esi
mov     [ecx+38h], si
test    si, si
jge     def_44720A      ; jumptable 0044720A default case
call    sub_4DE13B
mov     [ecx+40h], eax
test    eax, eax
jz      short loc_446CEB
mov     byte ptr [eax], 5
mov     eax, [ecx+40h]
mov     byte ptr [eax+2], 80h
mov     eax, [ecx+40h]
mov     byte ptr [eax+3], 41h ; 'A'
mov     esi, [ecx+40h]
lea     edi, [esi+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_446CEB:
mov     eax, ebp
call    sub_4DE2F6
mov     ebx, [ecx+4]
sar     ebx, 10h
lea     ecx, [ebp+190h]
mov     edx, ecx
mov     eax, ebp
call    sub_4AFA70
mov     edx, ecx
mov     eax, 0A1h
call    sub_4D8BC3
jmp     def_44720A      ; jumptable 0044720A default case
sub_446BE5 endp



; Attributes: thunk

sub_446D18 proc near
jmp     sub_4DE2F6
sub_446D18 endp




sub_446D1D proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 3D8h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_446D38
jbe     short loc_446D64
cmp     bl, 2
jz      short loc_446D78
pop     edx
pop     ebx
retn

loc_446D38:
test    bl, bl
jnz     loc_446DB4
mov     byte ptr [edx+0Ah], 1
test    byte ptr [edx+3], 80h
jz      short loc_446D4D
inc     byte ptr [edx+0Ah]

loc_446D4D:
and     byte ptr [edx+3], 7Fh
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 1Eh
mov     word ptr [eax+8], 0

loc_446D64:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_446DB4
or      byte ptr [eax], 1
pop     edx
pop     ebx
retn

loc_446D78:
or      byte ptr [eax], 20h
test    byte ptr [edx+3], 20h
jz      short loc_446D95
mov     ax, [eax+3Ah]
and     eax, 0FFFFh
call    sub_47E888
test    eax, eax
jz      short loc_446DB4
jmp     short loc_446DAA

loc_446D95:
cmp     dword ptr [edx+80h], 320000h
jb      short loc_446DAA
test    dword ptr [eax+14h], 0FFFFFFh
jz      short loc_446DB4

loc_446DAA:
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0

loc_446DB4:
pop     edx
pop     ebx
retn
sub_446D1D endp




sub_446DB7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+3D8h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_446DD5
cmp     al, 1
jz      short loc_446E43
jmp     def_44720A      ; jumptable 0044720A default case

loc_446DD5:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_446E19
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_446E30

loc_446E19:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552

loc_446E30:
sar     eax, 3
mov     [esi+66h], ax
mov     word ptr [edi+4], 8
mov     word ptr [edi+8], 0

loc_446E43:
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_446E54
or      byte ptr [edi], 1

loc_446E54:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [edi+44h], ax
mov     ax, [esi+56h]
add     ax, [edi+44h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_44720A      ; jumptable 0044720A default case
sub_446DB7 endp




sub_446E85 proc near

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
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_446EA8
cmp     al, 1
jz      short loc_446EBC
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_446EA8:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+8], 0

loc_446EBC:
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_446ED2
lea     edx, [ebp+14h]
mov     eax, 0B0h
call    sub_4D8BC3

loc_446ED2:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 34h ; '4'
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+48h], eax
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
jge     short loc_446F29
neg     eax

loc_446F29:
cmp     eax, 20h ; ' '
jle     short loc_446F64
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
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 10h
jz      short loc_446F5B

loc_446F52:
mov     byte ptr [ebp+0Eh], 4
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_446F5B:
mov     byte ptr [ebp+0Eh], 2
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_446F64:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+49h], 0Fh
jz      short loc_446F7E
mov     byte ptr [ebp+9], 1
mov     word ptr [ebp+0Ah], 0
test    byte ptr [eax], 10h
jnz     short loc_446F52
jmp     short loc_446F5B

loc_446F7E:
mov     dh, [eax]
test    dh, 10h
jz      def_446FDF      ; jumptable 00446FDF default case
mov     bl, dh
or      bl, 1
mov     [eax], bl
jmp     def_446FDF      ; jumptable 00446FDF default case
sub_446E85 endp

align 4
jpt_446FDF dd offset loc_446FE6 ; jump table for switch statement
dd offset loc_44702B
dd offset loc_44704A
dd offset loc_447097
dd offset loc_4470AB
dd offset loc_4471A8



sub_446FB0 proc near

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
test    byte ptr [eax+17h], 2
jz      short loc_446FCF
mov     word ptr [eax+8], 0

loc_446FCF:
mov     al, [ebp+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_446FDF      ; jumptable 00446FDF default case
and     eax, 0FFh
jmp     jpt_446FDF[eax*4] ; switch jump

loc_446FE6:             ; jumptable 00446FDF case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [ebp+64h], 0
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 5
xor     eax, eax
mov     al, [ebp+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+4]
sar     edx, 10h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax

loc_44702B:             ; jumptable 00446FDF case 1
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     def_446FDF      ; jumptable 00446FDF default case
mov     byte ptr [ebp+0Ah], 2
mov     word ptr [eax+4], 5

loc_44704A:             ; jumptable 00446FDF case 2
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jg      def_446FDF      ; jumptable 00446FDF default case
mov     byte ptr [ebp+0Ah], 3
lea     edx, [ebp+14h]
mov     eax, 0B4h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_44708C
movsx   ax, byte ptr [ebp+0Dh]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
and     byte ptr [edx], 0DFh
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_44708C:
mov     word ptr [eax+4], 2Dh ; '-'
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_447097:             ; jumptable 00446FDF case 3
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+4], 4
jge     short loc_4470AB ; jumptable 00446FDF case 4
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [ebp+64h], 100h

loc_4470AB:             ; jumptable 00446FDF case 4
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jl      loc_447192
test    byte ptr [eax+17h], 2
jz      short loc_4470D5
mov     byte ptr [ebp+9], 6
mov     word ptr [ebp+0Ah], 0
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_4470D5:
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     edx, [esp+1Ch+var_1C]
mov     [edx+44h], ax
mov     ax, [ebp+56h]
add     ax, [edx+44h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+48h], eax
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
jge     short loc_44714C
neg     eax

loc_44714C:
cmp     eax, 20h ; ' '
jle     short loc_44717A
or      byte ptr [ebp+3], 40h
mov     byte ptr [ebp+9], 8
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
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0FFFFh

loc_44717A:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+49h], 0Fh
jz      def_446FDF      ; jumptable 00446FDF default case
mov     word ptr [eax+4], 0FFFFh
jmp     def_446FDF      ; jumptable 00446FDF default case

loc_447192:
mov     byte ptr [ebp+0Ah], 5
inc     byte ptr [ebp+0ACh]
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0

loc_4471A8:             ; jumptable 00446FDF case 5
test    byte ptr [ebp+3], 20h
jz      short loc_4471B5
mov     eax, ebp
call    sub_4DE2F6

loc_4471B5:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di
jge     def_446FDF      ; jumptable 00446FDF default case
or      byte ptr [eax], 1
mov     word ptr [eax+34h], 1Eh
jmp     def_446FDF      ; jumptable 00446FDF default case
sub_446FB0 endp

jpt_44720A dd offset loc_447211 ; jump table for switch statement
dd offset loc_447235
dd offset loc_4472BE
dd offset loc_4472E5
dd offset loc_447311



sub_4471EC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+3D8h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_44720A      ; jumptable 0044720A default case
and     eax, 0FFh
jmp     jpt_44720A[eax*4] ; switch jump

loc_447211:             ; jumptable 0044720A case 0
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 15h
mov     word ptr [esi+4], 0Dh
mov     word ptr [esi+8], 0
lea     edx, [ebp+14h]
mov     eax, 0B1h
call    sub_4D8BC3

loc_447235:             ; jumptable 0044720A case 1
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     short loc_44725E
mov     byte ptr [ebp+0Ah], 2
cmp     word ptr [esi+6], 0
jz      short loc_447256
mov     word ptr [esi+4], 0
jmp     short loc_4472BE ; jumptable 0044720A case 2

loc_447256:
mov     word ptr [esi+4], 10h
jmp     short loc_4472BE ; jumptable 0044720A case 2

loc_44725E:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF90h

loc_447267:
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56

loc_447275:
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     esi, [ebp+14h]
sar     esi, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     esi, eax
test    esi, esi
jge     short loc_4472A0
neg     esi

loc_4472A0:
cmp     esi, 20h ; ' '
jle     short def_44720A ; jumptable 0044720A default case
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

def_44720A:             ; jumptable 0044720A default case
pop     ebp

def_447641:             ; jumptable 00447641 default case
pop     edi             ; jumptable 004477C9 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4472BE:             ; jumptable 0044720A case 2
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jg      short def_44720A ; jumptable 0044720A default case
mov     byte ptr [ebp+0Ah], 3
inc     byte ptr [ebp+0ACh]
mov     word ptr [esi+4], 0Bh
mov     eax, ebp
call    sub_447C08
jmp     short def_44720A ; jumptable 0044720A default case

loc_4472E5:             ; jumptable 0044720A case 3
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jl      short loc_447307
mov     edx, [esi+2]
sar     edx, 10h
neg     edx
shl     edx, 5
xor     ecx, ecx
xor     ebx, ebx
jmp     loc_447267

