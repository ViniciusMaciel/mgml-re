loc_452936:
mov     edx, [esp+28h+var_28]
imul    edx, edx
mov     eax, [esp+28h+var_20]
imul    eax, eax
add     eax, edx
cmp     eax, 800h
jge     short loc_452953
mov     eax, [esp+28h+var_24]
or      byte ptr [eax], 1

loc_452953:
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45296A
xor     ebx, ebx
xor     edx, edx
mov     eax, 116h
call    sub_4D89E4

loc_45296A:
add     esp, 10h
jmp     loc_45250E
sub_45275C endp




sub_452972 proc near
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
call    ds:funcs_452999[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4529B9
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4529B9:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_4529C9
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4529D0

loc_4529C9:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_4529D0:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_452972 endp




sub_4529D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4529EF
jbe     short loc_452A02
cmp     al, 2
jz      short loc_452A1B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4529EF:
test    al, al
jnz     short loc_452A2B
mov     eax, esi
call    sub_452A30
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_452A02:
cmp     ds:word_6E23D6, 0
jnz     short loc_452A1B
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+9]

loc_452A1B:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 90h
mov     eax, esi
call    sub_4DD43B

loc_452A2B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4529D7 endp




sub_452A30 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_452A30 endp




sub_452AC1 proc near

; FUNCTION CHUNK AT 00452B1F SIZE 00000001 BYTES

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
call    ds:funcs_452AE8[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_452B08
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_452B08:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_452B18
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_452B1F

loc_452B18:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh
sub_452AC1 endp

; START OF FUNCTION CHUNK FOR sub_452CF8
;   ADDITIONAL PARENT FUNCTION sub_452AC1

loc_452B1F:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_452CF8
; START OF FUNCTION CHUNK FOR sub_452B3D

loc_452B20:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_452B3D
db 8Dh, 40h, 0
jpt_452B5A dd offset loc_452B61 ; jump table for switch statement
dd offset loc_452B70
dd offset loc_452B81
dd offset loc_452BEE
dd offset loc_452C01



sub_452B3D proc near

; FUNCTION CHUNK AT 00452B20 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_452B5A      ; jumptable 00452B5A default case
and     eax, 0FFh
jmp     jpt_452B5A[eax*4] ; switch jump

loc_452B61:             ; jumptable 00452B5A case 0
mov     eax, esi
call    sub_452C5A

loc_452B68:
inc     byte ptr [esi+9]
jmp     def_452B5A      ; jumptable 00452B5A default case

loc_452B70:             ; jumptable 00452B5A case 1
mov     eax, esi
call    sub_452CF8
test    eax, eax
jz      def_452B5A      ; jumptable 00452B5A default case
jmp     short loc_452B68

loc_452B81:             ; jumptable 00452B5A case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452B5A      ; jumptable 00452B5A default case
call    sub_42ABA2
test    eax, eax
jnz     def_452B5A      ; jumptable 00452B5A default case
call    sub_452DE7
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
jmp     short def_452B5A ; jumptable 00452B5A default case

loc_452BEE:             ; jumptable 00452B5A case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_452B5A ; jumptable 00452B5A default case
call    sub_42A98E
jmp     loc_452B68

loc_452C01:             ; jumptable 00452B5A case 4
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
movsx   eax, word ptr [ecx]
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_452B5A ; jumptable 00452B5A default case
call    sub_42ABA2
test    eax, eax
jnz     short def_452B5A ; jumptable 00452B5A default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+9], 1

def_452B5A:             ; jumptable 00452B5A default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_452B20
sub_452B3D endp




sub_452C5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 408h
or      byte ptr [ecx], 2
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+58h]
mov     [ecx+54h], dx
mov     dx, [ecx+56h]
mov     [eax], dx
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515DE4
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_452C5A endp




sub_452CF8 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00452B1F SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_452DDD
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_452D52
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_452D68

loc_452D52:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_452D68:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559EA0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559EA4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559EA8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559EA0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_452DDF

loc_452DDD:
xor     eax, eax

loc_452DDF:
add     esp, 4
jmp     loc_452B1F
sub_452CF8 endp ; sp-analysis failed




sub_452DE7 proc near
push    edx
mov     eax, 211h
call    sub_47E888
test    eax, eax
jz      short loc_452DFF
mov     edx, 0Ah
mov     eax, edx
pop     edx
retn

loc_452DFF:
mov     eax, 545h
call    sub_47E888
test    eax, eax
jz      short loc_452E16
mov     edx, 8
mov     eax, edx
pop     edx
retn

loc_452E16:
mov     eax, 209h
call    sub_47E888
test    eax, eax
jz      short loc_452E37
mov     edx, 7
mov     eax, 20Ah
call    sub_47E8B8
mov     eax, edx
pop     edx
retn

loc_452E37:
mov     edx, 5
mov     eax, edx
pop     edx
retn
sub_452DE7 endp




