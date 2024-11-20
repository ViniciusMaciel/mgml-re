cmp     bh, 14h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebp, [eax+10h]
cmp     ebp, 1
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, ebp
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, ebp
jmp     loc_422214

loc_42256A:             ; jumptable 00422165 case 10
mov     dl, [eax+9]
cmp     dl, 14h
jnz     loc_422622
mov     eax, [eax+10h]
cmp     eax, 116h
jb      short loc_4225D1
jbe     loc_4225FE
cmp     eax, 1AEh
jb      short loc_4225B4
jbe     loc_4224A7
cmp     eax, 217h
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_4223A3
cmp     eax, 230h
jz      loc_4224A7
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4225B4:
cmp     eax, 1A4h
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422359
cmp     eax, 1A9h
jz      short loc_422608
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4225D1:
cmp     eax, 87h
jb      short loc_4225F5
jbe     loc_422359
cmp     eax, 9Fh
jb      def_422165      ; jumptable 00422165 default case
jbe     short loc_4225FE
cmp     eax, 0FEh
jmp     loc_422301

loc_4225F5:
cmp     eax, 14h
jnz     def_422165      ; jumptable 00422165 default case

loc_4225FE:
mov     ebx, 4
jmp     loc_42233D

loc_422608:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     byte ptr [ecx+0ACh], 7
jmp     loc_422538

loc_422622:
cmp     dl, 15h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 400h
mov     byte ptr [ecx+0ACh], 4
mov     word ptr [ebx+2], 0
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 8
jmp     loc_422214

loc_422660:             ; jumptable 00422165 case 11
mov     bl, [eax+9]
cmp     bl, 16h
jnz     short loc_4226B5
mov     eax, [eax+10h]
cmp     eax, 69h ; 'i'
jb      short loc_42268C
jbe     short loc_4226AB
cmp     eax, 0BEh
jb      short loc_422687
jbe     short loc_4226AB
cmp     eax, 0C8h

loc_422680:
jz      short loc_4226A1
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_422687:
cmp     eax, 78h ; 'x'
jmp     short loc_422680

loc_42268C:
cmp     eax, 28h ; '('
jb      short loc_422698
jbe     short loc_4226AB
cmp     eax, 3Ch ; '<'
jmp     short loc_422680

loc_422698:
cmp     eax, 0Ah
jnz     def_422165      ; jumptable 00422165 default case

loc_4226A1:
mov     ebx, 0Eh
jmp     loc_42234B

loc_4226AB:
mov     ebx, 8
jmp     loc_42234B

loc_4226B5:
cmp     bl, 17h
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     def_422165      ; jumptable 00422165 default case
mov     word ptr [ecx+56h], 0
mov     byte ptr [ecx+0ACh], 8
mov     word ptr [esi+2], 0
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
jmp     loc_422214

loc_4226F0:             ; jumptable 00422165 case 12
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 18h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 0Ah
jmp     loc_422181

loc_42270A:             ; jumptable 00422165 case 13
cmp     byte ptr [eax+9], 19h
jnz     def_422165      ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     def_422165      ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 9
jmp     loc_42229A

loc_42272A:             ; jumptable 00422165 case 14
mov     byte ptr [ecx+0ADh], 0FFh
mov     dl, [eax+9]
cmp     dl, 1Eh
jnz     short loc_42279C
mov     eax, [eax+10h]
cmp     eax, 0DCh
jb      short loc_42277B
jbe     loc_422359
cmp     eax, 190h
jb      short loc_422771
jbe     loc_422359
cmp     eax, 19Ah
jb      def_422165      ; jumptable 00422165 default case
jbe     loc_422338
cmp     eax, 1D6h
jmp     loc_422301

loc_422771:
cmp     eax, 0FAh
jmp     loc_422321

loc_42277B:
cmp     eax, 3Ch ; '<'
jb      short loc_42278E
jbe     loc_422359
cmp     eax, 5Ah ; 'Z'
jmp     loc_422321

loc_42278E:
cmp     eax, 1Eh
jnz     def_422165      ; jumptable 00422165 default case
jmp     loc_422338

loc_42279C:
cmp     dl, 1Fh
jnz     def_422165      ; jumptable 00422165 default case
mov     edi, [eax+10h]
cmp     edi, 0Ah
jnz     def_422165      ; jumptable 00422165 default case
mov     ebx, edi
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, edi
jmp     loc_422214

loc_4227C3:             ; jumptable 00422165 case 15
cmp     byte ptr [eax+9], 1Fh
jnz     short loc_4227EB
cmp     dword ptr [eax+10h], 14h
jnz     short loc_4227EB
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_42282E
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_422847

loc_4227EB:
cmp     byte ptr [ecx+0A4h], 27h ; '''
jnz     short def_422165 ; jumptable 00422165 default case
mov     byte ptr [ecx+0ACh], 9
mov     word ptr [esi+2], 27h ; '''
jmp     loc_42221D

loc_422806:             ; jumptable 00422165 case 16
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 21h ; '!'
jnz     short def_422165 ; jumptable 00422165 default case
cmp     dword ptr [eax+10h], 1
jnz     short def_422165 ; jumptable 00422165 default case
mov     byte ptr [ebx+12h], 0
jmp     loc_42221D

loc_422822:             ; jumptable 00422165 case 17
mov     byte ptr [ecx+0ADh], 0FFh

def_422165:             ; jumptable 00422165 default case
pop     ebp
pop     edi
pop     esi
pop     ecx
sub_422149 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_46]



sub_42282E proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_510B91[ebx*4]
mov     [edx+4], eax
retn
sub_42282E endp




sub_422847 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_510BBD[ebx*4]
mov     [edx+8], eax
retn
sub_422847 endp




sub_422860 proc near
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
jb      short loc_422885
jbe     short loc_422888
cmp     al, 7Fh
jnz     short loc_422885
mov     byte ptr [edx+0Eh], 0
jmp     short loc_422888

loc_422885:
inc     byte ptr [esi+0Eh]

loc_422888:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4228CA
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 0E000Dh
mov     eax, ecx
call    sub_4EE044

loc_4228CA:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4228ED
jbe     short loc_4228F0
cmp     al, 7Fh
jnz     short loc_4228ED
mov     byte ptr [esi+11h], 0
jmp     short loc_4228F0

loc_4228ED:
inc     byte ptr [esi+11h]

loc_4228F0:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_422932
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, edi
call    sub_4EE044

loc_422932:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_422860 endp




sub_42293D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+550h]
xor     ebx, ebx
mov     bl, [eax+8]
call    ds:funcs_42294D[ebx*4]
cmp     word ptr [ecx+7Ah], 2
jge     short loc_422994
cmp     ds:word_5F83D2, 0
jg      short loc_422990
test    byte ptr [ecx+2], 1
jnz     short loc_42298A
test    byte ptr [ecx+1], 2
jnz     short loc_42298A
mov     word ptr [ecx+7Ah], 2
mov     word ptr [ecx+78h], 3Ch ; '<'
add     edx, 14h
mov     eax, 1E9h
call    sub_4D8BC3

loc_42298A:
or      byte ptr [ecx+1], 2
jmp     short loc_422994

loc_422990:
and     byte ptr [ecx+1], 0FDh

loc_422994:
mov     dword ptr [ecx+18h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_42293D endp




sub_42299F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+550h]
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 0
xor     eax, eax

loc_4229DA:
mov     edx, eax
mov     word ptr [esi+edx*8+196h], 4210h
inc     eax
cmp     eax, 10h
jl      short loc_4229DA
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+44h], 0
mov     dword ptr [esi+48h], 0
mov     word ptr [ecx], 26h ; '&'
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+18h], 0
mov     dword ptr [ecx+1Ch], 0
lea     eax, [ecx+28h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+52h], 0
mov     byte ptr [ecx+53h], 0
mov     dword ptr [ecx+54h], 0
mov     word ptr [ecx+70h], 0
mov     byte ptr [ecx+72h], 0
mov     byte ptr [ecx+73h], 0
mov     word ptr [ecx+7Ah], 0FFFFh
mov     word ptr [ecx+78h], 0
mov     byte ptr [ecx+7Eh], 0
mov     byte ptr [ecx+7Ch], 0
mov     byte ptr [ecx+7Dh], 0
mov     byte ptr [ecx+7Fh], 0
call    sub_4DE043
mov     [ecx+58h], eax
test    eax, eax
jz      short loc_422AB1
mov     byte ptr [eax], 1
mov     eax, [ecx+58h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+58h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+58h]
mov     byte ptr [eax+0Dh], 5
mov     byte ptr [esi+10Fh], 0FFh
mov     eax, [ecx+58h]
or      byte ptr [eax+6], 20h

