mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 8
mov     word ptr [edi+4], 3
lea     edx, [esi+14h]
mov     eax, 0D3h
call    sub_4D8BC3

loc_408AD9:             ; jumptable 004089B7 case 3
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 4
mov     word ptr [edi+4], 19h

loc_408AF5:             ; jumptable 004089B7 case 4
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
or      byte ptr [edi], 1
mov     word ptr [edi+36h], 78h ; 'x'
jmp     def_4089B7      ; jumptable 004089B7 default case
sub_40899A endp         ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
align 2
jpt_408B43 dd offset loc_408B4A ; jump table for switch statement
dd offset loc_408B78
dd offset loc_408BC2
dd offset loc_408C62



sub_408B26 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
and     eax, 0FFh
jmp     jpt_408B43[eax*4] ; switch jump

loc_408B4A:             ; jumptable 00408B43 case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [esi+46h], 0FF00h
mov     word ptr [esi+4Eh], 0FF00h
mov     word ptr [edi+4], 0Ah
mov     word ptr [edi+8], 0
mov     eax, esi
call    sub_42C935
mov     [edi+3Eh], ax

loc_408B78:             ; jumptable 00408B43 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jg      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 0Bh
sub     word ptr [esi+16h], 15Eh
sub     word ptr [esi+192h], 15Eh
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
lea     edx, [esi+14h]
mov     eax, 0D1h
call    sub_4D8BC3
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408BC2:             ; jumptable 00408B43 case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+14h]
sar     edx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
sar     ebx, 4
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, ebx
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, esi
call    sub_42DE56
mov     bx, [esi+4Eh]
add     [esi+46h], bx
test    ah, 20h
jnz     short loc_408C30
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jle     short loc_408C30
mov     [esi+16h], dx
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408C30:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 0Ch
mov     word ptr [edi+4], 2Dh ; '-'
lea     edx, [esi+14h]
mov     eax, 0D2h
call    sub_4D8BC3

loc_408C62:             ; jumptable 00408B43 case 3
cmp     byte ptr [esi+0A6h], 0
jz      short loc_408C78
lea     edx, [esi+14h]
mov     eax, 0D4h
call    sub_4D8BC3

loc_408C78:
mov     si, [edi+4]
dec     esi
mov     [edi+4], si
test    si, si
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
or      byte ptr [edi], 1
jmp     def_4089B7      ; jumptable 004089B7 default case
sub_408B26 endp         ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
jpt_408CBD dd offset loc_408CC4 ; jump table for switch statement
dd offset loc_408CDE
dd offset loc_408CFD
dd offset loc_408D23



sub_408CA2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 640h
mov     bl, [edx+0Ah]
cmp     bl, 3           ; switch 4 cases
ja      def_408CBD      ; jumptable 00408CBD default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_408CBD[ecx*4] ; switch jump

loc_408CC4:             ; jumptable 00408CBD case 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0Eh
mov     word ptr [eax+4], 3
mov     word ptr [eax+8], 0
and     byte ptr [eax], 0FBh

loc_408CDE:             ; jumptable 00408CBD case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_408CBD ; jumptable 00408CBD default case
mov     byte ptr [edx+0Ah], 2
mov     byte ptr [edx+0ACh], 10h
mov     word ptr [eax+4], 11h

loc_408CFD:             ; jumptable 00408CBD case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_408CBD ; jumptable 00408CBD default case
cmp     word ptr [edx+6Eh], 0
jle     short loc_408D23 ; jumptable 00408CBD case 3
mov     byte ptr [edx+0Ah], 3
mov     byte ptr [edx+0ACh], 13h
mov     word ptr [eax+4], 13h

loc_408D23:             ; jumptable 00408CBD case 3
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     short def_408CBD ; jumptable 00408CBD default case
or      byte ptr [eax], 5

def_408CBD:             ; jumptable 00408CBD default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_408CA2 endp

align 2
jpt_408D6B dd offset loc_408D72 ; jump table for switch statement
dd offset loc_408DA3
dd offset loc_408DDB
dd offset loc_408E8A
dd offset loc_408EAD



sub_408D4E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     dl, [eax+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
xor     eax, eax
mov     al, dl
jmp     jpt_408D6B[eax*4] ; switch jump

loc_408D72:             ; jumptable 00408D6B case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0Fh
mov     word ptr [esi+46h], 100h
mov     word ptr [esi+4Eh], 100h
mov     word ptr [edi+4], 3
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0FBh
mov     eax, esi
call    sub_42C592
mov     [edi+3Eh], ax

loc_408DA3:             ; jumptable 00408D6B case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 11h
add     word ptr [esi+16h], 0C8h
add     word ptr [esi+192h], 0C8h
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_408DDB:             ; jumptable 00408D6B case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esi+44h]
sar     eax, 10h
sar     eax, 4
mov     ebx, [esi+190h]
sar     ebx, 10h
add     eax, ebx
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, esi
call    sub_42DE56
mov     bx, [esi+4Eh]
add     [esi+46h], bx
test    ah, 10h
jnz     short loc_408E34
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jl      short loc_408E64

loc_408E34:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     word ptr [esi+6Eh], 0
jg      short loc_408E79

loc_408E4F:
or      byte ptr [edi], 5
lea     edx, [esi+14h]
mov     eax, 0D3h

loc_408E5A:
call    sub_4D8BC3
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408E64:
mov     [esi+16h], dx
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408E79:
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 10h
mov     word ptr [edi+4], 11h