sub_452E40 proc near
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
mov     dl, [eax+3]
call    ds:funcs_452E67[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_452E87
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_452E87:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_452E97
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_452E9E

loc_452E97:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_452E9E:
pop     ebp

def_452F46:             ; jumptable 00452F46 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_452E40 endp

align 4
jpt_452F46 dd offset loc_452F4D ; jump table for switch statement
dd offset loc_452F5C
dd offset loc_452F6B
dd offset loc_452FAC
dd offset loc_452FBB
dd offset loc_452FAC
dd offset loc_452FE1
dd offset loc_452FE8
dd offset loc_453002
dd offset loc_452FAC
dd offset loc_453046
dd offset loc_453050
dd offset loc_453092
dd offset loc_452FE8
dd offset loc_4530D9
dd offset loc_4530ED
dd offset loc_452FAC
dd offset loc_453139
dd offset loc_452FAC
dd offset loc_45314A
dd offset loc_452FAC
dd offset loc_453154
dd offset loc_452FAC
dd offset loc_45315E
dd offset loc_452FAC
dd offset loc_453168
dd offset loc_452FE8
dd offset loc_453172



sub_452F18 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, offset byte_5F8364
mov     eax, offset dword_560BDC
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_452F36
mov     byte ptr [esi+8], 1Bh

loc_452F36:
mov     dl, [esi+8]
cmp     dl, 1Bh         ; switch 28 cases
ja      def_452F46      ; jumptable 00452F46 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_452F46[ecx*4] ; switch jump

loc_452F4D:             ; jumptable 00452F46 case 0
mov     eax, esi
call    sub_453283

loc_452F54:
inc     byte ptr [esi+8]
jmp     def_452F46      ; jumptable 00452F46 default case

loc_452F5C:             ; jumptable 00452F46 case 1
cmp     byte ptr [eax+9], 2
jnz     def_452F46      ; jumptable 00452F46 default case
and     byte ptr [edi], 0FDh
jmp     short loc_452F54

loc_452F6B:             ; jumptable 00452F46 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
mov     edx, 2Ah ; '*'
jmp     short loc_452FC2

loc_452FAC:             ; jumptable 00452F46 cases 3,5,9,16,18,20,22,24
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_452F46      ; jumptable 00452F46 default case
jmp     short loc_452F54

loc_452FBB:             ; jumptable 00452F46 case 4
mov     edx, 2Bh ; '+'

loc_452FC0:
xor     eax, eax

loc_452FC2:
call    sub_4A0E24

loc_452FC7:
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_452F46      ; jumptable 00452F46 default case

loc_452FE1:             ; jumptable 00452F46 case 6
mov     edx, 2Ch ; ','
jmp     short loc_452FC0

loc_452FE8:             ; jumptable 00452F46 cases 7,13,26
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_49DF64
or      byte ptr [edi], 2
jmp     loc_452F54

loc_453002:             ; jumptable 00452F46 case 8
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
mov     edx, 2Dh ; '-'
jmp     loc_452FC2

loc_453046:             ; jumptable 00452F46 case 10
mov     edx, 2Eh ; '.'
jmp     loc_452FC0

loc_453050:             ; jumptable 00452F46 case 11
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_452F46      ; jumptable 00452F46 default case
mov     ecx, [eax+1Ch]
cmp     ecx, 102h
jle     short loc_45307A
inc     dl
mov     [esi+8], dl
call    sub_49DF64
or      byte ptr [edi], 2
jmp     def_452F46      ; jumptable 00452F46 default case

loc_45307A:
cmp     ecx, 100h
jge     def_452F46      ; jumptable 00452F46 default case
mov     dword ptr [eax+1Ch], 100h
jmp     def_452F46      ; jumptable 00452F46 default case

loc_453092:             ; jumptable 00452F46 case 12
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
and     byte ptr [edi], 0FDh
mov     edx, 2Fh ; '/'
jmp     loc_452FC2

loc_4530D9:             ; jumptable 00452F46 case 14
cmp     byte ptr [eax+9], 6
jnz     def_452F46      ; jumptable 00452F46 default case
inc     dl
mov     [esi+8], dl
jmp     def_452F46      ; jumptable 00452F46 default case

loc_4530ED:             ; jumptable 00452F46 case 15
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452F46      ; jumptable 00452F46 default case
call    sub_42ABA2
test    eax, eax
jnz     def_452F46      ; jumptable 00452F46 default case
mov     edx, 32h ; '2'
call    sub_4A0E24
and     byte ptr [edi], 0FDh
jmp     loc_452FC7

loc_453139:             ; jumptable 00452F46 case 17
mov     edx, 59h ; 'Y'
xor     eax, eax
call    sub_4A0E24
jmp     loc_452F54

loc_45314A:             ; jumptable 00452F46 case 19
mov     edx, 33h ; '3'
jmp     loc_452FC0

loc_453154:             ; jumptable 00452F46 case 21
mov     edx, 34h ; '4'
jmp     loc_452FC0

loc_45315E:             ; jumptable 00452F46 case 23
mov     edx, 35h ; '5'
jmp     loc_452FC0

loc_453168:             ; jumptable 00452F46 case 25
mov     edx, 36h ; '6'
jmp     loc_452FC0

loc_453172:             ; jumptable 00452F46 case 27
mov     byte ptr [esi+2], 14h
mov     byte ptr [esi+4], 2
mov     byte ptr [esi+3], 80h
mov     dword ptr [esi+0Ch], 0
mov     dword ptr [esi+8], 0
jmp     def_452F46      ; jumptable 00452F46 default case
sub_452F18 endp

align 4
jpt_4531BE dd offset loc_4531C5 ; jump table for switch statement
dd offset loc_4531D4
dd offset loc_4531E5
dd offset loc_45323D
dd offset loc_453250



sub_4531A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_4531BE      ; jumptable 004531BE default case
and     eax, 0FFh
jmp     jpt_4531BE[eax*4] ; switch jump

loc_4531C5:             ; jumptable 004531BE case 0
mov     eax, esi
call    sub_453283

loc_4531CC:
inc     byte ptr [esi+8]
jmp     def_4531BE      ; jumptable 004531BE default case

loc_4531D4:             ; jumptable 004531BE case 1
mov     eax, esi
call    sub_45332F
test    eax, eax
jz      def_4531BE      ; jumptable 004531BE default case
jmp     short loc_4531CC

loc_4531E5:             ; jumptable 004531BE case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_4531BE ; jumptable 004531BE default case
call    sub_42ABA2
test    eax, eax
jnz     short def_4531BE ; jumptable 004531BE default case
mov     edx, 48h ; 'H'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_4531BE ; jumptable 004531BE default case

loc_45323D:             ; jumptable 004531BE case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4531BE ; jumptable 004531BE default case
call    sub_42A98E
jmp     loc_4531CC

loc_453250:             ; jumptable 004531BE case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_4531BE ; jumptable 004531BE default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_4531BE:             ; jumptable 004531BE default case
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
sub_4531A8 endp




sub_453283 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0FF38h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515E20
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_453283 endp




sub_45332F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_453414
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_453389
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45339F

loc_453389:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45339F:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559EB0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559EB4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559EB8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559EB0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_453416

loc_453414:
xor     eax, eax

loc_453416:
add     esp, 4
jmp     loc_452E9E
sub_45332F endp




sub_45341E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_453445
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_453445:
xor     edx, edx
mov     dl, [esi+3]
mov     eax, esi
call    ds:funcs_45344C[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_453467
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_453473

loc_453467:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_453473:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45341E endp




sub_45347F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_453485[edx*4]
pop     edx
retn
sub_45347F endp




sub_45348E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_453494[edx*4]
pop     edx
retn
sub_45348E endp




sub_45349D proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+9], 0

loc_453577:
mov     word ptr [ecx+64h], 80h
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_45349D endp




sub_453597 proc near

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
mov     esi, eax
cmp     eax, ds:dword_5F84E8
jnz     loc_45363C
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 80h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+28h+var_24], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     ecx, ds:dword_77E964
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     ds:word_559EC0, ax
mov     byte ptr [esi+8], 2
jmp     short loc_45365E

