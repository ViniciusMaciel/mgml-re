loc_45C28E:
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 21A021Ah
mov     dword ptr [ebp+15Ch], 21Ah
mov     word ptr [ebp+15Eh], 4210h
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax], 0
mov     dword ptr [eax+4], 0
mov     edi, offset unk_55A03C
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     eax, 0Ch
mov     ecx, 100h
mov     edx, offset unk_55A03C
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_51665C
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45C366
add     esp, 4

loc_45C35F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C26A endp




sub_45C366 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     [ecx+2], ax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_45C3B3[edx*4]
test    byte ptr [ecx], 1
jz      short loc_45C3CC
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_45C3CC:
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_45C3ED
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_45C3F4

loc_45C3ED:
mov     eax, ebp
call    sub_4DEB53

loc_45C3F4:
mov     ax, [ecx+0Ah]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 2
jz      short loc_45C41E
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45C41E:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697
jmp     loc_45C35F
sub_45C366 endp



; Attributes: thunk

sub_45C436 proc near
jmp     sub_4DE2F6
sub_45C436 endp




sub_45C43B proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45C44F
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C44F:
pop     edx
retn
sub_45C43B endp




sub_45C451 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45C463
jbe     short loc_45C473
cmp     dl, 2
jz      short loc_45C488
pop     edx
retn

loc_45C463:
test    dl, dl
jnz     short loc_45C49D
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C473:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45C49D
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45C488:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45C49D
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C49D:
pop     edx
retn
sub_45C451 endp




sub_45C49F proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+408h]
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_45C4BF
cmp     al, 1
jz      short loc_45C4D3
jmp     short loc_45C503

loc_45C4BF:
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     ax, [esi+0Ch]
mov     [esi+64h], ax

loc_45C4D3:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+8]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     edx, [ebp+14h]
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [edi+0Ah]
and     ah, 0Fh
mov     [edi+0Ah], ax

loc_45C503:
test    byte ptr [esi+0Fh], 2
jz      loc_45C35F
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45C522
mov     byte ptr [esi+0ACh], 8
jmp     loc_45C35F

loc_45C522:
cmp     byte ptr [esi+0A7h], 0
jge     loc_45C35F
mov     byte ptr [esi+0ACh], 0
jmp     loc_45C35F
sub_45C49F endp




sub_45C53B proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45C541[edx*4]
pop     edx
retn
sub_45C53B endp




sub_45C54A proc near

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
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 21A021Ah
mov     dword ptr [ebp+15Ch], 21Ah
mov     word ptr [ebp+15Eh], 4210h
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax], 2
mov     dword ptr [eax+4], 0
mov     edi, offset unk_55A04C
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     eax, 0Ch
mov     ecx, 100h
mov     edx, offset unk_55A04C
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+0Ah], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_516684
mov     dword ptr [ebp+10h], offset unk_516690
mov     dl, [ebp+3]
test    dl, dl
jz      short loc_45C61E
mov     byte ptr [ebp+9], 1
jmp     short loc_45C621

loc_45C61E:
mov     [ebp+9], dl

loc_45C621:
mov     byte ptr [ebp+8], 1
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45C647
add     esp, 4

loc_45C640:
pop     ebp

loc_45C641:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C54A endp




sub_45C647 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     [ecx+2], ax
test    byte ptr [ecx], 2
jz      short loc_45C699
mov     eax, ebp
call    sub_45C920

loc_45C699:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_45C6A0[edx*4]
test    byte ptr [ecx], 1
jz      short loc_45C6B9
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_45C6B9:
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_45C6D8
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_45C6DF

loc_45C6D8:
mov     eax, ebp
call    sub_4DEB53

loc_45C6DF:
mov     ax, [ecx+0Ah]
mov     ds:word_560E16, ax
mov     eax, ebp
call    sub_4DF795
test    byte ptr [ebp+0], 1
jz      short loc_45C709
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_45C709:
test    byte ptr [ebp+0], 2
jz      loc_45C640
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_45C640
sub_45C647 endp



; Attributes: thunk

sub_45C72B proc near
jmp     sub_4DE2F6
sub_45C72B endp




sub_45C730 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45C744
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C744:
pop     edx
retn
sub_45C730 endp




sub_45C746 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45C758
jbe     short loc_45C768
cmp     dl, 2
jz      short loc_45C77D
pop     edx
retn

loc_45C758:
test    dl, dl
jnz     short loc_45C792
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C768:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45C792
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45C77D:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45C792
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45C792:
pop     edx
retn
sub_45C746 endp




sub_45C794 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45C7AF
jbe     short loc_45C7C9
jmp     loc_45C641

loc_45C7AF:
test    al, al
jnz     loc_45C641
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+64h], 20h ; ' '

loc_45C7C9:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     eax, [esi+54h]
sar     eax, 10h
mov     ebx, [edi+8]
sar     ebx, 10h
add     ebx, eax
and     ebx, 0FFFh
lea     eax, [esi+14h]
mov     edx, offset unk_5166AC
call    sub_4DE552
mov     bx, [edi+0Ah]
add     ebx, eax
and     bh, 0Fh
mov     [edi+0Ah], bx
test    ax, ax
jnz     loc_45C641
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     eax, 609h
call    sub_47E8B8
jmp     loc_45C641
sub_45C794 endp




sub_45C81F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45C833
jbe     short loc_45C864
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C833:
test    al, al
jnz     loc_45C91B
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 2Ch ; ','
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     ax, ds:word_5166A2[eax*8]
mov     [esi+64h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C864:
cmp     byte ptr [esi+0A6h], 0
jz      short loc_45C87B
xor     ebx, ebx
xor     edx, edx
mov     eax, 0D7h
call    sub_4D89E4

loc_45C87B:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [esi+0Ah]
sar     edx, 18h
shl     edx, 3
add     edx, (offset dword_51669A+2)
lea     eax, [esi+14h]
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
mov     ecx, [esi+0Ah]
sar     ecx, 18h
mov     edx, ds:dword_51669A[ecx*8]
sar     edx, 10h
mov     ebx, [esi+12h]
sar     ebx, 10h
sub     ebx, edx
mov     edx, ebx
mov     eax, ds:dword_51669E[ecx*8]
sar     eax, 10h
mov     ebx, [esi+16h]
sar     ebx, 10h
sub     ebx, eax
mov     eax, ebx
imul    edx, edx
imul    eax, ebx
add     edx, eax
cmp     edx, ds:dword_5166B4[ecx*4]
jnb     short loc_45C91B
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0
mov     eax, 608h
call    sub_47E8B8

loc_45C91B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C81F endp




sub_45C920 proc near
push    ecx
cmp     eax, ds:dword_5F84E8
jnz     short loc_45C93B
mov     eax, 605h
call    sub_47E8B8
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_45C93B:
mov     eax, 1
pop     ecx
retn
sub_45C920 endp




sub_45C942 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_45C958
cmp     al, 1
jz      short loc_45C9CE
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C958:
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+78h], 0
mov     dword ptr [esi+10h], 0
mov     dword ptr [esi+158h], 21A021Ah
mov     dword ptr [esi+15Ch], 21Ah
mov     word ptr [esi+15Eh], 4210h
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
mov     word ptr [esi+4Ch], 0
mov     word ptr [esi+4Eh], 0
mov     word ptr [esi+50h], 0
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45C9CE:
cmp     word ptr [esi+44h], 0
jz      short loc_45C9FC
test    byte ptr ds:word_77EAB6, 7
jnz     short loc_45C9EB
lea     edx, [esi+14h]
mov     eax, 10Bh
call    sub_4D8BC3

loc_45C9EB:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B

loc_45C9FC:
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_45CA0B
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45CA1E

loc_45CA0B:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45CA1E:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45C942 endp




sub_45CA36 proc near
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
call    sub_45CAC2
test    byte ptr [ebp+0], 2
jz      short loc_45CA76
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45CA76:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45CA86
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45CA8D

loc_45CA86:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45CA8D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45CA36 endp

db 8Bh, 0C0h
jpt_45CAD8 dd offset loc_45CADF ; jump table for switch statement
dd offset loc_45CB04
dd offset loc_45CB4F
dd offset loc_45CB71
dd offset loc_45CB8B
dd offset loc_45CB71
dd offset loc_45CBAD
dd offset loc_45CBD2
dd offset loc_45CBFA
dd offset loc_45CC25
dd offset loc_45CC51



sub_45CAC2 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 0Ah         ; switch 11 cases
ja      def_45CAD8      ; jumptable 0045CAD8 default case
and     eax, 0FFh
jmp     jpt_45CAD8[eax*4] ; switch jump

loc_45CADF:             ; jumptable 0045CAD8 case 0
mov     eax, esi
call    sub_45CC70
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 46h ; 'F'
jmp     def_45CAD8      ; jumptable 0045CAD8 default case

loc_45CB04:             ; jumptable 0045CAD8 case 1
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_45CCF2
mov     al, [esi+0Ah]
dec     al
mov     [esi+0Ah], al
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B1h

loc_45CB3C:
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     def_45CAD8      ; jumptable 0045CAD8 default case

loc_45CB4F:             ; jumptable 0045CAD8 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B2h
jmp     short loc_45CB3C

loc_45CB71:             ; jumptable 0045CAD8 cases 3,5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
call    sub_49DF64
inc     byte ptr [esi+8]
jmp     def_45CAD8      ; jumptable 0045CAD8 default case

loc_45CB8B:             ; jumptable 0045CAD8 case 4
cmp     ds:byte_560BE5, 2
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B4h
jmp     short loc_45CB3C

loc_45CBAD:             ; jumptable 0045CAD8 case 6
cmp     ds:byte_560BE5, 4
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     edx, 0B6h
jmp     loc_45CB3C

loc_45CBD2:             ; jumptable 0045CAD8 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45CAD8      ; jumptable 0045CAD8 default case
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 3Ch ; '<'
jmp     short def_45CAD8 ; jumptable 0045CAD8 default case

loc_45CBFA:             ; jumptable 0045CAD8 case 8
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, 834h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_45CC25 ; jumptable 0045CAD8 case 9
inc     byte ptr [esi+8]

loc_45CC25:             ; jumptable 0045CAD8 case 9
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_45CCF2
mov     dl, [esi+0Ah]
dec     dl
mov     [esi+0Ah], dl
jnz     short def_45CAD8 ; jumptable 0045CAD8 default case
call    sub_49DF64
mov     byte ptr [esi+8], 0Ah
jmp     short def_45CAD8 ; jumptable 0045CAD8 default case

loc_45CC51:             ; jumptable 0045CAD8 case 10
mov     eax, esi
call    sub_4DE2F6

def_45CAD8:             ; jumptable 0045CAD8 default case
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
sub_45CAC2 endp




sub_45CC70 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 40h ; '@'
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 21A021Ah
mov     dword ptr [ecx+15Ch], 21Ah
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
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45CC70 endp




sub_45CCF2 proc near
push    edx
mov     dl, [eax+0A4h]
cmp     dl, 7
jz      short loc_45CD03
cmp     dl, 17h
jnz     short loc_45CD10

loc_45CD03:
lea     edx, [eax+14h]
mov     eax, 10Ch
call    sub_4D8BC3

loc_45CD10:
pop     edx
retn
sub_45CCF2 endp




sub_45CD12 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45CD18[edx*4]
pop     edx
retn
sub_45CD12 endp




sub_45CD21 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     edi, offset unk_55A05C
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
mov     edx, offset unk_55A05C
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_5166E0
mov     dword ptr [ebp+10h], offset unk_5166EC
mov     dl, [ebp+3]
test    dl, dl
jnz     short loc_45CDE9
mov     byte ptr [ebp+8], 1
mov     [ebp+9], dl
jmp     short loc_45CDF1

loc_45CDE9:
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 5

loc_45CDF1:
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45CE10

def_45CF88:             ; jumptable 0045CF88 default case
pop     ebp             ; jumptable 0045D192 default case, case 3
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45CD21 endp




sub_45CE10 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
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
call    ds:funcs_45CE5D[ecx*4]
test    byte ptr [edx], 1
jz      short loc_45CE77
mov     al, [ebp+9]
test    al, al
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_45CE77:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_45CE96
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45CE9D

loc_45CE96:
mov     eax, ebp
call    sub_4DEADD

loc_45CE9D:
test    byte ptr [ebp+0], 2
jz      short loc_45CEB6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45CEB6:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45CE10 endp         ; jumptable 0045D192 default case, case 3



; Attributes: thunk

sub_45CECE proc near
jmp     sub_4DE2F6
sub_45CECE endp




sub_45CED3 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45CEE7
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45CEE7:
pop     edx
retn
sub_45CED3 endp




sub_45CEE9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_45CF07
cmp     al, 1
jz      short loc_45CF19
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45CF07:
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+64h], 20h ; ' '

loc_45CF19:
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
lea     edi, [edx+0Ch]
lea     esi, [eax+14h]
movsd
movsd
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     edx, 0Ch
lea     eax, [ebp+14h]
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45CEE9 endp         ; jumptable 0045D192 default case, case 3

db 8Dh, 40h, 0
jpt_45CF88 dd offset loc_45CF8F ; jump table for switch statement
dd offset loc_45CFA1
dd offset loc_45CFE0
dd offset loc_45CFFC



sub_45CF66 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
mov     esi, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
xor     ecx, ecx
mov     cl, al
jmp     jpt_45CF88[ecx*4] ; switch jump

loc_45CF8F:             ; jumptable 0045CF88 case 0
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+64h], 20h ; ' '

loc_45CFA1:             ; jumptable 0045CF88 case 1
lea     edi, [edx+0Ch]
lea     esi, [esi+14h]
movsd
movsd
mov     ecx, [ebp+62h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     edx, 0Ch
lea     eax, [ebp+14h]
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0

loc_45CFE0:             ; jumptable 0045CF88 case 2
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 8
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45CFFC:             ; jumptable 0045CF88 case 3
cmp     byte ptr [ebp+0A7h], 0
jge     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
dec     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 0
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45CF66 endp         ; jumptable 0045D192 default case, case 3




sub_45D01A proc near

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
cmp     al, 1
jb      short loc_45D03B
jbe     short loc_45D071
jmp     loc_45D111

loc_45D03B:
test    al, al
jnz     loc_45D111
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [ebp+44h], 30h ; '0'
mov     word ptr [ebp+64h], 20h ; ' '
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [eax+14h]
movsd
movsd

loc_45D071:
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
jnz     short loc_45D0BE
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Dh
call    sub_4D89E4

loc_45D0BE:
mov     eax, [ebp+12h]
sar     eax, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Ah]
sar     edx, 10h
sub     eax, edx
mov     ecx, [ebp+16h]
sar     ecx, 10h
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+0Eh]
sar     edx, 10h
sub     ecx, edx
mov     edx, ecx
imul    eax, eax
imul    edx, ecx
add     eax, edx
cmp     eax, 800h
jge     short loc_45D111
inc     byte ptr [ebp+0Ah]
mov     byte ptr [ebp+0ACh], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+64h], 0
mov     eax, 606h
call    sub_47E8B8

loc_45D111:
add     esp, 4
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45D01A endp         ; jumptable 0045D192 default case, case 3




sub_45D119 proc near
push    edx
mov     dl, [eax+0Ah]
cmp     dl, 1
jb      short loc_45D12B
jbe     short loc_45D13B
cmp     dl, 2
jz      short loc_45D150
pop     edx
retn

loc_45D12B:
test    dl, dl
jnz     short loc_45D165
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45D13B:
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_45D165
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 8
pop     edx
retn

loc_45D150:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_45D165
dec     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45D165:
pop     edx
retn
sub_45D119 endp

db 8Dh, 40h, 0
jpt_45D192 dd offset loc_45D199 ; jump table for switch statement
dd offset loc_45D234
dd offset loc_45D277
dd offset def_45CF88



sub_45D17A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
and     eax, 0FFh
jmp     jpt_45D192[eax*4] ; switch jump

loc_45D199:             ; jumptable 0045D192 case 0
mov     edx, ds:dword_5F84E8
cmp     esi, edx
jnz     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
mov     eax, 604h
call    sub_47E8B8
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
inc     byte ptr [edx+0Ah]
mov     byte ptr [edx+0Bh], 10h
mov     byte ptr [edx+0ACh], 0
mov     ebx, [edx+54h]
sar     ebx, 10h
mov     edi, offset byte_5F8364
add     edi, 14h
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_45D202
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
neg     eax
jmp     short loc_45D216

loc_45D202:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552

loc_45D216:
sar     eax, 3
mov     [esi+64h], ax
mov     word ptr [esi+44h], 0
mov     word ptr [esi+46h], 0
mov     word ptr [esi+48h], 0
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45D234:             ; jumptable 0045D192 case 1
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
mov     byte ptr [esi+0ACh], 8
inc     byte ptr [esi+0Ah]
jmp     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3

loc_45D277:             ; jumptable 0045D192 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     def_45CF88      ; jumptable 0045CF88 default case
; jumptable 0045D192 default case, case 3
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [esi+0Ah]
jmp     def_45CF88      ; jumptable 0045CF88 default case
sub_45D17A endp         ; jumptable 0045D192 default case, case 3




sub_45D2BA proc near
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
call    ds:funcs_45D2E1[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_45D301
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45D301:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45D311
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45D318

loc_45D311:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45D318:
pop     ebp

def_45D378:             ; jumptable 0045D378 default case, case 9
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45D2BA endp

db 8Dh, 40h, 0
jpt_45D378 dd offset loc_45D37F ; jump table for switch statement
dd offset loc_45D38B
dd offset loc_45D3B0
dd offset loc_45D3C4
dd offset loc_45D3FF
dd offset loc_45D420
dd offset loc_45D42C
dd offset loc_45D480
dd offset loc_45D4FF
dd offset def_45D378
dd offset loc_45D515



sub_45D34E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     eax, offset dword_560BDC
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_45D36C
mov     byte ptr [esi+8], 0Ah

loc_45D36C:
mov     dl, [esi+8]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_45D378 ; jumptable 0045D378 default case, case 9
xor     ebx, ebx
mov     bl, dl
jmp     jpt_45D378[ebx*4] ; switch jump

loc_45D37F:             ; jumptable 0045D378 case 0
mov     eax, esi
call    sub_45D611

loc_45D386:
inc     byte ptr [esi+8]
jmp     short def_45D378 ; jumptable 0045D378 default case, case 9

loc_45D38B:             ; jumptable 0045D378 case 1
cmp     byte ptr ds:dword_77E784+1, 2
jnz     short def_45D378 ; jumptable 0045D378 default case, case 9
mov     edx, 29h ; ')'
xor     eax, eax
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
jmp     short loc_45D386

loc_45D3B0:             ; jumptable 0045D378 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
call    sub_49DF64
jmp     short loc_45D386

loc_45D3C4:             ; jumptable 0045D378 case 3
cmp     byte ptr [eax+9], 1
jnz     short loc_45D3F5
mov     eax, [esi+62h]
sar     eax, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     edi, [esi+14h]
mov     ecx, eax
mov     eax, edi
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D3F5:
inc     dl
mov     [esi+8], dl
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D3FF:             ; jumptable 0045D378 case 4
cmp     byte ptr [eax+9], 3
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     word ptr [esi+14h], 0A0h
mov     word ptr [esi+18h], 0FED4h
mov     word ptr [esi+56h], 700h
jmp     loc_45D386

loc_45D420:             ; jumptable 0045D378 case 5
cmp     byte ptr [eax+9], 5
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
jmp     short loc_45D3F5

loc_45D42C:             ; jumptable 0045D378 case 6
mov     eax, [esi+62h]
sar     eax, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     edi, [esi+14h]
mov     ecx, eax
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
call    sub_42ABA2
test    eax, eax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     edx, 30h ; '0'
call    sub_4A0E24

loc_45D474:
inc     byte ptr [esi+8]

loc_45D477:
mov     byte ptr [esi+9], 0
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D480:             ; jumptable 0045D378 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_45D4A4
call    sub_49DF64
mov     byte ptr [esi+8], 0Ah
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D4A4:
mov     eax, [esi+62h]
sar     eax, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [ecx+14h]
lea     edi, [esi+14h]
mov     ecx, eax
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
call    sub_42ABA2
test    eax, eax
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     edx, 31h ; '1'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
jmp     loc_45D474

loc_45D4FF:             ; jumptable 0045D378 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_45D378      ; jumptable 0045D378 default case, case 9
mov     byte ptr [esi+8], 6
jmp     def_45D378      ; jumptable 0045D378 default case, case 9

loc_45D515:             ; jumptable 0045D378 case 10
mov     byte ptr [esi+3], 1
mov     byte ptr [esi+8], 1
jmp     loc_45D477
sub_45D34E endp

jpt_45D54C dd offset loc_45D553 ; jump table for switch statement
dd offset loc_45D562
dd offset loc_45D573
dd offset loc_45D5CB
dd offset loc_45D5DE



sub_45D536 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45D54C      ; jumptable 0045D54C default case
and     eax, 0FFh
jmp     jpt_45D54C[eax*4] ; switch jump

loc_45D553:             ; jumptable 0045D54C case 0
mov     eax, esi
call    sub_45D611

loc_45D55A:
inc     byte ptr [esi+8]
jmp     def_45D54C      ; jumptable 0045D54C default case

loc_45D562:             ; jumptable 0045D54C case 1
mov     eax, esi
call    sub_45D6BD
test    eax, eax
jz      def_45D54C      ; jumptable 0045D54C default case
jmp     short loc_45D55A

loc_45D573:             ; jumptable 0045D54C case 2
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
jnz     short def_45D54C ; jumptable 0045D54C default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45D54C ; jumptable 0045D54C default case
mov     edx, 49h ; 'I'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45D54C ; jumptable 0045D54C default case

loc_45D5CB:             ; jumptable 0045D54C case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45D54C ; jumptable 0045D54C default case
call    sub_42A98E
jmp     loc_45D55A

loc_45D5DE:             ; jumptable 0045D54C case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45D54C ; jumptable 0045D54C default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45D54C:             ; jumptable 0045D54C default case
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
sub_45D536 endp




sub_45D611 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 12Ch
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
mov     dword ptr [ecx+10h], offset unk_516700
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_45D611 endp




sub_45D6BD proc near

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
jnz     loc_45D7A2
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
jge     short loc_45D717
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45D72D

loc_45D717:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45D72D:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A06C, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A070, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A074, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A06C
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45D7A4

loc_45D7A2:
xor     eax, eax

loc_45D7A4:
add     esp, 4
jmp     loc_45D318
sub_45D6BD endp




sub_45D7AC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     word ptr [eax+15Eh], 4210h
test    byte ptr [eax], 2
jz      short loc_45D7D3
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4ED88B

loc_45D7D3:
xor     edx, edx
mov     dl, [esi+3]
mov     eax, esi
call    ds:funcs_45D7DA[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_45D7F5
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_45D801

loc_45D7F5:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_45D801:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45D7AC endp




sub_45D80D proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45D813[edx*4]
pop     edx
retn
sub_45D80D endp




sub_45D81C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45D822[edx*4]
pop     edx
retn
sub_45D81C endp




sub_45D82B proc near
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
mov     dword ptr [ecx+10h], offset unk_516734
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

loc_45D905:
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
sub_45D82B endp




sub_45D925 proc near

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
jnz     loc_45D9CA
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
mov     ds:word_55A07C, ax
mov     byte ptr [esi+8], 2
jmp     short loc_45D9EC

loc_45D9CA:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_45D9D9
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45D9EC

loc_45D9D9:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45D9EC:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45D925 endp




sub_45D9F6 proc near
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
jnz     short loc_45DA1D
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45DA1D:
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
sub_45D9F6 endp




sub_45DA35 proc near
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
mov     dword ptr [ecx+10h], offset unk_516734
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
jmp     loc_45D905
sub_45DA35 endp




sub_45DB10 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_55A07A
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_45DB79
call    sub_42ABA2
test    eax, eax
jnz     short loc_45DB79
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

loc_45DB79:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45DB10 endp




sub_45DB85 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_45DBAD
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

loc_45DBAD:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45DB85 endp




sub_45DBB8 proc near
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
jnz     short loc_45DC14
call    sub_42ABA2
test    eax, eax
jnz     short loc_45DC14
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

loc_45DC14:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45DBB8 endp




sub_45DC1F proc near
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
call    ds:funcs_45DC46[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_45DC66
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45DC66:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_45DC76
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45DC7D

loc_45DC76:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45DC7D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45DC1F endp




sub_45DC84 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ah, [eax]
or      ah, 2
mov     [esi], ah
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
lea     edi, [esi+14h]
mov     ecx, 800h
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
test    ax, ax
jge     short loc_45DCDE
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
movsx   ebx, ax
neg     ebx
jmp     short loc_45DCF5

loc_45DCDE:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
movsx   ebx, ax

loc_45DCF5:
sar     ebx, 3
mov     [esi+64h], bx
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     ebx, [esi+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [esi+20h], ebx
mov     word ptr [esi+6Eh], 0
mov     ax, [esi+6Eh]
mov     [esi+0B0h], ax
mov     [esi+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0
jmp     loc_45DC7D
sub_45DC84 endp

db 8Dh, 40h, 0
jpt_45DDA2 dd offset loc_45DDA9 ; jump table for switch statement
dd offset loc_45DDDA
dd offset loc_45DE49
dd offset loc_45DEE6
dd offset loc_45DEF9



sub_45DD87 proc near

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
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_45DDA2      ; jumptable 0045DDA2 default case
and     eax, 0FFh
jmp     jpt_45DDA2[eax*4] ; switch jump

loc_45DDA9:             ; jumptable 0045DDA2 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_45DDA2      ; jumptable 0045DDA2 default case
mov     byte ptr ds:dword_5F836C, 3
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
xor     edx, edx
mov     ds:dword_5F8370, edx

loc_45DDD2:
inc     byte ptr [esi+0Ah]
jmp     def_45DDA2      ; jumptable 0045DDA2 default case

loc_45DDDA:             ; jumptable 0045DDA2 case 1
cmp     ds:word_6E23D6, 0
jnz     def_45DDA2      ; jumptable 0045DDA2 default case
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+2Ch+var_2C], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+2Ch+var_28], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
and     ds:byte_5F8364, 0FDh
jmp     short loc_45DDD2

loc_45DE49:             ; jumptable 0045DDA2 case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
lea     edi, [esi+14h]
mov     edx, ebp
mov     eax, edi
call    sub_4DE552
mov     word ptr [esp+2Ch+var_1C], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, ds:dword_5F83B8
sar     ebx, 10h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, [esp+2Ch+var_1C]
and     dh, 0Fh
mov     [esi+56h], dx
mov     dx, word ptr ds:dword_5F88A4+2
add     edx, eax
and     dh, 0Fh
mov     word ptr ds:dword_5F88A4+2, dx
mov     edx, [esp+0Eh]
sar     edx, 10h
cwde
add     eax, edx
jnz     def_45DDA2      ; jumptable 0045DDA2 default case
call    sub_42ABA2
test    eax, eax
jnz     def_45DDA2      ; jumptable 0045DDA2 default case
mov     edx, 35h ; '5'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+9], 0
jmp     short def_45DDA2 ; jumptable 0045DDA2 default case

loc_45DEE6:             ; jumptable 0045DDA2 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45DDA2 ; jumptable 0045DDA2 default case
call    sub_42A98E
jmp     loc_45DDD2

loc_45DEF9:             ; jumptable 0045DDA2 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45DDA2 ; jumptable 0045DDA2 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [esi+0Bh], 0
mov     al, [esi+0Bh]
mov     [esi+0Ah], al
mov     [esi+9], al
mov     [esi+8], al
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Fh], 0
mov     al, [esi+0Fh]
mov     [esi+0Eh], al
mov     [esi+0Dh], al
mov     byte ptr [esi+4], 1

def_45DDA2:             ; jumptable 0045DDA2 default case
add     esp, 14h
jmp     loc_45DC7D
sub_45DD87 endp



; Attributes: thunk

sub_45DF40 proc near
jmp     sub_4DE2F6
sub_45DF40 endp




sub_45DF45 proc near
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
call    ds:funcs_45DF6C[edx*4]
mov     dl, [ebp+0ADh]
mov     ah, [ebp+0ACh]
cmp     dl, ah
jz      short loc_45DF92
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45DF99

loc_45DF92:
mov     eax, ebp
call    sub_4DEADD

loc_45DF99:
test    byte ptr [ebp+0], 2
jz      short loc_45DFB2
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_45DFB2:
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl
sub_45DF45 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_45E13A

loc_45DFBE:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_45E13A



sub_45DFC5 proc near
push    edx
mov     edx, eax
mov     al, [eax+8]
test    al, al
jnz     short loc_45DFD9
mov     eax, edx
call    sub_45E0BB
inc     byte ptr [edx+8]

loc_45DFD9:
pop     edx
retn
sub_45DFC5 endp

db 8Bh, 0C0h
jpt_45E007 dd offset loc_45E00E ; jump table for switch statement
dd offset loc_45E01D
dd offset loc_45E02E
dd offset loc_45E078
dd offset loc_45E088



sub_45DFF1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45E007      ; jumptable 0045E007 default case
and     eax, 0FFh
jmp     jpt_45E007[eax*4] ; switch jump

loc_45E00E:             ; jumptable 0045E007 case 0
mov     eax, esi
call    sub_45E0BB

loc_45E015:
inc     byte ptr [esi+8]
jmp     def_45E007      ; jumptable 0045E007 default case

loc_45E01D:             ; jumptable 0045E007 case 1
mov     eax, esi
call    sub_45E13A
test    eax, eax
jz      def_45E007      ; jumptable 0045E007 default case
jmp     short loc_45E015

loc_45E02E:             ; jumptable 0045E007 case 2
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
jnz     short def_45E007 ; jumptable 0045E007 default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45E007 ; jumptable 0045E007 default case
mov     edx, 13h
call    sub_4A0E24
mov     byte ptr [esi+0ACh], 8
jmp     short loc_45E015

loc_45E078:             ; jumptable 0045E007 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45E007 ; jumptable 0045E007 default case
call    sub_42A98E
jmp     short loc_45E015

loc_45E088:             ; jumptable 0045E007 case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45E007 ; jumptable 0045E007 default case
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45E007:             ; jumptable 0045E007 default case
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
sub_45DFF1 endp




sub_45E0BB proc near
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
mov     dword ptr [ecx+10h], offset unk_516754
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
pop     edx
pop     ecx
retn
sub_45E0BB endp




sub_45E13A proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 0045DFBE SIZE 00000007 BYTES

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
jnz     loc_45E21F
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
jge     short loc_45E194
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_45E1AA

loc_45E194:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_45E1AA:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 80h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_55A080, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_55A084, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_55A088, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_55A080
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45E221

loc_45E21F:
xor     eax, eax

loc_45E221:
add     esp, 4
jmp     loc_45DFBE
sub_45E13A endp




sub_45E229 proc near
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
sub_45E229 endp




sub_45E257 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E273
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E273:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E257 endp




sub_45E277 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E293
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E293:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E277 endp




sub_45E297 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E2B3
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E2B3:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E297 endp




sub_45E2B7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E2D3
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E2D3:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E2B7 endp




sub_45E2D7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E2F3
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E2F3:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E2D7 endp




sub_45E2F7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45E30F
jbe     short loc_45E329
cmp     al, 2
jz      short loc_45E358
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45E30F:
test    al, al
jnz     short loc_45E368
xor     ebx, ebx
mov     edx, 18h

loc_45E31A:
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45E329:
mov     eax, [esi+98h]
cmp     byte ptr [eax], 31h ; '1'
jb      short loc_45E344
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h
mov     eax, esi
call    sub_4DD43B

loc_45E344:
mov     eax, [esi+98h]
cmp     byte ptr [eax], 45h ; 'E'
jnz     short loc_45E368
xor     ebx, ebx
mov     edx, 19h
jmp     short loc_45E31A

loc_45E358:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h
mov     eax, esi
call    sub_4DD43B

loc_45E368:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45E2F7 endp




sub_45E36D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45E389
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45E389:
pop     edx
pop     ecx
pop     ebx
retn
sub_45E36D endp




sub_45E38D proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_45E396[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45E3B5
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_45E3B5:
pop     edx
pop     ecx
retn
sub_45E38D endp




sub_45E3B8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_45E3CB
mov     eax, esi
call    sub_45E229

loc_45E3CB:
mov     eax, esi
call    sub_45E38D
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
sub_45E3B8 endp




sub_45E3EA proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45E3F0[edx*4]
pop     edx
retn
sub_45E3EA endp




sub_45E3F9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
cmp     byte ptr [ebp+3], 0
jz      short loc_45E41A
lea     edx, [ebp+3]
jmp     short loc_45E41C

loc_45E41A:
xor     edx, edx

loc_45E41C:
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 1D701D7h
mov     dword ptr [ebp+15Ch], 1D7h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, offset unk_55A090
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
mov     edx, offset unk_55A090
call    sub_4DD4C5
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_516798
mov     dword ptr [ebp+10h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 3
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45E4E3

loc_45E4DC:
pop     ebp

def_45E5EA:             ; jumptable 0045E5EA default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45E3F9 endp




sub_45E4E3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+408h]
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
call    ds:funcs_45E530[ecx*4]
test    byte ptr [edx], 1
jz      short loc_45E549
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_45E549:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_45E568
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45E56F

loc_45E568:
mov     eax, ebp
call    sub_4DEADD

loc_45E56F:
test    byte ptr [ebp+0], 2
jz      short loc_45E588
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_45E588:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697
jmp     loc_45E4DC
sub_45E4E3 endp



; Attributes: thunk

sub_45E5A0 proc near
jmp     sub_4DE2F6
sub_45E5A0 endp




sub_45E5A5 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_45E5B9
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_45E5B9:
pop     edx
retn
sub_45E5A5 endp

db 8Dh, 40h, 0
jpt_45E5EA dd offset loc_45E5F1 ; jump table for switch statement
dd offset loc_45E61B
dd offset loc_45E6BC
dd offset loc_45E6DA



sub_45E5CE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_45E5EA      ; jumptable 0045E5EA default case
xor     edx, edx
mov     dl, al
jmp     jpt_45E5EA[edx*4] ; switch jump

loc_45E5F1:             ; jumptable 0045E5EA case 0
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 3Ch ; '<'
mov     word ptr [esi+64h], 20h ; ' '
mov     word ptr [edi+0Ch], 0F445h
mov     word ptr [edi+0Eh], 0FFFFh
mov     word ptr [edi+10h], 53Bh

loc_45E61B:             ; jumptable 0045E5EA case 1
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Ch]
lea     eax, [esi+14h]
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
cmp     byte ptr [esi+0A6h], 1
jnz     short loc_45E665
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Ch
call    sub_4D89E4