loc_408E8A:             ; jumptable 00408D6B case 3
mov     dx, [edi+4]     ; jumptable 00408EFB case 3
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
mov     byte ptr [esi+0Ah], 4
mov     byte ptr [esi+0ACh], 13h
mov     word ptr [edi+4], 13h

loc_408EAD:             ; jumptable 00408D6B case 4
mov     cx, [edi+4]     ; jumptable 00408EFB case 4
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
or      byte ptr [edi], 5
jmp     def_4089B7      ; jumptable 004089B7 default case
sub_408D4E endp         ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
db 8Dh, 40h, 0
jpt_408EFB dd offset loc_408F02 ; jump table for switch statement
dd offset loc_408F27
dd offset loc_408F7D
dd offset loc_408E8A
dd offset loc_408EAD



sub_408EDE proc near
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
jmp     jpt_408EFB[eax*4] ; switch jump

loc_408F02:             ; jumptable 00408EFB case 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 12h
mov     word ptr [edi+4], 9
mov     word ptr [edi+8], 0
and     byte ptr [edi], 0FBh
mov     eax, esi
call    sub_42C592
mov     [edi+3Eh], ax

loc_408F27:             ; jumptable 00408EFB case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_408F66
mov     eax, edx
mov     edx, 4
sub     edx, eax
mov     [esi+46h], dx
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 7
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
test    ah, 20h
jz      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408F66:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [esi+46h], 100h
mov     word ptr [esi+4Eh], 100h

loc_408F7D:             ; jumptable 00408EFB case 2
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     dx, [esi+4Eh]
add     [esi+46h], dx
test    ah, 10h
jnz     short loc_408FB6
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jl      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_408FB6:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
cmp     word ptr [esi+6Eh], 0
jg      loc_408E79
mov     ax, [esi+16h]
mov     [esi+192h], ax
jmp     loc_408E4F
sub_408EDE endp




sub_408FE5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_409002
cmp     al, 1
jz      short loc_40903B
jmp     def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case

loc_409002:
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 4
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
sar     eax, 4
mov     [esi+66h], ax
mov     word ptr [edi+4], 10h
mov     word ptr [edi+8], 0

loc_40903B:
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jg      short loc_40904C
or      byte ptr [edi], 1

loc_40904C:
mov     di, [esi+56h]
add     di, [esi+66h]
and     edi, 0FFFh
mov     [esi+56h], di
cmp     byte ptr [esi+0A6h], 0
jz      def_4089B7      ; jumptable 004089B7 default case
; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
lea     edx, [esi+14h]
mov     eax, 0D5h
jmp     loc_408E5A
sub_408FE5 endp




sub_409078 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40909C
jbe     short loc_409102
cmp     al, 2
jz      loc_40917C
jmp     loc_40938A

loc_40909C:
test    al, al
jnz     loc_40938A
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 7
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     ebp, [esi+14h]
mov     ecx, 800h
mov     eax, ebp
call    sub_4DE552
sar     eax, 4
mov     [esi+66h], ax
mov     word ptr [esi+46h], 0FE00h
mov     word ptr [esi+4Eh], 40h ; '@'
mov     word ptr [edi+4], 10h
mov     word ptr [edi+8], 0
mov     edx, ebp
mov     eax, 0D1h
call    sub_4D8BC3
mov     eax, esi
call    sub_42C592
mov     [edi+3Eh], ax

loc_409102:
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jnz     short loc_40914A
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [edi+3Ch]
sar     eax, 10h
cmp     edx, eax
jl      loc_40938A

loc_40914A:
mov     ax, [edi+3Eh]
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 8
mov     word ptr [edi+4], 0Dh
lea     edx, [esi+14h]
mov     eax, 0D3h
call    sub_4D8BC3

loc_40917C:
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     loc_40938A
or      byte ptr [edi], 1
jmp     loc_40938A
sub_409078 endp




sub_409196 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4091BA
jbe     short loc_409219
cmp     al, 2
jz      loc_409266
jmp     loc_40938A

loc_4091BA:
test    al, al
jnz     loc_40938A
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 4
mov     eax, ds:dword_50B4B6
sar     eax, 10h
sar     eax, 1
mov     ebx, ds:dword_50B4B2
sar     ebx, 10h
add     eax, ebx
mov     ds:word_559010, ax
xor     edx, edx
mov     ds:word_559012, dx
mov     eax, ds:dword_50B4B6+2
sar     eax, 10h
sar     eax, 1
mov     ebx, ds:dword_50B4B2+2
sar     ebx, 10h
add     eax, ebx
mov     ds:word_559014, ax
mov     word ptr [edi+4], 10h
mov     [edi+8], dx
and     byte ptr [edi], 0FBh

loc_409219:
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jl      short loc_40924F
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, offset word_559010
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_40938A

loc_40924F:
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 3
mov     word ptr [edi+8], 0
mov     word ptr [edi+4], 12Ch

loc_409266:
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     ebp, [esi+14h]
mov     ecx, 20h ; ' '
mov     edx, offset word_559010
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 70h ; 'p'
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
cmp     byte ptr [esi+0A6h], 0
jz      short loc_4092B7
mov     edx, ebp
mov     eax, 0D5h
call    sub_4D8BC3

loc_4092B7:
mov     ebp, [esi+12h]
sar     ebp, 10h
mov     eax, ds:dword_50B4B2
sar     eax, 10h
sub     ebp, eax
mov     ebx, [esi+16h]
sar     ebx, 10h
mov     eax, ds:dword_50B4B2+2
sar     eax, 10h
sub     ebx, eax
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_409305
mov     eax, ds:dword_50B4B6
sar     eax, 10h
cmp     ebp, eax
jnb     loc_40938A
mov     eax, ds:dword_50B4B6+2
sar     eax, 10h
cmp     ebx, eax
jnb     loc_40938A

loc_409305:
mov     dh, [edi]
or      dh, 5
mov     [edi], dh
mov     bl, dh
and     bl, 0BFh
mov     [edi], bl
jmp     loc_40938A
sub_409196 endp




sub_409318 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
mov     eax, offset unk_50B4BC
xor     ebx, ebx
xor     edx, edx
jmp     short loc_409339

loc_409331:
inc     edx
inc     eax
cmp     dx, 4
jge     short loc_409352

loc_409339:
movzx   si, byte ptr [eax]
add     ebx, esi
mov     si, [ecx+2]
and     esi, 0Fh
xor     edi, edi
mov     di, si
movsx   esi, bx
cmp     edi, esi
jge     short loc_409331

loc_409352:
mov     byte ptr [ebp+9], 2
cmp     dx, 1
jb      short loc_409366
jbe     short loc_409371
cmp     dx, 2
jz      short loc_409379
jmp     short loc_409381

loc_409366:
test    dx, dx
jnz     short loc_409381
mov     [ebp+66h], dx
jmp     short loc_409385

loc_409371:
mov     word ptr [ebp+66h], 6
jmp     short loc_409385

loc_409379:
mov     word ptr [ebp+66h], 0FFFAh
jmp     short loc_409385

loc_409381:
mov     byte ptr [ebp+9], 1

loc_409385:
mov     eax, 1

loc_40938A:
pop     ebp

def_4089B7:             ; jumptable 004089B7 default case
pop     edi             ; jumptable 00408B43 default case
; jumptable 00408D6B default case
; jumptable 00408EFB default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409318 endp

align 2
jpt_409493 dd offset loc_40949A ; jump table for switch statement
dd offset loc_4094A0
dd offset loc_4094A0
dd offset loc_4094A0
dd offset loc_4094A6
dd offset loc_4094A6
dd offset def_409493
dd offset def_409493
dd offset def_409493
dd offset loc_4094A0
dd offset loc_4094A6
dd offset loc_4094A0



sub_4093C2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
mov     eax, [ebp+14h]
and     eax, 0FFFFFFh
jz      short loc_409385
test    byte ptr [ebp+17h], 38h
jz      loc_40956E
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
test    dx, dx
jg      short loc_409432
mov     dh, [ebp+0]
and     dh, 0F9h
mov     [ebp+0], dh
mov     bl, dh
or      bl, 4
mov     [ebp+0], bl
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A108
add     eax, edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 4
mov     eax, [eax]
mov     al, [edx+eax+9]
and     eax, 0FFh
shl     eax, 4

loc_409432:
lea     edx, [ecx+14h]
test    byte ptr [ebp+0], 4
jz      loc_40951E
add     [ebp+0Ah], ax
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, eax
shl     ebx, 2
mov     eax, ds:dword_55A108
add     eax, ebx
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 4
mov     eax, [eax]
mov     al, [ebx+eax+9]
and     eax, 0FFh
shl     eax, 4
mov     ebx, [ebp+8]
sar     ebx, 10h
cmp     ebx, eax
jl      loc_409517
mov     eax, 0A2h
call    sub_4D8BC3
mov     al, [ecx+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_409493      ; jumptable 00409493 default case, cases 6-8
and     eax, 0FFh
jmp     jpt_409493[eax*4] ; switch jump

loc_40949A:             ; jumptable 00409493 case 0
mov     byte ptr [ecx+9], 6
jmp     short def_409493 ; jumptable 00409493 default case, cases 6-8

loc_4094A0:             ; jumptable 00409493 cases 1-3,9,11
mov     byte ptr [ecx+9], 7
jmp     short def_409493 ; jumptable 00409493 default case, cases 6-8

loc_4094A6:             ; jumptable 00409493 cases 4,5,10
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cmp     edx, eax
jz      short loc_40949A ; jumptable 00409493 case 0
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C935
cmp     edx, eax
jz      short loc_4094A0 ; jumptable 00409493 cases 1-3,9,11
call    sub_4DE13B
test    eax, eax
jz      short loc_4094E4
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4094E4:
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

def_409493:             ; jumptable 00409493 default case, cases 6-8
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ebp+0Ah], 0
jmp     short loc_409560

loc_409517:
mov     eax, 0A0h
jmp     short loc_40955B

loc_40951E:
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     ebx, ds:dword_55A108
add     eax, ebx
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 4
mov     eax, [eax]
mov     al, [ebx+eax+9]
and     eax, 0FFh
shl     eax, 4
mov     ebx, [ebp+8]
sar     ebx, 10h
cmp     ebx, eax
jl      short loc_409556
mov     eax, 0A2h
jmp     short loc_40955B

loc_409556:
mov     eax, 0A0h

loc_40955B:
call    sub_4D8BC3

loc_409560:
mov     word ptr [ecx+15Eh], 7FFFh
jmp     loc_409385

loc_40956E:
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3
jmp     loc_409385
sub_4093C2 endp




sub_409580 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B594[edx*4]
mov     ds:dword_559020, eax
xor     edx, edx
mov     ds:word_559024, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_4095C2:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_409580 endp




sub_4095CD proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B5CC[edx*4]
mov     ds:dword_559018, eax
xor     edx, edx
mov     ds:word_55901C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_4095C2
sub_4095CD endp




