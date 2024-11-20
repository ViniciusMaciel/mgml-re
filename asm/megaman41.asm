loc_45E665:
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+0Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     edi, [edi+0Eh]
sar     edi, 10h
sub     eax, edi
mov     edi, eax
imul    edx, edx
imul    edi, eax
add     edx, edi
cmp     edx, 800h
jge     def_45E5EA      ; jumptable 0045E5EA default case
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0
mov     word ptr [esi+64h], 0
mov     eax, 606h
call    sub_47E8B8
jmp     def_45E5EA      ; jumptable 0045E5EA default case

loc_45E6BC:             ; jumptable 0045E5EA case 2
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_45E5EA      ; jumptable 0045E5EA default case
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 8
jmp     def_45E5EA      ; jumptable 0045E5EA default case

loc_45E6DA:             ; jumptable 0045E5EA case 3
cmp     byte ptr [esi+0A7h], 0
jge     def_45E5EA      ; jumptable 0045E5EA default case
dec     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
jmp     def_45E5EA      ; jumptable 0045E5EA default case
sub_45E5CE endp

db 8Bh, 0C0h
jpt_45E730 dd offset loc_45E737 ; jump table for switch statement
dd offset loc_45E765
dd offset loc_45E7BE
dd offset loc_45E7D9
dd offset def_45E730



sub_45E70E proc near

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
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_45E730      ; jumptable 0045E730 default case, case 4
xor     edx, edx
mov     dl, al
jmp     jpt_45E730[edx*4] ; switch jump

loc_45E737:             ; jumptable 0045E730 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ebp+44h], 3Ch ; '<'
mov     word ptr [ebp+64h], 20h ; ' '
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [eax+14h]
movsd
movsd

loc_45E765:             ; jumptable 0045E730 case 1
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 0Ch
lea     eax, [ebp+14h]
call    sub_4DE552
mov     ecx, eax
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45E7A3
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Ch
call    sub_4D89E4

loc_45E7A3:
test    cx, cx
jnz     def_45E730      ; jumptable 0045E730 default case, case 4
mov     eax, 606h
call    sub_47E8B8
inc     byte ptr [ebp+0Ah]
jmp     def_45E730      ; jumptable 0045E730 default case, case 4

loc_45E7BE:             ; jumptable 0045E730 case 2
inc     al
mov     [ebp+0Ah], al
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [eax+14h]
movsd
movsd

loc_45E7D9:             ; jumptable 0045E730 case 3
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+1Ch+var_1C]
add     edx, 0Ch
lea     eax, [ebp+14h]
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45E826
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Ch
call    sub_4D89E4

loc_45E826:
mov     edx, [ebp+12h]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+0Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     ecx, [ebp+16h]
sar     ecx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Eh]
sar     edx, 10h
sub     ecx, edx
mov     edx, ecx
mov     ecx, eax
imul    ecx, ecx
mov     eax, edx
imul    eax, eax
add     eax, ecx
cmp     eax, 800h
jge     short def_45E730 ; jumptable 0045E730 default case, case 4
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+64h], 0
mov     eax, 606h
call    sub_47E8B8

def_45E730:             ; jumptable 0045E730 default case, case 4
add     esp, 4
jmp     loc_45E4DC
sub_45E70E endp




sub_45E887 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45E899
jbe     short loc_45E8A9
cmp     dl, 2
jz      short loc_45E8BE
pop     edx
retn

loc_45E899:
test    dl, dl
jnz     short loc_45E8D3
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45E8A9:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45E8D3
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45E8BE:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45E8D3
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45E8D3:
pop     edx
retn
sub_45E887 endp




sub_45E8D5 proc near
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
call    ds:funcs_45E8FC[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_45E91C
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45E91C:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45E92C
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45E933

loc_45E92C:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45E933:
pop     ebp

loc_45E934:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45E8D5 endp

db 8Dh, 40h, 0
jpt_45E968 dd offset loc_45E96F ; jump table for switch statement
dd offset loc_45E97E
dd offset loc_45E98F
dd offset loc_45E9F4
dd offset loc_45EA07



sub_45E951 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     eax, 0FFh
jmp     jpt_45E968[eax*4] ; switch jump

loc_45E96F:             ; jumptable 0045E968 case 0
mov     eax, esi
call    sub_45EC49

loc_45E976:
inc     byte ptr [esi+8]
jmp     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45E97E:             ; jumptable 0045E968 case 1
mov     eax, esi
call    sub_45ECFF
test    eax, eax
jz      def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
jmp     short loc_45E976

loc_45E98F:             ; jumptable 0045E968 case 2
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
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_45EDEE
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45E9F4:             ; jumptable 0045E968 case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42A98E
jmp     loc_45E976

loc_45EA07:             ; jumptable 0045E968 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45E968:             ; jumptable 0045E968 default case
xor     ecx, ecx        ; jumptable 0045EA64 default case
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_45E934
sub_45E951 endp

db 8Dh, 40h, 0
jpt_45EA64 dd offset loc_45EA6B ; jump table for switch statement
dd offset loc_45EA77
dd offset loc_45EA84
dd offset loc_45EAF2
dd offset loc_45EB09



sub_45EA51 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     eax, 0FFh
jmp     jpt_45EA64[eax*4] ; switch jump

loc_45EA6B:             ; jumptable 0045EA64 case 0
mov     eax, esi
call    sub_45EC49

loc_45EA72:
inc     byte ptr [esi+8]
jmp     short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45EA77:             ; jumptable 0045EA64 case 1
mov     eax, esi
call    sub_45ECFF
test    eax, eax
jz      short def_45E968 ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
jmp     short loc_45EA72

loc_45EA84:             ; jumptable 0045EA64 case 2
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
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42ABA2
test    eax, eax
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
mov     ecx, 1
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case

loc_45EAF2:             ; jumptable 0045EA64 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
call    sub_42A98E
jmp     loc_45EA72

loc_45EB09:             ; jumptable 0045EA64 case 4
call    sub_42ABA2
test    eax, eax
jnz     def_45E968      ; jumptable 0045E968 default case
; jumptable 0045EA64 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+3], 0
mov     eax, 204h
call    sub_47E8B8
jmp     def_45E968      ; jumptable 0045E968 default case
sub_45EA51 endp         ; jumptable 0045EA64 default case

db 8Bh, 0C0h
jpt_45EB66 dd offset loc_45EB6D ; jump table for switch statement
dd offset loc_45EB7C
dd offset loc_45EB94
dd offset loc_45EBC9
dd offset loc_45EBD9



sub_45EB51 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45EB66      ; jumptable 0045EB66 default case
xor     edx, edx
mov     dl, al
jmp     jpt_45EB66[edx*4] ; switch jump

loc_45EB6D:             ; jumptable 0045EB66 case 0
mov     eax, esi
call    sub_45EC49

loc_45EB74:
inc     byte ptr [esi+8]
jmp     def_45EB66      ; jumptable 0045EB66 default case

loc_45EB7C:             ; jumptable 0045EB66 case 1
cmp     ds:word_6E23D6, 0
jnz     def_45EB66      ; jumptable 0045EB66 default case
inc     al
mov     [esi+8], al
jmp     def_45EB66      ; jumptable 0045EB66 default case

loc_45EB94:             ; jumptable 0045EB66 case 2
mov     eax, 7D0h
call    sub_4A62A5
lea     eax, [esi+14h]
mov     ecx, 21h ; '!'
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45EB66 ; jumptable 0045EB66 default case

loc_45EBC9:             ; jumptable 0045EB66 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45EB66 ; jumptable 0045EB66 default case
call    sub_42A98E
jmp     short loc_45EB74

loc_45EBD9:             ; jumptable 0045EB66 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45EB66 ; jumptable 0045EB66 default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     eax, 223h
call    sub_47E8B8
mov     eax, 214h
call    sub_47E8B8
mov     eax, 24Ch
call    sub_47E8B8
mov     eax, 2E3h
call    sub_47EE82
mov     dh, 1
mov     byte ptr ds:word_77E7FC, dh
mov     eax, 0Ah
call    sub_47EEAE
mov     [esi+8], dh
mov     byte ptr [esi+3], 0

def_45EB66:             ; jumptable 0045EB66 default case
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
sub_45EB51 endp




sub_45EC49 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0C00h
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
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
mov     dword ptr [ecx+10h], offset unk_5167B0
mov     eax, 223h
call    sub_47EA91
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45EC49 endp




sub_45ECFF proc near

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
jnz     loc_45EDE4
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
jge     short loc_45ED59
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45ED6F

loc_45ED59:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45ED6F:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A0A0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A0A4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A0A8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0A0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45EDE6

loc_45EDE4:
xor     eax, eax

loc_45EDE6:
add     esp, 4
jmp     loc_45E933
sub_45ECFF endp




sub_45EDEE proc near
push    edx
mov     edx, 23h ; '#'
mov     eax, 222h
call    sub_47E888
test    eax, eax
jnz     short loc_45EE13
mov     eax, 222h
call    sub_47E8B8
mov     eax, 22h ; '"'
pop     edx
retn

loc_45EE13:
call    sub_45EFB6
test    al, al
jz      loc_45EFB2
mov     eax, 207h
call    sub_47E888
test    eax, eax
jz      short loc_45EE47
mov     eax, 223h
call    sub_47E888
test    eax, eax
jz      loc_45EEC9
mov     eax, 24h ; '$'
pop     edx
retn

loc_45EE47:
mov     eax, 206h
call    sub_47E888
test    eax, eax
jz      short loc_45EE91
mov     eax, 205h
call    sub_47E888
test    eax, eax
jz      short loc_45EE6A
mov     edx, 4
jmp     short loc_45EE79

loc_45EE6A:
mov     edx, 3
mov     eax, 24Bh
call    sub_47E8B8

loc_45EE79:
mov     eax, 207h
call    sub_47E8B8
mov     eax, 223h
call    sub_47E8B8
mov     eax, edx
pop     edx
retn

loc_45EE91:
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      short loc_45EEA6
mov     eax, 2
pop     edx
retn

loc_45EEA6:
mov     eax, 204h
call    sub_47E8B8
mov     eax, 236h
call    sub_47E8B8
xor     ah, ah
mov     byte ptr ds:word_77E7FC, ah
mov     eax, 1
pop     edx
retn

loc_45EEC9:
call    sub_45EFE1
test    al, al
jz      loc_45EFB2
mov     eax, 211h
call    sub_47E888
test    eax, eax
jz      short loc_45EEFD
mov     eax, 223h
call    sub_47E888
test    eax, eax
jz      loc_45EF91
mov     eax, 0Bh
pop     edx
retn

loc_45EEFD:
mov     eax, 545h
call    sub_47E888
test    eax, eax
jz      short loc_45EF80
mov     eax, 20Ah
call    sub_47EA91
mov     eax, 20Bh
call    sub_47EA91
mov     eax, 20Ch
call    sub_47EA91
mov     eax, 20Dh
call    sub_47EA91
mov     eax, 20Eh
call    sub_47EA91
mov     eax, 545h
call    sub_47EA91
mov     eax, 2E7h
call    sub_47EE82
mov     eax, 9
call    sub_47EEAE
mov     eax, 211h
call    sub_47E8B8
mov     eax, 223h
call    sub_47E8B8
mov     eax, 568h
call    sub_47E8B8
mov     eax, 9
pop     edx
retn

loc_45EF80:
mov     eax, 209h
call    sub_47E8B8
mov     eax, 6
pop     edx
retn

loc_45EF91:
mov     eax, 214h
call    sub_47E888
test    eax, eax
jz      short loc_45EFB2
mov     eax, 223h
call    sub_47E888
test    eax, eax
jz      short loc_45EFB2
mov     edx, 0Bh

loc_45EFB2:
mov     eax, edx
pop     edx
retn
sub_45EDEE endp




sub_45EFB6 proc near
push    edx
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jnz     short loc_45EFC9

loc_45EFC5:
xor     al, al
pop     edx
retn

loc_45EFC9:
mov     edx, 120h
mov     eax, 6
call    sub_4A7EE1
cmp     eax, 3
jnz     short loc_45EFC5
mov     al, 1
pop     edx
retn
sub_45EFB6 endp




sub_45EFE1 proc near
push    edx
mov     eax, 27h ; '''
call    sub_47E888
test    eax, eax
jnz     short loc_45EFF4

loc_45EFF0:
xor     al, al
pop     edx
retn

loc_45EFF4:
mov     edx, 26h ; '&'
mov     eax, 5
call    sub_4A7EE1
cmp     eax, 3
jnz     short loc_45EFF0
mov     al, 1
pop     edx
retn
sub_45EFE1 endp




sub_45F00C proc near
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
call    ds:funcs_45F033[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_45F053
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45F053:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45F063
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45F06A

loc_45F063:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45F06A:
pop     ebp

loc_45F06B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F00C endp

align 4
jpt_45F09F dd offset loc_45F0A6 ; jump table for switch statement
dd offset loc_45F0B5
dd offset loc_45F0C6
dd offset loc_45F133
dd offset loc_45F175



sub_45F088 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45F09F      ; jumptable 0045F09F default case
and     eax, 0FFh
jmp     jpt_45F09F[eax*4] ; switch jump

loc_45F0A6:             ; jumptable 0045F09F case 0
mov     eax, esi
call    sub_45F1A8

loc_45F0AD:
inc     byte ptr [esi+8]
jmp     def_45F09F      ; jumptable 0045F09F default case

loc_45F0B5:             ; jumptable 0045F09F case 1
mov     eax, esi
call    sub_45F230
test    eax, eax
jz      def_45F09F      ; jumptable 0045F09F default case
jmp     short loc_45F0AD

loc_45F0C6:             ; jumptable 0045F09F case 2
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
jnz     def_45F09F      ; jumptable 0045F09F default case
call    sub_42ABA2
test    eax, eax
jnz     def_45F09F      ; jumptable 0045F09F default case
call    sub_45F31F
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45F09F ; jumptable 0045F09F default case

loc_45F133:             ; jumptable 0045F09F case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_45F09F ; jumptable 0045F09F default case
call    sub_42A98E
cmp     byte ptr ds:dword_77E764+1, 48h ; 'H'
jnz     loc_45F0AD
mov     eax, 546h
call    sub_47EA91
mov     eax, 235h
call    sub_47EA91
mov     eax, 213h
call    sub_47E8B8
mov     byte ptr [esi+8], 0Ah
jmp     loc_45F0AD

loc_45F175:             ; jumptable 0045F09F case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45F09F ; jumptable 0045F09F default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45F09F:             ; jumptable 0045F09F default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_45F06B
sub_45F088 endp




sub_45F1A8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
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
mov     dword ptr [ecx+10h], offset unk_51681C
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45F1A8 endp




sub_45F230 proc near

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
jnz     loc_45F315
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
jge     short loc_45F28A
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45F2A0

loc_45F28A:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45F2A0:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A0B0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A0B4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A0B8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0B0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45F317

loc_45F315:
xor     eax, eax

loc_45F317:
add     esp, 4
jmp     loc_45F06A
sub_45F230 endp




sub_45F31F proc near
mov     eax, 679h
call    sub_47E888
test    eax, eax
jnz     short loc_45F347
mov     eax, 546h
call    sub_47E888
test    eax, eax
jz      short loc_45F341
mov     eax, 48h ; 'H'
retn

loc_45F341:
mov     eax, 46h ; 'F'
retn

loc_45F347:
mov     eax, 4Ah ; 'J'
retn
sub_45F31F endp




sub_45F34D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_45F374
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_45F374:
xor     edx, edx
mov     dl, [esi+3]
mov     eax, esi
call    ds:funcs_45F37B[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_45F396
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_45F3A2

loc_45F396:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_45F3A2:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F34D endp




sub_45F3AE proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45F3B4[edx*4]
pop     edx
retn
sub_45F3AE endp




sub_45F3BD proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45F3C3[edx*4]
pop     edx
retn
sub_45F3BD endp




sub_45F3CC proc near
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
mov     dword ptr [ecx+10h], offset unk_516850
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
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

loc_45F4A6:
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
sub_45F3CC endp




sub_45F4C6 proc near

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
jnz     loc_45F56B
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
mov     ds:word_55A0C0, ax
mov     byte ptr [esi+8], 2
jmp     short loc_45F58D

loc_45F56B:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_45F57A
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45F58D

loc_45F57A:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45F58D:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F4C6 endp




sub_45F597 proc near
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
jnz     short loc_45F5BE
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45F5BE:
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
sub_45F597 endp




sub_45F5D6 proc near
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
mov     dword ptr [ecx+10h], offset unk_516850
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
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
jmp     loc_45F4A6
sub_45F5D6 endp




sub_45F6B1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_55A0BE
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_45F71A
call    sub_42ABA2
test    eax, eax
jnz     short loc_45F71A
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 1
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

loc_45F71A:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F6B1 endp




sub_45F726 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_45F74E
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

loc_45F74E:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45F726 endp




sub_45F759 proc near
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
jnz     short loc_45F7B5
call    sub_42ABA2
test    eax, eax
jnz     short loc_45F7B5
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

loc_45F7B5:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45F759 endp

jpt_45F818 dd offset loc_45F81F ; jump table for switch statement
dd offset loc_45F86A
dd offset loc_45F883
dd offset loc_45F896
dd offset loc_45F8A5
dd offset loc_45F8B4
dd offset loc_45F8F7



sub_45F7DC proc near
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 6           ; switch 7 cases
ja      def_45F818      ; jumptable 0045F818 default case
xor     edx, edx
mov     dl, al
jmp     jpt_45F818[edx*4] ; switch jump

loc_45F81F:             ; jumptable 0045F818 case 0
or      byte ptr [ecx], 2
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+58h], 0FEC1h
jmp     short loc_45F891

loc_45F86A:             ; jumptable 0045F818 case 1
mov     dl, byte ptr ds:dword_560BE0+3
cmp     dl, 1
jnz     def_45F818      ; jumptable 0045F818 default case
add     al, dl
mov     [ecx+8], al
jmp     def_45F818      ; jumptable 0045F818 default case

loc_45F883:             ; jumptable 0045F818 case 2
add     word ptr [ecx+58h], 3Fh ; '?'
cmp     byte ptr ds:dword_560BE0+3, 2

loc_45F88F:             ; jumptable 0045F818 default case
jnz     short def_45F818

loc_45F891:
inc     byte ptr [ecx+8]
jmp     short def_45F818 ; jumptable 0045F818 default case

loc_45F896:             ; jumptable 0045F818 case 3
mov     word ptr [ecx+58h], 1F4h
cmp     byte ptr ds:dword_560BE0+3, 3
jmp     short loc_45F88F

loc_45F8A5:             ; jumptable 0045F818 case 4
sub     word ptr [ecx+58h], 0ABh
cmp     byte ptr ds:dword_560BE0+3, 4
jmp     short loc_45F88F

loc_45F8B4:             ; jumptable 0045F818 case 5
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

loc_45F8F7:             ; jumptable 0045F818 case 6
sub     word ptr [ecx+58h], 0ABh

def_45F818:             ; jumptable 0045F818 default case
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_45F91A
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_45F921

loc_45F91A:
mov     eax, ecx
call    sub_4DEB53

loc_45F921:
mov     eax, ecx
call    sub_4DF7CB
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F7DC endp

jpt_45F97F dd offset loc_45F986 ; jump table for switch statement
dd offset loc_45F9DC
dd offset loc_45FA4C
dd offset loc_45FA5D
dd offset def_45F97F



sub_45F942 proc near
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 4           ; switch 5 cases
ja      def_45F97F      ; jumptable 0045F97F default case, case 4
and     eax, 0FFh
jmp     jpt_45F97F[eax*4] ; switch jump

loc_45F986:             ; jumptable 0045F97F case 0
or      byte ptr [ecx], 2
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+0Eh], 38h ; '8'
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+8]

loc_45F9DC:             ; jumptable 0045F97F case 1
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_51685C[eax*2]
sub     eax, 222h
mov     [ecx+58h], ax
mov     al, [ecx+0Eh]
inc     al
mov     [ecx+0Eh], al
cmp     byte ptr [ecx+0Fh], 2
jge     short loc_45FA13
cmp     al, 44h ; 'D'
jnz     def_45F97F      ; jumptable 0045F97F default case, case 4
mov     byte ptr [ecx+0Eh], 0
inc     byte ptr [ecx+0Fh]
jmp     short def_45F97F ; jumptable 0045F97F default case, case 4

loc_45FA13:
cmp     al, 67h ; 'g'
jnz     short def_45F97F ; jumptable 0045F97F default case, case 4

loc_45FA17:
inc     byte ptr [ecx+8]

def_45F97F:             ; jumptable 0045F97F default case, case 4
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      loc_45FAC2
cmp     byte ptr [ecx+0Dh], 0
jnz     loc_45FAAF
mov     ebx, [ecx+9]
sar     ebx, 18h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     loc_45FADF

loc_45FA4C:             ; jumptable 0045F97F case 2
mov     byte ptr [ecx+0ACh], 8
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_45FA17

loc_45FA5D:             ; jumptable 0045F97F case 3
cmp     byte ptr [ecx+0A4h], 8
jnz     short def_45F97F ; jumptable 0045F97F default case, case 4
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 8
mov     byte ptr [ecx+0ADh], 0FFh
mov     byte ptr [ecx+0Ch], 8
jmp     loc_45FA17

loc_45FAAF:
mov     ebx, [ecx+9]
sar     ebx, 18h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_45FAD8

loc_45FAC2:
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45FAD1
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_45FADF

loc_45FAD1:
mov     eax, ecx
call    sub_4DEB53

loc_45FAD8:
mov     eax, ecx
call    sub_4DF7CB

loc_45FADF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F942 endp




sub_45FAE5 proc near
push    edx
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     [eax+56h], dx
mov     dword ptr [eax+158h], 2000200h
mov     dword ptr [eax+15Ch], 42100200h
inc     byte ptr [eax+8]
call    sub_45FB16
pop     edx
retn
sub_45FAE5 endp




sub_45FB16 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     dl, [eax+0Ch]
cmp     dl, [eax+0Dh]
jz      short loc_45FB38
lea     edx, [ecx+0Ch]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_45FB38:
mov     dl, [ecx+0Ch]
mov     [ecx+0Dh], dl
pop     edx
pop     ecx
pop     ebx
retn
sub_45FB16 endp



; Attributes: thunk

sub_45FB42 proc near
jmp     sub_4DE2F6
sub_45FB42 endp




sub_45FB47 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FB50[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_45FB47 endp




sub_45FB73 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_45FB79[edx*4]
pop     edx
retn
sub_45FB73 endp




sub_45FB82 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
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
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn
sub_45FB82 endp




sub_45FBC0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, ds:dword_560BEC
cmp     eax, 50h ; 'P'
jb      short loc_45FBD8
jbe     short loc_45FBDD
cmp     eax, 64h ; 'd'
jz      short loc_45FBE6
jmp     short loc_45FBF4

loc_45FBD8:
cmp     eax, 14h
jnz     short loc_45FBF4

loc_45FBDD:
xor     ebx, ebx
mov     edx, 2
jmp     short loc_45FBED

loc_45FBE6:
xor     ebx, ebx
mov     edx, 3

loc_45FBED:
mov     eax, ecx
call    sub_4DE96B

loc_45FBF4:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45FBC0 endp




sub_45FBFF proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 3
mov     [edx], ah
mov     word ptr [edx+58h], 0
mov     ax, [edx+58h]
mov     [edx+54h], ax
mov     [edx+56h], ax
mov     dword ptr [edx+158h], 2000200h
mov     dword ptr [edx+15Ch], 200h
mov     word ptr [edx+15Eh], 4210h
mov     dword ptr [edx+78h], 0
inc     byte ptr [edx+8]
mov     eax, edx
call    sub_45FC51
mov     word ptr [edx+58h], 0B4h
pop     edx
retn
sub_45FBFF endp




sub_45FC51 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
ja      short loc_45FCBC
lea     eax, [ecx+0Ch]
mov     dl, ds:byte_560BE4
cmp     dl, 1
jnz     short loc_45FCA4
cmp     dl, ds:byte_560BE5
jnz     short loc_45FCBC
cmp     ds:dword_560BEC, 8
jnz     short loc_45FCBC
mov     byte ptr [ecx+0Ch], 1
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+58h], 0
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_45FCA4:
mov     byte ptr [ecx+0Ch], 0
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_45FCBC:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FC51 endp



; Attributes: thunk

sub_45FCC0 proc near
jmp     sub_4DE2F6
sub_45FCC0 endp




sub_45FCC5 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FCCE[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_45FCC5 endp




sub_45FCF1 proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 3
mov     [edx], ah
mov     word ptr [edx+58h], 0
mov     ax, [edx+58h]
mov     [edx+54h], ax
mov     [edx+56h], ax
mov     dword ptr [edx+158h], 2000200h
mov     dword ptr [edx+15Ch], 200h
mov     word ptr [edx+15Eh], 4210h
mov     dword ptr [edx+78h], 0
inc     byte ptr [edx+8]
mov     eax, edx
call    sub_45FD43
mov     word ptr [edx+58h], 0B4h
pop     edx
retn
sub_45FCF1 endp




sub_45FD43 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jnz     short loc_45FDA4
lea     eax, [ecx+0Ch]
mov     dl, ds:byte_560BE4
cmp     dl, 1
jnz     short loc_45FD8C
cmp     dl, ds:byte_560BE5
jnz     short loc_45FDA4
mov     [ecx+0Ch], dl
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+58h], 0
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_45FD8C:
mov     byte ptr [ecx+0Ch], 0
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_45FDA4:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FD43 endp



; Attributes: thunk

sub_45FDA8 proc near
jmp     sub_4DE2F6
sub_45FDA8 endp




sub_45FDAD proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FDB6[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_45FDAD endp




sub_45FDD9 proc near
mov     dword ptr [eax+158h], 2000200h
mov     dword ptr [eax+15Ch], 42100200h
inc     byte ptr [eax+8]
sub_45FDD9 endp




sub_45FDF0 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dl, [eax+0Eh]
cmp     dl, [eax+0Fh]
jz      short loc_45FE06
lea     edx, [ecx+0Eh]
mov     eax, ecx
call    sub_4DD0F8

loc_45FE06:
mov     dl, [ecx+0Eh]
mov     [ecx+0Fh], dl
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_45FE13[edx*4]
pop     edx
pop     ecx
retn
sub_45FDF0 endp




sub_45FE1D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE3C
mov     ebx, 3Bh ; ';'
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE3C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE1D endp




sub_45FE40 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE5C
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE5C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE40 endp




sub_45FE60 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE7C
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE7C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE60 endp




sub_45FE80 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE9C
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE9C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE80 endp




sub_45FEA0 proc near
add     word ptr [eax+58h], 11Ch
retn
sub_45FEA0 endp



; Attributes: thunk

sub_45FEA7 proc near
jmp     sub_4DE2F6
sub_45FEA7 endp




sub_45FEAC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FEB5[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45FEEB
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+9], 4
jnz     short loc_45FEE4
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn

loc_45FEE4:
mov     eax, ecx
call    sub_4DEADD

loc_45FEEB:
pop     edx
pop     ecx
retn
sub_45FEAC endp




sub_45FEEE proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FEF4[edx*4]
pop     edx
retn
sub_45FEEE endp




sub_45FEFD proc near

var_28= byte ptr -28h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ecx+0Ch]

loc_45FF66:
mov     ecx, 100h
lea     edx, [esp+30h+var_28]
call    sub_4DD4C5
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_516994
mov     dword ptr [ebp+10h], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45FFDE
add     esp, 10h

loc_45FFD7:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45FEFD endp




sub_45FFDE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+438h]
mov     al, [eax+0ACh]
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
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_46002B[ecx*4]
test    byte ptr [edx], 1
jz      short loc_460044
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_460044:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_460063
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46006A

loc_460063:
mov     eax, ebp
call    sub_4DEADD

loc_46006A:
test    byte ptr [ebp+0], 2
jz      loc_45FFD7
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_45FFD7
sub_45FFDE endp



; Attributes: thunk

sub_46008C proc near
jmp     sub_4DE2F6
sub_46008C endp




sub_460091 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_4600A5
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_4600A5:
pop     edx
retn
sub_460091 endp




sub_4600A7 proc near
push    ebx
push    edx
lea     edx, [eax+438h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4600C1
jbe     short loc_4600D4
cmp     bl, 2
jz      short loc_4600FB
pop     edx
pop     ebx
retn

loc_4600C1:
test    bl, bl
jnz     short loc_460113
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 11h
pop     edx
pop     ebx
retn

loc_4600D4:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_460113
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+0Ah]
mov     ax, [edx+2]
xor     ah, ah
and     al, 1Fh
add     eax, 10h
mov     [edx+4], ax
pop     edx
pop     ebx
retn

loc_4600FB:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_460113
mov     byte ptr [eax+0ACh], 11h
dec     byte ptr [eax+0Ah]

loc_460113:
pop     edx
pop     ebx
retn
sub_4600A7 endp




sub_460116 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_46012A
jbe     short loc_460149
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46012A:
test    al, al
jnz     short loc_46017A
cmp     byte ptr [esi+0A7h], 0
jge     short loc_46017A
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 10h
mov     word ptr [esi+64h], 1Eh

loc_460149:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, offset unk_5169A0
call    sub_4DE552
test    ax, ax
jz      short loc_460177
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_460177:
inc     byte ptr [esi+0Ah]

loc_46017A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460116 endp

db 8Dh, 40h, 0
jpt_4601AD dd offset loc_4601B4 ; jump table for switch statement
dd offset loc_4601CB
dd offset loc_4601F8
dd offset def_4601AD



sub_460192 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 438h
mov     dl, [esi+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      def_4601AD      ; jumptable 004601AD default case, case 3
xor     ecx, ecx
mov     cl, dl
jmp     jpt_4601AD[ecx*4] ; switch jump

loc_4601B4:             ; jumptable 004601AD case 0
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 12h
mov     word ptr [eax+4], 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4601CB:             ; jumptable 004601AD case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     def_4601AD      ; jumptable 004601AD default case, case 3
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 38h ; '8'
mov     word ptr [esi+64h], 20h ; ' '
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4601F8:             ; jumptable 004601AD case 2
cmp     byte ptr [esi+0A6h], 0
jz      short loc_46020F
xor     ebx, ebx
xor     edx, edx
mov     eax, 111h
call    sub_4D89E4

loc_46020F:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5169A6+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+12h]
sar     eax, 10h
mov     edx, ds:dword_5169A6
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     ecx, ds:dword_5169AA
sar     ecx, 10h
sub     eax, ecx
imul    edx, edx
imul    eax, eax
add     eax, edx
cmp     eax, 800h
jge     short def_4601AD ; jumptable 004601AD default case, case 3
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0

def_4601AD:             ; jumptable 004601AD default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460192 endp




sub_460294 proc near
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
call    ds:funcs_4602BB[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4602DB
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4602DB:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_4602EB
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4602F2

loc_4602EB:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_4602F2:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460294 endp




sub_4602F9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     dword ptr [ecx+78h], offset unk_5169BC
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_4602F9 endp

jpt_4603D2 dd offset loc_4603D9 ; jump table for switch statement
dd offset loc_46041A
dd offset loc_460432
dd offset loc_46047B
dd offset loc_4604DE



sub_4603BC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4603D2      ; jumptable 004603D2 default case
and     eax, 0FFh
jmp     jpt_4603D2[eax*4] ; switch jump

loc_4603D9:             ; jumptable 004603D2 case 0
cmp     ds:word_6E23D6, 0
jnz     def_4603D2      ; jumptable 004603D2 default case
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+9]
xor     ebx, ebx
xor     edx, edx
mov     eax, 16Fh

loc_4603FF:
call    sub_4D89E4

def_4603D2:             ; jumptable 004603D2 default case
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46041A:             ; jumptable 004603D2 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4603D2 ; jumptable 004603D2 default case
mov     word ptr [esi+44h], 200h
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ch], 0A0h
jmp     short def_4603D2 ; jumptable 004603D2 default case

loc_460432:             ; jumptable 004603D2 case 2
mov     bl, [esi+0Ch]
dec     bl
mov     [esi+0Ch], bl
jnz     short loc_46044E
call    sub_49DF64
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ch], 3
mov     word ptr [esi+44h], 0

loc_46044E:
cmp     byte ptr [esi+0A6h], 0
jz      short loc_46047B ; jumptable 004603D2 case 3
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 112h
call    sub_4D8BC3
call    rand_
test    al, 3
jnz     short loc_46047B ; jumptable 004603D2 case 3
mov     edx, ecx
mov     eax, 171h
call    sub_4D8BC3

loc_46047B:             ; jumptable 004603D2 case 3
cmp     ds:byte_560BE5, 2
jnz     short def_4603D2 ; jumptable 004603D2 default case
mov     edx, 14h
xor     eax, eax
call    sub_4A0E24
mov     word ptr [esi+14h], 1EAh
mov     word ptr [esi+16h], 0FFFFh
mov     word ptr [esi+18h], 0EC8Fh
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
mov     word ptr [esi+56h], 0
mov     word ptr [esi+44h], 140h
mov     byte ptr [esi+0Ch], 0DEh
inc     byte ptr [esi+9]
jmp     def_4603D2      ; jumptable 004603D2 default case

loc_4604DE:             ; jumptable 004603D2 case 4
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_4604EF
mov     byte ptr [esi+8], 2
mov     [esi+9], ah

loc_4604EF:
cmp     byte ptr [esi+0A6h], 0
jz      def_4603D2      ; jumptable 004603D2 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 112h
call    sub_4D89E4
call    rand_
test    al, 3
jnz     def_4603D2      ; jumptable 004603D2 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 171h
jmp     loc_4603FF
sub_4603BC endp



; Attributes: thunk

sub_460525 proc near
jmp     sub_4DE2F6
sub_460525 endp




sub_46052A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_460593
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     eax, ebp
call    sub_42C592
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
xor     ebx, ebx
mov     edx, 13h
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short loc_4605B4

loc_460593:
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
mov     eax, ebp
call    sub_4DEADD

loc_4605B4:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46052A endp




sub_4605CE proc near
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
call    ds:funcs_4605F5[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_460615
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_460615:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_460625
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_46062C

loc_460625:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_46062C:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4605CE endp




sub_460633 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
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
mov     dword ptr [ecx+78h], offset unk_5169D4
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_460633 endp

jpt_460709 dd offset loc_460710 ; jump table for switch statement
dd offset loc_460736
dd offset loc_46074E
dd offset loc_460767
dd offset loc_4607BE



sub_4606F6 proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+9]
cmp     dl, 4           ; switch 5 cases
ja      def_460709      ; jumptable 00460709 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_460709[ecx*4] ; switch jump

loc_460710:             ; jumptable 00460709 case 0
cmp     ds:word_6E23D6, 0
jnz     def_460709      ; jumptable 00460709 default case
inc     dl

loc_460720:
mov     [eax+9], dl

def_460709:             ; jumptable 00460709 default case
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn

loc_460736:             ; jumptable 00460709 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_460709 ; jumptable 00460709 default case
mov     word ptr [eax+44h], 200h
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ch], 0A0h
jmp     short def_460709 ; jumptable 00460709 default case

loc_46074E:             ; jumptable 00460709 case 2
mov     cl, [eax+0Ch]
dec     cl
mov     [eax+0Ch], cl
jnz     short def_460709 ; jumptable 00460709 default case
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ch], 3
mov     word ptr [eax+44h], 0
jmp     short def_460709 ; jumptable 00460709 default case

loc_460767:             ; jumptable 00460709 case 3
cmp     ds:byte_560BE5, 2
jnz     short def_460709 ; jumptable 00460709 default case
mov     word ptr [eax+14h], 1EAh
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0ECF3h
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
mov     word ptr [eax+56h], 0
mov     word ptr [eax+44h], 140h
mov     byte ptr [eax+0Ch], 0DEh
inc     byte ptr [eax+9]
jmp     def_460709      ; jumptable 00460709 default case

loc_4607BE:             ; jumptable 00460709 case 4
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     def_460709      ; jumptable 00460709 default case
mov     byte ptr [eax+8], 2
jmp     loc_460720
sub_4606F6 endp



; Attributes: thunk

sub_4607D5 proc near
jmp     sub_4DE2F6
sub_4607D5 endp




sub_4607DA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     word ptr [eax+15Eh], 4210h
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46080A[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_46082A
xor     ecx, ecx
mov     ebx, 100h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_46082A:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_46083D:
pop     ebp

loc_46083E:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4607DA endp




sub_460844 proc near
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
mov     dword ptr [ecx+78h], offset unk_516A42
mov     dword ptr [ecx+10h], offset unk_516A36
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
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
mov     word ptr [ecx+56h], 400h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [ecx+0Eh], al
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_516A08[eax*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     ds:dword_55A314, ecx
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_460844 endp

db 8Dh, 40h, 0
jpt_460963 dd offset loc_46096A ; jump table for switch statement
dd offset loc_4609A2
dd offset loc_4609A8
dd offset loc_4609B7



sub_46092A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     eax, [eax+0Ah]
sar     eax, 18h
mov     dl, [ecx+0Eh]
movsx   ebx, dl
inc     dl
mov     [ecx+0Eh], dl
cmp     ebx, ds:dword_516A0C[eax*8]
jnz     loc_4609E4
mov     al, [ecx+0Dh]
cmp     al, 3           ; switch 4 cases
ja      def_460963      ; jumptable 00460963 default case
and     eax, 0FFh
jmp     jpt_460963[eax*4] ; switch jump

loc_46096A:             ; jumptable 00460963 case 0
call    rand_
test    al, 3
jnz     short loc_46098F
mov     byte ptr [ecx+0Dh], 1

loc_460977:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_516A08[eax*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short def_460963 ; jumptable 00460963 default case

loc_46098F:
call    rand_
test    al, 3
jnz     short loc_4609D1
mov     byte ptr [ecx+0Dh], 4
mov     byte ptr [ecx+8], 2
jmp     short loc_460977

loc_4609A2:             ; jumptable 00460963 case 1
mov     byte ptr [ecx+0Dh], 2
jmp     short loc_460977

loc_4609A8:             ; jumptable 00460963 case 2
call    rand_
test    al, 1
jnz     short loc_460977
mov     byte ptr [ecx+0Dh], 3
jmp     short loc_460977

loc_4609B7:             ; jumptable 00460963 case 3
mov     byte ptr [ecx+0Dh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_4609D1:
lea     edx, [ecx+14h]
mov     eax, 16Fh
call    sub_4D8BC3

def_460963:             ; jumptable 00460963 default case
mov     byte ptr [ecx+0Eh], 0
jmp     short loc_460A04

loc_4609E4:
cmp     byte ptr [ecx+0Dh], 2
jnz     short loc_4609FD
cmp     byte ptr [ecx+0Eh], 8
jnz     short loc_4609FD
lea     edx, [ecx+14h]
mov     eax, 171h
call    sub_4D8BC3

loc_4609FD:
mov     eax, ecx
call    sub_4DEADD

loc_460A04:
mov     ebx, [esi+184h]
cmp     ecx, ebx
jnz     short loc_460A55
mov     dword ptr [esi+184h], 0
mov     byte ptr [ebx+0Dh], 0
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     eax, 640h
call    sub_47E888
test    eax, eax
jz      short loc_460A43
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+0Bh], 0
jmp     short loc_460A4A

loc_460A43:
mov     byte ptr [ecx+8], 3
xor     byte ptr [esi], 2

loc_460A4A:
mov     byte ptr [ecx+9], 0
or      byte ptr [esi+0BDh], 20h

loc_460A55:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46092A endp




sub_460A5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4DEADD
inc     byte ptr [ecx+0Eh]
mov     ax, [ecx+4Eh]
mov     dx, [ecx+46h]
add     edx, eax
mov     [ecx+46h], dx
add     [ecx+16h], dx
cmp     byte ptr [ecx+0Eh], 8
jnz     short loc_460A8C
lea     edx, [ecx+14h]
mov     eax, 171h
call    sub_4D8BC3

loc_460A8C:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ecx+0Bh]
sar     edx, 18h
cmp     edx, ds:dword_516A0C[eax*8]
jnz     short loc_460AC2
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_516A08[eax*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
dec     byte ptr [ecx+8]

loc_460AC2:
mov     bl, [ecx+0Eh]
cmp     bl, 3
jnz     short loc_460ADA
mov     word ptr [ecx+46h], 0FFDCh
mov     word ptr [ecx+4Eh], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_460ADA:
cmp     bl, 0Bh
jnz     short loc_460AF6
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax

loc_460AF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_460A5A endp

jpt_460B27 dd offset loc_460B2E ; jump table for switch statement
dd offset loc_460B8E
dd offset loc_460BA7
dd offset loc_460BBC



sub_460B0A proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
call    sub_4DEADD
mov     al, [esi+9]
cmp     al, 3           ; switch 4 cases
ja      def_460B27      ; jumptable 00460B27 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_460B27[ecx*4] ; switch jump

loc_460B2E:             ; jumptable 00460B27 case 0
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
and     ds:byte_5F8364, 0FDh
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+20h+var_20], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+20h+var_1C], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+20h+var_18], eax
mov     ecx, ds:dword_77E964
add     ecx, 40h ; '@'
mov     ebx, 400h
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8