loc_422AB1:
call    sub_4DE043
mov     [ecx+5Ch], eax
test    eax, eax
jz      short loc_422AE5
mov     byte ptr [eax], 1
mov     eax, [ecx+5Ch]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+5Ch]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+5Ch]
mov     byte ptr [eax+0Dh], 0Ah
mov     byte ptr [esi+123h], 0FFh
mov     eax, [ecx+5Ch]
or      byte ptr [eax+6], 20h

loc_422AE5:
call    sub_4DE043
mov     [ecx+60h], eax
test    eax, eax
jz      short loc_422B19
mov     byte ptr [eax], 1
mov     eax, [ecx+60h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+60h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+60h]
mov     byte ptr [eax+0Dh], 6
mov     byte ptr [esi+113h], 0FFh
mov     eax, [ecx+60h]
or      byte ptr [eax+6], 20h

loc_422B19:
call    sub_4DE043
mov     [ecx+64h], eax
test    eax, eax
jz      short loc_422B4D
mov     byte ptr [eax], 1
mov     eax, [ecx+64h]
mov     byte ptr [eax+2], 34h ; '4'
mov     eax, [ecx+64h]
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     eax, [ecx+64h]
mov     byte ptr [eax+0Dh], 0Bh
mov     byte ptr [esi+127h], 0FFh
mov     eax, [ecx+64h]
or      byte ptr [eax+6], 20h

loc_422B4D:
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 7
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], 0
mov     dword ptr [esi+10h], 0
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     ebx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 3
add     eax, edx
mov     ds:dword_559258, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
mov     ds:dword_55925C, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
shl     eax, 2
mov     ds:dword_559260, eax
mov     edx, [esi+6Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ds:dword_559264, eax
mov     ds:dword_559268, 0FFFFFFFFh
mov     dword ptr [ecx+74h], offset dword_559258
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [esi+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
push    offset unk_805058
mov     ecx, 81h
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
mov     eax, esi
call    sub_422C4D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_42299F endp

db 8Dh, 40h, 0
jpt_422D14 dd offset loc_422D33 ; jump table for switch statement
dd offset loc_422D49
dd offset loc_422D33
dd offset loc_422D33
dd offset loc_422D33
dd offset loc_422D1B
dd offset loc_422D33



sub_422C4D proc near

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
xor     eax, eax

loc_422C88:
mov     edx, eax
mov     word ptr [ebp+edx*8+196h], 4210h
inc     eax
cmp     eax, 10h
jl      short loc_422C88
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
call    sub_436700
and     byte ptr [ebp+0Eh], 0F8h
and     byte ptr [ebp+0Fh], 11h
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 4
jz      short loc_422CC2
mov     eax, ebp
call    sub_42497B

loc_422CC2:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_422CC9[edx*4]
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+50h]
sar     eax, 18h
mov     eax, ds:off_510C40[eax*4]
mov     [ebp+78h], eax
test    eax, eax
jz      short loc_422CF6
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+0Ch], eax
jmp     short loc_422D00

loc_422CF6:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+0Ch], 0

loc_422D00:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_422D5F
mov     al, [ebp+9]
cmp     al, 6           ; switch 7 cases
ja      short def_422D14 ; jumptable 00422D14 default case
and     eax, 0FFh
jmp     jpt_422D14[eax*4] ; switch jump

loc_422D1B:             ; jumptable 00422D14 case 5
cmp     word ptr [ebp+6Eh], 0
jle     short loc_422D33 ; jumptable 00422D14 cases 0,2-4,6
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+70h]
dec     ebx
mov     [eax+70h], bx
test    bx, bx
ja      short loc_422D53

loc_422D33:             ; jumptable 00422D14 cases 0,2-4,6
cmp     word ptr [ebp+6Eh], 0
jle     short loc_422D43
mov     eax, ebp
call    sub_424865
jmp     short loc_422D53

loc_422D43:
mov     byte ptr [ebp+9], 7
jmp     short loc_422D53

loc_422D49:             ; jumptable 00422D14 case 1
mov     byte ptr [ebp+9], 2
jmp     short loc_422D53

def_422D14:             ; jumptable 00422D14 default case
mov     byte ptr [ebp+9], 0

loc_422D53:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_422D5F:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+0Ah]
test    di, di
jz      short loc_422D72
mov     edx, edi
dec     edx
mov     [eax+0Ah], dx

loc_422D72:
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+78h]
test    bx, bx
jz      short loc_422D87
mov     ecx, ebx
dec     ecx
mov     [eax+78h], cx
jmp     short loc_422D8D

loc_422D87:
mov     word ptr [eax+7Ah], 0FFFFh

loc_422D8D:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jz      short loc_422DBD
mov     al, [ebp+0ADh]
mov     ch, [ebp+0ACh]
cmp     al, ch
jz      short loc_422DB4
xor     edx, edx
mov     dl, ch
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_422DCB

loc_422DB4:
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_422DCB

loc_422DBD:
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

loc_422DCB:
mov     ax, [ebp+14h]
sub     ax, [ebp+2Ch]
shl     eax, 4
mov     [ebp+44h], ax
mov     ax, [ebp+16h]
sub     ax, [ebp+2Eh]
shl     eax, 4
mov     [ebp+46h], ax
mov     ax, [ebp+18h]
sub     ax, [ebp+30h]
shl     eax, 4
mov     [ebp+48h], ax
test    byte ptr [ebp+0], 2
jz      short loc_422E1C
cmp     word ptr [ebp+196h], 4210h
jnz     short loc_422E1C
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_422E1C:
test    byte ptr [ebp+0], 1
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     word ptr [eax+38h], 0
test    byte ptr [eax+1], 4
jz      short loc_422E46
mov     word ptr [eax+3Ah], 0FE00h
jmp     short loc_422E4C

loc_422E46:
mov     word ptr [eax+3Ah], 200h

loc_422E4C:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+3Ch], 0
lea     ebx, [eax+40h]
lea     edx, [eax+38h]
lea     eax, [ebp+250h]
call    sub_4EF1FB
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+40h]
add     ax, [ebp+190h]
mov     edx, [esp+1Ch+var_1C]
mov     [edx+10h], ax
mov     ax, [edx+44h]
mov     si, [ebp+192h]
add     eax, esi
mov     [edx+12h], ax
mov     ax, [edx+48h]
mov     di, [ebp+194h]
add     eax, edi
mov     [edx+14h], ax
push    0
push    0
mov     eax, [edx+4Fh]
sar     eax, 18h
xor     edx, edx
mov     ebx, [esp+24h+var_1C]
mov     dx, [ebx+8]
or      edx, ds:dword_510C4C[eax*4]
push    edx
lea     eax, [ebx+18h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebx+10h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 68h ; 'h'
call    sub_4E01FC
jmp     def_4232E3      ; jumptable 004232E3 default case
sub_422C4D endp         ; jumptable 00423877 default case
; jumptable 00423D8F default case


; Attributes: thunk

sub_422EDC proc near
jmp     sub_4DE336
sub_422EDC endp




sub_422EE1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_422F02
cmp     al, 1
jz      loc_422F86
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_422F02:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0
or      byte ptr [esi], 20h
mov     word ptr [esi+50h], 0FFA0h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
mov     [esi+53h], ah
mov     [esi+52h], ah
call    sub_4DE043
test    eax, eax
jz      short loc_422F86
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FDh
mov     word ptr [eax+2Ch], 0C8h
mov     word ptr [eax+2Eh], 0C8h
mov     word ptr [eax+30h], 0C8h
mov     word ptr [eax+32h], 700h
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 10h
mov     word ptr [eax+18h], 10h
mov     word ptr [eax+1Ah], 500h
mov     byte ptr [eax+0Bh], 3Ch ; '<'
mov     byte ptr [eax+0Ah], 0

loc_422F86:
mov     eax, edi
call    sub_42C592
add     ax, [esi+50h]
mov     bx, [edi+16h]
sub     eax, ebx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [edi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+4], 3Fh ; '?'
jnz     short loc_422FCE
or      byte ptr [esi], 1

loc_422FCE:
mov     ax, [esi+4]
inc     eax
xor     ah, ah
and     al, 3Fh
mov     [esi+4], ax
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_422EE1 endp         ; jumptable 004240AD default case

db 90h
jpt_423012 dd offset loc_423019 ; jump table for switch statement
dd offset loc_423083
dd offset loc_4230B1
dd offset loc_423161
dd offset loc_423253



sub_422FF5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_423012      ; jumptable 00423012 default case
xor     edx, edx
mov     dl, al
jmp     jpt_423012[edx*4] ; switch jump

loc_423019:             ; jumptable 00423012 case 0
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0Dh
or      byte ptr [esi], 20h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [esi+8], ax
mov     byte ptr [esi+53h], 1
mov     [esi+52h], ah
cmp     word ptr [esi+7Ah], 1
jge     def_423012      ; jumptable 00423012 default case
test    byte ptr [esi+2], 3
jnz     def_423012      ; jumptable 00423012 default case
mov     word ptr [esi+7Ah], 1
mov     word ptr [esi+78h], 3Ch ; '<'
lea     edx, [edi+14h]
mov     eax, 1E4h

loc_423079:
call    sub_4D8BC3
jmp     def_423012      ; jumptable 00423012 default case

loc_423083:             ; jumptable 00423012 case 1
cmp     byte ptr [edi+0A7h], 0
jge     def_423012      ; jumptable 00423012 default case
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0Eh
mov     word ptr [esi+4], 10h
mov     word ptr [esi+50h], 0FF00h
mov     byte ptr [esi+52h], 1
jmp     def_423012      ; jumptable 00423012 default case

loc_4230B1:             ; jumptable 00423012 case 2
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     ebp, [edi+14h]
mov     ecx, 100h
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, edi
call    sub_42C592
mov     dx, [esi+50h]
add     edx, eax
mov     ax, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, ds:dword_564C72[eax*2]
sar     eax, 10h
mov     ebx, [edi+4Ch]
sar     ebx, 10h
imul    ebx, eax
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     def_423012      ; jumptable 00423012 default case
inc     byte ptr [edi+0Ah]
mov     byte ptr [edi+0ACh], 0Fh
mov     word ptr [esi+4], 0
mov     word ptr [esi+6], 0
mov     word ptr [esi+54h], 78h ; 'x'
mov     word ptr [esi+50h], 0C0h
mov     byte ptr [esi+52h], 1
mov     edx, ebp
mov     eax, 1D3h
call    sub_4D8BC3
or      byte ptr [esi+1], 4
jmp     def_423012      ; jumptable 00423012 default case

loc_423161:             ; jumptable 00423012 case 3
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     ecx, 8
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     ax, word ptr ds:dword_5F880E
add     ax, [esi+50h]
mov     dx, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [edi+4Ch]
sar     ebx, 10h
add     ebx, eax
mov     edx, [edi+4Ah]
sar     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DD43B
mov     bx, [edi+4Ch]
cmp     bx, 600h
jge     short loc_4231D9
mov     ecx, ebx
add     ecx, 60h ; '`'
mov     [edi+4Ch], cx

loc_4231D9:
mov     ax, [esi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [esi+4], ax
mov     ax, [esi+6]
cmp     ax, 40h ; '@'
jge     short loc_4231FD
mov     edx, eax
add     edx, 4
mov     [esi+6], dx

loc_4231FD:
test    byte ptr [esi+0Dh], 0Fh
jnz     short loc_423215
mov     bx, [esi+54h]
dec     ebx
mov     [esi+54h], bx
test    bx, bx
jge     def_423012      ; jumptable 00423012 default case

loc_423215:
inc     byte ptr [edi+0Ah]
mov     byte ptr [edi+0ACh], 10h
mov     word ptr [esi+4], 10h
mov     word ptr [esi+50h], 0FE80h
mov     byte ptr [esi+52h], 0
xor     eax, eax
mov     al, [edi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
lea     edx, [edi+14h]
mov     eax, 1D4h
jmp     loc_423079

loc_423253:             ; jumptable 00423012 case 4
mov     eax, edi
call    sub_42C592
mov     dx, [esi+50h]
add     edx, eax
mov     ax, [edi+16h]
sub     eax, edx
mov     [edi+4Eh], ax
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ds:dword_564C72[eax*2]
sar     edx, 10h
mov     ebx, [edi+4Ch]
sar     ebx, 10h
imul    ebx, edx
sar     ebx, 0Ch
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_423012      ; jumptable 00423012 default case
or      byte ptr [esi], 1
and     byte ptr [esi+1], 0FBh
jmp     def_423012      ; jumptable 00423012 default case
sub_422FF5 endp

db 8Bh, 0C0h
jpt_4232E3 dd offset loc_4232EA ; jump table for switch statement
dd offset loc_42337C
dd offset loc_423436
dd offset loc_4234EA



sub_4232C1 proc near

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
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_4232E3[edx*4] ; switch jump

loc_4232EA:             ; jumptable 004232E3 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0Dh
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_42331E
mov     eax, 0FFFFFFC0h
jmp     short loc_423323

loc_42331E:
mov     eax, 40h ; '@'

loc_423323:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 2
mov     [ebp+64h], ax
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+50h], 60h ; '`'
mov     word ptr [eax+4], 10h
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     byte ptr [edx+53h], 2
mov     [edx+52h], ah
and     byte ptr [edx], 0FDh
lea     edx, [ebp+14h]
mov     eax, 1DCh
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_42337C:             ; jumptable 004232E3 case 1
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
add     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     ebx, [esp+1Ch+var_1C]
mov     ebx, [ebx+2]
sar     ebx, 10h
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [ebp+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_4233DB:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      edx, ebx
or      dh, 80h
mov     ebx, edx
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_4233DB
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
and     byte ptr [ebp+0], 0FDh
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0Fh
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_423436:             ; jumptable 004232E3 case 2
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0ACh], 0
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FFA0h
mov     dword ptr [eax+40h], 0
mov     dword ptr [eax+44h], 0FF3F0000h
mov     dword ptr [eax+48h], 4000000h
lea     esi, [eax+38h]
lea     edi, [eax+40h]
mov     edx, esi
mov     eax, edi
call    sub_4DD57B
push    0
push    0
lea     edx, [ebp+2Ch]
mov     eax, esi
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     ecx, 3000h
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5
lea     edi, [ebp+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+38h]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+40h]
movsd
movsd
movsd
movsd
lea     esi, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, esi
mov     eax, 20Bh
call    sub_4D8BC3

loc_4234EA:             ; jumptable 004232E3 case 3
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_423532:
mov     edx, 10h
mov     ebx, [esp+1Ch+var_1C]
sub     dx, [ebx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      ebx, edx
or      bh, 80h
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_423532
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [eax], 3
jmp     def_4232E3      ; jumptable 004232E3 default case
sub_4232C1 endp         ; jumptable 00423877 default case
; jumptable 00423D8F default case
db 8Bh, 0C0h
jpt_4235B5 dd offset loc_4235BC ; jump table for switch statement
dd offset loc_423631
dd offset loc_423733
dd offset loc_4237B0
dd offset loc_4237DF



sub_423599 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
xor     edx, edx
mov     dl, al
jmp     jpt_4235B5[edx*4] ; switch jump

loc_4235BC:             ; jumptable 004235B5 case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 6
or      byte ptr [edi], 20h
mov     word ptr [edi+50h], 60h ; '`'
mov     word ptr [edi+4], 0
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edi+8], ax
mov     [edi+53h], ah
mov     [edi+52h], ah
mov     [edi+72h], ah
mov     [edi+73h], ah
add     esi, 14h
mov     edx, esi
mov     eax, 1D7h
call    sub_4D8BC3
cmp     word ptr [edi+7Ah], 1
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     word ptr [edi+7Ah], 1
mov     word ptr [edi+78h], 3Ch ; '<'
mov     edx, esi
mov     eax, 1E3h
call    sub_4D8BC3
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_423631:             ; jumptable 004235B5 case 1
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     dx, word ptr ds:dword_5F880E
add     dx, [edi+50h]
mov     ax, [esi+16h]
sub     edx, eax
mov     [esi+4Eh], dx
mov     eax, [edi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [esi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [edi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [edi+4], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_423713
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 7
and     word ptr [edi], 0FE7Fh
xor     edx, edx
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4236CB
or      byte ptr [edi], 80h

loc_4236CB:
mov     edx, 1
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4236DF
or      byte ptr [edi+1], 1

loc_4236DF:
test    word ptr [edi], 180h
jz      short loc_4236F3
lea     edx, [esi+14h]
mov     eax, 1D8h
call    sub_4D8BC3

loc_4236F3:
mov     word ptr [esi+66h], 0
test    byte ptr [edi+2], 1
jz      short loc_423706
mov     eax, 2
jmp     short loc_42370B

loc_423706:
mov     eax, 0FFFFFFFEh

loc_42370B:
mov     [esi+64h], ax
or      byte ptr [esi+0Fh], 40h

loc_423713:
xor     edx, edx
mov     eax, esi
call    sub_424670
mov     edx, 1
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+72h]
inc     byte ptr [edi+73h]
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_423733:             ; jumptable 004235B5 case 2
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+64h]
add     [esi+66h], ax
cmp     byte ptr [edi+72h], 0
jz      short loc_42375C
xor     edx, edx
mov     eax, esi
call    sub_424670
dec     byte ptr [edi+72h]

loc_42375C:
cmp     byte ptr [edi+73h], 0
jz      short loc_423771
mov     edx, 1
mov     eax, esi
call    sub_424670
dec     byte ptr [edi+73h]

loc_423771:
cmp     byte ptr [esi+0A7h], 0
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
test    byte ptr [edi], 80h
jz      short loc_42378A
mov     eax, [edi+68h]
mov     byte ptr [eax+0Eh], 1

loc_42378A:
test    byte ptr [edi+1], 1
jz      short loc_423797
mov     eax, [edi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_423797:
inc     byte ptr [esi+0Ah]
mov     bh, [esi+0Fh]
or      bh, 80h
mov     [esi+0Fh], bh
mov     cl, bh
and     cl, 0EFh
mov     [esi+0Fh], cl
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4237B0:             ; jumptable 004235B5 case 3
mov     dl, [esi+0Fh]
test    dl, 10h
jz      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     dh, dl
and     dh, 0EFh
mov     [esi+0Fh], dh
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 8
mov     word ptr [edi+4], 10h
mov     word ptr [edi+50h], 0FE80h
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4237DF:             ; jumptable 004235B5 case 4
mov     eax, esi
call    sub_42C592
mov     dx, [edi+50h]
add     edx, eax
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
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42382F:
or      byte ptr [edi], 1
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_423599 endp         ; jumptable 004240AD default case

db 8Bh, 0C0h
jpt_423877 dd offset loc_42387E ; jump table for switch statement
dd offset loc_4238C1
dd offset loc_42398A
dd offset loc_423A6E
dd offset loc_423BAA
dd offset loc_423D09
dd offset loc_423D46



sub_423855 proc near

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
mov     al, [ebp+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_423877[edx*4] ; switch jump

loc_42387E:             ; jumptable 00423877 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FE80h
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Eh]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+53h], ah
mov     [edx+52h], ah
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_4238C1:             ; jumptable 00423877 case 1
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
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
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0Dh
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_42394C
mov     eax, 0FFFFFFC0h
jmp     short loc_423951

loc_42394C:
mov     eax, 40h ; '@'

loc_423951:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 2
mov     [ebp+64h], ax
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+53h], 2
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 60h ; '`'
and     byte ptr [eax], 0FDh
lea     edx, [ebp+14h]
mov     eax, 1DCh

loc_423980:
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_42398A:             ; jumptable 00423877 case 2
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
add     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+50h]
add     edx, eax
mov     ax, [ebp+16h]
sub     edx, eax
mov     [ebp+4Eh], dx
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [ebp+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax

loc_4239E9:
mov     edx, [esp+1Ch+var_1C]
mov     dx, [edx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      ebx, edx
or      bh, 80h
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_4239E9
or      byte ptr [ebp+0Fh], 2
mov     eax, [esp+1Ch+var_1C]
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
and     byte ptr [ebp+0], 0FDh
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 40h ; '@'
mov     word ptr [eax+6], 0
mov     dword ptr [ebp+1Ch], 0
mov     dword ptr [ebp+20h], 0FFBF0000h
mov     dword ptr [ebp+24h], 4000000h
lea     esi, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, esi
call    sub_4DD57B
mov     edx, esi
mov     eax, 1DDh
jmp     loc_423980

loc_423A6E:             ; jumptable 00423877 case 3
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_423AA6
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+6]
lea     ecx, [ebp+14h]
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, 0C00h
mov     edx, 800h
call    sub_42A70B

loc_423AA6:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+6], 1
jnz     short loc_423B06
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_423B06
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_423B06:
mov     eax, [esp+1Ch+var_1C]
mov     di, [eax+4]
dec     edi
mov     [eax+4], di
test    di, di
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0ACh], 0Bh
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 10h
mov     word ptr [eax+50h], 0FF00h
lea     esi, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
and     ah, 0Fh
mov     [ebp+56h], ax
or      byte ptr [ebp+0Fh], 4
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DE552
mov     [ebp+66h], ax
test    ax, ax
jge     short loc_423B79
mov     eax, 0FFFFFF80h
jmp     short loc_423B7E

loc_423B79:
mov     eax, 80h

loc_423B7E:
mov     [ebp+66h], ax
mov     eax, [ebp+64h]
sar     eax, 10h
sar     eax, 3
mov     [ebp+64h], ax
lea     esi, [ebp+14h]
mov     edx, esi
mov     eax, 20Ah
call    sub_4D8BC3
mov     edx, esi
mov     eax, 1DEh
call    sub_4D8BC3

loc_423BAA:             ; jumptable 00423877 case 4
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+2]
sar     edx, 10h
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_423BE2
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+6]
lea     ecx, [ebp+14h]
mov     eax, [eax+4]
sar     eax, 10h
mov     ebx, 0C00h
mov     edx, 800h
call    sub_42A70B

loc_423BE2:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+6], 3
jnz     short loc_423C42
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_423C42
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_423C42:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ax, [ebp+64h]
sub     [ebp+66h], ax
mov     eax, ebp
call    sub_42C592
mov     edx, [esp+1Ch+var_1C]
add     ax, [edx+50h]
mov     dx, [ebp+16h]
sub     eax, edx
mov     [ebp+4Eh], ax
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 4
sar     eax, 0Ch
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, ebp
call    sub_4DD43B
xor     eax, eax
mov     ecx, [esp+1Ch+var_1C]

loc_423CA2:
mov     edx, 10h
sub     dx, [ecx+4]
xor     dh, dh
and     dl, 1Fh
mov     ebx, edx
shl     ebx, 5
or      ebx, edx
shl     edx, 0Ah
or      edx, ebx
or      dh, 80h
mov     ebx, edx
mov     edx, eax
mov     [ebp+edx*8+196h], bx
inc     eax
cmp     eax, 10h
jl      short loc_423CA2
mov     di, [ecx+4]
dec     edi
mov     [ecx+4], di
test    di, di
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 2
mov     al, [ebp+0Fh]
or      al, 8
mov     [ebp+0Fh], al
mov     ah, al
and     ah, 0EFh
mov     [ebp+0Fh], ah
lea     edx, [ebp+14h]
mov     eax, 1DFh
jmp     loc_423980

loc_423D09:             ; jumptable 00423877 case 5
mov     dh, [ebp+0Fh]
test    dh, 10h
jz      short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     bl, dh
and     bl, 0EFh
mov     [ebp+0Fh], bl
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0Ch
mov     eax, [esp+1Ch+var_1C]
cmp     word ptr [eax+7Ah], 1
jge     short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     word ptr [eax+7Ah], 1
mov     word ptr [eax+78h], 3Ch ; '<'
lea     edx, [ebp+14h]
mov     eax, 1E8h
jmp     loc_423980

loc_423D46:             ; jumptable 00423877 case 6
cmp     byte ptr [ebp+0A7h], 0
jge     short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     eax, [esp+1Ch+var_1C]

loc_423D52:
or      byte ptr [eax], 1

def_4232E3:             ; jumptable 004232E3 default case
add     esp, 4          ; jumptable 00423877 default case
; jumptable 00423D8F default case

def_423012:             ; jumptable 00423012 default case
pop     ebp

def_4235B5:             ; jumptable 004235B5 default case
pop     edi             ; jumptable 004240AD default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_423855 endp

db 8Bh, 0C0h
jpt_423D8F dd offset loc_423D96 ; jump table for switch statement
dd offset loc_423EA3
dd offset loc_423FB7
dd offset loc_424052



sub_423D71 proc near

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
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_4232E3 ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
xor     edx, edx
mov     dl, al
jmp     jpt_423D8F[edx*4] ; switch jump

loc_423D96:             ; jumptable 00423D8F case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
mov     word ptr [eax+50h], 0FFA0h
mov     word ptr [eax+4], 1Eh
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+53h], ah
mov     [edx+52h], ah
mov     eax, (offset dword_5F8376+2)
call    sub_4282E5
test    eax, eax
jz      short loc_423DF4
mov     edi, edx
lea     edi, [edi+38h]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
jmp     short loc_423E4A

loc_423DF4:
mov     [edx+40h], eax
mov     dword ptr [edx+44h], 0FF3F0000h
mov     dword ptr [edx+48h], 4000000h
lea     esi, [edx+38h]
lea     edi, [edx+40h]
mov     edx, esi
mov     eax, edi
call    sub_4DD57B
push    0
push    0
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DD69F
shl     eax, 4
lea     ecx, [eax-1000h]
mov     edx, (offset dword_5F8376+2)
mov     eax, esi
call    sub_4DDDB4
mov     ebx, eax
and     ebx, 0FFFh
mov     edx, edi
mov     eax, esi
call    sub_4DD4C5

loc_423E4A:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edi, [esp+1Ch+var_1C]
add     edi, 38h ; '8'
lea     esi, [ebp+14h]
mov     ecx, 800h
mov     edx, edi
mov     eax, esi
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ecx, [esp+1Ch+var_1C]
mov     ecx, [ecx+2]
sar     ecx, 10h
mov     edx, edi
mov     eax, esi
call    sub_4DD69F
mov     edx, eax
add     ecx, 2
sar     edx, 1Fh
idiv    ecx
mov     [ebp+4Ch], ax
mov     edx, esi
mov     eax, 1D5h

loc_423E99:
call    sub_4D8BC3
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_423EA3:             ; jumptable 00423D8F case 1
mov     eax, 10h
mov     edx, [esp+1Ch+var_1C]
sub     ax, [edx+4]
shl     eax, 2
mov     [ebp+4Eh], ax
dec     word ptr [edx+4]
mov     ebx, [ebp+4Ch]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [ebp+4Ah]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
cmp     byte ptr [ebp+0A7h], 0
jge     short loc_423F19
mov     ch, [ebp+0ACh]
cmp     ch, 4
jz      short loc_423F19
mov     al, ch
inc     al
mov     [ebp+0ACh], al
cmp     al, 4
jnz     short loc_423F19
xor     eax, eax
mov     al, [ebp+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Ch]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     byte ptr [edx+52h], 1

loc_423F19:
mov     eax, ebp
call    sub_42C592
movsx   edx, ax
mov     ecx, [ebp+14h]
sar     ecx, 10h
cmp     edx, ecx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     [ebp+16h], ax
shl     edx, 10h
mov     [ebp+20h], edx
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 5
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     edx, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     [edx+52h], ah
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 2
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
add     ebp, 14h
mov     edx, ebp
mov     eax, 1E0h
call    sub_4D8BC3
mov     edx, ebp
mov     eax, 1D6h
jmp     loc_423E99

loc_423FB7:             ; jumptable 00423D8F case 2
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+4], 3
jnz     short loc_424030
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_424030
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 2
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
and     ah, 1
sub     eax, 100h
add     [edx+48h], ax
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
call    rand_
and     ah, 1
sub     eax, 100h
add     [edx+4Ch], ax
lea     ecx, [edx+48h]
mov     ebx, 0C00h
mov     edx, 800h
mov     eax, 1Eh
call    sub_42A70B

loc_424030:
mov     eax, [esp+1Ch+var_1C]
inc     word ptr [eax+4]
cmp     byte ptr [ebp+0A7h], 0
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 0Ah
jmp     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case

loc_424052:             ; jumptable 00423D8F case 3
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4232E3      ; jumptable 004232E3 default case
; jumptable 00423877 default case
; jumptable 00423D8F default case
jmp     loc_423D52
sub_423D71 endp

db 90h
jpt_4240AD dd offset loc_4240B4 ; jump table for switch statement
dd offset loc_42411D
dd offset loc_4241AE
dd offset loc_424235
dd offset loc_4242C9
dd offset loc_424300
dd offset loc_42437B
dd offset loc_424408
dd offset loc_42443A



sub_424091 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+550h]
mov     al, [eax+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
xor     edx, edx
mov     dl, al
jmp     jpt_4240AD[edx*4] ; switch jump

loc_4240B4:             ; jumptable 004240AD case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
or      byte ptr [edi], 20h
mov     word ptr [edi+50h], 0FE80h
mov     word ptr [edi+4], 0
mov     word ptr [edi+6], 10h
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
mov     al, [eax+0Dh]
xor     ah, ah
mov     [edi+8], ax
mov     [edi+53h], ah
mov     [edi+52h], ah
mov     [esi+0Ch], ah
cmp     word ptr [edi+7Ah], 1
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
mov     word ptr [edi+7Ah], 1
mov     word ptr [edi+78h], 3Ch ; '<'
lea     edx, [esi+14h]
mov     eax, 1E2h
jmp     loc_4242BF

loc_42411D:             ; jumptable 004240AD case 1
mov     ax, word ptr ds:dword_5F880E
mov     dx, [edi+50h]
add     edx, eax
mov     ax, [esi+16h]
sub     edx, eax
mov     [esi+4Eh], dx
mov     eax, [edi+2]
sar     eax, 10h
mov     eax, dword ptr ds:unk_564C32[eax*2]
sar     eax, 10h
shl     eax, 6
sar     eax, 0Ch
mov     ebx, [esi+4Ch]
sar     ebx, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [edi+4]
add     eax, 2
xor     ah, ah
and     al, 3Fh
mov     [edi+4], ax
mov     bx, [edi+6]
dec     ebx
mov     [edi+6], bx
test    bx, bx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 9
mov     word ptr [edi+4], 15h
mov     word ptr [edi+6], 7
mov     [edi+72h], ah
mov     [edi+73h], ah
mov     word ptr [esi+66h], 0
lea     edx, [esi+14h]
mov     eax, 1D9h
jmp     loc_4242BF

loc_4241AE:             ; jumptable 004240AD case 2
mov     dx, [esi+66h]
cmp     dx, 80h
jge     short loc_4241C2
mov     ebx, edx
add     ebx, 10h
mov     [esi+66h], bx

loc_4241C2:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1B8h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [edi+6]
test    ax, ax
jnz     short loc_424229
xor     edx, edx
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+72h]
mov     bx, [edi+4]
test    bx, bx
jnz     short loc_42421D
inc     byte ptr [esi+0Ah]
mov     word ptr [edi+4], 6
mov     al, [edi+72h]
and     al, 1
add     [edi+72h], al
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42421D:
mov     ecx, ebx
dec     ecx
mov     [edi+4], cx
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424229:
mov     edx, eax
dec     edx
mov     [edi+6], dx
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424235:             ; jumptable 004240AD case 3
mov     ax, [esi+66h]
cmp     ax, 80h
jge     short loc_424248
mov     edx, eax
add     edx, 10h
mov     [esi+66h], dx

loc_424248:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1B8h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [edi+72h], 0
jge     short loc_424282
xor     edx, edx
mov     eax, esi
call    sub_424670
sub     byte ptr [edi+72h], 4

loc_424282:
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
or      byte ptr [esi+0Eh], 2
and     byte ptr [edi], 7Fh
xor     edx, edx
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4242AE
or      byte ptr [edi], 80h

loc_4242AE:
test    byte ptr [edi], 80h

loc_4242B1:             ; jumptable 004235B5 default case
jz      def_4235B5      ; jumptable 004240AD default case
lea     edx, [esi+14h]
mov     eax, 1D8h

loc_4242BF:
call    sub_4D8BC3
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_4242C9:             ; jumptable 004240AD case 4
cmp     byte ptr [esi+0Ch], 2
jnz     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
lea     edx, [esi+14h]
mov     eax, 1D9h
call    sub_4D8BC3
inc     byte ptr [esi+0Ah]
test    byte ptr [edi], 80h
jz      short loc_4242EF
mov     eax, [edi+68h]
mov     byte ptr [eax+0Eh], 1

loc_4242EF:
mov     word ptr [edi+4], 15h
mov     word ptr [esi+66h], 0
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424300:             ; jumptable 004240AD case 5
mov     ax, [esi+66h]
cmp     ax, 80h
jge     short loc_424313
mov     edx, eax
add     edx, 10h
mov     [esi+66h], dx

loc_424313:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1E0h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, 1
mov     eax, esi
call    sub_424670
inc     byte ptr [edi+73h]
mov     cx, [edi+4]
test    cx, cx
jnz     short loc_42436F
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [edi+4], 6
mov     al, [edi+73h]
and     al, 1
add     [edi+73h], al
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42436F:
mov     esi, ecx
dec     esi
mov     [edi+4], si
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42437B:             ; jumptable 004240AD case 6
mov     cx, [esi+66h]
cmp     cx, 80h
jge     short loc_424391
mov     eax, ecx
add     eax, 10h
mov     [esi+66h], ax

loc_424391:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+1E0h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [edi+73h], 0
jge     short loc_4243CE
mov     edx, 1
mov     eax, esi
call    sub_424670
sub     byte ptr [edi+73h], 4

loc_4243CE:
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     byte ptr [esi+0Ah]
or      byte ptr [esi+0Eh], 1
and     byte ptr [edi+1], 0FEh
mov     edx, 1
mov     eax, esi
call    sub_4245FA
test    eax, eax
jz      short loc_4243FF
or      byte ptr [edi+1], 1

loc_4243FF:
test    byte ptr [edi+1], 1
jmp     loc_4242B1

loc_424408:             ; jumptable 004240AD case 7
cmp     byte ptr [esi+0Ch], 4
jnz     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
inc     al
mov     [esi+0Ah], al
test    byte ptr [edi+1], 1
jz      short loc_424424
mov     eax, [edi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_424424:
mov     byte ptr [esi+0ACh], 0
or      byte ptr [esi+0Eh], 4
mov     word ptr [edi+4], 8
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_42443A:             ; jumptable 004240AD case 8
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case
and     byte ptr [esi+0Fh], 0EFh
jmp     loc_42382F
sub_424091 endp




sub_424455 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+550h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_424476
cmp     al, 1
jz      loc_424504
jmp     def_4235B5      ; jumptable 004235B5 default case
; jumptable 004240AD default case

loc_424476:
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 0
or      byte ptr [esi], 20h
mov     word ptr [esi+50h], 0FFA0h
mov     word ptr [esi+4], 0
xor     eax, eax
mov     al, [edi+2]
mov     ebx, ds:dword_55A108
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax
mov     [esi+53h], ah
mov     [esi+52h], ah
call    sub_4DE043
test    eax, eax
jz      short loc_4244FA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 33h ; '3'
mov     byte ptr [eax+3], 0FDh
mov     word ptr [eax+14h], 0C8h
mov     word ptr [eax+16h], 0C8h
mov     word ptr [eax+18h], 0C8h
mov     word ptr [eax+1Ah], 700h
mov     word ptr [eax+2Ch], 0
mov     word ptr [eax+2Eh], 10h
mov     word ptr [eax+30h], 10h
mov     word ptr [eax+32h], 500h
mov     byte ptr [eax+0Bh], 3Ch ; '<'
mov     byte ptr [eax+0Ah], 0

loc_4244FA:
mov     eax, 10h
call    sub_4D9040

loc_424504:
mov     eax, edi
call    sub_42C592
mov     bx, [esi+50h]
add     ebx, eax
mov     ax, [edi+16h]
sub     ebx, eax
mov     [edi+4Eh], bx
mov     eax, [esi+2]
sar     eax, 10h
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [edi+4Ch]
sar     eax, 10h
add     ebx, eax
xor     ecx, ecx
xor     edx, edx
mov     eax, edi
call    sub_4DD43B
cmp     word ptr [esi+4], 3Fh ; '?'
jnz     loc_422FCE
test    byte ptr [esi], 80h
jz      short loc_42455B
mov     eax, [esi+68h]
mov     byte ptr [eax+0Eh], 1

loc_42455B:
test    byte ptr [esi+1], 1
jz      short loc_424568
mov     eax, [esi+6Ch]
mov     byte ptr [eax+0Eh], 1

loc_424568:
and     word ptr [esi], 0FE7Fh
mov     eax, edi
call    sub_4DE336
mov     eax, [esi+58h]
call    sub_4DE371
mov     eax, [esi+5Ch]
call    sub_4DE371
mov     eax, [esi+60h]
call    sub_4DE371
mov     eax, [esi+64h]
call    sub_4DE371
mov     eax, 58h ; 'X'
call    sub_47E8B8
jmp     loc_422FCE
sub_424455 endp




sub_4245A3 proc near
push    ecx
push    edx
call    sub_4DDFD0
mov     ecx, eax
test    eax, eax
jz      short loc_4245F2
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 13h
mov     byte ptr [eax+4], 2
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Fh], 1
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0FF3F0000h
mov     dword ptr [eax+24h], 8FC0000h
mov     word ptr [eax+56h], 0
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
or      byte ptr [ecx+6], 20h
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4245F2:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4245A3 endp




sub_4245FA proc near
push    ebx
push    ecx
push    esi
mov     ecx, edx
lea     esi, [eax+550h]
call    sub_4DE043
mov     edx, eax
mov     eax, ecx
shl     eax, 2
add     eax, esi
mov     [eax+68h], edx
test    edx, edx
jz      short loc_42466A
mov     byte ptr [edx], 1
mov     edx, [eax+68h]
mov     byte ptr [edx+2], 30h ; '0'
mov     edx, [eax+68h]
mov     byte ptr [edx+4], 0
mov     edx, [eax+68h]
mov     byte ptr [edx+3], 0
mov     ebx, ecx
mov     edx, ebx
shl     edx, 3
add     edx, ebx
shl     edx, 3
sub     edx, ebx
shl     edx, 2
mov     ebx, [esi+60h]
add     ebx, edx
mov     edx, [eax+68h]
mov     bl, [ebx+1]
mov     [edx+0Ch], bl
mov     edx, [eax+68h]
mov     [edx+0Dh], cl
mov     edx, [eax+68h]
mov     byte ptr [edx+0Eh], 0
mov     eax, [eax+68h]
mov     byte ptr [eax+0Fh], 0
mov     edx, 1

loc_42466A:
mov     eax, edx
pop     esi
pop     ecx
pop     ebx
retn
sub_4245FA endp




sub_424670 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_36= dword ptr -36h
var_32= dword ptr -32h
var_2E= dword ptr -2Eh
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     [esp+40h+var_20], dl
lea     esi, [eax+550h]
xor     ah, ah
mov     [esp+40h+var_1C], ah
jmp     loc_424790

loc_42468D:
mov     bl, 80h

loc_42468F:
mov     bh, bl
mov     [esp+40h+var_18], bl
xor     eax, eax
mov     al, [esp+40h+var_20]
mov     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 3
sub     edx, eax
mov     eax, [esi+60h]
mov     eax, [eax+edx*4+12h]
sar     eax, 10h
mov     [esp+40h+var_3C], eax
mov     edi, [esp+40h+var_36]
sar     edi, 10h
mov     eax, edi
call    sub_4EF008
mov     ebp, [esp+40h+var_2E]
sar     ebp, 10h
mov     [esp+40h+var_40], ebp
imul    eax, ebp
sar     eax, 0Ch
mov     ebp, [esp+40h+var_3C]
add     ebp, eax
mov     [esp+8], ebp
mov     eax, [esi+60h]
mov     eax, [eax+edx*4+16h]
sar     eax, 10h
mov     [esp+40h+var_3C], eax
mov     eax, edi
call    sub_4EF003
imul    eax, [esp+40h+var_40]
sar     eax, 0Ch
add     eax, [esp+40h+var_3C]
mov     edi, [esi+60h]
mov     dx, [edi+edx*4+16h]
mov     edi, [esp+40h+var_24]
add     edx, edi
mov     [esp+40h+var_28], dx
xor     edx, edx
mov     dl, [esp+40h+var_18]
mov     edi, edx
shl     edi, 10h
or      edi, 2E000000h
xor     edx, edx
mov     dl, bh
shl     edx, 8
or      edi, edx
xor     edx, edx
mov     dl, bl
or      edi, edx
mov     [ecx+4], edi
mov     ebx, [esp+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     edx, [esp+40h+var_3C+2]
sar     edx, 10h
add     ebx, edx
mov     [ecx+8], ebx
cwde
mov     [ecx+10h], eax
mov     dword ptr [ecx+0Ch], 3D482040h
mov     dword ptr [ecx+14h], 2E205Fh
mov     dword ptr [ecx+1Ch], 3F40h
mov     dword ptr [ecx+24h], 3F5Fh
mov     eax, [esp+40h+var_32]
sar     eax, 10h
add     eax, 8
mov     [ecx+18h], eax
mov     dword ptr [ecx+20h], 0

loc_42477D:
mov     dh, [esp+40h+var_1C]
inc     dh
mov     [esp+40h+var_1C], dh
cmp     dh, 18h
jnb     loc_42485C

loc_424790:
xor     edx, edx
mov     dl, [esp+40h+var_20]
add     edx, esi
movsx   ax, byte ptr [edx+72h]
mov     word ptr [esp+40h+var_32+2], ax
xor     ebx, ebx
mov     bl, [esp+40h+var_1C]
shl     ebx, 3
mov     eax, ds:dword_510C56[ebx]
sar     eax, 10h
mov     ecx, [edx+6Fh]
sar     ecx, 18h
cmp     eax, ecx
jge     short loc_42477D
mov     ecx, [esp+40h+var_32]
sar     ecx, 10h
add     eax, 10h
cmp     ecx, eax
jge     short loc_42477D
call    sub_4EE133
mov     ecx, eax
movsx   ax, byte ptr [edx+72h]
mov     dx, word ptr ds:(dword_510C56+2)[ebx]
sub     eax, edx
mov     word ptr [esp+40h+var_32+2], ax
imul    eax, 18h
add     ax, word ptr ds:dword_510C5C[ebx]
and     ah, 0Fh
mov     word ptr [esp+40h+var_36+2], ax
mov     edi, ds:dword_510C5C[ebx]
sar     edi, 10h
mov     eax, edi
mov     edx, edi
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebp, [esp+40h+var_32]
sar     ebp, 10h
imul    eax, ebp
sub     edi, eax
mov     [esp+40h+var_24], edi
mov     ebx, ds:(dword_510C56+2)[ebx]
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
imul    eax, ebp
sub     ebx, eax
mov     word ptr [esp+40h+var_2E+2], bx
cmp     word ptr [esp+40h+var_32+2], 10h
jge     loc_42468D
mov     bl, byte ptr [esp+40h+var_32+2]
inc     bl
shl     bl, 3
jmp     loc_42468F

loc_42485C:
add     esp, 2Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_424670 endp




sub_424865 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
lea     ecx, [eax+550h]
mov     ah, [ecx]
test    ah, 40h
jnz     short loc_42488A
mov     bl, ah
or      bl, 40h
mov     [ecx], bl
mov     ebp, offset unk_510D18
jmp     short loc_4248BF

loc_42488A:
mov     edx, [esp+20h+var_20]
mov     edx, [edx+0AEh]
sar     edx, 10h
sar     edx, 1
mov     esi, [esp+20h+var_20]
mov     esi, [esi+6Ch]
sar     esi, 10h
cmp     esi, edx
jl      short loc_4248B3
mov     ebp, offset unk_510D1D
mov     dh, ah
and     dh, 0BFh
mov     [ecx], dh
jmp     short loc_4248BF

loc_4248B3:
mov     ebp, offset unk_510D22
mov     dl, ah
and     dl, 0BFh
mov     [ecx], dl

loc_4248BF:
xor     edi, edi
xor     ebx, ebx
jmp     short loc_4248DE

loc_4248C5:
movsx   esi, bx
lea     edx, [esi+ebp]
xor     eax, eax
mov     al, [edx]
add     edi, eax
mov     ds:byte_510D27[esi], al

loc_4248D7:
inc     ebx
cmp     bx, 5
jge     short loc_4248FC

loc_4248DE:
movsx   edx, bx
mov     al, [ecx+7Ch]
cmp     al, ds:byte_510D2C[edx]
jnz     short loc_4248C5
cmp     byte ptr [ecx+7Dh], 2
jb      short loc_4248C5
xor     ah, ah
mov     ds:byte_510D27[edx], ah
jmp     short loc_4248D7

loc_4248FC:
xor     esi, esi
xor     ebx, ebx
jmp     short loc_424909

loc_424902:
inc     ebx
cmp     bx, 5
jge     short loc_424930

loc_424909:
movsx   edx, bx
mov     dl, [edx+ebp]
xor     dh, dh
add     esi, edx
xor     edx, edx
mov     dx, [ecx+2]
movsx   eax, di
mov     [esp+20h+var_1C], eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_1C]
movsx   eax, si
cmp     edx, eax
jge     short loc_424902

loc_424930:
movsx   edx, bx
mov     al, ds:byte_510D2C[edx]
mov     edx, [esp+20h+var_20]
mov     [edx+9], al
mov     word ptr [edx+0Ah], 0
cmp     byte ptr [edx+9], 5
jnz     short loc_424951
mov     word ptr [ecx+70h], 1

loc_424951:
mov     al, [ecx+7Ch]
mov     edx, [esp+20h+var_20]
cmp     al, [edx+9]
jnz     short loc_424961
inc     byte ptr [ecx+7Dh]
jmp     short loc_424965

loc_424961:
mov     byte ptr [ecx+7Dh], 0

loc_424965:
mov     eax, [esp+20h+var_20]
mov     al, [eax+9]
mov     [ecx+7Ch], al
mov     eax, 1
add     esp, 8
jmp     def_423012      ; jumptable 00423012 default case
sub_424865 endp




sub_42497B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+550h]
mov     esi, [ecx+18h]
and     esi, 0FFFFFFh
jz      loc_424B7B
test    byte ptr [ecx+1Bh], 38h
jz      loc_424B6E
mov     ax, [ebx+6Eh]
mov     [ebx+0B2h], ax
mov     edx, eax
sub     edx, esi
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_4249F3
call    sub_4B55BB
test    eax, eax
jz      short loc_4249ED
mov     word ptr [ebx+0B2h], 0
mov     ax, [ebx+0B2h]
mov     [ebx+6Eh], ax
and     byte ptr [ecx], 0F3h
xor     eax, eax
mov     al, [ebx+2]
mov     edx, ds:dword_55A108
mov     esi, [edx+eax*4]
movzx   esi, byte ptr [esi+9]
jmp     short loc_4249F3

loc_4249ED:
mov     word ptr [ebx+6Eh], 1

loc_4249F3:
cmp     word ptr [ecx+7Ah], 0
jge     short loc_424A24
mov     eax, [ecx+74h]
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, [eax]
jge     short loc_424A24
mov     word ptr [ecx+7Ah], 0
mov     word ptr [ecx+78h], 3Ch ; '<'
add     dword ptr [ecx+74h], 4
lea     edx, [ebx+14h]
mov     eax, 1E1h
call    sub_4D8BC3

loc_424A24:
cmp     word ptr [ecx+7Ah], 3
jge     loc_424B02
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, eax
shl     eax, 3
sub     eax, edx
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424A78
test    byte ptr [ecx+1], 8
jnz     short loc_424A78
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 8
lea     edx, [ebx+14h]
mov     eax, 1E5h
jmp     loc_424AFD

loc_424A78:
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     edx, eax
shl     eax, 2
add     eax, edx
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424ABE
test    byte ptr [ecx+1], 10h
jnz     short loc_424ABE
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 10h
lea     edx, [ebx+14h]
mov     eax, 1E6h
jmp     short loc_424AFD

loc_424ABE:
mov     edx, [ebx+0AEh]
sar     edx, 10h
mov     edi, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    edi
add     eax, eax
mov     edx, [ebx+6Ch]
sar     edx, 10h
cmp     edx, eax
jge     short loc_424B02
test    byte ptr [ecx+1], 20h
jnz     short loc_424B02
mov     word ptr [ecx+7Ah], 3
mov     word ptr [ecx+78h], 3Ch ; '<'
or      byte ptr [ecx+1], 20h
lea     edx, [ebx+14h]
mov     eax, 1E7h

loc_424AFD:
call    sub_4D8BC3

loc_424B02:
test    byte ptr [ecx], 8
jz      short loc_424B47
add     [ecx+0Ah], si
test    byte ptr [ecx+1Bh], 20h
jnz     short loc_424B32
xor     eax, eax
mov     al, [ebx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A108
mov     eax, [edx+eax]
xor     edx, edx
mov     dl, [eax+9]
mov     eax, [ecx+8]
sar     eax, 10h
cmp     eax, edx
jl      short loc_424B54

loc_424B32:
lea     edx, [ebx+14h]
mov     eax, 0A2h
call    sub_4D8BC3
mov     word ptr [ecx+0Ah], 0
jmp     short loc_424B54

loc_424B47:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_424B54:
xor     ecx, ecx

loc_424B56:
mov     eax, ecx
mov     word ptr [ebx+eax*8+196h], 7FFFh
inc     ecx
cmp     ecx, 10h
jl      short loc_424B56
or      byte ptr [ebx+0Fh], 2
jmp     short loc_424B7B

loc_424B6E:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_424B7B:
mov     eax, 1
jmp     def_4235B5      ; jumptable 004235B5 default case
sub_42497B endp         ; jumptable 004240AD default case




sub_424B85 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+4C0h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ecx+52h], ax
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_424BBC[ecx*4]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_424B85 endp




sub_424BC8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 4C0h
mov     [esp+1Ch+var_1C], eax
or      byte ptr [ebp+0], 2
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+0ACh], 0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+8]
shl     edx, 6
mov     eax, ds:dword_55A10C
mov     eax, [eax+120h]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 7
add     edx, eax
mov     [ebp+6Eh], dx
mov     [ebp+0B0h], dx
mov     [ebp+0B2h], dx
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A108
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
mov     [ebp+73h], al
or      byte ptr [ebp+0Ch], 2
mov     byte ptr [ebp+0Dh], 0FFh
mov     byte ptr [ebp+0Eh], 0FFh
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4Ch], 0
mov     word ptr [eax+4Eh], 3Ch ; '<'
mov     byte ptr [eax+5Ah], 0FFh
mov     byte ptr [eax+5Bh], 0
mov     word ptr [eax+42h], 0
mov     byte ptr [eax+5Ch], 7
mov     byte ptr [eax+58h], 0
mov     word ptr [ebp+44h], 0Ch
mov     word ptr [eax+4Ah], 0A00h
mov     byte ptr [eax+58h], 0
mov     word ptr [ebp+64h], 0
call    sub_4DDF54
test    eax, eax
jz      short loc_424D37
mov     dl, [eax+1]
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+59h], dl
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 59h ; 'Y'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     dx, [ebp+56h]
mov     [eax+56h], dx
mov     dl, [ebp+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
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

loc_424D37:
push    2C580048h
mov     ecx, 51h ; 'Q'
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_436785
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+18h], 0
mov     dword ptr [eax+20h], 0
mov     dword ptr [eax+28h], 0
mov     dword ptr [eax+30h], 0

loc_424D6B:
add     esp, 4

loc_424D6E:
pop     ebp

def_426449:             ; jumptable 00426449 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_424BC8 endp




sub_424D75 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
push    eax
lea     ebp, [eax+4C0h]
add     eax, 14h
mov     edx, [esp+1Ch+var_1C]
mov     bl, [edx+0Ch]
test    bl, 2
jnz     loc_424E6B
mov     dx, [ebp+20h]
test    dx, dx
jz      loc_424E2B
mov     ebx, [esp+1Ch+var_1C]
mov     bx, [ebx+6Eh]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+0B2h], bx
mov     cx, [esi+6Eh]
sub     ecx, edx
mov     [esi+6Eh], cx
test    cx, cx
jge     short loc_424DD1
mov     byte ptr [ebp+5Bh], 2
mov     byte ptr [esi+0Ah], 0
mov     word ptr [ebp+4Ch], 3Ch ; '<'
jmp     short loc_424E1A

loc_424DD1:
mov     di, [ebp+54h]
add     edi, edx
mov     [ebp+54h], di
xor     edx, edx
mov     dl, [esi+2]
mov     ebx, ds:dword_55A108
mov     edx, [ebx+edx*4]
mov     dl, [edx+9]
and     edx, 0FFh
xor     ebx, ebx
mov     bx, di
cmp     ebx, edx
jl      short loc_424E0E
mov     word ptr [ebp+54h], 0
or      byte ptr [esi+0Ch], 40h
mov     edx, eax
mov     eax, 0A2h
jmp     short loc_424E15

loc_424E0E:
mov     edx, eax
mov     eax, 0A0h

loc_424E15:
call    sub_4D8BC3

loc_424E1A:
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+15Eh], 7FFFh
jmp     loc_424EE4

loc_424E2B:
test    dword ptr [ebp+18h], 0FFFFFFh
jz      short loc_424E40
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E40:
test    dword ptr [ebp+28h], 0FFFFFFh
jz      short loc_424E59
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E59:
test    dword ptr [ebp+30h], 0FFFFFFh
jz      loc_424EE4
jmp     loc_424ED4

loc_424E6B:
cmp     byte ptr [edx+0Fh], 0
jz      short loc_424E7F
mov     word ptr [edx+15Eh], 7FFFh
dec     byte ptr [edx+0Fh]
jmp     short loc_424EE4

loc_424E7F:
test    bl, 2
jz      short loc_424E99
test    dword ptr [ebp+20h], 0FFFFFFh
jz      short loc_424E99
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_424E99:
test    dword ptr [ebp+18h], 0FFFFFFh
jz      short loc_424EB2
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424EB2:
test    dword ptr [ebp+28h], 0FFFFFFh
jz      short loc_424ECB
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424ECB:
test    dword ptr [ebp+30h], 0FFFFFFh
jz      short loc_424EE4

loc_424ED4:
mov     edx, [esp+1Ch+var_1C]
add     edx, 14h
mov     eax, 0A3h
call    sub_4D8BC3

loc_424EE4:
cmp     byte ptr [ebp+5Bh], 2
jz      short loc_424EF7
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Ch], 40h
jz      short loc_424EF7
mov     byte ptr [ebp+5Bh], 1

loc_424EF7:
xor     edx, edx
mov     dl, [ebp+5Bh]
mov     eax, [esp+1Ch+var_1C]
call    ds:funcs_424EFF[edx*4]
cmp     byte ptr [ebp+5Bh], 2
jz      loc_425201
xor     eax, eax
mov     al, [ebp+59h]
call    sub_4E1877
lea     edi, [eax+54h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+54h]
movsd
movsd
lea     edi, [eax+14h]
mov     esi, [esp+1Ch+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+190h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+192h]
add     eax, 28h ; '('
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+194h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     esi, [ebp+10h]
mov     ecx, 0FFFFFCE0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+18h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    820h
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+28h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0FFFFF7E0h
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+30h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F0h]
mov     [ebp+10h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F2h]
add     eax, 78h ; 'x'
mov     [ebp+12h], ax
mov     eax, [esp+1Ch+var_1C]
mov     ax, [eax+1F4h]
mov     [ebp+14h], ax
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+8], eax
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF4C0h
mov     edx, ebp
mov     eax, esi
call    sub_4DD4C5
push    0
push    0
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+20h]
push    eax
xor     eax, eax
mov     edx, [esp+2Ch+var_1C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+0Ch], 1
jnz     short loc_425201
test    byte ptr [eax+0A6h], 2
jz      short loc_425201
lea     edx, [eax+14h]
mov     eax, 1C3h
call    sub_4D8BC3

loc_425201:
mov     eax, [esp+1Ch+var_1C]
call    sub_4DEADD
mov     dword ptr [ebp+18h], 0
mov     dword ptr [ebp+20h], 0
mov     dword ptr [ebp+28h], 0
mov     dword ptr [ebp+30h], 0
jmp     loc_424D6B
sub_424D75 endp



; Attributes: thunk

sub_42522A proc near
jmp     sub_4DE336
sub_42522A endp




sub_42522F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+4C0h]
xor     bl, bl
xor     dh, dh
xor     dl, dl
jmp     short loc_42524B

loc_425244:
inc     dl
cmp     dl, 10h
jge     short loc_425290

loc_42524B:
