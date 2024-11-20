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

loc_460B86:
inc     byte ptr [esi+9]
jmp     def_460B27      ; jumptable 00460B27 default case

loc_460B8E:             ; jumptable 00460B27 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_460B27      ; jumptable 00460B27 default case
mov     edx, 0Bh
call    sub_4A0E24
jmp     short loc_460B86

loc_460BA7:             ; jumptable 00460B27 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_460B27 ; jumptable 00460B27 default case
inc     al
mov     [esi+9], al
call    sub_42A98E
jmp     short def_460B27 ; jumptable 00460B27 default case

loc_460BBC:             ; jumptable 00460B27 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_460B27 ; jumptable 00460B27 default case
mov     al, ds:byte_55A0CC
mov     ds:byte_77E952, al
mov     al, ds:byte_55A0CD
mov     ds:byte_77E953, al
mov     eax, ds:dword_77E95C
mov     ds:dword_77E980, eax
and     ds:byte_5F8421, 0DFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [esi+0Eh], al
xor     dh, dh
mov     byte ptr ds:dword_560BDC+1, dh
mov     byte ptr ds:dword_560BDC, dh

def_460B27:             ; jumptable 00460B27 default case
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460B0A endp




sub_460C1B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_460C2F
cmp     al, 1
jz      short loc_460C6C
pop     edx
pop     ecx
pop     ebx
retn

loc_460C2F:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_460C8A
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, bl
mov     eax, 10h
call    sub_4D9040
mov     ds:word_77EA80, 64h ; 'd'
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_460C6C:
cmp     ds:byte_77EAB8, 0
jnz     short loc_460C8A
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Bh
call    sub_4D89E4
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Bh], 0

loc_460C8A:
pop     edx
pop     ecx
pop     ebx
retn
sub_460C1B endp




sub_460C8E proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     esi, eax
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
mov     ecx, [esi+18Eh]
sar     ecx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
add     eax, ecx
sar     eax, 1
mov     [esp+2Ch+var_2C], eax
mov     ecx, [esi+190h]
sar     ecx, 10h
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
add     eax, ecx
sar     eax, 1
sub     eax, 60h ; '`'
mov     [esp+2Ch+var_28], eax
mov     ecx, [esi+192h]
sar     ecx, 10h
mov     eax, ds:dword_5F837A
sar     eax, 10h
add     eax, ecx
sar     eax, 1
mov     [esp+2Ch+var_24], eax
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
mov     ebx, eax
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     [esp+2Ch+var_1C], eax
mov     ecx, ds:dword_77E964
sub     ebx, 500h
mov     edx, 180h
mov     eax, esp
call    sub_42AAA8
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 80h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
mov     [esi+0B4h], ax
xor     ebx, ebx
mov     edx, 14h
mov     eax, esi
call    sub_4DE96B
mov     edx, ebp
mov     eax, edi
call    sub_4614E2
cmp     eax, 80h
jnb     short loc_460DB8
mov     dword ptr [esi+408h], 1
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF003
mov     edi, eax
shl     eax, 2
add     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 3
neg     eax
sar     eax, 0Ah
mov     ds:dword_55A0C8, eax
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF008
mov     edi, eax
shl     eax, 2
add     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 3
neg     eax
sar     eax, 0Ah
mov     ds:dword_55A0C4, eax
jmp     short loc_460DC2

loc_460DB8:
mov     dword ptr [esi+408h], 0

loc_460DC2:
inc     byte ptr [esi+9]
add     esp, 14h
jmp     loc_46083D
sub_460C8E endp




sub_460DCD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebx, offset byte_5F8364
call    sub_42ABA2
test    eax, eax
jnz     short loc_460E34
lea     edi, [ecx+14h]
lea     esi, [ebx+14h]
mov     edx, edi
mov     eax, esi
call    sub_4614E2
cmp     eax, 80h
jb      short loc_460E34
inc     byte ptr [ecx+9]
mov     ds:byte_5F88AC, 82h
mov     byte ptr [ecx+0Fh], 0
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     edx, edi
mov     eax, esi
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
sub     eax, 800h
mov     [ecx+56h], ax
jmp     loc_46083D

loc_460E34:
call    sub_42ABA2
lea     edi, [ecx+14h]
lea     esi, [ebx+14h]
test    eax, eax
jz      short loc_460EA3
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
test    ebp, ebp
jge     short loc_460E6F
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
mov     eax, ebp
neg     eax
jmp     short loc_460E82

loc_460E6F:
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
mov     eax, ebp

loc_460E82:
and     eax, 0FFFh
cmp     eax, 82h
jg      short loc_460E96
lea     edx, [ebx+14h]
lea     eax, [ecx+14h]
jmp     short loc_460EA7

loc_460E96:
mov     ax, [ecx+0B4h]
add     [ecx+56h], ax
jmp     short loc_460EB0

loc_460EA3:
mov     edx, esi
mov     eax, edi

loc_460EA7:
call    sub_4DDDB4
mov     [ecx+56h], ax

loc_460EB0:
lea     esi, [ecx+14h]
lea     ecx, [ebx+14h]
mov     edx, esi
mov     eax, ecx
call    sub_4614E2
cmp     eax, 80h
jnb     loc_46083D
mov     eax, ds:dword_55A0C4
shl     eax, 8
add     [ebx+528h], eax
mov     eax, ds:dword_55A0C8
shl     eax, 8
add     [ebx+530h], eax
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     byte ptr [ebx+548h], 0Dh
mov     edx, esi
mov     eax, ecx
call    sub_4DDDB4
mov     [ebx+542h], ax
jmp     loc_46083D
sub_460DCD endp




sub_460F13 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Fh]
inc     ah
mov     [ecx+0Fh], ah
cmp     ah, 8
jnz     short loc_460F3F
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+9]

loc_460F3F:
pop     edx
pop     ecx
retn
sub_460F13 endp

jpt_460F80 dd offset loc_460F87 ; jump table for switch statement
dd offset loc_460FFD
dd offset loc_46102F
dd offset loc_46103E



sub_460F52 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Fh]
mov     ah, al
inc     ah
mov     [ecx+0Fh], ah
cmp     al, 0AAh
jb      def_460F80      ; jumptable 00460F80 default case
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
mov     al, [ecx+0Ch]
cmp     al, 3           ; switch 4 cases
ja      def_460F80      ; jumptable 00460F80 default case
xor     edx, edx
mov     dl, al
jmp     jpt_460F80[edx*4] ; switch jump

loc_460F87:             ; jumptable 00460F80 case 0
mov     ax, [ecx+4Eh]
mov     dx, [ecx+46h]
add     edx, eax
mov     [ecx+46h], dx
add     [ecx+16h], dx
cmp     byte ptr [ecx+0Eh], 13h
jnz     short loc_460FC1
mov     byte ptr [ecx+0Ch], 1
mov     byte ptr [ecx+0Dh], 2
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_460FC1:
mov     dl, [ecx+0Eh]
cmp     dl, 3
jnz     short loc_460FD9
mov     word ptr [ecx+46h], 0FFDCh
mov     word ptr [ecx+4Eh], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_460FD9:
cmp     dl, 0Bh
jnz     def_460F80      ; jumptable 00460F80 default case
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
pop     edx
pop     ecx
pop     ebx
retn

loc_460FFD:             ; jumptable 00460F80 case 1
cmp     ah, 0Ch
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     ds:byte_5F88AC, 83h
mov     byte ptr [ecx+0Ch], 2
mov     byte ptr [ecx+0Dh], 2

loc_461011:
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_46102F:             ; jumptable 00460F80 case 2
cmp     ah, 0Ch
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     byte ptr [ecx+0Ch], 3
mov     byte ptr [ecx+0Dh], 3
jmp     short loc_461011

loc_46103E:             ; jumptable 00460F80 case 3
cmp     ah, 6
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     byte ptr [ecx+0Ch], 4
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

def_460F80:             ; jumptable 00460F80 default case
pop     edx
pop     ecx
pop     ebx

locret_46106B:
retn
sub_460F52 endp




sub_46106C proc near
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short locret_46106B
inc     byte ptr [eax+9]
mov     eax, 641h
jmp     sub_47E8B8
sub_46106C endp




sub_461082 proc near
push    edx
mov     edx, eax
call    sub_42ABA2
test    eax, eax
jnz     short loc_4610B7
and     ds:byte_5F8421, 0DFh
mov     byte ptr [edx+8], 1
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [edx+0Eh], al
xor     dl, dl
mov     byte ptr ds:dword_560BDC+1, dl
mov     byte ptr ds:dword_560BDC, dl

loc_4610B7:
pop     edx
retn
sub_461082 endp




sub_4610B9 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4DEADD
xor     ecx, ecx
mov     cl, [edx+9]
mov     eax, edx
call    ds:funcs_4610C9[ecx*4]
pop     edx
pop     ecx
retn
sub_4610B9 endp




sub_4610D3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_46111A
mov     dword ptr [ecx+24h], 105F0000h
mov     dword ptr [ecx+1Ch], 7900000h
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     word ptr [ecx+56h], 800h
or      byte ptr [ecx], 2
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+9]
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_46111A:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4610D3 endp




sub_461125 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_46113B
jbe     short loc_46115D
cmp     al, 2
jz      short loc_46118D
pop     edx
pop     ecx
pop     ebx
retn

loc_46113B:
test    al, al
jnz     short loc_4611AB
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+0B4h], 0FF80h
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_46115D:
mov     eax, ecx
call    sub_4DEADD
mov     ax, [ecx+0B4h]
mov     dx, [ecx+56h]
add     edx, eax
mov     [ecx+56h], dx
test    dx, dx
jg      short loc_4611AB
mov     word ptr [ecx+56h], 0
inc     byte ptr [ecx+9]
mov     word ptr [ecx+48h], 0F8E7h
pop     edx
pop     ecx
pop     ebx
retn

loc_46118D:
mov     eax, ecx
call    sub_4DEADD
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_4611AB:
pop     edx
pop     ecx
pop     ebx
retn
sub_461125 endp




sub_4611AF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+0Fh]
test    al, al
jbe     short loc_4611CF
cmp     al, 1
jz      loc_461256
jmp     loc_461270

loc_4611CF:
mov     eax, 42h ; 'B'
call    sub_47E8B8
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
shl     eax, 0Ah
neg     eax
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
shl     eax, 0Ah
neg     eax
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     ax, ds:word_516A30
mov     [ecx+46h], ax
mov     word ptr [ecx+4Eh], 80h
inc     byte ptr [ecx+0Fh]
mov     byte ptr [ecx+0Eh], 0
or      ds:byte_5F8421, 20h
mov     eax, 10h
call    sub_4D9040
mov     eax, 3
call    sub_47EEAE
mov     ds:word_77EA80, 64h ; 'd'
jmp     short loc_461270

loc_461256:
cmp     ds:byte_77EAB8, 0
jnz     short loc_461270
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Bh
call    sub_4D89E4
inc     byte ptr [ecx+0Fh]

loc_461270:
cmp     byte ptr [ecx+0Fh], 0
jz      short loc_4612D3
add     byte ptr [ecx+55h], 2
inc     byte ptr [ecx+57h]
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DFC52
mov     ax, [ecx+54h]
mov     ds:word_560E0C, ax
mov     eax, ecx
call    sub_4DF795
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_4612D3:
mov     eax, ecx
call    sub_42DE56
mov     ebx, eax
mov     edi, eax
test    eax, eax
jz      loc_4613A9
lea     edx, [ecx+14h]
mov     eax, 129h
call    sub_4D8BC3
test    bh, 10h
jz      loc_46139F
mov     dl, [ecx+0Eh]
cmp     dl, 2
jl      short loc_46133A
mov     al, dl
inc     al
mov     [ecx+0Eh], al
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+54h], 0
jmp     loc_46083E

loc_46133A:
mov     dh, dl
inc     dh
mov     [ecx+0Eh], dh
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_516A30[eax*2]
mov     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 2
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 2
sar     eax, 4
mov     [ecx+48h], ax
call    sub_4DE13B
test    eax, eax
jz      short loc_46139F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
mov     [eax+20h], dx

loc_46139F:
lea     eax, [ecx+44h]
mov     edx, edi
call    sub_42D90F

loc_4613A9:
cmp     byte ptr [ecx+0Eh], 2
jle     loc_46083E
cmp     byte ptr [ecx+0Fh], 1
jle     loc_46083E
mov     eax, 642h
call    sub_47E8B8
and     byte ptr [esi+0BDh], 0DFh
jmp     loc_46083E
sub_4611AF endp




sub_4613D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Fh], 46h ; 'F'
jnz     short loc_4613E8
mov     word ptr [esi+0B4h], 40h ; '@'

loc_4613E8:
cmp     word ptr [esi+56h], 400h
jle     short loc_4613F9
mov     word ptr [esi+0B4h], 0

loc_4613F9:
mov     dl, [esi+0Fh]
test    dl, dl
jnz     short loc_461434
mov     dword ptr [esi+1Ch], 5430000h
mov     dword ptr [esi+20h], 0FFFF0000h
mov     dword ptr [esi+24h], 11A00000h
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     word ptr [esi+56h], 0
mov     word ptr [esi+0B4h], 0
inc     byte ptr [esi+0Fh]
jmp     short loc_4614A8

loc_461434:
cmp     dl, 0Ah
jl      short loc_4614A8
mov     ax, [esi+0B4h]
add     [esi+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 500h
mov     eax, esi
call    sub_4DD43B
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4614A8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+14h]
sub     eax, 0Fh
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
mov     ax, [esi+16h]
sub     eax, ebx
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+18h]
sub     eax, 0Fh
mov     [edx+20h], ax

loc_4614A8:
mov     eax, esi
call    sub_4DEADD
inc     byte ptr [esi+0Fh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4613D3 endp




sub_4614B7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4614D7
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4614D7:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4614B7 endp




sub_4614E2 proc near
push    ebx
push    ecx
push    esi
movsx   ecx, word ptr [eax]
movsx   ebx, word ptr [edx]
sub     ecx, ebx
mov     ebx, [eax]
sar     ebx, 10h
mov     esi, [edx]
sar     esi, 10h
sub     ebx, esi
mov     esi, [eax+2]
sar     esi, 10h
mov     eax, [edx+2]
sar     eax, 10h
sub     esi, eax
mov     eax, esi
mov     edx, ecx
imul    edx, ecx
imul    ebx, ebx
add     edx, ebx
imul    eax, esi
add     eax, edx
call    sub_4EF075
pop     esi
pop     ecx
pop     ebx
retn
sub_4614E2 endp




sub_461521 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_46152A[ecx*4]
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_46153E
mov     eax, edx
call    sub_4DEADD

loc_46153E:
pop     edx
pop     ecx
retn
sub_461521 endp

jpt_46158C dd offset loc_461593 ; jump table for switch statement
dd offset def_46158C
dd offset loc_4615C4
dd offset def_46158C
dd offset loc_4615C4
dd offset def_46158C
dd offset loc_4615C4



sub_46155D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 6           ; switch 7 cases
ja      def_46158C      ; jumptable 0046158C default case, cases 1,3,5
and     eax, 0FFh
jmp     jpt_46158C[eax*4] ; switch jump

loc_461593:             ; jumptable 0046158C case 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 1
jmp     short def_46158C ; jumptable 0046158C default case, cases 1,3,5

loc_4615C4:             ; jumptable 0046158C cases 2,4,6
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, [esi+24h]
lea     edi, [ecx+14h]
lea     esi, [eax+14h]
movsd
movsd
add     word ptr [ecx+16h], 39Ah
lea     edi, [ecx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
add     dword ptr [ecx+20h], 39Ah
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 3

def_46158C:             ; jumptable 0046158C default case, cases 1,3,5
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46155D endp




sub_461626 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461642
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_461642:
pop     edx
pop     ecx
pop     ebx
retn
sub_461626 endp




sub_461646 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461666
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_461666:
pop     edx
pop     ecx
pop     ebx
retn
sub_461646 endp




sub_46166A proc near
push    edx
push    esi
push    edi
mov     byte ptr [eax+0Dh], 0
mov     edx, ds:dword_560C00
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
add     word ptr [eax+16h], 39Ah
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
add     dword ptr [eax+20h], 39Ah
pop     edi
pop     esi
pop     edx
retn
sub_46166A endp




sub_46169A proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4616A3[ecx*4]
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_4616B7
mov     eax, edx
call    sub_4DEADD

loc_4616B7:
pop     edx
pop     ecx
retn
sub_46169A endp




sub_4616BA proc near
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
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4616BA endp




sub_461709 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461725
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_461725:
pop     edx
pop     ecx
pop     ebx
retn
sub_461709 endp




sub_461729 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_46178F
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
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short loc_4617B0

loc_46178F:
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

loc_4617B0:
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
sub_461729 endp




sub_4617CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_461820
pop     edx
pop     ecx
pop     ebx
retn
sub_4617CA endp




sub_461803 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46181C
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_46181C:
pop     edx
pop     ecx
pop     ebx
retn
sub_461803 endp




sub_461820 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_461829[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_461820 endp



; Attributes: thunk

sub_461845 proc near
jmp     sub_4DE336
sub_461845 endp




sub_46184A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_461850[edx*4]
pop     edx
retn
sub_46184A endp




sub_461859 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
add     eax, 3A8h
mov     [esp+2Ch+var_1C], eax
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
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
call    rand_
mov     edx, [esp+2Ch+var_1C]
mov     [edx+16h], ax
mov     edx, 4210h
mov     eax, ebp
call    sub_461B33
xor     ecx, ecx
mov     cl, [ebp+8]
mov     edx, [esp+2Ch+var_1C]
mov     eax, ebp
call    ds:funcs_4618B7[ecx*4]
cmp     byte ptr [ebp+3], 0
jnz     short loc_461918
mov     eax, [esp+2Ch+var_1C]
test    byte ptr [eax+14h], 4
jz      short loc_461918
mov     ecx, offset unk_560E24
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_4618F2
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_4618F9

loc_4618F2:
mov     eax, ebp
call    sub_4DEB53

loc_4618F9:
mov     eax, [esp+2Ch+var_1C]
mov     ax, [eax+1Ah]
add     ah, 8
sub     ax, [ebp+56h]
and     ah, 0Fh
mov     [ecx+2], ax
mov     eax, ebp
call    sub_4DF795
jmp     short loc_46193C

loc_461918:
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_461935
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46193C

loc_461935:
mov     eax, ebp
call    sub_4DEADD

loc_46193C:
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
mov     edx, [esp+2Ch+var_1C]
add     edx, 2Ch ; ','
mov     eax, esp
call    sub_4DD57B
mov     ax, [ebp+14h]
mov     edx, [esp+2Ch+var_1C]
add     [edx+2Ch], ax
mov     ax, [ebp+18h]
add     [edx+30h], ax
mov     ax, [ebp+16h]
sub     eax, 80h
mov     [edx+2Eh], ax
test    byte ptr [edx+15h], 0Ch
jz      short loc_46198F
mov     eax, 80h
jmp     short loc_461991

loc_46198F:
xor     eax, eax

loc_461991:
push    eax
push    0
push    4880000h
mov     eax, [esp+38h+var_1C]
add     eax, 34h ; '4'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+40h+var_1C]
add     eax, 2Ch ; ','
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 100h
call    sub_4E01FC
mov     eax, [esp+2Ch+var_1C]
mov     dword ptr [eax+34h], 0
add     esp, 14h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_461859 endp




sub_4619D4 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+14h], 0
mov     word ptr [edx+18h], 0
mov     ax, [eax+56h]
add     ah, 8
and     ah, 0Fh
mov     [edx+1Ah], ax
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 4
mov     [edx+1Eh], ax
movsx   ax, byte ptr [ecx+0Dh]
imul    eax, 64h ; 'd'
mov     [edx+1Ch], ax
mov     ah, [ecx+0Eh]
test    ah, 1
jz      short loc_461A18
or      byte ptr [edx+14h], 80h
jmp     short loc_461A21

loc_461A18:
test    ah, 2
jz      short loc_461A21
or      byte ptr [edx+15h], 1

loc_461A21:
test    word ptr [edx+14h], 180h
jz      short loc_461A4B
test    byte ptr [ecx+0Eh], 4
jz      short loc_461A3D
mov     word ptr [edx+20h], 1
mov     word ptr [edx+22h], 200h
jmp     short loc_461A57

loc_461A3D:
mov     word ptr [edx+20h], 2
mov     word ptr [edx+22h], 100h
jmp     short loc_461A57

loc_461A4B:
mov     word ptr [edx+20h], 0
mov     word ptr [edx+22h], 0

loc_461A57:
movsx   ax, byte ptr [ecx+0Fh]
imul    eax, 14h
mov     [edx+28h], ax
or      byte ptr [edx+14h], 8
mov     word ptr [edx+24h], 2Dh ; '-'
mov     word ptr [edx+26h], 0
mov     dword ptr [edx+34h], 0
mov     dword ptr [edx+38h], 0
lea     eax, [edx+3Ch]
xor     ebx, ebx
mov     edx, 0Ah
call    sub_4E19B9
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ecx+64h], 0
mov     edx, 4210h
mov     eax, ecx
call    sub_461B33
cmp     byte ptr [ecx+3], 1
jnz     short loc_461ACE
mov     byte ptr [ecx+107h], 0FFh

loc_461ACE:
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+eax*4]
xor     eax, eax
mov     al, [edx+8]
shl     eax, 2
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+17h]
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+44h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_4619D4 endp




sub_461B33 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
xor     eax, eax
cmp     byte ptr [ecx+3], 0
jnz     short loc_461B4B
mov     [ecx+15Eh], bx
pop     ecx
pop     ebx
retn

loc_461B4B:
mov     word ptr [ecx+15Eh], 0

loc_461B54:
cmp     eax, 3
jge     short loc_461B66
mov     edx, eax
mov     [ecx+edx*8+196h], bx
inc     eax
jmp     short loc_461B54

loc_461B66:
mov     word ptr [ecx+1AEh], 0
pop     ecx
pop     ebx
retn
sub_461B33 endp

db 8Dh, 40h, 0
jpt_461C21 dd offset loc_461C28 ; jump table for switch statement
dd offset loc_461C4D
dd offset loc_461C6A
dd offset loc_461C70



sub_461B85 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx+14h]
test    ah, 2
jz      short loc_461BA9
test    ah, 40h
jz      short loc_461BA0
mov     eax, ecx
call    sub_461D0D

loc_461BA0:
mov     edx, ebx
mov     eax, ecx
call    sub_461C84

loc_461BA9:
mov     dh, [ecx+0ACh]
test    dh, dh
jnz     short loc_461BCF
mov     dl, [ecx+3]
cmp     dl, 1
jnz     short loc_461BC7
test    byte ptr [ebx+14h], 4
jz      short loc_461BC7
mov     [ecx+0ACh], dl

loc_461BC7:
test    byte ptr [ebx+15h], 8
jz      short loc_461BF6
jmp     short loc_461BEF

loc_461BCF:
cmp     dh, 1
jnz     short loc_461BF6
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_461BE9
mov     byte ptr [ecx+0ACh], 0

loc_461BE9:
test    byte ptr [ebx+15h], 8
jz      short loc_461BF6

loc_461BEF:
mov     byte ptr [ecx+0ACh], 2

loc_461BF6:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_461BFE[esi*4]
test    byte ptr [ebx+14h], 1
jz      loc_461C80
mov     al, [ecx+9]
dec     al              ; switch 4 cases
cmp     al, 3
ja      def_461C21      ; jumptable 00461C21 default case
and     eax, 0FFh
jmp     jpt_461C21[eax*4] ; switch jump

loc_461C28:             ; jumptable 00461C21 case 1
mov     dl, [ebx+15h]
test    dl, 8
jz      short loc_461C36

loc_461C30:
mov     byte ptr [ecx+9], 4
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C36:
test    dl, 2
jz      short loc_461C41

loc_461C3B:
mov     byte ptr [ecx+9], 3
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C41:
test    byte ptr [ebx+14h], 4
jz      short def_461C21 ; jumptable 00461C21 default case
mov     byte ptr [ecx+9], 2
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C4D:             ; jumptable 00461C21 case 2
mov     dh, [ebx+15h]
test    dh, 8
jnz     short loc_461C30
test    dh, 2
jnz     short loc_461C3B
mov     byte ptr [ecx+9], 1
or      byte ptr [ebx+14h], 8
mov     word ptr [ebx+24h], 2Dh ; '-'
jmp     short def_461C21 ; jumptable 00461C21 default case

loc_461C6A:             ; jumptable 00461C21 case 3
test    byte ptr [ebx+15h], 4
jz      short loc_461C30

loc_461C70:             ; jumptable 00461C21 case 4
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

def_461C21:             ; jumptable 00461C21 default case
mov     byte ptr [ecx+0Ah], 0
and     byte ptr [ebx+14h], 0FEh

loc_461C80:
pop     esi
pop     ecx
pop     ebx
retn
sub_461B85 endp




sub_461C84 proc near
push    ebx
push    ecx
push    edi
mov     ecx, eax
mov     eax, [edx+34h]
and     eax, 0FFFFFFh
jz      short loc_461CF2
test    byte ptr [edx+37h], 18h
jz      short loc_461CE5
mov     bx, [ecx+6Eh]
mov     [ecx+0B2h], bx
sub     ebx, eax
mov     [ecx+6Eh], bx
test    bx, bx
jg      short loc_461CC8
mov     di, [edx+14h]
and     edi, 0FFFFF7C8h
mov     [edx+14h], di
mov     eax, edi
or      eax, 801h
mov     [edx+14h], ax

loc_461CC8:
add     edx, 2Ch ; ','
mov     eax, 0A0h
call    sub_4D8BC3
mov     edx, 7FFFh
mov     eax, ecx
call    sub_461B33
pop     edi
pop     ecx
pop     ebx
retn

loc_461CE5:
add     edx, 2Ch ; ','
mov     eax, 0A3h
call    sub_4D8BC3

loc_461CF2:
pop     edi
pop     ecx
pop     ebx
retn
sub_461C84 endp

db 8Dh, 40h, 0
jpt_461D25 dd offset loc_461D2C ; jump table for switch statement
dd offset loc_461D88
dd offset loc_461DEB
dd offset loc_461E62
dd offset loc_461E85



sub_461D0D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
mov     al, [eax+0Bh]
cmp     al, 4           ; switch 5 cases
ja      def_461D25      ; jumptable 00461D25 default case
and     eax, 0FFh
jmp     jpt_461D25[eax*4] ; switch jump

loc_461D2C:             ; jumptable 00461D25 case 0
cmp     word ptr [edx+1Eh], 0
jz      short loc_461D3A
cmp     word ptr [edx+1Ch], 0
jnz     short loc_461D75

loc_461D3A:
test    word ptr [edi+14h], 180h
jz      short loc_461D66
or      byte ptr [edi+15h], 10h

loc_461D46:
cmp     word ptr [edi+20h], 1
jnz     short loc_461D5F
mov     eax, 0FBh

loc_461D52:
mov     [esi+44h], ax
mov     byte ptr [esi+0Bh], 2
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461D5F:
mov     eax, 97h
jmp     short loc_461D52

loc_461D66:
mov     word ptr [esi+44h], 0

loc_461D6C:
mov     byte ptr [esi+0Bh], 4
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461D75:
mov     word ptr [esi+44h], 8
or      byte ptr [edx+15h], 10h
mov     byte ptr [esi+0Bh], 1
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461D88:             ; jumptable 00461D25 case 1
mov     eax, [esi+42h]
sar     eax, 10h
mov     edx, [edx+1Ch]
sar     edx, 10h
cmp     eax, edx
jge     short loc_461D9F
add     word ptr [esi+44h], 8
jmp     short loc_461DA7

loc_461D9F:
mov     ax, [edi+1Eh]
mov     [esi+44h], ax

loc_461DA7:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+42h]
sar     edx, 10h
sar     edx, 4
mov     eax, [edi+1Ah]
sar     eax, 10h
sub     eax, edx
mov     [edi+1Ch], ax
test    ax, ax
jg      def_461D25      ; jumptable 00461D25 default case
test    word ptr [edi+14h], 180h
jnz     loc_461D46

loc_461DE2:
mov     byte ptr [esi+0Bh], 3
jmp     def_461D25      ; jumptable 00461D25 default case

loc_461DEB:             ; jumptable 00461D25 case 2
cmp     word ptr [edx+20h], 1
jnz     short loc_461DF9
mov     eax, 0FBh
jmp     short loc_461DFE

loc_461DF9:
mov     eax, 97h

loc_461DFE:
mov     [esi+44h], ax
cmp     word ptr [edi+22h], 0
jle     short loc_461DE2
lea     eax, [esi+56h]
test    byte ptr [edi+14h], 80h
jz      short loc_461E2C
cmp     word ptr [edi+20h], 1
jnz     short loc_461E20
mov     ecx, 2
jmp     short loc_461E25

loc_461E20:
mov     ecx, 8

loc_461E25:
movsx   edx, word ptr [eax]
add     edx, ecx
jmp     short loc_461E44

loc_461E2C:
cmp     word ptr [edi+20h], 1
jnz     short loc_461E3A
mov     ecx, 2
jmp     short loc_461E3F

loc_461E3A:
mov     ecx, 8

loc_461E3F:
movsx   edx, word ptr [eax]
sub     edx, ecx

loc_461E44:
mov     [eax], dx
and     byte ptr [esi+57h], 0Fh
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     word ptr [edi+22h]
jmp     short def_461D25 ; jumptable 00461D25 default case

loc_461E62:             ; jumptable 00461D25 case 3
cmp     word ptr [esi+44h], 0
jle     loc_461D6C
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
sub     word ptr [esi+44h], 10h
jmp     short def_461D25 ; jumptable 00461D25 default case

loc_461E85:             ; jumptable 00461D25 case 4
mov     dx, [edx+14h]
and     edx, 0FFFFFDBEh
mov     [edi+14h], dx
mov     ebx, edx
or      ebx, 201h
mov     [edi+14h], bx

def_461D25:             ; jumptable 00461D25 default case
test    byte ptr [edi+15h], 10h
jz      short loc_461EE5
call    sub_4DE13B
test    eax, eax
jz      short loc_461EC3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 0
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 1

loc_461EC3:
call    sub_4DE13B
test    eax, eax
jz      short loc_461EE1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 15h
mov     byte ptr [eax+3], 2
mov     dl, [esi+1]
mov     [eax+0Ch], dl
mov     byte ptr [eax+0Dh], 1

loc_461EE1:
and     byte ptr [edi+15h], 0EFh

loc_461EE5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_461D0D endp




sub_461EEA proc near
push    ebx
push    ecx
mov     bx, [edx+26h]
xor     bh, bh
and     bl, 3Fh
movsx   ecx, bx
mov     ebx, dword ptr ds:unk_564C32[ecx*2]
sar     ebx, 10h
mov     ecx, ebx
shl     ecx, 2
add     ecx, ebx
sar     ecx, 0Ch
dec     ecx
mov     [eax+16h], cx
mov     ecx, [eax+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+20h], ecx
inc     word ptr [edx+26h]
pop     ecx
pop     ebx
retn
sub_461EEA endp




sub_461F24 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     word ptr [eax+15Eh], 0
xor     ebx, ebx
jmp     short loc_461F3F

loc_461F39:
inc     ebx
cmp     ebx, 4
jge     short loc_461F9B

loc_461F3F:
mov     eax, ebx
shl     eax, 3
add     eax, ecx
mov     word ptr [eax+196h], 8210h
cmp     word ptr [eax+192h], 0
jle     short loc_461F39
mov     edx, [eax+190h]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     edx, 1Fh
sub     edx, eax
mov     eax, edx
sar     edx, 1
test    eax, eax
jge     short loc_461F80
xor     eax, eax

loc_461F80:
shl     eax, 0Ah
or      ah, 80h
mov     edi, edx
shl     edi, 5
or      eax, edi
or      edx, eax
mov     eax, ebx
mov     [ecx+eax*8+196h], dx
jmp     short loc_461F39

loc_461F9B:
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_461FAB
cmp     al, 1
jz      short loc_461FFA
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_461FAB:
or      byte ptr [ecx], 2
call    sub_4DE13B
mov     [esi+4], eax
test    eax, eax
jz      short loc_461FF7
mov     byte ptr [eax], 5
mov     eax, [esi+4]
mov     byte ptr [eax+2], 10h
mov     eax, [esi+4]
mov     byte ptr [eax+3], 5
mov     eax, [esi+4]
mov     dx, [ecx+14h]
mov     [eax+48h], dx
mov     eax, [esi+4]
mov     word ptr [eax+4Ah], 0
mov     eax, [esi+4]
mov     dx, [ecx+18h]
mov     [eax+4Ch], dx
lea     edx, [ecx+14h]
mov     eax, 149h
call    sub_4D8BC3

loc_461FF7:
inc     byte ptr [ecx+0Ah]

loc_461FFA:
mov     ax, [ecx+16h]
sub     eax, 10h
mov     [ecx+16h], ax
test    ax, ax
jge     short loc_462025
or      byte ptr [esi+14h], 42h
mov     word ptr [ecx+16h], 0FFFFh
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+15Eh], 4210h

loc_462025:
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_461F24 endp




sub_462036 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     edi, offset byte_5F8364
call    sub_461EEA
cmp     byte ptr [ecx+0Ah], 0
jnz     short loc_462065
mov     ax, [ecx+56h]
add     ah, 8
and     ah, 0Fh
mov     [esi+1Ah], ax
mov     word ptr [esi+18h], 0
inc     byte ptr [ecx+0Ah]

loc_462065:
test    byte ptr [esi+15h], 8
jnz     loc_462107
lea     eax, [esi+3Ch]
test    byte ptr [esi+14h], 8
jz      short loc_46209E
call    sub_4E19B4
mov     bx, [esi+24h]
dec     ebx
mov     [esi+24h], bx
test    bx, bx
jg      loc_462107
and     byte ptr [esi+14h], 0F7h
mov     word ptr [esi+18h], 0
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_46209E:
cmp     byte ptr [ecx+3], 0
jnz     short loc_4620E8
mov     ebx, [esi+18h]
sar     ebx, 10h
mov     edx, ecx
call    sub_4E19D8
test    eax, eax
jz      short loc_462107
mov     word ptr [esi+18h], 0
mov     ebx, [esi+18h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [ecx+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_4620DF
or      byte ptr [esi+14h], 15h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4620DF:
or      byte ptr [esi+14h], 25h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4620E8:
mov     edx, ecx
call    sub_4E19CA
test    eax, eax
jz      short loc_462107
test    byte ptr [esi+18h], 0Fh
jnz     short loc_462103
test    byte ptr [esi+16h], 3
jnz     short loc_462103
or      byte ptr [esi+14h], 5

loc_462103:
inc     word ptr [esi+18h]

loc_462107:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462036 endp




sub_46210C proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
call    sub_461EEA
lea     eax, [esi+3Ch]
cmp     byte ptr [ecx+3], 0
jnz     short loc_46213B
mov     ebx, [esi+18h]
sar     ebx, 10h
mov     edx, ecx
call    sub_4E19D8
mov     edx, esi
mov     eax, ecx
call    sub_462205
pop     esi
pop     ecx
pop     ebx
retn

loc_46213B:
mov     edx, ecx
call    sub_4E19CA
mov     edx, esi
mov     eax, ecx
call    sub_46214F
pop     esi
pop     ecx
pop     ebx
retn
sub_46210C endp




sub_46214F proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_462167
jbe     short loc_462186
cmp     al, 2
jz      short loc_4621D1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_462167:
test    al, al
jnz     loc_4621F0
cmp     byte ptr [ecx+0A4h], 9
jnz     loc_4621F0
inc     al
mov     [ecx+0Ah], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_462186:
xor     edx, edx
jmp     short loc_462190

loc_46218A:
inc     edx
cmp     edx, 2
jge     short loc_4621BC

loc_462190:
call    sub_4DE043
test    eax, eax
jz      short loc_46218A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 20h ; ' '
lea     edi, [eax+14h]
lea     esi, [ecx+14h]
movsd
movsd
mov     esi, edx
add     esi, edx
dec     esi
shl     esi, 8
mov     bx, [ecx+56h]
add     ebx, esi
mov     [eax+56h], bx
jmp     short loc_46218A

loc_4621BC:
lea     edx, [ecx+14h]
mov     eax, 14Ah
call    sub_4D8BC3
inc     byte ptr [ecx+0Ah]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4621D1:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4621F0
mov     ah, [edx+14h]
and     ah, 0FAh
mov     [edx+14h], ah
mov     bl, ah
or      bl, 1
mov     [edx+14h], bl

loc_4621F0:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_46214F endp

jpt_462225 dd offset loc_46222C ; jump table for switch statement
dd offset loc_4622EB
dd offset loc_4623AC
dd offset loc_462404



sub_462205 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 28h
mov     ebx, eax
mov     ecx, edx
mov     edx, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_462225      ; jumptable 00462225 default case
and     eax, 0FFh
jmp     jpt_462225[eax*4] ; switch jump

loc_46222C:             ; jumptable 00462225 case 0
cmp     word ptr [ecx+18h], 30h ; '0'
jge     loc_4623A0
test    byte ptr [ecx+14h], 10h
jz      short loc_462248
mov     ax, [ecx+1Ah]
add     eax, 20h ; ' '
jmp     short loc_46224F

loc_462248:
mov     ax, [ecx+1Ah]
sub     eax, 20h ; ' '

loc_46224F:
and     ah, 0Fh
mov     [ecx+1Ah], ax
mov     eax, [ebx+1A6h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+38h+var_28], eax
mov     eax, [ebx+1A8h]
sar     eax, 10h
shl     eax, 10h
mov     [esp+38h+var_24], eax
mov     eax, [ebx+1AAh]
sar     eax, 10h
shl     eax, 10h
mov     [esp+38h+var_20], eax
mov     edi, [ecx+18h]
sar     edi, 10h
lea     esi, [edx+1Ch]
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4DDD5D
sub     edi, eax
test    edi, edi
jge     short loc_4622B9
mov     edi, [ecx+18h]
sar     edi, 10h
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4DDD5D
sub     edi, eax
mov     eax, edi
neg     eax
jmp     short loc_4622CE

loc_4622B9:
mov     edi, [ecx+18h]
sar     edi, 10h
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4DDD5D
sub     edi, eax
mov     eax, edi

loc_4622CE:
cmp     eax, 20h ; ' '
jge     short loc_4622E2
mov     word ptr [ecx+18h], 0
mov     byte ptr [ebx+0Ah], 1
jmp     def_462225      ; jumptable 00462225 default case

loc_4622E2:
inc     word ptr [ecx+18h]
jmp     def_462225      ; jumptable 00462225 default case

loc_4622EB:             ; jumptable 00462225 case 1
cmp     word ptr [ecx+18h], 0
jnz     loc_46238D
call    sub_4DE043
mov     edx, eax
test    eax, eax
jz      loc_46238D
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     ax, [ebx+1A8h]
mov     [edx+14h], ax
mov     ax, [ebx+1AAh]
sub     eax, 28h ; '('
mov     [edx+16h], ax
mov     ax, [ebx+1ACh]
mov     [edx+18h], ax
xor     esi, esi
mov     [esp+38h+var_14], si
mov     [esp+38h+var_18], si
mov     ax, [ecx+1Ah]
mov     [esp+38h+var_16], ax
lea     esi, [edx+8Ch]
mov     edx, esi
lea     eax, [esp+38h+var_18]
call    sub_4EF638
mov     edx, 200h
mov     [esp+38h+var_30], edx
mov     [esp+38h+var_34], edx
mov     [esp+38h+var_38], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
lea     edx, [ebx+1A8h]
mov     eax, 14Ch
call    sub_4D8BC3

loc_46238D:
mov     ax, [ecx+18h]
inc     eax
mov     [ecx+18h], ax
cmp     ax, 3Ch ; '<'
jnz     def_462225      ; jumptable 00462225 default case

loc_4623A0:
mov     word ptr [ecx+18h], 0
mov     byte ptr [ebx+0Ah], 2
jmp     short def_462225 ; jumptable 00462225 default case

loc_4623AC:             ; jumptable 00462225 case 2
test    byte ptr [ecx+14h], 10h
jz      short loc_4623BB
mov     ax, [ecx+1Ah]
sub     eax, 20h ; ' '
jmp     short loc_4623C4

loc_4623BB:
mov     ax, [ecx+1Ah]
add     eax, 20h ; ' '

loc_4623C4:
and     ah, 0Fh
mov     [ecx+1Ah], ax
mov     eax, [ebx+54h]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
mov     edx, [ecx+18h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
test    eax, eax
jge     short loc_4623EB
neg     edx

loc_4623EB:
cmp     edx, 20h ; ' '
jge     short def_462225 ; jumptable 00462225 default case
mov     ax, [ebx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ecx+1Ah], ax
mov     byte ptr [ebx+0Ah], 3
jmp     short def_462225 ; jumptable 00462225 default case

loc_462404:             ; jumptable 00462225 case 3
mov     ah, [ecx+14h]
and     ah, 0CAh
mov     [ecx+14h], ah
mov     dl, ah
or      dl, 1
mov     [ecx+14h], dl

def_462225:             ; jumptable 00462225 default case
add     esp, 28h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462205 endp

jpt_462443 dd offset loc_46244A ; jump table for switch statement
dd offset loc_462470
dd offset loc_46248C
dd offset loc_4624CB



sub_46242D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_462443      ; jumptable 00462443 default case
and     eax, 0FFh
jmp     jpt_462443[eax*4] ; switch jump

loc_46244A:             ; jumptable 00462443 case 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     si, [edx+28h]
test    si, si
jle     short loc_46246B
mov     edi, esi
dec     edi
mov     [edx+28h], di
jmp     def_462443      ; jumptable 00462443 default case

loc_46246B:
inc     byte ptr [ecx+0Ah]
jmp     short def_462443 ; jumptable 00462443 default case

loc_462470:             ; jumptable 00462443 case 1
cmp     dword ptr [ecx+80h], 240000h
jbe     short def_462443 ; jumptable 00462443 default case
or      byte ptr [edx+15h], 4
and     byte ptr [edx+14h], 0FDh
mov     word ptr [ecx+46h], 12h
jmp     short loc_46246B

loc_46248C:             ; jumptable 00462443 case 2
call    sub_4DE13B
mov     [edx+4], eax
test    eax, eax
jz      short loc_4624C8
mov     byte ptr [eax], 5
mov     eax, [edx+4]
mov     byte ptr [eax+2], 10h
mov     eax, [edx+4]
mov     byte ptr [eax+3], 5
mov     eax, [edx+4]
mov     bx, [ecx+14h]
mov     [eax+48h], bx
mov     eax, [edx+4]
mov     word ptr [eax+4Ah], 0
mov     eax, [edx+4]
mov     bx, [ecx+18h]
mov     [eax+4Ch], bx

loc_4624C8:
inc     byte ptr [ecx+0Ah]

loc_4624CB:             ; jumptable 00462443 case 3
cmp     word ptr [ecx+16h], 258h
jle     short def_462443 ; jumptable 00462443 default case
or      byte ptr [edx+14h], 1

def_462443:             ; jumptable 00462443 default case
cmp     byte ptr [ecx+0Ah], 0
jbe     loc_46256A
mov     word ptr [ecx+15Eh], 0
xor     ebx, ebx
jmp     short loc_4624F4

loc_4624EE:
inc     ebx
cmp     ebx, 4
jge     short loc_462556

loc_4624F4:
mov     eax, ebx
mov     word ptr [ecx+eax*8+196h], 4210h
mov     edx, [ecx+eax*8+190h]
sar     edx, 10h
mov     eax, ds:(off_516AB0+2)[ebx*2]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4624EE
sub     edx, 6Ah ; 'j'
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, 1Fh
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_462537
xor     eax, edx

loc_462537:
mov     edx, eax
sar     edx, 1
shl     eax, 0Ah
or      ah, 80h
mov     esi, edx
shl     esi, 5
or      eax, esi
or      edx, eax
mov     eax, ebx
mov     [ecx+eax*8+196h], dx
jmp     short loc_4624EE

loc_462556:
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax

loc_46256A:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_46242D endp

db 8Bh, 0C0h
jpt_46259A dd offset loc_4625A1 ; jump table for switch statement
dd offset loc_46263A
dd offset loc_462671
dd offset loc_4626DD



sub_462581 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebp, edx
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_46259A      ; jumptable 0046259A default case
and     eax, 0FFh
jmp     jpt_46259A[eax*4] ; switch jump

loc_4625A1:             ; jumptable 0046259A case 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
call    sub_4DE13B
mov     [edx+4], eax
test    eax, eax
jz      short loc_4625D5
mov     byte ptr [eax], 5
mov     eax, [edx+4]
mov     byte ptr [eax+2], 10h
mov     eax, [edx+4]
mov     byte ptr [eax+3], 2
mov     esi, [edx+4]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4625D5:
call    sub_4DE13B
mov     [ebp+8], eax
test    eax, eax
jz      short loc_4625FD
mov     byte ptr [eax], 5
mov     eax, [ebp+8]
mov     byte ptr [eax+2], 10h
mov     eax, [ebp+8]
mov     byte ptr [eax+3], 3
mov     esi, [ebp+8]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4625FD:
call    sub_4DE13B
mov     [ebp+0Ch], eax
test    eax, eax
jz      short loc_462625
mov     byte ptr [eax], 5
mov     eax, [ebp+0Ch]
mov     byte ptr [eax+2], 10h
mov     eax, [ebp+0Ch]
mov     byte ptr [eax+3], 4
mov     esi, [ebp+0Ch]
lea     edi, [esi+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_462625:
lea     edx, [ecx+14h]
mov     eax, 14Dh
call    sub_4D8BC3

loc_462632:
inc     byte ptr [ecx+0Ah]
jmp     def_46259A      ; jumptable 0046259A default case

loc_46263A:             ; jumptable 0046259A case 1
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_46259A      ; jumptable 0046259A default case
cmp     dword ptr [ecx+80h], 240000h
jbe     def_46259A      ; jumptable 0046259A default case
lea     edx, [ecx+14h]
mov     eax, 14Eh
call    sub_4D8BC3
mov     word ptr [ecx+46h], 8
jmp     short loc_462632

loc_462671:             ; jumptable 0046259A case 2
cmp     dword ptr [ecx+80h], 240000h
ja      short loc_462683
mov     word ptr [ecx+46h], 10h

loc_462683:
mov     dx, [ecx+16h]
cmp     dx, 258h
jg      short loc_462632
cmp     dx, 12Ch
jle     def_46259A      ; jumptable 0046259A default case
xor     esi, esi
mov     edi, 12Ch
jmp     short loc_4626A8

loc_4626A2:
inc     esi
cmp     esi, 3
jge     short def_46259A ; jumptable 0046259A default case

loc_4626A8:
mov     ebx, esi
shl     ebx, 2
add     ebx, ebp
mov     eax, [ebx+4]
test    eax, eax
jz      short loc_4626A2
mov     byte ptr [eax+8], 4
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, 258h
sub     eax, edx
mov     edx, eax
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     dl, al
mov     eax, [ebx+4]
mov     [eax+0Ah], dl
jmp     short loc_4626A2

loc_4626DD:             ; jumptable 0046259A case 3
xor     esi, esi
jmp     short loc_4626E7

loc_4626E1:
inc     esi
cmp     esi, 3
jge     short loc_462709

loc_4626E7:
mov     eax, esi
shl     eax, 2
add     eax, ebp
mov     edi, [eax+4]
test    edi, edi
jz      short loc_4626E1
mov     byte ptr [edi+8], 5
mov     edx, [eax+4]
mov     byte ptr [edx+9], 0
mov     eax, [eax+4]
mov     byte ptr [eax+0Ah], 10h
jmp     short loc_4626E1

loc_462709:
or      byte ptr [ebp+14h], 1

def_46259A:             ; jumptable 0046259A default case
mov     word ptr [ecx+15Eh], 0
xor     esi, esi
jmp     short loc_462720

loc_46271A:
inc     esi
cmp     esi, 4
jge     short loc_462783

loc_462720:
mov     eax, esi
shl     eax, 3
add     eax, ecx
mov     word ptr [eax+196h], 4210h
cmp     word ptr [eax+192h], 20h ; ' '
jle     short loc_46271A
mov     edx, [eax+190h]
sar     edx, 10h
sub     edx, 6Ah ; 'j'
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, 1Fh
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_462762
xor     eax, edx

loc_462762:
mov     edx, eax
sar     edx, 1
shl     eax, 0Ah
or      ah, 80h
mov     ebx, eax
mov     eax, edx
shl     eax, 5
or      eax, ebx
or      edx, eax
mov     eax, esi
mov     [ecx+eax*8+196h], dx
jmp     short loc_46271A

loc_462783:
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462581 endp



; Attributes: thunk

sub_46279D proc near
jmp     sub_4DE2F6
sub_46279D endp




sub_4627A2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4627A8[edx*4]
pop     edx
retn
sub_4627A2 endp




sub_4627B1 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4627BA[ecx*4]
mov     eax, edx
call    sub_462986
pop     edx
pop     ecx
retn
sub_4627B1 endp




sub_4627CB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_462852
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
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 2
add     eax, offset unk_516AE4
xor     ebx, ebx
mov     bl, [eax+1]
xor     edx, edx
mov     dl, [eax]
mov     eax, ebp
call    sub_4DE96B
mov     byte ptr [ebp+0Dh], 0
mov     byte ptr [ebp+0Eh], 1
mov     byte ptr [ebp+0Fh], 0
inc     byte ptr [ebp+9]
jmp     loc_462920

loc_462852:
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
mov     dl, ds:byte_560BE5
cmp     dl, 1
jnz     loc_462920
add     [ebp+8], dl
mov     byte ptr [ebp+9], 0
jmp     loc_462920
sub_4627CB endp




sub_46288E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4628C5
xor     ecx, ecx
mov     cl, [ebp+8]
shl     ecx, 2
add     ecx, offset unk_516AE4
xor     ebx, ebx
mov     bl, [ecx+1]
xor     edx, edx
mov     dl, [ecx]
mov     eax, ebp
call    sub_4DE96B
mov     dl, [ecx+2]
mov     [ebp+0Ch], dl
inc     byte ptr [ebp+9]
jmp     short loc_462920

loc_4628C5:
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
cmp     byte ptr [ebp+8], 2
jnz     short loc_4628F5
cmp     byte ptr [ebp+0A4h], 17h
jnz     short loc_4628F5
mov     byte ptr [ebp+10Ch], 0Ch

loc_4628F5:
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_462919
mov     bl, [ebp+0Ch]
test    bl, bl
jnz     short loc_462912
inc     byte ptr [ebp+8]
mov     [ebp+9], bl
jmp     short loc_462919

loc_462912:
mov     bh, bl
dec     bh
mov     [ebp+0Ch], bh

loc_462919:
mov     eax, ebp
call    sub_4DEADD

loc_462920:
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
sub_46288E endp




sub_46293A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_46296A
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 2
add     eax, offset unk_516AE4
xor     ebx, ebx
mov     bl, [eax+1]
xor     edx, edx
mov     dl, [eax]
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+9]
jmp     short loc_462920

loc_46296A:
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
jmp     short loc_462919
sub_46293A endp




sub_462986 proc near
push    ebx
push    edx
mov     edx, [eax+0Ah]
sar     edx, 18h
shl     edx, 2
add     edx, offset unk_516B08
cmp     byte ptr [edx], 0FFh
jz      short loc_4629CC
mov     bl, ds:byte_560BE5
cmp     bl, [edx]
jnz     short loc_4629CC
mov     edx, [edx]
sar     edx, 10h
cmp     edx, ds:dword_560BEC
jnz     short loc_4629CC
inc     byte ptr [eax+0Dh]
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_4629C3
mov     edx, 1
jmp     short loc_4629C5

loc_4629C3:
xor     edx, edx

loc_4629C5:
mov     [eax+0Eh], dl
mov     byte ptr [eax+0Fh], 0

loc_4629CC:
mov     dl, [eax+0Eh]
test    dl, dl
jz      short loc_4629FE
cmp     byte ptr [eax+0Fh], 0
jnz     short loc_4629F4
cmp     byte ptr [eax+0FCh], 0Bh
jnz     short loc_4629E9
mov     edx, 1
jmp     short loc_4629EE

loc_4629E9:
mov     edx, 0Bh

loc_4629EE:
mov     [eax+0FCh], dl

loc_4629F4:
mov     dl, [eax+0Fh]
inc     dl
and     dl, 3
jmp     short loc_462A05

loc_4629FE:
mov     byte ptr [eax+0FCh], 0Bh

loc_462A05:
mov     [eax+0Fh], dl
pop     edx
pop     ebx
retn
sub_462986 endp




sub_462A0B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_462A11[edx*4]
pop     edx
retn
sub_462A0B endp




sub_462A1A proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 348h
mov     [esp+34h+var_1C], eax
or      byte ptr [ebp+0], 6
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], 0
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 42100200h
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], 0
and     byte ptr [ebp+57h], 0Fh
and     byte ptr [ebp+55h], 0Fh
mov     word ptr [ebp+58h], 0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     esi, [ebp+14h]
mov     ecx, 200h
mov     edx, (offset dword_5F880A+2)
mov     eax, esi
call    sub_4DE552
add     [ebp+56h], ax
mov     ecx, 400h
mov     ebx, 0C00h
mov     edx, (offset dword_5F880A+2)
mov     eax, esi
call    sub_4DE5A3
add     [ebp+54h], ax
mov     edi, [esp+34h+var_1C]
lea     esi, [ebp+14h]
movsd
movsd
mov     eax, [esp+34h+var_1C]
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+14h], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
inc     byte ptr [ebp+8]
mov     byte ptr [ebp+0Bh], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE9BA
mov     eax, ebp
call    sub_4DF7CB
xor     ecx, ecx
mov     [esp+34h+var_24], cx
mov     [esp+34h+var_22], cx
mov     [esp+34h+var_20], 0F000h
lea     eax, [ebp+160h]
mov     ebx, esp
lea     edx, [esp+34h+var_24]
call    sub_4EF1FB
lea     edx, [ebp+44h]
mov     eax, esp
call    sub_4EF932
add     esp, 1Ch

loc_462B24:
pop     ebp

loc_462B25:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462A1A endp




sub_462B2B proc near
inc     byte ptr [eax+8]
retn
sub_462B2B endp




sub_462B2F proc near
push    edx
inc     byte ptr [eax+8]
lea     edx, [eax+14h]
mov     eax, 0FFh
call    sub_4D8BC3
pop     edx
retn
sub_462B2F endp




sub_462B42 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+348h]
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+0Bh]
call    sub_462DEF
mov     ah, [ecx+0Bh]
inc     ah
mov     [ecx+0Bh], ah
xor     edx, edx
mov     dl, ah
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
mov     edx, [ecx+42h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
movsx   ebx, word ptr [ebp+0]
add     edx, ebx
mov     [ecx+14h], dx
mov     edx, [ecx+44h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
mov     ebx, [ebp+0]
sar     ebx, 10h
add     edx, ebx
mov     [ecx+16h], dx
mov     edx, [ecx+46h]
sar     edx, 10h
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ebp+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
mov     eax, ecx
call    sub_462D8E
test    eax, eax
jz      short loc_462C21
mov     eax, 12h
call    sub_4D8E2B
lea     edx, [ecx+14h]
mov     eax, 140h
call    sub_4D8BC3
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
add     byte ptr [ecx+8], 2
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF7CB
mov     bh, [ecx+0Bh]
add     bh, bh
mov     [ecx+0Bh], bh
jmp     loc_462B24

loc_462C21:
cmp     byte ptr [ecx+0Bh], 14h
jb      short loc_462C4D
mov     eax, 12h
call    sub_4D8E2B
inc     byte ptr [ecx+8]
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF7CB
mov     byte ptr [ecx+0Ah], 0Fh

loc_462C4D:
mov     eax, ecx
call    sub_462DAD
xor     eax, eax
mov     al, [ecx+0Bh]
add     eax, eax
mov     [ebp+14h], eax
jmp     loc_462B24
sub_462B42 endp




sub_462C63 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0A7h], 0
jge     short loc_462CB7
mov     dl, [ecx+0Ah]
dec     dl
mov     [ecx+0Ah], dl
jnz     short loc_462CB7
lea     edx, [ecx+14h]
mov     eax, 140h
call    sub_4D8BC3
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
inc     byte ptr [ecx+8]
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF7CB
mov     bh, [ecx+0Bh]
add     bh, bh
mov     [ecx+0Bh], bh
jmp     loc_462B25

loc_462CB7:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
mov     eax, ecx
call    sub_462DAD
jmp     loc_462B25
sub_462C63 endp




sub_462CD1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+348h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_462D60
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
xor     edx, edx
mov     dl, [ecx+0Bh]
sar     edx, 1
mov     eax, ecx
call    sub_462E4E
dec     byte ptr [ecx+0Bh]
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
add     eax, eax
mov     edx, [ecx+42h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
movsx   esi, word ptr [ebx]
add     edx, esi
mov     [ecx+14h], dx
mov     edx, [ecx+44h]
sar     edx, 10h
imul    edx, eax
sar     edx, 0Ch
mov     esi, [ebx]
sar     esi, 10h
add     edx, esi
mov     [ecx+16h], dx
mov     edx, [ecx+46h]
sar     edx, 10h
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ebx+2]
sar     edx, 10h
add     eax, edx
mov     [ecx+18h], ax
cmp     byte ptr [ecx+0Bh], 0
jnz     short loc_462D60
inc     byte ptr [ecx+8]

loc_462D60:
xor     eax, eax
mov     al, [ecx+0Bh]
mov     [ebx+14h], eax
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
jmp     loc_462B25
sub_462CD1 endp




sub_462D7B proc near
mov     byte ptr [eax+0Ch], 1
call    sub_4DE2F6
mov     eax, 12h
jmp     sub_4D8E2B
sub_462D7B endp




sub_462D8E proc near
push    edx
lea     edx, [eax+348h]
test    byte ptr [edx+0Bh], 0FFh
jz      short loc_462DA2

loc_462D9B:
mov     eax, 1
pop     edx
retn

loc_462DA2:
call    sub_42CE47
test    eax, eax
jnz     short loc_462D9B
pop     edx
retn
sub_462D8E endp




sub_462DAD proc near
push    ebx
push    ecx
push    edx
push    esi
lea     esi, [eax+348h]
push    0
push    0
push    64000010h
lea     edx, [eax+350h]
push    edx
xor     edx, edx
mov     dl, [eax+1]
push    edx
add     eax, 1B0h
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
mov     dword ptr [esi+8], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462DAD endp




sub_462DEF proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     [esp+14h+var_14], edx
lea     edx, [eax+348h]
call    sub_4DE043
test    eax, eax
jz      short loc_462E46
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 16h
mov     bl, byte ptr [esp+14h+var_14]
mov     [eax+3], bl
mov     [eax+0C8h], ecx
lea     edi, [eax+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [eax+0C4h], offset unk_808080
mov     cl, bl
mov     eax, 1
shl     eax, cl
or      [edx+10h], eax

loc_462E46:
add     esp, 4
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_462DEF endp




sub_462E4E proc near
push    ecx
mov     cl, dl
mov     edx, 1
shl     edx, cl
not     edx
and     [eax+358h], edx
pop     ecx
retn
sub_462E4E endp




sub_462E62 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
test    byte ptr [eax], 2
jz      short loc_462E80
xor     ecx, ecx
mov     ebx, 100h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_462E80:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_462E87[edx*4]
mov     dl, [esi+0Eh]
inc     dl
mov     [esi+0Eh], dl
cmp     dl, 3
jl      short loc_462EB9
mov     byte ptr [esi+0Eh], 0
mov     bl, [esi+0FCh]
inc     bl
mov     [esi+0FCh], bl
cmp     bl, 4
jbe     short loc_462EB9
mov     byte ptr [esi+0FCh], 1

loc_462EB9:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462E62 endp




sub_462EBE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
cmp     byte ptr [ecx+0Ch], 0FFh
jz      short loc_462F3B
inc     byte ptr [ecx+8]
jmp     short loc_462F46

loc_462F3B:
mov     dword ptr [ecx+8], 0
mov     byte ptr [ecx+8], 6

loc_462F46:
mov     dword ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_462EBE endp




sub_462F51 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
call    sub_4DEADD
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 61h ; 'a'
mov     eax, esi
call    sub_4DD43B
mov     al, [esi+0Fh]
mov     ah, al
inc     ah
mov     [esi+0Fh], ah
cmp     al, 2Dh ; '-'
jnz     short loc_462F7D
inc     byte ptr [esi+8]

loc_462F7D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_462F51 endp



; Attributes: thunk

sub_462F82 proc near
jmp     sub_4DEADD
sub_462F82 endp




sub_462F87 proc near
push    ecx
push    edx
mov     ecx, eax
sub     dword ptr [eax+20h], 400000h
lea     edx, [eax+14h]
add     eax, 1Ch

loc_462F98:
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_462F87 endp




sub_462FA7 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     eax, ds:dword_560C00
lea     edi, [ecx+14h]
lea     esi, [eax+14h]
movsd
movsd
mov     edx, [eax+1Ch]
mov     [ecx+1Ch], edx
mov     edx, [eax+20h]
add     edx, 2600000h
mov     [ecx+20h], edx
mov     eax, [eax+24h]
mov     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_462FA7 endp




sub_462FE9 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, ds:dword_560C00
mov     edx, [eax+1Ch]
mov     [ecx+1Ch], edx
mov     eax, [eax+24h]
mov     [ecx+24h], eax
mov     ah, [ecx+0Fh]
xor     ah, 1
mov     [ecx+0Fh], ah
test    ah, 1
jz      short loc_463015
sub     dword ptr [ecx+1Ch], 80000h
jmp     short loc_46301A

loc_463015:
add     word ptr [ecx+1Eh], 8

loc_46301A:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
jmp     loc_462F98
sub_462FE9 endp




sub_463025 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_463039
jbe     short loc_463060
jmp     loc_4630E2

loc_463039:
test    al, al
jnz     loc_4630E2
inc     al
mov     [esi+9], al
mov     byte ptr [esi+0Ah], 1Eh
mov     byte ptr [esi+0Bh], 3
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0FFC0h
mov     word ptr [esi+4Eh], 2

loc_463060:
mov     ax, [esi+46h]
shl     eax, 4
movsx   ebx, ax
mov     ax, [esi+44h]
shl     eax, 4
movsx   edx, ax
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      short loc_4630BB
lea     edx, [esi+14h]
mov     eax, 155h
call    sub_4D8BC3
mov     word ptr [esi+46h], 0FFC0h
mov     bx, [esi+4Eh]
add     ebx, ebx
mov     [esi+4Eh], bx
mov     ah, [esi+0Bh]
dec     ah
mov     [esi+0Bh], ah
jnz     short loc_4630BB
inc     byte ptr [esi+9]

loc_4630BB:
mov     bl, [esi+0Ah]
test    bl, bl
jnz     short loc_4630DB
mov     eax, 640h
call    sub_47E8B8
mov     eax, 51h ; 'Q'
call    sub_47E8B8
inc     byte ptr [esi+0Ah]
jmp     short loc_4630E2

loc_4630DB:
mov     bh, bl
dec     bh
mov     [esi+0Ah], bh

loc_4630E2:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_463025 endp




sub_4630EE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
movzx   esi, byte ptr [eax+3]
mov     ebx, ecx
mov     edx, offset dword_560BDC
call    ds:funcs_46312D[esi*4]
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_463156
movsx   ebx, word ptr [ecx]
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46315D

loc_463156:
mov     eax, ebp
call    sub_4DEADD

loc_46315D:
test    byte ptr [ebp+0], 2
jz      short loc_46317D
xor     ecx, ecx
mov     cl, [ebp+3]
mov     edx, ds:dword_516BC6[ecx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     eax, ebp
call    sub_4ED88B

loc_46317D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4630EE endp




sub_463184 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_516BA8[eax*4]
mov     [ecx+2], al
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 30h ; '0'
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_516BBC[eax*2]
mov     [ecx+0ACh], al
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_463184 endp




sub_4631F9 proc near
push    ecx
mov     ecx, ebx
mov     bl, [eax+8]
cmp     bl, 1
jb      short loc_463208
jbe     short loc_463215
pop     ecx
retn

loc_463208:
test    bl, bl
jnz     short loc_46324C
mov     edx, ecx
call    sub_463184
pop     ecx
retn

loc_463215:
cmp     byte ptr [edx+9], 11h
jnz     short loc_46324C
cmp     dword ptr [edx+10h], 1
jnz     short loc_46324C
cmp     byte ptr [eax+3], 0
jnz     short loc_463243
mov     word ptr [eax+56h], 400h
sub     word ptr [eax+14h], 28h ; '('
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
inc     byte ptr [eax+9]
pop     ecx
retn

loc_463243:
mov     word ptr [eax+56h], 800h
inc     byte ptr [eax+9]

loc_46324C:
pop     ecx
retn
sub_4631F9 endp

jpt_46327F dd offset loc_463286 ; jump table for switch statement
dd offset loc_4632A5
dd offset loc_4632BE
dd offset loc_4632D1
dd offset loc_4632E5
dd offset loc_4632FF
dd offset loc_463319



sub_46326A proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+8]
cmp     bl, 6           ; switch 7 cases
ja      def_46327F      ; jumptable 0046327F default case
movzx   esi, bl
jmp     jpt_46327F[esi*4] ; switch jump

loc_463286:             ; jumptable 0046327F case 0
mov     edx, eax
mov     eax, ecx
call    sub_463184
mov     byte ptr [ecx+0FCh], 0Ch
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 1Eh
mov     byte ptr [ecx+0Fh], 0

def_46327F:             ; jumptable 0046327F default case
pop     esi

def_46334D:             ; jumptable 0046334D default case, case 4
pop     ecx             ; jumptable 004633FD default case, case 5
retn

loc_4632A5:             ; jumptable 0046327F case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 5

loc_4632B0:             ; jumptable 0046327F default case
jnz     short def_46327F
cmp     dword ptr [edx+10h], 1

loc_4632B6:             ; jumptable 0046327F default case
jnz     short def_46327F

loc_4632B8:
inc     byte ptr [ecx+8]
pop     esi
pop     ecx
retn

loc_4632BE:             ; jumptable 0046327F case 2
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 0Ah
jmp     short loc_4632B6

loc_4632D1:             ; jumptable 0046327F case 3
cmp     byte ptr [edx+9], 6
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1
jnz     short def_46327F ; jumptable 0046327F default case
inc     bl
mov     [ecx+8], bl
pop     esi
pop     ecx
retn

loc_4632E5:             ; jumptable 0046327F case 4
cmp     byte ptr [edx+9], 10h
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1
jnz     short def_46327F ; jumptable 0046327F default case
mov     byte ptr [ecx+0ACh], 19h
mov     word ptr [eax], 0
jmp     short loc_4632B8

loc_4632FF:             ; jumptable 0046327F case 5
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, ecx
call    sub_463497
cmp     byte ptr [edx+9], 10h
jnz     short def_46327F ; jumptable 0046327F default case
cmp     dword ptr [edx+10h], 1Eh
jmp     short loc_4632B6

loc_463319:             ; jumptable 0046327F case 6
mov     eax, ecx
call    sub_463497
cmp     byte ptr [edx+9], 11h
jmp     short loc_4632B0
sub_46326A endp

jpt_46334D dd offset loc_463354 ; jump table for switch statement
dd offset loc_46335D
dd offset loc_46337D
dd offset loc_4633A9
dd offset def_46334D



sub_46333A proc near
push    ecx
mov     cl, [eax+8]
cmp     cl, 4           ; switch 5 cases
ja      def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
and     ecx, 0FFh
jmp     jpt_46334D[ecx*4] ; switch jump

loc_463354:             ; jumptable 0046334D case 0
mov     edx, ebx
call    sub_463184
pop     ecx
retn

loc_46335D:             ; jumptable 0046334D case 1
mov     byte ptr [eax+0ADh], 0FFh
cmp     byte ptr [edx+9], 6
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 5
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
inc     byte ptr [eax+8]
pop     ecx
retn

loc_46337D:             ; jumptable 0046334D case 2
cmp     byte ptr [edx+9], 7
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 1
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 14h
mov     byte ptr [eax+0ADh], 0FFh
mov     word ptr [ebx], 0
inc     byte ptr [eax+8]
pop     ecx
retn

loc_4633A9:             ; jumptable 0046334D case 3
mov     byte ptr [eax+0ADh], 0FFh
cmp     byte ptr [edx+9], 13h
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 5
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0FCh], 0Fh
inc     byte ptr [eax+8]
pop     ecx
retn
sub_46333A endp

db 8Bh, 0C0h
jpt_4633FD dd offset loc_463404 ; jump table for switch statement
dd offset loc_46340D
dd offset loc_463430
dd offset loc_463466
dd offset loc_463479
dd offset def_46334D



sub_4633EA proc near
push    ecx
mov     cl, [eax+8]
cmp     cl, 5           ; switch 6 cases
ja      def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
and     ecx, 0FFh
jmp     jpt_4633FD[ecx*4] ; switch jump

loc_463404:             ; jumptable 004633FD case 0
mov     edx, ebx
call    sub_463184
pop     ecx
retn

loc_46340D:             ; jumptable 004633FD case 1
cmp     byte ptr [edx+9], 1Bh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 96h

loc_46341E:             ; jumptable 0046334D default case, case 4
jnz     def_46334D      ; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 8
inc     byte ptr [eax+8]
pop     ecx
retn

loc_463430:             ; jumptable 004633FD case 2
cmp     byte ptr [edx+9], 1Bh
jnz     short loc_463446
cmp     dword ptr [edx+10h], 0E6h
jnz     short loc_463446
mov     byte ptr [eax+0ACh], 13h

loc_463446:
cmp     byte ptr [edx+9], 1Dh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 1
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+8]
pop     ecx
retn

loc_463466:             ; jumptable 004633FD case 3
cmp     byte ptr [edx+9], 1Dh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
cmp     dword ptr [edx+10h], 0CDh
jmp     short loc_46341E

loc_463479:             ; jumptable 004633FD case 4
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     def_46334D      ; jumptable 0046334D default case, case 4
; jumptable 004633FD default case, case 5
mov     byte ptr [eax+0ADh], 0FFh
inc     byte ptr [eax+8]
pop     ecx
retn
sub_4633EA endp




sub_463497 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Dh], 0
jle     short loc_4634B8
mov     ah, [edx+0Dh]
dec     ah
mov     [edx+0Dh], ah
jnz     short loc_4634F3
call    rand_
and     al, 1Fh
add     al, 1Eh
mov     [edx+0Eh], al
pop     edx
retn

loc_4634B8:
cmp     byte ptr [edx+0Eh], 0
jle     short loc_4634E7
test    byte ptr [edx+0Fh], 3
jnz     short loc_4634DF
cmp     byte ptr [edx+0FCh], 0Bh
jnz     short loc_4634D4
mov     eax, 1
jmp     short loc_4634D9

loc_4634D4:
mov     eax, 0Bh

loc_4634D9:
mov     [edx+0FCh], al

loc_4634DF:
dec     byte ptr [edx+0Eh]
inc     byte ptr [edx+0Fh]
pop     edx
retn

loc_4634E7:
call    rand_
and     al, 0Fh
add     al, 0Fh
mov     [edx+0Dh], al

loc_4634F3:
pop     edx
retn
sub_463497 endp




sub_4634F5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4634FB[edx*4]
pop     edx
retn
sub_4634F5 endp




sub_463504 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_55A0D0
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
mov     ecx, 100h
mov     edx, offset unk_55A0D0
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 0
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], 0
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_4635D9
pop     ebp

loc_4635D3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_463504 endp




sub_4635D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+408h]
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
call    rand_
mov     [edx+2], ax
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_46361C[ebx*4]
test    byte ptr [edx], 1
jz      short loc_463635
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
and     byte ptr [edx], 0FEh

loc_463635:
mov     al, [ecx+0ADh]
mov     bh, [ecx+0ACh]
cmp     al, bh
jz      short loc_463657
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     loc_4635D3

loc_463657:
mov     eax, ecx
call    sub_4DEADD
jmp     loc_4635D3
sub_4635D9 endp



; Attributes: thunk

sub_463663 proc near
jmp     sub_4DE2F6
sub_463663 endp




sub_463668 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_46367C
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_46367C:
pop     edx
retn
sub_463668 endp




sub_46367E proc near
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
mov     [ebp+2], ax
movzx   esi, byte ptr [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_4636CC[esi*4]
test    byte ptr [ebp+1], 2
jnz     short loc_4636E4
mov     dl, [ecx+0ACh]
cmp     dl, 1
jnz     short loc_46370C

loc_4636E4:
mov     al, [ecx+0ADh]
mov     bl, [ecx+0ACh]
cmp     al, bl
jz      short loc_463703
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_463754

loc_463703:
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_463754

loc_46370C:
mov     esi, offset word_560E0C
cmp     dl, [ecx+0ADh]
jz      short loc_46372C
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_463733

loc_46372C:
mov     eax, ecx
call    sub_4DEB53

loc_463733:
mov     ax, [ecx+54h]
mov     [esi], ax
test    ax, ax
jz      short loc_463743
xor     eax, eax
jmp     short loc_463749

loc_463743:
mov     eax, [ecx+56h]
sar     eax, 10h

loc_463749:
mov     [esi+4], ax
mov     eax, ecx
call    sub_4DF795

loc_463754:
mov     dword ptr [ebp+1Ch], 0
mov     eax, ecx
call    sub_42DE56
mov     [ebp+18h], eax
test    byte ptr [ebp+19h], 10h
jnz     short loc_463784
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cwde
cmp     edx, eax
jnz     short loc_463784
mov     dword ptr [ebp+1Ch], 1

loc_463784:
test    byte ptr [ebp+1], 2
jz      short loc_463791
mov     esi, 80h
jmp     short loc_463793

loc_463791:
xor     esi, esi

loc_463793:
push    esi
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+10h]
or      eax, 5880000h
push    eax
lea     eax, [ebp+20h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC
mov     dword ptr [ebp+20h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46367E endp




sub_4637D4 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, [eax+9]
sar     esi, 18h
shl     esi, 3
add     esi, offset unk_516C08
mov     word ptr [edx], 0Ah
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
mov     word ptr [edx+8], 0
mov     word ptr [edx+0Ch], 0FFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, eax
shl     ebx, 2
mov     eax, ds:dword_55A10C
mov     eax, [ebx+eax]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+10h], ax
mov     dword ptr [edx+20h], 0
mov     dword ptr [edx+24h], 0
mov     word ptr [edx+14h], 8
mov     ax, [edx+14h]
mov     [edx+12h], ax
mov     dword ptr [edx+18h], 0
mov     dword ptr [edx+1Ch], 0
lea     eax, [edx+28h]
xor     ebx, ebx
mov     edx, 0Bh
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
mov     ax, [esi+6]
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
mov     ax, [esi]
mov     [ecx+14h], ax
mov     ax, [esi+2]
mov     [ecx+16h], ax
mov     ax, [esi+4]
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
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
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
mov     dword ptr [ecx+78h], offset unk_516C18
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4637D4 endp

align 2
jpt_463A08 dd offset loc_463A0F ; jump table for switch statement
dd offset loc_463A21
dd offset loc_463A2D
dd offset loc_463A35



sub_463936 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx], 2
jz      short loc_463949
mov     eax, ecx
call    sub_463A4A

loc_463949:
mov     edx, ebx
mov     eax, ecx
call    sub_463AC0
test    byte ptr [ebx+1], 2
jnz     short loc_463973
mov     edx, ebx
mov     eax, ecx
call    sub_463C2D
mov     edx, ebx
mov     eax, ecx
call    sub_463E94
mov     edx, ebx
mov     eax, ecx
call    sub_463F63

loc_463973:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_463988
jbe     short loc_4639A7
cmp     al, 2
jz      short loc_4639D3
jmp     loc_4639E8

loc_463988:
test    al, al
jnz     short loc_4639E8
test    byte ptr [ebx], 4
jz      short loc_463998
mov     byte ptr [ecx+0ACh], 1

loc_463998:
test    byte ptr [ebx+1], 4
jz      short loc_4639E8
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_4639E8

loc_4639A7:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_463998
test    byte ptr [ebx], 4
jz      short loc_4639CA
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_463998

loc_4639CA:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_463998

loc_4639D3:
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4639E8
mov     byte ptr [ecx+0ACh], 3

loc_4639E8:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_4639F0[esi*4]
test    byte ptr [ebx], 1
jz      short loc_463A46
mov     al, [ecx+9]
cmp     al, 3           ; switch 4 cases
ja      short def_463A08 ; jumptable 00463A08 default case
and     eax, 0FFh
jmp     jpt_463A08[eax*4] ; switch jump

loc_463A0F:             ; jumptable 00463A08 case 0
test    byte ptr [ebx+1], 2
jz      short loc_463A1B

loc_463A15:
mov     byte ptr [ecx+9], 3
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A1B:
mov     byte ptr [ecx+9], 1
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A21:             ; jumptable 00463A08 case 1
test    byte ptr [ebx+1], 2
jnz     short loc_463A15
mov     byte ptr [ecx+9], 2
jmp     short def_463A08 ; jumptable 00463A08 default case

loc_463A2D:             ; jumptable 00463A08 case 2
test    byte ptr [ebx+1], 2
jnz     short loc_463A15
jmp     short loc_463A1B

loc_463A35:             ; jumptable 00463A08 case 3
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

def_463A08:             ; jumptable 00463A08 default case
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx], 0FEh

loc_463A46:
pop     esi
pop     ecx
pop     ebx
retn
sub_463936 endp




sub_463A4A proc near
push    ebx
push    ecx
push    edi
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+20h]
and     eax, 0FFFFFFh
jz      short loc_463AB9
test    byte ptr [edx+23h], 18h
jz      short loc_463AA5
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_463A8D
mov     di, [ecx]
and     edi, 0FFFFFD1Ch
mov     [ecx], di
mov     eax, edi
or      eax, 201h
mov     [ecx], ax

loc_463A8D:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_463AB2

loc_463AA5:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_463AB2:
or      byte ptr [ecx], 4
pop     edi
pop     ecx
pop     ebx
retn

loc_463AB9:
and     byte ptr [edx], 0FBh
pop     edi
pop     ecx
pop     ebx
retn
sub_463A4A endp




sub_463AC0 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
test    byte ptr [edx], 10h
jz      short loc_463ADE
cmp     word ptr [edx+6], 0
jle     short loc_463ADB
dec     word ptr [ecx+6]
pop     esi
pop     ecx
pop     ebx
retn

loc_463ADB:
and     byte ptr [ecx], 0EFh

loc_463ADE:
test    byte ptr [ecx], 8
jz      short loc_463B1F
mov     edx, [ebx+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
cwde
mov     edx, [ebx+16h]
sar     edx, 10h
mov     esi, [ebx+12h]
sar     esi, 10h
mov     ebx, eax
mov     eax, esi
call    sub_463B56
test    eax, eax
jz      short loc_463B1F
and     byte ptr [ecx], 0F7h

loc_463B1F:
pop     esi
pop     ecx
pop     ebx
retn
sub_463AC0 endp

db 8Dh, 40h, 0
jpt_463B6C dd offset loc_463B73 ; jump table for switch statement
dd offset loc_463B89
dd offset loc_463BA2
dd offset loc_463B95
jpt_463BD1 dd offset loc_463BD8 ; jump table for switch statement
dd offset loc_463BAE
dd offset loc_463BDE
dd offset loc_463BDE
jpt_463BF1 dd offset loc_463BF8 ; jump table for switch statement
dd offset loc_463BFE
dd offset loc_463C15
dd offset loc_463C21



sub_463B56 proc near
push    ecx
cmp     ax, 200h
jge     short loc_463BBB
cmp     bx, 3           ; switch 4 cases
ja      def_463B6C      ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463B6C[ecx*4] ; switch jump

loc_463B73:             ; jumptable 00463B6C case 0
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463B7F:
cmp     dx, 1000h
jmp     loc_463C0C

loc_463B89:             ; jumptable 00463B6C case 1
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463B95:             ; jumptable 00463B6C case 3
cmp     dx, 20B4h
jg      loc_463C0E
jmp     short loc_463B7F

loc_463BA2:             ; jumptable 00463B6C case 2
cwde
cmp     eax, 0FFFFF7B8h
jl      loc_463C0E

loc_463BAE:             ; jumptable 00463BD1 case 1
cmp     dx, 20B4h

loc_463BB3:             ; jumptable 00463B6C default case
jle     def_463B6C      ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
jmp     short loc_463C0E

loc_463BBB:
cmp     dx, 1000h
jle     short loc_463BE6
cmp     bx, 3           ; switch 4 cases
ja      def_463B6C      ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463BD1[ecx*4] ; switch jump

loc_463BD8:             ; jumptable 00463BD1 case 0
cmp     ax, 1A00h
jmp     short loc_463BB3

loc_463BDE:             ; jumptable 00463BD1 cases 2,3
cmp     ax, 1A00h
jg      short loc_463C0E
jmp     short loc_463BAE ; jumptable 00463BD1 case 1

loc_463BE6:             ; switch 4 cases
cmp     bx, 3
ja      short def_463B6C ; jumptable 00463B6C default case
; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
xor     ecx, ecx
mov     cx, bx
jmp     jpt_463BF1[ecx*4] ; switch jump

loc_463BF8:             ; jumptable 00463BF1 case 0
cmp     ax, 1A00h
jg      short loc_463C0E

loc_463BFE:             ; jumptable 00463BF1 case 1
cmp     ax, 200h
jl      short loc_463C0E

loc_463C04:
movsx   eax, dx
cmp     eax, 0FFFFFE00h

loc_463C0C:             ; jumptable 00463B6C default case
jge     short def_463B6C ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case

loc_463C0E:
mov     eax, 1
pop     ecx
retn

loc_463C15:             ; jumptable 00463BF1 case 2
cmp     ax, 1A00h
jg      short loc_463C0E
cmp     ax, 200h
jmp     short loc_463C0C

loc_463C21:             ; jumptable 00463BF1 case 3
cmp     ax, 1A00h
jg      short loc_463C0E
jmp     short loc_463C04

def_463B6C:             ; jumptable 00463B6C default case
xor     eax, eax        ; jumptable 00463BD1 default case
; jumptable 00463BF1 default case
pop     ecx
retn
sub_463B56 endp




sub_463C2D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     byte ptr [eax+0ACh], 1
jnz     short loc_463C45
mov     dl, [edx]
and     dl, 7Fh
mov     [ecx], dl

loc_463C45:
test    byte ptr [ecx], 80h
jz      short loc_463C89
test    byte ptr [ecx+1], 1
jz      short loc_463C65
test    byte ptr [ecx+8], 3
jnz     short loc_463C5F
mov     edx, ecx
mov     eax, ebx
call    sub_463CE2

loc_463C5F:
inc     word ptr [ecx+8]
jmp     short loc_463CA5

loc_463C65:
mov     di, [ebx+54h]
cmp     di, 200h
jge     short loc_463C7D
mov     eax, edi
add     eax, 20h ; ' '
mov     [ebx+54h], ax
jmp     short loc_463CA5

loc_463C7D:
mov     word ptr [ebx+54h], 200h
or      byte ptr [ecx+1], 1
jmp     short loc_463CA5

loc_463C89:
mov     word ptr [ecx+8], 0
and     byte ptr [ecx+1], 0FEh
mov     dx, [ebx+54h]
test    dx, dx
jle     short loc_463CA5
mov     esi, edx
sub     esi, 20h ; ' '
mov     [ebx+54h], si

loc_463CA5:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_463CCD
mov     al, [ecx+1]
test    al, 8
jnz     short loc_463CCD
mov     ah, al
or      ah, 8
mov     [ecx+1], ah
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_463CCD:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_463CDD
and     byte ptr [ecx+1], 0F7h

loc_463CDD:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463C2D endp




sub_463CE2 proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_463DBF
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 480h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     edi, 1

loc_463DBF:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_463E69
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFB80h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
jmp     short loc_463E6D

loc_463E69:
test    edi, edi
jz      short loc_463E8B

loc_463E6D:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_463E7A
lea     edx, [ecx+14h]
jmp     short loc_463E81

loc_463E7A:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_463E81:
mov     eax, 0D0h
call    sub_4D8BC3

loc_463E8B:
add     esp, 44h

loc_463E8E:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463CE2 endp




sub_463E94 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx]
test    ah, 40h
jz      short loc_463ECC
mov     dx, [ecx+56h]
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     edx, [ecx+56h]
sar     edx, 10h
cmp     edx, 0FFFFFF80h
jle     short loc_463EC1
sub     word ptr [ecx+58h], 8

loc_463EC1:
mov     word ptr [ebx+0Ch], 0FFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_463ECC:
test    ah, 20h
jz      short loc_463EF7
mov     dx, [ecx+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     di, [ecx+58h]
cmp     di, 80h
jge     short loc_463EC1
mov     eax, edi
add     eax, 8
mov     [ecx+58h], ax
jmp     short loc_463EC1

loc_463EF7:
mov     edx, [edx+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_463F3E
mov     si, [ecx+58h]
test    si, si
jz      short loc_463F23
jle     short loc_463F18
mov     edx, esi
sub     edx, 8
mov     [ecx+58h], dx
jmp     short loc_463F23

loc_463F18:
mov     eax, esi
add     eax, 8
mov     [ecx+58h], ax

loc_463F23:
cmp     word ptr [ecx+58h], 0
jnz     short loc_463F5E
mov     edx, [ebx]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     [ebx+0Ch], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_463F3E:
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     dx, ds:word_516C24[edx*2]
mov     [ecx+58h], dx
inc     word ptr [ebx+0Ch]
and     byte ptr [ebx+0Dh], 7Fh

loc_463F5E:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_463E94 endp




sub_463F63 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     edi, eax
mov     ebp, edx
test    byte ptr [edx], 60h
jz      short loc_463F8A
mov     eax, [edi+54h]
sar     eax, 10h
add     eax, 80h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
jmp     short loc_463F99

loc_463F8A:
mov     eax, [edi+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1800h

loc_463F99:
mov     esi, esp
call    sub_4DD510
mov     eax, [edi+1Ch]
add     [esp+2Ch+var_2C], eax
mov     eax, [edi+24h]
add     [esp+2Ch+var_24], eax
lea     edx, [esp+2Ch+var_1C]
mov     eax, esp
call    sub_4DD57B
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_516C18
lea     eax, [esp+2Ch+var_1C]
call    sub_42C5B7
cmp     eax, 0FFFFFD80h
jle     short loc_463FDB
mov     eax, 0FFFFFCC0h
jmp     short loc_463FE0

loc_463FDB:
mov     eax, 0FFFFFB40h

loc_463FE0:
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jle     short loc_464021
mov     si, [ebp+12h]
cmp     si, 18h
jge     short loc_464000
mov     edx, esi
add     edx, 8
mov     [ebp+12h], dx

loc_464000:
mov     word ptr [ebp+14h], 8
mov     dx, [ebp+12h]
sub     [edi+16h], dx
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jge     short loc_464061

loc_46401B:
mov     [edi+16h], ax
jmp     short loc_464061

loc_464021:
jge     short loc_464053
mov     dx, [ebp+14h]
cmp     dx, 18h
jge     short loc_464036
mov     ebx, edx
add     ebx, 8
mov     [ebp+14h], bx

loc_464036:
mov     word ptr [ebp+12h], 8
mov     dx, [ebp+14h]
add     [edi+16h], dx
mov     esi, [edi+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jle     short loc_464061
jmp     short loc_46401B

loc_464053:
mov     word ptr [ebp+14h], 8
mov     ax, [ebp+14h]
mov     [ebp+12h], ax

loc_464061:
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
add     esp, 18h
jmp     loc_463E8E
sub_463F63 endp




sub_464075 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, [eax+54h]
sar     esi, 10h
lea     ebx, [eax+1Ch]
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     esi, eax
test    esi, esi
jge     short loc_4640B0
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx
neg     eax
jmp     short loc_4640C6

loc_4640B0:
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx

loc_4640C6:
cmp     eax, 50h ; 'P'
jge     short loc_4640D5
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4640D5:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_464075 endp




sub_4640DC proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, 610h
call    sub_47E888
test    eax, eax
jnz     short loc_46411D
mov     ax, [edx+4]
xor     ah, ah
and     al, 3Fh
cwde
mov     ebx, dword ptr ds:unk_564C32[eax*2]
sar     ebx, 10h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 3
sar     eax, 0Ch
sub     eax, 400h
mov     [ecx+16h], ax
inc     word ptr [edx+4]
jmp     short loc_46412C

loc_46411D:
mov     word ptr [ecx+16h], 0FC00h
mov     word ptr [edx+4], 0
or      byte ptr [edx], 1

loc_46412C:
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
pop     ecx
pop     ebx
retn
sub_4640DC endp




sub_46413B proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     [esp+18h+var_18], offset byte_5F8364
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46416F
mov     edx, [esi]
sar     edx, 10h
mov     ebx, 28h ; '('
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     edx, 5Ah ; 'Z'
mov     [esi+4], dx
inc     byte ptr [edi+0Ah]

loc_46416F:
lea     eax, [esi+28h]
test    byte ptr [esi], 8
jz      loc_4641E6
mov     edx, edi
call    sub_4E19CA
mov     ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, edi
call    sub_4DD43B
mov     al, [esi]
test    al, 10h
jnz     short loc_4641DB
test    ebp, ebp
jz      short loc_4641A7
mov     bl, al
or      bl, 80h
mov     [esi], bl
jmp     short loc_4641DB

loc_4641A7:
cmp     word ptr [esi+4], 0
jge     short loc_4641DB
mov     ah, al
and     ah, 7Fh
mov     [esi], ah
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esp+18h+var_18]
add     edx, 14h
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_4641D8
or      byte ptr [esi], 41h
jmp     short loc_4641DB

loc_4641D8:
or      byte ptr [esi], 21h

loc_4641DB:
test    byte ptr [esi], 80h
jnz     short loc_464218
dec     word ptr [esi+4]
jmp     short loc_464218

loc_4641E6:
call    sub_4E19B4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, edi
call    sub_4DD43B
mov     bl, [esi]
and     bl, 7Fh
mov     [esi], bl
test    byte ptr [esi+2], 1
jz      short loc_464211
mov     ch, bl
or      ch, 41h
mov     [esi], ch
jmp     short loc_464218

loc_464211:
mov     cl, bl
or      cl, 21h
mov     [esi], cl

loc_464218:
add     esp, 4
jmp     loc_463E8E
sub_46413B endp




sub_464220 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_464242
mov     ax, [edx+2]
xor     ah, ah
and     al, 1Fh
add     eax, 40h ; '@'
mov     [edx+4], ax
inc     byte ptr [edi+0Ah]

loc_464242:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, edi
call    sub_4DD43B
lea     eax, [esi+28h]
test    byte ptr [esi], 8
jz      short loc_464283
mov     edx, edi
call    sub_4E19CA
mov     eax, edi
call    sub_464075
test    eax, eax
jnz     short loc_464273
cmp     word ptr [esi+4], 0
jnz     short loc_4642A3

loc_464273:
mov     cl, [esi]
and     cl, 9Eh
mov     [esi], cl
mov     ch, cl
or      ch, 1
mov     [esi], ch
jmp     short loc_4642A3

loc_464283:
call    sub_4E19B4
cmp     word ptr [esi+4], 0
jnz     short loc_4642A3
mov     bl, [esi]
and     bl, 86h
mov     [esi], bl
mov     bh, bl
or      bh, 19h
mov     [esi], bh
mov     word ptr [esi+6], 20h ; ' '

loc_4642A3:
dec     word ptr [esi+4]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464220 endp

db 8Bh, 0C0h
jpt_4642E4 dd offset loc_4642EB ; jump table for switch statement
dd offset loc_4643A8
dd offset loc_46446C
dd offset loc_464551
dd offset loc_4645E3
dd offset loc_464712



sub_4642C6 proc near

var_30= dword ptr -30h
var_28= dword ptr -28h
var_20= byte ptr -20h
var_1E= dword ptr -1Eh
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     [esp+30h+var_18], edx
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_4642E4      ; jumptable 004642E4 default case
and     eax, 0FFh
jmp     jpt_4642E4[eax*4] ; switch jump

loc_4642EB:             ; jumptable 004642E4 case 0
call    sub_4DE13B
test    eax, eax
jz      short loc_464307
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_464307:
lea     edx, [ebp+14h]
mov     eax, 0A1h
call    sub_4D8BC3
mov     eax, [esp+30h+var_18]
or      byte ptr [eax], 4
mov     word ptr [eax+4], 78h ; 'x'
mov     word ptr [eax+16h], 8
mov     word ptr [eax+0Ah], 0
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jz      short loc_46439B
mov     eax, 1
jmp     short loc_4643A0

loc_46439B:
mov     eax, 2

loc_4643A0:
mov     [ebp+0Ah], al
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_4643A8:             ; jumptable 004642E4 case 1
mov     ax, [ebp+56h]
add     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jnz     short loc_464444
mov     eax, [esp+30h+var_18]
or      byte ptr [eax], 8
mov     word ptr [eax+4], 78h ; 'x'

loc_46443C:
inc     byte ptr [ebp+0Ah]
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_464444:
mov     eax, [esp+30h+var_18]
mov     bx, [eax+4]
test    bx, bx
jg      short loc_464460

loc_464451:
mov     word ptr [eax+4], 0
mov     byte ptr [ebp+0Ah], 4
jmp     loc_46476A

loc_464460:
mov     ecx, ebx
dec     ecx
mov     [eax+4], cx
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_46446C:             ; jumptable 004642E4 case 2
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
mov     esi, esp
call    sub_4DD510
mov     eax, [ebp+1Ch]
add     [esp+30h+var_30], eax
mov     eax, [ebp+24h]
add     [esp+30h+var_28], eax
lea     edx, [esp+30h+var_20]
mov     eax, esp
call    sub_4DD57B
mov     edx, [ebp+54h]
sar     edx, 10h
add     edx, 200h
and     edx, 0FFFh
mov     eax, edx
sar     edx, 1Fh
shl     edx, 0Ah
sbb     eax, edx
sar     eax, 0Ah
movsx   ebx, ax
mov     edx, [esp+30h+var_1E]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
call    sub_463B56
test    eax, eax
jz      short loc_464505
mov     ax, [ebp+56h]
add     eax, 20h ; ' '
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0C0h
mov     eax, ebp
call    sub_4DD43B
jmp     short loc_464534

loc_464505:
mov     ecx, 0FFFFh
xor     ebx, ebx
mov     edx, offset unk_516C18
lea     eax, [esp+30h+var_20]
call    sub_42C5B7
cmp     eax, 0FFFFFD80h
jle     short loc_464534
mov     eax, [esp+30h+var_18]
mov     word ptr [eax+0Ah], 0
or      byte ptr [eax+1], 4
jmp     loc_46443C

loc_464534:
mov     eax, [esp+30h+var_18]
mov     di, [eax+4]
test    di, di
jle     loc_464451
mov     edx, edi
dec     edx
mov     [eax+4], dx
jmp     def_4642E4      ; jumptable 004642E4 default case

loc_464551:             ; jumptable 004642E4 case 3
cmp     word ptr [edx+0Ah], 0Ah
jnz     short loc_46455E
mov     word ptr [edx+16h], 8

loc_46455E:
mov     eax, [esp+30h+var_18]
mov     dx, [eax+0Ah]
cmp     dx, 1Eh
jnz     short loc_464574
mov     word ptr [eax+16h], 0Ch
jmp     short loc_464580

loc_464574:
cmp     dx, 32h ; '2'
jnz     short loc_464580
mov     word ptr [eax+16h], 10h

loc_464580:
mov     eax, [esp+30h+var_18]
cmp     word ptr [eax+0Ah], 3Ch ; '<'
jge     short loc_46459B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, ebp
call    sub_4DD43B

loc_46459B:
mov     eax, [esp+30h+var_18]
mov     ax, [eax+16h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFF40h
jg      short loc_4645D4
mov     eax, [esp+30h+var_18]
test    byte ptr [eax+19h], 10h
jnz     short loc_4645D4
cmp     dword ptr [eax+1Ch], 1
jnz     def_4642E4      ; jumptable 004642E4 default case

loc_4645D4:
mov     eax, [esp+30h+var_18]
mov     word ptr [eax+4], 0
jmp     loc_46443C

loc_4645E3:             ; jumptable 004642E4 case 4
mov     ax, [edx+16h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+30h+var_18]
cmp     word ptr [eax+4], 4
jnz     loc_464686
and     byte ptr [ebp+0], 0FDh
call    sub_4DDF54
test    eax, eax
jz      short loc_46467C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+4], 1
mov     byte ptr [eax+3], 1
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
sub     dword ptr [eax+20h], 0C8h
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
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
call    sub_4DD43B

loc_46467C:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8

loc_464686:
mov     eax, [esp+30h+var_18]
test    byte ptr [eax+4], 3
jnz     short loc_4646F7
call    sub_4DE13B
mov     edx, eax
mov     esi, eax
test    eax, eax
jz      short loc_4646EA
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+14h]
add     eax, ebx
mov     [edx+48h], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+16h]
add     eax, ebx
mov     [edx+4Ah], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 3Fh
mov     ax, [ebp+18h]
add     eax, ebx
mov     [edx+4Ch], ax

loc_4646EA:
lea     edx, [esi+48h]
mov     eax, 0A1h
call    sub_4D8BC3

loc_4646F7:
mov     eax, [esp+30h+var_18]
mov     cx, [eax+4]
cmp     cx, 9
jz      loc_46443C
mov     esi, ecx
inc     esi
mov     [eax+4], si
jmp     short def_4642E4 ; jumptable 004642E4 default case

loc_464712:             ; jumptable 004642E4 case 5
mov     eax, edx
mov     dl, [edx]
or      dl, 1
mov     [eax], dl

def_4642E4:             ; jumptable 004642E4 default case
cmp     byte ptr [ebp+0Ah], 4
jnb     short loc_46476A
call    sub_4DE13B
test    eax, eax
jz      short loc_46476A
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     dx, [ebp+14h]
mov     [eax+1Ch], dx
mov     dx, [ebp+16h]
mov     [eax+1Eh], dx
mov     dx, [ebp+18h]
mov     [eax+20h], dx
mov     edx, [esp+30h+var_18]
mov     dl, [edx+2]
and     dl, 0Fh
mov     [eax+9], dl

loc_46476A:
mov     eax, [esp+30h+var_18]
inc     word ptr [eax+0Ah]
add     esp, 1Ch
jmp     loc_463E8E
sub_4642C6 endp



; Attributes: thunk

sub_46477A proc near
jmp     sub_4DE2F6
sub_46477A endp




sub_46477F proc near
push    edx
mov     word ptr [eax+15Eh], 4210h
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46478E[edx*4]
pop     edx
retn
sub_46477F endp




sub_464797 proc near
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
mov     word ptr [ecx+56h], 0C00h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+44h], 1640h
mov     word ptr [ecx+46h], 0EF50h
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0FFC0h
mov     word ptr [ecx+4Eh], 30h ; '0'
mov     word ptr [ecx+50h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_464797 endp



; Attributes: thunk

sub_46480A proc near
jmp     sub_4DEADD
sub_46480A endp




sub_46480F proc near
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
mov     edx, [esi+44h]
sar     edx, 10h
shl     edx, 0Ch
mov     ecx, [esi+20h]
sub     ecx, edx
mov     [esi+20h], ecx
mov     edx, ecx
sar     edx, 10h
mov     [esi+16h], dx
mov     dx, [esi+4Ch]
add     [esi+44h], dx
mov     dx, [esi+4Eh]
add     [esi+46h], dx
mov     dx, [esi+50h]
add     [esi+48h], dx
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46480F endp




sub_464862 proc near
mov     word ptr [eax+4Ch], 0FFC0h
mov     byte ptr [eax+8], 4
jmp     sub_4DEADD
sub_464862 endp




sub_464871 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ax, [eax+4Ch]
add     [esi+44h], ax
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     ax, [esi+50h]
add     [esi+48h], ax
mov     ax, [esi+44h]
neg     eax
movsx   edx, ax
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 0Ch
mov     edx, [esi+20h]
sub     edx, eax
mov     [esi+20h], edx
mov     eax, edx
sar     eax, 10h
mov     [esi+16h], ax
mov     eax, esi
call    sub_4DEADD
mov     eax, ds:dword_560C04
mov     edx, [esi+1Ch]
mov     [eax+1Ch], edx
mov     edx, [esi+20h]
add     edx, 2600000h
mov     [eax+20h], edx
mov     edx, [esi+24h]
mov     [eax+24h], edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_464871 endp




sub_4648F1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
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
mov     [ebp+16h], ax
movzx   esi, byte ptr [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_46493F[esi*4]
test    byte ptr [ebp+14h], 80h
jnz     short loc_464957
mov     dl, [ecx+0ACh]
cmp     dl, 1
jnz     short loc_46497F

loc_464957:
mov     al, [ecx+0ADh]
mov     bl, [ecx+0ACh]
cmp     al, bl
jz      short loc_464976
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4649C7

loc_464976:
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4649C7

loc_46497F:
mov     esi, offset word_560E0C
cmp     dl, [ecx+0ADh]
jz      short loc_46499F
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_4649A6

loc_46499F:
mov     eax, ecx
call    sub_4DEB53

loc_4649A6:
mov     ax, [ecx+54h]
mov     [esi], ax
test    ax, ax
jz      short loc_4649B6
xor     eax, eax
jmp     short loc_4649BC

loc_4649B6:
mov     eax, [ecx+56h]
sar     eax, 10h

loc_4649BC:
mov     [esi+4], ax
mov     eax, ecx
call    sub_4DF795

loc_4649C7:
mov     eax, ecx
call    sub_42C592
mov     esi, eax
mov     edx, eax
mov     dword ptr [ebp+30h], 0
mov     eax, ecx
call    sub_42DE56
mov     [ebp+2Ch], eax
test    byte ptr [ebp+2Dh], 10h
jnz     short loc_4649FD
mov     ebx, [ecx+14h]
sar     ebx, 10h
movsx   eax, si
cmp     ebx, eax
jnz     short loc_4649FD
mov     dword ptr [ebp+30h], 1

loc_4649FD:
movsx   eax, dx
cmp     eax, 0FFFFFFFFh
jnz     short loc_464A09
xor     eax, eax
jmp     short loc_464A0E

loc_464A09:
mov     eax, 1

loc_464A0E:
mov     [ebp+34h], eax
test    byte ptr [ebp+14h], 80h
jz      short loc_464A1E
mov     eax, 80h
jmp     short loc_464A20

loc_464A1E:
xor     eax, eax

loc_464A20:
push    eax
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+1Eh]
or      eax, 5880000h
push    eax
lea     eax, [ebp+38h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C0h
call    sub_4E01FC
mov     dword ptr [ebp+38h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4648F1 endp




sub_464A61 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+14h], 2
mov     word ptr [edx+18h], 0
mov     word ptr [edx+1Ah], 0
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+1Eh], ax
cmp     byte ptr [ecx+0Ch], 1
jnz     short loc_464AA2
movsx   ax, byte ptr [ecx+0Dh]
shl     eax, 9
mov     [edx+26h], ax
jmp     short loc_464AA8

loc_464AA2:
mov     word ptr [edx+26h], 0

loc_464AA8:
mov     word ptr [edx+22h], 8
mov     ax, [edx+22h]
mov     [edx+20h], ax
movsx   ax, byte ptr [ecx+0Eh]
imul    eax, 0C8h
sub     eax, 6A4h
mov     [edx+28h], ax
mov     dword ptr [edx+2Ch], 0
mov     dword ptr [edx+30h], 0
mov     dword ptr [edx+34h], 0
mov     word ptr [edx+2Ah], 0FFFFh
mov     dword ptr [edx+38h], 0
mov     dword ptr [edx+3Ch], 0
lea     eax, [edx+40h]
xor     ebx, ebx
mov     edx, 0Bh
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516C98
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
pop     ecx
pop     ebx
retn
sub_464A61 endp




sub_464B7F proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx+14h], 2
jz      short loc_464B93
mov     eax, ecx
call    sub_464C82

loc_464B93:
test    byte ptr [ebx+14h], 80h
jnz     short loc_464BB4
mov     edx, ebx
mov     eax, ecx
call    sub_464CF1
mov     edx, ebx
mov     eax, ecx
call    sub_464F5C
mov     edx, ebx
mov     eax, ecx
call    sub_46502D

loc_464BB4:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_464BC9
jbe     short loc_464BE9
cmp     al, 2
jz      short loc_464C16
jmp     loc_464C2B

loc_464BC9:
test    al, al
jnz     short loc_464C2B
test    byte ptr [ebx+14h], 4
jz      short loc_464BDA
mov     byte ptr [ecx+0ACh], 1

loc_464BDA:
test    byte ptr [ebx+15h], 1
jz      short loc_464C2B
mov     byte ptr [ecx+0ACh], 2
jmp     short loc_464C2B

loc_464BE9:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_464BDA
test    byte ptr [ebx+14h], 4
jz      short loc_464C0D
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_464BDA

loc_464C0D:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_464BDA

loc_464C16:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_464C2B
mov     byte ptr [ecx+0ACh], 3

loc_464C2B:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_464C33[esi*4]
mov     dh, [ebx+14h]
test    dh, 1
jz      short loc_464C7E
mov     al, [ecx+9]
cmp     al, 1
jb      short loc_464C51
jbe     short loc_464C66
cmp     al, 2
jz      short loc_464C6D
jmp     short loc_464C74

loc_464C51:
test    al, al
jnz     short loc_464C74
test    dh, 80h
jz      short loc_464C60

loc_464C5A:
mov     byte ptr [ecx+9], 2
jmp     short loc_464C74

loc_464C60:
mov     byte ptr [ecx+9], 1
jmp     short loc_464C74

loc_464C66:
test    dh, 80h
jnz     short loc_464C5A
jmp     short loc_464C70

loc_464C6D:
mov     [ecx+8], al

loc_464C70:
mov     byte ptr [ecx+9], 0

loc_464C74:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx+14h], 0FEh

loc_464C7E:
pop     esi
pop     ecx
pop     ebx
retn
sub_464B7F endp




sub_464C82 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+38h]
and     eax, 0FFFFFFh
jz      short loc_464CEA
test    byte ptr [edx+3Bh], 18h
jz      short loc_464CD6
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_464CBE
mov     dh, [ecx+14h]
and     dh, 44h
mov     [ecx+14h], dh
mov     al, dh
or      al, 81h
mov     [ecx+14h], al

loc_464CBE:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_464CE3

loc_464CD6:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_464CE3:
or      byte ptr [ecx+14h], 4
pop     ecx
pop     ebx
retn

loc_464CEA:
and     byte ptr [edx+14h], 0FBh
pop     ecx
pop     ebx
retn
sub_464C82 endp




sub_464CF1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     byte ptr [eax+0ACh], 1
jnz     short loc_464D0B
mov     dl, [edx+14h]
and     dl, 0DFh
mov     [ecx+14h], dl

loc_464D0B:
mov     dh, [ecx+14h]
test    dh, 20h
jz      short loc_464D51
test    dh, 40h
jz      short loc_464D2D
test    byte ptr [ecx+1Ah], 3
jnz     short loc_464D27
mov     edx, ecx
mov     eax, ebx
call    sub_464DAA

loc_464D27:
inc     word ptr [ecx+1Ah]
jmp     short loc_464D6D

loc_464D2D:
mov     di, [ebx+54h]
cmp     di, 200h
jge     short loc_464D45
mov     eax, edi
add     eax, 20h ; ' '
mov     [ebx+54h], ax
jmp     short loc_464D6D

loc_464D45:
mov     word ptr [ebx+54h], 200h
or      byte ptr [ecx+14h], 40h
jmp     short loc_464D6D

loc_464D51:
mov     word ptr [ecx+1Ah], 0
and     byte ptr [ecx+14h], 0BFh
mov     dx, [ebx+54h]
test    dx, dx
jle     short loc_464D6D
mov     esi, edx
sub     esi, 20h ; ' '
mov     [ebx+54h], si

loc_464D6D:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_464D95
mov     al, [ecx+15h]
test    al, 2
jnz     short loc_464D95
mov     ah, al
or      ah, 2
mov     [ecx+15h], ah
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_464D95:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_464DA5
and     byte ptr [ecx+15h], 0FDh

loc_464DA5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464CF1 endp




sub_464DAA proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_464E87
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 480h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     edi, 1

loc_464E87:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_464F31
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 24h ; '$'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFB80h
mov     ebx, 1900h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 6000h
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
jmp     short loc_464F35

loc_464F31:
test    edi, edi
jz      short loc_464F53

loc_464F35:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_464F42
lea     edx, [ecx+14h]
jmp     short loc_464F49

loc_464F42:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_464F49:
mov     eax, 0D0h
call    sub_4D8BC3

loc_464F53:
add     esp, 44h

loc_464F56:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464DAA endp




sub_464F5C proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
mov     ah, [edx+14h]
test    ah, 10h
jz      short loc_464F95
mov     dx, [ecx+56h]
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     edx, [ecx+56h]
sar     edx, 10h
cmp     edx, 0FFFFFF80h
jle     short loc_464F8A
sub     word ptr [ecx+58h], 8

loc_464F8A:
mov     word ptr [ebx+2Ah], 0FFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_464F95:
test    ah, 8
jz      short loc_464FC0
mov     dx, [ecx+56h]
sub     edx, 20h ; ' '
and     dh, 0Fh
mov     [ecx+56h], dx
mov     di, [ecx+58h]
cmp     di, 80h
jge     short loc_464F8A
mov     eax, edi
add     eax, 8
mov     [ecx+58h], ax
jmp     short loc_464F8A

loc_464FC0:
mov     edx, [edx+28h]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_465008
mov     si, [ecx+58h]
test    si, si
jz      short loc_464FEC
jle     short loc_464FE1
mov     edx, esi
sub     edx, 8
mov     [ecx+58h], dx
jmp     short loc_464FEC

loc_464FE1:
mov     eax, esi
add     eax, 8
mov     [ecx+58h], ax

loc_464FEC:
cmp     word ptr [ecx+58h], 0
jnz     short loc_465028
mov     edx, [ebx+14h]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     [ebx+2Ah], dx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_465008:
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     dx, ds:word_516CA4[edx*2]
mov     [ecx+58h], dx
inc     word ptr [ebx+2Ah]
and     byte ptr [ebx+2Bh], 7Fh

loc_465028:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_464F5C endp




sub_46502D proc near
push    ebx
push    ecx
push    esi
mov     ecx, [eax+12h]
sar     ecx, 10h
sub     ecx, 1200h
test    ecx, ecx
jge     short loc_465042
neg     ecx

loc_465042:
cmp     ecx, 2C00h
jge     short loc_46506C
mov     ecx, [eax+16h]
sar     ecx, 10h
add     ecx, 600h
test    ecx, ecx
jge     short loc_46505C
neg     ecx

loc_46505C:
cmp     ecx, 2A00h
jge     short loc_46506C
mov     ebx, [edx+26h]
sar     ebx, 10h
jmp     short loc_465071

loc_46506C:
mov     ebx, 0FFFFF830h

loc_465071:
mov     esi, [eax+14h]
sar     esi, 10h
movsx   ecx, bx
cmp     esi, ecx
jle     short loc_4650B2
mov     cx, [edx+20h]
cmp     cx, 20h ; ' '
jge     short loc_465091
mov     esi, ecx
add     esi, 8
mov     [edx+20h], si

loc_465091:
mov     word ptr [edx+22h], 8
mov     dx, [edx+20h]
sub     [eax+16h], dx
mov     edx, [eax+14h]
sar     edx, 10h
movsx   ecx, bx
cmp     edx, ecx
jge     short loc_4650F2

loc_4650AC:
mov     [eax+16h], bx
jmp     short loc_4650F2

loc_4650B2:
jge     short loc_4650E4
mov     cx, [edx+22h]
cmp     cx, 20h ; ' '
jge     short loc_4650C7
mov     esi, ecx
add     esi, 8
mov     [edx+22h], si

loc_4650C7:
mov     word ptr [edx+20h], 8
mov     dx, [edx+22h]
add     [eax+16h], dx
mov     ecx, [eax+14h]
sar     ecx, 10h
movsx   edx, bx
cmp     ecx, edx
jle     short loc_4650F2
jmp     short loc_4650AC

loc_4650E4:
mov     word ptr [edx+22h], 8
mov     bx, [edx+22h]
mov     [edx+20h], bx

loc_4650F2:
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
pop     esi
pop     ecx
pop     ebx
retn
sub_46502D endp




sub_465102 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, [eax+54h]
sar     esi, 10h
lea     ebx, [eax+1Ch]
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     esi, eax
test    esi, esi
jge     short loc_46513D
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx
neg     eax
jmp     short loc_465153

loc_46513D:
mov     ecx, [ecx+54h]
sar     ecx, 10h
mov     edx, offset dword_5F8380
mov     eax, ebx
call    sub_4DDD5D
sub     ecx, eax
mov     eax, ecx

loc_465153:
cmp     eax, 50h ; 'P'
jge     short loc_465162
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_465162:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_465102 endp




sub_465169 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     ebp, offset byte_5F8364
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46519C
mov     edx, [edx+14h]
sar     edx, 10h
mov     ebx, 28h ; '('
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     edx, 5Ah ; 'Z'
mov     [esi+18h], dx
inc     byte ptr [edi+0Ah]

loc_46519C:
lea     eax, [esi+40h]
mov     edx, edi
call    sub_4E19CA
mov     [esp+18h+var_18], eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 300h
mov     eax, edi
call    sub_4DD43B
mov     dx, [esi+26h]
test    dx, dx
jl      short loc_4651CB
mov     ebx, edx
sub     ebx, 30h ; '0'
mov     [esi+26h], bx

loc_4651CB:
cmp     [esp+18h+var_18], 0
jz      short loc_4651D7
or      byte ptr [esi+14h], 20h
jmp     short loc_465213

loc_4651D7:
and     byte ptr [esi+14h], 0DFh
cmp     byte ptr [edi+0Ch], 2
jnz     short loc_465213
cmp     word ptr [esi+18h], 0
jge     short loc_465213
cmp     byte ptr [edi+0Fh], 0
jnz     short loc_465213
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
mov     ecx, 800h
call    sub_4DE552
test    ax, ax
jle     short loc_46520F
or      byte ptr [esi+14h], 11h
jmp     short loc_465213

loc_46520F:
or      byte ptr [esi+14h], 9

loc_465213:
cmp     byte ptr [edi+0Ch], 1
jnz     short loc_465231
cmp     word ptr [esi+26h], 0
jge     short loc_465231
mov     dl, [esi+14h]
and     dl, 0D6h
mov     [esi+14h], dl
mov     dh, dl
or      dh, 9
mov     [esi+14h], dh

loc_465231:
dec     word ptr [esi+18h]
add     esp, 4
jmp     loc_464F56
sub_465169 endp




sub_46523D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46526D
cmp     byte ptr [edi+0Ch], 1
jnz     short loc_465259
mov     word ptr [esi+18h], 40h ; '@'
jmp     short loc_46526A

loc_465259:
mov     ax, [esi+16h]
xor     ah, ah
and     al, 1Fh
add     eax, 40h ; '@'
mov     [esi+18h], ax

loc_46526A:
inc     byte ptr [edi+0Ah]

loc_46526D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 120h
mov     eax, edi
call    sub_4DD43B
mov     bl, [edi+0Ch]
cmp     bl, 1
jz      short loc_46528B
cmp     byte ptr [edi+0Fh], 1
jnz     short loc_4652B1

loc_46528B:
lea     eax, [esi+40h]
call    sub_4E19B4
cmp     word ptr [esi+18h], 0
jnz     short loc_4652E2
mov     byte ptr [edi+0Ch], 0
mov     ah, [esi+14h]
and     ah, 0E6h
mov     [esi+14h], ah
mov     dl, ah
or      dl, 1
mov     [esi+14h], dl
jmp     short loc_4652E2

loc_4652B1:
cmp     bl, 2
jnz     short loc_4652E2
lea     eax, [esi+40h]
mov     edx, edi
call    sub_4E19CA
mov     eax, edi
call    sub_465102
test    eax, eax
jnz     short loc_4652D2
cmp     word ptr [esi+18h], 0
jnz     short loc_4652E2

loc_4652D2:
mov     ch, [esi+14h]
and     ch, 0E6h
mov     [esi+14h], ch
mov     al, ch
or      al, 1
mov     [esi+14h], al

loc_4652E2:
dec     word ptr [esi+18h]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_46523D endp

db 8Bh, 0C0h
jpt_465318 dd offset loc_46531F ; jump table for switch statement
dd offset loc_4653AB
dd offset loc_46541D
dd offset loc_465572



sub_4652FD proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
push    eax
mov     ebp, edx
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_465318      ; jumptable 00465318 default case
and     eax, 0FFh
jmp     jpt_465318[eax*4] ; switch jump

loc_46531F:             ; jumptable 00465318 case 0
call    sub_4DE13B
test    eax, eax
jz      short loc_46533E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
mov     esi, [esp+30h+var_30]
lea     esi, [esi+14h]
movsd
movsd

loc_46533E:
mov     edx, [esp+30h+var_30]
add     edx, 14h
mov     eax, 0A1h
call    sub_4D8BC3
or      byte ptr [ebp+15h], 1
mov     word ptr [ebp+18h], 78h ; 'x'
mov     word ptr [ebp+24h], 8
mov     word ptr [ebp+1Ch], 0
mov     eax, [esp+30h+var_30]
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3C00h
lea     esi, [esp+30h+var_2C]
call    sub_4DD510
mov     eax, [esp+30h+var_30]
mov     eax, [eax+1Ch]
add     [esp+30h+var_2C], eax
mov     eax, [esp+30h+var_30]
mov     eax, [eax+24h]
add     [esp+30h+var_24], eax
lea     edx, [esp+30h+var_1C]
lea     eax, [esp+30h+var_2C]
call    sub_4DD57B

loc_4653A0:
mov     eax, [esp+30h+var_30]
inc     byte ptr [eax+0Ah]
jmp     def_465318      ; jumptable 00465318 default case

loc_4653AB:             ; jumptable 00465318 case 1
cmp     word ptr [edx+1Ch], 0Ah
jnz     short loc_4653B8
mov     word ptr [edx+24h], 8

loc_4653B8:
mov     ax, [ebp+1Ch]
cmp     ax, 1Eh
jnz     short loc_4653CA
mov     word ptr [ebp+24h], 0Ch
jmp     short loc_4653D6

loc_4653CA:
cmp     ax, 32h ; '2'
jnz     short loc_4653D6
mov     word ptr [ebp+24h], 10h

loc_4653D6:
cmp     word ptr [ebp+1Ch], 3Ch ; '<'
jge     short loc_4653EE
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 100h
mov     eax, [esp+30h+var_30]
call    sub_4DD43B

loc_4653EE:
mov     ax, [ebp+24h]
mov     edx, [esp+30h+var_30]
add     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
test    byte ptr [ebp+2Dh], 10h
jnz     short loc_465415
cmp     dword ptr [ebp+30h], 1
jnz     def_465318      ; jumptable 00465318 default case

loc_465415:
mov     word ptr [ebp+18h], 0
jmp     short loc_4653A0

loc_46541D:             ; jumptable 00465318 case 2
cmp     dword ptr [edx+34h], 1
jnz     short loc_465497
test    byte ptr [ebp+18h], 3
jnz     loc_46554E
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_46548A
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+14h]
add     eax, esi
mov     [edx+48h], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+16h]
add     eax, esi
mov     [edx+4Ah], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+18h]
add     eax, esi
mov     [edx+4Ch], ax

loc_46548A:
lea     edx, [ecx+48h]
mov     eax, 0A1h
jmp     loc_465549

loc_465497:
cmp     word ptr [ebp+18h], 0
jnz     loc_46554E
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_4654FF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 42h ; 'B'
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+14h]
add     eax, esi
mov     [edx+48h], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+16h]
add     eax, esi
mov     [edx+4Ah], ax
call    rand_
mov     esi, eax
and     esi, 3Fh
mov     eax, [esp+30h+var_30]
mov     ax, [eax+18h]
add     eax, esi
mov     [edx+4Ch], ax

loc_4654FF:
call    sub_4DE13B
mov     [ebp+4], eax
test    eax, eax
jz      short loc_465541
mov     byte ptr [eax], 5
mov     eax, [ebp+4]
mov     byte ptr [eax+2], 10h
mov     eax, [ebp+4]
mov     byte ptr [eax+3], 5
mov     eax, [ebp+4]
mov     edx, [esp+30h+var_30]
mov     dx, [edx+14h]
mov     [eax+48h], dx
mov     eax, [ebp+4]
mov     word ptr [eax+4Ah], 0
mov     eax, [ebp+4]
mov     edx, [esp+30h+var_30]
mov     dx, [edx+18h]
mov     [eax+4Ch], dx

loc_465541:
lea     edx, [ecx+48h]
mov     eax, 14Dh

loc_465549:
call    sub_4D8BC3

loc_46554E:
mov     bx, [ebp+18h]
cmp     bx, 2
jnz     short loc_465560
mov     eax, [esp+30h+var_30]
and     byte ptr [eax], 0FDh
jmp     short loc_46556C

loc_465560:
cmp     bx, 7
jnz     short loc_46556C
mov     eax, [esp+30h+var_30]
inc     byte ptr [eax+0Ah]

loc_46556C:
inc     word ptr [ebp+18h]
jmp     short def_465318 ; jumptable 00465318 default case

loc_465572:             ; jumptable 00465318 case 3
or      byte ptr [edx+14h], 1

def_465318:             ; jumptable 00465318 default case
mov     eax, [esp+30h+var_30]
cmp     byte ptr [eax+0Ah], 2
jnb     short loc_4655CD
call    sub_4DE13B
test    eax, eax
jz      short loc_4655CD
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     edx, [esp+30h+var_30]
mov     dx, [edx+14h]
mov     [eax+1Ch], dx
mov     edx, [esp+30h+var_30]
mov     dx, [edx+16h]
mov     [eax+1Eh], dx
mov     edx, [esp+30h+var_30]
mov     dx, [edx+18h]
mov     [eax+20h], dx
mov     dl, [ebp+16h]
and     dl, 0Fh
mov     [eax+9], dl

loc_4655CD:
inc     word ptr [ebp+1Ch]
add     esp, 1Ch
jmp     loc_464F56
sub_4652FD endp



; Attributes: thunk

sub_4655D9 proc near
jmp     sub_4DE2F6
sub_4655D9 endp




sub_4655DE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+3A8h]
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
xor     ebx, ebx
mov     bl, [ecx+8]
mov     edx, ebp
mov     eax, ecx
call    ds:funcs_46562D[ebx*4]
mov     ah, [ecx+0ACh]
test    ah, ah
jnz     loc_46572B
mov     dx, [ecx+44h]
test    dx, dx
jnz     loc_4656CF
mov     edx, [ebp+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4656AD
mov     bx, [ecx+58h]
test    bx, bx
jz      short loc_465679
jle     short loc_465670
mov     eax, ebx
sub     eax, 8
mov     [ecx+58h], ax
jmp     short loc_465679

loc_465670:
mov     edi, ebx
add     edi, 8
mov     [ecx+58h], di

loc_465679:
cmp     word ptr [ecx+58h], 0
jnz     loc_4656FC
test    byte ptr [ecx+0Dh], 1
jnz     short loc_46569C
mov     eax, [ebp+4]
sar     eax, 10h
sar     eax, 4
and     eax, 3

loc_465696:
mov     [ebp+0Ch], ax
jmp     short loc_4656FC

loc_46569C:
mov     eax, [ebp+4]
sar     eax, 10h
sar     eax, 6
and     eax, 3
add     eax, 12h
jmp     short loc_465696

loc_4656AD:
mov     ebx, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ax, ds:word_516D1C[edx*2]
mov     [ecx+58h], ax
inc     word ptr [ebp+0Ch]
and     byte ptr [ebp+0Dh], 7Fh
jmp     short loc_4656FC

loc_4656CF:
jge     short loc_4656E3
mov     eax, [ecx+56h]
sar     eax, 10h
cmp     eax, 0FFFFFFA0h
jle     short loc_4656F6
sub     word ptr [ecx+58h], 8
jmp     short loc_4656F6

loc_4656E3:
mov     si, [ecx+58h]
cmp     si, 60h ; '`'
jge     short loc_4656F6
mov     edi, esi
add     edi, 8
mov     [ecx+58h], di

loc_4656F6:
mov     word ptr [ebp+0Ch], 0FFFFh

loc_4656FC:
mov     al, [ecx+0ADh]
mov     bh, [ecx+0ACh]
cmp     al, bh
jz      short loc_46571B
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_465722

loc_46571B:
mov     eax, ecx
call    sub_4DEB53

loc_465722:
mov     eax, ecx
call    sub_4DF7CB
jmp     short loc_465749

loc_46572B:
cmp     ah, [ecx+0ADh]
jz      short loc_465742
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_465749

loc_465742:
mov     eax, ecx
call    sub_4DEADD

loc_465749:
test    byte ptr [ebp+4], 10h
jz      short loc_465756
mov     edx, 80h
jmp     short loc_465758

loc_465756:
xor     edx, edx

loc_465758:
push    edx
push    offset unk_800000
xor     eax, eax
mov     ax, [ebp+8]
or      eax, 5880000h
push    eax
lea     eax, [ebp+28h]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
lea     eax, [ecx+190h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0DCh
call    sub_4E01FC
mov     dword ptr [ebp+28h], 0
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4655DE endp




sub_465799 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     word ptr [edx+4], 0
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+10h], 0
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 0FFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [edx+8], ax
mov     word ptr [edx+18h], 0
mov     ax, [edx+18h]
mov     [edx+16h], ax
mov     [edx+14h], ax
mov     [edx+12h], ax
mov     word ptr [edx+1Ah], 0
mov     ax, [edx+1Ah]
mov     [edx+1Ch], ax
mov     [edx+1Eh], ax
mov     word ptr [edx+24h], 0
mov     ax, [edx+24h]
mov     [edx+22h], ax
mov     [edx+20h], ax
mov     dword ptr [edx+28h], 0
mov     dword ptr [edx+2Ch], 0
lea     eax, [edx+30h]
xor     ebx, ebx
xor     edx, edx
call    sub_4E19B9
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+64h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_516D10
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_465799 endp




sub_4658AF proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
test    byte ptr [edx+4], 2
jz      short loc_4658C3
mov     eax, ecx
call    sub_4665A1

loc_4658C3:
mov     al, [ecx+0ACh]
cmp     al, 1
jb      short loc_4658DC
jbe     short loc_465906
cmp     al, 2
jz      loc_465947
jmp     loc_46595C

loc_4658DC:
test    al, al
jnz     loc_46595C
mov     dl, [ebx+4]
test    dl, 20h
jz      short loc_4658F8

loc_4658EC:
mov     byte ptr [ecx+0ACh], 2
jmp     loc_46595C

loc_4658F8:
test    dl, 4
jz      short loc_46595C
mov     byte ptr [ecx+0ACh], 1
jmp     short loc_46595C

loc_465906:
mov     dl, [ebx+4]
test    dl, 10h
jz      short loc_46591F
mov     ah, dl
and     ah, 0FBh
mov     [ebx+4], ah

loc_465916:
mov     byte ptr [ecx+0ACh], 0
jmp     short loc_46595C

loc_46591F:
test    dl, 20h
jnz     short loc_4658EC
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_46595C
test    dl, 4
jz      short loc_465916
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
jmp     short loc_46595C

loc_465947:
mov     esi, [ecx+0A4h]
sar     esi, 18h
cmp     esi, 0FFFFFFFFh
jnz     short loc_46595C
mov     byte ptr [ecx+0ACh], 3

loc_46595C:
movzx   esi, byte ptr [ecx+9]
mov     edx, ebx
mov     eax, ecx
call    ds:funcs_465964[esi*4]
test    byte ptr [ebx+4], 1
jz      short loc_465996
mov     al, [ecx+9]
test    al, al
jbe     short loc_46597E
cmp     al, 1
jz      short loc_465984
jmp     short loc_46598C

loc_46597E:
mov     byte ptr [ecx+9], 1
jmp     short loc_46598C

loc_465984:
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

loc_46598C:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ebx+4], 0FEh

loc_465996:
pop     esi
pop     ecx
pop     ebx
retn
sub_4658AF endp




sub_46599A proc near
push    ebx
push    ecx
mov     edx, [edx]
mov     cl, [eax+0Ch]
mov     bl, 1
shl     bl, cl
or      [edx+0Ch], bl
call    sub_4DE2F6
pop     ecx
pop     ebx
retn
sub_46599A endp




sub_4659B0 proc near
push    ebx
push    ecx
push    esi
mov     ebx, eax
mov     ecx, edx
lea     eax, [edx+30h]
mov     edx, ebx
call    sub_4E19CA
movzx   esi, byte ptr [ebx+0Ah]
mov     edx, ecx
mov     eax, ebx
call    ds:funcs_4659C9[esi*4]
cmp     byte ptr [ebx+0ACh], 1
jnz     short loc_4659DD
and     byte ptr [ecx+4], 0F7h

loc_4659DD:
test    byte ptr [ecx+4], 8
jz      short loc_4659FA
test    byte ptr [ecx+0Ah], 3
jnz     short loc_4659F2
mov     edx, ecx
mov     eax, ebx
call    sub_466610

loc_4659F2:
inc     word ptr [ecx+0Ah]
pop     esi
pop     ecx
pop     ebx
retn

loc_4659FA:
mov     word ptr [ecx+0Ah], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4659B0 endp




sub_465A04 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_465A2B
jbe     loc_465AB2
cmp     al, 2
jz      loc_465B0B
jmp     loc_465B4E

loc_465A2B:
test    al, al
jnz     loc_465B4E
call    sub_4DE13B
test    eax, eax
jz      short loc_465A4F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_465A4F:
mov     eax, [esp+18h+var_18]
mov     word ptr [eax+0Eh], 0
cmp     word ptr [ebp+18h], 400h
jge     short loc_465A90
mov     word ptr [ebp+46h], 0
cmp     word ptr [ebp+14h], 0
jge     short loc_465A75
mov     word ptr [ebp+44h], 0FF00h
jmp     short loc_465A7B

loc_465A75:
mov     word ptr [ebp+44h], 100h

loc_465A7B:
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0FF80h
mov     byte ptr [ebp+0Ah], 1
jmp     loc_465B4E

loc_465A90:
mov     eax, [esp+18h+var_18]
or      byte ptr [eax+4], 20h
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 80h
mov     word ptr [ebp+48h], 0FE00h
mov     byte ptr [ebp+0Ah], 2
jmp     loc_465B4E

loc_465AB2:
mov     ecx, [ebp+42h]
sar     ecx, 10h
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
cmp     word ptr [ebp+14h], 0
jge     short loc_465AD8
mov     eax, [ebp+12h]
sar     eax, 10h
neg     eax
jmp     short loc_465ADE

loc_465AD8:
mov     eax, [ebp+12h]
sar     eax, 10h

loc_465ADE:
cmp     eax, 600h
jg      short loc_465AED
cmp     word ptr [ebp+18h], 400h
jl      short loc_465B4E

loc_465AED:
call    sub_4DE13B
test    eax, eax
jz      short loc_465A90
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
jmp     short loc_465A90

loc_465B0B:
add     word ptr [ebp+46h], 4
mov     eax, [esp+18h+var_18]
cmp     word ptr [eax+0Eh], 3Ch ; '<'
jnz     short loc_465B20
mov     word ptr [ebp+48h], 0FC00h

loc_465B20:
mov     eax, [esp+18h+var_18]
inc     word ptr [eax+0Eh]
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFF80h
jle     short loc_465B4E
mov     eax, [esp+18h+var_18]
or      byte ptr [eax+4], 1

loc_465B4E:
add     esp, 4

loc_465B51:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_465A04 endp

db 8Dh, 40h, 0
jpt_465BF5 dd offset loc_465BFC ; jump table for switch statement
dd offset loc_465C11
dd offset loc_465C22
dd offset loc_465CA3
dd offset loc_465CC4
dd offset loc_465CFE
dd offset loc_465D1C
dd offset loc_465D32
dd offset loc_465D69
dd offset loc_465DDB
dd offset loc_465E16
dd offset loc_465E55
jpt_465C4D dd offset loc_465C5C ; jump table for switch statement
dd offset loc_465C54
dd offset loc_465C54
dd offset loc_465C64
dd offset loc_465C64
jpt_465D44 dd offset loc_465D53 ; jump table for switch statement
dd offset loc_465D4B
dd offset loc_465D4B
dd offset loc_465D5E
dd offset loc_465D5E
jpt_465D91 dd offset loc_465D98 ; jump table for switch statement
dd offset loc_465DA9
dd offset loc_465DB1
dd offset loc_465DC2
dd offset loc_465DCA



sub_465BC6 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
cmp     byte ptr [eax+0Bh], 0
jbe     short loc_465BE6
cmp     byte ptr [ecx+0Bh], 6
jnb     short loc_465BE6
mov     eax, [ebx]
cmp     byte ptr [eax+0Eh], 0
jle     short loc_465BE6
mov     byte ptr [ecx+0Bh], 6

loc_465BE6:
mov     al, [ecx+0Bh]
cmp     al, 0Bh         ; switch 12 cases
ja      def_465BF5      ; jumptable 00465BF5 default case
xor     edx, edx
mov     dl, al
jmp     jpt_465BF5[edx*4] ; switch jump

loc_465BFC:             ; jumptable 00465BF5 case 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 0
inc     byte ptr [ecx+0Bh]

loc_465C11:             ; jumptable 00465BF5 case 1
mov     eax, [ebx]
cmp     byte ptr [eax+9], 2
jnz     def_465BF5      ; jumptable 00465BF5 default case
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465C22:             ; jumptable 00465BF5 case 2
sub     word ptr [ecx+18h], 80h
mov     dx, [ebx+0Eh]
inc     edx
mov     [ebx+0Eh], dx
cmp     dx, 60h ; '`'
jnz     def_465BF5      ; jumptable 00465BF5 default case
mov     word ptr [ecx+16h], 0
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      short def_465C4D ; jumptable 00465C4D default case
and     eax, 0FFh
jmp     jpt_465C4D[eax*4] ; switch jump

loc_465C54:             ; jumptable 00465C4D cases 1,2
mov     word ptr [ecx+18h], 0A00h
jmp     short def_465C4D ; jumptable 00465C4D default case

loc_465C5C:             ; jumptable 00465C4D case 0
mov     word ptr [ecx+18h], 800h
jmp     short def_465C4D ; jumptable 00465C4D default case

loc_465C64:             ; jumptable 00465C4D cases 3,4
mov     word ptr [ecx+18h], 0C00h

def_465C4D:             ; jumptable 00465C4D default case
mov     al, [ecx+0Ch]
test    al, al
jnz     short loc_465C7F
mov     word ptr [ebx+0Eh], 0
mov     word ptr [ebx+10h], 10h
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465C7F:
cmp     al, 1
jz      short loc_465C87
cmp     al, 2
jnz     short loc_465C95

loc_465C87:
mov     word ptr [ebx+0Eh], 8
mov     word ptr [ebx+10h], 8
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465C95:
mov     word ptr [ebx+0Eh], 10h
mov     word ptr [ebx+10h], 0
jmp     short def_465D91 ; jumptable 00465D91 default case

loc_465CA3:             ; jumptable 00465BF5 case 3
mov     si, [ebx+0Eh]
test    si, si
jnz     short loc_465CB8
mov     dh, al
inc     dh
mov     [ecx+0Bh], dh
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CB8:
mov     edi, esi
dec     edi
mov     [ebx+0Eh], di
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CC4:             ; jumptable 00465BF5 case 4
sub     word ptr [ecx+16h], 10h
mov     eax, [ecx+14h]
sar     eax, 10h
cmp     eax, 0FFFFF800h
jg      short loc_465CE4

def_465D44:             ; jumptable 00465D44 default case
mov     word ptr [ecx+16h], 0F800h

def_465D91:             ; jumptable 00465D91 default case
inc     byte ptr [ecx+0Bh]
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CE4:
mov     ax, [ecx+46h]
cmp     ax, 2
jle     def_465BF5      ; jumptable 00465BF5 default case
mov     edx, eax
dec     edx
mov     [ecx+46h], dx
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465CFE:             ; jumptable 00465BF5 case 5
mov     dx, [ebx+10h]
test    dx, dx
jnz     short loc_465D10
mov     byte ptr [ecx+0Bh], 8
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D10:
mov     esi, edx
dec     esi
mov     [ebx+10h], si
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D1C:             ; jumptable 00465BF5 case 6
mov     ebx, [ebx]
cmp     byte ptr [ebx+0Eh], 2
jnz     def_465BF5      ; jumptable 00465BF5 default case
inc     al
mov     [ecx+0Bh], al
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465D32:             ; jumptable 00465BF5 case 7
mov     word ptr [ecx+16h], 0
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      short def_465D44 ; jumptable 00465D44 default case
and     eax, 0FFh
jmp     jpt_465D44[eax*4] ; switch jump

loc_465D4B:             ; jumptable 00465D44 cases 1,2
mov     word ptr [ecx+18h], 0A00h
jmp     short def_465D44 ; jumptable 00465D44 default case

loc_465D53:             ; jumptable 00465D44 case 0
mov     word ptr [ecx+18h], 800h
jmp     def_465D44      ; jumptable 00465D44 default case

loc_465D5E:             ; jumptable 00465D44 cases 3,4
mov     word ptr [ecx+18h], 0C00h
jmp     def_465D44      ; jumptable 00465D44 default case

loc_465D69:             ; jumptable 00465BF5 case 8
mov     eax, [ebx]
cmp     byte ptr [eax+9], 3
jnz     def_465BF5      ; jumptable 00465BF5 default case
mov     word ptr [ebx+0Eh], 80h
mov     word ptr [ecx+46h], 4
mov     al, [ecx+0Ch]
cmp     al, 4           ; switch 5 cases
ja      def_465D91      ; jumptable 00465D91 default case
and     eax, 0FFh
jmp     jpt_465D91[eax*4] ; switch jump

loc_465D98:             ; jumptable 00465D91 case 0
mov     word ptr [ecx+44h], 0

loc_465D9E:
mov     word ptr [ecx+48h], 0
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DA9:             ; jumptable 00465D91 case 1
mov     word ptr [ecx+44h], 4
jmp     short loc_465D9E

loc_465DB1:             ; jumptable 00465D91 case 2
mov     word ptr [ecx+44h], 0FFFCh

loc_465DB7:
mov     word ptr [ecx+48h], 4
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DC2:             ; jumptable 00465D91 case 3
mov     word ptr [ecx+44h], 8
jmp     short loc_465DB7

loc_465DCA:             ; jumptable 00465D91 case 4
mov     word ptr [ecx+44h], 0FFF8h
mov     word ptr [ecx+48h], 8
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DDB:             ; jumptable 00465BF5 case 9
mov     ax, [ebx+0Eh]
test    ax, ax
jnz     short loc_465DF5
mov     [ecx+44h], ax
mov     [ecx+48h], ax
mov     [ecx+46h], ax
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465DF5:
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
dec     word ptr [ebx+0Eh]
jmp     def_465BF5      ; jumptable 00465BF5 default case

loc_465E16:             ; jumptable 00465BF5 case 10
or      byte ptr [ebx+4], 2
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ebx+16h], 0
mov     ax, [ebx+16h]
mov     [ebx+14h], ax
mov     [ebx+12h], ax
mov     word ptr [ebx+0Eh], 0
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 6
mov     [ebx+10h], ax
jmp     def_465D91      ; jumptable 00465D91 default case

loc_465E55:             ; jumptable 00465BF5 case 11
cmp     word ptr [ebx+10h], 0
jnz     short loc_465E8D
lea     edx, [ecx+14h]
mov     eax, 1A0h
call    sub_4D8BC3
mov     word ptr [ecx+48h], 0
mov     eax, [ebx+4]
sar     eax, 10h
sar     eax, 8
xor     ah, ah
and     al, 0Fh
cwde
shl     eax, 8
mov     [ebx+1Ch], ax
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Bh], 0
jmp     short loc_465E97

loc_465E8D:
mov     word ptr [ecx+48h], 0FFF8h
dec     word ptr [ebx+10h]

loc_465E97:
mov     ax, [ecx+48h]
add     [ecx+18h], ax

def_465BF5:             ; jumptable 00465BF5 default case
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
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_465BC6 endp




sub_465EC8 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_465EDE
cmp     al, 1
jz      short loc_465F26
jmp     loc_466013

loc_465EDE:
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+10h], 0
mov     word ptr [edx+1Ah], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+18h], 0
test    byte ptr [edx+6], 1
jz      short loc_465F10
mov     eax, [edx+4]
sar     eax, 10h
sar     eax, 2
and     eax, 7
jmp     short loc_465F1F

loc_465F10:
mov     eax, [edx+4]
sar     eax, 10h
sar     eax, 4
and     eax, 7
cwde
neg     eax

loc_465F1F:
mov     [edx+1Eh], ax
inc     byte ptr [ebx+0Bh]

loc_465F26:
mov     dx, [ecx+0Eh]
cmp     dx, 140h
jge     loc_465FF0
mov     eax, edx
cmp     dx, 80h
jb      short loc_465F8B
jbe     loc_465FCE
cmp     dx, 0E0h
jb      short loc_465F6E
jbe     loc_465FBE
cmp     dx, 100h
jb      loc_465FE2
jbe     short loc_465FAE
cmp     dx, 120h
jz      loc_465FDC
jmp     loc_465FE2

loc_465F6E:
cmp     dx, 0A0h
jb      loc_465FE2
jbe     loc_465FD6
cmp     dx, 0C0h
jz      short loc_465FB6
jmp     loc_465FE2

loc_465F8B:
cmp     dx, 20h ; ' '
jb      short loc_465FA3
jbe     short loc_465FB6
cmp     dx, 40h ; '@'
jb      short loc_465FE2
jbe     short loc_465FBE
cmp     dx, 60h ; '`'
jz      short loc_465FC6
jmp     short loc_465FE2

loc_465FA3:
test    dx, dx
jnz     short loc_465FE2
mov     word ptr [ecx+16h], 0FFFFh

loc_465FAE:
mov     word ptr [ecx+18h], 14h
jmp     short loc_465FE2

loc_465FB6:
mov     word ptr [ecx+16h], 0
jmp     short loc_465FE2

loc_465FBE:
mov     word ptr [ecx+18h], 0
jmp     short loc_465FE2

loc_465FC6:
mov     word ptr [ecx+18h], 0FFECh
jmp     short loc_465FE2

loc_465FCE:
mov     word ptr [ecx+16h], 1
jmp     short loc_465FE2

loc_465FD6:
or      byte ptr [ecx+4], 40h
jmp     short loc_465FE2

loc_465FDC:
mov     word ptr [ecx+16h], 0FFFFh

loc_465FE2:
mov     ax, [ecx+1Eh]
add     [ecx+1Ch], ax
inc     word ptr [ecx+0Eh]
jmp     short loc_466013

loc_465FF0:
or      byte ptr [ecx+4], 40h
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 0
cmp     byte ptr [ebx+0Eh], 2
jg      short loc_46600F
cmp     byte ptr [ebx+0Fh], 0
jz      short loc_46600F
inc     byte ptr [ebx+0Ah]

loc_46600F:
mov     byte ptr [ebx+0Bh], 0

loc_466013:
mov     ax, [ecx+16h]
mov     dx, [ebx+48h]
add     edx, eax
mov     [ebx+48h], dx
add     [ebx+18h], dx
mov     ax, [ecx+18h]
add     [ecx+1Ah], ax
mov     edx, [ecx+18h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     [ebx+14h], ax
mov     edx, [ecx+18h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
cwde
sub     eax, 600h
mov     [ebx+16h], ax
mov     edx, [ebx+2Ah]
sar     edx, 10h
mov     eax, [ebx+12h]
sar     eax, 10h
cmp     edx, eax
jge     short loc_466080
mov     eax, 1
jmp     short loc_466085

loc_466080:
mov     eax, 0FFFFFFFFh

loc_466085:
mov     [ebx+44h], ax
test    byte ptr [ecx+4], 40h
jz      short loc_4660C1
cmp     word ptr [ecx+0Eh], 0A1h
jnz     short loc_4660AB
mov     word ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0FA00h
mov     word ptr [ebx+18h], 0F800h
jmp     short loc_4660BD

loc_4660AB:
mov     word ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0FA00h
mov     word ptr [ebx+18h], 800h

loc_4660BD:
and     byte ptr [ecx+4], 0BFh

loc_4660C1:
mov     eax, [ebx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+1Ch], eax
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     eax, [ebx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+24h], eax
cmp     word ptr [ebx+18h], 300h
jge     short loc_4660F3
and     byte ptr [ecx+4], 0F7h
jmp     short loc_46610A

loc_4660F3:
test    byte ptr [ecx+6], 1
jz      short loc_46610A
mov     eax, [ebx+14h]
sar     eax, 10h
cmp     eax, 0FFFFFA00h
jge     short loc_46610A
or      byte ptr [ecx+4], 8

loc_46610A:
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_466133
mov     ah, [ecx+4]
test    ah, 80h
jnz     short loc_466133
mov     dl, ah
or      dl, 80h
mov     [ecx+4], dl
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_466133:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_466143
and     byte ptr [ecx+4], 7Fh

loc_466143:
pop     ecx
pop     ebx
retn
sub_465EC8 endp

jpt_46616D dd offset loc_466174 ; jump table for switch statement
dd offset loc_46619B
dd offset loc_466272
dd offset loc_466286
dd offset loc_4662DD



sub_46615A proc near
push    ebx
push    ecx
push    esi
mov     bl, [eax+0Bh]
cmp     bl, 4           ; switch 5 cases
ja      def_46616D      ; jumptable 0046616D default case
xor     ecx, ecx
mov     cl, bl
jmp     jpt_46616D[ecx*4] ; switch jump

loc_466174:             ; jumptable 0046616D case 0
and     byte ptr [edx+4], 0F7h
mov     word ptr [edx+10h], 0
mov     bx, [edx+10h]
mov     [edx+0Eh], bx
mov     word ptr [eax+48h], 0
mov     bx, [eax+48h]
mov     [eax+46h], bx
mov     [eax+44h], bx
inc     byte ptr [eax+0Bh]

loc_46619B:             ; jumptable 0046616D case 1
mov     si, [edx+0Eh]
cmp     si, 40h ; '@'
jge     loc_466253
mov     ebx, esi
cmp     si, 10h
jb      short loc_4661DD
jbe     loc_466216
cmp     si, 30h ; '0'
jb      short loc_4661D2
jbe     loc_46622C
cmp     si, 34h ; '4'
jz      loc_466244
jmp     loc_46624A

loc_4661D2:
cmp     si, 20h ; ' '
jz      short loc_466224
jmp     loc_46624A

loc_4661DD:
test    si, si
jbe     short loc_4661EA
cmp     si, 0Ch
jz      short loc_46620E
jmp     short loc_46624A

loc_4661EA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4661F7
mov     ecx, 0FFFFFFFFh
jmp     short loc_4661FC

loc_4661F7:
mov     ecx, 1

loc_4661FC:
mov     [edx+12h], cx
mov     word ptr [edx+14h], 0FFFFh
mov     word ptr [edx+16h], 2
jmp     short loc_46624A

loc_46620E:
mov     word ptr [edx+16h], 0
jmp     short loc_46624A

loc_466216:
mov     word ptr [edx+12h], 0

loc_46621C:
mov     word ptr [edx+14h], 0
jmp     short loc_46624A

loc_466224:
mov     word ptr [edx+14h], 1
jmp     short loc_46624A

loc_46622C:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_466239
mov     ecx, 1
jmp     short loc_46623E

loc_466239:
mov     ecx, 0FFFFFFFFh

loc_46623E:
mov     [edx+12h], cx
jmp     short loc_46621C

loc_466244:
mov     word ptr [edx+16h], 0FFFEh

loc_46624A:
inc     word ptr [edx+0Eh]
jmp     def_46616D      ; jumptable 0046616D default case

loc_466253:
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     ecx, [edx]
dec     byte ptr [ecx+0Fh]

loc_46626A:
inc     byte ptr [eax+0Bh]
jmp     def_46616D      ; jumptable 0046616D default case

loc_466272:             ; jumptable 0046616D case 2
mov     ecx, [edx]
cmp     byte ptr [ecx+0Fh], 0
jg      def_46616D      ; jumptable 0046616D default case
mov     word ptr [edx+0Eh], 0
jmp     short loc_46626A

loc_466286:             ; jumptable 0046616D case 3
mov     bx, [edx+0Eh]
cmp     bx, 28h ; '('
jge     short loc_4662D5
cmp     bx, 8
jb      short loc_4662A0
jbe     short loc_4662B2
cmp     bx, 20h ; ' '
jz      short loc_4662BA
jmp     short loc_46624A

loc_4662A0:
test    bx, bx
jnz     short loc_46624A
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4662C0
mov     ecx, 1
jmp     short loc_4662CC

loc_4662B2:
mov     word ptr [edx+14h], 0
jmp     short loc_46624A

loc_4662BA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_4662C7

loc_4662C0:
mov     ecx, 0FFFFFFFFh
jmp     short loc_4662CC

loc_4662C7:
mov     ecx, 1

loc_4662CC:
mov     [edx+14h], cx
jmp     loc_46624A

loc_4662D5:
mov     word ptr [edx+14h], 0
jmp     short loc_46626A

loc_4662DD:             ; jumptable 0046616D case 4
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0Bh], 0

def_46616D:             ; jumptable 0046616D default case
mov     bx, [edx+12h]
add     [eax+44h], bx
mov     bx, [edx+14h]
add     [eax+46h], bx
mov     dx, [edx+16h]
add     [eax+48h], dx
mov     dx, [eax+44h]
add     [eax+14h], dx
mov     dx, [eax+46h]
add     [eax+16h], dx
mov     dx, [eax+48h]
add     [eax+18h], dx
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
pop     esi
pop     ecx
pop     ebx
retn
sub_46615A endp




sub_46633C proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     al, [eax+0Bh]
cmp     al, 1
jb      short loc_466358
jbe     short loc_4663B9
cmp     al, 2
jz      loc_4663DC
jmp     loc_4664F0

loc_466358:
test    al, al
jnz     loc_4664F0
mov     word ptr [edx+0Eh], 0
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
cmp     word ptr [ebx+14h], 0
jge     short loc_466391
mov     word ptr [edx+20h], 300h
mov     ax, [ebx+16h]
sub     eax, 200h
jmp     short loc_46639E

loc_466391:
mov     word ptr [edx+20h], 0FD00h
mov     ax, [ebx+16h]
add     ah, 2

loc_46639E:
mov     [edx+22h], ax
mov     ax, [ebx+18h]
mov     [ecx+24h], ax
mov     ax, [ecx+6]
xor     ah, ah
and     al, 1
mov     [ecx+1Ah], ax
inc     byte ptr [ebx+0Bh]

loc_4663B9:
cmp     word ptr [ecx+1Ah], 0
jnz     short loc_4663CE
mov     edx, ecx
mov     eax, ebx
call    sub_466831
jmp     loc_4664F0

loc_4663CE:
mov     edx, ecx
mov     eax, ebx
call    sub_46697C
jmp     loc_4664F0

loc_4663DC:
cmp     word ptr [edx+0Eh], 50h ; 'P'
jge     loc_4664D0
mov     ax, [ecx+0Eh]
cmp     ax, 20h ; ' '
jb      short loc_466421
jbe     loc_466483
cmp     ax, 40h ; '@'
jb      short loc_466412
jbe     loc_4664BD
cmp     ax, 48h ; 'H'
jz      loc_4664C6
jmp     loc_4664CA

loc_466412:
cmp     ax, 30h ; '0'
jz      loc_4664A0
jmp     loc_4664CA

loc_466421:
test    ax, ax
jbe     short loc_466431
cmp     ax, 8
jz      short loc_46647D
jmp     loc_4664CA

loc_466431:
cmp     word ptr [ebx+14h], 0
jge     short loc_466456
mov     word ptr [ecx+12h], 1
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+20h], 300h
mov     ax, [ebx+16h]
sub     eax, 200h
jmp     short loc_46646F

loc_466456:
mov     word ptr [ecx+12h], 0FFFFh
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+20h], 0FD00h
mov     ax, [ebx+16h]
add     ah, 2

loc_46646F:
mov     [ecx+22h], ax
mov     ax, [ebx+18h]
mov     [ecx+24h], ax
jmp     short loc_4664CA

loc_46647D:
or      byte ptr [ecx+4], 8
jmp     short loc_4664CA

loc_466483:
mov     word ptr [ecx+12h], 0
cmp     word ptr [ebx+14h], 0
jge     short loc_466498

loc_466490:
mov     word ptr [ecx+14h], 0FFFFh
jmp     short loc_4664CA

loc_466498:
mov     word ptr [ecx+14h], 1
jmp     short loc_4664CA

loc_4664A0:
cmp     word ptr [ebx+14h], 0
jge     short loc_4664AF
mov     word ptr [ecx+12h], 1
jmp     short loc_4664B5

loc_4664AF:
mov     word ptr [ecx+12h], 0FFFFh

loc_4664B5:
mov     word ptr [ecx+14h], 0
jmp     short loc_4664CA

loc_4664BD:
cmp     word ptr [ebx+14h], 0
jl      short loc_466490
jmp     short loc_466498

loc_4664C6:
and     byte ptr [ecx+4], 0F7h

loc_4664CA:
inc     word ptr [ecx+0Eh]
jmp     short loc_4664F0

loc_4664D0:
or      byte ptr [ecx+4], 40h
mov     word ptr [ecx+12h], 0
mov     word ptr [ecx+14h], 0
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+0Eh], 0
mov     byte ptr [ebx+0Bh], 0

loc_4664F0:
mov     ax, [ecx+12h]
add     [ebx+44h], ax
mov     ax, [ecx+14h]
add     [ebx+46h], ax
mov     ax, [ecx+16h]
add     [ebx+48h], ax
mov     ax, [ebx+44h]
add     [ebx+14h], ax
mov     ax, [ebx+46h]
add     [ebx+16h], ax
mov     ax, [ebx+48h]
add     [ebx+18h], ax
test    byte ptr [ecx+4], 40h
jz      short loc_466542
mov     ax, [ecx+20h]
mov     [ebx+14h], ax
mov     ax, [ecx+22h]
mov     [ebx+16h], ax
mov     ax, [ecx+24h]
mov     [ebx+18h], ax
and     byte ptr [ecx+4], 0BFh

loc_466542:
mov     edx, [ebx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+1Ch], edx
mov     edx, [ebx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+20h], edx
mov     edx, [ebx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebx+24h], edx
cmp     dword ptr [ebx+80h], 90000h
jnb     short loc_46658E
mov     dh, [ecx+4]
test    dh, 80h
jnz     short loc_46658E
mov     al, dh
or      al, 80h
mov     [ecx+4], al
lea     edx, [ebx+14h]
mov     eax, 150h
call    sub_4D8BC3

loc_46658E:
cmp     dword ptr [ebx+80h], 240000h
jbe     short loc_46659E
and     byte ptr [ecx+4], 7Fh

loc_46659E:
pop     ecx
pop     ebx
retn
sub_46633C endp




sub_4665A1 proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     eax, [edx+28h]
and     eax, 0FFFFFFh
jz      short loc_466609
test    byte ptr [edx+2Bh], 18h
jz      short loc_4665F5
mov     dx, [ebx+6Eh]
mov     [ebx+0B2h], dx
sub     edx, eax
mov     [ebx+6Eh], dx
test    dx, dx
jg      short loc_4665DD
mov     dh, [ecx+4]
and     dh, 0E4h
mov     [ecx+4], dh
mov     al, dh
or      al, 11h
mov     [ecx+4], al

loc_4665DD:
lea     edx, [ebx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ebx+15Eh], 7FFFh
jmp     short loc_466602

loc_4665F5:
lea     edx, [ebx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_466602:
or      byte ptr [ecx+4], 4
pop     ecx
pop     ebx
retn

loc_466609:
and     byte ptr [edx+4], 0FBh
pop     ecx
pop     ebx
retn
sub_4665A1 endp




sub_466610 proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_4666F6
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 34h ; '4'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 440h
mov     ebx, 0D00h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     ecx, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, ecx
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     eax, ecx
call    sub_4667D3
mov     edi, 1

loc_4666F6:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_4667A9
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 34h ; '4'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFBC0h
mov     ebx, 0D00h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     ecx, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, ecx
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     eax, ecx
call    sub_4667D3
jmp     short loc_4667AD

loc_4667A9:
test    edi, edi
jz      short loc_4667CB

loc_4667AD:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_4667BA
lea     edx, [ecx+14h]
jmp     short loc_4667C1

loc_4667BA:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_4667C1:
mov     eax, 0D0h
call    sub_4D8BC3

loc_4667CB:
add     esp, 44h
jmp     loc_465B51
sub_466610 endp




sub_4667D3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
call    sub_4EE133
mov     dword ptr [eax+4], 2C808080h
mov     ebx, [edx]
sar     ebx, 10h
shl     ebx, 10h
movsx   ecx, word ptr [edx]
and     ecx, 0FFFFh
or      ecx, ebx
mov     [eax+8], ecx
mov     edx, [edx+2]
sar     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D0840C0h
mov     dword ptr [eax+14h], 0E40DFh
mov     dword ptr [eax+1Ch], 5FC0h
mov     dword ptr [eax+24h], 5FDFh
mov     dword ptr [eax+18h], 40h ; '@'
mov     dword ptr [eax+20h], 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4667D3 endp




sub_466831 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     bx, [edx+0Eh]
cmp     bx, 8Ah
jge     loc_46695A
mov     eax, ebx
cmp     bx, 49h ; 'I'
jb      short loc_466894
jbe     loc_46692B
cmp     bx, 6Ah ; 'j'
jb      short loc_466879
jbe     loc_466934
cmp     bx, 75h ; 'u'
jb      loc_466953
jbe     short loc_4668CD
cmp     bx, 7Ah ; 'z'
jz      loc_46693C
jmp     loc_466953

loc_466879:
cmp     bx, 59h ; 'Y'
jb      loc_466953
jbe     loc_466923
cmp     bx, 5Ah ; 'Z'
jz      short loc_4668F2
jmp     loc_466953

loc_466894:
cmp     bx, 30h ; '0'
jb      short loc_4668B1
jbe     short loc_4668E3
cmp     bx, 31h ; '1'
jbe     short loc_46690A
cmp     bx, 41h ; 'A'
jz      loc_466923
jmp     loc_466953

loc_4668B1:
test    bx, bx
jbe     short loc_4668C1
cmp     bx, 15h
jz      short loc_4668D8
jmp     loc_466953

loc_4668C1:
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0

loc_4668CD:
mov     word ptr [edx+16h], 0FFFCh
jmp     loc_466953

loc_4668D8:
mov     word ptr [edx+16h], 0
jmp     loc_466953

loc_4668E3:
or      byte ptr [edx+4], 8
mov     word ptr [edx+16h], 4
jmp     loc_466953

loc_4668F2:
and     byte ptr [edx+4], 0F7h
mov     word ptr [edx+16h], 0
cmp     word ptr [ecx+14h], 0
jge     short loc_466943
mov     ecx, 1
jmp     short loc_46694F

loc_46690A:
cmp     word ptr [ecx+14h], 0
jge     short loc_466918

loc_466911:
mov     ecx, 4
jmp     short loc_46691D

loc_466918:
mov     ecx, 0FFFFFFFCh

loc_46691D:
mov     [edx+12h], cx
jmp     short loc_466953

loc_466923:
mov     word ptr [edx+12h], 0
jmp     short loc_466953

loc_46692B:
cmp     word ptr [ecx+14h], 0
jle     short loc_466911
jmp     short loc_466918

loc_466934:
mov     word ptr [edx+14h], 0
jmp     short loc_466953

loc_46693C:
cmp     word ptr [ecx+14h], 0
jge     short loc_46694A

loc_466943:
mov     ecx, 0FFFFFFFFh
jmp     short loc_46694F

loc_46694A:
mov     ecx, 1

loc_46694F:
mov     [edx+14h], cx

loc_466953:
inc     word ptr [edx+0Eh]
pop     ecx
pop     ebx
retn

loc_46695A:
or      byte ptr [edx+4], 40h
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+0Eh], 0
inc     byte ptr [ecx+0Bh]
pop     ecx
pop     ebx
retn
sub_466831 endp




sub_46697C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     bx, [edx+0Eh]
cmp     bx, 8Ah
jge     loc_466A9C
mov     eax, ebx
cmp     bx, 49h ; 'I'
jb      short loc_4669E3
jbe     loc_466A67
cmp     bx, 65h ; 'e'
jb      short loc_4669C4
jbe     loc_466A40
cmp     bx, 6Ah ; 'j'
jb      loc_466A95
jbe     short loc_466A18
cmp     bx, 7Ah ; 'z'
jz      loc_466A7E
jmp     loc_466A95

loc_4669C4:
cmp     bx, 59h ; 'Y'
jb      loc_466A95
jbe     loc_466A5F
cmp     bx, 5Ah ; 'Z'
jz      loc_466A70
jmp     loc_466A95

loc_4669E3:
cmp     bx, 25h ; '%'
jb      short loc_466A02
jbe     short loc_466A34
cmp     bx, 31h ; '1'
jb      loc_466A95
jbe     short loc_466A46
cmp     bx, 41h ; 'A'
jz      short loc_466A5F
jmp     loc_466A95

loc_466A02:
test    bx, bx
jbe     short loc_466A12
cmp     bx, 20h ; ' '
jz      short loc_466A29
jmp     loc_466A95

loc_466A12:
mov     word ptr [edx+12h], 0

loc_466A18:
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0FFFDh
jmp     loc_466A95

loc_466A29:
mov     word ptr [edx+16h], 0
jmp     loc_466A95

loc_466A34:
or      byte ptr [edx+4], 8
mov     word ptr [edx+16h], 3
jmp     short loc_466A95

loc_466A40:
and     byte ptr [edx+4], 0F7h
jmp     short loc_466A29

loc_466A46:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A54

loc_466A4D:
mov     ecx, 4
jmp     short loc_466A59

loc_466A54:
mov     ecx, 0FFFFFFFCh

loc_466A59:
mov     [edx+12h], cx
jmp     short loc_466A95

loc_466A5F:
mov     word ptr [edx+12h], 0
jmp     short loc_466A95

loc_466A67:
cmp     word ptr [ecx+14h], 0
jle     short loc_466A4D
jmp     short loc_466A54

loc_466A70:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A85
mov     ecx, 1
jmp     short loc_466A91

loc_466A7E:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A8C

loc_466A85:
mov     ecx, 0FFFFFFFFh
jmp     short loc_466A91

loc_466A8C:
mov     ecx, 1

loc_466A91:
mov     [edx+14h], cx

loc_466A95:
inc     word ptr [edx+0Eh]
pop     ecx
pop     ebx
retn

loc_466A9C:
or      byte ptr [edx+4], 40h
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+0Eh], 0
inc     byte ptr [ecx+0Bh]
pop     ecx
pop     ebx
retn
sub_46697C endp

word_466ABE dw 0F76Bh
dword_466AC0 dd 0F2B8F448h, 0F254F510h, 56525153h, 0CEC8357h
dd 0E789C289h
mov     esi, offset word_466ABE
movsd
movsd
movsw
cmp     byte ptr [eax+9], 0
jnz     short loc_466AEA
mov     eax, edx
call    sub_466BC6

loc_466AEA:
mov     ecx, [edx+9]
sar     ecx, 18h
mov     eax, edx
call    ds:funcs_466AF2[ecx*4]
cmp     byte ptr [edx+0Ch], 0
jz      short loc_466B49
cmp     byte ptr [edx+0Dh], 0
jz      short loc_466B17
movsx   ax, byte ptr [edx+0Eh]
sub     [edx+16h], ax
movsx   ax, byte ptr [edx+0Fh]
sub     [edx+18h], ax

loc_466B17:
mov     ebx, [edx+9]
sar     ebx, 18h
mov     ecx, ebx
shl     ecx, 3
sub     ecx, ebx
xor     eax, eax
mov     al, [edx+0Bh]
add     ecx, eax
and     ecx, 3Fh
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
shl     ecx, 4
sar     ecx, 0Ch
mov     eax, [esp+ebx*2-2]
sar     eax, 10h
add     eax, ecx
jmp     short loc_466B95

loc_466B49:
cmp     byte ptr [edx+0Dh], 0
jz      short loc_466B63
movsx   ax, byte ptr [edx+0Eh]
sub     [edx+16h], ax
movsx   ax, byte ptr [edx+0Fh]
sub     [edx+18h], ax
jmp     short loc_466B99

loc_466B63:
mov     ecx, [edx+9]
sar     ecx, 18h
mov     ebx, ecx
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
xor     ebx, ecx
mov     bl, [edx+0Bh]
add     ebx, eax
and     ebx, 3Fh
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [esp+ecx*2-2]
sar     eax, 10h
add     eax, ebx

loc_466B95:
mov     [edx+16h], ax

loc_466B99:
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
inc     byte ptr [edx+0Bh]
mov     eax, edx
call    sub_4DEADD
add     esp, 0Ch
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_466BC6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_466BC6 endp




sub_466C17 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466C48
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
cmp     ds:byte_560BE4, 2
jnz     short loc_466C41
inc     byte ptr [ecx+0Dh]
jmp     short loc_466C45

loc_466C41:
mov     byte ptr [ecx+0Dh], 0

loc_466C45:
inc     byte ptr [ecx+0Ah]

loc_466C48:
cmp     byte ptr [esi+8], 2
jnz     short loc_466C5B
cmp     dword ptr [esi+10h], 0DEh
jnz     short loc_466C5B
mov     byte ptr [ecx+0Dh], 0

loc_466C5B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466C17 endp




sub_466C60 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466C7F
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466C7F:
cmp     byte ptr [esi+8], 2
jnz     short loc_466CA1
mov     edx, [esi+10h]
cmp     edx, 64h ; 'd'
jnz     short loc_466C95
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466C95:
cmp     edx, 17Ch
jnz     short loc_466CA1
mov     byte ptr [ecx+0Dh], 0

loc_466CA1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466C60 endp




sub_466CA6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466CC5
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466CC5:
cmp     byte ptr [esi+8], 2
jnz     short loc_466CE7
mov     edx, [esi+10h]
cmp     edx, 64h ; 'd'
jnz     short loc_466CDB
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466CDB:
cmp     edx, 118h
jnz     short loc_466CE7
mov     byte ptr [ecx+0Dh], 0

loc_466CE7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466CA6 endp




sub_466CEC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466D0B
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466D0B:
cmp     byte ptr [esi+8], 2
jnz     short loc_466D2D
mov     edx, [esi+10h]
cmp     edx, 1Eh
jnz     short loc_466D21
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466D21:
cmp     edx, 8Ch
jnz     short loc_466D2D
mov     byte ptr [ecx+0Dh], 0

loc_466D2D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466CEC endp




sub_466D32 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466D4B
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466D4B:
pop     edx
pop     ecx
pop     ebx
retn
sub_466D32 endp




sub_466D4F proc near
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+378h]
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     word ptr [eax+15Eh], 4210h
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_466D81[ecx*4]
mov     dword ptr [edx+8], 0
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_466D4F endp




sub_466D94 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+378h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
cmp     ds:byte_77E7D4, 0Ah
jnz     short loc_466DCF
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_466DCF
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_466DD8

loc_466DCF:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_466DD8:
mov     dword ptr [ecx+158h], 3000300h
mov     dword ptr [ecx+15Ch], 300h
mov     word ptr [ebx+44h], 0
mov     byte ptr [ebx+4Ah], 8
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 0
mov     word ptr [ebx+28h], 2
mov     word ptr [ebx+2Ah], 9
mov     word ptr [ebx+2Ch], 4
mov     byte ptr [ebx+50h], 0
mov     byte ptr [ebx+53h], 0
mov     byte ptr [ebx+54h], 0
mov     byte ptr [ebx+4Eh], 0
mov     byte ptr [ebx+48h], 0
mov     byte ptr [ebx+49h], 0
mov     word ptr [ebx+40h], 0
xor     eax, eax
mov     al, [ecx+3]
test    ax, 0FFFFh
jz      short loc_466E49
cmp     al, 1
jnz     short loc_466E49
mov     word ptr [ecx+44h], 0A0h

loc_466E49:
mov     word ptr [ebx+42h], 0
lea     eax, [ebx+18h]
mov     ebx, 0FFFFFFA0h
mov     edx, 0Bh
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+0ACh], 0
mov     al, [ecx+0ACh]
mov     [ecx+0ADh], al
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_516D78
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_466D94 endp

db 8Dh, 40h, 0
jpt_466FDE dd offset loc_466FE5 ; jump table for switch statement
dd offset loc_466FE5
dd offset loc_466FF4
dd offset loc_467001



sub_466EE7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+378h]
mov     ecx, offset byte_5F8364
add     eax, 390h
mov     edx, esi
call    sub_4E19CA
test    eax, eax
jnz     short loc_466F0F
and     byte ptr [edi+4Ah], 0EFh
jmp     short loc_466F13

loc_466F0F:
or      byte ptr [edi+4Ah], 10h

loc_466F13:
mov     dx, [edi+40h]
test    dx, dx
jz      short loc_466F23
mov     ebx, edx
dec     ebx
mov     [edi+40h], bx

loc_466F23:
mov     eax, [edi+8]
and     eax, 0FFFFFFh
jz      loc_467036
mov     dx, [esi+6Eh]
mov     [esi+0B2h], dx
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      short loc_466F54
and     byte ptr [edi+4Ah], 0F7h
mov     byte ptr [esi+9], 6
jmp     loc_467036

loc_466F54:
cmp     byte ptr [ecx+76h], 0
jz      short loc_466F68
mov     edx, [ecx+0C0h]
cmp     esi, edx
jz      loc_467020

loc_466F68:
mov     cx, [edi+40h]
add     ecx, eax
mov     [edi+40h], cx
mov     bl, [edi+4Ah]
test    bl, 4
jnz     loc_467016
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
xor     edx, edx
mov     dx, cx
cmp     edx, eax
jl      loc_467016
mov     bh, bl
or      bh, 4
mov     [edi+4Ah], bh
mov     word ptr [edi+40h], 0
mov     al, [esi+9]
mov     [edi+4Ch], al
mov     byte ptr [esi+9], 5
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+10h]
lea     eax, [esi+14h]
mov     ecx, 1
call    sub_4DE726
xor     ax, ax
mov     ecx, eax
shr     ecx, 10h
cmp     ecx, 3          ; switch 4 cases
ja      short def_466FDE ; jumptable 00466FDE default case
mov     eax, ecx
jmp     jpt_466FDE[eax*4] ; switch jump

loc_466FE5:             ; jumptable 00466FDE cases 0,1
mov     [esi+0Ah], cl
mov     byte ptr [edi+4Bh], 8
mov     word ptr [esi+44h], 8Ch
jmp     short def_466FDE ; jumptable 00466FDE default case

loc_466FF4:             ; jumptable 00466FDE case 2
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 3
jmp     short def_466FDE ; jumptable 00466FDE default case

loc_467001:             ; jumptable 00466FDE case 3
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 2

def_466FDE:             ; jumptable 00466FDE default case
lea     edx, [esi+14h]
mov     eax, 0A2h
jmp     short loc_467028

loc_467016:
lea     edx, [esi+14h]
mov     eax, 0A0h
jmp     short loc_467028

loc_467020:
add     edx, 14h
mov     eax, 0A0h

loc_467028:
call    sub_4D8BC3
mov     word ptr [esi+15Eh], 7FFFh

loc_467036:
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_46704D
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_467046[edx*4]

loc_46704D:
mov     eax, esi
call    sub_4DEB53
mov     ax, [edi+44h]
mov     ds:word_560E16, ax
mov     eax, esi
call    sub_4DF795
test    byte ptr [edi+4Ah], 8
jz      short loc_467081
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697

loc_467081:
test    byte ptr [esi], 2
jz      short loc_467099
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, esi
call    sub_4ED88B

loc_467099:
test    byte ptr [edi+4Ah], 8
jz      loc_46752C
mov     ax, [esi+190h]
mov     [edi], ax
mov     cx, [esi+192h]
sub     ecx, 8Ch
mov     [edi+2], cx
mov     ax, [esi+194h]
mov     [edi+4], ax
push    0
push    offset unk_800000
xor     eax, eax
mov     ax, [edi+42h]
or      eax, 4080000h
push    eax
lea     eax, [edi+8]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
mov     eax, edi
call    sub_4E01FC
jmp     loc_46752C
sub_466EE7 endp



; Attributes: thunk

sub_4670FE proc near
jmp     sub_4DE2F6
sub_4670FE endp




sub_467103 proc near
push    edx
lea     edx, [eax+378h]
test    byte ptr [eax+3], 0F0h
jnz     short loc_46711C
test    byte ptr [edx+4Ah], 10h
jz      short loc_467132
mov     byte ptr [eax+9], 1
pop     edx
retn

loc_46711C:
test    byte ptr [edx+4Ah], 10h
jz      short loc_467132
mov     byte ptr [eax+9], 2
movsx   ax, byte ptr [eax+0Dh]
imul    eax, 3Ch ; '<'
mov     [edx+46h], ax

loc_467132:
pop     edx
retn
sub_467103 endp




sub_467134 proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
lea     esi, [eax+378h]
mov     al, [eax+3]
and     al, 0Fh
lea     ebp, [edi+14h]
jnz     loc_467275
test    byte ptr [esi+4Ah], 10h
jz      loc_467528
mov     ax, [edi+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 6
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     [esp+20h+var_20], eax
mov     eax, [esp+20h+var_20]
mov     [esp+20h+var_1C], ax
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
mov     ax, [edi+56h]
mov     ecx, [esp+20h+var_20]
add     eax, ecx
and     ah, 0Fh
mov     [edi+56h], ax
test    cx, cx
jz      short loc_4671E1
mov     cl, [esi+48h]
test    cl, cl
jnz     short loc_4671D8
mov     edx, ebp
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_4671E5

loc_4671D8:
mov     ch, cl
dec     ch
mov     [esi+48h], ch
jmp     short loc_4671E5

loc_4671E1:
mov     byte ptr [esi+48h], 0

loc_4671E5:
test    bx, bx
jz      short loc_46720D
mov     al, [esi+49h]
test    al, al
jnz     short loc_467204
lea     edx, [edi+14h]
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_467211

loc_467204:
mov     ah, al
dec     ah
mov     [esi+49h], ah
jmp     short loc_467211

loc_46720D:
mov     byte ptr [esi+49h], 0

loc_467211:
movsx   eax, bx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_467240
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_467259

loc_467240:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_467259:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
jmp     loc_467521

loc_467275:
cmp     al, 1
jnz     loc_467421
test    byte ptr [esi+4Ah], 10h
jz      loc_467528
test    byte ptr [esi+4Eh], 8
jnz     short loc_4672BA
mov     ax, [edi+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     [esp+20h+var_1C], ax
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
jmp     short loc_4672C1

loc_4672BA:
xor     eax, eax
mov     [esp+20h+var_1C], ax

loc_4672C1:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     ebp, [edi+14h]
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
cmp     [esp+20h+var_1C], 0
jz      short loc_467315
mov     ch, [esi+48h]
test    ch, ch
jnz     short loc_46730C
mov     edx, ebp
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_467319

loc_46730C:
mov     al, ch
dec     al
mov     [esi+48h], al
jmp     short loc_467319

loc_467315:
mov     byte ptr [esi+48h], 0

loc_467319:
test    bx, bx
jz      short loc_467341
mov     ah, [esi+49h]
test    ah, ah
jnz     short loc_467338
lea     edx, [edi+14h]
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_467345

loc_467338:
mov     dl, ah
dec     dl
mov     [esi+49h], dl
jmp     short loc_467345

loc_467341:
mov     byte ptr [esi+49h], 0

loc_467345:
cmp     [esp+20h+var_1C], 0
jz      short loc_4673A1
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
movsx   eax, bx
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_46737C
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_467395

loc_46737C:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_467395:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax

loc_4673A1:
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
mov     word ptr [edi+44h], 0A0h
mov     dh, [esi+48h]
test    dh, dh
jnz     short loc_4673CC
lea     edx, [edi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 10h
jmp     short loc_4673D3

loc_4673CC:
mov     bl, dh
dec     bl
mov     [esi+48h], bl

loc_4673D3:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
mov     edx, eax
test    ah, 30h
jnz     short loc_467409
mov     eax, edi
call    sub_42C592
mov     [edi+16h], ax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax

loc_467409:
test    dh, 0Fh
jz      loc_467521
mov     byte ptr [edi+9], 4
mov     word ptr [esi+46h], 3Ch ; '<'
jmp     loc_467528

loc_467421:
cmp     al, 2
jnz     loc_467528
movsx   ax, byte ptr [edi+0Eh]
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     edx, [edi+54h]
sar     edx, 10h
mov     ebx, [esi+42h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
test    ax, ax
jz      short loc_467487
mov     ah, [esi+49h]
test    ah, ah
jnz     short loc_46747E
mov     edx, ebp
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_46748B

loc_46747E:
mov     dl, ah
dec     dl
mov     [esi+49h], dl
jmp     short loc_46748B

loc_467487:
mov     byte ptr [esi+49h], 0

loc_46748B:
mov     eax, [edi+0Bh]
sar     eax, 18h
movsx   edx, bx
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_4674B9
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_4674D2

loc_4674B9:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_4674D2:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
mov     word ptr [edi+44h], 0A0h
mov     dh, [esi+48h]
test    dh, dh
jnz     short loc_467509
lea     edx, [edi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_467510

loc_467509:
mov     bl, dh
dec     bl
mov     [esi+48h], bl

loc_467510:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B

loc_467521:
mov     eax, edi
call    sub_467B19

loc_467528:
add     esp, 8

loc_46752B:
pop     ebp

loc_46752C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_467134 endp




sub_467532 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+378h]
cmp     word ptr [edi+46h], 0
jz      loc_4675EF
mov     al, [edi+4Bh]
and     al, 18h
cmp     al, 18h
jnz     short loc_467561
lea     edx, [esi+14h]
mov     eax, 0DBh
call    sub_4D8BC3

loc_467561:
mov     ax, [esi+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     ebp, [esi+14h]
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [edi+44h]
and     ah, 0Fh
mov     [edi+44h], ax
mov     word ptr [esi+44h], 0A0h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     word ptr [edi+46h]
test    byte ptr [edi+4Ah], 10h
jz      loc_46752B
mov     byte ptr [esi+9], 1
mov     eax, esi
call    sub_467134
jmp     loc_46752B

loc_4675EF:
mov     byte ptr [eax+9], 0
mov     byte ptr [edi+48h], 0
call    sub_467103
jmp     loc_46752B
sub_467532 endp




sub_467601 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 378h
mov     [esp+24h+var_1C], eax
mov     byte ptr [eax+48h], 0
add     eax, 30h ; '0'
mov     [esp+24h+var_24], eax
mov     eax, [esp+24h+var_1C]
add     eax, 28h ; '('
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      loc_467858
mov     edx, [esp+24h+var_1C]
mov     ch, [edx+53h]
test    ch, ch
jnz     loc_4677E0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
call    sub_4DE043
mov     [esp+24h+var_20], eax
test    eax, eax
jz      loc_467850
lea     edx, [ebp+14h]
mov     eax, 0DDh
call    sub_4D8BC3
mov     eax, [esp+24h+var_20]
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     [eax+4], ch
mov     byte ptr [eax+0Fh], 3
mov     ax, [ebp+198h]
mov     edx, [esp+24h+var_20]
mov     [edx+14h], ax
mov     ax, [ebp+19Ah]
sub     eax, 41h ; 'A'
mov     [edx+16h], ax
mov     ax, [ebp+19Ch]
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
push    0
push    0
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ebx, [esp+2Ch+var_1C]
mov     ebx, [ebx+42h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     edx, [esp+2Ch+var_20]
add     edx, 1Ch
mov     eax, [esp+2Ch+var_20]
add     eax, 14h
mov     ecx, 0C00h
call    sub_4DD4C5
mov     edi, offset dword_5F8428
mov     esi, [esp+24h+var_20]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, ds:dword_5F8424+2
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+24h+var_1C]
mov     [edx+30h], eax
mov     eax, ds:dword_5F8428
sar     eax, 10h
shl     eax, 10h
mov     [edx+34h], eax
mov     eax, ds:dword_5F8428+2
sar     eax, 10h
shl     eax, 10h
mov     [edx+38h], eax
push    0
push    0
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ebx, [edx+42h]
sar     ebx, 10h
add     ebx, eax
and     ebx, 0FFFh
mov     ebp, offset byte_5F8364
add     ebp, 0C4h
mov     ecx, 2000h
mov     edx, [esp+2Ch+var_24]
mov     eax, ebp
call    sub_4DD4C5
add     word ptr ds:dword_5F8428+2, 50h ; 'P'
mov     ebx, 30h ; '0'
mov     edx, ebp
mov     eax, [esp+24h+var_20]
call    sub_4DDC7D
call    sub_4DE13B
test    eax, eax
jz      loc_467850
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 1
mov     edx, [esp+24h+var_20]
mov     dx, [edx+14h]
mov     [eax+1Ch], dx
mov     edx, [esp+24h+var_20]
mov     dx, [edx+16h]
mov     [eax+1Eh], dx
mov     edx, [esp+24h+var_20]
mov     dx, [edx+18h]
mov     [eax+20h], dx
jmp     loc_467850

loc_4677E0:
mov     bl, ch
dec     bl
mov     [edx+53h], bl
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [edx+42h]
sar     edx, 10h
add     edx, ebx
push    edx
mov     ecx, [esp+28h+var_24]
mov     ebx, eax
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jnz     loc_467850

loc_467810:
mov     byte ptr [ebp+0ACh], 0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
mov     eax, [esp+24h+var_1C]
mov     al, [eax+4Ch]
mov     [ebp+9], al
mov     eax, [esp+24h+var_1C]
mov     al, [eax+4Dh]
mov     [ebp+0Ah], al
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+53h], 1Eh

loc_467850:
add     esp, 0Ch
jmp     loc_46752B

loc_467858:
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_467850
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+42h]
sar     edx, 10h
add     edx, ebx
push    edx
mov     ecx, [esp+28h+var_24]
mov     ebx, eax
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jz      short loc_467810
mov     eax, [esp+24h+var_1C]
mov     bl, [eax+52h]
test    bl, bl
jnz     loc_467810
or      byte ptr [eax+4Eh], 4
mov     [ebp+0ADh], bl
mov     byte ptr [ebp+0ACh], 1
dec     byte ptr [eax+52h]
jmp     short loc_467850
sub_467601 endp




sub_4678B4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+378h]
cmp     word ptr [edi+46h], 0
jz      short loc_467936
mov     ah, [edi+48h]
test    ah, ah
jnz     short loc_4678E2
lea     edx, [esi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [edi+48h], 30h ; '0'
jmp     short loc_4678E9

loc_4678E2:
mov     dl, ah
dec     dl
mov     [edi+48h], dl

loc_4678E9:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, esi
call    sub_42DE56
test    ah, 30h
jnz     short loc_46792D
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_46792D:
dec     word ptr [edi+46h]
jmp     loc_46752C

loc_467936:
mov     byte ptr [eax+9], 1
mov     byte ptr [edi+4Eh], 0
mov     byte ptr [edi+53h], 0
jmp     loc_46752C
sub_4678B4 endp




sub_467947 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
add     eax, 378h
mov     byte ptr [eax+48h], 0
mov     dl, [esi+0Ah]
lea     edi, [esi+14h]
lea     ebp, [esi+1Ch]
cmp     dl, 1
jb      short loc_467976
jbe     short loc_4679C8
cmp     dl, 2
jz      loc_4679F4
jmp     loc_467A44

loc_467976:
test    dl, dl
jnz     loc_467A44
mov     dl, [eax+4Bh]
test    dl, dl
jz      short loc_4679B5
push    0
push    0
mov     bl, dl
dec     bl
mov     [eax+4Bh], bl
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h

loc_4679A2:
mov     edx, ebp
mov     eax, edi
call    sub_4DD4C5
sub     word ptr [esi+44h], 0Ah
jmp     loc_467A44

loc_4679B5:
mov     byte ptr [esi+9], 1
mov     [eax+4Eh], dl
mov     [eax+53h], dl

loc_4679BF:
and     byte ptr [eax+4Ah], 0FBh
jmp     loc_467A44

loc_4679C8:
mov     bh, [eax+4Bh]
test    bh, bh
jz      short loc_4679E8
push    0
push    0
mov     ch, bh
dec     ch
mov     [eax+4Bh], ch
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
jmp     short loc_4679A2

loc_4679E8:
mov     byte ptr [esi+9], 1
mov     [eax+4Eh], bh
mov     [eax+53h], bh
jmp     short loc_4679BF

loc_4679F4:
mov     dl, [esi+0ADh]
cmp     dl, [esi+0ACh]
jnz     short loc_467A27
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_467A44
mov     byte ptr [esi+9], 1
mov     byte ptr [eax+4Eh], 0
mov     byte ptr [eax+53h], 0
and     byte ptr [eax+4Ah], 0FBh
mov     byte ptr [esi+0ACh], 0

loc_467A27:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE9BA
mov     al, [esi+0ACh]
mov     [esi+0ADh], al

loc_467A44:
mov     eax, esi
call    sub_42DE56
test    ah, 30h
jnz     loc_46752B
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     loc_46752B
sub_467947 endp




sub_467A70 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_467AA4
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ebp+198h]
movsd
movsd
lea     edx, [ebp+190h]
mov     eax, ebp
call    sub_4AF9F8

loc_467AA4:
mov     eax, ebp
call    sub_432EAB
mov     byte ptr [ebp+0], 1
mov     byte ptr [ebp+2], 0
mov     byte ptr [ebp+3], 1
mov     byte ptr [ebp+4], 1
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+0Ch], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     eax, [ebp+196h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+198h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+19Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
mov     eax, ebp
call    sub_4DD43B
jmp     loc_46752B
sub_467A70 endp




sub_467B19 proc near

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
lea     ebp, [eax+378h]
mov     [esp+20h+var_1C], offset byte_5F8364
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, eax
lea     edi, [edi+0C4h]
mov     esi, eax
lea     esi, [esi+198h]
movsd
movsd
cmp     dword ptr [eax+80h], offset unk_800000
jnb     short loc_467BBB
test    byte ptr [eax+6], 80h
jz      short loc_467BBB
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     eax, [ebp+42h]
sar     eax, 10h
add     eax, ecx
push    eax
lea     ecx, [ebp+30h]
lea     ebx, [ebp+28h]
mov     edx, offset byte_5F8364
mov     eax, [esp+24h+var_20]
call    sub_4DD830
test    al, 2
jz      short loc_467BAD
cmp     byte ptr [ebp+53h], 0
jnz     short loc_467BAD
mov     eax, [esp+20h+var_20]
mov     al, [eax+9]
mov     [ebp+4Ch], al
mov     eax, [esp+20h+var_20]
mov     al, [eax+0Ah]
mov     [ebp+4Dh], al
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+9], 3
or      byte ptr [ebp+4Eh], 4
jmp     short loc_467BBB

loc_467BAD:
mov     bl, [ebp+53h]
test    bl, bl
jz      short loc_467BBB
mov     bh, bl
dec     bh
mov     [ebp+53h], bh

loc_467BBB:
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+9], 3
jz      short loc_467C04
mov     edi, eax
lea     edi, [edi+0C4h]
mov     esi, eax
lea     esi, [esi+190h]
movsd
movsd
lea     ecx, [ebp+30h]
lea     ebx, [ebp+28h]
mov     edx, [esp+20h+var_1C]
call    sub_4DD6EC
test    al, 2
jz      short loc_467C04
mov     al, [ebp+4Eh]
test    al, 0Ah
jnz     short loc_467C04
mov     ah, al
or      ah, 2
mov     [ebp+4Eh], ah
mov     byte ptr [ebp+50h], 14h
mov     byte ptr [ebp+4Fh], 3
mov     byte ptr [ebp+51h], 0

loc_467C04:
mov     eax, [esp+20h+var_20]
mov     dl, [eax+9]
cmp     dl, 3
jnz     short loc_467C2B
mov     byte ptr [eax+0ACh], 1
and     byte ptr [ebp+4Eh], 0F5h
mov     [ebp+52h], dl
mov     byte ptr [ebp+53h], 0
call    sub_467601
jmp     loc_467528

loc_467C2B:
call    sub_467C35
jmp     loc_467528
sub_467B19 endp




sub_467C35 proc near

var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+378h]
cmp     dword ptr [eax+80h], 200000h
jnb     short loc_467C57
mov     byte ptr [edi+54h], 1
jmp     short loc_467C5B

loc_467C57:
mov     byte ptr [edi+54h], 0

loc_467C5B:
mov     ah, [edi+4Eh]
test    ah, 0Ah
jz      loc_467DA7
mov     dl, [edi+50h]
test    dl, dl
jnz     loc_467DA0
mov     bl, ah
or      bl, 8
mov     [edi+4Eh], bl
mov     bh, [edi+51h]
test    bh, bh
jnz     loc_467D97
mov     byte ptr [edi+51h], 5
cmp     byte ptr [edi+4Fh], 0
jz      loc_467D91
mov     [esp+18h+var_18], 1

loc_467C97:
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      loc_467D7C
lea     edx, [esi+14h]
mov     eax, 0EBh
call    sub_4D8BC3
mov     byte ptr [ecx], 1
mov     byte ptr [ecx+2], 2Eh ; '.'
mov     byte ptr [ecx+3], 42h ; 'B'
mov     ax, [esi+56h]
mov     [ecx+64h], ax
mov     ax, [esi+198h]
mov     [ecx+14h], ax
mov     ax, [esi+19Ch]
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     eax, [ecx+14h]
lea     edx, [ecx+1Ch]
cmp     byte ptr [edi+54h], 0
jnz     short loc_467D34
mov     bx, [esi+19Ah]
add     ebx, 22h ; '"'
mov     [ecx+16h], bx
mov     ebx, [ecx+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [ecx+20h], ebx
mov     word ptr [ecx+66h], 80h
cmp     [esp+18h+var_18], 0
jz      short loc_467D2D
push    8F0h
jmp     short loc_467D66

loc_467D2D:
push    0FF710h
jmp     short loc_467D66

loc_467D34:
mov     bx, [esi+19Ah]
add     ebx, 78h ; 'x'
mov     [ecx+16h], bx
mov     ebx, [ecx+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [ecx+20h], ebx
mov     word ptr [ecx+66h], 0
cmp     [esp+18h+var_18], 0
jz      short loc_467D61
push    280h
jmp     short loc_467D66

loc_467D61:
push    0FFD80h

loc_467D66:
push    0
mov     bx, [esi+56h]
and     bh, 0Fh
movsx   ebx, bx
mov     ecx, 800h
call    sub_4DD4C5

loc_467D7C:
mov     ch, [esp+18h+var_18]
dec     ch
mov     [esp+18h+var_18], ch
test    ch, ch
jge     loc_467C97
dec     byte ptr [edi+4Fh]
jmp     short loc_467DA7

loc_467D91:
and     byte ptr [edi+4Eh], 0F5h
jmp     short loc_467DA7

loc_467D97:
mov     cl, bh
dec     cl
mov     [edi+51h], cl
jmp     short loc_467DA7

loc_467DA0:
mov     dh, dl
dec     dh
mov     [edi+50h], dh

loc_467DA7:
add     esp, 4
jmp     loc_46752C
sub_467C35 endp




sub_467DAF proc near

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

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
call    ds:funcs_467DD6[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_467DF6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0Ch
mov     eax, ebp
call    sub_4ED88B
sub_467DAF endp

; START OF FUNCTION CHUNK FOR sub_467DFD
;   ADDITIONAL PARENT FUNCTION sub_467DAF
;   ADDITIONAL PARENT FUNCTION sub_467F7F
;   ADDITIONAL PARENT FUNCTION sub_468619

loc_467DF6:
pop     ebp

loc_467DF7:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_467DFD



sub_467DFD proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 3A8h
mov     [esp+24h+var_1C], eax
or      byte ptr [ebp+0], 6
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     word ptr [ebp+64h], 40h ; '@'
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     dword ptr [ebp+78h], offset unk_516DD4
mov     dword ptr [ebp+10h], offset unk_516DC8
mov     word ptr [ebp+44h], 0Ah
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     byte ptr [ebp+74h], 0
mov     eax, [esp+24h+var_1C]
mov     word ptr [eax], 0
mov     edi, eax
lea     edi, [edi+8]
lea     esi, [ebp+14h]
movsd
movsd
mov     word ptr [eax+10h], 0FFD0h
mov     word ptr [eax+12h], 0FFB8h
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 48h ; 'H'
mov     dword ptr [eax+4], 8880000h
mov     word ptr [eax+2], 0
add     eax, 20h ; ' '
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     ecx, [esp+24h+var_1C]
mov     ecx, [ecx+12h]
sar     ecx, 10h
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+10h]
sar     ebx, 10h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+0Eh]
sar     edx, 10h
mov     eax, [ebp+54h]
sar     eax, 10h
mov     esi, esp
call    sub_4685B8
mov     edi, [esp+24h+var_1C]
lea     edi, [edi+8]
mov     esi, esp
movsd
movsd
mov     ax, [ebp+14h]
mov     edx, [esp+24h+var_1C]
add     [edx+8], ax
mov     ax, [ebp+16h]
add     [edx+0Ah], ax
mov     ax, [ebp+18h]
add     [edx+0Ch], ax
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ebp+6Eh], ax
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     [ebp+9], ah
add     esp, 0Ch
jmp     loc_467DF6
sub_467DFD endp

db 8Bh, 0C0h
jpt_467FA1 dd offset loc_467FA8 ; jump table for switch statement
dd offset loc_467FB2
dd offset loc_467FE1
dd offset loc_468016
dd offset loc_46805B
dd offset loc_468065
dd offset loc_468094
dd offset loc_4680AE
dd offset loc_4681AC
dd offset loc_468094
dd offset loc_4681D9



sub_467F7F proc near

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+3A8h]
mov     ebp, offset byte_5F8364
mov     al, [eax+8]
cmp     al, 0Ah         ; switch 11 cases
ja      def_467FA1      ; jumptable 00467FA1 default case
xor     edx, edx
mov     dl, al
jmp     jpt_467FA1[edx*4] ; switch jump

loc_467FA8:             ; jumptable 00467FA1 case 0
mov     eax, esi
call    sub_467DFD
inc     byte ptr [esi+8]

loc_467FB2:             ; jumptable 00467FA1 case 1
mov     eax, esi
call    sub_4684ED
test    al, al
jz      short loc_467FCA
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
jmp     short loc_467FDE

loc_467FCA:
mov     ebx, 10h
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi], 2

loc_467FDE:
inc     byte ptr [esi+8]

loc_467FE1:             ; jumptable 00467FA1 case 2
mov     ebx, [ebp+184h]
cmp     esi, ebx
jnz     def_467FA1      ; jumptable 00467FA1 default case
mov     eax, ebx
call    sub_468512
test    al, al
jz      short loc_468007
mov     bl, [ebx+8]
inc     bl
mov     [esi+8], bl
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_468007:
mov     dword ptr [ebp+184h], 0
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_468016:             ; jumptable 00467FA1 case 3
mov     eax, ebp
call    sub_4B55D5
test    eax, eax
jz      def_467FA1      ; jumptable 00467FA1 default case
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
mov     edx, 1
mov     eax, 3FEh
call    sub_4DC979
or      byte ptr [esi], 1
or      byte ptr [esi+6], 1
jmp     short loc_468085

loc_46805B:             ; jumptable 00467FA1 case 4
inc     al
mov     [esi+8], al
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_468065:             ; jumptable 00467FA1 case 5
test    byte ptr [edi], 2
jnz     short loc_46808D
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
lea     edx, [esi+14h]
mov     eax, 103h

loc_468080:
call    sub_4D8BC3

loc_468085:
inc     byte ptr [esi+8]
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_46808D:
inc     al
mov     [esi+8], al
jmp     short loc_468085

loc_468094:             ; jumptable 00467FA1 cases 6,9
cmp     byte ptr [esi+0A7h], 0
jge     short loc_4680A2
inc     al
mov     [esi+8], al

loc_4680A2:
mov     eax, esi
call    sub_4DEADD
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_4680AE:             ; jumptable 00467FA1 case 7
mov     eax, esi
call    sub_4684ED
test    al, al
jz      loc_468197
lea     eax, [esi+14h]
mov     ch, [esi+0Dh]
test    ch, ch
jnz     short loc_4680DB
mov     ecx, [esi+0Bh]
sar     ecx, 18h

loc_4680CD:
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_468085

loc_4680DB:
cmp     ch, 1
jnz     short loc_4680E4
xor     ecx, ecx
jmp     short loc_4680CD

loc_4680E4:
mov     eax, [esi+0Ah]
sar     eax, 18h
test    al, 80h
jz      short loc_46813E
mov     al, ch
and     al, 7Fh
and     eax, 0FFh
shl     eax, 8
xor     edx, edx
mov     dl, [esi+0Eh]
or      edx, eax
mov     eax, edx
shl     eax, 2
add     edx, eax
add     edx, edx
mov     ecx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
xor     ecx, ecx
mov     ebx, eax
mov     edx, 1
mov     eax, 2
call    sub_4A6227
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
jmp     loc_468085

loc_46813E:
mov     dh, [esi+0Eh]
cmp     dh, 0FFh
jz      short loc_468197
mov     bl, [esi+0Ch]
cmp     bl, 40h ; '@'
jz      short loc_468153
cmp     bl, 42h ; 'B'
jnz     short loc_468169

loc_468153:
lea     eax, [esi+14h]
mov     ecx, 0Ch
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_46817B

loc_468169:
xor     ebx, ebx
mov     bl, dh
xor     ecx, ecx
xor     edx, edx
mov     eax, 2
call    sub_4A6227

loc_46817B:
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
mov     byte ptr [ebp+548h], 35h ; '5'
jmp     loc_468085

loc_468197:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, edx
call    sub_4A6227
jmp     loc_468085

loc_4681AC:             ; jumptable 00467FA1 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_467FA1 ; jumptable 00467FA1 default case
test    byte ptr [edi], 2
jnz     loc_46808D
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
lea     edx, [esi+14h]
mov     eax, 104h
jmp     loc_468080

loc_4681D9:             ; jumptable 00467FA1 case 10
mov     edx, 2
mov     eax, 3FEh
call    sub_4DC979
mov     eax, ebp
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
and     byte ptr [edi], 0FDh
mov     byte ptr [esi+8], 1

def_467FA1:             ; jumptable 00467FA1 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_432697
push    80h
push    0
push    4000000h
lea     eax, [edi+18h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
mov     dword ptr [edi+18h], 0
jmp     loc_467DF6
sub_467F7F endp




sub_46824B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3A8h]
mov     al, [eax+0ACh]
mov     [esi+0ADh], al
mov     word ptr [esi+15Eh], 4210h
cmp     byte ptr [esi+8], 0
jz      short loc_468289
lea     eax, [edi+20h]
mov     edx, esi
call    sub_4E19CA
test    eax, eax
jz      short loc_468286
or      byte ptr [edi], 1
jmp     short loc_468289

loc_468286:
and     byte ptr [edi], 0FEh

loc_468289:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_468290[edx*4]
cmp     byte ptr [esi+8], 0
jnz     short loc_4682B5
mov     ecx, 1000000h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     short loc_4682DC

loc_4682B5:
push    0
push    0
mov     edx, [edi+4]
push    edx
lea     eax, [edi+18h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [edi+14h]
sar     edx, 10h
lea     eax, [edi+8]
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC

loc_4682DC:
mov     al, [esi+0ADh]
cmp     al, [esi+0ACh]
jnz     short loc_4682F1
mov     eax, esi
call    sub_4DEADD

loc_4682F1:
mov     dword ptr [edi+18h], 0
jmp     loc_467DF7
sub_46824B endp

db 8Bh, 0C0h
jpt_468337 dd offset loc_46833E ; jump table for switch statement
dd offset loc_468358
dd offset loc_468386
dd offset loc_468390
dd offset loc_4683C3
dd offset loc_4683D9



sub_468317 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
lea     edx, [eax+3A8h]
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_468337      ; jumptable 00468337 default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_468337[ebx*4] ; switch jump

loc_46833E:             ; jumptable 00468337 case 0
mov     eax, ecx
call    sub_467DFD
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468358:             ; jumptable 00468337 case 1
mov     edx, ds:dword_5F84E8
cmp     ecx, edx
jnz     def_468337      ; jumptable 00468337 default case
mov     eax, edx
call    sub_468512
test    al, al
jz      short loc_468379
inc     byte ptr [edx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468379:
xor     ecx, edx
mov     ds:dword_5F84E8, ecx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468386:             ; jumptable 00468337 case 2
inc     al
mov     [ecx+9], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468390:             ; jumptable 00468337 case 3
mov     edx, ds:off_530065
mov     ebx, 0FFFFFFFFh
mov     eax, 4
call    sub_4A0CDD
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
lea     edx, [ecx+14h]
mov     eax, 103h
call    sub_4D8BC3
inc     byte ptr [ecx+9]

loc_4683C3:             ; jumptable 00468337 case 4
mov     dword ptr [esi+184h], 0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4683D9:             ; jumptable 00468337 case 5
mov     ah, [ecx+0Ah]
dec     ah
mov     [ecx+0Ah], ah
jnz     short def_468337 ; jumptable 00468337 default case
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
mov     byte ptr [ecx+0Ah], 2Dh ; '-'
mov     dword ptr [edx+4], 48C0002h

def_468337:             ; jumptable 00468337 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_468317 endp




sub_4683FA proc near
push    edx
mov     dl, [eax+9]
test    dl, dl
jbe     short loc_468409
cmp     dl, 1
jz      short loc_46840E
jmp     short loc_46841F

loc_468409:
inc     dl
mov     [eax+9], dl

loc_46840E:
mov     dl, [eax+0Ah]
dec     dl
mov     [eax+0Ah], dl
jnz     short loc_46841F
mov     byte ptr [eax+8], 3
mov     [eax+9], dl

loc_46841F:
call    sub_46856B
pop     edx
retn
sub_4683FA endp

db 90h
jpt_46845D dd offset loc_468464 ; jump table for switch statement
dd offset loc_468470
dd offset loc_468484
dd offset loc_468470
dd offset loc_468484
dd offset loc_468470
dd offset loc_468484
dd offset loc_468493



sub_468447 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+3A8h]
mov     al, [eax+9]
cmp     al, 7           ; switch 8 cases
ja      short def_46845D ; jumptable 0046845D default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_46845D[ebx*4] ; switch jump

loc_468464:             ; jumptable 0046845D case 0
test    byte ptr [ecx], 1
jz      short def_46845D ; jumptable 0046845D default case
inc     al
mov     [edx+9], al
jmp     short def_46845D ; jumptable 0046845D default case

loc_468470:             ; jumptable 0046845D cases 1,3,5
mov     eax, edx
call    sub_468619
test    al, al
jz      short def_46845D ; jumptable 0046845D default case
inc     byte ptr [edx+9]
mov     byte ptr [edx+0Ah], 4
jmp     short def_46845D ; jumptable 0046845D default case

loc_468484:             ; jumptable 0046845D cases 2,4,6
mov     ah, [edx+0Ah]
dec     ah
mov     [edx+0Ah], ah
jnz     short def_46845D ; jumptable 0046845D default case
inc     byte ptr [edx+9]
jmp     short def_46845D ; jumptable 0046845D default case

loc_468493:             ; jumptable 0046845D case 7
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 1Eh

def_46845D:             ; jumptable 0046845D default case
mov     eax, edx
call    sub_46856B
pop     edx
pop     ecx
pop     ebx
retn
sub_468447 endp




sub_4684AA proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+3A8h]
call    sub_4DE13B
test    eax, eax
jz      short loc_4684E3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [esi+8]
movsd
movsd
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
mov     eax, ecx
call    sub_4DE2F6

loc_4684E3:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4684AA endp



; Attributes: thunk

sub_4684E8 proc near
jmp     sub_4DE2F6
sub_4684E8 endp




sub_4684ED proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E888
test    eax, eax
jnz     short loc_46850A
cmp     byte ptr [edx+0Eh], 0FFh
jnz     short loc_46850E

loc_46850A:
xor     al, al
pop     edx
retn

loc_46850E:
mov     al, 1
pop     edx
retn
sub_4684ED endp




sub_468512 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
lea     edi, [eax+0C4h]
lea     esi, [eax+190h]
movsd
movsd
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     [esp+2Ch+var_1C], 2
mov     [esp+2Ch+var_1A], 9
mov     [esp+2Ch+var_18], 4
mov     ecx, esp
lea     ebx, [esp+2Ch+var_1C]
mov     edx, offset byte_5F8364
call    sub_4DD6EC
test    al, 10h
jz      short loc_468561
xor     al, al
jmp     short loc_468563

loc_468561:
mov     al, 1

loc_468563:
add     esp, 18h
jmp     loc_467DF7
sub_468512 endp




sub_46856B proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
mov     ecx, [edx+18h]
and     ecx, 0FFFFFFh
jz      short loc_4685B4
test    byte ptr [edx+1Bh], 38h
jz      short loc_4685B4
mov     bx, [eax+6Eh]
mov     [eax+0B2h], bx
sub     ebx, ecx
mov     [eax+6Eh], bx
mov     word ptr [edx+2], 0Ah
cmp     word ptr [eax+6Eh], 1
jge     short loc_4685AB
mov     byte ptr [eax+8], 4
mov     byte ptr [eax+9], 0

loc_4685AB:
mov     word ptr [eax+15Eh], 7FFFh

loc_4685B4:
pop     edx
pop     ecx
pop     ebx
retn
sub_46856B endp




sub_4685B8 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_10= byte ptr -10h

push    edi
push    ebp
sub     esp, 40h
mov     ebp, esi
mov     esi, eax
mov     edi, edx
test    dx, dx
jge     short loc_4685D2
neg     edi
neg     ecx
lea     esi, [eax+800h]

loc_4685D2:
mov     eax, esp
call    sub_4EF184
mov     edx, esp
mov     eax, esi
call    sub_4EF50D
mov     [esp+48h+var_18], cx
mov     [esp+48h+var_16], bx
mov     [esp+48h+var_14], di
mov     edx, edi
neg     edx
mov     [esp+48h+var_14], dx
lea     ebx, [esp+48h+var_10]
lea     edx, [esp+48h+var_18]
mov     eax, esp
call    sub_4EF2DC
mov     edi, ebp
lea     esi, [esp+48h+var_10]
movsd
movsd
mov     eax, ebp
add     esp, 40h
pop     ebp
pop     edi
retn
sub_4685B8 endp




sub_468619 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
call    sub_4DE043
mov     ebp, eax
mov     [esp+20h+var_1C], eax
test    eax, eax
jz      loc_4686D5
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 6Eh ; 'n'
mov     eax, [esp+20h+var_20]
call    sub_4DD43B
mov     edx, [esp+20h+var_20]
sub     word ptr [edx+16h], 3Ch ; '<'
lea     edi, [ebp+14h]
mov     esi, edx
lea     esi, [esi+14h]
movsd
movsd
mov     edx, [ebp+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+1Ch], edx
mov     edx, [ebp+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+20h], edx
mov     edx, [ebp+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+24h], edx
mov     edx, [esp+20h+var_20]
mov     dx, [edx+56h]
mov     [ebp+64h], dx
mov     dword ptr [ebp+9Ch], 20h ; ' '
mov     dword ptr [ebp+0A0h], 10h
mov     edi, [esp+20h+var_20]
lea     edi, [edi+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+2Ch]
movsd
movsd
mov     edi, [esp+20h+var_20]
lea     edi, [edi+1Ch]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+34h]
movsd
movsd
movsd
movsd
mov     edx, [esp+20h+var_20]
add     edx, 14h
mov     eax, 0B2h
call    sub_4D8BC3

loc_4686D5:
mov     edx, [esp+20h+var_1C]
test    edx, edx
jz      short loc_4686E2
mov     edx, 1

loc_4686E2:
mov     al, dl
add     esp, 8
jmp     loc_467DF6
sub_468619 endp




sub_4686EC proc near
push    edx
push    esi
push    edi
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
mov     word ptr [eax+15Eh], 4200h
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_468717[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4686EC endp




sub_468722 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+74h], 1
mov     dword ptr [ecx+78h], offset unk_516DE0
mov     dword ptr [ecx+10h], offset unk_516DE0
mov     [ecx+0ACh], ah
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Eh], 30h ; '0'
mov     eax, ecx
call    sub_4687E4
pop     edx
pop     ecx
pop     ebx
retn
sub_468722 endp

align 4
jpt_468990 dd offset loc_468997 ; jump table for switch statement
dd offset loc_4689B1
dd offset loc_4689C9
dd offset loc_4689E4



sub_4687E4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     esi, offset byte_5F8364
cmp     word ptr [eax+14h], 0
jle     loc_468887
call    sub_4DE13B
test    eax, eax
jz      short loc_46881B
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ebp+198h]
movsd
movsd

loc_46881B:
lea     esi, [ebp+198h]
mov     ecx, esi
mov     ebx, 2
mov     edx, 1
xor     eax, eax
call    sub_43C263
mov     ecx, esi
mov     ebx, 2
mov     edx, ebx
xor     eax, eax
call    sub_43C263
mov     ecx, esi
mov     ebx, 4
mov     edx, 3
xor     eax, eax
call    sub_43C263
call    sub_4DE043
test    eax, eax
jz      short loc_468877
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Ah ; '*'
mov     byte ptr [eax+3], 1
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     byte ptr [eax+0Ch], 3

loc_468877:
mov     eax, ebp
call    sub_432EAB
mov     byte ptr [ebp+8], 2
jmp     def_468990      ; jumptable 00468990 default case

loc_468887:
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      loc_46891C
cmp     byte ptr [ebp+9], 0
jnz     short loc_468900
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     ebx, eax
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 10h
jge     short loc_46891C
mov     byte ptr [ebp+74h], 0
mov     [ebp+16h], bx
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 1
lea     edx, [ebp+14h]
mov     eax, 187h
call    sub_4D8BC3
jmp     short loc_46891C

loc_468900:
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56

loc_46891C:
mov     eax, ebp
call    sub_4DEADD
mov     dword ptr [ebp+78h], offset unk_516DEC
mov     eax, ebp
call    sub_431C8C
mov     dword ptr [ebp+78h], offset unk_516DE0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_432697
cmp     byte ptr [ebp+9], 0
jz      short loc_468980
mov     eax, ebp
call    sub_42C592
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
jz      short loc_468966
add     word ptr [ebp+46h], 0Ch
jmp     short loc_468980

loc_468966:
cmp     word ptr [ebp+46h], 0
jz      short loc_468980
lea     edx, [ebp+14h]
mov     eax, 187h
call    sub_4D8BC3
mov     word ptr [ebp+46h], 0

loc_468980:
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_468990      ; jumptable 00468990 default case
and     eax, 0FFh
jmp     jpt_468990[eax*4] ; switch jump

loc_468997:             ; jumptable 00468990 case 0
mov     edx, [esi+184h]
cmp     ebp, edx
jnz     short def_468990 ; jumptable 00468990 default case
mov     dword ptr [esi+184h], 0
mov     byte ptr [edx+0Ah], 2
jmp     short def_468990 ; jumptable 00468990 default case

loc_4689B1:             ; jumptable 00468990 case 1
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      short def_468990 ; jumptable 00468990 default case
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 0
inc     byte ptr [ebp+0Ah]
jmp     short def_468990 ; jumptable 00468990 default case

loc_4689C9:             ; jumptable 00468990 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_468990 ; jumptable 00468990 default case
mov     edx, 1Ah
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebp+0Ah], 3
jmp     short def_468990 ; jumptable 00468990 default case

loc_4689E4:             ; jumptable 00468990 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_468990 ; jumptable 00468990 default case
mov     dword ptr [esi+184h], 0
mov     byte ptr [ebp+0Ah], 0

def_468990:             ; jumptable 00468990 default case
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4687E4 endp




sub_468A02 proc near
push    ecx
cmp     eax, ds:dword_5F84E8
jnz     short loc_468A13
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_468A13:
call    sub_4DE2F6
pop     ecx
retn
sub_468A02 endp




sub_468A1A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
lea     edx, [eax+1E8h]
lea     ebx, [eax+64h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [edx+2], ax
mov     ah, [ecx+3]
cmp     ah, 2
jnz     short loc_468A6D
cmp     byte ptr [ecx+8], 0
jz      short loc_468A6D
or      [ecx], ah

loc_468A6D:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_468A74[edx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_468AD8
cmp     byte ptr [ecx+8], 0
jz      short loc_468AD8
cmp     byte ptr [ebx+3], 0
jz      short loc_468AA5
cmp     byte ptr [ebx], 0
jnz     short loc_468AA5
lea     edx, [ecx+14h]
mov     eax, 190h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 0
jmp     short loc_468AAB

loc_468AA5:
cmp     byte ptr [ebx+3], 0
jnz     short loc_468AC1

loc_468AAB:
cmp     byte ptr [ebx], 0
jle     short loc_468AC1
lea     edx, [ecx+14h]
mov     eax, 191h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 1

loc_468AC1:
mov     eax, [ecx+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_468AD8
cmp     byte ptr [ebx+2], 0
jnz     short loc_468AD8
and     byte ptr [ecx], 0FDh

loc_468AD8:
cmp     byte ptr [ecx+3], 2
jnz     short loc_468AF0
test    dword ptr [ebp+8], 0FFFFFFh
jz      short loc_468AF0
mov     word ptr [ecx+15Eh], 7FFFh

loc_468AF0:
mov     dword ptr [ebp+8], 0
jmp     loc_469533
sub_468A1A endp




sub_468AFC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+0C4h]
lea     ebx, [eax+1E8h]
lea     ebp, [eax+64h]
call    sub_4DF838
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 1000100h
mov     dword ptr [ecx+15Ch], 100h
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_516E04
mov     byte ptr [esi+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Ah]
mov     [ecx+73h], al
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     [ebx+4], ah
mov     word ptr [ebx], 0
mov     byte ptr [ebx+5], 1Eh
mov     [ebp+3], ah
mov     [edi+6], ah
lea     eax, [esi+20h]
mov     ebx, 0FFFFFFA0h
mov     edx, 5
call    sub_4E19B9
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
mov     byte ptr [ecx+8], 1
mov     dl, [ecx+3]
test    dl, dl
jnz     short loc_468C13
mov     [ecx+9], dl
mov     [ecx+0Ah], dl
mov     [ecx+0Fh], dl
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ecx+44h], 50h ; 'P'
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     [esi+3Ch], dl
jmp     short loc_468C2C

loc_468C13:
mov     byte ptr [ecx+8], 3
mov     word ptr [ecx+44h], 1E0h
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     byte ptr [esi+3Ch], 0

loc_468C2C:
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+4Eh], 30h ; '0'
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [esi+8], 0
mov     eax, ecx
call    sub_468C5F
jmp     loc_469533
sub_468AFC endp




sub_468C5F proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
add     eax, 408h
mov     [esp+38h+var_20], eax
mov     eax, ebp
add     eax, 0C4h
mov     [esp+38h+var_1C], eax
lea     ecx, [ebp+1E8h]
lea     esi, [ebp+64h]
mov     ebx, offset byte_5F8364
and     byte ptr [eax+6], 0F7h
lea     eax, [ebp+428h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_468CA9
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 8

loc_468CA9:
mov     al, [ecx+5]
test    al, al
jz      short loc_468CB7
mov     ah, al
dec     ah
mov     [ecx+5], ah

loc_468CB7:
mov     dx, [ecx]
test    dx, dx
jz      short loc_468CC5
mov     edi, edx
dec     edi
mov     [ecx], di

loc_468CC5:
mov     eax, [esp+38h+var_20]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
jz      loc_468EB7
mov     dh, [ebp+9]
cmp     dh, 1
jnz     short loc_468CE2
add     [ecx+4], dh

loc_468CE2:
mov     dx, [ebp+6Eh]
mov     [ebp+0B2h], dx
sub     edx, eax
mov     [ebp+6Eh], dx
add     [ecx], ax
cmp     word ptr [ebp+6Eh], 0
jg      short loc_468D0E
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 0FDh
mov     byte ptr [ebp+9], 7
jmp     loc_4690BF

loc_468D0E:
mov     word ptr [ebp+15Eh], 7FFFh
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     short loc_468D3D
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+9]
xor     eax, eax
mov     ax, [ecx]
cmp     eax, edx
jge     short loc_468D4B

loc_468D3D:
mov     eax, [esp+38h+var_20]
test    byte ptr [eax+0Bh], 20h
jz      loc_468DF5

loc_468D4B:
cmp     byte ptr [ebp+9], 5
jz      loc_4690BF
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     eax, [esp+38h+var_1C]
mov     dl, [eax+6]
or      dl, 10h
mov     [eax+6], dl
mov     dh, dl
and     dh, 0DFh
mov     [eax+6], dh
mov     word ptr [ecx], 0
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+5], 1Eh
mov     byte ptr [ebp+9], 6
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+38h+var_20]
add     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
mov     word ptr [ebp+44h], 0C0h
mov     word ptr [ebp+46h], 0FF40h
mov     ecx, [esp+38h+var_1C]
and     byte ptr [ecx+6], 0FDh
add     dh, 8
and     dh, 0Fh
mov     [ebp+56h], dx
test    eax, 0FFFF0000h
jnz     short loc_468DE8
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 8

loc_468DD2:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4690BF

loc_468DE8:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Ah
jmp     short loc_468DD2

loc_468DF5:
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A0h
call    sub_4D8BC3
mov     dh, [ecx+5]
test    dh, dh
jz      short loc_468E4C
cmp     byte ptr [ecx+4], 2
jnz     loc_4690BF
cmp     byte ptr [ebp+9], 5
jz      loc_4690BF
mov     byte ptr [ebp+9], 5
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 6
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 40h
jmp     loc_4690BF

loc_468E4C:
mov     byte ptr [ecx+5], 1Eh
mov     [ecx+4], dh
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jnz     loc_4690BF
cmp     byte ptr [ebp+9], 8
jz      loc_4690BF
mov     byte ptr [ebp+9], 6
mov     byte ptr [ebp+0Ah], 4
mov     ecx, [esp+38h+var_20]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, (offset dword_5F8376+2)
mov     eax, edi
call    sub_4DE552
mov     byte ptr [ebp+0ACh], 0Dh
jmp     loc_468DD2

loc_468EB7:
mov     dl, [ebp+9]
cmp     dl, 2
jz      loc_4690BF
cmp     dl, 3
jz      loc_4690BF
cmp     dl, 4
jz      loc_4690BF
cmp     dl, 5
jz      loc_4690BF
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     loc_4690BF
cmp     byte ptr [ebp+9], 8
jz      loc_4690BF
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jz      short loc_468F08
mov     ch, cl
dec     ch
mov     [eax+3Eh], ch

loc_468F08:
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 8
jz      loc_469093
cmp     byte ptr [ebp+9], 1
jz      loc_469072
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      loc_46900A
mov     ecx, [ebp+80h]
cmp     ecx, 80000h
jbe     short loc_468F65
mov     byte ptr [ebp+9], 1
mov     byte ptr [ebp+0Ah], 0
jmp     loc_469072

loc_468F65:
cmp     ecx, 1E848h
jnb     short loc_468F9F
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jnz     short loc_468F9F
cmp     byte ptr [ebp+3], 2
jz      short loc_468F8A
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], cl
jmp     loc_469068

loc_468F8A:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], cl
mov     [esi+1], cl
mov     [esi], cl
jmp     loc_469068

loc_468F9F:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_468FB9
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_468FB9:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     byte ptr [ebp+3], 2
jz      loc_469072
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 1
jnz     loc_469072
mov     byte ptr [ebp+9], 4
mov     byte ptr [ebp+0ACh], 5
mov     bh, [eax+6]
or      bh, 3
mov     [eax+6], bh
mov     cl, bh
and     cl, 7Fh
mov     [eax+6], cl
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_469072

loc_46900A:
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 6
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 80h
jnz     short loc_469024
mov     byte ptr [eax+7], 0
or      byte ptr [eax+6], 80h

loc_469024:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 10h
cmp     dword ptr [ebp+80h], 1E848h
jnb     short loc_469072
mov     dh, [eax+3Eh]
test    dh, dh
jnz     short loc_469072
cmp     byte ptr [ebp+3], 2
jz      short loc_469050
mov     byte ptr [ebp+9], 3
mov     [ebp+0Ah], dh
jmp     short loc_469060

loc_469050:
mov     byte ptr [ebp+9], 3
mov     byte ptr [ebp+0Ah], 5
mov     [esi+2], dh
mov     [esi+1], dh
mov     [esi], dh

loc_469060:
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Fh

loc_469068:
mov     eax, [esp+38h+var_20]
mov     word ptr [eax+3Ah], 80h

loc_469072:
cmp     byte ptr [ebp+9], 0
jnz     short loc_4690BF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4690BF
cmp     byte ptr [ebp+0ACh], 1
jz      short loc_4690BF
mov     byte ptr [ebp+0ACh], 1
jmp     loc_468DD2

loc_469093:
mov     dh, [ebp+9]
test    dh, dh
jnz     short loc_4690BF
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4690BF
mov     [ebp+0Ah], dh
mov     [ebp+0Fh], dh
mov     word ptr [ebp+44h], 50h ; 'P'
mov     eax, [esp+38h+var_20]
mov     byte ptr [eax+3Dh], 78h ; 'x'
mov     [eax+3Ch], dh
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 7Eh

loc_4690BF:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4690C6[edx*4]
lea     edx, [ebp+14h]
mov     cl, [ebp+0A6h]
test    cl, 4
jz      short loc_4690E2
mov     eax, 159h
jmp     short loc_4690EC

loc_4690E2:
test    cl, 8
jz      short loc_4690F1
mov     eax, 15Ah

loc_4690EC:
call    sub_4D8BC3

loc_4690F1:
mov     al, [ebp+9]
cmp     al, 5
jz      short loc_469107
cmp     al, 6
jz      short loc_469107
cmp     al, 7
jz      short loc_469107
mov     eax, ebp
call    sub_46A5C7

loc_469107:
cmp     byte ptr [ebp+3], 2
jnz     short loc_469167
mov     eax, [ebp+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_469125
cmp     byte ptr [esi+2], 0
jnz     short loc_469125
and     byte ptr [ebp+0], 0FDh

loc_469125:
mov     eax, [esp+38h+var_20]
add     eax, 8
test    byte ptr [ebp+0], 2
jz      short loc_469154
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0

loc_469140:
push    offset unk_800000
mov     edx, [ebp+70h]
sar     edx, 18h
or      edx, 4080000h
push    edx
jmp     short loc_46918D

loc_469154:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    80h
jmp     short loc_469140

loc_469167:
mov     edi, [esp+38h+var_20]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+44h+var_20]
add     eax, 8

loc_46918D:
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 2
jz      loc_4692C7
xor     edx, edx
mov     [esp+38h+var_28], dx
mov     [esp+38h+var_26], 4D0h
mov     [esp+38h+var_24], 0FFE0h
lea     eax, [ebp+258h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     ax, [ebp+1A0h]
add     eax, [esp+38h+var_38]
mov     edx, [esp+38h+var_20]
mov     [edx], ax
mov     dx, [ebp+1A2h]
add     edx, [esp+38h+var_34]
mov     eax, [esp+38h+var_20]
mov     [eax+2], dx
mov     dx, [ebp+1A4h]
add     edx, [esp+38h+var_30]
mov     eax, [esp+38h+var_20]
mov     [eax+4], dx
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
mov     esi, [esp+44h+var_20]
add     esi, 18h
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC
lea     eax, [ebp+2B8h]
mov     ebx, esp
lea     edx, [esp+38h+var_28]
call    sub_4EF1FB
mov     dx, [ebp+1B0h]
add     edx, [esp+38h+var_38]
mov     eax, [esp+38h+var_20]
mov     [eax], dx
mov     dx, [ebp+1B2h]
mov     ecx, [esp+38h+var_34]
add     edx, ecx
mov     [eax+2], dx
mov     ax, [ebp+1B4h]
add     eax, [esp+38h+var_30]
mov     edx, [esp+38h+var_20]
mov     [edx+4], ax
push    80h
push    0
xor     eax, eax
mov     edx, [esp+40h+var_1C]
mov     ax, [edx+4]
or      eax, 5080000h
push    eax
push    esi
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
mov     eax, [esp+4Ch+var_20]
call    sub_4E01FC

loc_4692C7:
cmp     byte ptr [ebp+3], 2
jz      short loc_4692E6
test    byte ptr [ebp+0], 2
jz      short loc_4692E6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, ebp
call    sub_4ED88B

loc_4692E6:
add     esp, 20h
jmp     loc_469533
sub_468C5F endp



; Attributes: thunk

sub_4692EE proc near
jmp     sub_4DE2F6
sub_4692EE endp




sub_4692F3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+0C4h]
lea     esi, [eax+64h]
cmp     dword ptr [eax+80h], 80000h
jbe     short loc_469321
cmp     ds:byte_77E7D4, 1Dh
jnz     short loc_46934B
cmp     byte ptr ds:dword_77E7D5, 2
jnz     short loc_46934B

loc_469321:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     short loc_469352

loc_46934B:
mov     eax, ecx
call    sub_4DEADD

loc_469352:
cmp     byte ptr [ecx+3], 2
jnz     loc_46A4A5
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [esi+2], 0
mov     dl, [esi+2]
mov     [esi+1], dl
mov     [esi], dl
jmp     loc_46A4A5
sub_4692F3 endp




sub_46937D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+64h]
xor     ebx, ebx
mov     bl, [eax+0Ah]
call    ds:funcs_46938A[ebx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_4693FF
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
mov     eax, ebx
shl     eax, 5
mov     bl, [edx]
and     bl, 1Fh
movsx   bx, bl
or      eax, ebx
mov     bl, [edx+2]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 0Ah
or      eax, ebx
mov     [ecx+15Eh], ax
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_4693E1
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
or      byte ptr [ecx+15Fh], 80h

loc_4693E1:
mov     ecx, [ecx+15Ch]
sar     ecx, 10h
test    ch, 80h
jz      short loc_4693FF
mov     bl, [edx+2]
dec     bl
mov     [edx+2], bl
test    bl, bl
jge     short loc_4693FF
mov     byte ptr [edx+2], 0

loc_4693FF:
pop     edx
pop     ecx
pop     ebx
retn
sub_46937D endp




sub_469403 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+408h]
mov     [esp+1Ch+var_1C], edx
lea     edx, [eax+0C4h]
lea     esi, [eax+1E8h]
test    byte ptr [edx+1], 0Fh
jz      short loc_46947E
mov     dx, [ebp+56h]
add     dh, 8
and     dh, 0Fh
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [ebp+0Ah], 5
mov     esi, [ebp+54h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+36h]
sar     edx, 10h
cmp     esi, edx
jle     short loc_46945A
mov     byte ptr [ebp+0ACh], 0Eh
jmp     short loc_469461

loc_46945A:
mov     byte ptr [ebp+0ACh], 0Dh

loc_469461:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_46963A
jmp     loc_469530

loc_46947E:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edx, [esp+1Ch+var_1C]
mov     bl, [edx+3Dh]
test    bl, bl
jnz     loc_469529
mov     cl, [ebp+0A6h]
cmp     cl, 1
jnz     loc_469530
test    [esi+2], cl
jz      short loc_4694DE
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     [ebp+0Eh], bl
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     [esi+3Ch], bl
jmp     short loc_469530

loc_4694DE:
cmp     byte ptr [ebp+0Fh], 0
jnz     short loc_4694E7
add     [edx+3Ch], cl

loc_4694E7:
mov     edx, [esp+1Ch+var_1C]
cmp     byte ptr [edx+3Ch], 1
jz      short loc_4694FA
mov     byte ptr [edx+3Dh], 78h ; 'x'
mov     byte ptr [ebp+0Fh], 0
jmp     short loc_469530

loc_4694FA:
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0Dh], 80h
mov     byte ptr [ebp+0Eh], 0
mov     byte ptr [ebp+0Fh], 3
mov     edi, edx
lea     edi, [edi+30h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
mov     esi, [esp+1Ch+var_1C]
mov     [esi+38h], dx
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [esi+3Ch], 0
jmp     short loc_469530

loc_469529:
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh

loc_469530:
add     esp, 4

loc_469533:
pop     ebp
jmp     loc_46A4A5
sub_469403 endp




sub_469539 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0Eh], 0
jnz     short loc_469575
mov     ecx, [edx+36h]
sar     ecx, 10h
sub     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_46956E

loc_469564:
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [edx+3Dh], 5
jmp     short loc_469596

loc_46956E:
sub     word ptr [eax+56h], 40h ; '@'
jmp     short loc_469596

loc_469575:
mov     ecx, [edx+36h]
sar     ecx, 10h
add     ecx, 400h
and     ecx, 0FFFh
mov     ebx, [eax+54h]
sar     ebx, 10h
cmp     ebx, ecx
jz      short loc_469564
add     word ptr [eax+56h], 40h ; '@'

loc_469596:
and     byte ptr [eax+57h], 0Fh
pop     edx
pop     ecx
pop     ebx
retn
sub_469539 endp




sub_46959E proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+0C4h]
mov     bl, [edx+3Dh]
dec     bl
mov     [edx+3Dh], bl
jnz     short loc_4695DE
mov     [eax+0Ah], bl
mov     word ptr [eax+44h], 50h ; 'P'
mov     byte ptr [edx+3Dh], 78h ; 'x'
and     byte ptr [ecx+6], 0FEh
mov     byte ptr [eax+0ACh], 1

loc_4695CF:
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4695DE:
pop     edx
pop     ecx
pop     ebx
retn
sub_46959E endp




sub_4695E2 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+1E8h]
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [ecx+3Dh], 0Ah
test    byte ptr [edx+2], 1
jz      short loc_46960C
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0ACh], 0Dh
jmp     short loc_4695CF

loc_46960C:
mov     byte ptr [eax+0Eh], 1
mov     byte ptr [eax+0ACh], 0Eh
jmp     short loc_4695CF
sub_4695E2 endp




sub_469619 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [eax+3Dh]
test    bl, bl
jnz     short loc_469630
mov     byte ptr [edx+0Ah], 1
pop     edx
pop     ebx
retn

loc_469630:
mov     bh, bl
dec     bh
mov     [eax+3Dh], bh
pop     edx
pop     ebx
retn
sub_469619 endp




sub_46963A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
add     eax, 0C4h
mov     ebx, [ecx+54h]
sar     ebx, 10h
mov     esi, [edx+36h]
sar     esi, 10h
cmp     ebx, esi
jnz     short loc_469692

loc_46965B:
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Fh], 0
mov     word ptr [ecx+44h], 50h ; 'P'
mov     byte ptr [edx+3Ch], 0
and     byte ptr [eax+6], 0FEh
mov     byte ptr [ecx+0ACh], 1
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, esi
mov     eax, ecx
call    sub_4DE96B

loc_469689:
and     byte ptr [ecx+57h], 0Fh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_469692:
jle     short loc_46969C
sub     word ptr [ecx+56h], 80h
jmp     short loc_469689

loc_46969C:
add     word ptr [ecx+56h], 80h
jmp     short loc_469689
sub_46963A endp




sub_4696A4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+0C4h]
cmp     byte ptr [esi+3], 2
jnz     short loc_46971F
mov     dh, [esi+9]
test    dh, dh
jnz     short loc_46971F
cmp     byte ptr [esi+0Ah], 6
jnz     short loc_46971F
cmp     byte ptr [edi+7], 0B4h
jnb     short loc_46970C
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
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
inc     byte ptr [edi+7]
jmp     loc_46A4A5

loc_46970C:
mov     [edi+7], dh
and     byte ptr [edi+6], 7Fh
mov     byte ptr [esi+9], 1
mov     [esi+0Ah], dh
jmp     loc_46A4A5

loc_46971F:
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
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
jmp     loc_46A4A5
sub_4696A4 endp




sub_469759 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_46976C[esi*4]
cmp     byte ptr [ecx+3], 2
jnz     loc_469810
mov     al, [ebx+3Fh]
test    al, al
jnz     short loc_4697ED
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 5
mov     al, [edx]
and     al, 1Fh
movsx   si, al
or      ebx, esi
mov     al, [edx+2]
and     al, 1Fh
movsx   si, al
shl     esi, 0Ah
or      ebx, esi
mov     [ecx+15Eh], bx
inc     byte ptr [edx+2]
mov     al, [ecx+15Fh]
or      al, 80h
mov     [ecx+15Fh], al
cmp     byte ptr [edx+2], 10h
jl      short loc_469810
mov     bl, al
and     bl, 7Fh
mov     [ecx+15Fh], bl
mov     byte ptr [edx+2], 10h
mov     bh, [edx]
cmp     bh, 10h
jz      short loc_469810
mov     cl, bh
add     cl, 4
mov     [edx], cl
add     byte ptr [edx+1], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4697ED:
mov     ah, al
dec     ah
mov     [ebx+3Fh], ah
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     byte ptr [edx+2], 0
mov     al, [edx+2]
mov     [edx+1], al
mov     [edx], al

loc_469810:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_469759 endp




sub_469815 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+1E8h]
mov     byte ptr [eax+0ACh], 0
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [esi+3Dh], 0Ah
mov     byte ptr [edi+6], 5Ah ; 'Z'
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [esi+3Fh], 1
jmp     loc_46A4A5
sub_469815 endp




sub_469853 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+64h]
mov     byte ptr [ecx+3Fh], 1
mov     ah, [ecx+3Dh]
test    ah, ah
jz      short loc_46989D
mov     dh, ah
dec     dh
mov     [ecx+3Dh], dh
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     loc_46A4A5

loc_46989D:
mov     byte ptr [esi+0ACh], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
cmp     byte ptr [esi+3], 2
jnz     short loc_4698CA
mov     byte ptr [ecx+3Fh], 7
mov     byte ptr [edi], 0
mov     byte ptr [edi+1], 0
mov     byte ptr [edi+2], 0

loc_4698CA:
mov     byte ptr [esi+0Ah], 2
mov     word ptr [esi+44h], 1E0h
mov     word ptr [ecx+3Ah], 10h
jmp     loc_46A4A5
sub_469853 endp




sub_4698DF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
lea     edi, [esi+0C4h]
lea     ebp, [esi+1E8h]
push    400h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_469932
mov     ah, [ebp+6]
test    ah, ah
jnz     short loc_469986

loc_469932:
cmp     byte ptr [esi+3], 2
jz      short loc_469957

loc_469938:
mov     byte ptr [esi+0Ah], 3
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+3Dh], 14h
or      byte ptr [edi+6], 80h
mov     byte ptr [edi+7], 0
mov     eax, esi
call    sub_4699F5
jmp     loc_469530

loc_469957:
mov     bh, [ebp+6]
test    bh, bh
jnz     short loc_469938
mov     byte ptr [esi+9], 5
mov     [esi+0Ah], bh
mov     byte ptr [esi+0ACh], 6
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi+6], 40h
jmp     loc_469530

loc_469986:
mov     dl, ah
dec     dl
mov     [ebp+6], dl
cmp     dword ptr [esi+80h], 13880h
jnb     short loc_4699E9
mov     byte ptr [esi+9], 2
mov     byte ptr [esi+0ACh], 4
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
lea     edx, [esi+14h]
mov     eax, 15Bh
call    sub_4D8BC3
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [edi+4], ax
mov     eax, esi
call    sub_469AD9
jmp     loc_469530

loc_4699E9:
mov     eax, esi
call    sub_4696A4
jmp     loc_469530
sub_4698DF endp




sub_4699F5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
lea     edx, [eax+0C4h]
test    byte ptr [edx+1], 0Fh
jz      short loc_469A67
mov     byte ptr [esi+9], 0
mov     word ptr [esi+44h], 50h ; 'P'
mov     byte ptr [esi+0Ah], 5
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     [edi+38h], ax
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [edi+36h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_469A43
mov     byte ptr [esi+0ACh], 0Eh
jmp     short loc_469A4A

loc_469A43:
mov     byte ptr [esi+0ACh], 0Dh

loc_469A4A:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     eax, esi
call    sub_46963A
jmp     loc_46A4A5

loc_469A67:
mov     dl, [edi+3Dh]
test    dl, dl
jz      short loc_469A87
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     byte ptr [edi+3Dh]
jmp     loc_46A4A5

loc_469A87:
cmp     byte ptr [esi+0A6h], 1
jz      short loc_469AA6
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
jmp     loc_46A4A5

loc_469AA6:
mov     [esi+9], dl
mov     word ptr [esi+44h], 50h ; 'P'
jmp     loc_46A4A5
sub_4699F5 endp




sub_469AB4 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [edx+3Dh]
test    bl, bl
jz      short loc_469ACD
mov     bh, bl
dec     bh
mov     [edx+3Dh], bh
pop     edx
pop     ebx
retn

loc_469ACD:
mov     [eax+9], bl
mov     word ptr [eax+44h], 50h ; 'P'
pop     edx
pop     ebx
retn
sub_469AB4 endp




sub_469AD9 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edx, eax
lea     esi, [eax+408h]
lea     ebx, [eax+0C4h]
lea     ecx, [eax+64h]
cmp     byte ptr [eax+0A6h], 0
jnz     short loc_469B08
mov     word ptr [esi+3Ah], 20h ; ' '
mov     eax, edx
call    sub_4696A4

loc_469B08:
cmp     byte ptr [edx+3], 2
jnz     short loc_469B6D
mov     al, [ecx+1]
and     al, 1Fh
cbw
shl     eax, 5
mov     [esp+18h+var_18], eax
mov     al, [ecx]
and     al, 1Fh
cbw
mov     edi, [esp+18h+var_18]
or      edi, eax
mov     al, [ecx+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      edi, eax
mov     [edx+15Eh], di
inc     byte ptr [ecx+2]
mov     al, [edx+15Fh]
or      al, 80h
mov     [edx+15Fh], al
cmp     byte ptr [ecx+2], 10h
jl      short loc_469B6D
and     al, 7Fh
mov     [edx+15Fh], al
mov     byte ptr [ecx+2], 10h
mov     ah, [ecx]
cmp     ah, 10h
jz      short loc_469B6D
mov     al, ah
add     al, 4
mov     [ecx], al
add     byte ptr [ecx+1], 4

loc_469B6D:
mov     ecx, [edx+0A4h]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_469BAB
cmp     byte ptr [edx+3], 2
jz      short loc_469BA3
and     byte ptr [ebx+6], 0FDh
mov     byte ptr [edx+9], 0
mov     word ptr [edx+44h], 50h ; 'P'
mov     word ptr [esi+3Ah], 10h
mov     byte ptr [esi+3Eh], 3Ch ; '<'
or      byte ptr [ebx+6], 80h
mov     byte ptr [ebx+7], 0
jmp     short loc_469BAB

loc_469BA3:
mov     byte ptr [edx+9], 8
mov     byte ptr [edx+0Ah], 0

loc_469BAB:
add     esp, 4
jmp     loc_46A4A5
sub_469AD9 endp




sub_469BB3 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_469BB9[edx*4]
pop     edx
retn
sub_469BB3 endp




sub_469BC2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+0C4h]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_46A4A5
mov     byte ptr [esi+0ACh], 3
or      byte ptr [edi+6], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     byte ptr [esi+0Ah], 1
jmp     loc_46A4A5
sub_469BC2 endp




sub_469C40 proc near
push    edx
mov     dl, [eax+0A6h]
cmp     dl, 2
jnz     short loc_469C4F
mov     [eax+0Ah], dl

loc_469C4F:
pop     edx
retn
sub_469C40 endp




sub_469C51 proc near
add     byte ptr [eax+475h], 8
cmp     byte ptr [eax+0A6h], 1
jnz     short locret_469C65
mov     byte ptr [eax+0Ah], 3

locret_469C65:
retn
sub_469C51 endp




sub_469C66 proc near
push    ebx
push    edx
lea     edx, [eax+0C4h]
mov     bl, [eax+475h]
sub     bl, 8
mov     [eax+475h], bl
cmp     bl, 20h ; ' '
ja      short loc_469C8A
mov     byte ptr [eax+0Ah], 4
and     byte ptr [edx+6], 0FDh

loc_469C8A:
pop     edx
pop     ebx
retn
sub_469C66 endp




sub_469C8D proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+0C4h]
mov     ebx, [eax+0A4h]
sar     ebx, 18h
cmp     ebx, 0FFFFFFFFh
jnz     short loc_469CF0
mov     byte ptr [ecx+3Eh], 3Ch ; '<'
cmp     byte ptr [eax+3], 2
jz      short loc_469CBE
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 6
jmp     short loc_469CC6

loc_469CBE:
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0

loc_469CC6:
test    byte ptr [edx+6], 80h
jz      short loc_469CD4
mov     byte ptr [edx+7], 0
or      byte ptr [edx+6], 80h

loc_469CD4:
mov     word ptr [ecx+3Ah], 10h
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_469CF0:
pop     edx
pop     ecx
pop     ebx
retn
sub_469C8D endp




sub_469CF4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+64h]
mov     byte ptr [eax+0ACh], 5
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 6
mov     dl, [ecx+1]
and     dl, 1Fh
movsx   dx, dl
mov     eax, edx
shl     eax, 5
mov     dl, [ecx]
and     dl, 1Fh
movsx   dx, dl
or      eax, edx
mov     dl, [ecx+2]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 0Ah
or      eax, edx
mov     [esi+15Eh], ax
inc     byte ptr [ecx+2]
mov     dl, [esi+15Fh]
or      dl, 80h
mov     [esi+15Fh], dl
cmp     byte ptr [ecx+2], 10h
jl      short loc_469D7F
mov     bl, dl
and     bl, 7Fh
mov     [esi+15Fh], bl
mov     byte ptr [ecx+2], 10h
mov     bh, [ecx]
cmp     bh, 10h
jz      short loc_469D7F
mov     al, bh
add     al, 4
mov     [ecx], al
add     byte ptr [ecx+1], 4

loc_469D7F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_469CF4 endp




sub_469D84 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+64h]
mov     ecx, [eax+38h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_469DC9
mov     byte ptr [esi+0Ah], 0

loc_469DC9:
mov     al, [edi+1]
and     al, 1Fh
cbw
mov     ebx, eax
shl     ebx, 5
mov     al, [edi]
and     al, 1Fh
cbw
or      ebx, eax
mov     al, [edi+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      ebx, eax
mov     [esi+15Eh], bx
inc     byte ptr [edi+2]
mov     dl, [esi+15Fh]
or      dl, 80h
mov     [esi+15Fh], dl
cmp     byte ptr [edi+2], 10h
jl      loc_46A4A5
mov     bl, dl
and     bl, 7Fh
mov     [esi+15Fh], bl
mov     byte ptr [edi+2], 10h
mov     bh, [edi]
cmp     bh, 10h
jz      loc_46A4A5
mov     cl, bh
add     cl, 4
mov     [edi], cl
add     byte ptr [edi+1], 4
jmp     loc_46A4A5
sub_469D84 endp




sub_469E36 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     ecx, [eax+408h]
lea     esi, [eax+64h]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_469E80
mov     byte ptr [edi+9], 1
mov     byte ptr [edi+0Ah], 0

loc_469E80:
cmp     byte ptr [edi+3], 2
jnz     loc_46A4A5
mov     al, [esi+1]
and     al, 1Fh
cbw
mov     ebx, eax
shl     ebx, 5
mov     al, [esi]
and     al, 1Fh
cbw
or      ebx, eax
mov     al, [esi+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      ebx, eax
mov     [edi+15Eh], bx
sub     byte ptr [esi], 4
sub     byte ptr [esi+1], 4
cmp     byte ptr [esi], 0
jge     short loc_469ECB
mov     byte ptr [esi], 0
mov     byte ptr [esi+1], 0
or      byte ptr [edi+15Fh], 80h

loc_469ECB:
mov     eax, [edi+15Ch]
sar     eax, 10h
test    ah, 80h
jz      loc_46A4A5
mov     cl, [esi+2]
dec     cl
mov     [esi+2], cl
test    cl, cl
jge     loc_46A4A5
mov     byte ptr [esi+2], 0
jmp     loc_46A4A5
sub_469E36 endp




sub_469EF6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+0C4h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_469F09[esi*4]
cmp     byte ptr [ecx+3], 2
jnz     loc_469F9A
mov     al, [edx+2]
test    al, al
jnz     short loc_469F3B
mov     word ptr [ecx+15Eh], 0
or      byte ptr [ecx+15Fh], 80h
mov     [edx+2], al
mov     [edx+1], al
mov     [edx], al
jmp     short loc_469F9A

loc_469F3B:
mov     al, [edx+1]
and     al, 1Fh
cbw
mov     esi, eax
shl     esi, 5
mov     al, [edx]
and     al, 1Fh
cbw
or      esi, eax
mov     al, [edx+2]
and     al, 1Fh
cbw
shl     eax, 0Ah
or      esi, eax
mov     [ecx+15Eh], si
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_469F7C
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
or      byte ptr [ecx+15Fh], 80h

loc_469F7C:
mov     eax, [ecx+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_469F9A
mov     ah, [edx+2]
dec     ah
mov     [edx+2], ah
test    ah, ah
jge     short loc_469F9A
mov     byte ptr [edx+2], 0

loc_469F9A:
mov     eax, ecx
call    sub_4DEADD
mov     eax, ecx
call    sub_42DE56
mov     [ebx], eax
mov     eax, ecx
call    sub_42C592
mov     esi, eax
test    byte ptr [ebx+6], 40h
jnz     loc_46A02B
mov     edx, [ecx+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 10h
jl      short loc_469FF5
cmp     byte ptr [ecx+9], 5
jz      short loc_46A02B
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_469FF5:
cmp     byte ptr [ecx+9], 5
jnz     short loc_46A021
cmp     byte ptr [ecx+0Ah], 2
jz      short loc_46A021
mov     byte ptr [ecx+0Ah], 2
mov     byte ptr [ecx+0ACh], 7
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+74h], 0

loc_46A021:
mov     [ecx+16h], si
shl     esi, 10h
mov     [ecx+20h], esi

loc_46A02B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_469EF6 endp




sub_46A030 proc near
push    edx
mov     dl, [eax+0A6h]
cmp     dl, 1
jnz     short loc_46A055
mov     word ptr [eax+46h], 0FE00h
mov     [eax+0Ah], dl
mov     [eax+74h], dl
lea     edx, [eax+14h]
mov     eax, 15Fh
call    sub_4D8BC3

loc_46A055:
pop     edx
retn
sub_46A030 endp




sub_46A057 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+0C4h]
lea     ebp, [eax+1E8h]
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B
mov     ax, [esi+4Eh]
mov     dx, [esi+46h]
add     edx, eax
mov     [esi+46h], dx
test    dx, dx
jl      loc_469533
cmp     byte ptr [ebp+4], 2
jnz     short loc_46A0BE
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 10h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_46A0BE:
and     byte ptr [edi+6], 0BFh
jmp     loc_469533
sub_46A057 endp




sub_46A0C7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+0C4h]
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     loc_46A4A5
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Fh], 0
mov     word ptr [ecx+44h], 50h ; 'P'
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     byte ptr [esi+3Ch], 0
and     byte ptr [edi+6], 0FCh
jmp     loc_46A4A5
sub_46A0C7 endp

align 2
jpt_46A1CD dd offset loc_46A1D4 ; jump table for switch statement
dd offset loc_46A20D
dd offset loc_46A228
dd offset loc_46A25B
dd offset loc_46A25B



sub_46A13A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edi, [eax+0C4h]
add     eax, 64h ; 'd'
cmp     byte ptr [esi+3], 2
jnz     short loc_46A1BD
mov     dl, [eax+1]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 5
mov     bl, [eax]
and     bl, 1Fh
movsx   bx, bl
or      ebx, edx
mov     dl, [eax+2]
and     dl, 1Fh
movsx   dx, dl
shl     edx, 0Ah
or      ebx, edx
mov     [esi+15Eh], bx
inc     byte ptr [eax+2]
mov     bl, [esi+15Fh]
or      bl, 80h
mov     [esi+15Fh], bl
cmp     byte ptr [eax+2], 10h
jl      short loc_46A1BD
mov     dl, bl
and     dl, 7Fh
mov     [esi+15Fh], dl
mov     byte ptr [eax+2], 10h
mov     dh, [eax]
cmp     dh, 10h
jz      short loc_46A1BD
mov     bl, dh
add     bl, 4
mov     [eax], bl
add     byte ptr [eax+1], 4

loc_46A1BD:
mov     al, [esi+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_46A1CD      ; jumptable 0046A1CD default case
and     eax, 0FFh
jmp     jpt_46A1CD[eax*4] ; switch jump

loc_46A1D4:             ; jumptable 0046A1CD case 0
push    0
mov     eax, [esi+44h]
sar     eax, 10h
push    eax
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh

loc_46A1F5:
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     ax, [esi+4Eh]
add     [esi+46h], ax
jmp     def_46A1CD      ; jumptable 0046A1CD default case

loc_46A20D:             ; jumptable 0046A1CD case 1
push    0
mov     eax, [esi+44h]
sar     eax, 10h
push    eax
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ax, [esi+56h]
and     ah, 0Fh
movsx   ebx, ax
jmp     short loc_46A1F5

loc_46A228:             ; jumptable 0046A1CD case 2
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_46A1CD      ; jumptable 0046A1CD default case
mov     byte ptr [esi+0ACh], 0Ch
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 3
jmp     def_46A1CD      ; jumptable 0046A1CD default case

loc_46A25B:             ; jumptable 0046A1CD cases 3,4
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_46A2B8
cmp     byte ptr [esi+3], 2
jnz     short loc_46A27B
test    byte ptr [edi+6], 10h
jz      short loc_46A27B
mov     byte ptr [esi+9], 8
jmp     short loc_46A297

loc_46A27B:
mov     byte ptr [esi+0ACh], 1
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 0

loc_46A297:
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Fh], 0
mov     word ptr [esi+44h], 50h ; 'P'
mov     byte ptr [ecx+3Dh], 78h ; 'x'
mov     byte ptr [ecx+3Ch], 0
mov     byte ptr [edi+6], 0
mov     byte ptr [esi+475h], 20h ; ' '

loc_46A2B8:
cmp     byte ptr [esi+0Ah], 4
jnz     short def_46A1CD ; jumptable 0046A1CD default case
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 80h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

def_46A1CD:             ; jumptable 0046A1CD default case
mov     eax, esi
call    sub_4DEADD
mov     eax, esi
call    sub_42DE56
mov     [edi], eax
mov     eax, esi
call    sub_42C592
mov     dh, [edi+6]
test    dh, 10h
jz      loc_46A4A5
test    dh, 20h
jnz     loc_46A4A5
mov     edx, [esi+14h]
sar     edx, 10h
cmp     eax, edx
jnz     loc_46A4A5
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_46A32A
mov     byte ptr [esi+0ACh], 9
jmp     short loc_46A331

loc_46A32A:
mov     byte ptr [esi+0ACh], 0Bh

loc_46A331:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 2
or      byte ptr [edi+6], 20h
jmp     loc_46A4A5
sub_46A13A endp




sub_46A34F proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_46A381
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ecx+190h]
movsd
movsd
lea     edx, [ecx+190h]
mov     eax, ecx
call    sub_4AF9F8

loc_46A381:
mov     byte ptr [ecx+8], 2
and     byte ptr [ecx], 0FDh
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46A34F endp




sub_46A38D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+408h]
lea     edx, [eax+64h]
movzx   esi, byte ptr [eax+0Ah]
call    ds:funcs_46A3A0[esi*4]
mov     ah, [ebx+3Fh]
test    ah, ah
jnz     short loc_46A419
mov     bl, [edx+1]
and     bl, 1Fh
movsx   bx, bl
mov     esi, ebx
shl     esi, 5
mov     bl, [edx]
and     bl, 1Fh
movsx   bx, bl
or      esi, ebx
mov     bl, [edx+2]
and     bl, 1Fh
movsx   bx, bl
shl     ebx, 0Ah
or      esi, ebx
mov     [ecx+15Eh], si
sub     byte ptr [edx], 4
sub     byte ptr [edx+1], 4
cmp     byte ptr [edx], 0
jge     short loc_46A3F6
mov     [edx], ah
mov     [edx+1], ah
or      byte ptr [ecx+15Fh], 80h

loc_46A3F6:
mov     ecx, [ecx+15Ch]
sar     ecx, 10h
test    ch, 80h
jz      short loc_46A430
mov     bl, [edx+2]
dec     bl
mov     [edx+2], bl
test    bl, bl
jge     short loc_46A430
mov     byte ptr [edx+2], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46A419:
mov     dl, ah
dec     dl
mov     [ebx+3Fh], dl
mov     word ptr [ecx+15Eh], 4210h
and     byte ptr [ecx+15Fh], 7Fh

loc_46A430:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46A38D endp




sub_46A435 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+408h]
add     eax, 1E8h
lea     esi, [ecx+64h]
test    byte ptr [eax+2], 1
jz      short loc_46A46E
mov     byte ptr [ecx+0ACh], 0Dh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 0
jmp     short loc_46A48A

loc_46A46E:
mov     byte ptr [ecx+0ACh], 0Eh
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Eh], 1

loc_46A48A:
mov     ax, [ecx+56h]
mov     [edi+38h], ax
mov     byte ptr [ecx+0Ah], 1
mov     byte ptr [edi+3Fh], 1

loc_46A49A:
mov     byte ptr [esi], 10h
mov     byte ptr [esi+1], 10h
mov     byte ptr [esi+2], 10h

loc_46A4A5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46A435 endp




sub_46A4AB proc near
push    ecx
push    edx
lea     ecx, [eax+408h]
lea     edx, [eax+64h]
call    sub_469539
mov     byte ptr [ecx+3Fh], 1
mov     byte ptr [edx], 10h
mov     byte ptr [edx+1], 10h
mov     byte ptr [edx+2], 10h
pop     edx
pop     ecx
retn
sub_46A4AB endp




sub_46A4CD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edi, [eax+408h]
lea     esi, [eax+64h]
mov     byte ptr [eax+0ACh], 2
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 3
mov     word ptr [ecx+44h], 1E0h
mov     word ptr [edi+3Ah], 10h
mov     byte ptr [edi+3Fh], 0Fh
jmp     short loc_46A49A
sub_46A4CD endp




sub_46A509 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+408h]
lea     edx, [eax+0C4h]
test    byte ptr [edx+1], 0Fh
jnz     short loc_46A52D
cmp     dword ptr [esi+80h], 200000h
jbe     short loc_46A583

loc_46A52D:
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     [ecx+38h], dx
mov     eax, [esi+54h]
sar     eax, 10h
mov     edx, [ecx+36h]
sar     edx, 10h
cmp     eax, edx
jle     short loc_46A554
mov     byte ptr [esi+0ACh], 0Eh
jmp     short loc_46A55B

loc_46A554:
mov     byte ptr [esi+0ACh], 0Dh

loc_46A55B:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ah], 4
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     [ecx+38h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46A583:
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
sub_46A509 endp




sub_46A599 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+408h]
add     eax, 0C4h
mov     ebx, [ecx+54h]
sar     ebx, 10h
mov     esi, [edx+36h]
sar     esi, 10h
cmp     ebx, esi
jnz     loc_469692
mov     byte ptr [ecx+9], 0
jmp     loc_46965B
sub_46A599 endp




sub_46A5C7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+0C4h]
call    sub_4DEADD
mov     eax, ecx
call    sub_42DE56
mov     [edx], eax
mov     eax, ecx
call    sub_42C592
mov     ebx, eax
mov     edx, [ecx+2Ch]
sar     edx, 10h
mov     esi, eax
sub     esi, edx
cmp     esi, 10h
jl      short loc_46A61E
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0ACh], 6
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, eax
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46A61E:
mov     [ecx+16h], ax
shl     eax, 10h
mov     [ecx+20h], eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46A5C7 endp




sub_46A62D proc near

; FUNCTION CHUNK AT 0046A68B SIZE 00000007 BYTES

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
call    ds:funcs_46A654[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_46A674
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_46A674:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_46A684
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_46A68B

loc_46A684:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh
sub_46A62D endp

; START OF FUNCTION CHUNK FOR sub_46A801
;   ADDITIONAL PARENT FUNCTION sub_46A62D

loc_46A68B:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_46A801
db 8Dh, 40h, 0
jpt_46A6C4 dd offset loc_46A6CB ; jump table for switch statement
dd offset loc_46A6DA
dd offset loc_46A6EB
dd offset loc_46A70B
dd offset loc_46A71B



sub_46A6A9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_46A6C4      ; jumptable 0046A6C4 default case
and     eax, 0FFh
jmp     jpt_46A6C4[eax*4] ; switch jump

loc_46A6CB:             ; jumptable 0046A6C4 case 0
mov     eax, esi
call    sub_46A76A

loc_46A6D2:
inc     byte ptr [esi+9]
jmp     def_46A6C4      ; jumptable 0046A6C4 default case

loc_46A6DA:             ; jumptable 0046A6C4 case 1
mov     eax, esi
call    sub_46A801
test    eax, eax
jz      def_46A6C4      ; jumptable 0046A6C4 default case
jmp     short loc_46A6D2

loc_46A6EB:             ; jumptable 0046A6C4 case 2
call    sub_42ABA2
test    eax, eax
jnz     short def_46A6C4 ; jumptable 0046A6C4 default case
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 5
call    sub_4A62D4
jmp     short loc_46A6D2

loc_46A70B:             ; jumptable 0046A6C4 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_46A6C4 ; jumptable 0046A6C4 default case
call    sub_42A98E
jmp     short loc_46A6D2

loc_46A71B:             ; jumptable 0046A6C4 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_46A6C4 ; jumptable 0046A6C4 default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_46A744
inc     byte ptr [esi+9]
xor     cl, cl
mov     byte ptr ds:dword_77E5EC, cl
mov     eax, 1FFh
call    sub_47EA91
jmp     short loc_46A74F

loc_46A744:
and     ds:byte_5F8421, 0BFh
mov     byte ptr [esi+9], 0

loc_46A74F:
or      byte ptr [edx], 2

def_46A6C4:             ; jumptable 0046A6C4 default case
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
sub_46A6A9 endp




sub_46A76A proc near
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
mov     dword ptr [ecx+10h], offset unk_516EB4
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_46A76A endp




sub_46A801 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0046A68B SIZE 00000007 BYTES

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
jnz     loc_46A8E6
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
jge     short loc_46A85B
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_46A871

loc_46A85B:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_46A871:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A0E0, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A0E4, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A0E8, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0E0
call    sub_42AAA8
mov     eax, 1
jmp     short loc_46A8E8

loc_46A8E6:
xor     eax, eax

loc_46A8E8:
add     esp, 4
jmp     loc_46A68B
sub_46A801 endp




sub_46A8F0 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 3A8h
mov     [esp+1Ch+var_1C], eax
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
mov     esi, eax
lea     esi, [esi+18h]
movsd
movsd
mov     word ptr [ebp+15Eh], 4210h
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_46A92F[edx*4]
mov     eax, [esp+1Ch+var_1C]
add     eax, 8
mov     ebx, 8
mov     edx, offset word_560E04
call    sub_4EECD4
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_46A96B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_46A96B:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+62h], 8
jz      loc_46AA0C
mov     eax, [ebp+5Ch]
sar     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+18h]
sar     edx, 10h
cmp     eax, edx
jnz     short loc_46A99E
mov     edx, [ebp+5Ah]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
cmp     edx, eax
jz      short loc_46A9C7

loc_46A99E:
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+68h]
test    dh, dh
jnz     short loc_46A9BE
lea     edx, [ebp+14h]
mov     eax, 147h
call    sub_4D8BC3
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+68h], 0Ah
jmp     short loc_46A9CE

loc_46A9BE:
mov     bl, dh
dec     bl
mov     [eax+68h], bl
jmp     short loc_46A9CE

loc_46A9C7:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+68h], 0

loc_46A9CE:
mov     edi, [esp+1Ch+var_1C]
lea     esi, [ebp+1A0h]
movsd
movsd
push    0
push    0
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+5Ch]
or      eax, 4080000h
push    eax
lea     eax, [edx+28h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+30h+var_1C]
call    sub_4E01FC

loc_46AA0C:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+28h], 0
add     esp, 4
jmp     loc_46AD03
sub_46A8F0 endp




sub_46AA1E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+3A8h]
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+0Ch], 0
mov     dword ptr [ecx+10h], 0
mov     dword ptr [ecx+14h], 0
mov     dword ptr [ecx+18h], 0
mov     dword ptr [ecx+1Ch], 0
mov     dword ptr [ecx+20h], 0
mov     dword ptr [ecx+24h], 0
mov     ax, [ecx+20h]
mov     [ecx+60h], ax
mov     byte ptr [ecx+62h], 8
mov     dword ptr [ecx+28h], 0
mov     dword ptr [ecx+2Ch], 0
mov     byte ptr [ecx+64h], 0
mov     byte ptr [ecx+63h], 0
mov     word ptr [ecx+5Eh], 28h ; '('
mov     eax, [esi+80h]
mov     [ecx+40h], eax
mov     byte ptr [ecx+68h], 0
mov     word ptr [ecx+44h], 2
mov     word ptr [ecx+46h], 9
mov     word ptr [ecx+48h], 4
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [ecx+5Ch], ax
lea     eax, [ecx+30h]
mov     ebx, 0FFFFFFA0h
mov     edx, 0Ch
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
mov     ecx, ds:dword_55A10C
mov     eax, [ecx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46AA1E endp




sub_46AB4B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+3A8h]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ebx, [esi+18h]
sar     ebx, 10h
add     ebx, eax
lea     eax, [esi+30h]
mov     edx, ecx
call    sub_4E19D8
test    eax, eax
jnz     short loc_46AB79
and     byte ptr [esi+62h], 0EFh
jmp     short loc_46AB8A

loc_46AB79:
mov     ah, [esi+62h]
or      ah, 10h
mov     [esi+62h], ah
mov     dl, ah
and     dl, 0FBh
mov     [esi+62h], dl

loc_46AB8A:
mov     eax, [esi+28h]
and     eax, 0FFFFFFh
jz      short loc_46ABD4
mov     dx, [ecx+6Eh]
mov     [ecx+0B2h], dx
sub     edx, eax
mov     [ecx+6Eh], dx
mov     word ptr [ecx+15Eh], 7FFFh
or      byte ptr [esi+62h], 4
cmp     word ptr [ecx+6Eh], 0
jg      short loc_46ABC7
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0
and     byte ptr [esi+62h], 0F7h
jmp     short loc_46ABD4

loc_46ABC7:
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_46ABD4:
movzx   esi, byte ptr [ecx+9]
mov     eax, ecx
call    ds:funcs_46ABDA[esi*4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46AB4B endp



; Attributes: thunk

sub_46ABE6 proc near
jmp     sub_4DE2F6
sub_46ABE6 endp




sub_46ABEB proc near

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
lea     ebp, [eax+3A8h]
mov     [esp+20h+var_1C], offset byte_5F8364
mov     ah, [ebp+64h]
test    ah, ah
jz      short loc_46AC11
mov     dl, ah
dec     dl
mov     [ebp+64h], dl

loc_46AC11:
mov     dh, [ebp+62h]
test    dh, 10h
jnz     short loc_46AC3C
mov     bh, [ebp+63h]
test    bh, bh
jnz     short loc_46AC2C
mov     al, dh
and     al, 0EFh
mov     [ebp+62h], al
jmp     loc_46ACB9

loc_46AC2C:
mov     cl, bh
dec     cl
mov     [ebp+63h], cl
or      byte ptr [ebp+62h], 10h
jmp     loc_46ACB9

loc_46AC3C:
mov     byte ptr [ebp+63h], 0B4h
mov     eax, [esp+20h+var_20]
mov     ecx, [eax+80h]
cmp     ecx, 0A20000h
jnb     short loc_46ACB9
cmp     ecx, 8000h
jbe     short loc_46ACB9
mov     edi, [esp+20h+var_1C]
lea     edi, [edi+0C4h]
mov     esi, [esp+20h+var_1C]
lea     esi, [esi+14h]
movsd
movsd
mov     edi, eax
lea     edi, [edi+0C4h]
mov     esi, eax
lea     esi, [esi+1A0h]
movsd
movsd
mov     eax, [eax+54h]
sar     eax, 10h
mov     edx, [ebp+18h]
sar     edx, 10h
add     eax, edx
push    eax
lea     ecx, [ebp+4Ch]
lea     ebx, [ebp+44h]
mov     edx, [esp+24h+var_1C]
mov     eax, [esp+24h+var_20]
call    sub_4DD830
test    al, 2
jz      short loc_46ACB9
mov     bl, [ebp+64h]
test    bl, bl
jnz     short loc_46ACB9
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+9], 1
mov     [ebp+66h], bl
mov     byte ptr [ebp+65h], 3

loc_46ACB9:
test    byte ptr [ebp+62h], 14h
jz      short loc_46AD00
mov     ebx, [esp+20h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     edx, [ebp+18h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     edx, [esp+20h+var_1C]
add     edx, 14h
mov     eax, [esp+20h+var_20]
add     eax, 14h
mov     ecx, 10h
call    sub_4DE552
add     ax, [ebp+1Ah]
and     ah, 0Fh
mov     [ebp+1Ah], ax
mov     eax, [esp+20h+var_20]
call    sub_46B082

loc_46AD00:
add     esp, 8

loc_46AD03:
pop     ebp

loc_46AD04:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46ABEB endp




sub_46AD0A proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 3A8h
mov     [esp+24h+var_1C], eax
mov     [esp+24h+var_20], offset byte_5F8364
cmp     byte ptr [eax+65h], 0
jz      loc_46AF43
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ebx, [eax+18h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     edx, offset byte_5F8364
add     edx, 14h
lea     esi, [ebp+14h]
mov     ecx, 10h
mov     eax, esi
call    sub_4DE552
mov     edx, [esp+24h+var_1C]
add     ax, [edx+1Ah]
and     ah, 0Fh
mov     [edx+1Ah], ax
call    sub_4DE043
mov     ecx, eax
mov     [esp+24h+var_24], eax
test    eax, eax
jz      loc_46AF34
mov     edx, esi
mov     eax, 148h
call    sub_4D8BC3
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+2], 1
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+0Fh], 3
mov     ax, [ebp+1A8h]
mov     [ecx+14h], ax
mov     ax, [ebp+1AAh]
mov     [ecx+16h], ax
mov     ax, [ebp+1ACh]
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
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
lea     edi, [ebp+0C4h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     eax, [ebp+54h]
sar     eax, 10h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+18h]
sar     edx, 10h
add     eax, edx
push    eax
mov     ecx, [esp+28h+var_1C]
add     ecx, 4Ch ; 'L'
mov     ebx, [esp+28h+var_1C]
add     ebx, 44h ; 'D'
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jz      short loc_46AE4D
mov     ax, word ptr ds:dword_5F8376+2
mov     word ptr ds:dword_5F8428, ax
mov     ax, word ptr ds:dword_5F837A
sub     eax, 50h ; 'P'
mov     word ptr ds:dword_5F8428+2, ax
mov     ax, word ptr ds:dword_5F837A+2
jmp     loc_46AED4

loc_46AE4D:
mov     eax, [ebp+80h]
call    sub_4EF075
mov     [ebp+80h], eax
mov     edx, [ebp+54h]
sar     edx, 10h
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+18h]
sar     eax, 10h
add     edx, 800h
add     eax, edx
call    sub_4EF003
mov     edx, eax
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ecx, [esp+24h+var_1C]
mov     ecx, [ecx+18h]
sar     ecx, 10h
add     eax, 800h
add     eax, ecx
call    sub_4EF008
imul    eax, [ebp+80h]
shr     eax, 0Ch
mov     ecx, [ebp+12h]
sar     ecx, 10h
add     eax, ecx
mov     word ptr ds:dword_5F8428, ax
mov     ax, word ptr ds:dword_5F837A
sub     eax, 50h ; 'P'
mov     word ptr ds:dword_5F8428+2, ax
mov     eax, [ebp+80h]
imul    eax, edx
shr     eax, 0Ch
mov     edx, [ebp+16h]
sar     edx, 10h
add     eax, edx

loc_46AED4:
mov     ds:word_5F842C, ax
push    0ACh
mov     ebx, [esp+28h+var_1C]
mov     ebx, [ebx+5Ch]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, [esp+28h+var_20]
mov     eax, [esp+28h+var_24]
call    sub_4DDA0E
mov     eax, ebp
call    sub_46B082
call    sub_4DE13B
test    eax, eax
jz      short loc_46AF34
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     dx, [ebp+1A8h]
mov     [eax+1Ch], dx
mov     dx, [ebp+1AAh]
mov     [eax+1Eh], dx
mov     dx, [ebp+1ACh]
mov     [eax+20h], dx

loc_46AF34:
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+66h], 46h ; 'F'
dec     byte ptr [eax+65h]
mov     byte ptr [ebp+9], 2

loc_46AF43:
add     esp, 0Ch
jmp     loc_46AD03
sub_46AD0A endp




sub_46AF4B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+3A8h]
test    byte ptr [esi+62h], 14h
jz      short loc_46AF9F
cmp     byte ptr [esi+66h], 3Ch ; '<'
jnb     short loc_46AF9F
mov     eax, [edi+54h]
sar     eax, 10h
mov     ebx, [esi+18h]
sar     ebx, 10h
add     ebx, eax
and     ebx, 0FFFh
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [edi+14h]
mov     ecx, 10h
call    sub_4DE552
add     ax, [esi+1Ah]
and     ah, 0Fh
mov     [esi+1Ah], ax
mov     eax, edi
call    sub_46B082

loc_46AF9F:
mov     dh, [esi+66h]
test    dh, dh
jnz     short loc_46AFC5
cmp     byte ptr [esi+65h], 0
jz      short loc_46AFB5
mov     byte ptr [edi+9], 1
jmp     loc_46AD04

loc_46AFB5:
mov     byte ptr [esi+65h], 3
mov     byte ptr [esi+64h], 3Ch ; '<'
mov     [edi+9], dh
jmp     loc_46AD04

loc_46AFC5:
mov     bl, dh
dec     bl
mov     [esi+66h], bl
jmp     loc_46AD04
sub_46AF4B endp




sub_46AFD1 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_46B005
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ebp+1A0h]
movsd
movsd
lea     edx, [ebp+190h]
mov     eax, ebp
call    sub_4AF9F8

loc_46B005:
mov     ah, [ebp+3]
test    ah, ah
jnz     short loc_46B079
mov     byte ptr [ebp+0], 1
mov     [ebp+2], ah
mov     byte ptr [ebp+3], 1
mov     byte ptr [ebp+4], 1
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+0Ch], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     eax, [ebp+19Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+1A0h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+1A2h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
mov     eax, ebp
call    sub_4DD43B
jmp     loc_46AD03

loc_46B079:
mov     byte ptr [ebp+8], 2
jmp     loc_46AD03
sub_46AFD1 endp




sub_46B082 proc near

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
lea     ebp, [eax+3A8h]
mov     eax, [ebp+40h]
mov     edx, [esp+20h+var_20]
cmp     eax, [edx+80h]
jnz     loc_46B15E
mov     edx, [ebp+5Eh]
sar     edx, 10h
mov     eax, [ebp+1Eh]
sar     eax, 10h
cmp     edx, eax
jz      loc_46B234
mov     cx, [ebp+20h]
and     ch, 0Fh
mov     ax, [ebp+60h]
and     ah, 0Fh
mov     word ptr [esp+20h+var_1C], ax
test    ax, ax
jl      short loc_46B10A
cmp     ax, 800h
jge     short loc_46B10A
cmp     cx, 800h
jl      short loc_46B0F8
cmp     cx, 0FFFh
jge     short loc_46B0F8
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B245
jmp     short loc_46B10A

loc_46B0F8:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B280

loc_46B10A:
mov     ebx, [esp+20h+var_1C]
cmp     bx, 800h
jl      loc_46B234
cmp     bx, 0FFFh
jge     loc_46B234
test    cx, cx
jl      short loc_46B147
cmp     cx, 800h
jge     short loc_46B147
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B245
jmp     loc_46B234

loc_46B147:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B280
jmp     loc_46B234

loc_46B15E:
mov     ax, [ebp+20h]
and     ah, 0Fh
mov     word ptr [esp+20h+var_1C], ax
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
push    0ACh
mov     ebx, [ebp+5Ch]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 0C4h
mov     eax, [esp+24h+var_20]
add     eax, 1A8h
xor     ecx, ecx
call    sub_4DDBB7
and     ah, 0Fh
mov     [ebp+60h], ax
mov     [ebp+20h], ax
mov     ecx, eax
and     ch, 0Fh
mov     edx, [esp+20h+var_1C]
test    dx, dx
jl      short loc_46B1F0
cmp     dx, 800h
jge     short loc_46B1F0
cmp     cx, 800h
jl      short loc_46B1DE
cmp     cx, 0FFFh
jge     short loc_46B1DE
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2BB
jmp     short loc_46B1F0

loc_46B1DE:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2EA

loc_46B1F0:
mov     esi, [esp+20h+var_1C]
cmp     si, 800h
jl      short loc_46B234
cmp     si, 0FFFh
jge     short loc_46B234
test    cx, cx
jl      short loc_46B222
cmp     cx, 800h
jge     short loc_46B222
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2BB
jmp     short loc_46B234

loc_46B222:
movsx   ebx, cx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
mov     eax, [esp+20h+var_20]
call    sub_46B2EA

loc_46B234:
mov     eax, [esp+20h+var_20]
mov     eax, [eax+80h]
mov     [ebp+40h], eax
jmp     loc_46AD00
sub_46B082 endp




sub_46B245 proc near
push    ecx
push    esi
push    edi
mov     ecx, edx
lea     edx, [eax+3A8h]
movsx   esi, cx
movsx   edi, bx
mov     eax, esi
sub     eax, edi
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B278
cmp     esi, edi
jle     short loc_46B273
sub     ebx, 20h ; ' '

loc_46B26B:
mov     [edx+20h], bx
pop     edi
pop     esi
pop     ecx
retn

loc_46B273:
add     ebx, 20h ; ' '
jmp     short loc_46B26B

loc_46B278:
mov     [edx+20h], cx
pop     edi
pop     esi
pop     ecx
retn
sub_46B245 endp




sub_46B280 proc near
push    ecx
push    esi
push    edi
mov     ecx, edx
lea     edx, [eax+3A8h]
movsx   esi, cx
movsx   edi, bx
mov     eax, esi
sub     eax, edi
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B2B3
cmp     esi, edi
jle     short loc_46B2AE
add     ebx, 20h ; ' '

loc_46B2A6:
mov     [edx+20h], bx
pop     edi
pop     esi
pop     ecx
retn

loc_46B2AE:
sub     ebx, 20h ; ' '
jmp     short loc_46B2A6

loc_46B2B3:
mov     [edx+20h], cx
pop     edi
pop     esi
pop     ecx
retn
sub_46B280 endp




sub_46B2BB proc near
push    ecx
push    esi
lea     ecx, [eax+3A8h]
movsx   esi, dx
movsx   ebx, bx
mov     eax, esi
sub     eax, ebx
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B2E7
cmp     esi, ebx
jle     short loc_46B2E0
add     edx, 20h ; ' '
jmp     short loc_46B2E3

loc_46B2E0:
sub     edx, 20h ; ' '

loc_46B2E3:
mov     [ecx+20h], dx

loc_46B2E7:
pop     esi
pop     ecx
retn
sub_46B2BB endp




sub_46B2EA proc near
push    ecx
push    esi
lea     ecx, [eax+3A8h]
movsx   esi, dx
movsx   ebx, bx
mov     eax, esi
sub     eax, ebx
call    abs_
cmp     eax, 20h ; ' '
jle     short loc_46B316
cmp     esi, ebx
jle     short loc_46B30F
sub     edx, 20h ; ' '
jmp     short loc_46B312

loc_46B30F:
add     edx, 20h ; ' '

loc_46B312:
mov     [ecx+20h], dx

loc_46B316:
pop     esi
pop     ecx
retn
sub_46B2EA endp




sub_46B319 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46B31F[edx*4]
pop     edx
retn
sub_46B319 endp




sub_46B328 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
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
mov     ebx, 0FFFFFFA0h
mov     edx, 4
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_516EE8
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     word ptr [ecx+0B2h], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+24h], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
and     eax, 0FFh
or      eax, 1000000h
mov     [esi+30h], eax
mov     word ptr [esi+34h], 100h
mov     word ptr [esi+36h], 40h ; '@'
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46B328 endp




sub_46B44C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     word ptr [ebp+15Eh], 4210h
mov     eax, ebp
call    sub_46B508
cmp     byte ptr [ebp+8], 2
jz      short loc_46B501
mov     edx, ebp
mov     eax, ecx
call    sub_4E19CA
mov     [ecx+10h], eax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_46B4AF[ecx*4]
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_46B4D3
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46B4DA

loc_46B4D3:
mov     eax, ebp
call    sub_4DEADD

loc_46B4DA:
mov     eax, ebp
call    sub_46B72D
mov     eax, ebp
call    sub_46B6D5
test    byte ptr [ebp+0], 2
jz      short loc_46B501
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 78h ; 'x'
mov     eax, ebp
call    sub_4ED88B

loc_46B501:
pop     ebp

loc_46B502:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46B44C endp




sub_46B508 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
mov     dx, [eax+0B2h]
test    dx, dx
jz      short loc_46B52B
mov     esi, edx
dec     esi
mov     [eax+0B2h], si

loc_46B52B:
mov     esi, [ebx+20h]
and     esi, 0FFFFFFh
jz      short loc_46B502
xor     eax, eax
cmp     byte ptr [ecx+9], 6
jnz     short loc_46B543
mov     eax, 1

loc_46B543:
cmp     byte ptr [ecx+9], 8
jz      short loc_46B54D
test    eax, eax
jz      short loc_46B555

loc_46B54D:
lea     edx, [ecx+14h]
jmp     loc_46B664

loc_46B555:
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A10C
mov     eax, [eax+edx*4]
movzx   di, byte ptr [eax+9]
shl     edi, 4
lea     eax, [ecx+14h]
cmp     byte ptr [ecx+9], 7
jnz     loc_46B5FD
sub     [ecx+6Eh], si
mov     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_46B5CE
call    sub_4DE13B
test    eax, eax
jz      short loc_46B5B3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_46B5B3:
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

loc_46B5C5:
mov     byte ptr [ecx+0Ah], 0
jmp     loc_46B502

loc_46B5CE:
add     [ebx+3Eh], si
test    byte ptr [ebx+23h], 20h
jnz     short loc_46B5E9
mov     edx, [ebx+3Ch]
sar     edx, 10h
movsx   eax, di
cmp     edx, eax
jl      loc_46B502

loc_46B5E9:
mov     byte ptr [ecx+0ACh], 5
mov     eax, ecx
call    sub_46B673
mov     byte ptr [ecx+9], 8
jmp     short loc_46B5C5

loc_46B5FD:
add     [ecx+0B2h], si
test    byte ptr [ebx+23h], 20h
jnz     short loc_46B61A
mov     esi, [ecx+0B0h]
sar     esi, 10h
movsx   edx, di
cmp     esi, edx
jl      short loc_46B662

loc_46B61A:
mov     byte ptr [ecx+0ACh], 3
mov     word ptr [ecx+0B2h], 0
mov     word ptr [ebx+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
and     eax, 0FFh
or      eax, 1000000h
mov     [ebx+30h], eax
mov     eax, ecx
call    sub_46B673
mov     byte ptr [ecx+9], 6
jmp     loc_46B5C5

loc_46B662:
mov     edx, eax

loc_46B664:
mov     eax, 0A3h
call    sub_4D8BC3
jmp     loc_46B502
sub_46B508 endp




sub_46B673 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+14h]
mov     edx, edi
mov     eax, 197h
call    sub_4D8BC3
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+430h]
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
test    eax, 0FFFF0000h
jz      short loc_46B6B3
add     dh, 8
and     dh, 0Fh
mov     [esi+56h], dx
jmp     short loc_46B6B7

loc_46B6B3:
mov     [esi+56h], ax

loc_46B6B7:
mov     word ptr [esi+44h], 80h
mov     word ptr [esi+46h], 0FD80h
mov     word ptr [esi+4Eh], 40h ; '@'
mov     eax, esi
call    sub_46BBEA
jmp     loc_46B502
sub_46B673 endp




sub_46B6D5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
add     eax, 408h
mov     dword ptr [eax+20h], 0
lea     edi, [eax+18h]
lea     esi, [edx+14h]
movsd
movsd
push    0
push    offset unk_800000
sub     word ptr [eax+1Ah], 50h ; 'P'
mov     ecx, [eax+30h]
or      ecx, 4080000h
push    ecx
lea     ecx, [eax+20h]
push    ecx
mov     dl, [edx+1]
and     edx, 0FFh
push    edx
add     eax, 18h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC
jmp     loc_46B502
sub_46B6D5 endp




sub_46B72D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
mov     dword ptr [ecx+14h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_46B74F
or      byte ptr [ecx+14h], 1

loc_46B74F:
cmp     byte ptr [edx+74h], 0
jnz     loc_46B502
mov     eax, edx
call    sub_42C592
mov     esi, eax
mov     ebx, [edx+2Ch]
sar     ebx, 10h
cmp     eax, ebx
jz      short loc_46B78A
cmp     byte ptr [edx+75h], 0
jnz     short loc_46B794
lea     edi, [edx+14h]
lea     esi, [edx+2Ch]
movsd
movsd
lea     edi, [edx+1Ch]
lea     esi, [edx+34h]
movsd
movsd
movsd
movsd
or      byte ptr [ecx+14h], 4
jmp     short loc_46B794

loc_46B78A:
mov     [edx+16h], bx
shl     eax, 10h
mov     [edx+20h], eax

loc_46B794:
or      byte ptr [ecx+14h], 2
jmp     loc_46B502
sub_46B72D endp




sub_46B79D proc near
push    edx
lea     edx, [eax+408h]
cmp     dword ptr [edx+10h], 0
jz      short loc_46B7CB
mov     byte ptr [eax+0ACh], 1
mov     word ptr [eax+44h], 20h ; ' '
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     byte ptr [eax+9], 3

loc_46B7C7:
mov     byte ptr [eax+0Ah], 0

loc_46B7CB:
pop     edx
retn
sub_46B79D endp




sub_46B7CD proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+34h]
dec     bx
mov     [eax+34h], bx
jnz     short loc_46B7EC
mov     eax, edx
call    sub_46BC35
pop     edx
pop     ebx
retn

loc_46B7EC:
mov     eax, edx
call    sub_46B79D
pop     edx
pop     ebx
retn
sub_46B7CD endp




sub_46B7F6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 408h
test    byte ptr [eax+14h], 5
jz      short loc_46B813
mov     eax, esi
call    sub_46BC64
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46B813:
mov     dx, [eax+36h]
dec     dx
mov     [eax+36h], dx
jnz     short loc_46B82B
mov     eax, esi
call    sub_46BC18
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46B82B:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_46B79D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46B7F6 endp




sub_46B850 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     edx, [edx+3Ah]
sar     edx, 10h
cmp     ecx, edx
jnz     short loc_46B870
call    sub_46BC35
pop     edx
pop     ecx
retn

loc_46B870:
jle     short loc_46B879
sub     word ptr [eax+56h], 10h
jmp     short loc_46B87E

loc_46B879:
add     word ptr [eax+56h], 10h

loc_46B87E:
and     byte ptr [eax+57h], 0Fh
call    sub_46B79D
pop     edx
pop     ecx
retn
sub_46B850 endp




sub_46B88A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
test    byte ptr [edi+14h], 5
jz      short loc_46B8A9
mov     eax, esi
call    sub_46BC64
jmp     loc_46B502

loc_46B8A9:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
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
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
mov     ecx, offset byte_5F8364
add     ecx, 1Ch
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      loc_46B502
cmp     dword ptr [esi+80h], 0F4240h
ja      loc_46B502
mov     word ptr [edi+38h], 10h
mov     byte ptr [esi+0ACh], 2
mov     byte ptr [esi+9], 4
mov     byte ptr [esi+0Ah], 0
jmp     loc_46B502
sub_46B88A endp




sub_46B943 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_46B949[edx*4]
pop     edx
retn
sub_46B943 endp




sub_46B952 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
xor     edx, edx
cmp     byte ptr [esi+0A4h], 0
jnz     short loc_46B995
mov     edx, 1

loc_46B995:
cmp     byte ptr [esi+0A4h], 4
jz      short loc_46B9A2
test    edx, edx
jz      short loc_46B9AF

loc_46B9A2:
lea     edx, [esi+14h]
mov     eax, 196h
call    sub_4D8BC3

loc_46B9AF:
mov     bx, [edi+38h]
dec     bx
mov     [edi+38h], bx
jnz     loc_46B502
mov     word ptr [edi+38h], 3Ch ; '<'
mov     word ptr [esi+44h], 200h
mov     [esi+46h], bx
mov     [esi+4Eh], bx
xor     edx, edx
mov     dl, [esi+2]
mov     eax, ds:dword_55A10C
mov     edx, [eax+edx*4]
xor     eax, eax
mov     al, [edx+0Ah]
or      eax, 1000000h
mov     [edi+30h], eax
inc     byte ptr [esi+0Ah]
jmp     loc_46B502
sub_46B952 endp




sub_46B9F5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
xor     ebp, ebp
test    byte ptr [edi+14h], 1
jz      short loc_46BA2D
mov     ebp, 1
test    byte ptr [esi+6], 80h
jz      short loc_46BA2D
lea     ecx, [esi+14h]
mov     ebx, 1388h
mov     edx, 3E8h
mov     eax, 1Eh
call    sub_42A70B

loc_46BA2D:
xor     edx, edx
cmp     byte ptr [esi+0A4h], 0
jnz     short loc_46BA3D
mov     edx, 1

loc_46BA3D:
cmp     byte ptr [esi+0A4h], 4
jz      short loc_46BA4A
test    edx, edx
jz      short loc_46BA57

loc_46BA4A:
lea     edx, [esi+14h]
mov     eax, 196h
call    sub_4D8BC3

loc_46BA57:
test    byte ptr [edi+14h], 4
jz      short loc_46BA62
mov     ebp, 1

loc_46BA62:
mov     dx, [edi+38h]
dec     dx
mov     [edi+38h], dx
jz      short loc_46BA72
test    ebp, ebp
jz      short loc_46BAA2

loc_46BA72:
mov     byte ptr [esi+0ACh], 0
movzx   ebp, byte ptr [esi+2]
mov     edx, ds:dword_55A10C
mov     ebp, [edx+ebp*4]
xor     edx, edx
mov     dl, [ebp+0Bh]
or      edx, 1000000h
mov     [edi+30h], edx
mov     word ptr [edi+38h], 30h ; '0'
inc     byte ptr [esi+0Ah]
jmp     loc_46B501

loc_46BAA2:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
jmp     loc_46B501
sub_46B9F5 endp




sub_46BAC0 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+38h]
dec     bx
mov     [eax+38h], bx
jnz     short loc_46BADC
mov     eax, edx
call    sub_46BC95

loc_46BADC:
pop     edx
pop     ebx
retn
sub_46BAC0 endp




sub_46BADF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 408h
mov     edx, offset byte_5F8364
test    byte ptr [eax+14h], 5
jz      short loc_46BAFB
mov     word ptr [esi+44h], 0

loc_46BAFB:
mov     bx, [eax+3Ah]
dec     bx
mov     [eax+3Ah], bx
jnz     short loc_46BB13
mov     eax, esi
call    sub_46BC35
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46BB13:
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 80h
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
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46BADF endp




sub_46BB52 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46BB98
push    edx
mov     edx, eax
call    sub_46BBCF
cmp     byte ptr [edx+74h], 0
jnz     short loc_46BB8F
cmp     byte ptr [edx+9], 6
jnz     short loc_46BB7A
mov     word ptr [edx+44h], 40h ; '@'
mov     word ptr [edx+46h], 0FF20h
jmp     short loc_46BB86

loc_46BB7A:
mov     word ptr [edx+44h], 40h ; '@'
mov     word ptr [edx+46h], 0FF60h

loc_46BB86:
mov     word ptr [edx+4Eh], 20h ; ' '
inc     byte ptr [edx+0Ah]

loc_46BB8F:
mov     eax, edx
call    sub_46BBEA
pop     edx
retn

loc_46BB98:
push    edx
mov     edx, eax
call    sub_46BBCF
mov     ah, [edx+74h]
test    ah, ah
jnz     short loc_46BBC6
cmp     byte ptr [edx+9], 6
jnz     short loc_46BBBD
mov     byte ptr [edx+0ACh], 4
mov     byte ptr [edx+9], 7
mov     [edx+0Ah], ah
pop     edx
retn

loc_46BBBD:
mov     eax, edx
call    sub_46BC64
pop     edx
retn

loc_46BBC6:
mov     eax, edx
call    sub_46BBEA
pop     edx
retn
sub_46BB52 endp




sub_46BBCF proc near
push    edx
lea     edx, [eax+408h]
test    byte ptr [edx+14h], 1
jz      short loc_46BBE8
mov     word ptr [eax+44h], 0
mov     word ptr [eax+48h], 0

loc_46BBE8:
pop     edx
retn
sub_46BBCF endp




sub_46BBEA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     byte ptr [eax+74h], 1
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     dx, [esi+4Eh]
add     [esi+46h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_46BBEA endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_63]



sub_46BC18 proc near
push    edx
lea     edx, [eax+408h]
mov     word ptr [edx+34h], 100h
mov     byte ptr [eax+0ACh], 0
mov     byte ptr [eax+9], 0
jmp     loc_46B7C7
sub_46BC18 endp




sub_46BC35 proc near
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 1
mov     word ptr [eax+44h], 18h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+36h], 40h ; '@'
mov     byte ptr [eax+9], 1
jmp     loc_46B7C7
sub_46BC35 endp




sub_46BC64 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0ACh], 1
jz      short loc_46BC7C
mov     byte ptr [eax+0ACh], 1

loc_46BC7C:
mov     bx, [eax+56h]
add     bh, 8
and     bh, 0Fh
mov     [edx+3Ch], bx
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
pop     edx
pop     ebx
retn
sub_46BC64 endp




sub_46BC95 proc near
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 2
mov     word ptr [eax+44h], 0FF80h
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+3Ah], 0Ch
mov     byte ptr [eax+9], 5
jmp     loc_46B7C7
sub_46BC95 endp



; Attributes: thunk

sub_46BCC4 proc near
jmp     sub_4DE2F6
sub_46BCC4 endp




sub_46BCC9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46BCCF[edx*4]
pop     edx
retn
sub_46BCC9 endp




sub_46BCD8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+158h], 200h
mov     word ptr [ecx+15Ah], 200h
mov     word ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+54h], 0
call    rand_
xor     ah, ah
and     al, 1Fh
shl     eax, 7
mov     [ecx+56h], ax
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
mov     ebx, 0FFFFFFA0h
mov     edx, 9
mov     eax, esi
call    sub_4E19B9
mov     dword ptr [ecx+78h], offset unk_516F30
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+0B0h], ax
mov     [ecx+6Eh], ax
mov     byte ptr [ecx+74h], 1
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+20h], 0
mov     dword ptr [esi+24h], 0
mov     dword ptr [esi+28h], 0
mov     word ptr [ecx+16h], 0FE00h
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     eax, ecx
call    sub_46C290
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46BCD8 endp




sub_46BDE8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     word ptr [ebp+15Eh], 4210h
cmp     dword ptr [ebp+80h], offset unk_5F5E10
jb      short loc_46BE44
test    byte ptr [ebp+6], 80h
jnz     short loc_46BE44
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
jmp     loc_46BEBD

loc_46BE44:
mov     eax, ebp
call    sub_46BEC4
mov     edx, ebp
mov     eax, ecx
call    sub_4E19CA
mov     [ecx+10h], eax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_46BE5E[ecx*4]
cmp     byte ptr [ebp+8], 2
jz      short loc_46BEBD
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_46BE88
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46BE8F

loc_46BE88:
mov     eax, ebp
call    sub_4DEADD

loc_46BE8F:
mov     eax, ebp
call    sub_46BF33
cmp     word ptr [ebp+6Eh], 0
jz      short loc_46BEA4
mov     eax, ebp
call    sub_46BF5F

loc_46BEA4:
test    byte ptr [ebp+0], 2
jz      short loc_46BEBD
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 40h ; '@'
mov     eax, ebp
call    sub_4ED88B

loc_46BEBD:
pop     ebp

loc_46BEBE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46BDE8 endp




sub_46BEC4 proc near
push    ecx
push    edx
mov     ecx, eax
add     eax, 408h
cmp     word ptr [ecx+6Eh], 0
jz      short loc_46BF30
test    byte ptr [eax+23h], 38h
jz      short loc_46BF30
mov     eax, [eax+20h]
and     eax, 0FFFFFFh
jz      short loc_46BF30
sub     [ecx+6Eh], ax
lea     edx, [ecx+14h]
mov     eax, 0A0h
call    sub_4D8BC3
mov     word ptr [ecx+15Eh], 7FFFh
cmp     word ptr [ecx+6Eh], 0
jg      short loc_46BF30
mov     byte ptr [ecx+0ACh], 4
mov     word ptr [ecx+6Eh], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0FD80h
mov     word ptr [ecx+4Eh], 40h ; '@'
mov     byte ptr [ecx+74h], 1
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_46BF30:
pop     edx
pop     ecx
retn
sub_46BEC4 endp




sub_46BF33 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+408h]
mov     dword ptr [edx+14h], 0
call    sub_42DE56
test    ah, 0Fh
jz      short loc_46BF52
or      byte ptr [edx+14h], 1

loc_46BF52:
cmp     byte ptr [ecx+74h], 0
jnz     short loc_46BF5C
or      byte ptr [edx+14h], 2

loc_46BF5C:
pop     edx
pop     ecx
retn
sub_46BF33 endp




sub_46BF5F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
add     eax, 408h
mov     dword ptr [eax+20h], 0
lea     edi, [eax+18h]
lea     esi, [edx+14h]
movsd
movsd
push    0
push    0
mov     ecx, [eax+28h]
or      ecx, 4000000h
push    ecx
lea     ecx, [eax+20h]
push    ecx
mov     dl, [edx+1]
and     edx, 0FFh
push    edx
add     eax, 18h
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 40h ; '@'
call    sub_4E01FC
jmp     loc_46BEBE
sub_46BF5F endp




sub_46BFAF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     dword ptr [ebx+10h], 0
jz      short loc_46C02C
mov     ah, [eax+9]
cmp     ah, 1
jnz     short loc_46BFF3
mov     [ecx+0ACh], ah
mov     word ptr [ecx+44h], 180h
mov     word ptr [ecx+46h], 0FF10h
mov     word ptr [ecx+4Eh], 0
lea     edx, [ecx+14h]
mov     eax, 158h
call    sub_4D8BC3
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_46C022

loc_46BFF3:
mov     word ptr [ecx+44h], 180h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
xor     edx, edx
mov     dl, [ecx+2]
mov     eax, ds:dword_55A10C
mov     edx, [eax+edx*4]
mov     dl, [edx+0Ah]
and     edx, 0FFh
mov     [ebx+28h], edx
mov     byte ptr [ecx+0Ah], 1

loc_46C022:
mov     word ptr [ebx+30h], 3Ch ; '<'
mov     byte ptr [ecx+9], 3

loc_46C02C:
pop     edx
pop     ecx
pop     ebx
retn
sub_46BFAF endp




sub_46C030 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     eax, esi
call    sub_46C324
cmp     byte ptr [esi+0A7h], 0
jz      short loc_46C064
mov     eax, esi
call    sub_46C2D2

loc_46C064:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C030 endp




sub_46C069 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bx, [edx+2Eh]
dec     bx
mov     [edx+2Eh], bx
jnz     short loc_46C085
call    sub_46C2F0
pop     edx
pop     ebx
retn

loc_46C085:
mov     bx, [eax+56h]
add     ebx, 20h ; ' '
and     bh, 0Fh
mov     [eax+56h], bx
cmp     word ptr [edx+2Eh], 40h ; '@'
ja      short loc_46C09F
call    sub_46BFAF

loc_46C09F:
pop     edx
pop     ebx
retn
sub_46C069 endp




sub_46C0A2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, [eax+46h]
sar     ecx, 10h
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
call    sub_4DD43B
mov     eax, esi
call    sub_46C34D
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_46C0D8
mov     eax, esi
call    sub_46C0E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46C0D8:
mov     eax, esi
call    sub_46C13D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C0A2 endp




sub_46C0E4 proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jz      short loc_46C12A
mov     byte ptr [eax+0ACh], 2
cmp     byte ptr [eax+9], 3
jnz     short loc_46C11D
xor     edx, edx
mov     dl, [eax+2]
mov     ebx, ds:dword_55A10C
mov     edx, [ebx+edx*4]
mov     dl, [edx+0Ah]
and     edx, 0FFh
mov     [ecx+28h], edx

loc_46C11D:
mov     word ptr [eax+46h], 0
inc     byte ptr [eax+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_46C12A:
cmp     byte ptr [eax+0A4h], 9
jnz     short loc_46C139
mov     word ptr [eax+46h], 0F0h

loc_46C139:
pop     edx
pop     ecx
pop     ebx
retn
sub_46C0E4 endp




sub_46C13D proc near
push    ebx
push    edx
lea     edx, [eax+408h]
test    byte ptr [edx+14h], 1
jz      short loc_46C153

loc_46C14B:
call    sub_46C290
pop     edx
pop     ebx
retn

loc_46C153:
mov     bx, [edx+30h]
dec     bx
mov     [edx+30h], bx
jz      short loc_46C14B
call    sub_46BFAF
pop     edx
pop     ebx
retn
sub_46C13D endp




sub_46C167 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
mov     ecx, 60h ; '`'
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
mov     eax, esi
call    sub_46C34D
cmp     byte ptr [esi+0Ah], 0
jnz     short loc_46C1C5
mov     eax, esi
call    sub_46C0E4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46C1C5:
mov     eax, esi
call    sub_46C1D1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C167 endp




sub_46C1D1 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 408h
xor     ecx, ecx
test    byte ptr [eax+14h], 1
jz      short loc_46C1E8
mov     ecx, 1

loc_46C1E8:
test    byte ptr [eax+23h], 2
jz      short loc_46C1F3
mov     ecx, 1

loc_46C1F3:
test    byte ptr [eax+23h], 4
jz      short loc_46C1FE
mov     ecx, 1

loc_46C1FE:
mov     bx, [eax+30h]
dec     bx
mov     [eax+30h], bx
jz      short loc_46C20E
test    ecx, ecx
jz      short loc_46C21C

loc_46C20E:
mov     dword ptr [eax+28h], 0
mov     eax, edx
call    sub_46C290

loc_46C21C:
pop     edx
pop     ecx
pop     ebx
retn
sub_46C1D1 endp




sub_46C220 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
cmp     dword ptr [eax+14h], 0
jz      short loc_46C26A
call    sub_4DE13B
test    eax, eax
jz      short loc_46C24F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_46C24F:
lea     edx, [ebp+14h]
mov     eax, ebp
call    sub_4AF9F8
mov     byte ptr [ebp+8], 2
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
jmp     loc_46BEBD

loc_46C26A:
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
jmp     loc_46BEBD
sub_46C220 endp




sub_46C290 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
mov     byte ptr [eax+0ACh], 3
mov     word ptr [eax+44h], 100h
mov     word ptr [eax+46h], 0FF10h
mov     word ptr [eax+4Eh], 0
call    rand_
and     eax, 3
mov     ax, ds:word_516F50[eax*2]
mov     [ecx+2Ch], ax
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
pop     edx
pop     ecx
retn
sub_46C290 endp




sub_46C2D2 proc near
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 0
mov     word ptr [edx+2Eh], 80h
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
pop     edx
retn
sub_46C2D2 endp




sub_46C2F0 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     byte ptr [eax+0ACh], 1
mov     bx, [edx+2Ch]
mov     [eax+44h], bx
mov     word ptr [eax+46h], 0FF10h
mov     word ptr [eax+4Eh], 0
mov     word ptr [edx+30h], 3Ch ; '<'
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
pop     edx
pop     ebx
retn
sub_46C2F0 endp




sub_46C324 proc near
push    edx
mov     edx, [eax+14h]
sar     edx, 10h
cmp     edx, 0FFFFFCD4h
jge     short loc_46C34B
mov     word ptr [eax+16h], 0FCD4h
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     word ptr [eax+46h], 0

loc_46C34B:
pop     edx
retn
sub_46C324 endp




sub_46C34D proc near
push    edx
mov     edx, [eax+14h]
sar     edx, 10h
cmp     edx, 0FFFFFE00h
jle     short loc_46C374
mov     word ptr [eax+16h], 0FE00h
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     word ptr [eax+46h], 0

loc_46C374:
pop     edx
retn
sub_46C34D endp




sub_46C376 proc near
dec     ds:word_5395F8
jmp     sub_4DE2F6
sub_46C376 endp




sub_46C382 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_46C388[edx*4]
pop     edx
retn
sub_46C382 endp




sub_46C391 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+8], 0
jnz     short loc_46C3E3
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 8C0h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]

loc_46C3E3:
mov     esi, [esi+10h]
and     esi, 7
cmp     esi, 4
jge     short loc_46C3F7
mov     byte ptr [ecx+0FCh], 1
jmp     short loc_46C3FE

loc_46C3F7:
mov     byte ptr [ecx+0FCh], 0Bh

loc_46C3FE:
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
mov     eax, ecx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C391 endp




sub_46C425 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+348h]
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
mov     word ptr [eax+15Eh], 0
call    rand_
mov     [ecx+7Eh], ax
cmp     byte ptr [edx+0Eh], 0
jnz     short loc_46C47A
xor     al, al

loc_46C465:
movsx   ecx, al
mov     word ptr [edx+ecx*8+196h], 4210h
inc     al
cmp     al, 5
jl      short loc_46C465
jmp     short loc_46C48F

loc_46C47A:
xor     al, al

loc_46C47C:
movsx   ecx, al
mov     word ptr [edx+ecx*8+196h], 7FFFh
inc     al
cmp     al, 5
jl      short loc_46C47C

loc_46C48F:
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_46C496[ecx*4]
mov     byte ptr [edx+0Eh], 0
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46C425 endp




sub_46C4A6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+348h]
mov     ah, [eax]
or      ah, 42h
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     eax, [ecx+380h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     word ptr [esi+68h], 0
mov     word ptr [esi+6Ah], 0
mov     dword ptr [ecx+78h], offset unk_516F5C
mov     edx, ds:dword_55A10C
mov     edx, [edx+104h]
mov     al, [edx+0Ah]
mov     [ecx+73h], al
mov     edx, ds:dword_55A10C
mov     edx, [edx+104h]
xor     eax, eax
mov     al, [edx+0Ch]
shl     eax, 4
mov     [esi+64h], ax
mov     edx, ds:dword_55A10C
mov     edx, [edx+104h]
xor     eax, eax
mov     al, [edx+0Ch]
shl     eax, 4
mov     [esi+66h], ax
mov     byte ptr [esi+83h], 0
mov     byte ptr [esi+84h], 0
mov     dword ptr [esi], 0
mov     dword ptr [esi+4], 0
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+15Eh], 0
xor     al, al

loc_46C588:
xor     edx, edx
mov     dl, al
mov     word ptr [ecx+edx*8+196h], 4210h
inc     al
cmp     al, 5
jb      short loc_46C588
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [esi+6Ch], 960h
mov     word ptr [esi+7Ch], 0B4h
mov     byte ptr [esi+81h], 0
mov     byte ptr [esi+82h], 0
mov     word ptr [esi+6Eh], 0
mov     word ptr [esi+70h], 0
mov     word ptr [esi+72h], 0
mov     byte ptr [esi+85h], 0
xor     al, al

loc_46C5E9:
xor     edx, edx
mov     dl, al
shl     edx, 3
lea     ecx, [esi+edx]
mov     dword ptr [ecx+20h], 0
inc     al
cmp     al, 3
jb      short loc_46C5E9
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46C4A6 endp




sub_46C605 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
lea     ebp, [eax+348h]
xor     ah, ah
mov     [esp+2Ch+var_1C], ah
mov     eax, [esp+2Ch+var_2C]
call    sub_46D329
mov     eax, [esp+2Ch+var_2C]
add     eax, 380h
mov     edx, [esp+2Ch+var_2C]
call    sub_4E19CA
mov     eax, [esp+2Ch+var_2C]
cmp     byte ptr [eax+3], 0
jnz     short loc_46C64B
xor     edx, edx
mov     dl, [ebp+81h]
call    ds:funcs_46C644[edx*4]

loc_46C64B:
test    byte ptr [ebp+85h], 8
jnz     short loc_46C663
xor     edx, edx
mov     eax, [esp+2Ch+var_2C]
mov     dl, [eax+9]
call    ds:funcs_46C65C[edx*4]

loc_46C663:
mov     eax, [esp+2Ch+var_2C]
cmp     byte ptr [eax+3], 0
jnz     short loc_46C67A
movzx   esi, byte ptr [ebp+83h]
call    ds:funcs_46C673[esi*4]

loc_46C67A:
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+2Ch+var_2C]
lea     edi, [edi+14h]
lea     esi, [eax+190h]
movsd
movsd
mov     eax, [esp+2Ch+var_2C]
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+2Ch+var_2C]
mov     [edx+1Ch], eax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, edx
call    sub_4DEB53
mov     ax, [ebp+68h]
mov     ds:word_560E1C, ax
mov     ax, [ebp+6Ah]
mov     ds:word_560E2C, ax
mov     eax, edx
call    sub_4DF795
lea     edi, [ebp+8]
mov     esi, edx
lea     esi, [esi+190h]
movsd
movsd
push    80h
push    0
sub     word ptr [ebp+0Ah], 0B8h
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
xor     eax, eax
mov     al, [esp+38h+var_1C]
shl     eax, 3
lea     edx, [ebp+20h]
mov     [esp+38h+var_24], edx
add     eax, edx
push    eax
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
lea     eax, [ebp+8]
mov     [esp+40h+var_20], eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
call    sub_4E01FC
lea     edi, [ebp+8]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+6]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+8]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+0Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    3C0h
push    3C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
inc     [esp+34h+var_1C]
lea     eax, [ebp+4Ch]
mov     [esp+34h+var_28], eax
xor     ecx, ecx
mov     edx, eax
mov     eax, [esp+34h+var_20]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ecx, [esp+38h+var_24]
push    ecx
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0B4h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
lea     edi, [ebp+8]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+1A8h]
movsd
movsd
mov     eax, [ebp+6]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+8]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+0Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    0FFFFFC40h
push    3C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
xor     ecx, ecx
mov     edx, [esp+34h+var_28]
mov     eax, [esp+34h+var_20]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ebx, [esp+38h+var_24]
push    ebx
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0B4h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
mov     word ptr [ebp+5Ch], 0
mov     word ptr [ebp+5Eh], 0C59h
mov     word ptr [ebp+60h], 0
lea     esi, [ebp+5Ch]
mov     eax, [esp+2Ch+var_2C]
add     eax, 258h
mov     ebx, [esp+2Ch+var_28]
mov     edx, esi
call    sub_4EF1FB
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1A0h]
mov     bx, [ebp+4Ch]
add     eax, ebx
mov     [ebp+8], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1A2h]
mov     cx, [ebp+50h]
add     eax, ecx
mov     [ebp+0Ah], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1A4h]
mov     di, [ebp+54h]
add     eax, edi
mov     [ebp+0Ch], ax
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     edi, [esp+38h+var_24]
push    edi
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
mov     word ptr [ebp+5Ch], 0
mov     word ptr [ebp+5Eh], 0C59h
mov     word ptr [ebp+60h], 0
mov     eax, [esp+2Ch+var_2C]
add     eax, 2B8h
mov     ebx, [esp+2Ch+var_28]
mov     edx, esi
call    sub_4EF1FB
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1B0h]
mov     dx, [ebp+4Ch]
add     eax, edx
mov     [ebp+8], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1B2h]
mov     bx, [ebp+50h]
add     eax, ebx
mov     [ebp+0Ah], ax
mov     eax, [esp+2Ch+var_2C]
mov     ax, [eax+1B4h]
mov     cx, [ebp+54h]
add     eax, ecx
mov     [ebp+0Ch], ax
push    80h
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     eax, edi
push    edi
xor     eax, edi
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
mov     eax, [esp+40h+var_20]
call    sub_4E01FC
lea     edi, [ebp+10h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    0FFFFF968h
push    0FFFFF2C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     esi, [ebp+10h]
xor     ecx, ecx
mov     edx, [esp+34h+var_28]
mov     eax, esi
call    sub_4DD4C5
cmp     word ptr [ebp+64h], 0
jl      short loc_46CA4B
push    0
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
xor     eax, eax
mov     al, [esp+38h+var_1C]
shl     eax, 3
add     eax, [esp+38h+var_24]
push    eax
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 8Ch
mov     eax, esi
call    sub_4E01FC

loc_46CA4B:
lea     edi, [ebp+18h]
mov     esi, [esp+2Ch+var_2C]
lea     esi, [esi+1A8h]
movsd
movsd
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    698h
push    0FFFFF2C0h
mov     eax, [esp+34h+var_2C]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
inc     [esp+34h+var_1C]
lea     edx, [ebp+4Ch]
lea     esi, [ebp+18h]
xor     ecx, ecx
mov     eax, esi
call    sub_4DD4C5
cmp     word ptr [ebp+66h], 0
jl      short loc_46CAEF
push    0
push    0
mov     eax, [esp+34h+var_2C]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
xor     eax, eax
mov     al, [esp+38h+var_1C]
shl     eax, 3
lea     edx, [ebp+20h]
add     eax, edx
push    eax
xor     eax, eax
mov     edx, [esp+3Ch+var_2C]
mov     al, [edx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 8Ch
mov     eax, esi
call    sub_4E01FC

loc_46CAEF:
xor     al, al
mov     [esp+2Ch+var_1C], al

loc_46CAF5:
xor     eax, eax
mov     al, [esp+2Ch+var_1C]
mov     dword ptr [ebp+eax*8+20h], 0
mov     ah, al
inc     ah
mov     [esp+2Ch+var_1C], ah
cmp     ah, 3
jb      short loc_46CAF5
add     esp, 14h
jmp     loc_46CE01
sub_46C605 endp



; Attributes: thunk

sub_46CB18 proc near
jmp     sub_4DE2F6
sub_46CB18 endp




sub_46CB1D proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
lea     esi, [eax+348h]
mov     ebp, offset byte_5F8364
mov     dx, [esi+6Ch]
test    dx, dx
jnz     loc_46CDF7
or      byte ptr [esi+85h], 8
cmp     byte ptr [edi+0Bh], 0
jnz     short loc_46CB54
mov     [esp+20h+var_1C], 2
jmp     short loc_46CB59

loc_46CB54:
mov     [esp+20h+var_1C], 4

loc_46CB59:
mov     bh, [esi+82h]
test    bh, bh
jnz     loc_46CBFE
cmp     byte ptr [edi+0Bh], 0
jnz     short loc_46CBD3
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
push    800h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      short loc_46CBFE
call    sub_4DE043
test    eax, eax
jz      short loc_46CBFE
mov     [esi+48h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
jmp     short loc_46CBEC

loc_46CBD3:
call    sub_4DE043
test    eax, eax
jz      short loc_46CBFE
mov     [esi+48h], eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     [eax+4], bh
mov     [eax+3], bh

loc_46CBEC:
mov     byte ptr [eax+0Dh], 2
or      byte ptr [esi+85h], 1
mov     byte ptr [esi+86h], 0Ah

loc_46CBFE:
test    byte ptr [esi+85h], 1
jz      loc_46CDFE
cmp     [esp+20h+var_1C], 2
jnz     short loc_46CC1D
mov     eax, [esi+48h]
mov     word ptr [eax+14h], 0FC00h
jmp     short loc_46CC26

loc_46CC1D:
mov     eax, [esi+48h]
mov     word ptr [eax+14h], 400h

loc_46CC26:
mov     eax, [esi+48h]
mov     word ptr [eax+16h], 11E0h
mov     eax, [esi+48h]
mov     word ptr [eax+18h], 0FEA0h
mov     eax, [esi+48h]
lea     ebx, [eax+1Ch]
lea     ecx, [eax+14h]
movzx   ebp, [esp+20h+var_1C]
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
shl     eax, 4
lea     edx, [edi+1F8h]
add     eax, edx
mov     edx, ecx
call    sub_4EF1FB
mov     ecx, ebp
shl     ecx, 3
lea     eax, [edi+ecx]
mov     edx, [esi+48h]
mov     bx, [eax+190h]
add     bx, [edx+1Ch]
mov     [edx+14h], bx
mov     edx, [esi+48h]
mov     bx, [eax+192h]
add     bx, [edx+20h]
mov     [edx+16h], bx
mov     edx, [esi+48h]
mov     ax, [eax+194h]
mov     bx, [edx+24h]
add     eax, ebx
mov     [edx+18h], ax
mov     eax, [esi+48h]
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     eax, [esi+48h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [esi+48h]
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
cmp     byte ptr [esi+82h], 0
jz      loc_46CDEE
mov     edx, [esi+48h]
add     edx, 14h
lea     eax, [edi+190h]
add     eax, ecx
mov     [esp+20h+var_20], eax
call    sub_4DDDB4
mov     ecx, 20h ; ' '
mov     ebx, eax
mov     edx, (offset dword_5F8376+2)
mov     eax, [esp+20h+var_20]
call    sub_4DE552
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     eax, ebp
mov     edx, ebp
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
add     eax, eax
lea     ebp, [esi+eax]
mov     ebx, [ebp+64h]
sar     ebx, 10h
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
mov     eax, [esp+20h+var_20]
call    sub_4DE5A3
mov     ebx, eax
mov     ax, [ebp+66h]
test    ax, ax
jz      short loc_46CD47
cmp     ax, 0C00h
jle     short loc_46CD65

loc_46CD47:
xor     edx, edx
mov     dl, [esp+20h+var_1C]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     dx, [esi+eax*2+66h]
add     edx, ebx
and     dh, 0Fh
mov     [esi+eax*2+66h], dx

loc_46CD65:
mov     eax, [esi+48h]
cmp     byte ptr [eax+0Ch], 0
jz      loc_46CDFE
mov     bh, [esi+86h]
test    bh, bh
jnz     short loc_46CDE2
lea     edx, [eax+14h]
xor     eax, eax
mov     al, [esp+20h+var_1C]
shl     eax, 3
lea     ecx, [edi+190h]
add     eax, ecx
call    sub_4DDDB4
mov     edx, [esi+48h]
mov     [edx+64h], ax
mov     eax, [esi+48h]
add     byte ptr [eax+0Ch], 80h
mov     [esi+82h], bh
cmp     byte ptr [edi+0Bh], 0
jz      short loc_46CDCE
mov     word ptr [esi+6Ch], 12Ch
mov     byte ptr [esi+81h], 1
mov     [esi+82h], bh
mov     [edi+0Bh], bh
and     byte ptr [esi+85h], 0FEh
jmp     short loc_46CDFE

loc_46CDCE:
mov     byte ptr [edi+0Bh], 1
and     byte ptr [esi+85h], 0FEh
mov     byte ptr [esi+86h], 0Ah
jmp     short loc_46CDFE

loc_46CDE2:
mov     cl, bh
dec     cl
mov     [esi+86h], cl
jmp     short loc_46CDFE

loc_46CDEE:
mov     byte ptr [esi+82h], 1
jmp     short loc_46CDFE

loc_46CDF7:
mov     ebx, edx
dec     ebx
mov     [esi+6Ch], bx

loc_46CDFE:
add     esp, 8

loc_46CE01:
pop     ebp

loc_46CE02:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46CB1D endp




sub_46CE08 proc near
push    ebx
push    edx
add     eax, 348h
mov     dx, [eax+68h]
cmp     dx, 800h
jle     short loc_46CE26
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [eax+68h], dx
jmp     short loc_46CE33

loc_46CE26:
mov     word ptr [eax+68h], 0
or      byte ptr [eax+82h], 1

loc_46CE33:
mov     bx, [eax+6Ah]
cmp     bx, 800h
jle     short loc_46CE4C
mov     edx, ebx
add     edx, 20h ; ' '
and     dh, 0Fh
mov     [eax+6Ah], dx
jmp     short loc_46CE59

loc_46CE4C:
mov     word ptr [eax+6Ah], 0
or      byte ptr [eax+82h], 2

loc_46CE59:
cmp     byte ptr [eax+82h], 3
jnz     short loc_46CE70
mov     byte ptr [eax+82h], 0
mov     byte ptr [eax+81h], 2

loc_46CE70:
pop     edx
pop     ebx
retn
sub_46CE08 endp




sub_46CE73 proc near

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
add     eax, 348h
mov     [esp+20h+var_1C], eax
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+20h+var_20], eax
mov     edi, [esp+20h+var_1C]
lea     edi, [edi+5Ch]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
mov     edi, [esp+20h+var_1C]
lea     edi, [edi+4Ch]
mov     esi, eax
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_1C]
add     edx, 4Ch ; 'L'
mov     esi, [esp+28h+var_1C]
add     esi, 5Ch ; '\'
mov     ecx, 0C00h
mov     eax, esi
call    sub_4DD4C5
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 20h ; ' '
mov     edx, esi
call    sub_4DE552
mov     edx, eax
test    ax, ax
jnz     short loc_46CF1B
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+9], 5
jz      short loc_46CF1B
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+81h], 0
mov     byte ptr [ebp+0Dh], 0
mov     byte ptr [ebp+0Ah], 0
and     byte ptr [eax+85h], 0F7h
jmp     loc_46CDFE

loc_46CF1B:
mov     ax, [ebp+56h]
add     eax, edx
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     loc_46CDFE
sub_46CE73 endp




sub_46CF2D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 348h
mov     bx, [eax+7Ch]
test    bx, bx
jz      short loc_46CF4B
mov     ecx, ebx
dec     ecx
mov     [eax+7Ch], cx
pop     edx
pop     ecx
pop     ebx
retn

loc_46CF4B:
mov     ecx, ds:dword_5F8376+2
sar     ecx, 10h
mov     edx, [edx+14h]
sar     edx, 10h
cmp     ecx, edx
jg      short loc_46CF77
or      byte ptr [eax+85h], 2
mov     [eax+7Ch], bx
mov     byte ptr [eax+83h], 1
mov     byte ptr [eax+87h], 0

loc_46CF77:
pop     edx
pop     ecx
pop     ebx
retn
sub_46CF2D endp




sub_46CF7B proc near

var_38= dword ptr -38h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
push    eax
add     eax, 348h
mov     [esp+38h+var_24], eax
mov     dl, [eax+87h]
cmp     dl, 5
jbe     short loc_46CFA3
mov     al, dl
sub     al, 6
mov     [esp+38h+var_1C], al
jmp     short loc_46CFA7

loc_46CFA3:
mov     [esp+38h+var_1C], dl

loc_46CFA7:
mov     eax, [esp+38h+var_24]
cmp     word ptr [eax+7Ch], 0
jnz     loc_46D17E
mov     [esp+38h+var_20], 1
mov     edx, [esp+38h+var_38]
add     edx, 14h
mov     eax, 1B3h
call    sub_4D8BC3

loc_46CFCB:
mov     eax, [esp+38h+var_24+1]
sar     eax, 18h
add     eax, eax
add     eax, [esp+38h+var_24]
cmp     word ptr [eax+64h], 0
jle     loc_46D15C
call    sub_4DE043
mov     ebp, eax
test    eax, eax
jz      loc_46D15C
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 4
cmp     [esp+38h+var_20], 0
jnz     short loc_46D019
mov     eax, [esp+19h]
sar     eax, 18h
mov     ax, ds:word_516FAA[eax*8]
jmp     short loc_46D034

loc_46D019:
mov     eax, [esp+19h]
sar     eax, 18h
mov     edx, 0FFFh
mov     cx, ds:word_516FAA[eax*8]
mov     eax, edx
sub     eax, ecx
and     ah, 0Fh

loc_46D034:
mov     edx, [esp+38h+var_38]
add     ax, [edx+56h]
and     ah, 0Fh
mov     [ebp+64h], ax
cmp     [esp+38h+var_20], 0
jnz     short loc_46D04D
mov     al, 1
jmp     short loc_46D04F

loc_46D04D:
mov     al, 3

loc_46D04F:
and     eax, 0FFh
shl     eax, 3
add     eax, [esp+38h+var_38]
mov     dx, [eax+190h]
mov     [ebp+14h], dx
mov     dx, [eax+194h]
mov     [ebp+18h], dx
mov     ax, [eax+192h]
mov     [ebp+16h], ax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
lea     esi, [ebp+14h]
lea     edx, [ebp+1Ch]
cmp     [esp+38h+var_20], 0
jnz     short loc_46D0BF
mov     eax, [esp+19h]
sar     eax, 18h
mov     ecx, ds:(dword_516FA4+2)[eax*8]
sar     ecx, 10h
jmp     short loc_46D0D3

loc_46D0BF:
mov     eax, [esp+19h]
sar     eax, 18h
mov     ecx, ds:(dword_516FA4+2)[eax*8]
sar     ecx, 10h
imul    ecx, -1

loc_46D0D3:
push    ecx
mov     ecx, ds:dword_516FA4[eax*8]
sar     ecx, 10h
push    ecx
mov     ecx, ds:(off_516FA0+2)[eax*8]
sar     ecx, 10h
mov     eax, [esp+40h+var_38]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     eax, esi
call    sub_4DD4C5
mov     eax, [ebp+62h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+38h+var_34]
call    sub_4DD510
mov     edi, [esp+38h+var_24]
lea     edi, [edi+4Ch]
lea     esi, [esp+38h+var_34]
movsd
movsd
movsd
movsd
mov     edx, [esp+38h+var_24]
add     edx, 5Ch ; '\'
mov     eax, [esp+38h+var_24]
add     eax, 4Ch ; 'L'
call    sub_4DD57B
mov     eax, [esp+38h+var_24]
mov     ax, [eax+5Ch]
shl     eax, 8
mov     [ebp+44h], ax
mov     eax, [esp+38h+var_24]
mov     ax, [eax+60h]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+46h], 0

loc_46D15C:
mov     ch, [esp+38h+var_20]
dec     ch
mov     [esp+38h+var_20], ch
test    ch, ch
jge     loc_46CFCB
mov     eax, [esp+38h+var_24]
mov     word ptr [eax+7Ch], 6
inc     byte ptr [eax+87h]

loc_46D17E:
mov     eax, [esp+38h+var_24]
dec     word ptr [eax+7Ch]
cmp     byte ptr [eax+87h], 0Ch
jnz     short loc_46D19C
mov     word ptr [eax+7Ch], 0B4h
mov     byte ptr [eax+83h], 0

loc_46D19C:
add     esp, 20h
jmp     loc_46CE01
sub_46CF7B endp




sub_46D1A4 proc near

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
lea     ebp, [eax+348h]
mov     dl, [eax+0Ah]
test    dl, dl
jnz     loc_46D250
test    byte ptr [eax+0Dh], 4
jz      short loc_46D1E9
mov     ch, dl
inc     ch
mov     [eax+0Ah], ch
mov     word ptr [ebp+74h], 0Ch
mov     word ptr [ebp+76h], 8
mov     word ptr [ebp+6Ch], 0
mov     [ebp+80h], dl
jmp     loc_46CDFE

loc_46D1E9:
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
lea     edi, [ebp+5Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebp+4Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [ebp+4Ch]
add     ebp, 5Ch ; '\'
mov     ecx, 0C00h
mov     eax, ebp
call    sub_4DD4C5
mov     ebx, [esp+20h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+20h+var_20]
add     eax, 14h
mov     ecx, 20h ; ' '
mov     edx, ebp
call    sub_4DE552
mov     edx, [esp+20h+var_20]
add     ax, [edx+56h]
and     ah, 0Fh
mov     [edx+56h], ax
jmp     loc_46CDFE

loc_46D250:
test    byte ptr [eax+0Dh], 4
jz      loc_46CDFE
inc     word ptr [ebp+6Ch]
mov     bl, [ebp+80h]
cmp     bl, 4
jz      short loc_46D293
xor     eax, eax
mov     al, bl
add     eax, eax
mov     edx, ds:dword_516FDC[eax]
sar     edx, 10h
mov     ecx, [ebp+6Ah]
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_46D293
mov     ax, ds:word_516FD4[eax]
mov     [ebp+74h], ax
inc     byte ptr [ebp+80h]

loc_46D293:
mov     eax, [esp+20h+var_20]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+20h+var_1C], eax
lea     edi, [ebp+5Ch]
mov     esi, eax
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [ebp+4Ch]
mov     esi, eax
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
push    0
push    0
mov     ebx, [eax+54h]
sar     ebx, 10h
lea     edx, [ebp+4Ch]
lea     esi, [ebp+5Ch]
mov     ecx, 0C00h
mov     eax, esi
call    sub_4DD4C5
mov     ecx, [ebp+72h]
sar     ecx, 10h
mov     ebx, [esp+20h+var_20]
mov     ebx, [ebx+54h]
sar     ebx, 10h
mov     eax, [esp+20h+var_20]
add     eax, 14h
mov     edx, esi
call    sub_4DE552
mov     edx, [esp+20h+var_20]
add     ax, [edx+56h]
and     ah, 0Fh
mov     [edx+56h], ax
mov     eax, [esp+20h+var_1C]
mov     eax, [eax+54h]
sar     eax, 10h
mov     edx, [edx+54h]
sar     edx, 10h
cmp     eax, edx
jnz     loc_46CDFE
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Ah], 0
jmp     loc_46CDFE
sub_46D1A4 endp




sub_46D329 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
lea     ebp, [eax+348h]
mov     [esp+24h+var_1C], 1
jmp     short loc_46D371

loc_46D340:
mov     dx, [esi+8]
mov     [ecx+1Ch], dx
mov     eax, [edi-4]
mov     dx, [esi+0Ah]
mov     [eax+1Eh], dx
mov     eax, [edi-4]
mov     dx, [esi+0Ch]
mov     [eax+20h], dx

loc_46D35E:
mov     dl, [esp+24h+var_1C]
inc     dl
mov     [esp+24h+var_1C], dl
cmp     dl, 3
jnb     loc_46D44D

loc_46D371:
movzx   esi, [esp+24h+var_1C]
mov     eax, esi
mov     ecx, [ebp+eax*8+20h]
and     ecx, 0FFFFFFh
jz      short loc_46D3B3
mov     ebx, esi
shl     ebx, 4
lea     edx, [ebx-8]
mov     eax, [esp+24h+var_24]
add     eax, 190h
add     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3
mov     eax, esi
sub     [ebp+eax*2+62h], cx
add     ebx, [esp+24h+var_24]
mov     word ptr [ebx+18Eh], 7FFFh

loc_46D3B3:
xor     eax, eax
mov     al, [esp+24h+var_1C]
mov     edx, eax
cmp     word ptr [ebp+edx*2+62h], 0
jge     short loc_46D35E
mov     edi, eax
shl     edi, 2
add     edi, ebp
shl     eax, 3
lea     esi, [eax+ebp]
mov     ecx, [edi-4]
test    ecx, ecx
jnz     loc_46D340
push    ecx
mov     ebx, ds:dword_516FEC
push    ebx
mov     ecx, ds:dword_516FE8
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_516FE8+1
xor     edx, edx
mov     dl, byte ptr ds:dword_516FE8
mov     [esp+2Ch+var_20], edx
sub     eax, 8
lea     edx, [ebp+10h]
add     eax, edx
mov     edx, [esp+2Ch+var_20]
call    sub_43954B
mov     [edi-4], eax
call    sub_4DE13B
test    eax, eax
jz      loc_46D35E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     byte ptr [eax+0Dh], 1
mov     dx, [esi+8]
mov     [eax+48h], dx
mov     dx, [esi+0Ah]
mov     [eax+4Ah], dx
mov     dx, [esi+0Ch]
mov     [eax+4Ch], dx
jmp     loc_46D35E

loc_46D44D:
add     esp, 0Ch
jmp     loc_46CE01
sub_46D329 endp




sub_46D455 proc near

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
lea     ebp, [eax+348h]
call    sub_46D329
xor     ebx, ebx
mov     eax, [esp+20h+var_20]
mov     bl, [eax+9]
call    ds:funcs_46D472[ebx*4]
lea     edi, [ebp+10h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [ebp+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+10h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    0FFFFF968h
push    0FFFFF2C0h
mov     eax, [esp+28h+var_20]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [ebp+4Ch]
mov     [esp+28h+var_1C], eax
lea     eax, [ebp+10h]
xor     ecx, ecx
mov     edx, [esp+28h+var_1C]
call    sub_4DD4C5
lea     edi, [ebp+18h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+1A8h]
movsd
movsd
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+4Ch], eax
mov     eax, [ebp+18h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+50h], eax
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+54h], eax
push    698h
push    0FFFFF2C0h
mov     eax, [esp+28h+var_20]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [ebp+18h]
xor     ecx, ecx
mov     edx, [esp+28h+var_1C]
call    sub_4DD4C5
mov     eax, [esp+20h+var_20]
call    sub_4DEB53
mov     ax, [ebp+68h]
mov     ds:word_560E1C, ax
mov     ax, [ebp+6Ah]
mov     ds:word_560E2C, ax
mov     eax, [esp+20h+var_20]
call    sub_4DF795
jmp     loc_46CDFE
sub_46D455 endp




sub_46D559 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+348h]
mov     byte ptr [eax+0ACh], 1
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B
inc     byte ptr [ecx+9]
lea     edx, [ecx+14h]
mov     eax, 1B4h
call    sub_4D8BC3
test    byte ptr [esi+85h], 1
jz      short loc_46D59C
mov     eax, [esi+48h]
call    sub_4DE371

loc_46D59C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46D559 endp




sub_46D5A1 proc near
test    byte ptr [eax+0A6h], 1
jz      short nullsub_64
mov     word ptr [eax+46h], 0
mov     word ptr [eax+4Eh], 40h ; '@'
inc     byte ptr [eax+9]
sub_46D5A1 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_64]



sub_46D5BA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+348h]
mov     ebx, [eax+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx
call    sub_4DD43B
mov     ax, [esi+4Eh]
add     [esi+46h], ax
mov     eax, esi
call    sub_42DE56
test    ah, 30h
jz      loc_46CE02
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 1B5h
call    sub_4D8BC3
inc     byte ptr [esi+9]
mov     byte ptr [esi+0ACh], 2
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 0Fh
call    sub_42A70B
add     word ptr [esi+16h], 120h
mov     word ptr [edi+6Ch], 0
jmp     loc_46CE02
sub_46D5BA endp




sub_46D63D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+348h]
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_46CE02
mov     bx, [edx+6Ch]
test    bx, bx
jnz     loc_46D6EF
mov     al, [edx+7Eh]
and     al, 7
xor     ebx, ebx
mov     bl, al
mov     eax, ebx
shl     eax, 2
add     eax, ebx
mov     bh, ds:byte_516FF0[eax*2]
lea     edi, [edx+5Ch]
lea     esi, unk_516FF2[eax*2]
movsd
movsd
call    sub_4DE13B
test    eax, eax
jz      short loc_46D6E7
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     bl, [edx+7Eh]
and     bl, 3
mov     [eax+0Dh], bl
mov     bl, bh
and     ebx, 0FFh
mov     si, [ecx+ebx*8+190h]
mov     di, [edx+5Ch]
add     esi, edi
mov     [eax+48h], si
mov     si, [ecx+ebx*8+192h]
mov     di, [edx+5Eh]
add     esi, edi
mov     [eax+4Ah], si
mov     bx, [ecx+ebx*8+194h]
mov     si, [edx+60h]
add     ebx, esi
mov     [eax+4Ch], bx

loc_46D6E7:
mov     word ptr [edx+6Ch], 4
jmp     short loc_46D6F6

loc_46D6EF:
mov     esi, ebx
dec     esi
mov     [edx+6Ch], si

loc_46D6F6:
mov     eax, 52h ; 'R'
call    sub_47E888
test    eax, eax
jz      loc_46CE02
inc     byte ptr [ecx+9]
jmp     loc_46CE02
sub_46D63D endp




sub_46D710 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_46D71B[ecx*4]
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
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_46D74E
mov     eax, edx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_46D74E:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46D710 endp




sub_46D761 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D7CF
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 400h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]
cmp     ds:byte_560BE4, 5
jnz     short loc_46D7CF
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_46D7CF:
pop     edx
pop     ecx
pop     ebx
retn
sub_46D761 endp




sub_46D7D3 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D7F3
mov     word ptr [edx+16h], 0FF7Eh
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46D7F3:
pop     edx
retn
sub_46D7D3 endp




sub_46D7F5 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D815
mov     word ptr [edx+16h], 46h ; 'F'
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46D815:
pop     edx
retn
sub_46D7F5 endp




sub_46D817 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_46D829
mov     [eax+0Dh], dl
mov     dh, dl
inc     dh
mov     [eax+0Ah], dh

loc_46D829:
pop     edx
retn
sub_46D817 endp




sub_46D82B proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D846
mov     word ptr [eax+14h], 0F95Ch
mov     word ptr [eax+16h], 0FFECh
mov     word ptr [eax+18h], 0F60Ah
inc     byte ptr [eax+0Ah]

loc_46D846:
cmp     ds:dword_560BEC, 2Dh ; '-'
jnz     short locret_46D853
mov     byte ptr [eax+0Dh], 0

locret_46D853:
retn
sub_46D82B endp




sub_46D854 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46D873
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_46D873:
cmp     ds:dword_560BEC, 5
jnz     short loc_46D880
mov     byte ptr [ecx+0Dh], 0

loc_46D880:
pop     edx
pop     ecx
pop     ebx
retn
sub_46D854 endp




sub_46D884 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ebx, [eax+378h]
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
mov     word ptr [eax+15Eh], 0
xor     al, al

loc_46D8B6:
movsx   ecx, al
mov     word ptr [edx+ecx*8+196h], 4210h
inc     al
cmp     al, 8
jl      short loc_46D8B6
call    rand_
mov     [ebx+78h], ax
xor     ecx, ecx
mov     cl, [edx+8]
mov     eax, edx
call    ds:funcs_46D8D9[ecx*4]
jmp     loc_46E4AB
sub_46D884 endp




sub_46D8E5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+378h]
mov     ah, [eax]
or      ah, 42h
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+78h], offset unk_517058
lea     eax, [esi+3C4h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
mov     [esi+73h], al
xor     edx, edx
mov     dl, [esi+2]
mov     eax, ds:dword_55A10C
mov     eax, [eax+edx*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 6
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
shl     eax, 4
mov     [ecx+70h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Bh]
xor     ah, ah
shl     eax, 4
mov     [ecx+72h], ax
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     word ptr [esi+15Eh], 0
xor     al, al

loc_46D9D1:
movsx   edx, al
mov     word ptr [esi+edx*8+196h], 4210h
inc     al
cmp     al, 8
jl      short loc_46D9D1
or      byte ptr [ecx+7Bh], 4
mov     byte ptr [esi+0ACh], 3
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE9BA
mov     eax, esi
call    sub_4DF795
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_46DA8C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 40h ; '@'
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     bx, [esi+56h]
mov     [eax+56h], bx
mov     bl, [esi+1]
mov     [eax+0Ch], bl
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     bx, [esi+190h]
mov     [eax+14h], bx
mov     bx, [esi+192h]
mov     [eax+16h], bx
mov     bx, [esi+194h]
mov     [eax+18h], bx
mov     ebx, [eax+12h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+1Ch], ebx
mov     ebx, [eax+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+20h], ebx
mov     ebx, [eax+16h]
sar     ebx, 10h
shl     ebx, 10h
mov     [eax+24h], ebx

loc_46DA8C:
mov     al, [edx+1]
mov     [esi+0Ch], al
mov     dword ptr [esi+78h], offset unk_517058
mov     word ptr [ecx+68h], 0
mov     word ptr [ecx+6Ah], 0
mov     byte ptr [ecx+7Ch], 14h
mov     byte ptr [ecx+7Eh], 0
mov     byte ptr [ecx+82h], 0
mov     word ptr [ecx+6Ch], 0
mov     word ptr [ecx+6Eh], 0
mov     byte ptr [ecx+7Fh], 0
mov     byte ptr [ecx+80h], 0Ch
mov     byte ptr [ecx+81h], 8
mov     dword ptr [ecx+2Ch], 0
mov     dword ptr [ecx+34h], 0
mov     dword ptr [ecx+3Ch], 0
mov     byte ptr [ecx+7Dh], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     word ptr [ecx+74h], 0
mov     word ptr [ecx+6Ch], 0F0h
mov     word ptr [ecx+6Eh], 68h ; 'h'
push    2C786060h
mov     ecx, 60h ; '`'
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_436785
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46D8E5 endp




sub_46DB32 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
lea     ebp, [eax+378h]
call    sub_46EAD2
mov     eax, [esp+24h+var_24]
cmp     byte ptr [eax+8], 3
jz      loc_46DF3B
test    byte ptr [ebp+7Bh], 4
jz      short loc_46DB5F
call    sub_46ED58

loc_46DB5F:
lea     eax, [ebp+4Ch]
mov     edx, [esp+24h+var_24]
call    sub_4E19CA
xor     ecx, ecx
mov     eax, [esp+24h+var_24]
mov     cl, [eax+9]
call    ds:funcs_46DB72[ecx*4]
mov     eax, [ebp+7Bh]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_46DB99
test    byte ptr [ebp+7Bh], 4
jz      short loc_46DB99
xor     ecx, ecx
mov     cl, [ebp+7Dh]
mov     eax, [esp+24h+var_24]
call    ds:funcs_46DB92[ecx*4]

loc_46DB99:
mov     eax, [esp+24h+var_24]
call    sub_4DEB53
mov     ax, [ebp+68h]
mov     ds:word_560E2E, ax
mov     ax, [ebp+6Ah]
mov     ds:word_560E46, ax
mov     eax, [esp+24h+var_24]
call    sub_4DF795
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+190h]
movsd
movsd
push    0
push    0
add     word ptr [ebp+1Eh], 40h ; '@'
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
lea     eax, [ebp+2Ch]
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
lea     eax, [ebp+1Ch]
mov     [esp+38h+var_18], eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0B4h
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+198h]
movsd
movsd
push    80h
push    0
add     word ptr [ebp+1Eh], 14h
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
lea     eax, [ebp+44h]
mov     [esp+30h+var_1C], eax
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1A0h]
movsd
movsd
push    80h
push    0
add     word ptr [ebp+1Eh], 59h ; 'Y'
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ecx, [esp+30h+var_1C]
push    ecx
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1B8h]
movsd
movsd
push    80h
push    0
add     word ptr [ebp+1Eh], 59h ; 'Y'
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     ebx, [esp+30h+var_1C]
push    ebx
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1A8h]
movsd
movsd
add     word ptr [ebp+1Eh], 0A0h
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0Ch], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+10h], eax
mov     eax, [ebp+1Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+14h], eax
push    0
push    0
mov     eax, [esp+2Ch+var_24]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [ebp+0Ch]
mov     [esp+2Ch+var_20], eax
mov     ecx, 2C0h
mov     edx, eax
mov     eax, [esp+2Ch+var_18]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     esi, [esp+30h+var_1C]
push    esi
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A3h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1C0h]
movsd
movsd
add     word ptr [ebp+1Eh], 0A0h
mov     eax, [ebp+1Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+0Ch], eax
mov     eax, [ebp+1Ch]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+10h], eax
mov     eax, [ebp+1Eh]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+14h], eax
push    0
push    0
mov     eax, [esp+2Ch+var_24]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 2C0h
mov     edx, [esp+2Ch+var_20]
mov     eax, [esp+2Ch+var_18]
call    sub_4DD4C5
push    80h
push    0
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 5080000h
push    eax
mov     edi, [esp+30h+var_1C]
push    edi
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0A3h
mov     eax, [esp+38h+var_18]
call    sub_4E01FC
cmp     word ptr [ebp+70h], 0
jle     short loc_46DE7B
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1B0h]
movsd
movsd
push    0
push    0
sub     word ptr [ebp+1Eh], 20h ; ' '
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+34h]
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 24h ; '$'
mov     eax, [esp+38h+var_18]
call    sub_4E01FC

loc_46DE7B:
cmp     word ptr [ebp+72h], 0
jle     short loc_46DECB
lea     edi, [ebp+1Ch]
mov     esi, [esp+24h+var_24]
lea     esi, [esi+1C8h]
movsd
movsd
push    0
push    0
sub     word ptr [ebp+1Eh], 20h ; ' '
mov     eax, [esp+2Ch+var_24]
mov     eax, [eax+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
lea     eax, [ebp+3Ch]
push    eax
xor     eax, eax
mov     ecx, [esp+34h+var_24]
mov     al, [ecx+1]
push    eax
lea     eax, [ebp+1Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 24h ; '$'
call    sub_4E01FC

loc_46DECB:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0A6h], 1
jnz     short loc_46DEDD
test    byte ptr [ebp+7Bh], 1
jz      short loc_46DF1C

loc_46DEDD:
and     byte ptr [ebp+7Bh], 0FDh
mov     ecx, [esp+24h+var_24]
add     ecx, 14h
test    byte ptr [ebp+7Bh], 1
jz      short loc_46DEF8
cmp     byte ptr ds:dword_77E954+3, 0
jnz     short loc_46DF18
jmp     short loc_46DF04

loc_46DEF8:
mov     edx, ecx
mov     eax, 1B0h
call    sub_4D8BC3

loc_46DF04:
mov     ebx, 1388h
mov     edx, 7D0h
mov     eax, 0Fh
call    sub_42A70B

loc_46DF18:
or      byte ptr [ebp+7Bh], 1

loc_46DF1C:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax+0A6h], 4
jz      short loc_46DF48
mov     bl, [ebp+7Bh]
and     bl, 0FCh
mov     [ebp+7Bh], bl
mov     bh, bl
or      bh, 2
mov     [ebp+7Bh], bh
jmp     short loc_46DF48

loc_46DF3B:
call    sub_4DEB53
mov     eax, [esp+24h+var_24]
call    sub_4DF795

loc_46DF48:
mov     eax, [esp+24h+var_24]
test    byte ptr [eax], 2
jz      short loc_46DF64
mov     ecx, 1
mov     ebx, 200h
mov     edx, 12Ch
call    sub_4ED88B

loc_46DF64:
mov     dword ptr [ebp+2Ch], 0
mov     dword ptr [ebp+34h], 0
mov     dword ptr [ebp+3Ch], 0
mov     dword ptr [ebp+44h], 0

loc_46DF80:
add     esp, 10h
jmp     loc_46E4AA
sub_46DB32 endp



; Attributes: thunk

sub_46DF88 proc near
jmp     sub_4DE2F6
sub_46DF88 endp




sub_46DF8D proc near

var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ebp, offset byte_5F8364
lea     esi, [eax+378h]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     edx, ds:dword_5F8376+2
sar     edx, 10h
mov     eax, [eax+14h]
sar     eax, 10h
cmp     edx, eax
jl      loc_46E109
push    800h
mov     eax, ds:dword_5F83B8
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jz      loc_46E109
cmp     byte ptr [esi+7Eh], 0
jnz     short loc_46DFFD
mov     [esp+1Ch+var_1C], 4
jmp     short loc_46E001

loc_46DFFD:
mov     [esp+1Ch+var_1C], 7

loc_46E001:
mov     eax, [esi+7Bh]
sar     eax, 18h
add     eax, eax
add     eax, esi
cmp     word ptr [eax+70h], 0
jle     short loc_46E05C
mov     ebx, [eax+66h]
sar     ebx, 10h
mov     eax, [edi+54h]
sar     eax, 10h
add     ebx, eax
and     ebx, 0FFFh
xor     eax, eax
mov     al, [esp+1Ch+var_1C]
mov     edx, eax
shl     edx, 3
lea     eax, [edi+190h]
add     eax, edx
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     edx, eax
mov     eax, [esi+7Bh]
sar     eax, 18h
add     dx, [esi+eax*2+68h]
and     dh, 0Fh
mov     [esi+eax*2+68h], dx

loc_46E05C:
mov     bl, [esi+7Ch]
test    bl, bl
jnz     loc_46E102
mov     eax, [esi+7Bh]
sar     eax, 18h
cmp     word ptr [esi+eax*2+70h], 0
jg      short loc_46E07D

loc_46E075:
inc     byte ptr [esi+7Dh]
jmp     loc_46E109

loc_46E07D:
cmp     dword ptr [edi+80h], offset unk_800000
jnb     loc_46E109
xor     eax, eax
mov     al, [esp+1Ch+var_1C]
mov     edx, [edi+eax*8+18Eh]
sar     edx, 10h
shl     edx, 10h
mov     [esi+0Ch], edx
mov     edx, [edi+eax*8+190h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+10h], edx
mov     eax, [edi+eax*8+192h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+14h], eax
push    800h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     eax, [esi+7Bh]
sar     eax, 18h
mov     eax, [esi+eax*2+66h]
sar     eax, 10h
mov     edx, [edi+54h]
sar     edx, 10h
add     edx, eax
and     edx, 0FFFh
lea     eax, [esi+0Ch]
mov     ebx, 10h
call    sub_4DE639
test    eax, eax
jz      short loc_46E109
jmp     loc_46E075

loc_46E102:
mov     bh, bl
dec     bh
mov     [esi+7Ch], bh

loc_46E109:
add     esp, 4
jmp     loc_46E4AA
sub_46DF8D endp




sub_46E111 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
lea     esi, [eax+378h]
mov     ebp, offset byte_5F8364
mov     ah, [esi+7Eh]
test    ah, ah
jnz     short loc_46E144
cmp     word ptr [esi+70h], 0
jg      short loc_46E164
mov     byte ptr [esi+7Ch], 14h
mov     [esi+7Dh], ah
xor     byte ptr [esi+7Eh], 1
jmp     loc_46E2D6

loc_46E144:
cmp     ah, 1
jnz     loc_46E2D6
cmp     word ptr [esi+72h], 0
jg      short loc_46E164
mov     byte ptr [esi+7Ch], 14h
mov     byte ptr [esi+7Dh], 0
xor     [esi+7Eh], ah
jmp     loc_46E2D6

loc_46E164:
cmp     byte ptr [esi+7Eh], 0
jz      short loc_46E16E
mov     bl, 7
jmp     short loc_46E170

loc_46E16E:
mov     bl, 4

loc_46E170:
call    sub_4DE043
mov     edi, eax
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      loc_46E27C
mov     edx, [esp+24h+var_24]
add     edx, 14h
mov     eax, 1B1h
call    sub_4D8BC3
mov     byte ptr [edi], 3
mov     byte ptr [edi+2], 1
mov     byte ptr [edi+4], 0
mov     byte ptr [edi+0Fh], 1
xor     eax, eax
mov     al, bl
shl     eax, 3
mov     [esp+24h+var_20], eax
mov     eax, [esp+24h+var_24]
add     eax, [esp+24h+var_20]
mov     dx, [eax+190h]
mov     [edi+14h], dx
mov     dx, [eax+192h]
sub     edx, 20h ; ' '
mov     [edi+16h], dx
mov     ax, [eax+194h]
mov     [edi+18h], ax
mov     eax, [edi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+1Ch], eax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax
mov     eax, [edi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+24h], eax
push    0
push    0
mov     eax, [esi+7Bh]
sar     eax, 18h
mov     edx, [esi+eax*2+66h]
sar     edx, 10h
mov     ebx, [esp+2Ch+var_24]
mov     ebx, [ebx+54h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     edx, [edi+1Ch]
lea     eax, [edi+14h]
mov     ecx, 770h
call    sub_4DD4C5
mov     edx, [esp+24h+var_24]
add     edx, 190h
add     edx, [esp+24h+var_20]
lea     eax, [ebp+14h]
call    sub_4DD685
lea     edx, [ebp+0C4h]
cmp     eax, 3E8h
mov     ax, [ebp+14h]
mov     [ebp+0C4h], ax
mov     ax, [ebp+16h]
mov     [ebp+0C6h], ax
mov     ax, [ebp+18h]
mov     [ebp+0C8h], ax
mov     ebx, 62h ; 'b'
mov     eax, edi
call    sub_4DDC7D

loc_46E27C:
call    sub_4DE13B
test    eax, eax
jz      short loc_46E2B8
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 1
mov     edx, [esp+24h+var_1C]
mov     dx, [edx+14h]
mov     [eax+1Ch], dx
mov     edx, [esp+24h+var_1C]
mov     dx, [edx+16h]
mov     [eax+1Eh], dx
mov     edx, [esp+24h+var_1C]
mov     dx, [edx+18h]
mov     [eax+20h], dx

loc_46E2B8:
mov     byte ptr [esi+7Ch], 14h
mov     byte ptr [esi+7Dh], 0
xor     byte ptr [esi+7Eh], 1
cmp     word ptr [esi+70h], 0
jg      short loc_46E2D6
cmp     word ptr [esi+72h], 0
jg      short loc_46E2D6
mov     byte ptr [esi+7Eh], 0FFh

loc_46E2D6:
add     esp, 0Ch
jmp     loc_46E4AA
sub_46E111 endp




sub_46E2DE proc near

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
lea     ebp, [eax+378h]
mov     edx, offset byte_5F8364
mov     [esp+20h+var_1C], edx
xor     esi, esi
test    byte ptr [ebp+7Bh], 4
jz      loc_46E4A7
add     edx, 14h
mov     eax, [esp+20h+var_20]
add     eax, 14h
call    sub_4DDDB4
mov     edx, eax
cwde
lea     ecx, [eax-600h]
and     ecx, 0FFFh
cmp     ecx, 400h
jge     short loc_46E33C
lea     esi, [eax+800h]
and     esi, 0FFFh
or      esi, 20000h
jmp     short loc_46E3A6

loc_46E33C:
lea     ecx, [eax-200h]
and     ecx, 0FFFh
cmp     ecx, 400h
jge     short loc_46E364
lea     esi, [eax-400h]
and     esi, 0FFFh
or      esi, 10000h
jmp     short loc_46E3A6

loc_46E364:
lea     ecx, [eax+200h]
and     ecx, 0FFFh
cmp     ecx, 400h
jge     short loc_46E386
and     dh, 0Fh
movsx   esi, dx
or      esi, 30000h
jmp     short loc_46E3A6

loc_46E386:
lea     edx, [eax+600h]
and     edx, 0FFFh
cmp     edx, 400h
jge     short loc_46E3A6
lea     esi, [eax+400h]
and     esi, 0FFFh

loc_46E3A6:
xor     si, si
mov     edx, esi
shr     edx, 10h
xor     eax, eax
mov     al, [ebp+7Fh]
mov     ecx, eax
shl     ecx, 2
movsx   eax, dx
add     eax, ecx
cmp     ds:byte_517090[eax], 0FFh
jnz     loc_46E451
mov     word ptr [ebp+24h], 2
mov     word ptr [ebp+26h], 9
mov     word ptr [ebp+28h], 2
mov     edi, [esp+20h+var_20]
lea     edi, [edi+0C4h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+14h]
movsd
movsd
mov     edi, [esp+20h+var_1C]
lea     edi, [edi+0C4h]
mov     esi, [esp+20h+var_1C]
lea     esi, [esi+14h]
movsd
movsd
push    800h
lea     ecx, [ebp+0Ch]
lea     ebx, [ebp+24h]
mov     edx, [esp+24h+var_1C]
mov     eax, [esp+24h+var_20]
call    sub_4DD830
movzx   esi, byte ptr [ebp+7Fh]
shl     esi, 2
mov     edx, eax
and     edx, 1
add     edx, esi
mov     bl, ds:byte_517090[edx]
cmp     bl, 0FFh
jnz     short loc_46E442
and     eax, 10h
shr     eax, 4
xor     edx, edx
mov     dl, ds:byte_517092[esi+eax]
jmp     short loc_46E459

loc_46E442:
jnz     short loc_46E44A
mov     dl, bl
xor     dh, dh
jmp     short loc_46E459

loc_46E44A:
mov     edx, 0FFh
jmp     short loc_46E459

loc_46E451:
xor     edx, edx
mov     dl, ds:byte_517090[eax]

loc_46E459:
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+44h], 7Ch ; '|'
mov     byte ptr [ebp+80h], 0Ch
mov     byte ptr [ebp+81h], 8
cmp     dx, 0FFh
jz      short loc_46E47C
mov     [ebp+7Fh], dl
jmp     short loc_46E49F

loc_46E47C:
xor     esi, esi

loc_46E47E:
xor     eax, eax
mov     al, [ebp+7Fh]
xor     edx, edx
mov     dl, ds:byte_517090[esi+eax*4]
cmp     dx, 0FFh
jnz     short loc_46E499
inc     esi
cmp     esi, 4
jb      short loc_46E47E

loc_46E499:
mov     [ebp+7Fh], dl
mov     eax, [esp+20h+var_20]

loc_46E49F:
mov     byte ptr [eax+9], 5
and     byte ptr [ebp+7Bh], 0FEh

loc_46E4A7:
add     esp, 8

loc_46E4AA:
pop     ebp

loc_46E4AB:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46E2DE endp




sub_46E4B1 proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
lea     esi, [eax+378h]
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_46E4A7
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0ADh], 0FFh
mov     byte ptr [ebp+0ACh], 1
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
lea     edx, [ebp+14h]
mov     eax, 1B2h
call    sub_4D8BC3
xor     dl, dl
mov     [esp+20h+var_1C], dl
jmp     loc_46E5BC

loc_46E50A:
push    0FFFFFF50h

loc_46E50F:
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0A30h
mov     eax, [esp+28h+var_20]
call    sub_4DD4C5
mov     word ptr [esi+28h], 0
call    rand_
and     ah, 3
mov     [esi+24h], ax
mov     edx, eax
neg     edx
mov     [esi+24h], dx
call    rand_
and     ah, 0Fh
mov     [esi+26h], ax
lea     ecx, [edi+8Ch]  ; int
lea     eax, [esi+24h]
mov     edx, ecx
call    sub_4EF638
mov     dword ptr [esi+14h], 200h
mov     eax, [esi+14h]
mov     [esi+10h], eax
mov     [esi+0Ch], eax
lea     edx, [esi+0Ch]
mov     eax, ecx
call    sub_4EF689

loc_46E579:
call    sub_4DE13B
test    eax, eax
jz      short loc_46E5A9
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 1
mov     dx, [edi+14h]
mov     [eax+1Ch], dx
mov     dx, [edi+16h]
mov     [eax+1Eh], dx
mov     dx, [edi+18h]
mov     [eax+20h], dx

loc_46E5A9:
mov     bh, [esp+20h+var_1C]
inc     bh
mov     [esp+20h+var_1C], bh
cmp     bh, 2
jge     loc_46E4A7

loc_46E5BC:
call    sub_4DE043
mov     edi, eax
test    eax, eax
jz      short loc_46E579
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 5
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     ecx, [esp+20h+var_20+1]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     bx, [ebp+edx*8+1A0h]
mov     [eax+14h], bx
mov     cx, [ebp+edx*8+1A2h]
sub     ecx, 50h ; 'P'
mov     [eax+16h], cx
mov     dx, [ebp+edx*8+1A4h]
mov     [eax+18h], dx
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
lea     edx, [eax+14h]
mov     [esp+20h+var_20], edx
lea     edx, [eax+1Ch]
cmp     [esp+20h+var_1C], 0
jnz     loc_46E50A
push    0B0h
jmp     loc_46E50F
sub_46E4B1 endp




sub_46E653 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+378h]
test    byte ptr [esi+7Bh], 2
jz      loc_46E4AB
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
xor     eax, eax
mov     al, [esi+7Fh]
mov     ax, ds:word_517064[eax*4]
mov     [esi+24h], ax
xor     eax, eax
mov     al, [esi+7Fh]
mov     ax, ds:word_517066[eax*4]
mov     [esi+28h], ax
mov     ax, [edi+16h]
mov     [esi+26h], ax
test    byte ptr [esi+7Bh], 8
jz      short loc_46E6BD
lea     edx, [esi+24h]
lea     eax, [edi+14h]
call    sub_4DD685
mov     [esi+5Ch], eax
and     byte ptr [esi+7Bh], 0F7h

loc_46E6BD:
mov     eax, [esi+5Ch]
mov     [esi+60h], eax
lea     edx, [esi+24h]
lea     eax, [edi+14h]
call    sub_4DD685
mov     [esi+5Ch], eax
mov     eax, [esi+60h]
sub     eax, [esi+5Ch]
test    eax, eax
jge     loc_46E4AB
xor     eax, eax
mov     al, [esi+7Fh]
mov     ax, ds:word_517064[eax*4]
mov     [edi+14h], ax
xor     eax, eax
mov     al, [esi+7Fh]
mov     ax, ds:word_517066[eax*4]
mov     [edi+18h], ax
inc     byte ptr [edi+9]
jmp     loc_46E4AB
sub_46E653 endp




sub_46E709 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+0A6h], 10h
jz      short loc_46E732
mov     byte ptr [ecx+0ACh], 5
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
inc     byte ptr [ecx+9]

loc_46E732:
test    byte ptr [ecx+0A6h], 20h
jz      short loc_46E756
mov     byte ptr [ecx+0ACh], 4
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
inc     byte ptr [ecx+9]

loc_46E756:
pop     edx
pop     ecx
pop     ebx
retn
sub_46E709 endp




sub_46E75A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+378h]
test    byte ptr [esi+7Bh], 4
jz      loc_46E4AB
xor     eax, eax
mov     al, [esi+7Fh]
mov     ax, ds:word_517064[eax*4]
mov     [esi+24h], ax
xor     eax, eax
mov     al, [esi+7Fh]
mov     ax, ds:word_517066[eax*4]
mov     [esi+28h], ax
mov     ax, [edi+16h]
mov     [esi+26h], ax
xor     ecx, ecx
mov     cl, [esi+80h]
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+24h]
lea     eax, [edi+14h]
call    sub_4DE552
mov     ecx, eax
test    byte ptr [esi+7Bh], 10h
jnz     short loc_46E7C7
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax

loc_46E7C7:
test    cx, cx
jz      short loc_46E80C
mov     al, [edi+0ACh]
cmp     al, [edi+0ADh]
jz      short loc_46E80C
test    cx, cx
jle     short loc_46E7E8
mov     byte ptr [edi+0ACh], 2
jmp     short loc_46E7EF

loc_46E7E8:
mov     byte ptr [edi+0ACh], 3

loc_46E7EF:
mov     al, [edi+0ACh]
mov     [edi+0ADh], al
xor     edx, edx
mov     dl, [edi+0ACh]
xor     ebx, ebx
mov     eax, edi
call    sub_4DE9BA

loc_46E80C:
test    byte ptr [edi+0A6h], 8
jz      short loc_46E824
mov     eax, [edi+9]
sar     eax, 18h
call    sub_4E1877
mov     byte ptr [eax+0Dh], 4

loc_46E824:
mov     bh, [esi+81h]
add     bh, 8
mov     [esi+81h], bh
xor     edx, edx
mov     dl, bh
mov     ebx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, 0Ch
mov     [esi+80h], al
xor     edx, edx
mov     dl, [esi+81h]
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esi+81h], dl
test    cx, cx
jnz     short loc_46E891
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_46E4AB
inc     byte ptr [edi+9]
mov     dl, [esi+7Bh]
or      dl, 8
mov     [esi+7Bh], dl
mov     dh, dl
and     dh, 0EFh
mov     [esi+7Bh], dh
jmp     loc_46E4AB

loc_46E891:
mov     eax, [edi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_46E8C7
and     byte ptr [esi+7Bh], 0EFh
xor     edx, edx
mov     dl, [edi+0ACh]
xor     ebx, ebx
mov     eax, edi
call    sub_4DE9BA
mov     byte ptr [esi+80h], 0Ch
mov     byte ptr [esi+81h], 8
jmp     loc_46E4AB

loc_46E8C7:
test    byte ptr [edi+0A6h], 40h
jz      loc_46E4AB
mov     byte ptr [esi+80h], 0Ch
mov     byte ptr [esi+81h], 8
or      byte ptr [esi+7Bh], 10h
jmp     loc_46E4AB
sub_46E75A endp




sub_46E8EB proc near
push    edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_46E90F
mov     dl, [eax+9]
cmp     dl, 6
jnz     short loc_46E908
mov     byte ptr [eax+9], 1
pop     edx
retn

loc_46E908:
mov     dh, dl
inc     dh
mov     [eax+9], dh

loc_46E90F:
pop     edx
retn
sub_46E8EB endp




sub_46E911 proc near
push    edx
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_46E924
mov     byte ptr [eax+9], 0

loc_46E924:
pop     edx
retn
sub_46E911 endp




sub_46E926 proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
lea     esi, [eax+378h]
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_46E4A7
mov     byte ptr [ebp+9], 0
mov     dx, [esi+74h]
test    dx, dx
jnz     loc_46EAC6
lea     edx, [ebp+14h]
mov     eax, 1B2h
call    sub_4D8BC3
xor     ah, ah
mov     [esp+20h+var_1C], ah
jmp     loc_46EA24

loc_46E972:
push    0FFFFFF50h

loc_46E977:
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0A30h
mov     eax, [esp+28h+var_20]
call    sub_4DD4C5
mov     word ptr [esi+28h], 0
call    rand_
and     ah, 3
mov     [esi+24h], ax
mov     ecx, eax
neg     ecx
mov     [esi+24h], cx
call    rand_
and     ah, 0Fh
mov     [esi+26h], ax
lea     ecx, [edi+8Ch]  ; int
lea     eax, [esi+24h]
mov     edx, ecx
call    sub_4EF638
mov     dword ptr [esi+14h], 200h
mov     eax, [esi+14h]
mov     [esi+10h], eax
mov     [esi+0Ch], eax
lea     edx, [esi+0Ch]
mov     eax, ecx
call    sub_4EF689

loc_46E9E1:
call    sub_4DE13B
test    eax, eax
jz      short loc_46EA11
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 1
mov     dx, [edi+14h]
mov     [eax+1Ch], dx
mov     dx, [edi+16h]
mov     [eax+1Eh], dx
mov     dx, [edi+18h]
mov     [eax+20h], dx

loc_46EA11:
mov     bh, [esp+20h+var_1C]
inc     bh
mov     [esp+20h+var_1C], bh
cmp     bh, 2
jge     loc_46EABB

loc_46EA24:
call    sub_4DE043
mov     edi, eax
test    eax, eax
jz      short loc_46E9E1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 5
mov     dword ptr [eax+0C8h], (offset dword_5F880A+2)
mov     ecx, [esp+20h+var_20+1]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     bx, [ebp+edx*8+1A0h]
mov     [eax+14h], bx
mov     cx, [ebp+edx*8+1A2h]
sub     ecx, 50h ; 'P'
mov     [eax+16h], cx
mov     dx, [ebp+edx*8+1A4h]
mov     [eax+18h], dx
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
lea     edx, [eax+14h]
mov     [esp+20h+var_20], edx
lea     edx, [eax+1Ch]
cmp     [esp+20h+var_1C], 0
jnz     loc_46E972
push    0B0h
jmp     loc_46E977

loc_46EABB:
mov     word ptr [esi+74h], 0B4h
jmp     loc_46E4A7

loc_46EAC6:
mov     ebx, edx
dec     ebx
mov     [esi+74h], bx
jmp     loc_46E4A7
sub_46E926 endp




sub_46EAD2 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
add     eax, 378h
mov     [esp+28h+var_20], eax
mov     ecx, [eax+2Ch]
and     ecx, 0FFFFFFh
jz      short loc_46EB41
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     edx, eax
mov     bx, [ebp+6Eh]
sub     ebx, ecx
mov     [ebp+6Eh], bx
test    bx, bx
jl      short loc_46EB41
xor     ah, ah
mov     [esp+28h+var_1C], ah

loc_46EB13:
xor     eax, eax
mov     al, [esp+28h+var_1C]
mov     word ptr [ebp+eax*8+196h], 7FFFh
mov     bl, al
inc     bl
mov     [esp+28h+var_1C], bl
cmp     bl, 8
jb      short loc_46EB13
mov     byte ptr [edx+0Eh], 1
lea     edx, [ebp+14h]
mov     eax, 0A0h
call    sub_4D8BC3

loc_46EB41:
cmp     word ptr [ebp+6Eh], 0
jge     loc_46EBFC
cmp     byte ptr [ebp+8], 3
jz      short loc_46EB8D
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     byte ptr [ebp+8], 3
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [ebp+0ACh], 6
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA

loc_46EB8D:
mov     eax, [esp+28h+var_20]
mov     edx, [eax+8]
test    edx, edx
jnz     short loc_46EBCB
push    edx
mov     ecx, ds:dword_5170C0
push    ecx
mov     ecx, ds:dword_5170BC
sar     ecx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:dword_5170BC+1
mov     dl, byte ptr ds:dword_5170BC
lea     eax, [ebp+190h]
call    sub_43954B
mov     edx, [esp+28h+var_20]
mov     [edx+8], eax
jmp     short loc_46EBFC

loc_46EBCB:
mov     eax, edx
mov     dx, [ebp+190h]
mov     [eax+1Ch], dx
mov     eax, [esp+28h+var_20]
mov     eax, [eax+8]
mov     dx, [ebp+192h]
mov     [eax+1Eh], dx
mov     eax, [esp+28h+var_20]
mov     eax, [eax+8]
mov     dx, [ebp+194h]
mov     [eax+20h], dx

loc_46EBFC:
xor     ch, ch
mov     [esp+28h+var_1C], ch
jmp     short loc_46EC40

loc_46EC04:
mov     eax, edx
mov     dx, [esi+1B0h]
mov     [eax+1Ch], dx
mov     dx, [esi+1B2h]
sub     edx, 20h ; ' '
mov     eax, [edi]
mov     [eax+1Eh], dx
mov     eax, [edi]
mov     dx, [esi+1B4h]
mov     [eax+20h], dx

loc_46EC2E:
mov     al, [esp+28h+var_1C]
inc     al
mov     [esp+28h+var_1C], al
cmp     al, 2
jnb     loc_46DF80

loc_46EC40:
movzx   edi, [esp+28h+var_1C]
mov     eax, edi
shl     eax, 3
mov     ebx, [esp+28h+var_20]
add     eax, ebx
mov     ecx, [eax+34h]
and     ecx, 0FFFFFFh
jz      short loc_46EC96
lea     esi, [edi+edi]
add     esi, ebx
cmp     word ptr [esi+70h], 0
jl      short loc_46EC96
mov     edx, edi
shl     edx, 4
add     edx, 20h ; ' '
lea     eax, [ebp+190h]
add     edx, eax
mov     eax, 0A0h
call    sub_4D8BC3
sub     [esi+70h], cx
mov     eax, edi
shl     eax, 2
sub     eax, edi
mov     word ptr [ebp+eax*8+1B6h], 7FFFh

loc_46EC96:
xor     eax, eax
mov     al, [esp+28h+var_1C]
lea     edx, [eax+eax]
mov     ecx, [esp+28h+var_20]
add     edx, ecx
cmp     word ptr [edx+70h], 0
jge     short loc_46EC2E
mov     edi, eax
shl     edi, 2
add     edi, ecx
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
mov     [esp+28h+var_24], eax
shl     eax, 3
lea     esi, [eax+ebp]
mov     edx, [edi]
test    edx, edx
jnz     loc_46EC04
push    edx
mov     ecx, ds:dword_5170C0
push    ecx
mov     ecx, ds:dword_5170BC
sar     ecx, 10h
mov     dl, byte ptr ds:dword_5170BC+1
mov     [esp+30h+var_28], edx
xor     edx, edx
mov     dl, byte ptr ds:dword_5170BC
add     eax, 20h ; ' '
lea     ebx, [ebp+190h]
add     eax, ebx
mov     ebx, [esp+30h+var_28]
call    sub_43954B
mov     [edi], eax
mov     eax, [esp+28h+var_24]
mov     byte ptr [ebp+eax*4+10Bh], 0FFh
call    sub_4DE13B
test    eax, eax
jz      loc_46EC2E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     byte ptr [eax+0Dh], 1
mov     dx, [esi+1B0h]
mov     [eax+48h], dx
mov     di, [esi+1B2h]
sub     edi, 20h ; ' '
mov     [eax+4Ah], di
mov     dx, [esi+1B4h]
mov     [eax+4Ch], dx
jmp     loc_46EC2E
sub_46EAD2 endp




sub_46ED58 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_42CE47
mov     ecx, eax
test    eax, eax
jz      short loc_46ED7A
mov     eax, edx
call    sub_4EE9F8
mov     edx, 8000h
mov     eax, ecx
call    sub_4EE6C2

loc_46ED7A:
pop     edx
pop     ecx
retn
sub_46ED58 endp




sub_46ED7D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+378h]
call    sub_46EAD2
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_46ED94[ebx*4]
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF795
mov     dword ptr [ecx+2Ch], 0
mov     dword ptr [ecx+34h], 0
mov     dword ptr [ecx+3Ch], 0
mov     dword ptr [ecx+44h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_46ED7D endp




sub_46EDC9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+0ACh], 6
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE9BA
inc     byte ptr [ecx+9]
lea     edx, [ecx+14h]
mov     eax, 1B4h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn
sub_46EDC9 endp




sub_46EDF8 proc near
test    byte ptr [eax+0A6h], 1
jz      short locret_46EE0A
mov     word ptr [eax+44h], 4Ch ; 'L'
inc     byte ptr [eax+9]

locret_46EE0A:
retn
sub_46EDF8 endp




sub_46EE0B proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+378h]
mov     ecx, [eax+0A4h]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jz      short loc_46EE5C
test    byte ptr [eax+0A6h], 2
jz      short loc_46EE31
mov     word ptr [eax+44h], 6Ch ; 'l'

loc_46EE31:
push    0
push    0
mov     ecx, [eax+42h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
lea     edx, [eax+1Ch]
add     eax, 14h
call    sub_4DD4C5
pop     edx
pop     ecx
pop     ebx
retn

loc_46EE5C:
inc     byte ptr [eax+9]
call    sub_4367FD
mov     word ptr [edx+76h], 78h ; 'x'
pop     edx
pop     ecx
pop     ebx
sub_46EE0B endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_65]



sub_46EE6E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
lea     ecx, [eax+378h]
mov     eax, [eax+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_46E4AB
cmp     byte ptr [ecx+82h], 0
jnz     short loc_46EEAA
lea     edx, [ebx+14h]
mov     eax, 1B5h
call    sub_4D8BC3
mov     byte ptr [ecx+82h], 1

loc_46EEAA:
cmp     word ptr [ecx+76h], 0
jz      loc_46EF55
mov     edx, [ecx+74h]
sar     edx, 10h
mov     esi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    edx, edx
jnz     loc_46EF4C
mov     dl, [ecx+78h]
and     dl, 7
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     dh, ds:byte_517110[eax*2]
lea     edi, [ecx+24h]
lea     esi, unk_517112[eax*2]
movsd
movsd
call    sub_4DE13B
test    eax, eax
jz      short loc_46EF4C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     dl, [ecx+78h]
and     dl, 3
mov     [eax+0Dh], dl
mov     dl, dh
and     edx, 0FFh
shl     edx, 3
add     ebx, edx
mov     dx, [ebx+190h]
mov     si, [ecx+24h]
add     edx, esi
mov     [eax+48h], dx
mov     dx, [ebx+192h]
mov     di, [ecx+26h]
add     edx, edi
mov     [eax+4Ah], dx
mov     dx, [ebx+194h]
mov     bx, [ecx+28h]
add     edx, ebx
mov     [eax+4Ch], dx

loc_46EF4C:
dec     word ptr [ecx+76h]
jmp     loc_46E4AB

loc_46EF55:
call    sub_4B55BB
test    eax, eax
jz      short loc_46EF7D
mov     eax, 52h ; 'R'
call    sub_47E8B8
lea     edx, [ebx+14h]
mov     eax, 0A4h
call    sub_4D8BC3
inc     byte ptr [ebx+9]
jmp     loc_46E4AB

loc_46EF7D:
mov     word ptr [ecx+76h], 78h ; 'x'
jmp     loc_46E4AB
sub_46EE6E endp




sub_46EF88 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_46EF93[ecx*4]
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
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_46EFC6
mov     eax, edx
call    sub_4DEADD
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_46EFC6:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_46EF88 endp




sub_46EFD9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F047
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+56h], 400h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]
cmp     ds:byte_560BE4, 5
jnz     short loc_46F047
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_46F047:
pop     edx
pop     ecx
pop     ebx
retn
sub_46EFD9 endp




sub_46F04B proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F06B
mov     word ptr [edx+16h], 0FFB0h
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46F06B:
pop     edx
retn
sub_46F04B endp




sub_46F06D proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F08D
mov     word ptr [edx+16h], 0
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
inc     byte ptr [edx+0Ah]

loc_46F08D:
pop     edx
retn
sub_46F06D endp




sub_46F08F proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_46F0A1
mov     [eax+0Dh], dl
mov     dh, dl
inc     dh
mov     [eax+0Ah], dh

loc_46F0A1:
pop     edx
retn
sub_46F08F endp




sub_46F0A3 proc near
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F0BE
mov     word ptr [eax+14h], 0F95Ch
mov     word ptr [eax+16h], 0
mov     word ptr [eax+18h], 0F60Ah
inc     byte ptr [eax+0Ah]

loc_46F0BE:
cmp     ds:dword_560BEC, 2Dh ; '-'
jnz     short locret_46F0CB
mov     byte ptr [eax+0Dh], 0

locret_46F0CB:
retn
sub_46F0A3 endp




sub_46F0CC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46F0EB
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_46F0EB:
cmp     ds:dword_560BEC, 5
jnz     short loc_46F0F8
mov     byte ptr [ecx+0Dh], 0

loc_46F0F8:
pop     edx
pop     ecx
pop     ebx
retn
sub_46F0CC endp




sub_46F0FC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_46F123
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_46F123:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_46F12A[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_46F145
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_46F151

loc_46F145:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_46F151:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F0FC endp




sub_46F15D proc near
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
sub_46F15D endp




sub_46F251 proc near
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
jnz     short loc_46F278
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46F278:
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
sub_46F251 endp




sub_46F290 proc near

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
mov     al, [ebp+74h]
mov     [ebp+75h], al
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_46F2EB[edx*4]
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     eax, [esp+1Ch+var_1C]
add     eax, 40h ; '@'
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_46F32F
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 20h
jmp     short loc_46F335

loc_46F32F:
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0DFh

loc_46F335:
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_46F354
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46F35B

loc_46F354:
mov     eax, ebp
call    sub_4DEADD

loc_46F35B:
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     edx, eax
cmp     byte ptr [ebp+74h], 0
jnz     short loc_46F3B0
mov     esi, [ebp+14h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
mov     edx, esi
test    esi, esi
jge     short loc_46F384
neg     edx

loc_46F384:
cmp     edx, 100h
jle     short loc_46F390
mov     byte ptr [ebp+3], 0

loc_46F390:
mov     esi, [ebp+14h]
sar     esi, 10h
movsx   edx, ax
cmp     esi, edx
jge     short loc_46F3AC
add     word ptr [ebp+16h], 28h ; '('
mov     esi, [ebp+14h]
sar     esi, 10h
cmp     esi, edx
jle     short loc_46F3B0

loc_46F3AC:
mov     [ebp+16h], ax

loc_46F3B0:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      loc_46F4B7
mov     edi, eax
lea     edi, [edi+18h]
lea     esi, [ebp+190h]
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+10h]
or      eax, 4880000h
push    eax
lea     eax, [edx+20h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     esi, [edx+18h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 6Eh ; 'n'
mov     eax, esi
call    sub_4E01FC
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      loc_46F4B7
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+16h]
sar     eax, 10h
add     eax, edx
mov     edx, [esp+1Ch+var_1C]
mov     [edx+18h], ax
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+1Ah]
sar     eax, 10h
add     eax, edx
mov     edx, [esp+1Ch+var_1C]
mov     [edx+1Ch], ax
push    0
push    offset unk_800000
mov     eax, [edx+12h]
sar     eax, 10h
or      eax, 4880000h
push    eax
lea     eax, [edx+30h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4E01FC

loc_46F4B7:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+20h], 0
mov     dword ptr [eax+30h], 0

loc_46F4C8:
add     esp, 4

loc_46F4CB:
pop     ebp

loc_46F4CC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F290 endp




sub_46F4D2 proc near
push    ebx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     al, [esi+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [esi+56h], ax
mov     word ptr [esi+58h], 0
mov     word ptr [esi+64h], 0
mov     word ptr [esi+66h], 0
mov     byte ptr [esi+74h], 0
mov     al, [esi+74h]
mov     [esi+75h], al
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     word ptr [esi+158h], 200h
mov     word ptr [esi+15Ah], 200h
mov     word ptr [esi+15Ch], 200h
lea     eax, [esi+448h]
mov     ebx, 0FFFFFF38h
mov     edx, 3
call    sub_4E19B9
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [esi+6Eh], ax
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
mov     dword ptr [esi+78h], offset off_51718C
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
mov     word ptr [esi+15Eh], 4210h
xor     ebx, ebx
mov     edx, 5
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi], 1
mov     word ptr [edi+4], 0B4h
mov     word ptr [edi+6], 0
xor     eax, eax
mov     al, [esi+2]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_55A10C
mov     eax, [edx+eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+10h], ax
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ch]
xor     ah, ah
mov     [edi+14h], ax
mov     word ptr [edi+12h], 0
mov     word ptr [edi+16h], 0
mov     dword ptr [edi+20h], 0
mov     dword ptr [edi+24h], 0
mov     dword ptr [edi+30h], 0
mov     dword ptr [edi+34h], 0
mov     word ptr [edi+8], 0
lea     edi, [edi+50h]
lea     esi, [esi+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_46F4D2 endp




sub_46F63A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46F669
lea     edx, [ecx+50h]
lea     eax, [esi+14h]
call    sub_4DD685
cmp     eax, 0Ah
jle     short loc_46F669
mov     byte ptr [esi+8], 6

loc_46F660:
mov     byte ptr [esi+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46F669:
mov     eax, esi
call    sub_47006D
test    al, al
jz      short loc_46F690
jge     short loc_46F67C
mov     byte ptr [esi+8], 5
jmp     short loc_46F660

loc_46F67C:
mov     byte ptr [esi+8], 2
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0ACh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46F690:
test    byte ptr [ecx], 20h
jz      short loc_46F6CB
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 34h ; '4'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_46F6CB
mov     byte ptr [esi+0ACh], 0
inc     byte ptr [esi+8]

loc_46F6CB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F63A endp




sub_46F6D0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     edx, [eax+408h]
call    sub_47006D
test    al, al
jge     short loc_46F6F3
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
jmp     loc_46F4CC

loc_46F6F3:
xor     ebx, ebx
mov     bl, [ecx+9]
mov     eax, ecx
call    ds:funcs_46F6FA[ebx*4]
mov     bx, [edx+4]
test    bx, bx
jz      short loc_46F711
mov     ecx, ebx
dec     ecx
mov     [edx+4], cx

loc_46F711:
mov     si, [edx+8]
test    si, si
jz      loc_46F4CC
mov     edi, esi
dec     edi
mov     [edx+8], di
jmp     loc_46F4CC
sub_46F6D0 endp




sub_46F72A proc near
push    ebx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F75B
mov     byte ptr [eax+0ACh], 1
mov     bx, [edx+2]
xor     bh, bh
and     bl, 1Fh
add     ebx, 1Eh
mov     [edx+4], bx
mov     word ptr [edx+8], 0
inc     byte ptr [eax+9]

loc_46F75B:
pop     edx
pop     ebx
retn
sub_46F72A endp




sub_46F75E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F79F
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 400h
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
test    ax, ax
jge     short loc_46F78F
cwde
neg     eax
jmp     short loc_46F790

loc_46F78F:
cwde

loc_46F790:
cmp     eax, 68h ; 'h'
jle     short loc_46F79C
mov     byte ptr [esi+0ACh], 10h

loc_46F79C:
inc     byte ptr [esi+9]

loc_46F79F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F75E endp




sub_46F7A4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+54h]
sar     ebx, 10h
add     eax, 14h
mov     ecx, 34h ; '4'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ah, [esi+0A4h]
cmp     ah, 5
jz      short loc_46F7DF
cmp     ah, 14h
jnz     short loc_46F7EC

loc_46F7DF:
lea     edx, [esi+14h]
mov     eax, 1B6h
call    sub_4D8BC3

loc_46F7EC:
test    bx, bx
jge     short loc_46F7F8
movsx   edx, bx
neg     edx
jmp     short loc_46F7FB

loc_46F7F8:
movsx   edx, bx

loc_46F7FB:
cmp     edx, 34h ; '4'
jge     short loc_46F80A
mov     byte ptr [esi+0ACh], 3
inc     byte ptr [esi+9]

loc_46F80A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F7A4 endp




sub_46F80F proc near

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
add     eax, 408h
mov     [esp+20h+var_1C], eax
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+0A7h], 0
jge     loc_46F8D0
mov     eax, [esp+20h+var_1C]
cmp     word ptr [eax+8], 0
jnz     loc_46F8D0
call    sub_4DE043
mov     ebp, eax
test    eax, eax
jz      short loc_46F8B9
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 9
mov     byte ptr [eax+3], 3
lea     edi, [ebp+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+198h]
movsd
movsd
mov     eax, [eax+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
push    0
push    140h
mov     eax, [esp+28h+var_20]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     edx, [ebp+1Ch]
lea     eax, [ebp+14h]
mov     ecx, 800h
call    sub_4DD4C5
mov     eax, [esp+20h+var_20]
mov     ax, [eax+56h]
mov     [ebp+64h], ax

loc_46F8B9:
mov     eax, [esp+20h+var_1C]
mov     word ptr [eax+8], 0Fh
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+0ACh], 4
inc     byte ptr [eax+9]

loc_46F8D0:
add     esp, 8
jmp     loc_46F4CB
sub_46F80F endp




sub_46F8D8 proc near
cmp     byte ptr [eax+0A7h], 0
jge     short locret_46F8EB
mov     byte ptr [eax+0ACh], 2
inc     byte ptr [eax+9]

locret_46F8EB:
retn
sub_46F8D8 endp




sub_46F8EC proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F922
mov     byte ptr [eax+0ACh], 1
mov     byte ptr [eax+9], 1
cmp     word ptr [edx+4], 0
jnz     short loc_46F922
cmp     byte ptr [eax+3], 0
jz      short loc_46F91A
mov     byte ptr [eax+8], 3
jmp     short loc_46F91E

loc_46F91A:
mov     byte ptr [eax+8], 6

loc_46F91E:
mov     byte ptr [eax+9], 0

loc_46F922:
pop     edx
retn
sub_46F8EC endp




sub_46F924 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+408h]
call    sub_47015E
test    al, al
jz      short loc_46F954
jge     short loc_46F96A
mov     byte ptr [edx+8], 4
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0ACh], 9
and     byte ptr [ecx], 0FDh
mov     word ptr [ecx+4], 0
pop     edx
pop     ecx
retn

loc_46F954:
mov     eax, edx
call    sub_47006D
test    al, al
jge     short loc_46F96A
mov     byte ptr [edx+8], 5
mov     byte ptr [edx+9], 0
pop     edx
pop     ecx
retn

loc_46F96A:
xor     ecx, ecx
mov     cl, [edx+9]
mov     eax, edx
call    ds:funcs_46F971[ecx*4]
pop     edx
pop     ecx
retn
sub_46F924 endp




sub_46F97B proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
or      byte ptr [eax], 2
mov     bx, [eax+2]
xor     bh, bh
and     bl, 1Fh
add     ebx, 1Eh
mov     [eax+4], bx
mov     byte ptr [edx+0ACh], 5
inc     byte ptr [edx+9]
pop     edx
pop     ebx
retn
sub_46F97B endp




sub_46F9A4 proc near
push    ebx
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F9CB
mov     bx, [edx+4]
dec     bx
mov     [edx+4], bx
jnz     short loc_46F9CB
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+9]

loc_46F9CB:
pop     edx
pop     ebx
retn
sub_46F9A4 endp




sub_46F9CE proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_46F9E9
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
and     byte ptr [edx], 0FDh

loc_46F9E9:
pop     edx
retn
sub_46F9CE endp




sub_46F9EB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
call    sub_47006D
test    al, al
jge     short loc_46FA0D
mov     byte ptr [edx+8], 5

loc_46FA04:
mov     byte ptr [edx+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46FA0D:
xor     ebx, ebx
mov     si, [ecx+4]
inc     esi
mov     [ecx+4], si
cmp     si, 1Bh
jge     short loc_46FA23
mov     ebx, 3

loc_46FA23:
cmp     word ptr [ecx+4], 15h
jge     short loc_46FA2F
mov     ebx, 6

loc_46FA2F:
cmp     word ptr [ecx+4], 0Fh
jge     short loc_46FA3B
mov     ebx, 9

loc_46FA3B:
cmp     word ptr [ecx+4], 9
jge     short loc_46FA47
mov     ebx, 7

loc_46FA47:
cmp     word ptr [ecx+4], 4
jge     short loc_46FA50
xor     ebx, ebx

loc_46FA50:
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF008
movsx   ebx, bx
mov     esi, eax
imul    esi, ebx
sar     esi, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, esi
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Ch
mov     ecx, [edx+16h]
sar     ecx, 10h
add     ecx, eax
mov     [edx+18h], cx
cmp     byte ptr [edx+0A7h], 0
jge     short loc_46FAB3
mov     bl, [edx+3]
test    bl, bl
jz      short loc_46FAAC
mov     byte ptr [edx+8], 6
jmp     loc_46FA04

loc_46FAAC:
mov     byte ptr [edx+8], 2
mov     [edx+9], bl

loc_46FAB3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46F9EB endp




sub_46FAB8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_46FABE[edx*4]
pop     edx
retn
sub_46FAB8 endp




sub_46FAC7 proc near
push    edx
lea     edx, [eax+408h]
test    byte ptr [edx], 8
jz      short loc_46FADC
mov     byte ptr [eax+0ACh], 0Dh
jmp     short loc_46FAE3

loc_46FADC:
mov     byte ptr [eax+0ACh], 0Ah

loc_46FAE3:
mov     byte ptr [eax+74h], 1
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
inc     byte ptr [eax+9]
pop     edx
retn
sub_46FAC7 endp




sub_46FAF8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
xor     esi, esi
xor     ebx, ebx
cmp     word ptr [ecx+4], 9
jge     short loc_46FB15
mov     ebx, 18h

loc_46FB15:
cmp     word ptr [ecx+4], 5
jge     short loc_46FB21
mov     ebx, 38h ; '8'

loc_46FB21:
cmp     word ptr [ecx+6], 9
jge     short loc_46FB2D
mov     esi, 15h

loc_46FB2D:
cmp     word ptr [ecx+6], 5
jge     short loc_46FB39
mov     esi, 0FFFFFFEBh

loc_46FB39:
inc     word ptr [ecx+4]
inc     word ptr [ecx+6]
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF008
movsx   ebx, bx
mov     edi, eax
imul    edi, ebx
sar     edi, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, edi
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF003
imul    ebx, eax
sar     ebx, 0Ch
mov     eax, [edx+16h]
sar     eax, 10h
add     eax, ebx
mov     [edx+18h], ax
add     [edx+16h], si
cmp     byte ptr [edx+0A7h], 0
jge     loc_46F4CC
test    byte ptr [ecx], 8
jz      short loc_46FBA3
mov     byte ptr [edx+0ACh], 0Eh
jmp     short loc_46FBAA

loc_46FBA3:
mov     byte ptr [edx+0ACh], 0Bh

loc_46FBAA:
mov     byte ptr [edx+74h], 0

loc_46FBAE:
inc     byte ptr [edx+9]
jmp     loc_46F4CC
sub_46FAF8 endp




sub_46FBB6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
add     ebx, eax
sar     ebx, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, ebx
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
add     eax, 800h
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
add     ebx, eax
sar     ebx, 0Ch
mov     eax, [edx+16h]
sar     eax, 10h
add     eax, ebx
mov     [edx+18h], ax
cmp     byte ptr [edx+0A7h], 0
jge     loc_46F4CC
cmp     word ptr [edx+6Eh], 0
jnz     short loc_46FC46
call    sub_4DE13B
test    eax, eax
jz      short loc_46FC39
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_46FC39:
mov     byte ptr [edx+8], 7
mov     byte ptr [edx+9], 0
jmp     loc_46F4CC

loc_46FC46:
test    byte ptr [ecx], 8
jz      short loc_46FC54
mov     byte ptr [edx+0ACh], 0Fh
jmp     short loc_46FC5B

loc_46FC54:
mov     byte ptr [edx+0ACh], 0Ch

loc_46FC5B:
mov     word ptr [ecx+4], 0
jmp     loc_46FBAE
sub_46FBB6 endp




sub_46FC66 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
lea     ecx, [eax+408h]
xor     ebx, ebx
cmp     word ptr [ecx+4], 0Eh
jge     short loc_46FC80
mov     ebx, 0Ah

loc_46FC80:
cmp     word ptr [ecx+4], 0Bh
jge     short loc_46FC8C
mov     ebx, 15h

loc_46FC8C:
cmp     word ptr [ecx+4], 5
jge     short loc_46FC95
xor     ebx, ebx

loc_46FC95:
inc     word ptr [ecx+4]
mov     eax, [ecx+0Ch]
call    sub_4EF008
movsx   ebx, bx
mov     esi, eax
imul    esi, ebx
sar     esi, 0Ch
mov     eax, [edx+12h]
sar     eax, 10h
add     eax, esi
mov     [edx+14h], ax
mov     eax, [ecx+0Ch]
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Ch
mov     ecx, [edx+16h]
sar     ecx, 10h
add     ecx, eax
mov     [edx+18h], cx
cmp     byte ptr [edx+0A7h], 0
jge     short loc_46FCF6
mov     bl, [edx+3]
test    bl, bl
jz      short loc_46FCEF
mov     byte ptr [edx+8], 6
mov     byte ptr [edx+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46FCEF:
mov     byte ptr [edx+8], 2
mov     [edx+9], bl

loc_46FCF6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46FC66 endp




sub_46FCFB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46FD34
test    byte ptr [ebx+23h], 38h
jz      short loc_46FD1F
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_46FD1F:
test    byte ptr [ebx+33h], 38h
jz      short loc_46FD74
lea     edx, [ecx+14h]
mov     eax, 0A3h
call    sub_4D8BC3
jmp     short loc_46FD74

loc_46FD34:
mov     eax, ecx
call    sub_47015E
test    al, al
jz      short loc_46FD5D
jge     short loc_46FD74
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0ACh], 9
and     byte ptr [ebx], 0FDh
mov     word ptr [ebx+4], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_46FD5D:
mov     eax, ecx
call    sub_47006D
test    al, al
jge     short loc_46FD74
mov     byte ptr [ecx+8], 5
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_46FD74:
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_46FD7B[edx*4]
pop     edx
pop     ecx
pop     ebx
retn
sub_46FCFB endp




sub_46FD86 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46FDBA
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+50h]
lea     eax, [esi+14h]
mov     ecx, 100h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_46FDBA:
or      byte ptr [edi], 2
mov     byte ptr [esi+0ACh], 6
inc     byte ptr [esi+9]
jmp     loc_46F4CC
sub_46FD86 endp




sub_46FDCC proc near

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
cmp     byte ptr [eax+3], 0
jz      short loc_46FE04
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+50h]
lea     eax, [esi+14h]
mov     ecx, 100h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_46FE04:
cmp     byte ptr [esi+0A7h], 0
jge     loc_46F8D0
cmp     byte ptr [esi+3], 0
jz      loc_46FF57
xor     ebx, ebx
xor     ecx, ecx
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
test    eax, eax
jge     short loc_46FE69
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_1C], eax
mov     edx, eax
neg     edx
mov     [esp+20h+var_1C], edx
jmp     short loc_46FE89

loc_46FE69:
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_1C], eax

loc_46FE89:
mov     eax, [esp+20h+var_1C]
test    ax, ax
jz      short loc_46FEB2
mov     edx, [esi+12h]
sar     edx, 10h
mov     ecx, [edi+4Eh]
sar     ecx, 10h
sub     edx, ecx
test    edx, edx
jge     short loc_46FEA6
neg     edx

loc_46FEA6:
movsx   ecx, ax
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ecx, eax

loc_46FEB2:
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
test    eax, eax
jge     short loc_46FEFA
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_20], eax
mov     ebp, eax
neg     ebp
mov     [esp+20h+var_20], ebp
jmp     short loc_46FF19

loc_46FEFA:
mov     eax, [esi+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sar     eax, 0Ch
mov     [esp+20h+var_20], eax

loc_46FF19:
mov     eax, [esp+20h+var_20]
test    ax, ax
jz      short loc_46FF41
mov     edx, [esi+16h]
sar     edx, 10h
mov     ebx, [edi+52h]
sar     ebx, 10h
sub     edx, ebx
test    edx, edx
jge     short loc_46FF35
neg     edx

loc_46FF35:
movsx   ebx, ax
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     ebx, eax

loc_46FF41:
movsx   edx, cx
movsx   eax, bx
cmp     edx, eax
jge     short loc_46FF51
mov     [edi+4], bx
jmp     short loc_46FF68

loc_46FF51:
mov     [edi+4], cx
jmp     short loc_46FF68

loc_46FF57:
mov     ax, [edi+2]
xor     ah, ah
and     al, 1Fh
add     eax, 1Eh
mov     [edi+4], ax

loc_46FF68:
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+9]
jmp     loc_46F8D0
sub_46FDCC endp




sub_46FF77 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+408h]
cmp     byte ptr [eax+3], 0
jz      short loc_46FF91
cmp     word ptr [ebx+4], 0
jz      short loc_46FFE3

loc_46FF91:
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
lea     edx, [eax+eax]
sar     edx, 0Ch
mov     eax, [ecx+12h]
sar     eax, 10h
add     eax, edx
mov     [ecx+14h], ax
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
lea     edx, [eax+eax]
sar     edx, 0Ch
mov     eax, [ecx+16h]
sar     eax, 10h
add     eax, edx
mov     [ecx+18h], ax

loc_46FFE3:
mov     si, [ebx+4]
test    si, si
jz      short loc_46FFF3
mov     edi, esi
dec     edi
mov     [ebx+4], di

loc_46FFF3:
mov     dl, [ecx+0A4h]
cmp     dl, 5
jz      short loc_470003
cmp     dl, 14h
jnz     short loc_470010

loc_470003:
lea     edx, [ecx+14h]
mov     eax, 1B6h
call    sub_4D8BC3

loc_470010:
cmp     byte ptr [ecx+0A7h], 0
jge     loc_46F4CC
cmp     word ptr [ebx+4], 0
jnz     loc_46F4CC
mov     byte ptr [ecx+0ACh], 7
inc     byte ptr [ecx+9]
jmp     loc_46F4CC
sub_46FF77 endp




sub_470037 proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0A7h], 0
jge     short loc_470052
and     byte ptr [edx], 0FDh
mov     byte ptr [eax+8], 2
mov     byte ptr [eax+9], 0

loc_470052:
pop     edx
retn
sub_470037 endp




sub_470054 proc near
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+190h]
call    sub_4AF9F8
mov     eax, ecx
call    sub_4DE2F6
pop     edx
pop     ecx
retn
sub_470054 endp




sub_47006D proc near

var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
lea     esi, [eax+408h]
xor     bl, bl
mov     eax, [esi+20h]
and     eax, 0FFFFFFh
xor     edx, edx
mov     dl, [edi+2]
mov     ebp, ds:dword_55A10C
mov     ebp, [ebp+edx*4+0]
xor     edx, edx
mov     dl, [ebp+9]
mov     [esp+1Ch+var_1C], dx
test    eax, eax
jz      loc_470157
test    byte ptr [esi+23h], 38h
jz      loc_470157
add     [esi+12h], ax
mov     dx, [edi+6Eh]
mov     [edi+0B2h], dx
mov     ebx, edx
sub     ebx, eax
mov     [edi+6Eh], bx
test    bx, bx
jge     short loc_4700D4
mov     word ptr [edi+6Eh], 0

loc_4700D4:
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+28h]
lea     ebp, [edi+14h]
xor     ecx, ecx
mov     eax, ebp
call    sub_4DE726
mov     [esi+0Ch], eax
mov     word ptr [edi+15Eh], 7FFFh
xor     eax, eax
mov     ax, [esi+12h]
mov     edx, [esp-2]
sar     edx, 10h
cmp     edx, eax
jl      short loc_47010D
cmp     word ptr [edi+6Eh], 0
jnz     short loc_470134

loc_47010D:
mov     bl, 0FFh
mov     word ptr [esi+12h], 0
lea     edx, [edi+14h]
mov     eax, 0A2h
call    sub_4D8BC3
test    word ptr [esi+0Eh], 0FFFFh
jz      short loc_47012F
or      byte ptr [esi], 10h
jmp     short loc_470142

loc_47012F:
or      byte ptr [esi], 8
jmp     short loc_470142

loc_470134:
mov     bl, 1
mov     edx, ebp
mov     eax, 0A0h
call    sub_4D8BC3

loc_470142:
test    word ptr [esi+0Eh], 0FFFFh
jz      short loc_470151
add     dword ptr [esi+0Ch], 800h

loc_470151:
mov     word ptr [esi+0Eh], 0

loc_470157:
mov     al, bl
jmp     loc_46F4C8
sub_47006D endp




sub_47015E proc near

var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     edi, eax
lea     esi, [eax+408h]
xor     bl, bl
mov     eax, [esi+30h]
and     eax, 0FFFFFFh
xor     ecx, ecx
mov     cl, [edi+2]
mov     edx, ds:dword_55A10C
mov     edx, [edx+ecx*4]
mov     dl, [edx+0Ah]
xor     dh, dh
mov     [esp+18h+var_18], dx
test    eax, eax
jz      loc_470252
test    byte ptr [esi+33h], 38h
jz      loc_470252
add     [esi+16h], ax
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     edx, [esi+38h]
lea     eax, [edi+14h]
xor     ecx, ecx
call    sub_4DE726
mov     [esi+0Ch], eax
test    word ptr [esi+0Eh], 0FFFFh
jz      short loc_4701CC
lea     edx, [eax+800h]
mov     [esi+0Ch], edx

loc_4701CC:
mov     word ptr [esi+0Eh], 0
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, [esp-2]
sar     eax, 10h
cmp     eax, edx
jl      short loc_4701E9
test    byte ptr [esi+33h], 20h
jz      short loc_4701F3

loc_4701E9:
mov     bl, 0FFh
mov     word ptr [esi+16h], 0
jmp     short loc_470245

loc_4701F3:
mov     bl, 1
mov     eax, [esi+0Ch]
add     eax, 800h
call    sub_4EF008
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
sar     edx, 0Ch
mov     eax, [edi+12h]
sar     eax, 10h
add     eax, edx
mov     [edi+14h], ax
mov     eax, [esi+0Ch]
add     eax, 800h
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
sar     edx, 0Ch
mov     eax, [edi+16h]
sar     eax, 10h
add     eax, edx
mov     [edi+18h], ax

loc_470245:
lea     edx, [edi+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_470252:
mov     al, bl
add     esp, 4
jmp     loc_46F4CC
sub_47015E endp




sub_47025C proc near
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
cmp     byte ptr [eax+8], 0
jnz     short loc_4702C7
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

loc_4702C7:
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_4702E8
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4702EF

loc_4702E8:
mov     eax, ecx
call    sub_4DEADD

loc_4702EF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47025C endp




sub_4702F5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+3A8h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [ebx+46h], ax
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
lea     edx, [ecx+14h]
add     eax, 14h
call    sub_4DDDB4
add     ah, 8
and     ah, 0Fh
mov     [ecx+56h], ax
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_47034D[edx*4]
mov     dword ptr [ebx+18h], 0
mov     dword ptr [ebx+20h], 0
mov     dword ptr [ebx+28h], 0
mov     dword ptr [ebx+30h], 0
jmp     loc_470479
sub_4702F5 endp




sub_470375 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 10001000h
mov     dword ptr [ebp+15Ch], 1000h
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+0ADh], 0
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     edx, eax
xor     eax, eax
mov     al, [ebp+3]
lea     esi, [eax+1]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
lea     esi, [edx+eax]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+1F8h]
rep movsd
xor     eax, eax
mov     al, [ebp+3]
lea     esi, [eax+1]
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
add     edx, 1F8h
add     edx, eax
mov     eax, ebp
call    sub_4DF87F
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 6
mov     [ebp+6Eh], ax
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
mov     [ebp+73h], al
or      byte ptr [ebp+0Eh], 2

loc_470478:
pop     ebp

loc_470479:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_470375 endp




sub_47047F proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 3A8h
mov     [esp+24h+var_1C], eax
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     ebx, eax
mov     eax, [ebp+0Ah]
sar     eax, 18h
call    sub_4E1877
mov     [esp+24h+var_20], eax
cmp     byte ptr [ebp+9], 2
jz      loc_4706B4
mov     eax, [esp+24h+var_1C]
mov     dx, [eax+42h]
test    dx, dx
jz      short loc_4704CD
mov     ecx, edx
dec     ecx
mov     [eax+42h], cx

loc_4704CD:
lea     eax, [ebp+14h]
mov     dl, [ebp+0Eh]
test    dl, 2
jnz     loc_470631
mov     edx, [esp+24h+var_1C]
mov     dx, [edx+20h]
test    dx, dx
jz      loc_4705E8
mov     ax, [ebp+6Eh]
mov     [ebp+0B2h], ax
mov     esi, eax
sub     esi, edx
mov     [ebp+6Eh], si
mov     ax, [ebx+6Eh]
mov     [ebx+0B2h], ax
mov     edi, eax
sub     edi, edx
mov     [ebx+6Eh], di
cmp     byte ptr [ebp+3], 0
jnz     short loc_47051F
mov     byte ptr [ebx+0Fh], 1
jmp     short loc_470523

loc_47051F:
mov     byte ptr [ebx+0Fh], 2

loc_470523:
cmp     word ptr [ebp+6Eh], 0
jge     short loc_47058C
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     ebx, eax
mov     byte ptr [ebp+9], 2
mov     edx, [esp+24h+var_1C]
mov     byte ptr [edx+48h], 3Ch ; '<'
xor     edx, edx
mov     dl, [ebp+3]
inc     edx
mov     esi, edx
shl     esi, 2
sub     esi, edx
shl     esi, 4
add     esi, [esp+24h+var_20]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+1F8h]
rep movsd
cmp     byte ptr [ebp+3], 0
jnz     short loc_47057E
mov     byte ptr [eax+0Dh], 0FFh
mov     eax, [esp+24h+var_20]
mov     byte ptr [eax+0Dh], 0FFh
jmp     short loc_4705DA

loc_47057E:
mov     byte ptr [eax+0Eh], 0FFh
mov     eax, [esp+24h+var_20]
mov     byte ptr [eax+0Eh], 0FFh
jmp     short loc_4705DA

loc_47058C:
mov     eax, [esp+24h+var_1C]
add     [eax+42h], dx
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
xor     esi, esi
mov     edx, [esp+24h+var_1C]
mov     si, [edx+42h]
lea     edx, [ebp+14h]
cmp     esi, eax
jl      short loc_4705D0
mov     eax, [esp+24h+var_1C]
mov     word ptr [eax+42h], 0
or      byte ptr [ebx+0Ch], 40h
mov     eax, 0A2h
jmp     short loc_4705D5

loc_4705D0:
mov     eax, 0A0h

loc_4705D5:
call    sub_4D8BC3

loc_4705DA:
mov     word ptr [ebp+15Eh], 7FFFh
jmp     loc_4706B4

loc_4705E8:
mov     edx, [esp+24h+var_1C]
test    dword ptr [edx+18h], 0FFFFFFh
jz      short loc_470601
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_470601:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+28h], 0FFFFFFh
jz      short loc_47061B
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_47061B:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+30h], 0FFFFFFh
jz      loc_4706B4
jmp     loc_4706A7

loc_470631:
cmp     byte ptr [ebx+0Fh], 0
jz      short loc_470648
mov     word ptr [ebp+15Eh], 7FFFh
dec     byte ptr [ebx+0Fh]
jmp     loc_4706B4

loc_470648:
test    dl, 2
jz      short loc_470666
mov     edx, [esp+24h+var_1C]
test    dword ptr [edx+20h], 0FFFFFFh
jz      short loc_470666
mov     edx, eax
mov     eax, 0A3h
call    sub_4D8BC3

loc_470666:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+18h], 0FFFFFFh
jz      short loc_470680
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_470680:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+28h], 0FFFFFFh
jz      short loc_47069A
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_47069A:
mov     eax, [esp+24h+var_1C]
test    dword ptr [eax+30h], 0FFFFFFh
jz      short loc_4706B4

loc_4706A7:
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_4706B4:
cmp     byte ptr [ebp+9], 2
jz      short loc_4706CA
test    byte ptr [ebp+0Eh], 40h
jnz     short loc_4706C6
mov     byte ptr [ebp+9], 0
jmp     short loc_4706CA

loc_4706C6:
mov     byte ptr [ebp+9], 1

loc_4706CA:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4706D1[edx*4]
cmp     byte ptr [ebp+9], 2
jz      loc_4709FF
mov     eax, ebp
call    sub_4DEB53
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 4
add     esi, [esp+24h+var_20]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+1F8h]
rep movsd
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 4
mov     eax, [esp+24h+var_20]
add     eax, 1F8h
mov     [esp+24h+var_24], eax
lea     edx, [eax+esi]
mov     eax, ebp
call    sub_4DF87F
mov     eax, [ebx+9]
sar     eax, 18h
test    al, 80h
jz      short loc_47078B
mov     eax, ebp
call    sub_4DEB53
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     ebx, eax
shl     ebx, 2
sub     ebx, eax
shl     ebx, 4
mov     esi, [esp+24h+var_20]
mov     ecx, 0Ch
lea     edi, [ebp+160h]
lea     esi, [esi+ebx+1F8h]
rep movsd
xor     eax, eax
mov     al, [ebp+3]
inc     eax
mov     ebx, eax
shl     ebx, 2
sub     ebx, eax
shl     ebx, 4
mov     edx, [esp+24h+var_24]
add     edx, ebx
mov     eax, ebp
call    sub_4DF87F

loc_47078B:
mov     ax, [ebp+190h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+192h]
add     eax, 28h ; '('
mov     [edx+12h], ax
mov     ax, [ebp+194h]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    0
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     esi, [edx+10h]
mov     ecx, 0FFFFFCE0h
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 18h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 0C8h
mov     eax, esi
call    sub_4E01FC
mov     ax, [ebp+1C8h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+1CAh]
add     eax, 78h ; 'x'
mov     [edx+12h], ax
mov     ax, [ebp+1CCh]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    820h
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF100h
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 28h ; '('
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     ax, [ebp+1C8h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+1CAh]
add     eax, 78h ; 'x'
mov     [edx+12h], ax
mov     ax, [ebp+1CCh]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    0FFFFF7E0h
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF100h
mov     eax, esi
call    sub_4DD4C5
push    80h
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 30h ; '0'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
mov     ax, [ebp+1C8h]
mov     edx, [esp+24h+var_1C]
mov     [edx+10h], ax
mov     ax, [ebp+1CAh]
add     eax, 78h ; 'x'
mov     [edx+12h], ax
mov     ax, [ebp+1CCh]
mov     [edx+14h], ax
mov     eax, [edx+0Eh]
sar     eax, 10h
shl     eax, 10h
mov     [edx], eax
mov     eax, [edx+10h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+4], eax
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+8], eax
push    0
push    0
mov     ax, [ebp+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0FFFFF100h
mov     eax, esi
call    sub_4DD4C5
push    0
push    0
mov     eax, [ebp+70h]
sar     eax, 18h
or      eax, 4080000h
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 20h ; ' '
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 46h ; 'F'
mov     eax, esi
call    sub_4E01FC
jmp     short loc_470A13

loc_4709FF:
mov     eax, ebp
call    sub_4DEB53
lea     edx, [ebp+160h]
mov     eax, ebp
call    sub_4DF87F

loc_470A13:
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
mov     word ptr [edi], 78h ; 'x'
jmp     short loc_4730FA

loc_4730F4:
mov     ebx, edx
dec     ebx
mov     [edi], bx

loc_4730FA:
cmp     byte ptr [esi+0Ah], 0
jz      short loc_473164
cmp     byte ptr [esi+0ACh], 1
jz      short loc_47312D
mov     byte ptr [esi+0ACh], 1
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     al, [esi+0ACh]
mov     [esi+0ADh], al

loc_47312D:
mov     bl, [esi+0Ah]
cmp     bl, 1
jnz     short loc_473140
mov     ax, [esi+56h]
add     eax, 20h ; ' '
jmp     short loc_47314C

loc_473140:
cmp     bl, 2
jnz     short loc_473153
mov     ax, [esi+56h]
sub     eax, 20h ; ' '

loc_47314C:
and     ah, 0Fh
mov     [esi+56h], ax

loc_473153:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_473164:
mov     cl, [ebp+6Ch]
test    cl, 10h
jz      short loc_473181
mov     ch, cl
or      ch, 20h
mov     [ebp+6Ch], ch
mov     byte ptr [esi+9], 2
mov     byte ptr [esi+0Bh], 0
mov     word ptr [edi], 0

loc_473181:
pop     ebp
jmp     loc_473565
sub_473085 endp




sub_473187 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+1E8h]
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, [edx+62h]
sar     edx, 10h
cmp     ebx, edx
jnz     short loc_4731B3
mov     byte ptr [eax+9], 0
mov     word ptr [ecx], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4731B3:
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4731C2
mov     dx, [eax+56h]
sub     edx, 20h ; ' '
jmp     short loc_4731C9

loc_4731C2:
mov     dx, [eax+56h]
add     edx, 20h ; ' '

loc_4731C9:
and     dh, 0Fh
mov     [eax+56h], dx
pop     edx
pop     ecx
pop     ebx
retn
sub_473187 endp




sub_4731D4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
add     eax, 408h
lea     edi, [esi+1E8h]
test    byte ptr [eax+6Ch], 10h
jnz     short loc_4731F7
mov     dh, [esi+0Bh]
test    dh, dh
jz      loc_47355A

loc_4731F7:
mov     bl, [esi+0Bh]
test    bl, bl
jz      short loc_473203
cmp     bl, 1
jnz     short loc_47322A

loc_473203:
mov     ax, [esi+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax

loc_47322A:
cmp     byte ptr [esi+0Bh], 0
jnz     short loc_473241
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_473241:
mov     bx, [edi]
test    bx, bx
jnz     loc_473552
mov     al, [esi+3]
and     al, 0Fh
xor     edx, edx
mov     dl, al
mov     eax, esi
call    ds:off_517360[edx*4]
mov     ch, [esi+0Bh]
cmp     ch, 1
jnz     loc_4732D6
test    [esi+0A6h], ch
jz      short loc_473278
mov     [esi+0Eh], ch
jmp     short loc_47327D

loc_473278:
cmp     ch, [esi+0Eh]
jnz     short loc_4732B3

loc_47327D:
cmp     byte ptr [esi+0A6h], 4
jz      short loc_4732AD
mov     dh, [edi+4]
test    dh, dh
jnz     short loc_4732A4
xor     edx, edx
mov     eax, esi
call    sub_473896
mov     al, [esi+3]
and     al, 0Fh
mov     ah, 4
sub     ah, al
mov     [edi+4], ah
jmp     short loc_4732D6

loc_4732A4:
mov     bl, dh
dec     bl
mov     [edi+4], bl
jmp     short loc_4732D6

loc_4732AD:
mov     byte ptr [esi+0Eh], 2
jmp     short loc_4732D6

loc_4732B3:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4732D6
mov     [esi+0ACh], ch
mov     [esi+0ADh], ch
xor     edx, edx
mov     dl, ch
jmp     loc_4733AD

loc_4732D6:
cmp     byte ptr [esi+0Bh], 2
jnz     loc_4733C4
mov     cl, [esi+0Eh]
test    cl, cl
jnz     short loc_473330
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_4733C4
test    cl, cl
jnz     loc_4733C4
mov     byte ptr [esi+0ACh], 4
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Eh], 1
mov     word ptr [edi+2], 18h
jmp     loc_4733C4

loc_473330:
cmp     cl, 1
jnz     short loc_473388
cmp     word ptr [edi+2], 0
jz      short loc_473362
mov     al, [edi+4]
test    al, al
jnz     short loc_473355
mov     edx, 1
mov     eax, esi
call    sub_473896
mov     byte ptr [edi+4], 3
jmp     short loc_47335C

loc_473355:
mov     ah, al
sub     ah, cl
mov     [edi+4], ah

loc_47335C:
dec     word ptr [edi+2]
jmp     short loc_4733C4

loc_473362:
mov     byte ptr [esi+0ACh], 5
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Eh], 2
jmp     short loc_4733C4

loc_473388:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4733C4

loc_473396:
mov     byte ptr [esi+0ACh], 1
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al

loc_4733AD:
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     word ptr [edi], 2Dh ; '-'
mov     byte ptr [esi+0Bh], 0
jmp     loc_473565

loc_4733C4:
cmp     byte ptr [esi+0Bh], 3
jnz     loc_473565
lea     edx, [esi+14h]
mov     bl, [esi+0A6h]
test    bl, 8
jz      short loc_4733E3
mov     eax, 1BFh
jmp     short loc_4733F9

loc_4733E3:
test    bl, 10h
jz      short loc_4733EF
mov     eax, 1C0h
jmp     short loc_4733F9

loc_4733EF:
test    bl, 20h
jz      short loc_4733FE
mov     eax, 1C1h

loc_4733F9:
call    sub_4D8BC3

loc_4733FE:
mov     ch, [esi+0Eh]
test    ch, ch
jnz     short loc_47345F
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     loc_473565
test    ch, ch
jnz     loc_473565
mov     byte ptr [esi+0ACh], 7
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Eh], 1
mov     al, [esi+3]
and     al, 0Fh
xor     ah, ah
add     eax, 4
shl     eax, 2
inc     eax
mov     [edi+2], ax
mov     [edi+6], ch
jmp     loc_473565

loc_47345F:
cmp     ch, 1
jnz     loc_47353F
mov     bx, [edi+2]
test    bx, bx
jz      loc_473519
cmp     bx, 1
jz      loc_4734FF
mov     dh, [edi+4]
test    dh, dh
jnz     short loc_4734F6
lea     edx, [esi+14h]
mov     eax, 1C2h
call    sub_4D8BC3
mov     edx, 2
mov     eax, esi
call    sub_473896
dec     word ptr [edi+2]
add     [edi+6], ch
mov     edx, 2
mov     eax, esi
call    sub_473896
dec     word ptr [edi+2]
add     [edi+6], ch
mov     edx, 2
mov     eax, esi
call    sub_473896
dec     word ptr [edi+2]
inc     byte ptr [edi+6]
mov     edx, 2
mov     eax, esi
call    sub_473896
dec     word ptr [edi+2]
inc     byte ptr [edi+6]
mov     byte ptr [edi+4], 1Eh
cmp     byte ptr [edi+6], 10h
jb      loc_473565
mov     byte ptr [edi+6], 0
jmp     loc_473565

loc_4734F6:
mov     bl, dh
sub     bl, ch
mov     [edi+4], bl
jmp     short loc_473565

loc_4734FF:
mov     ah, [edi+4]
test    ah, ah
jnz     short loc_473510
mov     esi, ebx
sub     esi, ebx
mov     [edi+2], si
jmp     short loc_473565

loc_473510:
mov     dl, ah
sub     dl, ch
mov     [edi+4], dl
jmp     short loc_473565

loc_473519:
mov     byte ptr [esi+0ACh], 8
mov     al, [esi+0ACh]
mov     [esi+0ADh], al
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Eh], 2
jmp     short loc_473565

loc_47353F:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_473565
jmp     loc_473396

loc_473552:
mov     ecx, ebx
dec     ecx
mov     [edi], cx
jmp     short loc_473565

loc_47355A:
mov     [esi+9], dh
mov     [esi+0Ah], dh

loc_473560:
mov     word ptr [edi], 0

loc_473565:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4731D4 endp




sub_47356B proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+1E8h]
mov     bl, [eax+0Bh]
test    bl, bl
jnz     short loc_4735DC
mov     [ecx+4], bl
mov     [eax+0Eh], bl
test    byte ptr [edx+6Ah], 7
jnz     short loc_47359A
mov     byte ptr [eax+0Bh], 1
mov     byte ptr [eax+0ACh], 2
jmp     short loc_4735C1

loc_47359A:
mov     dx, [edx+6Ah]
xor     dh, dh
and     dl, 7
cmp     dx, 4
ja      short loc_4735B6
mov     byte ptr [eax+0Bh], 2
mov     byte ptr [eax+0ACh], 3
jmp     short loc_4735C1

loc_4735B6:
mov     byte ptr [eax+0Bh], 3
mov     byte ptr [eax+0ACh], 6

loc_4735C1:
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4735DC:
pop     edx
pop     ecx
pop     ebx
retn
sub_47356B endp




sub_4735E0 proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+1E8h]
mov     bl, [eax+0Bh]
test    bl, bl
jnz     short loc_47365A
mov     [ecx+4], bl
mov     [eax+0Eh], bl
mov     cx, [edx+6Ah]
xor     ch, ch
and     cl, 0Fh
cmp     cx, 4
ja      short loc_473618
mov     byte ptr [eax+0Bh], 1
mov     byte ptr [eax+0ACh], 2
jmp     short loc_47363F

loc_473618:
mov     dx, [edx+6Ah]
xor     dh, dh
and     dl, 7
cmp     dx, 9
ja      short loc_473634
mov     byte ptr [eax+0Bh], 2
mov     byte ptr [eax+0ACh], 3
jmp     short loc_47363F

loc_473634:
mov     byte ptr [eax+0Bh], 3
mov     byte ptr [eax+0ACh], 6

loc_47363F:
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_47365A:
pop     edx
pop     ecx
pop     ebx
retn
sub_4735E0 endp




sub_47365E proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
lea     ecx, [eax+1E8h]
mov     bl, [eax+0Bh]
test    bl, bl
jnz     short loc_4736CF
mov     [ecx+4], bl
mov     [eax+0Eh], bl
mov     dx, [edx+6Ah]
xor     dh, dh
and     dl, 7
cmp     dx, 3
ja      short loc_473696
mov     byte ptr [eax+0Bh], 1
mov     byte ptr [eax+0ACh], 2
jmp     short loc_4736B4

loc_473696:
cmp     dx, 5
ja      short loc_4736A9
mov     byte ptr [eax+0Bh], 2
mov     byte ptr [eax+0ACh], 3
jmp     short loc_4736B4

loc_4736A9:
mov     byte ptr [eax+0Bh], 3
mov     byte ptr [eax+0ACh], 6

loc_4736B4:
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
xor     edx, edx
mov     dl, [eax+0ACh]
xor     ebx, ebx
call    sub_4DE96B

loc_4736CF:
pop     edx
pop     ecx
pop     ebx
retn
sub_47365E endp




sub_4736D3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
lea     ebp, [eax+1E8h]
mov     ax, [eax+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     eax, [esi+14h]
mov     ecx, 20h ; ' '
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     bx, [esi+56h]
add     ebx, eax
and     bh, 0Fh
mov     [esi+56h], bx
test    byte ptr [edi+6Ch], 10h
jz      short loc_47372D
mov     byte ptr [esi+9], 2
or      byte ptr [edi+6Ch], 20h
mov     byte ptr [esi+0Bh], 0
mov     word ptr [ebp+0], 0
jmp     loc_473181

loc_47372D:
test    ax, ax
jnz     loc_473181
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     [ebp+0], ax
jmp     loc_473181
sub_4736D3 endp




sub_473747 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+1E8h]
mov     edx, [eax+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jz      short loc_473772
cmp     byte ptr [eax+0Ah], 1
jnz     loc_473565

loc_473772:
and     byte ptr [esi+6Ch], 0FBh
mov     byte ptr [ecx+0Ah], 1
cmp     byte ptr [ecx+0ADh], 1
jz      short loc_4737A7
mov     byte ptr [ecx+0ACh], 1
mov     dl, [ecx+0ACh]
mov     [ecx+0ADh], dl
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_4737A7:
mov     byte ptr [ecx+9], 2
or      byte ptr [esi+6Ch], 20h
mov     byte ptr [ecx+0Bh], 0
jmp     loc_473560
sub_473747 endp




sub_4737B8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
lea     ecx, [eax+1E8h]
mov     dx, [ecx]
test    dx, dx
jnz     loc_47388B
cmp     byte ptr [ecx+5], 8
jnz     short loc_473822
call    sub_4DE13B
test    eax, eax
jz      short loc_47380F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
mov     byte ptr [eax+0Dh], 3
mov     dx, [ebx+190h]
mov     [eax+48h], dx
mov     dx, [ebx+192h]
mov     [eax+4Ah], dx
mov     dx, [ebx+194h]
mov     [eax+4Ch], dx

loc_47380F:
lea     edx, [ebx+190h]
mov     eax, ebx
call    sub_4AF9F8
mov     byte ptr [ebx+8], 2
jmp     short loc_47387E

loc_473822:
xor     eax, eax
mov     al, [ecx+5]
mov     dh, ds:byte_51736C[eax*2]
call    sub_4DE13B
test    eax, eax
jz      short loc_47387E
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
movzx   esi, byte ptr [ecx+5]
mov     dl, ds:byte_51736D[esi*2]
mov     [eax+0Dh], dl
mov     dl, dh
and     edx, 0FFh
shl     edx, 3
add     ebx, edx
mov     dx, [ebx+190h]
mov     [eax+48h], dx
mov     dx, [ebx+192h]
mov     [eax+4Ah], dx
mov     dx, [ebx+194h]
mov     [eax+4Ch], dx

loc_47387E:
inc     byte ptr [ecx+5]
mov     word ptr [ecx], 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47388B:
mov     ebx, edx
dec     ebx
mov     [ecx], bx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4737B8 endp




sub_473896 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebx, eax
mov     [esp+2Ch+var_18], dl
lea     ebp, [eax+408h]
add     eax, 1E8h
mov     [esp+2Ch+var_28], eax
mov     edi, offset byte_5F8364
xor     edx, edx
mov     [esp+2Ch+var_1C], dx
mov     eax, [ebx+80h]
call    sub_4EF075
mov     [esp+2Ch+var_2C], eax
call    sub_4DE043
mov     ecx, eax
mov     esi, eax
test    eax, eax
jz      loc_473BAA
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
test    [esp+2Ch+var_18], 2
jnz     short loc_473903
lea     edx, [ebx+14h]
mov     eax, 1BEh
call    sub_4D8BC3
mov     byte ptr [ecx+0Fh], 10h
jmp     short loc_473907

loc_473903:
mov     byte ptr [ecx+0Fh], 9

loc_473907:
mov     dl, [esp+2Ch+var_18]
test    dl, dl
jnz     loc_473980
mov     al, [ebx+3]
and     al, 0Fh
cmp     al, 1
jb      short loc_473924
jbe     short loc_473935
cmp     al, 2
jz      short loc_473942
jmp     short loc_473954

loc_473924:
test    al, al
jnz     short loc_473954
mov     ax, [ebp+6Ah]
xor     ah, ah
and     al, 3Fh
sub     eax, 20h ; ' '
jmp     short loc_47394F

loc_473935:
mov     ax, [ebp+6Ah]
xor     ah, ah
and     al, 7Fh
sub     eax, 40h ; '@'
jmp     short loc_47394F

loc_473942:
mov     ax, [ebp+6Ah]
and     ah, 3
sub     eax, 200h

loc_47394F:
mov     [esp+2Ch+var_1C], ax

loc_473954:
mov     eax, [ebx+54h]
sar     eax, 10h
mov     edx, [esp+0Eh]
sar     edx, 10h
add     eax, 800h
add     eax, edx
call    sub_4EF003
mov     [esp+2Ch+var_20], eax
mov     eax, [ebx+54h]
sar     eax, 10h
add     eax, 800h
add     eax, edx
jmp     short loc_4739EB

loc_473980:
cmp     dl, 1
jnz     short loc_4739A6
mov     eax, [ebx+54h]
sar     eax, 10h
add     eax, 800h
call    sub_4EF003
mov     [esp+2Ch+var_20], eax
mov     eax, [ebx+54h]
sar     eax, 10h
add     eax, 800h
jmp     short loc_4739EB

loc_4739A6:
xor     eax, eax
mov     edx, [esp+2Ch+var_28]
mov     al, [edx+6]
mov     ax, ds:word_51737C[eax*2]
and     eax, 0FFFFh
mov     edx, [ebx+54h]
sar     edx, 10h
add     eax, edx
call    sub_4EF003
mov     [esp+2Ch+var_20], eax
xor     eax, eax
mov     edx, [esp+2Ch+var_28]
mov     al, [edx+6]
mov     ax, ds:word_51737C[eax*2]
and     eax, 0FFFFh
mov     edx, [ebx+54h]
sar     edx, 10h
add     eax, edx

loc_4739EB:
call    sub_4EF008
mov     [esp+2Ch+var_24], eax
lea     eax, [esi+14h]
lea     edx, [esi+1Ch]
cmp     byte ptr [esi+0Fh], 10h
jnz     loc_473ADD
mov     cx, [ebx+190h]
mov     [esi+14h], cx
mov     cx, [ebx+192h]
mov     [esi+16h], cx
mov     cx, [ebx+194h]
mov     [esi+18h], cx
mov     ecx, [esi+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+1Ch], ecx
mov     ecx, [esi+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+20h], ecx
mov     ecx, [esi+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+24h], ecx
push    0
push    0
mov     bx, [ebx+56h]
and     bh, 0Fh
movsx   ebx, bx
mov     ecx, 550h
call    sub_4DD4C5
mov     edx, [esp+2Ch+var_24]
imul    edx, [esp+2Ch+var_2C]
sar     edx, 0Ch
mov     eax, [esi+12h]
sar     eax, 10h
add     eax, edx
mov     [edi+0C4h], ax
cmp     [esp+2Ch+var_18], 0
jnz     short loc_473A99
mov     dx, [ebp+6Ah]
xor     dh, dh
and     dl, 3Fh
sub     edx, 20h ; ' '
mov     ax, [edi+4AAh]
add     eax, edx
jmp     short loc_473AA5

loc_473A99:
mov     ax, [edi+4EAh]
add     eax, 30h ; '0'

loc_473AA5:
mov     [edi+0C6h], ax
mov     eax, [esp+2Ch+var_20]
imul    eax, [esp+2Ch+var_2C]
sar     eax, 0Ch
mov     edx, [esi+16h]
sar     edx, 10h
add     eax, edx
mov     [edi+0C8h], ax
lea     edx, [edi+0C4h]
mov     ebx, 30h ; '0'
mov     eax, esi
call    sub_4DDC7D
jmp     loc_473BAA

loc_473ADD:
mov     cx, [ebx+198h]
mov     [esi+14h], cx
mov     cx, [ebx+19Ah]
mov     [esi+16h], cx
mov     cx, [ebx+19Ch]
mov     [esi+18h], cx
mov     ecx, [esi+12h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+1Ch], ecx
mov     ecx, [esi+14h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+20h], ecx
mov     ecx, [esi+16h]
sar     ecx, 10h
shl     ecx, 10h
mov     [esi+24h], ecx
push    0
push    0
mov     bx, [ebx+56h]
and     bh, 0Fh
movsx   ebx, bx
mov     ecx, 550h
call    sub_4DD4C5
mov     ax, [ebp+6Ah]
and     ah, 3
and     eax, 0FFFFh
add     eax, 80h
imul    eax, [esp+2Ch+var_24]
sar     eax, 0Ch
mov     edx, [esi+12h]
sar     edx, 10h
add     eax, edx
mov     [edi+0C4h], ax
mov     ax, [esi+16h]
mov     [edi+0C6h], ax
mov     ax, [ebp+6Ah]
and     ah, 3
and     eax, 0FFFFh
add     eax, 80h
imul    eax, [esp+2Ch+var_20]
sar     eax, 0Ch
mov     edx, [esi+16h]
sar     edx, 10h
add     eax, edx
mov     [edi+0C8h], ax
push    0FFh
xor     ecx, ecx
mov     ebx, 14h
mov     edx, edi
mov     eax, esi
call    sub_4DDA0E

loc_473BAA:
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_473896 endp




sub_473BB3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
call    ds:funcs_473BF2[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_474067
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_473C26
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_473C2D

loc_473C26:
mov     eax, ebp
call    sub_4DEADD

loc_473C2D:
cmp     byte ptr [ecx+12h], 0
jz      short loc_473C4C
test    byte ptr [ebp+0], 2
jz      short loc_473C4C
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 26h ; '&'
mov     eax, ebp
call    sub_4ED88B

loc_473C4C:
pop     ebp

loc_473C4D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_473BB3 endp




sub_473C53 proc near
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
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     word ptr [ebx], 0
mov     byte ptr [ebx+12h], 1
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_474035
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_47404E
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0

def_473D09:             ; jumptable 00473D09 default case
pop     esi
pop     ecx
retn
sub_473C53 endp

db 8Dh, 40h, 0
jpt_473D09 dd offset loc_473D10 ; jump table for switch statement
dd offset loc_473D2E
dd offset loc_473DD3
dd offset loc_473E5A
dd offset loc_473F2C
dd offset loc_473F96
dd offset loc_473FD5



sub_473CF3 proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     bl, [ecx+9]
cmp     bl, 6           ; switch 7 cases
ja      short def_473D09 ; jumptable 00473D09 default case
and     ebx, 0FFh
jmp     jpt_473D09[ebx*4] ; switch jump

loc_473D10:             ; jumptable 00473D09 case 0
cmp     byte ptr [edx+9], 2
jnz     short def_473D09 ; jumptable 00473D09 default case
cmp     dword ptr [eax+10h], 14h
jnz     short def_473D09 ; jumptable 00473D09 default case
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [esi+2], 0
jmp     loc_473F90

loc_473D2E:             ; jumptable 00473D09 case 1
mov     bl, [edx+9]
cmp     bl, 2
jnz     loc_473DB6
mov     eax, [edx+10h]
cmp     eax, 0F0h
jb      short loc_473D70
jbe     short loc_473D92
cmp     eax, 127h
jb      short loc_473D66
jbe     short loc_473DA0
cmp     eax, 140h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473D92
cmp     eax, 181h

loc_473D61:
jz      short loc_473DA0
pop     esi
pop     ecx
retn

loc_473D66:
cmp     eax, 10Eh
jz      short loc_473DA7
pop     esi
pop     ecx
retn

loc_473D70:
cmp     eax, 6Eh ; 'n'
jb      short loc_473D89
jbe     short loc_473DA0
cmp     eax, 7Ah ; 'z'
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473D92
cmp     eax, 0C8h
jmp     short loc_473D61

loc_473D89:
cmp     eax, 22h ; '"'
jnz     def_473D09      ; jumptable 00473D09 default case

loc_473D92:
mov     ebx, 6

loc_473D97:
mov     eax, ecx
mov     edx, esi
jmp     loc_473F7A

loc_473DA0:
mov     ebx, 1
jmp     short loc_473D97

loc_473DA7:
mov     [ecx+0ACh], bl
mov     word ptr [esi+2], 0
pop     esi
pop     ecx
retn

loc_473DB6:
cmp     bl, 7
jnz     def_473D09      ; jumptable 00473D09 default case
cmp     dword ptr [edx+10h], 1
jnz     def_473D09      ; jumptable 00473D09 default case
mov     ebx, 7
jmp     loc_473E51

loc_473DD3:             ; jumptable 00473D09 case 2
mov     bh, [edx+9]
cmp     bh, 7
jnz     short loc_473E2C
mov     eax, [edx+10h]
cmp     eax, 0D5h
jb      short loc_473E01
jbe     short loc_473E22
cmp     eax, 125h
jb      short loc_473DFA
jbe     short loc_473E22
cmp     eax, 193h

loc_473DF5:
jz      short loc_473E18
pop     esi
pop     ecx
retn

loc_473DFA:
cmp     eax, 111h
jmp     short loc_473DF5

loc_473E01:
cmp     eax, 67h ; 'g'
jb      short loc_473E0F
jbe     short loc_473E22
cmp     eax, 0C3h
jmp     short loc_473DF5

loc_473E0F:
cmp     eax, 4Ah ; 'J'
jnz     def_473D09      ; jumptable 00473D09 default case

loc_473E18:
mov     ebx, 5
jmp     loc_473D97

loc_473E22:
mov     ebx, 7
jmp     loc_473D97

loc_473E2C:
cmp     bh, 9
jnz     def_473D09      ; jumptable 00473D09 default case
cmp     dword ptr [edx+10h], 1
jnz     def_473D09      ; jumptable 00473D09 default case
mov     byte ptr [ecx+0ACh], 3
mov     word ptr [esi+2], 0

loc_473E4C:
mov     ebx, 2

loc_473E51:
mov     eax, ecx
mov     edx, esi
jmp     loc_473F8B

loc_473E5A:             ; jumptable 00473D09 case 3
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 9
jnz     loc_473F13
mov     eax, [eax+10h]
cmp     eax, 0D2h
jb      short loc_473EC1
jbe     loc_473EFF
cmp     eax, 13Eh
jb      short loc_473EAA
jbe     loc_473F09
cmp     eax, 186h
jb      short loc_473EA3
jbe     loc_473F09
cmp     eax, 1AEh

loc_473E9A:
jz      loc_473EF5
pop     esi
pop     ecx
retn

loc_473EA3:
cmp     eax, 172h
jmp     short loc_473E9A

loc_473EAA:
cmp     eax, 0FAh
jb      short loc_473EBA
jbe     short loc_473EFF
cmp     eax, 131h
jmp     short loc_473E9A

loc_473EBA:
cmp     eax, 0E1h
jmp     short loc_473E9A

loc_473EC1:
cmp     eax, 41h ; 'A'
jb      short loc_473EDB
jbe     short loc_473EEB
cmp     eax, 78h ; 'x'
jb      short loc_473ED6
jbe     short loc_473EEB
cmp     eax, 0BEh
jmp     short loc_473E9A

loc_473ED6:
cmp     eax, 5Ah ; 'Z'
jmp     short loc_473E9A

loc_473EDB:
cmp     eax, 0Ah
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473EEB
cmp     eax, 30h ; '0'
jmp     short loc_473E9A

loc_473EEB:
mov     ebx, 8
jmp     loc_473D97

loc_473EF5:
mov     ebx, 2
jmp     loc_473D97

loc_473EFF:
mov     ebx, 9
jmp     loc_473D97

loc_473F09:
mov     ebx, 0Ah
jmp     loc_473D97

loc_473F13:
cmp     byte ptr [eax+9], 0Ah
jnz     def_473D09      ; jumptable 00473D09 default case
cmp     dword ptr [eax+10h], 1
jnz     def_473D09      ; jumptable 00473D09 default case
jmp     loc_473E4C

loc_473F2C:             ; jumptable 00473D09 case 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, [edx+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_473F54
jbe     short loc_473F67
cmp     eax, 96h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473F71
cmp     eax, 0AAh
jz      short loc_473F82
pop     esi
pop     ecx
retn

loc_473F54:
cmp     eax, 11h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_473F67
cmp     eax, 2Dh ; '-'
jmp     loc_473E9A

loc_473F67:
mov     ebx, 0Bh
jmp     loc_473D97

loc_473F71:
mov     ebx, 2

loc_473F76:
mov     edx, esi
mov     eax, ecx

loc_473F7A:
call    sub_47404E
pop     esi
pop     ecx
retn

loc_473F82:
mov     ebx, 0Bh

loc_473F87:
mov     edx, esi
mov     eax, ecx

loc_473F8B:
call    sub_47404E

loc_473F90:
inc     byte ptr [ecx+9]
pop     esi
pop     ecx
retn

loc_473F96:             ; jumptable 00473D09 case 5
mov     eax, [edx+10h]
cmp     eax, 118h
jb      short loc_473FAC
jbe     short loc_473FB9
cmp     eax, 121h
jz      short loc_473FC0
pop     esi
pop     ecx
retn

loc_473FAC:
cmp     eax, 0F8h
jnz     def_473D09      ; jumptable 00473D09 default case
jmp     short loc_473F71

loc_473FB9:
mov     ebx, 0Bh
jmp     short loc_473F76

loc_473FC0:
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_474035
mov     ebx, 4
jmp     short loc_473F87

loc_473FD5:             ; jumptable 00473D09 case 6
cmp     byte ptr [edx+9], 0Bh
jnz     def_473D09      ; jumptable 00473D09 default case
mov     eax, [eax+10h]
cmp     eax, 23h ; '#'
jb      short loc_473FFC
jbe     short loc_474010
cmp     eax, 28h ; '('
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_47401D
cmp     eax, 2Dh ; '-'
jz      short loc_474026
pop     esi
pop     ecx
retn

loc_473FFC:
cmp     eax, 19h
jb      def_473D09      ; jumptable 00473D09 default case
jbe     short loc_474010
cmp     eax, 1Eh
jnz     def_473D09      ; jumptable 00473D09 default case

loc_474010:
mov     eax, ecx
call    sub_474144
inc     byte ptr [ecx+0Ch]
pop     esi
pop     ecx
retn

loc_47401D:
and     byte ptr [ecx], 0FDh
mov     byte ptr [esi+12h], 0
jmp     short loc_474010

loc_474026:
mov     eax, ecx
call    sub_474144
inc     byte ptr [ecx+0Ch]
jmp     loc_473F90
sub_473CF3 endp




sub_474035 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_5174F1[ebx*4]
mov     [edx+4], eax
retn
sub_474035 endp




sub_47404E proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_517501[ebx*4]
mov     [edx+8], eax
retn
sub_47404E endp




sub_474067 proc near
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
jb      short loc_47408C
jbe     short loc_47408F
cmp     al, 7Fh
jnz     short loc_47408C
mov     byte ptr [edx+0Eh], 0
jmp     short loc_47408F

loc_47408C:
inc     byte ptr [esi+0Eh]

loc_47408F:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4740D1
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 50004h
mov     eax, ecx
call    sub_4EE044

loc_4740D1:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4740F4
jbe     short loc_4740F7
cmp     al, 7Fh
jnz     short loc_4740F4
mov     byte ptr [esi+11h], 0
jmp     short loc_4740F7

loc_4740F4:
inc     byte ptr [esi+11h]

loc_4740F7:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_474139
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 70006h
mov     eax, edi
call    sub_4EE044

loc_474139:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_474067 endp




sub_474144 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      loc_473C4D
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
mov     byte ptr [eax+0Dh], 3
mov     ecx, [edx+9]
sar     ecx, 18h
mov     bx, [edx+14h]
mov     si, ds:word_517531[ecx*8]
add     ebx, esi
mov     [eax+48h], bx
mov     ecx, [edx+9]
sar     ecx, 18h
mov     bx, [edx+16h]
mov     di, ds:word_517533[ecx*8]
add     ebx, edi
mov     [eax+4Ah], bx
mov     ecx, [edx+9]
sar     ecx, 18h
mov     dx, [edx+18h]
mov     bx, ds:word_517535[ecx*8]
add     edx, ebx
mov     [eax+4Ch], dx
jmp     loc_473C4D
sub_474144 endp




sub_4741B4 proc near
push    edx
push    esi
push    edi
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
mov     word ptr [eax+15Eh], 4210h
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4741D7[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4741B4 endp




sub_4741E2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
xor     bl, bl
jmp     short loc_4742B3

loc_474245:
mov     dl, [eax+1]
mov     [ecx+0Eh], dl

loc_47424B:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 48h ; 'H'
mov     [eax+3], bl
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+5], 0
mov     dx, [ecx+56h]
mov     [eax+56h], dx
mov     dl, [ecx+0Ch]
mov     [eax+0Ch], dl
mov     dl, [ecx+1]
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
movsx   esi, bl
lea     edi, [eax+14h]
lea     esi, [ecx+esi*8+198h]
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

loc_4742AC:
inc     bl
cmp     bl, 2
jge     short loc_4742CA

loc_4742B3:
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_4742AC
test    bl, bl
jnz     short loc_474245
mov     dl, [eax+1]
mov     [ecx+0Dh], dl
jmp     short loc_47424B

loc_4742CA:
mov     eax, [ecx+9]
sar     eax, 18h
call    sub_4E1877
mov     dl, [ecx+0Dh]
mov     [eax+0Dh], dl
mov     dl, [ecx+0Eh]
mov     [eax+0Eh], dl
mov     byte ptr [ecx+8], 1
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4741E2 endp




sub_4742EB proc near
push    edx
push    esi
push    edi
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
cmp     word ptr [eax+6Eh], 0
jl      short loc_474359
test    byte ptr [eax+0Ch], 1
jnz     short loc_47430F
mov     eax, edx
call    sub_4DEADD

loc_47430F:
cmp     byte ptr [edx+0Dh], 0
jle     short loc_474332
mov     eax, [edx+0Ah]
sar     eax, 18h
call    sub_4E1877
cmp     word ptr [eax+6Eh], 0
jl      short loc_474332
lea     edi, [eax+14h]
lea     esi, [edx+198h]
movsd
movsd

loc_474332:
cmp     byte ptr [edx+0Eh], 0
jle     short loc_47435D
mov     eax, [edx+0Bh]
sar     eax, 18h
call    sub_4E1877
cmp     word ptr [eax+6Eh], 0
jl      short loc_47435D
lea     edi, [eax+14h]
lea     esi, [edx+1A0h]
movsd
movsd
pop     edi
pop     esi
pop     edx
retn

loc_474359:
mov     byte ptr [edx+8], 2

loc_47435D:
pop     edi
pop     esi
pop     edx
retn
sub_4742EB endp



; Attributes: thunk

sub_474361 proc near
jmp     sub_4DE2F6
sub_474361 endp




sub_474366 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_47437E
cmp     al, 1
jz      loc_474409
pop     edx
pop     ecx
pop     ebx
retn

loc_47437E:
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ecx+54h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
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
inc     byte ptr [ecx+8]

loc_474409:
mov     eax, ecx
call    sub_4DFC52
mov     ax, [ecx+58h]
mov     ds:word_560E10, ax
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_474366 endp




sub_474425 proc near
mov     byte ptr [eax+8], 0
mov     edx, ds:off_517571[edx*4]
mov     [eax], edx
mov     byte ptr [eax+9], 0
retn
sub_474425 endp




sub_474437 proc near
mov     byte ptr [eax+0Ah], 0
mov     edx, ds:off_5175B9[edx*4]
mov     [eax+4], edx
mov     byte ptr [eax+0Bh], 0
retn
sub_474437 endp




sub_47444A proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+9]
test    ah, ah
jnz     short loc_4744BB
mov     eax, [edx+5]
sar     eax, 18h
mov     ecx, [edx]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_474472
jbe     short loc_4744C2
cmp     al, 7Fh
jnz     short loc_474472
mov     byte ptr [edx+8], 0

loc_474472:
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 50004h
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+5]
sar     ecx, 18h
mov     eax, [esi]
mov     al, [ecx+eax+1]
mov     [esi+9], al
add     byte ptr [esi+8], 2
jmp     short loc_4744C2

loc_4744BB:
mov     dl, ah
dec     dl
mov     [esi+9], dl

loc_4744C2:
mov     bl, [esi+0Bh]
test    bl, bl
jnz     short loc_474530
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_4744E2
jbe     short loc_474537
cmp     al, 7Fh
jnz     short loc_4744E2
mov     [esi+0Ah], bl

loc_4744E2:
mov     ecx, [esi+7]
sar     ecx, 18h
mov     eax, [esi+4]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 4
mov     ebx, 3Ah ; ':'
mov     edx, 3Eh ; '>'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 70006h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+7]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax+1]
mov     [esi+0Bh], al
add     byte ptr [esi+0Ah], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_474530:
mov     bh, bl
dec     bh
mov     [esi+0Bh], bh

loc_474537:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_47444A endp




sub_47453C proc near
push    ecx
mov     ecx, eax
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7Ch
and     eax, 0FFFFh
shl     eax, 6
call    sub_4EF008
shl     eax, 6
mov     edx, 0FED50000h
sub     edx, eax
mov     [ecx+20h], edx
mov     eax, edx
sar     eax, 10h
mov     [ecx+16h], ax
pop     ecx
retn
sub_47453C endp




sub_47456E proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]
mov     edx, ebx
mov     eax, ecx
call    sub_474749
pop     ecx
pop     ebx
retn
sub_47456E endp




sub_4745AE proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
call    sub_47453C
cmp     ds:dword_560BEC, 1
jnz     short loc_4745D0
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
jmp     short loc_4745D7

loc_4745D0:
mov     eax, esi
call    sub_4DEADD

loc_4745D7:
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_4745EE
jbe     short loc_474609
cmp     eax, 0AAh
jz      short loc_474610
pop     esi
pop     ecx
pop     ebx
retn

loc_4745EE:
cmp     eax, 1
jnz     short loc_474619
xor     edx, edx
mov     eax, ecx
call    sub_474437
xor     edx, edx
mov     eax, ecx
call    sub_474425
pop     esi
pop     ecx
pop     ebx
retn

loc_474609:
mov     edx, 4
jmp     short loc_474612

loc_474610:
xor     edx, edx

loc_474612:
mov     eax, ecx
call    sub_474437

loc_474619:
pop     esi
pop     ecx
pop     ebx
retn
sub_4745AE endp




sub_47461D proc near
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
call    sub_47453C
mov     eax, ebx
call    sub_4DEADD
mov     eax, ds:dword_560BEC
cmp     eax, 96h
jb      short loc_47466F
jbe     loc_4746A5
cmp     eax, 0DCh
jb      short loc_474665
jbe     loc_4746A5
cmp     eax, 122h
jb      loc_4746B8
jbe     short loc_4746A1
cmp     eax, 140h
jz      short loc_4746AC
pop     ecx
pop     ebx
retn

loc_474665:
cmp     eax, 0D2h

loc_47466A:
jz      short loc_4746A1
pop     ecx
pop     ebx
retn

loc_47466F:
cmp     eax, 32h ; '2'
jb      short loc_474684
jbe     short loc_4746A1
cmp     eax, 3Ch ; '<'
jb      short loc_4746B8
jbe     short loc_4746A5
cmp     eax, 8Ch
jmp     short loc_47466A

loc_474684:
cmp     eax, 1
jnz     short loc_4746B8
mov     edx, 4
mov     eax, ecx
call    sub_474437
xor     edx, edx
mov     eax, ecx
call    sub_474425
pop     ecx
pop     ebx
retn

loc_4746A1:
xor     edx, edx
jmp     short loc_4746B1

loc_4746A5:
mov     edx, 4
jmp     short loc_4746B1

loc_4746AC:
mov     edx, 4

loc_4746B1:
mov     eax, ecx
call    sub_474437

loc_4746B8:
pop     ecx
pop     ebx
retn
sub_47461D endp




sub_4746BB proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
cmp     ds:dword_560BEC, 1
jnz     short loc_4746E3
mov     edx, 5
mov     eax, ecx
call    sub_474437
mov     edx, 1
mov     eax, ecx
call    sub_474425

loc_4746E3:
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
xor     edx, edx

loc_4746ED:
mov     eax, esi

loc_4746EF:
call    sub_4DD43B
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     ecx
pop     ebx
retn
sub_4746BB endp




sub_4746FF proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ecx, edx
mov     edx, ds:dword_560BEC
cmp     edx, 1
jnz     short loc_474724
mov     eax, ecx
call    sub_474437
mov     edx, 1
mov     eax, ecx
call    sub_474425

loc_474724:
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
jmp     short loc_4746ED
sub_4746FF endp




sub_474734 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
jmp     short loc_4746EF
sub_474734 endp




sub_474749 proc near
push    ecx
push    esi
push    edi
xor     ecx, ecx
mov     cl, ds:byte_560BE5
cmp     ds:dword_5175D1[ecx*4], 0
jz      short loc_474787
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     ecx, ecx
mov     cl, ds:byte_560BE5
call    ds:dword_5175D1[ecx*4]

loc_474787:
pop     edi
pop     esi
pop     ecx
retn
sub_474749 endp




sub_47478B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
movzx   esi, byte ptr [eax+8]
lea     ebx, [eax+408h]
mov     edx, ebx
call    ds:funcs_47479D[esi*4]
mov     edx, ebx
mov     eax, ecx
call    sub_47444A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47478B endp




sub_4747B2 proc near

var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
movzx   esi, byte ptr [ebp+8]
mov     ebx, ecx
mov     edx, offset dword_560BDC
mov     eax, ebp
call    ds:funcs_4747F6[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_474D87
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_474826
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_47482D

loc_474826:
mov     eax, ebp
call    sub_4DEADD

loc_47482D:
test    byte ptr [ebp+0], 2
jz      short loc_474875
mov     dh, [ecx+0Bh]
cmp     dh, 1
jnz     short loc_474850
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 24h ; '$'
mov     eax, ebp
call    sub_4ED88B
jmp     short loc_474875

loc_474850:
cmp     dh, 2
jnz     short loc_474875
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
sub     [esp+20h+var_1C], 70h ; 'p'
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 24h ; '$'
mov     eax, esp
call    sub_4ED95E

loc_474875:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4747B2 endp




sub_47487F proc near
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
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     word ptr [ebx], 0
mov     byte ptr [ebx+0Bh], 1
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     ecx
retn
sub_47487F endp




sub_4748EE proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4748F4[ecx*4]
pop     ecx
retn
sub_4748EE endp




sub_4748FD proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ebx
mov     byte ptr [ecx+0ADh], 0FFh
mov     bl, [eax+9]
cmp     bl, 15h
jnz     short loc_47495D
mov     eax, [eax+10h]
cmp     eax, 6Eh ; 'n'
jb      short loc_474933
jbe     short loc_474956
cmp     eax, 0A0h
jb      loc_47497C
jbe     short loc_47494F
cmp     eax, 0E6h
jz      short loc_474941
pop     ecx
retn

loc_474933:
cmp     eax, 0Ah
jb      short loc_47497C
jbe     short loc_474941
cmp     eax, 3Ch ; '<'
jz      short loc_47494F
pop     ecx
retn

loc_474941:
mov     ebx, 9

loc_474946:
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_47494F:
mov     ebx, 8
jmp     short loc_474946

loc_474956:
mov     ebx, 1
jmp     short loc_474946

loc_47495D:
cmp     bl, 17h
jnz     short loc_47497C
cmp     dword ptr [eax+10h], 1
jnz     short loc_47497C
mov     ebx, 2
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0

loc_47497C:
pop     ecx
retn
sub_4748FD endp




sub_47497E proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ebx
mov     byte ptr [ecx+0ADh], 0FFh
mov     bl, [eax+9]
cmp     bl, 17h
jnz     loc_474A19
mov     eax, [eax+10h]
cmp     eax, 73h ; 's'
jb      short loc_4749E3
jbe     loc_474A12
cmp     eax, 0DCh
jb      short loc_4749CD
jbe     loc_474A0B
cmp     eax, 102h
jb      loc_474A35
jbe     loc_474A12
cmp     eax, 113h
jz      short loc_4749FD
pop     ecx
retn

loc_4749CD:
cmp     eax, 8Ch
jb      loc_474A35
jbe     short loc_474A0B
cmp     eax, 0D2h
jz      short loc_474A12
pop     ecx
retn

loc_4749E3:
cmp     eax, 32h ; '2'
jb      short loc_4749F8
jbe     short loc_474A0B
cmp     eax, 3Ch ; '<'
jb      short loc_474A35
jbe     short loc_474A12
cmp     eax, 46h ; 'F'
jz      short loc_474A0B
pop     ecx
retn

loc_4749F8:
cmp     eax, 14h
jnz     short loc_474A35

loc_4749FD:
mov     ebx, 0Bh

loc_474A02:
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474A0B:
mov     ebx, 0Ah
jmp     short loc_474A02

loc_474A12:
mov     ebx, 2
jmp     short loc_474A02

loc_474A19:
cmp     bl, 18h
jnz     short loc_474A35
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     short loc_474A35
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 2
mov     byte ptr [ecx+0Ah], 0

loc_474A35:
pop     ecx
retn
sub_47497E endp




sub_474A37 proc near
push    ecx
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+0Ah]
test    bl, bl
jbe     short loc_474A4E
cmp     bl, 1
jz      loc_474B22
pop     ecx
retn

loc_474A4E:
mov     byte ptr [ecx+0ADh], 0FFh
mov     edx, [edx+10h]
cmp     edx, 110h
jb      short loc_474ABC
jbe     loc_474B01
cmp     edx, 186h
jb      short loc_474A9E
jbe     loc_474B01
cmp     edx, 1D1h
jb      short loc_474A90
jbe     loc_474B01
cmp     edx, 262h
jz      loc_474B08
pop     ecx
retn

loc_474A90:
cmp     edx, 19Fh

loc_474A96:
jz      loc_474AF1
pop     ecx
retn

loc_474A9E:
cmp     edx, 154h
jb      short loc_474AB4
jbe     loc_474B01
cmp     edx, 172h
jmp     short loc_474A96

loc_474AB4:
cmp     edx, 122h
jmp     short loc_474A96

loc_474ABC:
cmp     edx, 82h
jb      short loc_474AE0
jbe     short loc_474B01
cmp     edx, 0CAh
jb      short loc_474AD8
jbe     short loc_474B01
cmp     edx, 0E6h
jmp     short loc_474A96

loc_474AD8:
cmp     edx, 0A0h
jmp     short loc_474A96

loc_474AE0:
cmp     edx, 6Eh ; 'n'
jb      short loc_474AEC
jbe     short loc_474B01
cmp     edx, 7Dh ; '}'
jmp     short loc_474A96

loc_474AEC:
cmp     edx, 32h ; '2'
jnz     short loc_474B4B

loc_474AF1:
mov     ebx, 8

loc_474AF6:
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474B01:
mov     ebx, 1
jmp     short loc_474AF6

loc_474B08:
mov     byte ptr [ecx+0ACh], 2
mov     ebx, 0Ch
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_474B22:
cmp     byte ptr [edx+9], 1Ah
jnz     short loc_474B4B
cmp     dword ptr [edx+10h], 1
jnz     short loc_474B4B
mov     byte ptr [ecx+0ACh], 3
mov     ebx, 3
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0

loc_474B4B:
pop     ecx
retn
sub_474A37 endp




sub_474B4D proc near
push    ecx
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+0Ah]
test    bl, bl
jbe     short loc_474B60
cmp     bl, 1
jz      short loc_474B81
pop     ecx
retn

loc_474B60:
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_474BBF
mov     ebx, 4
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_474B81:
cmp     byte ptr [edx+9], 1Ah
jnz     short loc_474B9D
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_474B9D
mov     ebx, 0Dh
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474B9D:
cmp     byte ptr [edx+9], 1Fh
jnz     short loc_474BBF
cmp     dword ptr [edx+10h], 1
jnz     short loc_474BBF
mov     ebx, 2
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0

loc_474BBF:
pop     ecx
retn
sub_474B4D endp




sub_474BC1 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
cmp     byte ptr [edx+9], 20h ; ' '
jnz     short loc_474BFA
cmp     dword ptr [edx+10h], 1
jnz     short loc_474BFA
mov     byte ptr [ecx+0ACh], 6
mov     word ptr [esi+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [esi+0Bh], 2
mov     byte ptr [ecx+9], 5
mov     byte ptr [ecx+0Ah], 0

loc_474BFA:
pop     esi
pop     ecx
retn
sub_474BC1 endp




sub_474BFD proc near
push    ecx
mov     ecx, eax
mov     eax, ebx
mov     bl, [ecx+0Ah]
test    bl, bl
jbe     short loc_474C10
cmp     bl, 1
jz      short loc_474C4D
pop     ecx
retn

loc_474C10:
mov     byte ptr [ecx+0ADh], 0FFh
mov     edx, [edx+10h]
cmp     edx, 1Eh
jb      short loc_474C28
jbe     short loc_474C41
cmp     edx, 3Ch ; '<'
jz      short loc_474C48
pop     ecx
retn

loc_474C28:
cmp     edx, 0Ah
jnz     loc_474CA9
mov     ebx, 10h

loc_474C36:
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
pop     ecx
retn

loc_474C41:
mov     ebx, 2
jmp     short loc_474C36

loc_474C48:
inc     byte ptr [ecx+0Ah]
pop     ecx
retn

loc_474C4D:
cmp     byte ptr [edx+9], 20h ; ' '
jnz     short loc_474C5F
cmp     dword ptr [edx+10h], 47h ; 'G'
jnz     short loc_474C5F
mov     byte ptr [eax+0Bh], 0
pop     ecx
retn

loc_474C5F:
cmp     byte ptr [edx+9], 21h ; '!'
jnz     short loc_474CA9
cmp     dword ptr [edx+10h], 1
jnz     short loc_474CA9
mov     dword ptr [ecx+158h], 1990199h
mov     dword ptr [ecx+15Ch], 42100199h
mov     byte ptr [ecx+0ACh], 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [eax+2], 0
mov     ebx, 5
mov     edx, eax
mov     eax, ecx
call    sub_474D6E
mov     byte ptr [ecx+9], 6
mov     byte ptr [ecx+0Ah], 0

loc_474CA9:
pop     ecx
retn
sub_474BFD endp

db 8Dh, 40h, 0
jpt_474CD5 dd offset loc_474CDC ; jump table for switch statement
dd offset loc_474CF8
dd offset loc_474D14
dd offset loc_474D58



sub_474CBE proc near
push    ecx
mov     ecx, edx
mov     edx, ebx
mov     bl, [eax+0Ah]
cmp     bl, 3           ; switch 4 cases
ja      def_474CD5      ; jumptable 00474CD5 default case
and     ebx, 0FFh
jmp     jpt_474CD5[ebx*4] ; switch jump

loc_474CDC:             ; jumptable 00474CD5 case 0
cmp     dword ptr [ecx+10h], 3Fh ; '?'
jnz     def_474CD5      ; jumptable 00474CD5 default case
mov     byte ptr [eax+0ACh], 7
mov     word ptr [edx+2], 0

loc_474CF3:
inc     byte ptr [eax+0Ah]
pop     ecx
retn

loc_474CF8:             ; jumptable 00474CD5 case 1
cmp     byte ptr [eax+0A4h], 0Dh
jnz     def_474CD5      ; jumptable 00474CD5 default case
mov     byte ptr [eax+0ACh], 7
mov     word ptr [edx+2], 0Dh
jmp     short loc_474CF3

loc_474D14:             ; jumptable 00474CD5 case 2
mov     byte ptr [eax+0ADh], 0FFh
mov     ebx, [ecx+10h]
cmp     ebx, 7Dh ; '}'
jb      short loc_474D39
jbe     short loc_474D4A
cmp     ebx, 8Ch
jb      short def_474CD5 ; jumptable 00474CD5 default case
jbe     short loc_474D51
cmp     ebx, 0A4h
jz      short loc_474CF3
pop     ecx
retn

loc_474D39:
cmp     ebx, 50h ; 'P'
jnz     short def_474CD5 ; jumptable 00474CD5 default case
mov     ebx, 0Eh

loc_474D43:
call    sub_474D6E
pop     ecx
retn

loc_474D4A:
mov     ebx, 5
jmp     short loc_474D43

loc_474D51:
mov     ebx, 0Fh
jmp     short loc_474D43

loc_474D58:             ; jumptable 00474CD5 case 3
cmp     byte ptr [ecx+9], 22h ; '"'
jnz     short def_474CD5 ; jumptable 00474CD5 default case
cmp     dword ptr [ecx+10h], 1
jnz     short def_474CD5 ; jumptable 00474CD5 default case
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0

def_474CD5:             ; jumptable 00474CD5 default case
pop     ecx
sub_474CBE endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_66]



sub_474D6E proc near
mov     byte ptr [edx+0Ah], 0
mov     al, [edx+0Ah]
mov     [edx+8], al
mov     byte ptr [edx+9], 0FFh
mov     eax, ds:off_517705[ebx*4]
mov     [edx+4], eax
retn
sub_474D6E endp




sub_474D87 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+7]
sar     eax, 18h
mov     edx, [edx+4]
mov     al, [edx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_474DAC
jbe     short loc_474DAF
cmp     al, 7Fh
jnz     short loc_474DAC
mov     byte ptr [esi+0Ah], 0
jmp     short loc_474DAF

loc_474DAC:
inc     byte ptr [esi+0Ah]

loc_474DAF:
mov     eax, [esi+7]
sar     eax, 18h
mov     edx, [esi+4]
mov     al, [edx+eax]
mov     [esi+8], al
cmp     al, [esi+9]
jz      short loc_474DF1
mov     eax, [esi+5]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 3Ch ; '<'
mov     edx, 2Dh ; '-'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 80007h
mov     eax, edi
call    sub_4EE044

loc_474DF1:
mov     al, [esi+8]
mov     [esi+9], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_474D87 endp




sub_474DFC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_474DFC endp




sub_474E21 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_474E35
jbe     short loc_474E53
cmp     al, 2
jz      short loc_474E4C
jmp     short loc_474E53

loc_474E35:
test    al, al
jnz     short loc_474E53
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     short loc_474E53

loc_474E4C:
sub     dword ptr [ecx+24h], 10000h

loc_474E53:
inc     byte ptr [ecx+0Ch]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 5
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
add     eax, eax
shl     eax, 4
mov     [ecx+20h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_474E21 endp




sub_474E77 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_474E80[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_474E9F
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_474E9F:
pop     edx
pop     ecx
retn
sub_474E77 endp




sub_474EA2 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_474EB2
mov     eax, edx
call    sub_474DFC

loc_474EB2:
mov     eax, edx
call    sub_474E77
pop     edx
retn
sub_474EA2 endp




sub_474EBB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     eax, eax

loc_474EE8:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 6
jl      short loc_474EE8
or      byte ptr [ecx+1AFh], 80h
mov     word ptr [ecx+0Eh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_474EBB endp




sub_474F0E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_474F22
jbe     short loc_474F3D
cmp     al, 2
jz      short loc_474F36
jmp     short loc_474F3D

loc_474F22:
test    al, al
jnz     short loc_474F3D
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     short loc_474F3D

loc_474F36:
sub     dword ptr [ecx+24h], 10000h

loc_474F3D:
inc     byte ptr [ecx+0Ch]
mov     eax, [ecx+9]
sar     eax, 18h
shl     eax, 5
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
add     eax, eax
shl     eax, 4
mov     [ecx+20h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_474F0E endp




sub_474F61 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_474F6A[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_474F89
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_474F89:
pop     edx
pop     ecx
retn
sub_474F61 endp




sub_474F8C proc near

var_48= byte ptr -48h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 60h
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_474FA4
mov     eax, ebp
call    sub_474EBB

loc_474FA4:
mov     eax, ebp
call    sub_474F61
add     word ptr [ebp+0Eh], 4
mov     eax, esp
call    sub_4EF184
mov     eax, [ebp+0Ch]
sar     eax, 10h
mov     edx, esp
call    sub_4EF50D
mov     ecx, 0Ch
lea     edi, [esp+78h+var_48]
mov     esi, esp
rep movsd
lea     eax, [ebp+288h]
mov     ebx, eax
lea     edx, [esp+78h+var_48]
call    sub_4EF388
lea     eax, [ebp+2E8h]
mov     ebx, eax
mov     edx, esp
call    sub_4EF388
add     esp, 60h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_474F8C endp




sub_474FFB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+408h]
mov     [esp+1Ch+var_1C], edx
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_47503A[edx*4]
mov     ah, [ebp+0Bh]
test    ah, ah
jz      short loc_475051
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_475058

loc_475051:
mov     dl, ah
inc     dl
mov     [ebp+0Bh], dl

loc_475058:
test    byte ptr [ebp+0], 2
jz      short loc_475071
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_475071:
cmp     byte ptr [ebp+8], 7
jz      short loc_47508A
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 2
mov     eax, ebp
call    sub_432697

loc_47508A:
cmp     byte ptr [ebp+8], 1
jnz     short loc_4750A3
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     edx, [esp+1Ch+var_1C]
sub     word ptr [edx+16h], 1Eh

loc_4750A3:
mov     edx, [esp+1Ch+var_1C]
mov     dword ptr [edx+0Ch], 0
add     esp, 4
sub_474FFB endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_47564B
;   ADDITIONAL PARENT FUNCTION sub_4757D7
;   ADDITIONAL PARENT FUNCTION sub_475A91

loc_4750B0:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_47564B
; START OF FUNCTION CHUNK FOR sub_4750B7
;   ADDITIONAL PARENT FUNCTION sub_475201

loc_4750B1:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4750B7



sub_4750B7 proc near

; FUNCTION CHUNK AT 004750B1 SIZE 00000006 BYTES

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
mov     word ptr [ecx+64h], 40h ; '@'
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_51778C[eax*2]
mov     [ecx+15Ch], ax
mov     [ecx+15Ah], ax
mov     [ecx+158h], ax
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], offset unk_517780
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
lea     edi, [ebx+24h]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+10h], offset unk_517774
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
mov     byte ptr [ecx+8], 0
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     word ptr [ebx], 0
mov     dword ptr [ebx+0Ch], 0
mov     dword ptr [ebx+10h], 0
mov     dword ptr [ebx+8], 7FFFFFFFh
mov     bl, [ecx+3]
cmp     bl, 1
jb      short loc_4751B4
jbe     short loc_4751CB
cmp     bl, 2
jz      short loc_4751E2

loc_4751B4:
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
jmp     loc_4750B1

loc_4751CB:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 3
jmp     loc_4750B1

loc_4751E2:
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+8], 7
jmp     loc_4750B1
sub_4750B7 endp



; Attributes: thunk

sub_4751FC proc near
jmp     sub_4DE2F6
sub_4751FC endp




sub_475201 proc near

; FUNCTION CHUNK AT 004750B1 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
test    byte ptr [edi+0Fh], 20h
jz      short loc_475227
mov     eax, 2
call    sub_47EEAE
mov     byte ptr [esi+8], 6
jmp     loc_4753F4

loc_475227:
mov     eax, esi
call    sub_47597E
test    eax, eax
jz      short loc_47523B
mov     byte ptr [esi+8], 4
jmp     loc_4753F4

loc_47523B:
mov     edx, esi
mov     eax, offset byte_5F8364
call    sub_4DD64B
mov     [edi+8], eax
mov     al, [esi+9]
cmp     al, 3
jb      short loc_475289
jbe     loc_4753E4
cmp     al, 0Bh
jb      short loc_47527C
jbe     loc_475432
cmp     al, 0Fh
jb      loc_4750B1
jbe     loc_475441
cmp     al, 14h
jz      loc_47546E
jmp     loc_4750B1

loc_47527C:
cmp     al, 0Ah
jz      loc_4753FD
jmp     loc_4750B1

loc_475289:
cmp     al, 1
jb      short loc_475294
jbe     short loc_4752AA
jmp     loc_4753C1

loc_475294:
test    al, al
jnz     loc_4750B1
call    rand_
xor     ah, ah
mov     [edi+4], ax
inc     byte ptr [esi+9]

loc_4752AA:
mov     eax, esi
call    sub_475A91
test    al, al
jz      loc_4750B1
cmp     dword ptr [edi+8], 12Ch
jnb     short loc_4752DA
mov     word ptr [esi+44h], 80h
cmp     byte ptr [esi+0ACh], 2
jz      short loc_4752F7
xor     ebx, ebx
mov     edx, 2
jmp     short loc_4752F0

loc_4752DA:
mov     word ptr [esi+44h], 40h ; '@'
cmp     byte ptr [esi+0ACh], 1
jz      short loc_4752F7
xor     ebx, ebx
mov     edx, 1

loc_4752F0:
mov     eax, esi
call    sub_4DE96B

loc_4752F7:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     ecx, eax
mov     edx, eax
mov     eax, esi
call    sub_475A09
cmp     byte ptr [esi+0Dh], 0
jz      short loc_47536A
mov     ebx, [esi+0Ah]
sar     ebx, 18h
lea     edx, [edi+24h]
lea     eax, [esi+14h]
call    sub_4DD685
sar     eax, 7
cmp     ebx, eax
jge     short loc_47536A
mov     word ptr [esi+44h], 80h
cmp     byte ptr [esi+0ACh], 2
jz      short loc_475355
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B

loc_475355:
movsx   ax, byte ptr [esi+0Dh]
shl     eax, 2
mov     [edi+4], ax
mov     byte ptr [esi+9], 0Ah
jmp     loc_4750B1

loc_47536A:
mov     edx, ecx
mov     eax, esi
call    sub_475942
mov     ax, [esi+56h]
add     ax, [esi+66h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, ecx
mov     eax, esi
call    sub_475A4C
cmp     word ptr [esi+46h], 0
jnz     loc_4750B1
mov     cx, [edi+4]
test    cx, cx
jnz     short loc_4753B5
inc     byte ptr [esi+9]
call    rand_
xor     ah, ah
and     al, 1Fh
inc     eax
mov     [edi+4], ax
jmp     loc_4750B1

loc_4753B5:
mov     esi, ecx
dec     esi
mov     [edi+4], si
jmp     loc_4750B1

loc_4753C1:
cmp     byte ptr [esi+0A7h], 0
jge     short loc_4753E4
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
inc     byte ptr [esi+9]

loc_4753E4:
mov     cx, [edi+4]
dec     cx
mov     [edi+4], cx

loc_4753EE:
jnz     loc_4750B1

loc_4753F4:
mov     byte ptr [esi+9], 0
jmp     loc_4750B1

loc_4753FD:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+24h]
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_4750B1
inc     byte ptr [esi+9]
jmp     loc_4750B1

loc_475432:
mov     eax, esi
call    sub_475A91
test    al, al
jz      loc_4750B1

loc_475441:
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
call    sub_475A09
mov     dx, [edi+4]
dec     dx
mov     [edi+4], dx
jmp     short loc_4753EE

loc_47546E:
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [edi]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_4750B1
mov     byte ptr [esi+9], 1
jmp     loc_4750B1
sub_475201 endp




sub_4754A3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4DD64B
mov     [ebx+8], eax
mov     al, [ecx+9]
test    al, al
jbe     short loc_4754CC
cmp     al, 1
jz      short loc_4754E8
pop     edx
pop     ecx
pop     ebx
retn

loc_4754CC:
cmp     dword ptr [ebx+8], 12Ch
jnb     short loc_475508
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
jmp     short loc_475504

loc_4754E8:
cmp     byte ptr [ecx+0A7h], 0
jge     short loc_475508
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0

loc_475504:
mov     byte ptr [ecx+0Bh], 0

loc_475508:
pop     edx
pop     ecx
pop     ebx
retn
sub_4754A3 endp




sub_47550C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
xor     esi, esi
mov     al, [eax+9]
cmp     al, 3
jb      short loc_47554D
jbe     loc_4755DC
cmp     al, 14h
jb      short loc_475540
jbe     loc_475610
cmp     al, 15h
jbe     loc_4755DC
cmp     al, 16h
jz      loc_475615
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_475540:
cmp     al, 4
jz      loc_4755E3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47554D:
cmp     al, 1
jb      short loc_475555
jbe     short loc_475578
jmp     short loc_4755AE

loc_475555:
test    al, al
jnz     loc_47563D
cmp     byte ptr [ecx+0ACh], 3
jz      short loc_475578
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Bh], 0

loc_475578:
mov     ax, [ecx+56h]
add     eax, esi
and     ah, 0Fh
mov     [ecx+56h], ax
test    si, si
jnz     loc_47563D
call    sub_42ABA2
test    eax, eax
jnz     loc_47563D
mov     edx, [ecx+9]
sar     edx, 18h
call    sub_4A0E24

loc_4755A6:
inc     byte ptr [ecx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4755AE:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_47563D
cmp     ds:byte_77E7D4, 12h
jnz     short loc_4755A6
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4755A6
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4755A6
mov     byte ptr [ecx+9], 14h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4755DC:
call    sub_42A98E
jmp     short loc_4755A6

loc_4755E3:
call    sub_42ABA2
test    eax, eax
jnz     short loc_47563D
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
cmp     byte ptr [ecx+0ACh], 3
jz      short loc_47563D
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_475610:
and     byte ptr [ecx], 0FDh
jmp     short loc_4755A6

loc_475615:
call    sub_42ABA2
test    eax, eax
jnz     short loc_47563D
and     ds:byte_5F8421, 0BFh
mov     eax, 238h
call    sub_47E8B8
or      ds:byte_5F8364, 2
mov     eax, ecx
call    sub_4DE2F6

loc_47563D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47550C endp




sub_475642 proc near
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
retn
sub_475642 endp




sub_47564B proc near

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     al, [eax+9]
test    al, al
jbe     short loc_475669
cmp     al, 1
jz      short loc_4756AA
jmp     loc_4750B0

loc_475669:
mov     ax, word ptr ds:dword_5F83B8+2
mov     [ebp+56h], ax
mov     word ptr [ebp+46h], 200h
mov     ax, [ebp+46h]
mov     [ebp+44h], ax
mov     word ptr [esi+1Ch], 18h
mov     word ptr [esi+20h], 0
mov     ax, [esi+20h]
mov     [esi+1Eh], ax
xor     ebx, ebx
mov     edx, 4
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0Bh], 0

loc_4756AA:
test    byte ptr [esi+0Fh], 2
jz      short loc_4756DF
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
cmp     byte ptr [ebp+0ACh], 0
jz      loc_4750B0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4757B7

loc_4756DF:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ebx, eax
test    eax, eax
jz      short loc_475709
lea     ecx, [ebp+44h]
mov     edx, eax
mov     eax, ecx
call    sub_42D90F

loc_475709:
mov     eax, [ebp+42h]
sar     eax, 10h
call    abs_
mov     edx, eax
mov     eax, [esi+1Ah]
sar     eax, 10h
call    abs_
cmp     edx, eax
jg      short loc_475735
mov     word ptr [esi+1Ch], 0
mov     ax, [esi+1Ch]
mov     [ebp+44h], ax
jmp     short loc_475758

loc_475735:
mov     dx, [ebp+44h]
test    dx, dx
jge     short loc_47574C
mov     ax, [esi+1Ch]
mov     edi, edx
add     edi, eax
mov     [ebp+44h], di
jmp     short loc_475758

loc_47574C:
mov     ax, [esi+1Ch]
mov     ecx, edx
sub     ecx, eax
mov     [ebp+44h], cx

loc_475758:
lea     edx, [esi+24h]
lea     eax, [ebp+14h]
call    sub_4DD685
cmp     eax, 1000h
jle     short loc_47577C
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

loc_47577C:
mov     edx, ebx
mov     eax, ebp
call    sub_475A09
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4750B0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     word ptr [ebp+48h], 0
mov     ax, [ebp+48h]
mov     [ebp+46h], ax
mov     [ebp+44h], ax
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0

loc_4757B7:
mov     byte ptr [ebp+0Bh], 0
jmp     loc_4750B0
sub_47564B endp ; sp-analysis failed

db 8Dh, 40h, 0
jpt_475804 dd offset loc_47580B ; jump table for switch statement
dd offset loc_475839
dd offset loc_475843
dd offset loc_4758DB
dd offset loc_4758EE



sub_4757D7 proc near

var_28= byte ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebp, eax
add     eax, 408h
mov     [esp+38h+var_1C], eax
mov     edx, offset byte_5F8364
mov     [esp+38h+var_20], edx
mov     al, [ebp+9]
cmp     al, 4           ; switch 5 cases
ja      def_475804      ; jumptable 00475804 default case
and     eax, 0FFh
jmp     jpt_475804[eax*4] ; switch jump

loc_47580B:             ; jumptable 00475804 case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_475804      ; jumptable 00475804 default case
mov     byte ptr ds:dword_5F836C, 3
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_475831:
inc     byte ptr [ebp+9]
jmp     def_475804      ; jumptable 00475804 default case

loc_475839:             ; jumptable 00475804 case 1
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ebp+9]

loc_475843:             ; jumptable 00475804 case 2
cmp     ds:word_6E23D6, 0
jnz     def_475804      ; jumptable 00475804 default case
lea     eax, [ebp+14h]
mov     ecx, 5
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
or      byte ptr [ebp+0], 2
mov     word ptr [ebp+44h], 200h
mov     word ptr [ebp+56h], 0A8Ch
mov     eax, [esp+38h+var_1C]
mov     word ptr [eax+4], 0B4h
lea     edi, [ebp+14h]
mov     esi, [esp+38h+var_20]
lea     esi, [esi+14h]
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [esp+38h+var_28]
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ebp+2Ch]
movsd
movsd
mov     edi, eax
lea     edi, [edi+24h]
lea     esi, [esp+38h+var_28]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, [esp+38h+var_20]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+34h]
mov     esi, esp
movsd
movsd
movsd
movsd
sub     word ptr [ebp+16h], 32h ; '2'
jmp     loc_475831

loc_4758DB:             ; jumptable 00475804 case 3
mov     eax, [esp+38h+var_1C]
mov     dx, [eax+4]
dec     dx
mov     [eax+4], dx
jnz     short loc_4758EE ; jumptable 00475804 case 4
inc     byte ptr [ebp+9]

loc_4758EE:             ; jumptable 00475804 case 4
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_475A09
mov     dl, byte ptr ds:dword_77E760
test    dl, dl
jnz     short def_475804 ; jumptable 00475804 default case
mov     eax, [esp+38h+var_20]
call    sub_4B565A
mov     eax, [esp+38h+var_20]
or      byte ptr [eax], 2
mov     eax, 239h
call    sub_47E8B8
mov     byte ptr [ebp+8], 1
mov     [ebp+9], dl

def_475804:             ; jumptable 00475804 default case
add     esp, 20h
jmp     loc_4750B0
sub_4757D7 endp ; sp-analysis failed




sub_475942 proc near
push    ecx
mov     ecx, eax
mov     ax, [eax+66h]
test    edx, edx
jnz     short loc_475966
call    rand_
imul    ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
sub     eax, 8
shl     eax, 2
jmp     short loc_475978

loc_475966:
test    dh, 5
jz      short loc_475970
mov     eax, 10h

loc_475970:
test    dh, 0Ah
jz      short loc_475978
imul    eax, -1

loc_475978:
mov     [ecx+66h], ax
pop     ecx
retn
sub_475942 endp




sub_47597E proc near
push    ebx
push    ecx
push    edx
cmp     eax, ds:dword_5F84E8
jnz     short loc_475A03
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 40h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     edx, [eax+18Eh]
sar     edx, 10h
mov     ds:dword_55A0F4, edx
mov     edx, [eax+190h]
sar     edx, 10h
sub     edx, 20h ; ' '
mov     ds:dword_55A0F8, edx
mov     edx, [eax+192h]
sar     edx, 10h
mov     ds:dword_55A0FC, edx
mov     ecx, ds:dword_77E964
lea     edx, [eax+14h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A0F4
call    sub_42AAA8
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_475A03:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_47597E endp




sub_475A09 proc near
push    ebx
push    ecx
mov     ecx, eax
call    sub_42C592
test    dh, 10h
jnz     short loc_475A33
mov     dx, [ecx+46h]
add     edx, 4
mov     [ecx+46h], dx
add     [ecx+16h], dx
mov     ebx, [ecx+14h]
sar     ebx, 10h
movsx   edx, ax
cmp     ebx, edx
jle     short loc_475A3D

loc_475A33:
mov     [ecx+16h], ax
mov     word ptr [ecx+46h], 0

loc_475A3D:
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
pop     ecx
pop     ebx
retn
sub_475A09 endp




sub_475A4C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
lea     edx, [ecx+408h]
test    eax, eax
jz      short loc_475A8E
mov     bx, [edx]
inc     ebx
mov     [edx], bx
cmp     bx, 3Ch ; '<'
jbe     short loc_475A8E
mov     word ptr [edx], 0
mov     bx, [ecx+56h]
add     ebx, 7D0h
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, ebx
and     ah, 0Fh
mov     [edx+2], ax
mov     byte ptr [ecx+9], 14h

loc_475A8E:
pop     ecx
pop     ebx
retn
sub_475A4C endp




sub_475A91 proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 004750B0 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
add     eax, 408h
mov     [esp+34h+var_1C], eax
cmp     dword ptr [eax+8], 64h ; 'd'
jnb     loc_475B55
lea     edi, [ebp+0C4h]
lea     esi, [ebp+190h]
movsd
movsd
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     [esp+34h+var_24], 2
mov     [esp+34h+var_22], 9
mov     [esp+34h+var_20], 4
mov     ecx, esp
lea     ebx, [esp+34h+var_24]
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD6EC
test    al, 10h
jnz     short loc_475B55
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
cmp     byte ptr [ebp+0ACh], 0
jz      short loc_475B20
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     byte ptr [ebp+0Bh], 0
jmp     short loc_475B51

loc_475B20:
mov     dl, [ebp+0Bh]
inc     dl
mov     [ebp+0Bh], dl
cmp     dl, 3Ch ; '<'
jbe     short loc_475B51
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     ecx, [esp+34h+var_1C]
mov     [ecx+2], ax
mov     byte ptr [ebp+9], 14h

loc_475B51:
xor     al, al
jmp     short loc_475B57

loc_475B55:
mov     al, 1

loc_475B57:
add     esp, 1Ch
jmp     loc_4750B0
sub_475A91 endp ; sp-analysis failed




sub_475B5F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_475B65[edx*4]
pop     edx
retn
sub_475B5F endp




sub_475B6E proc near
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
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ebx+14h], 0
mov     word ptr [ebx+16h], 0
mov     dword ptr [ebx+18h], 0
mov     byte ptr [ebx+15h], 1
mov     dword ptr [ebx+40h], 0
mov     dword ptr [ebx+44h], 0
mov     dword ptr [ebx+34h], 4800000h
xor     edx, edx
mov     dl, [ecx+3]
shl     edx, 3
mov     eax, edx
shl     eax, 3
sub     eax, edx
mov     edx, offset off_51782E
add     edx, eax
mov     [ebx+0Ch], edx
mov     dword ptr [ebx+10h], offset unk_51779E
cmp     byte ptr ds:word_77E7FC, 0
jz      short loc_475C14
cmp     byte ptr ds:word_77E7FC+1, 19h
jnz     short loc_475C14
cmp     ds:byte_77E7FE, 3
jnz     short loc_475C14
mov     ds:byte_55A104, 1

loc_475C14:
mov     edi, ebx
lea     esi, [ecx+14h]
movsd
movsd
mov     ax, [ecx+56h]
mov     [ebx+8], ax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_517A4A
mov     dword ptr [ecx+10h], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0ACh], 0
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_47601C
jmp     def_47638F      ; jumptable 0047638F default case
sub_475B6E endp




sub_475C94 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
lea     ecx, [ebx+408h]
mov     esi, offset byte_5F8364

loc_475CA7:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
test    al, 80h
jnz     short loc_475CB9
mov     [ebx+9], al

loc_475CB9:
mov     ah, al
cmp     al, 8
jb      short loc_475D06
jbe     loc_475F2C
cmp     al, 92h
jb      short loc_475CEA
jbe     loc_475FB5
cmp     al, 94h
jb      loc_475FC2
jbe     loc_475FCF
cmp     al, 95h
jz      loc_475FDC
jmp     loc_475FFD

loc_475CEA:
cmp     al, 90h
jb      short loc_475CF9
jbe     loc_475FAB
jmp     loc_475FEC

loc_475CF9:
cmp     al, 9
jz      loc_475E3C
jmp     loc_475FFD

loc_475D06:
cmp     al, 4
jb      short loc_475D23
jbe     loc_475E91
cmp     al, 6
jb      loc_475ED3
jbe     loc_475EFB
jmp     loc_475F01

loc_475D23:
cmp     al, 2
jb      short loc_475D2E
jbe     short loc_475D64
jmp     loc_475DB3

loc_475D2E:
cmp     al, 1
jnz     loc_475FFD
mov     eax, [ecx+10h]
lea     ebp, [eax+1]
mov     [ecx+10h], ebp
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edx, [eax+1]
mov     [ecx+10h], edx
mov     al, [eax]
xor     ah, ah
shl     eax, 4
mov     [ecx+16h], ax
mov     byte ptr [ebx+9], 1
jmp     loc_475FFD

loc_475D64:
mov     eax, [ecx+10h]
cmp     byte ptr [eax], 3
jnz     short loc_475D75
cmp     byte ptr [ebx+0ACh], 0
jnz     short loc_475D80

loc_475D75:
mov     eax, [ecx+10h]
mov     al, [eax]
mov     [ebx+0ACh], al

loc_475D80:
mov     edi, [ecx+10h]
inc     edi
mov     [ecx+10h], edi
lea     eax, [edi+1]
mov     [ecx+10h], eax
xor     eax, eax
mov     al, [edi]
shl     eax, 2
mov     edi, offset unk_517A26
add     edi, eax
mov     [ecx+2Ch], edi
mov     word ptr [ecx+30h], 1
mov     byte ptr [ebx+9], 2
mov     word ptr [ecx+16h], 0
jmp     loc_475FFD

loc_475DB3:
push    64h ; 'd'
push    64h ; 'd'
mov     edx, [ebx+18h]
push    edx
mov     edi, [ebx+14h]
push    edi
mov     ebp, [esi+18h]
push    ebp
mov     eax, [esi+14h]
push    eax
call    sub_476988
test    al, al
jz      short loc_475DD9
add     dword ptr [ecx+10h], 5
jmp     loc_475CA7

loc_475DD9:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
mov     edi, eax
shl     edi, 4
mov     ax, [ecx]
add     eax, edi
mov     [ecx+1Ch], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [ecx+4]

loc_475E2D:
add     edi, eax
mov     [ecx+1Eh], di
mov     byte ptr [ebx+9], 3
jmp     loc_475FFD

loc_475E3C:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [esi+14h]
add     edi, eax
mov     [ecx+1Ch], di
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     di, [esi+18h]
jmp     short loc_475E2D

loc_475E91:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     edi, [ecx+10h]
lea     eax, [edi+1]
mov     [ecx+10h], eax
xor     ah, ah
mov     al, [edi]
shl     eax, 3
mov     [ecx+16h], ax
mov     byte ptr [ebx+9], 4
jmp     loc_475FFD

loc_475ED3:
lea     edi, [ebx+14h]
mov     edx, edi
mov     eax, 1ADh
call    sub_4D8BC3
mov     edx, edi
mov     eax, 1AEh
call    sub_4D8BC3
mov     byte ptr [ebx+9], 5

loc_475EF2:
mov     byte ptr [ebx+0Ah], 0
jmp     loc_475FFD

loc_475EFB:
mov     byte ptr [ebx+9], 6
jmp     short loc_475EF2

loc_475F01:
mov     edi, [ecx+10h]
lea     eax, [edi+1]
mov     [ecx+10h], eax
mov     al, [edi]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
xor     ah, ah
mov     [ebx+64h], ax
mov     byte ptr [ebx+9], 7
jmp     loc_475FFD

loc_475F2C:
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
mov     [ebx+0ACh], al
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
movsx   ax, byte ptr [eax]
shl     eax, 4
mov     [ebx+44h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
xor     ah, ah
shl     eax, 3
mov     [ecx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [ecx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
mov     [ecx+20h], ax
mov     eax, [ecx+10h]
lea     edi, [eax+1]
mov     [ecx+10h], edi
mov     al, [eax]
and     eax, 0FFh
shl     eax, 2
mov     edi, offset unk_517A26
add     edi, eax
mov     [ecx+2Ch], edi
mov     word ptr [ecx+30h], 1
mov     byte ptr [ebx+9], 8
jmp     loc_475EF2

loc_475FAB:
mov     eax, [ecx+10h]
movsx   edi, byte ptr [eax]
add     eax, edi
jmp     short loc_475FFA

loc_475FB5:
or      byte ptr [ecx+14h], 2
mov     dword ptr [ecx+34h], 4800001h
jmp     short loc_475FFD

loc_475FC2:
or      byte ptr [ecx+14h], 2
mov     dword ptr [ecx+34h], 5800001h
jmp     short loc_475FFD

loc_475FCF:
and     byte ptr [ecx+14h], 0FDh
mov     dword ptr [ecx+34h], 4800000h
jmp     short loc_475FFD

loc_475FDC:
mov     ax, [ebx+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebx+56h], ax
jmp     short loc_475FFD

loc_475FEC:
call    rand_
and     eax, 3
mov     edi, [ecx+0Ch]
mov     eax, [edi+eax*4]

loc_475FFA:
mov     [ecx+10h], eax

loc_475FFD:
mov     eax, [ecx+10h]
test    byte ptr [eax], 40h
jz      loc_475CA7
inc     eax
mov     [ecx+10h], eax
inc     byte ptr [ebx+8]
mov     eax, ebx
call    sub_47601C
jmp     loc_4762C9
sub_475C94 endp




sub_47601C proc near

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
push    1F40h
push    1F40h
mov     edx, [ebp+18h]
push    edx
mov     ecx, [ebp+14h]
push    ecx
mov     ebx, ds:dword_5F837A+2
push    ebx
mov     esi, ds:dword_5F8376+2
push    esi
call    sub_476988
test    al, al
jz      loc_47616B
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
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_476086[edx*4]
mov     eax, ebp
call    sub_4767D8
mov     al, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     al, ah
jz      short loc_4760B3
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4760BA

loc_4760B3:
mov     eax, ebp
call    sub_4DEADD

loc_4760BA:
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+38h]
lea     esi, [ebp+190h]
movsd
movsd
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+15h], 0
jz      short loc_476107
push    0
push    0
mov     edi, [eax+34h]
push    edi
add     eax, 40h ; '@'
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 38h ; '8'
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 3Ch ; '<'
call    sub_4E01FC

loc_476107:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax+14h], 2
jnz     short loc_476123
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_476123:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+40h], 0
mov     eax, ebp
call    sub_42DE56
mov     edx, [esp+1Ch+var_1C]
mov     [edx+18h], eax
cmp     ds:byte_55A104, 0
jz      short loc_476152
mov     eax, ebp
call    sub_476A32
and     eax, 0FFh
or      [edx+18h], eax

loc_476152:
test    byte ptr [ebp+0], 2
jz      short loc_47616B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_47616B:
add     esp, 4
jmp     loc_4762C9
sub_47601C endp



; Attributes: thunk

sub_476173 proc near
jmp     sub_4DE2F6
sub_476173 endp




sub_476178 proc near
mov     byte ptr [eax+8], 1
retn
sub_476178 endp




sub_47617D proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+16h]
dec     bx
mov     [eax+16h], bx
jnz     short loc_476196
mov     byte ptr [edx+8], 1

loc_476196:
pop     edx
pop     ebx
retn
sub_47617D endp




sub_476199 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
add     eax, 408h
mov     bx, [eax+16h]
mov     ecx, ebx
inc     ecx
mov     [eax+16h], cx
test    bx, bx
jz      short loc_4761C7
mov     eax, edx
call    sub_4769D1
cmp     byte ptr [edx+0A7h], 0
jge     short loc_4761C7
mov     byte ptr [edx+8], 1

loc_4761C7:
pop     edx
pop     ecx
pop     ebx
retn
sub_476199 endp




sub_4761CB proc near

var_20= word ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
cmp     byte ptr [eax+0ACh], 2
jnz     short loc_4761F1
mov     eax, 0C8h
jmp     short loc_4761F6

loc_4761F1:
mov     eax, 20h ; ' '

loc_4761F6:
mov     edx, eax
mov     ax, [edi+1Ch]
mov     [esp+20h+var_20], ax
mov     ax, [edi+1Eh]
mov     [esp+20h+var_1C], ax
movsx   ecx, dx
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, esp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
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
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+1Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
test    edx, edx
jge     short loc_47627D
neg     eax

loc_47627D:
cmp     eax, 28h ; '('
jg      short loc_47629F
mov     eax, [esi+16h]
sar     eax, 10h
mov     edx, [edi+1Ch]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_476296
neg     eax

loc_476296:
cmp     eax, 28h ; '('
jg      short loc_47629F
mov     byte ptr [esi+8], 1

loc_47629F:
cmp     dword ptr [edi+18h], 0
jnz     short loc_4762C2
push    64h ; 'd'
push    64h ; 'd'
mov     ecx, [esi+18h]
push    ecx
mov     ebx, [esi+14h]
push    ebx
mov     edi, [ebp+18h]
push    edi
mov     eax, [ebp+14h]
push    eax
call    sub_476988
test    al, al
jz      short loc_4762C6

loc_4762C2:
mov     byte ptr [esi+8], 1

loc_4762C6:
add     esp, 8

loc_4762C9:
pop     ebp

def_47638F:             ; jumptable 0047638F default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4761CB endp




sub_4762D0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
call    sub_42C592
mov     [esi+16h], ax
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     edx, [esi+16h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+24h], edx
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     dx, [edi+16h]
dec     dx
mov     [edi+16h], dx
jnz     short loc_476331
mov     byte ptr [esi+8], 1

loc_476331:
cmp     dword ptr [edi+18h], 0
jnz     short loc_476358
push    64h ; 'd'
push    64h ; 'd'
mov     ecx, [esi+18h]
push    ecx
mov     ebx, [esi+14h]
push    ebx
mov     edi, [ebp+18h]
push    edi
mov     eax, [ebp+14h]
push    eax
call    sub_476988
test    al, al
jz      loc_4762C9

loc_476358:
mov     byte ptr [esi+8], 1
jmp     loc_4762C9
sub_4762D0 endp

db 8Bh, 0C0h
jpt_47638F dd offset loc_476396 ; jump table for switch statement
dd offset loc_4763DE
dd offset loc_476410
dd offset loc_4764C5



sub_476373 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_47638F      ; jumptable 0047638F default case
xor     edx, edx
mov     dl, al
jmp     jpt_47638F[edx*4] ; switch jump

loc_476396:             ; jumptable 0047638F case 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     [esi+56h], ax
mov     word ptr [esi+46h], 0FDE4h
mov     word ptr [esi+48h], 5Ah ; 'Z'
mov     byte ptr [esi+0ACh], 5
mov     dh, [edi+15h]
test    dh, dh
jz      short loc_4763D6
mov     bl, dh
dec     bl
mov     [edi+15h], bl

loc_4763D6:
inc     byte ptr [esi+0Ah]
jmp     def_47638F      ; jumptable 0047638F default case

loc_4763DE:             ; jumptable 0047638F case 1
inc     al
mov     [esi+0Ah], al
dec     word ptr [esi+16h]
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
jmp     def_47638F      ; jumptable 0047638F default case

loc_476410:             ; jumptable 0047638F case 2
mov     edx, [esi+14h]
sar     edx, 10h
mov     eax, esi
call    sub_42C592
cwde
cmp     edx, eax
jl      short loc_47646F
mov     byte ptr [esi+0ACh], 6
mov     word ptr [esi+48h], 0
mov     ax, [esi+48h]
mov     [esi+46h], ax
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
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
mov     word ptr [edi+16h], 14h
inc     byte ptr [esi+0Ah]

loc_47646F:
mov     ebx, [esi+44h]
sar     ebx, 10h
xor     ecx, ecx
mov     edx, 0FFFFFF60h
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+14h]
sar     eax, 10h
cmp     eax, 0FFFFFFFFh
jle     short loc_476494
mov     word ptr [esi+16h], 0FFFFh

loc_476494:
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
mov     ax, [esi+48h]
add     [esi+46h], ax
jmp     def_47638F      ; jumptable 0047638F default case

loc_4764C5:             ; jumptable 0047638F case 3
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
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
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFE0h
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [esi+0A7h], 0
jge     def_47638F      ; jumptable 0047638F default case
mov     byte ptr [esi+8], 1
jmp     def_47638F      ; jumptable 0047638F default case
sub_476373 endp




sub_47651A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 0Ch
jb      short loc_47654D
jbe     loc_47659F
cmp     al, 0Fh
jb      short loc_476544
jbe     loc_4765B2
cmp     al, 1Ah
jz      loc_4765F1
jmp     loc_476624

loc_476544:
cmp     al, 0Dh
jz      short loc_4765AA
jmp     loc_476624

loc_47654D:
cmp     al, 7
jb      short loc_47655C
jbe     short loc_47657C
cmp     al, 8
jz      short loc_476594
jmp     loc_476624

loc_47655C:
test    al, al
jnz     loc_476624
mov     byte ptr [esi+0ACh], 9
mov     word ptr [esi+44h], 1E0h
mov     word ptr [esi+46h], 0
jmp     loc_4765F5

loc_47657C:
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [esi+44h], 1E0h
mov     word ptr [esi+46h], 0FEE0h
jmp     loc_476624

loc_476594:
mov     word ptr [esi+46h], 0FFC0h
jmp     loc_476624

loc_47659F:
mov     word ptr [esi+46h], 0FF40h
jmp     loc_476624

loc_4765AA:
mov     word ptr [esi+46h], 170h
jmp     short loc_476624

loc_4765B2:
mov     word ptr [esi+44h], 0B0h
mov     word ptr [esi+46h], 0
mov     word ptr [esi+16h], 0FFFFh
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     edx, [esi+16h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+24h], edx
mov     byte ptr [esi+0ACh], 0Bh
jmp     short loc_476624

loc_4765F1:
mov     byte ptr [esi+8], 1

loc_4765F5:
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
mov     edx, [esi+14h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+20h], edx
mov     edx, [esi+16h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+24h], edx

loc_476624:
inc     byte ptr [esi+0Ah]
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47651A endp




sub_476641 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, [eax+62h]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_476679
mov     byte ptr [esi+8], 1

loc_476679:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_476641 endp




sub_47667E proc near

var_24= word ptr -24h
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
add     eax, 408h
mov     [esp+24h+var_1C], eax
mov     edi, esp
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     ax, [eax+1Eh]
add     [esp+24h+var_24], ax
mov     eax, [esp+24h+var_1C]
mov     ax, [eax+20h]
add     [esp+24h+var_20], ax
cmp     byte ptr [ebp+0ACh], 2
jnz     short loc_4766C0
mov     eax, 0C8h
jmp     short loc_4766C5

loc_4766C0:
mov     eax, 20h ; ' '

loc_4766C5:
movsx   ecx, ax
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     edx, esp
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_4769D1
mov     eax, [ebp+12h]
sar     eax, 10h
mov     ecx, [esp-2]
sar     ecx, 10h
sub     eax, ecx
mov     ecx, eax
mov     eax, [ebp+16h]
sar     eax, 10h
mov     edx, [esp+2]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [esp+24h+var_1C]
mov     eax, [eax+1Ah]
sar     eax, 10h
imul    eax, eax
imul    ecx, ecx
imul    edx, edx
add     edx, ecx
cmp     edx, eax
jl      short loc_4767CC
xor     edx, edx
mov     dl, [ebp+3]
shl     edx, 3
mov     eax, edx
shl     eax, 3
sub     eax, edx
mov     edx, ds:dword_51785E[eax]
sar     edx, 10h
push    edx
mov     eax, ds:(off_51785A+2)[eax]
sar     eax, 10h
push    eax
mov     eax, [esp+2Ch+var_1C]
mov     edx, [eax+4]
push    edx
mov     ecx, [eax]
push    ecx
mov     ebx, [ebp+18h]
push    ebx
mov     esi, [ebp+14h]
push    esi
call    sub_476988
test    al, al
jnz     short loc_4767D0
mov     eax, [esp+24h+var_1C]
mov     dword ptr [eax+10h], offset unk_517804
xor     edx, edx
mov     dl, [ebp+3]
shl     edx, 3
mov     eax, edx
shl     eax, 3
sub     eax, edx
mov     edx, offset off_51782E
add     edx, eax
mov     eax, [esp+24h+var_1C]
mov     [eax+0Ch], edx

loc_4767CC:
mov     byte ptr [ebp+8], 1

loc_4767D0:
add     esp, 0Ch
jmp     loc_4762C9
sub_47667E endp




sub_4767D8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     edx, [eax+408h]
test    byte ptr [edx+43h], 8
jz      short loc_47681C
mov     dword ptr [edx+10h], offset unk_517814
cmp     byte ptr [edx+15h], 1
ja      short loc_476813
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
add     eax, offset off_51782E
add     eax, 20h ; ' '
mov     [edx+0Ch], eax

loc_476813:
mov     byte ptr [ecx+8], 1
jmp     loc_4762C9

loc_47681C:
mov     bl, [ecx+9]
cmp     bl, 5
jz      loc_4762C9
cmp     bl, 6
jz      loc_4762C9
test    byte ptr [edx+14h], 1
jnz     loc_47691C
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
mov     ebx, ds:dword_51785E[eax]
sar     ebx, 10h
push    ebx
mov     eax, ds:(off_51785A+2)[eax]
sar     eax, 10h
push    eax
mov     eax, [edx+4]
push    eax
mov     ebx, [edx]
push    ebx
mov     esi, ds:dword_5F837A+2
push    esi
mov     edi, ds:dword_5F8376+2
push    edi
call    sub_476988
test    al, al
jz      loc_4762C9
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
mov     ebx, ds:dword_517862[eax]
sar     ebx, 10h
push    ebx
mov     eax, ds:(dword_51785E+2)[eax]
sar     eax, 10h
push    eax
mov     ebp, [ecx+18h]
push    ebp
mov     eax, [ecx+14h]
push    eax
mov     ebx, ds:dword_5F837A+2
push    ebx
mov     esi, ds:dword_5F8376+2
push    esi
call    sub_476988
test    al, al
jz      loc_4762C9
cmp     byte ptr [ecx+0ACh], 0
jnz     short loc_4768E8
mov     bh, byte ptr ds:dword_5F836C+1
cmp     bh, 7
jnb     short loc_4768E8
cmp     bh, 2
jz      short loc_4768E8
cmp     bh, 3
jnz     loc_4762C9

loc_4768E8:
or      byte ptr [edx+14h], 1
cmp     byte ptr [edx+15h], 0
jz      loc_4762C9
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
add     eax, offset off_51782E
add     eax, 10h
mov     [edx+0Ch], eax
mov     dword ptr [edx+10h], offset unk_5177F7
jmp     loc_476813

loc_47691C:
xor     ebx, ebx
mov     bl, [ecx+3]
shl     ebx, 3
mov     eax, ebx
shl     eax, 3
sub     eax, ebx
mov     ebx, ds:dword_51785E[eax]
sar     ebx, 10h
push    ebx
mov     eax, ds:(off_51785A+2)[eax]
sar     eax, 10h
push    eax
mov     ebx, [edx+4]
push    ebx
mov     esi, [edx]
push    esi
mov     edi, ds:dword_5F837A+2
push    edi
mov     ebp, ds:dword_5F8376+2
push    ebp
call    sub_476988
test    al, al
jnz     loc_4762C9
and     byte ptr [edx+14h], 0FEh
mov     cl, [ecx+3]
mov     eax, ecx
and     eax, 0FFh
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
mov     ecx, offset off_51782E
add     ecx, eax
mov     [edx+0Ch], ecx
jmp     loc_4762C9
sub_4767D8 endp




sub_476988 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h

push    edx
mov     eax, [esp+4+arg_0]
sub     eax, [esp+4+arg_8]
add     eax, [esp+4+arg_10]
xor     edx, edx
mov     dx, ax
mov     eax, [esp+16h]
sar     eax, 10h
add     eax, eax
cmp     edx, eax
jge     short loc_4769CB
mov     eax, [esp+4+arg_4]
sub     eax, [esp+4+arg_C]
add     eax, [esp+4+arg_14]
xor     edx, edx
mov     dx, ax
mov     eax, [esp+4+arg_10+2]
sar     eax, 10h
add     eax, eax
cmp     edx, eax
jge     short loc_4769CB
mov     al, 1
pop     edx
retn    18h

loc_4769CB:
xor     al, al
pop     edx
retn    18h
sub_476988 endp




sub_4769D1 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
mov     bx, [ecx+30h]
dec     bx
mov     [ecx+30h], bx
jnz     short loc_476A2D
mov     eax, [ecx+2Ch]
mov     di, [eax]
test    di, di
jz      short loc_476A03
add     edx, 14h
mov     eax, edi
and     eax, 0FFFFh
call    sub_4D8BC3

loc_476A03:
mov     eax, [ecx+2Ch]
mov     ax, [eax+2]
mov     [ecx+30h], ax
mov     edx, [ecx+2Ch]
add     edx, 4
mov     [ecx+2Ch], edx
mov     eax, edx
cmp     word ptr [edx], 0FFFFh
jnz     short loc_476A2D
xor     edx, edx
mov     dx, [eax+2]
shl     edx, 2
sub     eax, edx
mov     [ecx+2Ch], eax

loc_476A2D:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4769D1 endp




sub_476A32 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edx, eax
xor     bl, bl
mov     ax, [eax+14h]
mov     word ptr [esp+20h+var_20], ax
mov     ax, [edx+30h]
mov     word ptr [esp+20h+var_1C], ax
push    0FAh
push    0AAh
mov     ecx, [esp+28h+var_1C]
push    ecx
mov     esi, [esp+2Ch+var_20]
push    esi
mov     edi, ds:dword_517A8E
push    edi
mov     ebp, ds:dword_517A8A
push    ebp
call    sub_476988
test    al, al
jz      short loc_476A8B
mov     ax, [edx+2Ch]
mov     [edx+14h], ax
mov     eax, [edx+34h]
mov     [edx+1Ch], eax
mov     bl, 1

loc_476A8B:
mov     ax, [edx+2Ch]
mov     word ptr [esp+20h+var_20], ax
mov     ax, [edx+18h]
mov     word ptr [esp+20h+var_1C], ax
push    0FAh
push    0AAh
mov     eax, [esp+28h+var_1C]
push    eax
mov     ecx, [esp+2Ch+var_20]
push    ecx
mov     esi, ds:dword_517A8E
push    esi
mov     edi, ds:dword_517A8A
push    edi
call    sub_476988
test    al, al
jz      short loc_476AD8
mov     ax, [edx+30h]
mov     [edx+18h], ax
mov     eax, [edx+3Ch]
mov     [edx+24h], eax
or      bl, 2