sub_409611 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_559020
test    edx, edx
jz      loc_409734
cmp     ds:dword_559018, 0
jz      loc_409734
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_409654
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559020, eax
xor     ebx, ebx
mov     ds:word_559024, bx

loc_409654:
mov     eax, ds:dword_559020
inc     ds:word_559024
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559020+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_4096B2
xor     edi, edi
mov     ds:word_559024, di
add     eax, 4
mov     ds:dword_559020, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_4096B2:
mov     eax, ds:dword_559018
cmp     word ptr [eax+2], 0
jg      short loc_4096D6
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559018, eax
xor     ebx, ebx
mov     ds:word_55901C, bx

loc_4096D6:
mov     eax, ds:dword_559018
inc     ds:word_55901C
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559018+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_409734
xor     edi, edi
mov     ds:word_55901C, di
add     eax, 4
mov     ds:dword_559018, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_409734:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409611 endp




sub_40973A proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_55902C
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_409789
cmp     dl, ds:byte_560BE4
jnz     short loc_409789
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_409789
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_409789
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_409580
add     ds:dword_55902C, 6

loc_409789:
mov     eax, ds:dword_559028
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_4097C3
cmp     dl, [ebx+8]
jnz     short loc_4097C3
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_4097C3
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_4097C3
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_4095CD
add     ds:dword_559028, 6

loc_4097C3:
mov     eax, ecx
call    sub_409611
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40973A endp




sub_4097D0 proc near
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
mov     byte ptr [ecx+0ACh], 0
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+56h], 8A5h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     ds:dword_55902C, offset unk_50B624
mov     ds:dword_559028, offset unk_50B690
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_4097D0 endp




sub_409843 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_409881
mov     [ecx+0ACh], ah
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ecx
jmp     short loc_409879

loc_40985F:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 10h
mov     byte ptr [eax+0Eh], 0

loc_40986F:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx

loc_409879:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409881:
pop     edx
pop     ecx
pop     ebx
retn
sub_409843 endp




sub_409885 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 32h ; '2'
jnz     short loc_4098A5
mov     edx, ds:dword_560C0C
mov     byte ptr [edx+9], 1
mov     edx, ds:dword_560C0C
mov     byte ptr [edx+0Ah], 0

loc_4098A5:
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Dh ; '='
jnz     short loc_4098B3
inc     byte ptr [eax+0Ah]

loc_4098B3:
pop     edx
retn
sub_409885 endp




sub_4098B5 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Dh ; '='
jnz     short loc_4098C4
inc     byte ptr [eax+0Ah]

loc_4098C4:
pop     edx
retn
sub_4098B5 endp




sub_4098C6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 11h
mov     byte ptr [eax+0Eh], 1
jmp     short loc_40986F
sub_4098C6 endp




sub_4098D8 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 17h
jnz     short loc_4098EB
mov     byte ptr [eax+0Ch], 1Eh
inc     byte ptr [eax+0Ah]

loc_4098EB:
pop     edx
retn
sub_4098D8 endp




sub_4098ED proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_4098FB
inc     byte ptr [eax+0Ah]

loc_4098FB:
pop     edx
retn
sub_4098ED endp




sub_4098FD proc near
push    edx
add     dword ptr [eax+24h], 15D17h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 2Ch ; ','
jnz     short loc_409913
inc     byte ptr [eax+0Ah]

loc_409913:
pop     edx
retn
sub_4098FD endp




sub_409915 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Dh ; '='
jnz     short loc_409944
mov     byte ptr [ecx+0ACh], 12h
mov     byte ptr [ecx+0Eh], 2
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409944:
pop     edx
pop     ecx
pop     ebx
retn
sub_409915 endp




sub_409948 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 20h ; ' '
jnz     short loc_40995B
mov     byte ptr [eax+0Dh], 1Eh
inc     byte ptr [eax+0Ah]

loc_40995B:
pop     edx
retn
sub_409948 endp




sub_40995D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Dh]
dec     ah
mov     [ecx+0Dh], ah
jnz     short loc_409999
mov     eax, ds:dword_560C0C
mov     byte ptr [eax+9], 0
mov     eax, ds:dword_560C0C
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [ecx+0ACh], 13h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409999:
pop     edx
pop     ecx
pop     ebx
retn
sub_40995D endp




sub_40999D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 2Dh ; '-'
jnz     short loc_4099C8
mov     byte ptr [ecx+0ACh], 14h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4099C8:
pop     edx
pop     ecx
pop     ebx
retn
sub_40999D endp




sub_4099CC proc near
push    edx
add     word ptr [eax+26h], 3
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Bh ; ';'
jnz     short loc_4099E0
inc     byte ptr [eax+0Ah]

loc_4099E0:
pop     edx
sub_4099CC endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_29]



sub_4099E2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_4099E8[edx*4]
pop     edx
retn
sub_4099E2 endp




sub_4099F1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 15h
jmp     loc_40986F
sub_4099F1 endp




sub_409A02 proc near
add     word ptr [eax+26h], 5
retn
sub_409A02 endp




sub_409A08 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_409A12[ecx*4]
mov     edx, [edx+98h]
mov     ah, [edx]
cmp     ah, 2
jz      short loc_409A2B
cmp     ah, 16h
jnz     short loc_409A3C

loc_409A2B:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_409A3C:
pop     edx
pop     ecx
pop     ebx
retn
sub_409A08 endp




sub_409A40 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_409A66
mov     byte ptr [ecx+0ACh], 16h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_409A63:
inc     byte ptr [ecx+0Ah]

loc_409A66:
pop     edx
pop     ecx
pop     ebx
retn
sub_409A40 endp




sub_409A6A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 17h
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+108h], 14h
mov     byte ptr [ecx+114h], 15h
jmp     short loc_409A63
sub_409A6A endp




sub_409A95 proc near
cmp     byte ptr [eax+0Ah], 0
jz      short sub_409A6A
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 78h ; 'x'
jnz     short loc_409AC7
mov     eax, ds:dword_560C04
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_560C3C
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_560C40
call    sub_4DE3EA

loc_409AC7:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 7Fh
jnz     short loc_409AEA
mov     byte ptr [ecx+0ACh], 18h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_409AEA:
pop     edx
pop     ecx
pop     ebx
retn
sub_409A95 endp




sub_409AEE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_409B1E
mov     byte ptr [ecx+0ACh], 19h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     edx, ds:dword_560C04
mov     byte ptr [edx+9], 2
inc     byte ptr [ecx+0Ah]

loc_409B1E:
pop     edx
pop     ecx
pop     ebx
retn
sub_409AEE endp




sub_409B22 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 30h ; '0'
jmp     loc_40986F
sub_409B22 endp




sub_409B33 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 26h ; '&'
jnz     short loc_409B62
mov     byte ptr [ecx+0ACh], 22h ; '"'
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 2Fh ; '/'

loc_409B62:
pop     edx
pop     ecx
pop     ebx
retn
sub_409B33 endp




sub_409B66 proc near
push    edx
mov     dl, [eax+0Dh]
dec     dl
mov     [eax+0Dh], dl
jnz     short loc_409B74
inc     byte ptr [eax+0Ah]

loc_409B74:
sub     dword ptr [eax+1Ch], 1B3BEh
pop     edx
sub_409B66 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_30]



sub_409B7D proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409B83[edx*4]
pop     edx
retn
sub_409B7D endp




sub_409B8C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Ah
jmp     loc_40986F
sub_409B8C endp




sub_409B9D proc near
push    edx
sub     dword ptr [eax+24h], 72492h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 15h
jnz     short loc_409BB3
inc     byte ptr [eax+0Ah]

loc_409BB3:
pop     edx
sub_409B9D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_31]



sub_409BB5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409BBB[edx*4]
pop     edx
retn
sub_409BB5 endp




sub_409BC4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_409BEA
mov     byte ptr [ecx+0ACh], 1Bh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_409BEA:
pop     edx
pop     ecx
pop     ebx
retn
sub_409BC4 endp




sub_409BEE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Ch
jmp     loc_40986F
sub_409BEE endp




sub_409BFF proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 9
jnz     short loc_409C0E
inc     byte ptr [eax+0Ah]

loc_409C0E:
pop     edx
retn
sub_409BFF endp




sub_409C10 proc near
push    edx
add     dword ptr [eax+1Ch], 0FFFD8000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 20h ; ' '
jnz     short loc_409C2D
add     dword ptr [eax+1Ch], 28000h
inc     byte ptr [eax+0Ah]

loc_409C2D:
pop     edx
sub_409C10 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_32]



sub_409C2F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409C35[edx*4]
pop     edx
retn
sub_409C2F endp




sub_409C3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Dh
jmp     loc_40986F
sub_409C3E endp




sub_409C4F proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 8
jnz     short loc_409C5E
inc     byte ptr [eax+0Ah]

loc_409C5E:
pop     edx
retn
sub_409C4F endp




sub_409C60 proc near
push    edx
sub     dword ptr [eax+24h], 90000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Dh
jnz     short loc_409C76
inc     byte ptr [eax+0Ah]

loc_409C76:
pop     edx
retn
sub_409C60 endp




sub_409C78 proc near
push    edx
sub     dword ptr [eax+24h], 90000h
add     dword ptr [eax+20h], 73333h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 26h ; '&'
jnz     short loc_409C95
inc     byte ptr [eax+0Ah]

loc_409C95:
pop     edx
sub_409C78 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_33]



sub_409C97 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409C9D[edx*4]
pop     edx
retn
sub_409C97 endp




sub_409CA6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Eh
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     edx, ds:dword_560C04
mov     byte ptr [edx+9], 3
pop     edx
pop     ecx
pop     ebx
retn
sub_409CA6 endp




sub_409CD2 proc near
sub     dword ptr [eax+24h], 200000h
retn
sub_409CD2 endp




sub_409CDA proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_409CE4[ecx*4]
mov     edx, [edx+98h]
mov     ah, [edx]
cmp     ah, 3
jz      short loc_409CFD
cmp     ah, 0Bh
jnz     short loc_409D0E

loc_409CFD:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 91h
call    sub_4D89E4

loc_409D0E:
pop     edx
pop     ecx
pop     ebx
retn
sub_409CDA endp




sub_409D12 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Fh
jmp     loc_40986F
sub_409D12 endp




sub_409D23 proc near
push    edx
add     dword ptr [eax+24h], 0FFDF8000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 28h ; '('
jnz     short loc_409D39
inc     byte ptr [eax+0Ah]

loc_409D39:
pop     edx
retn
sub_409D23 endp




sub_409D3B proc near
push    edx
sub     dword ptr [eax+24h], 140000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Ch ; '<'
jnz     short loc_409D51
inc     byte ptr [eax+0Ah]

loc_409D51:
pop     edx
retn
sub_409D3B endp




sub_409D53 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 3Fh ; '?'
jnz     short loc_409D62
inc     byte ptr [eax+0Ah]

loc_409D62:
pop     edx
sub_409D53 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_34]



sub_409D64 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 20h ; ' '
jmp     loc_40986F
sub_409D64 endp




sub_409D75 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_409D7B[edx*4]
pop     edx
retn
sub_409D75 endp




sub_409D84 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_409D8F[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_409DAE
mov     eax, esi
call    sub_4DEADD

loc_409DAE:
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
sub_409D84 endp




sub_409DC6 proc near
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_409DFD
mov     eax, edx
call    sub_409D84
mov     eax, edx
call    sub_40973A
jmp     short loc_409E04

loc_409DFD:
mov     eax, edx
call    sub_4097D0

loc_409E04:
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
retn
sub_409DC6 endp




sub_409E24 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B8B8[edx*4]
mov     ds:dword_559038, eax
xor     edx, edx
mov     ds:word_55903C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_409E66:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_409E24 endp




sub_409E71 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50B8E0[edx*4]
mov     ds:dword_559030, eax
xor     edx, edx
mov     ds:word_559034, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_409E66
sub_409E71 endp




sub_409EB5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_559038
test    edx, edx
jz      loc_409FC5
cmp     ds:dword_559030, 0
jz      loc_409FC5
mov     eax, edx
inc     ds:word_55903C
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559038+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_409F4C
add     eax, 4
mov     ds:dword_559038, eax
cmp     word ptr [eax+2], 0
jg      short loc_409F0F
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559038, eax

loc_409F0F:
xor     ecx, ecx
mov     ds:word_55903C, cx
mov     eax, ds:dword_559038
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_409F4C:
mov     eax, ds:dword_559030
inc     ds:word_559034
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559030+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_409FC5
add     eax, 4
mov     ds:dword_559030, eax
cmp     word ptr [eax+2], 0
jg      short loc_409F88
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
mov     ds:dword_559030, eax

loc_409F88:
xor     ebx, ebx
mov     ds:word_559034, bx
mov     eax, ds:dword_559030
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_409FC5:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409EB5 endp




sub_409FCA proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_559044
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A019
cmp     dl, ds:byte_560BE4
jnz     short loc_40A019
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40A019
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40A019
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_409E24
add     ds:dword_559044, 6

loc_40A019:
mov     eax, ds:dword_559040
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A053
cmp     dl, [ebx+8]
jnz     short loc_40A053
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40A053
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40A053
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_409E71
add     ds:dword_559040, 6

loc_40A053:
mov     eax, ecx
call    sub_409EB5
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_409FCA endp




sub_40A060 proc near
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
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+15Eh], 2108h
mov     ds:dword_559044, offset unk_50B91C
mov     ds:dword_559040, offset unk_50B970
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40A060 endp




sub_40A0D6 proc near
push    edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     edx
retn
sub_40A0D6 endp




sub_40A0E4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 2

loc_40A0F0:
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx

loc_40A107:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40A0E4 endp




sub_40A113 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'

loc_40A11F:
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_40A113 endp




sub_40A128 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_40A132[ecx*4]
mov     edx, [edx+98h]
mov     ah, [edx]
cmp     ah, 6
jz      short loc_40A14B
cmp     ah, 16h
jnz     short loc_40A15C

loc_40A14B:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_40A15C:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A128 endp




sub_40A160 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 12h
jmp     short loc_40A0F0
sub_40A160 endp




sub_40A16E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 5
jnz     short loc_40A199
mov     byte ptr [ecx+0ACh], 0

loc_40A185:
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A199:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
pop     ebx
sub_40A16E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_35]



sub_40A1A8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A1AE[edx*4]
pop     edx
retn
sub_40A1A8 endp




sub_40A1B7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 13h
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
jmp     loc_40A107
sub_40A1B7 endp




sub_40A1D2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+98h]
cmp     byte ptr [edx], 59h ; 'Y'
jnz     short loc_40A205
mov     byte ptr [ecx+0ACh], 14h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 9
mov     byte ptr [ecx+0Fh], 5
inc     byte ptr [ecx+0Ah]

loc_40A205:
pop     edx
pop     ecx
pop     ebx
sub_40A1D2 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_36]



sub_40A209 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_40A212[ecx*4]

loc_40A219:
lea     ecx, [edx+14h]
lea     eax, [edx+1Ch]
mov     edx, ecx
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_40A209 endp




sub_40A229 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A24F
mov     byte ptr [ecx+0ACh], 15h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A24F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A229 endp




sub_40A253 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A279
mov     byte ptr [ecx+0ACh], 16h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A279:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A253 endp




sub_40A27D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A2A3
mov     byte ptr [ecx+0ACh], 17h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_40A2A0:
inc     byte ptr [ecx+0Ah]

loc_40A2A3:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A27D endp




sub_40A2A7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A2CE
mov     byte ptr [esi+0ACh], 18h
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_40A2CE:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE9h
mov     eax, esi
call    sub_4DD43B
mov     esi, [esi+98h]
mov     dh, [esi]
cmp     dh, 2
jz      short loc_40A2F0
cmp     dh, 25h ; '%'
jnz     short loc_40A301

loc_40A2F0:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 90h
call    sub_4D89E4

loc_40A301:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A2A7 endp




sub_40A306 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 19h
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
jmp     loc_40A2A0
sub_40A306 endp




sub_40A331 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ah
jnz     short loc_40A342
inc     byte ptr [eax+0Ah]

loc_40A342:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE9h
jmp     loc_40A11F
sub_40A331 endp




sub_40A350 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A356[edx*4]
pop     edx
retn
sub_40A350 endp




sub_40A35F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40A385
mov     byte ptr [ecx+0ACh], 1Ch
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_40A382:
inc     byte ptr [ecx+0Ah]

loc_40A385:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A35F endp




sub_40A389 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 1Ah
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 2Ch ; ','
jmp     short loc_40A382
sub_40A389 endp




sub_40A3AA proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_40A3B8
inc     byte ptr [eax+0Ah]

loc_40A3B8:
pop     edx
retn
sub_40A3AA endp




sub_40A3BA proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Fh
jnz     short loc_40A3C9
inc     byte ptr [eax+0Ah]

loc_40A3C9:
pop     edx
retn
sub_40A3BA endp




sub_40A3CB proc near
push    edx
sub     dword ptr [eax+24h], 140000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ah
jnz     short loc_40A3E6
add     word ptr [eax+22h], 30h ; '0'
inc     byte ptr [eax+0Ah]

loc_40A3E6:
pop     edx
retn
sub_40A3CB endp




sub_40A3E8 proc near
add     word ptr [eax+22h], 30h ; '0'
retn
sub_40A3E8 endp




sub_40A3EE proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+0Ah]
call    ds:funcs_40A3F7[ecx*4]
jmp     loc_40A219
sub_40A3EE endp




sub_40A403 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     loc_40A199
mov     dword ptr [ecx+1Ch], 1F40000h
mov     dword ptr [ecx+20h], 0E5EA0000h
mov     dword ptr [ecx+24h], 0FB2C0000h
mov     byte ptr [ecx+0ACh], 1Bh
jmp     loc_40A185
sub_40A403 endp




sub_40A433 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40A43E[edx*4]
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_40A454
mov     eax, esi
call    sub_4DEADD
jmp     short loc_40A462

loc_40A454:
mov     eax, esi
call    sub_4DFC52
mov     eax, esi
call    sub_4DF795

loc_40A462:
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
sub_40A433 endp




sub_40A47A proc near
push    ebx
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_40A4B2
mov     eax, edx
call    sub_40A433
mov     eax, edx
call    sub_409FCA
jmp     short loc_40A4B9

loc_40A4B2:
mov     eax, edx
call    sub_40A060

loc_40A4B9:
mov     al, [edx+0Bh]
test    al, al
jbe     short loc_40A4F4
cmp     al, 1
jnz     short loc_40A4F4
mov     bl, [edx+0Dh]
add     bl, al
mov     [edx+0Dh], bl
cmp     bl, 4
jnz     short loc_40A4F4
mov     byte ptr [edx+0Dh], 0
mov     bx, [edx+15Eh]
add     ebx, 421h
mov     [edx+15Eh], bx
cmp     bx, 4210h
jnz     short loc_40A4F4
mov     byte ptr [edx+0Bh], 0

loc_40A4F4:
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
pop     ebx
retn
sub_40A47A endp




sub_40A515 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BA70[edx*4]
mov     ds:dword_559050, eax
xor     edx, edx
mov     ds:word_559054, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40A557:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40A515 endp




sub_40A562 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BA7C[edx*4]
mov     ds:dword_559048, eax
xor     edx, edx
mov     ds:word_55904C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40A557
sub_40A562 endp




sub_40A5A6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_559050
test    edx, edx
jz      loc_40A6B6
cmp     ds:dword_559048, 0
jz      loc_40A6B6
mov     eax, edx
inc     ds:word_559054
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559050+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40A63D
add     eax, 4
mov     ds:dword_559050, eax
cmp     word ptr [eax+2], 0
jg      short loc_40A600
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559050, eax

loc_40A600:
xor     ecx, ecx
mov     ds:word_559054, cx
mov     eax, ds:dword_559050
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40A63D:
mov     eax, ds:dword_559048
inc     ds:word_55904C
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559048+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40A6B6
add     eax, 4
mov     ds:dword_559048, eax
cmp     word ptr [eax+2], 0
jg      short loc_40A679
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
mov     ds:dword_559048, eax

loc_40A679:
xor     ebx, ebx
mov     ds:word_55904C, bx
mov     eax, ds:dword_559048
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40A6B6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A5A6 endp




sub_40A6BB proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_55905C
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A70A
cmp     dl, ds:byte_560BE4
jnz     short loc_40A70A
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40A70A
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40A70A
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A515
add     ds:dword_55905C, 6

loc_40A70A:
mov     eax, ds:dword_559058
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40A744
cmp     dl, [ebx+8]
jnz     short loc_40A744
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40A744
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40A744
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A562
add     ds:dword_559058, 6

loc_40A744:
mov     eax, ecx
call    sub_40A5A6
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A6BB endp




sub_40A751 proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     ds:dword_55905C, offset unk_50BA84
mov     ds:dword_559058, offset unk_50BA9C
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx

locret_40A7A6:
retn
sub_40A751 endp




sub_40A7A7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40A7A7 endp




sub_40A7BF proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 18h
jnz     short loc_40A7CE
inc     byte ptr [eax+0Ah]

loc_40A7CE:
pop     edx
retn
sub_40A7BF endp




sub_40A7D0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     word ptr [eax+26h], 5
mov     eax, [eax+98h]
cmp     byte ptr [eax], 36h ; '6'
jnz     short loc_40A7FA
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
add     byte ptr [ecx+57h], 8
inc     byte ptr [ecx+0Ah]

loc_40A7FA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A7D0 endp




sub_40A7FE proc near
push    edx
add     word ptr [eax+26h], 5
mov     edx, [eax+98h]
cmp     byte ptr [edx], 0Eh
jnz     short loc_40A812
inc     byte ptr [eax+0Ah]

loc_40A812:
pop     edx
retn
sub_40A7FE endp




sub_40A814 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     word ptr [eax+26h], 20h ; ' '
mov     eax, [eax+98h]
cmp     byte ptr [eax], 1Ch
jnz     short loc_40A83A
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40A83A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40A814 endp




sub_40A83E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
mov     dl, [eax]
cmp     dl, 4
jz      short loc_40A855
cmp     dl, 0Ch
jnz     short loc_40A866

loc_40A855:
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, 91h
call    sub_4D89E4

loc_40A866:
add     word ptr [ecx+26h], 20h ; ' '
pop     edx
pop     ecx
pop     ebx
retn
sub_40A83E endp




sub_40A86F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40A875[edx*4]
pop     edx
retn
sub_40A86F endp




sub_40A87E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40A889[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     eax, esi
call    sub_4DEADD
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
sub_40A87E endp




sub_40A8BA proc near
push    edx
mov     edx, eax
mov     ax, [eax+14h]
mov     word ptr ds:dword_5F838E+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F8392, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F8392+2, ax
cmp     byte ptr [edx+8], 0
jz      short loc_40A8EA
mov     eax, edx
call    sub_40A87E
jmp     short loc_40A8F1

loc_40A8EA:
mov     eax, edx
call    sub_40A751

loc_40A8F1:
mov     eax, edx
call    sub_40A6BB
mov     ax, [edx+14h]
mov     word ptr ds:dword_5F8376+2, ax
mov     ax, [edx+16h]
mov     word ptr ds:dword_5F837A, ax
mov     ax, [edx+18h]
mov     word ptr ds:dword_5F837A+2, ax
pop     edx
retn
sub_40A8BA endp




sub_40A918 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BB94[edx*4]
mov     ds:dword_559068, eax
xor     edx, edx
mov     ds:word_55906C, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40A95A:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40A918 endp




sub_40A965 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50BBB8[edx*4]
mov     ds:dword_559060, eax
xor     edx, edx
mov     ds:word_559064, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40A95A
sub_40A965 endp




sub_40A9A9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_559068
test    edx, edx
jz      loc_40AACC
cmp     ds:dword_559060, 0
jz      loc_40AACC
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_40A9EC
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559068, eax
xor     ebx, ebx
mov     ds:word_55906C, bx

loc_40A9EC:
mov     eax, ds:dword_559068
inc     ds:word_55906C
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_559068+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40AA4A
xor     edi, edi
mov     ds:word_55906C, di
add     eax, 4
mov     ds:dword_559068, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40AA4A:
mov     eax, ds:dword_559060
cmp     word ptr [eax+2], 0
jg      short loc_40AA6E
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_559060, eax
xor     ebx, ebx
mov     ds:word_559064, bx

loc_40AA6E:
mov     eax, ds:dword_559060
inc     ds:word_559064
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_559060+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40AACC
xor     edi, edi
mov     ds:word_559064, di
add     eax, 4
mov     ds:dword_559060, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40AACC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40A9A9 endp




sub_40AAD2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_559074
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40AB21
cmp     dl, ds:byte_560BE4
jnz     short loc_40AB21
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40AB21
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40AB21
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A918
add     ds:dword_559074, 6

loc_40AB21:
mov     eax, ds:dword_559070
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40AB5B
cmp     dl, [ebx+8]
jnz     short loc_40AB5B
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40AB5B
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40AB5B
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40A965
add     ds:dword_559070, 6

loc_40AB5B:
mov     eax, ecx
call    sub_40A9A9
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40AAD2 endp




sub_40AB68 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+56h], 800h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_559074, offset unk_50BBE8
mov     ds:dword_559070, offset unk_50BC2A
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40AB68 endp




sub_40ABB7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
call    sub_4DE96B
mov     byte ptr [ecx+0Bh], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn
sub_40ABB7 endp




sub_40ABD3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     dword ptr [eax+20h], 23333h
mov     eax, [eax+98h]
cmp     byte ptr [eax], 1Bh
jnz     short loc_40ABED
inc     byte ptr [ecx+0Bh]

loc_40ABED:
cmp     byte ptr [ecx+0Bh], 4
jnz     short loc_40AC04
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC04:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ABD3 endp




sub_40AC08 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 7
jnz     short loc_40AC17
inc     byte ptr [eax+0Ah]

loc_40AC17:
pop     edx
retn
sub_40AC08 endp




sub_40AC19 proc near
push    edx
add     word ptr [eax+22h], 3
mov     edx, [eax+98h]
cmp     byte ptr [edx], 11h
jnz     short loc_40AC2D
inc     byte ptr [eax+0Ah]

loc_40AC2D:
pop     edx
sub_40AC19 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_37]



sub_40AC2F proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40AC35[edx*4]
pop     edx
retn
sub_40AC2F endp




sub_40AC3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC5A
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC5A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC3E endp




sub_40AC5E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC7A
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC7A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC5E endp




sub_40AC7E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AC9A
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AC9A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC7E endp




sub_40AC9E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACBA
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACBA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AC9E endp




sub_40ACBE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACDA
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACDA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACBE endp




sub_40ACDE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40ACFA
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40ACFA:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACDE endp




sub_40ACFE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AD1A
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40AD1A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40ACFE endp




sub_40AD1E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40AD3A
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B

loc_40AD37:
inc     byte ptr [ecx+0Ah]

loc_40AD3A:
