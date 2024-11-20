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
