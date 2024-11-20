loc_4FC23F:
mov     ds:dword_552068[esi], 7FFF0000h
mov     ds:dword_5527E8[esi], 80000000h
add     edi, ds:dword_88776C
add     esi, 4
cmp     esi, 780h
jb      loc_4FC179

loc_4FC268:
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FC0CB endp




sub_4FC26D proc near
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, edx
mov     ebp, ebx
mov     eax, [ebp-2]
mov     ebx, [ebp-1]
mov     edx, [ebp+0]
call    ds:dword_557A68
mov     ds:dword_552058, ecx
movzx   eax, word ptr [ebp+10h]
movzx   ebx, word ptr [ebp+12h]
mov     ebp, ds:dword_88776C
imul    ebp
add     edi, eax
call    ds:dword_557A74
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FC26D endp




sub_4FC2A9 proc near
push    ebp
mov     bp, di
sub     bp, si
jz      loc_4FC441
jg      short loc_4FC2BF
neg     bp
xchg    ebx, edx
xchg    esi, edi

loc_4FC2BF:
and     ebp, 0FFFFh
mov     eax, ebx
mov     ecx, edx
and     eax, 0FFFF0000h
and     ecx, 0FFFF0000h
sub     ecx, eax
mov     cx, dx
sub     cx, bx
cmp     di, 0
jle     loc_4FC441
cmp     si, 1E0h
jge     loc_4FC441
mov     ax, si
cmp     ax, word ptr ds:dword_55204C
jge     short loc_4FC30D
cmp     ax, 0
jge     short loc_4FC307
mov     ax, 0

loc_4FC307:
mov     word ptr ds:dword_55204C, ax

loc_4FC30D:
mov     eax, ebx
and     eax, 0FFFF0000h
mov     ds:dword_552018, eax
shl     ebx, 10h
mov     ds:dword_55201C, ebx
mov     eax, ecx
and     eax, 0FFFF0000h
jz      short loc_4FC33B
or      eax, 8000h
cdq
idiv    ebp
cdq
mov     word ptr ds:dword_552018, dx

loc_4FC33B:
mov     ds:dword_552024, eax
shrd    eax, ecx, 10h
and     eax, 0FFFF0000h
jz      short loc_4FC35B
or      eax, 8000h
cdq
idiv    ebp
cdq
mov     word ptr ds:dword_55201C, dx

loc_4FC35B:
mov     ds:dword_552028, eax
mov     eax, edi
mov     ebx, esi
and     eax, 0FFFF0000h
and     ebx, 0FFFF0000h
mov     ds:dword_552020, ebx
sub     eax, ebx
cdq
idiv    ebp
mov     ds:dword_55202C, eax
cmp     si, 0
jge     short loc_4FC3BE
mov     eax, 0
sub     ax, si
mov     esi, eax
sub     ebp, esi
imul    ds:dword_552024
add     ds:dword_552018, eax
mov     eax, esi
imul    ds:dword_552028
add     ds:dword_55201C, eax
mov     eax, esi
imul    ds:dword_55202C
add     ds:dword_552020, eax
mov     esi, 0

loc_4FC3BE:
sub     di, 1E0h
jle     short loc_4FC3CA
movzx   edi, di
sub     ebp, edi

loc_4FC3CA:
mov     ds:dword_552048, ebp
mov     eax, ds:dword_552018
mov     ebx, ds:dword_552024
mov     ecx, ds:dword_55201C
mov     edx, ds:dword_552028
mov     edi, ds:dword_552020
mov     ebp, ds:dword_55202C
and     esi, 0FFFFh
shl     esi, 2

loc_4FC3FC:
cmp     edi, ds:dword_552068[esi]
jge     short loc_4FC416
mov     ds:dword_552068[esi], edi
mov     ds:dword_552F68[esi], eax
mov     ds:dword_5536E8[esi], ecx

loc_4FC416:
cmp     edi, ds:dword_5527E8[esi]
jle     short loc_4FC430
mov     ds:dword_5527E8[esi], edi
mov     ds:dword_553E68[esi], eax
mov     ds:dword_5545E8[esi], ecx

loc_4FC430:
add     eax, ebx
add     ecx, edx
add     edi, ebp
add     esi, 4
dec     ds:dword_552048
jnz     short loc_4FC3FC

loc_4FC441:
pop     ebp
retn
sub_4FC2A9 endp




sub_4FC443 proc near
push    ebp
mov     bp, di
sub     bp, si
jz      loc_4FC514
jg      short loc_4FC457
neg     bp
xchg    esi, edi

loc_4FC457:
and     ebp, 0FFFFh
cmp     di, 0
jle     loc_4FC514
cmp     si, 1E0h
jge     loc_4FC514
mov     ax, si
cmp     ax, word ptr ds:dword_55204C
jge     short loc_4FC48E
cmp     ax, 0
jge     short loc_4FC488
mov     ax, 0

loc_4FC488:
mov     word ptr ds:dword_55204C, ax

loc_4FC48E:
mov     eax, edi
mov     ebx, esi
and     eax, 0FFFF0000h
and     ebx, 0FFFF0000h
mov     ds:dword_552020, ebx
sub     eax, ebx
cdq
idiv    ebp
mov     ds:dword_55202C, eax
cmp     si, 0
jge     short loc_4FC4CE
mov     eax, 0
sub     ax, si
sub     ebp, eax
imul    ds:dword_55202C
add     ds:dword_552020, eax
mov     esi, 0

loc_4FC4CE:
sub     di, 1E0h
jle     short loc_4FC4DA
movzx   edi, di
sub     ebp, edi

loc_4FC4DA:
mov     ecx, ebp
mov     edi, ds:dword_552020
mov     ebp, ds:dword_55202C
and     esi, 0FFFFh
shl     esi, 2

loc_4FC4F1:
cmp     edi, ds:dword_552068[esi]
jge     short loc_4FC4FF
mov     ds:dword_552068[esi], edi

loc_4FC4FF:
cmp     edi, ds:dword_5527E8[esi]
jle     short loc_4FC50D
mov     ds:dword_5527E8[esi], edi

loc_4FC50D:
add     edi, ebp
add     esi, 4
loop    loc_4FC4F1

loc_4FC514:
pop     ebp
retn
sub_4FC443 endp




sub_4FC516 proc near
push    ebp
mov     bp, di
sub     bp, si
jz      loc_4FC6DA
jg      short loc_4FC52C
neg     bp
xchg    edx, ebx
xchg    esi, edi

loc_4FC52C:
and     ebp, 0FFFFh
mov     eax, ebx
mov     ecx, edx
and     eax, 0FF0000h
and     ecx, 0FF00FFh
sub     ecx, eax
mov     al, bl
xor     ah, ah
sub     cx, ax
mov     al, bh
mov     dl, dh
xor     dh, dh
sub     dx, ax
cmp     di, 0
jle     loc_4FC6DA
cmp     si, 1E0h
jge     loc_4FC6DA
mov     ax, si
cmp     ax, word ptr ds:dword_55204C
jge     short loc_4FC584
cmp     ax, 0
jge     short loc_4FC57E
mov     ax, 0

loc_4FC57E:
mov     word ptr ds:dword_55204C, ax

loc_4FC584:
mov     eax, ebx
and     eax, 0FF0000h
mov     ds:dword_552038, eax
mov     ds:dword_552034, 0
mov     byte ptr ds:dword_552034+2, bh
mov     ds:dword_552030, 0
mov     byte ptr ds:dword_552030+2, bl
shrd    eax, edx, 10h
and     eax, 0FFFF0000h
cdq
idiv    ebp
mov     ds:dword_552040, eax
mov     eax, ecx
and     eax, 0FFFF0000h
cdq
idiv    ebp
mov     ds:dword_552044, eax
shrd    eax, ecx, 10h
and     eax, 0FFFF0000h
cdq
idiv    ebp
mov     ds:dword_55203C, eax
mov     eax, edi
mov     ebx, esi
and     eax, 0FFFF0000h
and     ebx, 0FFFF0000h
mov     ds:dword_552020, ebx
sub     eax, ebx
cdq
idiv    ebp
mov     ds:dword_55202C, eax
cmp     si, 0
jge     short loc_4FC64D
mov     eax, 0
sub     ax, si
mov     esi, eax
sub     ebp, eax
imul    ds:dword_55203C
add     ds:dword_552030, eax
mov     eax, esi
imul    ds:dword_552040
add     ds:dword_552034, eax
mov     eax, esi
imul    ds:dword_552044
add     ds:dword_552038, eax
mov     eax, esi
imul    ds:dword_55202C
add     ds:dword_552020, eax
mov     esi, 0

loc_4FC64D:
sub     di, 1E0h
jle     short loc_4FC659
movzx   edi, di
sub     ebp, edi

loc_4FC659:
mov     ecx, ebp
mov     eax, ds:dword_552030
mov     ebx, ds:dword_552034
mov     edx, ds:dword_552038
mov     edi, ds:dword_552020
mov     ebp, ds:dword_55202C
and     esi, 0FFFFh
shl     esi, 2

loc_4FC681:
cmp     edi, ds:dword_552068[esi]
jge     short loc_4FC6A1
mov     ds:dword_552068[esi], edi
mov     ds:dword_554D68[esi], eax
mov     ds:dword_5554E8[esi], ebx
mov     ds:dword_555C68[esi], edx

loc_4FC6A1:
cmp     edi, ds:dword_5527E8[esi]
jle     short loc_4FC6C1
mov     ds:dword_5527E8[esi], edi
mov     ds:dword_5563E8[esi], eax
mov     ds:dword_556B68[esi], ebx
mov     ds:dword_5572E8[esi], edx

loc_4FC6C1:
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
add     edi, ebp
add     esi, 4
loop    loc_4FC681

loc_4FC6DA:
pop     ebp
retn
sub_4FC516 endp




sub_4FC6DC proc near
mov     edx, ds:dword_552010
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC6F3:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
mov     ax, [esi+edx]
or      ax, ax
jz      short loc_4FC714
mov     [edi], ax

loc_4FC714:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC6F3
pop     esi
pop     edi
retn
sub_4FC6DC endp




sub_4FC729 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC73A:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC77B
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
add     edx, esi
shr     edx, 1
call    ds:dword_552060
mov     [edi], ax

loc_4FC77B:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC73A
pop     esi
pop     edi
retn
sub_4FC729 endp




sub_4FC790 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC7A1:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC80A
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
add     edx, esi
test    edx, 1000000h
jz      short loc_4FC7E5
or      edx, 0FF0000h

loc_4FC7E5:
test    edx, 10000h
jz      short loc_4FC7F3
or      edx, 0FF00h

loc_4FC7F3:
test    edx, 100h
jz      short loc_4FC801
or      edx, 0FFh

loc_4FC801:
call    ds:dword_552060
mov     [edi], ax

loc_4FC80A:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC7A1
pop     esi
pop     edi
retn
sub_4FC790 endp




sub_4FC81F proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC830:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC896
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
mov     eax, esi
sub     dl, al
jnb     short loc_4FC870
and     edx, 0FFFF00h

loc_4FC870:
sub     dh, ah
jnb     short loc_4FC87A
and     edx, 0FF00FFh

loc_4FC87A:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FC88A
and     edx, 0FF0000FFh

loc_4FC88A:
rol     edx, 8
call    ds:dword_552060
mov     [edi], ax

loc_4FC896:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC830
pop     esi
pop     edi
retn
sub_4FC81F endp




sub_4FC8AB proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC8BC:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC928
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
shr     esi, 2
add     edx, esi
test    edx, 1000000h
jz      short loc_4FC903
or      edx, 0FF0000h

loc_4FC903:
test    edx, 10000h
jz      short loc_4FC911
or      edx, 0FF00h

loc_4FC911:
test    edx, 100h
jz      short loc_4FC91F
or      edx, 0FFh

loc_4FC91F:
call    ds:dword_552060
mov     [edi], ax

loc_4FC928:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC8BC
pop     esi
pop     edi
retn
sub_4FC8AB endp




sub_4FC93D proc near
xor     edx, edx
movd    mm2, edx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC95D:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC9B8
call    ds:dword_55205C
movd    mm0, edx
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
mov     ax, [edi]
call    ds:dword_55205C
movd    mm3, edx
punpcklbw mm3, mm2
paddusw mm3, mm0
psrlw   mm3, 1
packuswb mm3, mm2
movd    edx, mm3
call    ds:dword_552060
mov     [edi], ax

loc_4FC9B8:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC95D
pop     esi
pop     edi
emms
retn
sub_4FC93D endp




sub_4FC9CF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC9E0:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FCA27
call    ds:dword_55205C
movd    mm0, edx
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, edx
paddusb mm1, mm0
movd    edx, mm1
call    ds:dword_552060
mov     [edi], ax

loc_4FCA27:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC9E0
pop     esi
pop     edi
emms
retn
sub_4FC9CF endp




sub_4FCA3E proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCA4F:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FCA96
call    ds:dword_55205C
movd    mm0, edx
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, edx
psubusb mm1, mm0
movd    edx, mm1
call    ds:dword_552060
mov     [edi], ax

loc_4FCA96:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCA4F
pop     esi
pop     edi
emms
retn
sub_4FCA3E endp




sub_4FCAAD proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCABE:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FCB08
call    ds:dword_55205C
shr     edx, 2
movd    mm0, edx
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, edx
paddusb mm1, mm0
movd    edx, mm1
call    ds:dword_552060
mov     [edi], ax

loc_4FCB08:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCABE
pop     esi
pop     edi
emms
retn
sub_4FCAAD endp




sub_4FCB1F proc near
mov     edx, ds:dword_552010
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCB38:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
mov     eax, [esi+edx]
and     eax, 0FFFFFFh
jz      short loc_4FCB60
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCB60:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCB38
pop     esi
pop     edi
retn
sub_4FCB1F endp




sub_4FCB75 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCB88:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCBC1
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
shr     eax, 1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCBC1:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCB88
pop     esi
pop     edi
retn
sub_4FCB75 endp




sub_4FCBD6 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCBE9:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCC44
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
test    eax, 1000000h
jz      short loc_4FCC23
or      eax, 0FF0000h

loc_4FCC23:
test    eax, 10000h
jz      short loc_4FCC2F
or      eax, 0FF00h

loc_4FCC2F:
test    eax, 100h
jz      short loc_4FCC3B
or      eax, 0FFh

loc_4FCC3B:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCC44:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCBE9
pop     esi
pop     edi
retn
sub_4FCBD6 endp




sub_4FCC59 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCC6C:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCCC8
mov     edx, [edi]
and     edx, 0FCFCFCh
sub     dl, al
jnb     short loc_4FCCA2
and     edx, 0FFFF00h

loc_4FCCA2:
sub     dh, ah
jnb     short loc_4FCCAC
and     edx, 0FF00FFh

loc_4FCCAC:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FCCBC
and     edx, 0FF0000FFh

loc_4FCCBC:
rol     edx, 8
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh

loc_4FCCC8:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCC6C
pop     esi
pop     edi
retn
sub_4FCC59 endp




sub_4FCCDD proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCCF0:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCD4E
mov     edx, [edi]
and     edx, 0FCFCFCh
shr     eax, 2
add     eax, edx
test    eax, 1000000h
jz      short loc_4FCD2D
or      eax, 0FF0000h

loc_4FCD2D:
test    eax, 10000h
jz      short loc_4FCD39
or      eax, 0FF00h

loc_4FCD39:
test    eax, 100h
jz      short loc_4FCD45
or      eax, 0FFh

loc_4FCD45:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCD4E:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCCF0
pop     esi
pop     edi
retn
sub_4FCCDD endp




sub_4FCD63 proc near
xor     edx, edx
movd    mm2, edx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCD85:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FCDD2
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
movd    mm3, dword ptr [edi]
punpcklbw mm3, mm2
paddusw mm3, mm0
psrlw   mm3, 1
packuswb mm3, mm2
movd    eax, mm3
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCDD2:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCD85
pop     esi
pop     edi
emms
retn
sub_4FCD63 endp




sub_4FCDE9 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCDFC:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FCE35
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    eax, mm1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCE35:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCDFC
pop     esi
pop     edi
emms
retn
sub_4FCDE9 endp




sub_4FCE4C proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCE5F:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FCE98
movd    mm0, eax
movd    mm1, dword ptr [edi]
psubusb mm1, mm0
movd    edx, mm1
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh

loc_4FCE98:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCE5F
pop     esi
pop     edi
emms
retn
sub_4FCE4C endp




sub_4FCEAF proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCEC2:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCEFE
shr     eax, 2
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    eax, mm1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCEFE:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCEC2
pop     esi
pop     edi
emms
retn
sub_4FCEAF endp




sub_4FCF15 proc near
mov     edx, ds:dword_552010
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCF2C:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
mov     eax, [esi+edx]
or      eax, eax
jz      short loc_4FCF4A
mov     [edi], eax

loc_4FCF4A:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCF2C
pop     esi
pop     edi
retn
sub_4FCF15 endp




sub_4FCF5F proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCF70:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCFA2
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
shr     eax, 1
mov     [edi], eax

loc_4FCFA2:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCF70
pop     esi
pop     edi
retn
sub_4FCF5F endp




sub_4FCFB7 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCFC8:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD01C
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
test    eax, 1000000h
jz      short loc_4FD002
or      eax, 0FF0000h

loc_4FD002:
test    eax, 10000h
jz      short loc_4FD00E
or      eax, 0FF00h

loc_4FD00E:
test    eax, 100h
jz      short loc_4FD01A
or      eax, 0FFh

loc_4FD01A:
mov     [edi], eax

loc_4FD01C:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCFC8
pop     esi
pop     edi
retn
sub_4FCFB7 endp




sub_4FD031 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD042:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD097
mov     edx, [edi]
and     edx, 0FCFCFCh
sub     dl, al
jnb     short loc_4FD078
and     edx, 0FFFF00h

loc_4FD078:
sub     dh, ah
jnb     short loc_4FD082
and     edx, 0FF00FFh

loc_4FD082:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FD092
and     edx, 0FF0000FFh

loc_4FD092:
rol     edx, 8
mov     [edi], edx

loc_4FD097:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD042
pop     esi
pop     edi
retn
sub_4FD031 endp




sub_4FD0AC proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD0BD:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD114
mov     edx, [edi]
and     edx, 0FCFCFCh
shr     eax, 2
add     eax, edx
test    eax, 1000000h
jz      short loc_4FD0FA
or      eax, 0FF0000h

loc_4FD0FA:
test    eax, 10000h
jz      short loc_4FD106
or      eax, 0FF00h

loc_4FD106:
test    eax, 100h
jz      short loc_4FD112
or      eax, 0FFh

loc_4FD112:
mov     [edi], eax

loc_4FD114:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD0BD
pop     esi
pop     edi
retn
sub_4FD0AC endp




sub_4FD129 proc near
xor     edx, edx
movd    mm2, edx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD149:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FD18D
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
movd    mm3, dword ptr [edi]
punpcklbw mm3, mm2
paddusw mm3, mm0
psrlw   mm3, 1
packuswb mm3, mm2
movd    dword ptr [edi], mm3

loc_4FD18D:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD149
pop     esi
pop     edi
emms
retn
sub_4FD129 endp




sub_4FD1A4 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD1B5:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FD1E5
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    dword ptr [edi], mm1

loc_4FD1E5:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD1B5
pop     esi
pop     edi
emms
retn
sub_4FD1A4 endp




sub_4FD1FC proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD20D:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FD23D
movd    mm0, eax
movd    mm1, dword ptr [edi]
psubusb mm1, mm0
movd    dword ptr [edi], mm1

loc_4FD23D:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD20D
pop     esi
pop     edi
emms
retn
sub_4FD1FC endp




sub_4FD254 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD265:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD298
shr     eax, 2
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    dword ptr [edi], mm1

loc_4FD298:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD265
pop     esi
pop     edi
emms
retn
sub_4FD254 endp




sub_4FD2AF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ebp
mov     eax, ds:dword_552050
rep stosw
pop     edi
retn
sub_4FD2AF endp




sub_4FD2BF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054

loc_4FD2C9:
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ebx
shr     edx, 1
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD2C9
pop     edi
retn
sub_4FD2BF endp




sub_4FD2E3 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054

loc_4FD2ED:
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ebx
test    edx, 1000000h
jz      short loc_4FD306
or      edx, 0FF0000h

loc_4FD306:
test    edx, 10000h
jz      short loc_4FD314
or      edx, 0FF00h

loc_4FD314:
test    edx, 100h
jz      short loc_4FD322
or      edx, 0FFh

loc_4FD322:
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD2ED
pop     edi
retn
sub_4FD2E3 endp




sub_4FD32F proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054

loc_4FD339:
mov     ax, [edi]
call    ds:dword_55205C
mov     eax, ebx
sub     dl, al
jnb     short loc_4FD34E
and     edx, 0FFFF00h

loc_4FD34E:
sub     dh, ah
jnb     short loc_4FD358
and     edx, 0FF00FFh

loc_4FD358:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FD368
and     edx, 0FF0000FFh

loc_4FD368:
rol     edx, 8
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD339
pop     edi
retn
sub_4FD32F endp




sub_4FD378 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054
shr     ebx, 2

loc_4FD385:
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ebx
test    edx, 1000000h
jz      short loc_4FD39E
or      edx, 0FF0000h

loc_4FD39E:
test    edx, 10000h
jz      short loc_4FD3AC
or      edx, 0FF00h

loc_4FD3AC:
test    edx, 100h
jz      short loc_4FD3BA
or      edx, 0FFh

loc_4FD3BA:
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD385
pop     edi
retn
sub_4FD378 endp




sub_4FD3C7 proc near
push    edi
lea     edi, [edi+ebx*2]
movd    mm1, ds:dword_552054

loc_4FD3D2:
mov     ax, [edi]
call    ds:dword_55205C
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD3D2
pop     edi
emms
retn
sub_4FD3C7 endp




sub_4FD3F3 proc near
push    edi
lea     edi, [edi+ebx*2]
movd    mm1, ds:dword_552054

loc_4FD3FE:
mov     ax, [edi]
call    ds:dword_55205C
movd    mm0, edx
psubusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD3FE
pop     edi
emms
retn
sub_4FD3F3 endp




sub_4FD41F proc near
push    edi
lea     edi, [edi+ebx*2]
mov     edx, ds:dword_552054
shr     edx, 2
movd    mm1, edx

loc_4FD42F:
mov     ax, [edi]
call    ds:dword_55205C
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD42F
pop     edi
emms
retn
sub_4FD41F endp




sub_4FD450 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ebp
mov     ax, word ptr ds:dword_552050
mov     bx, word ptr ds:dword_552050+2

loc_4FD465:
mov     [edi], ax
mov     [edi+2], bl
add     edi, 3
loop    loc_4FD465
pop     edi
retn
sub_4FD450 endp




sub_4FD472 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050

loc_4FD47E:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
shr     eax, 1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD47E
pop     edi
retn
sub_4FD472 endp




sub_4FD49A proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050

loc_4FD4A6:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD4BB
or      eax, 0FF0000h

loc_4FD4BB:
test    eax, 10000h
jz      short loc_4FD4C7
or      eax, 0FF00h

loc_4FD4C7:
test    eax, 100h
jz      short loc_4FD4D3
or      eax, 0FFh

loc_4FD4D3:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD4A6
pop     edi
retn
sub_4FD49A endp




sub_4FD4E4 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050

loc_4FD4F0:
mov     edx, [edi]
and     edx, 0FCFCFCh
mov     eax, ebx
sub     dl, al
jnb     short loc_4FD504
and     edx, 0FFFF00h

loc_4FD504:
sub     dh, ah
jnb     short loc_4FD50E
and     edx, 0FF00FFh

loc_4FD50E:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FD51E
and     edx, 0FF0000FFh

loc_4FD51E:
rol     edx, 8
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh
add     edi, 3
dec     ebp
jnz     short loc_4FD4F0
pop     edi
retn
sub_4FD4E4 endp




sub_4FD532 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050
shr     ebx, 2

loc_4FD541:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD556
or      eax, 0FF0000h

loc_4FD556:
test    eax, 10000h
jz      short loc_4FD562
or      eax, 0FF00h

loc_4FD562:
test    eax, 100h
jz      short loc_4FD56E
or      eax, 0FFh

loc_4FD56E:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD541
pop     edi
retn
sub_4FD532 endp




sub_4FD57F proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
movd    mm1, ds:dword_552050

loc_4FD58C:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD58C
pop     edi
emms
retn
sub_4FD57F endp




sub_4FD5A8 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
movd    mm1, ds:dword_552050

loc_4FD5B5:
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    edx, mm0
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh
add     edi, 3
dec     ebp
jnz     short loc_4FD5B5
pop     edi
emms
retn
sub_4FD5A8 endp




sub_4FD5D1 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     edx, ds:dword_552050
shr     edx, 2
movd    mm1, edx

loc_4FD5E3:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD5E3
pop     edi
emms
retn
sub_4FD5D1 endp




sub_4FD5FF proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ebp
mov     eax, ds:dword_552050
rep stosd
pop     edi
retn
sub_4FD5FF endp




sub_4FD60E proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050

loc_4FD618:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
shr     eax, 1
stosd
dec     ebp
jnz     short loc_4FD618
pop     edi
retn
sub_4FD60E endp




sub_4FD629 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050

loc_4FD633:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD648
or      eax, 0FF0000h

loc_4FD648:
test    eax, 10000h
jz      short loc_4FD654
or      eax, 0FF00h

loc_4FD654:
test    eax, 100h
jz      short loc_4FD660
or      eax, 0FFh

loc_4FD660:
stosd
dec     ebp
jnz     short loc_4FD633
pop     edi
retn
sub_4FD629 endp




sub_4FD666 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050

loc_4FD670:
mov     eax, [edi]
and     eax, 0FCFCFCh
mov     edx, ebx
sub     al, dl
jnb     short loc_4FD682
and     eax, 0FFFF00h

loc_4FD682:
sub     ah, dh
jnb     short loc_4FD68B
and     eax, 0FF00FFh

loc_4FD68B:
ror     edx, 8
ror     eax, 8
sub     ah, dh
jnb     short loc_4FD69A
and     eax, 0FF0000FFh

loc_4FD69A:
rol     eax, 8
stosd
dec     ebp
jnz     short loc_4FD670
pop     edi
retn
sub_4FD666 endp




sub_4FD6A3 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050
shr     ebx, 2

loc_4FD6B0:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD6C5
or      eax, 0FF0000h

loc_4FD6C5:
test    eax, 10000h
jz      short loc_4FD6D1
or      eax, 0FF00h

loc_4FD6D1:
test    eax, 100h
jz      short loc_4FD6DD
or      eax, 0FFh

loc_4FD6DD:
stosd
dec     ebp
jnz     short loc_4FD6B0
pop     edi
retn
sub_4FD6A3 endp




sub_4FD6E3 proc near
push    edi
lea     edi, [edi+ebx*4]
movd    mm1, ds:dword_552050

loc_4FD6EE:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
dec     ebp
jnz     short loc_4FD6EE
pop     edi
emms
retn
sub_4FD6E3 endp




sub_4FD701 proc near
push    edi
lea     edi, [edi+ebx*4]
movd    mm1, ds:dword_552050

loc_4FD70C:
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
dec     ebp
jnz     short loc_4FD70C
pop     edi
emms
retn
sub_4FD701 endp




sub_4FD71F proc near
push    edi
lea     edi, [edi+ebx*4]
mov     edx, ds:dword_552050
shr     edx, 2
movd    mm1, edx

loc_4FD72F:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
dec     ebp
jnz     short loc_4FD72F
pop     edi
emms
retn
sub_4FD71F endp




sub_4FD742 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD758:
call    sub_4FBD3F
mov     [edi], cx
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
add     edi, 2
dec     ebp
jnz     short loc_4FD758
pop     edi
retn
sub_4FD742 endp




sub_4FD77A proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD790:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ecx
shr     edx, 1
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD790
pop     edi
retn
sub_4FD77A endp




sub_4FD7C8 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD7DE:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ecx
test    edx, 1000000h
jz      short loc_4FD800
or      edx, 0FF0000h

loc_4FD800:
test    edx, 10000h
jz      short loc_4FD80E
or      edx, 0FF00h

loc_4FD80E:
test    edx, 100h
jz      short loc_4FD81C
or      edx, 0FFh

loc_4FD81C:
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD7DE
pop     edi
retn
sub_4FD7C8 endp




sub_4FD83E proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD854:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
sub     dl, cl
jnb     short loc_4FD870
and     edx, 0FFFF00h

loc_4FD870:
sub     dh, ch
jnb     short loc_4FD87A
and     edx, 0FF00FFh

loc_4FD87A:
ror     ecx, 8
ror     edx, 8
sub     dh, ch
jnb     short loc_4FD88A
and     edx, 0FF0000FFh

loc_4FD88A:
rol     edx, 8
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD854
pop     edi
retn
sub_4FD83E endp




sub_4FD8AF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD8C5:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
shr     ecx, 2
add     edx, ecx
test    edx, 1000000h
jz      short loc_4FD8EA
or      edx, 0FF0000h

loc_4FD8EA:
test    edx, 10000h
jz      short loc_4FD8F8
or      edx, 0FF00h

loc_4FD8F8:
test    edx, 100h
jz      short loc_4FD906
or      edx, 0FFh

loc_4FD906:
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD8C5
pop     edi
retn
sub_4FD8AF endp




sub_4FD928 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD93E:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, ecx
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD93E
pop     edi
emms
retn
sub_4FD928 endp




sub_4FD980 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD996:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, ecx
movd    mm0, edx
psubusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD996
pop     edi
emms
retn
sub_4FD980 endp




sub_4FD9D8 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD9EE:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
shr     ecx, 2
movd    mm1, ecx
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD9EE
pop     edi
emms
retn
sub_4FD9D8 endp




sub_4FDA33 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDA4B:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     [edi], cx
shr     ecx, 8
mov     [edi+2], ch
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDA4B
pop     edi
retn
sub_4FDA33 endp




sub_4FDA7A proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDA92:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
shr     eax, 1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDA92
pop     edi
retn
sub_4FDA7A endp




sub_4FDACC proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDAE4:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDB02
or      eax, 0FF0000h

loc_4FDB02:
test    eax, 10000h
jz      short loc_4FDB0E
or      eax, 0FF00h

loc_4FDB0E:
test    eax, 100h
jz      short loc_4FDB1A
or      eax, 0FFh

loc_4FDB1A:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDAE4
pop     edi
retn
sub_4FDACC endp




sub_4FDB40 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDB58:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
sub     al, cl
jnb     short loc_4FDB71
and     eax, 0FFFF00h

loc_4FDB71:
sub     ah, ch
jnb     short loc_4FDB7A
and     eax, 0FF00FFh

loc_4FDB7A:
ror     ecx, 8
ror     eax, 8
sub     ah, ch
jnb     short loc_4FDB89
and     eax, 0FF0000FFh

loc_4FDB89:
rol     eax, 8
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDB58
pop     edi
retn
sub_4FDB40 endp




sub_4FDBB2 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDBCA:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
shr     ecx, 2
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDBEB
or      eax, 0FF0000h

loc_4FDBEB:
test    eax, 10000h
jz      short loc_4FDBF7
or      eax, 0FF00h

loc_4FDBF7:
test    eax, 100h
jz      short loc_4FDC03
or      eax, 0FFh

loc_4FDC03:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDBCA
pop     edi
retn
sub_4FDBB2 endp




sub_4FDC29 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDC41:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDC41
pop     edi
emms
retn
sub_4FDC29 endp




sub_4FDC7E proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDC96:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDC96
pop     edi
emms
retn
sub_4FDC7E endp




sub_4FDCD3 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDCEB:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
shr     ecx, 2
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDCEB
pop     edi
emms
retn
sub_4FDCD3 endp




sub_4FDD2B proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDD41:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     [edi], ecx
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDD41
pop     edi
retn
sub_4FDD2B endp




sub_4FDD69 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDD7F:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
shr     eax, 1
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDD7F
pop     edi
retn
sub_4FDD69 endp




sub_4FDDAE proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDDC4:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDDE2
or      eax, 0FF0000h

loc_4FDDE2:
test    eax, 10000h
jz      short loc_4FDDEE
or      eax, 0FF00h

loc_4FDDEE:
test    eax, 100h
jz      short loc_4FDDFA
or      eax, 0FFh

loc_4FDDFA:
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDDC4
pop     edi
retn
sub_4FDDAE endp




sub_4FDE15 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDE2B:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
sub     al, cl
jnb     short loc_4FDE44
and     eax, 0FFFF00h

loc_4FDE44:
sub     ah, ch
jnb     short loc_4FDE4D
and     eax, 0FF00FFh

loc_4FDE4D:
ror     ecx, 8
ror     eax, 8
sub     ah, ch
jnb     short loc_4FDE5C
and     eax, 0FF0000FFh

loc_4FDE5C:
rol     eax, 8
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDE2B
pop     edi
retn
sub_4FDE15 endp




sub_4FDE7A proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDE90:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
shr     ecx, 2
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDEB1
or      eax, 0FF0000h

loc_4FDEB1:
test    eax, 10000h
jz      short loc_4FDEBD
or      eax, 0FF00h

loc_4FDEBD:
test    eax, 100h
jz      short loc_4FDEC9
or      eax, 0FFh

loc_4FDEC9:
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDE90
pop     edi
retn
sub_4FDE7A endp




sub_4FDEE4 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDEFA:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDEFA
pop     edi
emms
retn
sub_4FDEE4 endp




sub_4FDF2E proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDF44:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDF44
pop     edi
emms
retn
sub_4FDF2E endp




sub_4FDF78 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDF8E:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
shr     ecx, 2
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDF8E
pop     edi
emms
retn
sub_4FDF78 endp


loc_4FDFC5:
lea     edi, [edi+ebx*2]
sub     ebp, 38h ; '8'
mov     ebx, 1Ch

loc_4FDFD0:
mov     ecx, 1Ch

loc_4FDFD5:
lodsw
or      ax, ax
jz      short loc_4FDFDF
mov     [edi], ax

loc_4FDFDF:
add     edi, 2
loop    loc_4FDFD5
add     esi, 8
add     edi, ebp
dec     ebx
jnz     short loc_4FDFD0
retn



sub_4FDFED proc near
lea     edi, [edi+ebx*2]
add     edi, ebx
sub     ebp, 54h ; 'T'
mov     ebx, 1Ch

loc_4FDFFA:
mov     ecx, 1Ch

loc_4FDFFF:
lodsd
or      eax, eax
jz      short loc_4FE00D
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FE00D:
add     edi, 3
loop    loc_4FDFFF
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FDFFA
retn
sub_4FDFED endp




sub_4FE01B proc near
lea     edi, [edi+ebx*4]
sub     ebp, 70h ; 'p'
mov     ebx, 1Ch

loc_4FE026:
mov     ecx, 1Ch

loc_4FE02B:
lodsd
or      eax, eax
jz      short loc_4FE032
mov     [edi], eax

loc_4FE032:
add     edi, 4
loop    loc_4FE02B
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FE026
retn
sub_4FE01B endp




sub_4FE040 proc near
xor     ecx, ecx
movd    mm2, ecx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
lea     edi, [edi+ebx*2]
sub     ebp, 38h ; '8'
mov     ebx, 1Ch

loc_4FE05A:
mov     ecx, 1Ch

loc_4FE05F:
lodsw
or      ax, ax
jz      short loc_4FE088
call    ds:dword_55205C
movd    mm0, edx
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
packuswb mm0, mm2
movd    edx, mm0
call    ds:dword_552060
mov     [edi], ax

loc_4FE088:
add     edi, 2
loop    loc_4FE05F
add     esi, 8
add     edi, ebp
dec     ebx
jnz     short loc_4FE05A
emms
retn
sub_4FE040 endp




sub_4FE098 proc near
xor     ecx, ecx
movd    mm2, ecx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
lea     edi, [edi+ebx*2]
add     edi, ebx
sub     ebp, 54h ; 'T'
mov     ebx, 1Ch

loc_4FE0B4:
mov     ecx, 1Ch

loc_4FE0B9:
lodsd
or      eax, eax
jz      short loc_4FE0DA
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
packuswb mm0, mm2
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FE0DA:
add     edi, 3
loop    loc_4FE0B9
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FE0B4
emms
retn
sub_4FE098 endp




sub_4FE0EA proc near
xor     ecx, ecx
movd    mm2, ecx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
lea     edi, [edi+ebx*4]
sub     ebp, 70h ; 'p'
mov     ebx, 1Ch

loc_4FE104:
mov     ecx, 1Ch

loc_4FE109:
lodsd
or      eax, eax
jz      short loc_4FE123
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
packuswb mm0, mm2
movd    eax, mm0
mov     [edi], eax

loc_4FE123:
add     edi, 4
loop    loc_4FE109
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FE104
emms
retn
sub_4FE0EA endp

; [00000019 BYTES: COLLAPSED FUNCTION strlen_]
; [00000005 BYTES: COLLAPSED FUNCTION j_stricmp_]

__save_8087_:
fsave   byte ptr [eax]
wait
retn

__rest_8087_:
frstor  byte ptr [eax]
wait
retn
; [00000031 BYTES: COLLAPSED FUNCTION __init_8087_]
; [0000000A BYTES: COLLAPSED FUNCTION _fpreset_]
; [00000044 BYTES: COLLAPSED FUNCTION __chk8087_]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_5]



sub_4FE1DA proc near
mov     ds:dword_557C68, 1
retn
sub_4FE1DA endp

; [0000000E BYTES: COLLAPSED FUNCTION __set_errno_]
; [00000007 BYTES: COLLAPSED FUNCTION __set_EDOM_]
; [00000007 BYTES: COLLAPSED FUNCTION __set_ERANGE_]

__set_EINVAL_:
mov     eax, 9
call    __set_errno_
mov     eax, 0FFFFFFFFh ; W?seekoff$:streambuf$n(lii)l
; doubtful name
retn
; [0000000E BYTES: COLLAPSED FUNCTION __set_doserrno_]
; [0000000E BYTES: COLLAPSED FUNCTION tolower_]



sub_4FE22D proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= byte ptr  0Ch

push    ebx
push    edx
lea     eax, [esp+8+arg_8]
add     eax, 4
mov     eax, [eax-4]
push    eax
push    0
mov     edx, [esp+10h+arg_4]
push    edx
mov     ebx, [esp+14h+arg_0]
push    ebx
call    sub_4FE251
add     esp, 10h
pop     edx
pop     ebx
retn
sub_4FE22D endp




sub_4FE251 proc near

var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= byte ptr  10h

push    ebx
push    ecx
push    edx
sub     esp, 4
lea     eax, [esp+10h+arg_C]
mov     ecx, esp
mov     ebx, [esp+10h+arg_8]
mov     edx, [esp+10h+arg_4]
mov     [esp+10h+var_10], eax
mov     eax, [esp+10h+arg_0]
call    sub_4FE278
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4FE251 endp




sub_4FE278 proc near

SecurityAttributes= _SECURITY_ATTRIBUTES ptr -2Ch
dwShareMode= dword ptr -20h
dwDesiredAccess= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     [esp+2Ch+var_10], edx
mov     [esp+2Ch+var_14], ebx
call    __NTAtMaxFiles_
test    eax, eax
jz      short loc_4FE2A5
mov     eax, 0Bh

loc_4FE296:
call    __set_errno_
mov     eax, 0FFFFFFFFh
jmp     loc_4FE47A

loc_4FE2A5:
mov     esi, edx
lea     ebx, [esp+2Ch+var_18]
and     esi, 7
lea     edx, [esp+2Ch+dwDesiredAccess]
mov     eax, esi
call    sub_5010D9
mov     eax, [esp+2Ch+var_14]
lea     edx, [esp+2Ch+dwShareMode]
or      eax, esi
mov     ebx, 80h
call    sub_501105
xor     eax, eax
mov     edx, 0Ch
mov     [esp+2Ch+SecurityAttributes.lpSecurityDescriptor], eax
mov     ah, byte ptr [esp+2Ch+var_10]
mov     [esp+2Ch+SecurityAttributes.nLength], edx
test    ah, 80h
setz    al
and     eax, 0FFh
mov     edx, ds:dword_557E84
mov     [esp+2Ch+SecurityAttributes.bInheritHandle], eax
test    edx, edx
jz      short loc_4FE32D
mov     edx, offset unk_50AAA4
mov     eax, edi
call    stricmp_
test    eax, eax
jnz     short loc_4FE32D
call    __NTGetFakeHandle_
call    ds:off_551FD0
push    0FFFFFFFFh
push    eax
push    0
mov     edx, 2000h
mov     edi, eax
call    ds:dword_557E84
add     esp, 0Ch
jmp     loc_4FE42A

loc_4FE32D:
mov     dl, byte ptr [esp+2Ch+var_10]
test    dl, 20h
jz      short loc_4FE398
mov     ebp, [ecx]
add     ebp, 4
mov     [ecx], ebp
mov     eax, [ebp-4]
mov     [esp+2Ch+var_18], eax
mov     dword ptr [ecx], 0
mov     eax, ds:dword_558188
mov     edx, [esp+2Ch+var_18]
not     eax
and     edx, eax
mov     [esp+2Ch+var_18], edx
test    byte ptr [esp+2Ch+var_18+1], 1
jz      short loc_4FE36E
test    byte ptr [esp+2Ch+var_18], 80h
jnz     short loc_4FE36E
mov     ebx, 1

loc_4FE36E:
test    byte ptr [esp+2Ch+var_10+1], 4
jz      short loc_4FE37E
mov     ebp, 1
mov     eax, ebp
jmp     short loc_4FE3A2

loc_4FE37E:
test    byte ptr [esp+2Ch+var_10], 40h
jz      short loc_4FE391
mov     ebp, 2

loc_4FE38A:
mov     eax, 5
jmp     short loc_4FE3A2

loc_4FE391:
mov     ebp, 4
jmp     short loc_4FE39D

loc_4FE398:
test    dl, 40h
jnz     short loc_4FE38A

loc_4FE39D:
mov     eax, 3

loc_4FE3A2:             ; hTemplateFile
push    0
push    ebx             ; dwFlagsAndAttributes
push    eax             ; dwCreationDisposition
lea     eax, [esp+38h+SecurityAttributes]
push    eax             ; lpSecurityAttributes
mov     ecx, [esp+3Ch+dwShareMode]
push    ecx             ; dwShareMode
mov     eax, [esp+40h+dwDesiredAccess]
push    eax             ; dwDesiredAccess
push    edi             ; lpFileName
call    cs:__imp_CreateFileA
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FE3F4
test    byte ptr [esp+2Ch+var_10], 20h
jz      short loc_4FE3E5
push    0               ; hTemplateFile
push    ebx             ; dwFlagsAndAttributes
push    ebp             ; dwCreationDisposition
push    0               ; lpSecurityAttributes
mov     edx, [esp+3Ch+dwShareMode]
push    edx             ; dwShareMode
mov     ebx, [esp+40h+dwDesiredAccess]
push    ebx             ; dwDesiredAccess
push    edi             ; lpFileName
call    cs:__imp_CreateFileA
mov     ecx, eax

loc_4FE3E5:
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4FE3F4
call    __set_errno_nt_
jmp     loc_4FE47A

loc_4FE3F4:
mov     eax, ecx
call    ds:off_551FD0
xor     edx, edx
mov     ebp, ds:dword_55811C
mov     edi, eax
cmp     eax, ebp
jb      short loc_4FE41C
push    ecx             ; hObject
call    cs:__imp_CloseHandle
mov     eax, 5
jmp     loc_4FE296

loc_4FE41C:
call    isatty_
test    eax, eax
jz      short loc_4FE42A
mov     edx, 2000h

loc_4FE42A:
cmp     esi, 2
jnz     short loc_4FE434
or      dl, 3
jmp     short loc_4FE445

loc_4FE434:
test    esi, esi
jnz     short loc_4FE43D
or      dl, 1
jmp     short loc_4FE445

loc_4FE43D:
cmp     esi, 1
jnz     short loc_4FE445
or      dl, 2

loc_4FE445:
test    byte ptr [esp+2Ch+var_10], 10h
jz      short loc_4FE44F
or      dl, 80h

loc_4FE44F:
mov     eax, edx
mov     bh, byte ptr [esp+2Ch+var_10+1]
or      al, 40h
test    bh, 3
jz      short loc_4FE463
test    bh, 2
jz      short loc_4FE471
jmp     short loc_4FE46F

loc_4FE463:
cmp     ds:dword_557E75, 200h
jnz     short loc_4FE471

loc_4FE46F:
mov     edx, eax

loc_4FE471:
mov     eax, edi
call    __SetIOMode_
mov     eax, edi

loc_4FE47A:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4FE278 endp

; [000000BB BYTES: COLLAPSED FUNCTION __allocfp_]
; [00000039 BYTES: COLLAPSED FUNCTION __freefp_]
; [0000001E BYTES: COLLAPSED CHUNK OF FUNCTION __full_io_exit_]
; [00000031 BYTES: COLLAPSED FUNCTION __chktty_]
; [000000C5 BYTES: COLLAPSED FUNCTION fgetc_]
; [0000002F BYTES: COLLAPSED FUNCTION sub_4FE689]
; [000000B4 BYTES: COLLAPSED FUNCTION sub_4FE6B8]
; [00000007 BYTES: COLLAPSED FUNCTION sub_4FE76C]
; [00000008 BYTES: COLLAPSED FUNCTION sub_4FE773]



sub_4FE77B proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     [esp+18h+var_18], edx
mov     eax, [ebx]
mov     [esp+18h+var_14], eax
mov     ah, [esi+10h]
xor     ebp, ebp
and     ah, 0FDh
xor     edi, edi
mov     [esi+10h], ah

loc_4FE79A:
mov     ebx, [esp+18h+var_18]
lea     edx, [ebx+1]
mov     [esp+18h+var_18], edx
mov     bl, [ebx]
and     ebx, 0FFh
jz      loc_4FE9D4
mov     al, bl
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 2
jz      short loc_4FE7D1
mov     eax, esi
call    sub_4FEAE6
add     edi, eax
jmp     loc_4FE99E

loc_4FE7D1:
cmp     ebx, 25h ; '%'
jz      short loc_4FE7FB
mov     eax, esi
call    sub_4FE76C
cmp     eax, ebx
jz      loc_4FE99D

loc_4FE7E5:
test    byte ptr [esi+10h], 2
jnz     loc_4FE9D4
mov     edx, esi
call    sub_4FE773
jmp     loc_4FE9D4

loc_4FE7FB:
mov     eax, [esp+18h+var_18]
mov     edx, esi
call    sub_4FE9EF
xor     ebx, ebx
mov     [esp+18h+var_18], eax
mov     bl, [eax]
test    ebx, ebx
jz      short loc_4FE814
inc     eax
mov     [esp+18h+var_18], eax

loc_4FE814:
cmp     ebx, 64h ; 'd'
jb      short loc_4FE87E
jbe     loc_4FE8E2
cmp     ebx, 6Fh ; 'o'
jb      short loc_4FE857
jbe     loc_4FE90B
cmp     ebx, 73h ; 's'
jb      short loc_4FE852
jbe     loc_4FE943
cmp     ebx, 75h ; 'u'
jb      loc_4FE99E
jbe     loc_4FE917
cmp     ebx, 78h ; 'x'

loc_4FE847:
jz      loc_4FE926
jmp     loc_4FE99E

loc_4FE852:
cmp     ebx, 70h ; 'p'
jmp     short loc_4FE847

loc_4FE857:
cmp     ebx, 69h ; 'i'
jb      short loc_4FE870
jbe     loc_4FE8FC
cmp     ebx, 6Eh ; 'n'
jz      loc_4FE97F
jmp     loc_4FE99E

loc_4FE870:
cmp     ebx, 67h ; 'g'
jbe     loc_4FE932
jmp     loc_4FE99E

loc_4FE87E:
cmp     ebx, 47h ; 'G'
jb      short loc_4FE8BF
jbe     loc_4FE932
cmp     ebx, 58h ; 'X'
jb      short loc_4FE8B1
jbe     loc_4FE926
cmp     ebx, 5Bh ; '['
jb      loc_4FE99E
jbe     loc_4FE950
cmp     ebx, 63h ; 'c'
jz      loc_4FE963
jmp     loc_4FE99E

loc_4FE8B1:
cmp     ebx, 53h ; 'S'
jz      loc_4FE93F
jmp     loc_4FE99E

loc_4FE8BF:
cmp     ebx, 43h ; 'C'
jb      short loc_4FE8D4
jbe     loc_4FE95F
cmp     ebx, 45h ; 'E'
jz      short loc_4FE932
jmp     loc_4FE99E

loc_4FE8D4:
cmp     ebx, 25h ; '%'
jz      loc_4FE98E
jmp     loc_4FE99E

loc_4FE8E2:
mov     ecx, 1
mov     ebx, 0Ah

loc_4FE8EC:
lea     edx, [esp+18h+var_14]
mov     eax, esi

loc_4FE8F2:
call    sub_4FF1BF
jmp     loc_4FE96E

loc_4FE8FC:
mov     ecx, 1
lea     edx, [esp+18h+var_14]
mov     eax, esi
xor     ebx, ebx
jmp     short loc_4FE8F2

loc_4FE90B:
mov     ecx, 1
mov     ebx, 8
jmp     short loc_4FE8EC

loc_4FE917:
mov     ebx, 0Ah
lea     edx, [esp+18h+var_14]
mov     eax, esi
xor     ecx, ecx
jmp     short loc_4FE8F2

loc_4FE926:
mov     ecx, 1
mov     ebx, 10h
jmp     short loc_4FE8EC

loc_4FE932:
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEEE9
jmp     short loc_4FE96E

loc_4FE93F:
or      byte ptr [esi+10h], 20h

loc_4FE943:
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEBFF
jmp     short loc_4FE96E

loc_4FE950:
mov     ebx, esp
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEDF3
jmp     short loc_4FE96E

loc_4FE95F:
or      byte ptr [esi+10h], 20h

loc_4FE963:
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEB1D

loc_4FE96E:
mov     ebx, eax
test    ebx, ebx
jle     short loc_4FE9D4
add     edi, ebx
test    byte ptr [esi+10h], 1
jz      short loc_4FE99E
inc     ebp
jmp     short loc_4FE99E

loc_4FE97F:
lea     edx, [esp+18h+var_14]
mov     ebx, edi
mov     eax, esi
call    sub_4FED52
jmp     short loc_4FE99E

loc_4FE98E:
mov     eax, esi
call    sub_4FE76C
cmp     eax, ebx
jnz     loc_4FE7E5

loc_4FE99D:
inc     edi

loc_4FE99E:
test    byte ptr [esi+10h], 2
jz      loc_4FE79A
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax], 25h ; '%'
jnz     short loc_4FE9D4
lea     ebx, [eax+1]
mov     edx, esi
mov     eax, ebx
mov     [esp+18h+var_18], ebx
call    sub_4FE9EF
mov     [esp+18h+var_18], eax
cmp     byte ptr [eax], 6Eh ; 'n'
jnz     short loc_4FE9D4
lea     edx, [esp+18h+var_14]
mov     ebx, edi
mov     eax, esi
call    sub_4FED52

loc_4FE9D4:
test    ebp, ebp
jnz     short loc_4FE9E5
test    byte ptr [esi+10h], 2
jz      short loc_4FE9E5
mov     eax, 0FFFFFFFFh
jmp     short loc_4FE9E7

loc_4FE9E5:
mov     eax, ebp

loc_4FE9E7:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FE77B endp




sub_4FE9EF proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     ebx, edx
mov     dl, [edx+10h]
or      dl, 1
mov     [ebx+10h], dl
mov     dh, dl
mov     dword ptr [ebx+0Ch], 0FFFFFFFFh
and     dh, 3
mov     [ebx+10h], dh
cmp     byte ptr [eax], 2Ah ; '*'
jnz     short loc_4FEA1E
mov     ch, [ebx+10h]
and     ch, 0FEh
inc     eax
mov     [ebx+10h], ch

loc_4FEA1E:
xor     edx, edx
mov     dl, [eax]
mov     [esp+10h+var_10], edx
mov     dl, byte ptr [esp+10h+var_10]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 20h
jz      short loc_4FEA61
xor     edx, edx

loc_4FEA3B:
imul    edx, 0Ah
mov     esi, [esp+10h+var_10]
sub     esi, 30h ; '0'
inc     eax
add     edx, esi
movzx   esi, byte ptr [eax]
mov     [esp+10h+var_10], esi
mov     cl, byte ptr [esp+10h+var_10]
inc     cl
movzx   esi, cl
test    ds:_IsTable[esi], 20h
jnz     short loc_4FEA3B
mov     [ebx+0Ch], edx

loc_4FEA61:
mov     cl, [eax]
lea     edx, [eax+1]
cmp     cl, 4Eh ; 'N'
jnz     short loc_4FEA71
or      byte ptr [ebx+10h], 8
jmp     short loc_4FEA7A

loc_4FEA71:
cmp     cl, 46h ; 'F'
jnz     short loc_4FEA7C
or      byte ptr [ebx+10h], 4

loc_4FEA7A:
mov     eax, edx

loc_4FEA7C:
mov     dl, [eax]
lea     esi, [eax+1]
cmp     dl, 68h ; 'h'
jb      short loc_4FEA96
jbe     short loc_4FEAA4
cmp     dl, 6Ch ; 'l'
jb      short loc_4FEADF
jbe     short loc_4FEAAE
cmp     dl, 77h ; 'w'
jz      short loc_4FEAAE
jmp     short loc_4FEADF

loc_4FEA96:
cmp     dl, 49h ; 'I'
jb      short loc_4FEADF
jbe     short loc_4FEAC7
cmp     dl, 4Ch ; 'L'
jz      short loc_4FEABA
jmp     short loc_4FEADF

loc_4FEAA4:
mov     dh, [ebx+10h]
or      dh, 10h
mov     eax, esi
jmp     short loc_4FEADC

loc_4FEAAE:
mov     dl, [ebx+10h]
or      dl, 20h
inc     eax
mov     [ebx+10h], dl
jmp     short loc_4FEADF

loc_4FEABA:
mov     cl, [ebx+10h]
or      cl, 40h
mov     eax, esi
mov     [ebx+10h], cl
jmp     short loc_4FEADF

loc_4FEAC7:
cmp     byte ptr [eax+1], 36h ; '6'
jnz     short loc_4FEADF
cmp     byte ptr [eax+2], 34h ; '4'
jnz     short loc_4FEADF
mov     dh, [ebx+10h]
or      dh, 40h
add     eax, 3

loc_4FEADC:
mov     [ebx+10h], dh

loc_4FEADF:
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
sub_4FE9EF endp




sub_4FEAE6 proc near
push    ebx
push    edx
push    esi
mov     ebx, eax
xor     esi, esi

loc_4FEAED:
mov     eax, ebx
call    sub_4FE76C
mov     edx, eax
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FEB0A
inc     esi
jmp     short loc_4FEAED

loc_4FEB0A:
test    byte ptr [ebx+10h], 2
jnz     short loc_4FEB17
mov     edx, ebx
call    sub_4FE773

loc_4FEB17:
mov     eax, esi
pop     esi
pop     edx
pop     ebx
retn
sub_4FEAE6 endp




sub_4FEB1D proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch
var_1B= byte ptr -1Bh

push    ebx
push    ecx
push    esi
push    edi
push    es
push    ebp
sub     esp, 8
mov     ecx, eax
test    byte ptr [eax+10h], 1
jz      short loc_4FEB65
mov     bl, [ecx+10h]
test    bl, 4
jz      short loc_4FEB42
mov     edi, [edx]
add     edi, 8
mov     [edx], edi
les     esi, [edi-8]
jmp     short loc_4FEB65

loc_4FEB42:
test    bl, 8
jz      short loc_4FEB57
mov     esi, [edx]
add     esi, 4
mov     eax, ds
mov     [edx], esi
mov     es, eax
assume es:AUTO
mov     esi, [esi-4]
jmp     short loc_4FEB65

loc_4FEB57:
mov     ebx, [edx]
add     ebx, 4
mov     eax, ds
mov     [edx], ebx
mov     es, eax
mov     esi, [ebx-4]

loc_4FEB65:
mov     edi, [ecx+0Ch]
xor     ebp, ebp
cmp     edi, 0FFFFFFFFh
jnz     short loc_4FEB74
mov     edi, 1

loc_4FEB74:
test    edi, edi
jle     loc_4FEBF3
mov     eax, ecx
call    sub_4FE76C
mov     dl, [ecx+10h]
test    dl, 2
jnz     loc_4FEBF3
inc     ebp
dec     edi
test    dl, 1
jz      short loc_4FEB74
test    dl, 20h
jz      short loc_4FEBED
mov     edx, ds:dword_898344
mov     [esp+20h+var_1C], al
test    edx, edx
jz      short loc_4FEBC8
and     eax, 0FFh
mov     al, ds:byte_898349[eax]
and     al, 1
and     eax, 0FFh
jz      short loc_4FEBC8
mov     eax, ecx
call    sub_4FE76C
mov     [esp+20h+var_1B], al

loc_4FEBC8:
mov     ebx, 2
lea     edx, [esp+20h+var_1C]
mov     eax, esp
call    sub_501297
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FEBE1
xor     eax, eax
jmp     short loc_4FEBF5

loc_4FEBE1:
mov     eax, [esp+20h+var_20]
mov     es:[esi], ax
add     esi, 2
jmp     short loc_4FEB74

loc_4FEBED:
mov     es:[esi], al
inc     esi
jmp     short loc_4FEB74

loc_4FEBF3:
mov     eax, ebp

loc_4FEBF5:
add     esp, 8

loc_4FEBF8:
pop     ebp
pop     es
assume es:nothing
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FEB1D endp




sub_4FEBFF proc near

var_24= dword ptr -24h
var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    es
push    ebp
sub     esp, 0Ch
mov     ecx, eax
test    byte ptr [eax+10h], 20h
jz      short loc_4FEC17
mov     [esp+24h+var_1C], 2
jmp     short loc_4FEC20

loc_4FEC17:
test    byte ptr [ecx+10h], 10h
mov     [esp+24h+var_1C], 1

loc_4FEC20:
mov     bl, [ecx+10h]
test    bl, 1
jz      short loc_4FEC5C
test    bl, 4
jz      short loc_4FEC39
mov     edi, [edx]
add     edi, 8
mov     [edx], edi
les     esi, [edi-8]
jmp     short loc_4FEC5C

loc_4FEC39:
test    bl, 8
jz      short loc_4FEC4E
mov     esi, [edx]
add     esi, 4
mov     eax, ds
mov     [edx], esi
mov     es, eax
assume es:AUTO
mov     esi, [esi-4]
jmp     short loc_4FEC5C

loc_4FEC4E:
mov     ebx, [edx]
add     ebx, 4
mov     eax, ds
mov     [edx], ebx
mov     es, eax
mov     esi, [ebx-4]

loc_4FEC5C:
xor     edi, edi

loc_4FEC5E:
mov     eax, ecx
call    sub_4FE76C
mov     ebx, eax
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 2
jz      short loc_4FEC7A
inc     edi
jmp     short loc_4FEC5E

loc_4FEC7A:
test    byte ptr [ecx+10h], 2
jz      short loc_4FEC87
xor     edi, edi
jmp     loc_4FED2B

loc_4FEC87:
mov     eax, [ecx+0Ch]
lea     edx, [eax-1]
mov     [ecx+0Ch], edx
test    eax, eax
jz      loc_4FED22

loc_4FEC98:
mov     al, [ecx+10h]
inc     edi
test    al, 1
jz      short loc_4FED00
cmp     [esp+24h+var_1C], 1
jnz     short loc_4FECAC
mov     es:[esi], bl
jmp     short loc_4FECF8

loc_4FECAC:
mov     ebp, ds:dword_898344
mov     [esp+24h+var_20], bl
test    ebp, ebp
jz      short loc_4FECD8
xor     eax, eax
mov     al, bl
mov     al, ds:byte_898349[eax]
and     al, 1
and     eax, 0FFh
jz      short loc_4FECD8
mov     eax, ecx
call    sub_4FE76C
mov     [esp+24h+var_1F], al

loc_4FECD8:
mov     ebx, 2
lea     edx, [esp+24h+var_20]
mov     eax, esp
call    sub_501297
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FECF1
xor     eax, eax
jmp     short loc_4FED4A

loc_4FECF1:
mov     eax, [esp+24h+var_24]
mov     es:[esi], ax

loc_4FECF8:
xor     eax, eax
mov     al, [esp+24h+var_1C]
add     esi, eax

loc_4FED00:
mov     eax, ecx
call    sub_4FF5EB
mov     ebx, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_4FED2B
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 2
jz      loc_4FEC98

loc_4FED22:
mov     edx, ecx
mov     eax, ebx
call    sub_4FE773

loc_4FED2B:
test    byte ptr [ecx+10h], 1
jz      short loc_4FED48
test    edi, edi
jle     short loc_4FED48
cmp     [esp+24h+var_1C], 1
jnz     short loc_4FED42
mov     byte ptr es:[esi], 0
jmp     short loc_4FED48

loc_4FED42:
mov     word ptr es:[esi], 0

loc_4FED48:
mov     eax, edi

loc_4FED4A:
add     esp, 0Ch
jmp     loc_4FEBF8
sub_4FEBFF endp




sub_4FED52 proc near
push    ecx
push    esi
push    edi
push    es
mov     cl, [eax+10h]
test    cl, 1
jz      short loc_4FEDAB
test    cl, 4
jz      short loc_4FED6F
mov     edi, [edx]
add     edi, 8
mov     [edx], edi
les     edx, [edi-8]
assume es:nothing
jmp     short loc_4FED94

loc_4FED6F:
test    cl, 8
jz      short loc_4FED84
mov     esi, [edx]
add     esi, 4
mov     ecx, ds
mov     [edx], esi
mov     es, ecx
assume es:AUTO
mov     edx, [esi-4]
jmp     short loc_4FED94

loc_4FED84:
mov     ecx, [edx]
add     ecx, 4
mov     [edx], ecx
mov     edx, ecx
mov     ecx, ds
mov     es, ecx
mov     edx, [edx-4]

loc_4FED94:
mov     ch, [eax+10h]
test    ch, 10h
jz      short loc_4FEDA5
mov     es:[edx], bx
pop     es
assume es:nothing
pop     edi
pop     esi
pop     ecx
retn

loc_4FEDA5:
test    ch, 20h
mov     es:[edx], ebx

loc_4FEDAB:
pop     es
pop     edi
pop     esi
pop     ecx
retn
sub_4FED52 endp




sub_4FEDB0 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ebx, 20h ; ' '
mov     eax, esi
xor     edx, edx
call    memset_
xor     eax, eax
mov     al, [ecx]
inc     ecx
test    eax, eax
jz      short loc_4FEDED

loc_4FEDCE:
mov     edx, eax
and     eax, 7
sar     edx, 3
mov     al, ds:byte_557FC4[eax]
or      [edx+esi], al
xor     eax, eax
mov     al, [ecx]
test    eax, eax
jz      short loc_4FEDED
inc     ecx
cmp     eax, 5Dh ; ']'
jnz     short loc_4FEDCE