loc_45363C:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_45364B
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45365E

loc_45364B:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45365E:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453597 endp




sub_453668 proc near
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
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_45368F
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45368F:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453668 endp




sub_4536A7 proc near
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
mov     dword ptr [ecx+10h], offset unk_515E54
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
jmp     loc_453577
sub_4536A7 endp




sub_453782 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_559EBE
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_4537EB
call    sub_42ABA2
test    eax, eax
jnz     short loc_4537EB
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 3
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 1
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4537EB:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453782 endp




sub_4537F7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_45381F
call    sub_42A98E
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_45381F:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4537F7 endp




sub_45382A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_453886
call    sub_42ABA2
test    eax, eax
jnz     short loc_453886
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_453886:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45382A endp




sub_453891 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_4538B8
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_4538B8:
mov     dl, [esi+3]
and     dl, 0Fh
and     edx, 0FFh
mov     eax, esi
call    ds:off_515E74[edx*4]
cmp     byte ptr [esi+0Bh], 0
jz      short loc_4538E1
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_4538ED

loc_4538E1:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_4538ED:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453891 endp




sub_4538F9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4538FF[edx*4]
pop     edx
retn
sub_4538F9 endp




sub_453908 proc near

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
mov     esi, eax
cmp     eax, ds:dword_5F84E8
jnz     loc_4539AD
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 80h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+28h+var_24], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     ecx, ds:dword_77E964
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     ds:word_559EC4, ax
mov     byte ptr [esi+8], 2
jmp     short loc_4539CF

loc_4539AD:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4539BC
mov     eax, esi
call    sub_4DEADD
jmp     short loc_4539CF

loc_4539BC:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_4539CF:
add     esp, 10h

loc_4539D2:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_453908 endp




sub_4539D9 proc near
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
mov     dword ptr [ecx+10h], offset unk_515E78
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+64h], 80h
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_4539D9 endp




sub_453ACF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_559EC2
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     loc_453BDD
call    sub_42ABA2
test    eax, eax
jnz     loc_453BDD
test    byte ptr [ecx+3], 80h
jz      short loc_453B4A
call    sub_4540B7
test    ax, ax
jz      short loc_453B35
mov     edx, 48h ; 'H'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+9], 0Ah
jmp     loc_453BBC

loc_453B35:
mov     edx, 7Ch ; '|'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+9], 0FFh
jmp     loc_453BBC

loc_453B4A:
call    sub_4540B7
test    ax, ax
jz      short loc_453B89
mov     eax, 232h
call    sub_47E888
test    eax, eax
jz      short loc_453B77
mov     eax, 233h
call    sub_47E888
test    eax, eax
jnz     short loc_453B77
mov     edx, 66h ; 'f'
jmp     short loc_453B7E

loc_453B77:
mov     edx, 65h ; 'e'
xor     eax, eax

loc_453B7E:
call    sub_4A0E24
mov     byte ptr [ecx+9], 0
jmp     short loc_453BBC

loc_453B89:
mov     eax, 232h
call    sub_47E888
test    eax, eax
jz      short loc_453BAC
mov     eax, 233h
call    sub_47E888
test    eax, eax
jnz     short loc_453BAC
mov     edx, 61h ; 'a'
jmp     short loc_453BB3

loc_453BAC:
mov     edx, 60h ; '`'
xor     eax, eax

loc_453BB3:
call    sub_4A0E24
mov     byte ptr [ecx+9], 8

loc_453BBC:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+0Bh], 1
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_453BDD:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_453ACF endp

db 90h
jpt_453D48 dd offset loc_453D4F ; jump table for switch statement
dd offset loc_453D8C
dd offset loc_453D99
dd offset loc_453DA6
dd offset loc_453DB3
dd offset loc_453DD4
dd offset loc_453DF7



sub_453C05 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 5
jb      short loc_453C5A
jbe     loc_453E9C
cmp     al, 8
jb      short loc_453C4D
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
cmp     al, 8
jbe     loc_453F10
cmp     al, 0Ah
jb      loc_453F48
jbe     loc_453FAF
cmp     al, 0FFh
jz      loc_453FE5
jmp     loc_453FFE

loc_453C4D:
cmp     al, 6
jbe     loc_453EC0
jmp     loc_453EE8

loc_453C5A:
cmp     al, 2
jb      short loc_453C71
jbe     loc_453E00
cmp     al, 3
jbe     loc_453E5A
jmp     loc_453E7B

loc_453C71:
test    al, al
ja      loc_453D28
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 1
jnz     short loc_453C9C

loc_453C95:
mov     edx, 63h ; 'c'
jmp     short loc_453CB9

loc_453C9C:
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_453CEE
mov     eax, 0FFFFFFFFh
call    sub_4B6204
cmp     eax, 0FFFFFFFFh
jnz     short loc_453CD1

loc_453CB4:
mov     edx, 68h ; 'h'

loc_453CB9:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1

loc_453CC8:
mov     byte ptr [ecx+9], 0FFh
jmp     loc_453FFE

loc_453CD1:
mov     edx, 58h ; 'X'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+9], 1
jmp     loc_453FFE

loc_453CEE:
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 2
jnz     loc_453FFE

loc_453D01:
mov     eax, 5DCh
call    sub_4A62A5
mov     edx, 67h ; 'g'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+9], 9
jmp     loc_453FFE

loc_453D28:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 6          ; switch 7 cases
ja      def_453D48      ; jumptable 00453D48 default case
jmp     jpt_453D48[eax*4] ; switch jump

loc_453D4F:             ; jumptable 00453D48 case 0
mov     eax, 1F4h
sub     eax, ds:dword_77E7AC

loc_453D5A:
call    sub_4A62A5

def_453D48:             ; jumptable 00453D48 default case
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
add     edx, 6Ch ; 'l'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     al, byte ptr ds:dword_55BD7C
inc     al
add     [ecx+9], al
jmp     loc_453FFE

loc_453D8C:             ; jumptable 00453D48 case 1
mov     eax, 0C8h
sub     eax, ds:dword_77E7B0
jmp     short loc_453D5A

loc_453D99:             ; jumptable 00453D48 case 2
mov     eax, 0FAh
sub     eax, ds:dword_77E7B4
jmp     short loc_453D5A

loc_453DA6:             ; jumptable 00453D48 case 3
mov     eax, 0C8h
sub     eax, ds:dword_77E7B8
jmp     short loc_453D5A

loc_453DB3:             ; jumptable 00453D48 case 4
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+3
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, eax
shl     eax, 4
sub     eax, edx
sub     eax, ds:dword_77E7C0
jmp     short loc_453D5A

loc_453DD4:             ; jumptable 00453D48 case 5
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+2
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sub     eax, ds:dword_77E7BC
jmp     loc_453D5A

loc_453DF7:             ; jumptable 00453D48 case 6
mov     byte ptr [ecx+9], 0FFh
jmp     loc_4539D2

loc_453E00:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     eax, ds:dword_55B994
test    eax, eax
jz      short loc_453E36
add     ds:dword_77E7AC, eax

loc_453E1C:
mov     ebx, 1
xor     edx, edx
neg     eax
call    sub_4B6217
mov     edx, 73h ; 's'
xor     eax, eax
call    sub_4A0E24

loc_453E36:
mov     byte ptr [ecx+9], 0FFh
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1

loc_453E42:
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
jmp     loc_4539D2

loc_453E5A:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     edi, ds:dword_55B994
test    edi, edi
jz      short loc_453E36
mov     eax, edi
add     ds:dword_77E7B0, edi
jmp     short loc_453E1C

loc_453E7B:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     ebx, ds:dword_55B994
test    ebx, ebx
jz      short loc_453E36
mov     eax, ebx
add     ds:dword_77E7B4, ebx
jmp     short loc_453E1C

loc_453E9C:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     ebp, ds:dword_55B994
test    ebp, ebp
jz      short loc_453E36
mov     eax, ebp
add     ds:dword_77E7B8, ebp
jmp     loc_453E1C

loc_453EC0:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     esi, ds:dword_55B994
test    esi, esi
jz      loc_453E36
mov     eax, esi
add     ds:dword_77E7C0, esi
jmp     loc_453E1C

loc_453EE8:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
mov     edx, ds:dword_55B994
test    edx, edx
jz      loc_453E36
mov     eax, edx
add     ds:dword_77E7BC, edx
jmp     loc_453E1C

loc_453F10:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
cmp     edx, 1
jb      short loc_453F36
jbe     loc_453C95
cmp     edx, 2
jz      loc_453D01
jmp     loc_453FFE

loc_453F36:
test    edx, edx
jnz     loc_453FFE
mov     edx, 62h ; 'b'
jmp     loc_453CB9

loc_453F48:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_453FFE
test    byte ptr ds:dword_55BD7C, 0FFh
jz      short loc_453F68
mov     edx, 6Ah ; 'j'
jmp     loc_453CB9

loc_453F68:
mov     eax, 0FFFFFA24h
call    sub_4B6204
cmp     eax, 0FFFFFFFFh
jz      loc_453CB4
mov     edx, 69h ; 'i'
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Eh], 8
mov     byte ptr [ecx+0Dh], 1
mov     ebx, 1
xor     edx, edx
mov     eax, 0FFFFFA24h
call    sub_4B6217
mov     eax, 233h
call    sub_47E8B8
jmp     loc_453CC8

loc_453FAF:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_453FFE
test    edx, edx
jbe     short loc_453FC3
cmp     edx, 1
jz      short loc_453FDB
jmp     short loc_453FFE

loc_453FC3:
mov     eax, 0FFFFFFFFh
call    sub_4B6204
cmp     eax, 0FFFFFFFFh
jz      loc_453CB4
jmp     loc_453CD1

loc_453FDB:
mov     edx, 57h ; 'W'
jmp     loc_453CB9

loc_453FE5:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_453FFE
call    sub_42A98E
mov     byte ptr [ecx+0Eh], 1
mov     byte ptr [ecx+0Dh], 1
inc     byte ptr [ecx+8]

loc_453FFE:
cmp     byte ptr [ecx+0Dh], 0
jnz     loc_453E42
mov     eax, ecx
call    sub_4DEADD
jmp     loc_4539D2
sub_453C05 endp




sub_454014 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_4540AC
call    sub_42ABA2
test    eax, eax
jnz     short loc_4540AC
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     eax, 23Dh
call    sub_47EA91
mov     eax, 23Eh
call    sub_47EA91
mov     eax, 23Fh
call    sub_47EA91
mov     eax, 240h
call    sub_47EA91
mov     eax, 241h
call    sub_47EA91
mov     eax, 242h
call    sub_47EA91
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4540AC:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_454014 endp




sub_4540B7 proc near
push    ebx
push    edx
xor     ebx, ebx
mov     edx, 205h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_4540EA
cmp     ds:dword_77E7AC, 1F4h
jz      short loc_4540EA
mov     ebx, 1
mov     eax, 23Dh
call    sub_47E8B8

loc_4540EA:
mov     edx, 0FCh
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_454119
cmp     ds:dword_77E7B0, 0C8h
jz      short loc_454119
mov     ebx, 1
mov     eax, 23Eh
call    sub_47E8B8

loc_454119:
mov     edx, 120h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_454148
cmp     ds:dword_77E7B4, 0FAh
jz      short loc_454148
mov     ebx, 1
mov     eax, 23Fh
call    sub_47E8B8

loc_454148:
mov     edx, 26h ; '&'
mov     eax, 5
call    sub_4A7EE1
cmp     eax, 3
jz      short loc_454177
cmp     ds:dword_77E7B8, 0C8h
jz      short loc_454177
mov     ebx, 1
mov     eax, 240h
call    sub_47E8B8

loc_454177:
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+3
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, eax
shl     eax, 4
sub     eax, edx
cmp     eax, ds:dword_77E7C0
jz      short loc_4541A7
mov     ebx, 1
mov     eax, 241h
call    sub_47E8B8

loc_4541A7:
xor     edx, edx
mov     dl, byte ptr ds:dword_77E7E8+2
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
cmp     eax, ds:dword_77E7BC
jz      short loc_4541D6
mov     ebx, 1
mov     eax, 242h
call    sub_47E8B8

loc_4541D6:
mov     eax, ebx
pop     edx
pop     ebx
retn
sub_4540B7 endp




sub_4541DB proc near
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
mov     dl, [eax+3]
call    ds:funcs_454202[edx*4]
mov     dl, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     dl, ah
jz      short loc_454228
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45422F

loc_454228:
mov     eax, ebp
call    sub_4DEADD

loc_45422F:
test    byte ptr [ebp+0], 2
jz      short loc_454248
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_454248:
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl

loc_454254:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4541DB endp




sub_45425B proc near
push    edx
mov     edx, eax
mov     al, [eax+8]
test    al, al
jnz     short loc_45426F
mov     eax, edx
call    sub_454351
inc     byte ptr [edx+8]

loc_45426F:
pop     edx
retn
sub_45425B endp

db 8Bh, 0C0h
jpt_45429D dd offset loc_4542A4 ; jump table for switch statement
dd offset loc_4542B3
dd offset loc_4542C4
dd offset loc_45430E
dd offset loc_45431E



sub_454287 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45429D      ; jumptable 0045429D default case
and     eax, 0FFh
jmp     jpt_45429D[eax*4] ; switch jump

loc_4542A4:             ; jumptable 0045429D case 0
mov     eax, esi
call    sub_454351

loc_4542AB:
inc     byte ptr [esi+8]
jmp     def_45429D      ; jumptable 0045429D default case

loc_4542B3:             ; jumptable 0045429D case 1
mov     eax, esi
call    sub_4543D0
test    eax, eax
jz      def_45429D      ; jumptable 0045429D default case
jmp     short loc_4542AB

loc_4542C4:             ; jumptable 0045429D case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_45429D ; jumptable 0045429D default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45429D ; jumptable 0045429D default case
mov     edx, 14h
call    sub_4A0E24
mov     byte ptr [esi+0ACh], 8
jmp     short loc_4542AB

loc_45430E:             ; jumptable 0045429D case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45429D ; jumptable 0045429D default case
call    sub_42A98E
jmp     short loc_4542AB

loc_45431E:             ; jumptable 0045429D case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45429D ; jumptable 0045429D default case
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45429D:             ; jumptable 0045429D default case
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
sub_454287 endp




sub_454351 proc near
push    ecx
push    edx
mov     ecx, eax
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
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_515E8C
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
pop     edx
pop     ecx
retn
sub_454351 endp




sub_4543D0 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_4544B5
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_45442A
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_454440

loc_45442A:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_454440:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 80h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559EC8, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559ECC, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559ED0, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559EC8
call    sub_42AAA8
mov     eax, 1
jmp     short loc_4544B7

loc_4544B5:
xor     eax, eax

loc_4544B7:
add     esp, 4
jmp     loc_454254
sub_4543D0 endp




sub_4544BF proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4544BF endp




sub_4544ED proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454509
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454509:
pop     edx
pop     ecx
pop     ebx
retn
sub_4544ED endp




sub_45450D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454529
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454529:
pop     edx
pop     ecx
pop     ebx
retn
sub_45450D endp




sub_45452D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454549
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454549:
pop     edx
pop     ecx
pop     ebx
retn
sub_45452D endp




sub_45454D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454569
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454569:
pop     edx
pop     ecx
pop     ebx
retn
sub_45454D endp




sub_45456D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_454589
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_454589:
pop     edx
pop     ecx
pop     ebx
retn
sub_45456D endp




sub_45458D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4545A9
xor     ebx, ebx
mov     edx, 1Dh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4545A9:
pop     edx
pop     ecx
pop     ebx
retn
sub_45458D endp




sub_4545AD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4545C9
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4545C9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4545AD endp




sub_4545CD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4545E9
xor     ebx, ebx
mov     edx, 1Bh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4545E9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4545CD endp




sub_4545ED proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4545F7[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_454616
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_454616:
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_454644
mov     dh, [ecx+0Fh]
inc     dh
mov     [ecx+0Fh], dh
mov     bl, dh
and     bl, 1Fh
mov     [ecx+0Fh], bl
mov     edx, [ecx+0Bh]
sar     edx, 18h
shl     edx, 5
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_515E98[edx+eax]
jmp     short loc_454650

loc_454644:
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     al, ds:byte_515ED8[eax]

loc_454650:
mov     [ecx+0FCh], al
pop     edx
pop     ecx
pop     ebx
retn
sub_4545ED endp




sub_45465A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_45466D
mov     eax, esi
call    sub_4544BF

loc_45466D:
mov     eax, esi
call    sub_4545ED
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
sub_45465A endp




sub_45468C proc near

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
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_4546E1[edx*4]
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_454707
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_45470E

loc_454707:
mov     eax, ebp
call    sub_4DEB53

loc_45470E:
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+3Eh]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      short loc_45476F
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+190h]
movsd
movsd
push    80h
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
mov     edx, 20h ; ' '
call    sub_4E01FC

loc_45476F:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

loc_45479F:
add     esp, 4

loc_4547A2:
pop     ebp

def_454CD4:             ; jumptable 00454CD4 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45468C endp




sub_4547A9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 1Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+3Ch], 0
mov     word ptr [esi+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
mov     esi, ds:dword_55A10C
mov     esi, [esi+eax*4]
xor     eax, eax
mov     al, [esi+8]
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_515F2C
mov     dword ptr [ecx+10h], offset unk_515F38
mov     al, [ecx+3]
cmp     al, 1
jb      short loc_454875
jbe     short loc_454890
cmp     al, 2
jz      short loc_4548A4
jmp     short loc_4548BD

loc_454875:
test    al, al
jnz     short loc_4548BD
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 1
jmp     short loc_4548B6

loc_454890:
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4548B6

loc_4548A4:
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+9], 3
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
xor     edx, edx

loc_4548B6:
mov     eax, ecx
call    sub_4DE96B

loc_4548BD:
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4547A9 endp

align 4
jpt_454929 dd offset loc_45493C ; jump table for switch statement
dd offset loc_454930
dd offset loc_454936
dd offset def_454929
dd offset loc_454936



sub_4548E0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 10h
jz      short loc_4548F8
mov     eax, edx
call    sub_455287

loc_4548F8:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_4548FF[ebx*4]
mov     bx, [ecx+0Ah]
test    bx, bx
jz      short loc_454916
mov     esi, ebx
dec     esi
mov     [ecx+0Ah], si

loc_454916:
test    byte ptr [ecx], 1
jz      short loc_454949
mov     bl, [edx+9]
cmp     bl, 4           ; switch 5 cases
ja      short def_454929 ; jumptable 00454929 default case, case 3
and     ebx, 0FFh
jmp     jpt_454929[ebx*4] ; switch jump

loc_454930:             ; jumptable 00454929 case 1
mov     byte ptr [edx+9], 4
jmp     short def_454929 ; jumptable 00454929 default case, case 3

loc_454936:             ; jumptable 00454929 cases 2,4
mov     byte ptr [edx+9], 2
jmp     short def_454929 ; jumptable 00454929 default case, case 3

loc_45493C:             ; jumptable 00454929 case 0
mov     byte ptr [edx+9], 0

def_454929:             ; jumptable 00454929 default case, case 3
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_454949:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4548E0 endp

align 10h
jpt_4549B1 dd offset loc_4549CD ; jump table for switch statement
dd offset loc_4549C7
dd offset def_4549B1
dd offset loc_4549BE
dd offset loc_4549BE
dd offset loc_4549B8



sub_454968 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 10h
jz      short loc_454980
mov     eax, edx
call    sub_455287

loc_454980:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_4548FF[ebx*4]
mov     bx, [ecx+0Ah]
test    bx, bx
jz      short loc_45499E
mov     esi, ebx
dec     esi
mov     [ecx+0Ah], si

loc_45499E:
test    byte ptr [ecx], 1
jz      short loc_4549DA
mov     bl, [edx+9]
cmp     bl, 5           ; switch 6 cases
ja      short def_4549B1 ; jumptable 004549B1 default case, case 2
and     ebx, 0FFh
jmp     jpt_4549B1[ebx*4] ; switch jump

loc_4549B8:             ; jumptable 004549B1 case 5
mov     byte ptr [edx+9], 3
jmp     short def_4549B1 ; jumptable 004549B1 default case, case 2

loc_4549BE:             ; jumptable 004549B1 cases 3,4
mov     eax, edx
call    sub_4551B7
jmp     short def_4549B1 ; jumptable 004549B1 default case, case 2

loc_4549C7:             ; jumptable 004549B1 case 1
mov     byte ptr [edx+9], 4
jmp     short def_4549B1 ; jumptable 004549B1 default case, case 2

loc_4549CD:             ; jumptable 004549B1 case 0
mov     byte ptr [edx+9], 0

def_4549B1:             ; jumptable 004549B1 default case, case 2
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_4549DA:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_454968 endp




sub_4549DF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
test    byte ptr [edx], 10h
jz      short loc_4549F7
mov     eax, ecx
call    sub_455287

loc_4549F7:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_4548FF[ebx*4]
mov     bx, [edx+0Ah]
test    bx, bx
jz      short loc_454A15
mov     esi, ebx
dec     esi
mov     [edx+0Ah], si

loc_454A15:
test    byte ptr [edx], 1
jz      short loc_454A27
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_454A27:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4549DF endp



; Attributes: thunk

sub_454A2C proc near
jmp     sub_4DE2F6
sub_454A2C endp




sub_454A31 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_454A49
cmp     bl, 1
jz      short loc_454A60
pop     edx
pop     ebx
retn

loc_454A49:
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0
mov     word ptr [eax+4], 1Eh
mov     word ptr [eax+8], 0

loc_454A60:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_454A71
or      byte ptr [eax], 1

loc_454A71:
pop     edx
pop     ebx
retn
sub_454A31 endp




sub_454A74 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_454A91
cmp     al, 1
jz      short loc_454AF2
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454A91:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 31h ; '1'
xor     eax, eax
mov     ax, [edi+3Ch]
mov     edx, ds:dword_515F46[eax*8]
sar     edx, 10h
sar     edx, 1
mov     eax, ds:dword_515F42[eax*8]
sar     eax, 10h
add     eax, edx
mov     [edi+34h], ax
mov     word ptr [edi+36h], 0
xor     eax, eax
mov     ax, [edi+3Ch]
mov     edx, ds:(dword_515F46+2)[eax*8]
sar     edx, 10h
sar     edx, 1
mov     eax, ds:(dword_515F42+2)[eax*8]
sar     eax, 10h
add     eax, edx
mov     [edi+38h], ax
mov     word ptr [edi+8], 0

loc_454AF2:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+34h]
lea     eax, [esi+14h]
mov     ecx, 8
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     ebx, [esi+2Ch]
sar     ebx, 10h
sub     eax, ebx
test    eax, eax
jge     short loc_454B58
neg     eax

loc_454B58:
cmp     eax, 20h ; ' '
jle     short loc_454B7E
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+2Eh]
mov     [esi+16h], ax
mov     eax, [esi+38h]
mov     [esi+20h], eax
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454B7E:
test    dh, 0Fh
jz      short loc_454B91
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+56h], ax

loc_454B91:
xor     eax, eax
mov     ax, [edi+3Ch]
shl     eax, 3
mov     edx, ds:dword_515F42[eax]
sar     edx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, edx
mov     edx, ebx
mov     ebx, ds:(dword_515F42+2)[eax]
sar     ebx, 10h
mov     esi, [esi+16h]
sar     esi, 10h
sub     esi, ebx
mov     ebx, ds:dword_515F46[eax]
sar     ebx, 10h
cmp     edx, ebx
jnb     def_454CD4      ; jumptable 00454CD4 default case
mov     eax, ds:(dword_515F46+2)[eax]
sar     eax, 10h
cmp     esi, eax
jnb     def_454CD4      ; jumptable 00454CD4 default case
mov     bx, [edi+3Ch]
inc     ebx
mov     [edi+3Ch], bx
cmp     bx, 3
jbe     short loc_454BF5
mov     word ptr [edi+3Ch], 0

loc_454BF5:
or      byte ptr [edi], 1
jmp     def_454CD4      ; jumptable 00454CD4 default case
sub_454A74 endp

align 10h
jpt_454C2C dd offset loc_454C33 ; jump table for switch statement
dd offset loc_454C4A
dd offset loc_454C72
dd offset loc_454C91



sub_454C10 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_454C2C      ; jumptable 00454C2C default case
and     eax, 0FFh
jmp     jpt_454C2C[eax*4] ; switch jump

loc_454C33:             ; jumptable 00454C2C case 0
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [ecx+0ACh], 10h
mov     word ptr [edx+4], 14h
mov     word ptr [edx+8], 0

loc_454C4A:             ; jumptable 00454C2C case 1
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short def_454C2C ; jumptable 00454C2C default case
mov     byte ptr [ecx+0Ah], 2
mov     byte ptr [ecx+0ACh], 11h
mov     ax, [edx+2]
xor     ah, ah
and     al, 3
imul    eax, 17h
mov     [edx+4], ax

loc_454C72:             ; jumptable 00454C2C case 2
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jge     short def_454C2C ; jumptable 00454C2C default case
mov     byte ptr [ecx+0Ah], 3
mov     byte ptr [ecx+0ACh], 17h
mov     word ptr [edx+4], 14h

loc_454C91:             ; jumptable 00454C2C case 3
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short def_454C2C ; jumptable 00454C2C default case
or      byte ptr [edx], 1

def_454C2C:             ; jumptable 00454C2C default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_454C10 endp

align 4
jpt_454CD4 dd offset loc_454CDB ; jump table for switch statement
dd offset loc_454D12
dd offset loc_454D8C
dd offset loc_454E10



sub_454CB8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_454CD4      ; jumptable 00454CD4 default case
xor     edx, edx
mov     dl, al
jmp     jpt_454CD4[edx*4] ; switch jump

loc_454CDB:             ; jumptable 00454CD4 case 0
mov     byte ptr [edi+0Ah], 1
mov     ax, [edi+56h]
add     eax, 10h
xor     al, al
and     ah, 0Fh
mov     [edi+56h], ax
test    byte ptr [esi], 40h
jz      short loc_454CFF
mov     byte ptr [edi+0ACh], 12h
jmp     short loc_454D06

loc_454CFF:
mov     byte ptr [edi+0ACh], 13h

loc_454D06:
mov     word ptr [esi+4], 27h ; '''
mov     word ptr [esi+8], 0

loc_454D12:             ; jumptable 00454CD4 case 1
mov     ax, [esi+4]
dec     eax
mov     [esi+4], ax
test    ax, ax
jge     short loc_454D54
test    byte ptr [esi], 40h
jz      short loc_454D3B
mov     ax, [edi+56h]
add     ah, 4
and     ah, 0Fh
mov     [edi+56h], ax
mov     word ptr [esi+3Eh], 0E53h
jmp     short loc_454D67

loc_454D3B:
mov     ax, [edi+56h]
sub     eax, 400h
and     ah, 0Fh
mov     [edi+56h], ax
mov     word ptr [esi+3Eh], 1ADh
jmp     short loc_454D67

loc_454D54:
test    byte ptr [esi], 40h
jnz     loc_454E5B

loc_454D5D:
add     word ptr [esi+3Eh], 0Bh
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454D67:
mov     byte ptr [edi+0Ah], 2
mov     byte ptr [edi+0ACh], 14h
mov     word ptr [edi+44h], 26h ; '&'
mov     ax, [esi+2]
xor     ah, ah
and     al, 3
inc     eax
shl     eax, 5
mov     [esi+6], ax
mov     [esi+4], ax

loc_454D8C:             ; jumptable 00454CD4 case 2
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_454DD7
mov     byte ptr [edi+0Ah], 3
test    byte ptr [esi], 40h
jz      short loc_454DC4
mov     byte ptr [edi+0ACh], 13h
jmp     short loc_454DCB

loc_454DC4:
mov     byte ptr [edi+0ACh], 12h

loc_454DCB:
mov     word ptr [esi+3Ch], 0
mov     word ptr [esi+4], 27h ; '''

loc_454DD7:
test    ah, 0Fh
jz      def_454CD4      ; jumptable 00454CD4 default case
mov     byte ptr [edi+0Ah], 3
test    byte ptr [esi], 40h
jz      short loc_454DF8
mov     byte ptr [edi+0ACh], 13h
mov     word ptr [esi+3Ch], 1
jmp     short loc_454E05

loc_454DF8:
mov     byte ptr [edi+0ACh], 12h
mov     word ptr [esi+3Ch], 2

loc_454E05:
mov     word ptr [esi+4], 27h ; '''
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454E10:             ; jumptable 00454CD4 case 3
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     short loc_454E52
mov     byte ptr [edi+0ACh], 0
test    byte ptr [esi], 40h
jz      short loc_454E36
mov     ax, [edi+56h]
sub     eax, 400h
jmp     short loc_454E3D

loc_454E36:
mov     ax, [edi+56h]
add     ah, 4

loc_454E3D:
and     ah, 0Fh
mov     [edi+56h], ax
mov     word ptr [esi+3Eh], 0
or      byte ptr [esi], 1
jmp     def_454CD4      ; jumptable 00454CD4 default case

loc_454E52:
test    byte ptr [esi], 40h
jnz     loc_454D5D

loc_454E5B:
sub     word ptr [esi+3Eh], 0Bh
jmp     def_454CD4      ; jumptable 00454CD4 default case
sub_454CB8 endp

align 4
jpt_454EA2 dd offset loc_454EA9 ; jump table for switch statement
dd offset loc_454F95
dd offset loc_455009
dd offset loc_455033



sub_454E78 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
lea     edi, [eax+408h]
mov     edx, offset byte_5F8364
mov     [esp+20h+var_1C], edx
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_454EA2      ; jumptable 00454EA2 default case
and     eax, 0FFh
jmp     jpt_454EA2[eax*4] ; switch jump

loc_454EA9:             ; jumptable 00454EA2 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [edx+14h]
mov     [esp+20h+var_20], eax
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_454EEE
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+20h+var_20]
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_454F03

loc_454EEE:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+20h+var_20]
mov     eax, ebp
call    sub_4DE552

loc_454F03:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [edi+3Eh], 0
mov     eax, [esp+20h+var_1C]
and     byte ptr [eax], 0FDh
mov     al, ds:byte_77E952
mov     ds:byte_559ED8, al
mov     al, ds:byte_77E953
mov     ds:byte_559ED9, al
mov     ds:byte_77E952, 10h
mov     ds:byte_77E953, 0F0h
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_77E9C8, eax
mov     eax, [esi+190h]
sar     eax, 10h
mov     ds:dword_77E9CC, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_77E9D0, eax
mov     ds:dword_77E980, 100h
lea     edx, [esi+14h]
mov     eax, [esp+20h+var_1C]
add     eax, 14h
call    sub_4DDDB4
add     eax, 800h
mov     ds:dword_77E984, eax
mov     eax, ds:dword_77E964
mov     ds:dword_77E988, eax
jmp     def_454EA2      ; jumptable 00454EA2 default case

loc_454F95:             ; jumptable 00454EA2 case 1
mov     ch, ds:byte_77E952
test    ch, ch
jz      short loc_454FA8
mov     al, ch
dec     al
mov     ds:byte_77E952, al

loc_454FA8:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esp+20h+var_1C]
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_454EA2      ; jumptable 00454EA2 default case
cmp     ds:byte_77E952, 1
jnz     def_454EA2      ; jumptable 00454EA2 default case
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 8
mov     edx, [esi+0Ah]
sar     edx, 18h
xor     eax, eax
call    sub_4A0E24
mov     word ptr [edi+4], 78h ; 'x'
jmp     def_454EA2      ; jumptable 00454EA2 default case

loc_455009:             ; jumptable 00454EA2 case 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     short loc_455024
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [edi+4], 78h ; 'x'

loc_455024:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_454EA2 ; jumptable 00454EA2 default case
mov     byte ptr [esi+0Ah], 3
jmp     short def_454EA2 ; jumptable 00454EA2 default case

loc_455033:             ; jumptable 00454EA2 case 3
mov     ah, ds:byte_77E952
cmp     ah, 10h
jb      short loc_455077
mov     al, ds:byte_559ED8
mov     ds:byte_77E952, al
mov     al, ds:byte_559ED9
mov     ds:byte_77E953, al
mov     eax, ds:dword_77E95C
mov     ds:dword_77E980, eax
and     ds:byte_5F8421, 7Fh
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
or      ds:byte_5F8364, 2
or      byte ptr [edi], 11h
jmp     short def_454EA2 ; jumptable 00454EA2 default case

loc_455077:
mov     dl, ah
inc     dl
mov     ds:byte_77E952, dl

def_454EA2:             ; jumptable 00454EA2 default case
add     esp, 8
jmp     loc_4547A2
sub_454E78 endp




sub_455089 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
lea     esi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4550AE
cmp     al, 1
jz      loc_45517F
jmp     loc_45479F

loc_4550AE:
mov     byte ptr [edi+0Ah], 1
mov     byte ptr [edi+0ACh], 1
cmp     byte ptr [edi+3], 0
jnz     short loc_455103
movzx   ebp, word ptr [esi+3Ch]
mov     eax, ds:dword_515F46[ebp*8]
sar     eax, 10h
sar     eax, 1
mov     edx, ds:dword_515F42[ebp*8]
sar     edx, 10h
add     eax, edx
mov     [esi+34h], ax
mov     word ptr [esi+36h], 0
movzx   ebp, word ptr [esi+3Ch]
mov     eax, ds:(dword_515F46+2)[ebp*8]
sar     eax, 10h
sar     eax, 1
mov     edx, ds:(dword_515F42+2)[ebp*8]
sar     edx, 10h
add     eax, edx
jmp     short loc_45511B

loc_455103:
mov     ax, [edi+14h]
mov     [esi+34h], ax
mov     word ptr [esi+36h], 0
mov     ax, [edi+18h]
sub     eax, 100h

loc_45511B:
mov     [esi+38h], ax
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     ebp, [esi+34h]
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_455157
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
neg     eax
jmp     short loc_45516C

loc_455157:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552

loc_45516C:
sar     eax, 3
mov     [edi+64h], ax
mov     word ptr [esi+4], 8
mov     word ptr [esi+8], 0

loc_45517F:
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jg      short loc_455190
or      byte ptr [esi], 1

loc_455190:
mov     ecx, [edi+62h]
sar     ecx, 10h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+34h]
lea     eax, [edi+14h]
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
jmp     loc_45479F
sub_455089 endp




sub_4551B7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     edx, [eax+408h]
xor     ecx, ecx
xor     ebx, ebx
jmp     short loc_4551D1

loc_4551CA:
inc     ebx
cmp     bx, 3
jge     short loc_455202

