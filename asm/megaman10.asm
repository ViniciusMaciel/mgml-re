loc_4D801F:
or      byte ptr [ebp+0], 2
mov     dword ptr [ebp+0C4h], 2E000000h
inc     byte ptr [ebp+0Ah]
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+4Eh], 8
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 0

loc_4D8045:             ; jumptable 004D8003 case 1
mov     ax, [ebp+46h]
mov     edx, [esp+20h+var_20]
sub     [edx+48h], ax
mov     edx, [ebp+0C4h]
cmp     edx, 2E808080h
jnb     short loc_4D806C
lea     ecx, [edx+80808h]
mov     [ebp+0C4h], ecx
jmp     short loc_4D8076

loc_4D806C:
mov     dword ptr [ebp+0C4h], offset unk_808080

loc_4D8076:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D80CF
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 1Dh
mov     byte ptr [eax+3], 42h ; 'B'
mov     byte ptr [eax+0Dh], 3
mov     byte ptr [eax+0Eh], 0
lea     edi, [edx+48h]
lea     esi, [ebp+14h]
movsd
movsd
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+48h], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ah], ax
call    rand_
xor     ah, ah
sub     eax, 80h
add     [edx+4Ch], ax

loc_4D80CF:
mov     eax, [esp+20h+var_20]
inc     word ptr [eax+4]
cmp     word ptr [eax+48h], 0
jge     loc_4D816A
mov     edx, [eax+34h]
mov     ah, [edx+0Fh]
test    ah, 20h
jnz     short loc_4D8159
mov     bl, ah
or      bl, 20h
mov     [edx+0Fh], bl
lea     eax, [ebp+14h]
mov     [esp+20h+var_1C], eax
mov     ecx, eax
mov     ebx, 2000h
mov     edx, 400h
mov     eax, 10h
call    sub_42A70B
mov     bh, [ebp+0Dh]
cmp     bh, 5
jnz     short loc_4D8159
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4D8159
mov     [eax], bh
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 6
mov     byte ptr [eax+0Fh], 2
mov     esi, [esp+20h+var_20]
mov     esi, [esi+34h]
lea     edi, [edx+48h]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, ebp
call    sub_42C592
mov     [edx+4Ah], ax
mov     edx, [esp+20h+var_1C]
mov     eax, 1E0h
call    sub_4D8BC3

loc_4D8159:
inc     byte ptr [ebp+0Ah]
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 10h
jmp     def_4D8003      ; jumptable 004D8003 default case

loc_4D816A:
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
jmp     def_4D8003      ; jumptable 004D8003 default case

loc_4D818B:             ; jumptable 004D8003 case 2
mov     eax, [esp+20h+var_20]
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     def_4D8003      ; jumptable 004D8003 default case
inc     byte ptr [ebp+0Ah]
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+20h+var_20]
mov     edx, [edx+34h]
mov     edx, [edx+eax*8+190h]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     esi, 3Ch ; '<'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ebp+46h], ax
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 3Ch ; '<'
mov     edx, [eax+34h]
or      byte ptr [edx+0Fh], 10h
jmp     short def_4D8003 ; jumptable 004D8003 default case

loc_4D81E3:             ; jumptable 004D8003 case 3
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4D8220
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+20h+var_20]
mov     edx, [edx+34h]
mov     ax, [edx+eax*8+192h]
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [esp+20h+var_20]
or      byte ptr [eax], 11h
jmp     short def_4D8003 ; jumptable 004D8003 default case

loc_4D8220:
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

def_4D8003:             ; jumptable 004D8003 default case
add     esp, 8

loc_4D8237:
pop     ebp

loc_4D8238:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4D7FE1 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_114]



sub_4D823E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4D825E
jbe     short loc_4D8297
cmp     al, 2
jz      loc_4D82D7
pop     edx
pop     ecx
pop     ebx
retn

loc_4D825E:
test    al, al
jnz     loc_4D8313
inc     al
mov     [ecx+0Ah], al
mov     eax, [ebx+34h]
mov     edx, [eax+14h]
sar     edx, 10h
call    sub_42C592
sub     edx, 20h ; ' '
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [ecx+4Eh], ax
mov     word ptr [ebx+4], 8
jmp     short loc_4D829E

loc_4D8297:
cmp     word ptr [ebx+4], 0
jz      short loc_4D82BA

loc_4D829E:
mov     ax, [ecx+4Eh]
sub     [ecx+16h], ax

loc_4D82A6:
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
dec     word ptr [ebx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4D82BA:
mov     edx, [ebx+34h]
mov     edx, [edx+0Ch]
sar     edx, 18h
test    dl, 80h
jz      short loc_4D8313
inc     al
mov     [ecx+0Ah], al
mov     word ptr [ebx+4], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_4D82D7:
cmp     word ptr [ebx+4], 0
jz      short loc_4D82E8
mov     ax, [ecx+4Eh]
add     [ecx+16h], ax
jmp     short loc_4D82A6

loc_4D82E8:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ebx+34h]
mov     ax, [edx+eax*8+192h]
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
or      byte ptr [ebx], 11h
mov     edx, [ebx+34h]
or      byte ptr [edx+0Fh], 10h

loc_4D8313:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D823E endp

db 8Bh, 0C0h
jpt_4D8350 dd offset loc_4D8357 ; jump table for switch statement
dd offset loc_4D83A3
dd offset loc_4D83F5
dd offset loc_4D845C
dd offset loc_4D84A5



sub_4D832D proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 0CCh
mov     [esp+1Ch+var_1C], eax
mov     dl, [ebp+0Ah]
cmp     dl, 4           ; switch 5 cases
ja      def_4D8350      ; jumptable 004D8350 default case
xor     eax, eax
mov     al, dl
jmp     jpt_4D8350[eax*4] ; switch jump

loc_4D8357:             ; jumptable 004D8350 case 0
inc     dl
mov     [ebp+0Ah], dl
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     word ptr [ebp+4Ch], 60h ; '`'
mov     ecx, [ebp+4Ah]
sar     ecx, 10h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
add     eax, 14h
mov     edx, (offset dword_5F8376+2)
call    sub_4DD69F
mov     edx, eax
add     ecx, 10h
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+1Ch+var_1C]
mov     [edx+4], ax
lea     edx, [ebp+14h]
mov     eax, 1DAh
call    sub_4D8BC3

loc_4D83A3:             ; jumptable 004D8350 case 1
push    0
push    0
mov     ecx, [ebp+4Ah]
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+34h]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
lea     eax, [ebp+14h]
call    sub_4DD4C5
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     def_4D8350      ; jumptable 004D8350 default case
inc     byte ptr [ebp+0Ah]
mov     word ptr [eax+4], 4
mov     dword ptr [ebp+0C4h], 2E505050h
jmp     def_4D8350      ; jumptable 004D8350 default case

loc_4D83F5:             ; jumptable 004D8350 case 2
push    0
push    0
mov     ecx, [ebp+4Ah]
sar     ecx, 10h
shl     ecx, 4
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+34h]
mov     ebx, [ebx+54h]
sar     ebx, 10h
lea     edx, [ebp+1Ch]
lea     esi, [ebp+14h]
mov     eax, esi
call    sub_4DD4C5
sub     dword ptr [ebp+0C4h], 101010h
mov     eax, [esp+1Ch+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jge     def_4D8350      ; jumptable 004D8350 default case
inc     byte ptr [ebp+0Ah]
and     byte ptr [ebp+0], 0FDh
mov     edx, [esp+1Ch+var_1C]
mov     edx, [edx+34h]
inc     byte ptr [edx+0Ch]
mov     edx, esi
mov     eax, 1DBh
call    sub_4D8BC3
jmp     def_4D8350      ; jumptable 004D8350 default case

loc_4D845C:             ; jumptable 004D8350 case 3
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
test    byte ptr [eax+0Eh], 4
jz      def_4D8350      ; jumptable 004D8350 default case
or      byte ptr [ebp+0], 2
inc     byte ptr [ebp+0Ah]
mov     esi, [ebp+0Ah]
sar     esi, 18h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
lea     edi, [ebp+14h]
lea     esi, [eax+esi*8+190h]
movsd
movsd
shl     dword ptr [ebp+1Ch], 10h
shl     dword ptr [ebp+20h], 10h
shl     dword ptr [ebp+24h], 10h
mov     eax, [esp+1Ch+var_1C]
mov     word ptr [eax+4], 4
or      byte ptr [eax], 40h
jmp     short def_4D8350 ; jumptable 004D8350 default case

loc_4D84A5:             ; jumptable 004D8350 case 4
add     dword ptr [ebp+0C4h], 101010h
mov     esi, [ebp+0Ah]
sar     esi, 18h
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+34h]
lea     edi, [ebp+14h]
lea     esi, [eax+esi*8+190h]
movsd
movsd
shl     dword ptr [ebp+1Ch], 10h
shl     dword ptr [ebp+20h], 10h
shl     dword ptr [ebp+24h], 10h
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short def_4D8350 ; jumptable 004D8350 default case
mov     dword ptr [ebp+0C4h], offset unk_808080
mov     edx, [eax+34h]
or      byte ptr [edx+0Fh], 10h
mov     eax, [esp+1Ch+var_1C]
or      byte ptr [eax], 11h

def_4D8350:             ; jumptable 004D8350 default case
add     esp, 4
jmp     loc_4D8237
sub_4D832D endp




sub_4D8503 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4D8544
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [ecx+2], 31h ; '1'
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 35h ; '5'
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+78h], 0
inc     byte ptr [ecx+8]

loc_4D8544:
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
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, offset unk_539904
mov     eax, ebx
call    sub_4EF689
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8503 endp




sub_4D8595 proc near
push    ecx
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4D85B9
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4D85B9
mov     ecx, 80000002h
jmp     short loc_4D85BE

loc_4D85B9:
mov     ecx, 80000007h

loc_4D85BE:
xor     eax, eax

loc_4D85C0:
mov     ds:dword_539F94[eax*4], ecx
inc     eax
cmp     eax, 6
jl      short loc_4D85C0
pop     ecx
retn
sub_4D8595 endp




sub_4D85CF proc near
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      short loc_4D85F6
mov     eax, 206h
call    sub_47E888
test    eax, eax
jnz     short loc_4D85F6

loc_4D85EB:
mov     ds:dword_539FAC, 80000039h
retn

loc_4D85F6:
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4D8612
mov     eax, 213h
call    sub_47E888
test    eax, eax
jz      short loc_4D85EB

loc_4D8612:
mov     ds:dword_539FAC, 80000007h
retn
sub_4D85CF endp




sub_4D861D proc near
cmp     byte ptr ds:dword_77E7D5+2, 1
jnz     short loc_4D8631
mov     ds:dword_53A038, 80000029h
retn

loc_4D8631:
mov     ds:dword_53A038, 108h
retn
sub_4D861D endp




sub_4D863C proc near
mov     al, byte ptr ds:dword_77E7D5+2
cmp     al, 2
jb      short loc_4D864D
jbe     short loc_4D8651
cmp     al, 3
jz      short loc_4D8651
jmp     short loc_4D866A

loc_4D864D:
cmp     al, 1
jnz     short loc_4D866A

loc_4D8651:
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jnz     short loc_4D866A
mov     ds:dword_53A03C, 80000016h
retn

loc_4D866A:
mov     ds:dword_53A03C, 108h
retn
sub_4D863C endp




sub_4D8675 proc near
push    ecx
mov     ecx, 108h
cmp     byte ptr ds:dword_77E7D5+2, 1
jnz     short loc_4D8689
mov     ecx, 80000017h

loc_4D8689:
xor     eax, eax

loc_4D868B:
mov     ds:dword_53A084[eax*4], ecx
inc     eax
cmp     eax, 6
jl      short loc_4D868B
pop     ecx
retn
sub_4D8675 endp




sub_4D869A proc near
push    ecx
mov     ecx, 108h
cmp     byte ptr ds:dword_77E7D5+2, 1
jnz     short loc_4D86AE
mov     ecx, 80000017h

loc_4D86AE:
xor     eax, eax

loc_4D86B0:
mov     ds:dword_53A09C[eax*4], ecx
inc     eax
cmp     eax, 5
jl      short loc_4D86B0
pop     ecx
retn
sub_4D869A endp




sub_4D86BF proc near
mov     eax, 1E1h
call    sub_47E888
test    eax, eax
jz      short loc_4D86D8
mov     ds:dword_53A0F0, 80000025h
retn

loc_4D86D8:
mov     ds:dword_53A0F0, 80000030h
retn
sub_4D86BF endp




sub_4D86E3 proc near
push    ebx
push    edx
mov     eax, 35h ; '5'
call    sub_47E888
test    eax, eax
jz      short loc_4D8707
mov     ebx, 8000002Dh
mov     ds:dword_53A124, ebx
mov     ds:dword_53A128, ebx
pop     edx
pop     ebx
retn

loc_4D8707:
mov     edx, 0FFFFFFFFh
mov     ds:dword_53A124, edx
mov     ds:dword_53A128, edx
pop     edx
pop     ebx
retn
sub_4D86E3 endp




sub_4D871B proc near
mov     eax, 1E1h
call    sub_47E888
test    eax, eax
jz      short loc_4D8734
mov     ds:dword_539F88, 80000025h
retn

loc_4D8734:
mov     ds:dword_539F88, 80000030h
retn
sub_4D871B endp




sub_4D873F proc near
push    ebx
push    ecx
push    edx
test    eax, eax
jnz     short loc_4D8751
mov     ebx, ds:dword_77E7D0+2
sar     ebx, 18h
jmp     short loc_4D8759

loc_4D8751:
xor     ebx, ebx
mov     bl, ds:byte_77EA5F

loc_4D8759:
movsx   edx, bl
mov     ecx, 3
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     eax, edx
cmp     edx, 1
jb      short loc_4D877A
jbe     short loc_4D879E
cmp     edx, 2
jz      short loc_4D87C6
pop     edx
pop     ecx
pop     ebx
retn

loc_4D877A:
test    edx, edx
jnz     loc_4D87EA
mov     eax, 616h
call    sub_47E888
test    eax, eax
jz      short loc_4D8797
mov     edx, 0FFFFFFFFh
jmp     short loc_4D87E0

loc_4D8797:
mov     edx, 8000003Ah
jmp     short loc_4D87E0

loc_4D879E:
mov     eax, 617h
call    sub_47E888
test    eax, eax
jz      short loc_4D87B3
mov     eax, 0FFFFFFFFh
jmp     short loc_4D87B8

loc_4D87B3:
mov     eax, 8000003Bh

loc_4D87B8:
movsx   edx, bl
mov     ds:dword_53A168[edx*4], eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4D87C6:
mov     eax, 68h ; 'h'
call    sub_47E888
test    eax, eax
jz      short loc_4D87DB
mov     edx, 0FFFFFFFFh
jmp     short loc_4D87E0

loc_4D87DB:
mov     edx, 8000003Ch

loc_4D87E0:
movsx   eax, bl
mov     ds:dword_53A168[eax*4], edx

loc_4D87EA:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D873F endp




sub_4D87EE proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset dword_77EA48
mov     edx, offset dword_77E784
xor     eax, eax
mov     al, ds:byte_77EA5E
shl     eax, 2
cmp     ds:dword_53A200[eax], 0
jz      short loc_4D881B
mov     ebx, eax
mov     eax, 1
call    ds:dword_53A200[ebx]

loc_4D881B:
xor     ebx, ebx
xor     eax, eax
mov     al, [ecx+16h]
mov     eax, ds:off_53A180[eax*4]
test    eax, eax
jz      short loc_4D8860
mov     cl, [ecx+17h]
and     ecx, 0FFh
mov     ecx, [eax+ecx*4]
cmp     ecx, 0FFFFFFFFh
jz      short loc_4D8860
mov     eax, [edx+4Dh]
sar     eax, 18h
mov     eax, ds:off_53A180[eax*4]
test    eax, eax
jz      short loc_4D885C
mov     edx, [edx+4Eh]
sar     edx, 18h
mov     eax, [eax+edx*4]
cmp     eax, ecx
jnz     short loc_4D8860

loc_4D885C:
test    ebx, ebx
jz      short loc_4D8871

loc_4D8860:
mov     eax, 10h
call    sub_4D9040
or      ds:byte_77E6BD, 8

loc_4D8871:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D87EE endp




sub_4D8875 proc near
push    ebx
push    ecx
push    edx
mov     edx, offset dword_77E784
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
shl     eax, 2
cmp     ds:dword_53A200[eax], 0
jz      short loc_4D889B
mov     ecx, eax
xor     eax, eax
call    ds:dword_53A200[ecx]

loc_4D889B:
xor     eax, eax
xor     ebx, ebx
mov     ecx, [edx+4Dh]
sar     ecx, 18h
mov     ecx, ds:off_53A180[ecx*4]
test    ecx, ecx
jz      short loc_4D88BE
mov     eax, [edx+4Eh]
sar     eax, 18h
mov     eax, [ecx+eax*4]
cmp     eax, 0FFFFFFFFh
jnz     short loc_4D88C2

loc_4D88BE:
test    ebx, ebx
jz      short loc_4D88CD

loc_4D88C2:
xor     ebx, ebx
xor     edx, edx
call    sub_4D89E4
jmp     short loc_4D88D2

loc_4D88CD:
call    sub_4D8E21

loc_4D88D2:
and     ds:byte_77E6BD, 0F7h
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8875 endp




sub_4D88DD proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
xor     eax, eax
test    cl, 3
jz      short loc_4D892C
mov     eax, 1
test    cl, 1
jz      short loc_4D890F
xor     ecx, ecx
mov     cl, ds:byte_77EAB9
mov     si, [edx]
sub     esi, ecx
mov     [edx], si
test    si, si
jg      short loc_4D892C
mov     word ptr [edx], 0
jmp     short loc_4D892A

loc_4D890F:
xor     ecx, ecx
mov     cl, ds:byte_77EAB9
mov     bx, [edx]
add     ebx, ecx
mov     [edx], bx
cmp     bx, 7Fh
jl      short loc_4D892C
mov     word ptr [edx], 7Fh

loc_4D892A:
xor     eax, eax

loc_4D892C:
pop     esi
pop     ecx
pop     ebx
retn
sub_4D88DD endp




sub_4D8930 proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
mov     ds:dword_55D5D0, edx
mov     word ptr ds:dword_77EA7C+2, 64h ; 'd'
mov     ds:word_77EA80, 7Fh
mov     ds:byte_77EAB9, 4
mov     ebx, 10h
xor     edx, edx
mov     eax, offset dword_55D430
call    memset_
mov     ebx, 10h
xor     edx, edx
mov     eax, offset dword_55D5C0
call    memset_
mov     ebx, 180h
xor     edx, edx
mov     eax, offset dword_55D440
call    memset_
xor     edx, edx
mov     ecx, 0FFh

loc_4D898E:
mov     eax, edx
shl     eax, 8
add     eax, edx
mov     ds:dword_562204[eax*8], ecx
xor     ebx, ebx
mov     ds:dword_562208[eax*8], ebx
inc     edx
cmp     edx, 5
jl      short loc_4D898E
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8930 endp




sub_4D89AF proc near
push    edx
mov     edx, 1
mov     eax, offset dword_55D430
call    sub_4FA755
mov     edx, 1
mov     eax, offset dword_55D5C0
call    sub_4FA755
xor     edx, edx

loc_4D89D0:
mov     eax, edx
call    sub_4D8F2F
inc     edx
cmp     edx, 5
jl      short loc_4D89D0
call    sub_4FA0F0
pop     edx
retn
sub_4D89AF endp




sub_4D89E4 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, eax
mov     ebp, edx
test    eax, 80000000h
jz      short loc_4D8A4B
cmp     ds:dword_55D5D0, 0
jz      short loc_4D8A0E
mov     edx, 1
mov     eax, offset dword_55D430
call    sub_4FA755

loc_4D8A0E:
mov     ds:dword_55D5D0, edi
mov     eax, edi
and     eax, 0FFFFh
call    sub_42C211
test    byte ptr ds:dword_55D5D0+2, 1
jz      short loc_4D8A30
mov     ds:dword_55D430, eax
jmp     short loc_4D8A35

loc_4D8A30:
mov     ds:dword_55D434, eax

loc_4D8A35:
xor     edx, edx
mov     eax, offset dword_55D430
call    sub_4FA12B
mov     eax, offset dword_55D430
jmp     loc_4D8BB6

loc_4D8A4B:
xor     edx, edx
lea     edi, [eax-80h]
jmp     short loc_4D8A5C

loc_4D8A52:
inc     edx
cmp     edx, 5
jge     loc_4D8BBB

loc_4D8A5C:
mov     ecx, edi
shl     ecx, 2
movzx   esi, ds:byte_539914[ecx]
mov     eax, edx
shl     eax, 8
add     eax, edx
cmp     esi, ds:dword_562204[eax*8]
jnz     short loc_4D8A52
mov     cl, ds:byte_539917[ecx]
and     ecx, 0FFh
shl     ecx, 4
mov     esi, ds:dword_55D440[ecx]
test    esi, esi
jz      short loc_4D8AA0
mov     ecx, esi
cmp     dword ptr [esi+4], 0
jz      short loc_4D8AA0
mov     eax, esi
call    sub_4FA36B

loc_4D8AA0:
xor     ecx, ecx
mov     cl, ds:byte_539915[edi*4]
shl     ecx, 4
mov     eax, edx
shl     eax, 8
add     eax, edx
shl     eax, 3
add     eax, offset dword_562204
add     eax, 8
add     ecx, eax
cmp     dword ptr [ecx], 0
jz      short loc_4D8ACB
cmp     dword ptr [ecx+8], 0
jz      short loc_4D8AD7

loc_4D8ACB:
cmp     dword ptr [ecx+4], 0
jz      short loc_4D8AE0
cmp     dword ptr [ecx+0Ch], 0
jnz     short loc_4D8AE0

loc_4D8AD7:
xor     edx, edx
mov     eax, ecx
call    sub_4FA12B

loc_4D8AE0:
xor     eax, eax
mov     al, ds:byte_539917[edi*4]
shl     eax, 4
mov     ds:dword_55D440[eax], ecx
xor     edx, edx
mov     word ptr ds:dword_55D444[eax], dx
cmp     byte ptr ds:dword_77E7DC, 0
jz      short loc_4D8B0F
xor     edx, edx
mov     [esp+1Ch+var_18], edx
jmp     loc_4D8B9D

loc_4D8B0F:
test    ebp, ebp
jle     short loc_4D8B55
mov     eax, 80h
sub     eax, ebp
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fmul    ds:dbl_50A424
fmul    ds:dbl_50A42C
call    __CHP
fistp   [esp+1Ch+var_1C]
mov     eax, [esp+1Ch+var_1C]
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fdiv    ds:dbl_50A42C
fmul    ds:dbl_50A43C
fadd    ds:dbl_50A434
jmp     short loc_4D8B94

loc_4D8B55:
add     ebp, 80h
mov     [esp+1Ch+var_14], ebp
fild    [esp+1Ch+var_14]
fmul    ds:dbl_50A424
fmul    ds:dbl_50A42C
call    __CHP
fistp   [esp+1Ch+var_1C]
mov     eax, [esp+1Ch+var_1C]
mov     [esp+1Ch+var_14], eax
fild    [esp+1Ch+var_14]
fdiv    ds:dbl_50A42C
fmul    ds:dbl_50A434
fadd    ds:dbl_50A43C

loc_4D8B94:
call    __CHP
fistp   [esp+1Ch+var_18]

loc_4D8B9D:
mov     edx, [esp+1Ch+var_18]
mov     eax, ecx
call    sub_4FA49A
mov     edx, 7Fh
mov     eax, ecx
call    sub_4FA436
mov     eax, ecx

loc_4D8BB6:
call    sub_4FA2C9

loc_4D8BBB:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4D89E4 endp



; Attributes: bp-based frame fuzzy-sp

sub_4D8BC3 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 14h
and     esp, 0FFFFFFF8h
mov     edi, eax
mov     [esp+14h+var_8], edx
xor     edx, edx
lea     edi, [eax-80h]
jmp     short loc_4D8BE7

loc_4D8BDD:
inc     edx
cmp     edx, 5
jge     loc_4D8E19

loc_4D8BE7:
mov     ecx, edi
shl     ecx, 2
movzx   esi, ds:byte_539914[ecx]
mov     eax, edx
shl     eax, 8
add     eax, edx
cmp     esi, ds:dword_562204[eax*8]
jnz     short loc_4D8BDD
xor     eax, eax
mov     al, ds:byte_539917[ecx]
shl     eax, 4
mov     esi, ds:dword_55D440[eax]
test    esi, esi
jz      short loc_4D8C1F
mov     eax, esi
call    sub_4FA36B

loc_4D8C1F:
mov     al, ds:byte_539915[edi*4]
mov     esi, eax
and     esi, 0FFh
shl     esi, 4
mov     eax, edx
shl     eax, 8
add     eax, edx
shl     eax, 3
add     eax, offset dword_562204
add     eax, 8
add     esi, eax
cmp     dword ptr [esi], 0
jz      short loc_4D8C50
cmp     dword ptr [esi+8], 0
jz      short loc_4D8C5C

loc_4D8C50:
cmp     dword ptr [esi+4], 0
jz      short loc_4D8C65
cmp     dword ptr [esi+0Ch], 0
jnz     short loc_4D8C65

loc_4D8C5C:
xor     edx, edx
mov     eax, esi
call    sub_4FA12B

loc_4D8C65:
xor     eax, eax
mov     al, ds:byte_539917[edi*4]
shl     eax, 4
mov     ds:dword_55D440[eax], esi
mov     word ptr ds:dword_55D444[eax], 1
mov     edx, [esp+14h+var_8]
movsx   edx, word ptr [edx]
mov     ds:dword_55D448[eax], edx
mov     edx, [esp+14h+var_8]
mov     edx, [edx+2]
sar     edx, 10h
mov     ds:dword_55D44C[eax], edx
mov     eax, ds:dword_5F8376
sar     eax, 10h
mov     edx, [esp+14h+var_8]
movsx   edx, word ptr [edx]
sub     eax, edx
mov     edx, eax
mov     eax, [esp+14h+var_8]
mov     eax, [eax+2]
sar     eax, 10h
mov     ecx, ds:dword_5F837A
sar     ecx, 10h
sub     ecx, eax
mov     eax, ecx
imul    edx, edx
imul    eax, ecx
add     eax, edx
call    sub_4EF075
mov     edi, eax
cmp     eax, 0BB8h
jl      short loc_4D8CEB
xor     edx, edx
mov     eax, esi
call    sub_4FA436
jmp     loc_4D8E19

loc_4D8CEB:
cmp     byte ptr ds:dword_77E7DC, 0
jz      short loc_4D8CFF
xor     eax, eax
mov     [esp+14h+var_C], eax
jmp     loc_4D8DD4

loc_4D8CFF:
mov     ecx, [esp+14h+var_8]
mov     ecx, [ecx+2]
sar     ecx, 10h
mov     ebx, [esp+14h+var_8]
movsx   ebx, word ptr [ebx]
mov     edx, ds:dword_5F837A
sar     edx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
call    sub_49D994
mov     edx, ds:dword_5F83B8
sar     edx, 10h
sub     edx, eax
and     edx, 0FFFh
mov     eax, edx
call    sub_4EF003
shl     eax, 7
sar     eax, 0Ch
test    eax, eax
jge     short loc_4D8D4B
imul    eax, -1

loc_4D8D4B:
cmp     edx, 800h
jge     short loc_4D8D90
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fmul    ds:dbl_50A444
fmul    ds:dbl_50A44C
call    __CHP
fistp   [esp+14h+var_10]
mov     eax, [esp+14h+var_10]
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fdiv    ds:dbl_50A44C
fmul    ds:dbl_50A45C
fadd    ds:dbl_50A454
jmp     short loc_4D8DCB

loc_4D8D90:
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fmul    ds:dbl_50A444
fmul    ds:dbl_50A44C
call    __CHP
fistp   [esp+14h+var_10]
mov     eax, [esp+14h+var_10]
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fdiv    ds:dbl_50A44C
fmul    ds:dbl_50A454
fadd    ds:dbl_50A45C

loc_4D8DCB:
call    __CHP
fistp   [esp+14h+var_C]

loc_4D8DD4:
mov     edx, [esp+14h+var_C]
mov     eax, esi
call    sub_4FA49A
mov     eax, 0BB8h
sub     eax, edi
mov     [esp+14h+var_4], eax
fild    [esp+14h+var_4]
fdiv    ds:dbl_50A464
fmul    ds:dbl_50A46C
fadd    ds:dbl_50A474
call    __CHP
fistp   [esp+14h+var_14]
mov     edx, [esp+14h+var_14]
mov     eax, esi
call    sub_4FA436
mov     eax, esi
call    sub_4FA2C9

loc_4D8E19:
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D8BC3 endp




sub_4D8E21 proc near
mov     eax, offset dword_55D430
jmp     sub_4FA36B
sub_4D8E21 endp




sub_4D8E2B proc near
push    edx
shl     eax, 4
mov     edx, ds:dword_55D440[eax]
test    edx, edx
jz      short loc_4D8E40
mov     eax, edx
call    sub_4FA36B

loc_4D8E40:
pop     edx
retn
sub_4D8E2B endp




sub_4D8E42 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     esi, eax
shr     esi, 10h
and     ecx, 0FFFFh
cmp     ds:dword_55D5C0, 0
jz      short loc_4D8E6E
mov     edx, 1
mov     eax, offset dword_55D5C0
call    sub_4FA755

loc_4D8E6E:
mov     ebx, esp
mov     edx, ecx
mov     eax, esi
call    sub_42C25D
mov     ds:dword_55D5C0, eax
mov     ecx, [esp+14h+var_14]
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4D8E8A
xor     edx, edx
jmp     short loc_4D8E95

loc_4D8E8A:
mov     ds:dword_55D5CC, ecx
mov     edx, 1

loc_4D8E95:
mov     eax, offset dword_55D5C0
call    sub_4FA12B
mov     eax, offset dword_55D5C0
call    sub_4FA2C9
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8E42 endp




sub_4D8EB1 proc near
push    edx
cmp     ds:dword_55D5C0, 0
jz      short loc_4D8ECA
mov     edx, 1
mov     eax, offset dword_55D5C0
call    sub_4FA755

loc_4D8ECA:
pop     edx
retn
sub_4D8EB1 endp




sub_4D8ECC proc near
mov     eax, offset dword_55D5C0
jmp     sub_4FA4D2
sub_4D8ECC endp




sub_4D8ED6 proc near
push    ecx
push    edx
xor     edx, edx
jmp     short loc_4D8EE2

loc_4D8EDC:
inc     edx
cmp     edx, 18h
jge     short loc_4D8EFA

loc_4D8EE2:
mov     eax, edx
shl     eax, 4
mov     ecx, ds:dword_55D440[eax]
test    ecx, ecx
jz      short loc_4D8EDC
mov     eax, ecx
call    sub_4FA36B
jmp     short loc_4D8EDC

loc_4D8EFA:
pop     edx
pop     ecx
retn
sub_4D8ED6 endp




sub_4D8EFD proc near
mov     eax, offset dword_55D430
jmp     sub_4FA4D2
sub_4D8EFD endp




sub_4D8F07 proc near
push    edx
or      ds:byte_77E6BD, 8
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
shl     eax, 2
cmp     ds:dword_53A200[eax], 0
jz      short loc_4D8F2D
mov     edx, eax
xor     eax, eax
call    ds:dword_53A200[edx]

loc_4D8F2D:
pop     edx
retn
sub_4D8F07 endp




sub_4D8F2F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
shl     eax, 8
add     eax, esi
cmp     ds:dword_562204[eax*8], 0FFh
jz      short loc_4D8F91
xor     ecx, ecx

loc_4D8F49:
mov     ebx, esi
shl     ebx, 8
add     ebx, esi
shl     ebx, 3
mov     eax, offset dword_562204
add     eax, ebx
mov     edx, ecx
shl     edx, 4
add     eax, 8
add     eax, edx
xor     edx, edx
call    sub_4FA755
inc     ecx
cmp     ecx, 80h
jl      short loc_4D8F49
mov     eax, ds:dword_562208[ebx]
call    _nfree_
xor     ecx, ecx
mov     ds:dword_562208[ebx], ecx
mov     ds:dword_562204[ebx], 0FFh

loc_4D8F91:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8F2F endp




sub_4D8F96 proc near
push    ebx
push    ecx
push    edx
call    sub_4FA8A3
mov     ah, ds:byte_77EAB8
test    ah, 30h
jz      short loc_4D8FED
mov     al, ah
and     al, 30h
and     eax, 0FFh
sar     eax, 4
mov     edx, (offset dword_77EA7C+2)
call    sub_4D88DD
mov     ecx, eax
mov     edx, ds:dword_77EA7C
sar     edx, 10h
mov     eax, offset dword_55D430
call    sub_4FA436
test    ecx, ecx
jnz     short loc_4D8FED
test    ds:byte_77EAB8, 10h
jz      short loc_4D8FE6
call    sub_4D8E21

loc_4D8FE6:
and     ds:byte_77EAB8, 0CFh

loc_4D8FED:
mov     bl, ds:byte_77EAB8
test    bl, 0C0h
jz      short loc_4D903C
mov     al, bl
and     al, 0C0h
and     eax, 0FFh
sar     eax, 6
mov     edx, offset word_77EA80
call    sub_4D88DD
mov     ecx, eax
mov     edx, ds:dword_77EA7C+2
sar     edx, 10h
mov     eax, offset dword_55D5C0
call    sub_4FA436
test    ecx, ecx
jnz     short loc_4D903C
test    ds:byte_77EAB8, 40h
jz      short loc_4D9035
call    sub_4D8EB1

loc_4D9035:
and     ds:byte_77EAB8, 3Fh

loc_4D903C:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8F96 endp




sub_4D9040 proc near
cmp     ds:byte_77EAB8, 0
jnz     short locret_4D904E
mov     ds:byte_77EAB8, al

locret_4D904E:
retn
sub_4D9040 endp




sub_4D904F proc near
push    ebx
push    ecx
push    edx
mov     eax, offset dword_55D430
call    sub_4FA4D2
mov     ds:byte_55D5D5, al
test    al, al
jz      short loc_4D906F
mov     eax, offset dword_55D430
call    sub_4FA36B

loc_4D906F:
mov     eax, offset dword_55D5C0
call    sub_4FA4D2
mov     ds:byte_55D5D4, al
test    al, al
jz      short loc_4D908C
mov     eax, offset dword_55D5C0
call    sub_4FA36B

loc_4D908C:
xor     ecx, ecx
jmp     short loc_4D9096

loc_4D9090:
inc     ecx
cmp     ecx, 18h
jge     short loc_4D903C

loc_4D9096:
mov     edx, ecx
shl     edx, 4
xor     ebx, ebx
mov     word ptr ds:(dword_55D444+2)[edx], bx
mov     ebx, ds:dword_55D440[edx]
test    ebx, ebx
jz      short loc_4D9090
mov     eax, ebx
call    sub_4FA4D2
mov     word ptr ds:(dword_55D444+2)[edx], ax
test    ax, ax
jz      short loc_4D9090
mov     eax, ds:dword_55D440[edx]
call    sub_4FA36B
jmp     short loc_4D9090
sub_4D904F endp




sub_4D90CE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ah, ds:byte_55D5D5
test    ah, ah
jz      short loc_4D90F2
xor     edx, edx
mov     dl, ah
mov     eax, offset dword_55D430
call    sub_4FA39E
xor     dl, dl
mov     ds:byte_55D5D5, dl

loc_4D90F2:
cmp     ds:byte_55D5D4, 0
jz      short loc_4D9115
xor     edx, edx
mov     dl, ds:byte_55D5D4
mov     eax, offset dword_55D5C0
call    sub_4FA39E
xor     bl, bl
mov     ds:byte_55D5D4, bl

loc_4D9115:
xor     ebx, ebx
jmp     short loc_4D9123

loc_4D9119:
inc     ebx
cmp     ebx, 18h
jge     loc_4D8F91

loc_4D9123:
mov     ecx, ebx
shl     ecx, 4
cmp     word ptr ds:(dword_55D444+2)[ecx], 0
jz      short loc_4D9119
mov     edx, ds:dword_55D444[ecx]
sar     edx, 10h
mov     eax, ds:dword_55D440[ecx]
call    sub_4FA39E
xor     esi, esi
mov     word ptr ds:(dword_55D444+2)[ecx], si
jmp     short loc_4D9119
sub_4D90CE endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_43]
db 8Dh, 40h, 0
jpt_4D9231 dd offset loc_4D9238 ; jump table for switch statement
dd offset loc_4D9258
dd offset loc_4D925F
dd offset loc_4D925F
dd offset loc_4D9268



sub_4D91A5 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_53AD18[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 4           ; switch 5 cases
ja      short def_4D9231 ; jumptable 004D9231 default case
and     eax, 0FFh
jmp     jpt_4D9231[eax*4] ; switch jump

loc_4D9238:             ; jumptable 004D9231 case 0
mov     ds:dword_77E76C, 80000000h
and     ds:byte_5F8364, 0FCh
xor     ebx, ebx
mov     ds:dword_5F836C, ebx
mov     eax, 604h
jmp     short loc_4D927C

loc_4D9258:             ; jumptable 004D9231 case 1
or      ds:byte_5F8364, 3

loc_4D925F:             ; jumptable 004D9231 cases 2,3
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short def_4D9231 ; jumptable 004D9231 default case

loc_4D9268:             ; jumptable 004D9231 case 4
and     ds:byte_5F8364, 0FCh
xor     edx, edx
mov     ds:dword_5F836C, edx
mov     eax, 605h

loc_4D927C:
call    sub_47E8B8

def_4D9231:             ; jumptable 004D9231 default case
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53B268[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53B164[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_53B27C
add     ecx, eax
mov     eax, ds:dword_53B380[edx*4]
shl     eax, 3
add     eax, offset unk_53B2B8
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_53A724[eax*4]
call    sub_436B37
pop     edx
pop     ecx
pop     ebx
retn
sub_4D91A5 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_44]



sub_4D9330 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53B588[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     edx, ds:off_53B5D0[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53B5B4[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53B5D4
add     edx, eax
mov     eax, ds:dword_53B6D0[ecx*4]
shl     eax, 3
add     eax, offset unk_53B5F8
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9330 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_45]



sub_4D9449 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53B87C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     edx, ds:off_53B904[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53B8DC[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53B914
add     edx, eax
mov     eax, ds:dword_53BB44[ecx*4]
shl     eax, 3
add     eax, offset unk_53B944
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9449 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_46]



sub_4D9562 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53BF30[eax*4]
call    sub_4E79AB
mov     edx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     ch, ch
mov     cl, [eax+2]
mov     ds:word_77EAAE, cx
mov     cl, [eax+3]
mov     ds:word_77EAB0, cx
mov     bl, [eax]
mov     ds:byte_77EAC5, bl
mov     bl, [eax+1]
mov     ds:byte_77EAC3, bl
mov     bl, ds:byte_77EAC5
mov     bh, byte ptr ds:word_77EAAE
add     bl, bh
mov     ds:byte_77EAC4, bl
mov     bl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     bl, cl
mov     ds:byte_77EAC2, bl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
test    al, al
jnz     loc_4D9676
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4D9606
jbe     short loc_4D962C
cmp     al, 2
jz      short loc_4D960E
jmp     loc_4D96A6

loc_4D9606:
test    al, al
jnz     loc_4D96A6

loc_4D960E:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      loc_4D96A6

loc_4D9620:
mov     byte ptr [edx+54Eh], 1
jmp     loc_4D96AD

loc_4D962C:
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jz      short loc_4D9657
mov     byte ptr ds:word_77E7FC+1, 3
mov     bh, 1
mov     ds:byte_77E7FE, bh
mov     ds:byte_77E7FF, ch
mov     byte ptr ds:dword_5F88B1+1, bh
jmp     short loc_4D96AD

loc_4D9657:
mov     eax, 3
call    sub_47E888
test    eax, eax
jnz     short loc_4D96AD
or      ds:byte_5F8364, 3
xor     dh, dh
mov     byte ptr ds:dword_5F88B1+1, dh
jmp     short loc_4D96AD

loc_4D9676:
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4D9687
jbe     short loc_4D968B
cmp     al, 2

loc_4D9683:
jz      short loc_4D9620
jmp     short loc_4D96A6

loc_4D9687:
test    al, al
jmp     short loc_4D9683

loc_4D968B:
mov     byte ptr ds:word_77E7FC+1, 3
mov     ds:byte_77E7FE, 1
xor     ah, ah
mov     ds:byte_77E7FF, ah
jmp     loc_4D9620

loc_4D96A6:
mov     byte ptr [edx+54Eh], 0

loc_4D96AD:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53C3E8[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53C184[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53C40C
add     edx, eax
mov     eax, ds:dword_53C678[ecx*4]
shl     eax, 3
add     eax, offset unk_53C478
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B6381
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9562 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_47]



sub_4D9752 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53CA40[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jnz     short loc_4D9824
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4D9803
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4D9803
mov     ds:byte_53CC33, 1
jmp     short loc_4D980B

loc_4D9803:
xor     bh, bh
mov     ds:byte_53CC33, bh

loc_4D980B:
cmp     byte ptr ds:dword_77E7D5+1, 7
jl      short loc_4D981D
mov     ds:byte_53CC1A, 1Bh
jmp     short loc_4D9824

loc_4D981D:
mov     ds:byte_53CC1A, 3

loc_4D9824:
mov     byte ptr [ecx+54Eh], 0
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53CDC4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53CBFC[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_53CDDC
add     ecx, eax
mov     eax, ds:dword_53CE6C[edx*4]
shl     eax, 3
add     eax, offset unk_53CE24
mov     edx, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B6F75
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9752 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_48]



sub_4D98D2 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53D2BC[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jbe     short loc_4D9966
cmp     al, 1
jz      loc_4D99F9
jmp     loc_4D9A0E

loc_4D9966:
mov     eax, 208h
call    sub_47E888
test    eax, eax
jz      short loc_4D998C
mov     ds:byte_5F84D4, 4
xor     dh, dh
mov     ds:byte_5F84D5, dh

loc_4D9983:
mov     byte ptr ds:dword_5F88B1+1, 0FFh
jmp     short loc_4D99B3

loc_4D998C:
mov     eax, 235h
call    sub_47E888
test    eax, eax
jz      short loc_4D99AB
xor     ch, ch
mov     ds:byte_5F84D4, ch
mov     ds:byte_5F84D5, 1
jmp     short loc_4D9983

loc_4D99AB:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+1, cl

loc_4D99B3:
mov     eax, 214h
call    sub_47E888
test    eax, eax
jz      short loc_4D9A0E
mov     eax, 24Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4D9A0E
mov     eax, offset unk_53D980
call    sub_42C443
mov     edx, 0F0000h
call    sub_4A7AE1
mov     eax, offset unk_53D988
call    sub_42C443
mov     edx, 0F0100h
call    sub_4A7AE1
jmp     short loc_4D9A0E

loc_4D99F9:
mov     eax, 9
call    sub_47E888
test    eax, eax
jnz     short loc_4D9A0E
mov     byte ptr ds:dword_5F88B1+1, 1

loc_4D9A0E:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53D7B4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53D578[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53D7C8
add     edx, eax
mov     eax, ds:dword_53D96C[ecx*4]
shl     eax, 3
add     eax, offset unk_53D804
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B7A93
pop     edx
pop     ecx
pop     ebx
retn
sub_4D98D2 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_49]



sub_4D9AB3 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53DDA4[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
test    al, al
jnz     short loc_4D9B56
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 2
jnz     short loc_4D9B4C
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4D9B5E

loc_4D9B4C:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+1, cl
jmp     short loc_4D9B5E

loc_4D9B56:
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh

loc_4D9B5E:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53E0C8[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53DF60[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_53E0E0
add     ecx, eax
mov     eax, ds:dword_53E308[edx*4]
shl     eax, 3
add     eax, offset unk_53E128
mov     edx, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B85BC
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9AB3 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_50]



sub_4D9C05 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53E69C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     edx, ds:off_53E7A4[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53E76C[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_53E7C4
add     edx, eax
mov     eax, ds:dword_53EA64[ecx*4]
shl     eax, 3
add     eax, offset unk_53E824
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B8D09
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9C05 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_51]



sub_4D9D23 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_53EE7C[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jbe     short loc_4D9DB5
cmp     al, 4
jz      short loc_4D9DE5
jmp     short loc_4D9DFD

loc_4D9DB5:
mov     eax, 31Bh
call    sub_47E8B8
xor     al, al
mov     byte ptr ds:dword_5F88B1+1, al
cmp     byte ptr ds:dword_77E7D5+1, 5
jl      short loc_4D9E04
mov     eax, offset unk_53F314
call    sub_42C443
mov     edx, 93300h
call    sub_4A7AE1
jmp     short loc_4D9E04

loc_4D9DE5:
xor     bh, bh
mov     ds:byte_5F84D4, bh
mov     ds:byte_5F84D5, 1
mov     byte ptr ds:dword_5F88B1+1, 0FFh
jmp     short loc_4D9E04

loc_4D9DFD:
mov     byte ptr [ecx+54Eh], 0

loc_4D9E04:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_53F224[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_53F074[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_53F23C
mov     ecx, ds:dword_53F2FC[edx*4]
shl     ecx, 3
add     ecx, offset unk_53F284
mov     edx, eax
mov     eax, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B8D92
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9D23 endp

; [00000047 BYTES: COLLAPSED FUNCTION unknown_libname_52]



sub_4D9EB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4D9F39
jbe     short loc_4D9F5C
cmp     al, 2
jz      short loc_4D9F77
jmp     loc_4D9FA4

loc_4D9F39:
test    al, al
jnz     loc_4D9FA4
cmp     byte ptr ds:dword_77E7D5+1, 7
jl      short loc_4D9F53
mov     ds:byte_542322, 1Bh
jmp     short loc_4D9FA4

loc_4D9F53:
mov     ds:byte_542322, 3
jmp     short loc_4D9FA4

loc_4D9F5C:
cmp     byte ptr ds:dword_77E7D5+1, 7
jl      short loc_4D9F6E
mov     ds:byte_5423B2, 1Bh
jmp     short loc_4D9FA4

loc_4D9F6E:
mov     ds:byte_5423B2, 3
jmp     short loc_4D9FA4

loc_4D9F77:
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4D9F9C
mov     eax, 2Ch ; ','
call    sub_47E888
test    eax, eax
jnz     short loc_4D9F9C
mov     ds:byte_5424EB, 1
jmp     short loc_4D9FA4

loc_4D9F9C:
xor     bh, bh
mov     ds:byte_5424EB, bh

loc_4D9FA4:
mov     byte ptr [ecx+54Eh], 1
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54291C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_5422F8[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_542940
add     ecx, eax
mov     eax, ds:dword_542A04[edx*4]
shl     eax, 3
add     eax, offset unk_5429AC
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_540A24[eax*4]
call    sub_436B37
call    sub_4B96A4
pop     edx
pop     ecx
pop     ebx
retn
sub_4D9EB6 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_53]



sub_4DA05F proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_542D5C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_542DD4[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_542D88[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_542DD8
add     edx, eax
mov     eax, ds:dword_542E7C[ecx*4]
shl     eax, 3
add     eax, offset unk_542DE4
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B975E
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA05F endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_54]



sub_4DA184 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_543184[eax*4]
call    sub_4E79AB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
cmp     byte ptr ds:word_77E7FC, 0
jz      short loc_4DA220
mov     byte ptr ds:word_77E7FC+1, 8
xor     al, al
mov     ds:byte_77E7FE, al

loc_4DA220:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54341C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_543384[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_54343C
add     ecx, eax
mov     eax, ds:dword_5434C4[edx*4]
shl     eax, 3
add     eax, offset unk_54349C
mov     edx, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B9900
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA184 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_55]



sub_4DA2C7 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_5437E8[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
test    al, al
jnz     short loc_4DA374
mov     eax, 1Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4DA36B
xor     dl, dl
mov     byte ptr ds:dword_5F88B1+1, dl
jmp     short loc_4DA38F

loc_4DA36B:
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4DA38F

loc_4DA374:
cmp     al, 7
jl      short loc_4DA381
mov     ds:byte_5438C2, 1Bh
jmp     short loc_4DA388

loc_4DA381:
mov     ds:byte_5438C2, 3

loc_4DA388:
mov     byte ptr [ecx+54Eh], 1

loc_4DA38F:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54391C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_5438AC[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_54392C
mov     ecx, ds:dword_543B5C[edx*4]
shl     ecx, 3
add     ecx, offset unk_54395C
mov     edx, eax
mov     eax, ecx
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4B9A5D
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA2C7 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_56]



sub_4DA437 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_543EC0[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_5440F8[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_543FF0[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_544110
add     edx, eax
mov     eax, ds:dword_544168[ecx*4]
shl     eax, 3
add     eax, offset unk_544158
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
xor     edx, edx
mov     ds:dword_77E5EC, edx
call    sub_4B9CF6
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA437 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_57]



sub_4DA565 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
cmp     byte ptr ds:word_77E7FC, 0
jz      short loc_4DA5FB
mov     eax, 1Eh
call    sub_47E888
test    eax, eax
jnz     short loc_4DA5FB
mov     byte ptr ds:word_77E7FC+1, 0Ch
xor     al, al
mov     ds:byte_77E7FE, al

loc_4DA5FB:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_5451C4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_545038[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_5451D0
add     edx, eax
mov     eax, ds:dword_54522C[ecx*4]
shl     eax, 3
add     eax, offset unk_5451F4
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_544640[eax*4]
call    sub_436B37
call    sub_4BA236
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA565 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_58]



sub_4DA6B5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_545674[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_545544[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_545684
add     edx, eax
mov     eax, ds:dword_5456C4[ecx*4]
shl     eax, 3
add     eax, offset unk_5456B4
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BA32F
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA6B5 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_59]



sub_4DA7C7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_545A68[eax*4]
call    sub_4E79AB
mov     ebx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     dl, cl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jnz     short loc_4DA87C
mov     eax, 21Ah
call    sub_47E888
test    eax, eax
jz      short loc_4DA87C
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4DA87C
mov     eax, 21Bh
call    sub_47E8B8

loc_4DA87C:
mov     eax, 218h
call    sub_47E888
test    eax, eax
jnz     short loc_4DA8AC
mov     eax, 217h
call    sub_47E888
test    eax, eax
jz      short loc_4DA8AC
cmp     ds:word_77E7E6, 0Ah
jbe     short loc_4DA8AC
mov     eax, 218h
call    sub_47E8B8

loc_4DA8AC:
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jnz     short loc_4DA921
mov     eax, 21Bh
call    sub_47E888
test    eax, eax
jz      short loc_4DA8E5
mov     ecx, 6
mov     edi, offset unk_545CA8
mov     esi, offset unk_545CD8
rep movsd
mov     eax, offset unk_545F38
call    sub_42C443
mov     edx, 180300h
jmp     short loc_4DA913

loc_4DA8E5:
mov     eax, 218h
call    sub_47E888
test    eax, eax
jz      short loc_4DA918
mov     ecx, 6
mov     edi, offset unk_545CA8
mov     esi, offset unk_545CC0
rep movsd
mov     eax, offset unk_545F38
call    sub_42C443
mov     edx, 180200h

loc_4DA913:
call    sub_4A7AE1

loc_4DA918:
mov     byte ptr [ebx+54Eh], 1
jmp     short loc_4DA928

loc_4DA921:
mov     byte ptr [ebx+54Eh], 0

loc_4DA928:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_545E28[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_545C60[eax*4]
call    sub_4DC758
mov     ebx, ds:dword_77E7D0+2
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
mov     edx, offset unk_545E40
add     edx, eax
mov     eax, ds:dword_545F20[ebx*4]
shl     eax, 3
add     eax, offset unk_545E88
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BA84F
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA7C7 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_60]



sub_4DA9CF proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_546268[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_546320[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_5462BC[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_546324
add     edx, eax
mov     eax, ds:dword_5463C8[ecx*4]
shl     eax, 3
add     eax, offset unk_546330
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BAA61
pop     edx
pop     ecx
pop     ebx
retn
sub_4DA9CF endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_61]



sub_4DAAF4 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_546680[eax*4]
call    sub_4E79AB
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jnz     short loc_4DAB8A
mov     eax, 31Fh
call    sub_47E8B8

loc_4DAB8A:
mov     byte ptr [ecx+54Eh], 0
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_546780[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54670C[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_546794
add     edx, eax
mov     eax, ds:dword_546850[ecx*4]
shl     eax, 3
add     eax, offset unk_5467D0
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BABE0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAAF4 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_62]



sub_4DAC36 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
cmp     byte ptr ds:dword_77E7D5, 0Ah
jge     short loc_4DACB2
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4DACC4

loc_4DACB2:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+1, cl
mov     eax, 642h
call    sub_47EA91

loc_4DACC4:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_548508[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_548080[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_548540
add     ecx, eax
mov     eax, ds:dword_548628[edx*4]
shl     eax, 3
add     eax, offset unk_5485E8
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_5471F4[eax*4]
call    sub_436B37
call    sub_4BADDA
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAC36 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_63]



sub_4DAD78 proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_54A12C[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_549F20[ecx*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_54A140
add     ecx, eax
mov     eax, ds:dword_54A1AC[edx*4]
shl     eax, 3
add     eax, offset unk_54A17C
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_549250[eax*4]
call    sub_436B37
call    sub_4BB16E
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAD78 endp

; [0000003D BYTES: COLLAPSED FUNCTION unknown_libname_64]



sub_4DAE98 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54A3AC[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54A438[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54A418[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54A440
add     edx, eax
mov     eax, ds:dword_54A480[ecx*4]
shl     eax, 3
add     eax, offset unk_54A458
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB369
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAE98 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_65]



sub_4DAFC6 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54A7E4[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54A8B4[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54A890[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54A8C0
add     edx, eax
mov     eax, ds:dword_54A964[ecx*4]
shl     eax, 3
add     eax, offset unk_54A8E4
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB3B4
pop     edx
pop     ecx
pop     ebx
retn
sub_4DAFC6 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_66]



sub_4DB0F4 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_54ADDC[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_54AF68[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54AF40[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54AF78
add     edx, eax
mov     eax, ds:dword_54B028[ecx*4]
shl     eax, 3
add     eax, offset unk_54AFA8
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    nullsub_17
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB0F4 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_67]



sub_4DB221 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54B16C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54B214[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54B1F0[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54B220
add     edx, eax
mov     eax, ds:dword_54B2C4[ecx*4]
shl     eax, 3
add     eax, offset unk_54B244
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB4BD
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB221 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_68]



sub_4DB34F proc near
push    ebx
push    ecx
push    edx
mov     ecx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, eax
shl     edx, 3
add     edx, offset unk_6EA0B0
mov     eax, ds:off_54B920[eax*4]
call    sub_4E79AB
xor     ah, ah
mov     al, [edx+2]
mov     ds:word_77EAAE, ax
mov     al, [edx+3]
mov     ds:word_77EAB0, ax
mov     al, [edx]
mov     ds:byte_77EAC5, al
mov     al, [edx+1]
mov     ds:byte_77EAC3, al
mov     al, ds:byte_77EAC5
mov     ah, byte ptr ds:word_77EAAE
add     al, ah
mov     ds:byte_77EAC4, al
mov     al, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     al, bl
mov     ds:byte_77EAC2, al
mov     eax, [edx+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
test    al, al
jbe     short loc_4DB3D4
cmp     al, 3
jz      short loc_4DB3DD
jmp     short loc_4DB3E7

loc_4DB3D4:
mov     byte ptr ds:dword_5F88B1+1, 1
jmp     short loc_4DB3EE

loc_4DB3DD:
mov     eax, 31Dh
call    sub_47E8B8

loc_4DB3E7:
mov     byte ptr [ecx+54Eh], 0

loc_4DB3EE:
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, ds:off_54BB88[edx*4]
mov     ds:dword_77E708, eax
mov     eax, ds:dword_77EA5A
sar     eax, 18h
mov     ecx, ds:off_54BA70[edx*4]
mov     edx, eax
mov     eax, ecx
call    sub_4DC758
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 2
add     edx, offset unk_54BB98
mov     eax, ds:dword_54BC20[eax*4]
shl     eax, 3
add     eax, offset unk_54BBC8
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BB508
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB34F endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_69]



sub_4DB49C proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:dword_54D3D4[eax*4]
call    sub_4E79AB
mov     edx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     ch, ch
mov     cl, [eax+2]
mov     ds:word_77EAAE, cx
mov     cl, [eax+3]
mov     ds:word_77EAB0, cx
mov     bl, [eax]
mov     ds:byte_77EAC5, bl
mov     bl, [eax+1]
mov     ds:byte_77EAC3, bl
mov     bl, ds:byte_77EAC5
mov     bh, byte ptr ds:word_77EAAE
add     bl, bh
mov     ds:byte_77EAC4, bl
mov     bl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     bl, cl
mov     ds:byte_77EAC2, bl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 0Bh
jb      short loc_4DB530
jbe     short loc_4DB534
cmp     al, 0Fh
jz      short loc_4DB534
jmp     short loc_4DB56B

loc_4DB530:
cmp     al, 2
jnz     short loc_4DB56B

loc_4DB534:
cmp     byte ptr ds:dword_560BDC, 0
jz      short loc_4DB56B
cmp     byte ptr ds:dword_560BDC+1, 0
jz      short loc_4DB56B
mov     byte ptr [edx+54Eh], 0FFh
mov     byte ptr [edx+170h], 0
mov     byte ptr [edx+171h], 1
mov     eax, edx
call    sub_4B56DA
mov     eax, edx
call    sub_4B570A
jmp     short loc_4DB572

loc_4DB56B:
mov     byte ptr [edx+54Eh], 1

loc_4DB572:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54DDA4[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54D9B8[eax*4]
call    sub_4DC758
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ecx, offset unk_54DDE8
add     ecx, eax
mov     eax, ds:dword_54DF0C[edx*4]
shl     eax, 3
add     eax, offset unk_54DEB4
mov     edx, ecx
call    sub_4E22FB
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54C800[eax*4]
call    sub_436B37
call    sub_4BB88F
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB49C endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_70]



sub_4DB62E proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54E294[eax*4]
call    sub_4E79AB
mov     edx, offset byte_5F8364
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     ch, ch
mov     cl, [eax+2]
mov     ds:word_77EAAE, cx
mov     cl, [eax+3]
mov     ds:word_77EAB0, cx
mov     bl, [eax]
mov     ds:byte_77EAC5, bl
mov     bl, [eax+1]
mov     ds:byte_77EAC3, bl
mov     bl, ds:byte_77EAC5
mov     bh, byte ptr ds:word_77EAAE
add     bl, bh
mov     ds:byte_77EAC4, bl
mov     bl, ds:byte_77EAC3
mov     cl, byte ptr ds:word_77EAB0
add     bl, cl
mov     ds:byte_77EAC2, bl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 0Bh
jz      short loc_4DB6F7
mov     al, byte ptr ds:dword_77E7D5
cmp     al, 1
jb      short loc_4DB6CB
jbe     short loc_4DB6CF
cmp     al, 2

loc_4DB6C7:
jz      short loc_4DB6E5
jmp     short loc_4DB6EE

loc_4DB6CB:
test    al, al
jmp     short loc_4DB6C7

loc_4DB6CF:
mov     byte ptr ds:word_77E7FC+1, 1Bh
mov     ds:byte_77E7FE, 1
xor     ah, ah
mov     ds:byte_77E7FF, ah

loc_4DB6E5:
mov     byte ptr [edx+54Eh], 1
jmp     short loc_4DB70F

loc_4DB6EE:
mov     byte ptr [edx+54Eh], 0
jmp     short loc_4DB70F

loc_4DB6F7:
mov     byte ptr ds:word_77E7FC, ch
mov     ds:byte_77E7FF, ch
mov     byte ptr ds:dword_5F88B1+1, ch
mov     byte ptr ds:dword_5F88B1+2, ch

loc_4DB70F:
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, ds:off_54E74C[eax*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54E4E8[eax*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54E770
add     edx, eax
mov     eax, ds:dword_54E9DC[ecx*4]
shl     eax, 3
add     eax, offset unk_54E7DC
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BBAC0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB62E endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_71]



sub_4DB7BC proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:off_54ED00[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54EC80[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54ED08
add     edx, eax
mov     eax, ds:dword_54EDA0[ecx*4]
shl     eax, 3
add     eax, offset unk_54ED20
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BC141
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB7BC endp

; [0000004F BYTES: COLLAPSED FUNCTION unknown_libname_72]



sub_4DB8E0 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     eax, ds:off_54F40C[eax*4]
call    sub_4E79AB
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 3
add     eax, offset unk_6EA0B0
xor     dh, dh
mov     dl, [eax+2]
mov     ds:word_77EAAE, dx
mov     dl, [eax+3]
mov     ds:word_77EAB0, dx
mov     dl, [eax]
mov     ds:byte_77EAC5, dl
mov     dl, [eax+1]
mov     ds:byte_77EAC3, dl
mov     dl, ds:byte_77EAC5
mov     dh, byte ptr ds:word_77EAAE
add     dl, dh
mov     ds:byte_77EAC4, dl
mov     dl, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     dl, bl
mov     ds:byte_77EAC2, dl
mov     eax, [eax+4]
mov     ds:dword_77E700, eax
mov     byte ptr ds:dword_5F88B1+1, 1
mov     edx, ds:off_54F7F0[ecx*4]
mov     ds:dword_77E708, edx
mov     edx, ds:dword_77EA5A
sar     edx, 18h
mov     eax, ds:off_54F730[ecx*4]
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset unk_54F808
add     edx, eax
mov     eax, ds:dword_54F8D0[ecx*4]
shl     eax, 3
add     eax, offset unk_54F850
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BC25F
pop     edx
pop     ecx
pop     ebx
retn
sub_4DB8E0 endp

; [00000045 BYTES: COLLAPSED FUNCTION unknown_libname_73]



sub_4DBA0D proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     edx, eax
shl     edx, 3
add     edx, offset unk_6EA0B0
mov     eax, ds:off_54FCE0[eax*4]
call    sub_4E79AB
xor     ah, ah
mov     al, [edx+2]
mov     ds:word_77EAAE, ax
mov     al, [edx+3]
mov     ds:word_77EAB0, ax
mov     al, [edx]
mov     ds:byte_77EAC5, al
mov     al, [edx+1]
mov     ds:byte_77EAC3, al
mov     al, ds:byte_77EAC5
mov     ah, byte ptr ds:word_77EAAE
add     al, ah
mov     ds:byte_77EAC4, al
mov     al, ds:byte_77EAC3
mov     bl, byte ptr ds:word_77EAB0
add     al, bl
mov     ds:byte_77EAC2, al
mov     eax, [edx+4]
mov     ds:dword_77E700, eax
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+1, bh
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
mov     eax, ds:off_54FDBC[edx*4]
mov     ds:dword_77E708, eax
mov     ecx, ds:dword_77EA5A
sar     ecx, 18h
mov     eax, ds:off_54FD88[edx*4]
mov     edx, ecx
call    sub_4DC758
mov     ecx, ds:dword_77E7D0+2
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, offset unk_54FDD8
mov     eax, ds:dword_54FE44[ecx*4]
shl     eax, 3
add     eax, offset unk_54FE2C
call    sub_4E22FB
xor     eax, eax
call    sub_436B37
call    sub_4BC394
pop     edx
pop     ecx
pop     ebx
retn
sub_4DBA0D endp




sub_4DBAEF proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, offset dword_77E784
mov     ecx, ds:dword_77E7D0+1
sar     ecx, 18h
mov     eax, ds:dword_77E7D0+2
sar     eax, 18h
mov     [esp+1Ch+var_1C], eax
xor     ebp, ebp
call    sub_4DBDA0
mov     edi, ecx
shl     edi, 2
mov     esi, ds:off_550190[edi]
movsx   esi, word ptr [esi]
mov     eax, ds:dword_77E7E8+2
sar     eax, 10h
cmp     eax, esi
jz      short loc_4DBB7F
mov     word ptr ds:dword_77E7EC, si
mov     edx, offset unk_6EA0A8
mov     eax, (offset dword_6E40AA+2)
call    sub_4EECF9
mov     eax, esi
call    sub_42BEB2
mov     eax, [esp+1Ch+var_1C]
mov     esi, ds:off_550190[edi]
mov     eax, [esi+eax*2]
sar     eax, 10h
mov     word ptr ds:dword_77E7EC+2, ax
test    ax, ax
jl      short loc_4DBB6E
call    sub_42BEB2

loc_4DBB6E:
xor     eax, eax
call    sub_4A6495
call    sub_4A7319
call    sub_4A7B2D

loc_4DBB7F:
mov     eax, ecx
call    ds:funcs_4DBB81[eax*4] ; Watcom v9-*1.5  32bit NT runtime
; Watcom v9-*1.5  32bit common runtime
mov     al, ds:byte_77E806
and     al, 1
movsx   eax, al
call    sub_47E7F2
inc     word ptr [ebx+62h]
mov     ah, [ebx+50h]
cmp     ah, 5
jz      short loc_4DBBB7
cmp     ah, 6
jz      short loc_4DBBB7
cmp     ah, 0Fh
jz      short loc_4DBBB7
mov     byte ptr [ebx+65h], 1
mov     al, [ebx+65h]
mov     [ebx+64h], al

loc_4DBBB7:
xor     ecx, ecx

loc_4DBBB9:
mov     eax, ecx
mov     dword ptr [ebx+eax*4+174h], 0
inc     ecx
cmp     ecx, 8
jl      short loc_4DBBB9
mov     eax, ebp
add     esp, 4
pop     ebp

loc_4DBBD2:
pop     edi

loc_4DBBD3:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DBAEF endp




sub_4DBBD8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset dword_77E784
mov     ecx, offset byte_5F8364
mov     edi, ds:dword_77E7D0+1
sar     edi, 18h
mov     edx, ds:dword_77E7D0+2
sar     edx, 18h
xor     ebx, ebx
call    sub_4DBDA0
mov     eax, ds:dword_77EA56+3
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_4DBC58
mov     eax, ds:off_550190[edi*4]
mov     edx, [eax+edx*2]
sar     edx, 10h
test    edx, edx
jl      short loc_4DBC38
mov     eax, ds:dword_77E7EC
sar     eax, 10h
cmp     eax, edx
jz      short loc_4DBC38
mov     eax, edx
call    sub_42BEB2
mov     word ptr ds:dword_77E7EC+2, dx

loc_4DBC38:
call    sub_4DBD14
xor     eax, eax
call    sub_4A6495
mov     edx, 80h
mov     eax, 3FEh
call    sub_4DC979
call    sub_4DE4B5

loc_4DBC58:
mov     eax, edi
call    ds:funcs_4DBC5A[eax*4]
mov     ah, byte ptr ds:dword_560BDC
test    ah, ah
jnz     short loc_4DBC8C
mov     ds:byte_77EABF, ah
mov     eax, ds:dword_77EA56+3
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_4DBC8C
mov     dword ptr [ecx+8], 0
and     byte ptr [ecx+0BDh], 0BFh

loc_4DBC8C:
mov     al, [ecx+54Eh]
test    al, al
jl      short loc_4DBCCA
jz      short loc_4DBCBE
mov     dl, [ecx+54Fh]
test    dl, dl
jz      short loc_4DBCB0
mov     al, [ecx+172h]
mov     [ecx+170h], al
jmp     short loc_4DBCB6

loc_4DBCB0:
mov     [ecx+170h], dl

loc_4DBCB6:
mov     al, [ecx+173h]
jmp     short loc_4DBCC4

loc_4DBCBE:
mov     [ecx+170h], al

loc_4DBCC4:
mov     [ecx+171h], al

loc_4DBCCA:
call    sub_4EDD33
call    sub_432682
call    sub_4DFF74
call    sub_4377CA
mov     byte ptr [esi+7Eh], 0
mov     eax, 1FFh
call    sub_47EA91
mov     eax, ebx
jmp     loc_4DBBD2
sub_4DBBD8 endp




sub_4DBCF3 proc near
push    ecx
mov     ecx, eax
test    edx, edx
jz      short loc_4DBCFF
call    sub_4DD215

loc_4DBCFF:
test    ebx, ebx
jz      short loc_4DBD0A
mov     word ptr ds:dword_77E7EC+2, cx

loc_4DBD0A:
movsx   eax, cx
call    sub_42BEB2
pop     ecx
retn
sub_4DBCF3 endp




sub_4DBD14 proc near
push    edx
mov     eax, ds:dword_5F84CB
sar     eax, 18h
mov     eax, ds:dword_54FE5E[eax*2]
sar     eax, 10h
mov     edx, ds:dword_77E7F2
sar     edx, 10h
cmp     edx, eax
jz      short loc_4DBD3F
mov     word ptr ds:dword_77E7F2+2, ax
call    sub_42BEB2

loc_4DBD3F:
mov     eax, ds:dword_5F84CB+1
sar     eax, 18h
sar     eax, 1
mov     eax, ds:dword_54FE62[eax*2]
sar     eax, 10h
mov     edx, ds:dword_77E7F2+2
sar     edx, 10h
cmp     edx, eax
jz      short loc_4DBD6B
mov     word ptr ds:dword_77E7F6, ax
call    sub_42BEB2

loc_4DBD6B:
cmp     ds:byte_5F84D6, 1
jle     short loc_4DBD9E
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
mov     eax, ds:dword_54FE66[eax*2]
sar     eax, 10h
mov     edx, ds:dword_77E7F6
sar     edx, 10h
cmp     edx, eax
jz      short loc_4DBD9E
mov     word ptr ds:dword_77E7F6+2, ax
call    sub_42BEB2

loc_4DBD9E:
pop     edx
retn
sub_4DBD14 endp




sub_4DBDA0 proc near
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
call    sub_4DBDBD
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
call    ds:funcs_4DBDB5[eax*4]
sub_4DBDA0 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_18]



sub_4DBDBD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx

loc_4DBDC5:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
cmp     edx, ds:dword_55001C[eax]
jge     loc_4DBBD3
lea     ebx, [edx+edx]
mov     ecx, ds:off_550020[eax]
mov     eax, ds:off_550024[eax]
add     eax, ebx
mov     bx, [ecx+ebx]
mov     [eax], bx
inc     edx
jmp     short loc_4DBDC5
sub_4DBDBD endp

db 90h
jpt_4DBE23 dd offset loc_4DBE2A ; jump table for switch statement
dd offset loc_4DBE50
dd offset loc_4DBE76
dd offset loc_4DBE76
dd offset loc_4DBE76
dd offset loc_4DBE76



sub_4DBE0F proc near
push    ebx
push    esi
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      def_4DBE23      ; jumptable 004DBE23 default case
and     eax, 0FFh
jmp     jpt_4DBE23[eax*4] ; switch jump

loc_4DBE2A:             ; jumptable 004DBE23 case 0
mov     eax, 0Ch
call    sub_47E888
test    eax, eax
jz      short loc_4DBE44
mov     ds:word_55D680, 0Dh
pop     esi
pop     ebx
retn

loc_4DBE44:
mov     ds:word_55D680, 0Ch
pop     esi
pop     ebx
retn

loc_4DBE50:             ; jumptable 004DBE23 case 1
mov     ds:word_55D680, 0Dh
mov     esi, 11h
mov     ds:word_55D686, si
mov     ds:word_55D684, si
mov     ds:word_55D682, si
pop     esi
pop     ebx
retn

loc_4DBE76:             ; jumptable 004DBE23 cases 2-5
mov     ds:word_55D680, 0Dh
mov     eax, 0Fh
mov     ds:word_55D686, ax
mov     ds:word_55D684, ax
mov     ds:word_55D682, ax
pop     esi
pop     ebx
retn

def_4DBE23:             ; jumptable 004DBE23 default case
mov     ds:word_55D680, 0Dh
mov     ebx, 10h
mov     ds:word_55D686, bx
mov     ds:word_55D684, bx
mov     ds:word_55D682, bx
pop     esi
pop     ebx
retn
sub_4DBE0F endp




sub_4DBEBF proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 3
jb      short loc_4DBEE9
jbe     loc_4DBF3C
cmp     al, 5
jb      loc_4DBF4F
jbe     loc_4DBF4F
cmp     al, 0Bh
jz      loc_4DBF62
jmp     loc_4DBF75

loc_4DBEE9:
cmp     al, 1
jb      short loc_4DBEF1
jbe     short loc_4DBF29
jmp     short loc_4DBF3C

loc_4DBEF1:
test    al, al
jnz     loc_4DBF75
mov     eax, 6
call    sub_47E888
test    eax, eax
jz      short loc_4DBF1F
mov     eax, 59h ; 'Y'
call    sub_47E888
test    eax, eax
jnz     short loc_4DBF1F
mov     ds:word_55D760, 18h
retn

loc_4DBF1F:
mov     ds:word_55D760, 17h
retn

loc_4DBF29:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Ah
retn

loc_4DBF3C:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Bh
retn

loc_4DBF4F:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Ch
retn

loc_4DBF62:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Eh
retn

loc_4DBF75:
mov     ds:word_55D760, 17h
mov     ds:word_55D762, 1Dh
retn
sub_4DBEBF endp

db 8Dh, 40h, 0
jpt_4DC02D dd offset loc_4DC034 ; jump table for switch statement
dd offset loc_4DC064
dd offset loc_4DC06E
dd offset loc_4DC06E
dd offset loc_4DC06E
dd offset loc_4DC06E
dd offset loc_4DC078
dd offset loc_4DC078
dd offset def_4DC02D
dd offset def_4DC02D
dd offset def_4DC02D
dd offset loc_4DC082



sub_4DBFBB proc near
mov     eax, 204h
call    sub_47E888
test    eax, eax
jz      short loc_4DBFE1
mov     eax, 206h
call    sub_47E888
test    eax, eax
jnz     short loc_4DBFE1
mov     ds:word_55D662, 2Ah ; '*'
retn

loc_4DBFE1:
mov     eax, 212h
call    sub_47E888
test    eax, eax
jz      short loc_4DC007
mov     eax, 213h
call    sub_47E888
test    eax, eax
jnz     short loc_4DC007
mov     ds:word_55D662, 29h ; ')'
retn

loc_4DC007:
mov     eax, 200h
call    sub_47E888
test    eax, eax
jz      short loc_4DC01F
mov     ds:word_55D662, 27h ; '''
retn

loc_4DC01F:
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 0Bh         ; switch 12 cases
ja      short def_4DC02D ; jumptable 004DC02D default case, cases 8-10
and     eax, 0FFh
jmp     jpt_4DC02D[eax*4] ; switch jump

loc_4DC034:             ; jumptable 004DC02D case 0
mov     eax, 2
call    sub_47E888
test    eax, eax
jz      short loc_4DC05A
mov     eax, 1
call    sub_47E888
test    eax, eax
jnz     short loc_4DC05A
mov     ds:word_55D662, 26h ; '&'
retn

loc_4DC05A:
mov     ds:word_55D662, 25h ; '%'
retn

loc_4DC064:             ; jumptable 004DC02D case 1
mov     ds:word_55D662, 28h ; '('
retn

loc_4DC06E:             ; jumptable 004DC02D cases 2-5
mov     ds:word_55D662, 2Bh ; '+'
retn

loc_4DC078:             ; jumptable 004DC02D cases 6,7
mov     ds:word_55D662, 2Ch ; ','
retn

loc_4DC082:             ; jumptable 004DC02D case 11
mov     ds:word_55D662, 2Eh ; '.'
retn

def_4DC02D:             ; jumptable 004DC02D default case, cases 8-10
mov     ds:word_55D662, 2Dh ; '-'
retn
sub_4DBFBB endp

db 90h
jpt_4DC0BD dd offset loc_4DC0C4 ; jump table for switch statement
dd offset loc_4DC0EF
dd offset loc_4DC0F9
dd offset loc_4DC0F9
dd offset loc_4DC0F9
dd offset loc_4DC0F9



sub_4DC0AF proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      short def_4DC0BD ; jumptable 004DC0BD default case
and     eax, 0FFh
jmp     jpt_4DC0BD[eax*4] ; switch jump

loc_4DC0C4:             ; jumptable 004DC0BD case 0
mov     ds:word_55D72A, 34h ; '4'
mov     eax, 630h
call    sub_47E888
test    eax, eax
jz      short loc_4DC0E5
mov     ds:word_55D72E, 3Ch ; '<'
retn

loc_4DC0E5:
mov     ds:word_55D72E, 3Ah ; ':'
retn

loc_4DC0EF:             ; jumptable 004DC0BD case 1
mov     ds:word_55D72A, 35h ; '5'
retn

loc_4DC0F9:             ; jumptable 004DC0BD cases 2-5
mov     ds:word_55D72A, 36h ; '6'
retn

def_4DC0BD:             ; jumptable 004DC0BD default case
mov     ds:word_55D72A, 37h ; '7'
retn
sub_4DC0AF endp




sub_4DC10D proc near
push    edx
push    edi
cmp     byte ptr ds:dword_77E7D5+1, 6
jz      short loc_4DC13C
mov     edi, 41h ; 'A'
mov     ds:word_55D752, di
mov     ds:word_55D750, di
mov     ds:word_55D74E, di
mov     ds:word_55D74C, di
pop     edi
pop     edx
retn

loc_4DC13C:
mov     edx, 42h ; 'B'
mov     ds:word_55D752, dx
mov     ds:word_55D750, dx
mov     ds:word_55D74E, dx
mov     ds:word_55D74C, dx
pop     edi
pop     edx
retn
sub_4DC10D endp

db 8Dh, 40h, 0
jpt_4DC191 dd offset loc_4DC198 ; jump table for switch statement
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC198
dd offset loc_4DC1A2
dd offset loc_4DC1A2



sub_4DC183 proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 7           ; switch 8 cases
ja      short def_4DC191 ; jumptable 004DC191 default case
and     eax, 0FFh
jmp     jpt_4DC191[eax*4] ; switch jump

loc_4DC198:             ; jumptable 004DC191 cases 0-5
mov     ds:word_55D70A, 44h ; 'D'
retn

loc_4DC1A2:             ; jumptable 004DC191 cases 6,7
mov     ds:word_55D70A, 45h ; 'E'
retn

def_4DC191:             ; jumptable 004DC191 default case
mov     ds:word_55D70A, 46h ; 'F'
retn
sub_4DC183 endp

db 90h
jpt_4DC1DD dd offset loc_4DC1E4 ; jump table for switch statement
dd offset loc_4DC1E4
dd offset loc_4DC1EE
dd offset loc_4DC1EE
dd offset loc_4DC1EE
dd offset loc_4DC1EE



sub_4DC1CF proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      short def_4DC1DD ; jumptable 004DC1DD default case
and     eax, 0FFh
jmp     jpt_4DC1DD[eax*4] ; switch jump

loc_4DC1E4:             ; jumptable 004DC1DD cases 0,1
mov     ds:word_55D65E, 51h ; 'Q'
retn

loc_4DC1EE:             ; jumptable 004DC1DD cases 2-5
mov     ds:word_55D65E, 52h ; 'R'
retn

def_4DC1DD:             ; jumptable 004DC1DD default case
mov     ds:word_55D65E, 53h ; 'S'
retn
sub_4DC1CF endp




sub_4DC202 proc near
push    ecx
push    edx
push    edi
cmp     byte ptr ds:dword_77E7D5+1, 5
jnz     short loc_4DC27E
mov     eax, 1Ch
call    sub_47E888
test    eax, eax
jz      short loc_4DC23B
mov     ds:word_55D718, 55h ; 'U'
mov     ds:word_55D71C, 57h ; 'W'
mov     ds:word_55D71E, 0FFFFh
pop     edi
pop     edx
pop     ecx
retn

loc_4DC23B:
mov     eax, 1Bh
call    sub_47E888
test    eax, eax
jz      short loc_4DC267
mov     edi, 0FFFFFFFFh
mov     ds:word_55D71E, di
mov     ds:word_55D71C, di
mov     ds:word_55D718, di
pop     edi
pop     edx
pop     ecx
retn

loc_4DC267:
mov     ecx, 55h ; 'U'
mov     ds:word_55D71E, cx
mov     ds:word_55D71C, cx
pop     edi
pop     edx
pop     ecx
retn

loc_4DC27E:
mov     edx, 56h ; 'V'
mov     ds:word_55D71E, dx
mov     ds:word_55D71C, dx
pop     edi
pop     edx
pop     ecx
retn
sub_4DC202 endp

db 8Bh, 0C0h
jpt_4DC2B5 dd offset def_4DC2B5 ; jump table for switch statement
dd offset loc_4DC2BC
dd offset loc_4DC2BC
dd offset loc_4DC2BC



sub_4DC2A7 proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 3           ; switch 4 cases
ja      short def_4DC2B5 ; jumptable 004DC2B5 default case, case 0
and     eax, 0FFh
jmp     jpt_4DC2B5[eax*4] ; switch jump

loc_4DC2BC:             ; jumptable 004DC2B5 cases 1-3
mov     eax, 30h ; '0'
call    sub_47E888
test    eax, eax
jnz     short def_4DC2B5 ; jumptable 004DC2B5 default case, case 0
mov     ds:word_55D736, 5Dh ; ']'
retn

def_4DC2B5:             ; jumptable 004DC2B5 default case, case 0
mov     ds:word_55D736, 5Ch ; '\'
retn
sub_4DC2A7 endp

db 90h
jpt_4DC305 dd offset loc_4DC30C ; jump table for switch statement
dd offset loc_4DC30C
dd offset loc_4DC30C
dd offset loc_4DC30C
dd offset loc_4DC30C
dd offset loc_4DC316



sub_4DC2F7 proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 5           ; switch 6 cases
ja      short def_4DC305 ; jumptable 004DC305 default case
and     eax, 0FFh
jmp     jpt_4DC305[eax*4] ; switch jump

loc_4DC30C:             ; jumptable 004DC305 cases 0-4
mov     ds:word_55D754, 60h ; '`'
retn

loc_4DC316:             ; jumptable 004DC305 case 5
mov     ds:word_55D754, 61h ; 'a'
retn

def_4DC305:             ; jumptable 004DC305 default case
mov     ds:word_55D754, 62h ; 'b'
retn
sub_4DC2F7 endp

db 90h
jpt_4DC359 dd offset loc_4DC360 ; jump table for switch statement
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC36A
dd offset loc_4DC374
dd offset loc_4DC374



sub_4DC34B proc near
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 7           ; switch 8 cases
ja      short def_4DC359 ; jumptable 004DC359 default case
and     eax, 0FFh
jmp     jpt_4DC359[eax*4] ; switch jump

loc_4DC360:             ; jumptable 004DC359 case 0
mov     ds:word_55D6BE, 69h ; 'i'
retn

loc_4DC36A:             ; jumptable 004DC359 cases 1-5
mov     ds:word_55D6BE, 6Ah ; 'j'
retn

loc_4DC374:             ; jumptable 004DC359 cases 6,7
mov     ds:word_55D6BE, 6Bh ; 'k'
retn

def_4DC359:             ; jumptable 004DC359 default case
mov     ds:word_55D6BE, 6Ch ; 'l'
retn
sub_4DC34B endp

db 8Dh, 40h, 0
jpt_4DC3CA dd offset loc_4DC3D1 ; jump table for switch statement
dd offset loc_4DC3D1
dd offset loc_4DC3DB
dd offset loc_4DC3DB
dd offset loc_4DC3DB



sub_4DC39F proc near
cmp     byte ptr ds:dword_77E7D5+1, 1
jnz     short loc_4DC3B3
mov     ds:word_55D6F0, 6Eh ; 'n'
jmp     short loc_4DC3BC

loc_4DC3B3:
mov     ds:word_55D6F0, 6Fh ; 'o'

loc_4DC3BC:
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 4           ; switch 5 cases
ja      short def_4DC3CA ; jumptable 004DC3CA default case
and     eax, 0FFh
jmp     jpt_4DC3CA[eax*4] ; switch jump

loc_4DC3D1:             ; jumptable 004DC3CA cases 0,1
mov     ds:word_55D6F2, 70h ; 'p'
retn

loc_4DC3DB:             ; jumptable 004DC3CA cases 2-4
mov     ds:word_55D6F2, 71h ; 'q'
retn

def_4DC3CA:             ; jumptable 004DC3CA default case
mov     ds:word_55D6F2, 72h ; 'r'
retn
sub_4DC39F endp

jpt_4DC42E dd offset loc_4DC435 ; jump table for switch statement
dd offset loc_4DC435
dd offset loc_4DC43F
dd offset loc_4DC43F
dd offset loc_4DC43F



sub_4DC403 proc near
cmp     byte ptr ds:dword_77E7D5+1, 1
jnz     short loc_4DC417
mov     ds:word_55D640, 78h ; 'x'
jmp     short loc_4DC420

loc_4DC417:
mov     ds:word_55D640, 79h ; 'y'

loc_4DC420:
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 4           ; switch 5 cases
ja      short def_4DC42E ; jumptable 004DC42E default case
and     eax, 0FFh
jmp     jpt_4DC42E[eax*4] ; switch jump

loc_4DC435:             ; jumptable 004DC42E cases 0,1
mov     ds:word_55D642, 7Ah ; 'z'
retn

loc_4DC43F:             ; jumptable 004DC42E cases 2-4
mov     ds:word_55D642, 7Bh ; '{'
retn

def_4DC42E:             ; jumptable 004DC42E default case
mov     ds:word_55D642, 7Ch ; '|'
retn
sub_4DC403 endp




sub_4DC453 proc near
push    edx
push    esi
mov     al, byte ptr ds:dword_77E7D5+1
cmp     al, 2
jb      short loc_4DC46D
jbe     short loc_4DC46D
cmp     al, 4
jb      short loc_4DC46D
jbe     short loc_4DC48A
cmp     al, 0Bh
jz      short loc_4DC48A
pop     esi
pop     edx
retn

loc_4DC46D:
mov     esi, 9Fh
mov     ds:word_55D60A, si
mov     ds:word_55D608, si
mov     ds:word_55D606, si
pop     esi
pop     edx
retn

loc_4DC48A:
mov     edx, 0A0h
mov     ds:word_55D60A, dx
mov     ds:word_55D608, dx
mov     ds:word_55D606, dx
pop     esi
pop     edx
retn
sub_4DC453 endp




sub_4DC4A7 proc near

var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    ebp
sub     esp, 4
test    eax, eax
jz      short loc_4DC4E2
xor     ebx, ebx
mov     edx, offset byte_5F8364
add     edx, 0DE4h
mov     eax, offset byte_5F8364
call    sub_4EECF9
xor     ecx, ecx

loc_4DC4CC:
mov     dl, bl
or      dl, cl
imul    eax, ecx, 6F4h
mov     ds:byte_5F8365[eax], dl
inc     ecx
cmp     ecx, 2
jb      short loc_4DC4CC

loc_4DC4E2:
mov     ebx, 10h
mov     edx, offset byte_6DC7FC
add     edx, 11BCh
mov     eax, offset byte_6DC7FC
call    sub_4EECF9
xor     edx, edx
mov     ds:dword_77E780, edx
xor     ecx, ecx
mov     ds:dword_77E77C, edx

loc_4DC50C:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_6DC7FD[eax*4], dl
inc     ecx
cmp     ecx, 10h
jb      short loc_4DC50C
mov     ebx, 20h ; ' '
mov     edx, offset byte_6DD9CC
add     edx, 49FCh
mov     eax, offset byte_6DD9CC
call    sub_4EECF9
xor     esi, esi
mov     ds:dword_77E778, esi
mov     ds:dword_77E938, esi
xor     ecx, ecx

loc_4DC559:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
mov     dl, [esp+18h+var_18]
mov     ds:byte_6DD9CD[eax], dl
inc     ecx
cmp     ecx, 10h
jb      short loc_4DC559
mov     ebx, 40h ; '@'
mov     edx, offset unk_6E23DC
add     edx, 1CCCh
mov     eax, offset unk_6E23DC
call    sub_4EECF9
xor     ebp, ebp
mov     ds:dword_77E758, ebp
mov     ds:dword_77E93C, ebp
xor     ecx, ecx

loc_4DC5A8:
mov     dl, bl
or      dl, cl
imul    eax, ecx, 734h
mov     ds:byte_6E23DD[eax], dl
inc     ecx
cmp     ecx, 4
jb      short loc_4DC5A8
mov     ebx, 60h ; '`'
mov     edx, offset byte_57098C
add     edx, 237Ch
mov     eax, offset byte_57098C
call    sub_4EECF9
xor     edx, edx
mov     ds:dword_77E73C, edx
xor     ecx, ecx
mov     ds:dword_77E72C, edx

loc_4DC5E8:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_57098D[eax*4], dl
inc     ecx
cmp     ecx, 20h ; ' '
jb      short loc_4DC5E8
mov     ebx, 80h
mov     edx, offset unk_572D5C
add     edx, 15FCh
mov     eax, offset unk_572D5C
call    sub_4EECF9
xor     esi, esi
mov     ds:dword_572D54, esi
mov     ds:dword_572D58, esi
mov     ds:dword_57435C, esi
mov     ds:dword_574360, esi
xor     ecx, ecx

loc_4DC641:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_572D5D[eax*8], dl
inc     ecx
cmp     ecx, 40h ; '@'
jb      short loc_4DC641
mov     ebx, 0C0h
mov     edx, offset unk_56FA74
add     edx, 23Ch
mov     eax, offset unk_56FA74
call    sub_4EECF9
xor     edx, edx
mov     ds:dword_77E728, edx
xor     ecx, ecx
mov     ds:dword_77E740, edx

loc_4DC68E:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 3
add     eax, ecx
mov     dl, [esp+18h+var_18]
mov     ds:byte_56FA75[eax*4], dl
inc     ecx
cmp     ecx, 10h
jb      short loc_4DC68E
mov     ebx, 0E0h
mov     edx, offset unk_56FCB4
add     edx, 0BFCh
mov     eax, offset unk_56FCB4
call    sub_4EECF9
xor     esi, esi
mov     ds:dword_77E730, esi
mov     ds:dword_77E744, esi
xor     ecx, ecx

loc_4DC6D6:
mov     al, bl
or      al, cl
mov     [esp+18h+var_18], al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 5
mov     dl, [esp+18h+var_18]
mov     ds:byte_56FCB5[eax], dl
inc     ecx
cmp     ecx, 20h ; ' '
jb      short loc_4DC6D6
mov     edx, offset byte_56F80C
add     edx, 264h
mov     eax, offset byte_56F80C
call    sub_4EECF9
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_70E0AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_7055AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7056AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7014AC
call    memset_
add     esp, 4
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DC4A7 endp




sub_4DC758 proc near
push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     ebx, eax

loc_4DC761:
movsx   eax, byte ptr [ebx]
cmp     eax, 0FFFFFFFFh
jz      loc_4DC971
mov     al, [ebx+1]
cmp     al, 60h ; '`'
jb      short loc_4DC79E
jbe     loc_4DC8AB
cmp     al, 0C0h
jb      short loc_4DC791
jbe     loc_4DC8F9
cmp     al, 0E0h
jz      loc_4DC926
jmp     loc_4DC969

loc_4DC791:
cmp     al, 80h
jz      loc_4DC8EA
jmp     loc_4DC969

loc_4DC79E:
cmp     al, 20h ; ' '
jb      short loc_4DC7B1
jbe     short loc_4DC806
cmp     al, 40h ; '@'
jz      loc_4DC8A1
jmp     loc_4DC969

loc_4DC7B1:
test    al, al
jnz     loc_4DC969
test    edx, edx
jz      loc_4DC969
mov     cl, [ebx+3]
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_77E76C, eax
cmp     byte ptr [ebx+3], 0
jnz     short loc_4DC7DE
mov     eax, offset byte_5F8364
jmp     short loc_4DC7E3

loc_4DC7DE:
mov     eax, (offset dword_5F8A55+3)

loc_4DC7E3:
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx
mov     dword ptr [eax+8], 0
jmp     short loc_4DC82D

loc_4DC806:
call    sub_4DDF54

loc_4DC80B:
test    eax, eax
jz      loc_4DC969
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx

loc_4DC82D:
mov     ecx, [ebx+0Ah]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+34h], ecx
mov     [eax+1Ch], ecx
mov     ecx, [ebx+0Ch]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+38h], ecx
mov     [eax+20h], ecx
mov     ecx, [ebx+0Eh]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+3Ch], ecx
mov     [eax+24h], ecx
lea     edi, [eax+2Ch]
lea     esi, [ebx+0Ch]
movsd
movsd
mov     edi, esp
lea     esi, [eax+2Ch]
movsd
movsd
lea     edi, [eax+14h]
mov     esi, esp
movsd
movsd
mov     word ptr [eax+5Ch], 0
mov     cx, [eax+5Ch]
mov     [eax+54h], cx
xor     ecx, ecx
mov     cl, [ebx+7]
shl     ecx, 4
mov     [eax+5Eh], cx
mov     [eax+56h], cx
mov     word ptr [eax+60h], 0
mov     cx, [eax+60h]
mov     [eax+58h], cx
jmp     loc_4DC969

loc_4DC8A1:
call    sub_4DDFD0
jmp     loc_4DC80B

loc_4DC8AB:
cmp     byte ptr [ebx+2], 11h
jnz     short loc_4DC8E0
cmp     byte ptr ds:word_77E7FC, 0
jz      loc_4DC969
mov     al, byte ptr ds:word_77E7FC+1
cmp     al, ds:byte_77E7D4
jnz     loc_4DC969
mov     al, ds:byte_77E7FE
cmp     al, byte ptr ds:dword_77E7D5
jnz     loc_4DC969

loc_4DC8E0:
call    sub_4DE043
jmp     loc_4DC80B

loc_4DC8EA:
call    sub_4DE13B
test    eax, eax
jz      loc_4DC969
jmp     short loc_4DC92F

loc_4DC8F9:
call    sub_4DE1BE
test    eax, eax
jz      short loc_4DC969
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx
lea     edi, [eax+14h]
lea     esi, [ebx+0Ch]
movsd
movsd
jmp     short loc_4DC969

loc_4DC926:
call    sub_4DE227
test    eax, eax
jz      short loc_4DC969

loc_4DC92F:
mov     cl, [ebx]
mov     [eax], cl
mov     cx, [ebx+2]
mov     [eax+2], cx
mov     cx, [ebx+4]
mov     [eax+4], cx
mov     ecx, [ebx+8]
mov     [eax+0Ch], ecx
lea     edi, [eax+48h]
lea     esi, [ebx+0Ch]
movsd
movsd
mov     cx, [ebx+0Ch]
mov     [eax+1Ch], cx
mov     cx, [ebx+0Eh]
mov     [eax+1Eh], cx
mov     cx, [ebx+10h]
mov     [eax+20h], cx

loc_4DC969:
add     ebx, 14h
jmp     loc_4DC761

loc_4DC971:
add     esp, 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4DC758 endp




sub_4DC979 proc near

var_24= dword ptr -24h
var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
push    edx
test    [esp+24h+var_20], 1
jz      short loc_4DC9E1
mov     ebx, offset byte_5F8364
mov     esi, ds:dword_77E76C
xor     edx, edx
mov     [esp+24h+var_1C], edx
jmp     short loc_4DC9BB

loc_4DC99D:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DC9A7:
mov     edi, [esp+24h+var_1C]
inc     edi
mov     [esp+24h+var_1C], edi
add     ebx, 6F4h
cmp     edi, 2
jge     short loc_4DC9E1

loc_4DC9BB:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DC9A7
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DC99D
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E76C, eax
mov     byte ptr [ebx], 0
jmp     short loc_4DC9A7

loc_4DC9E1:
test    [esp+24h+var_20], 2
jz      short loc_4DCA3B
mov     ebx, offset byte_6DD9CC
mov     esi, ds:dword_77E778
xor     eax, eax
mov     [esp+24h+var_1C], eax
jmp     short loc_4DCA19

loc_4DC9FB:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCA05:
mov     edx, [esp+24h+var_1C]
inc     edx
mov     [esp+24h+var_1C], edx
add     ebx, 4A0h
cmp     edx, 10h
jge     short loc_4DCA3B

loc_4DCA19:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCA05
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DC9FB
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE2F6
jmp     short loc_4DCA05

loc_4DCA3B:
test    [esp+24h+var_20], 4
jz      short loc_4DCA95
mov     ebx, offset unk_6E23DC
mov     esi, ds:dword_77E758
xor     edi, edi
mov     [esp+24h+var_1C], edi
jmp     short loc_4DCA73

loc_4DCA55:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCA5F:
mov     ebp, [esp+24h+var_1C]
inc     ebp
mov     [esp+24h+var_1C], ebp
add     ebx, 734h
cmp     ebp, 4
jge     short loc_4DCA95

loc_4DCA73:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCA5F
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCA55
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE336
jmp     short loc_4DCA5F

loc_4DCA95:
test    [esp+24h+var_20], 8
jz      short loc_4DCAEF
mov     ebx, offset byte_6DC7FC
mov     esi, ds:dword_77E780
xor     edx, edx
mov     [esp+24h+var_1C], edx
jmp     short loc_4DCACD

loc_4DCAAF:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCAB9:
mov     ecx, [esp+24h+var_1C]
inc     ecx
mov     [esp+24h+var_1C], ecx
add     ebx, 11Ch
cmp     ecx, 10h
jge     short loc_4DCAEF

loc_4DCACD:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCAB9
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCAAF
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE3AC
jmp     short loc_4DCAB9

loc_4DCAEF:
test    [esp+24h+var_20], 10h
jz      short loc_4DCB50
mov     ebx, offset byte_57098C
mov     esi, ds:dword_77E73C
xor     ebp, ebp
mov     [esp+24h+var_1C], ebp
mov     ch, byte ptr [esp+24h+var_24]
jmp     short loc_4DCB2A

loc_4DCB0C:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCB16:
mov     eax, [esp+24h+var_1C]
inc     eax
mov     [esp+24h+var_1C], eax
add     ebx, 11Ch
cmp     eax, 20h ; ' '
jge     short loc_4DCB50

loc_4DCB2A:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jl      short loc_4DCB3B
test    byte ptr [ebx], 3
jz      short loc_4DCB16

loc_4DCB3B:
test    ch, 80h
jz      short loc_4DCB0C
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE371
jmp     short loc_4DCB16

loc_4DCB50:
test    [esp+24h+var_20], 20h
jz      loc_4DCBC5
mov     ebx, offset unk_572D5C
xor     ecx, ecx
mov     [esp+24h+var_1C], ecx
jmp     short loc_4DCB76

loc_4DCB68:
mov     edx, [esp+24h+var_1C]
inc     edx
mov     [esp+24h+var_1C], edx
cmp     edx, 2
jge     short loc_4DCBC5

loc_4DCB76:
mov     esi, [esp+24h+var_1C]
mov     esi, ds:dword_572D54[esi*4]
xor     edi, edi
mov     [esp+24h+var_18], edi
jmp     short loc_4DCBA4

loc_4DCB89:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCB93:
mov     ebp, [esp+24h+var_18]
inc     ebp
mov     [esp+24h+var_18], ebp
add     ebx, 58h ; 'X'
cmp     ebp, 20h ; ' '
jge     short loc_4DCB68

loc_4DCBA4:
mov     cl, byte ptr [esp+24h+var_18]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCB93
cmp     byte ptr [ebx+2], 80h
jb      short loc_4DCB93
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCB89
mov     eax, ebx
call    sub_4DE3EA
jmp     short loc_4DCB93

loc_4DCBC5:
test    [esp+24h+var_20], 40h
jz      loc_4DCC3C
mov     ebx, offset unk_572D5C
xor     esi, esi
mov     [esp+24h+var_1C], esi
mov     ch, byte ptr [esp+24h+var_24]
jmp     short loc_4DCBEE

loc_4DCBE0:
mov     edx, [esp+24h+var_1C]
inc     edx
mov     [esp+24h+var_1C], edx
cmp     edx, 2
jge     short loc_4DCC3C

loc_4DCBEE:
mov     esi, [esp+24h+var_1C]
mov     esi, ds:dword_572D54[esi*4]
xor     edi, edi
mov     [esp+24h+var_18], edi
jmp     short loc_4DCC1C

loc_4DCC01:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCC0B:
mov     ebp, [esp+24h+var_18]
inc     ebp
mov     [esp+24h+var_18], ebp
add     ebx, 58h ; 'X'
cmp     ebp, 20h ; ' '
jge     short loc_4DCBE0

loc_4DCC1C:
mov     cl, byte ptr [esp+24h+var_18]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCC0B
cmp     byte ptr [ebx+2], 80h
jnb     short loc_4DCC0B
test    ch, 80h
jz      short loc_4DCC01
mov     eax, ebx
call    sub_4DE3EA
jmp     short loc_4DCC0B

loc_4DCC3C:
test    [esp+24h+var_20], 80h
jz      short loc_4DCC8C
mov     ebx, offset unk_56FA74
mov     esi, ds:dword_77E728
xor     edi, edi
mov     [esp+24h+var_1C], edi
jmp     short loc_4DCC71

loc_4DCC56:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCC60:
mov     ebp, [esp+24h+var_1C]
inc     ebp
mov     [esp+24h+var_1C], ebp
add     ebx, 24h ; '$'
cmp     ebp, 10h
jge     short loc_4DCC8C

loc_4DCC71:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCC60
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCC56
mov     eax, ebx
call    sub_4DE439
jmp     short loc_4DCC60

loc_4DCC8C:
test    [esp+24h+var_1F], 1
jz      short loc_4DCCE3
mov     ebx, offset unk_56FCB4
mov     esi, ds:dword_77E730
xor     edx, edx
mov     [esp+24h+var_1C], edx
jmp     short loc_4DCCC1

loc_4DCCA6:
mov     edx, [esp+24h+var_24]
mov     eax, ebx
call    sub_4DCD52

loc_4DCCB0:
mov     ecx, [esp+24h+var_1C]
inc     ecx
mov     [esp+24h+var_1C], ecx
add     ebx, 60h ; '`'
cmp     ecx, 20h ; ' '
jge     short loc_4DCCE3

loc_4DCCC1:
mov     cl, byte ptr [esp+24h+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DCCB0
test    byte ptr [esp+24h+var_24], 80h
jz      short loc_4DCCA6
mov     eax, ebx
call    sub_432EAB
mov     eax, ebx
call    sub_4DE477
jmp     short loc_4DCCB0

loc_4DCCE3:
test    [esp+24h+var_1F], 2
jz      loc_4DCD49
mov     ebx, offset byte_56F80C
xor     ebp, ebp
mov     [esp+24h+var_1C], ebp
mov     dl, byte ptr [esp+24h+var_24]
jmp     short loc_4DCD35

loc_4DCCFE:
test    ch, 1
jz      short loc_4DCD0A
mov     ah, cl
xor     ah, 1
mov     [ebx], ah

loc_4DCD0A:
test    dl, 4
jz      short loc_4DCD12
xor     byte ptr [ebx], 2

loc_4DCD12:
test    byte ptr [esp+24h+var_24], 2
jz      short loc_4DCD1B
or      byte ptr [ebx], 1

loc_4DCD1B:
test    byte ptr [esp+24h+var_24], 8
jz      short loc_4DCD24
or      byte ptr [ebx], 2

loc_4DCD24:
mov     eax, [esp+24h+var_1C]
inc     eax
mov     [esp+24h+var_1C], eax
add     ebx, 38h ; '8'
cmp     eax, 0Bh
jge     short loc_4DCD49

loc_4DCD35:
mov     cl, [ebx]
test    cl, 3
jz      short loc_4DCD24
mov     ch, byte ptr [esp+24h+var_24]
test    ch, 80h
jz      short loc_4DCCFE
mov     byte ptr [ebx], 0
jmp     short loc_4DCD24

loc_4DCD49:
add     esp, 10h

loc_4DCD4C:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4DC979 endp




sub_4DCD52 proc near
test    dl, 1
jz      short loc_4DCD5B
xor     byte ptr [eax+6], 1

loc_4DCD5B:
test    dl, 4
jz      short loc_4DCD64
xor     byte ptr [eax+6], 2

loc_4DCD64:
test    dl, 2
jz      short loc_4DCD6D
or      byte ptr [eax+6], 1

loc_4DCD6D:
test    dl, 8
jz      short locret_4DCD76
or      byte ptr [eax+6], 2

locret_4DCD76:
retn
sub_4DCD52 endp




sub_4DCD77 proc near

var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
mov     esi, edx
test    [esp+20h+var_20], 2
jz      short loc_4DCDD7
mov     ebx, offset byte_6DD9CC
mov     edi, ds:dword_77E778
xor     edx, edx
mov     [esp+20h+var_1C], edx
jmp     short loc_4DCDB6

loc_4DCD9B:
mov     eax, ebx
call    sub_4DE2F6

loc_4DCDA2:
mov     ecx, [esp+20h+var_1C]
inc     ecx
mov     [esp+20h+var_1C], ecx
add     ebx, 4A0h
cmp     ecx, 10h
jge     short loc_4DCDD7

loc_4DCDB6:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCDA2
test    byte ptr [ebx+6], 20h
jz      short loc_4DCD9B
test    esi, esi
jz      short loc_4DCDA2
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCDA2

loc_4DCDD7:
test    [esp+20h+var_20], 4
jz      short loc_4DCE2C
mov     ebx, offset unk_6E23DC
mov     edi, ds:dword_77E758
xor     eax, eax
mov     [esp+20h+var_1C], eax
jmp     short loc_4DCE0B

loc_4DCDF0:
mov     eax, ebx
call    sub_4DE336

loc_4DCDF7:
mov     edx, [esp+20h+var_1C]
inc     edx
mov     [esp+20h+var_1C], edx
add     ebx, 734h
cmp     edx, 4
jge     short loc_4DCE2C

loc_4DCE0B:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCDF7
test    byte ptr [ebx+6], 20h
jz      short loc_4DCDF0
test    esi, esi
jz      short loc_4DCDF7
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCDF7

loc_4DCE2C:
test    [esp+20h+var_20], 8
jz      short loc_4DCE81
mov     ebx, offset byte_6DC7FC
mov     edi, ds:dword_77E780
xor     ebp, ebp
mov     [esp+20h+var_1C], ebp
jmp     short loc_4DCE60

loc_4DCE45:
mov     eax, ebx
call    sub_4DE3AC

loc_4DCE4C:
mov     eax, [esp+20h+var_1C]
inc     eax
mov     [esp+20h+var_1C], eax
add     ebx, 11Ch
cmp     eax, 10h
jge     short loc_4DCE81

loc_4DCE60:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCE4C
test    byte ptr [ebx+6], 20h
jz      short loc_4DCE45
test    esi, esi
jz      short loc_4DCE4C
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCE4C

loc_4DCE81:
test    [esp+20h+var_20], 10h
jz      short loc_4DCED6
mov     ebx, offset byte_57098C
mov     edi, ds:dword_77E73C
xor     ecx, ecx
mov     [esp+20h+var_1C], ecx
jmp     short loc_4DCEB5

loc_4DCE9A:
mov     eax, ebx
call    sub_4DE371

loc_4DCEA1:
mov     ebp, [esp+20h+var_1C]
inc     ebp
mov     [esp+20h+var_1C], ebp
add     ebx, 11Ch
cmp     ebp, 20h ; ' '
jge     short loc_4DCED6

loc_4DCEB5:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCEA1
test    byte ptr [ebx+6], 20h
jz      short loc_4DCE9A
test    esi, esi
jz      short loc_4DCEA1
mov     edx, esi
mov     eax, ebx
call    sub_4DD071
jmp     short loc_4DCEA1

loc_4DCED6:
test    [esp+20h+var_20], 20h
jz      loc_4DCF4D
mov     ebx, offset unk_572D5C
xor     edx, edx
mov     [esp+20h+var_1C], edx
jmp     short loc_4DCEFB

loc_4DCEED:
mov     edx, [esp+20h+var_1C]
inc     edx
mov     [esp+20h+var_1C], edx
cmp     edx, 2
jge     short loc_4DCF4D

loc_4DCEFB:
mov     edi, [esp+20h+var_1C]
mov     edi, ds:dword_572D54[edi*4]
xor     ecx, ecx
mov     [esp+20h+var_18], ecx
jmp     short loc_4DCF26

loc_4DCF0E:
mov     eax, ebx
call    sub_4DE3EA

loc_4DCF15:
mov     ebp, [esp+20h+var_18]
inc     ebp
mov     [esp+20h+var_18], ebp
add     ebx, 58h ; 'X'
cmp     ebp, 20h ; ' '
jge     short loc_4DCEED

loc_4DCF26:
mov     cl, byte ptr [esp+20h+var_18]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCF15
cmp     byte ptr [ebx+2], 80h
jb      short loc_4DCF15
test    byte ptr [ebx+6], 20h
jz      short loc_4DCF0E
test    esi, esi
jz      short loc_4DCF15
mov     edx, esi
mov     eax, ebx
call    sub_4DD0BE
jmp     short loc_4DCF15

loc_4DCF4D:
test    [esp+20h+var_20], 40h
jz      loc_4DCFC4
mov     ebx, offset unk_572D5C
xor     edi, edi
mov     [esp+20h+var_1C], edi
jmp     short loc_4DCF72

loc_4DCF64:
mov     ecx, [esp+20h+var_1C]
inc     ecx
mov     [esp+20h+var_1C], ecx
cmp     ecx, 2
jge     short loc_4DCFC4

loc_4DCF72:
mov     edi, [esp+20h+var_1C]
mov     edi, ds:dword_572D54[edi*4]
xor     ebp, ebp
mov     [esp+20h+var_18], ebp
jmp     short loc_4DCF9D

loc_4DCF85:
mov     eax, ebx
call    sub_4DE3EA

loc_4DCF8C:
mov     eax, [esp+20h+var_18]
inc     eax
mov     [esp+20h+var_18], eax
add     ebx, 58h ; 'X'
cmp     eax, 20h ; ' '
jge     short loc_4DCF64

loc_4DCF9D:
mov     cl, byte ptr [esp+20h+var_18]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCF8C
cmp     byte ptr [ebx+2], 80h
jnb     short loc_4DCF8C
test    byte ptr [ebx+6], 20h
jz      short loc_4DCF85
test    esi, esi
jz      short loc_4DCF8C
mov     edx, esi
mov     eax, ebx
call    sub_4DD0BE
jmp     short loc_4DCF8C

loc_4DCFC4:
test    [esp+20h+var_20], 80h
jz      short loc_4DD016
mov     ebx, offset unk_56FA74
mov     edi, ds:dword_77E728
xor     ebp, ebp
mov     [esp+20h+var_1C], ebp
jmp     short loc_4DCFF5

loc_4DCFDD:
mov     eax, ebx
call    sub_4DE439

loc_4DCFE4:
mov     eax, [esp+20h+var_1C]
inc     eax
mov     [esp+20h+var_1C], eax
add     ebx, 24h ; '$'
cmp     eax, 10h
jge     short loc_4DD016

loc_4DCFF5:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DCFE4
test    byte ptr [ebx+6], 20h
jz      short loc_4DCFDD
test    esi, esi
jz      short loc_4DCFE4
mov     edx, esi
mov     eax, ebx
call    sub_4DD0E6
jmp     short loc_4DCFE4

loc_4DD016:
test    [esp+20h+var_1F], 1
jz      short loc_4DD069
mov     ebx, offset unk_56FCB4
mov     edi, ds:dword_77E730
xor     ecx, ecx
mov     [esp+20h+var_1C], ecx
jmp     short loc_4DD048

loc_4DD030:
mov     eax, ebx
call    sub_4DE477

loc_4DD037:
mov     ebp, [esp+20h+var_1C]
inc     ebp
mov     [esp+20h+var_1C], ebp
add     ebx, 60h ; '`'
cmp     ebp, 20h ; ' '
jge     short loc_4DD069

loc_4DD048:
mov     cl, byte ptr [esp+20h+var_1C]
mov     eax, edi
shl     eax, cl
test    eax, eax
jge     short loc_4DD037
test    byte ptr [ebx+6], 20h
jz      short loc_4DD030
test    esi, esi
jz      short loc_4DD037
mov     edx, esi
mov     eax, ebx
call    sub_4DD0BE
jmp     short loc_4DD037

loc_4DD069:
add     esp, 0Ch
jmp     loc_4DCD4C
sub_4DCD77 endp




sub_4DD071 proc near
push    ebx
push    ecx
mov     bx, [edx]
add     [eax+14h], bx
mov     bx, [edx+4]
add     [eax+18h], bx
movsx   ecx, word ptr [edx]
shl     ecx, 10h
add     [eax+1Ch], ecx
mov     ecx, [edx+2]
sar     ecx, 10h
shl     ecx, 10h
add     [eax+24h], ecx
mov     bx, [edx]
add     [eax+2Ch], bx
mov     bx, [edx+4]
add     [eax+30h], bx
movsx   ecx, word ptr [edx]
shl     ecx, 10h
add     [eax+34h], ecx
mov     edx, [edx+2]
sar     edx, 10h
shl     edx, 10h
add     [eax+3Ch], edx
pop     ecx
pop     ebx
retn
sub_4DD071 endp




sub_4DD0BE proc near
push    ebx
test    byte ptr [eax], 4
jz      short loc_4DD0D5
mov     bx, [edx]
add     [eax+48h], bx
mov     dx, [edx+4]
add     [eax+4Ch], dx
pop     ebx
retn

loc_4DD0D5:
mov     bx, [edx]
add     [eax+1Ch], bx
mov     dx, [edx+4]
add     [eax+20h], dx
pop     ebx
retn
sub_4DD0BE endp




sub_4DD0E6 proc near
push    ebx
mov     bx, [edx]
add     [eax+14h], bx
mov     dx, [edx+4]
add     [eax+18h], dx
pop     ebx
retn
sub_4DD0E6 endp




sub_4DD0F8 proc near
push    ebx
mov     ebx, edx
mov     edx, offset unk_70F1AC

loc_4DD100:
call    sub_4DD11B
pop     ebx
retn
sub_4DD0F8 endp




sub_4DD107 proc near
push    ebx
mov     ebx, edx
mov     edx, offset unk_7097AC
jmp     short loc_4DD100
sub_4DD107 endp




sub_4DD111 proc near
push    ebx
mov     ebx, edx
mov     edx, offset unk_574364
jmp     short loc_4DD100
sub_4DD111 endp




sub_4DD11B proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, [edx]
xor     eax, eax
mov     al, [esi+1]
add     edx, 4
call    sub_4DD420
mov     edi, eax
cmp     eax, 60h ; '`'
jnz     short loc_4DD142
cmp     byte ptr [esi+2], 80h
jb      short loc_4DD142
mov     edi, 10h

loc_4DD142:
mov     ecx, edx
xor     eax, eax

loc_4DD146:
cmp     eax, ebp
jge     loc_4DD20C
xor     edx, edx
mov     dl, [ecx]
cmp     edi, edx
jnz     loc_4DD203
mov     dl, [esi+2]
cmp     dl, [ecx+1]
jnz     loc_4DD203
test    ebx, ebx
jz      short loc_4DD175
mov     dl, [ebx]
cmp     dl, [ecx+2]
jnz     loc_4DD203

loc_4DD175:
cmp     edi, 40h ; '@'
jb      short loc_4DD19E
jbe     short loc_4DD1AA
cmp     edi, 80h
jb      short loc_4DD197
jbe     loc_4DD1F6
cmp     edi, 0E0h
jz      short loc_4DD1F6
jmp     loc_4DD1FC

loc_4DD197:
cmp     edi, 60h ; '`'
jz      short loc_4DD1EB
jmp     short loc_4DD1FC

loc_4DD19E:
cmp     edi, 10h
jb      short loc_4DD1FC
jbe     short loc_4DD1EB
cmp     edi, 20h ; ' '
jnz     short loc_4DD1FC

loc_4DD1AA:
lea     edx, [esi+0F8h]
mov     eax, [ecx+4]
add     eax, 10h
mov     ebx, 18h
call    sub_4EECD4
mov     eax, [ecx+8]
mov     eax, [eax]
mov     [esi+9Ch], eax
mov     eax, [ecx+8]
add     eax, 4
mov     [esi+0A0h], eax
mov     eax, [ecx+4]
mov     [esi+88h], eax
mov     eax, [ecx+0Ch]
mov     [esi+90h], eax
jmp     short loc_4DD1FC

loc_4DD1EB:
mov     eax, [ecx+4]
mov     [esi+88h], eax
jmp     short loc_4DD1FC

loc_4DD1F6:
mov     eax, [ecx+4]
mov     [esi+14h], eax

loc_4DD1FC:
mov     edi, 1
jmp     short loc_4DD20E

loc_4DD203:
inc     eax
add     ecx, 10h
jmp     loc_4DD146

loc_4DD20C:
xor     edi, edi

loc_4DD20E:
mov     eax, edi
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DD11B endp




sub_4DD215 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edx, offset byte_6DD9CC
mov     esi, ds:dword_77E778
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD242

loc_4DD230:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 4A0h
cmp     ebp, 10h
jge     short loc_4DD273

loc_4DD242:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD230
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD230
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD230
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE2F6
jmp     short loc_4DD230

loc_4DD273:
mov     edx, offset unk_6E23DC
mov     esi, ds:dword_77E758
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD297

loc_4DD285:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 734h
cmp     ebp, 4
jge     short loc_4DD2C8

loc_4DD297:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD285
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD285
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD285
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE336
jmp     short loc_4DD285

loc_4DD2C8:
mov     edx, offset byte_6DC7FC
mov     esi, ds:dword_77E780
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD2EC

loc_4DD2DA:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 11Ch
cmp     ebp, 10h
jge     short loc_4DD31D

loc_4DD2EC:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD2DA
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD2DA
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD2DA
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE3AC
jmp     short loc_4DD2DA

loc_4DD31D:
mov     edx, offset byte_57098C
mov     esi, ds:dword_77E73C
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD341

loc_4DD32F:
mov     ebp, [esp+1Ch+var_1C]
inc     ebp
mov     [esp+1Ch+var_1C], ebp
add     edx, 11Ch
cmp     ebp, 20h ; ' '
jge     short loc_4DD372

loc_4DD341:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD32F
mov     ebx, [edx+88h]
cmp     ebx, offset unk_70F1AC
jb      short loc_4DD32F
cmp     ebx, offset unk_7331AC
jnb     short loc_4DD32F
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE371
jmp     short loc_4DD32F

loc_4DD372:
mov     edx, offset unk_572D5C
xor     ecx, ecx
mov     [esp+1Ch+var_1C], ecx
jmp     short loc_4DD38A

loc_4DD37E:
mov     eax, [esp+1Ch+var_1C]
inc     eax
mov     [esp+1Ch+var_1C], eax
cmp     eax, 2
jge     short loc_4DD3C7

loc_4DD38A:
mov     esi, [esp+1Ch+var_1C]
mov     esi, ds:dword_572D54[esi*4]
xor     ebx, ebx
jmp     short loc_4DD3A1

loc_4DD398:
inc     ebx
add     edx, 58h ; 'X'
cmp     ebx, 20h ; ' '
jge     short loc_4DD37E

loc_4DD3A1:
mov     cl, bl
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD398
mov     edi, [edx+14h]
cmp     edi, offset unk_70F1AC
jb      short loc_4DD398
cmp     edi, offset unk_7331AC
jnb     short loc_4DD398
mov     eax, edx
call    sub_4DE3EA
jmp     short loc_4DD398

loc_4DD3C7:
mov     edx, offset unk_56FCB4
mov     esi, ds:dword_77E730
xor     ebx, ebx
mov     [esp+1Ch+var_1C], ebx
jmp     short loc_4DD3E8

loc_4DD3D9:
mov     eax, [esp+1Ch+var_1C]
inc     eax
mov     [esp+1Ch+var_1C], eax
add     edx, 60h ; '`'
cmp     eax, 20h ; ' '
jge     short loc_4DD416

loc_4DD3E8:
mov     cl, byte ptr [esp+1Ch+var_1C]
mov     eax, esi
shl     eax, cl
test    eax, eax
jge     short loc_4DD3D9
mov     edi, [edx+14h]
cmp     edi, offset unk_70F1AC
jb      short loc_4DD3D9
cmp     edi, offset unk_7331AC
jnb     short loc_4DD3D9
mov     eax, edx
call    sub_432EAB
mov     eax, edx
call    sub_4DE477
jmp     short loc_4DD3D9

loc_4DD416:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DD215 endp




sub_4DD420 proc near
cmp     eax, 20h ; ' '
jnb     short loc_4DD429
and     eax, 10h
retn

loc_4DD429:
and     eax, 0E0h
cmp     eax, 0A0h
jnz     short locret_4DD43A
mov     eax, 80h

locret_4DD43A:
retn
sub_4DD420 endp




sub_4DD43B proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     edi, eax
movsx   ecx, cx
movsx   ebx, bx
movsx   edx, dx
mov     eax, [eax+54h]
sar     eax, 10h
mov     esi, esp
call    sub_4DD510
mov     eax, [esp+18h+var_18]
add     [edi+1Ch], eax
mov     eax, [esp+18h+var_14]
add     [edi+20h], eax
mov     eax, [esp+18h+var_10]
add     [edi+24h], eax
lea     edx, [edi+14h]
lea     eax, [edi+1Ch]

loc_4DD472:
call    sub_4DD57B
add     esp, 10h
pop     edi
pop     esi
retn
sub_4DD43B endp




sub_4DD47D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     edi, eax
movsx   ecx, cx
movsx   ebx, bx
movsx   edx, dx
mov     eax, [eax+54h]
sar     eax, 10h
mov     esi, esp
call    sub_4DD510
mov     eax, [esp+18h+var_18]
add     [edi+528h], eax
mov     eax, [esp+18h+var_14]
add     [edi+52Ch], eax
mov     eax, [esp+18h+var_10]
add     [edi+530h], eax
lea     edx, [edi+538h]
lea     eax, [edi+528h]
jmp     short loc_4DD472
sub_4DD47D endp




sub_4DD4C5 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
arg_2= dword ptr  6

push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
mov     edi, edx
mov     eax, ebx
mov     edx, ecx
mov     ecx, [esp+1Ch+arg_2]
sar     ecx, 10h
mov     ebx, [esp+1Eh]
sar     ebx, 10h
movsx   edx, dx
mov     esi, esp
call    sub_4DD510
mov     eax, [esp+1Ch+var_1C]
add     [edi], eax
mov     eax, [esp+1Ch+var_18]
add     [edi+4], eax
mov     eax, [esp+1Ch+var_14]
add     [edi+8], eax
mov     edx, ebp
mov     eax, edi
call    sub_4DD57B
add     esp, 10h
pop     ebp
pop     edi
pop     esi
retn    8
sub_4DD4C5 endp




sub_4DD510 proc near

var_28= byte ptr -28h
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    edi
push    ebp
sub     esp, 50h
mov     ebp, esi
mov     edi, eax
mov     esi, edx
test    dx, dx
jge     short loc_4DD52A
neg     esi
neg     ecx
lea     edi, [eax+800h]

loc_4DD52A:
mov     eax, esp
call    sub_4EF184
mov     edx, esp
mov     eax, edi
call    sub_4EF50D
movsx   eax, cx
shl     eax, 0Ch
mov     [esp+58h+var_18], eax
movsx   eax, bx
shl     eax, 0Ch
mov     [esp+58h+var_14], eax
movsx   eax, si
neg     eax
shl     eax, 0Ch
mov     [esp+58h+var_10], eax
lea     ebx, [esp+58h+var_28]
lea     edx, [esp+58h+var_18]
mov     eax, esp
call    sub_4EF371
mov     edi, ebp
lea     esi, [esp+58h+var_28]
movsd
movsd
movsd
movsd
mov     eax, ebp
add     esp, 50h
pop     ebp
pop     edi
retn
sub_4DD510 endp




sub_4DD57B proc near
push    ebx
push    ecx
push    esi
mov     ecx, [eax]
sar     ecx, 1Fh
and     cl, 0FEh
mov     esi, [eax]
sar     esi, 0Fh
and     esi, 1
inc     ecx
imul    esi, ecx
mov     ecx, [eax]
sar     ecx, 10h
add     ecx, esi
mov     [edx], cx
mov     ecx, [eax+4]
sar     ecx, 1Fh
and     cl, 0FEh
mov     esi, [eax+4]
sar     esi, 0Fh
and     esi, 1
inc     ecx
imul    ecx, esi
mov     ebx, [eax+4]
sar     ebx, 10h
add     ecx, ebx
mov     [edx+2], cx
mov     ecx, [eax+8]
sar     ecx, 1Fh
and     cl, 0FEh
mov     ebx, ecx
mov     ecx, [eax+8]
sar     ecx, 0Fh
and     ecx, 1
inc     ebx
imul    ecx, ebx
mov     eax, [eax+8]
sar     eax, 10h
add     eax, ecx
mov     [edx+4], ax
pop     esi
pop     ecx
pop     ebx
retn
sub_4DD57B endp




sub_4DD5E6 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     esi, edx
mov     ecx, ebx
mov     eax, [edx]
mov     edx, [ebx]
sub     eax, edx
mov     [esp+30h+var_20], eax
mov     eax, [esi+4]
mov     ebx, [ebx+4]
sub     eax, ebx
mov     [esp+30h+var_1C], eax
mov     eax, [esi+8]
mov     ebp, [ecx+8]
sub     eax, ebp
mov     [esp+30h+var_18], eax
mov     ebx, esp
lea     edx, [esp+30h+var_20]
mov     eax, edi
call    sub_4EF371
mov     eax, [ecx]
mov     edx, [esp+30h+var_30]
add     eax, edx
mov     [esi], eax
mov     eax, [ecx+4]
mov     ebx, [esp+30h+var_2C]
add     eax, ebx
mov     [esi+4], eax
mov     eax, [ecx+8]
mov     edi, [esp+30h+var_28]
add     eax, edi
mov     [esi+8], eax
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DD5E6 endp




sub_4DD64B proc near
push    ebx
push    ecx
mov     cx, [edx+14h]
sub     cx, [eax+14h]
mov     bx, [edx+16h]
sub     bx, [eax+16h]
mov     dx, [edx+18h]
sub     dx, [eax+18h]
sub_4DD64B endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4DD685

loc_4DD665:
movsx   eax, bx
mov     ebx, eax
imul    ebx, eax
movsx   eax, cx
imul    eax, eax
add     ebx, eax
movsx   eax, dx
imul    eax, eax
add     eax, ebx
; END OF FUNCTION CHUNK FOR sub_4DD685
; START OF FUNCTION CHUNK FOR sub_4DD69F

loc_4DD67D:
call    sub_4EF075
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4DD69F



sub_4DD685 proc near

; FUNCTION CHUNK AT 004DD665 SIZE 00000018 BYTES

push    ebx
push    ecx
mov     cx, [edx]
sub     cx, [eax]
mov     bx, [edx+2]
sub     bx, [eax+2]
mov     dx, [edx+4]
sub     dx, [eax+4]
jmp     short loc_4DD665
sub_4DD685 endp ; sp-analysis failed




sub_4DD69F proc near

; FUNCTION CHUNK AT 004DD67D SIZE 00000008 BYTES

push    ebx
push    ecx
movsx   ebx, word ptr [edx]
movsx   ecx, word ptr [eax]
sub     ebx, ecx
mov     ecx, ebx
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [eax+2]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
imul    eax, edx
imul    ecx, ebx
add     eax, ecx
jmp     short loc_4DD67D
sub_4DD69F endp




sub_4DD6C5 proc near
push    ebx
push    ecx
movsx   ebx, word ptr [edx]
movsx   ecx, word ptr [eax]
sub     ebx, ecx
mov     ecx, ebx
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [eax+2]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
imul    eax, edx
imul    ecx, ebx
add     eax, ecx
pop     ecx
pop     ebx
retn
sub_4DD6C5 endp




sub_4DD6EC proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= byte ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 3Ch
mov     edi, eax
mov     ebp, ebx
mov     esi, ecx
mov     eax, esp
call    sub_4EF184
mov     ax, [edx+0C4h]
mov     bx, [edi+0C4h]
sub     eax, ebx
mov     word ptr [esp+48h+var_18], ax ; float
mov     ax, [edx+0C6h]
mov     cx, [edi+0C6h]
sub     eax, ecx
mov     word ptr [esp+48h+var_18+2], ax
mov     ax, [edx+0C8h]
mov     dx, [edi+0C8h]
sub     eax, edx
mov     word ptr [esp+48h+var_14], ax ; int
mov     eax, [edi+54h]
sar     eax, 10h
mov     edx, 800h
sub     edx, eax
mov     eax, edx
mov     edx, esp
call    sub_4EF50D
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
lea     ebx, [esp+48h+var_10]
mov     edx, esi
lea     eax, [esp+48h+var_18]
call    sub_4EF84B
xor     eax, eax
cmp     dword ptr [esi], 0
jge     short loc_4DD77D
mov     eax, 1

loc_4DD77D:
cmp     dword ptr [esi+4], 0
jge     short loc_4DD785
or      al, 4

loc_4DD785:
cmp     dword ptr [esi+8], 0
jge     short loc_4DD78F
or      al, 10h
jmp     short loc_4DD7B3

loc_4DD78F:
mov     edi, [esi]
test    edi, edi
jge     short loc_4DD79B
mov     edx, edi
neg     edx
jmp     short loc_4DD79D

loc_4DD79B:
mov     edx, edi

loc_4DD79D:
movsx   ecx, word ptr [ebp+0]
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
cmp     edx, [esi+8]
jge     short loc_4DD7B3
or      al, 2

loc_4DD7B3:
mov     ebx, [esi+4]
test    ebx, ebx
jge     short loc_4DD7C0
mov     edx, ebx
neg     edx
jmp     short loc_4DD7C2

loc_4DD7C0:
mov     edx, ebx

loc_4DD7C2:
mov     ecx, [ebp+0]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     edi, [esi+8]
test    edi, edi
jge     short loc_4DD7E2
mov     edx, edi
neg     edx
jmp     short loc_4DD7E4

loc_4DD7E2:
mov     edx, edi

loc_4DD7E4:
cmp     ecx, edx
jge     short loc_4DD7EA
or      al, 8

loc_4DD7EA:
mov     edx, [esi+8]
test    edx, edx
jge     short loc_4DD7F3
neg     edx

loc_4DD7F3:
mov     ecx, [ebp+2]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     ebx, [esi]
test    ebx, ebx
jge     short loc_4DD812
mov     edx, ebx
neg     edx
jmp     short loc_4DD814

loc_4DD812:
mov     edx, ebx

loc_4DD814:
cmp     ecx, edx
jge     short loc_4DD81A
or      al, 20h

loc_4DD81A:
add     esp, 3Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4DD6EC endp




sub_4DD821 proc near
push    esi
mov     esi, [eax+54h]
sar     esi, 10h
push    esi
call    sub_4DD830
pop     esi
retn
sub_4DD821 endp




sub_4DD830 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= byte ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 3Ch
mov     ebp, eax
mov     edi, ebx
mov     esi, ecx
mov     eax, esp
call    sub_4EF184
mov     ax, [edx+14h]
mov     bx, [ebp+14h]
sub     eax, ebx
mov     word ptr [esp+48h+var_18], ax ; float
mov     ax, [edx+16h]
mov     cx, [ebp+16h]
sub     eax, ecx
mov     word ptr [esp+48h+var_18+2], ax
mov     ax, [edx+18h]
mov     dx, [ebp+18h]
sub     eax, edx
mov     word ptr [esp+48h+var_14], ax ; int
mov     eax, [esp+4Ah]
sar     eax, 10h
mov     edx, 800h
sub     edx, eax
mov     eax, edx
mov     edx, esp
call    sub_4EF50D
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
lea     ebx, [esp+48h+var_10]
mov     edx, esi
lea     eax, [esp+48h+var_18]
call    sub_4EF84B
xor     eax, eax
cmp     dword ptr [esi], 0
jge     short loc_4DD8B0
mov     eax, 1

loc_4DD8B0:
cmp     dword ptr [esi+4], 0
jge     short loc_4DD8B8
or      al, 4

loc_4DD8B8:
cmp     dword ptr [esi+8], 0
jge     short loc_4DD8C2
or      al, 10h
jmp     short loc_4DD8E5

loc_4DD8C2:
mov     ebp, [esi]
test    ebp, ebp
jge     short loc_4DD8CE
mov     edx, ebp
neg     edx
jmp     short loc_4DD8D0

loc_4DD8CE:
mov     edx, ebp

loc_4DD8D0:
movsx   ecx, word ptr [edi]
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
cmp     edx, [esi+8]
jge     short loc_4DD8E5
or      al, 2

loc_4DD8E5:
mov     ebx, [esi+4]
test    ebx, ebx
jge     short loc_4DD8F2
mov     edx, ebx
neg     edx
jmp     short loc_4DD8F4

loc_4DD8F2:
mov     edx, ebx

loc_4DD8F4:
mov     ecx, [edi]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     ebp, [esi+8]
test    ebp, ebp
jge     short loc_4DD913
mov     edx, ebp
neg     edx
jmp     short loc_4DD915

loc_4DD913:
mov     edx, ebp

loc_4DD915:
cmp     ecx, edx
jge     short loc_4DD91B
or      al, 8

loc_4DD91B:
mov     edx, [esi+8]
test    edx, edx
jge     short loc_4DD924
neg     edx

loc_4DD924:
mov     ecx, [edi+2]
sar     ecx, 10h
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
mov     ecx, edx
mov     ebx, [esi]
test    ebx, ebx
jge     short loc_4DD943
mov     edx, ebx
neg     edx
jmp     short loc_4DD945

loc_4DD943:
mov     edx, ebx

loc_4DD945:
cmp     ecx, edx
jge     short loc_4DD94B
or      al, 20h

loc_4DD94B:
add     esp, 3Ch

loc_4DD94E:
pop     ebp
pop     edi
pop     esi
retn    4
sub_4DD830 endp




sub_4DD954 proc near

var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h
var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4Ch
mov     esi, eax
mov     edi, ebx
mov     eax, esp
call    sub_4EF184
mov     ax, [edx]
mov     bx, [esi]
sub     eax, ebx
mov     [esp+54h+var_14], ax
mov     ax, [edx+2]
mov     bx, [esi+2]
sub     eax, ebx
mov     [esp+54h+var_12], ax
mov     ax, [edx+4]
mov     dx, [esi+4]
sub     eax, edx
mov     [esp+54h+var_10], ax
movsx   eax, cx
mov     edx, 800h
sub     edx, eax
mov     eax, edx
mov     edx, esp
call    sub_4EF50D
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
lea     ebx, [esp+54h+var_C]
lea     edx, [esp+54h+var_24]
lea     eax, [esp+54h+var_14]
call    sub_4EF84B
xor     eax, eax
cmp     [esp+54h+var_1C], 0
jge     short loc_4DD9D1
mov     eax, 10h
jmp     short loc_4DD9F7

loc_4DD9D1:
mov     ecx, [esp+54h+var_24]
test    ecx, ecx
jge     short loc_4DD9DF
mov     edx, ecx
neg     edx
jmp     short loc_4DD9E1

loc_4DD9DF:
mov     edx, ecx

loc_4DD9E1:
movsx   ecx, word ptr [edi]
mov     ebx, 9
sub     ebx, ecx
mov     ecx, ebx
shl     edx, cl
cmp     edx, [esp+54h+var_1C]
jge     short loc_4DD9F7
or      al, 2

loc_4DD9F7:
add     esp, 4Ch
pop     edi
pop     esi
retn
sub_4DD954 endp




sub_4DD9FD proc near
push    100h
movsx   ecx, cx
movsx   ebx, bx
call    sub_4DDA0E
retn
sub_4DD9FD endp




sub_4DDA0E proc near

arg_0= dword ptr  4

push    esi
mov     esi, eax
mov     eax, [esp+6]
sar     eax, 10h
push    eax
movsx   eax, cx
push    eax
movsx   eax, bx
push    eax
lea     ecx, [edx+0CAh]
lea     ebx, [esi+44h]
add     edx, 0C4h
lea     eax, [esi+14h]
call    sub_4DDA52
mov     word ptr [esi+50h], 0
mov     ax, [esi+50h]
mov     [esi+4Ch], ax
mov     eax, [esp+4+arg_0]
mov     [esi+4Eh], ax
pop     esi
retn    4
sub_4DDA0E endp




sub_4DDA52 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= word ptr  4
arg_4= word ptr  8
arg_6= dword ptr  0Ah

push    esi
push    edi
push    ebp
sub     esp, 14h
mov     esi, ecx
movsx   ecx, word ptr [edx]
movsx   edi, word ptr [eax]
sub     ecx, edi
mov     [esp+20h+var_10], ecx
mov     ebp, [edx]
sar     ebp, 10h
mov     ecx, [eax]
sar     ecx, 10h
sub     ebp, ecx
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [eax+2]
sar     eax, 10h
sub     edx, eax
mov     [esp+20h+var_18], edx
mov     eax, ebp
imul    eax, ebp
mov     edx, [esp+20h+var_10]
imul    edx, edx
add     eax, edx
mov     edi, [esp+20h+var_18]
imul    edi, edi
add     eax, edi
call    sub_4EF075
mov     ecx, eax
lea     eax, [edx+edi]
call    sub_4EF075
mov     edi, eax
cmp     [esp+20h+arg_4], 0
jz      short loc_4DDAC1
mov     edx, [esp+26h]
sar     edx, 10h
cmp     eax, edx
jl      short loc_4DDAC1
mov     edi, edx

loc_4DDAC1:
test    ecx, ecx
jz      loc_4DDB66
cmp     [esp+20h+arg_0], 0
jz      loc_4DDB66
mov     eax, [esp+22h]
sar     eax, 10h
mov     [esp+20h+var_14], eax
mov     edx, eax
imul    edx, [esp+20h+var_10]
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     [esp+20h+var_20], eax
mov     edx, ebp
shl     edx, 8
imul    edx, [esp+20h+var_14]
test    edi, edi
jz      short loc_4DDB2A
mov     eax, edx
sar     edx, 1Fh
idiv    edi
mov     ebp, eax
mov     edx, edi
sar     edx, 1
mov     eax, [esp+20h+arg_6]
sar     eax, 10h
imul    edx, eax
mov     eax, edx
sar     edx, 1Fh
idiv    [esp+20h+var_14]
sub     ebp, eax
mov     [esp+20h+var_1C], ebp
jmp     short loc_4DDB2E

loc_4DDB2A:
mov     [esp+20h+var_1C], edx

loc_4DDB2E:
mov     edi, [esp+22h]
sar     edi, 10h
mov     edx, [esp+20h+var_18]
imul    edx, edi
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     edx, [esp+20h+var_20]
mov     [ebx], dx
mov     edx, [esp+20h+var_1C]
mov     [ebx+2], dx
mov     [ebx+4], ax
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    edi
mov     [esi], ax
jmp     short loc_4DDB7C

loc_4DDB66:
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     word ptr [ebx+4], 0
mov     word ptr [esi], 0

loc_4DDB7C:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn    0Ch
sub_4DDA52 endp

push    100h
movsx   ecx, cx
movsx   ebx, bx
call    sub_4DDB96
retn



sub_4DDB96 proc near
push    esi
mov     esi, [esp+6]
sar     esi, 10h
push    esi
movsx   ecx, cx
movsx   ebx, bx
add     edx, 0C4h
add     eax, 14h
call    sub_4DDBB7
pop     esi
retn    4
sub_4DDB96 endp




sub_4DDBB7 proc near

var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     [esp+10h+var_10], bx
mov     edi, ecx
movsx   eax, word ptr [edx]
movsx   ecx, word ptr [esi]
sub     eax, ecx
mov     ecx, eax
mov     eax, [edx]
sar     eax, 10h
mov     ebx, [esi]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     eax, [edx+2]
sar     eax, 10h
mov     ebp, [esi+2]
sar     ebp, 10h
sub     eax, ebp
imul    eax, eax
imul    ecx, ecx
add     eax, ecx
call    sub_4EF075
mov     ecx, eax
test    di, di
jz      short loc_4DDC08
movsx   edi, di
cmp     edi, eax
jg      short loc_4DDC08
mov     ecx, edi

loc_4DDC08:
cmp     [esp+10h+var_10], 0
jz      short loc_4DDC73
test    ecx, ecx
jz      short loc_4DDC57
mov     edx, ebx
shl     edx, 8
mov     esi, [esp-2]
sar     esi, 10h
imul    edx, esi
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ebx, eax
sar     ecx, 1
mov     edx, [esp+12h]
sar     edx, 10h
imul    edx, ecx
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     edx, ebx
sub     edx, eax
mov     eax, esi
shl     eax, 8
call    sub_4EF04B
mov     edx, 400h
sub     edx, eax
mov     eax, edx
jmp     short loc_4DDC75

loc_4DDC57:
mov     edx, [edx]
sar     edx, 10h
mov     eax, [esi]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4DDC6C
mov     eax, 400h
jmp     short loc_4DDC75

loc_4DDC6C:
mov     eax, 0FFFFFC00h
jmp     short loc_4DDC75

loc_4DDC73:
xor     eax, eax

loc_4DDC75:
add     esp, 4
jmp     loc_4DD94E
sub_4DDBB7 endp




sub_4DDC7D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ecx, eax
mov     esi, ebx
mov     ebp, [eax+12h]
sar     ebp, 10h
movsx   eax, word ptr [edx]
sub     eax, ebp
mov     ebp, eax
mov     eax, [edx]
sar     eax, 10h
mov     edi, [ecx+14h]
sar     edi, 10h
sub     eax, edi
mov     edi, eax
mov     edx, [edx+2]
sar     edx, 10h
mov     eax, [ecx+16h]
sar     eax, 10h
sub     edx, eax
mov     [esp+18h+var_14], edx
mov     edx, edi
imul    edx, edi
mov     eax, ebp
imul    eax, ebp
add     edx, eax
mov     eax, [esp+18h+var_14]
imul    eax, eax
add     eax, edx
call    sub_4EF075
mov     ebx, eax
test    eax, eax
jz      short loc_4DDD2B
movsx   esi, si
mov     edx, esi
imul    edx, ebp
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     [esp+18h+var_18], eax
mov     edx, esi
imul    edx, edi
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edi, eax
mov     edx, [esp+18h+var_14]
imul    edx, esi
shl     edx, 8
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, [esp+18h+var_18]
mov     [ecx+44h], dx
mov     [ecx+46h], di
mov     [ecx+48h], ax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     [ecx+4Ah], ax
jmp     short loc_4DDD43

loc_4DDD2B:
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ah], 0

loc_4DDD43:
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DDC7D endp




sub_4DDD5D proc near
push    ecx
mov     ecx, [edx+8]
sub     ecx, [eax+8]
sar     ecx, 0Ch
mov     edx, [edx]
sub     edx, [eax]
test    ecx, ecx
jle     short loc_4DDD82
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
add     eax, 800h
pop     ecx
retn

loc_4DDD82:
jge     short loc_4DDDA2
neg     edx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
pop     ecx
retn

loc_4DDDA2:
test    edx, edx
jl      short loc_4DDDAD
mov     eax, 0C00h
pop     ecx
retn

loc_4DDDAD:
mov     eax, 400h
pop     ecx
retn
sub_4DDD5D endp




sub_4DDDB4 proc near
push    ebx
push    ecx
mov     ebx, [edx+2]
sar     ebx, 10h
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ebx, ecx
mov     ecx, ebx
shl     ecx, 4
movsx   edx, word ptr [edx]
movsx   eax, word ptr [eax]
sub     edx, eax
shl     edx, 10h
test    ecx, ecx
jle     short loc_4DDDEC
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
add     eax, 800h
pop     ecx
pop     ebx
retn

loc_4DDDEC:
jge     short loc_4DDE0D
neg     edx
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
pop     ecx
pop     ebx
retn

loc_4DDE0D:
test    edx, edx
jl      short loc_4DDE19
mov     eax, 0C00h
pop     ecx
pop     ebx
retn

loc_4DDE19:
mov     eax, 400h
pop     ecx
pop     ebx
retn
sub_4DDDB4 endp




sub_4DDE21 proc near
push    ebx
push    ecx
mov     ebx, [edx+2]
sar     ebx, 10h
mov     ecx, [eax+2]
sar     ecx, 10h
sub     ebx, ecx
movsx   edx, word ptr [edx]
movsx   eax, word ptr [eax]
sub     edx, eax
mov     eax, edx
mov     edx, ebx
call    sub_4EF04B
add     eax, 800h
pop     ecx
pop     ebx
retn
sub_4DDE21 endp




sub_4DDE4A proc near
push    ebx
push    ecx
push    esi
movsx   ecx, word ptr [edx]
movsx   ebx, word ptr [eax]
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [edx+2]
sar     ecx, 10h
mov     esi, [eax+2]
sar     esi, 10h
sub     ecx, esi
mov     edx, [edx]
sar     edx, 10h
mov     eax, [eax]
sar     eax, 10h
sub     edx, eax
mov     eax, ebx
imul    eax, eax
imul    ecx, ecx
add     eax, ecx
call    sub_4EF075
call    sub_4EF04B
mov     edx, 1000h
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
pop     esi
pop     ecx
pop     ebx
retn
sub_4DDE4A endp




sub_4DDE97 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     eax, [edx+88h]
movsx   ebx, bx
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 4
lea     esi, [ecx+ebp]
mov     ecx, 0Ch
lea     edi, [eax+4]
lea     esi, [esi+250h]
rep movsd
mov     edi, [ebp+88h]
lea     esi, [ebx+1]
mov     ecx, esi
shl     ecx, 2
add     esi, ecx
shl     esi, 2
mov     ecx, [edi+70h]
add     ecx, esi
mov     [eax], ecx
mov     [eax+40h], ebp
mov     dword ptr [eax+3Ch], offset unk_808080
mov     ecx, ebx
mov     si, [ebp+ecx*8+190h]
mov     [edx+14h], si
mov     [eax+34h], si
mov     si, [ebp+ecx*8+192h]
mov     [edx+16h], si
mov     [eax+36h], si
mov     cx, [ebp+ecx*8+194h]
mov     [edx+18h], cx
mov     [eax+38h], cx
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
mov     al, [ebp+ebx*4+0F9h]
mov     [edx+0Bh], al
mov     byte ptr [ebp+ebx*4+0F9h], 0FFh
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4DDE97 endp




sub_4DDF54 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E778
xor     eax, eax
jmp     short loc_4DDF67

loc_4DDF61:
inc     eax
cmp     eax, 10h
jge     short loc_4DDFCA

loc_4DDF67:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DDF61
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E778, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
add     eax, offset byte_6DD9CC
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DDFCA:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DDF54 endp




sub_4DDFD0 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E758
xor     eax, eax
jmp     short loc_4DDFE3

loc_4DDFDD:
inc     eax
cmp     eax, 4
jge     short loc_4DE03D

loc_4DDFE3:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DDFDD
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E758, edx
imul    eax, 734h
add     eax, offset unk_6E23DC
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE03D:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DDFD0 endp




sub_4DE043 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E73C
xor     eax, eax
jmp     short loc_4DE056

loc_4DE050:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_4DE0B9

loc_4DE056:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE050
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E73C, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_57098C
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE0B9:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE043 endp




sub_4DE0BF proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E780
xor     eax, eax
jmp     short loc_4DE0D2

loc_4DE0CC:
inc     eax
cmp     eax, 10h
jge     short loc_4DE135

loc_4DE0D2:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE0CC
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E780, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_6DC7FC
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
mov     dword ptr [eax+78h], 0
mov     dword ptr [eax+74h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE135:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE0BF endp




sub_4DE13B proc near
push    ebx
push    ecx
push    edx
push    esi
xor     esi, esi
jmp     short loc_4DE149

loc_4DE143:
inc     esi
cmp     esi, 2
jge     short loc_4DE1B7

loc_4DE149:
mov     ebx, ds:dword_572D54[esi*4]
xor     eax, eax
jmp     short loc_4DE15A

loc_4DE154:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_4DE143

loc_4DE15A:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE154
mov     ebx, 80000000h
shr     ebx, cl
or      ds:dword_572D54[esi*4], ebx
shl     esi, 5
lea     edx, [eax+esi]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE1B7:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE13B endp




sub_4DE1BE proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E728
xor     eax, eax
jmp     short loc_4DE1D1

loc_4DE1CB:
inc     eax
cmp     eax, 10h
jge     short loc_4DE221

loc_4DE1D1:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE1CB
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E728, edx
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, offset unk_56FA74
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE221:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE1BE endp




sub_4DE227 proc near
push    ebx
push    ecx
push    edx
mov     ebx, ds:dword_77E730
xor     eax, eax
jmp     short loc_4DE23A

loc_4DE234:
inc     eax
cmp     eax, 20h ; ' '
jge     short loc_4DE28A

loc_4DE23A:
mov     cl, al
mov     edx, ebx
shl     edx, cl
test    edx, edx
jl      short loc_4DE234
mov     edx, 80000000h
shr     edx, cl
or      ds:dword_77E730, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 5
add     eax, offset unk_56FCB4
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE28A:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE227 endp




sub_4DE290 proc near
push    ebx
push    ecx
push    edx
cmp     eax, 20h ; ' '
jl      short loc_4DE29E

loc_4DE298:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4DE29E:
mov     edx, ds:dword_77E730
mov     cl, al
mov     ebx, edx
shl     ebx, cl
test    ebx, ebx
jl      short loc_4DE298
mov     ebx, 80000000h
shr     ebx, cl
or      edx, ebx
mov     ds:dword_77E730, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 5
add     eax, offset unk_56FCB4
mov     word ptr [eax+2], 0
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+8], 0
mov     byte ptr [eax+6], 3
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE290 endp




sub_4DE2F6 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset byte_6DD9CC
mov     ecx, 4A0h
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E938
or      edx, eax
mov     ds:dword_77E938, edx
mov     eax, ds:dword_77E778
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E938, ecx

loc_4DE32F:
mov     byte ptr [ebx], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE2F6 endp




sub_4DE336 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset unk_6E23DC
mov     ecx, 734h
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E93C
or      edx, eax
mov     ds:dword_77E93C, edx
mov     eax, ds:dword_77E758
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E93C, ecx
jmp     short loc_4DE32F
sub_4DE336 endp




sub_4DE371 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset byte_57098C
mov     ecx, 11Ch
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E72C
or      edx, eax
mov     ds:dword_77E72C, edx
mov     eax, ds:dword_77E73C
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E72C, ecx
jmp     short loc_4DE32F
sub_4DE371 endp




sub_4DE3AC proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset byte_6DC7FC
mov     ecx, 11Ch
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E77C
or      edx, eax
mov     ds:dword_77E77C, edx
mov     eax, ds:dword_77E780
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E77C, ecx
jmp     loc_4DE32F
sub_4DE3AC endp




sub_4DE3EA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
sub     eax, offset unk_572D5C
mov     ecx, 58h ; 'X'
xor     edx, edx
div     ecx
mov     edx, eax
shr     eax, 5
and     edx, 1Fh
mov     cl, dl
mov     edx, 80000000h
shr     edx, cl
mov     ecx, ds:dword_57435C[eax*4]
or      ecx, edx
mov     ds:dword_57435C[eax*4], ecx
mov     edx, ds:dword_572D54[eax*4]
mov     esi, ecx
and     esi, edx
mov     ds:dword_57435C[eax*4], esi
mov     byte ptr [ebx], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE3EA endp




sub_4DE439 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset unk_56FA74
mov     ecx, 24h ; '$'
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E740
or      edx, eax
mov     ds:dword_77E740, edx
mov     eax, ds:dword_77E728
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E740, ecx
jmp     loc_4DE32F
sub_4DE439 endp




sub_4DE477 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
sub     eax, offset unk_56FCB4
mov     ecx, 60h ; '`'
xor     edx, edx
div     ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
mov     edx, ds:dword_77E744
or      edx, eax
mov     ds:dword_77E744, edx
mov     eax, ds:dword_77E730
mov     ecx, edx
and     ecx, eax
mov     ds:dword_77E744, ecx
jmp     loc_4DE32F
sub_4DE477 endp




sub_4DE4B5 proc near
push    ecx
mov     eax, ds:dword_77E77C
not     eax
and     ds:dword_77E780, eax
xor     ecx, ecx
mov     ds:dword_77E77C, ecx
mov     eax, ds:dword_77E938
not     eax
and     ds:dword_77E778, eax
mov     ds:dword_77E938, ecx
mov     eax, ds:dword_77E93C
not     eax
and     ds:dword_77E758, eax
mov     ds:dword_77E93C, ecx
mov     eax, ds:dword_77E72C
not     eax
and     ds:dword_77E73C, eax
mov     ds:dword_77E72C, ecx
mov     eax, ds:dword_57435C
not     eax
and     ds:dword_572D54, eax
mov     ds:dword_57435C, ecx
mov     eax, ds:dword_574360
not     eax
and     ds:dword_572D58, eax
mov     ds:dword_574360, ecx
mov     eax, ds:dword_77E740
not     eax
and     ds:dword_77E728, eax
mov     ds:dword_77E740, ecx
mov     eax, ds:dword_77E744
not     eax
and     ds:dword_77E730, eax
mov     ds:dword_77E744, ecx
pop     ecx
retn
sub_4DE4B5 endp




sub_4DE552 proc near
call    sub_4DDDB4
mov     edx, eax
movsx   eax, bx
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
cmp     eax, 800h
jnb     short loc_4DE579
movsx   edx, cx
add     edx, edx
cmp     eax, edx
jnb     short loc_4DE579
mov     ecx, eax
jmp     short loc_4DE597

loc_4DE579:
cmp     eax, 800h
jb      short loc_4DE597
movsx   edx, cx
add     edx, edx
mov     ebx, 1000h
sub     ebx, eax
cmp     ebx, edx
jnb     short loc_4DE597
mov     ecx, 1000h
sub     ecx, eax

loc_4DE597:
cmp     eax, 800h
jbe     short loc_4DE5A0
neg     ecx

loc_4DE5A0:
mov     eax, ecx
retn
sub_4DE552 endp




sub_4DE5A3 proc near
call    sub_4DDE4A
mov     edx, eax
movsx   eax, bx
sub     edx, eax
mov     eax, edx
and     eax, 0FFFh
cmp     eax, 800h
jnb     short loc_4DE5CA
movsx   edx, cx
add     edx, edx
cmp     eax, edx
jnb     short loc_4DE5CA
mov     ecx, eax
jmp     short loc_4DE5E8

loc_4DE5CA:
cmp     eax, 800h
jb      short loc_4DE5E8
movsx   edx, cx
add     edx, edx
mov     ebx, 1000h
sub     ebx, eax
cmp     ebx, edx
jnb     short loc_4DE5E8
mov     ecx, 1000h
sub     ecx, eax

loc_4DE5E8:
cmp     eax, 800h
jbe     short loc_4DE5F1
neg     ecx

loc_4DE5F1:
mov     eax, ecx
retn
sub_4DE5A3 endp




sub_4DE5F4 proc near
push    ecx
sub     eax, edx
test    ax, ax
jge     short loc_4DE5FF
add     ah, 10h

loc_4DE5FF:
cmp     ax, 800h
jge     short loc_4DE615
movsx   edx, bx
movsx   ecx, ax
cmp     edx, ecx
jle     short loc_4DE635
mov     ebx, eax
mov     eax, ebx
pop     ecx
retn

loc_4DE615:
movsx   ecx, ax
sub     ecx, 1000h
neg     ecx
movsx   edx, bx
cmp     edx, ecx
jle     short loc_4DE633
mov     ebx, eax
sub     ebx, 1000h
mov     eax, ebx
pop     ecx
retn

loc_4DE633:
neg     ebx

loc_4DE635:
mov     eax, ebx
pop     ecx
retn
sub_4DE5F4 endp




sub_4DE639 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
mov     esi, edx
mov     edx, ecx
call    sub_4DDD5D
mov     edx, eax
add     dh, 8
sub     edx, [esp+4+arg_0]
add     edx, [esp+4+arg_4]
and     dh, 0Fh
mov     ecx, edx
sub     eax, esi
add     eax, ebx
and     ah, 0Fh
mov     edx, eax
movsx   eax, bx
add     eax, eax
movsx   edx, dx
cmp     edx, eax
jg      short loc_4DE683
mov     eax, [esp+4+arg_0+2]
sar     eax, 10h
add     eax, eax
movsx   edx, cx
cmp     edx, eax
jg      short loc_4DE683
mov     eax, 1
pop     esi
retn    8

loc_4DE683:
xor     eax, eax
pop     esi
retn    8
sub_4DE639 endp




sub_4DE689 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
mov     esi, edx
mov     edx, ecx
call    sub_4DDD5D
mov     edx, eax
sub     edx, [esp+4+arg_0]
add     edx, [esp+4+arg_4]
and     dh, 0Fh
mov     ecx, edx
sub     eax, esi
add     eax, ebx
and     ah, 0Fh
mov     edx, eax
movsx   eax, bx
add     eax, eax
movsx   edx, dx
cmp     edx, eax
jg      short loc_4DE6D0
mov     eax, [esp+4+arg_0+2]
sar     eax, 10h
add     eax, eax
movsx   edx, cx
cmp     edx, eax
jg      short loc_4DE6D0
mov     eax, 1
pop     esi
retn    8

loc_4DE6D0:
xor     eax, eax
pop     esi
retn    8
sub_4DE689 endp




sub_4DE6D6 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
mov     esi, edx
mov     edx, ecx
call    sub_4DDDB4
mov     edx, eax
add     dh, 8
sub     edx, [esp+4+arg_0]
add     edx, [esp+4+arg_4]
and     dh, 0Fh
mov     ecx, edx
sub     eax, esi
add     eax, ebx
and     ah, 0Fh
mov     edx, eax
movsx   eax, bx
add     eax, eax
movsx   edx, dx
cmp     edx, eax
jg      short loc_4DE720
mov     eax, [esp+4+arg_0+2]
sar     eax, 10h
add     eax, eax
movsx   edx, cx
cmp     edx, eax
jg      short loc_4DE720
mov     eax, 1
pop     esi
retn    8

loc_4DE720:
xor     eax, eax
pop     esi
retn    8
sub_4DE6D6 endp




sub_4DE726 proc near
push    esi
push    edi
mov     esi, eax
mov     eax, edx
mov     edi, ecx
xor     ecx, ecx
test    byte ptr [edx+6], 1
jz      short loc_4DE73C
mov     edx, eax
mov     eax, esi
jmp     short loc_4DE741

loc_4DE73C:
mov     edx, offset unk_5505D4

loc_4DE741:
call    sub_4DDDB4
mov     esi, eax
and     esi, 0FFFh
test    di, di
jnz     short loc_4DE78E
cwde
movsx   edx, bx
mov     ecx, eax
sub     ecx, edx
lea     edx, [ecx+400h]
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_4DE780

loc_4DE76F:
lea     ecx, [eax+800h]
and     ecx, 0FFFh
mov     eax, ecx
pop     edi
pop     esi
retn

loc_4DE780:
movsx   ecx, si
or      ecx, 10000h
mov     eax, ecx
pop     edi
pop     esi
retn

loc_4DE78E:
cwde
movsx   edx, bx
mov     ebx, eax
sub     ebx, edx
mov     edx, ebx
add     ebx, 200h
and     ebx, 0FFFh
cmp     ebx, 400h
jl      short loc_4DE76F
lea     ebx, [edx+600h]
and     ebx, 0FFFh
cmp     ebx, 400h
jge     short loc_4DE7D7
lea     ecx, [eax-400h]
and     ecx, 0FFFh
or      ecx, 30000h
mov     eax, ecx
pop     edi
pop     esi
retn

loc_4DE7D7:
lea     ebx, [edx+0A00h]
and     ebx, 0FFFh
cmp     ebx, 400h
jl      short loc_4DE780
add     edx, 0E00h
and     edx, 0FFFh
cmp     edx, 400h
jge     short loc_4DE811
lea     ecx, [eax+400h]
and     ecx, 0FFFh
or      ecx, 20000h

loc_4DE811:
mov     eax, ecx
pop     edi
pop     esi
retn
sub_4DE726 endp

jpt_4DE847 dd offset loc_4DE84E ; jump table for switch statement
dd offset loc_4DE84E
dd offset loc_4DE84E
dd offset loc_4DE84E
dd offset loc_4DE857
dd offset loc_4DE857
dd offset loc_4DE875
dd offset loc_4DE875
dd offset def_4DE847



sub_4DE83A proc near
push    ecx
mov     ecx, eax
mov     eax, edx
shr     eax, 4
cmp     eax, 8          ; switch 9 cases
ja      short def_4DE847 ; jumptable 004DE847 default case, case 8
jmp     jpt_4DE847[eax*4] ; switch jump

loc_4DE84E:             ; jumptable 004DE847 cases 0-3
mov     eax, ds:dword_765764[edx*4]
jmp     short loc_4DE89A

loc_4DE857:             ; jumptable 004DE847 cases 4,5
mov     eax, edx
shl     eax, 2
cmp     byte ptr [ecx+170h], 0
jz      short loc_4DE86D
mov     eax, ds:dword_7500AC[eax]
jmp     short loc_4DE89A

loc_4DE86D:
mov     eax, ds:dword_75052C[eax]
jmp     short loc_4DE89A

loc_4DE875:             ; jumptable 004DE847 cases 6,7
mov     eax, edx
shl     eax, 2
cmp     byte ptr [ecx+171h], 0
jz      short loc_4DE88B
mov     eax, ds:dword_70DAAC[eax]
jmp     short loc_4DE89A

loc_4DE88B:
mov     eax, ds:dword_70D62C[eax]
jmp     short loc_4DE89A

def_4DE847:             ; jumptable 004DE847 default case, case 8
mov     eax, ds:dword_76334C[edx*4]

loc_4DE89A:
shl     ebx, 3
add     ebx, eax
mov     [ecx+94h], eax
mov     [ecx+98h], ebx
mov     [ecx+0ACh], dl
mov     eax, [ebx]
mov     [ecx+0A4h], eax
mov     eax, ecx
call    sub_4DEF3E
mov     eax, ecx
call    sub_4DEBDA
pop     ecx
retn
sub_4DE83A endp

align 2
jpt_4DE8F8 dd offset loc_4DE8FF ; jump table for switch statement
dd offset loc_4DE8FF
dd offset loc_4DE8FF
dd offset loc_4DE8FF
dd offset loc_4DE908
dd offset loc_4DE908
dd offset loc_4DE926
dd offset loc_4DE926
dd offset def_4DE8F8



sub_4DE8EE proc near
mov     edx, ebx
shr     edx, 4
cmp     edx, 8          ; switch 9 cases
ja      short def_4DE8F8 ; jumptable 004DE8F8 default case, case 8
jmp     jpt_4DE8F8[edx*4] ; switch jump

loc_4DE8FF:             ; jumptable 004DE8F8 cases 0-3
mov     edx, ds:dword_765764[ebx*4]
jmp     short loc_4DE94B

loc_4DE908:             ; jumptable 004DE8F8 cases 4,5
mov     edx, ebx
shl     edx, 2
cmp     byte ptr [eax+170h], 0
jz      short loc_4DE91E
mov     edx, ds:dword_7500AC[edx]
jmp     short loc_4DE94B

loc_4DE91E:
mov     edx, ds:dword_75052C[edx]
jmp     short loc_4DE94B

loc_4DE926:             ; jumptable 004DE8F8 cases 6,7
mov     edx, ebx
shl     edx, 2
cmp     byte ptr [eax+171h], 0
jz      short loc_4DE93C
mov     edx, ds:dword_70DAAC[edx]
jmp     short loc_4DE94B

loc_4DE93C:
mov     edx, ds:dword_70D62C[edx]
jmp     short loc_4DE94B

def_4DE8F8:             ; jumptable 004DE8F8 default case, case 8
mov     edx, ds:dword_76334C[ebx*4]

loc_4DE94B:
shl     ecx, 3
add     ecx, edx
mov     [eax+0F8h], edx
mov     [eax+0FCh], ecx
mov     [eax+104h], bl
mov     edx, [ecx]
mov     [eax+100h], edx
retn
sub_4DE8EE endp




sub_4DE96B proc near

var_8= dword ptr -8

push    ecx
sub     esp, 4
mov     ecx, eax
mov     [esp+8+var_8], edx
mov     eax, edx
shl     eax, 2
mov     edx, [ecx+90h]
add     eax, edx
mov     edx, ebx
shl     edx, 3
mov     ebx, [eax]
add     edx, ebx
mov     [ecx+94h], ebx
mov     [ecx+98h], edx
mov     al, byte ptr [esp+8+var_8]
mov     [ecx+0ACh], al
mov     eax, [edx]
mov     [ecx+0A4h], eax
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
add     esp, 4
pop     ecx
retn
sub_4DE96B endp




sub_4DE9BA proc near

var_8= byte ptr -8

push    ecx
push    edx
shl     edx, 2
mov     ecx, [eax+90h]
add     edx, ecx
mov     ecx, ebx
shl     ecx, 3
mov     ebx, [edx]
add     ecx, ebx
mov     [eax+94h], ebx
mov     [eax+98h], ecx
mov     dl, [esp+8+var_8]
mov     [eax+0ACh], dl
mov     edx, [ecx]
mov     [eax+0A4h], edx
call    sub_4DFC52
add     esp, 4
pop     ecx
retn
sub_4DE9BA endp




sub_4DE9F7 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+98h]
mov     bl, [edx+0A5h]
dec     bl
mov     [edx+0A5h], bl
jnz     short loc_4DEA5B
cmp     byte ptr [eax+3], 0
jge     short loc_4DEA44
mov     ecx, [eax]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEA2D
mov     al, [eax+1]
mov     [edx+0A5h], al
jmp     short loc_4DEA5B

loc_4DEA2D:
mov     al, [eax+3]
and     al, 7Fh
and     eax, 0FFh
shl     eax, 3
mov     ecx, [edx+94h]
add     ecx, eax
jmp     short loc_4DEA4D

loc_4DEA44:
mov     ecx, [edx+98h]
add     ecx, 8

loc_4DEA4D:
mov     [edx+98h], ecx
mov     eax, [ecx]
mov     [edx+0A4h], eax

loc_4DEA5B:
mov     eax, edx
call    sub_4DEF3E
mov     eax, edx
call    sub_4DEBDA
pop     edx
pop     ecx
pop     ebx
retn
sub_4DE9F7 endp




sub_4DEA6D proc near
push    ebx
push    ecx
mov     [eax+106h], dx
mov     edx, [eax+0FCh]
mov     bl, [eax+101h]
dec     bl
mov     [eax+101h], bl
jnz     short loc_4DEADA
cmp     byte ptr [edx+3], 0
jge     short loc_4DEAC3
mov     ecx, [edx]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEAA8
mov     dl, [edx+1]
mov     [eax+101h], dl
pop     ecx
pop     ebx
retn

loc_4DEAA8:
mov     dl, [edx+3]
and     dl, 7Fh
mov     ecx, edx
and     ecx, 0FFh
shl     ecx, 3
mov     edx, [eax+0F8h]
add     edx, ecx
jmp     short loc_4DEACC

loc_4DEAC3:
mov     edx, [eax+0FCh]
add     edx, 8

loc_4DEACC:
mov     [eax+0FCh], edx
mov     edx, [edx]
mov     [eax+100h], edx

loc_4DEADA:
pop     ecx
pop     ebx
retn
sub_4DEA6D endp




sub_4DEADD proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+98h]
mov     bl, [edx+0A5h]
dec     bl
mov     [edx+0A5h], bl
jnz     short loc_4DEB41
cmp     byte ptr [eax+3], 0
jge     short loc_4DEB2A
mov     ecx, [eax]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEB13
mov     al, [eax+1]
mov     [edx+0A5h], al
jmp     short loc_4DEB41

loc_4DEB13:
mov     al, [eax+3]
and     al, 7Fh
and     eax, 0FFh
shl     eax, 3
mov     ecx, [edx+94h]
add     ecx, eax
jmp     short loc_4DEB33

loc_4DEB2A:
mov     ecx, [edx+98h]
add     ecx, 8

loc_4DEB33:
mov     [edx+98h], ecx
mov     eax, [ecx]
mov     [edx+0A4h], eax

loc_4DEB41:
mov     eax, edx
call    sub_4DFC52
mov     eax, edx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEADD endp




sub_4DEB53 proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+98h]
mov     bl, [eax+0A5h]
dec     bl
mov     [eax+0A5h], bl
jnz     short loc_4DEBBF
cmp     byte ptr [edx+3], 0
jge     short loc_4DEBA8
mov     ecx, [edx]
sar     ecx, 18h
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4DEB87
mov     dl, [edx+1]
mov     [eax+0A5h], dl
jmp     short loc_4DEBBF

loc_4DEB87:
mov     dl, [edx+3]
and     dl, 7Fh
and     edx, 0FFh
shl     edx, 3
mov     ecx, [eax+94h]
add     ecx, edx
mov     [eax+98h], ecx
mov     edx, [ecx]
jmp     short loc_4DEBB9

loc_4DEBA8:
mov     edx, [eax+98h]
add     edx, 8
mov     [eax+98h], edx
mov     edx, [edx]

loc_4DEBB9:
mov     [eax+0A4h], edx

loc_4DEBBF:
call    sub_4DFC52
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEB53 endp

db 8Bh, 0C0h
jpt_4DED48 dd offset def_4DED48 ; jump table for switch statement
dd offset loc_4DED5B
dd offset loc_4DED66
dd offset loc_4DED71



sub_4DEBDA proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 24h
mov     ebp, eax
call    sub_4DF74A
mov     edx, [ebp+12h]
sar     edx, 10h
mov     cl, ds:byte_77EABF ; int
shl     edx, cl
mov     ds:dword_564A90, edx
mov     edx, [ebp+14h]
sar     edx, 10h
shl     edx, cl
mov     ds:dword_564A94, edx
mov     edx, [ebp+16h]
sar     edx, 10h
shl     edx, cl
mov     ds:dword_564A98, edx
xor     edx, edx
mov     [esp+3Ch+var_2C], dx
mov     ax, [ebp+56h]
mov     bx, [ebp+116h]
sub     eax, ebx
mov     [esp+3Ch+var_2A], ax
mov     [esp+3Ch+var_28], dx
mov     edx, offset unk_564A6C
lea     eax, [esp+3Ch+var_2C]
call    sub_4EF5F7
mov     ecx, 0Ch
lea     edi, [ebp+1A8h]
mov     esi, offset unk_564A6C
rep movsd
mov     edi, offset word_560E04
mov     eax, ds:dword_7441AC
mov     [esp+3Ch+var_1C], eax
mov     eax, offset unk_564A6C
call    sub_4DF755
lea     ebx, [edi+8]
mov     ecx, edi
xor     edx, edx
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 40h ; '@'
lea     ebx, [edi+48h]
mov     edx, 8
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF755
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 48h ; 'H'
lea     ebx, [edi+50h]
mov     edx, 9
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 50h ; 'P'
lea     ebx, [edi+58h]
mov     edx, 0Ah
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 58h ; 'X'
lea     ebx, [edi+60h]
mov     edx, 0Bh
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 60h ; '`'
lea     ebx, [edi+68h]
mov     edx, 0Ch
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 68h ; 'h'
lea     ebx, [edi+70h]
mov     edx, 0Dh
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 70h ; 'p'
lea     ebx, [edi+78h]
mov     edx, 0Eh
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     ax, [ebp+106h]
cmp     ax, 3           ; switch 4 cases
ja      short def_4DED48 ; jumptable 004DED48 default case, case 0
and     eax, 0FFFFh
jmp     jpt_4DED48[eax*4] ; switch jump

def_4DED48:             ; jumptable 004DED48 default case, case 0
mov     esi, edi
mov     [esp+3Ch+var_24], edi

loc_4DED55:
mov     [esp+3Ch+var_20], edi
jmp     short loc_4DED7E

loc_4DED5B:             ; jumptable 004DED48 case 1
mov     esi, offset word_561604
mov     [esp+3Ch+var_24], esi
jmp     short loc_4DED55

loc_4DED66:             ; jumptable 004DED48 case 2
mov     esi, offset word_561604
mov     [esp+3Ch+var_24], edi
jmp     short loc_4DED7A

loc_4DED71:             ; jumptable 004DED48 case 3
mov     esi, offset word_561604
mov     [esp+3Ch+var_24], esi

loc_4DED7A:
mov     [esp+3Ch+var_20], esi

loc_4DED7E:
lea     ebx, [esi+8]
mov     ecx, edi
xor     edx, edx
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF755
lea     edi, [esp+3Ch+var_2C]
lea     esi, [esi+10h]
movsd
movsd
imul    ax, [ebp+0B4h], 5
add     [esp+3Ch+var_2A], ax
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 8
lea     ebx, [esp+3Ch+var_2C]
mov     edx, 1
mov     eax, ebp
call    sub_4DF5EE
xor     eax, eax
mov     [esp+3Ch+var_2C], ax
mov     [esp+3Ch+var_2A], 0FF6Ah
mov     [esp+3Ch+var_28], ax
mov     ebx, esp
lea     edx, [esp+3Ch+var_2C]
mov     eax, offset unk_564A6C
call    sub_4EF1FB
mov     ax, word ptr ds:dword_564A90
mov     ecx, [esp+3Ch+var_3C]
add     eax, ecx
mov     [ebp+520h], ax
mov     ax, word ptr ds:dword_564A94
mov     esi, [esp+3Ch+var_38]
add     eax, esi
mov     [ebp+522h], ax
mov     ax, word ptr ds:dword_564A98
mov     edi, [esp+3Ch+var_34]
add     eax, edi
mov     [ebp+524h], ax
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     eax, offset unk_564A6C
call    sub_4DF755
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 10h
mov     ebx, [esp+3Ch+var_24]
add     ebx, 18h
mov     edx, 2
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 18h
mov     ebx, [esp+3Ch+var_24]
add     ebx, 20h ; ' '
mov     edx, 3
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 20h ; ' '
mov     ebx, [esp+3Ch+var_24]
add     ebx, 28h ; '('
mov     edx, 4
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
mov     eax, offset unk_564A6C
call    sub_4DF755
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 28h ; '('
mov     ebx, [esp+3Ch+var_20]
add     ebx, 30h ; '0'
mov     edx, 5
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 30h ; '0'
mov     ebx, [esp+3Ch+var_20]
add     ebx, 38h ; '8'
mov     edx, 6
mov     eax, ebp
call    sub_4DF5EE
mov     ecx, [esp+3Ch+var_1C]
add     ecx, 38h ; '8'
mov     ebx, [esp+3Ch+var_20]
add     ebx, 40h ; '@'
mov     edx, 7
mov     eax, ebp
call    sub_4DF5EE
mov     eax, offset unk_564A6C
call    sub_4DF778
add     esp, 24h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEBDA endp

jpt_4DEF58 dd offset loc_4DEF5F ; jump table for switch statement
dd offset loc_4DEF5F
dd offset loc_4DEF5F
dd offset loc_4DEF5F
dd offset loc_4DEF66
dd offset loc_4DEF66
dd offset loc_4DEF7F
dd offset loc_4DEF7F
dd offset def_4DEF58
jpt_4DEFB7 dd offset loc_4DEFBE ; jump table for switch statement
dd offset loc_4DEFBE
dd offset loc_4DEFBE
dd offset loc_4DEFBE
dd offset loc_4DEFC5
dd offset loc_4DEFC5
dd offset loc_4DEFE0
dd offset loc_4DEFE0
dd offset def_4DEFB7



sub_4DEF3E proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     ecx, eax
mov     al, [eax+0ACh]
movsx   edx, al
sar     edx, 4
cmp     edx, 8          ; switch 9 cases
ja      short def_4DEF58 ; jumptable 004DEF58 default case, case 8
jmp     jpt_4DEF58[edx*4] ; switch jump

loc_4DEF5F:             ; jumptable 004DEF58 cases 0-3
mov     edx, offset unk_7441B0
jmp     short loc_4DEF9F

loc_4DEF66:             ; jumptable 004DEF58 cases 4,5
cmp     byte ptr [ecx+170h], 0
jz      short loc_4DEF76
mov     edx, offset unk_6F81AC
jmp     short loc_4DEF7B

loc_4DEF76:
mov     edx, offset unk_6F61AC

loc_4DEF7B:
sub     al, 40h ; '@'
jmp     short loc_4DEF9F

loc_4DEF7F:             ; jumptable 004DEF58 cases 6,7
cmp     byte ptr [ecx+171h], 0
jz      short loc_4DEF8F
mov     edx, offset unk_7057AC
jmp     short loc_4DEF94

loc_4DEF8F:
mov     edx, offset unk_7077AC

loc_4DEF94:
sub     al, 60h ; '`'
jmp     short loc_4DEF9F

def_4DEF58:             ; jumptable 004DEF58 default case, case 8
mov     edx, offset unk_7015AC
sub     al, 80h

loc_4DEF9F:
mov     ah, [ecx+104h]
mov     [esp+14h+var_14], ah
mov     esi, [esp-3]
sar     esi, 18h
sar     esi, 4
cmp     esi, 8          ; switch 9 cases
ja      short def_4DEFB7 ; jumptable 004DEFB7 default case, case 8
jmp     jpt_4DEFB7[esi*4] ; switch jump

loc_4DEFBE:             ; jumptable 004DEFB7 cases 0-3
mov     esi, offset unk_7441B0
jmp     short loc_4DF004

loc_4DEFC5:             ; jumptable 004DEFB7 cases 4,5
cmp     byte ptr [ecx+170h], 0
jz      short loc_4DEFD5
mov     esi, offset unk_6F81AC
jmp     short loc_4DEFDA

loc_4DEFD5:
mov     esi, offset unk_6F61AC

loc_4DEFDA:
sub     [esp+14h+var_14], 40h ; '@'
jmp     short loc_4DF004

loc_4DEFE0:             ; jumptable 004DEFB7 cases 6,7
cmp     byte ptr [ecx+171h], 0
jz      short loc_4DEFF0
mov     esi, offset unk_7057AC
jmp     short loc_4DEFF5

loc_4DEFF0:
mov     esi, offset unk_7077AC

loc_4DEFF5:
sub     [esp+14h+var_14], 60h ; '`'
jmp     short loc_4DF004

def_4DEFB7:             ; jumptable 004DEFB7 default case, case 8
mov     esi, offset unk_7015AC
sub     [esp+14h+var_14], 80h

loc_4DF004:
movsx   eax, al
shl     eax, 2
add     edx, eax
mov     eax, [ecx+98h]
xor     ebx, ebx
mov     bl, [eax]
mov     eax, [edx]
mov     eax, [eax+ebx*4]
mov     ebx, 12h
mov     edx, offset dword_561204
call    sub_4EECD4
mov     eax, [esp-3]
sar     eax, 18h
shl     eax, 2
add     esi, eax
mov     eax, [ecx+0FCh]
mov     al, [eax]
and     eax, 0FFh
mov     edx, [esi]
mov     eax, [edx+eax*4]
mov     ebx, 0Ch
mov     edx, offset dword_561A04
call    sub_4EECD4
mov     ax, word ptr ds:dword_561204
and     ah, 0Fh
mov     ds:word_560E04, ax
mov     eax, ds:dword_561204
and     eax, 0FFF000h
shr     eax, 0Ch
mov     edx, eax
mov     eax, offset word_560E04
add     eax, 2
mov     [eax], dx
mov     ecx, ds:dword_561208
and     ecx, 0Fh
shl     ecx, 8
mov     edx, ds:dword_561204
and     edx, 0FF000000h
shr     edx, 18h
or      edx, ecx
add     eax, 2
mov     [eax], dx
add     eax, 4
mov     edx, offset dword_561204
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 2
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 4
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      esi, ecx
add     eax, 2
mov     [eax], si
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     word ptr [eax], 0
add     eax, 4
mov     word ptr [eax], 0
add     eax, 2
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 4
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      ecx, esi
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     edx, 4
add     eax, 2
mov     word ptr [eax], 0
add     eax, 4
mov     word ptr [eax], 0
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
add     eax, 2
mov     [eax], cx
add     eax, 2
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 4
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 2
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 4
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     word ptr [eax], 0
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 4
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 4
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ecx, [edx]
and     ecx, 0FF000000h
shr     ecx, 18h
or      ecx, esi
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     edx, 4
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax+2], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
mov     [eax+4], cx
mov     ecx, [edx+4]
and     ecx, 0FFh
shl     ecx, 4
mov     edx, [edx]
and     edx, 0F0000000h
shr     edx, 1Ch
or      edx, ecx
mov     [eax+6], dx
mov     ax, word ptr ds:dword_561A04
and     ah, 0Fh
mov     ds:word_561604, ax
mov     eax, ds:dword_561A04
and     eax, 0FFF000h
shr     eax, 0Ch
mov     edx, eax
mov     eax, offset word_561604
add     eax, 2
mov     [eax], dx
mov     ecx, ds:dword_561A08
and     ecx, 0Fh
shl     ecx, 8
mov     edx, ds:dword_561A04
and     edx, 0FF000000h
shr     edx, 18h
or      ecx, edx
add     eax, 2
mov     [eax], cx
add     eax, 4
mov     edx, offset dword_561A04
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 2
mov     [eax], cx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ecx, [edx]
and     ecx, 0F0000000h
shr     ecx, 1Ch
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF00h
shr     ecx, 8
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF00000h
shr     ecx, 14h
add     eax, 2
mov     [eax], cx
add     edx, 4
mov     cx, [edx]
and     ch, 0Fh
add     eax, 2
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
add     eax, 4
mov     [eax], cx
mov     ecx, [edx+4]
and     ecx, 0Fh
shl     ecx, 8
mov     esi, [edx]
and     esi, 0FF000000h
shr     esi, 18h
or      ecx, esi
add     eax, 2
mov     [eax], cx
add     eax, 2
add     edx, 4
mov     ecx, [edx]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax], cx
mov     ecx, [edx]
and     ecx, 0FFF0000h
shr     ecx, 10h
add     eax, 4
mov     [eax], cx
add     eax, 2
mov     word ptr [eax], 0
add     eax, 2
mov     word ptr [eax], 0
add     eax, 4
mov     word ptr [eax], 0
add     eax, 2
mov     ecx, [edx+4]
and     ecx, 0FFh
shl     ecx, 4
mov     ebx, [edx]
and     ebx, 0F0000000h
shr     ebx, 1Ch
or      ecx, ebx
mov     [eax], cx
mov     ecx, [edx+4]
and     ecx, 0FFF00h
shr     ecx, 8
mov     [eax+2], cx
mov     ecx, [edx+4]
and     ecx, 0FFF00000h
shr     ecx, 14h
mov     [eax+6], cx
mov     cx, [edx+8]
and     ch, 0Fh
mov     [eax+8], cx
mov     ecx, [edx+8]
and     ecx, 0FFF000h
shr     ecx, 0Ch
mov     [eax+0Ah], cx
mov     ecx, [edx+0Ch]
and     ecx, 0Fh
shl     ecx, 8
mov     esi, [edx+8]
and     esi, 0FF000000h
shr     esi, 18h
or      ecx, esi
mov     [eax+0Eh], cx
mov     word ptr [eax+10h], 0
mov     word ptr [eax+12h], 0
mov     word ptr [eax+16h], 0
mov     ecx, [edx+0Ch]
and     ecx, 0FFF0h
shr     ecx, 4
mov     [eax+18h], cx
mov     edx, [edx+0Ch]
and     edx, 0FFF0000h
shr     edx, 10h
mov     [eax+1Ah], dx
mov     ax, ds:word_560E04
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E04, ax
mov     ax, ds:word_560E06
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E06, ax
mov     ax, ds:word_560E08
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E08, ax
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DEF3E endp




sub_4DF5EE proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 58h
mov     ebp, eax
mov     esi, edx
mov     edi, ebx
mov     eax, ecx
mov     cl, ds:byte_77EABF
mov     bx, [eax]
shl     ebx, cl
mov     word ptr [esp+64h+var_14], bx
mov     bx, [eax+2]
shl     ebx, cl
mov     word ptr [esp+64h+var_14+2], bx
mov     ax, [eax+4]
shl     eax, cl
mov     [esp+64h+var_10], ax
lea     ebx, [esp+64h+var_34]
lea     edx, [esp+64h+var_14]
mov     eax, offset unk_564A6C
call    sub_4EF1FB
mov     edx, esp
mov     eax, edi
call    sub_4EF5F7
mov     ebx, offset unk_564A6C
mov     edx, esp
mov     eax, ebx
call    sub_4EF388
mov     eax, [esp+64h+var_34]
add     ds:dword_564A90, eax
mov     eax, [esp+64h+var_30]
add     ds:dword_564A94, eax
mov     eax, [esp+64h+var_2C]
add     ds:dword_564A98, eax
mov     cl, ds:byte_77EABF
mov     dx, [ebp+14h]
shl     edx, cl
mov     word ptr [esp+64h+var_14], dx
mov     dx, [ebp+16h]
shl     edx, cl
mov     word ptr [esp+64h+var_14+2], dx
mov     ax, [ebp+18h]
shl     eax, cl
mov     [esp+64h+var_10], ax
mov     edx, [esp+4Eh]
sar     edx, 10h
mov     eax, edx
shl     eax, 3
sub     eax, edx
add     eax, ds:dword_564A90
add     eax, 4
sar     eax, 3
mov     edx, eax
mov     eax, esi
mov     [ebp+eax*8+4A8h], dx
mov     ecx, [esp+64h+var_14]
sar     ecx, 10h
mov     edx, ecx
shl     edx, 3
sub     edx, ecx
add     edx, ds:dword_564A94
add     edx, 4
sar     edx, 3
mov     [ebp+eax*8+4AAh], dx
mov     edi, [esp+64h+var_14+2]
sar     edi, 10h
mov     edx, edi
shl     edx, 3
sub     edx, edi
add     edx, ds:dword_564A98
add     edx, 4
sar     edx, 3
mov     [ebp+eax*8+4ACh], dx
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 4
lea     esi, [edx+ebp]
mov     ecx, 0Ch
lea     edi, [esi+1D8h]
mov     esi, offset unk_564A6C
rep movsd
mov     cl, ds:byte_77EABF
mov     eax, ds:dword_5505DC
shl     eax, cl
mov     [esp+64h+var_24], eax
mov     [esp+64h+var_20], eax
mov     [esp+64h+var_1C], eax
lea     eax, [ebp+1D8h]
add     eax, edx
lea     edx, [esp+64h+var_24]
call    sub_4EF689
add     esp, 58h
pop     ebp
pop     edi
pop     esi
retn
sub_4DF5EE endp




sub_4DF74A proc near
mov     ds:dword_55DB38, offset dword_55DB38
retn
sub_4DF74A endp




sub_4DF755 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, ds:dword_55DB38
sub     edx, 30h ; '0'
mov     ds:dword_55DB38, edx
mov     edi, edx
mov     ecx, 0Ch
mov     esi, eax
rep movsd
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4DF755 endp




sub_4DF778 proc near
push    ecx
push    esi
push    edi
mov     esi, ds:dword_55DB38
mov     ecx, 0Ch
mov     edi, eax
rep movsd
add     ds:dword_55DB38, 30h ; '0'
pop     edi
pop     esi
pop     ecx
retn
sub_4DF778 endp




sub_4DF795 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ecx
push    edx
sub     esp, 38h
mov     ecx, eax        ; int
xor     edx, edx
mov     [esp+40h+var_10], dx
mov     ax, [eax+56h]
mov     [esp+40h+var_E], ax
mov     [esp+40h+var_C], dx
mov     edx, esp
lea     eax, [esp+40h+var_10]
call    sub_4EF5F7
mov     edx, esp
mov     eax, ecx
call    sub_4DF87F
add     esp, 38h
pop     edx
pop     ecx
retn
sub_4DF795 endp




sub_4DF7CB proc near
push    ecx
push    edx
sub     esp, 30h
mov     ecx, eax        ; int
add     eax, 54h ; 'T'
mov     edx, esp
call    sub_4EF638
mov     edx, esp
mov     eax, ecx
call    sub_4DF87F
add     esp, 30h
pop     edx
pop     ecx
retn
sub_4DF7CB endp




sub_4DF7EB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+6D2h], 20h ; ' '
mov     al, [eax+6D2h]
mov     [ecx+6D1h], al
mov     [ecx+6D0h], al
xor     edx, edx

loc_4DF80B:
mov     eax, edx
mov     byte ptr [ecx+eax*4+6D6h], 20h ; ' '
mov     bl, [ecx+eax*4+6D6h]
mov     [ecx+eax*4+6D5h], bl
mov     [ecx+eax*4+6D4h], bl
inc     edx
cmp     edx, 18h
jl      short loc_4DF80B

loc_4DF830:
or      byte ptr [ecx+6], 40h
pop     edx
pop     ecx
pop     ebx
retn
sub_4DF7EB endp




sub_4DF838 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     byte ptr [eax+46Ah], 20h ; ' '
mov     al, [eax+46Ah]
mov     [ecx+469h], al
mov     [ecx+468h], al
xor     edx, edx

loc_4DF858:
mov     eax, edx
mov     byte ptr [ecx+eax*4+46Eh], 20h ; ' '
mov     bl, [ecx+eax*4+46Eh]
mov     [ecx+eax*4+46Dh], bl
mov     [ecx+eax*4+46Ch], bl
inc     edx
cmp     edx, 0Dh
jl      short loc_4DF858
jmp     short loc_4DF830
sub_4DF838 endp




sub_4DF87F proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= word ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 60h
mov     ebp, eax
mov     [esp+74h+var_30], edx
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jnz     short loc_4DF8A5
mov     eax, ebp
add     eax, 250h
jmp     short loc_4DF8AC

loc_4DF8A5:
mov     eax, ebp
add     eax, 1F8h

loc_4DF8AC:
mov     [esp+74h+var_24], eax
mov     [esp+74h+var_2C], offset word_560E04
mov     eax, [ebp+9Ch]
mov     [esp+74h+var_34], eax
mov     ecx, 0Ch
lea     edi, [ebp+160h]
mov     esi, [esp+74h+var_30]
rep movsd
mov     cl, ds:byte_77EABF ; int
mov     dx, [ebp+158h]
shl     edx, cl
mov     [esp+74h+var_1C], dx
mov     dx, [ebp+15Ah]
shl     edx, cl
mov     [esp+74h+var_18], dx
mov     ax, [ebp+15Ch]
shl     eax, cl
mov     [esp+74h+var_20], ax
mov     eax, offset word_560E04
add     eax, 8
mov     edx, esp
call    sub_4EF5F7
mov     ebx, [esp+74h+var_24]
mov     edx, esp
mov     eax, [esp+74h+var_30]
call    sub_4EF388
mov     eax, [ebp+0F6h]
sar     eax, 18h
mov     [esp+74h+var_28], eax
mov     esi, 1

loc_4DF933:
cmp     esi, [esp+74h+var_28]
jnb     short loc_4DF9A4
mov     edx, esi
lea     eax, [ebp+0F8h]
movsx   edi, byte ptr [eax+edx*4+1]
mov     al, [eax+edx*4+2]
and     eax, 0FFh
test    edi, edi
jl      short loc_4DF9A1
shl     edx, 2
sub     edx, esi
shl     edx, 4
mov     ecx, [esp+74h+var_24]
add     ecx, edx        ; int
test    eax, eax
jz      short loc_4DF991
shl     eax, 3
mov     edx, [esp+74h+var_2C]
add     edx, 8
add     eax, edx
mov     edx, esp
call    sub_4EF5F7
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 4
add     eax, [esp+74h+var_24]
mov     ebx, ecx
mov     edx, esp
call    sub_4EF388
jmp     short loc_4DF9A1

loc_4DF991:
mov     ebx, 24h ; '$'
mov     edx, [esp+74h+var_24]
mov     eax, ecx
call    memcpy_

loc_4DF9A1:
inc     esi
jmp     short loc_4DF933

loc_4DF9A4:
test    byte ptr [ebp+6], 40h
jz      loc_4DFABF
xor     eax, eax
mov     al, [ebp+1]
call    sub_4DD420
cmp     eax, 40h ; '@'
jnz     short loc_4DF9C5
lea     edi, [ebp+6D0h]
jmp     short loc_4DF9CB

loc_4DF9C5:
lea     edi, [ebp+468h]

loc_4DF9CB:
mov     eax, [ebp+156h]
sar     eax, 10h
xor     edx, edx
mov     dl, [edi]
imul    edx, eax
mov     al, ds:byte_77EABF
mov     cl, al
shl     edx, cl
sar     edx, 5
mov     [esp+74h+var_44], edx
mov     ecx, [ebp+158h]
sar     ecx, 10h
xor     edx, edx
mov     dl, [edi+1]
imul    edx, ecx
mov     cl, al
shl     edx, cl
sar     edx, 5
mov     [esp+74h+var_40], edx
mov     ecx, [ebp+15Ah]
sar     ecx, 10h
xor     edx, edx
mov     dl, [edi+2]
imul    edx, ecx
mov     cl, al
shl     edx, cl
sar     edx, 5
mov     [esp+74h+var_3C], edx
lea     eax, [ebp+160h]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
xor     esi, esi

loc_4DFA34:
cmp     esi, [esp+74h+var_28]
jnb     loc_4DFB13
mov     eax, esi
xor     edx, edx
mov     dl, [edi+eax*4+4]
mov     ebx, [ebp+156h]
sar     ebx, 10h
imul    ebx, edx
mov     dl, ds:byte_77EABF
mov     cl, dl
shl     ebx, cl
mov     ecx, ebx
sar     ecx, 5
mov     [esp+74h+var_44], ecx
xor     ecx, ecx
mov     cl, [edi+eax*4+5]
mov     ebx, [ebp+158h]
sar     ebx, 10h
imul    ebx, ecx
mov     cl, dl
shl     ebx, cl
sar     ebx, 5
mov     [esp+74h+var_40], ebx
mov     al, [edi+eax*4+6]
and     eax, 0FFh
mov     ecx, [ebp+15Ah]
sar     ecx, 10h
imul    eax, ecx
mov     cl, dl
shl     eax, cl
sar     eax, 5
mov     [esp+74h+var_3C], eax
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
add     eax, [esp+74h+var_24]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
inc     esi
jmp     loc_4DFA34

loc_4DFABF:
mov     eax, [esp+56h]
sar     eax, 10h
mov     [esp+74h+var_44], eax
mov     eax, [esp+5Ah]
sar     eax, 10h
mov     [esp+74h+var_40], eax
mov     eax, [esp+74h+var_24+2]
sar     eax, 10h
mov     [esp+74h+var_3C], eax
lea     eax, [ebp+160h]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
xor     esi, esi
mov     edi, [esp+74h+var_28]

loc_4DFAF5:
cmp     esi, edi
jnb     short loc_4DFB13
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 4
add     eax, [esp+74h+var_24]
lea     edx, [esp+74h+var_44]
call    sub_4EF689
inc     esi
jmp     short loc_4DFAF5

loc_4DFB13:
mov     eax, [esp+74h+var_2C]
shl     word ptr [eax], 3
shl     word ptr [eax+2], 3
shl     word ptr [eax+4], 3
lea     eax, [ebp+160h]
lea     ebx, [esp+74h+var_44]
mov     edx, [esp+74h+var_2C]
call    sub_4EF1FB
mov     cl, ds:byte_77EABF
mov     ax, [ebp+14h]
shl     eax, cl
mov     edx, [esp+74h+var_44]
add     edx, eax
mov     [ebp+190h], dx
mov     cl, ds:byte_77EABF
mov     ax, [ebp+16h]
shl     eax, cl
mov     edx, [esp+74h+var_40]
add     edx, eax
mov     [ebp+192h], dx
mov     cl, ds:byte_77EABF
mov     ax, [ebp+18h]
shl     eax, cl
mov     edx, [esp+74h+var_3C]
add     edx, eax
mov     [ebp+194h], dx
mov     esi, 1

loc_4DFB88:
cmp     esi, [esp+74h+var_28]
jnb     loc_4DFC49
mov     eax, esi
lea     edx, [ebp+0F8h]
movsx   edi, byte ptr [edx+eax*4+1]
mov     al, [edx+eax*4+2]
and     eax, 0FFh
test    edi, edi
jl      loc_4DFC43
mov     ecx, esi
shl     ecx, 3
add     ecx, ebp
test    eax, eax
jz      short loc_4DFC19
shl     eax, 3
mov     edx, [esp+74h+var_34]
add     edx, eax
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 4
add     eax, [esp+74h+var_24]
lea     ebx, [esp+74h+var_44]
call    sub_4EF1FB
mov     eax, edi
mov     edx, [esp+74h+var_44]
mov     di, [ebp+eax*8+190h]
add     edx, edi
mov     [ecx+190h], dx
mov     edx, [esp+74h+var_40]
mov     bx, [ebp+eax*8+192h]
add     edx, ebx
mov     [ecx+192h], dx
mov     edx, [esp+74h+var_3C]
mov     di, [ebp+eax*8+194h]
mov     eax, edx
add     eax, edi
jmp     short loc_4DFC3C

loc_4DFC19:
mov     ax, [ebp+190h]
mov     [ecx+190h], ax
mov     ax, [ebp+192h]
mov     [ecx+192h], ax
mov     ax, [ebp+194h]

loc_4DFC3C:
mov     [ecx+194h], ax

loc_4DFC43:
inc     esi
jmp     loc_4DFB88

loc_4DFC49:
add     esp, 60h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4DF87F endp




sub_4DFC52 proc near
push    ebx
push    ecx
push    edx
push    esi
xor     edx, edx
mov     dl, [eax+0ACh]
mov     ecx, [eax+0A0h]
mov     eax, [eax+98h]
mov     al, [eax]
and     eax, 0FFh
mov     edx, [ecx+edx*4]
mov     eax, [edx+eax*4]
mov     ebx, 20h ; ' '
mov     edx, offset unk_561E04
call    sub_4EECD4
mov     eax, offset word_560E04
mov     edx, offset unk_561E04
mov     ecx, 3

loc_4DFC95:
mov     bx, [edx]
and     bh, 0Fh
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF000h
shr     ebx, 0Ch
add     eax, 2
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ebx, [edx]
and     ebx, 0FF000000h
shr     ebx, 18h
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 4
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF0h
shr     ebx, 4
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF0000h
shr     ebx, 10h
add     eax, 2
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ebx, [edx]
and     ebx, 0F0000000h
shr     ebx, 1Ch
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 4
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF00h
shr     ebx, 8
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF00000h
shr     ebx, 14h
add     eax, 2
mov     [eax], bx
add     edx, 4
mov     bx, [edx]
and     bh, 0Fh
add     eax, 2
mov     [eax], bx
add     eax, 4
mov     ebx, [edx]
and     ebx, 0FFF000h
shr     ebx, 0Ch
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ebx, [edx]
and     ebx, 0FF000000h
shr     ebx, 18h
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF0h
shr     ebx, 4
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF0000h
shr     ebx, 10h
add     eax, 4
mov     [eax], bx
mov     ebx, [edx+4]
and     ebx, 0FFh
shl     ebx, 4
mov     esi, [edx]
and     esi, 0F0000000h
shr     esi, 1Ch
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF00h
shr     ebx, 8
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF00000h
shr     ebx, 14h
add     eax, 4
mov     [eax], bx
add     edx, 4
mov     bx, [edx]
and     bh, 0Fh
add     eax, 2
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF000h
shr     ebx, 0Ch
add     eax, 2
mov     [eax], bx
add     eax, 2
mov     esi, [edx+4]
and     esi, 0Fh
shl     esi, 8
mov     ebx, [edx]
and     ebx, 0FF000000h
shr     ebx, 18h
or      ebx, esi
add     eax, 2
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF0h
shr     ebx, 4
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF0000h
shr     ebx, 10h
add     eax, 2
mov     [eax], bx
mov     esi, [edx+4]
and     esi, 0FFh
shl     esi, 4
mov     ebx, [edx]
and     ebx, 0F0000000h
shr     ebx, 1Ch
or      ebx, esi
add     eax, 4
mov     [eax], bx
add     eax, 2
add     edx, 4
mov     ebx, [edx]
and     ebx, 0FFF00h
shr     ebx, 8
mov     [eax], bx
mov     ebx, [edx]
and     ebx, 0FFF00000h
shr     ebx, 14h
add     eax, 2
mov     [eax], bx
add     edx, 4
add     eax, 4
dec     ecx
jnz     loc_4DFC95
mov     bx, [edx]
and     bh, 0Fh
mov     [eax], bx
mov     ecx, [edx]
and     ecx, 0FFF000h
shr     ecx, 0Ch
mov     [eax+2], cx
mov     ecx, [edx+4]
and     ecx, 0Fh
shl     ecx, 8
mov     edx, [edx]
and     edx, 0FF000000h
shr     edx, 18h
or      edx, ecx
mov     [eax+4], dx
mov     ax, ds:word_560E04
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E04, ax
mov     ax, ds:word_560E06
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E06, ax
mov     ax, ds:word_560E08
shl     eax, 4
cwde
sar     eax, 4
mov     ds:word_560E08, ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4DFC52 endp




sub_4DFEFE proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 44h
mov     ebp, edx
mov     [esp+50h+var_10], ebx
mov     edx, ecx
mov     ecx, 0Ch
mov     edi, offset unk_564A6C
mov     esi, eax
rep movsd
lea     ebx, [esp+50h+var_20]
mov     eax, offset unk_564A6C
call    sub_4EF1FB
mov     eax, [esp+50h+var_20]
add     ds:dword_564A90, eax
mov     eax, [esp+50h+var_1C]
add     ds:dword_564A94, eax
mov     eax, [esp+50h+var_18]
add     ds:dword_564A98, eax
mov     edx, esp
mov     eax, [esp+50h+var_10]
call    sub_4EF5F7
mov     ebx, offset unk_564A6C
mov     edx, esp
mov     eax, ebx
call    sub_4EF388
mov     ecx, 0Ch
mov     edi, ebp
mov     esi, offset unk_564A6C
rep movsd
add     esp, 44h
pop     ebp
pop     edi
pop     esi
retn
sub_4DFEFE endp




sub_4DFF74 proc near
push    edx
xor     edx, edx
mov     ds:dword_77E94C, edx
mov     ds:dword_77E940, 0FFh
xor     ah, ah
mov     ds:byte_55DC22, ah
mov     ds:byte_55DC36, ah
mov     ds:byte_55DC4A, ah
mov     ds:byte_55DC5E, ah
mov     ds:dword_55DCBC, edx
mov     ds:dword_55DCD0, edx
mov     ds:dword_55DCCC, edx
pop     edx
retn
sub_4DFF74 endp




sub_4DFFB5 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    edi
push    ebp
sub     esp, 10h
mov     ebp, esi
mov     esi, eax
mov     edi, ebx
mov     eax, [eax]
sar     eax, 10h
mov     [esp+18h+var_10], eax
mov     eax, [edx]
sar     eax, 10h
mov     ebx, [esp+18h+var_10]
imul    ebx, eax
mov     [esp+18h+var_10], ebx
movsx   eax, word ptr [esi]
mov     [esp+18h+var_C], eax
movsx   eax, word ptr [edx]
imul    eax, [esp+18h+var_C]
mov     ebx, [esp+18h+var_10]
add     ebx, eax
mov     [esp+18h+var_C], ebx
mov     eax, [esi+2]
sar     eax, 10h
mov     [esp+18h+var_10], eax
mov     eax, [edx+2]
sar     eax, 10h
imul    eax, [esp+18h+var_10]
add     eax, [esp+18h+var_C]
shl     eax, 4
cmp     eax, ecx
jl      short loc_4E0019
mov     edi, esp
jmp     loc_4E01EC

loc_4E0019:
fild    word ptr [edx]
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBE4
fild    word ptr [edx+2]
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBF0
fild    word ptr [edx+4]
fmul    ds:dbl_50A47C

loc_4E003F:
fstp    ds:flt_55DBFC
movsx   eax, word ptr [esi]
mov     ds:dword_55DB3C, eax
mov     eax, [esi]
sar     eax, 10h
mov     ds:dword_55DB40, eax
mov     eax, [esi+2]
sar     eax, 10h
mov     ds:dword_55DB44, eax
movsx   eax, word ptr [edx]
mov     ds:dword_55DB4C, eax
mov     eax, [edx]
sar     eax, 10h
mov     ds:dword_55DB50, eax
mov     eax, [edx+2]
sar     eax, 10h
mov     ds:dword_55DB54, eax
mov     ebx, offset dword_55DC0C
mov     edx, offset dword_55DB4C
mov     eax, offset dword_55DB3C
call    sub_4EF784
mov     ebx, offset dword_55DC7C
mov     edx, offset dword_55DC0C
mov     eax, offset dword_55DB4C
call    sub_4EF784
fild    ds:dword_55DC0C
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBE0
fild    ds:dword_55DC10
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBEC
fild    ds:dword_55DC14
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBF8
fild    ds:dword_55DC7C
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBDC
fild    ds:dword_55DC80
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBE8
fild    ds:dword_55DC84
fmul    ds:dbl_50A47C
fstp    ds:flt_55DBF4
mov     ds:word_55DB6C, di
mov     ds:word_55DB74, di
mov     edx, edi
neg     edx
mov     ds:word_55DB74, dx
xor     ebx, ebx
mov     ds:word_55DB76, bx
mov     ds:word_55DB6E, bx
sar     ecx, 10h
mov     ds:word_55DB78, cx
mov     ds:word_55DB70, cx
mov     ebx, offset dword_55DB3C
mov     edx, offset word_55DB6C
mov     eax, offset flt_55DBDC
call    sub_4EF1FB
mov     edx, [esi]
sar     edx, 10h
imul    edx, ds:dword_55DB40
movsx   eax, word ptr [esi]
imul    eax, ds:dword_55DB3C
add     edx, eax
mov     eax, [esi+2]
sar     eax, 10h
imul    eax, ds:dword_55DB44
lea     ecx, [edx+eax]
mov     ebx, offset dword_55DB4C
mov     edx, offset word_55DB74
mov     eax, offset flt_55DBDC
call    sub_4EF1FB
mov     eax, [esi]
sar     eax, 10h
mov     edx, ds:dword_55DB50
imul    edx, eax
movsx   eax, word ptr [esi]
imul    eax, ds:dword_55DB4C
add     eax, edx
mov     edx, [esi+2]
sar     edx, 10h
imul    edx, ds:dword_55DB54
add     eax, edx
cmp     ecx, eax
jle     short loc_4E01D6
mov     edx, offset word_55DB6C
mov     eax, offset dword_55DB3C
jmp     short loc_4E01E0

loc_4E01D6:
mov     edx, offset word_55DB6C
mov     eax, offset dword_55DB4C

loc_4E01E0:
call    sub_4EF932
mov     edi, esp
mov     esi, offset word_55DB6C

loc_4E01EC:
movsd
movsd
mov     edi, ebp
mov     esi, esp
movsd
movsd
mov     eax, ebp
add     esp, 10h
pop     ebp
pop     edi
retn
sub_4DFFB5 endp




sub_4E01FC proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     [esp+14h+var_14], edx
mov     [esp+14h+var_10], ecx
mov     edx, ds:dword_77E94C
cmp     edx, 40h ; '@'
jb      short loc_4E021D
xor     eax, eax
jmp     loc_4E02C2

loc_4E021D:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, (offset dword_750DAA+2)
mov     edi, eax
mov     esi, ebp
movsd
movsd
mov     ecx, [esp+14h+var_14]
shr     ecx, 2
or      ebx, ecx
or      ebx, [esp+14h+var_10]
mov     [eax+6], bx
mov     ecx, [esp+14h+arg_4]
and     ecx, offset unk_7FFFFF
mov     ebx, [esp+14h+arg_0]
shl     ebx, 18h
or      ecx, ebx
mov     ebx, [esp+14h+arg_C]
or      ebx, ecx
mov     [eax+8], ebx
mov     eax, [esp+14h+arg_8]
mov     ds:dword_7510AC[edx*4], eax
inc     ds:dword_77E94C
mov     eax, [esp+14h+arg_4]
mov     eax, [eax+4]
mov     edx, ds:dword_77E940
and     edx, eax
test    dl, 80h
jz      short loc_4E0285
xor     dl, dl

loc_4E0285:
mov     eax, [esp+14h+arg_10]
or      eax, edx
mov     ecx, [esp+14h+arg_4]
mov     [ecx+4], eax
test    edx, edx
jz      short loc_4E02BD
xor     eax, eax
jmp     short loc_4E02A2

loc_4E029A:
add     edx, edx
inc     eax
cmp     eax, 18h
jnb     short loc_4E02BD

loc_4E02A2:
cmp     edx, 80000000h
jb      short loc_4E029A
mov     esi, ds:dword_7511AC[eax*4]
lea     edi, [esi+0CCh]
mov     esi, ebp
movsd
movsd
jmp     short loc_4E029A

loc_4E02BD:
mov     eax, 1

loc_4E02C2:
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn    14h
sub_4E01FC endp




sub_4E02CB proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch

push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    edx
push    ecx
mov     ebp, [esp+20h+arg_C]
mov     ecx, ds:dword_77E94C
cmp     ecx, 3Fh ; '?'
jb      short loc_4E02E9
xor     esi, esi
jmp     loc_4E03FA

loc_4E02E9:
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, (offset dword_750DAA+2)
mov     edi, edx
mov     esi, eax
movsd
movsd
mov     esi, [esp+20h+var_1C]
shr     esi, 2
or      esi, [esp+20h+arg_0]
or      esi, [esp+20h+arg_4]
mov     [edx+6], si
mov     esi, ebp
and     esi, offset unk_7FFFFF
mov     edi, [esp+20h+arg_8]
shl     edi, 18h
or      esi, edi
mov     edi, [esp+20h+arg_14]
or      edi, esi
mov     [esp+20h+var_10], edi
mov     [edx+8], edi
mov     esi, [esp+20h+arg_10]
mov     ds:dword_7510AC[ecx*4], esi
inc     ecx
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, (offset dword_750DAA+2)
mov     edi, edx
mov     esi, ebx
movsd
movsd
mov     esi, [esp+20h+var_20]
shr     esi, 2
or      esi, [esp+20h+arg_0]
or      esi, [esp+20h+arg_4]
mov     [edx+6], si
mov     esi, [esp+20h+var_10]
mov     [edx+8], esi
mov     edx, [esp+20h+arg_10]
mov     ds:dword_7510AC[ecx*4], edx
add     ds:dword_77E94C, 2
mov     edx, [ebp+4]
mov     ecx, ds:dword_77E940
and     ecx, edx
mov     edx, [esp+20h+arg_18]
or      edx, ecx
mov     [ebp+4], edx
test    ecx, ecx
jz      short loc_4E03F5
xor     edx, edx
jmp     short loc_4E03A1

loc_4E0399:
add     ecx, ecx
inc     edx
cmp     edx, 18h
jnb     short loc_4E03F5

loc_4E03A1:
cmp     ecx, 80000000h
jb      short loc_4E0399
movsx   esi, word ptr [eax]
movsx   edi, word ptr [ebx]
add     esi, edi
sar     esi, 1
mov     [esp+20h+var_18], si
mov     esi, [eax]
sar     esi, 10h
mov     edi, [ebx]
sar     edi, 10h
add     esi, edi
sar     esi, 1
mov     [esp+20h+var_16], si
mov     edi, [eax+2]
sar     edi, 10h
mov     esi, [ebx+2]
sar     esi, 10h
add     esi, edi
sar     esi, 1
mov     [esp+20h+var_14], si
mov     esi, ds:dword_7511AC[edx*4]
lea     edi, [esi+0CCh]
lea     esi, [esp+20h+var_18]
movsd
movsd
jmp     short loc_4E0399

loc_4E03F5:
mov     esi, 1

loc_4E03FA:
mov     eax, esi
add     esp, 14h
pop     ebp
pop     edi
pop     esi
retn    1Ch
sub_4E02CB endp




sub_4E0405 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
call    sub_4E0AF0
mov     eax, offset byte_5F8364
call    sub_4E11E0
mov     ds:dword_5505E8, eax
mov     edi, 0FF000000h
mov     esi, ds:dword_77E94C
xor     edx, edx
mov     ds:dword_77E94C, edx
cmp     esi, 2
jb      loc_4E04C9
mov     [esp+20h+var_20], edx

loc_4E0441:
lea     eax, [esi-1]
mov     ebx, [esp+20h+var_20]
cmp     eax, ebx
jbe     loc_4E04C9
lea     eax, [ebx+1]
mov     [esp+20h+var_1C], eax

loc_4E0456:
mov     ebp, [esp+20h+var_1C]
cmp     esi, ebp
jbe     short loc_4E04C1
mov     edx, [esp+20h+var_20]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 2
xor     eax, eax
mov     ax, ds:word_750DB2[edx]
sar     eax, 0Dh
xor     ebx, ebx
mov     bl, ds:byte_5505E0[eax]
mov     ecx, ebp
mov     eax, ebp
shl     eax, 2
sub     eax, ebp
shl     eax, 2
xor     ecx, ebp
mov     cx, ds:word_750DB2[eax]
sar     ecx, 0Dh
shl     ebx, cl
test    bl, 80h
jz      short loc_4E04BB
mov     edx, ds:dword_750DB4[edx]
xor     edx, ds:dword_750DB4[eax]
test    edx, edi
jz      short loc_4E04BB
lea     edx, [esp+20h+var_1C]
mov     eax, esp
call    sub_4E04D3

loc_4E04BB:
inc     [esp+20h+var_1C]
jmp     short loc_4E0456

loc_4E04C1:
inc     [esp+20h+var_20]
jmp     loc_4E0441

loc_4E04C9:
add     esp, 8

loc_4E04CC:
pop     ebp

loc_4E04CD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E0405 endp




sub_4E04D3 proc near

var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6A= dword ptr -6Ah
var_66= dword ptr -66h
var_62= dword ptr -62h
var_5E= dword ptr -5Eh
var_5A= dword ptr -5Ah
var_56= dword ptr -56h
var_52= word ptr -52h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
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
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 5Ch
push    eax
push    edx
mov     edx, [eax]
mov     eax, edx
shl     eax, 2
sub     eax, edx
lea     edi, [esp+78h+var_70]
lea     esi, (dword_750DAA+2)[eax*4]
movsd
movsd
mov     edx, [esp+78h+var_78]
mov     edx, [edx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
lea     edi, [esp+78h+var_62+2]
lea     esi, (dword_750DAA+2)[eax*4]
movsd
movsd
mov     eax, [esp+78h+var_6A]
xor     al, al
and     ah, 6
cwde
sar     eax, 9
mov     [esp+78h+var_30], eax
mov     eax, [esp+78h+var_5A]
xor     al, al
and     ah, 6
cwde
sar     eax, 9
mov     [esp+78h+var_2C], eax
mov     eax, [esp+78h+var_6A]
and     ah, 1
shl     eax, 2
mov     word ptr [esp+78h+var_6A], ax
mov     eax, [esp+78h+var_5A]
and     ah, 1
shl     eax, 2
mov     word ptr [esp+78h+var_5A], ax
mov     eax, [esp+0Ch]
sar     eax, 10h
mov     edx, [esp+78h+var_5E+2]
sar     edx, 10h
add     edx, eax
lea     eax, [edx+edx]
mov     ecx, [esp+78h+var_62]
sar     ecx, 10h
mov     ebx, [esp+78h+var_74+2]
sar     ebx, 10h
sub     ebx, ecx
lea     ecx, [ebx+edx]
cmp     ecx, eax
jbe     short loc_4E0598

loc_4E0576:
cmp     [esp+78h+var_30], 0
jz      short loc_4E0583
mov     eax, [esp+78h+var_74]
inc     dword ptr [eax]

loc_4E0583:
cmp     [esp+78h+var_2C], 0
jz      loc_4E0AE7
mov     eax, [esp+78h+var_78]
inc     dword ptr [eax]
jmp     loc_4E0AE7

loc_4E0598:
mov     ebx, [esp+78h+var_70]
sar     ebx, 10h
mov     ecx, [esp+78h+var_62+2]
sar     ecx, 10h
sub     ebx, ecx
add     ebx, edx
cmp     ebx, eax
ja      short loc_4E0576
mov     ebx, [esp+78h+var_70+2]
sar     ebx, 10h
mov     ecx, [esp+78h+var_5E]
sar     ecx, 10h
sub     ebx, ecx
add     edx, ebx
cmp     edx, eax
ja      short loc_4E0576
mov     edx, 9
mov     [esp+78h+var_24], edx
mov     [esp+78h+var_28], edx
cmp     [esp+78h+var_30], 0
jz      short loc_4E0635
mov     ebx, [esp+78h+var_74]
mov     ebx, [ebx]
inc     ebx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ax, word ptr ds:(dword_750DAA+2)[edx*4]
mov     word ptr [esp+78h+var_6A+2], ax
mov     ax, word ptr ds:dword_750DAE[edx*4]
mov     word ptr [esp+78h+var_66], ax
mov     ax, word ptr ds:(dword_750DAE+2)[edx*4]
mov     word ptr [esp+78h+var_66+2], ax
mov     ax, ds:word_750DB2[edx*4]
and     ah, 1
shl     eax, 2
mov     word ptr [esp+78h+var_62], ax
mov     cl, byte ptr [esp+78h+var_30]
mov     eax, 8
sar     eax, cl
mov     [esp+78h+var_28], eax
mov     eax, [esp+78h+var_74]
mov     [eax], ebx

loc_4E0635:
cmp     [esp+78h+var_2C], 0
jz      short loc_4E0697
mov     ebx, [esp+78h+var_78]
mov     ebx, [ebx]
inc     ebx
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     ax, word ptr ds:(dword_750DAA+2)[edx*4]
mov     word ptr [esp+78h+var_5A+2], ax
mov     ax, word ptr ds:dword_750DAE[edx*4]
mov     word ptr [esp+78h+var_56], ax
mov     ax, word ptr ds:(dword_750DAE+2)[edx*4]
mov     word ptr [esp+78h+var_56+2], ax
mov     ax, ds:word_750DB2[edx*4]
and     ah, 1
shl     eax, 2
mov     [esp+78h+var_52], ax
mov     cl, byte ptr [esp+78h+var_2C]
mov     eax, 8
sar     eax, cl
mov     [esp+78h+var_24], eax
mov     eax, [esp+78h+var_78]
mov     [eax], ebx

loc_4E0697:
xor     ecx, ecx

loc_4E0699:
xor     ebx, ebx

loc_4E069B:
mov     edx, [esp+78h+var_62]
sar     edx, 10h
mov     edi, 8
sub     edi, ebx
imul    edx, edi
mov     eax, [esp+78h+var_5A]
sar     eax, 10h
imul    eax, ebx
add     edx, eax
mov     esi, 8
sub     esi, ecx
mov     eax, [esp+78h+var_74+2]
sar     eax, 10h
imul    eax, esi
mov     ebp, [esp+78h+var_6A]
sar     ebp, 10h
imul    ebp, ecx
add     eax, ebp
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+78h+var_18], eax
mov     edx, [esp+78h+var_70]
sar     edx, 10h
imul    edx, esi
mov     eax, [esp+78h+var_6A+2]
sar     eax, 10h
imul    eax, ecx
add     edx, eax
mov     eax, [esp+78h+var_62+2]
sar     eax, 10h
imul    eax, edi
mov     [esp+78h+var_50], eax
mov     eax, [esp+78h+var_5A+2]
sar     eax, 10h
imul    eax, ebx
add     eax, [esp+78h+var_50]
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+78h+var_1C], eax
mov     edx, [esp+78h+var_70+2]
sar     edx, 10h
imul    edx, esi
mov     eax, [esp+78h+var_66]
sar     eax, 10h
imul    eax, ecx
add     edx, eax
mov     eax, [esp+78h+var_5E]
sar     eax, 10h
imul    eax, edi
mov     [esp+78h+var_50], eax
mov     eax, [esp+78h+var_56]
sar     eax, 10h
imul    eax, ebx
add     eax, [esp+78h+var_50]
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+78h+var_20], eax
mov     eax, [esp+0Ch]
sar     eax, 10h
imul    eax, esi
mov     edx, [esp+78h+var_66+2]
sar     edx, 10h
imul    edx, ecx
add     eax, edx
mov     edx, [esp+78h+var_5E+2]
sar     edx, 10h
imul    edi, edx
add     eax, edi
mov     edx, [esp+78h+var_56+2]
sar     edx, 10h
imul    edx, ebx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     edx, [esp+78h+var_18]
imul    edx, edx
mov     esi, [esp+78h+var_1C]
imul    esi, esi
add     esi, edx
mov     edx, [esp+78h+var_20]
imul    edx, edx
add     edx, esi
imul    eax, eax
cmp     edx, eax
jg      loc_4E0ACD
mov     edx, [esp+78h+var_74]
mov     edx, [edx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edi, ds:dword_750DB4[eax*4]
mov     esi, edi
and     esi, offset unk_7FFFFF
mov     edx, [esp+78h+var_78]
mov     edx, [edx]
mov     edx, ds:dword_7510AC[edx*4]
mov     eax, [esi]
mov     ecx, edx
and     ecx, 0FF000000h
or      eax, ecx
mov     ecx, [esp+78h+var_78]
mov     ecx, [ecx]
mov     [esp+78h+var_4C], ecx
shl     ecx, 2
sub     ecx, [esp+78h+var_4C]
mov     cx, ds:word_750DB2[ecx*4]
and     ecx, 0FFFFh
sar     ecx, 0Dh
mov     [esp+78h+var_4C], ecx
mov     ecx, [esp+78h+var_74]
mov     ecx, [ecx]
mov     ecx, ds:dword_7510AC[ecx*4]
and     ecx, 0FF0000h
mov     [esp+78h+var_50], ecx
mov     ecx, [esp+78h+var_4C]
add     ecx, 8
mov     ebp, [esp+78h+var_50]
shl     ebp, cl
cmp     ebp, 80000000h
jnb     short loc_4E085E
and     edx, 0FFFFh
add     eax, edx

loc_4E085E:
mov     [esi], eax
test    edi, offset unk_800000
jz      loc_4E0951
mov     eax, [esp+78h+var_62]
sar     eax, 10h
mov     edx, [esp+78h+var_5A]
sar     edx, 10h
mov     [esp+78h+var_3C], edx
mov     edx, eax
mov     ecx, [esp+78h+var_3C]
sub     edx, ecx
mov     [esp+78h+var_18], edx
mov     ebp, [esp+78h+var_62+2]
sar     ebp, 10h
mov     edx, [esp+78h+var_5A+2]
sar     edx, 10h
mov     [esp+78h+var_34], edx
mov     edx, ebp
mov     edi, [esp+78h+var_34]
sub     edx, edi
mov     [esp+78h+var_1C], edx
mov     edi, [esp+78h+var_5E]
sar     edi, 10h
mov     edx, [esp+78h+var_56]
sar     edx, 10h
mov     [esp+78h+var_40], edx
mov     edx, edi
mov     ecx, [esp+78h+var_40]
sub     edx, ecx
mov     [esp+78h+var_20], edx
cmp     [esp+78h+var_2C], 0
jnz     short loc_4E0933
mov     ecx, 8
sub     ecx, ebx
imul    eax, ecx
mov     edx, [esp+78h+var_3C]
imul    edx, ebx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+8], ax
imul    ebp, ecx
mov     edx, [esp+78h+var_34]
imul    edx, ebx
add     edx, ebp
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ah], ax
imul    ecx, edi
mov     edx, [esp+78h+var_40]
imul    edx, ebx
add     edx, ecx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 1
jmp     short loc_4E0951

loc_4E0933:
mov     eax, [esp+78h+var_18]
mov     [esi+8], ax
mov     eax, [esp+78h+var_1C]
mov     [esi+0Ah], ax
mov     eax, [esp+78h+var_20]
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 0

loc_4E0951:
mov     edx, [esp+78h+var_78]
mov     edx, [edx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edi, ds:dword_750DB4[eax*4]
mov     esi, edi
and     esi, offset unk_7FFFFF
mov     edx, [esp+78h+var_74]
mov     edx, [edx]
mov     edx, ds:dword_7510AC[edx*4]
mov     eax, [esi]
mov     ecx, edx
and     ecx, 0FF000000h
or      eax, ecx
mov     ecx, [esp+78h+var_74]
mov     ecx, [ecx]
mov     [esp+78h+var_4C], ecx
shl     ecx, 2
sub     ecx, [esp+78h+var_4C]
mov     cx, ds:word_750DB2[ecx*4]
and     ecx, 0FFFFh
sar     ecx, 0Dh
mov     [esp+78h+var_50], ecx
mov     ecx, [esp+78h+var_78]
mov     ecx, [ecx]
mov     ecx, ds:dword_7510AC[ecx*4]
and     ecx, 0FF0000h
mov     [esp+78h+var_4C], ecx
mov     ecx, [esp+78h+var_50]
add     ecx, 8
mov     ebp, [esp+78h+var_4C]
shl     ebp, cl
cmp     ebp, 80000000h
jnb     short loc_4E09DE
and     edx, 0FFFFh
add     eax, edx

loc_4E09DE:
mov     [esi], eax
test    edi, offset unk_800000
jz      loc_4E0AE7
mov     eax, [esp+78h+var_6A]
sar     eax, 10h
mov     edx, [esp+78h+var_74+2]
sar     edx, 10h
mov     ecx, edx
sub     ecx, eax
mov     [esp+78h+var_18], ecx
mov     edi, [esp+78h+var_70]
sar     edi, 10h
mov     ecx, [esp+78h+var_6A+2]
sar     ecx, 10h
mov     [esp+78h+var_44], ecx
mov     ecx, edi
mov     ebp, [esp+78h+var_44]
sub     ecx, ebp
mov     [esp+78h+var_1C], ecx
mov     ecx, [esp+78h+var_70+2]
sar     ecx, 10h
mov     [esp+78h+var_38], ecx
mov     ecx, [esp+78h+var_66]
sar     ecx, 10h
mov     [esp+78h+var_48], ecx
mov     ecx, [esp+78h+var_38]
mov     ebp, [esp+78h+var_48]
sub     ecx, ebp
mov     [esp+78h+var_20], ecx
cmp     [esp+78h+var_30], 0
jnz     short loc_4E0AAD
mov     ecx, 8
sub     ecx, ebx
imul    edx, ecx
imul    eax, ebx
add     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+8], ax
imul    edi, ecx
mov     edx, [esp+78h+var_44]
imul    edx, ebx
add     edx, edi
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ah], ax
mov     edx, [esp+78h+var_38]
imul    edx, ecx
imul    ebx, ebp
add     edx, ebx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 1
jmp     short loc_4E0AE7

loc_4E0AAD:
mov     eax, [esp+78h+var_18]
mov     [esi+8], ax
mov     eax, [esp+78h+var_1C]
mov     [esi+0Ah], ax
mov     eax, [esp+78h+var_20]
mov     [esi+0Ch], ax
mov     word ptr [esi+0Eh], 0
jmp     short loc_4E0AE7

loc_4E0ACD:
add     ebx, [esp+78h+var_24]
cmp     ebx, 9
jl      loc_4E069B
add     ecx, [esp+78h+var_28]
cmp     ecx, 9
jl      loc_4E0699

loc_4E0AE7:
add     esp, 64h
sub_4E04D3 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4E22FB

loc_4E0AEA:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4E22FB



sub_4E0AF0 proc near

var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= word ptr -60h
var_5E= word ptr -5Eh
var_5C= word ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
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
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 50h
call    sub_4E0F28
mov     eax, ds:dword_77E94C
mov     [esp+68h+var_48], eax
cmp     ds:byte_5F84D4, 8
jnz     short loc_4E0B1E
mov     eax, dword ptr ds:unk_5F8999
sar     eax, 18h
mov     [esp+68h+var_44], eax
jmp     short loc_4E0B24

loc_4E0B1E:
xor     edx, edx
mov     [esp+68h+var_44], edx

loc_4E0B24:
xor     ecx, ecx
mov     [esp+68h+var_50], ecx
jmp     loc_4E0E55

loc_4E0B2F:
mov     al, ds:byte_5505E2

loc_4E0B34:
mov     [esp+68h+var_1C], al
imul    eax, [esp+68h+var_50], 6F4h
add     eax, offset byte_5F8364
add     eax, 14h
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+68h+var_58]
call    sub_4F04DB
xor     ebx, ebx
add     [esp+68h+var_58], 32h ; '2'

loc_4E0B62:
cmp     ebx, [esp+68h+var_48]
jnb     loc_4E0DCE
mov     eax, ebx
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 2
xor     ecx, ecx
mov     cx, ds:word_750DB2[esi]
sar     ecx, 0Dh
xor     eax, ebx
mov     al, [esp+68h+var_1C]
shl     eax, cl
test    al, 80h
jz      loc_4E0DC8
test    byte ptr ds:(word_750DB2+1)[esi], 6
jz      short loc_4E0BFB
inc     ebx
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     edx, ds:dword_750DAA[eax*4]
sar     edx, 10h
mov     ecx, ds:dword_750DAA[esi]
sar     ecx, 10h
add     ecx, edx
sar     ecx, 1
mov     [esp+68h+var_60], cx
mov     ecx, ds:(dword_750DAA+2)[eax*4]
sar     ecx, 10h
mov     edx, ds:(dword_750DAA+2)[esi]
sar     edx, 10h
add     edx, ecx
sar     edx, 1
mov     [esp+68h+var_5E], dx
mov     eax, ds:dword_750DAE[eax*4]
sar     eax, 10h
mov     edx, ds:dword_750DAE[esi]
sar     edx, 10h
add     eax, edx
sar     eax, 1
mov     [esp+68h+var_5C], ax
jmp     short loc_4E0C07

loc_4E0BFB:
lea     edi, [esp+68h+var_60]
lea     esi, (dword_750DAA+2)[esi]
movsd
movsd

loc_4E0C07:
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     eax, ds:dword_750DB4[eax*4]
and     eax, offset unk_7FFFFF
test    byte ptr [eax+4], 80h
jnz     loc_4E0DC8
lea     eax, [esp+68h+var_60]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+68h+var_54]
call    sub_4F04DB
mov     eax, esp
call    sub_4F0003
mov     eax, [esp+68h+var_54]
cmp     eax, [esp+68h+var_58]
jle     loc_4E0CF1
cmp     eax, 500h
jge     loc_4E0CF1
mov     eax, [esp+68h+var_68]
cmp     eax, 43020000h
jle     loc_4E0CF1
cmp     eax, 433E0000h
jge     loc_4E0CF1
fldz
fcomp   [esp+68h+var_64]
fnstsw  ax
sahf
jnb     loc_4E0CF1
cmp     [esp+68h+var_64], 43700000h
jge     short loc_4E0CF1
mov     eax, 0A0h
sub     eax, [esp+68h+var_30]
test    eax, eax
jge     short loc_4E0C9C
neg     eax

loc_4E0C9C:
mov     [esp+68h+var_20], eax
fild    [esp+68h+var_20]
fstp    [esp+68h+var_3C]
fld     ds:flt_50A484
fsub    [esp+68h+var_68]
fstp    [esp+68h+var_28]
fldz
fcomp   [esp+68h+var_28]
fnstsw  ax
sahf
jbe     short loc_4E0CCC
fld     [esp+68h+var_28]
fchs
fstp    [esp+68h+var_2C]
jmp     short loc_4E0CD4

loc_4E0CCC:
mov     eax, [esp+68h+var_28]
mov     [esp+68h+var_2C], eax

loc_4E0CD4:
fld     [esp+68h+var_3C]
fcomp   [esp+68h+var_2C]
fnstsw  ax
sahf
jbe     short loc_4E0CF1
mov     [esp+68h+var_40], ebx
fld     [esp+68h+var_68]
call    __CHP
fistp   [esp+68h+var_30]

loc_4E0CF1:
mov     eax, [esp+68h+var_54]
cmp     eax, [esp+68h+var_58]
jle     loc_4E0DC8
mov     eax, [esp+68h+var_44]
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 2
mov     eax, ds:(dword_5505E8+2)[esi]
sar     eax, 10h
cmp     eax, [esp+68h+var_54]
jle     loc_4E0DC8
fild    ds:word_5505EE[esi]
fcomp   [esp+68h+var_68]
fnstsw  ax
sahf
jnb     loc_4E0DC8
fild    ds:word_5505F0[esi]
fcomp   [esp+68h+var_68]
fnstsw  ax
sahf
jbe     loc_4E0DC8
fild    ds:word_5505F2[esi]
fcomp   [esp+68h+var_64]
fnstsw  ax
sahf
jnb     loc_4E0DC8
fild    ds:word_5505F4[esi]
fcomp   [esp+68h+var_64]
fnstsw  ax
sahf
jbe     short loc_4E0DC8
mov     eax, 0A0h
sub     eax, [esp+68h+var_34]
test    eax, eax
jge     short loc_4E0D75
neg     eax

loc_4E0D75:
mov     [esp+68h+var_20], eax
fild    [esp+68h+var_20]
fstp    [esp+68h+var_38]
fld     ds:flt_50A484
fsub    [esp+68h+var_68]
fstp    [esp+68h+var_24]
fldz
fcomp   [esp+68h+var_24]
fnstsw  ax
sahf
jbe     short loc_4E0DA5
fld     [esp+68h+var_24]
fchs
fstp    [esp+68h+var_4C]
jmp     short loc_4E0DAD

loc_4E0DA5:
mov     eax, [esp+68h+var_24]
mov     [esp+68h+var_4C], eax

loc_4E0DAD:
fld     [esp+68h+var_38]
fcomp   [esp+68h+var_4C]
fnstsw  ax
sahf
jbe     short loc_4E0DC8
mov     ebp, ebx
fld     [esp+68h+var_68]
call    __CHP
fistp   [esp+68h+var_34]

loc_4E0DC8:
inc     ebx
jmp     loc_4E0B62

loc_4E0DCE:
imul    eax, [esp+68h+var_50], 6F4h
mov     ebx, offset byte_5F8364
add     ebx, eax
cmp     [esp+68h+var_40], 0
jl      short loc_4E0DFA
test    ds:byte_5F84D8[eax], 20h
jz      short loc_4E0E15
push    0
mov     ecx, [esp+6Ch+var_40]
mov     edx, 1
jmp     short loc_4E0E0C

loc_4E0DFA:
test    ds:byte_5F84D8[eax], 20h
jz      short loc_4E0E15
push    0
mov     ecx, 0FFFFFFFFh
xor     edx, edx

loc_4E0E0C:
lea     eax, [esp+6Ch+var_60]
call    sub_4E106C

loc_4E0E15:
imul    eax, [esp+68h+var_50], 6F4h
mov     ebx, offset byte_5F8364
add     ebx, eax
test    ebp, ebp
jl      loc_4E0EA4
test    ds:byte_5F84D8[eax], 10h
jz      short loc_4E0E47
push    1
mov     ecx, ebp
mov     edx, 1

loc_4E0E3E:
lea     eax, [esp+6Ch+var_60]
call    sub_4E106C

loc_4E0E47:
mov     ebx, [esp+68h+var_50]
inc     ebx
mov     [esp+68h+var_50], ebx
cmp     ebx, 1
jnb     short loc_4E0EB8

loc_4E0E55:
mov     ebx, [esp+68h+var_50]
imul    eax, ebx, 6F4h
test    ds:byte_5F8364[eax], 1
jz      short loc_4E0E47
mov     esi, 7FFFFFFFh
mov     [esp+68h+var_34], esi
mov     [esp+68h+var_30], esi
mov     ebp, 0FFFFFFFFh
mov     [esp+68h+var_40], ebp
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
test    ebx, ebx
jz      loc_4E0B2F
mov     al, ds:byte_5505E3
jmp     loc_4E0B34

loc_4E0EA4:
test    ds:byte_5F84D8[eax], 10h
jz      short loc_4E0E47
push    1
mov     ecx, 0FFFFFFFFh
xor     edx, edx
jmp     short loc_4E0E3E

loc_4E0EB8:
add     esp, 50h
jmp     loc_4E04CC
sub_4E0AF0 endp




sub_4E0EC0 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
cmp     ds:dword_77E940, 0FFFFFF00h
jnb     short loc_4E0F0A
xor     edx, edx
mov     eax, 80000000h
mov     esi, ds:dword_77E940
jmp     short loc_4E0EEB

loc_4E0EE3:
shr     eax, 1
inc     edx
cmp     edx, 18h
jge     short loc_4E0F0A

loc_4E0EEB:
test    eax, esi
jnz     short loc_4E0EE3
mov     edi, esi
or      edi, eax
mov     ds:dword_77E940, edi
or      [ecx+4], eax
mov     eax, edx
mov     ds:dword_7511AC[edx*4], ebx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4E0F0A:
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E0EC0 endp




sub_4E0F14 proc near
push    ecx
mov     cl, al
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_77E940, eax
pop     ecx
retn
sub_4E0F14 endp




sub_4E0F28 proc near

var_C= byte ptr -0Ch

push    ebx
push    ecx
sub     esp, 0Ch
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     ebx, ds:dword_77E940
xor     bl, bl
test    ebx, ebx
jz      short loc_4E0FAB
xor     ecx, ecx
jmp     short loc_4E0F59

loc_4E0F51:
add     ebx, ebx
inc     ecx
cmp     ecx, 18h
jge     short loc_4E0FAB

loc_4E0F59:
cmp     ebx, 80000000h
jb      short loc_4E0F51
mov     eax, ds:dword_7511AC[ecx*4]
add     eax, 0CCh
call    sub_4EFCE3
call    sub_4EFDC9
mov     eax, ds:dword_7511AC[ecx*4]
mov     dword ptr [eax+0CCh], 0
mov     eax, ds:dword_7511AC[ecx*4]
mov     dword ptr [eax+0D0h], 0
lea     eax, [esp+14h+var_C]
call    sub_4F04DB
mov     eax, esp
call    sub_4F0003
jmp     short loc_4E0F51

loc_4E0FAB:
add     esp, 0Ch
pop     ecx
pop     ebx
retn
sub_4E0F28 endp




sub_4E0FB1 proc near

var_58= byte ptr -58h
var_34= byte ptr -34h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edi
push    ebp
sub     esp, 78h
mov     ebp, esi
neg     edx
and     dh, 0Fh
mov     [esp+88h+var_18], dx
imul    ecx, eax, 6F4h  ; int
mov     ax, word ptr ds:(dword_5F83B8+2)[ecx]
add     ax, ds:word_5F847A[ecx]
add     ah, 8
and     ah, 0Fh
mov     [esp+88h+var_16], ax
xor     ebx, ebx
mov     [esp+88h+var_14], bx
mov     edx, esp
lea     eax, [esp+88h+var_18]
call    sub_4EF638
lea     edx, [esp+88h+var_58]
mov     eax, esp
call    sub_4EF70C
mov     eax, ds:dword_5F8376[ecx]
sar     eax, 10h
mov     [esp+88h+var_28], eax
mov     edx, eax
neg     edx
mov     [esp+88h+var_28], edx
mov     eax, ds:(dword_5F8376+2)[ecx]
sar     eax, 10h
sub     eax, 96h
mov     [esp+88h+var_24], eax
mov     ebx, eax
neg     ebx
mov     [esp+88h+var_24], ebx
mov     eax, ds:dword_5F837A[ecx]
sar     eax, 10h
mov     [esp+88h+var_20], eax
mov     esi, eax
neg     esi
mov     [esp+88h+var_20], esi
lea     ebx, [esp+88h+var_34]
lea     edx, [esp+88h+var_28]
lea     eax, [esp+88h+var_58]
call    sub_4EF371
mov     ecx, 0Ch
mov     edi, ebp
lea     esi, [esp+88h+var_58]
rep movsd
mov     eax, ebp
add     esp, 78h
pop     ebp
pop     edi
pop     ecx
pop     ebx
retn
sub_4E0FB1 endp




sub_4E106C proc near

arg_0= dword ptr  4

push    esi
push    edi
mov     edx, ecx
call    sub_4DE0BF
mov     esi, eax
mov     ecx, eax
test    eax, eax
jz      loc_4E11DB
mov     byte ptr [eax+3], 0
test    edx, edx
jl      short loc_4E10AF
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, ds:dword_750DB4[eax*4]
and     edx, offset unk_7FFFFF
mov     eax, esi
call    sub_4E0EC0
mov     [esi+0Dh], al
test    al, al
jl      short loc_4E10AF
mov     byte ptr [esi+3], 80h

loc_4E10AF:
mov     byte ptr [ecx], 1
cmp     [esp+8+arg_0], 0
jz      short loc_4E1133
mov     eax, [ebx+16Dh]
sar     eax, 18h
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     dl, ds:byte_550F7F[esi*4]
mov     [ecx+2], dl
mov     dx, [ebx+4C8h]
mov     [ecx+14h], dx
mov     dx, [ebx+4CAh]
mov     [ecx+16h], dx
mov     dx, [ebx+4CCh]
mov     [ecx+18h], dx
mov     esi, eax
shl     esi, 3
add     esi, ebx
mov     dx, [esi+5FAh]
cmp     dx, 7FFFh
jz      loc_4E11A1
cmp     eax, 4
jz      loc_4E11A1
cmp     eax, 7
jz      loc_4E11A1
cmp     eax, 0Ch
jz      loc_4E11A1
cmp     eax, 0Dh
jz      loc_4E11A1
jmp     short loc_4E1197

loc_4E1133:
mov     eax, [ebx+16Eh]
sar     eax, 18h
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     dl, ds:byte_550F7F[esi*4]
mov     [ecx+2], dl
mov     dx, [ebx+4E0h]
mov     [ecx+14h], dx
mov     dx, [ebx+4E2h]
mov     [ecx+16h], dx
mov     dx, [ebx+4E4h]
mov     [ecx+18h], dx
mov     esi, eax
shl     esi, 3
add     esi, ebx
mov     dx, [esi+5FAh]
cmp     dx, 7FFFh
jz      short loc_4E11A1
cmp     eax, 4
jz      short loc_4E11A1
cmp     eax, 7
jz      short loc_4E11A1
cmp     eax, 0Ch
jz      short loc_4E11A1
cmp     eax, 0Dh
jz      short loc_4E11A1

loc_4E1197:
mov     edi, edx
dec     edi
mov     [esi+5FAh], di

loc_4E11A1:
mov     eax, [esp+8+arg_0]
mov     [ecx+1Ah], ax
mov     al, [ebx+1]
mov     [ecx+0Ch], al
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
mov     ax, [ebx+56h]
mov     [ecx+64h], ax

loc_4E11DB:
pop     edi
pop     esi
retn    4
sub_4E106C endp




sub_4E11E0 proc near

var_3E= dword ptr -3Eh
var_3A= dword ptr -3Ah
var_34= dword ptr -34h
var_30= word ptr -30h
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
sub     esp, 24h
mov     edx, eax
xor     ebx, ebx

loc_4E11ED:
mov     esi, ebx
shl     esi, 2
add     esi, ebx
shl     esi, 2
mov     eax, offset unk_55DC1C
add     eax, esi
call    sub_4E1F7F
inc     ebx
cmp     ebx, 4
jb      short loc_4E11ED
mov     eax, ds:dword_77E94C
mov     [esp+3Ch+var_28], eax
mov     ebp, 3D0900h
mov     [esp+3Ch+var_20], 0FFFFFFFFh
xor     eax, eax
mov     al, [edx+1]
mov     [esp+3Ch+var_24], eax
test    eax, eax
jz      short loc_4E1233
mov     al, ds:byte_5505E3
jmp     short loc_4E1238

loc_4E1233:
mov     al, ds:byte_5505E2

loc_4E1238:
mov     [esp+3Ch+var_1C], al
mov     edi, esp
lea     esi, [edx+14h]
movsd
movsd
xor     ebx, ebx

loc_4E1245:
cmp     ebx, [esp+3Ch+var_28]
jnb     loc_4E13DA
mov     eax, ebx
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 2
xor     ecx, ecx
mov     cx, ds:word_750DB2[esi]
sar     ecx, 0Dh
xor     eax, ebx
mov     al, [esp+3Ch+var_1C]
shl     eax, cl
test    al, 80h
jz      loc_4E13D4
mov     eax, ds:dword_750DB4[esi]
and     eax, offset unk_7FFFFF
mov     ecx, [eax+4]
test    cl, 80h
jnz     loc_4E13D4
mov     eax, ds:dword_750DB4[esi]
shr     eax, 18h
cmp     eax, 80h
jnb     loc_4E13D4
test    byte ptr ds:(word_750DB2+1)[esi], 6
jz      short loc_4E1313
lea     eax, [ebx+1]
mov     ebx, eax
shl     ebx, 2
sub     ebx, eax
mov     edx, ds:dword_750DAA[ebx*4]
sar     edx, 10h
mov     [esp+3Ch+var_2C], edx
mov     edx, ds:dword_750DAA[esi]
sar     edx, 10h
add     edx, [esp+3Ch+var_2C]
sar     edx, 1
mov     word ptr [esp+3Ch+var_34], dx
mov     edx, ds:(dword_750DAA+2)[ebx*4]
sar     edx, 10h
mov     edi, ds:(dword_750DAA+2)[esi]
sar     edi, 10h
add     edx, edi
sar     edx, 1
mov     word ptr [esp+3Ch+var_34+2], dx
mov     edx, ds:dword_750DAE[ebx*4]
sar     edx, 10h
mov     ebx, ds:dword_750DAE[esi]
sar     ebx, 10h
add     edx, ebx
sar     edx, 1
mov     [esp+3Ch+var_30], dx
mov     ebx, eax
jmp     short loc_4E131F

loc_4E1313:
lea     edi, [esp+3Ch+var_34]
lea     esi, (dword_750DAA+2)[esi]
movsd
movsd

loc_4E131F:
mov     eax, [esp+3Ch+var_3E]
sar     eax, 10h
mov     esi, [esp+6]
sar     esi, 10h
sub     eax, esi
mov     esi, eax
add     eax, 7D0h
cmp     eax, 0FA0h
ja      loc_4E13D4
mov     edx, [esp+3Ch+var_3E+2]
sar     edx, 10h
mov     eax, [esp+3Ch+var_34]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
add     edx, 7D0h
cmp     edx, 0FA0h
ja      loc_4E13D4
mov     edx, [esp+3Ch+var_3A]
sar     edx, 10h
mov     edi, [esp+3Ch+var_34+2]
sar     edi, 10h
sub     edx, edi
lea     edi, [edx+7D0h]
cmp     edi, 0FA0h
ja      short loc_4E13D4
imul    esi, esi
imul    eax, eax
add     esi, eax
imul    edx, edx
add     esi, edx
cmp     esi, 3D0900h
ja      short loc_4E13D4
mov     eax, [esp+3Ch+var_24]
inc     eax
test    ecx, eax
jnz     short loc_4E13CA
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
mov     edx, ds:dword_750DB4[esi*4]
and     edx, offset unk_7FFFFF
mov     eax, ds:dword_750DB4[esi*4]
shr     eax, 18h
and     eax, 0FFh
call    sub_4E1EFB
jmp     short loc_4E13D4

loc_4E13CA:
cmp     esi, ebp
jnb     short loc_4E13D4
mov     [esp+3Ch+var_20], ebx
mov     ebp, esi

loc_4E13D4:
inc     ebx
jmp     loc_4E1245

loc_4E13DA:
mov     edi, ds:dword_55DCCC
test    edi, edi
jbe     short loc_4E13ED
lea     ebp, [edi-1]
mov     ds:dword_55DCCC, ebp

loc_4E13ED:
mov     eax, [esp+3Ch+var_20]
test    eax, eax
jl      short loc_4E1441
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_750DB4[eax*4]
shr     eax, 18h
cmp     eax, 80h
jnb     short loc_4E1441
cmp     ds:dword_55DCCC, 0
jnz     short loc_4E1439
cmp     eax, ds:dword_55DCD0
jz      short loc_4E142D
mov     ds:dword_55DCCC, 18h
mov     ds:dword_55DCD0, eax

loc_4E142D:
and     eax, 0FFh
call    sub_4E1877
jmp     short loc_4E1443

loc_4E1439:
cmp     eax, ds:dword_55DCD0
jz      short loc_4E142D

loc_4E1441:
xor     eax, eax

loc_4E1443:
add     esp, 24h
jmp     loc_4E04CC
sub_4E11E0 endp




sub_4E144B proc near

var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_44= byte ptr -44h
var_42= dword ptr -42h
var_3C= byte ptr -3Ch
var_3A= dword ptr -3Ah
var_34= byte ptr -34h
var_32= dword ptr -32h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= word ptr -1Ch
var_18= word ptr -18h
var_14= word ptr -14h
var_10= word ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 48h
mov     esi, eax
mov     [esp+54h+var_20], ebx
mov     [esp+54h+var_28], ecx
xor     ecx, ecx
mov     [esp+54h+var_2C], ecx
xor     ebx, ebx
mov     ebp, 0FFFFFFFFh
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     eax, [eax+114h]
sar     eax, 10h
add     eax, ecx
call    sub_4EF008
mov     [esp+54h+var_1C], ax
mov     ecx, eax
neg     ecx
mov     [esp+54h+var_1C], cx
mov     ecx, [esi+54h]
sar     ecx, 10h
mov     eax, [esi+114h]
sar     eax, 10h
add     eax, ecx
call    sub_4EF003
mov     [esp+54h+var_18], ax
mov     edi, eax
neg     edi
mov     [esp+54h+var_18], di
mov     ecx, [esi+54h]
sar     ecx, 10h
mov     eax, [esi+114h]
sar     eax, 10h
add     eax, ecx
add     eax, edx
call    sub_4EF008
mov     [esp+54h+var_14], ax
neg     eax
mov     [esp+54h+var_14], ax
mov     ecx, [esi+54h]
sar     ecx, 10h
mov     eax, [esi+114h]
sar     eax, 10h
add     eax, ecx
add     eax, edx
call    sub_4EF003
mov     [esp+54h+var_10], ax
mov     edx, eax
neg     edx
mov     [esp+54h+var_10], dx
lea     edi, [esp+54h+var_44]
lea     esi, [esi+14h]
movsd
movsd
xor     ecx, ecx
jmp     short loc_4E1511

loc_4E1507:
inc     ecx
cmp     ecx, 10h
jnb     loc_4E15DA

loc_4E1511:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 5
add     eax, offset byte_6DD9CC
test    byte ptr [eax], 3
jz      short loc_4E1507
mov     edx, [eax+80h]
cmp     edx, [esp+54h+var_20]
ja      short loc_4E1507
lea     edi, [esp+54h+var_34]
lea     esi, [eax+14h]
movsd
movsd
mov     eax, [esp+1Eh]
sar     eax, 10h
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     eax, edx
mov     [esp+54h+var_54], eax
xor     edi, edi
mov     [esp+54h+var_50], edi
mov     edx, [esp+54h+var_32]
sar     edx, 10h
mov     eax, [esp+54h+var_42]
sar     eax, 10h
sub     edx, eax
mov     [esp+54h+var_4C], edx
lea     edx, [esp+54h+var_3C]
mov     eax, esp
call    sub_4EF932
mov     eax, [esp+42h]
sar     eax, 10h
mov     edx, [esp+54h+var_3A]
sar     edx, 10h
imul    eax, edx
mov     [esp+54h+var_24], eax
mov     esi, [esp+3Eh]
sar     esi, 10h
mov     eax, [esp+16h]
sar     eax, 10h
imul    esi, eax
add     esi, [esp+54h+var_24]
test    esi, esi
jl      loc_4E1507
mov     esi, [esp+3Ah]
sar     esi, 10h
imul    esi, edx
mov     edx, [esp+54h+var_20+2]
sar     edx, 10h
imul    eax, edx
add     eax, esi
cmp     eax, [esp+54h+var_28]
jl      loc_4E1507
cmp     eax, ebx
jle     loc_4E1507
mov     ebx, eax
mov     ebp, ecx
jmp     loc_4E1507

loc_4E15DA:
test    ebp, ebp
jl      short loc_4E15F8
mov     eax, ebp
shl     eax, 3
add     eax, ebp
shl     eax, 2
add     eax, ebp
shl     eax, 5
mov     edx, offset byte_6DD9CC
add     edx, eax
mov     [esp+54h+var_2C], edx

loc_4E15F8:
mov     ebp, 0FFFFFFFFh
xor     ecx, ecx
jmp     short loc_4E160B

loc_4E1601:
inc     ecx
cmp     ecx, 4
jnb     loc_4E16CC

loc_4E160B:
imul    esi, ecx, 734h
add     esi, offset unk_6E23DC
test    byte ptr [esi], 3
jz      short loc_4E1601
mov     eax, [esi+80h]
cmp     eax, [esp+54h+var_20]
ja      short loc_4E1601
lea     edi, [esp+54h+var_34]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, [esp+1Eh]
sar     eax, 10h
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     eax, edx
mov     [esp+54h+var_54], eax
xor     eax, eax
mov     [esp+54h+var_50], eax
mov     eax, [esp+54h+var_32]
sar     eax, 10h
mov     edx, [esp+54h+var_42]
sar     edx, 10h
sub     eax, edx
mov     [esp+54h+var_4C], eax
lea     edx, [esp+54h+var_3C]
mov     eax, esp
call    sub_4EF932
mov     eax, [esp+42h]
sar     eax, 10h
mov     edx, [esp+54h+var_3A]
sar     edx, 10h
imul    eax, edx
mov     [esp+54h+var_24], eax
mov     esi, [esp+3Eh]
sar     esi, 10h
mov     eax, [esp+16h]
sar     eax, 10h
imul    esi, eax
add     esi, [esp+54h+var_24]
test    esi, esi
jl      loc_4E1601
mov     esi, [esp+3Ah]
sar     esi, 10h
imul    edx, esi
mov     esi, [esp+54h+var_20+2]
sar     esi, 10h
imul    eax, esi
add     eax, edx
cmp     eax, [esp+54h+var_28]
jl      loc_4E1601
cmp     eax, ebx
jle     loc_4E1601
mov     ebx, eax
mov     ebp, ecx
jmp     loc_4E1601

loc_4E16CC:
test    ebp, ebp
jl      short loc_4E16E1
imul    ebp, 734h
mov     eax, offset unk_6E23DC
add     eax, ebp
mov     [esp+54h+var_2C], eax

loc_4E16E1:
mov     eax, [esp+54h+var_2C]
add     esp, 48h
pop     ebp
pop     edi
pop     esi
retn
sub_4E144B endp




sub_4E16EC proc near

var_1E= dword ptr -1Eh
var_1A= dword ptr -1Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
xor     ebx, ebx

loc_4E16F6:
imul    esi, ebx, 6F4h
mov     edi, esp
lea     esi, (dword_5F8376+2)[esi]
movsd
movsd
xor     eax, eax

loc_4E1708:
mov     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 2
add     edx, eax
shl     edx, 5
mov     ecx, offset byte_6DD9CC
add     ecx, edx
mov     dl, [ecx]
or      dl, 1
inc     eax
test    dl, dl
jz      short loc_4E1778
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1E]
sar     edx, 10h
sub     esi, edx
sar     esi, 1
mov     edi, [ecx+16h]
sar     edi, 10h
mov     edx, [esp+1Ch+var_1A]
sar     edx, 10h
sub     edi, edx
mov     edx, edi
sar     edx, 1
imul    esi, esi
imul    edx, edx
add     edx, esi
mov     esi, ebx
shl     esi, 2
add     ecx, esi
cmp     edx, 10000000h
jbe     short loc_4E176F
mov     dword ptr [ecx+80h], 0FFFFFFFFh
jmp     short loc_4E1778

loc_4E176F:
shl     edx, 2
mov     [ecx+80h], edx

loc_4E1778:
cmp     eax, 10h
jl      short loc_4E1708
xor     eax, eax

loc_4E177F:
imul    ecx, eax, 734h
add     ecx, offset unk_6E23DC
mov     dl, [ecx]
or      dl, 1
inc     eax
test    dl, dl
jz      short loc_4E17E5
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [esp+1Ch+var_1E]
sar     edx, 10h
sub     esi, edx
sar     esi, 1
mov     edi, [ecx+16h]
sar     edi, 10h
mov     edx, [esp+1Ch+var_1A]
sar     edx, 10h
sub     edi, edx
mov     edx, edi
sar     edx, 1
imul    esi, esi
imul    edx, edx
add     edx, esi
mov     esi, ebx
shl     esi, 2
add     ecx, esi
cmp     edx, 10000000h
jbe     short loc_4E17DC
mov     dword ptr [ecx+80h], 0FFFFFFFFh
jmp     short loc_4E17E5

loc_4E17DC:
shl     edx, 2
mov     [ecx+80h], edx

loc_4E17E5:
cmp     eax, 4
jl      short loc_4E177F
xor     eax, eax

loc_4E17EC:
mov     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 3
sub     edx, eax
shl     edx, 2
mov     ecx, offset byte_57098C
add     ecx, edx
mov     dl, [ecx]
or      dl, 1
inc     eax
test    dl, dl
jz      short loc_4E1860
mov     edx, [ecx+12h]
sar     edx, 10h
mov     esi, [esp+1Ch+var_1E]
sar     esi, 10h
sub     edx, esi
sar     edx, 1
mov     edi, [ecx+16h]
sar     edi, 10h
mov     esi, [esp+1Ch+var_1A]
sar     esi, 10h
sub     edi, esi
mov     esi, edi
sar     esi, 1
mov     edi, edx
imul    edi, edx
mov     edx, esi
imul    edx, esi
add     edx, edi
mov     esi, ebx
shl     esi, 2
add     ecx, esi
cmp     edx, 10000000h
jbe     short loc_4E1857
mov     dword ptr [ecx+80h], 0FFFFFFFFh
jmp     short loc_4E1860

loc_4E1857:
shl     edx, 2
mov     [ecx+80h], edx

loc_4E1860:
cmp     eax, 20h ; ' '
jl      short loc_4E17EC
inc     ebx
cmp     ebx, 2
jl      loc_4E16F6
add     esp, 8
jmp     loc_4E04CD
sub_4E16EC endp




sub_4E1877 proc near
push    edx
mov     dl, al
xor     eax, eax
mov     al, dl
call    sub_4DD420
mov     dh, dl
and     dh, 1Fh
cmp     eax, 40h ; '@'
jb      short loc_4E18CD
jbe     loc_4E1931
cmp     eax, 80h
jb      short loc_4E18C0
jbe     loc_4E1960
cmp     eax, 0C0h
jb      loc_4E19B0
jbe     loc_4E197E
cmp     eax, 0E0h
jz      loc_4E1997
xor     eax, eax
pop     edx
retn

loc_4E18C0:
cmp     eax, 60h ; '`'
jz      loc_4E1942
xor     eax, eax
pop     edx
retn

loc_4E18CD:
and     dl, 0Fh
cmp     eax, 10h
jb      short loc_4E18E0
jbe     short loc_4E18F7
cmp     eax, 20h ; ' '
jz      short loc_4E1913
xor     eax, eax
pop     edx
retn

loc_4E18E0:
test    eax, eax
jnz     loc_4E19B0
mov     al, dl
imul    eax, 6F4h
add     eax, offset byte_5F8364
pop     edx
retn

loc_4E18F7:
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_6DC7FC
pop     edx
retn

loc_4E1913:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
add     eax, offset byte_6DD9CC
pop     edx
retn

loc_4E1931:
xor     eax, eax
mov     al, dh
imul    eax, 734h
add     eax, offset unk_6E23DC
pop     edx
retn

loc_4E1942:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_57098C
pop     edx
retn

loc_4E1960:
mov     al, dl
and     al, 3Fh
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
pop     edx
retn

loc_4E197E:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, offset unk_56FA74
pop     edx
retn

loc_4E1997:
mov     dl, dh
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 5
add     eax, offset unk_56FCB4
pop     edx
retn

loc_4E19B0:
xor     eax, eax
pop     edx
retn
sub_4E1877 endp




sub_4E19B4 proc near
mov     byte ptr [eax+7], 0
retn
sub_4E19B4 endp




sub_4E19B9 proc near
mov     [eax+6], dl
movsx   edx, bx
sar     edx, 4
mov     [eax+0Fh], dl
mov     byte ptr [eax+7], 0
retn
sub_4E19B9 endp




sub_4E19CA proc near
push    ebx
mov     ebx, [edx+54h]
sar     ebx, 10h
call    sub_4E19D8
pop     ebx
retn
sub_4E19CA endp




sub_4E19D8 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     ebp, eax
mov     esi, edx
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_55065A[eax*4]
and     eax, 0FFh
shl     eax, 14h
cmp     eax, [edx+80h]
ja      short loc_4E1A08

loc_4E19FF:
mov     byte ptr [ebp+7], 0
jmp     loc_4E1AB3

loc_4E1A08:
mov     al, [ebp+7]
cmp     al, 1
jb      short loc_4E1A1D
jbe     loc_4E1ABD
cmp     al, 2
jz      loc_4E1D20

loc_4E1A1D:
xor     ecx, ecx
mov     word ptr [esp+38h+var_24], cx
mov     word ptr [esp+38h+var_28+2], cx
mov     word ptr [esp+38h+var_28], cx
movsx   eax, bx
push    eax
lea     ecx, [esp+3Ch+var_38]
lea     ebx, [esp+3Ch+var_28]
mov     edx, offset byte_5F8364
mov     eax, esi
call    sub_4DD830
test    al, 10h
jnz     loc_4E1AB3
mov     byte ptr [ebp+7], 1
mov     ax, [esi+14h]
mov     [ebp+0], ax
movsx   dx, byte ptr [ebp+0Fh]
shl     edx, 4
mov     ax, [esi+16h]
add     eax, edx
mov     [ebp+2], ax
mov     ax, [esi+18h]
mov     [ebp+4], ax
mov     ax, word ptr ds:dword_5F8376+2
mov     dx, [ebp+0]
sub     eax, edx
mov     [ebp+8], ax
mov     ax, word ptr ds:dword_5F837A
mov     bx, [ebp+2]
sub     eax, ebx
mov     [ebp+0Ah], ax
mov     ax, word ptr ds:dword_5F837A+2
mov     cx, [ebp+4]
sub     eax, ecx
mov     [ebp+0Ch], ax
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_550658[eax*4]
mov     [ebp+0Eh], al

loc_4E1AB3:
xor     eax, eax

loc_4E1AB5:
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4E1ABD:
lea     edi, [esp+38h+var_20]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
movsx   eax, word ptr [ebp+0]
mov     edx, [esp+16h]
sar     edx, 10h
sub     edx, eax
mov     [esp+38h+var_38], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E19FF
mov     eax, [ebp+0]
sar     eax, 10h
mov     edx, [esp+38h+var_20]
sar     edx, 10h
sub     edx, eax
mov     [esp+38h+var_34], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E19FF
mov     eax, [ebp+2]
sar     eax, 10h
mov     edx, [esp+38h+var_20+2]
sar     edx, 10h
sub     edx, eax
mov     [esp+38h+var_30], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E19FF
lea     edx, [esp+38h+var_18]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+8]
mov     ecx, 0FF069DAh
mov     ebx, 165h
lea     eax, [esp+38h+var_18]
lea     esi, [esp+38h+var_28]
call    sub_4DFFB5
mov     eax, [esp+38h+var_28]
mov     [ebp+8], ax
mov     eax, [esp+38h+var_28+2]
mov     [ebp+0Ah], ax
mov     eax, [esp+38h+var_24]
mov     [ebp+0Ch], ax
mov     ax, [ebp+0]
mov     word ptr [esp+38h+var_18], ax
mov     ax, [ebp+2]
mov     word ptr [esp+38h+var_18+2], ax
mov     ax, [ebp+4]
mov     word ptr [esp+38h+var_14], ax
mov     esi, [esp+0Eh]
sar     esi, 10h
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sar     eax, 0Ch
mov     word ptr [esp+38h+var_28], ax
mov     esi, [esp+38h+var_28]
sar     esi, 10h
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sar     eax, 0Ch
mov     word ptr [esp+38h+var_28+2], ax
mov     esi, [esp+38h+var_28+2]
sar     esi, 10h
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
shl     eax, 2
sar     eax, 0Ch
mov     word ptr [esp+38h+var_24], ax
mov     eax, [esp+38h+var_18]
mov     edx, [esp+38h+var_28]
add     eax, edx
mov     [ebp+0], ax
mov     eax, [esp+38h+var_18+2]
mov     ebx, [esp+38h+var_28+2]
add     eax, ebx
mov     [ebp+2], ax
mov     eax, [esp+38h+var_14]
mov     ecx, [esp+38h+var_24]
add     eax, ecx
mov     [ebp+4], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55064C
mov     edx, ebp
mov     eax, ebp
call    sub_42CE61
test    eax, eax
jnz     loc_4E19FF
mov     edx, [esp+0Eh]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+1Eh]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+38h+var_18], ax
mov     edx, [esp+38h+var_28]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+38h+var_18]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+38h+var_18+2], ax
mov     edx, [esp+38h+var_28+2]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+38h+var_18+2]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+38h+var_14], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55064C
lea     edx, [esp+38h+var_18]
lea     eax, [esp+38h+var_18]
call    sub_42CE61
test    eax, eax
jnz     loc_4E19FF
mov     dh, [ebp+0Eh]
dec     dh
mov     [ebp+0Eh], dh
jz      loc_4E19FF
mov     ax, [ebp+0]
sub     eax, [esp+38h+var_20]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E1AB3
mov     ax, [ebp+2]
sub     eax, [esp+38h+var_20+2]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E1AB3
mov     ax, [ebp+4]
sub     eax, [esp+38h+var_1C]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E1AB3
cmp     ds:byte_77EABE, 2
jnz     short loc_4E1CF6
xor     ebx, ebx
xor     edx, edx
mov     eax, 9Ch
call    sub_4D89E4

loc_4E1CF6:
mov     byte ptr [ebp+7], 2
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_550659[eax*4]
mov     [ebp+0Eh], al
call    sub_4377C1
test    eax, eax
jg      loc_4E1AB3

loc_4E1D16:
mov     eax, 1
jmp     loc_4E1AB5

loc_4E1D20:
call    sub_4377C1
test    eax, eax
jle     short loc_4E1D32
mov     byte ptr [ebp+0Eh], 0
jmp     loc_4E19FF

loc_4E1D32:
call    sub_436700
mov     edx, 9
mov     word ptr [esp+38h+var_24], dx
mov     word ptr [esp+38h+var_28+2], dx
mov     word ptr [esp+38h+var_28], dx
movsx   eax, bx
push    eax
lea     ecx, [esp+3Ch+var_38]
lea     ebx, [esp+3Ch+var_28]
mov     edx, offset byte_5F8364
mov     eax, esi
call    sub_4DD830
test    al, 10h
jz      short loc_4E1D79
mov     ah, [ebp+0Eh]
dec     ah
mov     [ebp+0Eh], ah
jnz     short loc_4E1D16
mov     [ebp+7], ah
jmp     loc_4E1AB3

loc_4E1D79:
xor     eax, eax
mov     al, [ebp+6]
mov     al, ds:byte_550659[eax*4]
mov     [ebp+0Eh], al
jmp     short loc_4E1D16
sub_4E19D8 endp




sub_4E1D8A proc near
push    edx
xor     ah, ah
mov     ds:byte_77EABF, ah
mov     edx, 0E00h
mov     ds:word_77EAB2, dx
mov     word ptr ds:dword_77EAA8, dx
xor     eax, eax
mov     ax, ds:word_77E71C
mov     edx, 180h
call    sub_4EF12B
pop     edx
retn
sub_4E1D8A endp




sub_4E1DBA proc near
push    ecx
push    edx
mov     ds:byte_77EABF, 1
mov     edx, 680h
mov     ds:word_77EAB2, dx
mov     word ptr ds:dword_77EAA8, dx
xor     eax, eax
mov     ax, ds:word_77E71C
lea     ecx, [eax+eax]
cmp     ecx, 3333h
jb      short loc_4E1DF0
mov     edx, 180h
jmp     short loc_4E1DF7

loc_4E1DF0:
mov     edx, 180h
mov     eax, ecx

loc_4E1DF7:
call    sub_4EF12B
pop     edx
pop     ecx
retn
sub_4E1DBA endp




sub_4E1DFF proc near
push    ecx
push    edx
mov     ds:byte_77EABF, 2
mov     edx, 300h
mov     ds:word_77EAB2, dx
mov     word ptr ds:dword_77EAA8, dx
xor     eax, eax
mov     ax, ds:word_77E71C
mov     ecx, eax
shl     ecx, 2
cmp     ecx, 3333h
jb      short loc_4E1E37
mov     edx, 180h
jmp     short loc_4E1E3E

loc_4E1E37:
mov     edx, 180h
mov     eax, ecx

loc_4E1E3E:
call    sub_4EF12B
pop     edx
pop     ecx
retn
sub_4E1DFF endp




sub_4E1E46 proc near
mov     word ptr ds:dword_77EAA8, ax
retn
sub_4E1E46 endp




sub_4E1E4D proc near

var_C= byte ptr -0Ch
var_8= byte ptr -8
var_4= byte ptr -4

push    eax
push    edx
push    ebx
call    sub_4EF154
mov     edx, 180h
mov     eax, ecx
call    sub_4EF12B
mov     al, [esp+0Ch+var_4]
mov     ds:byte_55DCC4, al
mov     al, [esp+0Ch+var_8]
mov     ds:byte_55DCC5, al
mov     al, [esp+0Ch+var_C]
mov     ds:byte_55DCC6, al
mov     ds:word_55DCC8, cx
add     esp, 0Ch
retn
sub_4E1E4D endp




sub_4E1E86 proc near
push    edx
xor     edx, edx
mov     dl, ds:byte_55DCC4
mov     [eax], dx
xor     edx, edx
mov     dl, ds:byte_55DCC5
mov     [eax+2], dx
xor     edx, edx
mov     dl, ds:byte_55DCC6
mov     [eax+4], dx
mov     dx, ds:word_55DCC8
mov     [eax+6], dx
pop     edx
retn
sub_4E1E86 endp




sub_4E1EB7 proc near
push    ebx
push    edx
push    esi
push    edi
xor     ebx, ebx
mov     bl, ds:byte_77E71A
xor     edx, edx
mov     dl, ds:byte_77E719
xor     eax, eax
mov     al, ds:byte_77E718
call    sub_4EF154
xor     eax, eax
mov     ax, ds:word_77E71C
mov     edx, 180h
call    sub_4EF12B
mov     edi, offset unk_55DCC0
mov     esi, offset unk_77E714
movsd
movsd
movsd
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4E1EB7 endp




sub_4E1EFB proc near
push    ebx
push    ecx
push    esi
mov     bl, al
mov     esi, edx
cmp     al, ds:byte_55DC22
jz      loc_4E1F7B
cmp     al, ds:byte_55DC36
jz      loc_4E1F7B
cmp     al, ds:byte_55DC4A
jz      short loc_4E1F7B
cmp     al, ds:byte_55DC5E
jz      short loc_4E1F7B
cmp     ds:dword_55DCBC, 4
jnb     short loc_4E1F7B
xor     edx, edx
jmp     short loc_4E1F3D

loc_4E1F37:
inc     edx
cmp     edx, 4
jnb     short loc_4E1F7B

loc_4E1F3D:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     cl, ds:byte_55DC22[eax]
test    cl, cl
jnz     short loc_4E1F37
mov     ds:byte_55DC22[eax], bl
mov     ds:dword_55DC2C[eax], esi
cmp     ds:byte_55DC2B[eax], 0
jz      short loc_4E1F6E
mov     ds:byte_55DC2B[eax], cl
jmp     short loc_4E1F75

loc_4E1F6E:
mov     ds:byte_55DC2B[eax], 1

loc_4E1F75:
inc     ds:dword_55DCBC

loc_4E1F7B:
pop     esi
pop     ecx
pop     ebx
retn
sub_4E1EFB endp




sub_4E1F7F proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
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
mov     ebp, eax
cmp     byte ptr [eax+6], 0
jz      loc_4E20B2
xor     eax, eax
mov     al, [ebp+6]
call    sub_4E1877
mov     esi, eax
mov     dl, [eax]
test    dl, dl
jnz     short loc_4E1FAB
mov     [ebp+6], dl
jmp     short loc_4E1FC4

loc_4E1FAB:
mov     edi, offset byte_5F8364
cmp     dword ptr [eax+80h], 2F00000h
jb      short loc_4E1FD1

loc_4E1FBC:
mov     byte ptr [ebp+7], 0
mov     byte ptr [ebp+6], 0

loc_4E1FC4:
xor     eax, eax
dec     ds:dword_55DCBC
jmp     loc_4E20B4

loc_4E1FD1:
mov     dl, [ebp+7]
test    dl, dl
jbe     short loc_4E1FE1
cmp     dl, 1
jz      loc_4E20BC

loc_4E1FE1:
mov     ebx, 9
mov     word ptr [esp+40h+var_24], bx
mov     word ptr [esp+40h+var_28+2], bx
mov     word ptr [esp+40h+var_28], bx
mov     ax, word ptr ds:dword_77E9E8
mov     word ptr [esp+40h+var_20], ax
mov     ax, word ptr ds:dword_77E9EC
mov     word ptr [esp+40h+var_20+2], ax
mov     ax, word ptr ds:dword_77E9F0
mov     word ptr [esp+40h+var_1C], ax
mov     ecx, [edi+54h]
sar     ecx, 10h
lea     edx, [esi+14h]
lea     ebx, [esp+40h+var_28]
lea     eax, [esp+40h+var_20]
call    sub_4DD954
test    al, 2
jz      loc_4E20B2
test    byte ptr [esi+6], 80h
jnz     short loc_4E2044
cmp     byte ptr [esi+1], 60h ; '`'
jb      loc_4E20B2

loc_4E2044:
mov     byte ptr [ebp+7], 1
mov     ax, [edi+14h]
mov     [ebp+0], ax
mov     ax, [edi+16h]
sub     eax, 64h ; 'd'
mov     [ebp+2], ax
mov     ax, [edi+18h]
mov     [ebp+4], ax
cmp     byte ptr [ebp+0Fh], 0
jz      short loc_4E209C
mov     ax, [esi+14h]
mov     dx, [ebp+0]
sub     eax, edx
mov     [ebp+8], ax
mov     ax, [esi+16h]
mov     bx, [ebp+2]
sub     eax, ebx
mov     [ebp+0Ah], ax
mov     ax, [esi+18h]
mov     cx, [ebp+4]
sub     eax, ecx
mov     [ebp+0Ch], ax
mov     byte ptr [ebp+0Eh], 32h ; '2'
jmp     loc_4E20B2

loc_4E209C:
mov     word ptr [ebp+8], 0
mov     word ptr [ebp+0Ah], 0F000h
mov     word ptr [ebp+0Ch], 0
mov     byte ptr [ebp+0Eh], 0Fh

loc_4E20B2:
xor     eax, eax

loc_4E20B4:
add     esp, 28h
jmp     loc_4E04CC

loc_4E20BC:
lea     edi, [esp+40h+var_30]
lea     esi, [eax+14h]
movsd
movsd
movsx   eax, word ptr [ebp+0]
mov     edx, [esp+0Eh]
sar     edx, 10h
sub     edx, eax
mov     [esp+40h+var_40], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E1FBC
mov     eax, [ebp+0]
sar     eax, 10h
mov     edx, [esp+40h+var_30]
sar     edx, 10h
sub     edx, eax
mov     [esp+40h+var_3C], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E1FBC
mov     eax, [ebp+2]
sar     eax, 10h
mov     edx, [esp+40h+var_30+2]
sar     edx, 10h
sub     edx, eax
mov     [esp+40h+var_38], edx
lea     eax, [edx+687Eh]
cmp     eax, 0D0FCh
ja      loc_4E1FBC
lea     edx, [esp+40h+var_20]
mov     eax, esp
call    sub_4EF932
lea     edx, [ebp+8]
mov     ecx, 0F746EA4h
mov     ebx, 424h
lea     eax, [esp+40h+var_20]
lea     esi, [esp+40h+var_28]
call    sub_4DFFB5
mov     eax, [esp+40h+var_28]
mov     [ebp+8], ax
mov     eax, [esp+40h+var_28+2]
mov     [ebp+0Ah], ax
mov     eax, [esp+40h+var_24]
mov     [ebp+0Ch], ax
mov     ax, [ebp+0]
mov     word ptr [esp+40h+var_20], ax
mov     ax, [ebp+2]
mov     word ptr [esp+40h+var_20+2], ax
mov     ax, [ebp+4]
mov     word ptr [esp+40h+var_1C], ax
mov     eax, [esp+16h]
sar     eax, 10h
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 3
add     esi, eax
shl     esi, 2
sar     esi, 0Ch
mov     word ptr [esp+40h+var_28], si
mov     eax, [esp+40h+var_28]
sar     eax, 10h
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 3
add     esi, eax
shl     esi, 2
sar     esi, 0Ch
mov     word ptr [esp+40h+var_28+2], si
mov     eax, [esp+40h+var_28+2]
sar     eax, 10h
mov     esi, eax
shl     esi, 2
sub     esi, eax
shl     esi, 3
add     esi, eax
shl     esi, 2
sar     esi, 0Ch
mov     word ptr [esp+40h+var_24], si
mov     eax, [esp+40h+var_20]
mov     edx, [esp+40h+var_28]
add     eax, edx
mov     [ebp+0], ax
mov     eax, [esp+40h+var_20+2]
mov     ebx, [esp+40h+var_28+2]
add     eax, ebx
mov     [ebp+2], ax
mov     eax, [esp+40h+var_1C]
mov     ecx, [esp+40h+var_24]
add     eax, ecx
mov     [ebp+4], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55068C
mov     edx, ebp
mov     eax, ebp
call    sub_42CE61
test    eax, eax
jnz     loc_4E1FBC
mov     edx, [esp+16h]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_24+2]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_20], ax
mov     edx, [esp+40h+var_28]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_20]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_20+2], ax
mov     edx, [esp+40h+var_28+2]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_20+2]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_1C], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_55068C
lea     edx, [esp+40h+var_20]
lea     eax, [esp+40h+var_20]
call    sub_42CE61
test    eax, eax
jnz     loc_4E1FBC
mov     dh, [ebp+0Eh]
dec     dh
mov     [ebp+0Eh], dh
jz      loc_4E1FBC
mov     ax, [ebp+0]
sub     eax, [esp+40h+var_30]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E20B2
mov     ax, [ebp+2]
sub     eax, [esp+40h+var_30+2]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E20B2
mov     ax, [ebp+4]
sub     eax, [esp+40h+var_2C]
add     eax, 64h ; 'd'
cmp     ax, 0C8h
jnb     loc_4E20B2
mov     byte ptr [ebp+7], 0
mov     byte ptr [ebp+6], 0
dec     ds:dword_55DCBC
mov     eax, [ebp+10h]
or      byte ptr [eax+4], 1
mov     eax, 1
jmp     loc_4E20B4
sub_4E1F7F endp




sub_4E22FB proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004E0AEA SIZE 00000006 BYTES

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ecx, edx
mov     ebx, 8
mov     edx, offset dword_564B34
call    sub_4EECEF
mov     edi, offset unk_77E714
mov     esi, ecx
movsd
movsd
movsd
mov     edi, offset unk_55DCC0
mov     esi, offset unk_77E714
movsd
movsd
movsd
xor     ebx, ebx
mov     bl, [ecx+6]
xor     edx, edx
mov     dl, [ecx+5]
xor     eax, eax
mov     al, [ecx+4]
call    sub_4EF154
xor     eax, eax
mov     ax, [ecx+8]
mov     edx, 180h
call    sub_4EF12B
mov     al, [ecx+0Ah]
mov     ds:byte_77EABE, al
cmp     dword ptr [ecx], 0
jz      loc_4E2419
mov     ax, [ecx+0Ah]
cmp     ax, 1
jb      short loc_4E237B
jbe     short loc_4E23BC
cmp     ax, 2
jz      loc_4E23E4
jmp     loc_4E2419

loc_4E237B:
test    ax, ax
jnz     loc_4E2419
test    byte ptr [ecx+7], 80h
jz      short loc_4E23A6
xor     edx, edx
mov     dl, [ecx+4]
shl     edx, 10h
xor     eax, eax
mov     al, [ecx+5]
shl     eax, 8
add     edx, eax
mov     al, [ecx+6]
movzx   ebp, al
add     ebp, edx
jmp     short loc_4E23AB

loc_4E23A6:
mov     ebp, 0FFFFFFh

loc_4E23AB:
mov     [esp+1Ch+var_18], 3F800000h
mov     [esp+1Ch+var_1C], 40E00000h
jmp     short loc_4E2419

loc_4E23BC:
test    byte ptr [ecx+7], 80h
jz      short loc_4E23E0
xor     eax, eax
mov     al, [ecx+4]
mov     edx, eax
shl     edx, 10h
xor     eax, eax
mov     al, [ecx+5]
shl     eax, 8
add     edx, eax
mov     al, [ecx+6]
movzx   ebp, al
add     ebp, edx
jmp     short loc_4E240A

loc_4E23E0:
xor     ebp, ebp
jmp     short loc_4E240A

loc_4E23E4:
test    byte ptr [ecx+7], 80h
jz      short loc_4E2408
xor     eax, eax
mov     al, [ecx+4]
mov     edx, eax
shl     edx, 10h
xor     eax, eax
mov     al, [ecx+5]
shl     eax, 8
add     edx, eax
mov     al, [ecx+6]
movzx   ebp, al
add     ebp, edx
jmp     short loc_4E240A

loc_4E2408:
xor     ebp, ebp

loc_4E240A:
mov     [esp+1Ch+var_18], 3F800000h
mov     [esp+1Ch+var_1C], 40800000h

loc_4E2419:
push    [esp+1Ch+var_1C]
push    [esp+20h+var_18]
mov     edx, [ecx]
mov     ebx, ebp
mov     eax, 1
call    sub_4F387C
mov     al, [ecx+7]
and     al, 7Fh
mov     ds:byte_77EAC0, al
add     esp, 8
jmp     loc_4E0AEA
sub_4E22FB endp ; sp-analysis failed




sub_4E2440 proc near
push    ebx
push    edx
mov     ebx, dword ptr ds:unk_5F84D1
sar     ebx, 18h
xor     edx, edx
mov     ds:dword_55DC6C, edx
mov     ds:dword_55DC70, edx
mov     ds:dword_55DC74, edx
mov     ds:dword_55DC78, edx
jmp     short loc_4E246D

loc_4E2467:
inc     edx
cmp     edx, 10h
jge     short loc_4E24A2

loc_4E246D:
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
test    ds:byte_6DC7FC[eax], 1
jz      short loc_4E2467
mov     al, ds:byte_6DC7FE[eax]
and     eax, 0FFh
sub     eax, 80h
cmp     eax, 10h
jge     short loc_4E2467
inc     byte ptr ds:dword_55DC6C[eax]
jmp     short loc_4E2467

loc_4E24A2:
mov     eax, ebx
shl     eax, 3
cmp     ebx, 6
jnz     short loc_4E24B4
mov     eax, ds:dword_5F8959[eax]
jmp     short loc_4E24BA

loc_4E24B4:
mov     eax, ds:(dword_5F8955+3)[eax]

loc_4E24BA:
sar     eax, 18h
cmp     eax, 3
jle     short loc_4E24C7
mov     eax, 3

loc_4E24C7:
shl     eax, 4
mov     al, ds:byte_550698[ebx+eax]
cmp     al, byte ptr ds:dword_55DC6C[ebx]
jbe     short loc_4E24E1
mov     eax, 1
pop     edx
pop     ebx
retn

loc_4E24E1:
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4E2440 endp




sub_4E24E6 proc near
push    edx
xor     edx, edx
mov     ds:dword_55DCD4, edx
mov     al, byte ptr ds:dword_5F88B1+3
mov     ds:byte_55DCDC, al
mov     al, byte ptr ds:dword_5F88B5
mov     ds:byte_55DCDD, al
mov     al, byte ptr ds:dword_5F88B5+1
mov     ds:byte_55DCDE, al
mov     al, ds:byte_5F84D4
mov     ds:byte_55DCDF, al
pop     edx
retn
sub_4E24E6 endp




sub_4E2519 proc near
push    edx
call    sub_4E4BA7
mov     edx, ds:dword_55DCD0+1
sar     edx, 18h
mov     eax, offset dword_55DCD4
call    ds:funcs_4E252D[edx*4]
pop     edx
retn
sub_4E2519 endp




sub_4E2536 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4A0E35
mov     edx, ds:off_52FD85
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, 20006h
xor     eax, eax
call    sub_4A05F5
call    sub_4E4892
mov     dword ptr [ecx], 1
jmp     def_4E296E      ; jumptable 004E296E default case
sub_4E2536 endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
jpt_4E25A7 dd offset loc_4E25AE ; jump table for switch statement
dd offset loc_4E25B9
dd offset loc_4E25C4
dd offset loc_4E25CF
dd offset loc_4E25DA
dd offset loc_4E25E5



sub_4E2586 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4E4892
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E25F0
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 5          ; switch 6 cases
ja      short def_4E25A7 ; jumptable 004E25A7 default case
jmp     jpt_4E25A7[eax*4] ; switch jump

loc_4E25AE:             ; jumptable 004E25A7 case 0
mov     dword ptr [edx], 2
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25B9:             ; jumptable 004E25A7 case 1
mov     dword ptr [edx], 3
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25C4:             ; jumptable 004E25A7 case 2
mov     dword ptr [edx], 4
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25CF:             ; jumptable 004E25A7 case 3
mov     dword ptr [edx], 5
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25DA:             ; jumptable 004E25A7 case 4
mov     dword ptr [edx], 6
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25E5:             ; jumptable 004E25A7 case 5
mov     dword ptr [edx], 8
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E25F0:
mov     bl, byte ptr ds:word_5708DE
test    bl, 1
jz      short loc_4E2606
mov     dword ptr [edx], 7
xor     eax, eax
pop     edx
pop     ebx
retn

loc_4E2606:
test    bl, 8
jz      short def_4E25A7 ; jumptable 004E25A7 default case
mov     dword ptr [edx], 8

def_4E25A7:             ; jumptable 004E25A7 default case
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4E2586 endp

jpt_4E266B dd offset loc_4E2672 ; jump table for switch statement
dd offset loc_4E2690
dd offset loc_4E26B1
dd offset loc_4E2717
dd offset loc_4E2802
dd offset loc_4E28C6
dd offset loc_4E28C6
dd offset loc_4E28ED
jpt_4E2729 dd offset loc_4E2730 ; jump table for switch statement
dd offset loc_4E275E
dd offset loc_4E27DA
dd offset loc_4E27E4
jpt_4E282A dd offset loc_4E2831 ; jump table for switch statement
dd offset loc_4E2852
dd offset loc_4E2873
dd offset loc_4E2899



sub_4E2656 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 7           ; switch 8 cases
ja      def_4E266B      ; jumptable 004E266B default case
xor     edx, edx
mov     dl, al
jmp     jpt_4E266B[edx*4] ; switch jump

loc_4E2672:             ; jumptable 004E266B case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C1h
call    sub_42BEB2
jmp     loc_4E2756

loc_4E2690:             ; jumptable 004E266B case 1
call    sub_42C353
test    eax, eax
jnz     def_4E266B      ; jumptable 004E266B default case
mov     ebx, 14h
mov     edx, offset unk_767464
mov     eax, 1
jmp     loc_4E2751

loc_4E26B1:             ; jumptable 004E266B case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E26F9
mov     al, byte ptr ds:dword_55BD74
mov     [ecx+4], al
cmp     al, 0FFh
jz      short loc_4E26E3
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
or      byte ptr ds:dword_55BD7C+1, 40h
jmp     loc_4E2756

loc_4E26E3:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E26F9:
call    sub_4E3F1F
test    eax, eax
jz      short loc_4E270B
add     byte ptr [ecx+1], 5
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E270B:
mov     eax, ecx
call    sub_4E3F64
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E2717:             ; jumptable 004E266B case 3
mov     al, [ecx+4]
sub     al, 40h ; '@'   ; switch 4 cases
cmp     al, 3
ja      def_4E2729      ; jumptable 004E2729 default case
and     eax, 0FFh
jmp     jpt_4E2729[eax*4] ; switch jump

loc_4E2730:             ; jumptable 004E2729 case 64
call    sub_436973
test    eax, eax
jnz     short loc_4E2745
mov     ebx, 58h ; 'X'
mov     edx, offset unk_767464
jmp     short loc_4E27A4

loc_4E2745:
mov     ebx, 50h ; 'P'

loc_4E274A:
mov     edx, offset unk_767464
xor     eax, eax

loc_4E2751:
call    sub_4A0CDD

loc_4E2756:
inc     byte ptr [ecx+1]
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E275E:             ; jumptable 004E2729 case 65
mov     edx, dword ptr ds:unk_5F84D3
sar     edx, 18h
mov     eax, edx
xor     ebx, ebx
mov     bx, ds:word_5509F6[edx*2]
mov     esi, ebx
shl     esi, 2
add     esi, ebx
shl     esi, 2
shl     eax, 3
add     eax, offset byte_5F8364
mov     ebx, [eax+5F2h]
sar     ebx, 18h
cmp     ds:byte_5506DC[esi+ebx], 0FFh
jnz     short loc_4E27B2
mov     ebx, 3Bh ; ';'

loc_4E279D:
mov     edx, offset unk_767464
xor     eax, eax

loc_4E27A4:
call    sub_4A0CDD

def_4E282A:             ; jumptable 004E282A default case
add     byte ptr [ecx+1], 2
jmp     def_4E266B      ; jumptable 004E266B default case

loc_4E27B2:
mov     ebx, [eax+5F8h]
sar     ebx, 10h
mov     eax, offset byte_5F8364
call    sub_4EE60F
cmp     eax, ebx
jnz     short loc_4E27D0
mov     ebx, 3Ah ; ':'
jmp     short loc_4E279D

loc_4E27D0:
mov     ebx, 52h ; 'R'
jmp     loc_4E274A

loc_4E27DA:             ; jumptable 004E2729 case 66
mov     ebx, 54h ; 'T'
jmp     loc_4E274A

loc_4E27E4:             ; jumptable 004E2729 case 67
mov     ebx, 56h ; 'V'
jmp     loc_4E274A

def_4E2729:             ; jumptable 004E2729 default case
cmp     byte ptr [ecx+4], 58h ; 'X'
jnb     short loc_4E27FB
mov     ebx, 5Ah ; 'Z'
jmp     short loc_4E279D

loc_4E27FB:
mov     ebx, 5Bh ; '['
jmp     short loc_4E279D

loc_4E2802:             ; jumptable 004E266B case 4
test    byte ptr ds:dword_55BD7C+3, 40h
jz      def_4E266B      ; jumptable 004E266B default case
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     loc_4E28BF
mov     al, [ecx+4]
sub     al, 40h ; '@'   ; switch 4 cases
cmp     al, 3
ja      short def_4E282A ; jumptable 004E282A default case
and     eax, 0FFh
jmp     jpt_4E282A[eax*4] ; switch jump

loc_4E2831:             ; jumptable 004E282A case 64
mov     ebx, 51h ; 'Q'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
call    sub_4369B9
mov     word ptr [ecx+0Ch], 540h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E2852:             ; jumptable 004E282A case 65
mov     ebx, 53h ; 'S'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
call    sub_4EE5BE
mov     word ptr [ecx+0Ch], 541h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E2873:             ; jumptable 004E282A case 66
mov     ebx, 55h ; 'U'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     eax, 708h
call    sub_4377B1
mov     word ptr [ecx+0Ch], 542h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E2899:             ; jumptable 004E282A case 67
mov     ebx, 57h ; 'W'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     eax, 384h
call    sub_4377AA
mov     word ptr [ecx+0Ch], 543h
jmp     def_4E282A      ; jumptable 004E282A default case

loc_4E28BF:
inc     al
mov     [ecx+1], al
jmp     short def_4E266B ; jumptable 004E266B default case

loc_4E28C6:             ; jumptable 004E266B cases 5,6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4E266B ; jumptable 004E266B default case
cmp     byte ptr [ecx+1], 6
jnz     short loc_4E28E0
xor     eax, eax
mov     ax, [ecx+0Ch]
call    sub_47EA91

loc_4E28E0:
and     byte ptr ds:dword_55BD7C+1, 0BFh
mov     byte ptr [ecx+1], 2
jmp     short def_4E266B ; jumptable 004E266B default case

loc_4E28ED:             ; jumptable 004E266B case 7
call    sub_42C353
test    eax, eax
jnz     short def_4E266B ; jumptable 004E266B default case
mov     [ecx], eax

def_4E266B:             ; jumptable 004E266B default case
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2656 endp

db 8Dh, 40h, 0
jpt_4E296E dd offset loc_4E2975 ; jump table for switch statement
dd offset loc_4E2993
dd offset loc_4E29BE
dd offset loc_4E29FA
jpt_4E2A06 dd offset loc_4E2A0D ; jump table for switch statement
dd offset loc_4E2A16
dd offset loc_4E2A16
dd offset loc_4E2A16
dd offset loc_4E2A16
dd offset loc_4E2A1F
dd offset loc_4E2A2C
dd offset loc_4E2A2C
dd offset loc_4E2A2C
dd offset loc_4E2A32
dd offset loc_4E2A32
dd offset loc_4E2A32
dd offset loc_4E2A38
dd offset loc_4E2A32
dd offset loc_4E2A41
dd offset loc_4E2A41
dd offset loc_4E2A41
dd offset loc_4E2A41



sub_4E295A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 3           ; switch 4 cases
ja      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_4E296E[edx*4] ; switch jump

loc_4E2975:             ; jumptable 004E296E case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C1h
call    sub_42BEB2

loc_4E298E:
inc     byte ptr [ecx+1]
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2993:             ; jumptable 004E296E case 1
call    sub_42C353
test    eax, eax
jnz     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     ebx, 19h
mov     edx, offset unk_767464
mov     eax, 1
call    sub_4A0CDD
mov     edx, 20002h
xor     eax, eax
call    sub_4A05F5
jmp     short loc_4E298E

loc_4E29BE:             ; jumptable 004E296E case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jnz     short loc_4E29E5
call    sub_4E3F1F
test    eax, eax
jz      short loc_4E29DC

loc_4E29D0:
mov     dword ptr [ecx], 0

def_4E296E:             ; jumptable 004E296E default case
xor     eax, eax        ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4E29DC:
mov     eax, ecx
call    sub_4E3F64
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E29E5:
inc     al
mov     [ecx+1], al
mov     eax, ds:dword_55BD78
and     eax, 0FF0000h
shr     eax, 10h
mov     [ecx+4], al

loc_4E29FA:             ; jumptable 004E296E case 3
mov     al, [ecx+4]
cmp     al, 11h         ; switch 18 cases
ja      short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
and     eax, 0FFh
jmp     jpt_4E2A06[eax*4] ; switch jump

loc_4E2A0D:             ; jumptable 004E2A06 case 0
mov     eax, ecx
call    sub_4E2A4A
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A16:             ; jumptable 004E2A06 cases 1-4
mov     eax, ecx
call    sub_4E2BFA
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A1F:             ; jumptable 004E2A06 case 5
mov     byte ptr [ecx+5], 45h ; 'E'

loc_4E2A23:
mov     eax, ecx
call    sub_4E2E94
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A2C:             ; jumptable 004E2A06 cases 6-8
mov     byte ptr [ecx+5], 46h ; 'F'
jmp     short loc_4E2A23

loc_4E2A32:             ; jumptable 004E2A06 cases 9-11,13
mov     byte ptr [ecx+5], 47h ; 'G'
jmp     short loc_4E2A23

loc_4E2A38:             ; jumptable 004E2A06 case 12
mov     eax, ecx
call    sub_4E2F2E
jmp     short def_4E296E ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E2A41:             ; jumptable 004E2A06 cases 14-17
mov     eax, ecx
call    sub_4E31F9
jmp     short def_4E296E ; jumptable 004E296E default case
sub_4E295A endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3



sub_4E2A4A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 1
jb      short loc_4E2A68
jbe     loc_4E2B09
cmp     al, 2
jz      loc_4E2BC6
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2A68:
test    al, al
jnz     loc_4E2BD6
mov     eax, 524h
call    sub_47E888
test    eax, eax
jnz     short loc_4E2A91
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
jmp     short loc_4E2AC8

loc_4E2A91:
mov     edx, dword ptr ds:unk_5F83D0
sar     edx, 10h
mov     eax, ds:dword_5F8412
sar     eax, 10h
cmp     edx, eax
jnz     short loc_4E2AD0
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 40h ; '@'

loc_4E2ABC:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E2AC8:
add     byte ptr [ecx+2], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2AD0:
cmp     ds:byte_77E800, 0
jnz     short loc_4E2AF1
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 41h ; 'A'
jmp     short loc_4E2ABC

loc_4E2AF1:
mov     ebx, 42h ; 'B'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E2B02:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2B09:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      loc_4E2BD6
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4E2B02
mov     ax, ds:word_5F83D2
xor     ah, ah
and     al, 0F0h
cwde
mov     edx, ds:dword_5F8412
sar     edx, 10h
sub     edx, eax
sar     edx, 4
xor     eax, eax
mov     al, ds:byte_77E800
cmp     edx, eax
jle     short loc_4E2B7D
mov     ebx, 44h ; 'D'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     dx, ds:word_5F83D2
xor     dh, dh
and     dl, 0F0h
xor     eax, eax
mov     al, ds:byte_77E800
shl     eax, 4
add     edx, eax
mov     ds:word_5F83D2, dx
xor     bl, bl
mov     ds:byte_77E800, bl
jmp     short loc_4E2B02

loc_4E2B7D:
mov     ebx, 43h ; 'C'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     ax, ds:word_5F83D2
xor     ah, ah
and     al, 0F0h
cwde
mov     edx, ds:dword_5F8412
sar     edx, 10h
sub     edx, eax
sar     edx, 4
xor     eax, eax
mov     al, ds:byte_77E800
sub     eax, edx
mov     ds:byte_77E800, al
mov     ax, word ptr ds:dword_5F8412+2
mov     ds:word_5F83D2, ax
jmp     loc_4E2B02

loc_4E2BC6:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2BD6
mov     [ecx+1], al
mov     byte ptr [ecx+2], 0

loc_4E2BD6:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2A4A endp

jpt_4E2C54 dd offset loc_4E2C5B ; jump table for switch statement
dd offset loc_4E2C72
dd offset loc_4E2C89
dd offset loc_4E2CA0
jpt_4E2D05 dd offset loc_4E2D0C ; jump table for switch statement
dd offset loc_4E2D36
dd offset loc_4E2D63
dd offset loc_4E2D90



sub_4E2BFA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 1
jb      short loc_4E2C18
jbe     loc_4E2CE1
cmp     al, 2
jz      loc_4E2DF7
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2C18:
test    al, al
jnz     loc_4E2E07
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      loc_4E2CC8
mov     al, [ecx+4]
dec     al              ; switch 4 cases
cmp     al, 3
ja      def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case
and     eax, 0FFh
jmp     jpt_4E2C54[eax*4] ; switch jump

loc_4E2C5B:             ; jumptable 004E2C54 case 1
cmp     byte ptr ds:dword_5F84CB+3, 0
jz      short loc_4E2C6B
mov     ebx, 33h ; '3'
jmp     short loc_4E2CB5

loc_4E2C6B:
mov     ebx, 32h ; '2'
jmp     short loc_4E2CB5

loc_4E2C72:             ; jumptable 004E2C54 case 2
test    ds:byte_5F84CF, 2
jz      short loc_4E2C82
mov     ebx, 39h ; '9'
jmp     short loc_4E2CB5

loc_4E2C82:
mov     ebx, 38h ; '8'
jmp     short loc_4E2CB5

loc_4E2C89:             ; jumptable 004E2C54 case 3
test    ds:byte_5F84CF, 1
jz      short loc_4E2C99
mov     ebx, 35h ; '5'
jmp     short loc_4E2CB5

loc_4E2C99:
mov     ebx, 34h ; '4'
jmp     short loc_4E2CB5

loc_4E2CA0:             ; jumptable 004E2C54 case 4
cmp     ds:byte_5F84D0, 0
jz      short loc_4E2CB0
mov     ebx, 49h ; 'I'
jmp     short loc_4E2CB5

loc_4E2CB0:
mov     ebx, 48h ; 'H'

loc_4E2CB5:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

def_4E2C54:             ; jumptable 004E2C54 default case
inc     byte ptr [ecx+2] ; jumptable 004E2D05 default case
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2CC8:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
add     byte ptr [ecx+2], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2CE1:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      loc_4E2E07
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short def_4E2C54 ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case
mov     al, [ecx+4]
dec     al              ; switch 4 cases
cmp     al, 3
ja      short def_4E2C54 ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case
and     eax, 0FFh
jmp     jpt_4E2D05[eax*4] ; switch jump

loc_4E2D0C:             ; jumptable 004E2D05 case 1
cmp     byte ptr ds:dword_5F84CB+3, 0
jz      short loc_4E2D1C
mov     ebx, 3Dh ; '='
jmp     short loc_4E2D21

loc_4E2D1C:
mov     ebx, 3Ch ; '<'

loc_4E2D21:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     byte ptr ds:dword_5F84CB+3, 1
jmp     short def_4E2C54 ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2D36:             ; jumptable 004E2D05 case 2
test    ds:byte_5F84CF, 2
jz      short loc_4E2D46
mov     ebx, 3Fh ; '?'
jmp     short loc_4E2D4B

loc_4E2D46:
mov     ebx, 3Eh ; '>'

loc_4E2D4B:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     ds:byte_5F84CF, 2
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2D63:             ; jumptable 004E2D05 case 3
test    ds:byte_5F84CF, 1
jz      short loc_4E2D73
mov     ebx, 37h ; '7'
jmp     short loc_4E2D78

loc_4E2D73:
mov     ebx, 36h ; '6'

loc_4E2D78:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     ds:byte_5F84CF, 1
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2D90:             ; jumptable 004E2D05 case 4
cmp     ds:byte_5F84D0, 0
jz      short loc_4E2DB7
mov     ebx, 4Bh ; 'K'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     bh, bh
mov     ds:byte_5F84D0, bh
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2DB7:
mov     ebx, 4Ah ; 'J'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     eax, 53Ah
call    sub_47E888
mov     edx, eax
mov     eax, 53Bh
call    sub_47E888
add     dl, al
mov     eax, 53Ch
call    sub_47E888
add     dl, al
mov     ds:byte_5F84D0, dl
jmp     def_4E2C54      ; jumptable 004E2C54 default case
; jumptable 004E2D05 default case

loc_4E2DF7:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2E07
mov     [ecx+1], al
mov     byte ptr [ecx+2], 0

loc_4E2E07:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2BFA endp




sub_4E2E0B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
test    al, al
jbe     short loc_4E2E1F
cmp     al, 1
jz      short loc_4E2E7F
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2E1F:
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      short loc_4E2E67
test    ds:byte_5F84CF, 2
jz      short loc_4E2E4D
mov     ebx, 3Fh ; '?'
jmp     short loc_4E2E52

loc_4E2E4D:
mov     ebx, 3Eh ; '>'

loc_4E2E52:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     ds:byte_5F84CF, 2
jmp     short loc_4E2E78

loc_4E2E67:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E2E78:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2E7F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2E90
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0

loc_4E2E90:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2E0B endp




sub_4E2E94 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
test    al, al
jbe     short loc_4E2EA8
cmp     al, 1
jz      short loc_4E2F02
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2EA8:
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      short loc_4E2EEA
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
xor     ebx, ebx
mov     bl, [ecx+5]
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4E2EFB

loc_4E2EEA:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E2EFB:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2F02:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E2F13
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0

loc_4E2F13:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2E94 endp

db 8Dh, 40h, 0
jpt_4E2F43 dd offset loc_4E2F4A ; jump table for switch statement
dd offset loc_4E2FAE
dd offset loc_4E2FF5
dd offset loc_4E3000
dd offset loc_4E303B



sub_4E2F2E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_4E2F43      ; jumptable 004E2F43 default case
and     eax, 0FFh
jmp     jpt_4E2F43[eax*4] ; switch jump

loc_4E2F4A:             ; jumptable 004E2F43 case 0
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jz      short loc_4E2F91
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 4Ch ; 'L'

loc_4E2F7E:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E2F8A:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2F91:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E2FA2:
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2FAE:             ; jumptable 004E2F43 case 1
mov     eax, offset dword_77E784
call    sub_4E3072
cmp     eax, 1
jb      short loc_4E2FC8
jbe     short loc_4E2FE7
cmp     eax, 2
jz      short loc_4E2FEE
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2FC8:
test    eax, eax
jnz     def_4E2F43      ; jumptable 004E2F43 default case
mov     ebx, 4Dh ; 'M'
mov     edx, offset unk_767464
call    sub_4A0CDD
add     byte ptr [ecx+2], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E2FE7:
mov     ebx, 4Eh ; 'N'
jmp     short loc_4E2F7E

loc_4E2FEE:
mov     ebx, 4Fh ; 'O'
jmp     short loc_4E2F7E

loc_4E2FF5:             ; jumptable 004E2F43 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4E2F43 ; jumptable 004E2F43 default case
jmp     short loc_4E2FA2

loc_4E3000:             ; jumptable 004E2F43 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4E2F43 ; jumptable 004E2F43 default case
call    sub_4A7DD4
mov     al, byte ptr ds:word_77E7FC+1
mov     ds:byte_77E7D4, al
mov     al, ds:byte_77E7FE
mov     byte ptr ds:dword_77E7D5, al
mov     eax, 17h
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
jmp     loc_4E2F8A

loc_4E303B:             ; jumptable 004E2F43 case 4
call    sub_4A03B0
call    sub_4D8E21
call    sub_4D8ED6
or      ds:byte_77E6BD, 8
call    sub_4D87EE
call    sub_4DBAEF
call    sub_4DBBD8
mov     byte ptr ds:dword_77E784, 5
mov     byte ptr ds:dword_77E784+1, 2

def_4E2F43:             ; jumptable 004E2F43 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4E2F2E endp




sub_4E3072 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+78h], 0
jnz     short loc_4E3086

loc_4E307D:
mov     eax, 2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E3086:
mov     al, [edx+50h]
cmp     al, 0Ch
jb      short loc_4E30C1
jbe     loc_4E3173
cmp     al, 12h
jb      short loc_4E30B4
jbe     loc_4E31AC
cmp     al, 19h
jb      loc_4E31F0
jbe     loc_4E31C7
cmp     al, 1Bh
jz      short loc_4E30E0
jmp     loc_4E31F0

loc_4E30B4:
cmp     al, 0Fh
jz      loc_4E3199
jmp     loc_4E31F0

loc_4E30C1:
cmp     al, 5
jb      short loc_4E30D8
jbe     short loc_4E3112
cmp     al, 6
jbe     short loc_4E312A
cmp     al, 8
jz      loc_4E314A
jmp     loc_4E31F0

loc_4E30D8:
cmp     al, 3
jnz     loc_4E31F0

loc_4E30E0:
mov     eax, 318h
call    sub_47E888
test    eax, eax
jz      short loc_4E307D
cmp     byte ptr [edx+51h], 2
jg      short loc_4E307D
mov     eax, 55h ; 'U'
call    sub_47E888
test    eax, eax
jz      short loc_4E3108
mov     byte ptr [edx+79h], 1Bh
jmp     short loc_4E310C

loc_4E3108:
mov     byte ptr [edx+79h], 3

loc_4E310C:
mov     byte ptr [edx+7Ah], 1
jmp     short loc_4E3144

loc_4E3112:
mov     eax, 319h
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     byte ptr [edx+79h], 5
jmp     short loc_4E3140

loc_4E312A:
mov     eax, 31Ah
call    sub_47E888
test    eax, eax
jz      loc_4E307D

loc_4E313C:
mov     byte ptr [edx+79h], 6

loc_4E3140:
mov     byte ptr [edx+7Ah], 0

loc_4E3144:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4E314A:
mov     eax, 31Bh
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     cl, [edx+51h]
cmp     cl, 2
jle     short loc_4E316D
cmp     cl, 5
jnz     loc_4E307D

loc_4E316D:
mov     byte ptr [edx+79h], 8
jmp     short loc_4E3140

loc_4E3173:
mov     eax, 31Ch
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     bh, [edx+51h]
test    bh, bh
jnz     loc_4E307D
mov     byte ptr [edx+79h], 0Ch
mov     [edx+7Ah], bh
jmp     short loc_4E3144

loc_4E3199:
mov     eax, 31Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4E313C
jmp     loc_4E307D

loc_4E31AC:
mov     eax, 31Fh
call    sub_47E888
test    eax, eax
jz      loc_4E307D
mov     byte ptr [edx+79h], 12h
jmp     loc_4E3140

loc_4E31C7:
mov     eax, 31Dh
call    sub_47E888
test    eax, eax
jz      loc_4E307D
cmp     byte ptr [edx+51h], 1
jle     loc_4E307D
mov     byte ptr [edx+79h], 19h
mov     byte ptr [edx+7Ah], 3
jmp     loc_4E3144

loc_4E31F0:
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4E3072 endp




sub_4E31F9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+2]
test    al, al
jbe     short loc_4E3211
cmp     al, 1
jz      loc_4E32A3
pop     edx
pop     ecx
pop     ebx
retn

loc_4E3211:
xor     eax, eax
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 520h
call    sub_47E888
test    eax, eax
jnz     short loc_4E3267
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 521h
call    sub_47E888
test    eax, eax
jnz     short loc_4E3267
mov     al, [ecx+4]
mov     al, ds:byte_5509E4[eax]
and     eax, 0FFh
add     eax, 522h
call    sub_47E888
test    eax, eax
jz      short loc_4E328B

loc_4E3267:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
mov     ebx, 47h ; 'G'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4E329C

loc_4E328B:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E329C:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_4E32A3:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E32B4
mov     byte ptr [ecx+1], 2
mov     byte ptr [ecx+2], 0

loc_4E32B4:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E31F9 endp

db 8Bh, 0C0h
jpt_4E32DF dd offset loc_4E32E6 ; jump table for switch statement
dd offset loc_4E3307
dd offset loc_4E3339
dd offset loc_4E3397



sub_4E32CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 3           ; switch 4 cases
ja      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
and     eax, 0FFh
jmp     jpt_4E32DF[eax*4] ; switch jump

loc_4E32E6:             ; jumptable 004E32DF case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C2h

loc_4E32FA:
call    sub_42BEB2

loc_4E32FF:
inc     byte ptr [ecx+1]
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3307:             ; jumptable 004E32DF case 1
call    sub_42C353
test    eax, eax
jnz     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     ebx, 1Dh
mov     edx, offset unk_767464
call    sub_4A0CDD
mov     edx, 20007h
mov     eax, 2
call    sub_4A05F5
call    sub_4E36DB
jmp     short loc_4E32FF

loc_4E3339:             ; jumptable 004E32DF case 2
mov     ah, byte ptr ds:dword_55BD7C+3
test    ah, 40h
jz      short loc_4E335F
test    ah, 8
jz      short loc_4E335F
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 2
jnz     short loc_4E335F
mov     eax, 0C4h
jmp     short loc_4E32FA

loc_4E335F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E3386
mov     bl, byte ptr ds:dword_55BD74+2
test    bl, 1
jz      short loc_4E337A
test    bl, 4
jz      short loc_4E3386
jmp     short loc_4E337F

loc_4E337A:
test    bl, 8
jz      short loc_4E3386

loc_4E337F:
mov     eax, ecx
call    sub_4E33AB

loc_4E3386:
call    sub_4E36DB

loc_4E338B:
mov     eax, ecx
call    sub_4E3F64
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3397:             ; jumptable 004E32DF case 3
call    sub_42C353
test    eax, eax
jnz     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     [ecx], eax
jmp     def_4E296E      ; jumptable 004E296E default case
sub_4E32CA endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3



sub_4E33AB proc near
push    edx
mov     byte ptr [eax+6], 3
mov     dl, [eax+12h]
mov     [eax+10h], dl
mov     dl, [eax+15h]
mov     [eax+13h], dl
mov     dl, [eax+1Ah]
mov     [eax+18h], dl
mov     dl, [eax+1Dh]
mov     [eax+1Bh], dl
mov     dl, [eax+22h]
mov     [eax+20h], dl
mov     dl, [eax+25h]
mov     [eax+23h], dl
mov     dl, [eax+2Ah]
mov     [eax+28h], dl
mov     dl, [eax+2Dh]
mov     [eax+2Bh], dl
mov     dl, [eax+32h]
mov     [eax+30h], dl
mov     dl, [eax+35h]
mov     [eax+33h], dl
pop     edx
retn
sub_4E33AB endp




sub_4E33EE proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
cmp     byte ptr [eax+6], 0
jz      loc_4E3546
xor     eax, eax
mov     al, [esi+11h]
xor     ecx, ecx
mov     cl, [esi+10h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+12h], al
xor     eax, eax
mov     al, [esi+14h]
xor     ecx, ecx
mov     cl, [esi+13h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+15h], al
xor     eax, eax
mov     al, [esi+19h]
xor     ebx, ebx
mov     bl, [esi+18h]
mov     ecx, eax
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+1Ah], al
xor     eax, eax
mov     al, [esi+1Ch]
xor     ebx, ebx
mov     bl, [esi+1Bh]
mov     ecx, eax
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+1Dh], al
xor     eax, eax
mov     al, [esi+21h]
xor     ecx, ecx
mov     cl, [esi+20h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+22h], al
xor     eax, eax
mov     al, [esi+24h]
xor     ecx, ecx
mov     cl, [esi+23h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+25h], al
xor     eax, eax
mov     al, [esi+29h]
xor     ecx, ecx
mov     cl, [esi+28h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+2Ah], al
xor     eax, eax
mov     al, [esi+2Ch]
xor     ebx, ebx
mov     bl, [esi+2Bh]
mov     ecx, eax
sub     ecx, ebx
mov     ebx, ecx
mov     ecx, [esi+3]
sar     ecx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+2Dh], al
xor     eax, eax
mov     al, [esi+31h]
xor     ecx, ecx
mov     cl, [esi+30h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+32h], al
xor     eax, eax
mov     al, [esi+34h]
xor     ecx, ecx
mov     cl, [esi+33h]
mov     ebx, eax
sub     ebx, ecx
mov     ecx, ebx
mov     ebx, [esi+3]
sar     ebx, 18h
imul    ecx, ebx
sar     ecx, 2
sub     eax, ecx
mov     [esi+35h], al
dec     byte ptr [esi+6]
jmp     short loc_4E3582

loc_4E3546:
mov     al, [esi+11h]
mov     [esi+12h], al
mov     al, [esi+14h]
mov     [esi+15h], al
mov     al, [esi+19h]
mov     [esi+1Ah], al
mov     al, [esi+1Ch]
mov     [esi+1Dh], al
mov     al, [esi+21h]
mov     [esi+22h], al
mov     al, [esi+24h]
mov     [esi+25h], al
mov     al, [esi+29h]
mov     [esi+2Ah], al
mov     al, [esi+2Ch]
mov     [esi+2Dh], al
mov     al, [esi+31h]
mov     [esi+32h], al
mov     al, [esi+34h]
mov     [esi+35h], al

loc_4E3582:
test    edx, edx
jnz     loc_4E364A
xor     ebx, ebx
mov     bl, [esi+12h]
xor     ecx, ecx
mov     edx, 28h ; '('
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+15h]
mov     ecx, 1
mov     edx, 28h ; '('
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+1Ah]
xor     ecx, ecx
mov     edx, 32h ; '2'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+1Dh]
mov     ecx, 1
mov     edx, 32h ; '2'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+22h]
xor     ecx, ecx
mov     edx, 3Ch ; '<'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+25h]
mov     ecx, 1
mov     edx, 3Ch ; '<'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+2Ah]
xor     ecx, ecx
mov     edx, 46h ; 'F'
mov     eax, 0CBh
call    sub_4E45AF
xor     ebx, ebx
mov     bl, [esi+2Dh]
mov     ecx, 1
mov     edx, 46h ; 'F'
mov     eax, 0CBh
call    sub_4E45AF
pop     esi
pop     ecx
pop     ebx
retn

loc_4E364A:
xor     ecx, ecx
mov     cl, [esi+16h]
xor     ebx, ebx
mov     bl, [esi+12h]
mov     edx, 9Eh
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+1Eh]
xor     ebx, ebx
mov     bl, [esi+1Ah]
mov     edx, 0A8h
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+26h]
xor     ebx, ebx
mov     bl, [esi+22h]
mov     edx, 0B2h
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+2Eh]
xor     ebx, ebx
mov     bl, [esi+2Ah]
mov     edx, 0BCh
mov     eax, 0A4h
call    sub_4E475E
xor     ecx, ecx
mov     cl, [esi+36h]
xor     ebx, ebx
mov     bl, [esi+32h]
mov     edx, 0C6h
mov     eax, 0A4h
call    sub_4E475E
mov     bh, [esi+5]
test    bh, bh
jz      short loc_4E36D7
xor     eax, eax
mov     al, bh
call    sub_4E4A62

loc_4E36D7:
pop     esi
pop     ecx
pop     ebx
retn
sub_4E33EE endp




sub_4E36DB proc near
push    edx
mov     eax, offset dword_55DCD4
call    sub_4E4250
xor     edx, edx
mov     eax, offset dword_55DCD4
call    sub_4E33EE
pop     edx
retn
sub_4E36DB endp

db 8Bh, 0C0h
jpt_4E3737 dd offset loc_4E373E ; jump table for switch statement
dd offset loc_4E3763
dd offset loc_4E380A
dd offset loc_4E3929
dd offset loc_4E3A86
dd offset loc_4E3AA5
dd offset loc_4E3AB4



sub_4E3712 proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     edi, edi
mov     di, ds:word_5708DE
mov     esi, offset byte_5F8364
mov     al, [eax+1]
cmp     al, 6           ; switch 7 cases
ja      def_4E3737      ; jumptable 004E3737 default case
and     eax, 0FFh
jmp     jpt_4E3737[eax*4] ; switch jump

loc_4E373E:             ; jumptable 004E3737 case 0
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C2h
call    sub_42BEB2
mov     byte ptr [ecx+5], 0

loc_4E375B:
inc     byte ptr [ecx+1]
jmp     def_4E3737      ; jumptable 004E3737 default case

loc_4E3763:             ; jumptable 004E3737 case 1
call    sub_42C353
test    eax, eax
jnz     def_4E3737      ; jumptable 004E3737 default case
cmp     ds:byte_5F84D4, 0
jz      short loc_4E3780
mov     ebx, 5Ch ; '\'
jmp     short loc_4E3785

loc_4E3780:
mov     ebx, 5Dh ; ']'

loc_4E3785:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
test    byte ptr ds:dword_55BD7C+3, 4
jnz     short loc_4E37F9
mov     ebx, 2Fh ; '/'
mov     edx, offset unk_767464
mov     eax, 1
call    sub_4A0CDD
cmp     byte ptr [esi+172h], 0
jnz     short loc_4E37C3
mov     edx, 2001Ch
xor     eax, eax
call    sub_4A05F5

loc_4E37C3:
mov     edx, 20009h
mov     eax, 1
call    sub_4A05F5
mov     edx, 20017h
mov     eax, 2
call    sub_4A05F5
mov     edx, 20008h
mov     eax, 3
call    sub_4A05F5
xor     edx, edx
mov     eax, ecx
call    sub_4E4444

loc_4E37F9:
mov     edx, 1
mov     eax, ecx
call    sub_4E33EE
jmp     loc_4E375B

loc_4E380A:             ; jumptable 004E3737 case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jz      loc_4E391D
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 1
jb      short loc_4E3836
jbe     short loc_4E3857
cmp     eax, 2
jz      loc_4E38EA
jmp     loc_4E3A97

loc_4E3836:
test    eax, eax
jnz     loc_4E3A97
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
inc     byte ptr [ecx+1]
jmp     loc_4E3A97

loc_4E3857:
cmp     ds:byte_5F84D6, 0
jnz     short loc_4E387A
mov     ebx, 61h ; 'a'

loc_4E3865:
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD

loc_4E3871:
add     byte ptr [ecx+1], 3
jmp     loc_4E3A97

loc_4E387A:
cmp     byte ptr ds:dword_5F88B1+1, 0
jg      short loc_4E388A
mov     ebx, 60h ; '`'
jmp     short loc_4E3865

loc_4E388A:
cmp     byte ptr ds:dword_5F88B1+2, 0
jnz     short loc_4E38C9
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
add     eax, 80h
call    sub_4A629F
mov     ebx, 5Eh ; '^'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
mov     byte ptr ds:dword_5F88B1+2, 1
mov     al, ds:byte_5F84D6
mov     ds:byte_5F84D4, al
jmp     short loc_4E3871

loc_4E38C9:
mov     ebx, 5Fh ; '_'
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
xor     bh, bh
mov     byte ptr ds:dword_5F88B1+2, bh
mov     ds:byte_5F84D4, bh
jmp     short loc_4E3871

loc_4E38EA:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C4h
call    sub_42BEB2
add     byte ptr [ecx+1], 4
jmp     loc_4E3A97

loc_4E391D:
mov     eax, ecx
call    sub_4E3F64
jmp     loc_4E3A97

loc_4E3929:             ; jumptable 004E3737 case 3
mov     eax, ds:dword_55BD78
and     eax, 0FF00h
shr     eax, 8
mov     [ecx+4], al
mov     [ecx+5], al
test    al, al
jbe     short loc_4E3945
inc     al
mov     [ecx+5], al

loc_4E3945:
xor     ebx, ebx
mov     bl, [ecx+5]
cmp     byte ptr [ecx+4], 0Dh
jnb     loc_4E39C2
lea     eax, [ebx+4C0h]
call    sub_47E888
test    eax, eax
jz      short loc_4E39A1
xor     eax, eax
mov     al, [ecx+4]
lea     edx, [eax+9]
or      edx, 20000h
mov     eax, 1
call    sub_4A05F5
mov     eax, [esi+16Fh]
sar     eax, 18h
cmp     eax, ebx
jnz     short loc_4E3996
mov     edx, 2001Ch
xor     eax, ebx
call    sub_4A05F5
jmp     short loc_4E399D

loc_4E3996:
xor     eax, eax
call    sub_4A0595

loc_4E399D:
mov     edx, ebx
jmp     short loc_4E39E1

loc_4E39A1:
mov     byte ptr [ecx+5], 0
mov     edx, 20016h
mov     eax, 1
call    sub_4A05F5
xor     eax, eax
call    sub_4A0595
mov     edx, 0FFFFFFFFh
jmp     short loc_4E39E1

loc_4E39C2:
mov     byte ptr [ecx+5], 0
mov     edx, 20016h
mov     eax, 1
call    sub_4A05F5
xor     eax, eax
call    sub_4A0595
mov     edx, 0FFFFFFFFh

loc_4E39E1:
mov     eax, ecx
call    sub_4E4444
test    byte ptr ds:dword_55BD74+2, 4
jz      short loc_4E39F8
mov     eax, ecx
call    sub_4E33AB

loc_4E39F8:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E3A6D
cmp     byte ptr [ecx+4], 0Dh
jz      short loc_4E3A56
lea     eax, [ebx+4C0h]
call    sub_47E888
test    eax, eax
jz      short loc_4E3A43
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
xor     ebx, ebx
mov     bl, [ecx+4]
add     ebx, 0E4h
mov     edx, offset unk_767464
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr [ecx+1]
jmp     short loc_4E3A97

loc_4E3A43:
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
jmp     short loc_4E3A97

loc_4E3A56:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h

loc_4E3A62:
call    sub_4D89E4
add     byte ptr [ecx+1], 2
jmp     short loc_4E3A97

loc_4E3A6D:
test    di, 1008h
jz      loc_4E391D
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
jmp     short loc_4E3A62

loc_4E3A86:             ; jumptable 004E3737 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E3A97
mov     byte ptr [ecx+1], 3

loc_4E3A93:
mov     byte ptr [ecx+2], 0

loc_4E3A97:
mov     edx, 1
mov     eax, ecx
call    sub_4E33EE
jmp     short def_4E3737 ; jumptable 004E3737 default case

loc_4E3AA5:             ; jumptable 004E3737 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4E3A97
mov     byte ptr [ecx+1], 1
jmp     short loc_4E3A93

loc_4E3AB4:             ; jumptable 004E3737 case 6
call    sub_42C353
test    eax, eax
jnz     short def_4E3737 ; jumptable 004E3737 default case
mov     [ecx], eax

def_4E3737:             ; jumptable 004E3737 default case
xor     eax, eax
jmp     loc_4E3DDC
sub_4E3712 endp




sub_4E3AC6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+1]
cmp     al, 1
jb      short loc_4E3ADD
jbe     short loc_4E3AF7
cmp     al, 2
jz      short loc_4E3B1A
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3ADD:
test    al, al
jnz     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
mov     eax, 0C1h
call    sub_42BEB2

loc_4E3AEF:
inc     byte ptr [ecx+1]
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3AF7:
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     edx, ds:off_52FD55
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4E3AEF

loc_4E3B1A:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E3B40
mov     edx, ds:dword_55BD7C
and     edx, 0FFh
cmp     edx, 4
jnz     short loc_4E3B40
mov     byte ptr [ecx], 9
mov     byte ptr [ecx+1], 0
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3B40:
test    byte ptr ds:dword_55BD7C+3, 40h
jnz     short loc_4E3B56
test    byte ptr ds:word_5708DE, 8
jz      loc_4E338B

loc_4E3B56:
test    byte ptr ds:word_5708DE, 8
jz      short loc_4E3B70
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4

loc_4E3B70:
call    sub_4A0E35
mov     edx, ds:dword_77E7D5
sar     edx, 18h
mov     eax, offset byte_5F8364
call    sub_4B58B2
mov     eax, 0C4h
call    sub_42BEB2
jmp     loc_4E29D0
sub_4E3AC6 endp




sub_4E3B97 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
mov     al, [eax+1]
test    al, al
jbe     short loc_4E3BB6
cmp     al, 1
jz      loc_4E3C2F
jmp     loc_4E3DD6

loc_4E3BB6:
mov     eax, offset byte_559A4C
call    sub_4F90BD
mov     eax, offset byte_559A74
call    sub_4F90F7
mov     esi, ds:off_52FCE5
xor     eax, eax
xor     edx, edx
jmp     short loc_4E3BE6

loc_4E3BD6:
sub     ecx, 7
mov     ds:dword_559A88[eax*4], ecx
inc     eax
cmp     eax, 9
jge     short loc_4E3BF1

loc_4E3BE6:
lea     ecx, [esi+edx]
inc     edx
cmp     byte ptr [ecx], 82h
jz      short loc_4E3BD6
jmp     short loc_4E3BE6

loc_4E3BF1:
call    sub_437FBF
call    sub_4A0E35
mov     edx, ds:off_52FCE1
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, ds:off_52FCE5
mov     ebx, 0FFFFFFFFh
mov     eax, 1
call    sub_4A0CDD
call    sub_4F904F
mov     ds:dword_559AAC, eax
inc     byte ptr [edi+1]

loc_4E3C2F:
mov     esi, ds:dword_55BD7C
and     esi, 0FFh
cmp     esi, 9
jge     loc_4E3D89
call    sub_4F8FEF
mov     [esp+20h+var_1C], eax
test    eax, eax
jz      loc_4E3CE6
xor     edx, edx

loc_4E3C57:
lea     eax, [edx+edx]
mov     ch, ds:byte_559A4C[eax]
test    ch, ch
jz      short loc_4E3C74
mov     al, ch
and     eax, 0FFh
cmp     eax, [esp+20h+var_1C]
jz      short loc_4E3C74
inc     edx
jmp     short loc_4E3C57

loc_4E3C74:
cmp     ds:byte_559A4C[edx*2], 0
jnz     loc_4E3DD6
mov     eax, [esp+20h+var_1C]
call    sub_4F8FAD
test    eax, eax
jz      loc_4E3DD6
mov     ecx, ds:dword_559A88[esi*4]
mov     ebx, 7
mov     edx, eax
mov     eax, ecx
call    memcpy_
xor     eax, eax
jmp     short loc_4E3CB6

loc_4E3CAC:
inc     eax
cmp     eax, 14h
jge     loc_4E3DD6

loc_4E3CB6:
lea     edx, [eax+eax]
cmp     ds:byte_559A4C[edx], 0
jz      loc_4E3DD6
xor     ebx, ebx
mov     bl, ds:byte_559A4D[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_4E3CAC
mov     al, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A4C[edx], al
jmp     loc_4E3DD6

loc_4E3CE6:
call    sub_4F904F
mov     [esp+20h+var_1C], eax
cmp     eax, 0FFFFFFFFh
jz      loc_4E3D6C
cmp     eax, ds:dword_559AAC
jz      loc_4E3D6C
xor     eax, eax
jmp     short loc_4E3D0E

loc_4E3D08:
inc     eax
cmp     eax, 0Ah
jge     short loc_4E3D62

loc_4E3D0E:
lea     edx, [eax+eax]
xor     ebx, ebx
mov     bl, ds:byte_559A75[edx]
cmp     ebx, ds:dword_511F05[esi*4]
jnz     short loc_4E3D08
mov     dl, ds:byte_559A74[edx]
and     edx, 0FFh
mov     [esp+20h+var_20], edx
xor     edx, edx
mov     ebp, [esp+20h+var_1C]
jmp     short loc_4E3D3F

loc_4E3D39:
inc     edx
cmp     edx, 0Ah
jge     short loc_4E3D57

loc_4E3D3F:
lea     ecx, [edx+edx]
xor     ebx, ebx
mov     bl, ds:byte_559A74[ecx]
cmp     ebx, ebp
jnz     short loc_4E3D39
mov     dl, byte ptr [esp+20h+var_20]
mov     ds:byte_559A74[ecx], dl

loc_4E3D57:
mov     dl, byte ptr [esp+20h+var_1C]
mov     ds:byte_559A74[eax*2], dl

loc_4E3D62:
call    sub_437FBF
jmp     loc_4E3DD6

loc_4E3D6C:
mov     ecx, [esp+20h+var_1C]
cmp     ecx, 0FFFFFFFFh
jnz     loc_4E3DD6
cmp     ecx, ds:dword_559AAC
jz      short loc_4E3DD6
mov     ds:dword_559AAC, ecx
jmp     short loc_4E3DD6

loc_4E3D89:
test    byte ptr ds:dword_55BD7C+3, 40h
jz      short loc_4E3DD6
cmp     esi, 0Ah
jb      short loc_4E3DA0
jbe     short loc_4E3DCF
cmp     esi, 0Bh
jz      short loc_4E3DBB
jmp     short loc_4E3DD6

loc_4E3DA0:
cmp     esi, 9
jnz     short loc_4E3DD6
mov     eax, offset byte_559A4C
call    sub_4F90CB
mov     eax, offset byte_559A74
call    sub_4F9105
jmp     short loc_4E3D62

loc_4E3DBB:
mov     eax, offset byte_559A4C
call    sub_4F90D9
mov     eax, offset byte_559A74
call    sub_4F9113

loc_4E3DCF:
mov     byte ptr [edi], 6
mov     byte ptr [edi+1], 1

loc_4E3DD6:
xor     eax, eax
add     esp, 8

loc_4E3DDB:
pop     ebp
sub_4E3B97 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4E4BA7
;   ADDITIONAL PARENT FUNCTION sub_4E3712
;   ADDITIONAL PARENT FUNCTION sub_4E3FD4
;   ADDITIONAL PARENT FUNCTION sub_4E4037
;   ADDITIONAL PARENT FUNCTION sub_4E409A
;   ADDITIONAL PARENT FUNCTION sub_4E40FD

loc_4E3DDC:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4E4BA7
jpt_4E3E0E dd offset loc_4E3E15 ; jump table for switch statement
dd offset loc_4E3E2F
dd offset loc_4E3E58
dd offset def_4E296E



sub_4E3DF2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4E4892
mov     dl, [ecx+1]
cmp     dl, 3           ; switch 4 cases
ja      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
and     edx, 0FFh
jmp     jpt_4E3E0E[edx*4] ; switch jump

loc_4E3E15:             ; jumptable 004E3E0E case 0
mov     edx, ds:off_530069

loc_4E3E1B:
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr [ecx+1]
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3E2F:             ; jumptable 004E3E0E case 1
test    byte ptr ds:dword_55BD7C+3, 40h
jz      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
test    byte ptr ds:dword_55BD7C, 0FFh
jz      short loc_4E3E50

loc_4E3E45:
mov     dword ptr [ecx], 0
jmp     def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3

loc_4E3E50:
mov     edx, ds:off_530075
jmp     short loc_4E3E1B

loc_4E3E58:             ; jumptable 004E3E0E case 2
test    byte ptr ds:dword_55BD7C+3, 40h
jz      def_4E296E      ; jumptable 004E296E default case
; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4E3E45
call    sub_4A0E35
call    sub_4A62BD
call    sub_4A056E
call    sub_4A86A4
call    sub_4D8ED6
call    sub_4D8E21
call    sub_4D8EB1
mov     eax, 1FEh
call    sub_47EA91
mov     word ptr ds:dword_6DD9BC, 1
mov     eax, offset sub_4378C0
call    sub_4EEDCA
jmp     def_4E296E      ; jumptable 004E296E default case
sub_4E3DF2 endp         ; jumptable 004E2A06 default case
; jumptable 004E32DF default case
; jumptable 004E3E0E default case, case 3



sub_4E3EB3 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+0Bh]
cmp     al, ds:byte_5F84D4
jnz     short loc_4E3EE8
mov     al, [edx+8]
cmp     al, byte ptr ds:dword_5F88B1+3
jnz     short loc_4E3EE8
mov     al, [edx+9]
cmp     al, byte ptr ds:dword_5F88B5
jnz     short loc_4E3EE8
mov     al, [edx+0Ah]
cmp     al, byte ptr ds:dword_5F88B5+1
jz      short loc_4E3F17

loc_4E3EE8:
mov     eax, ecx
call    sub_4B56DA
mov     eax, ecx
call    sub_4B570A
mov     al, [edx+0Bh]
cmp     al, [ecx+170h]
jz      short loc_4E3F10
mov     edx, 80h
mov     eax, 8
call    sub_4DC979

loc_4E3F10:
mov     byte ptr [ecx+110h], 0

loc_4E3F17:
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4E3EB3 endp




sub_4E3F1F proc near
push    ebx
push    edx
mov     ax, ds:word_5708DE
test    ax, 1008h
jz      short loc_4E3F5F
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
mov     eax, 0C4h
call    sub_42BEB2
mov     eax, 1
pop     edx
pop     ebx
retn

loc_4E3F5F:
xor     eax, eax
pop     edx
pop     ebx
retn
sub_4E3F1F endp




sub_4E3F64 proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
xor     eax, eax
mov     ax, ds:word_5708DE
mov     [esp+10h+var_10], eax
test    byte ptr [esp+10h+var_10+1], 0Ch
jz      short loc_4E3FCD
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4
call    sub_4A0E35
mov     eax, 0FFFFFFFFh
call    sub_4A0595
test    byte ptr [esp+10h+var_10+1], 4
jz      short loc_4E3FB5
mov     bh, [ecx]
dec     bh
mov     [ecx], bh
cmp     bh, 2
jge     short loc_4E3FC3
mov     byte ptr [ecx], 6
jmp     short loc_4E3FC3

loc_4E3FB5:
mov     dh, [ecx]
inc     dh
mov     [ecx], dh
cmp     dh, 6
jle     short loc_4E3FC3
mov     byte ptr [ecx], 2

loc_4E3FC3:
mov     byte ptr [ecx+1], 0
mov     word ptr [ecx+2], 0

loc_4E3FCD:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4E3F64 endp




sub_4E3FD4 proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E3FEC

loc_4E3FE2:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E3FEC:
xor     ecx, ecx

loc_4E3FEE:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E3FE2
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E4034
mov     al, [eax+554h]
test    al, al
jz      short loc_4E4028
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5C[edx*8]
cmp     dl, ds:byte_52DE5C[eax*8]
jge     short loc_4E4034

loc_4E4028:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160

loc_4E4034:
inc     ecx
jmp     short loc_4E3FEE
sub_4E3FD4 endp




sub_4E4037 proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E404F

loc_4E4045:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E404F:
xor     ecx, ecx

loc_4E4051:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E4045
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E4097
mov     al, [eax+554h]
test    al, al
jz      short loc_4E408B
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5D[edx*8]
cmp     dl, ds:byte_52DE5D[eax*8]
jge     short loc_4E4097

loc_4E408B:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160

loc_4E4097:
inc     ecx
jmp     short loc_4E4051
sub_4E4037 endp




sub_4E409A proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E40B2

loc_4E40A8:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E40B2:
xor     ecx, ecx

loc_4E40B4:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E40A8
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E40FA
mov     al, [eax+554h]
test    al, al
jz      short loc_4E40EE
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5E[edx*8]
cmp     dl, ds:byte_52DE5E[eax*8]
jge     short loc_4E40FA

loc_4E40EE:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160

loc_4E40FA:
inc     ecx
jmp     short loc_4E40B4
sub_4E409A endp




sub_4E40FD proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E4115

loc_4E410B:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E4115:
xor     ecx, ecx

loc_4E4117:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E410B
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E415D
mov     al, [eax+554h]
test    al, al
jz      short loc_4E4151
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5F[edx*8]
cmp     dl, ds:byte_52DE5F[eax*8]
jge     short loc_4E415D

loc_4E4151:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160

loc_4E415D:
inc     ecx
jmp     short loc_4E4117
sub_4E40FD endp




sub_4E4160 proc near
push    ecx
add     edx, eax
mov     cl, [edx+554h]
add     eax, ebx
mov     bl, [eax+554h]
mov     [edx+554h], bl
mov     [eax+554h], cl
pop     ecx
retn
sub_4E4160 endp




sub_4E417F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, offset byte_5F8364
mov     eax, 526h
call    sub_47E888
test    eax, eax
jz      short loc_4E419D
mov     esi, 3
jmp     short loc_4E41A2

loc_4E419D:
mov     esi, 2

loc_4E41A2:
mov     byte ptr [edx+5FCh], 0
mov     byte ptr [edx+5FDh], 0
mov     byte ptr [edx+5FEh], 0
mov     byte ptr [edx+5FFh], 0
xor     ecx, ecx

loc_4E41C0:
cmp     ecx, esi
jge     short loc_4E420B
lea     eax, [edx+ecx]
mov     al, [eax+550h]
and     eax, 0FFh
jz      short loc_4E4208
mov     bl, ds:byte_52DE5C[eax*8]
add     [edx+5FCh], bl
mov     bl, ds:byte_52DE5D[eax*8]
add     [edx+5FDh], bl
mov     bl, ds:byte_52DE5E[eax*8]
add     [edx+5FEh], bl
mov     al, ds:byte_52DE5F[eax*8]
add     [edx+5FFh], al

loc_4E4208:
inc     ecx
jmp     short loc_4E41C0

loc_4E420B:
cmp     byte ptr [edx+5FCh], 7
jle     short loc_4E421B
mov     byte ptr [edx+5FCh], 7

loc_4E421B:
cmp     byte ptr [edx+5FDh], 7
jle     short loc_4E422B
mov     byte ptr [edx+5FDh], 7

loc_4E422B:
cmp     byte ptr [edx+5FEh], 7
jle     short loc_4E423B
mov     byte ptr [edx+5FEh], 7

loc_4E423B:
cmp     byte ptr [edx+5FFh], 7
jle     short loc_4E424B
mov     byte ptr [edx+5FFh], 7

loc_4E424B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E417F endp




sub_4E4250 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebp, offset byte_5F8364
mov     eax, 526h
call    sub_47E888
test    eax, eax
jz      short loc_4E4272
mov     edi, 3
jmp     short loc_4E4277

loc_4E4272:
mov     edi, 2

loc_4E4277:
mov     byte ptr [ecx+14h], 0
mov     al, [ecx+14h]
mov     [ecx+11h], al
mov     byte ptr [ecx+1Ch], 0
mov     al, [ecx+1Ch]
mov     [ecx+19h], al
mov     byte ptr [ecx+24h], 0
mov     al, [ecx+24h]
mov     [ecx+21h], al
mov     byte ptr [ecx+2Ch], 0
mov     al, [ecx+2Ch]
mov     [ecx+29h], al
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4E42D6
xor     ebx, ebx

loc_4E42AA:
cmp     ebx, edi
jge     loc_4E3DDB
lea     esi, [ebx+ebp]
movzx   esi, byte ptr [esi+550h]
test    esi, esi
jz      short loc_4E42D3
dec     esi
mov     edx, esi
mov     eax, ecx
call    sub_4E437A
mov     edx, esi
mov     eax, ecx
call    sub_4E43DF

loc_4E42D3:
inc     ebx
jmp     short loc_4E42AA

loc_4E42D6:
test    byte ptr ds:dword_55BD74+2, 1
jz      short loc_4E4325
xor     ebx, ebx

loc_4E42E1:
cmp     ebx, edi
jge     loc_4E3DDB
lea     esi, [ebx+ebp]
movzx   esi, byte ptr [esi+550h]
test    esi, esi
jz      short loc_4E4301
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E437A

loc_4E4301:
mov     edx, ds:dword_55BD78
and     edx, 0FF00h
shr     edx, 8
cmp     ebx, edx
jz      short loc_4E4322
test    esi, esi
jz      short loc_4E4322
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E43DF

loc_4E4322:
inc     ebx
jmp     short loc_4E42E1

loc_4E4325:
xor     ebx, ebx

loc_4E4327:
cmp     ebx, edi
jge     loc_4E3DDB
lea     esi, [ebx+ebp]
movzx   esi, byte ptr [esi+550h]
test    esi, esi
jz      short loc_4E4347
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E437A

loc_4E4347:
mov     edx, ds:dword_55BD78
and     edx, 0FF00h
shr     edx, 8
cmp     ebx, edx
jnz     short loc_4E4369
mov     esi, ds:dword_55BD74
and     esi, 0FF00h
shr     esi, 8

loc_4E4369:
test    esi, esi
jz      short loc_4E4377
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E43DF

loc_4E4377:
inc     ebx
jmp     short loc_4E4327
sub_4E4250 endp




sub_4E437A proc near
push    ecx
mov     ecx, eax
mov     al, ds:byte_52DE64[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+11h], al
mov     al, ds:byte_52DE65[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+19h], al
mov     al, ds:byte_52DE66[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+21h], al
mov     al, ds:byte_52DE67[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+29h], al
cmp     byte ptr [ecx+11h], 46h ; 'F'
jbe     short loc_4E43BF
mov     byte ptr [ecx+11h], 46h ; 'F'

loc_4E43BF:
cmp     byte ptr [ecx+19h], 46h ; 'F'
jbe     short loc_4E43C9
mov     byte ptr [ecx+19h], 46h ; 'F'

loc_4E43C9:
cmp     byte ptr [ecx+21h], 46h ; 'F'
jbe     short loc_4E43D3
mov     byte ptr [ecx+21h], 46h ; 'F'

loc_4E43D3:
cmp     byte ptr [ecx+29h], 28h ; '('
jbe     short loc_4E43DD
mov     byte ptr [ecx+29h], 28h ; '('

loc_4E43DD:
pop     ecx
retn
sub_4E437A endp




sub_4E43DF proc near
push    ecx
mov     ecx, eax
mov     al, ds:byte_52DE64[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+14h], al
mov     al, ds:byte_52DE65[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+1Ch], al
mov     al, ds:byte_52DE66[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+24h], al
mov     al, ds:byte_52DE67[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+2Ch], al
cmp     byte ptr [ecx+14h], 46h ; 'F'
jbe     short loc_4E4424
mov     byte ptr [ecx+14h], 46h ; 'F'

loc_4E4424:
cmp     byte ptr [ecx+1Ch], 46h ; 'F'
jbe     short loc_4E442E
mov     byte ptr [ecx+1Ch], 46h ; 'F'

loc_4E442E:
cmp     byte ptr [ecx+24h], 46h ; 'F'
jbe     short loc_4E4438
mov     byte ptr [ecx+24h], 46h ; 'F'

loc_4E4438:
cmp     byte ptr [ecx+2Ch], 28h ; '('
jbe     short loc_4E4442
mov     byte ptr [ecx+2Ch], 28h ; '('

loc_4E4442:
pop     ecx
retn
sub_4E43DF endp




sub_4E4444 proc near
push    ebx
push    ecx
push    esi
mov     ebx, edx
test    edx, edx
jge     short loc_4E4483
mov     byte ptr [eax+16h], 0
mov     dl, [eax+16h]
mov     [eax+11h], dl
mov     byte ptr [eax+1Eh], 0
mov     dl, [eax+1Eh]
mov     [eax+19h], dl
mov     byte ptr [eax+26h], 0
mov     dl, [eax+26h]
mov     [eax+21h], dl
mov     byte ptr [eax+2Eh], 0
mov     dl, [eax+2Eh]
mov     [eax+29h], dl
mov     byte ptr [eax+36h], 0
mov     dl, [eax+36h]
mov     [eax+31h], dl
pop     esi
pop     ecx
pop     ebx
retn

loc_4E4483:
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ecx, esi
shl     ecx, 2
add     esi, ecx
shl     esi, 2
mov     ecx, edx
shl     ecx, 3
add     ecx, offset byte_5F8364
mov     ebx, [ecx+5F1h]
sar     ebx, 18h
mov     bl, ds:byte_5506D8[esi+ebx]
mov     [eax+11h], bl
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
mov     esi, [ecx+5F2h]
sar     esi, 18h
mov     bl, ds:byte_5506DC[esi+ebx*4]
mov     [eax+19h], bl
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
mov     esi, [ecx+5F3h]
sar     esi, 18h
mov     bl, ds:byte_5506E0[esi+ebx*4]
mov     [eax+21h], bl
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
mov     esi, [ecx+5F4h]
sar     esi, 18h
mov     bl, ds:byte_5506E4[esi+ebx*4]
mov     [eax+29h], bl
xor     ebx, ebx
mov     bx, ds:word_5509F6[edx*2]
mov     edx, ebx
shl     edx, 2
add     edx, ebx
mov     ecx, [ecx+5F5h]
sar     ecx, 18h
mov     dl, ds:byte_5506E8[ecx+edx*4]
mov     [eax+31h], dl
cmp     byte ptr [eax+11h], 0FFh
jnz     short loc_4E4555
mov     byte ptr [eax+11h], 58h ; 'X'
mov     byte ptr [eax+16h], 1
jmp     short loc_4E4559

loc_4E4555:
mov     byte ptr [eax+16h], 0

loc_4E4559:
cmp     byte ptr [eax+19h], 0FFh
jnz     short loc_4E4569
mov     byte ptr [eax+19h], 58h ; 'X'
mov     byte ptr [eax+1Eh], 1
jmp     short loc_4E456D

loc_4E4569:
mov     byte ptr [eax+1Eh], 0

loc_4E456D:
cmp     byte ptr [eax+21h], 0FFh
jnz     short loc_4E457D
mov     byte ptr [eax+21h], 58h ; 'X'
mov     byte ptr [eax+26h], 1
jmp     short loc_4E4581

loc_4E457D:
mov     byte ptr [eax+26h], 0

loc_4E4581:
cmp     byte ptr [eax+29h], 0FFh
jnz     short loc_4E4591
mov     byte ptr [eax+29h], 58h ; 'X'
mov     byte ptr [eax+2Eh], 1
jmp     short loc_4E4595

loc_4E4591:
mov     byte ptr [eax+2Eh], 0

loc_4E4595:
cmp     byte ptr [eax+31h], 0FFh
jnz     short loc_4E45A7
mov     byte ptr [eax+31h], 58h ; 'X'
mov     byte ptr [eax+36h], 1
pop     esi
pop     ecx
pop     ebx
retn

loc_4E45A7:
mov     byte ptr [eax+36h], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4E4444 endp




sub_4E45AF proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     edi, eax
mov     esi, edx
mov     [esp+28h+var_28], ecx
mov     ecx, ds:dword_77E6DC
mov     ebp, ecx
lea     edx, [ecx+38h]
mov     [ecx], edx
mov     dword ptr [ecx+4], 2C808080h
mov     eax, ecx
call    sub_4F87F0
mov     [ecx+18h], di
mov     eax, edi
mov     [ecx+8], ax
add     eax, ebx
mov     [esp+28h+var_24], eax
add     eax, 6
mov     [esp+28h+var_20], eax
mov     [ecx+20h], ax
mov     [ecx+10h], ax
mov     eax, [esp+28h+var_28]
add     eax, eax
add     eax, esi
mov     [esp+28h+var_1C], eax
mov     [ecx+12h], ax
mov     [ecx+0Ah], ax
add     eax, 5
mov     [esp+28h+var_18], eax
mov     [ecx+22h], ax
mov     [ecx+1Ah], ax
mov     word ptr [ecx+16h], 0Ch
mov     word ptr [ecx+0Eh], 3E83h
mov     eax, [esp+28h+var_28]
shl     eax, 3
mov     [esp+28h+var_10], eax
add     eax, 90h
shl     eax, 8
mov     [esp+28h+var_14], eax
or      al, 60h
mov     [ecx+0Ch], ax
mov     eax, [esp+28h+var_14]
or      al, 61h
mov     [ecx+14h], ax
mov     eax, [esp+28h+var_10]
add     eax, 95h
shl     eax, 8
mov     [esp+28h+var_10], eax
or      al, 60h
mov     [ecx+1Ch], ax
mov     eax, [esp+28h+var_10]
or      al, 61h
mov     [ecx+24h], ax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
lea     ecx, [edx+38h]
mov     [edx], ecx
mov     eax, [esp+28h+var_20]
mov     [edx+18h], ax
mov     [edx+8], ax
mov     eax, [esp+28h+var_24]
add     eax, 0Ah
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     eax, [esp+28h+var_1C]
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     eax, [esp+28h+var_18]
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     word ptr [edx+16h], 0Ch
mov     word ptr [edx+0Eh], 3E83h
mov     eax, [esp+28h+var_14]
or      al, 6Fh
mov     [edx+0Ch], ax
mov     eax, [esp+28h+var_14]
or      al, 73h
mov     [edx+14h], ax
mov     eax, [esp+28h+var_10]
or      al, 6Fh
mov     [edx+1Ch], ax
mov     eax, [esp+28h+var_10]
or      al, 73h
mov     [edx+24h], ax
cmp     [esp+28h+var_28], 0
jnz     short loc_4E473F
cmp     esi, 46h ; 'F'
jz      short loc_4E46FA
cmp     ebx, 46h ; 'F'
jz      short loc_4E4704

loc_4E46FA:
cmp     esi, 46h ; 'F'
jnz     short loc_4E473F
cmp     ebx, 28h ; '('
jnz     short loc_4E473F

loc_4E4704:
lea     eax, [ecx+38h]
mov     [ecx], eax
mov     dword ptr [ecx+4], 64808080h
cmp     ebx, 46h ; 'F'
jnz     short loc_4E471C
mov     eax, 1
jmp     short loc_4E471E

loc_4E471C:
xor     eax, eax

loc_4E471E:
imul    eax, 0Eh
add     edi, 0Ah
add     edi, eax
mov     [ecx+8], di
mov     [ecx+0Ah], si
mov     dword ptr [ecx+0Ch], 3E82F028h
mov     dword ptr [ecx+10h], 60018h
add     ecx, 38h ; '8'

loc_4E473F:
lea     ebx, [ecx-38h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ebp
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4E45AF endp




sub_4E475E proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, eax
mov     esi, edx
mov     [esp+18h+var_18], ecx
mov     ecx, ds:dword_77E6DC
mov     ebp, ecx
lea     edx, [ecx+38h]
mov     [ecx], edx
mov     dword ptr [ecx+4], 2C808080h
mov     eax, ecx
call    sub_4F87F0
mov     [ecx+18h], di
mov     eax, edi
mov     [ecx+8], ax
add     eax, ebx
mov     [esp+18h+var_14], eax
mov     [ecx+20h], ax
mov     [ecx+10h], ax
mov     [ecx+12h], si
mov     eax, esi
mov     [ecx+0Ah], ax
add     eax, 8
mov     [esp+18h+var_10], eax
mov     [ecx+22h], ax
mov     [ecx+1Ah], ax
mov     word ptr [ecx+16h], 0Ch
mov     word ptr [ecx+0Eh], 3E83h
mov     word ptr [ecx+0Ch], 9048h
mov     word ptr [ecx+14h], 9049h
mov     word ptr [ecx+1Ch], 9848h
mov     word ptr [ecx+24h], 9849h
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
lea     eax, [edx+38h]
mov     [edx], eax
mov     ecx, [esp+18h+var_14]
mov     [edx+18h], cx
mov     [edx+8], cx
add     ecx, 4
mov     [edx+20h], cx
mov     [edx+10h], cx
mov     [edx+12h], si
mov     ecx, esi
mov     [edx+0Ah], cx
mov     ecx, [esp+18h+var_10]
mov     [edx+22h], cx
mov     [edx+1Ah], cx
mov     word ptr [edx+16h], 0Ch
mov     word ptr [edx+0Eh], 3E83h
mov     word ptr [edx+0Ch], 904Ch
mov     word ptr [edx+14h], 9050h
mov     word ptr [edx+1Ch], 984Ch
mov     word ptr [edx+24h], 9850h
mov     ecx, eax
cmp     [esp+18h+var_18], 0
jz      short loc_4E4873
cmp     ebx, 58h ; 'X'
jnz     short loc_4E4873
lea     ecx, [eax+38h]
mov     [eax], ecx
mov     dword ptr [eax+4], 64808080h
add     edi, 18h
mov     [eax+8], di
mov     [eax+0Ah], si
mov     dword ptr [eax+0Ch], 3E82F828h
mov     dword ptr [eax+10h], 80028h

loc_4E4873:
lea     ebx, [ecx-38h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ebp
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4E475E endp




sub_4E4892 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, ds:dword_5F8412
sar     ebp, 10h
dec     ebp
sar     ebp, 4
mov     ecx, dword ptr ds:unk_5F83D0
sar     ecx, 10h
mov     esi, ds:dword_77E6DC
mov     [esp+1Ch+var_1C], esi
mov     dword ptr [esi], 2000000h
mov     dword ptr [esi+4], 0E100000Dh
mov     dword ptr [esi+8], 0
lea     eax, [esi+14h]
mov     [esi], eax
xor     ebx, ebx
mov     esi, eax
mov     edi, 10h

loc_4E48DC:
cmp     ebx, ebp
jg      short loc_4E493E
lea     eax, [esi+14h]
mov     [esi], eax
mov     dword ptr [esi+4], 64808080h
mov     edx, ebx
mov     eax, ebx
shl     eax, 2
add     eax, ebx
add     eax, 31h ; '1'
or      eax, 240000h
mov     [esi+8], eax
mov     dword ptr [esi+10h], 80008h
shl     edx, 4
cmp     ecx, edx
jle     short loc_4E4930
lea     eax, [ecx-10h]
cmp     eax, edx
jg      short loc_4E4922
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    edi
test    edx, edx
jnz     short loc_4E4929

loc_4E4922:
mov     edx, 3E75B870h
jmp     short loc_4E4935

loc_4E4929:
mov     edx, 3E75B878h
jmp     short loc_4E4935

loc_4E4930:
mov     edx, 3E75B880h

loc_4E4935:
mov     [esi+0Ch], edx
add     esi, 14h
inc     ebx
jmp     short loc_4E48DC

loc_4E493E:
mov     ebx, ds:dword_77E7A0
mov     ecx, 306h
mov     edx, 2400A4h
mov     eax, esi
call    sub_4E49C7
mov     esi, eax
mov     ecx, 1A5E0h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ecx, 2
mov     ebx, eax
mov     edx, 240106h
mov     eax, esi
call    sub_4E49C7
mov     esi, eax
mov     ecx, 708h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ecx, 3Ch ; '<'
xor     edx, edx
div     ecx
mov     ecx, 2
mov     ebx, edx
mov     edx, 24011Ah
mov     eax, esi
call    sub_4E49C7
mov     ecx, eax
lea     ebx, [eax-14h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, [esp+1Ch+var_1C]
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 4
jmp     loc_4E3DDB
sub_4E4892 endp




sub_4E49C7 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     [esp+14h+var_14], edx
mov     [esp+14h+var_10], ecx
and     ecx, 0FFh

loc_4E49DC:
dec     ecx
test    ecx, ecx
jl      loc_4E4A59
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     eax, [esp+14h+var_10]
and     eax, 0FFh
dec     eax
cmp     ecx, eax
jnz     short loc_4E4A08
test    byte ptr [esp+14h+var_10+1], 2
jz      short loc_4E4A13

loc_4E4A08:
test    ebx, ebx
jnz     short loc_4E4A13
test    byte ptr [esp+14h+var_10+1], 1
jnz     short loc_4E4A47

loc_4E4A13:
lea     edi, [esi+14h]
mov     [esi], edi
mov     dword ptr [esi+4], 64808080h
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     ebp, [esp+14h+var_14]
add     ebp, eax
mov     [esi+8], ebp
mov     dword ptr [esi+10h], 80008h
mov     eax, edx
shl     eax, 3
add     eax, 60h ; '`'
or      eax, 3E75B000h
mov     [esi+0Ch], eax
mov     esi, edi

loc_4E4A47:
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     ebx, eax
jmp     short loc_4E49DC

loc_4E4A59:
mov     eax, esi
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn
sub_4E49C7 endp




sub_4E4A62 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, ds:dword_77E6DC
mov     ebp, esi
mov     ebx, eax
shl     ebx, 3
add     ebx, offset byte_5F8364
mov     ebx, [ebx+5F8h]
sar     ebx, 10h
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4EE60F
mov     edi, eax
cmp     eax, 7FFFh
jge     loc_4E3DDB
mov     dword ptr [esi], 2000000h
mov     dword ptr [esi+4], 0E100000Ch
mov     dword ptr [esi+8], 0
lea     eax, [esi+14h]
lea     edx, [esi+28h]
mov     [esi], edx
mov     dword ptr [eax+4], 64808080h
mov     dword ptr [eax+8], 8C00D1h
mov     dword ptr [eax+10h], 80006h
mov     dword ptr [eax+0Ch], 3E82F040h
add     eax, 14h
mov     ecx, 4
mov     edx, 8C00B4h
call    sub_4E4B17
mov     ecx, 4
mov     ebx, edi
mov     edx, 8C00D8h
call    sub_4E4B17
mov     esi, eax
lea     ebx, [eax-14h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ebp
call    sub_4F87AF
mov     ds:dword_77E6DC, esi
jmp     loc_4E3DDB
sub_4E4A62 endp




sub_4E4B17 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     [esp+14h+var_14], edx
mov     [esp+14h+var_10], ecx
and     ecx, 0FFh

loc_4E4B2C:
dec     ecx
test    ecx, ecx
jl      loc_4E4A59
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     edi, edx
mov     eax, [esp+14h+var_10]
and     eax, 0FFh
dec     eax
cmp     ecx, eax
jnz     short loc_4E4B5A
test    byte ptr [esp+14h+var_10+1], 2
jz      short loc_4E4B65

loc_4E4B5A:
test    ebx, ebx
jnz     short loc_4E4B65
test    byte ptr [esp+14h+var_10+1], 1
jnz     short loc_4E4B95

loc_4E4B65:
lea     ebp, [esi+14h]
mov     [esi], ebp
mov     dword ptr [esi+4], 64808080h
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     edx, [esp+14h+var_14]
add     edx, eax
mov     [esi+8], edx
mov     dword ptr [esi+10h], 80006h
shl     edi, 3
or      edi, 3E82C000h
mov     [esi+0Ch], edi
mov     esi, ebp

loc_4E4B95:
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     ebx, eax
jmp     short loc_4E4B2C
sub_4E4B17 endp




sub_4E4BA7 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     eax, ds:dword_77E6DC
mov     [esp+1Ch+var_1C], eax
mov     dword ptr [eax], 2000000h
mov     dword ptr [eax+4], 0E100000Dh
mov     dword ptr [eax+8], 0
lea     edx, [eax+14h]
mov     [eax], edx
xor     edx, edx
mov     [esp+1Ch+var_18], edx
mov     eax, [eax]
jmp     short loc_4E4BE8

loc_4E4BDA:
mov     ebx, [esp+1Ch+var_18]
inc     ebx
mov     [esp+1Ch+var_18], ebx
cmp     ebx, 4
jg      short loc_4E4C44

loc_4E4BE8:
xor     edx, edx

loc_4E4BEA:
lea     ecx, [eax+14h]
mov     [eax], ecx
mov     dword ptr [eax+4], 64808080h
mov     edi, edx
shl     edi, 6
mov     bx, ds:word_77EAB6
xor     bh, bh
and     bl, 3Fh
and     ebx, 0FFFFh
sub     edi, 40h ; '@'
add     edi, ebx
and     edi, 0FFFFh
mov     esi, [esp+1Ch+var_18]
shl     esi, 6
sub     esi, 40h ; '@'
add     ebx, esi
shl     ebx, 10h
or      edi, ebx
mov     [eax+8], edi
mov     dword ptr [eax+0Ch], 3E7788C0h
mov     dword ptr [eax+10h], 400040h
mov     eax, ecx
inc     edx
cmp     edx, 6
jle     short loc_4E4BEA
jmp     short loc_4E4BDA

loc_4E4C44:
lea     ebx, [ecx-14h]
mov     eax, ds:dword_77EA74
add     eax, 8Ch
mov     edx, [esp+1Ch+var_1C]
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 8
jmp     loc_4E3DDC
sub_4E4BA7 endp




sub_4E4C67 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 3
jnz     short loc_4E4C86
cmp     byte ptr [ecx+0Ah], 4
jnz     short loc_4E4C86
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Ch
call    sub_4D89E4

loc_4E4C86:
mov     edx, [ecx+171h]
sar     edx, 18h
test    dl, 0C0h
jz      loc_4E4D2F
and     edx, 0C0h
cmp     edx, 40h ; '@'
jnz     loc_4E4D2F
cmp     byte ptr [ecx+170h], 4
jnz     short loc_4E4CC9
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4CC9
lea     edx, [ecx+4C8h]
mov     eax, 123h
call    sub_4D8BC3

loc_4E4CC9:
cmp     byte ptr [ecx+170h], 7
jnz     short loc_4E4CEB
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4CEB
lea     edx, [ecx+4C8h]
mov     eax, 12Bh
call    sub_4D8BC3

loc_4E4CEB:
cmp     byte ptr [ecx+170h], 0Ch
jnz     short loc_4E4D0D
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4D0D
lea     edx, [ecx+4C8h]
mov     eax, 134h
call    sub_4D8BC3

loc_4E4D0D:
cmp     byte ptr [ecx+170h], 0Dh
jnz     short loc_4E4D2F
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4D2F
lea     edx, [ecx+4C8h]
mov     eax, 136h
call    sub_4D8BC3

loc_4E4D2F:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E4C67 endp




sub_4E4D33 proc near
push    edx
xor     edx, edx
mov     ds:dword_55DD0C, edx
mov     ds:dword_55DD10, edx
cmp     byte ptr ds:dword_77E7D5+1, 9
jge     short loc_4E4D55
xor     dh, dh
mov     byte ptr ds:dword_55DD10, dh
pop     edx
retn

loc_4E4D55:
mov     byte ptr ds:dword_55DD10, 1
pop     edx
retn
sub_4E4D33 endp




sub_4E4D5E proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
mov     dx, ds:word_5708DE
mov     ecx, offset dword_55DD0C
mov     al, byte ptr ds:dword_55DD0C
cmp     al, 1
jb      short loc_4E4D8B
jbe     loc_4E4E42
cmp     al, 2
jz      loc_4E4E75
jmp     loc_4E4E86

loc_4E4D8B:
test    al, al
jnz     loc_4E4E86
call    sub_4E4F14
call    sub_4E4E8C
test    dx, 1009h
jz      short loc_4E4DBE
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4E4DBE:
test    dx, 4828h
jnz     short loc_4E4DCC
mov     eax, 1
jmp     short loc_4E4DCE

loc_4E4DCC:
xor     eax, eax

loc_4E4DCE:
test    dx, 480h
jnz     short loc_4E4DDC
mov     ebx, 1
jmp     short loc_4E4DDE

loc_4E4DDC:
xor     ebx, ebx

loc_4E4DDE:
cmp     eax, ebx
jz      loc_4E4E86
test    dx, 480h
jz      short loc_4E4E0C
mov     al, [ecx+5]
dec     al
mov     [ecx+5], al
test    al, al
jge     short loc_4E4E2D
cmp     byte ptr [ecx+4], 0
jle     short loc_4E4E03
mov     al, 1
jmp     short loc_4E4E05

loc_4E4E03:
xor     al, al

loc_4E4E05:
inc     al
mov     [ecx+5], al
jmp     short loc_4E4E2D

loc_4E4E0C:
cmp     byte ptr [ecx+4], 0
jle     short loc_4E4E19
mov     eax, 1
jmp     short loc_4E4E1B

loc_4E4E19:
xor     eax, eax

loc_4E4E1B:
inc     byte ptr [ecx+5]
mov     edx, [ecx+2]
sar     edx, 18h
inc     eax
cmp     edx, eax
jle     short loc_4E4E2D
mov     byte ptr [ecx+5], 0

loc_4E4E2D:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4

loc_4E4E3E:
inc     byte ptr [ecx]
jmp     short loc_4E4E86

loc_4E4E42:
cmp     byte ptr ds:dword_55DD10, 0
jnz     short loc_4E4E5C
mov     eax, ds:dword_55DD0C+2
sar     eax, 18h
mov     eax, ds:dword_550A12[eax*2]
jmp     short loc_4E4E6B

loc_4E4E5C:
mov     eax, ds:dword_55DD0C+2
sar     eax, 18h
mov     eax, ds:dword_550A16[eax*2]

loc_4E4E6B:
sar     eax, 10h
call    sub_42BEB2
jmp     short loc_4E4E3E

loc_4E4E75:
call    sub_42C353
test    eax, eax
jnz     short loc_4E4E86
xor     ah, ah
mov     byte ptr ds:dword_55DD0C, ah

loc_4E4E86:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4E4D5E endp




sub_4E4E8C proc near
push    edx
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     word ptr [edx+18h], 20h ; ' '
mov     ax, [edx+18h]
mov     [edx+8], ax
mov     word ptr [edx+20h], 11Fh
mov     ax, [edx+20h]
mov     [edx+10h], ax
mov     word ptr [edx+12h], 0
mov     ax, [edx+12h]
mov     [edx+0Ah], ax
mov     word ptr [edx+22h], 0F0h
mov     ax, [edx+22h]
mov     [edx+1Ah], ax
mov     word ptr [edx+16h], 8Ch
mov     word ptr [edx+0Eh], 3E80h
mov     word ptr [edx+0Ch], 0
mov     word ptr [edx+14h], 0FFh
mov     word ptr [edx+1Ch], 0F000h
mov     word ptr [edx+24h], 0F0FFh
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
pop     edx
retn
sub_4E4E8C endp




sub_4E4F14 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     eax, offset dword_77E784
mov     dl, ds:byte_77E7D4
cmp     dl, 17h
jb      short loc_4E4F47
jbe     loc_4E503C
cmp     dl, 1Ch
jb      short loc_4E4F40
jbe     short loc_4E4F7A
cmp     dl, 1Dh
jz      loc_4E503C
jmp     short loc_4E4F81

loc_4E4F40:
cmp     dl, 1Bh
jz      short loc_4E4F5A
jmp     short loc_4E4F81

loc_4E4F47:
cmp     dl, 0Fh
jb      short loc_4E4F55
jbe     short loc_4E4F6C
cmp     dl, 13h
jz      short loc_4E4F73
jmp     short loc_4E4F81

loc_4E4F55:
cmp     dl, 3
jnz     short loc_4E4F81

loc_4E4F5A:
cmp     byte ptr [eax+51h], 3
jge     short loc_4E4F65
mov     eax, [eax+4Eh]
jmp     short loc_4E4F84

loc_4E4F65:
mov     eax, 3
jmp     short loc_4E4F87

loc_4E4F6C:
mov     eax, 6
jmp     short loc_4E4F87

loc_4E4F73:
mov     eax, 0Ah
jmp     short loc_4E4F87

loc_4E4F7A:
mov     eax, 8
jmp     short loc_4E4F87

loc_4E4F81:
mov     eax, [eax+4Dh]

loc_4E4F84:
sar     eax, 18h

loc_4E4F87:
mov     esi, ds:off_550A1C[eax*4]
sar     esi, 10h
add     esi, 20h ; ' '
mov     ebx, ds:(off_550A1C+2)[eax*4]
sar     ebx, 10h
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
xor     ecx, ecx
mov     cx, ax
shl     ecx, 4
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     eax, esi
sub     eax, 8
mov     [edx+18h], ax
mov     [edx+8], ax
add     esi, 7
mov     [edx+20h], si
mov     [edx+10h], si
mov     eax, ebx
sub     eax, 8
mov     [edx+12h], ax
mov     [edx+0Ah], ax
add     ebx, 7
mov     [edx+22h], bx
mov     [edx+1Ah], bx
mov     word ptr [edx+16h], 8Ch
mov     word ptr [edx+0Eh], 3E80h
mov     eax, ecx
or      ah, 0F0h
mov     [edx+0Ch], ax
mov     eax, ecx
add     eax, 0Fh
mov     ebx, eax
or      bh, 0F0h
mov     [edx+14h], bx
or      ch, 0FFh
mov     [edx+1Ch], cx
or      ah, 0FFh
mov     [edx+24h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E503C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E4F14 endp




sub_4E5041 proc near
push    ebx
push    edx
mov     ebx, 1000h
xor     edx, edx
mov     eax, offset unk_55E514
call    memset_
mov     edx, offset byte_55FDB4
mov     eax, offset dword_55FD14
call    sub_4EECF9
pop     edx
pop     ebx
retn
sub_4E5041 endp




sub_4E5066 proc near
xor     eax, eax
mov     al, byte ptr ds:dword_55FD14
call    ds:funcs_4E506D[eax*4]
mov     eax, ds:dword_55FD1A
sar     eax, 10h
retn
sub_4E5066 endp




sub_4E507D proc near
push    ebx
push    ecx
push    edx
push    ebp
mov     al, byte ptr ds:dword_55FD14+1
test    al, al
jbe     short loc_4E5092
cmp     al, 1
jz      loc_4E5121

loc_4E5092:
mov     ds:dword_55FD30, 180h
xor     ecx, ecx
mov     ds:dword_55FD34, ecx
mov     ds:dword_55FD38, 80h
mov     ds:dword_55FD20, 40h ; '@'
mov     ds:dword_55FD24, 0FFFFFF6Ah
xor     ebp, ebp
mov     ds:dword_55FD28, ecx
mov     ds:dword_55F51C, ecx
mov     ds:dword_55F514, 112003h
mov     ecx, 30000h
mov     ds:dword_55F518, ecx
mov     ds:dword_55DD1C, ebp
mov     ds:dword_55DD14, 52003h
mov     ds:dword_55DD18, ecx
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     eax, ds:dword_550D63[eax]
sar     eax, 18h
inc     byte ptr ds:dword_55FD14+1
call    sub_4E7831
call    sub_4D8ED6
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5121:
mov     ah, ds:byte_77EAB8
test    ah, ah
jnz     short loc_4E5148
mov     byte ptr ds:dword_55FD14+1, ah
add     byte ptr ds:dword_55FD14, al
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000002Bh
call    sub_4D89E4

loc_4E5148:
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_4E507D endp




sub_4E514D proc near
push    ebx
push    edx
cmp     byte ptr ds:dword_55FD14+1, 0
jnz     short loc_4E5191
mov     eax, 24h ; '$'
call    sub_47E888
test    eax, eax
jz      short loc_4E517C
mov     ds:dword_55FD14, 5
mov     eax, 24h ; '$'
call    sub_47EA91
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E517C:
inc     byte ptr ds:dword_55FD14+1
mov     ebx, 1
mov     edx, offset unk_75354C
call    sub_4A0CDD

loc_4E5191:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E7924 ; jumptable 004E7924 default case
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
mov     eax, ds:dword_550DBC[eax*4]
mov     ds:dword_55FD14, eax

def_4E7924:             ; jumptable 004E7924 default case
call    sub_4E521C
pop     edx
pop     ebx
retn
sub_4E514D endp




sub_4E51B8 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+1
cmp     al, 1
jb      short loc_4E51CB
jbe     short loc_4E51E8
cmp     al, 2
jz      short loc_4E51FA
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E51CB:
test    al, al
jnz     short def_4E7924 ; jumptable 004E7924 default case
mov     ebx, 1Ch
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr ds:dword_55FD14+1
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E51E8:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E7924 ; jumptable 004E7924 default case
inc     al
mov     byte ptr ds:dword_55FD14+1, al
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E51FA:
mov     word ptr ds:dword_55FD1A+2, 1
jmp     short def_4E7924 ; jumptable 004E7924 default case
sub_4E51B8 endp




sub_4E5205 proc near
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short sub_4E521C
movsx   ax, ds:byte_55FDB4
mov     word ptr ds:dword_55FD1A+2, ax
sub_4E5205 endp




sub_4E521C proc near
push    ebx
push    edx
call    sub_4E5292
call    sub_4E5350
call    sub_4E525B
call    sub_4E527E
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ebx, offset unk_7764A4
add     ebx, eax
lea     edx, [ebx+3FFCh]
mov     eax, ds:dword_77EA74
add     eax, 80h
call    sub_4F87AF
pop     edx
pop     ebx
retn
sub_4E521C endp




sub_4E525B proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_55FD38
mov     ebx, ds:dword_55FD34
mov     edx, ds:dword_55FD30
mov     eax, offset dword_55FD20
call    sub_4E7E66
pop     edx
pop     ecx
pop     ebx
retn
sub_4E525B endp




sub_4E527E proc near
mov     eax, offset dword_55F514
call    sub_4EB5D4
mov     eax, offset dword_55DD14
jmp     sub_4EB5D4
sub_4E527E endp




sub_4E5292 proc near
push    edx
xor     edx, edx
mov     dl, byte ptr ds:dword_55F51C
mov     eax, offset dword_55F514
call    ds:funcs_4E52A0[edx*4]
pop     edx
retn
sub_4E5292 endp




sub_4E52A9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     word ptr [eax+2Ch], 0FFD0h
mov     ax, [eax+2Ch]
mov     [ecx+14h], ax
mov     word ptr [ecx+2Eh], 0FFB8h
mov     ax, [ecx+2Eh]
mov     [ecx+16h], ax
mov     word ptr [ecx+30h], 22h ; '"'
mov     ax, [ecx+30h]
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     word ptr [ecx+58h], 0
mov     ax, [ecx+58h]
mov     [ecx+54h], ax
mov     word ptr [ecx+56h], 0FEB0h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
sub_4E52A9 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_19]


; Attributes: thunk

sub_4E534B proc near
jmp     sub_4DEADD
sub_4E534B endp




sub_4E5350 proc near
push    edx
xor     edx, edx
mov     dl, byte ptr ds:dword_55DD1C
mov     eax, offset dword_55DD14
call    ds:funcs_4E535E[edx*4]
pop     edx
retn
sub_4E5350 endp




sub_4E5367 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     word ptr [eax+2Ch], 40h ; '@'
mov     ax, [eax+2Ch]
mov     [ecx+14h], ax
mov     word ptr [ecx+2Eh], 0
mov     ax, [ecx+2Eh]
mov     [ecx+16h], ax
mov     word ptr [ecx+30h], 60h ; '`'
mov     ax, [ecx+30h]
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     word ptr [ecx+56h], 0
mov     ax, [ecx+56h]
mov     [ecx+58h], ax
mov     [ecx+54h], ax
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
xor     edx, edx
mov     word ptr ds:dword_55FDA8, dx
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5367 endp




sub_4E540D proc near
push    ebx
push    edx
cmp     word ptr ds:dword_55FDA8, 0
jz      short loc_4E5435
mov     edx, ds:dword_55FDA4+2
sar     edx, 10h
xor     ebx, ebx
call    sub_4DE96B
xor     ebx, ebx
mov     word ptr ds:dword_55FDA8, bx
pop     edx
pop     ebx
retn

loc_4E5435:
call    sub_4DEADD
pop     edx
pop     ebx
sub_4E540D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_20]
jpt_4E5482 dd offset loc_4E5489 ; jump table for switch statement
dd offset loc_4E5522
dd offset loc_4E5545
dd offset loc_4E556A
dd offset loc_4E5580
dd offset loc_4E558A
dd offset loc_4E5594
dd offset loc_4E559E
dd offset def_4E5482
dd offset loc_4E55C1
dd offset loc_4E562E
dd offset loc_4E5643



sub_4E546D proc near
push    ebx
push    edx
push    esi
push    edi
mov     al, byte ptr ds:dword_55FD14+1
cmp     al, 0Bh         ; switch 12 cases
ja      def_4E5482      ; jumptable 004E5482 default case, case 8
xor     edx, edx
mov     dl, al
jmp     jpt_4E5482[edx*4] ; switch jump

loc_4E5489:             ; jumptable 004E5482 case 0
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, ds:dword_55DD26
sar     edx, 10h
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_55DD26+2
sar     edx, 10h
sub     edx, 76h ; 'v'
mov     ds:dword_55FD5C, edx
mov     edx, ds:dword_55DD2A
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     ds:dword_55FD68, 100h
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD6C, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD70, edx

loc_4E550D:
mov     ds:word_55FD1E, 10h
inc     al

loc_4E5518:
mov     byte ptr ds:dword_55FD14+1, al
jmp     loc_4E564D

loc_4E5522:             ; jumptable 004E5482 case 1
mov     di, ds:word_55FD1E
dec     di
mov     ds:word_55FD1E, di

loc_4E5532:
jnz     short loc_4E553B
inc     al
mov     byte ptr ds:dword_55FD14+1, al

loc_4E553B:
call    sub_4E5661
jmp     loc_4E564D

loc_4E5545:             ; jumptable 004E5482 case 2
mov     ebx, 5
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8

def_4E5482:             ; jumptable 004E5482 default case, case 8
inc     byte ptr ds:dword_55FD14+1
jmp     loc_4E564D

loc_4E556A:             ; jumptable 004E5482 case 3
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_4E564D
mov     al, byte ptr ds:dword_55BD7C
add     al, 4
jmp     short loc_4E5518

loc_4E5580:             ; jumptable 004E5482 case 4
call    sub_4E57D9
jmp     loc_4E564D

loc_4E558A:             ; jumptable 004E5482 case 5
call    sub_4E5849
jmp     loc_4E564D

loc_4E5594:             ; jumptable 004E5482 case 6
call    sub_4E713D
jmp     loc_4E564D

loc_4E559E:             ; jumptable 004E5482 case 7
cmp     ds:byte_77E7D4, 13h
jnz     short loc_4E55B7
cmp     byte ptr ds:dword_77E7D5, 0Bh
jnz     short loc_4E55B7
add     al, 2
jmp     loc_4E5518

loc_4E55B7:
call    sub_4E73DD
jmp     loc_4E564D

loc_4E55C1:             ; jumptable 004E5482 case 9
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     ds:dword_55FD58, 40h ; '@'
mov     ds:dword_55FD5C, 0FFFFFF6Ah
xor     esi, esi
mov     ds:dword_55FD60, esi
mov     ds:dword_55FD68, 180h
mov     ds:dword_55FD6C, esi
mov     ds:dword_55FD70, 80h
jmp     loc_4E550D

loc_4E562E:             ; jumptable 004E5482 case 10
mov     dx, ds:word_55FD1E
dec     dx
mov     ds:word_55FD1E, dx
jmp     loc_4E5532

loc_4E5643:             ; jumptable 004E5482 case 11
mov     ds:dword_55FD14, 1

loc_4E564D:
cmp     word ptr ds:dword_55FD1A+2, 0
jl      short loc_4E565C

def_4E7642:             ; jumptable 004E7642 default case, cases 5-8
call    sub_4E521C

loc_4E565C:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4E546D endp




sub_4E5661 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
mov     edx, 10h
sub     edx, eax
mov     ebx, ds:dword_55FD58
imul    ebx, edx
mov     ecx, ds:dword_55FD3C
imul    ecx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD20, ecx
mov     ecx, ds:dword_55FD5C
imul    ecx, edx
mov     ebx, ds:dword_55FD40
imul    ebx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD24, ecx
mov     ebx, ds:dword_55FD60
imul    ebx, edx
mov     ecx, ds:dword_55FD44
imul    ecx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD28, ecx
mov     ecx, ds:dword_55FD68
imul    ecx, edx
mov     ebx, ds:dword_55FD4C
imul    ebx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD30, ecx
mov     ecx, ds:dword_55FD6C
imul    ecx, edx
mov     ebx, ds:dword_55FD50
imul    ebx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD34, ecx
imul    edx, ds:dword_55FD70
imul    eax, ds:dword_55FD54
add     eax, edx
sar     eax, 4
mov     ds:dword_55FD38, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5661 endp




sub_4E5720 proc near
push    edx
push    esi
push    edi
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, ds:(funcs_4E535E+0Ah)[eax*4]
sar     edx, 10h
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_550DE0[eax*4]
sar     edx, 10h
mov     ds:dword_55FD5C, edx
mov     edx, ds:(dword_550DE0+2)[eax*4]
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     edx, ds:dword_550DE4[eax*4]
sar     edx, 10h
mov     ds:dword_55FD68, edx
mov     edx, ds:(dword_550DE4+2)[eax*4]
sar     edx, 10h
mov     ds:dword_55FD6C, edx
mov     eax, ds:off_550DE8[eax*4]
sar     eax, 10h
mov     ds:dword_55FD70, eax
mov     ds:word_55FD1E, 10h
pop     edi
pop     esi
pop     edx
retn
sub_4E5720 endp

db 90h
jpt_4E57E8 dd offset loc_4E57EF ; jump table for switch statement
dd offset loc_4E5812
dd offset loc_4E581B
dd offset loc_4E5825



sub_4E57D9 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+2
cmp     al, 3           ; switch 4 cases
ja      short def_4E57E8 ; jumptable 004E57E8 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4E57E8[edx*4] ; switch jump

loc_4E57EF:             ; jumptable 004E57E8 case 0
mov     ebx, 0Ah
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
inc     byte ptr ds:dword_55FD14+2
pop     edx
pop     ebx
retn

loc_4E5812:             ; jumptable 004E57E8 case 1
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E57E8 ; jumptable 004E57E8 default case

loc_4E581B:             ; jumptable 004E57E8 case 2
inc     al
mov     byte ptr ds:dword_55FD14+2, al
pop     edx
pop     ebx
retn

loc_4E5825:             ; jumptable 004E57E8 case 3
mov     ds:dword_55FD14, 203h

def_4E57E8:             ; jumptable 004E57E8 default case
pop     edx
pop     ebx
retn
sub_4E57D9 endp

db 8Dh, 40h, 0
jpt_4E585D dd offset loc_4E5864 ; jump table for switch statement
dd offset loc_4E589B
dd offset loc_4E58B3
dd offset loc_4E58BB
dd offset loc_4E58C3



sub_4E5849 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+2
cmp     al, 4           ; switch 5 cases
ja      def_4E585D      ; jumptable 004E585D default case
and     eax, 0FFh
jmp     jpt_4E585D[eax*4] ; switch jump

loc_4E5864:             ; jumptable 004E585D case 0
mov     ebx, 0Fh
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ebx, 10h
mov     edx, offset unk_75354C
mov     eax, 1
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
inc     byte ptr ds:dword_55FD14+2
pop     edx
pop     ebx
retn

loc_4E589B:             ; jumptable 004E585D case 1
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E585D ; jumptable 004E585D default case
mov     al, byte ptr ds:dword_55BD7C
add     al, 2
mov     byte ptr ds:dword_55FD14+2, al
pop     edx
pop     ebx
retn

loc_4E58B3:             ; jumptable 004E585D case 2
call    sub_4E58F9
pop     edx
pop     ebx
retn

loc_4E58BB:             ; jumptable 004E585D case 3
call    sub_4E6D0D
pop     edx
pop     ebx
retn

loc_4E58C3:             ; jumptable 004E585D case 4
mov     ds:dword_55FD14, 203h

def_4E585D:             ; jumptable 004E585D default case
pop     edx
pop     ebx
retn
sub_4E5849 endp

db 90h
jpt_4E5914 dd offset loc_4E591B ; jump table for switch statement
dd offset loc_4E59B7
dd offset loc_4E59DF
dd offset loc_4E5A58
dd offset loc_4E5AB6
dd offset loc_4E59AB
dd offset loc_4E5AED
dd offset loc_4E5B04
dd offset loc_4E5B75
dd offset loc_4E5B9E



sub_4E58F9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, offset dword_55DD14
mov     al, byte ptr ds:dword_55FD14+3
cmp     al, 9           ; switch 10 cases
ja      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
xor     ecx, ecx
mov     cl, al
jmp     jpt_4E5914[ecx*4] ; switch jump

loc_4E591B:             ; jumptable 004E5914 case 0
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, ds:dword_55DD26
sar     edx, 10h
sub     edx, 40h ; '@'
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_55DD26+2
sar     edx, 10h
sub     edx, 76h ; 'v'
mov     ds:dword_55FD5C, edx
mov     edx, ds:dword_55DD2A
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     ds:dword_55FD68, 0E0h

loc_4E598A:
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD6C, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD70, edx
mov     ds:word_55FD1E, 10h

loc_4E59AB:             ; jumptable 004E5914 case 5
inc     al
mov     byte ptr ds:dword_55FD14+3, al
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E59B7:             ; jumptable 004E5914 case 1
mov     di, ds:word_55FD1E
dec     di
mov     ds:word_55FD1E, di
jnz     short loc_4E59D0
inc     al
mov     byte ptr ds:dword_55FD14+3, al

loc_4E59D0:
call    sub_4E5661
add     word ptr [edx+56h], 24h ; '$'
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E59DF:             ; jumptable 004E5914 case 2
mov     ds:word_55FD78, 0FF30h
mov     ds:word_55FD7A, 8
xor     edi, edi
mov     ds:dword_55FD7C, edi
mov     ds:dword_55FD80, 1000h
mov     ds:dword_55FD84, edi
mov     edx, 100h
mov     ds:dword_55FD8C, edx
mov     ecx, edx
mov     ds:dword_55FD90, edx
mov     ebx, edx
mov     ds:dword_55FD94, edx
xor     edx, edx
mov     ds:word_55FDA0, dx
xor     ebx, ecx
mov     ds:word_55FD9E, bx
xor     ecx, ecx
mov     ds:word_55FD9C, cx
call    sub_4E5BAA
mov     ds:word_55FD1E, 10h

loc_4E5A4D:
inc     byte ptr ds:dword_55FD14+3
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E5A58:             ; jumptable 004E5914 case 3
add     ds:dword_55FD7C, 100h
add     ds:dword_55FD84, 100h
mov     dx, ds:word_55FD78
add     edx, 0Dh
mov     ds:word_55FD78, dx
test    dx, dx
jl      short loc_4E5AAC
inc     al
mov     byte ptr ds:dword_55FD14+3, al
mov     ebx, 64h ; 'd'
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
xor     esi, esi
mov     word ptr ds:dword_55FDA4, si

loc_4E5AAC:
call    sub_4E61AA
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E5AB6:             ; jumptable 004E5914 case 4
call    sub_42C353
test    eax, eax
jnz     short loc_4E5AAC
mov     dx, word ptr ds:dword_55FDA4
cmp     dx, 1
jb      short loc_4E5AD4
jbe     short loc_4E5ADB
cmp     dx, 2
jz      short loc_4E5AE4

loc_4E5AD4:
call    sub_4E5C98
jmp     short loc_4E5AAC

loc_4E5ADB:
mov     byte ptr ds:dword_55FD14+3, 6
jmp     short loc_4E5AAC

loc_4E5AE4:
mov     byte ptr ds:dword_55FD14+3, 7
jmp     short loc_4E5AAC

loc_4E5AED:             ; jumptable 004E5914 case 6
call    sub_4E61AA
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
jmp     loc_4E5A4D

loc_4E5B04:             ; jumptable 004E5914 case 7
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, ds:dword_55DD26
sar     edx, 10h
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_55DD26+2
sar     edx, 10h
sub     edx, 76h ; 'v'
mov     ds:dword_55FD5C, edx
mov     edx, ds:dword_55DD2A
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     ds:dword_55FD68, 100h
jmp     loc_4E598A

loc_4E5B75:             ; jumptable 004E5914 case 8
mov     bx, ds:word_55FD1E ; jumptable 004E6D28 case 11
dec     bx
mov     ds:word_55FD1E, bx
jnz     short loc_4E5B8E
inc     al
mov     byte ptr ds:dword_55FD14+3, al

loc_4E5B8E:
call    sub_4E5661
sub     word ptr [edx+56h], 24h ; '$'

def_4E5914:             ; jumptable 004E5914 default case
pop     edi             ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5B9E:             ; jumptable 004E5914 case 9
mov     ds:dword_55FD14, 503h ; jumptable 004E6D28 case 12
jmp     short def_4E5914 ; jumptable 004E5914 default case
sub_4E58F9 endp         ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0



sub_4E5BAA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, offset unk_55E514
xor     ebx, ebx
jmp     short loc_4E5C11

loc_4E5BB9:
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 5
mov     al, ds:byte_550B82[ebx*8]
mov     [ecx+ebp+3], al

loc_4E5BCE:
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 5
add     ecx, ebp
mov     dword ptr [ecx+8], 0
mov     esi, ebx
lea     edi, [ecx+48h]
lea     esi, unk_550B7C[esi*8]
movsd
movsd
mov     dword ptr [ecx+50h], offset unk_808080
lea     eax, [ecx+18h]
call    sub_4EF1BC
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD111
inc     byte ptr [ecx+8]
inc     ebx
cmp     ebx, 28h ; '('
jge     short loc_4E5C68

loc_4E5C11:
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 5
add     ecx, ebp
mov     byte ptr [ecx], 7
mov     byte ptr [ecx+1], 0E0h
mov     byte ptr [ecx+2], 11h
mov     al, ds:byte_550B82[ebx*8]
mov     [ecx+3], al
cmp     ebx, 0Dh
jl      short loc_4E5BB9
cmp     ebx, 1Ah
jge     loc_4E5BB9
mov     ax, ds:word_550CDE[ebx*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
test    eax, eax
jnz     loc_4E5BB9
mov     byte ptr [ecx+3], 5
jmp     loc_4E5BCE

loc_4E5C68:
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
mov     ax, ds:word_550CD6[eax*2]
and     eax, 0FFFFh
mov     ds:dword_55FD74, eax
xor     edx, edx
mov     ds:word_55FD1E, dx
mov     word ptr ds:dword_55FDA4+2, dx

loc_4E5C92:
pop     ebp
jmp     def_4E5914      ; jumptable 004E5914 default case
sub_4E5BAA endp         ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0



sub_4E5C98 proc near
push    ebx
push    ecx
push    edx
push    edi
cmp     ds:word_55FD1E, 0
jnz     loc_4E5E3F
test    byte ptr ds:word_5708DA, 10h
jz      short loc_4E5CBC
mov     word ptr ds:dword_55FDA4+2, 0FFFFh

loc_4E5CBC:
test    byte ptr ds:word_5708DA, 40h
jz      short loc_4E5CCE
mov     word ptr ds:dword_55FDA4+2, 1

loc_4E5CCE:
mov     eax, ds:dword_55FDA4
sar     eax, 10h
mov     edx, ds:dword_55FD74
add     edx, eax
mov     ds:dword_55FD74, edx
cmp     edx, 0Dh
jl      short loc_4E5CF3
xor     edi, edi
mov     ds:dword_55FD74, edi
jmp     short loc_4E5D01

loc_4E5CF3:
test    edx, edx
jge     short loc_4E5D01
mov     ds:dword_55FD74, 0Ch

loc_4E5D01:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
mov     dx, word ptr ds:dword_55FDA4+2
shl     edx, 4
test    eax, eax
jnz     short loc_4E5D37
mov     ds:word_55FD1E, dx
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5D37:
cmp     word ptr ds:dword_55FDA4+2, 0
jz      short loc_4E5D8D
mov     ds:word_55FD1E, dx
xor     edi, edi
mov     word ptr ds:dword_55FDA4+2, di
xor     eax, eax
call    sub_4A0E75
mov     ebx, ds:dword_55FD74
mov     bx, ds:word_550CBC[ebx*2]
and     ebx, 0FFFFh
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ds:word_55FDA0, di
mov     ds:word_55FD9E, di
mov     ds:word_55FD9C, di

loc_4E5D8D:
test    byte ptr ds:word_5708DE+1, 10h
jz      short loc_4E5DA6
mov     word ptr ds:dword_55FDA4, 2
xor     eax, eax
call    sub_4A0E75

loc_4E5DA6:
test    ds:word_5708DE, 4008h
jz      loc_4E5E3F
xor     eax, eax
call    sub_4A0E75
mov     ebx, 65h ; 'e'
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
xor     ebx, ebx
xor     edx, edx
mov     eax, 88h
call    sub_4D89E4
mov     word ptr ds:dword_55FDA8, 8
mov     word ptr ds:dword_55FDA4, 1
mov     eax, ds:dword_55FD74
mov     al, byte ptr ds:word_550CF8[eax*2]
mov     ds:byte_5F84D6, al
call    sub_4EE5BE
cmp     byte ptr ds:dword_5F88B1+1, 0
jle     short loc_4E5E3F
mov     edx, 80h
mov     eax, 8
call    sub_4DC979
mov     al, ds:byte_5F84D6
mov     ds:byte_5F84D4, al
test    al, al
jle     short loc_4E5E32
mov     byte ptr ds:dword_5F88B1+2, 1
jmp     short loc_4E5E3A

loc_4E5E32:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+2, cl

loc_4E5E3A:
call    sub_4DBD14

loc_4E5E3F:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5C98 endp




sub_4E5E44 proc near
push    ebx
push    ecx
push    edx
push    edi
cmp     ds:word_55FD1E, 0
jnz     loc_4E5FDA
test    byte ptr ds:word_5708DA, 10h
jz      short loc_4E5E68
mov     word ptr ds:dword_55FDA4+2, 0FFFFh

loc_4E5E68:
test    byte ptr ds:word_5708DA, 40h
jz      short loc_4E5E7A
mov     word ptr ds:dword_55FDA4+2, 1

loc_4E5E7A:
mov     eax, ds:dword_55FDA4
sar     eax, 10h
mov     edx, ds:dword_55FD74
add     edx, eax
mov     ds:dword_55FD74, edx
cmp     edx, 0Dh
jl      short loc_4E5E9F
xor     edi, edi
mov     ds:dword_55FD74, edi
jmp     short loc_4E5EAD

loc_4E5E9F:
test    edx, edx
jge     short loc_4E5EAD
mov     ds:dword_55FD74, 0Ch

loc_4E5EAD:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
mov     dx, word ptr ds:dword_55FDA4+2
shl     edx, 4
test    eax, eax
jnz     short loc_4E5EE3
mov     ds:word_55FD1E, dx
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5EE3:
cmp     word ptr ds:dword_55FDA4+2, 0
jz      short loc_4E5F34
mov     ds:word_55FD1E, dx
xor     edi, edi
mov     word ptr ds:dword_55FDA4+2, di
xor     eax, eax
call    sub_4A0E75
mov     eax, ds:dword_55FD74
call    sub_4A62B7
mov     ebx, 83h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ds:word_55FDA0, di
mov     ds:word_55FD9E, di
mov     ds:word_55FD9C, di

loc_4E5F34:
test    byte ptr ds:word_5708DE+1, 10h
jz      short loc_4E5F5D
mov     word ptr ds:dword_55FDA4, 2
inc     byte ptr ds:dword_55FD14+3
xor     eax, eax
call    sub_4A0E75
mov     eax, 1
call    sub_4A0E75

loc_4E5F5D:
test    ds:word_5708DE, 4008h
jz      short loc_4E5FDA
xor     eax, eax
call    sub_4A0E75
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
mov     al, byte ptr ds:(dword_5F8955+3)[eax*8]
mov     ecx, eax
and     ecx, 0FFh
add     ecx, ecx
mov     edx, ds:dword_55FD74
mov     eax, edx
shl     eax, 2
add     eax, edx
xor     edx, edx
mov     dx, ds:word_5507DC[ecx+eax*8]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
call    sub_4A62A5
mov     ebx, 99h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
mov     word ptr ds:dword_55FDA4, 1

loc_4E5FDA:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5E44 endp

db 8Bh, 0C0h
jpt_4E60C4 dd offset def_4E60C4 ; jump table for switch statement
dd offset loc_4E60D2
dd offset loc_4E60E0
dd offset loc_4E60E7
dd offset loc_4E60EE



sub_4E5FF5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     ebx, ebx
cmp     ds:word_55FDB0, 0
jz      short loc_4E600D
mov     ebx, 1
jmp     short loc_4E605D

loc_4E600D:
test    byte ptr ds:word_5708DE, 10h
jz      short loc_4E6022
mov     ebx, 1
dec     word ptr ds:dword_55FDA8+2

loc_4E6022:
test    byte ptr ds:word_5708DE, 40h
jz      short loc_4E6037
mov     ebx, 1
inc     word ptr ds:dword_55FDA8+2

loc_4E6037:
mov     di, word ptr ds:dword_55FDA8+2
test    di, di
jge     short loc_4E604E
mov     word ptr ds:dword_55FDA8+2, 4
jmp     short loc_4E605D

loc_4E604E:
cmp     di, 4
jle     short loc_4E605D
xor     edx, edx
mov     word ptr ds:dword_55FDA8+2, dx

loc_4E605D:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
mov     ecx, ds:dword_55FDA8
sar     ecx, 10h
movzx   esi, byte ptr ds:(dword_5F8955+3)[ecx+eax*8]
mov     edx, ds:dword_55FD74
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
shl     ecx, 3
add     eax, ecx
xor     ecx, ecx
mov     cx, ds:word_5507DC[eax+esi*2]
mov     eax, ecx
shl     eax, 2
add     ecx, eax
add     ecx, ecx
test    ebx, ebx
jz      short loc_4E6113
xor     eax, eax
call    sub_4A0E75
mov     ax, word ptr ds:dword_55FDA8+2
cmp     ax, 4           ; switch 5 cases
ja      short def_4E60C4 ; jumptable 004E60C4 default case, case 0
and     eax, 0FFFFh
jmp     jpt_4E60C4[eax*4] ; switch jump

def_4E60C4:             ; jumptable 004E60C4 default case, case 0
mov     ebx, 99h
jmp     short loc_4E6100

loc_4E60D2:             ; jumptable 004E60C4 case 1
mov     ebx, ds:dword_55FD74
mov     bl, ds:byte_550E10[ebx]
jmp     short loc_4E60FA

loc_4E60E0:             ; jumptable 004E60C4 case 2
mov     ebx, 9Ch
jmp     short loc_4E6100

loc_4E60E7:             ; jumptable 004E60C4 case 3
mov     ebx, 9Dh
jmp     short loc_4E6100

loc_4E60EE:             ; jumptable 004E60C4 case 4
mov     ebx, ds:dword_55FD74
mov     bl, ds:byte_550E20[ebx]

loc_4E60FA:
and     ebx, 0FFh

loc_4E6100:
mov     eax, ecx
call    sub_4A62A5
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD

loc_4E6113:
test    byte ptr ds:word_5708DE+1, 10h
jz      short loc_4E6132
mov     word ptr ds:dword_55FDA4, 2
inc     byte ptr ds:dword_55FD14+3
xor     eax, eax
call    sub_4A0E75

loc_4E6132:
test    byte ptr ds:dword_55BD7C+2, 2
jz      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
test    ds:word_5708DE, 4008h
jz      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
xor     eax, eax
call    sub_4A0E75
mov     eax, ecx
neg     eax
call    sub_4B6204
test    eax, eax
jz      short loc_4E617E
mov     ebx, 85h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA4, 1
jmp     short loc_4E619C

loc_4E617E:
mov     ds:dword_55FDAC, ecx
mov     ebx, 86h
mov     edx, offset unk_75354C
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA4, 3

loc_4E619C:
mov     word ptr ds:dword_55FDA8, 8
jmp     def_4E5914      ; jumptable 004E5914 default case
sub_4E5FF5 endp         ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0



sub_4E61AA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, offset unk_55E514
mov     edi, ds:dword_55FD74
mov     dx, ds:word_55FD1E
test    dx, dx
jz      short loc_4E61F6
jle     short loc_4E61D4
mov     eax, edx
dec     eax
mov     ds:word_55FD1E, ax
jmp     short loc_4E61DE

loc_4E61D4:
mov     ecx, edx
inc     ecx
mov     ds:word_55FD1E, cx

loc_4E61DE:
cmp     ds:word_55FD1E, 0
jnz     short loc_4E61F6
xor     ebx, ebx
xor     edx, edx
mov     eax, 87h
call    sub_4D89E4

loc_4E61F6:
cmp     byte ptr ds:dword_55FD14+2, 3
jnz     loc_4E6302
mov     dl, byte ptr ds:dword_55FD14+3
cmp     dl, 5
jb      loc_4E6302
cmp     dl, 9
ja      loc_4E6302
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
and     eax, 0FFFFh
mov     ecx, dword ptr ds:unk_564C32[eax*4]
sar     ecx, 10h
sar     ecx, 5
mov     ebx, ecx
shl     ebx, 10h
or      ebx, 2E000000h
mov     eax, ecx
shl     eax, 8
or      eax, ebx
or      eax, ecx
mov     [edx+4], eax
mov     ax, ds:word_55FD78
add     eax, 11h
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 31h ; '1'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     bx, ds:word_55FD7A
add     ebx, 60h ; '`'
imul    ax, word ptr ds:dword_55FDA8+2, 0Ch
add     ebx, eax
mov     [edx+12h], bx
mov     [edx+0Ah], bx
mov     bx, ds:word_55FD7A
add     ebx, 68h ; 'h'
imul    ax, word ptr ds:dword_55FDA8+2, 0Ch
add     ebx, eax
mov     [edx+22h], bx
mov     [edx+1Ah], bx
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 8
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0F8h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 0FFh
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6302:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
test    eax, eax
jz      loc_4E6520
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     ebx, ds:dword_5F8955[eax*8]
sar     ebx, 18h
mov     edx, edi
mov     ebp, edi
shl     ebp, 2
add     ebp, edi
shl     ebp, 2
lea     eax, [ebx+ebp]
mov     al, ds:byte_5506D8[eax]
and     eax, 0FFh
xor     ebx, ebx
xor     edx, edi
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:(dword_5F8955+1)[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506DC[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 0Ch
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:(dword_5F8955+2)[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506E0[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 18h
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:(dword_5F8955+3)[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506E4[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 24h ; '$'
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:dword_5F8959[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506E8[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 30h ; '0'
call    sub_4E6A3F
mov     ecx, ds:dword_77E6DC
mov     edx, ecx
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    sub_4F87F0
mov     dword ptr [ecx], 9000000h
cmp     ds:word_55FD1E, 0
jge     short loc_4E6447
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
shl     eax, 3
lea     ecx, [eax+80h]
jmp     short loc_4E6459

loc_4E6447:
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
mov     ecx, 10h
sub     ecx, eax
shl     ecx, 3

loc_4E6459:
mov     eax, ecx
shl     eax, 10h
or      eax, 2C000000h
mov     ebx, ecx
shl     ebx, 8
or      eax, ebx
or      eax, ecx
mov     [edx+4], eax
mov     ax, ds:word_55FD78
add     eax, 1Ah
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 62h ; 'b'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 51h ; 'Q'
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 58h ; 'X'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D86[eax*2]
mov     [edx+1Ch], al
mov     [edx+0Ch], al
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D86[eax*2]
add     al, 48h ; 'H'
mov     [edx+24h], al
mov     [edx+14h], al
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D87[eax*2]
mov     [edx+15h], al
mov     [edx+0Dh], al
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D87[eax*2]
add     al, 7
mov     [edx+25h], al
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D08h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6520:
cmp     byte ptr ds:dword_55FD14+2, 3
jnz     short loc_4E6591
mov     bh, byte ptr ds:dword_55FD14+3
cmp     bh, 5
jb      short loc_4E6591
cmp     bh, 7
ja      short loc_4E6591
mov     ax, ds:word_550CF8[edi*2]
and     eax, 0FFFFh
mov     edx, ds:dword_55FDA8
sar     edx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:(dword_5F8955+3)[edx+eax*8]
mov     ebp, edx
shl     ebp, 2
mov     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 2
lea     ecx, [eax+ebp]
mov     cl, ds:byte_5506D9[ecx+ebx]
and     ecx, 0FFh
jz      short loc_4E6591
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 2
mov     ebx, 1
mov     eax, ecx
call    sub_4E6A3F

loc_4E6591:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
mov     [edx+18h], ax
mov     [edx+8], ax
add     eax, 80h
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
mov     [edx+12h], ax
mov     [edx+0Ah], ax
add     eax, 5Dh ; ']'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 80h
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 5Dh ; ']'
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 80h
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 0C8h
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 18h
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 50h ; 'P'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 80h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0C8h
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 18h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 50h ; 'P'
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 8
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 3Ah ; ':'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 5Dh ; ']'
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 9Ch
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 8
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 3Ah ; ':'
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 5Dh ; ']'
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 9Ch
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
xor     ecx, ecx
jmp     loc_4E682E

loc_4E677D:
mov     ebx, ds:dword_55FD1A+2
sar     ebx, 10h
neg     ebx

loc_4E6788:
mov     edx, 10h
sub     edx, ebx
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebx, eax
mov     edx, eax
shl     edx, 10h
shl     eax, 8
or      edx, eax
or      edx, ebx
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
lea     eax, [esi+ebx]
mov     [eax+0A10h], edx
jmp     short loc_4E67D9

loc_4E67C2:
mov     ebx, edi
shl     ebx, 2
sub     ebx, edi
shl     ebx, 5
lea     eax, [esi+ebx]
mov     dword ptr [eax+0A10h], offset unk_808080

loc_4E67D9:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
add     ebx, esi
mov     byte ptr [ebx+9C0h], 7
add     ebx, 9D8h
mov     edx, ebx
mov     eax, offset word_55FD9C
call    sub_4EF5F7
mov     edx, offset dword_55FD8C
mov     eax, ebx
call    sub_4EF689
add     ds:word_55FD9E, 30h ; '0'
jmp     short loc_4E6828

loc_4E6814:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
lea     eax, [esi+ebx]
mov     byte ptr [eax+9C0h], 0

loc_4E6828:
inc     ecx
cmp     ecx, 0Dh
jge     short loc_4E687E

loc_4E682E:
cmp     ecx, edi
jnz     short loc_4E6814
cmp     ds:word_55FD78, 0
jl      short loc_4E6814
mov     edx, ds:dword_55FD74
xor     eax, eax
mov     ax, ds:word_550CF8[edx*2]
add     eax, 4C0h
call    sub_47E888
test    eax, eax
jz      short loc_4E6828
mov     bx, ds:word_55FD1E
test    bx, bx
jz      loc_4E67C2
jle     loc_4E677D
mov     ebx, ds:dword_55FD1A+2
sar     ebx, 10h
jmp     loc_4E6788

loc_4E687E:
xor     ecx, ecx
jmp     short loc_4E68A3

loc_4E6882:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
lea     eax, [esi+ebx]
mov     dword ptr [eax+530h], 4040h

loc_4E6899:
inc     ecx
cmp     ecx, 0Dh
jge     loc_4E6948

loc_4E68A3:
mov     ebx, ecx
mov     eax, ecx
sub     eax, edi
cmp     eax, 6
jle     short loc_4E68B1
lea     ebx, [ecx-0Dh]

loc_4E68B1:
mov     eax, ebx
sub     eax, edi
cmp     eax, 0FFFFFFFAh
jge     short loc_4E68BD
lea     ebx, [ecx+0Dh]

loc_4E68BD:
mov     eax, edi
sub     eax, ebx
shl     eax, 5
mov     edx, 0FF69h
sub     edx, eax
mov     ax, ds:word_55FD1E
add     eax, eax
add     eax, edx
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
add     ebx, esi
mov     [ebx+52Ah], ax
mov     [ebx+4Ah], ax
lea     edx, [ebx+18h]
mov     eax, edx
call    sub_4EF1BC
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
shl     eax, 8
call    sub_4EF50D
lea     edx, [ebx+4F8h]
mov     eax, edx
call    sub_4EF1BC
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
shl     eax, 8
call    sub_4EF50D
cmp     ecx, edi
jnz     loc_4E6882
cmp     ds:word_55FD1E, 0
jnz     loc_4E6882
mov     dword ptr [ebx+530h], offset unk_808080
jmp     loc_4E6899

loc_4E6948:
lea     eax, [esi+0EB8h]
call    sub_4EF1BC
xor     ecx, ecx
jmp     short loc_4E695D

loc_4E6957:
inc     ecx
cmp     ecx, 28h ; '('
jge     short loc_4E6989

loc_4E695D:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
add     ebx, esi
lea     eax, [ebx+18h]
mov     edx, offset dword_55FD7C
call    sub_4EF689
mov     al, [ebx]
test    al, 2
jz      short loc_4E6957
movsx   edx, al
lea     eax, [ebx+14h]
call    sub_4EC000
jmp     short loc_4E6957

loc_4E6989:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx], 9000000h
mov     dword ptr [edx+4], 2C010101h
mov     ax, ds:word_55FD78
add     eax, 10h
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 70h ; 'p'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 10h
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 50h ; 'P'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 88h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 90h
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 7
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77E6FC
add     eax, 0A0h
call    sub_4F87A6
jmp     loc_4E5C92
sub_4E61AA endp




sub_4E6A3F proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
cmp     eax, 0FFh
jnz     loc_4E6B1B
cmp     ds:word_55FD1E, 0
jnz     loc_4E6B16
test    ebx, ebx
jnz     loc_4E6B16
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     cx, ds:word_55FD78
add     ecx, 4Eh ; 'N'
mov     [edx+18h], cx
mov     [edx+8], cx
mov     cx, ds:word_55FD78
add     ecx, 76h ; 'v'
mov     [edx+20h], cx
mov     [edx+10h], cx
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
add     eax, 8
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 28h ; '('
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0E8h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 0F0h
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6B16:
mov     ecx, 58h ; 'X'

loc_4E6B1B:
cmp     ds:word_55FD1E, 0
jge     short loc_4E6B33
mov     edx, ds:dword_55FD1A+2
sar     edx, 10h
add     edx, 10h
jmp     short loc_4E6B42

loc_4E6B33:
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
mov     edx, 10h
sub     edx, eax

loc_4E6B42:
imul    edx, ecx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ecx, eax
cmp     ecx, 4
jl      loc_4E6CC5
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
add     eax, ecx
sub     eax, 2
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
add     eax, 8
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 88h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0B8h
mov     al, [edx+24h]
mov     [edx+14h], al
shl     bl, 3
mov     [edx+15h], bl
mov     [edx+0Dh], bl
mov     bh, bl
add     bh, 8
mov     [edx+25h], bh
mov     [edx+1Dh], bh
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
add     eax, ecx
sub     eax, 2
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
add     eax, ecx
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
add     eax, 8
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 0B8h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0BAh
mov     al, [edx+24h]
mov     [edx+14h], al
mov     [edx+15h], bl
mov     [edx+0Dh], bl
mov     [edx+25h], bh
mov     [edx+1Dh], bh
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6CC5:
pop     esi
pop     ecx
retn
sub_4E6A3F endp

db 90h
jpt_4E6D28 dd offset loc_4E6D2F ; jump table for switch statement
dd offset loc_4E6DBA
dd offset loc_4E6DE5
dd offset loc_4E6E4F
dd offset loc_4E6ECE
dd offset loc_4E6F4F
dd offset loc_4E6FF8
dd offset loc_4E7033
dd offset loc_4E705A
dd offset loc_4E6FF8
dd offset loc_4E70BE
dd offset loc_4E5B75
dd offset loc_4E5B9E
jpt_4E6F79 dd offset def_4E5914 ; jump table for switch statement
dd offset loc_4E6F80
dd offset loc_4E6F9D
dd offset loc_4E6FE8



sub_4E6D0D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, offset dword_55DD14
mov     al, byte ptr ds:dword_55FD14+3
cmp     al, 0Ch         ; switch 13 cases
ja      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
xor     ecx, ecx
mov     cl, al
jmp     jpt_4E6D28[ecx*4] ; switch jump

loc_4E6D2F:             ; jumptable 004E6D28 case 0
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     eax, ds:dword_55FD30
mov     ds:dword_55FD4C, eax
mov     eax, ds:dword_55FD34
mov     ds:dword_55FD50, eax
mov     eax, ds:dword_55FD38
mov     ds:dword_55FD54, eax
mov     eax, ds:dword_55DD26
sar     eax, 10h
sub     eax, 40h ; '@'
mov     ds:dword_55FD58, eax
mov     eax, ds:dword_55DD26+2
sar     eax, 10h
sub     eax, 76h ; 'v'
mov     ds:dword_55FD5C, eax
mov     eax, ds:dword_55DD2A
sar     eax, 10h
mov     ds:dword_55FD60, eax
mov     ds:dword_55FD68, 0E0h

loc_4E6D92:
mov     eax, ds:dword_55FD34
mov     ds:dword_55FD6C, eax
mov     eax, ds:dword_55FD38
mov     ds:dword_55FD70, eax

loc_4E6DA6:
mov     ds:word_55FD1E, 10h

loc_4E6DAF:
inc     byte ptr ds:dword_55FD14+3
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6DBA:             ; jumptable 004E6D28 case 1
mov     di, ds:word_55FD1E
dec     di
mov     ds:word_55FD1E, di
jnz     short loc_4E6DD6
mov     bl, al
inc     bl
mov     byte ptr ds:dword_55FD14+3, bl

loc_4E6DD6:
call    sub_4E5661
add     word ptr [edx+56h], 24h ; '$'
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6DE5:             ; jumptable 004E6D28 case 2
mov     ds:word_55FD78, 0FF30h
mov     ds:word_55FD7A, 8
xor     edi, edi
mov     ds:dword_55FD7C, edi
mov     ds:dword_55FD80, 1000h
mov     ds:dword_55FD84, edi
mov     edx, 100h
mov     ds:dword_55FD8C, edx
mov     ecx, edx
mov     ds:dword_55FD90, edx
mov     ebx, edx
mov     ds:dword_55FD94, edx
xor     edx, edx
mov     ds:word_55FDA0, dx
xor     ebx, ecx
mov     ds:word_55FD9E, bx
xor     ecx, ecx
mov     ds:word_55FD9C, cx
call    sub_4E5BAA
jmp     loc_4E6DA6

loc_4E6E4F:             ; jumptable 004E6D28 case 3
add     ds:dword_55FD7C, 100h
add     ds:dword_55FD84, 100h
mov     dx, ds:word_55FD78
add     edx, 0Dh
mov     ds:word_55FD78, dx
test    dx, dx
jl      short loc_4E6EC4
mov     edx, ds:dword_55FD74
inc     al
mov     byte ptr ds:dword_55FD14+3, al
mov     eax, edx
call    sub_4A62B7
mov     ebx, 83h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ebx, 82h
mov     edx, offset unk_75354C
mov     eax, 1
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
xor     esi, esi
mov     word ptr ds:dword_55FDA4, si

loc_4E6EC4:
call    sub_4E61AA
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6ECE:             ; jumptable 004E6D28 case 4
mov     ebx, 2
mov     edx, offset unk_75354C
mov     eax, 3
call    sub_4A0CDD
call    sub_4E5E44
call    sub_4E61AA
mov     dx, word ptr ds:dword_55FDA4
cmp     dx, 1
jb      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
jbe     short loc_4E6F0A
cmp     dx, 2
jz      short loc_4E6F3A
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6F0A:
mov     ebx, 84h
mov     edx, offset unk_75354C
mov     eax, 1
call    sub_4A0CDD
mov     byte ptr ds:dword_55FD14+3, 5
xor     ecx, ecx
mov     word ptr ds:dword_55FDA4, cx
mov     word ptr ds:dword_55FDA8+2, cx
jmp     loc_4E7025

loc_4E6F3A:
mov     byte ptr ds:dword_55FD14+3, 0Ah
xor     ebx, ebx
mov     word ptr ds:dword_55FDA4, bx
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6F4F:             ; jumptable 004E6D28 case 5
call    sub_4E5FF5
xor     ecx, ecx
mov     ds:word_55FDB0, cx
call    sub_4E61AA
mov     dx, word ptr ds:dword_55FDA4
cmp     dx, 3           ; switch 4 cases
ja      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
and     edx, 0FFFFh
jmp     jpt_4E6F79[edx*4] ; switch jump

loc_4E6F80:             ; jumptable 004E6F79 case 1
mov     word ptr ds:dword_55FDA4, cx
mov     byte ptr ds:dword_55FD14+3, 6

loc_4E6F8E:
mov     eax, 1
call    sub_4A0E75
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6F9D:             ; jumptable 004E6F79 case 2
mov     eax, ds:dword_55FD74
call    sub_4A62B7
mov     ebx, 83h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ebx, 82h
mov     edx, offset unk_75354C
mov     eax, 1
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
mov     word ptr ds:dword_55FDA4, cx
mov     byte ptr ds:dword_55FD14+3, 4
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6FE8:             ; jumptable 004E6F79 case 3
mov     word ptr ds:dword_55FDA4, cx
mov     byte ptr ds:dword_55FD14+3, 7
jmp     short loc_4E6F8E

loc_4E6FF8:             ; jumptable 004E6D28 cases 6,9
call    sub_4E61AA
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E700A:
mov     ebx, 84h
mov     edx, offset unk_75354C
mov     eax, 1
call    sub_4A0CDD
mov     byte ptr ds:dword_55FD14+3, 5

loc_4E7025:
mov     ds:word_55FDB0, 1
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E7033:             ; jumptable 004E6D28 case 7
call    sub_4E61AA
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4E700A
mov     byte ptr ds:dword_55FD14+3, 8
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E705A:             ; jumptable 004E6D28 case 8
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
shl     eax, 3
mov     edx, ds:dword_55FDA8
sar     edx, 10h
add     edx, eax
mov     eax, ds:dword_55FDAC
neg     eax
inc     byte ptr ds:(dword_5F8955+3)[edx]
xor     ebx, ebx
xor     edx, edx
call    sub_4B6217
call    sub_4E61AA
call    sub_4EE5BE
mov     ebx, 87h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
xor     ebx, ebx
xor     edx, edx
mov     eax, 89h
call    sub_4D89E4
jmp     loc_4E6DAF

loc_4E70BE:             ; jumptable 004E6D28 case 10
mov     eax, 3
call    sub_4A0E75
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     eax, ds:dword_55FD30
mov     ds:dword_55FD4C, eax
mov     eax, ds:dword_55FD34
mov     ds:dword_55FD50, eax
mov     eax, ds:dword_55FD38
mov     ds:dword_55FD54, eax
mov     eax, ds:dword_55DD26
sar     eax, 10h
mov     ds:dword_55FD58, eax
mov     eax, ds:dword_55DD26+2
sar     eax, 10h
sub     eax, 76h ; 'v'
mov     ds:dword_55FD5C, eax
mov     eax, ds:dword_55DD2A
sar     eax, 10h
mov     ds:dword_55FD60, eax
mov     ds:dword_55FD68, 100h
jmp     loc_4E6D92
sub_4E6D0D endp

jpt_4E714D dd offset loc_4E7154 ; jump table for switch statement
dd offset loc_4E7177
dd offset loc_4E718F
dd offset loc_4E7197



sub_4E713D proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+2
cmp     al, 3           ; switch 4 cases
ja      short def_4E714D ; jumptable 004E714D default case
and     eax, 0FFh
jmp     jpt_4E714D[eax*4] ; switch jump

loc_4E7154:             ; jumptable 004E714D case 0
mov     ebx, 14h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
inc     byte ptr ds:dword_55FD14+2
pop     edx
pop     ebx
retn

loc_4E7177:             ; jumptable 004E714D case 1
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E714D ; jumptable 004E714D default case
mov     al, byte ptr ds:dword_55BD7C
add     al, 2
mov     byte ptr ds:dword_55FD14+2, al
pop     edx
pop     ebx
retn

loc_4E718F:             ; jumptable 004E714D case 2
call    sub_4E71C5
pop     edx
pop     ebx
retn

loc_4E7197:             ; jumptable 004E714D case 3
mov     ds:dword_55FD14, 203h

def_4E714D:             ; jumptable 004E714D default case
pop     edx
pop     ebx
retn
sub_4E713D endp

db 90h
jpt_4E71D8 dd offset loc_4E71DF ; jump table for switch statement
dd offset loc_4E71F2
dd offset loc_4E7209
dd offset loc_4E7223
dd offset loc_4E7234
dd offset loc_4E723E
dd offset loc_4E726D
dd offset loc_4E7276



sub_4E71C5 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+3
cmp     al, 7           ; switch 8 cases
ja      def_4E71D8      ; jumptable 004E71D8 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4E71D8[edx*4] ; switch jump

loc_4E71DF:             ; jumptable 004E71D8 case 0
mov     eax, 9

loc_4E71E4:
call    sub_49E0D7

loc_4E71E9:
inc     byte ptr ds:dword_55FD14+3
pop     edx
pop     ebx
retn

loc_4E71F2:             ; jumptable 004E71D8 case 1
cmp     ds:word_6E23D6, 0
jnz     def_4E71D8      ; jumptable 004E71D8 default case
mov     ds:byte_55FDB5, 3Ch ; '<'
jmp     short loc_4E7219

loc_4E7209:             ; jumptable 004E71D8 case 2
mov     bh, ds:byte_55FDB5
dec     bh
mov     ds:byte_55FDB5, bh

loc_4E7217:             ; jumptable 004E71D8 default case
jnz     short def_4E71D8

loc_4E7219:
inc     al
mov     byte ptr ds:dword_55FD14+3, al
pop     edx
pop     ebx
retn

loc_4E7223:             ; jumptable 004E71D8 case 3
call    sub_4E7283
mov     ds:byte_55FDB6, al
mov     eax, 1
jmp     short loc_4E71E4

loc_4E7234:             ; jumptable 004E71D8 case 4
cmp     ds:word_6E23D6, 0
jmp     short loc_4E7217

loc_4E723E:             ; jumptable 004E71D8 case 5
cmp     ds:byte_55FDB6, 0
jz      short loc_4E724E
mov     ebx, 15h
jmp     short loc_4E7253

loc_4E724E:
mov     ebx, 17h

loc_4E7253:
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
jmp     loc_4E71E9

loc_4E726D:             ; jumptable 004E71D8 case 6
test    byte ptr ds:dword_55BD7C+3, 80h
jmp     short loc_4E7217

loc_4E7276:             ; jumptable 004E71D8 case 7
mov     ds:dword_55FD14, 203h

def_4E71D8:             ; jumptable 004E71D8 default case
pop     edx
pop     ebx
retn
sub_4E71C5 endp




sub_4E7283 proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     eax, ds:dword_550AC4
mov     [esp+14h+var_14], eax
xor     ecx, ecx
xor     esi, esi

loc_4E7296:
cmp     byte ptr [esp+14h+var_14], 0FFh
jz      loc_4E7385
mov     dl, byte ptr [esp+14h+var_14+2]
cmp     dl, 0FFh
jnz     short loc_4E72FB
mov     dh, byte ptr [esp+14h+var_14+1]
cmp     dh, dl
jnz     short loc_4E72CD
xor     eax, eax
mov     al, byte ptr [esp+14h+var_14]
add     eax, 500h
call    sub_47E888
test    eax, eax
jnz     loc_4E7350
jmp     loc_4E7375

loc_4E72CD:
xor     eax, eax
mov     al, byte ptr [esp+14h+var_14]
add     eax, 500h
call    sub_47E888
test    eax, eax
jz      loc_4E7375
xor     eax, eax
mov     al, dh
add     eax, 500h
call    sub_47E888
test    eax, eax
jnz     short loc_4E7340
jmp     loc_4E7375

loc_4E72FB:
xor     eax, eax
mov     al, byte ptr [esp+14h+var_14]
add     eax, 500h
call    sub_47E888
test    eax, eax
jz      short loc_4E7375
xor     eax, eax
mov     al, byte ptr [esp+14h+var_14+1]
add     eax, 500h
call    sub_47E888
test    eax, eax
jz      short loc_4E7375
xor     edx, edx
mov     dl, byte ptr [esp+14h+var_14+2]
add     edx, 500h
mov     eax, edx
call    sub_47E888
test    eax, eax
jz      short loc_4E7375
mov     eax, edx
call    sub_47EA91

loc_4E7340:
xor     eax, eax
mov     al, byte ptr [esp+14h+var_14+1]
add     eax, 500h
call    sub_47EA91

loc_4E7350:
xor     eax, eax
mov     al, byte ptr [esp+14h+var_14]
add     eax, 500h
call    sub_47EA91
mov     esi, 1
mov     eax, ds:dword_550AC8[ecx*8]
add     eax, 2F4h
call    sub_47E8B8

loc_4E7375:
inc     ecx
mov     eax, ds:dword_550AC4[ecx*8]
mov     [esp+14h+var_14], eax
jmp     loc_4E7296

loc_4E7385:
test    esi, esi
jz      short loc_4E7394
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Ah
jmp     short loc_4E739D

loc_4E7394:
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Bh

loc_4E739D:
call    sub_4D89E4
mov     eax, esi
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E7283 endp

db 90h
jpt_4E73F2 dd offset loc_4E73F9 ; jump table for switch statement
dd offset loc_4E7456
dd offset loc_4E74A4
dd offset loc_4E756A
jpt_4E74B2 dd offset loc_4E74B9 ; jump table for switch statement
dd offset loc_4E74E3
dd offset loc_4E74F4
dd offset loc_4E7505
dd offset loc_4E750E
dd offset loc_4E751E
dd offset loc_4E752E
dd offset loc_4E753E



sub_4E73DD proc near
push    ebx
push    ecx
push    edx
mov     al, byte ptr ds:dword_55FD14+2
cmp     al, 3           ; switch 4 cases
ja      def_4E73F2      ; jumptable 004E73F2 default case
and     eax, 0FFh
jmp     jpt_4E73F2[eax*4] ; switch jump

loc_4E73F9:             ; jumptable 004E73F2 case 0
mov     eax, 318h
call    sub_47E8B8
mov     eax, 319h
call    sub_47E8B8
mov     eax, 31Ah
call    sub_47E8B8
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     eax, ds:dword_550D63[eax]
sar     eax, 18h
add     eax, 318h
call    sub_47EA91
mov     ebx, 19h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8

loc_4E744C:
inc     byte ptr ds:dword_55FD14+2
pop     edx
pop     ecx
pop     ebx
retn

loc_4E7456:             ; jumptable 004E73F2 case 1
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     def_4E73F2      ; jumptable 004E73F2 default case
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     eax, ds:dword_550D63[eax]
sar     eax, 18h
add     eax, 318h
call    sub_47E8B8
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
mov     ds:dword_55FD74, eax
cmp     eax, 8
jnz     short loc_4E749D
mov     byte ptr ds:dword_55FD14+2, 3
pop     edx
pop     ecx
pop     ebx
retn

loc_4E749D:
call    sub_4A7DD4
jmp     short loc_4E744C

loc_4E74A4:             ; jumptable 004E73F2 case 2
mov     eax, ds:dword_55FD74
cmp     eax, 7          ; switch 8 cases
ja      def_4E74B2      ; jumptable 004E74B2 default case
jmp     jpt_4E74B2[eax*4] ; switch jump

loc_4E74B9:             ; jumptable 004E74B2 case 0
mov     eax, 55h ; 'U'
call    sub_47E888
test    eax, eax
jz      short loc_4E74DA
mov     ds:byte_77E7D4, 1Bh

loc_4E74CE:
mov     byte ptr ds:dword_77E7D5, 1
jmp     def_4E74B2      ; jumptable 004E74B2 default case

loc_4E74DA:
mov     ds:byte_77E7D4, 3
jmp     short loc_4E74CE

loc_4E74E3:             ; jumptable 004E74B2 case 1
mov     ds:byte_77E7D4, 5
xor     cl, cl
mov     byte ptr ds:dword_77E7D5, cl
jmp     short def_4E74B2 ; jumptable 004E74B2 default case

loc_4E74F4:             ; jumptable 004E74B2 case 2
mov     ds:byte_77E7D4, 6
xor     bl, bl
mov     byte ptr ds:dword_77E7D5, bl
jmp     short def_4E74B2 ; jumptable 004E74B2 default case

loc_4E7505:             ; jumptable 004E74B2 case 3
mov     ds:byte_77E7D4, 8
jmp     short loc_4E7545

loc_4E750E:             ; jumptable 004E74B2 case 4
mov     ds:byte_77E7D4, 0Ch
xor     al, al
mov     byte ptr ds:dword_77E7D5, al
jmp     short def_4E74B2 ; jumptable 004E74B2 default case

loc_4E751E:             ; jumptable 004E74B2 case 5
mov     ds:byte_77E7D4, 19h
mov     byte ptr ds:dword_77E7D5, 3
jmp     short def_4E74B2 ; jumptable 004E74B2 default case

loc_4E752E:             ; jumptable 004E74B2 case 6
mov     ds:byte_77E7D4, 19h
mov     byte ptr ds:dword_77E7D5, 2
jmp     short def_4E74B2 ; jumptable 004E74B2 default case

loc_4E753E:             ; jumptable 004E74B2 case 7
mov     ds:byte_77E7D4, 12h

loc_4E7545:
xor     dl, dl
mov     byte ptr ds:dword_77E7D5, dl

def_4E74B2:             ; jumptable 004E74B2 default case
mov     al, ds:byte_77E7D4
mov     byte ptr ds:word_77E7FC+1, al
mov     al, byte ptr ds:dword_77E7D5
mov     ds:byte_77E7FE, al
call    sub_4E7578
pop     edx
pop     ecx
pop     ebx
retn

loc_4E756A:             ; jumptable 004E73F2 case 3
mov     ds:dword_55FD14, 203h

def_4E73F2:             ; jumptable 004E73F2 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_4E73DD endp




sub_4E7578 proc near
mov     al, byte ptr ds:dword_55FD14+3
test    al, al
jbe     short loc_4E7586
cmp     al, 1
jz      short loc_4E75A1
retn

loc_4E7586:
mov     eax, 17h
call    sub_49E0D7
mov     eax, 10h
call    sub_4D9040
inc     byte ptr ds:dword_55FD14+3
retn

loc_4E75A1:
call    sub_4A03B0
call    sub_4D8E21
call    sub_4D8ED6
or      ds:byte_77E6BD, 8
mov     al, ds:byte_77E7D4
mov     ds:byte_77EA5E, al
mov     al, byte ptr ds:dword_77E7D5
mov     ds:byte_77EA5F, al
call    sub_4D87EE
call    sub_4DBAEF
call    sub_4DBBD8
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     eax, ds:dword_550D63[eax]
sar     eax, 18h
call    sub_4E7831
mov     word ptr ds:dword_55FD1A+2, 0FFFFh
retn
sub_4E7578 endp

db 8Dh, 40h, 0
jpt_4E7642 dd offset loc_4E7649 ; jump table for switch statement
dd offset loc_4E76D6
dd offset loc_4E76F9
dd offset loc_4E7715
dd offset loc_4E775E
dd offset def_4E7642
dd offset def_4E7642
dd offset def_4E7642
dd offset def_4E7642
dd offset loc_4E7768
dd offset loc_4E77D5
dd offset loc_4E77EA



sub_4E762D proc near
push    ebx
push    edx
push    esi
push    edi
mov     al, byte ptr ds:dword_55FD14+1
cmp     al, 0Bh         ; switch 12 cases
ja      def_4E7642      ; jumptable 004E7642 default case, cases 5-8
xor     edx, edx
mov     dl, al
jmp     jpt_4E7642[edx*4] ; switch jump

loc_4E7649:             ; jumptable 004E7642 case 0
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, ds:dword_55F526
sar     edx, 10h
mov     ds:dword_55FD58, edx
mov     ds:dword_55FD5C, 0FFFFFF6Ah
mov     edx, ds:dword_55F52A
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     ds:dword_55FD68, 100h
mov     ds:dword_55FD6C, 0FFFFFEB0h
mov     ds:dword_55FD70, 0FFFFFFE0h

loc_4E76C1:
mov     ds:word_55FD1E, 10h
inc     al
mov     byte ptr ds:dword_55FD14+1, al
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8

loc_4E76D6:             ; jumptable 004E7642 case 1
mov     si, ds:word_55FD1E
dec     si
mov     ds:word_55FD1E, si

loc_4E76E6:
jnz     short loc_4E76EF
inc     al
mov     byte ptr ds:dword_55FD14+1, al

loc_4E76EF:
call    sub_4E5661
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8

loc_4E76F9:             ; jumptable 004E7642 case 2
mov     ebx, 8Fh
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr ds:dword_55FD14+1
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8

loc_4E7715:             ; jumptable 004E7642 case 3
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     def_4E7642      ; jumptable 004E7642 default case, cases 5-8
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
cmp     eax, 1
jb      short loc_4E7752
jbe     short loc_4E773A
cmp     eax, 3
jz      short loc_4E7746
jmp     short loc_4E7752

loc_4E773A:
mov     byte ptr ds:dword_55FD14+1, 4
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8

loc_4E7746:
mov     byte ptr ds:dword_55FD14+1, 9
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8

loc_4E7752:
mov     byte ptr ds:dword_55FD14+1, 2
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8

loc_4E775E:             ; jumptable 004E7642 case 4
call    sub_4E77F9
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8

loc_4E7768:             ; jumptable 004E7642 case 9
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     ds:dword_55FD58, 40h ; '@'
mov     ds:dword_55FD5C, 0FFFFFF6Ah
xor     esi, esi
mov     ds:dword_55FD60, esi
mov     ds:dword_55FD68, 180h
mov     ds:dword_55FD6C, esi
mov     ds:dword_55FD70, 80h
jmp     loc_4E76C1

loc_4E77D5:             ; jumptable 004E7642 case 10
mov     dx, ds:word_55FD1E
dec     dx
mov     ds:word_55FD1E, dx
jmp     loc_4E76E6

loc_4E77EA:             ; jumptable 004E7642 case 11
mov     ds:dword_55FD14, 1
jmp     def_4E7642      ; jumptable 004E7642 default case, cases 5-8
sub_4E762D endp




sub_4E77F9 proc near
push    edx
mov     al, byte ptr ds:dword_55FD14+2
test    al, al
jbe     short loc_4E7809
cmp     al, 1
jz      short loc_4E781B
pop     edx
retn

loc_4E7809:
mov     eax, 1
call    sub_4A86B8
add     byte ptr ds:dword_55FD14+2, al
pop     edx
retn

loc_4E781B:
call    sub_4A0E35
mov     byte ptr ds:dword_55FD14+1, 2
xor     dl, dl
mov     byte ptr ds:dword_55FD14+2, dl
pop     edx
retn
sub_4E77F9 endp




sub_4E7831 proc near
push    ecx
push    edx
mov     ecx, eax
mov     eax, offset byte_5F8364
mov     edx, offset dword_77E784
cmp     ds:byte_77E7D4, 13h
jnz     short loc_4E7856
cmp     byte ptr ds:dword_77E7D5, 0Bh
jnz     short loc_4E7856
mov     ecx, 9

loc_4E7856:
cmp     byte ptr [edx+50h], 1Bh
jnz     short loc_4E7867
cmp     byte ptr [edx+51h], 6
jnz     short loc_4E7867
mov     ecx, 9

loc_4E7867:
mov     edx, ecx
mov     cx, word ptr ds:(funcs_4A90CA+2)[ecx*8]
mov     [eax+2Ch], cx
mov     [eax+14h], cx
movsx   ecx, cx
shl     ecx, 10h
mov     [eax+34h], ecx
mov     [eax+1Ch], ecx
mov     cx, ds:word_550D18[edx*8]
mov     [eax+2Eh], cx
mov     [eax+16h], cx
movsx   ecx, cx
shl     ecx, 10h
mov     [eax+38h], ecx
mov     [eax+20h], ecx
mov     cx, ds:word_550D1A[edx*8]
mov     [eax+30h], cx
mov     [eax+18h], cx
movsx   ecx, cx
shl     ecx, 10h
mov     [eax+3Ch], ecx
mov     [eax+24h], ecx
mov     word ptr [eax+5Ch], 0
mov     cx, [eax+5Ch]
mov     [eax+54h], cx
mov     dx, ds:word_550D1C[edx*8]
mov     [eax+5Eh], dx
mov     [eax+56h], dx
mov     word ptr [eax+60h], 0
mov     dx, [eax+60h]
mov     [eax+58h], dx
mov     byte ptr [eax+75h], 0
mov     dl, [eax+75h]
mov     [eax+74h], dl
mov     byte ptr [eax+77h], 0
mov     dl, [eax+77h]
mov     [eax+76h], dl
pop     edx
pop     ecx
retn
sub_4E7831 endp

db 90h
jpt_4E7924 dd offset loc_4E792B ; jump table for switch statement
dd offset loc_4E7947
dd offset loc_4E7954
dd offset loc_4E7960



sub_4E7911 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+1
cmp     al, 3           ; switch 4 cases
ja      def_4E7924      ; jumptable 004E7924 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4E7924[edx*4] ; switch jump

loc_4E792B:             ; jumptable 004E7924 case 0
mov     ebx, 1Eh
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr ds:dword_55FD14+1
jmp     def_4E7924      ; jumptable 004E7924 default case

loc_4E7947:             ; jumptable 004E7924 case 1
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     def_4E7924      ; jumptable 004E7924 default case

loc_4E7954:             ; jumptable 004E7924 case 2
inc     al
mov     byte ptr ds:dword_55FD14+1, al
jmp     def_4E7924      ; jumptable 004E7924 default case

loc_4E7960:             ; jumptable 004E7924 case 3
mov     eax, 8
call    sub_4E7831
mov     ah, 0Bh
mov     ds:byte_5F84D6, ah
mov     ds:byte_5F84D4, ah
mov     dh, 1
mov     ds:byte_5F84D7, dh
mov     ds:byte_5F84D5, dh
mov     byte ptr ds:dword_5F88B1+1, dh
mov     byte ptr ds:dword_5F88B1+2, dh
call    sub_4DBD14
call    sub_4EE5BE
mov     ds:dword_55FD14, 2
jmp     def_4E7924      ; jumptable 004E7924 default case
sub_4E7911 endp




sub_4E79AB proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, ds:dword_77EA56+3
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_4E79CC
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_4E7AB9
jmp     short loc_4E79DA

loc_4E79CC:
xor     ecx, ecx
mov     ds:dword_77EA70, ecx
mov     ds:dword_77EA78, ecx

loc_4E79DA:
mov     eax, offset byte_56F80C
mov     ds:dword_77E6E8, edx
test    edx, edx
jz      loc_4E7AB9
xor     ecx, ecx
jmp     short loc_4E79FE

loc_4E79F1:
inc     ecx
add     eax, 38h ; '8'
cmp     ecx, 0Bh
jge     loc_4E7AB9

loc_4E79FE:
mov     edx, ecx
mov     ebx, ds:dword_77E6E8
mov     edx, [ebx+edx*4]
test    edx, edx
jz      short loc_4E79F1
mov     bx, [edx]
mov     [eax], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+24h], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+26h], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+2Ah], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+28h], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+20h], bx
mov     word ptr [eax+22h], 0
add     edx, 2
mov     bx, [edx]
mov     [eax+1Ch], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+1Eh], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+2Ch], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+2Eh], bx
add     edx, 2
mov     bx, [edx]
mov     [eax+30h], bx
add     edx, 0Ch
mov     [eax+34h], edx
cmp     byte ptr [eax+1], 0
jz      loc_4E79F1
mov     edx, [eax+1Ch]
mov     [eax+18h], edx
mov     [eax+0Ch], edx
mov     edx, [eax+1Ah]
sar     edx, 10h
shl     edx, 10h
mov     [eax+10h], edx
mov     [eax+4], edx
mov     edx, [eax+1Ch]
sar     edx, 10h
shl     edx, 10h
mov     [eax+14h], edx
mov     [eax+8], edx
jmp     loc_4E79F1

loc_4E7AB9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E79AB endp




sub_4E7ABD proc near

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
sub     esp, 20h
cmp     ds:dword_77E710, 0
jnz     loc_4E7DEA
xor     eax, eax
call    locret_4F896C
mov     ecx, ds:dword_77E6DC
mov     [esp+38h+var_38], ecx
mov     esi, ds:dword_77E9E8
mov     eax, ds:dword_77E9F0
mov     [esp+38h+var_20], eax
mov     edi, ds:dword_77E9F8
mov     eax, ds:dword_77EA00
mov     [esp+38h+var_30], eax
mov     edx, esi
sub     edx, edi
imul    edx, edx
mov     eax, [esp+38h+var_20]
sub     eax, [esp+38h+var_30]
imul    eax, eax
add     edx, eax
mov     eax, edx
call    sub_4EF075
mov     ebx, eax
mov     [esp+38h+var_1C], eax
test    eax, eax
jz      short loc_4E7B35
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
add     eax, ebx
sar     eax, 1
mov     [esp+38h+var_1C], eax

loc_4E7B35:
mov     ebx, ds:dword_77EA06+2
sar     ebx, 10h
inc     ds:dword_77EA70
mov     edx, [esp+38h+var_20]
sub     edx, [esp+38h+var_30]
mov     eax, esi
sub     eax, edi
call    sub_4EF04B
sub     ebx, eax
mov     eax, ebx
call    sub_4EF008
mov     edx, [esp+38h+var_1C]
imul    edx, eax
mov     ebx, 18h
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
sub     ds:dword_77EA78, eax
mov     ebp, offset byte_56F80C

loc_4E7B7C:
cmp     ebp, offset unk_56FA74
jnb     loc_4E7DE4
test    byte ptr [ebp+0], 1
jz      loc_4E7C6A
lea     edi, [ebp+10h]
lea     esi, [ebp+4]
movsd
movsd
mov     eax, [ebp+0Ch]
mov     [ebp+18h], eax
mov     edi, [ebp+22h]
sar     edi, 10h
cmp     byte ptr [ebp+1], 0
jnz     loc_4E7C4B
mov     eax, [ebp+1Ah]
sar     eax, 10h
mov     ebx, ds:dword_77EA06+2
sar     ebx, 10h
add     ebx, eax
mov     esi, edi
imul    esi, edi
mov     eax, ds:dword_77EA78
mov     edx, eax
sar     edx, 1Fh
idiv    esi
lea     edx, [eax+ebx]
shl     edx, 3
mov     eax, [ebp+1Eh]
sar     eax, 10h
imul    eax, ds:dword_77EA70
shr     eax, 8
add     eax, edx
and     eax, 7FFFh
shl     edi, 5
imul    eax, edi
add     eax, eax
mov     [ebp+4], eax
cmp     word ptr ds:dword_77EA06+2, 800h
jge     short loc_4E7C0F
mov     eax, ds:dword_77EA06
sar     eax, 10h
jmp     short loc_4E7C1C

loc_4E7C0F:
mov     eax, ds:dword_77EA06
sar     eax, 10h
sub     eax, 1000h

loc_4E7C1C:
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
mov     edx, eax
mov     ebx, 0Dh
sar     edx, 1Fh
idiv    ebx
sub     eax, ds:dword_77E99C
shl     eax, 0Bh
mov     edx, [ebp+1Ch]
sar     edx, 10h
shl     edx, 10h
sub     edx, eax
mov     [ebp+8], edx
jmp     short loc_4E7C63

loc_4E7C4B:
mov     eax, [ebp+1Eh]
sar     eax, 10h
shl     eax, 8
add     [ebp+4], eax
mov     eax, [ebp+20h]
sar     eax, 10h
shl     eax, 8
add     [ebp+8], eax

loc_4E7C63:
mov     eax, ebp
call    sub_4E7DF4

loc_4E7C6A:
test    byte ptr [ebp+0], 2
jz      loc_4E7DDC
xor     edx, edx
mov     dl, [ebp+31h]
shl     edx, 5
xor     eax, eax
mov     ax, [ebp+2Ah]
or      eax, 0E1000000h
or      eax, edx
mov     [ecx+4], eax
mov     dword ptr [ecx+8], 0
lea     eax, [ecx+14h]
mov     [ecx], eax
xor     eax, eax
mov     ax, [ebp+28h]
shl     eax, 0Eh
mov     [esp+38h+var_28], eax
xor     eax, eax
mov     al, [ebp+30h]
shl     eax, 19h
mov     [esp+38h+var_2C], eax
mov     edi, [ebp+22h]
sar     edi, 10h
mov     eax, [ebp+24h]
sar     eax, 10h
mov     [esp+38h+var_30], eax
mov     eax, [ebp+34h]
mov     [esp+38h+var_24], eax
mov     ebx, [ebp+0Ch]
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [esp+38h+var_1C], eax
mov     edx, [ebp+0Ah]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [esp+38h+var_34], eax
mov     esi, 20h ; ' '
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     [esp+38h+var_20], edx
mov     eax, edx
neg     eax
mov     [esp+38h+var_20], eax
mov     ecx, [ecx]

loc_4E7D14:
cmp     [esp+38h+var_20], 0F0h
jge     loc_4E7DBA
mov     ebx, [esp+38h+var_34]
mov     edx, [ebp+0Ah]
sar     edx, 10h
mov     esi, 20h ; ' '
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     esi, edx
neg     esi

loc_4E7D3C:
cmp     esi, 140h
jge     short loc_4E7D9B
mov     [ecx+8], si
mov     eax, [esp+38h+var_20]
mov     [ecx+0Ah], ax
mov     eax, [esp+38h+var_1C]
imul    eax, edi
add     eax, ebx
shl     eax, 2
add     eax, [esp+38h+var_24]
mov     eax, [eax]
mov     edx, [esp+38h+var_28]
add     eax, edx
mov     [ecx+0Ch], eax
inc     ebx
cmp     ebx, edi
jl      short loc_4E7D72
xor     ebx, ebx

loc_4E7D72:
lea     eax, [ecx+14h]
mov     [ecx], eax
mov     edx, [ebp+2Ch]
and     edx, 0FFFFFFh
or      edx, 64000000h
or      edx, [esp+38h+var_2C]
mov     [ecx+4], edx
mov     dword ptr [ecx+10h], 200020h
mov     ecx, eax
add     esi, 20h ; ' '
jmp     short loc_4E7D3C

loc_4E7D9B:
mov     ebx, [esp+38h+var_1C]
inc     ebx
mov     [esp+38h+var_1C], ebx
cmp     ebx, [esp+38h+var_30]
jl      short loc_4E7DB0
xor     eax, eax
mov     [esp+38h+var_1C], eax

loc_4E7DB0:
add     [esp+38h+var_20], 20h ; ' '
jmp     loc_4E7D14

loc_4E7DBA:
lea     ebx, [ecx-14h]
xor     eax, eax
mov     al, [ebp+2Fh]
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_77EA74
add     eax, 70h ; 'p'
add     eax, edx
mov     edx, [esp+38h+var_38]
call    sub_4F87AF
mov     [esp+38h+var_38], ecx

loc_4E7DDC:
add     ebp, 38h ; '8'
jmp     loc_4E7B7C

loc_4E7DE4:
mov     ds:dword_77E6DC, ecx

loc_4E7DEA:
add     esp, 20h

loc_4E7DED:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E7ABD endp




sub_4E7DF4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
cmp     byte ptr [eax+1], 0
jz      short loc_4E7E28
mov     edx, [eax+22h]
sar     edx, 10h
shl     edx, 15h

loc_4E7E09:
mov     ecx, [eax+4]
cmp     edx, ecx
jg      short loc_4E7E19
mov     ebx, ecx
sub     ebx, edx
mov     [eax+4], ebx
jmp     short loc_4E7E09

loc_4E7E19:
mov     esi, [eax+4]
test    esi, esi
jge     short loc_4E7E28
lea     edi, [esi+edx]
mov     [eax+4], edi
jmp     short loc_4E7E19

loc_4E7E28:
mov     edx, [eax+24h]
sar     edx, 10h
shl     edx, 15h

loc_4E7E31:
mov     ebp, [eax+8]
cmp     edx, ebp
jg      short loc_4E7E41
mov     ecx, ebp
sub     ecx, edx
mov     [eax+8], ecx
jmp     short loc_4E7E31

loc_4E7E41:
mov     ebx, [eax+8]
test    ebx, ebx
jge     short loc_4E7E50
lea     esi, [ebx+edx]
mov     [eax+8], esi
jmp     short loc_4E7E41

loc_4E7E50:
mov     edx, [eax+4]
sar     edx, 10h
mov     [eax+0Ch], dx
mov     edx, [eax+8]
sar     edx, 10h
mov     [eax+0Eh], dx
jmp     short loc_4E7DED
sub_4E7DF4 endp




sub_4E7E66 proc near

var_C= word ptr -0Ch
var_A= word ptr -0Ah
var_8= word ptr -8

push    esi
sub     esp, 8
mov     esi, ds:dword_77E710
test    esi, esi
jnz     loc_4E7F20
call    sub_42961B
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     ax, word ptr ds:dword_5F8376+2
mov     [esp+0Ch+var_C], ax
mov     ax, word ptr ds:dword_5F837A
mov     [esp+0Ch+var_A], ax
mov     ax, word ptr ds:dword_5F837A+2
mov     [esp+0Ch+var_8], ax
mov     eax, esp
call    sub_4EFCE3
call    sub_4EFD7A
mov     eax, offset unk_55FDB8
call    sub_4EFFB8
cmp     byte ptr ds:dword_560BDC, 0
jz      short loc_4E7ED8
mov     ds:dword_77E6F8, esi
jmp     short loc_4E7EE2

loc_4E7ED8:
mov     ds:dword_77E6F8, 2000000h

loc_4E7EE2:
mov     eax, ds:dword_55FDC0
add     eax, 172h
mov     ds:dword_55FDBC, eax
xor     edx, edx
mov     ds:word_77EAB4, dx
mov     ebx, 8
xor     edx, edx
mov     eax, (offset dword_55FE76+2)
call    memset_
xor     edx, edx
mov     eax, offset unk_6DB84C
call    sub_4E8CE2
mov     ds:word_77EAB4, 1

loc_4E7F20:
add     esp, 8
pop     esi
retn
sub_4E7E66 endp

align 2
jpt_4E8095 dd offset def_4E8095 ; jump table for switch statement
dd offset loc_4E80B8
dd offset loc_4E80C8
dd offset loc_4E80E7



sub_4E7F36 proc near

var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     edx, ds:dword_77E710
test    edx, edx
jnz     loc_4E810E
mov     ds:dword_55FE8C, edx
mov     ds:dword_55FE90, edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
cmp     ds:byte_77EABE, 1
jnz     short loc_4E7F7D
call    sub_433B52
jmp     short loc_4E7F82

loc_4E7F7D:
call    sub_433C30

loc_4E7F82:
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
xor     ecx, ecx
jmp     short loc_4E7FA4

loc_4E7F9A:
inc     ecx
cmp     ecx, 20h ; ' '
jge     loc_4E8025

loc_4E7FA4:
mov     edx, ecx
shl     edx, 3
add     edx, ecx
shl     edx, 3
sub     edx, ecx
shl     edx, 2
cmp     ds:byte_57098E[edx], 33h ; '3'
jnz     short loc_4E7F9A
test    ds:byte_57098C[edx], 1
jz      short loc_4E7F9A
cmp     ds:byte_57098F[edx], 0FEh
jnz     short loc_4E7F9A
mov     edi, esp
lea     esi, unk_570A48[edx]
movsd
movsd
mov     eax, esp
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+2Ch+var_24]
call    sub_4F0003
lea     eax, [esp+2Ch+var_1C]
call    sub_4EFFED
cmp     [esp+2Ch+var_1C], 0
jle     short loc_4E7F9A
xor     eax, eax
mov     al, ds:byte_570997[edx]
add     eax, eax
push    eax             ; int
xor     eax, eax
mov     al, ds:byte_570996[edx]
add     eax, eax
push    eax             ; int
push    [esp+34h+var_20] ; float
push    [esp+38h+var_24] ; float
call    sub_4EA70D
jmp     loc_4E7F9A

loc_4E8025:
mov     ax, word ptr ds:dword_5F8376+2
mov     [esp+2Ch+var_2C], ax
mov     ax, word ptr ds:dword_5F837A
mov     [esp+2Ch+var_2A], ax
mov     ax, word ptr ds:dword_5F837A+2
mov     [esp+2Ch+var_28], ax
mov     eax, esp
call    sub_4EFCE3
call    sub_4EFD7A
mov     eax, offset unk_55FDB8
call    sub_4EFFB8
cmp     byte ptr ds:dword_560BDC, 0
jz      short loc_4E806E
xor     ebp, ebp
mov     ds:dword_77E6F8, ebp
jmp     short loc_4E8078

loc_4E806E:
mov     ds:dword_77E6F8, 2000000h

loc_4E8078:
mov     eax, ds:dword_55FDC0
add     eax, 172h
mov     ds:dword_55FDBC, eax
mov     al, ds:byte_77EABE
cmp     al, 3           ; switch 4 cases
ja      short def_4E8095 ; jumptable 004E8095 default case, case 0
and     eax, 0FFh
jmp     jpt_4E8095[eax*4] ; switch jump

def_4E8095:             ; jumptable 004E8095 default case, case 0
mov     ds:word_77EAB4, 400h
xor     edx, edx

loc_4E80A7:
mov     eax, offset dword_70E0AC
call    sub_4E8355
mov     edx, 1
jmp     short loc_4E8104

loc_4E80B8:             ; jumptable 004E8095 case 1
xor     ecx, ecx
mov     ds:word_77EAB4, cx
mov     edx, 1
jmp     short loc_4E80A7

loc_4E80C8:             ; jumptable 004E8095 case 2
xor     ebx, ebx
mov     ds:word_77EAB4, bx
mov     edx, 2
mov     eax, offset dword_70E0AC
call    sub_4E8355
mov     edx, 2
jmp     short loc_4E8104

loc_4E80E7:             ; jumptable 004E8095 case 3
xor     edx, edx
mov     ds:word_77EAB4, dx
mov     edx, 3
mov     eax, offset dword_70E0AC
call    sub_4E8355
mov     edx, 3

loc_4E8104:
mov     eax, offset dword_7055AC
call    sub_4E8355

loc_4E810E:
add     esp, 14h

loc_4E8111:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E7F36 endp




; int __stdcall sub_4E8118(int, float, float, int, int)
sub_4E8118 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h

push    edx
sub     esp, 8
mov     eax, [esp+0Ch+arg_0]
mov     [esp+0Ch+var_8], eax
mov     [esp+0Ch+var_C], eax
fld     [esp+0Ch+arg_4]
fcomp   [esp+0Ch+arg_0]
fnstsw  ax
sahf
jnb     short loc_4E813B
mov     eax, [esp+0Ch+arg_4]
mov     [esp+0Ch+var_C], eax

loc_4E813B:
fld     [esp+0Ch+arg_4]
fcomp   [esp+0Ch+var_8]
fnstsw  ax
sahf
jbe     short loc_4E8150
mov     eax, [esp+0Ch+arg_4]
mov     [esp+0Ch+var_8], eax

loc_4E8150:
fld     [esp+0Ch+arg_8]
fcomp   [esp+0Ch+var_C]
fnstsw  ax
sahf
jnb     short loc_4E8163
mov     eax, [esp+0Ch+arg_8]
mov     [esp+0Ch+var_C], eax

loc_4E8163:
fld     [esp+0Ch+arg_8]
fcomp   [esp+0Ch+var_8]
fnstsw  ax
sahf
jbe     short loc_4E8178
mov     eax, [esp+0Ch+arg_8]
mov     [esp+0Ch+var_8], eax

loc_4E8178:
mov     eax, [esp+0Ch+var_8]
mov     edx, [esp+0Ch+arg_C]
mov     [edx], eax
mov     eax, [esp+0Ch+var_C]
mov     edx, [esp+0Ch+arg_10]
mov     [edx], eax
add     esp, 8
pop     edx
retn    14h
sub_4E8118 endp




; int __stdcall sub_4E8192(int, float, float, float, int, int)
sub_4E8192 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h

push    edx
sub     esp, 8
mov     eax, [esp+0Ch+arg_0]
mov     [esp+0Ch+var_8], eax
mov     [esp+0Ch+var_C], eax
fld     [esp+0Ch+arg_4]
fcomp   [esp+0Ch+arg_0]
fnstsw  ax
sahf
jnb     short loc_4E81B5
mov     eax, [esp+0Ch+arg_4]
mov     [esp+0Ch+var_C], eax

loc_4E81B5:
fld     [esp+0Ch+arg_4]
fcomp   [esp+0Ch+var_8]
fnstsw  ax
sahf
jbe     short loc_4E81CA
mov     eax, [esp+0Ch+arg_4]
mov     [esp+0Ch+var_8], eax

loc_4E81CA:
fld     [esp+0Ch+arg_8]
fcomp   [esp+0Ch+var_C]
fnstsw  ax
sahf
jnb     short loc_4E81DD
mov     eax, [esp+0Ch+arg_8]
mov     [esp+0Ch+var_C], eax

loc_4E81DD:
fld     [esp+0Ch+arg_8]
fcomp   [esp+0Ch+var_8]
fnstsw  ax
sahf
jbe     short loc_4E81F2
mov     eax, [esp+0Ch+arg_8]
mov     [esp+0Ch+var_8], eax

loc_4E81F2:
fld     [esp+0Ch+arg_C]
fcomp   [esp+0Ch+var_C]
fnstsw  ax
sahf
jnb     short loc_4E8205
mov     eax, [esp+0Ch+arg_C]
mov     [esp+0Ch+var_C], eax

loc_4E8205:
fld     [esp+0Ch+arg_C]
fcomp   [esp+0Ch+var_8]
fnstsw  ax
sahf
jbe     short loc_4E821A
mov     eax, [esp+0Ch+arg_C]
mov     [esp+0Ch+var_8], eax

loc_4E821A:
mov     eax, [esp+0Ch+var_8]
mov     edx, [esp+0Ch+arg_10]
mov     [edx], eax
mov     eax, [esp+0Ch+var_C]
mov     edx, [esp+0Ch+arg_14]
mov     [edx], eax
add     esp, 8
pop     edx
retn    18h
sub_4E8192 endp




; int __stdcall sub_4E8234(int, float, float, int, int)
sub_4E8234 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h

push    ebx
push    ecx
push    edx
sub     esp, 0Ch
mov     edx, eax
mov     ecx, [esp+18h+arg_C]
mov     ebx, [esp+18h+arg_10]
push    ebx             ; int
push    ecx             ; int
push    [esp+20h+arg_8] ; float
push    [esp+24h+arg_4] ; float
push    [esp+28h+arg_0] ; int
call    sub_4E8118
test    edx, edx
jge     short loc_4E8279
test    edx, 8000000h
jz      short loc_4E826D
mov     [esp+18h+var_10], 467A0000h
jmp     short loc_4E8273

loc_4E826D:
mov     edx, [ecx]
mov     [esp+18h+var_10], edx

loc_4E8273:
fld     [esp+18h+var_10]
jmp     short loc_4E82AD

loc_4E8279:
test    edx, 8000000h
jz      short loc_4E828B
fld     dword ptr [ecx]
fadd    ds:flt_50A490
jmp     short loc_4E82A5

loc_4E828B:
fld     [esp+18h+arg_0]
fadd    [esp+18h+arg_4]
fadd    [esp+18h+arg_8]
fdiv    ds:flt_50A488
fadd    dword ptr [ecx]
fmul    ds:flt_50A48C

loc_4E82A5:
fstp    [esp+18h+var_14]
fld     [esp+18h+var_14]

loc_4E82AD:
call    __CHP
fistp   [esp+18h+var_18]
mov     eax, [esp+18h+var_18]
add     esp, 0Ch
pop     edx
pop     ecx
pop     ebx
retn    14h
sub_4E8234 endp




; int __stdcall sub_4E82C1(int, float, float, float, int, int)
sub_4E82C1 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h

push    ebx
push    ecx
push    edx
sub     esp, 0Ch
mov     edx, eax
mov     ecx, [esp+18h+arg_10]
mov     ebx, [esp+18h+arg_14]
push    ebx             ; int
push    ecx             ; int
push    [esp+20h+arg_C] ; float
push    [esp+24h+arg_8] ; float
push    [esp+28h+arg_4] ; float
push    [esp+2Ch+arg_0] ; int
call    sub_4E8192
test    edx, edx
jge     short loc_4E8307
test    edx, 8000000h
jz      short loc_4E82FD
mov     [esp+18h+var_18], 467A0000h
jmp     short loc_4E8302

loc_4E82FD:
mov     edx, [ecx]
mov     [esp+18h+var_18], edx

loc_4E8302:
fld     [esp+18h+var_18]
jmp     short loc_4E833F

loc_4E8307:
test    edx, 8000000h
jz      short loc_4E8319
fld     dword ptr [ecx]
fadd    ds:flt_50A49C
jmp     short loc_4E8337

loc_4E8319:
fld     [esp+18h+arg_0]
fadd    [esp+18h+arg_4]
fadd    [esp+18h+arg_8]
fadd    [esp+18h+arg_C]
fmul    ds:flt_50A494
fadd    dword ptr [ecx]
fmul    ds:flt_50A498

loc_4E8337:
fstp    [esp+18h+var_10]
fld     [esp+18h+var_10]

loc_4E833F:
call    __CHP
fistp   [esp+18h+var_14]
mov     eax, [esp+18h+var_14]
add     esp, 0Ch
pop     edx
pop     ecx
pop     ebx
retn    18h
sub_4E82C1 endp




sub_4E8355 proc near

var_30= dword ptr -30h
var_2C= byte ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
push    edx
mov     [esp+30h+var_1C], eax
xor     ebx, ebx
and     byte ptr [eax+3], 7Fh

loc_4E8368:
mov     ebp, [esp+30h+var_1C]
mov     ebp, [ebp+0]
test    ebp, ebp
jz      loc_4E8400
mov     eax, [esp+30h+var_1C]
mov     dword ptr [eax], 0
xor     edx, edx
mov     [esp+30h+var_18], edx
jmp     short loc_4E839A

loc_4E8389:
add     ebp, ebp
mov     edi, [esp+30h+var_18]
inc     edi
mov     [esp+30h+var_18], edi
inc     ebx
cmp     edi, 20h ; ' '
jnb     short loc_4E8403

loc_4E839A:
test    ebp, ebp
jge     short loc_4E8389
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     edx, ds:dword_6E40B4[eax*4]
mov     edi, (offset dword_55FE76+2)
lea     esi, (dword_6E40AA+2)[eax*4]
movsd
movsd
mov     eax, (offset dword_55FE76+2)
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+30h+var_2C]
call    sub_4EFFB8
mov     cl, ds:byte_77EABF
sar     [esp+30h+var_24], cl
lea     eax, [edx+18h]
cmp     ds:word_55FE7E, 0
jnz     short loc_4E83EC
add     eax, 0Ch

loc_4E83EC:
mov     eax, [eax]
mov     ecx, [esp+30h+var_30]
shl     ecx, 4
mov     edx, [esp+30h+var_24]
call    ds:off_550E30[ecx]
jmp     short loc_4E8389

loc_4E8400:
add     ebx, 20h ; ' '

loc_4E8403:
add     [esp+30h+var_1C], 4
cmp     ebx, 800h
jb      loc_4E8368
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E8355 endp




sub_4E841D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     edx, [eax]
and     edx, 0FFh
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
shl     eax, 2
add     eax, 4
add     ecx, eax
mov     ebx, ds:dword_56F182
sar     ebx, 10h
mov     eax, ds:dword_55FE76
sar     eax, 10h
lea     edx, [ecx+10h]
cmp     ebx, eax
jge     short loc_4E848E
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+18h]
cmp     edi, eax
jge     short loc_4E848A

loc_4E847F:
mov     eax, ecx

loc_4E8481:
call    sub_4E8521
mov     eax, ebx
jmp     short loc_4E84AF

loc_4E848A:
mov     eax, edx
jmp     short loc_4E8481

loc_4E848E:
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+8]
cmp     edi, eax
jl      short loc_4E847F
mov     eax, ebx
call    sub_4E8521
mov     eax, edx

loc_4E84AF:
call    sub_4E8521
lea     eax, [ecx+20h]
call    sub_4E8521
cmp     esi, ds:dword_55FDBC
jg      short loc_4E84CC
lea     eax, [ecx+28h]
call    sub_4E8521

loc_4E84CC:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E841D endp




sub_4E84D1 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     edx, [eax]
mov     ebx, edx
and     ebx, 3F00h
shr     ebx, 7
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4E850B:
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4E8521
add     edx, 2
cmp     edx, ebx
jb      short loc_4E850B
pop     ecx
pop     ebx
retn
sub_4E84D1 endp




sub_4E8521 proc near

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
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     ecx, [eax]
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+44h+var_3C], eax
mov     esi, ecx
shr     esi, 1Ch
xor     eax, eax
mov     al, ds:byte_77EABF
add     esi, eax
mov     [esp+44h+var_20], esi
and     edx, 0FFFFFFh
lea     edi, [edx+4]
add     edi, offset unk_6B87CC
mov     edx, ecx
and     edx, 0FFFFFFh
mov     esi, offset unk_6B87CC
add     esi, edx
mov     [esp+44h+var_28], esi
mov     edx, ecx
and     edx, 0F000000h
shr     edx, 18h
mov     edx, ds:dword_55FDC8[edx*4]
mov     ecx, edx
shr     ecx, 10h
mov     ds:dword_55FE88, ecx
and     edx, 0FFFFh
mov     ds:dword_55FE80, edx
mov     [esp+44h+var_24], 1
mov     edx, ds:dword_55FE76
sar     edx, 10h
mov     cl, al
shl     edx, cl
mov     [esp+44h+var_34], edx
mov     edx, ds:dword_55FE76+2
sar     edx, 10h
shl     edx, cl
mov     [esp+44h+var_30], edx
mov     edx, ds:dword_55FE7A
sar     edx, 10h
shl     edx, cl
mov     [esp+44h+var_38], edx
jmp     loc_4E8A47

loc_4E85D1:
lea     eax, [esp+44h+var_1C]
push    eax             ; int
lea     eax, [esp+48h+var_44]
push    eax             ; int
push    ds:flt_55FE60   ; float
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E82C1

loc_4E85FA:
mov     [esp+44h+var_2C], eax
mov     eax, esi
and     eax, 2FFFFFFh
or      eax, 0AC000000h
mov     ds:dword_55FE84, eax
mov     eax, [esp+44h+var_40]
test    eax, eax
jg      short loc_4E862B
test    esi, 40000000h
jz      loc_4E8C0F
mov     ecx, eax
neg     ecx
mov     [esp+44h+var_40], ecx

loc_4E862B:
cmp     edx, 4
jb      short loc_4E8644
jbe     loc_4E874C
cmp     edx, 5
jz      loc_4E8860
jmp     loc_4E8A3F

loc_4E8644:
cmp     edx, 3
jnz     loc_4E8A3F
mov     eax, ds:dword_77E6DC
mov     ebp, eax
lea     edx, [eax+38h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+20h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+24h], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+28h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+2Ch], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE48
mov     [eax+30h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+34h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+18h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE54
mov     [eax+1Ch], dx
mov     edx, ds:dword_55FE84
and     edx, 0F7FFFFFFh
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E8712
or      byte ptr [eax+17h], 4

loc_4E8712:
test    esi, 10000000h
jz      short loc_4E872A
mov     edx, ebp

loc_4E871C:
mov     eax, [esp+44h+var_24]
call    sub_4F87A6
jmp     loc_4E8A3F

loc_4E872A:
mov     eax, [esp+44h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx
mov     [eax], ebp
mov     [esp+44h+var_24], ebp
jmp     loc_4E8A3F

loc_4E874C:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE58
mov     [eax+38h], edx
mov     edx, ds:flt_55FE5C
mov     [eax+3Ch], edx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE64
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E8837
or      byte ptr [eax+17h], 4

loc_4E8837:
test    esi, 10000000h
jz      short loc_4E8846
mov     edx, ecx
jmp     loc_4E871C

loc_4E8846:
mov     edx, [esp+44h+var_2C]
sar     edx, 3
shl     edx, 2
mov     eax, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ecx], edx
jmp     loc_4E8A39

loc_4E8860:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+10h]
mov     edx, ds:dword_55FE68
mov     [eax+38h], edx
mov     edx, ds:dword_55FE6C
mov     [eax+3Ch], edx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A0
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE74
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
mov     edx, ds:dword_77E6DC
mov     ebp, edx
lea     ebx, [edx+38h]
mov     ds:dword_77E6DC, ebx
mov     [eax], edx
mov     ebx, ds:flt_55FE48
mov     [edx+20h], ebx
mov     ebx, ds:flt_55FE4C
mov     [edx+24h], ebx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A0
fstp    dword ptr [edx+8]
mov     ebx, ds:flt_55FE58
mov     [edx+28h], ebx
mov     ebx, ds:flt_55FE5C
mov     [edx+2Ch], ebx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A0
fstp    dword ptr [edx+10h]
mov     ebx, ds:dword_55FE68
mov     [edx+30h], ebx
mov     ebx, ds:dword_55FE6C
mov     [edx+34h], ebx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A0
fstp    dword ptr [edx+18h]
mov     bx, ds:word_55FE54
mov     [edx+0Ch], bx
mov     bx, ds:word_55FE64
mov     [edx+14h], bx
mov     bx, ds:word_55FE74
mov     [edx+1Ch], bx
mov     ebx, ds:dword_55FE84
and     ebx, 0F7FFFFFFh
mov     [edx+4], ebx
mov     bx, word ptr ds:dword_55FE88
mov     [edx+0Eh], bx
mov     bx, word ptr ds:dword_55FE80
mov     [edx+16h], bx
test    esi, 90000000h
jz      short loc_4E8A0B
or      byte ptr [eax+17h], 4
or      byte ptr [edx+17h], 4

loc_4E8A0B:
test    esi, 10000000h
jz      short loc_4E8A22
mov     ebx, ebp
mov     edx, ecx
mov     eax, [esp+44h+var_24]
call    sub_4F87AF
jmp     short loc_4E8A3F

loc_4E8A22:
mov     eax, [esp+44h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx

loc_4E8A39:
mov     [eax], ecx
mov     [esp+44h+var_24], ecx

loc_4E8A3F:
add     edi, 10h
add     [esp+44h+var_28], 8

loc_4E8A47:
mov     ecx, [esp+44h+var_3C]
test    ecx, ecx
jbe     loc_4E8C26
mov     esi, [edi-4]
lea     ebx, [ecx-1]
mov     [esp+44h+var_3C], ebx
test    esi, 10000000h
jz      short loc_4E8A6C
cmp     [esp+44h+var_24], 0
jz      short loc_4E8A3F

loc_4E8A6C:
mov     eax, [edi]
movsx   dx, al
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
mov     ebx, [esp+44h+var_34]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_38]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, [esp+44h+var_34]
mov     ds:word_55FE10, ax
mov     eax, [edi+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+44h+var_30]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
mov     ebp, [esp+44h+var_38]
add     edx, ebp
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
mov     edx, [esp+44h+var_30]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [edi+8]
movsx   dx, al
shl     edx, cl
mov     ecx, [esp+44h+var_38]
add     ecx, edx
mov     ds:word_55FE1C, cx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, ebp
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+48h+var_40]
mov     ebx, offset dword_55FE28
mov     edx, [esp+48h+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4E8A3F
cmp     eax, 3
jnz     loc_4E85D1
lea     eax, [esp+44h+var_1C]
push    eax             ; int
lea     eax, [esp+48h+var_44]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4E85FA

loc_4E8C0F:
test    esi, 10000000h
jnz     loc_4E8A3F
xor     ebx, ebx
mov     [esp+44h+var_24], ebx
jmp     loc_4E8A3F

loc_4E8C26:
add     esp, 2Ch
jmp     loc_4E8111
sub_4E8521 endp




sub_4E8C2E proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     edi, edx
mov     esi, [eax]
and     esi, 0FFh
xor     eax, eax

loc_4E8C40:
cmp     eax, esi
jnb     short loc_4E8C58
mov     edx, eax
shl     edx, 2
lea     ecx, [ebx+edx]
mov     ecx, [ecx+4]
mov     ds:dword_55FDC8[edx], ecx
inc     eax
jmp     short loc_4E8C40

loc_4E8C58:
shl     esi, 2
add     esi, 4
add     ebx, esi
mov     eax, ds:dword_56F182
sar     eax, 10h
mov     ecx, ds:dword_55FE76
sar     ecx, 10h
lea     edx, [ebx+10h]
cmp     eax, ecx
jge     short loc_4E8C9F
mov     esi, ds:dword_56F186
sar     esi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ecx, [ebx+18h]
cmp     esi, eax
jge     short loc_4E8C9B

loc_4E8C90:
mov     eax, ebx

loc_4E8C92:
call    sub_4E8D3B
mov     eax, ecx
jmp     short loc_4E8CC0

loc_4E8C9B:
mov     eax, edx
jmp     short loc_4E8C92

loc_4E8C9F:
mov     esi, ds:dword_56F186
sar     esi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ecx, [ebx+8]
cmp     esi, eax
jl      short loc_4E8C90
mov     eax, ecx
call    sub_4E8D3B
mov     eax, edx

loc_4E8CC0:
call    sub_4E8D3B
lea     eax, [ebx+20h]
call    sub_4E8D3B
cmp     edi, ds:dword_55FDBC
jg      short loc_4E8CDD
lea     eax, [ebx+28h]
call    sub_4E8D3B

loc_4E8CDD:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E8C2E endp




sub_4E8CE2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     edx, [eax]
mov     edi, edx
and     edi, 3F00h
shr     edi, 7
mov     esi, edx
and     esi, 0FFh
xor     edx, edx

loc_4E8CFF:
cmp     edx, esi
jnb     short loc_4E8D17
mov     eax, edx
shl     eax, 2
lea     ecx, [ebx+eax]
mov     ecx, [ecx+4]
mov     ds:dword_55FDC8[eax], ecx
inc     edx
jmp     short loc_4E8CFF

loc_4E8D17:
mov     eax, esi
shl     eax, 2
add     eax, 4
add     ebx, eax
xor     edx, edx

loc_4E8D23:
mov     eax, edx
shl     eax, 2
add     eax, ebx
call    sub_4E8D3B
add     edx, 2
cmp     edx, edi
jb      short loc_4E8D23
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E8CE2 endp




sub_4E8D3B proc near

var_48= dword ptr -48h
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
push    esi
push    edi
push    ebp
sub     esp, 30h
mov     ecx, [eax]
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+48h+var_3C], eax
mov     ebx, ecx
shr     ebx, 1Ch
xor     eax, eax
mov     al, ds:byte_77EABF
add     ebx, eax
mov     [esp+48h+var_20], ebx
and     edx, 0FFFFFFh
lea     ebp, [edx+4]
add     ebp, offset unk_6B87CC
mov     edx, ecx
and     edx, 0FFFFFFh
mov     ebx, offset unk_6B87CC
add     ebx, edx
mov     [esp+48h+var_28], ebx
mov     edx, ecx
and     edx, 0F000000h
shr     edx, 18h
mov     edx, ds:dword_55FDC8[edx*4]
mov     ecx, edx
shr     ecx, 10h
mov     ds:dword_55FE88, ecx
and     edx, 0FFFFh
mov     ds:dword_55FE80, edx
mov     edi, 1
mov     edx, ds:dword_55FE76
sar     edx, 10h
mov     cl, al
shl     edx, cl
mov     [esp+48h+var_30], edx
mov     edx, ds:dword_55FE76+2
sar     edx, 10h
shl     edx, cl
mov     [esp+48h+var_38], edx
mov     edx, ds:dword_55FE7A
sar     edx, 10h
shl     edx, cl
mov     [esp+48h+var_34], edx
jmp     loc_4E93B2

loc_4E8DE8:
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE60   ; float
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E82C1

loc_4E8E11:
mov     [esp+48h+var_2C], eax
fld     [esp+48h+var_48]
call    __CHP
fistp   [esp+48h+var_40]
mov     eax, esi
and     eax, 2FFFFFFh
or      eax, 0AC000000h
mov     ds:dword_55FE84, eax
mov     eax, [esp+48h+var_44]
test    eax, eax
jg      short loc_4E8E4E
test    esi, 40000000h
jz      loc_4E9574
mov     ecx, eax
neg     ecx
mov     [esp+48h+var_44], ecx

loc_4E8E4E:
test    esi, esi
jle     loc_4E8F67
mov     eax, [esp+48h+var_40]
cmp     eax, ds:dword_55FDC0
jge     loc_4E8F67
cmp     edx, 3
jnz     short loc_4E8EE8
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8118
cmp     [esp+48h+var_48], 43160000h
jle     loc_4E8F67
cmp     [esp+48h+var_1C], 432A0000h
jge     loc_4E8F67
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8118
cmp     [esp+48h+var_48], 42F00000h
jle     loc_4E8F67
cmp     [esp+48h+var_1C], 43200000h
jge     loc_4E8F67
jmp     loc_4E8F5C

loc_4E8EE8:
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE58   ; float
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8192
cmp     [esp+48h+var_48], 43160000h
jle     short loc_4E8F67
cmp     [esp+48h+var_1C], 432A0000h
jge     short loc_4E8F67
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE5C   ; float
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8192
cmp     [esp+48h+var_48], 42F00000h
jle     short loc_4E8F67
cmp     [esp+48h+var_1C], 43200000h
jge     short loc_4E8F67

loc_4E8F5C:
mov     eax, ds:dword_77E6F8
or      ds:dword_55FE84, eax

loc_4E8F67:
cmp     edx, 4
jb      short loc_4E8F80
jbe     loc_4E9092
cmp     edx, 5
jz      loc_4E91BE
jmp     loc_4E93AA

loc_4E8F80:
cmp     edx, 3
jnz     loc_4E93AA
mov     eax, ds:dword_77E6DC
mov     ebx, eax
lea     edx, [eax+38h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+20h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+24h], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+28h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+2Ch], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE48
mov     [eax+30h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+34h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+18h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE54
mov     [eax+1Ch], dx
mov     edx, ds:dword_55FE84
and     edx, 0F7FFFFFFh
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E904E
or      byte ptr [eax+17h], 4

loc_4E904E:
test    esi, 10000000h
jz      short loc_4E9064
mov     edx, ebx

loc_4E9058:
mov     eax, edi
call    sub_4F87A6
jmp     loc_4E93AA

loc_4E9064:
mov     eax, [esp+48h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebx], edx
test    esi, 1000000h
jz      short loc_4E9089

loc_4E9082:
mov     edi, eax
jmp     loc_4E93AA

loc_4E9089:
mov     [eax], ebx
mov     edi, ebx
jmp     loc_4E93AA

loc_4E9092:
mov     eax, ds:dword_77E6DC
mov     [esp+48h+var_24], eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE58
mov     [eax+38h], edx
mov     edx, ds:flt_55FE5C
mov     [eax+3Ch], edx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE64
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E917F
or      byte ptr [eax+17h], 4

loc_4E917F:
test    esi, 10000000h
jz      short loc_4E9190
mov     edx, [esp+48h+var_24]
jmp     loc_4E9058

loc_4E9190:
mov     edx, [esp+48h+var_2C]
sar     edx, 3
shl     edx, 2
mov     eax, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     ecx, [esp+48h+var_24]
mov     [ecx], edx
test    esi, 1000000h
jnz     loc_4E9082
mov     [eax], ecx
mov     edi, ecx
jmp     loc_4E93AA

loc_4E91BE:
mov     eax, ds:dword_77E6DC
mov     [esp+48h+var_24], eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+10h]
mov     edx, ds:dword_55FE68
mov     [eax+38h], edx
mov     edx, ds:dword_55FE6C
mov     [eax+3Ch], edx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE74
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
mov     edx, ds:dword_77E6DC
mov     ebx, edx
lea     ecx, [edx+38h]
mov     ds:dword_77E6DC, ecx
mov     [eax], edx
mov     ecx, ds:flt_55FE48
mov     [edx+20h], ecx
mov     ecx, ds:flt_55FE4C
mov     [edx+24h], ecx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A4
fstp    dword ptr [edx+8]
mov     ecx, ds:flt_55FE58
mov     [edx+28h], ecx
mov     ecx, ds:flt_55FE5C
mov     [edx+2Ch], ecx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A4
fstp    dword ptr [edx+10h]
mov     ecx, ds:dword_55FE68
mov     [edx+30h], ecx
mov     ecx, ds:dword_55FE6C
mov     [edx+34h], ecx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A4
fstp    dword ptr [edx+18h]
mov     cx, ds:word_55FE54
mov     [edx+0Ch], cx
mov     cx, ds:word_55FE64
mov     [edx+14h], cx
mov     cx, ds:word_55FE74
mov     [edx+1Ch], cx
mov     ecx, ds:dword_55FE84
and     ecx, 0F7FFFFFFh
mov     [edx+4], ecx
mov     cx, word ptr ds:dword_55FE88
mov     [edx+0Eh], cx
mov     cx, word ptr ds:dword_55FE80
mov     [edx+16h], cx
test    esi, 90000000h
jz      short loc_4E936B
or      byte ptr [eax+17h], 4
or      byte ptr [edx+17h], 4

loc_4E936B:
test    esi, 10000000h
jz      short loc_4E9380
mov     edx, [esp+48h+var_24]
mov     eax, edi
call    sub_4F87AF
jmp     short loc_4E93AA

loc_4E9380:
mov     eax, [esp+48h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebx], edx
test    esi, 1000000h
jnz     loc_4E9082
mov     edx, [esp+48h+var_24]
mov     [eax], edx
mov     edi, edx

loc_4E93AA:
add     ebp, 10h
add     [esp+48h+var_28], 8

loc_4E93B2:
mov     edx, [esp+48h+var_3C]
test    edx, edx
jbe     loc_4E9587
mov     esi, [ebp-4]
lea     ecx, [edx-1]
mov     [esp+48h+var_3C], ecx
test    esi, 10000000h
jz      short loc_4E93D4
test    edi, edi
jz      short loc_4E93AA

loc_4E93D4:
mov     eax, [ebp+0]
movsx   dx, al
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
mov     ebx, [esp+48h+var_30]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+48h+var_38]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
add     edx, [esp+48h+var_34]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
shl     eax, cl
add     eax, [esp+48h+var_30]
mov     ds:word_55FE10, ax
mov     eax, [ebp+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+48h+var_38]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+48h+var_34]
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
add     edx, [esp+48h+var_30]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
shl     eax, cl
mov     edx, [esp+48h+var_38]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [ebp+8]
movsx   dx, al
shl     edx, cl
mov     ebx, [esp+48h+var_34]
add     ebx, edx
mov     ds:word_55FE1C, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+48h+var_30]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
mov     cl, byte ptr [esp+48h+var_20]
shl     edx, cl
mov     ecx, [esp+48h+var_38]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+48h+var_20]
shl     eax, cl
add     eax, [esp+48h+var_34]
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+4Ch+var_44]
mov     ebx, offset dword_55FE28
mov     edx, [esp+4Ch+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4E93AA
cmp     eax, 3
jnz     loc_4E8DE8
lea     eax, [esp+48h+var_1C]
push    eax             ; int
lea     eax, [esp+4Ch+var_48]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4E8E11

loc_4E9574:
test    esi, 10000000h
jnz     loc_4E93AA
xor     edi, edi
jmp     loc_4E93AA

loc_4E9587:
add     esp, 30h
jmp     loc_4E8111
sub_4E8D3B endp




sub_4E958F proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     edx, [eax]
and     edx, 0FFh
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
shl     eax, 2
add     eax, 4
add     ecx, eax
mov     ebx, ds:dword_56F182
sar     ebx, 10h
mov     eax, ds:dword_55FE76
sar     eax, 10h
lea     edx, [ecx+10h]
cmp     ebx, eax
jge     short loc_4E9600
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+18h]
cmp     edi, eax
jge     short loc_4E95FC

loc_4E95F1:
mov     eax, ecx

loc_4E95F3:
call    sub_4E9693
mov     eax, ebx
jmp     short loc_4E9621

loc_4E95FC:
mov     eax, edx
jmp     short loc_4E95F3

loc_4E9600:
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+8]
cmp     edi, eax
jl      short loc_4E95F1
mov     eax, ebx
call    sub_4E9693
mov     eax, edx

loc_4E9621:
call    sub_4E9693
lea     eax, [ecx+20h]
call    sub_4E9693
cmp     esi, ds:dword_55FDBC
jg      short loc_4E963E
lea     eax, [ecx+28h]
call    sub_4E9693

loc_4E963E:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E958F endp




sub_4E9643 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     edx, [eax]
mov     ebx, edx
and     ebx, 3F00h
shr     ebx, 7
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4E967D:
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4E9693
add     edx, 2
cmp     edx, ebx
jb      short loc_4E967D
pop     ecx
pop     ebx
retn
sub_4E9643 endp




sub_4E9693 proc near

var_4C= dword ptr -4Ch
var_48= dword ptr -48h
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
push    esi
push    edi
push    ebp
sub     esp, 34h
mov     ecx, [eax]
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+4Ch+var_38], eax
mov     esi, ecx
shr     esi, 1Ch
xor     eax, eax
mov     al, ds:byte_77EABF
add     esi, eax
mov     [esp+4Ch+var_20], esi
and     edx, 0FFFFFFh
add     edx, 4
mov     edi, offset unk_6B87CC
add     edi, edx
mov     edx, ecx
and     edx, 0FFFFFFh
mov     esi, offset unk_6B87CC
add     esi, edx
mov     [esp+4Ch+var_28], esi
mov     edx, ecx
and     edx, 0F000000h
shr     edx, 18h
mov     edx, ds:dword_55FDC8[edx*4]
mov     ecx, edx
shr     ecx, 10h
mov     ds:dword_55FE88, ecx
and     edx, 0FFFFh
mov     ds:dword_55FE80, edx
mov     [esp+4Ch+var_48], 1
mov     edx, ds:dword_55FE76
sar     edx, 10h
mov     cl, al
shl     edx, cl
mov     [esp+4Ch+var_30], edx
mov     edx, ds:dword_55FE76+2
sar     edx, 10h
shl     edx, cl
mov     [esp+4Ch+var_2C], edx
mov     edx, ds:dword_55FE7A
sar     edx, 10h
shl     edx, cl
mov     [esp+4Ch+var_34], edx
jmp     loc_4E9D1D

loc_4E9744:
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE60   ; float
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E82C1

loc_4E976D:
mov     [esp+4Ch+var_24], eax
fld     [esp+4Ch+var_4C]
call    __CHP
fistp   [esp+4Ch+var_3C]
fld     [esp+4Ch+var_1C]
call    __CHP
fistp   [esp+4Ch+var_40]
mov     eax, esi
and     eax, 2FFFFFFh
or      eax, 0AC000000h
mov     ds:dword_55FE84, eax
mov     eax, [esp+4Ch+var_44]
test    eax, eax
jg      short loc_4E97E7
jz      loc_4E9EE5
mov     ebx, eax
neg     ebx
mov     [esp+4Ch+var_44], ebx
test    esi, 40000000h
jnz     short loc_4E97E7
mov     eax, [esp+4Ch+var_40]
cmp     eax, ds:dword_55FDC0
jle     loc_4E9EE5
test    esi, 1000000h
jnz     loc_4E9EE5
mov     ds:dword_55FE84, 0AC010101h
mov     eax, [esp+4Ch+var_3C]
mov     [esp+4Ch+var_24], eax

loc_4E97E7:
test    esi, esi
jle     loc_4E9900
mov     eax, [esp+4Ch+var_3C]
cmp     eax, ds:dword_55FDC0
jge     loc_4E9900
cmp     edx, 3
jnz     short loc_4E9881
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8118
cmp     [esp+4Ch+var_4C], 43160000h
jle     loc_4E9900
cmp     [esp+4Ch+var_1C], 432A0000h
jge     loc_4E9900
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8118
cmp     [esp+4Ch+var_4C], 42F00000h
jle     loc_4E9900
cmp     [esp+4Ch+var_1C], 43200000h
jge     loc_4E9900
jmp     loc_4E98F5

loc_4E9881:
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE58   ; float
push    ds:flt_55FE48   ; float
push    ds:flt_55FE38   ; float
push    ds:dword_55FE28 ; int
call    sub_4E8192
cmp     [esp+4Ch+var_4C], 43160000h
jle     short loc_4E9900
cmp     [esp+4Ch+var_1C], 432A0000h
jge     short loc_4E9900
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE5C   ; float
push    ds:flt_55FE4C   ; float
push    ds:flt_55FE3C   ; float
push    ds:dword_55FE2C ; int
call    sub_4E8192
cmp     [esp+4Ch+var_4C], 42F00000h
jle     short loc_4E9900
cmp     [esp+4Ch+var_1C], 43200000h
jge     short loc_4E9900

loc_4E98F5:
mov     eax, ds:dword_77E6F8
or      ds:dword_55FE84, eax

loc_4E9900:
cmp     edx, 4
jb      short loc_4E9919
jbe     loc_4E9A21
cmp     edx, 5
jz      loc_4E9B36
jmp     loc_4E9D15

loc_4E9919:
cmp     edx, 3
jnz     loc_4E9D15
mov     eax, ds:dword_77E6DC
mov     ebp, eax
lea     edx, [eax+38h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+20h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+24h], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+28h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+2Ch], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE48
mov     [eax+30h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+34h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+18h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE54
mov     [eax+1Ch], dx
mov     edx, ds:dword_55FE84
and     edx, 0F7FFFFFFh
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E99E7
or      byte ptr [eax+17h], 4

loc_4E99E7:
test    esi, 10000000h
jz      short loc_4E99FF
mov     edx, ebp

loc_4E99F1:
mov     eax, [esp+4Ch+var_48]
call    sub_4F87A6
jmp     loc_4E9D15

loc_4E99FF:
mov     eax, [esp+4Ch+var_24]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx
mov     [eax], ebp
mov     [esp+4Ch+var_48], ebp
jmp     loc_4E9D15

loc_4E9A21:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE58
mov     [eax+38h], edx
mov     edx, ds:flt_55FE5C
mov     [eax+3Ch], edx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE64
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4E9B0C
or      byte ptr [eax+17h], 4

loc_4E9B0C:
test    esi, 10000000h
jz      short loc_4E9B1B
mov     edx, ecx
jmp     loc_4E99F1

loc_4E9B1B:
mov     eax, [esp+4Ch+var_24]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ecx], edx
jmp     loc_4E9D0F

loc_4E9B36:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+10h]
mov     edx, ds:dword_55FE68
mov     [eax+38h], edx
mov     edx, ds:dword_55FE6C
mov     [eax+3Ch], edx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE74
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
mov     edx, ds:dword_77E6DC
mov     ebp, edx
lea     ebx, [edx+38h]
mov     ds:dword_77E6DC, ebx
mov     [eax], edx
mov     ebx, ds:flt_55FE48
mov     [edx+20h], ebx
mov     ebx, ds:flt_55FE4C
mov     [edx+24h], ebx
fld     ds:flt_55FE50
fmul    ds:flt_50A4A8
fstp    dword ptr [edx+8]
mov     ebx, ds:flt_55FE58
mov     [edx+28h], ebx
mov     ebx, ds:flt_55FE5C
mov     [edx+2Ch], ebx
fld     ds:flt_55FE60
fmul    ds:flt_50A4A8
fstp    dword ptr [edx+10h]
mov     ebx, ds:dword_55FE68
mov     [edx+30h], ebx
mov     ebx, ds:dword_55FE6C
mov     [edx+34h], ebx
fld     ds:flt_55FE70
fmul    ds:flt_50A4A8
fstp    dword ptr [edx+18h]
mov     bx, ds:word_55FE54
mov     [edx+0Ch], bx
mov     bx, ds:word_55FE64
mov     [edx+14h], bx
mov     bx, ds:word_55FE74
mov     [edx+1Ch], bx
mov     ebx, ds:dword_55FE84
and     ebx, 0F7FFFFFFh
mov     [edx+4], ebx
mov     bx, word ptr ds:dword_55FE88
mov     [edx+0Eh], bx
mov     bx, word ptr ds:dword_55FE80
mov     [edx+16h], bx
test    esi, 90000000h
jz      short loc_4E9CE1
or      byte ptr [eax+17h], 4
or      byte ptr [edx+17h], 4

loc_4E9CE1:
test    esi, 10000000h
jz      short loc_4E9CF8
mov     ebx, ebp
mov     edx, ecx
mov     eax, [esp+4Ch+var_48]
call    sub_4F87AF
jmp     short loc_4E9D15

loc_4E9CF8:
mov     eax, [esp+4Ch+var_24]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx

loc_4E9D0F:
mov     [eax], ecx
mov     [esp+4Ch+var_48], ecx

loc_4E9D15:
add     edi, 10h
add     [esp+4Ch+var_28], 8

loc_4E9D1D:
mov     ecx, [esp+4Ch+var_38]
test    ecx, ecx
jbe     loc_4E9EFC
mov     esi, [edi-4]
lea     ebx, [ecx-1]
mov     [esp+4Ch+var_38], ebx
test    esi, 10000000h
jz      short loc_4E9D42
cmp     [esp+4Ch+var_48], 0
jz      short loc_4E9D15

loc_4E9D42:
mov     eax, [edi]
movsx   dx, al
mov     cl, byte ptr [esp+4Ch+var_20]
shl     edx, cl
mov     ebx, [esp+4Ch+var_30]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+4Ch+var_2C]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+4Ch+var_20]
shl     edx, cl
add     edx, [esp+4Ch+var_34]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+4Ch+var_20]
shl     eax, cl
add     eax, [esp+4Ch+var_30]
mov     ds:word_55FE10, ax
mov     eax, [edi+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+4Ch+var_2C]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
mov     ebp, [esp+4Ch+var_34]
add     edx, ebp
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+4Ch+var_30]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
mov     cl, byte ptr [esp+4Ch+var_20]
shl     eax, cl
mov     edx, [esp+4Ch+var_2C]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [edi+8]
movsx   dx, al
shl     edx, cl
mov     ecx, [esp+4Ch+var_34]
add     ecx, edx
mov     ds:word_55FE1C, cx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+4Ch+var_20]
shl     edx, cl
add     edx, [esp+4Ch+var_30]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+4Ch+var_2C]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+4Ch+var_20]
shl     eax, cl
add     eax, ebp
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+50h+var_44]
mov     ebx, offset dword_55FE28
mov     edx, [esp+50h+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4E9D15
cmp     eax, 3
jnz     loc_4E9744
lea     eax, [esp+4Ch+var_1C]
push    eax             ; int
lea     eax, [esp+50h+var_4C]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4E976D

loc_4E9EE5:
test    esi, 10000000h
jnz     loc_4E9D15
xor     eax, eax
mov     [esp+4Ch+var_48], eax
jmp     loc_4E9D15

loc_4E9EFC:
add     esp, 34h
jmp     loc_4E8111
sub_4E9693 endp




sub_4E9F04 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     edx, [eax]
and     edx, 0FFh
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
shl     eax, 2
add     eax, 4
add     ecx, eax
mov     ebx, ds:dword_56F182
sar     ebx, 10h
mov     eax, ds:dword_55FE76
sar     eax, 10h
lea     edx, [ecx+10h]
cmp     ebx, eax
jge     short loc_4E9F75
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+18h]
cmp     edi, eax
jge     short loc_4E9F71

loc_4E9F66:
mov     eax, ecx

loc_4E9F68:
call    sub_4EA008
mov     eax, ebx
jmp     short loc_4E9F96

loc_4E9F71:
mov     eax, edx
jmp     short loc_4E9F68

loc_4E9F75:
mov     edi, ds:dword_56F186
sar     edi, 10h
mov     eax, ds:dword_55FE7A
sar     eax, 10h
lea     ebx, [ecx+8]
cmp     edi, eax
jl      short loc_4E9F66
mov     eax, ebx
call    sub_4EA008
mov     eax, edx

loc_4E9F96:
call    sub_4EA008
lea     eax, [ecx+20h]
call    sub_4EA008
cmp     esi, ds:dword_55FDBC
jg      short loc_4E9FB3
lea     eax, [ecx+28h]
call    sub_4EA008

loc_4E9FB3:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4E9F04 endp




sub_4E9FB8 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     edx, [eax]
mov     ebx, edx
and     ebx, 3F00h
shr     ebx, 7
mov     eax, [eax+4]
mov     ds:dword_55FDC8, eax
mov     eax, [ecx+8]
mov     ds:dword_55FDCC, eax
mov     eax, [ecx+0Ch]
mov     ds:dword_55FDD0, eax
mov     eax, edx
and     eax, 0FFh
shl     eax, 2
add     eax, 4
add     ecx, eax
xor     edx, edx

loc_4E9FF2:
mov     eax, edx
shl     eax, 2
add     eax, ecx
call    sub_4EA008
add     edx, 2
cmp     edx, ebx
jb      short loc_4E9FF2
pop     ecx
pop     ebx
retn
sub_4E9FB8 endp




sub_4EA008 proc near

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
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     ecx, [eax]
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+44h+var_3C], eax
mov     esi, ecx
shr     esi, 1Ch
xor     eax, eax
mov     al, ds:byte_77EABF
add     esi, eax
mov     [esp+44h+var_20], esi
and     edx, 0FFFFFFh
lea     edi, [edx+4]
add     edi, offset unk_6B87CC
mov     edx, ecx
and     edx, 0FFFFFFh
mov     esi, offset unk_6B87CC
add     esi, edx
mov     [esp+44h+var_28], esi
mov     edx, ecx
and     edx, 0F000000h
shr     edx, 18h
mov     edx, ds:dword_55FDC8[edx*4]
mov     ecx, edx
shr     ecx, 10h
mov     ds:dword_55FE88, ecx
and     edx, 0FFFFh
mov     ds:dword_55FE80, edx
mov     [esp+44h+var_24], 1
mov     edx, ds:dword_55FE76
sar     edx, 10h
mov     cl, al
shl     edx, cl
mov     [esp+44h+var_34], edx
mov     edx, ds:dword_55FE76+2
sar     edx, 10h
shl     edx, cl
mov     [esp+44h+var_30], edx
mov     edx, ds:dword_55FE7A
sar     edx, 10h
shl     edx, cl
mov     [esp+44h+var_38], edx
jmp     loc_4EA52E

loc_4EA0B8:
lea     eax, [esp+44h+var_1C]
push    eax             ; int
lea     eax, [esp+48h+var_44]
push    eax             ; int
push    ds:flt_55FE60   ; float
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E82C1

loc_4EA0E1:
mov     [esp+44h+var_2C], eax
mov     eax, esi
and     eax, 2FFFFFFh
or      eax, 0AC000000h
mov     ds:dword_55FE84, eax
mov     eax, [esp+44h+var_40]
test    eax, eax
jg      short loc_4EA112
test    esi, 40000000h
jz      loc_4EA6F6
mov     ecx, eax
neg     ecx
mov     [esp+44h+var_40], ecx

loc_4EA112:
cmp     edx, 4
jb      short loc_4EA12B
jbe     loc_4EA233
cmp     edx, 5
jz      loc_4EA347
jmp     loc_4EA526

loc_4EA12B:
cmp     edx, 3
jnz     loc_4EA526
mov     eax, ds:dword_77E6DC
mov     ebp, eax
lea     edx, [eax+38h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+20h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+24h], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+28h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+2Ch], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE48
mov     [eax+30h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+34h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+18h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE54
mov     [eax+1Ch], dx
mov     edx, ds:dword_55FE84
and     edx, 0F7FFFFFFh
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4EA1F9
or      byte ptr [eax+17h], 4

loc_4EA1F9:
test    esi, 10000000h
jz      short loc_4EA211
mov     edx, ebp

loc_4EA203:
mov     eax, [esp+44h+var_24]
call    sub_4F87A6
jmp     loc_4EA526

loc_4EA211:
mov     eax, [esp+44h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx
mov     [eax], ebp
mov     [esp+44h+var_24], ebp
jmp     loc_4EA526

loc_4EA233:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+10h]
mov     edx, ds:flt_55FE58
mov     [eax+38h], edx
mov     edx, ds:flt_55FE5C
mov     [eax+3Ch], edx
fld     ds:flt_55FE60
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE64
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
test    esi, 90000000h
jz      short loc_4EA31E
or      byte ptr [eax+17h], 4

loc_4EA31E:
test    esi, 10000000h
jz      short loc_4EA32D
mov     edx, ecx
jmp     loc_4EA203

loc_4EA32D:
mov     edx, [esp+44h+var_2C]
sar     edx, 3
shl     edx, 2
mov     eax, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ecx], edx
jmp     loc_4EA520

loc_4EA347:
mov     eax, ds:dword_77E6DC
mov     ecx, eax
lea     edx, [eax+48h]
mov     ds:dword_77E6DC, edx
mov     edx, ds:dword_55FE28
mov     [eax+28h], edx
mov     edx, ds:dword_55FE2C
mov     [eax+2Ch], edx
fld     ds:dword_55FE30
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+8]
mov     edx, ds:flt_55FE38
mov     [eax+30h], edx
mov     edx, ds:flt_55FE3C
mov     [eax+34h], edx
fld     ds:flt_55FE40
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+10h]
mov     edx, ds:dword_55FE68
mov     [eax+38h], edx
mov     edx, ds:dword_55FE6C
mov     [eax+3Ch], edx
fld     ds:flt_55FE70
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+18h]
mov     edx, ds:flt_55FE48
mov     [eax+40h], edx
mov     edx, ds:flt_55FE4C
mov     [eax+44h], edx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [eax+20h]
mov     dx, ds:word_55FE34
mov     [eax+0Ch], dx
mov     dx, ds:word_55FE44
mov     [eax+14h], dx
mov     dx, ds:word_55FE74
mov     [eax+1Ch], dx
mov     dx, ds:word_55FE54
mov     [eax+24h], dx
mov     edx, ds:dword_55FE84
mov     [eax+4], edx
mov     dx, word ptr ds:dword_55FE88
mov     [eax+0Eh], dx
mov     dx, word ptr ds:dword_55FE80
mov     [eax+16h], dx
mov     edx, ds:dword_77E6DC
mov     ebp, edx
lea     ebx, [edx+38h]
mov     ds:dword_77E6DC, ebx
mov     [eax], edx
mov     ebx, ds:flt_55FE48
mov     [edx+20h], ebx
mov     ebx, ds:flt_55FE4C
mov     [edx+24h], ebx
fld     ds:flt_55FE50
fmul    ds:flt_50A4AC
fstp    dword ptr [edx+8]
mov     ebx, ds:flt_55FE58
mov     [edx+28h], ebx
mov     ebx, ds:flt_55FE5C
mov     [edx+2Ch], ebx
fld     ds:flt_55FE60
fmul    ds:flt_50A4AC
fstp    dword ptr [edx+10h]
mov     ebx, ds:dword_55FE68
mov     [edx+30h], ebx
mov     ebx, ds:dword_55FE6C
mov     [edx+34h], ebx
fld     ds:flt_55FE70
fmul    ds:flt_50A4AC
fstp    dword ptr [edx+18h]
mov     bx, ds:word_55FE54
mov     [edx+0Ch], bx
mov     bx, ds:word_55FE64
mov     [edx+14h], bx
mov     bx, ds:word_55FE74
mov     [edx+1Ch], bx
mov     ebx, ds:dword_55FE84
and     ebx, 0F7FFFFFFh
mov     [edx+4], ebx
mov     bx, word ptr ds:dword_55FE88
mov     [edx+0Eh], bx
mov     bx, word ptr ds:dword_55FE80
mov     [edx+16h], bx
test    esi, 90000000h
jz      short loc_4EA4F2
or      byte ptr [eax+17h], 4
or      byte ptr [edx+17h], 4

loc_4EA4F2:
test    esi, 10000000h
jz      short loc_4EA509
mov     ebx, ebp
mov     edx, ecx
mov     eax, [esp+44h+var_24]
call    sub_4F87AF
jmp     short loc_4EA526

loc_4EA509:
mov     eax, [esp+44h+var_2C]
sar     eax, 3
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ebp+0], edx

loc_4EA520:
mov     [eax], ecx
mov     [esp+44h+var_24], ecx

loc_4EA526:
add     edi, 10h
add     [esp+44h+var_28], 8

loc_4EA52E:
mov     ecx, [esp+44h+var_3C]
test    ecx, ecx
jbe     loc_4E8C26
mov     esi, [edi-4]
lea     ebx, [ecx-1]
mov     [esp+44h+var_3C], ebx
test    esi, 10000000h
jz      short loc_4EA553
cmp     [esp+44h+var_24], 0
jz      short loc_4EA526

loc_4EA553:
mov     eax, [edi]
movsx   dx, al
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
mov     ebx, [esp+44h+var_34]
add     ebx, edx
mov     ds:word_55FE08, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE0A, cx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_38]
mov     ds:word_55FE0C, dx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, [esp+44h+var_34]
mov     ds:word_55FE10, ax
mov     eax, [edi+4]
mov     dl, al
xor     dh, dh
shl     edx, cl
mov     ebx, [esp+44h+var_30]
sub     ebx, edx
mov     ds:word_55FE12, bx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
mov     ebp, [esp+44h+var_38]
add     edx, ebp
mov     ds:word_55FE14, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
movsx   edx, dl
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE18, dx
sar     eax, 18h
and     eax, 0FFh
and     eax, 0FFh
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
mov     edx, [esp+44h+var_30]
sub     edx, eax
mov     ds:word_55FE1A, dx
mov     eax, [edi+8]
movsx   dx, al
shl     edx, cl
mov     ecx, [esp+44h+var_38]
add     ecx, edx
mov     ds:word_55FE1C, cx
mov     edx, eax
sar     edx, 8
and     edx, 0FFh
movsx   edx, dl
mov     cl, byte ptr [esp+44h+var_20]
shl     edx, cl
add     edx, [esp+44h+var_34]
mov     ds:word_55FE20, dx
mov     edx, eax
sar     edx, 10h
and     edx, 0FFh
and     edx, 0FFh
shl     edx, cl
mov     ecx, [esp+44h+var_30]
sub     ecx, edx
mov     ds:word_55FE22, cx
sar     eax, 18h
and     eax, 0FFh
movsx   eax, al
mov     cl, byte ptr [esp+44h+var_20]
shl     eax, cl
add     eax, ebp
mov     ds:word_55FE24, ax
push    4
lea     ecx, [esp+48h+var_40]
mov     ebx, offset dword_55FE28
mov     edx, [esp+48h+var_28]
mov     eax, offset word_55FE08
call    sub_4F04FB
mov     edx, eax
test    eax, eax
jz      loc_4EA526
cmp     eax, 3
jnz     loc_4EA0B8
lea     eax, [esp+44h+var_1C]
push    eax             ; int
lea     eax, [esp+48h+var_44]
push    eax             ; int
push    ds:flt_55FE50   ; float
push    ds:flt_55FE40   ; float
push    ds:dword_55FE30 ; int
mov     eax, esi
call    sub_4E8234
jmp     loc_4EA0E1

loc_4EA6F6:
test    esi, 10000000h
jnz     loc_4EA526
xor     ebx, ebx
mov     [esp+44h+var_24], ebx
jmp     loc_4EA526
sub_4EA008 endp




; int __stdcall sub_4EA70D(float, float, int, int)
sub_4EA70D proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, 1000h
xor     edi, edi
mov     [esp+30h+var_24], edi
xor     ecx, ecx
mov     eax, [esp+30h+arg_C]
mov     ebx, [esp+30h+arg_8]
sub     eax, ebx
mov     [esp+30h+var_28], eax
mov     [esp+30h+var_20], edi
jmp     short loc_4EA758

loc_4EA737:
mov     ebx, [esp+30h+var_24]
add     ebx, 10h
mov     [esp+30h+var_24], ebx
mov     esi, [esp+30h+var_20]
add     esi, ebx
mov     [esp+30h+var_20], esi
cmp     esi, 400h
jge     loc_4EA91A

loc_4EA758:
mov     esi, ecx
mov     eax, [esp+30h+var_20]
add     eax, [esp+30h+var_24]
call    sub_4EF008
imul    eax, [esp+30h+var_28]
sar     eax, 0Ch
mov     ecx, [esp+30h+arg_8]
add     ecx, eax
xor     ebx, ebx

loc_4EA777:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+28h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87CF
mov     byte ptr [edx+4], 20h ; ' '
mov     byte ptr [edx+5], 0
mov     byte ptr [edx+6], 0
or      byte ptr [edx+7], 2
mov     [esp+30h+var_30], ebp
mov     [esp+30h+var_2C], edi
mov     ebp, ds:dword_56F792[ebx*8]
sar     ebp, 10h
mov     edi, ds:dword_564C3A[ebx*8]
sar     edi, 10h
mov     eax, [esp+30h+var_30]
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+8], ax
mov     eax, [esp+30h+var_2C]
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+0Ah], ax
mov     eax, ebp
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+0Ch], ax
mov     eax, edi
imul    eax, esi
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+0Eh], ax
mov     eax, [esp+30h+var_30]
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+10h], ax
mov     eax, [esp+30h+var_2C]
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+12h], ax
mov     eax, ebp
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_0]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+14h], ax
mov     eax, edi
imul    eax, ecx
sar     eax, 0Ch
mov     [esp+30h+var_1C], eax
fild    [esp+30h+var_1C]
fadd    [esp+30h+arg_4]
call    __CHP
fistp   [esp+30h+var_1C]
mov     eax, [esp+30h+var_1C]
mov     [edx+16h], ax
mov     dword ptr [edx+24h], 3DCCCCCDh
mov     eax, [edx+24h]
mov     [edx+20h], eax
mov     eax, [edx+20h]
mov     [edx+1Ch], eax
mov     eax, [edx+1Ch]
mov     [edx+18h], eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
inc     ebx
cmp     ebx, 10h
jb      loc_4EA777
jmp     loc_4EA737

loc_4EA91A:
mov     esi, ds:dword_77E6DC
push    0
lea     eax, [esi+0Ch]
mov     ds:dword_77E6DC, eax
xor     ebx, ebx
mov     edx, 1
xor     eax, eax
call    sub_4F892F
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, esi
call    sub_4F87A6
add     esp, 18h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn    10h
sub_4EA70D endp




sub_4EA960 proc near
push    edx
cmp     ds:dword_77E710, 0
jnz     loc_4EAA27
xor     eax, eax
mov     al, ds:byte_5F836A
mov     edx, dword ptr ds:unk_5F8361
sar     edx, 18h
and     eax, edx
test    al, 2
jz      short loc_4EA9BE
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
mov     edx, offset unk_7754A4
add     edx, eax
mov     eax, offset byte_5F8364
call    sub_4EAD88
test    eax, eax
jz      short loc_4EA9BE
xor     edx, edx
mov     dl, ds:byte_77EAC6
shl     edx, 0Bh
add     edx, offset unk_7754A4
mov     eax, offset byte_5F8364
call    sub_4EAA29

loc_4EA9BE:
mov     edx, ds:dword_5F8A55
sar     edx, 18h
xor     eax, eax
mov     al, ds:byte_5F8A5E
and     eax, edx
test    al, 2
jz      short loc_4EAA0E
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Bh
mov     edx, offset unk_76C464
add     edx, eax
mov     eax, (offset dword_5F8A55+3)
call    sub_4EAD88
test    eax, eax
jz      short loc_4EAA0E
xor     edx, edx
mov     dl, ds:byte_77EAC6
shl     edx, 0Bh
add     edx, offset unk_76C464
mov     eax, (offset dword_5F8A55+3)
call    sub_4EAA29

loc_4EAA0E:
call    sub_4EBB84
call    sub_4EBC11
call    sub_4EBC59
call    sub_4ED9F4
call    sub_4EE1A3

loc_4EAA27:
pop     edx
retn
sub_4EA960 endp




sub_4EAA29 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     esi, edx
cmp     byte ptr [eax+171h], 0
jnz     short loc_4EAA46
xor     ebx, ebx
mov     [esp+30h+var_20], ebx
jmp     short loc_4EAA61

loc_4EAA46:
cmp     byte ptr [ebp+170h], 0
jnz     short loc_4EAA59
mov     [esp+30h+var_20], 2
jmp     short loc_4EAA61

loc_4EAA59:
mov     [esp+30h+var_20], 1

loc_4EAA61:
xor     edi, edi
mov     [esp+30h+var_1C], edi
xor     ecx, ecx
jmp     short loc_4EAA7D

loc_4EAA6B:
mov     edi, [esp+30h+var_1C]
inc     edi
mov     [esp+30h+var_1C], edi
cmp     edi, 5
jge     loc_4EAB78

loc_4EAA7D:
mov     edx, [esp+30h+var_20]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, [esp+30h+var_1C]
mov     al, ds:byte_550EF0[eax]
and     eax, 0FFh
mov     [esp+30h+var_18], eax
mov     edx, [esp+30h+var_20]
mov     eax, edx
shl     eax, 2
add     eax, edx
mov     edx, [esp+30h+var_1C]
shl     edx, 2
mov     eax, ds:off_550EB4[edx+eax*4]
mov     ds:dword_560AD0, eax
xor     edi, edi

loc_4EAABB:
cmp     edi, [esp+30h+var_18]
jge     short loc_4EAA6B
xor     edx, edx
mov     dl, ds:byte_550EFF[ecx]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
lea     edx, [ebp+1D8h]
add     edx, eax
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
xor     edx, edx
mov     dl, ds:byte_550EFF[ecx]
shl     edx, 3
lea     eax, [ebp+4A8h]
add     edx, eax
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+30h+var_30]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ebx, [esp+30h+var_2C]
add     eax, ebx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     edx, [esp+30h+var_28]
add     eax, edx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
mov     eax, ds:dword_560AD0
lea     ebx, [eax+0Ch]
mov     edx, esi
call    sub_4EAB81
mov     eax, ds:dword_560AD0
lea     ebx, [eax+0Ch]
mov     edx, esi
call    sub_4EAC76
add     ds:dword_560AD0, 10h
inc     ecx
inc     edi
jmp     loc_4EAABB

loc_4EAB78:
add     esp, 1Ch

loc_4EAB7B:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EAA29 endp




sub_4EAB81 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ecx, eax
mov     [esp+24h+var_14], edx
mov     edi, ebx
mov     ebp, [eax]
and     ebp, 0FFh
jz      loc_4EAC6E
mov     esi, [eax+4]
add     esi, 70h ; 'p'
xor     edx, edx
mov     dl, ds:byte_77EAC6
add     edx, edx
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     ecx, [ecx+4]
add     ecx, eax
mov     edi, [ebx]
mov     eax, ds:dword_77E6E4
mov     [esp+24h+var_18], eax

loc_4EABC8:
test    ebp, ebp
jbe     loc_4EAC6E
mov     eax, [esi]
mov     [esp+24h+var_1C], eax
xor     eax, eax
mov     al, byte ptr [esp+24h+var_1C+2]
shl     eax, 3
lea     ebx, [edi+eax]
xor     edx, edx
mov     dl, byte ptr [esp+24h+var_1C+1]
shl     edx, 3
add     edx, edi
xor     eax, eax
mov     al, byte ptr [esp+24h+var_1C]
shl     eax, 3
add     eax, edi
call    sub_4EFCF1
call    sub_4EFE75
call    sub_4EFD2E
dec     ebp
lea     eax, [esp+24h+var_20]
call    sub_4EFFE2
cmp     [esp+24h+var_20], 0
jle     short loc_4EAC63
mov     eax, ecx
call    loc_4F005A
mov     eax, ecx
call    sub_4F0165
call    sub_4EFB65
and     byte ptr [ecx+0Eh], 0F8h
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
shl     eax, 2
mov     edx, [esp+24h+var_14]
add     eax, edx
mov     eax, [eax]
mov     [ecx], eax
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
shl     eax, 2
add     eax, edx
mov     [eax], ecx
mov     eax, [esp+24h+var_18]
mov     [ecx+4], eax

loc_4EAC63:
add     esi, 74h ; 't'
add     ecx, 74h ; 't'
jmp     loc_4EABC8

loc_4EAC6E:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EAB81 endp




sub_4EAC76 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ecx, eax
mov     [esp+24h+var_18], edx
mov     esi, ebx
mov     ebp, [eax]
and     ebp, 0FF00h
shr     ebp, 8
test    ebp, ebp
jz      short loc_4EAC6E
mov     edi, [eax+8]
add     edi, 90h
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 3
add     eax, edx
add     eax, eax
shl     eax, 2
mov     ecx, [ecx+8]
add     ecx, eax
mov     esi, [ebx]
mov     eax, ds:dword_77E6E4
or      eax, 8000000h
mov     [esp+24h+var_1C], eax

loc_4EACC6:
test    ebp, ebp
jbe     short loc_4EAC6E
mov     eax, [edi]
mov     [esp+24h+var_14], eax
xor     ebx, ebx
mov     bl, byte ptr [esp+24h+var_14+2]
shl     ebx, 3
add     ebx, esi
xor     edx, edx
mov     dl, byte ptr [esp+24h+var_14+1]
shl     edx, 3
add     edx, esi
xor     eax, eax
mov     al, byte ptr [esp+24h+var_14]
shl     eax, 3
add     eax, esi
call    sub_4EFCF1
call    sub_4EFE75
call    sub_4EFD2E
dec     ebp
lea     eax, [esp+24h+var_20]
call    sub_4EFFE2
cmp     [esp+24h+var_20], 0
jle     short loc_4EAD77
mov     eax, ecx
call    loc_4F0075
xor     eax, eax
mov     al, byte ptr [esp+24h+var_14+3]
shl     eax, 3
add     eax, esi
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ecx+40h]
call    sub_4F0003
mov     eax, ecx
call    sub_4F0242
call    sub_4EFB8D
and     byte ptr [ecx+0Eh], 0F8h
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
shl     eax, 2
mov     edx, [esp+24h+var_18]
add     eax, edx
mov     eax, [eax]
mov     [ecx], eax
mov     eax, [esp+24h+var_24]
sub     eax, ds:dword_560AC8
mov     ebx, edx
mov     [ebx+eax*4], ecx
mov     eax, [esp+24h+var_1C]
mov     [ecx+4], eax

loc_4EAD77:
add     edi, 94h
add     ecx, 94h
jmp     loc_4EACC6
sub_4EAC76 endp




sub_4EAD88 proc near

var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ecx, eax
mov     esi, edx
xor     edx, edx
mov     ds:dword_560ACC, edx
mov     ax, [eax+4A8h]
mov     [esp+28h+var_28], ax
mov     ax, [ecx+4AAh]
mov     [esp+28h+var_26], ax
mov     ax, [ecx+4ACh]
mov     [esp+28h+var_24], ax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, esp
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+28h+var_20]
call    sub_4F04DB
mov     ds:dword_77E6E4, 0A4808080h
cmp     byte ptr ds:dword_560BDC, 0
jnz     loc_4EAE6C
call    sub_4377B8
mov     edx, eax
mov     ecx, eax
call    sub_4377C1
mov     ebx, eax
cmp     edx, 5Ah ; 'Z'
jge     short loc_4EAE22
cmp     eax, 5Ah ; 'Z'
jge     short loc_4EAE22
test    byte ptr ds:word_77EAB6, 1
jnz     short loc_4EAE6C

loc_4EAE22:
test    ecx, ecx
jz      short loc_4EAE61
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 1Fh
and     eax, 0FFFFh
mov     eax, dword ptr ds:unk_564C32[eax*4]
sar     eax, 10h
sar     eax, 6
add     eax, 0BFh
mov     ecx, eax
or      ecx, 0A4000000h
mov     edx, eax
shl     edx, 8
or      edx, ecx
shl     eax, 10h
or      edx, eax
mov     ds:dword_77E6E4, edx

loc_4EAE61:
test    ebx, ebx
jz      short loc_4EAE6C
or      byte ptr ds:dword_77E6E4+3, 2

loc_4EAE6C:
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     ebx, [esp+28h+var_20]
cmp     eax, ebx
jge     short loc_4EAE83
xor     eax, eax
jmp     loc_4EAF6E

loc_4EAE83:
lea     edi, [ebx-100h]
mov     [esp+28h+var_20], edi
mov     eax, edi
mov     ds:dword_560AC8, edi
sar     eax, 1
add     eax, eax
lea     ecx, [eax+2]
lea     eax, [edi+1FFh]
sar     eax, 1
add     eax, eax
mov     [esp+28h+var_18], eax
add     eax, 2
mov     [esp+28h+var_1C], eax
test    ecx, ecx
jl      short loc_4EAEE8
mov     eax, ecx
shl     eax, 2
lea     edx, [esi+eax]
mov     eax, edi
shl     eax, 2
sub     edx, eax
sub     edx, 4
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ebx, offset unk_7764A4
add     ebx, eax
mov     eax, ecx
sar     eax, 1
shl     eax, 2
add     eax, ebx
mov     ebx, esi
call    sub_4F87AF

loc_4EAEE8:
mov     ebp, [esp+28h+var_18]

loc_4EAEEC:
cmp     ecx, ebp
jge     short loc_4EAF29
test    ecx, ecx
jl      short loc_4EAF24
mov     eax, ecx
sub     eax, [esp+28h+var_20]
shl     eax, 2
lea     ebx, [esi+eax]
add     eax, 4
lea     edx, [esi+eax]
movzx   edi, ds:byte_77EAC6
shl     edi, 0Eh
add     edi, offset unk_7764A4
mov     eax, ecx
sar     eax, 1
shl     eax, 2
add     eax, edi
call    sub_4F87AF

loc_4EAF24:
add     ecx, 2
jmp     short loc_4EAEEC

loc_4EAF29:
cmp     [esp+28h+var_1C], 0
jl      short loc_4EAF69
mov     eax, ebp
shl     eax, 2
add     eax, esi
mov     ebx, [esp+28h+var_20]
shl     ebx, 2
sub     eax, ebx
mov     ebx, eax
lea     edx, [esi+7FCh]
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ecx, offset unk_7764A4
add     ecx, eax
mov     eax, [esp+28h+var_1C]
sar     eax, 1
shl     eax, 2
add     eax, ecx
call    sub_4F87AF

loc_4EAF69:
mov     eax, 1

loc_4EAF6E:
add     esp, 14h
jmp     loc_4EAB7B
sub_4EAD88 endp




sub_4EAF76 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 20h
mov     esi, eax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
lea     eax, [esi+14h]
call    sub_4EFCE3
call    sub_4EFDC9
mov     eax, offset dword_560AD4
call    sub_4EFFAD
lea     eax, [esp+38h+var_28]
call    sub_4F0003
lea     eax, [esp+38h+var_20]
call    sub_4F04DB
and     byte ptr [esi+6], 7Fh
test    byte ptr [esi], 40h
jz      short loc_4EAFD5
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jg      short loc_4EB040

loc_4EAFD5:
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jl      loc_4EB1ED
mov     cl, ds:byte_77EABF
mov     eax, 30h ; '0'
sar     eax, cl
cmp     eax, [esp+38h+var_20]
jg      loc_4EB1ED
fld     [esp+38h+var_28]
fadd    ds:flt_50A4B0
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED
fld     [esp+38h+var_24]
fadd    ds:flt_50A4B4
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED

loc_4EB040:
or      byte ptr [esi+6], 80h
mov     edi, [esp+38h+var_20]
cmp     edi, 708h
jle     short loc_4EB05B

loc_4EB050:
mov     eax, [esi+88h]
mov     eax, [eax+78h]
jmp     short loc_4EB080

loc_4EB05B:
cmp     edi, 2BCh
jle     short loc_4EB077
test    ds:byte_77EAC0, 8
jnz     short loc_4EB050
mov     eax, [esi+88h]
mov     eax, [eax+74h]
jmp     short loc_4EB080

loc_4EB077:
mov     eax, [esi+88h]
mov     eax, [eax+70h]

loc_4EB080:
add     eax, 14h
mov     ds:dword_560AD0, eax
mov     eax, [esi+0F6h]
sar     eax, 18h
mov     [esp+38h+var_20], eax
mov     ebp, [esi+15Ch]
sar     ebp, 10h
mov     edx, ebp
and     edx, 1Fh
shl     edx, 3
mov     eax, ebp
and     eax, 3E0h
shl     eax, 6
or      edx, eax
mov     eax, ebp
and     eax, 7C00h
shl     eax, 9
or      eax, edx
mov     edx, ebp
and     edx, 8000h
shl     edx, 0Ah
or      eax, edx
mov     ds:dword_77E6E4, eax
xor     ecx, ecx

loc_4EB0D2:
cmp     ecx, [esp+38h+var_20]
jge     loc_4EB1ED
mov     eax, ecx
cmp     byte ptr [esi+eax*4+0FBh], 0
jl      loc_4EB1E7
mov     bl, [esi+1]
and     bl, 0E0h
shl     eax, 2
sub     eax, ecx
shl     eax, 4
cmp     bl, 40h ; '@'
jnz     short loc_4EB107
lea     edx, [esi+250h]
jmp     short loc_4EB10D

loc_4EB107:
lea     edx, [esi+1F8h]

loc_4EB10D:
add     edx, eax
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
mov     edi, ecx
shl     edi, 3
lea     edx, [esi+190h]
add     edx, edi
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+38h+var_38]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ebx, [esp+38h+var_34]
add     eax, ebx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     edx, [esp+38h+var_30]
add     eax, edx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    ebp, ebp
jnz     short loc_4EB1C6
lea     eax, [esi+edi]
mov     eax, [eax+194h]
sar     eax, 10h
mov     ebx, eax
and     ebx, 1Fh
shl     ebx, 3
mov     edx, eax
and     edx, 3E0h
shl     edx, 6
or      edx, ebx
mov     ebx, eax
and     ebx, 7C00h
shl     ebx, 9
or      edx, ebx
and     eax, 8000h
shl     eax, 0Ah
or      edx, eax
mov     ds:dword_77E6E4, edx
mov     eax, ds:dword_560AD4
call    sub_4EFC77

loc_4EB1C6:
mov     eax, ecx
xor     edx, edx
mov     dl, [esi+eax*4+0F8h]
mov     eax, edx
shl     eax, 2
add     edx, eax
shl     edx, 2
mov     eax, ds:dword_560AD0
add     eax, edx
call    sub_4EB1F7

loc_4EB1E7:
inc     ecx
jmp     loc_4EB0D2

loc_4EB1ED:
add     esp, 20h

loc_4EB1F0:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4EAF76 endp




sub_4EB1F7 proc near

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
sub     esp, 24h
mov     esi, eax
mov     ebx, [eax]
shr     ebx, 10h
and     ebx, 0FFh
mov     eax, [eax+0Ch]
mov     [esp+3Ch+var_30], eax
mov     ecx, [esi+10h]
xor     ebp, ebp

loc_4EB219:
cmp     ebp, ebx
jnb     short loc_4EB24F
mov     edx, ebp
shl     edx, 3
lea     eax, [ecx+edx]
call    sub_4EFD0C
call    sub_4EFE75
mov     eax, offset unk_55FE98
add     eax, edx
call    sub_4F0040
mov     eax, ebp
shl     eax, 2
add     eax, offset dword_560698
call    sub_4F0102
add     ebp, 3
jmp     short loc_4EB219

loc_4EB24F:
mov     eax, [esi]
and     eax, 0FFh
mov     [esp+3Ch+var_20], eax
mov     ebp, [esi+4]
mov     eax, ds:dword_77E6E4
or      eax, 0A4000000h
mov     [esp+3Ch+var_34], eax

loc_4EB26B:
cmp     [esp+3Ch+var_20], 0
jbe     loc_4EB393
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_2C], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_24], edx
shr     eax, 10h
and     eax, 0FFh
mov     [esp+3Ch+var_28], eax
mov     ebx, eax
shl     ebx, 3
add     ebx, offset unk_55FE98
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_2C]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
dec     [esp+3Ch+var_20]
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EB38B
mov     ecx, ds:dword_77E6DC
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F005A
mov     ebx, [esp+3Ch+var_28]
mov     ebx, ds:dword_560698[ebx*4]
mov     edx, [esp+3Ch+var_24]
mov     edx, ds:dword_560698[edx*4]
mov     eax, [esp+3Ch+var_2C]
mov     eax, ds:dword_560698[eax*4]
call    sub_4EFCB9
call    sub_4EFB65
mov     eax, esp
call    sub_4EFFED
mov     eax, ecx
call    sub_4F0165
mov     eax, [esp+3Ch+var_3C]
shr     eax, 1
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     ebx, eax
sub     ebx, edx
cmp     ebx, 2000h
jnb     short loc_4EB38B
mov     edx, [eax]
mov     [ecx], edx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_34]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_30]
xor     ax, ax
xor     edx, edx
mov     dx, [ebp+0]
or      eax, edx
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [ebp+2]
mov     edx, [esp+3Ch+var_30]
shl     edx, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax

loc_4EB38B:
add     ebp, 0Ch
jmp     loc_4EB26B

loc_4EB393:
mov     eax, [esi]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+3Ch+var_20], eax
mov     ebp, [esi+8]
mov     eax, ds:dword_77E6E4
or      eax, 0AC000000h
mov     [esp+3Ch+var_34], eax

loc_4EB3B2:
mov     esi, [esp+3Ch+var_20]
test    esi, esi
jbe     loc_4EB51F
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_2C], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_24], edx
mov     edx, eax
shr     edx, 10h
and     edx, 0FFh
mov     [esp+3Ch+var_28], edx
mov     ecx, eax
shr     ecx, 18h
and     ecx, 0FFh
mov     ebx, edx
shl     ebx, 3
add     ebx, offset unk_55FE98
mov     edx, [esp+3Ch+var_24]
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_2C]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
lea     edi, [esi-1]
mov     [esp+3Ch+var_20], edi
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EB517
mov     eax, ds:dword_77E6DC
mov     [esp+3Ch+var_1C], eax
add     eax, 48h ; 'H'
mov     ds:dword_77E6DC, eax
mov     eax, [esp+3Ch+var_1C]
call    loc_4F0075
mov     esi, ecx
mov     edi, [esp+3Ch+var_1C]
lea     edi, [edi+40h]
lea     esi, unk_55FE98[esi*8]
movsd
movsd
mov     ecx, ds:dword_560698[ecx*4]
mov     ebx, [esp+3Ch+var_28]
mov     ebx, ds:dword_560698[ebx*4]
mov     eax, [esp+3Ch+var_24]
mov     edx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_2C]
mov     eax, ds:dword_560698[eax*4]
call    sub_4EFCCB
call    sub_4EFB8D
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+3Ch+var_1C]
call    sub_4F0242
mov     eax, [esp+3Ch+var_3C]
shr     eax, 1
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     ecx, eax
sub     ecx, edx
cmp     ecx, 2000h
jnb     short loc_4EB517
mov     edx, [eax]
mov     ecx, [esp+3Ch+var_1C]
mov     [ecx], edx
mov     edx, ecx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_34]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_30]
xor     ax, ax
xor     edx, ecx
mov     dx, [ebp+0]
or      eax, edx
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [ebp+2]
mov     edx, [esp+3Ch+var_30]
shl     edx, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax
xor     eax, eax
mov     ax, [ebp+6]
mov     [ecx+24h], eax

loc_4EB517:
add     ebp, 0Ch
jmp     loc_4EB3B2

loc_4EB51F:
add     esp, 24h
jmp     loc_4EB1F0
sub_4EB1F7 endp




sub_4EB527 proc near
push    ebx
push    ecx
push    edx
cmp     ds:dword_77E710, 0
jnz     loc_4EB5D0
mov     edx, 4

loc_4EB53C:
dec     edx
imul    eax, edx, 734h
add     eax, offset unk_6E23DC
cmp     ds:byte_77E7D4, 17h
jnz     short loc_4EB567
xor     ebx, ebx
mov     bl, [eax+6]
movsx   ecx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB57B
call    sub_4EAF76
jmp     short loc_4EB57B

loc_4EB567:
xor     ecx, ecx
mov     cl, [eax+6]
movsx   ebx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB57B
call    sub_4EB5D4

loc_4EB57B:
test    edx, edx
jnz     short loc_4EB53C
mov     edx, 10h

loc_4EB584:
dec     edx
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
add     eax, offset byte_6DD9CC
cmp     ds:byte_77E7D4, 17h
jnz     short loc_4EB5B8
xor     ecx, ecx
mov     cl, [eax+6]
movsx   ebx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB5CC
call    sub_4EAF76
jmp     short loc_4EB5CC

loc_4EB5B8:
xor     ebx, ebx
mov     bl, [eax+6]
movsx   ecx, byte ptr [eax]
and     ecx, ebx
test    cl, 2
jz      short loc_4EB5CC
call    sub_4EB5D4

loc_4EB5CC:
test    edx, edx
jnz     short loc_4EB584

loc_4EB5D0:
pop     edx
pop     ecx
pop     ebx
retn
sub_4EB527 endp




sub_4EB5D4 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
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
sub     esp, 20h
mov     esi, eax
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
lea     eax, [esi+14h]
call    sub_4EFCE3
call    sub_4EFDC9
mov     eax, offset dword_560AD4
call    sub_4EFFAD
lea     eax, [esp+38h+var_28]
call    sub_4F0003
lea     eax, [esp+38h+var_20]
call    sub_4F04DB
and     byte ptr [esi+6], 7Fh
test    byte ptr [esi], 40h
jz      short loc_4EB637
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jg      loc_4EB6CE

loc_4EB637:
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+38h+var_20]
jl      loc_4EB1ED
mov     cl, ds:byte_77EABF
mov     eax, 30h ; '0'
sar     eax, cl
cmp     eax, [esp+38h+var_20]
jg      loc_4EB1ED
test    ds:byte_77EAC0, 8
jz      short loc_4EB68C
fld     [esp+38h+var_28]
fadd    ds:flt_50A4B8
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED
jmp     short loc_4EB6AD

loc_4EB68C:
fld     [esp+38h+var_28]
fadd    ds:flt_50A4B8
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED

loc_4EB6AD:
fld     [esp+38h+var_24]
fadd    ds:flt_50A4BC
call    __CHP
fistp   [esp+38h+var_1C]
mov     eax, [esp+38h+var_1C]
cmp     ax, 400h
ja      loc_4EB1ED

loc_4EB6CE:
or      byte ptr [esi+6], 80h
mov     edi, [esp+38h+var_20]
cmp     edi, 708h
jle     short loc_4EB6E9

loc_4EB6DE:
mov     eax, [esi+88h]
mov     eax, [eax+78h]
jmp     short loc_4EB70E

loc_4EB6E9:
cmp     edi, 2BCh
jle     short loc_4EB705
test    ds:byte_77EAC0, 8
jnz     short loc_4EB6DE
mov     eax, [esi+88h]
mov     eax, [eax+74h]
jmp     short loc_4EB70E

loc_4EB705:
mov     eax, [esi+88h]
mov     eax, [eax+70h]

loc_4EB70E:
add     eax, 14h
mov     ds:dword_560AD0, eax
mov     eax, [esi+0F6h]
sar     eax, 18h
mov     [esp+38h+var_20], eax
mov     ebp, [esi+15Ch]
sar     ebp, 10h
mov     edx, ebp
and     edx, 1Fh
shl     edx, 3
mov     eax, ebp
and     eax, 3E0h
shl     eax, 6
or      edx, eax
mov     eax, ebp
and     eax, 7C00h
shl     eax, 9
or      edx, eax
mov     eax, ebp
and     eax, 8000h
shl     eax, 0Ah
or      edx, eax
mov     ds:dword_77E6E4, edx
xor     ecx, ecx

loc_4EB760:
cmp     ecx, [esp+38h+var_20]
jge     loc_4EB1ED
mov     eax, ecx
cmp     byte ptr [esi+eax*4+0FBh], 0
jl      loc_4EB86C
mov     bl, [esi+1]
and     bl, 0E0h
shl     eax, 2
sub     eax, ecx
shl     eax, 4
cmp     bl, 40h ; '@'
jnz     short loc_4EB795
lea     edx, [esi+250h]
jmp     short loc_4EB79B

loc_4EB795:
lea     edx, [esi+1F8h]

loc_4EB79B:
add     edx, eax
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
mov     edi, ecx
shl     edi, 3
lea     edx, [esi+190h]
add     edx, edi
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+38h+var_38]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ebx, [esp+38h+var_34]
add     eax, ebx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     edx, [esp+38h+var_30]
add     eax, edx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    ebp, ebp
jnz     short loc_4EB84A
lea     eax, [esi+edi]
mov     eax, [eax+194h]
sar     eax, 10h
mov     edx, eax
and     edx, 1Fh
shl     edx, 3
mov     ebx, eax
and     ebx, 3E0h
shl     ebx, 6
or      ebx, edx
mov     edx, eax
and     edx, 7C00h
shl     edx, 9
or      edx, ebx
and     eax, 8000h
shl     eax, 0Ah
or      edx, eax
mov     ds:dword_77E6E4, edx

loc_4EB84A:
mov     eax, ecx
xor     edx, edx
mov     dl, [esi+eax*4+0F8h]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     edx, ds:dword_560AD0
add     eax, edx
call    sub_4EB872

loc_4EB86C:
inc     ecx
jmp     loc_4EB760
sub_4EB5D4 endp




sub_4EB872 proc near

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
sub     esp, 24h
mov     esi, eax
mov     edx, [eax]
shr     edx, 10h
and     edx, 0FFh
mov     eax, [eax+0Ch]
mov     [esp+3Ch+var_2C], eax
mov     ebx, [esi+10h]
xor     ebp, ebp

loc_4EB894:
cmp     ebp, edx
jnb     short loc_4EB8CA
mov     ecx, ebp
shl     ecx, 3
lea     eax, [ebx+ecx]
call    sub_4EFD0C
call    sub_4EFE75
mov     eax, offset unk_55FE98
add     eax, ecx
call    sub_4F0040
mov     eax, ebp
shl     eax, 2
add     eax, offset dword_560698
call    sub_4F0102
add     ebp, 3
jmp     short loc_4EB894

loc_4EB8CA:
mov     eax, [esi]
and     eax, 0FFh
mov     [esp+3Ch+var_1C], eax
mov     ebp, [esi+4]
mov     eax, ds:dword_77E6E4
or      eax, 0A4000000h
mov     [esp+3Ch+var_30], eax

loc_4EB8E6:
cmp     [esp+3Ch+var_1C], 0
jbe     loc_4EBA02
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_20], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_28], edx
shr     eax, 10h
and     eax, 0FFh
mov     [esp+3Ch+var_24], eax
mov     ebx, eax
shl     ebx, 3
add     ebx, offset unk_55FE98
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_20]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
dec     [esp+3Ch+var_1C]
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EB9FA
mov     ecx, ds:dword_77E6DC
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F005A
mov     eax, [esp+3Ch+var_24]
mov     ebx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_28]
mov     edx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_20]
mov     eax, ds:dword_560698[eax*4]
call    sub_4EFCB9
call    sub_4EFB65
mov     eax, esp
call    sub_4EFFED
mov     eax, ecx
call    sub_4F0165
mov     eax, [esp+3Ch+var_3C]
shr     eax, 1
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [ecx], edx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_30]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_2C]
xor     ax, ax
xor     edx, edx
mov     dx, [ebp+0]
or      eax, edx
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [ebp+2]
mov     edx, [esp+3Ch+var_2C]
shl     edx, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax

loc_4EB9FA:
add     ebp, 0Ch
jmp     loc_4EB8E6

loc_4EBA02:
mov     eax, [esi]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+3Ch+var_1C], eax
mov     ebp, [esi+8]
mov     eax, ds:dword_77E6E4
or      eax, 0AC000000h
mov     [esp+3Ch+var_30], eax

loc_4EBA21:
mov     esi, [esp+3Ch+var_1C]
test    esi, esi
jbe     loc_4EB51F
mov     eax, [ebp+8]
mov     edx, eax
and     edx, 0FFh
mov     [esp+3Ch+var_20], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     [esp+3Ch+var_28], edx
mov     edx, eax
shr     edx, 10h
and     edx, 0FFh
mov     [esp+3Ch+var_24], edx
mov     ecx, eax
shr     ecx, 18h
and     ecx, 0FFh
mov     ebx, edx
shl     ebx, 3
add     ebx, offset unk_55FE98
mov     edx, [esp+3Ch+var_28]
shl     edx, 3
add     edx, offset unk_55FE98
mov     eax, [esp+3Ch+var_20]
shl     eax, 3
add     eax, offset unk_55FE98
call    sub_4EFC99
call    sub_4EFD2E
lea     edi, [esi-1]
mov     [esp+3Ch+var_1C], edi
lea     eax, [esp+3Ch+var_38]
call    sub_4EFFE2
cmp     [esp+3Ch+var_38], 0
jle     loc_4EBB7C
mov     eax, ds:dword_77E6DC
mov     [esp+3Ch+var_34], eax
add     eax, 48h ; 'H'
mov     ds:dword_77E6DC, eax
mov     eax, [esp+3Ch+var_34]
call    loc_4F0075
mov     esi, ecx
mov     edi, [esp+3Ch+var_34]
lea     edi, [edi+40h]
lea     esi, unk_55FE98[esi*8]
movsd
movsd
mov     ecx, ds:dword_560698[ecx*4]
mov     eax, [esp+3Ch+var_24]
mov     ebx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_28]
mov     edx, ds:dword_560698[eax*4]
mov     eax, [esp+3Ch+var_20]
mov     eax, ds:dword_560698[eax*4]
call    sub_4EFCCB
call    sub_4EFB8D
mov     eax, esp
call    sub_4EFFED
mov     eax, [esp+3Ch+var_34]
call    sub_4F0242
mov     eax, [esp+3Ch+var_3C]
shr     eax, 1
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     ecx, [esp+3Ch+var_34]
mov     [ecx], edx
mov     edx, ecx
mov     [eax], ecx
mov     eax, [esp+3Ch+var_30]
mov     [ecx+4], eax
mov     eax, [esp+3Ch+var_2C]
xor     ax, ax
xor     edx, ecx
mov     dx, [ebp+0]
or      eax, edx
mov     edx, ecx
mov     [ecx+0Ch], eax
xor     edx, ecx
mov     dx, [ebp+2]
mov     eax, [esp+3Ch+var_2C]
shl     eax, 10h
or      eax, edx
or      eax, 200000h
mov     [ecx+14h], eax
xor     eax, eax
mov     ax, [ebp+4]
mov     [ecx+1Ch], eax
xor     eax, eax
mov     ax, [ebp+6]
mov     [ecx+24h], eax

loc_4EBB7C:
add     ebp, 0Ch
jmp     loc_4EBA21
sub_4EB872 endp




sub_4EBB84 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4EBB91

loc_4EBB8B:
inc     ecx
cmp     ecx, 10h
jnb     short loc_4EBBCA

loc_4EBB91:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
shl     eax, 2
add     eax, offset byte_6DC7FC
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBB8B
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 88h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBB8B

loc_4EBBCA:
xor     ecx, ecx
jmp     short loc_4EBBD8

loc_4EBBCE:
inc     ecx
cmp     ecx, 20h ; ' '
jnb     loc_4EB5D0

loc_4EBBD8:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
shl     eax, 2
add     eax, offset byte_57098C
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBBCE
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 88h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBBCE
sub_4EBB84 endp




sub_4EBC11 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4EBC22

loc_4EBC18:
inc     ecx
cmp     ecx, 40h ; '@'
jnb     loc_4EB5D0

loc_4EBC22:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, offset unk_572D5C
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBC18
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 14h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBC18
sub_4EBC11 endp




sub_4EBC59 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
jmp     short loc_4EBC6A

loc_4EBC60:
inc     ecx
cmp     ecx, 20h ; ' '
jnb     loc_4EB5D0

loc_4EBC6A:
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 5
add     eax, offset unk_56FCB4
movsx   edx, byte ptr [eax]
xor     ebx, ebx
mov     bl, [eax+6]
and     ebx, edx
test    bl, 2
jz      short loc_4EBC60
mov     ebx, edx
and     ebx, 1Ch
shr     ebx, 2
add     eax, 14h
call    ds:funcs_4EBBC1[ebx*4]
jmp     short loc_4EBC60
sub_4EBC59 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EBC9C proc near

var_48= word ptr -48h
var_46= dword ptr -46h
var_40= word ptr -40h
var_3E= word ptr -3Eh
var_3C= word ptr -3Ch
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_8= dword ptr -8
var_4= dword ptr -4

push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 78h
and     esp, 0FFFFFFF8h
mov     ebx, eax
mov     [esp+78h+var_8], edx
lea     ecx, [eax+8]
cmp     ds:byte_77EABF, 0
jnz     short loc_4EBD12
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
mov     eax, ecx
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+78h+var_18]
call    sub_4EFFB8
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     edi, [esp+78h+var_10]
cmp     eax, edi
jl      loc_4EBFF9
cmp     edi, 0C0h
jl      loc_4EBFF9
xor     ecx, ecx
mov     cx, [ebx+10h]
jmp     loc_4EBDCA

loc_4EBD12:
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
mov     eax, ecx
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+78h+var_18]
call    sub_4EFFB8
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     edx, [esp+78h+var_10]
cmp     eax, edx
jl      loc_4EBFF9
mov     cl, ds:byte_77EABF
mov     eax, 0C0h
sar     eax, cl
cmp     eax, edx
jg      loc_4EBFF9
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     cl, ds:byte_77EABF
mov     dx, [ebx+8]
shl     edx, cl
mov     [esp+78h+var_48], dx
mov     dx, [ebx+0Ah]
shl     edx, cl
mov     word ptr [esp+78h+var_46], dx
mov     ax, [ebx+0Ch]
shl     eax, cl
mov     word ptr [esp+78h+var_46+2], ax
lea     eax, [esp+78h+var_48]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+78h+var_18]
call    sub_4EFFB8
cmp     [esp+78h+var_10], 0
jl      loc_4EBFF9
xor     eax, eax
mov     ax, [ebx+10h]
mov     cl, ds:byte_77EABF
shl     eax, cl
mov     ecx, eax

loc_4EBDCA:
mov     eax, esp
call    sub_4EF184
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
mov     eax, ds:dword_77E6DC
mov     edx, eax
add     eax, 38h ; '8'
mov     ds:dword_77E6DC, eax
test    byte ptr [esp+78h+var_8], 20h
jz      short loc_4EBE52
mov     ax, [ebx+12h]
xor     ah, ah
and     al, 3Fh
and     eax, 0FFFFh
mov     esi, dword ptr ds:unk_564C32[eax*2]
sar     esi, 10h
imul    esi, ecx
shr     esi, 0Ch
mov     eax, dword ptr ds:unk_56F78A[eax*2]
sar     eax, 10h
imul    eax, ecx
shr     eax, 0Ch
mov     ecx, [esp+78h+var_18]
sub     ecx, eax
add     ecx, esi
mov     [esp+78h+var_48], cx
mov     ecx, [esp+78h+var_14]
sub     ecx, eax
mov     edi, ecx
sub     edi, esi
mov     word ptr [esp+78h+var_46], di
add     eax, [esp+78h+var_18]
add     eax, esi
mov     [esp+78h+var_40], ax
add     ecx, esi
mov     [esp+78h+var_3E], cx
jmp     short loc_4EBE7C

loc_4EBE52:
mov     eax, [esp+78h+var_18]
sub     eax, ecx
mov     [esp+78h+var_48], ax
mov     eax, [esp+78h+var_14]
sub     eax, ecx
mov     word ptr [esp+78h+var_46], ax
mov     eax, [esp+78h+var_18]
add     eax, ecx
mov     [esp+78h+var_40], ax
mov     eax, [esp+78h+var_46]
mov     [esp+78h+var_3E], ax

loc_4EBE7C:
mov     eax, [esp+78h+var_18]
mov     [esp+78h+var_38], ax
mov     eax, [esp+78h+var_14]
mov     [esp+78h+var_36], ax
mov     eax, [esp+78h+var_10]
mov     [esp+78h+var_34], ax
mov     [esp+78h+var_3C], ax
mov     word ptr [esp+78h+var_46+2], ax
lea     eax, [esp+78h+var_48]
call    sub_4EFD0C
call    sub_4EFE75
mov     cx, [ebx+0Eh]
mov     esi, [esp+78h+var_10]
sar     esi, 3
shl     esi, 2
mov     eax, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [edx], esi
mov     [eax], edx
mov     eax, [ebx+4]
or      eax, 2C000000h
mov     [edx+4], eax
mov     esi, [ebx]
xor     si, si
xor     eax, eax
mov     ax, cx
or      esi, eax
mov     [edx+0Ch], esi
xor     eax, eax
mov     ax, cx
mov     ebx, [ebx]
shl     ebx, 10h
lea     ecx, [eax+1Fh]
or      ebx, ecx
mov     [edx+14h], ebx
lea     ecx, [eax+1F00h]
mov     [edx+1Ch], ecx
add     eax, 1F1Fh
mov     [edx+24h], eax
lea     eax, [esp+78h+var_30]
call    sub_4F0040
fld     [esp+78h+var_30]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+8], ax
fld     [esp+78h+var_2C]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+0Ah], ax
fld     [esp+78h+var_28]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+10h], ax
fld     [esp+78h+var_24]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+12h], ax
fld     [esp+78h+var_20]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_28]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+18h], ax
fld     [esp+78h+var_1C]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_24]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+1Ah], ax
fld     [esp+78h+var_20]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_30]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+20h], ax
fld     [esp+78h+var_1C]
fmul    ds:dbl_50A4C0
fsub    [esp+78h+var_2C]
call    __CHP
fistp   [esp+78h+var_4]
mov     eax, [esp+78h+var_4]
mov     [edx+22h], ax
mov     dword ptr [edx+34h], 3DCCCCCDh
mov     eax, [edx+34h]
mov     [edx+30h], eax
mov     eax, [edx+30h]
mov     [edx+2Ch], eax
mov     eax, [edx+2Ch]
mov     [edx+28h], eax

loc_4EBFF9:
mov     esp, ebp
jmp     loc_4EAB7B
sub_4EBC9C endp




sub_4EC000 proc near

var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 5Ch
mov     ebp, eax
mov     [esp+70h+var_1C], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
lea     eax, [ebp+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+70h+var_28]
call    sub_4F0003
lea     eax, [esp+70h+var_20]
call    sub_4F04DB
test    byte ptr [esp+70h+var_1C], 40h
jz      short loc_4EC056
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+70h+var_20]
jg      short loc_4EC0C1

loc_4EC056:
xor     eax, eax
mov     ax, ds:word_77EAB2
cmp     eax, [esp+70h+var_20]
jl      loc_4EC259
mov     cl, ds:byte_77EABF
mov     eax, 30h ; '0'
sar     eax, cl
cmp     eax, [esp+70h+var_20]
jg      loc_4EC259
fld     [esp+70h+var_28]
fadd    ds:flt_50A4C8
call    __CHP
fistp   [esp+70h+var_18]
mov     eax, [esp+70h+var_18]
cmp     ax, 400h
ja      loc_4EC259
fld     [esp+70h+var_24]
fadd    ds:flt_50A4CC
call    __CHP
fistp   [esp+70h+var_18]
mov     eax, [esp+70h+var_18]
cmp     ax, 400h
ja      loc_4EC259

loc_4EC0C1:
lea     edi, [esp+70h+var_30]
lea     esi, [ebp+34h]
movsd
movsd
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [ebp+4]
rep movsd
xor     eax, eax
mov     al, ds:byte_77EABF
test    eax, eax
jz      loc_4EC180
jnz     short loc_4EC0EE
mov     edx, 1
jmp     short loc_4EC0F8

loc_4EC0EE:
lea     ecx, [eax-1]
mov     edx, 2
shl     edx, cl

loc_4EC0F8:
cwde
mov     cl, al
shl     [esp+70h+var_30], cl
shl     [esp+70h+var_2E], cl
shl     [esp+70h+var_2C], cl
mov     [esp+70h+var_18], edx
fild    [esp+70h+var_18]
fstp    [esp+70h+var_18]
fld     [esp+70h+var_70]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_70]
fld     [esp+70h+var_6C]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_6C]
fld     [esp+70h+var_68]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_68]
fld     [esp+70h+var_64]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_64]
fld     [esp+70h+var_60]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_60]
fld     [esp+70h+var_5C]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_5C]
fld     [esp+70h+var_58]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_58]
fld     [esp+70h+var_54]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_54]
fld     [esp+70h+var_50]
fmul    [esp+70h+var_18]
fstp    [esp+70h+var_50]

loc_4EC180:
mov     esi, [esp+70h+var_20]
cmp     esi, 708h
jle     short loc_4EC194
mov     eax, [ebp+0]
mov     eax, [eax+78h]
jmp     short loc_4EC1AA

loc_4EC194:
cmp     esi, 2BCh
jle     short loc_4EC1A4
mov     eax, [ebp+0]
mov     eax, [eax+74h]
jmp     short loc_4EC1AA

loc_4EC1A4:
mov     eax, [ebp+0]
mov     eax, [eax+70h]

loc_4EC1AA:
add     eax, 14h
mov     ds:dword_560AD0, eax
mov     ebx, offset unk_564A6C
mov     edx, esp
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     ebx, [esp+70h+var_40]
lea     edx, [esp+70h+var_30]
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     edx, [esp+70h+var_40]
add     eax, edx
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     ecx, [esp+70h+var_3C]
add     eax, ecx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+70h+var_38]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+70h+var_1C], 20h
jz      short loc_4EC242
mov     edx, [ebp+3Ch]
and     edx, 2FFFFFFh
mov     eax, [ebp+38h]
sar     eax, 10h
mov     ebp, eax
shl     ebp, 2
add     ebp, eax
shl     ebp, 2
mov     eax, ds:dword_560AD0
add     eax, ebp
jmp     short loc_4EC250

loc_4EC242:
mov     edx, [ebp+3Ch]
and     edx, 2FFFFFFh
mov     eax, ds:dword_560AD0

loc_4EC250:
mov     ebx, [esp+70h+var_1C]
call    sub_4EC261

loc_4EC259:
add     esp, 5Ch
jmp     loc_4EAB7B
sub_4EC000 endp




sub_4EC261 proc near

var_88= dword ptr -88h
var_84= dword ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= qword ptr -30h
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= byte ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 70h
push    eax
push    edx
test    bl, 40h
jnz     short loc_4EC279
lea     eax, [esp+88h+var_14]
mov     [esp+88h+var_24], eax
jmp     short loc_4EC27F

loc_4EC279:
xor     edx, edx
mov     [esp+88h+var_24], edx

loc_4EC27F:
mov     eax, [esp+88h+var_84]
mov     eax, [eax]
and     eax, 0FFh
mov     [esp+88h+var_20], eax
mov     eax, [esp+88h+var_84]
mov     eax, [eax+10h]
mov     [esp+88h+var_18], eax
mov     eax, [esp+88h+var_84]
mov     eax, [eax+0Ch]
mov     [esp+88h+var_1C], eax
mov     ebp, [esp+88h+var_84]
mov     ebp, [ebp+4]
mov     eax, [esp+88h+var_88]
or      eax, 0A4000000h
mov     [esp+88h+var_28], eax
lea     eax, [esp+88h+var_28]
call    sub_4EFC91

loc_4EC2C0:
mov     ecx, [esp+88h+var_20]
test    ecx, ecx
jbe     loc_4EC4E1
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 3
lea     ebx, [ecx-1]
mov     [esp+88h+var_20], ebx
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [ebp+9]
shl     eax, 3
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
xor     eax, eax
mov     al, [ebp+0Ah]
shl     eax, 3
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560AA8
movsd
movsd
push    3
mov     ecx, [esp+8Ch+var_24]
lea     ebx, [esp+8Ch+var_80]
mov     edx, ebp
mov     eax, offset unk_560A98
call    sub_4F04FB
test    eax, eax
jz      loc_4EC4D9
mov     esi, [esp+88h+var_24]
test    esi, esi
jz      short loc_4EC341
cmp     dword ptr [esi], 0
jle     loc_4EC4D9

loc_4EC341:
mov     ecx, [esp+88h+var_1C]
shr     ecx, 10h
cmp     eax, 3
jnz     loc_4EC3F2
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+20h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+24h], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_60]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+34h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_54]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_28]
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fdiv    ds:flt_50A4D8
jmp     loc_4EC4BA

loc_4EC3F2:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+48h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+34h], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_50]
mov     [edx+38h], eax
mov     eax, [esp+88h+var_4C]
mov     [edx+3Ch], eax
fld     [esp+88h+var_48]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_60]
mov     [edx+40h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+44h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+20h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_44]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_54]
mov     [edx+24h], ax
mov     eax, [esp+88h+var_28]
or      eax, 8000000h
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fadd    [esp+88h+var_48]
fmul    ds:flt_50A4D4

loc_4EC4BA:
call    __CHP
fistp   [esp+88h+var_30]
mov     ecx, dword ptr [esp+88h+var_30]
shr     ecx, 1
shl     ecx, 2
mov     eax, ds:dword_77E6FC
add     eax, ecx
mov     ecx, [eax]
mov     [edx], ecx
mov     [eax], edx

loc_4EC4D9:
add     ebp, 0Ch
jmp     loc_4EC2C0

loc_4EC4E1:
mov     eax, [esp+88h+var_84]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+88h+var_20], eax
mov     ebp, [esp+88h+var_84]
mov     ebp, [ebp+8]
mov     eax, [esp+88h+var_88]
or      eax, 0AC000000h
mov     [esp+88h+var_28], eax
lea     eax, [esp+88h+var_28]
call    sub_4EFC91

loc_4EC50F:
cmp     [esp+88h+var_20], 0
jbe     loc_4EC8E3
xor     eax, eax
mov     al, [ebp+8]
shl     eax, 3
dec     [esp+88h+var_20]
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [ebp+9]
shl     eax, 3
mov     esi, [esp+88h+var_18]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
movzx   esi, byte ptr [ebp+0Ah]
shl     esi, 3
mov     ecx, [esp+88h+var_18]
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
xor     eax, eax
mov     al, [ebp+0Bh]
shl     eax, 3
lea     esi, [ecx+eax]
mov     edi, offset unk_560AB0
movsd
movsd
push    4
mov     ecx, [esp+8Ch+var_24]
lea     ebx, [esp+8Ch+var_80]
mov     edx, ebp
mov     eax, offset unk_560A98
call    sub_4F04FB
test    eax, eax
jz      loc_4EC8DB
mov     ebx, [esp+88h+var_24]
test    ebx, ebx
jz      short loc_4EC59D
cmp     dword ptr [ebx], 0
jle     loc_4EC8DB

loc_4EC59D:
mov     ecx, [esp+88h+var_1C]
shr     ecx, 10h
cmp     eax, 4
jb      short loc_4EC5BD
jbe     loc_4EC68A
cmp     eax, 5
jz      loc_4EC769
jmp     loc_4EC8DB

loc_4EC5BD:
cmp     eax, 3
jnz     loc_4EC8DB
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+20h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+24h], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_60]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+34h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_54]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_28]
and     eax, 0F7FFFFFFh
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fdiv    ds:flt_50A4D8
call    __CHP
fistp   [esp+88h+var_30]
mov     eax, dword ptr [esp+88h+var_30]
shr     eax, 1
shl     eax, 2
mov     ecx, ds:dword_77E6FC

loc_4EC67F:
add     eax, ecx
mov     ecx, [eax]
mov     [edx], ecx
jmp     loc_4EC8D9

loc_4EC68A:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+48h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+34h], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_50]
mov     [edx+38h], eax
mov     eax, [esp+88h+var_4C]
mov     [edx+3Ch], eax
fld     [esp+88h+var_48]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_60]
mov     [edx+40h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+44h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+20h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_44]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_54]
mov     [edx+24h], ax
mov     eax, [esp+88h+var_28]
mov     [edx+4], eax
mov     [edx+0Eh], cx
mov     eax, [esp+88h+var_1C]
mov     [edx+16h], ax
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fadd    [esp+88h+var_48]
fmul    ds:flt_50A4D4
call    __CHP
fistp   [esp+88h+var_30]
mov     ecx, dword ptr [esp+88h+var_30]
shr     ecx, 1
shl     ecx, 2
mov     eax, ds:dword_77E6FC
jmp     loc_4EC67F

loc_4EC769:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+48h]
mov     ds:dword_77E6DC, eax
mov     eax, [esp+88h+var_80]
mov     [edx+28h], eax
mov     eax, [esp+88h+var_7C]
mov     [edx+2Ch], eax
fld     [esp+88h+var_78]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+8]
mov     eax, [esp+88h+var_70]
mov     [edx+30h], eax
mov     eax, [esp+88h+var_6C]
mov     [edx+34h], eax
fld     [esp+88h+var_68]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+10h]
mov     eax, [esp+88h+var_40]
mov     [edx+38h], eax
mov     eax, [esp+88h+var_3C]
mov     [edx+3Ch], eax
fld     [esp+88h+var_38]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+18h]
mov     eax, [esp+88h+var_60]
mov     [edx+40h], eax
mov     eax, [esp+88h+var_5C]
mov     [edx+44h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [edx+20h]
mov     eax, [esp+88h+var_74]
mov     [edx+0Ch], ax
mov     eax, [esp+88h+var_64]
mov     [edx+14h], ax
mov     eax, [esp+88h+var_34]
mov     [edx+1Ch], ax
mov     eax, [esp+88h+var_54]
mov     [edx+24h], ax
mov     eax, [esp+88h+var_28]
mov     [edx+4], eax
mov     ebx, ecx
mov     [edx+0Eh], cx
mov     esi, [esp+88h+var_1C]
mov     [edx+16h], si
mov     ecx, ds:dword_77E6DC
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     [edx], ecx
mov     eax, [esp+88h+var_60]
mov     [ecx+20h], eax
mov     eax, [esp+88h+var_5C]
mov     [ecx+24h], eax
fld     [esp+88h+var_58]
fmul    ds:flt_50A4D0
fstp    dword ptr [ecx+8]
mov     eax, [esp+88h+var_50]
mov     [ecx+28h], eax
mov     eax, [esp+88h+var_4C]
mov     [ecx+2Ch], eax
fld     [esp+88h+var_48]
fmul    ds:flt_50A4D0
fstp    dword ptr [ecx+10h]
mov     eax, [esp+88h+var_40]
mov     [ecx+30h], eax
mov     eax, [esp+88h+var_3C]
mov     [ecx+34h], eax
fld     [esp+88h+var_38]
fmul    ds:flt_50A4D0
fstp    dword ptr [ecx+18h]
mov     eax, [esp+88h+var_54]
mov     [ecx+0Ch], ax
mov     eax, [esp+88h+var_44]
mov     [ecx+14h], ax
mov     eax, [esp+88h+var_34]
mov     [ecx+1Ch], ax
mov     eax, [esp+88h+var_28]
and     eax, 0F7FFFFFFh
mov     [ecx+4], eax
mov     [ecx+0Eh], bx
mov     [ecx+16h], si
fld     [esp+88h+var_78]
fadd    [esp+88h+var_68]
fadd    [esp+88h+var_58]
fadd    [esp+88h+var_38]
fmul    ds:flt_50A4D4
call    __CHP
fistp   [esp+88h+var_30]
mov     eax, dword ptr [esp+88h+var_30]
shr     eax, 1
shl     eax, 2
mov     ebx, ds:dword_77E6FC
add     eax, ebx
mov     ebx, [eax]
mov     [ecx], ebx

loc_4EC8D9:
mov     [eax], edx

loc_4EC8DB:
add     ebp, 0Ch
jmp     loc_4EC50F

loc_4EC8E3:
add     esp, 78h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EC261 endp




sub_4EC8EB proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+24h+var_10], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
lea     eax, [ecx+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+24h+var_14]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+24h+var_14]
cmp     eax, edx
jl      loc_4EC9FD
cmp     edx, 30h ; '0'
jl      loc_4EC9FD
cmp     edx, 708h
jle     short loc_4EC94D
mov     eax, [ecx]
mov     eax, [eax+78h]
jmp     short loc_4EC961

loc_4EC94D:
cmp     edx, 2BCh
jle     short loc_4EC95C
mov     eax, [ecx]
mov     eax, [eax+74h]
jmp     short loc_4EC961

loc_4EC95C:
mov     eax, [ecx]
mov     eax, [eax+70h]

loc_4EC961:
add     eax, 14h
mov     ds:dword_560AD0, eax
lea     edx, [ecx+4]
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     edx, [ecx+34h]
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     ebp, [esp+24h+var_24]
add     eax, ebp
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     edx, [esp+24h+var_20]
add     eax, edx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+24h+var_1C]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+24h+var_10], 20h
jz      short loc_4EC9F0
mov     edx, [ecx+40h]
mov     eax, [ecx+38h]
sar     eax, 10h
mov     ecx, eax
shl     ecx, 2
add     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_560AD0
add     eax, ecx
jmp     short loc_4EC9F8

loc_4EC9F0:
mov     edx, [ecx+40h]
mov     eax, ds:dword_560AD0

loc_4EC9F8:
call    sub_4ECA04

loc_4EC9FD:
add     esp, 18h
pop     ebp
pop     ecx
pop     ebx
retn
sub_4EC8EB endp




sub_4ECA04 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 10h
push    eax
mov     ecx, edx
mov     eax, [eax]
and     eax, 0FFh
mov     [esp+28h+var_18], eax
mov     ebp, [esp+28h+var_28]
mov     ebp, [ebp+10h]
mov     edx, [esp+28h+var_28]
mov     edx, [edx+4]
mov     [esp+28h+var_1C], 0B0000000h
lea     eax, [esp+28h+var_1C]
call    sub_4EFC91

loc_4ECA37:
cmp     [esp+28h+var_18], 0
jbe     loc_4ECB03
xor     eax, eax
mov     al, [edx+8]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [edx+9]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA0
movsd
movsd
xor     eax, eax
mov     al, [edx+0Ah]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA8
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
call    sub_4EFD2E
dec     [esp+28h+var_18]
lea     eax, [esp+28h+var_20]
call    sub_4EFFE2
cmp     [esp+28h+var_20], 0
jle     short loc_4ECAF8
mov     ebx, ds:dword_77E6DC
lea     eax, [ebx+34h]
mov     ds:dword_77E6DC, eax
mov     eax, ebx
call    sub_4F0098
call    sub_4EFB65
lea     eax, [esp+28h+var_24]
call    sub_4EFFED
mov     eax, ebx
call    sub_4F02E1
mov     eax, [esp+28h+var_24]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ebx], esi
mov     [eax], ebx
mov     eax, [ecx]
mov     esi, [esp+28h+var_1C]
or      esi, eax
mov     [ebx+4], esi
mov     eax, [ecx+4]
mov     [ebx+0Ch], eax
mov     eax, [ecx+8]
mov     [ebx+14h], eax

loc_4ECAF8:
add     ecx, 0Ch
add     edx, 0Ch
jmp     loc_4ECA37

loc_4ECB03:
mov     eax, [esp+28h+var_28]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+28h+var_18], eax
mov     edx, [esp+28h+var_28]
mov     edx, [edx+8]
mov     [esp+28h+var_1C], 0B8000000h
lea     eax, [esp+28h+var_1C]
call    sub_4EFC91

loc_4ECB2B:
cmp     [esp+28h+var_18], 0
jbe     loc_4EAF6E
xor     eax, eax
mov     al, [edx+8]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560A98
movsd
movsd
xor     eax, eax
mov     al, [edx+9]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA0
movsd
movsd
xor     eax, eax
mov     al, [edx+0Ah]
shl     eax, 3
lea     esi, [eax+ebp]
mov     edi, offset unk_560AA8
movsd
movsd
movzx   esi, byte ptr [edx+0Bh]
shl     esi, 3
add     esi, ebp
mov     edi, offset unk_560AB0
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
call    sub_4EFD2E
dec     [esp+28h+var_18]
lea     eax, [esp+28h+var_20]
call    sub_4EFFE2
cmp     [esp+28h+var_20], 0
jle     short loc_4ECC18
mov     ebx, ds:dword_77E6DC
lea     eax, [ebx+44h]
mov     ds:dword_77E6DC, eax
mov     eax, ebx
call    sub_4F00B3
mov     eax, offset unk_560AB0
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ebx+3Ch]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+28h+var_24]
call    sub_4EFFED
mov     eax, ebx
call    sub_4F0340
mov     esi, [esp+28h+var_24]
shr     esi, 1
shl     esi, 2
mov     eax, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ebx], esi
mov     [eax], ebx
mov     eax, [ecx]
mov     esi, [esp+28h+var_1C]
or      esi, eax
mov     [ebx+4], esi
mov     eax, [ecx+4]
mov     [ebx+0Ch], eax
mov     eax, [ecx+8]
mov     [ebx+14h], eax
mov     eax, [ecx+0Ch]
mov     [ebx+1Ch], eax

loc_4ECC18:
add     ecx, 10h
add     edx, 0Ch
jmp     loc_4ECB2B
sub_4ECA04 endp




sub_4ECC23 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+24h+var_10], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
lea     eax, [ecx+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+24h+var_14]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+24h+var_14]
cmp     eax, edx
jl      loc_4EC9FD
cmp     edx, 30h ; '0'
jl      loc_4EC9FD
cmp     edx, 708h
jle     short loc_4ECC85
mov     eax, [ecx]
mov     eax, [eax+78h]
jmp     short loc_4ECC99

loc_4ECC85:
cmp     edx, 2BCh
jle     short loc_4ECC94
mov     eax, [ecx]
mov     eax, [eax+74h]
jmp     short loc_4ECC99

loc_4ECC94:
mov     eax, [ecx]
mov     eax, [eax+70h]

loc_4ECC99:
add     eax, 14h
mov     ds:dword_560AD0, eax
lea     edx, [ecx+4]
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     edx, [ecx+34h]
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     ebp, [esp+24h+var_24]
add     eax, ebp
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     edx, [esp+24h+var_20]
add     eax, edx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+24h+var_1C]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+24h+var_10], 20h
jz      short loc_4ECD2B
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, [ecx+38h]
sar     eax, 10h
mov     ecx, eax
shl     ecx, 2
add     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_560AD0
add     eax, ecx
jmp     short loc_4ECD36

loc_4ECD2B:
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, ds:dword_560AD0

loc_4ECD36:
call    sub_4ECD40
jmp     loc_4EC9FD
sub_4ECC23 endp




sub_4ECD40 proc near

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
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 30h
push    eax
mov     ebp, edx
mov     esi, ebx
mov     eax, [eax]
and     eax, 0FFh
mov     [esp+44h+var_20], eax
mov     eax, [esp+44h+var_44]
mov     eax, [eax+10h]
mov     [esp+44h+var_1C], eax
mov     eax, [esp+44h+var_44]
mov     eax, [eax+0Ch]
and     al, 9Fh
mov     [esp+44h+var_28], eax
mov     edx, [esp+44h+var_44]
mov     edx, [edx+4]
mov     eax, ebx
and     eax, 0FF000000h
or      eax, 0B4000000h
mov     [esp+44h+var_3C], eax
mov     eax, ebx
and     eax, 0FFh
mov     [esp+44h+var_18], eax
and     ebx, 0FF00h
shr     ebx, 8
mov     eax, esi
and     eax, 0FF0000h
shr     eax, 10h
mov     [esp+44h+var_14], eax
lea     eax, [esp+44h+var_3C]
call    sub_4EFC91

loc_4ECDAE:
cmp     [esp+44h+var_20], 0
jbe     loc_4ECF88
xor     eax, eax
mov     al, [edx+8]
mov     [esp+44h+var_38], eax
xor     eax, eax
mov     al, [edx+9]
mov     [esp+44h+var_34], eax
xor     eax, eax
mov     al, [edx+0Ah]
mov     [esp+44h+var_24], eax
mov     esi, [esp+44h+var_38]
shl     esi, 3
add     esi, [esp+44h+var_1C]
mov     edi, offset unk_560A98
movsd
movsd
mov     esi, [esp+44h+var_34]
shl     esi, 3
mov     eax, [esp+44h+var_1C]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
mov     esi, [esp+44h+var_24]
shl     esi, 3
add     esi, eax
mov     edi, offset unk_560AA8
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+44h+var_20]
lea     eax, [ecx+40h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F0075
call    sub_4EFB65
lea     eax, [esp+44h+var_40]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F03BE
mov     esi, [esp+44h+var_40]
shr     esi, 1
shl     esi, 2
mov     eax, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     esi, [esp+44h+var_38]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     edi, esi
and     edi, 0FF00h
imul    edi, ebx
shr     edi, 7
and     edi, 0FF00h
or      eax, edi
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     eax, [esp+44h+var_3C]
or      eax, esi
mov     [ecx+4], eax
mov     esi, [esp+44h+var_34]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+10h], esi
mov     esi, [esp+44h+var_24]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+1Ch], esi
mov     eax, [esp+44h+var_28]
xor     ax, ax
mov     [esp+44h+var_30], eax
xor     eax, eax
mov     ax, [edx]
mov     edi, [esp+44h+var_30]
or      edi, eax
mov     [ecx+0Ch], edi
xor     eax, eax
mov     ax, [edx+2]
mov     edi, [esp+44h+var_28]
shl     edi, 10h
or      edi, eax
mov     [ecx+18h], edi
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
add     edx, 0Ch
jmp     loc_4ECDAE

loc_4ECF88:
mov     eax, [esp+44h+var_44]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+44h+var_20], eax
mov     edx, [esp+44h+var_44]
mov     edx, [edx+8]
and     esi, 0FF000000h
or      esi, 0BC000000h
mov     [esp+44h+var_3C], esi
lea     eax, [esp+44h+var_3C]
call    sub_4EFC91

loc_4ECFB8:
cmp     [esp+44h+var_20], 0
jbe     loc_4ED214
xor     eax, eax
mov     al, [edx+8]
mov     [esp+44h+var_38], eax
xor     eax, eax
mov     al, [edx+9]
mov     [esp+44h+var_34], eax
xor     eax, eax
mov     al, [edx+0Ah]
mov     [esp+44h+var_24], eax
xor     eax, eax
mov     al, [edx+0Bh]
mov     [esp+44h+var_2C], eax
mov     esi, [esp+44h+var_38]
shl     esi, 3
mov     ecx, [esp+44h+var_1C]
add     esi, ecx
mov     edi, offset unk_560A98
movsd
movsd
mov     esi, [esp+44h+var_34]
shl     esi, 3
add     esi, ecx
mov     edi, offset unk_560AA0
movsd
movsd
mov     esi, [esp+44h+var_24]
shl     esi, 3
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
mov     esi, eax
shl     esi, 3
add     esi, ecx
mov     edi, offset unk_560AB0
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+44h+var_20]
lea     eax, [ecx+54h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    sub_4F00CE
mov     eax, offset unk_560AB0
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ecx+4Ch]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+44h+var_40]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F041D
mov     eax, [esp+44h+var_40]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     esi, [esp+44h+var_38]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     eax, [esp+44h+var_3C]
or      eax, esi
mov     [ecx+4], eax
mov     esi, [esp+44h+var_34]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
or      eax, [esp+44h+var_30]
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+10h], esi
mov     esi, [esp+44h+var_24]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     edi, esi
and     edi, 0FF00h
imul    edi, ebx
shr     edi, 7
and     edi, 0FF00h
or      eax, edi
and     esi, 0FF0000h
imul    esi, [esp+44h+var_14]
shr     esi, 7
and     esi, 0FF0000h
or      esi, eax
mov     [ecx+1Ch], esi
mov     esi, [esp+44h+var_2C]
mov     esi, [ebp+esi*4+0]
mov     eax, esi
and     eax, 0FFh
imul    eax, [esp+44h+var_18]
shr     eax, 7
and     eax, 0FFh
mov     [esp+44h+var_30], eax
mov     eax, esi
and     eax, 0FF00h
imul    eax, ebx
shr     eax, 7
and     eax, 0FF00h
mov     edi, [esp+44h+var_30]
or      edi, eax
and     esi, 0FF0000h
mov     eax, [esp+44h+var_14]
imul    eax, esi
shr     eax, 7
and     eax, 0FF0000h
mov     esi, edi
or      esi, eax
mov     [ecx+28h], esi
mov     esi, [esp+44h+var_28]
xor     si, si
xor     eax, eax
mov     ax, [edx]
or      esi, eax
mov     [ecx+0Ch], esi
xor     eax, eax
mov     ax, [edx+2]
mov     esi, [esp+44h+var_28]
shl     esi, 10h
or      esi, eax
mov     [ecx+18h], esi
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
xor     eax, eax
mov     ax, [edx+6]
mov     [ecx+30h], eax
add     edx, 0Ch
jmp     loc_4ECFB8

loc_4ED214:
add     esp, 34h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4ECD40 endp




sub_4ED21C proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    ebp
sub     esp, 18h
mov     ecx, eax
mov     [esp+24h+var_10], edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
lea     eax, [ecx+34h]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+24h+var_14]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+24h+var_14]
cmp     eax, edx
jl      loc_4EC9FD
cmp     edx, 30h ; '0'
jl      loc_4EC9FD
cmp     edx, 708h
jle     short loc_4ED27E
mov     eax, [ecx]
mov     eax, [eax+78h]
jmp     short loc_4ED292

loc_4ED27E:
cmp     edx, 2BCh
jle     short loc_4ED28D
mov     eax, [ecx]
mov     eax, [eax+74h]
jmp     short loc_4ED292

loc_4ED28D:
mov     eax, [ecx]
mov     eax, [eax+70h]

loc_4ED292:
add     eax, 14h
mov     ds:dword_560AD0, eax
lea     edx, [ecx+4]
mov     ebx, offset unk_564A6C
mov     eax, offset unk_564CB4
call    sub_4EF388
lea     edx, [ecx+34h]
mov     ebx, esp
mov     eax, offset unk_564CB4
call    sub_4EF1FB
mov     eax, ds:dword_564CD8
mov     ebp, [esp+24h+var_24]
add     eax, ebp
mov     ds:dword_564A90, eax
mov     eax, ds:dword_564CDC
mov     edx, [esp+24h+var_20]
add     eax, edx
mov     ds:dword_564A94, eax
mov     eax, ds:dword_564CE0
mov     ebx, [esp+24h+var_1C]
add     eax, ebx
mov     ds:dword_564A98, eax
mov     eax, offset unk_564A6C
call    sub_4EFB33
mov     eax, offset unk_564A6C
call    sub_4EFB43
test    byte ptr [esp+24h+var_10], 20h
jz      short loc_4ED324
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, [ecx+38h]
sar     eax, 10h
mov     ecx, eax
shl     ecx, 2
add     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_560AD0
add     eax, ecx
jmp     short loc_4ED32F

loc_4ED324:
mov     ebx, [ecx+3Ch]
mov     edx, [ecx+40h]
mov     eax, ds:dword_560AD0

loc_4ED32F:
call    sub_4ED339
jmp     loc_4EC9FD
sub_4ED21C endp




sub_4ED339 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 24h
push    eax
mov     ebp, edx
mov     eax, ebx
mov     edx, [esp+38h+var_38]
mov     edx, [edx]
and     edx, 0FFh
mov     [esp+38h+var_20], edx
mov     edx, [esp+38h+var_38]
mov     edx, [edx+10h]
mov     [esp+38h+var_14], edx
mov     edx, [esp+38h+var_38]
mov     edx, [edx+0Ch]
mov     [esp+38h+var_24], edx
mov     edx, [esp+38h+var_38]
mov     edx, [edx+4]
mov     [esp+38h+var_30], 0B6000000h
mov     ecx, ebx
and     ecx, 0FFh
mov     [esp+38h+var_1C], ecx
and     ebx, 0FF00h
shr     ebx, 8
and     eax, 0FF0000h
shr     eax, 10h
mov     [esp+38h+var_18], eax
lea     eax, [esp+38h+var_30]
call    sub_4EFC91

loc_4ED3A0:
cmp     [esp+38h+var_20], 0
jbe     loc_4ED55B
movzx   esi, byte ptr [edx+8]
xor     eax, eax
mov     al, [edx+9]
xor     ecx, ecx
mov     cl, [edx+0Ah]
shl     esi, 3
add     esi, [esp+38h+var_14]
mov     edi, offset unk_560A98
movsd
movsd
shl     eax, 3
mov     esi, [esp+38h+var_14]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
shl     ecx, 3
mov     esi, [esp+38h+var_14]
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+38h+var_20]
lea     eax, [ecx+40h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    loc_4F0075
call    sub_4EFB65
lea     eax, [esp+38h+var_34]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F03BE
mov     eax, [esp+38h+var_34]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     eax, [ebp+0]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     edi, eax
and     edi, 0FF00h
imul    edi, ebx
shr     edi, 7
and     edi, 0FF00h
or      esi, edi
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     esi, [esp+38h+var_30]
or      esi, eax
mov     [ecx+4], esi
mov     eax, [ebp+4]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+10h], eax
mov     eax, [ebp+8]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+1Ch], eax
mov     eax, [esp+38h+var_24]
xor     ax, ax
xor     esi, esi
mov     si, [edx]
or      eax, esi
mov     [ecx+0Ch], eax
xor     eax, eax
mov     ax, [edx+2]
mov     esi, [esp+38h+var_24]
shl     esi, 10h
or      eax, esi
or      eax, 200000h
mov     [ecx+18h], eax
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
add     ebp, 0Ch
add     edx, 0Ch
jmp     loc_4ED3A0

loc_4ED55B:
mov     eax, [esp+38h+var_38]
mov     eax, [eax]
and     eax, 0FF00h
shr     eax, 8
mov     [esp+38h+var_20], eax
mov     edx, [esp+38h+var_38]
mov     edx, [edx+8]
mov     [esp+38h+var_30], 0BE000000h
lea     eax, [esp+38h+var_30]
call    sub_4EFC91

loc_4ED583:
cmp     [esp+38h+var_20], 0
jbe     loc_4ED7CA
movzx   esi, byte ptr [edx+8]
xor     eax, eax
mov     al, [edx+9]
xor     ecx, ecx
mov     cl, [edx+0Ah]
movzx   edi, byte ptr [edx+0Bh]
mov     [esp+38h+var_2C], edi
shl     esi, 3
add     esi, [esp+38h+var_14]
mov     edi, offset unk_560A98
movsd
movsd
shl     eax, 3
mov     esi, [esp+38h+var_14]
add     esi, eax
mov     edi, offset unk_560AA0
movsd
movsd
shl     ecx, 3
mov     esi, [esp+38h+var_14]
add     esi, ecx
mov     edi, offset unk_560AA8
movsd
movsd
mov     esi, [esp+38h+var_2C]
shl     esi, 3
add     esi, [esp+38h+var_14]
mov     edi, offset unk_560AB0
movsd
movsd
mov     eax, offset unk_560A98
call    sub_4EFD0C
call    sub_4EFE75
mov     ecx, ds:dword_77E6DC
dec     [esp+38h+var_20]
lea     eax, [ecx+54h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    sub_4F00CE
mov     eax, offset unk_560AB0
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [ecx+4Ch]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+38h+var_34]
call    sub_4EFFED
mov     eax, ecx
call    sub_4F041D
mov     eax, [esp+38h+var_34]
shr     eax, 1
shl     eax, 2
mov     esi, ds:dword_77E6FC
add     eax, esi
mov     esi, [eax]
mov     [ecx], esi
mov     [eax], ecx
mov     eax, [ebp+0]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     esi, [esp+38h+var_30]
or      esi, eax
mov     [ecx+4], esi
mov     eax, [ebp+4]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+10h], eax
mov     eax, [ebp+8]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+1Ch], eax
mov     eax, [ebp+0Ch]
mov     esi, eax
and     esi, 0FFh
imul    esi, [esp+38h+var_1C]
shr     esi, 7
and     esi, 0FFh
mov     [esp+38h+var_28], esi
mov     esi, eax
and     esi, 0FF00h
imul    esi, ebx
shr     esi, 7
and     esi, 0FF00h
or      esi, [esp+38h+var_28]
and     eax, 0FF0000h
imul    eax, [esp+38h+var_18]
shr     eax, 7
and     eax, 0FF0000h
or      eax, esi
mov     [ecx+28h], eax
mov     esi, [esp+38h+var_24]
xor     si, si
xor     eax, eax
mov     ax, [edx]
or      esi, eax
mov     [ecx+0Ch], esi
xor     eax, eax
mov     ax, [edx+2]
mov     esi, [esp+38h+var_24]
shl     esi, 10h
or      eax, esi
or      eax, 200000h
mov     [ecx+18h], eax
xor     eax, eax
mov     ax, [edx+4]
mov     [ecx+24h], eax
xor     eax, eax
mov     ax, [edx+6]
mov     [ecx+30h], eax
add     ebp, 10h
add     edx, 0Ch
jmp     loc_4ED583

loc_4ED7CA:
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4ED339 endp




sub_4ED7D2 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 8
mov     esi, eax
mov     [esp+10h+var_C], edx
mov     [esp+10h+var_10], ecx
mov     ecx, ds:dword_77EA44
cmp     ecx, 40h ; '@'
jnb     loc_4ED885
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
mov     ax, [eax+14h]
mov     ds:word_750AAC[edx], ax
cmp     byte ptr [esi+76h], 0
jz      short loc_4ED816
mov     edi, [esi+14h]
sar     edi, 10h
mov     ax, [esi+16h]
jmp     short loc_4ED81F

loc_4ED816:
mov     eax, esi
call    sub_42C592
mov     edi, eax

loc_4ED81F:
mov     ds:word_750AAE[edx], ax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     dx, [esi+18h]
mov     word ptr ds:dword_750AB0[eax*4], dx
mov     dx, [esi+56h]
sub     dx, [esi+116h]
and     dh, 0Fh
and     edx, 0FFFFh
sar     ebx, 6
shl     ebx, 0Ch
or      edx, ebx
mov     word ptr ds:(dword_750AB0+2)[eax*4], dx
mov     edx, [esp+10h+var_10]
shl     edx, 0Eh
mov     ebx, [esp+10h+var_C]
or      edx, ebx
mov     word ptr ds:dword_750AB4[eax*4], dx
mov     cx, [esi+16h]
sub     edi, ecx
mov     word ptr ds:(dword_750AB4+2)[eax*4], di
inc     ds:dword_77EA44

loc_4ED885:
add     esp, 8
pop     edi
pop     esi
retn
sub_4ED7D2 endp




sub_4ED88B proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     edi, edx
mov     ebp, ebx
mov     [esp+14h+var_10], ecx
mov     edx, ds:dword_77EA44
cmp     edx, 40h ; '@'
jnb     loc_4ED957
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     bx, [esi+14h]
mov     ds:word_750AAC[eax], bx
cmp     byte ptr [esi+76h], 0
jz      short loc_4ED8D8
mov     ecx, [esi+14h]
sar     ecx, 10h
mov     bx, [esi+16h]
mov     ds:word_750AAE[eax], bx
jmp     short loc_4ED8FC

loc_4ED8D8:
mov     eax, esi
call    sub_42C592
mov     ecx, eax
mov     ebx, [esi+14h]
sar     ebx, 10h
cmp     eax, ebx
jge     short loc_4ED8ED
mov     ecx, ebx

loc_4ED8ED:
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ds:word_750AAE[eax*4], cx

loc_4ED8FC:
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     dx, [esi+18h]
mov     word ptr ds:dword_750AB0[eax*4], dx
mov     dx, [esi+56h]
and     dh, 0Fh
and     edx, 0FFFFh
mov     [esp+14h+var_14], edx
mov     edx, ebp
sar     edx, 6
shl     edx, 0Ch
or      edx, [esp+14h+var_14]
mov     word ptr ds:(dword_750AB0+2)[eax*4], dx
mov     edx, [esp+14h+var_10]
shl     edx, 0Eh
or      edx, edi
mov     word ptr ds:dword_750AB4[eax*4], dx
mov     dx, [esi+16h]
sub     ecx, edx
mov     word ptr ds:(dword_750AB4+2)[eax*4], cx

loc_4ED951:
inc     ds:dword_77EA44

loc_4ED957:
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn
sub_4ED88B endp




sub_4ED95E proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
mov     [esp+14h+var_14], edx
mov     ebp, ebx
mov     [esp+14h+var_10], ecx
mov     eax, ds:dword_77EA44
cmp     eax, 40h ; '@'
jnb     short loc_4ED957
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     ax, [edi]
mov     ds:word_750AAC[esi*4], ax
mov     ecx, 0FFFFh
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_42C5B7
mov     edx, eax
mov     ds:word_750AAE[esi*4], ax
mov     ax, [edi+4]
mov     word ptr ds:dword_750AB0[esi*4], ax
sar     ebp, 6
shl     ebp, 0Ch
mov     eax, [esp+14h+var_10]
and     ah, 0Fh
and     eax, 0FFFFh
or      eax, ebp
mov     word ptr ds:(dword_750AB0+2)[esi*4], ax
mov     ax, [edi+6]
shl     eax, 0Eh
mov     ebx, [esp+14h+var_14]
or      eax, ebx
mov     word ptr ds:dword_750AB4[esi*4], ax
mov     cx, [edi+2]
sub     edx, ecx
mov     word ptr ds:(dword_750AB4+2)[esi*4], dx
jmp     loc_4ED951
sub_4ED95E endp




sub_4ED9F4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
xor     esi, esi
mov     ebp, ds:dword_77EA44

loc_4EDA05:
cmp     esi, ebp
jge     short loc_4EDA67
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_750AB0[eax]
sar     edx, 10h
mov     ebx, edx
and     ebx, 0F000h
shr     ebx, 6
mov     ecx, edx
and     ecx, 0FFFh
xor     edx, edx
mov     dx, word ptr ds:dword_750AB4[eax]
mov     edi, edx
shr     edi, 0Eh
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     word ptr ds:(dword_750AB0+2)[eax], di
mov     edi, ds:dword_750AB4[eax]
sar     edi, 10h
push    edi
and     edx, 3FFFh
add     eax, offset word_750AAC
call    sub_4EDA77
inc     esi
jmp     short loc_4EDA05

loc_4EDA67:
xor     edx, edx
mov     ds:dword_77EA44, edx
add     esp, 4
jmp     loc_4EB1F0
sub_4ED9F4 endp




sub_4EDA77 proc near

var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= word ptr -38h
var_36= word ptr -36h
var_34= word ptr -34h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4

push    esi
push    edi
push    ebp
sub     esp, 3Ch
mov     esi, eax
mov     edi, edx
mov     [esp+48h+var_28], ebx
mov     ebp, ecx
mov     ebx, [esp+48h+arg_0]
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset dword_56F174
call    sub_4EFB5A
mov     eax, esi
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [esp+48h+var_24]
call    sub_4F04DB
xor     eax, eax
mov     ax, ds:word_77EAB2
mov     edx, [esp+48h+var_24]
cmp     eax, edx
jl      loc_4EDD2A
cmp     edx, 30h ; '0'
jl      loc_4EDD2A
mov     eax, ds:dword_77E6DC
mov     edx, eax
lea     ecx, [eax+48h]
mov     ds:dword_77E6DC, ecx
cmp     ebx, 240h
jg      loc_4EDD2A
cmp     ebx, 40h ; '@'
jge     short loc_4EDAFB
mov     dword ptr [eax+4], 0AE808080h
jmp     short loc_4EDB2A

loc_4EDAFB:
mov     ecx, 240h
sub     ecx, ebx
sar     ecx, 2
mov     ebx, ecx
shl     ecx, 10h
or      ecx, 0AE000000h
mov     [esp+48h+var_14], ecx
mov     ecx, ebx
shl     ecx, 8
mov     [esp+48h+var_10], ecx
mov     ecx, [esp+48h+var_14]
or      ecx, [esp+48h+var_10]
or      ecx, ebx
mov     [eax+4], ecx

loc_4EDB2A:
movsx   eax, word ptr [esi]
mov     [esp+48h+var_10], eax
mov     al, ds:byte_77EABF
mov     cl, al
mov     ebx, [esp+48h+var_10]
shl     ebx, cl
mov     [esp+48h+var_20], ebx
mov     ecx, [esi]
sar     ecx, 10h
mov     [esp+48h+var_10], ecx
mov     cl, al
mov     ebx, [esp+48h+var_10]
shl     ebx, cl
mov     [esp+48h+var_1C], ebx
mov     ebx, [esi+2]
sar     ebx, 10h
shl     ebx, cl
mov     [esp+48h+var_18], ebx
mov     ebx, ebp
mov     eax, [esp+48h+var_28]
sub     ebx, eax
mov     eax, ebx
call    sub_4EF008
imul    eax, edi
mov     [esp+48h+var_10], eax
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     eax, 0Ch
sub     eax, ecx
mov     ecx, eax
mov     eax, [esp+48h+var_10]
sar     eax, cl
mov     ecx, eax
add     ecx, [esp+48h+var_20]
mov     word ptr [esp+48h+var_48], cx
mov     eax, [esp+48h+var_1C]
mov     word ptr [esp+48h+var_48+2], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edi
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     ebx, 0Ch
sub     ebx, ecx
mov     ecx, ebx
sar     eax, cl
add     eax, [esp+48h+var_18]
mov     word ptr [esp+48h+var_44], ax
mov     ebx, [esp+48h+var_28]
add     ebx, ebp
mov     eax, ebx
call    sub_4EF008
imul    eax, edi
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     ebp, 0Ch
sub     ebp, ecx
mov     ecx, ebp
sar     eax, cl
add     eax, [esp+48h+var_20]
mov     word ptr [esp+48h+var_40], ax
mov     eax, [esp+48h+var_1C]
mov     word ptr [esp+48h+var_40+2], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edi
xor     ecx, ecx
mov     cl, ds:byte_77EABF
mov     ebx, 0Ch
sub     ebx, ecx
mov     ecx, ebx
sar     eax, cl
add     eax, [esp+48h+var_18]
mov     word ptr [esp+48h+var_3C], ax
mov     ecx, [esp+48h+var_20]
add     ecx, ecx
mov     eax, ecx
mov     ebx, [esp+48h+var_40]
sub     eax, ebx
mov     [esp+48h+var_38], ax
mov     ebx, [esp+48h+var_1C]
add     ebx, ebx
mov     eax, ebx
mov     edi, [esp+48h+var_40+2]
sub     eax, edi
mov     [esp+48h+var_36], ax
mov     eax, [esp+48h+var_18]
add     eax, eax
mov     edi, eax
sub     edi, [esp+48h+var_3C]
mov     [esp+48h+var_34], di
mov     edi, [esp+48h+var_48]
sub     ecx, edi
mov     [esp+48h+var_30], cx
mov     ecx, [esp+48h+var_48+2]
sub     ebx, ecx
mov     [esp+48h+var_2E], bx
mov     edi, [esp+48h+var_44]
sub     eax, edi
mov     [esp+48h+var_2C], ax
mov     eax, offset unk_564CB4
call    sub_4EFB43
mov     eax, esp
call    sub_4EFD0C
call    sub_4EFE75
mov     word ptr [edx+0Eh], 3EF4h
mov     word ptr [edx+16h], 45h ; 'E'
cmp     word ptr [esi+6], 0
jz      short loc_4EDCC2
mov     byte ptr [edx+0Ch], 0C0h
mov     byte ptr [edx+0Dh], 0E0h
mov     byte ptr [edx+14h], 0DFh
mov     byte ptr [edx+15h], 0E0h
mov     byte ptr [edx+1Ch], 0C0h
mov     byte ptr [edx+1Dh], 0FFh
mov     byte ptr [edx+24h], 0DFh
jmp     short loc_4EDCDE

loc_4EDCC2:
mov     byte ptr [edx+0Ch], 0E0h
mov     byte ptr [edx+0Dh], 0E0h
mov     byte ptr [edx+14h], 0FFh
mov     byte ptr [edx+15h], 0E0h
mov     byte ptr [edx+1Ch], 0E0h
mov     byte ptr [edx+1Dh], 0FFh
mov     byte ptr [edx+24h], 0FFh

loc_4EDCDE:
mov     byte ptr [edx+25h], 0FFh
mov     eax, edx
call    loc_4F0075
lea     eax, [esp+48h+var_30]
call    sub_4EFCE3
call    sub_4EFDC9
lea     eax, [edx+40h]
call    sub_4F0003
call    sub_4EFB8D
lea     eax, [esp+48h+var_24]
call    sub_4EFFED
mov     eax, edx
call    sub_4F0242
mov     ecx, [esp+48h+var_24]
sar     ecx, 1
shl     ecx, 2
mov     eax, ds:dword_77E6FC
add     eax, ecx
mov     ecx, [eax]
mov     [edx], ecx
mov     [eax], edx

loc_4EDD2A:
add     esp, 3Ch
pop     ebp
pop     edi
pop     esi
retn    4
sub_4EDA77 endp




sub_4EDD33 proc near
push    ebx
push    ecx
push    edx
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_70E0AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset dword_7055AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7056AC
call    memset_
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_7014AC
call    memset_
xor     edx, edx
mov     ds:dword_77EA44, edx
xor     edx, edx
mov     ds:word_77EAB4, dx
mov     ebx, 0E00h
mov     ds:word_77EAB2, bx
xor     ecx, ecx
mov     ds:dword_77E704, ecx
mov     word ptr ds:dword_77EAA8, bx
pop     edx
pop     ecx
pop     ebx
retn
sub_4EDD33 endp




sub_4EDDAA proc near
push    ecx
push    esi
mov     ecx, edx
mov     esi, 6
xor     edx, edx
mov     eax, ecx
div     esi
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
sub     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, ecx
add     eax, eax
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     ecx, edx
shl     edx, 4
add     edx, ecx
shl     edx, 8
or      edx, eax
mov     eax, offset unk_6FA1AC
add     eax, 20h ; ' '
call    sub_4EDE36
xor     edx, edx
mov     eax, ebx
div     esi
mov     edx, eax
shl     eax, 2
sub     eax, edx
add     eax, eax
mov     ecx, ebx
sub     ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, ecx
add     eax, eax
mov     ecx, edx
shl     edx, 2
sub     edx, ecx
mov     ecx, edx
shl     edx, 4
add     edx, ecx
shl     edx, 8
or      edx, eax
mov     eax, offset unk_6FA1AC
add     eax, 30h ; '0'
call    sub_4EDE36
pop     esi
pop     ecx
retn
sub_4EDDAA endp




sub_4EDE36 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
mov     ebx, edx
mov     ecx, [eax]
mov     eax, ecx
and     eax, 0FFh
mov     [esp+2Ch+var_28], eax
shr     ecx, 8
and     ecx, 0FFh
mov     [esp+2Ch+var_2C], ecx
mov     eax, ebp
mov     eax, [eax+4]
mov     [esp+2Ch+var_1C], eax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     ecx, [esp+2Ch+var_1C]
add     ecx, eax
mov     edx, [esp+2Ch+var_2C]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     ecx, eax
mov     [esp+2Ch+var_20], ecx
xor     esi, esi

loc_4EDE97:
mov     edx, [esp+2Ch+var_28]
cmp     esi, edx
jnb     short loc_4EDEE7
xor     ecx, ecx

loc_4EDEA1:
mov     edi, esi
shl     edi, 3
sub     edi, esi
shl     edi, 2
add     edi, esi
lea     eax, [ecx+ecx]
mov     edx, eax
shl     eax, 3
sub     eax, edx
add     eax, edi
shl     eax, 2
mov     edx, [esp+2Ch+var_20]
add     edx, eax
mov     edi, [edx+0Ch]
add     edi, ebx
add     eax, [esp+2Ch+var_1C]
mov     [eax+0Ch], edi
mov     edi, [edx+14h]
add     edi, ebx
mov     [eax+14h], edi
mov     edx, [edx+1Ch]
add     edx, ebx
mov     [eax+1Ch], edx
inc     ecx
cmp     ecx, 2
jb      short loc_4EDEA1
inc     esi
jmp     short loc_4EDE97

loc_4EDEE7:
mov     eax, [ebp+8]
mov     [esp+2Ch+var_18], eax
mov     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
mov     ecx, [esp+2Ch+var_18]
add     ecx, eax
mov     edx, [esp+2Ch+var_2C]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     ecx, eax
mov     [esp+2Ch+var_24], ecx
xor     esi, esi
mov     ebp, [esp+2Ch+var_18]

loc_4EDF21:
cmp     esi, [esp+2Ch+var_2C]
jnb     short loc_4EDF74
xor     ecx, ecx

loc_4EDF28:
mov     edi, esi
shl     edi, 3
add     edi, esi
shl     edi, 2
add     edi, esi
mov     eax, ecx
shl     eax, 3
add     eax, ecx
add     eax, eax
lea     edx, [edi+eax]
shl     edx, 2
mov     eax, [esp+2Ch+var_24]
add     eax, edx
mov     edi, [eax+0Ch]
add     edi, ebx
add     edx, ebp
mov     [edx+0Ch], edi
mov     edi, [eax+14h]
add     edi, ebx
mov     [edx+14h], edi
mov     edi, [eax+1Ch]
add     edi, ebx
mov     [edx+1Ch], edi
mov     eax, [eax+24h]
add     eax, ebx
mov     [edx+24h], eax
inc     ecx
cmp     ecx, 2
jb      short loc_4EDF28
inc     esi
jmp     short loc_4EDF21

loc_4EDF74:
add     esp, 18h
jmp     loc_4EAB7B
sub_4EDE36 endp




sub_4EDF7C proc near
push    ebx
push    ecx
mov     ecx, edx
shr     ecx, 18h
mov     ebx, [eax+ecx*4+70h]
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     ecx, [ebx+eax]
mov     eax, edx
shr     eax, 10h
and     eax, 0FFh
mov     ecx, [ecx+eax*4+18h]
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, ecx
pop     ecx
pop     ebx
retn
sub_4EDF7C endp




sub_4EDFC2 proc near
push    ecx
push    esi
mov     ecx, edx
shr     ecx, 18h
mov     esi, [eax+ecx*4+70h]
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     ecx, [esi+eax]
mov     eax, edx
shr     eax, 10h
and     eax, 0FFh
shl     eax, 2
add     ecx, eax
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, [ecx+18h]
mov     edx, [ebx]
mov     [eax], edx
mov     edx, [ebx+4]
mov     [eax+4], edx
pop     esi
pop     ecx
retn
sub_4EDFC2 endp




sub_4EE014 proc near
push    ebx
push    ecx
mov     ecx, edx
shr     ecx, 18h
mov     ebx, [eax+ecx*4+70h]
mov     ecx, edx
shr     ecx, 8
and     ecx, 0FFh
mov     eax, ecx
shl     eax, 2
add     eax, ecx
mov     ecx, [ebx+eax*4+24h]
mov     eax, edx
and     eax, 0FFh
shl     eax, 3
add     eax, ecx
pop     ecx
pop     ebx
retn
sub_4EE014 endp




sub_4EE044 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, edx
shr     ebp, 10h
and     edx, 0FFFFh
mov     esi, [eax+70h]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
lea     edi, [esi+eax]
mov     eax, [edi+14h]
mov     ecx, eax
and     ecx, 0FFh
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     [esp+24h+var_24], edx
mov     edx, eax
shr     edx, 8
and     edx, 0FFh
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     [esp+24h+var_18], eax
mov     eax, [edi+18h]
mov     [esp+24h+var_14], eax
mov     eax, ebp
shl     eax, 2
add     eax, ebp
mov     edx, [esi+eax*4+18h]
mov     [esp+24h+var_20], edx
mov     edi, [edi+1Ch]
mov     eax, [esi+eax*4+1Ch]
mov     [esp+24h+var_1C], eax
xor     eax, eax
mov     ebp, [esp+24h+var_14]

loc_4EE0B8:
cmp     eax, [esp+24h+var_24]
jnb     short loc_4EE0DD
mov     edx, eax
shl     edx, 2
mov     ecx, [esp+24h+var_20]
add     ecx, edx
mov     esi, [ecx]
add     esi, ebx
add     edx, ebp
mov     [edx], esi
mov     ecx, [ecx+4]
add     ecx, ebx
mov     [edx+4], ecx
add     eax, 3
jmp     short loc_4EE0B8

loc_4EE0DD:
xor     eax, eax

loc_4EE0DF:
cmp     eax, [esp+24h+var_18]
jnb     loc_4EAC6E
mov     ecx, eax
mov     edx, [esp+24h+var_1C]
mov     esi, [edx+ecx*4]
add     esi, ebx
mov     [edi+ecx*4], esi
mov     edx, [edx+ecx*4+4]
add     edx, ebx
mov     [edi+ecx*4+4], edx
add     eax, 3
jmp     short loc_4EE0DF
sub_4EE044 endp




sub_4EE106 proc near
push    esi
push    edi
mov     esi, eax
mov     edi, edx
xor     edx, edx
div     ecx
imul    ecx, eax
sub     esi, ecx
mov     ecx, esi
imul    ecx, edi
imul    eax, ebx
mov     esi, eax
shl     esi, 18h
mov     ebx, ecx
shl     ebx, 10h
or      ebx, esi
shl     eax, 8
or      eax, ebx
or      eax, ecx
pop     edi
pop     esi
retn
sub_4EE106 endp




sub_4EE133 proc near
push    ecx
push    edx
mov     edx, ds:dword_77E704
cmp     edx, 100h
jb      short loc_4EE148
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4EE148:
mov     eax, edx
mov     edx, ds:dword_77E6DC
mov     ds:dword_56F18C[eax*4], edx
mov     eax, edx
lea     ecx, [edx+38h]
mov     ds:dword_77E6DC, ecx
inc     ds:dword_77E704
pop     edx
pop     ecx
retn
sub_4EE133 endp




sub_4EE16B proc near
push    ecx
push    edx
mov     edx, ds:dword_77E704
cmp     edx, 100h
jb      short loc_4EE180
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4EE180:
mov     eax, edx
mov     edx, ds:dword_77E6DC
mov     ds:dword_56F18C[eax*4], edx
mov     eax, edx
lea     ecx, [edx+30h]
mov     ds:dword_77E6DC, ecx
inc     ds:dword_77E704
pop     edx
pop     ecx
retn
sub_4EE16B endp




sub_4EE1A3 proc near

var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= word ptr -50h
var_4C= word ptr -4Ch
var_4A= word ptr -4Ah
var_48= word ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 74h
mov     eax, esp
call    sub_4EF184
mov     ebp, ds:dword_77E704
xor     edx, edx
mov     ds:dword_77E704, edx
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
xor     edi, edi

loc_4EE1D7:
cmp     edi, ebp
jnb     loc_4EE485
mov     esi, ds:dword_56F18C[edi*4]
xor     eax, eax
mov     al, [esi+7]
sar     eax, 5
cmp     al, 1
jnz     loc_4EE3F1
mov     eax, [esi+8]
mov     [esp+8Ch+var_5C], eax
mov     eax, [esi+10h]
mov     [esp+8Ch+var_58], eax
lea     eax, [esp+8Ch+var_5C]
call    sub_4EFCE3
call    sub_4EFD7A
lea     eax, [esp+8Ch+var_44]
call    sub_4EFFB8
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     ecx, [esp+8Ch+var_3C]
cmp     eax, ecx
jl      loc_4EE47F
cmp     ecx, 0C0h
jl      loc_4EE47F
call    sub_4EFDC9
lea     eax, [esp+8Ch+var_2C]
call    sub_4F0003
fld     [esp+8Ch+var_2C]
fadd    ds:flt_50A4DC
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
cmp     ax, 400h
ja      loc_4EE47F
fld     [esp+8Ch+var_28]
fadd    ds:flt_50A4E0
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
cmp     ax, 400h
ja      loc_4EE47F
mov     eax, esp
call    sub_4EFB33
mov     eax, esp
call    sub_4EFB43
mov     eax, [esi+18h]
mov     edx, [esp+8Ch+var_44]
sub     edx, eax
mov     word ptr [esp+8Ch+var_5C], dx
mov     edx, [esp+8Ch+var_40]
sub     edx, eax
mov     word ptr [esp+8Ch+var_5C+2], dx
mov     edx, [esp+8Ch+var_44]
add     edx, eax
mov     word ptr [esp+8Ch+var_54], dx
mov     edx, [esp+8Ch+var_40]
add     edx, eax
mov     word ptr [esp+8Ch+var_54+2], dx
mov     eax, [esp+8Ch+var_44]
mov     [esp+8Ch+var_4C], ax
mov     eax, [esp+8Ch+var_40]
mov     [esp+8Ch+var_4A], ax
mov     eax, [esp+8Ch+var_3C]
mov     [esp+8Ch+var_48], ax
mov     [esp+8Ch+var_50], ax
mov     word ptr [esp+8Ch+var_58], ax
lea     eax, [esp+8Ch+var_5C]
call    sub_4EFD0C
call    sub_4EFE75
mov     edx, [esp+8Ch+var_3C]
sar     edx, 3
shl     edx, 2
mov     eax, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [esi], edx
mov     [eax], esi
test    byte ptr [esi+20h], 8
jz      short loc_4EE31F
or      byte ptr [esi+17h], 8

loc_4EE31F:
lea     eax, [esp+8Ch+var_2C]
call    sub_4F000C
lea     eax, [esp+8Ch+var_34]
call    sub_4F001A
fld     [esp+8Ch+var_2C]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+8], ax
fld     [esp+8Ch+var_28]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+0Ah], ax
fld     [esp+8Ch+var_34]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+20h], ax
fld     [esp+8Ch+var_30]
call    __CHP
fistp   [esp+8Ch+var_1C]
mov     eax, [esp+8Ch+var_1C]
mov     [esi+22h], ax
mov     ax, [esi+20h]
mov     [esi+10h], ax
mov     ax, [esi+0Ah]
mov     [esi+12h], ax
mov     ax, [esi+8]
mov     [esi+18h], ax
mov     ax, [esi+22h]
mov     [esi+1Ah], ax
lea     ecx, [esp+8Ch+var_20]
lea     ebx, [esp+8Ch+var_20]
lea     edx, [esp+8Ch+var_20]
lea     eax, [esp+8Ch+var_24]
call    sub_4F011F
mov     eax, [esp+8Ch+var_24]
mov     [esp+8Ch+var_1C], eax
fild    [esp+8Ch+var_1C]
fmul    ds:flt_50A4E4
fst     dword ptr [esi+34h]
fst     dword ptr [esi+30h]
fst     dword ptr [esi+2Ch]
fstp    dword ptr [esi+28h]
mov     eax, offset unk_564CB4
call    sub_4EFB33
mov     eax, offset unk_564CB4
call    sub_4EFB43
jmp     loc_4EE47F

loc_4EE3F1:
mov     eax, [esi+8]
mov     [esp+8Ch+var_5C], eax
mov     eax, [esi+10h]
mov     [esp+8Ch+var_58], eax
mov     eax, [esi]
mov     [esp+8Ch+var_54], eax
mov     eax, [esp+8Ch+var_58+2]
mov     [esp+8Ch+var_50], ax
lea     eax, [esp+8Ch+var_5C]
call    sub_4EFD0C
call    sub_4EFE75
mov     [esi+24h], esi
mov     dword ptr [esi+2Ch], 0
lea     eax, [esp+8Ch+var_44]
call    sub_4F0102
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     ecx, [esp+8Ch+var_44]
cmp     eax, ecx
jl      short loc_4EE47F
cmp     ecx, 0C0h
jl      short loc_4EE47F
mov     edx, [esp+8Ch+var_40]
lea     eax, [ecx+edx]
sar     eax, 4
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [esi], edx
lea     edx, [esi+24h]
mov     [eax], edx
lea     eax, [esi+14h]
call    sub_4F000C
lea     eax, [esi+1Ch]
call    sub_4F001A
mov     eax, esi
call    sub_4F049B

loc_4EE47F:
inc     edi
jmp     loc_4EE1D7

loc_4EE485:
add     esp, 74h
jmp     loc_4EB1F0
sub_4EE1A3 endp




sub_4EE48D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 10h
mov     ecx, esi
mov     eax, [eax+edx*4+18h]
mov     edx, [eax]
mov     [esp+18h+var_18], edx
and     edx, 0FFh
shl     edx, 2
add     eax, edx
shl     ebx, 3
add     eax, 4
add     eax, ebx
mov     edx, [eax]
and     edx, 0FFFFFFh
mov     ebx, offset unk_6B87CC
add     ebx, edx
mov     [esp+18h+var_10], ebx
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+18h+var_14], eax
and     edx, 0FFFFFFh
mov     eax, offset unk_6B87CC
add     eax, edx
mov     [esp+18h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
movsd
movsd
mov     eax, ecx
add     esp, 10h
pop     edi
pop     ecx
retn
sub_4EE48D endp




sub_4EE4F0 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 8
mov     ecx, esi
shl     edx, 3
add     edx, eax
mov     eax, [edx]
mov     [esp+10h+var_10], eax
mov     eax, [edx+4]
mov     [esp+10h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
mov     eax, ecx
add     esp, 8
pop     edi
pop     ecx
retn
sub_4EE4F0 endp

shl     edx, 4
mov     eax, [edx+eax]
retn



sub_4EE51D proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 0Ch
mov     ecx, esi
shl     edx, 4
add     edx, eax
mov     eax, [edx+4]
mov     [esp+14h+var_14], eax
mov     eax, [edx+8]
mov     [esp+14h+var_10], eax
mov     eax, [edx+0Ch]
mov     [esp+14h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
movsd
mov     eax, ecx
add     esp, 0Ch
pop     edi
pop     ecx
retn
sub_4EE51D endp




sub_4EE54C proc near
shl     edx, 3
add     eax, edx
mov     edx, [ebx]
mov     [eax], edx
mov     edx, [ebx+4]
mov     [eax+4], edx
retn
sub_4EE54C endp

shl     edx, 4
add     eax, edx
mov     edx, [ebx]
mov     [eax], edx
retn
shl     edx, 4
add     eax, edx
mov     edx, [ebx]
mov     [eax+4], edx
mov     edx, [ebx+4]
mov     [eax+8], edx
mov     edx, [ebx+8]
mov     [eax+0Ch], edx
retn



sub_4EE57D proc near
push    ebx
push    ecx
push    edx
add     eax, 5F4h
xor     edx, edx

loc_4EE587:
mov     byte ptr [eax], 0
mov     byte ptr [eax+1], 0
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
movsx   ebx, byte ptr [eax+1]
shl     ebx, 3
mov     ecx, ds:off_5513A0[edx*4]
mov     cx, [ecx+ebx+2]
mov     [eax+6], cx
inc     edx
add     eax, 8
cmp     edx, 10h
jl      short loc_4EE587
pop     edx
pop     ecx
pop     ebx
retn
sub_4EE57D endp




sub_4EE5BE proc near
push    ecx
push    edx
mov     edx, dword ptr ds:unk_5F84D3
sar     edx, 18h
mov     eax, edx
shl     eax, 3
add     eax, offset byte_5F8364
mov     ecx, [eax+5F2h]
sar     ecx, 18h
mov     edx, ds:off_5513A0[edx*4]
mov     dx, [edx+ecx*8+2]
mov     [eax+5FAh], dx
pop     edx
pop     ecx
retn
sub_4EE5BE endp




sub_4EE5F2 proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F1h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
movsx   eax, word ptr [ecx+eax]
pop     ecx
retn
sub_4EE5F2 endp




sub_4EE60F proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F2h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax]
sar     eax, 10h
pop     ecx
retn
sub_4EE60F endp




sub_4EE62E proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F3h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax+2]
sar     eax, 10h
pop     ecx
retn
sub_4EE62E endp




sub_4EE64E proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F4h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax+4]
sar     eax, 10h
pop     ecx
retn
sub_4EE64E endp




sub_4EE66E proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
test    byte ptr [eax+0D7h], 0FFh
jz      short loc_4EE685
mov     eax, 7FFFh
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE685:
mov     eax, ecx
call    sub_42CE47
mov     ebx, eax
test    eax, eax
jz      short loc_4EE6BE
jle     short loc_4EE6B5
mov     esi, eax
and     esi, 0FFFFh
cmp     esi, 8000h
jge     short loc_4EE6B5
test    eax, 0F0000h
jz      short loc_4EE6B5
xor     eax, eax
mov     ax, bx
call    sub_4EE6EA

loc_4EE6B5:
mov     eax, ecx
call    sub_42DE56
mov     eax, ebx

loc_4EE6BE:
pop     esi
pop     ecx
pop     ebx
retn
sub_4EE66E endp




sub_4EE6C2 proc near
push    ecx
test    eax, eax
jle     short loc_4EE6E8
mov     ecx, eax
and     ecx, 0FFFFh
cmp     ecx, 8000h
jge     short loc_4EE6E8
test    eax, 0F0000h
jz      short loc_4EE6E8
and     eax, 0FFFFh
call    sub_4EE6EA

loc_4EE6E8:
pop     ecx
retn
sub_4EE6C2 endp




sub_4EE6EA proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, edx
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
xor     esi, esi
mov     si, ds:word_6E40B2[eax]
mov     ebx, esi
and     ebx, 0FFFh
mov     ecx, esi
shr     ecx, 0Ch
shr     edi, cl
sub     ebx, edi
test    ebx, ebx
jg      short loc_4EE741
mov     eax, ds:dword_6E40B4[eax]
test    byte ptr [eax+3], 80h
jz      short loc_4EE735
mov     eax, edx
call    sub_4EE755
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE735:
mov     eax, edx
call    sub_4EEA6B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE741:
and     esi, 0F000h
or      ebx, esi
mov     ds:word_6E40B2[eax], bx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EE6EA endp




sub_4EE755 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     ebx, ebx
mov     bx, ax
mov     ecx, ebx
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
xor     ecx, ebx
mov     cx, ds:word_6E40B2[eax*4]
sar     ecx, 0Ch
xor     esi, esi
mov     ds:word_6E40B2[eax*4], si
test    cx, cx
ja      short loc_4EE78E
mov     edx, 4
xor     eax, eax
jmp     short loc_4EE79A

loc_4EE78E:
xor     ebx, ebx
mov     bx, dx
mov     edx, 4
mov     eax, edx

loc_4EE79A:
call    sub_4EE7BD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4EE755 endp




sub_4EE7A4 proc near
push    edx
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     ds:word_6E40B2[eax*4], dx
pop     edx
retn
sub_4EE7A4 endp




sub_4EE7BD proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 28h
push    eax
push    edx
xor     edx, edx
mov     dx, bx
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ebp, ds:dword_6E40B4[eax*4]
lea     edi, [esp+40h+var_38]
lea     esi, [ebp+0Ch]
movsd
movsd
mov     ebp, [ebp+14h]
mov     edx, ebp
and     edx, 0FFFFh
mov     [esp+40h+var_14], edx
shr     ebp, 11h
lea     edi, [esp+40h+var_30]
lea     esi, (dword_6E40AA+2)[eax*4]
movsd
movsd
mov     eax, [esp+40h+var_38]
add     word ptr [esp+40h+var_30], ax
mov     edx, [esp+40h+var_38]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_30]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_30+2], ax
mov     eax, [esp+40h+var_34]
add     [esp+40h+var_2C], ax
lea     ecx, [esp+40h+var_30]
mov     ebx, 1388h
mov     edx, 3E8h
mov     eax, 1Eh
call    sub_42A70B
mov     eax, [esp+40h+var_3C]
dec     eax
mov     cl, al
mov     edx, 1000h
sar     edx, cl
mov     [esp+40h+var_1C], edx
mov     eax, 1
shl     eax, cl
mov     [esp+40h+var_18], eax
mov     eax, [esp+40h+var_40]
dec     eax
mov     cl, al
mov     edx, 1000h
sar     edx, cl
mov     [esp+40h+var_20], edx
mov     eax, 1
shl     eax, cl
mov     [esp+40h+var_24], eax
cmp     [esp+40h+var_3C], 0
jz      loc_4EE93A
xor     ebx, ebx

loc_4EE888:
cmp     ebx, [esp+40h+var_18]
jnb     loc_4EE93A
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4EE934
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
call    rand_
mov     esi, eax
mov     ecx, [esp+40h+var_1C]
imul    ecx, ebx
and     eax, 1Fh
sub     ecx, eax
cmp     [esp+40h+var_18], 1
jnz     short loc_4EE8C8
xor     ebp, ebp

loc_4EE8C8:
mov     eax, ecx
call    sub_4EF003
imul    eax, ebp
shr     eax, 0Ch
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_34+2]
sar     eax, 10h
add     eax, [esp+40h+var_28]
mov     [edx+48h], ax
mov     eax, esi
shr     eax, 7
and     eax, 0FFh
and     esi, 0FFh
add     eax, esi
mov     esi, [esp+40h+var_14]
shr     esi, 1
sub     eax, 100h
imul    esi, eax
shr     esi, 8
mov     eax, [esp+40h+var_30]
sar     eax, 10h
sub     eax, esi
mov     [edx+4Ah], ax
mov     eax, ecx
call    sub_4EF008
mov     ecx, eax
imul    ecx, ebp
shr     ecx, 0Ch
mov     eax, [esp+40h+var_30+2]
sar     eax, 10h
add     eax, ecx
mov     [edx+4Ch], ax

loc_4EE934:
inc     ebx
jmp     loc_4EE888

loc_4EE93A:
cmp     [esp+40h+var_40], 0
jz      loc_4EE9F0
xor     ebx, ebx

loc_4EE946:
cmp     ebx, [esp+40h+var_24]
jnb     loc_4EE9F0
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4EE9EA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 2
call    rand_
mov     esi, eax
mov     ecx, [esp+40h+var_20]
imul    ecx, ebx
and     eax, 1Fh
sub     ecx, eax
cmp     [esp+40h+var_24], 1
jnz     short loc_4EE986
xor     ebp, ebp

loc_4EE986:
mov     eax, ecx
call    sub_4EF003
imul    eax, ebp
shr     eax, 0Ch
mov     edi, [esp+40h+var_34+2]
sar     edi, 10h
add     eax, edi
mov     [edx+1Ch], ax
mov     eax, esi
shr     eax, 7
and     eax, 0FFh
and     esi, 0FFh
add     eax, esi
mov     esi, [esp+40h+var_14]
shr     esi, 1
sub     eax, 100h
imul    eax, esi
shr     eax, 8
mov     esi, [esp+40h+var_30]
sar     esi, 10h
sub     esi, eax
mov     [edx+1Eh], si
mov     eax, ecx
call    sub_4EF008
imul    eax, ebp
shr     eax, 0Ch
mov     ecx, [esp+40h+var_30+2]
sar     ecx, 10h
add     eax, ecx
mov     [edx+20h], ax

loc_4EE9EA:
inc     ebx
jmp     loc_4EE946

loc_4EE9F0:
add     esp, 30h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EE7BD endp




sub_4EE9F8 proc near
push    ecx
push    edx
mov     edx, eax
test    eax, eax
jle     short loc_4EEA37
cmp     ax, 8000h
jnb     short loc_4EEA37
xor     ecx, ecx
mov     cx, ax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ax, ds:word_6E40B2[eax*4]
and     ah, 0Fh
test    ax, ax
jnz     short loc_4EEA27
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4EEA27:
test    edx, 0F0000h
jz      short loc_4EEA37
and     eax, 0FFFFh
pop     edx
pop     ecx
retn

loc_4EEA37:
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
retn
sub_4EE9F8 endp




sub_4EEA3F proc near
push    edx
cmp     ax, 8000h
jnb     short loc_4EEA64
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_6E40B2[eax*4]
and     ah, 0Fh
and     eax, 0FFFFh
pop     edx
retn

loc_4EEA64:
mov     eax, 0FFFFFFFFh
sub_4EEA3F endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EECAA

loc_4EEA69:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4EECAA



sub_4EEA6B proc near
push    ecx
push    edx
cmp     ax, 800h
jnb     short loc_4EEADC
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ecx, ds:dword_6E40AE[eax*4]
sar     ecx, 10h
add     ecx, 8000h
sar     ecx, 9
xor     edx, edx
mov     dl, ds:byte_77EAC3
sub     ecx, edx
mov     edx, ecx
shl     edx, 8
mov     ecx, ds:dword_6E40AA[eax*4]
sar     ecx, 10h
add     ecx, 8000h
sar     ecx, 9
xor     eax, eax
mov     al, ds:byte_77EAC5
sub     ecx, eax
lea     eax, [ecx+edx]
mov     edx, eax
xor     eax, eax
mov     ax, ds:word_5513E0
mov     ds:word_560ADC[eax*2], dx
mov     edx, eax
inc     edx
mov     ds:word_5513E0, dx

loc_4EEADC:
pop     edx
pop     ecx
retn
sub_4EEA6B endp




sub_4EEADF proc near

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
mov     edx, eax
xor     dh, ah
and     edx, 0FFFFh
mov     [esp+24h+var_20], edx
movzx   ebp, ax
sar     ebp, 8
lea     eax, [edx+edx]
mov     edx, ds:dword_77E700
add     edx, eax
xor     eax, eax
mov     ax, ds:word_77EAAE
imul    eax, ebp
mov     ax, [edx+eax*2]
mov     [esp+24h+var_1C], eax
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
test    ds:word_6E40B2[eax*4], 0FFFh
jz      loc_4EEBDA
xor     eax, eax
mov     edi, ds:dword_77E700
jmp     short loc_4EEB4A

loc_4EEB40:
inc     eax
cmp     eax, 8
jnb     loc_4EEBC4

loc_4EEB4A:
mov     esi, ds:(off_5513DC+3)[eax]
sar     esi, 18h
add     esi, [esp+24h+var_20]
mov     ecx, ds:dword_5513E7[eax]
sar     ecx, 18h
add     ecx, ebp
xor     edx, edx
mov     dx, ds:word_77EAAE
cmp     esi, edx
jnb     short loc_4EEB40
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     ecx, ebx
jnb     short loc_4EEB40
lea     ebx, [esi+esi]
add     ebx, edi
imul    edx, ecx
movsx   edx, word ptr [ebx+edx*2]
cmp     edx, 800h
jge     short loc_4EEB40
test    edx, edx
jle     short loc_4EEB40
xor     ebx, ebx
mov     bx, word ptr [esp+24h+var_1C]
cmp     edx, ebx
jnz     short loc_4EEB40
shl     ecx, 8
add     ecx, esi
xor     edx, ebx
mov     dx, ds:word_5513E0
mov     ds:word_560ADC[edx*2], cx
mov     ebx, edx
inc     ebx
mov     ds:word_5513E0, bx
jmp     loc_4EEB40

loc_4EEBC4:
xor     eax, eax
mov     ax, word ptr [esp+24h+var_1C]
call    sub_4EE755

loc_4EEBD0:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4EEBDA:
xor     eax, eax
dec     ds:word_5513E0
jmp     short loc_4EEBEB

loc_4EEBE5:
inc     eax
cmp     eax, 4
jnb     short loc_4EEBD0

loc_4EEBEB:
mov     esi, ds:dword_5513EF[eax]
sar     esi, 18h
add     esi, [esp+24h+var_20]
mov     ecx, ds:dword_5513F3[eax]
sar     ecx, 18h
add     ecx, ebp
xor     edx, edx
mov     dx, ds:word_77EAAE
cmp     esi, edx
jnb     short loc_4EEBE5
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     ecx, ebx
jnb     short loc_4EEBE5
lea     ebx, [esi+esi]
add     ebx, ds:dword_77E700
imul    edx, ecx
movsx   edx, word ptr [ebx+edx*2]
cmp     edx, 800h
jge     short loc_4EEBE5
test    edx, edx
jle     short loc_4EEBE5
xor     edi, edi
mov     di, word ptr [esp+24h+var_1C]
cmp     edx, edi
jz      short loc_4EEBE5
mov     ebx, edi
shl     ebx, 2
sub     ebx, edi
mov     ebx, ds:dword_6E40B4[ebx*4]
mov     ebx, [ebx]
shr     ebx, 10h
mov     [esp+24h+var_24], ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
shl     edx, 2
mov     ebx, ds:dword_6E40B4[edx]
mov     ebx, [ebx]
shr     ebx, 10h
cmp     ebx, [esp+24h+var_24]
jnz     loc_4EEBE5
test    ds:word_6E40B2[edx], 0FFFh
jz      loc_4EEBE5
shl     ecx, 8
add     ecx, esi
xor     edx, edx
mov     dx, ds:word_5513E0
mov     ds:word_560ADC[edx*2], cx
inc     edx
mov     ds:word_5513E0, dx
jmp     loc_4EEBE5
sub_4EEADF endp




sub_4EECAA proc near

; FUNCTION CHUNK AT 004EEA69 SIZE 00000002 BYTES

push    edx

loc_4EECAB:
mov     dx, ds:word_5513E0
test    dx, dx
jz      loc_4EEA69
xor     eax, eax
mov     ax, dx
mov     ax, ds:word_560ADA[eax*2]
and     eax, 0FFFFh
call    sub_4EEADF
jmp     short loc_4EECAB
sub_4EECAA endp




sub_4EECD4 proc near
push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 2
sub_4EECD4 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EECE5
;   ADDITIONAL PARENT FUNCTION sub_4EECEF

loc_4EECDC:
mov     edx, ecx
call    memcpy_
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4EECE5



sub_4EECE5 proc near

; FUNCTION CHUNK AT 004EECDC SIZE 00000009 BYTES

push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 4
jmp     short loc_4EECDC
sub_4EECE5 endp




sub_4EECEF proc near

; FUNCTION CHUNK AT 004EECDC SIZE 00000009 BYTES

push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 5
jmp     short loc_4EECDC
sub_4EECEF endp




sub_4EECF9 proc near
push    ebx
sub     edx, eax
lea     ebx, [edx+4]
xor     edx, edx
call    memset_
pop     ebx
retn
sub_4EECF9 endp




sub_4EED08 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ds:dword_551410, esp
xor     edx, edx

loc_4EED15:
mov     ds:dword_55140C, edx
test    word ptr ds:dword_5513FC[edx], 0FFFFh
jz      short loc_4EED5E
cmp     word ptr ds:dword_5513FC[edx], 1
jnz     short loc_4EED4B
dec     word ptr ds:(dword_5513FC+2)[edx]
test    word ptr ds:(dword_5513FC+2)[edx], 0FFFFh
jnz     short loc_4EED5E
mov     word ptr ds:dword_5513FC[edx], 2

loc_4EED4B:
mov     esp, ds:dword_551400[edx]
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4EED58:
mov     esp, ds:dword_551410

loc_4EED5E:
add     edx, 8
cmp     edx, 10h
jb      short loc_4EED15
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EED08 endp




sub_4EED6C proc near
mov     eax, esp
sub     eax, 8000h
mov     ds:dword_551414, eax
retn
sub_4EED6C endp




sub_4EED79 proc near
push    ebx
mov     ebx, eax
shl     ebx, 3
mov     word ptr ds:dword_5513FC[ebx], 2
imul    eax, 4000h
sub     eax, ds:dword_551414
neg     eax
sub     eax, 1Ch
mov     ds:dword_551400[ebx], eax
mov     [eax+18h], edx
pop     ebx
retn
sub_4EED79 endp




sub_4EEDA4 proc near
push    edx
mov     edx, ds:dword_55140C
mov     word ptr ds:dword_5513FC[edx], 1
mov     word ptr ds:(dword_5513FC+2)[edx], ax
pop     eax
push    ebx
push    ecx
push    eax
push    esi
push    edi
push    ebp
mov     ds:dword_551400[edx], esp
jmp     short loc_4EED58
sub_4EEDA4 endp




sub_4EEDCA proc near
mov     edx, ds:dword_55140C
mov     word ptr ds:dword_5513FC[edx], 2
mov     ebx, edx
shr     ebx, 3
imul    ebx, 4000h
sub     ebx, ds:dword_551414
neg     ebx
sub     ebx, 1Ch
mov     ds:dword_551400[edx], ebx
mov     [ebx+18h], eax
jmp     loc_4EED58
sub_4EEDCA endp




sub_4EEDFD proc near
mov     edx, ds:dword_55140C
mov     ds:dword_5513FC[edx], 0
mov     ds:dword_551400[edx], 0
jmp     loc_4EED58
sub_4EEDFD endp




sub_4EEE1C proc near
push    ecx
push    esi
push    edi
mov     ecx, 40h ; '@'
mov     esi, eax
mov     edi, edx

loc_4EEE28:
mov     eax, [esi]
mov     edx, [edi]
and     edx, eax
xor     edx, 0FFFFFFFFh
and     [edi], edx
add     esi, 4
add     edi, 4
loop    loc_4EEE28
pop     edi
pop     esi
pop     ecx
retn
sub_4EEE1C endp

; [0000000A BYTES: COLLAPSED FUNCTION initrandnext_]
; [00000024 BYTES: COLLAPSED FUNCTION rand_]

srand_:
push    edx
mov     edx, eax
call    initrandnext_
test    eax, eax
jz      short loc_4EEE7B
mov     [eax], edx

loc_4EEE7B:
pop     edx
retn



sub_4EEE7D proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 8
mov     edx, ds:dword_77EBE0
cmp     eax, edx
jge     short loc_4EEE90
xor     eax, eax
jmp     short loc_4EEECA

loc_4EEE90:
mov     ecx, ds:dword_77EBD4
cmp     eax, ecx
jle     short loc_4EEEA1
mov     eax, 1000h
jmp     short loc_4EEECA

loc_4EEEA1:
sub     eax, edx
mov     [esp+10h+var_C], eax
fild    [esp+10h+var_C]
mov     eax, ecx
sub     eax, edx
mov     [esp+10h+var_C], eax
fild    [esp+10h+var_C]
fdivp   st(1), st
fmul    ds:flt_50A4E8
call    __CHP
fistp   [esp+10h+var_10]
mov     eax, [esp+10h+var_10]

loc_4EEECA:
add     esp, 8
pop     edx
pop     ecx
retn
sub_4EEE7D endp




sub_4EEED0 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ecx
sub     esp, 0Ch
mov     ecx, eax
fld     ds:flt_77EB30
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jb      short loc_4EEF0E
fld     ds:flt_77EB28
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     ds:flt_77EB2C
jmp     loc_4EEFA6

loc_4EEF0E:
fldz
fcomp   ds:flt_77EB30
fnstsw  ax
sahf
jb      short loc_4EEF5E
fld     ds:flt_77EB28
fmul    ds:dword_77EBDC
fdiv    ds:dword_77EBC0
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     ds:flt_77EB2C
fmul    ds:dword_77EBDC
fdiv    ds:dword_77EBC0
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx]
mov     dword ptr [ebx], 0
add     esp, 0Ch
pop     ecx
retn

loc_4EEF5E:
fld     ds:flt_77EB30
fdiv    ds:dword_77EBC0
fstp    [esp+10h+var_C]
fld     ds:flt_77EB28
fmul    [esp+10h+var_C]
fstp    [esp+10h+var_8]
fld     ds:flt_77EB2C
fmul    [esp+10h+var_C]
fstp    [esp+10h+var_10]
fld     [esp+10h+var_8]
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     [esp+10h+var_10]

loc_4EEFA6:
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx]
fld     ds:flt_77EB30
call    __CHP
fistp   dword ptr [ebx]
add     esp, 0Ch
pop     ecx
retn
sub_4EEED0 endp

; START OF FUNCTION CHUNK FOR sub_4EF008

loc_4EEFCE:
mov     edx, 1

loc_4EEFD3:
and     eax, 7FFh
cmp     eax, 400h
jge     short loc_4EEFE9
mov     ax, ds:word_55143C[eax*2]
jmp     short loc_4EEFF8

loc_4EEFE9:
mov     ecx, 800h
sub     ecx, eax
mov     ax, ds:word_55143C[ecx*2]

loc_4EEFF8:
and     eax, 0FFFFh
imul    eax, edx
pop     edx
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4EF008



sub_4EF003 proc near
add     eax, 400h
sub_4EF003 endp




sub_4EF008 proc near

; FUNCTION CHUNK AT 004EEFCE SIZE 00000035 BYTES

push    ecx
push    edx
test    ah, 8
jz      short loc_4EEFCE
mov     edx, 0FFFFFFFFh
jmp     short loc_4EEFD3
sub_4EF008 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF016 proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fmul    ds:dbl_50A4F0
call    IF@ATAN
fmul    ds:dbl_50A4F8
fdiv    ds:dbl_50A500

loc_4EF03C:
call    __CHP
fistp   [esp+4+var_4]
mov     eax, [esp+4+var_4]
mov     esp, ebp
pop     ebp
retn
sub_4EF016 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF04B proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
mov     [esp+4+var_4], edx
fild    [esp+4+var_4]
fxch    st(1)
call    IF@ATAN2
fmul    ds:dbl_50A508
fdiv    ds:dbl_50A510
jmp     short loc_4EF03C
sub_4EF04B endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF075 proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
call    IF@SQRT
jmp     short loc_4EF03C
sub_4EF075 endp




sub_4EF08B proc near
push    ebx
push    esi
mov     ds:dword_77EBDC, 447A0000h
mov     ds:dword_77EBC0, 43FA0000h
mov     ebx, 3333h
mov     ds:dword_77EBC4, ebx
mov     esi, 10000h
mov     ds:dword_77EBD8, esi
mov     ds:dword_77EBE0, ebx
mov     ds:dword_77EBD4, esi
pop     esi
pop     ebx
retn
sub_4EF08B endp




sub_4EF0C6 proc near
mov     ds:dword_77EBCC, eax
mov     ds:dword_77EBD0, edx
retn
sub_4EF0C6 endp




sub_4EF0D2 proc near

var_4= dword ptr -4

sub     esp, 4
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fst     ds:dword_77EBDC
fmul    ds:flt_50A518
fstp    ds:dword_77EBC0
fild    ds:dword_77EBC4
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A51C
call    __CHP
fistp   ds:dword_77EBE0
fild    ds:dword_77EBD8
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A51C
call    __CHP
fistp   ds:dword_77EBD4
add     esp, 4
retn
sub_4EF0D2 endp




sub_4EF12B proc near

var_4= dword ptr -4

sub     esp, 4
mov     ds:dword_77EBC4, eax
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A520
call    __CHP
fistp   ds:dword_77EBE0
add     esp, 4
retn
sub_4EF12B endp




sub_4EF154 proc near
mov     ds:byte_77EBB0, al
mov     ds:byte_77EBB1, dl
mov     ds:byte_77EBB2, bl
retn
sub_4EF154 endp




sub_4EF166 proc near
shl     eax, 4
mov     word ptr ds:dword_77EB66+2, ax
shl     edx, 4
mov     word ptr ds:dword_77EB6A, dx
shl     ebx, 4
mov     word ptr ds:dword_77EB6A+2, bx
retn
sub_4EF166 endp




sub_4EF184 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
call    memcpy_
lea     eax, [ecx+24h]
mov     ebx, 0Ch
xor     edx, edx
call    memset_
pop     edx
pop     ecx
pop     ebx
retn
sub_4EF184 endp




sub_4EF1AB proc near
push    ebx
push    edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
jmp     loc_4EFB52
sub_4EF1AB endp




sub_4EF1BC proc near
mov     dword ptr [eax], 3E000000h
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+10h], 3E000000h
mov     dword ptr [eax+14h], 0
mov     dword ptr [eax+18h], 0
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 3E000000h
retn
sub_4EF1BC endp




sub_4EF1FB proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 0Ch
fild    word ptr [edx]
fstp    [esp+0Ch+var_C]
fild    word ptr [edx+2]
fstp    [esp+0Ch+var_8]
fild    word ptr [edx+4]

loc_4EF20D:
fstp    [esp+0Ch+var_4]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+8]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+0Ch]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+14h]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+18h]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+20h]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx+8]

loc_4EF26F:
mov     eax, ebx
add     esp, 0Ch
retn
sub_4EF1FB endp




sub_4EF275 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 0Ch
fild    word ptr [edx]
fstp    [esp+0Ch+var_C]
fild    word ptr [edx+2]
fstp    [esp+0Ch+var_8]
fild    word ptr [edx+4]
fstp    [esp+0Ch+var_4]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+8]
faddp   st(1), st
fstp    dword ptr [ebx]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+0Ch]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+14h]
faddp   st(1), st
fstp    dword ptr [ebx+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+18h]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+20h]
faddp   st(1), st
fstp    dword ptr [ebx+8]
jmp     short loc_4EF26F
sub_4EF275 endp




sub_4EF2DC proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 10h
fild    word ptr [edx]
fstp    [esp+10h+var_10]
fild    word ptr [edx+2]
fstp    [esp+10h+var_C]
fild    word ptr [edx+4]
fstp    [esp+10h+var_8]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+4]
fld     [esp+10h+var_10]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+8]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     edx, [esp+10h+var_4]
mov     [ebx], dx
fld     [esp+10h+var_10]
fmul    dword ptr [eax+0Ch]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+14h]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     edx, [esp+10h+var_4]
mov     [ebx+2], dx
fld     [esp+10h+var_10]
fmul    dword ptr [eax+18h]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+20h]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     eax, [esp+10h+var_4]
mov     [ebx+4], ax
mov     eax, ebx
add     esp, 10h
retn
sub_4EF2DC endp




sub_4EF371 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8

sub     esp, 0Ch
fild    dword ptr [edx]
fstp    [esp+0Ch+var_C]
fild    dword ptr [edx+4]
fstp    [esp+0Ch+var_8]
fild    dword ptr [edx+8]
jmp     loc_4EF20D
sub_4EF371 endp




sub_4EF388 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
sub     esp, 30h
mov     ecx, ebx
fld     dword ptr [eax+4]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_34]
fld     dword ptr [eax+4]
fmul    dword ptr [edx+10h]
fld     dword ptr [eax]
fmul    dword ptr [edx+4]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_30]
fld     dword ptr [eax+4]
fmul    dword ptr [edx+14h]
fld     dword ptr [eax]
fmul    dword ptr [edx+8]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_2C]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_28]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx+4]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+10h]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_24]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx+8]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+14h]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_20]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_1C]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx+4]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+10h]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_18]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx+8]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+14h]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_14]
mov     ebx, 24h ; '$'
mov     edx, esp
mov     eax, ecx
call    memcpy_
mov     eax, ecx
add     esp, 30h
pop     ecx
retn
sub_4EF388 endp




sub_4EF486 proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+44h+var_C], eax
fild    [esp+44h+var_C]
fmul    ds:dbl_50A528
fstp    [esp+44h+var_14]
mov     eax, ebx
call    sub_4EF008
mov     [esp+44h+var_C], eax
fild    [esp+44h+var_C]
fmul    ds:dbl_50A528
fstp    [esp+44h+var_10]
mov     [esp+44h+var_44], 3F800000h
xor     ebx, ebx
mov     [esp+44h+var_40], ebx
mov     [esp+44h+var_3C], ebx
mov     [esp+44h+var_38], ebx
mov     eax, [esp+44h+var_14]
mov     [esp+44h+var_34], eax
fld     [esp+44h+var_10]
fchs
fstp    [esp+44h+var_30]
mov     [esp+44h+var_2C], ebx
mov     eax, [esp+44h+var_10]
mov     [esp+44h+var_28], eax

loc_4EF4F2:
mov     eax, [esp+44h+var_14]
mov     [esp+44h+var_24], eax

loc_4EF4FA:
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
mov     eax, ecx
add     esp, 3Ch
pop     ecx
pop     ebx
retn
sub_4EF486 endp




; int __cdecl sub_4EF50D(int, int, int, int, int, float, int, int, int, int, int, float, float, int)
sub_4EF50D proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch
arg_2C= dword ptr  30h
arg_30= dword ptr  34h
arg_34= dword ptr  38h

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A530
fstp    [esp+arg_2C]
mov     eax, ebx
call    sub_4EF008
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A530
fstp    [esp+arg_30]
mov     eax, [esp+arg_2C]
mov     [esp+0], eax
xor     edx, edx
mov     [esp+arg_0], edx
mov     eax, [esp+arg_30]
mov     [esp+arg_4], eax
mov     [esp+arg_8], edx
mov     [esp+arg_C], 3F800000h
mov     [esp+arg_10], edx
fld     [esp+arg_30]
fchs
fstp    [esp+arg_14]
mov     [esp+arg_18], edx
jmp     loc_4EF4F2
sub_4EF50D endp




; int __cdecl sub_4EF57E(float, int, int, int, int, int, int, int, int, int, int, float, float, int)
sub_4EF57E proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch
arg_1C= dword ptr  20h
arg_2C= dword ptr  30h
arg_30= dword ptr  34h
arg_34= dword ptr  38h

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A538
fstp    [esp+arg_2C]
mov     eax, ebx
call    sub_4EF008
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A538
fstp    [esp+arg_30]
mov     eax, [esp+arg_2C]
mov     [esp+0], eax
fld     [esp+arg_30]
fchs
fstp    [esp+arg_0]
xor     edx, edx
mov     [esp+arg_4], edx
mov     eax, [esp+arg_30]
mov     [esp+arg_8], eax
mov     eax, [esp+arg_2C]
mov     [esp+arg_C], eax
mov     [esp+arg_10], edx
mov     [esp+arg_14], edx
mov     [esp+arg_18], edx
mov     [esp+arg_1C], 3F800000h
jmp     loc_4EF4FA
sub_4EF57E endp




; int __thiscall sub_4EF5F7(int)
sub_4EF5F7 proc near
push    ebx             ; int
push    ecx             ; int
push    esi             ; int
mov     esi, eax
mov     ecx, edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
mov     eax, ecx
call    memcpy_
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF57E
mov     eax, [esi]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
movsx   eax, word ptr [esi]
mov     edx, ecx
call    sub_4EF486
sub_4EF5F7 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EF638

loc_4EF632:
mov     eax, ecx
pop     esi
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4EF638



; int __thiscall sub_4EF638(int)
sub_4EF638 proc near

; FUNCTION CHUNK AT 004EF632 SIZE 00000006 BYTES

push    ebx             ; int
push    ecx             ; int
push    esi             ; int
mov     esi, eax
mov     ecx, edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
mov     eax, ecx
call    memcpy_
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF57E
movsx   eax, word ptr [esi]
mov     edx, ecx
call    sub_4EF486
mov     eax, [esi]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
jmp     short loc_4EF632
sub_4EF638 endp




sub_4EF675 proc near
push    ecx
mov     ecx, [edx]
mov     [eax+24h], ecx
mov     ecx, [edx+4]
mov     [eax+28h], ecx
mov     edx, [edx+8]
mov     [eax+2Ch], edx
pop     ecx
retn
sub_4EF675 endp




sub_4EF689 proc near
fild    dword ptr [edx]
fmul    dword ptr [eax]
fmul    ds:dbl_50A540
fstp    dword ptr [eax]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+4]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+4]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+8]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+8]
fild    dword ptr [edx]
fmul    dword ptr [eax+0Ch]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+0Ch]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+10h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+10h]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+14h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+14h]
fild    dword ptr [edx]
fmul    dword ptr [eax+18h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+18h]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+1Ch]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+1Ch]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+20h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+20h]
retn
sub_4EF689 endp




sub_4EF70C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
mov     ebx, [ecx]
mov     [edx], ebx
mov     ebx, [ecx+0Ch]
mov     [edx+4], ebx
mov     ebx, [ecx+18h]
mov     [edx+8], ebx
mov     ebx, [ecx+4]
mov     [edx+0Ch], ebx
mov     ebx, [ecx+10h]
mov     [edx+10h], ebx
mov     ebx, [ecx+1Ch]
mov     [edx+14h], ebx
mov     ebx, [ecx+8]
mov     [edx+18h], ebx
mov     ebx, [ecx+14h]
mov     [edx+1Ch], ebx
mov     ebx, [ecx+20h]
mov     [edx+20h], ebx
pop     ecx
pop     ebx
retn
sub_4EF70C endp




sub_4EF749 proc near
push    ecx
push    esi
mov     ecx, [eax+4]
mov     esi, [edx+8]
imul    esi, ecx
mov     ecx, [eax+8]
imul    ecx, [edx+4]
sub     esi, ecx
mov     [ebx], esi
mov     esi, [eax+8]
imul    esi, [edx]
mov     ecx, [eax]
imul    ecx, [edx+8]
sub     esi, ecx
mov     [ebx+4], esi
mov     ecx, [eax]
imul    ecx, [edx+4]
mov     eax, [eax+4]
imul    eax, [edx]
sub     ecx, eax
mov     [ebx+8], ecx
pop     esi
pop     ecx
retn
sub_4EF749 endp




sub_4EF784 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 24h
fild    dword ptr [eax]
fmul    ds:flt_50A548
fstp    [esp+24h+var_24]
fild    dword ptr [eax+4]
fmul    ds:flt_50A548
fstp    [esp+24h+var_20]
fild    dword ptr [eax+8]
fmul    ds:flt_50A548
fstp    [esp+24h+var_1C]
fild    dword ptr [edx]
fmul    ds:flt_50A548
fstp    [esp+24h+var_18]
fild    dword ptr [edx+4]
fmul    ds:flt_50A548
fstp    [esp+24h+var_14]
fild    dword ptr [edx+8]
fmul    ds:flt_50A548
fstp    [esp+24h+var_10]
fld     [esp+24h+var_20]
fmul    [esp+24h+var_10]
fld     [esp+24h+var_1C]
fmul    [esp+24h+var_14]
fsubp   st(1), st
fstp    [esp+24h+var_C]
fld     [esp+24h+var_1C]
fmul    [esp+24h+var_18]
fld     [esp+24h+var_24]
fmul    [esp+24h+var_10]
fsubp   st(1), st
fstp    [esp+24h+var_8]
fld     [esp+24h+var_24]
fmul    [esp+24h+var_14]
fld     [esp+24h+var_20]
fmul    [esp+24h+var_18]
fsubp   st(1), st
fstp    [esp+24h+var_4]
fld     [esp+24h+var_C]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx]
fld     [esp+24h+var_8]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx+4]
fld     [esp+24h+var_4]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx+8]
add     esp, 24h
retn
sub_4EF784 endp




sub_4EF84B proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     edi, edx
mov     ebx, esp
mov     edx, eax
mov     eax, offset unk_77EAF8
call    sub_4EF1FB
mov     eax, ds:dword_77EB1C
add     [esp+18h+var_18], eax
mov     eax, ds:dword_77EB20
add     [esp+18h+var_14], eax
mov     eax, ds:dword_77EB24
add     [esp+18h+var_10], eax
mov     esi, esp
movsd
movsd
movsd
movsd
add     esp, 10h
pop     edi
pop     esi
retn
sub_4EF84B endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF886 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= qword ptr -0Ch
var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 20h
and     esp, 0FFFFFFF8h
fild    dword ptr [eax]
fstp    [esp+20h+var_1C]
fild    dword ptr [eax+4]
fstp    [esp+20h+var_14]
fild    dword ptr [eax+8]
fstp    [esp+20h+var_10]
fld     [esp+20h+var_1C]
fmul    st, st
fld     [esp+20h+var_14]
fmul    st, st
faddp   st(1), st
fld     [esp+20h+var_10]
fmul    st, st
faddp   st(1), st
fst     [esp+20h+var_18]
call    IF@SQRT
fstp    [esp+20h+var_20]
test    [esp+20h+var_20], 7FFFFFFFh
jnz     short loc_4EF8D5
mov     [esp+20h+var_20], 3F800000h

loc_4EF8D5:
fld     [esp+20h+var_1C]
fmul    ds:dbl_50A550
fld     [esp+20h+var_20]
fstp    [esp+20h+var_C]
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx]
fld     [esp+20h+var_14]
fmul    ds:dbl_50A550
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx+4]
fld     [esp+20h+var_10]
fmul    ds:dbl_50A550
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx+8]
fld     [esp+20h+var_18]

loc_4EF921:
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     esp, ebp
pop     ebp
retn
sub_4EF886 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF932 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= qword ptr -0Ch
var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 20h
and     esp, 0FFFFFFF8h
fild    dword ptr [eax]
fstp    [esp+20h+var_1C]
fild    dword ptr [eax+4]
fstp    [esp+20h+var_10]
fild    dword ptr [eax+8]
fstp    [esp+20h+var_18]
fld     [esp+20h+var_1C]
fmul    st, st
fld     [esp+20h+var_10]
fmul    st, st
faddp   st(1), st
fld     [esp+20h+var_18]
fmul    st, st
faddp   st(1), st
fst     [esp+20h+var_14]
call    IF@SQRT
fstp    [esp+20h+var_20]
test    [esp+20h+var_20], 7FFFFFFFh
jnz     short loc_4EF981
mov     [esp+20h+var_20], 3F800000h

loc_4EF981:
fld     [esp+20h+var_1C]
fmul    ds:dbl_50A558
fld     [esp+20h+var_20]
fstp    [esp+20h+var_C]
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx], ax
fld     [esp+20h+var_10]
fmul    ds:dbl_50A558
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx+2], ax
fld     [esp+20h+var_18]
fmul    ds:dbl_50A558
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx+4], ax
fld     [esp+20h+var_14]
jmp     loc_4EF921
sub_4EF932 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF9ED proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 24h
and     esp, 0FFFFFFF8h
mov     ecx, edx
mov     esi, ebx
mov     ebx, esp
mov     edx, eax
mov     eax, offset unk_77EB38
call    sub_4EF1FB
mov     edx, esp
mov     eax, esp
call    sub_4EF886
mov     ebx, esp
mov     edx, esp
mov     eax, offset unk_77EAC8
call    sub_4EF371
mov     edx, esp
mov     eax, esp
call    sub_4EF886
mov     eax, ds:dword_77EB66
sar     eax, 10h
mov     edx, [esp+24h+var_24]
add     edx, eax
mov     [esp+24h+var_24], edx
mov     eax, ds:dword_77EB66+2
sar     eax, 10h
mov     ebx, [esp+24h+var_20]
add     ebx, eax
mov     [esp+24h+var_20], ebx
mov     eax, ds:dword_77EB6A
sar     eax, 10h
mov     edi, [esp+24h+var_1C]
add     edi, eax
mov     [esp+24h+var_1C], edi
mov     [esp+24h+var_8], edx
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_14]
mov     [esp+24h+var_8], ebx
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_10]
mov     eax, edi
mov     [esp+24h+var_8], edi
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_C]
xor     eax, edi
mov     al, [ecx]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_14]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi], al
xor     eax, eax
mov     al, [ecx+1]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_10]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi+1], al
xor     eax, eax
mov     al, [ecx+2]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_C]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi+2], al
mov     al, [ecx]
mov     [esi], al
mov     al, [ecx+1]
mov     [esi+1], al
mov     al, [ecx+2]
mov     [esi+2], al
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EF9ED endp




sub_4EFB0F proc near
push    ecx
push    esi
push    edi
mov     ecx, 0Ch
mov     edi, offset unk_77EB38

loc_4EFB1C:
mov     esi, eax
rep movsd
pop     edi
pop     esi
pop     ecx
retn
sub_4EFB0F endp




sub_4EFB24 proc near
push    ecx
push    esi
push    edi
mov     ecx, 0Ch
mov     edi, offset unk_77EAC8
jmp     short loc_4EFB1C
sub_4EFB24 endp




sub_4EFB33 proc near
push    ebx
push    edx
mov     ebx, 24h ; '$'
mov     edx, eax
mov     eax, offset unk_77EAF8
jmp     short loc_4EFB52
sub_4EFB33 endp




sub_4EFB43 proc near
push    ebx
push    edx
lea     edx, [eax+24h]
mov     ebx, 0Ch

loc_4EFB4D:
mov     eax, offset dword_77EB1C

loc_4EFB52:
call    memcpy_
pop     edx
pop     ebx
retn
sub_4EFB43 endp




sub_4EFB5A proc near
push    ebx
push    edx
mov     ebx, 0Ch
mov     edx, eax
jmp     short loc_4EFB4D
sub_4EFB5A endp




sub_4EFB65 proc near
push    ecx
push    edx
mov     edx, ds:dword_77EBA8
add     edx, ds:dword_77EBA4
add     edx, ds:dword_77EBA0
mov     ecx, 0Ch
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ds:dword_77EBB8, eax
pop     edx
pop     ecx
retn
sub_4EFB65 endp




sub_4EFB8D proc near
mov     eax, ds:dword_77EBAC
add     eax, ds:dword_77EBA8
add     eax, ds:dword_77EBA4
add     eax, ds:dword_77EBA0
sar     eax, 4
mov     ds:dword_77EBB8, eax
retn
sub_4EFB8D endp




sub_4EFBAD proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 10h
fild    ds:dword_77EBB4
fmul    ds:dbl_50A568
fstp    [esp+10h+var_10]
fld1
fsub    [esp+10h+var_10]
fstp    [esp+10h+var_C]
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB0
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8, al
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8+1
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB1
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8+1, al
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8+2
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB2
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8+2, al
add     esp, 10h
retn
sub_4EFBAD endp




sub_4EFC77 proc near
test    eax, eax
jge     short loc_4EFC7F
xor     eax, eax
jmp     short loc_4EFC8B

loc_4EFC7F:
cmp     eax, 1000h
jle     short loc_4EFC8B
mov     eax, 1000h

loc_4EFC8B:
mov     ds:dword_77EBB4, eax
retn
sub_4EFC77 endp




sub_4EFC91 proc near
mov     eax, [eax]
mov     ds:dword_77EBC8, eax
retn
sub_4EFC91 endp




sub_4EFC99 proc near
push    esi
push    edi
mov     edi, offset flt_77EB88
mov     esi, eax
movsd
movsd
mov     edi, offset flt_77EB90
mov     esi, edx
movsd
movsd
mov     edi, offset flt_77EB98

loc_4EFCB2:
mov     esi, ebx
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFC99 endp




sub_4EFCB9 proc near
mov     ds:dword_77EBA8, eax
mov     ds:dword_77EBA4, edx
mov     ds:dword_77EBA0, ebx
retn
sub_4EFCB9 endp




sub_4EFCCB proc near
mov     ds:dword_77EBAC, eax
mov     ds:dword_77EBA8, edx
mov     ds:dword_77EBA4, ebx
mov     ds:dword_77EBA0, ecx
retn
sub_4EFCCB endp




sub_4EFCE3 proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFCE3 endp




sub_4EFCF1 proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
mov     edi, offset unk_77EB78
mov     esi, edx
movsd
movsd
mov     edi, offset unk_77EB70
jmp     short loc_4EFCB2
sub_4EFCF1 endp




sub_4EFD0C proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
mov     edi, offset unk_77EB78
lea     esi, [eax+8]
movsd
movsd
mov     edi, offset unk_77EB70
lea     esi, [eax+10h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFD0C endp




sub_4EFD2E proc near

var_4= dword ptr -4

sub     esp, 4
fld     ds:flt_77EB94
fsub    ds:flt_77EB8C
fld     ds:flt_77EB98
fsub    ds:flt_77EB88
fmulp   st(1), st
fstp    [esp+4+var_4]
fld     ds:flt_77EB9C
fsub    ds:flt_77EB8C
fld     ds:flt_77EB90
fsub    ds:flt_77EB88
fmulp   st(1), st
fsub    [esp+4+var_4]
call    __CHP
fistp   ds:dword_77EBBC
add     esp, 4
retn
sub_4EFD2E endp




sub_4EFD7A proc near
push    ebx
push    edx
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
pop     edx
pop     ebx
retn
sub_4EFD7A endp




sub_4EFDC9 proc near
push    ebx
push    edx
push    esi
push    edi
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     eax, ds:dword_77EBA8
mov     ds:dword_77EBAC, eax
mov     eax, ds:dword_77EBA4
mov     ds:dword_77EBA8, eax
mov     eax, ds:dword_77EBA0
mov     ds:dword_77EBA4, eax
mov     edi, offset flt_77EB88
mov     esi, offset flt_77EB90
movsd
movsd
mov     edi, offset flt_77EB90
mov     esi, offset flt_77EB98
movsd
movsd
mov     ebx, offset dword_77EBA0
mov     edx, offset flt_77EB9C
mov     eax, offset flt_77EB98
call    sub_4EEED0
mov     eax, ds:dword_77EBA0
call    sub_4EEE7D
mov     ds:dword_77EBB4, eax
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4EFDC9 endp




sub_4EFE75 proc near
push    ebx
push    edx
mov     eax, ds:dword_77EBA0
mov     ds:dword_77EBAC, eax
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA8
mov     edx, offset flt_77EB8C
mov     eax, offset flt_77EB88
call    sub_4EEED0
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB78
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA4
mov     edx, offset flt_77EB94
mov     eax, offset flt_77EB90
call    sub_4EEED0
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB70
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA0
mov     edx, offset flt_77EB9C
mov     eax, offset flt_77EB98
call    sub_4EEED0
mov     eax, ds:dword_77EBA0
call    sub_4EEE7D
mov     ds:dword_77EBB4, eax
pop     edx
pop     ebx
retn
sub_4EFE75 endp




sub_4EFFAD proc near
push    edx
mov     edx, ds:dword_77EBB4
mov     [eax], edx
pop     edx
retn
sub_4EFFAD endp




sub_4EFFB8 proc near
fld     ds:flt_77EB28
call    __CHP
fistp   dword ptr [eax]
fld     ds:flt_77EB2C
call    __CHP
fistp   dword ptr [eax+4]
fld     ds:flt_77EB30
call    __CHP
fistp   dword ptr [eax+8]
retn
sub_4EFFB8 endp




sub_4EFFE2 proc near
push    edx
mov     edx, ds:dword_77EBBC
mov     [eax], edx
pop     edx
retn
sub_4EFFE2 endp




sub_4EFFED proc near
push    edx
mov     edx, ds:dword_77EBB8
mov     [eax], edx
pop     edx
retn
sub_4EFFED endp




sub_4EFFF8 proc near
push    edx
mov     edx, ds:dword_77EBC8
mov     [eax], edx
pop     edx
retn
sub_4EFFF8 endp




sub_4F0003 proc near
push    esi
push    edi
mov     edi, eax
jmp     loc_4F008E
sub_4F0003 endp




sub_4F000C proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
pop     edi
pop     esi
retn
sub_4F000C endp




sub_4F001A proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB90
movsd
movsd
pop     edi
pop     esi
retn
sub_4F001A endp




sub_4F0028 proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
mov     edi, edx
mov     esi, offset flt_77EB90
movsd
movsd
mov     edi, ebx
jmp     short loc_4F008E
sub_4F0028 endp




sub_4F0040 proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+8]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+10h]
jmp     short loc_4F008E

loc_4F005A:
push    esi
push    edi
lea     edi, [eax+20h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+28h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+30h]
jmp     short loc_4F008E

loc_4F0075:
push    esi
push    edi
lea     edi, [eax+28h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+30h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+38h]

loc_4F008E:
mov     esi, offset flt_77EB98
movsd
movsd
pop     edi
pop     esi
retn
sub_4F0040 endp




sub_4F0098 proc near
push    esi
push    edi
lea     edi, [eax+1Ch]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+24h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+2Ch]
jmp     short loc_4F008E
sub_4F0098 endp




sub_4F00B3 proc near
push    esi
push    edi
lea     edi, [eax+24h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+2Ch]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+34h]
jmp     short loc_4F008E
sub_4F00B3 endp




sub_4F00CE proc near
push    esi
push    edi
lea     edi, [eax+34h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+3Ch]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+44h]
jmp     short loc_4F008E
sub_4F00CE endp




sub_4F00E9 proc near
push    ecx
mov     ecx, ds:dword_77EBA8
mov     [eax], ecx
mov     eax, ds:dword_77EBA4
mov     [edx], eax
mov     eax, ds:dword_77EBA0
mov     [ebx], eax
pop     ecx
retn
sub_4F00E9 endp




sub_4F0102 proc near
push    edx
mov     edx, ds:dword_77EBA8
mov     [eax], edx
mov     edx, ds:dword_77EBA4
mov     [eax+4], edx
mov     edx, ds:dword_77EBA0
mov     [eax+8], edx
pop     edx
retn
sub_4F0102 endp




sub_4F011F proc near
push    esi
mov     esi, ds:dword_77EBAC
mov     [eax], esi
mov     eax, ds:dword_77EBA8
mov     [edx], eax
mov     eax, ds:dword_77EBA4
mov     [ebx], eax
mov     eax, ds:dword_77EBA0
mov     [ecx], eax
pop     esi
retn
sub_4F011F endp




sub_4F013F proc near
push    edx
mov     edx, ds:dword_77EBAC
mov     [eax], edx
mov     edx, ds:dword_77EBA8
mov     [eax+4], edx
mov     edx, ds:dword_77EBA4
mov     [eax+8], edx
mov     edx, ds:dword_77EBA0
mov     [eax+0Ch], edx
pop     edx
retn
sub_4F013F endp




sub_4F0165 proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0180
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0180
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0196

loc_4F0180:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
retn

loc_4F0196:
fild    ds:dword_77EBA8
fmul    ds:flt_50A570
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A570
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A570
fstp    dword ptr [eax+18h]
retn
sub_4F0165 endp

cmp     ds:dword_77EBAC, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA8, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA4, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0205

loc_4F01E8:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+0Ch], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
retn

loc_4F0205:
fild    ds:dword_77EBAC
fmul    ds:flt_50A574
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A574
fstp    dword ptr [eax+0Ch]
fild    ds:dword_77EBA4
fmul    ds:flt_50A574
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A574
fstp    dword ptr [eax+14h]
retn



sub_4F0242 proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0283

loc_4F0266:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F0283:
fild    ds:dword_77EBAC
fmul    ds:flt_50A578
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A578
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A578
fstp    dword ptr [eax+18h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A578
fstp    dword ptr [eax+20h]
retn
sub_4F0242 endp

push    edx
fild    ds:dword_77EBAC
fmul    ds:flt_50A57C
fst     dword ptr [eax+8]
fstp    dword ptr [eax+10h]
mov     edx, [eax+8]
mov     [eax+18h], edx
mov     edx, [eax+8]
mov     [eax+20h], edx
pop     edx
retn



sub_4F02E1 proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F02FC
cmp     ds:dword_77EBA4, 0
jz      short loc_4F02FC
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0312

loc_4F02FC:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
retn

loc_4F0312:
fild    ds:dword_77EBA8
fmul    ds:flt_50A580
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A580
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A580
fstp    dword ptr [eax+18h]
retn
sub_4F02E1 endp




sub_4F0340 proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0381

loc_4F0364:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F0381:
fild    ds:dword_77EBAC
fmul    ds:flt_50A584
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A584
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A584
fstp    dword ptr [eax+18h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A584
fstp    dword ptr [eax+20h]
retn
sub_4F0340 endp




sub_4F03BE proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F03D9
cmp     ds:dword_77EBA4, 0
jz      short loc_4F03D9
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F03EF

loc_4F03D9:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F03EF:
fild    ds:dword_77EBA8
fmul    ds:flt_50A588
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A588
fstp    dword ptr [eax+14h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A588
fstp    dword ptr [eax+20h]
retn
sub_4F03BE endp




sub_4F041D proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F045E

loc_4F0441:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
mov     dword ptr [eax+2Ch], 3F800000h
retn

loc_4F045E:
fild    ds:dword_77EBAC
fmul    ds:flt_50A58C
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A58C
fstp    dword ptr [eax+14h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A58C
fstp    dword ptr [eax+20h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A58C
fstp    dword ptr [eax+2Ch]
retn
sub_4F041D endp




sub_4F049B proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F04AD
cmp     ds:dword_77EBA4, 0
jnz     short loc_4F04BC

loc_4F04AD:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
retn

loc_4F04BC:
fild    ds:dword_77EBA8
fmul    ds:flt_50A590
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A590
fstp    dword ptr [eax+10h]
retn
sub_4F049B endp




sub_4F04DB proc near
push    edx
mov     edx, eax
mov     eax, ds:dword_77EBA0
sar     eax, 2
mov     [edx], eax
pop     edx
retn
sub_4F04DB endp




sub_4F04EA proc near
push    ebx
push    edx
mov     ebx, 30h ; '0'
mov     edx, offset unk_77EAF8
jmp     loc_4EFB52
sub_4F04EA endp



; Attributes: bp-based frame fuzzy-sp

sub_4F04FB proc near

var_84= dword ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_5C= byte ptr -5Ch
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h
var_10= byte ptr -10h
var_C= byte ptr -0Ch
var_8= byte ptr -8
var_4= byte ptr -4
arg_0= dword ptr  10h

push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 74h
and     esp, 0FFFFFFF8h
push    eax
push    edx
push    ebx
push    ecx
xor     edx, edx
mov     [esp+84h+var_24], edx
cmp     [ebp+arg_0], 4
jnz     short loc_4F0520
mov     [esp+84h+var_3C], 20301h
jmp     short loc_4F0528

loc_4F0520:
mov     [esp+84h+var_3C], 201h

loc_4F0528:
lea     ebx, [esp+84h+var_4C]
mov     edx, [esp+84h+var_78]
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    [esp+84h+var_4C]
fstp    [esp+84h+var_4C]
fild    ds:dword_77EB20
fadd    [esp+84h+var_48]
fstp    [esp+84h+var_48]
fild    ds:dword_77EB24
fadd    [esp+84h+var_44]
fstp    [esp+84h+var_44]
lea     edi, [esp+84h+var_5C]
lea     esi, [esp+84h+var_4C]
movsd
movsd
movsd
movsd
mov     eax, [esp+84h+var_7C]
mov     al, [eax]
mov     [esp+84h+var_18], al
mov     [esp+84h+var_14], al
mov     eax, [esp+84h+var_7C]
mov     al, [eax+1]
mov     [esp+84h+var_C], al
mov     [esp+84h+var_10], al
fld     [esp+84h+var_44]
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jnb     short loc_4F05A3
mov     eax, 1
jmp     short loc_4F05A5

loc_4F05A3:
xor     eax, eax

loc_4F05A5:
mov     [esp+84h+var_2C], eax
mov     [esp+84h+var_38], eax
xor     ecx, ecx

loc_4F05AF:
cmp     ecx, [ebp+arg_0]
jge     loc_4F08C6
cmp     ecx, 3
jnz     short loc_4F05E5
lea     edi, [esp+84h+var_6C]
lea     esi, [esp+84h+var_5C]
movsd
movsd
movsd
movsd
mov     al, [esp+84h+var_14]
mov     [esp+84h+var_8], al
mov     al, [esp+84h+var_10]
mov     [esp+84h+var_4], al
mov     esi, [esp+84h+var_38]
jmp     loc_4F0660

loc_4F05E5:
xor     eax, eax
mov     al, byte ptr [esp+ecx+84h+var_3C]
shl     eax, 3
mov     edx, [esp+84h+var_78]
add     edx, eax
lea     ebx, [esp+84h+var_6C]
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    [esp+84h+var_6C]
fstp    [esp+84h+var_6C]
fild    ds:dword_77EB20
fadd    [esp+84h+var_68]
fstp    [esp+84h+var_68]
fild    ds:dword_77EB24
fadd    [esp+84h+var_64]
fstp    [esp+84h+var_64]
xor     eax, eax
mov     al, byte ptr [esp+ecx+84h+var_3C]
add     eax, eax
add     eax, [esp+84h+var_7C]
mov     dl, [eax]
mov     [esp+84h+var_8], dl
mov     al, [eax+1]
mov     [esp+84h+var_4], al
fld     [esp+84h+var_64]
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jnb     short loc_4F065E
mov     esi, 1
jmp     short loc_4F0660

loc_4F065E:
xor     esi, esi

loc_4F0660:
mov     eax, [esp+84h+var_2C]
add     eax, esi
mov     ebx, [esp+84h+var_24]
inc     ebx
mov     edx, [esp+84h+var_24]
shl     edx, 4
add     edx, [esp+84h+var_80]
test    eax, eax
jnz     short loc_4F06C5
mov     eax, [esp+84h+var_44]
mov     [edx+8], eax
fld     [esp+84h+var_4C]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_48]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
mov     al, [esp+84h+var_18]
mov     [edx+0Ch], al
mov     al, [esp+84h+var_C]

loc_4F06BD:
mov     [edx+0Dh], al
jmp     loc_4F088D

loc_4F06C5:
cmp     eax, 1
jnz     loc_4F0891
fld     [esp+84h+var_44]
fsub    [esp+84h+var_64]
fld     [esp+84h+var_44]
fsub    ds:dword_77EBC0
fdivrp  st(1), st
fstp    [esp+84h+var_28]
fld     [esp+84h+var_4C]
fsub    [esp+84h+var_6C]
fmul    [esp+84h+var_28]
fsubr   [esp+84h+var_4C]
fstp    [esp+84h+var_74]
fld     [esp+84h+var_48]
fsub    [esp+84h+var_68]
fmul    [esp+84h+var_28]
fsubr   [esp+84h+var_48]
fstp    [esp+84h+var_70]
xor     eax, eax
mov     al, [esp+84h+var_18]
mov     [esp+84h+var_20], eax
xor     eax, eax
mov     al, [esp+84h+var_8]
mov     edi, [esp+84h+var_20]
sub     edi, eax
mov     eax, edi
mov     [esp+84h+var_20], edi
fild    [esp+84h+var_20]
fmul    [esp+84h+var_28]
xor     eax, edi
mov     al, [esp+84h+var_18]
mov     [esp+84h+var_1C], eax
fild    word ptr [esp+84h+var_1C]
fsubrp  st(1), st
fstp    [esp+84h+var_34]
xor     eax, eax
mov     al, [esp+84h+var_C]
mov     [esp+84h+var_20], eax
xor     eax, eax
mov     al, [esp+84h+var_4]
mov     edi, [esp+84h+var_20]
sub     edi, eax
mov     eax, edi
mov     [esp+84h+var_20], edi
fild    [esp+84h+var_20]
fmul    [esp+84h+var_28]
xor     eax, edi
mov     al, [esp+84h+var_C]
mov     [esp+84h+var_1C], eax
fild    word ptr [esp+84h+var_1C]
fsubrp  st(1), st
fstp    [esp+84h+var_30]
cmp     [esp+84h+var_2C], 0
jz      short loc_4F07E3
mov     eax, ds:dword_77EBC0
mov     [edx+8], eax
fld     [esp+84h+var_74]
fmul    ds:dbl_50A598
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_70]
fmul    ds:dbl_50A598
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
fld     [esp+84h+var_34]
call    __CHP
fistp   [esp+84h+var_20]
mov     al, byte ptr [esp+84h+var_20]
mov     [edx+0Ch], al
fld     [esp+84h+var_30]
call    __CHP
fistp   [esp+84h+var_20]
mov     al, byte ptr [esp+84h+var_20]
jmp     loc_4F06BD

loc_4F07E3:
mov     eax, [esp+84h+var_44]
mov     [edx+8], eax
fld     [esp+84h+var_4C]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_48]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
mov     al, [esp+84h+var_18]
mov     [edx+0Ch], al
mov     al, [esp+84h+var_C]
mov     [edx+0Dh], al
mov     eax, ebx
shl     eax, 4
add     eax, [esp+84h+var_80]
mov     edx, ds:dword_77EBC0
mov     [eax+8], edx
fld     [esp+84h+var_74]
fmul    ds:dbl_50A598
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [eax]
fld     [esp+84h+var_70]
fmul    ds:dbl_50A598
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [eax+4]
fld     [esp+84h+var_34]
call    __CHP
fistp   [esp+84h+var_20]
mov     dl, byte ptr [esp+84h+var_20]
mov     [eax+0Ch], dl
fld     [esp+84h+var_30]
call    __CHP
fistp   [esp+84h+var_20]
mov     dl, byte ptr [esp+84h+var_20]
mov     [eax+0Dh], dl
inc     ebx

loc_4F088D:
mov     [esp+84h+var_24], ebx

loc_4F0891:
mov     eax, [esp+84h+var_6C]
mov     [esp+84h+var_4C], eax
mov     eax, [esp+84h+var_68]
mov     [esp+84h+var_48], eax
mov     eax, [esp+84h+var_64]
mov     [esp+84h+var_44], eax
mov     al, [esp+84h+var_8]
mov     [esp+84h+var_18], al
mov     al, [esp+84h+var_4]
mov     [esp+84h+var_C], al
mov     [esp+84h+var_2C], esi
inc     ecx
jmp     loc_4F05AF

loc_4F08C6:
cmp     [esp+84h+var_84], 0
jz      short loc_4F0914
mov     edx, [esp+84h+var_24]
cmp     edx, 3
jl      short loc_4F0914
mov     eax, edx
shl     eax, 4
mov     ecx, [esp+84h+var_80]
add     eax, ecx
fld     dword ptr [eax-10h]
mov     edx, ecx
fsub    dword ptr [ecx]
fld     dword ptr [edx+14h]
fsub    dword ptr [ecx+4]
fmulp   st(1), st
fstp    [esp+84h+var_74]
fld     dword ptr [eax-0Ch]
mov     eax, ecx
fsub    dword ptr [ecx+4]
fld     dword ptr [eax+10h]
fsub    dword ptr [ecx]
fmulp   st(1), st
fst     [esp+84h+var_70]
fsub    [esp+84h+var_74]
mov     eax, [esp+84h+var_84]
call    __CHP
fistp   dword ptr [eax]

loc_4F0914:
mov     eax, [esp+84h+var_24]
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
retn    4
sub_4F04FB endp

; [00000007 BYTES: COLLAPSED FUNCTION abs_]



sub_4F0927 proc near

var_60= byte ptr -60h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 50h
mov     esi, edx
xor     edi, edi
mov     edx, offset unk_50A5A0
call    sub_4F93C1
test    eax, eax
jnz     short loc_4F0993
xor     ebx, ebx
jmp     short loc_4F094A

loc_4F0944:
inc     ebx
cmp     ebx, 0Ah
jge     short loc_4F09A5

loc_4F094A:
mov     al, bl
add     al, 43h ; 'C'
mov     ds:RootPathName, al
push    offset RootPathName ; lpRootPathName
call    cs:__imp_GetDriveTypeA
cmp     eax, 5
jnz     short loc_4F0944
push    esi
push    offset RootPathName
push    offset aSS      ; "%s%s"
lea     eax, [esp+6Ch+var_60]
push    eax
call    sprintf_
add     esp, 10h
mov     edx, offset unk_50A5A0
mov     eax, esp
call    sub_4F93C1
test    eax, eax
jz      short loc_4F0944
call    fclose_
jmp     short loc_4F09A0

loc_4F0993:
call    fclose_
xor     ah, ah
mov     ds:RootPathName, ah

loc_4F09A0:
mov     edi, 1

loc_4F09A5:
mov     eax, edi
add     esp, 50h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0927 endp




sub_4F09AF proc near
mov     eax, offset RootPathName
retn
sub_4F09AF endp




sub_4F09B5 proc near

var_58= byte ptr -58h

push    ecx
push    esi
sub     esp, 50h
mov     esi, eax
xor     ecx, ecx

loc_4F09BE:
cmp     ds:dword_551C40[ecx*4], 0
jz      short loc_4F09D0
cmp     ecx, 10h
jge     short loc_4F09D0
inc     ecx
jmp     short loc_4F09BE

loc_4F09D0:
cmp     ecx, 10h
jnz     short loc_4F09DC
mov     eax, 0FFFFFFFFh
jmp     short loc_4F0A28

loc_4F09DC:
mov     edx, offset unk_50A5A0
mov     eax, esi
call    sub_4F93C1
mov     ebx, ecx
shl     ebx, 2
test    eax, eax
jz      short loc_4F09F9

loc_4F09F1:
mov     ds:dword_551C40[ebx], eax
jmp     short loc_4F0A26

loc_4F09F9:
push    esi
push    offset RootPathName
push    offset aSS      ; "%s%s"
lea     eax, [esp+64h+var_58]
push    eax
call    sprintf_
add     esp, 10h
mov     edx, offset unk_50A5A0
mov     eax, esp
call    sub_4F93C1
test    eax, eax
jnz     short loc_4F09F1
mov     ecx, 0FFFFFFFFh

loc_4F0A26:
mov     eax, ecx

loc_4F0A28:
add     esp, 50h
pop     esi
pop     ecx
retn
sub_4F09B5 endp




sub_4F0A2E proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
xor     ecx, ecx

loc_4F0A35:
cmp     ds:dword_551C40[ecx*4], 0
jz      short loc_4F0A47
cmp     ecx, 10h
jge     short loc_4F0A47
inc     ecx
jmp     short loc_4F0A35

loc_4F0A47:
cmp     ecx, 10h
jnz     short loc_4F0A55
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
pop     ebx
retn

loc_4F0A55:
mov     edx, offset aWb ; "wb"
mov     eax, ebx
call    sub_4F93C1
mov     ebx, eax
mov     eax, ecx
mov     ds:dword_551C40[ecx*4], ebx
pop     edx
pop     ecx
pop     ebx
retn
sub_4F0A2E endp




sub_4F0A70 proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ecx
mov     ecx, ds:dword_551C40[edx*4]
mov     edx, 1
call    fread_
pop     ecx
retn
sub_4F0A70 endp




sub_4F0A8A proc near
push    ebx
push    ecx
push    esi
mov     esi, edx
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_551C40[edx]
mov     eax, [eax+10h]
call    sub_4FAF1A
mov     ecx, ds:dword_551C40[edx]
mov     ebx, eax
mov     edx, 1
mov     eax, esi
call    fread_
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0A8A endp




sub_4F0ABA proc near
push    ecx
mov     ecx, eax
mov     eax, edx
mov     edx, ecx
mov     ecx, ds:dword_551C40[edx*4]
mov     edx, 1
call    fwrite_
pop     ecx
retn
sub_4F0ABA endp




sub_4F0AD4 proc near
mov     eax, ds:dword_551C40[eax*4]
mov     eax, [eax+10h]
jmp     sub_4FAF1A
sub_4F0AD4 endp




sub_4F0AE3 proc near
push    ebx
mov     eax, ds:dword_551C40[eax*4]
xor     ebx, ebx
call    sub_4FB1EB
pop     ebx
retn
sub_4F0AE3 endp




sub_4F0AF4 proc near
push    ecx
push    edx
mov     edx, eax
shl     edx, 2
mov     eax, ds:dword_551C40[edx]
call    fclose_
xor     ecx, ecx
mov     ds:dword_551C40[edx], ecx
pop     edx
pop     ecx
retn
sub_4F0AF4 endp

; [000000ED BYTES: COLLAPSED FUNCTION _nmalloc_]
dw 0EE0h
dd 4340D7B7h, 63B011CFh, 0C2AF2000h, 17A035CDh
dd 7DB35938h, 0DEA211CFh, 0B900AA00h, 0DB805633h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0F3E060E5h
dd 2B43B3A6h, 0DEA211CFh, 0B900AA00h
db 33h, 56h
dw 509Ah
dd 39BD9C59h, 4A8C11D1h, 0D94FC000h, 0DB81C530h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 588560E5h
dd 6EEC5780h, 419411CFh, 0C10323A8h, 4E00270Eh
dd 69B2DA04h, 0D5A111D0h, 0B800AA00h, 8630BBDFh
dd 0AD350B2Bh, 0A68E11D0h, 97976000h, 0DB845BEAh
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0DB8560E5h
dd 0A7336C14h, 21A511CEh, 0BAF2000h, 0EE060E5h
dd 0D7E4B9Fh, 69B11D0h, 3C9A000h, 1C3EB8A3h
dd 0B46B69C1h, 7AAD11D1h, 0C24FC000h, 804E9Bh
dd 24213BBAh, 1AA311CFh, 0B900AA00h, 1EC15633h
dd 662A6AAEh, 9D8811D0h, 0BB00AA00h
db 0B7h, 6Ah
word_4F0CEE dw 3240h
dd 0E72BBB22h, 0B4A911D0h, 0C000AA00h, 6B203E99h
dd 259FF208h, 1AA311CFh, 0B900AA00h, 5C605633h
dd 2673A466h, 1AA311CFh, 0B900AA00h
db 33h, 56h
dw 3DE0h
dd 46AA84E6h, 6F8111CFh, 20C00000h, 49A16E15h
dd 0D6F38819h, 0AB8911D0h, 5C9A000h, 66432941h
dd 13E95093h, 0AA8911D1h, 5C9A000h
db 41h, 29h
dw 0DF22h
dd 0BACC8767h, 698911D1h, 6C9A000h, 8800A829h
dd 957D6410h, 0AB8911D0h, 5C9A000h, 15012941h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 3B602941h
dd 33D7B0ABh, 81A911D1h, 0D74FC000h, 0D9E074B1h
dd 25A02CDCh, 1AA311CFh, 0B900AA00h
db 33h, 56h
dw 1502h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 0C1422941h
dd 33AD4417h, 6F8111CFh, 20C00000h, 0C1446E15h
dd 33AD4417h, 6F8111CFh, 20C00000h, 15036E15h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 46F42941h
dd 0D3C5CA9Ch, 5AB711D1h, 52086000h, 0C14512B3h
dd 33AD4417h, 6F8111CFh, 20C00000h, 0C1466E15h
dd 33AD4417h, 6F8111CFh, 20C00000h, 15006E15h
dd 8CF89328h, 0AB8911D0h, 5C9A000h, 3B612941h
dd 33D7B0ABh, 81A911D1h, 0D74FC000h, 355574B1h
dd 4A837A50h, 0DBA511D1h, 3C9A000h, 0D946F867h
dd 62E847D4h, 0BC9311CFh, 54534544h, 7800000h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 0FA8316CDh
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8560E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8460E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 0FA8660E5h
dd 4981279Ah, 21A511CEh, 0BAF2000h, 78160E5h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 78216CDh
dd 89CDB021h, 8AF11D0h, 25C9A000h
db 0CDh, 16h
word_4F0EBE dw 783h
dd 89CDB021h, 8AF11D0h, 25C9A000h, 0AC3016CDh
dd 515C31EFh, 0AAA911D0h, 6100AA00h
db 0BEh, 93h



sub_4F0EDE proc near

arg_0= dword ptr  4
arg_C= dword ptr  10h
arg_14= dword ptr  18h

push    ebx
push    esi
mov     esi, [esp+8+arg_0]
mov     ecx, [esp+8+arg_C]
mov     ebx, 10h
mov     edx, offset word_4F0D4E
mov     eax, esi
call    memcmp_
test    eax, eax
jz      short loc_4F0F39
cmp     dword ptr [ecx], 0
jz      short loc_4F0F39
mov     ebx, 10h
mov     edx, offset word_4F0D1E
mov     eax, esi
call    memcmp_
test    eax, eax
jnz     short loc_4F0F39
mov     ebx, 0FCh
mov     edx, ecx
mov     eax, offset unk_887780
call    memcpy_
mov     eax, [esp+8+arg_14]
mov     dword ptr [eax], 1
xor     eax, eax
pop     esi
pop     ebx
retn    18h

loc_4F0F39:
mov     eax, 1
pop     esi
pop     ebx
retn    18h
sub_4F0EDE endp




; BOOL __stdcall Callback(GUID *, LPSTR, LPSTR, LPVOID)
Callback proc near

var_19C= dword ptr -19Ch
var_198= byte ptr -198h
lpDD= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
lpGUID= dword ptr  4
arg_4= dword ptr  8

push    ebx
push    esi
push    edi
push    ebp
sub     esp, 18Ch
mov     edi, [esp+19Ch+lpGUID]
xor     edx, edx
mov     [esp+19Ch+var_14], edx
xor     esi, esi
push    edx             ; pUnkOuter
lea     eax, [esp+1A0h+lpDD]
push    eax             ; lplpDD
push    edi             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jnz     loc_4F11D8
mov     ebx, 17Ch
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+19Ch+var_19C], 17Ch
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
push    esi
lea     edx, [esp+1A0h+var_19C]
push    edx
mov     ebx, [esp+1A4h+lpDD]
push    ebx
call    dword ptr [eax+2Ch]
test    [esp+19Ch+var_198], 1
jz      loc_4F11C4
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_1C]
push    edx
push    offset word_4F0C3E
mov     ebp, [esp+1A4h+lpDD]
push    ebp
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F0FED
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     edi, [esp+19Ch+lpDD]
push    edi

loc_4F0FE5:
call    dword ptr [eax+8]
jmp     loc_4F11D8

loc_4F0FED:
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_18]
push    edx
push    offset word_4F0CEE
mov     edx, [esp+1A4h+var_1C]
push    edx
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F1038
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     ebx, [esp+19Ch+var_1C]
push    ebx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     esi, [esp+19Ch+lpDD]
push    esi
jmp     short loc_4F0FE5

loc_4F1038:
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
lea     edx, [esp+19Ch+var_14]
push    edx
push    offset sub_4F0EDE
mov     ecx, [esp+1A4h+var_18]
push    ecx
call    dword ptr [eax+0Ch]
cmp     [esp+19Ch+var_14], 0
jz      short loc_4F1075
cmp     ds:dword_887834, 0
jz      short loc_4F1075
cmp     ds:dword_887820, 0
jnz     short loc_4F10B3

loc_4F1075:
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
mov     ebp, [esp+19Ch+var_18]
push    ebp
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     edx, [esp+19Ch+var_1C]
push    edx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     ecx, [esp+19Ch+lpDD]
push    ecx
jmp     loc_4F0FE5

loc_4F10B3:
test    edi, edi
jnz     short loc_4F10E6
mov     eax, ds:dword_887888
call    sub_4F18B0
test    ds:dword_88781C, eax
jz      short loc_4F10E6
cmp     ds:dword_88788C, 280h
jle     short loc_4F10E6
cmp     ds:dword_887884, 1E0h
jle     short loc_4F10E6
mov     esi, 1

loc_4F10E6:
mov     ebp, ds:dword_551D1C
inc     ebp
mov     ds:dword_551D1C, ebp
mov     eax, ebp
shl     eax, 2
add     eax, ebp
shl     eax, 4
sub     eax, ebp
shl     eax, 2
test    edi, edi
jz      short loc_4F1137
add     eax, offset dword_786ED4
add     eax, 8
mov     ebx, 10h
mov     edx, edi
call    memcpy_
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
xor     ecx, ecx
mov     ds:dword_786ED4[eax*4], ecx
jmp     short loc_4F1141

loc_4F1137:
mov     ds:dword_786ED4[eax], 1

loc_4F1141:
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
mov     ds:dword_786ED8[eax], esi
add     eax, offset dword_786ED4
add     eax, 18h
mov     edx, [esp+19Ch+arg_4]
call    strcpy_
mov     edx, ds:dword_551D1C
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
add     eax, 40h ; '@'
mov     ebx, 0FCh
mov     edx, offset unk_887780
call    memcpy_
mov     eax, [esp+19Ch+var_18]
mov     eax, [eax]
mov     ebx, [esp+19Ch+var_18]
push    ebx
call    dword ptr [eax+8]
mov     eax, [esp+19Ch+var_1C]
mov     eax, [eax]
mov     esi, [esp+19Ch+var_1C]
push    esi
call    dword ptr [eax+8]

loc_4F11C4:
mov     eax, [esp+19Ch+lpDD]
mov     eax, [eax]
mov     edi, [esp+19Ch+lpDD]
push    edi
call    dword ptr [eax+8]

loc_4F11D8:
mov     eax, 1
add     esp, 18Ch
pop     ebp
pop     edi
pop     esi
pop     ebx
retn    10h
Callback endp




sub_4F11EA proc near

arg_0= dword ptr  4

push    esi
push    edi
mov     edx, [esp+8+arg_0]
xor     eax, eax
test    byte ptr [edx+4], 40h
jz      loc_4F12B9
test    byte ptr ds:dword_88787C+1, 1
jz      loc_4F126F
cmp     dword ptr [edx+0Ch], 10h
jnz     loc_4F12B9
test    byte ptr [edx+4], 1
jz      short loc_4F1244
mov     ecx, [edx+1Ch]
cmp     ecx, 8000h
jnz     short loc_4F122E
mov     eax, 5
jmp     loc_4F12B4

loc_4F122E:
cmp     ecx, 0F000h
jnz     loc_4F12B4
mov     eax, 4
jmp     loc_4F12B4

loc_4F1244:
mov     esi, [edx+10h]
cmp     esi, 1Fh
jnz     short loc_4F1256
mov     eax, 1
jmp     loc_4F12B4

loc_4F1256:
cmp     esi, 0F800h
jnz     short loc_4F1265
mov     eax, 2
jmp     short loc_4F12B4

loc_4F1265:
cmp     esi, 7C00h
jnz     short loc_4F12B4
jmp     short loc_4F1299

loc_4F126F:
mov     ecx, [edx+0Ch]
cmp     ecx, ds:dword_887888
jnz     short loc_4F12B9
cmp     dword ptr [edx+0Ch], 10h
jb      short loc_4F12B9
test    byte ptr [edx+4], 1
jz      short loc_4F12AF
mov     edi, [edx+1Ch]
cmp     edi, 8000h
jz      short loc_4F1299
cmp     edi, 0FF000000h
jnz     short loc_4F12A0

loc_4F1299:
mov     eax, 3
jmp     short loc_4F12B4

loc_4F12A0:
cmp     edi, 0F000h
jnz     short loc_4F12B4
mov     eax, 2
jmp     short loc_4F12B4

loc_4F12AF:
mov     eax, 1

loc_4F12B4:
call    sub_4F13D0

loc_4F12B9:
mov     eax, 1
pop     edi
pop     esi
retn    8
sub_4F11EA endp




sub_4F12C3 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    ebx
mov     ecx, [esp+4+arg_0]
mov     eax, [esp+4+arg_4]
test    ecx, ecx
jz      short loc_4F12D4
test    eax, eax
jnz     short loc_4F12DA

loc_4F12D4:
xor     eax, eax
pop     ebx
retn    8

loc_4F12DA:
cmp     dword ptr [ecx+4], 400h
jnz     short loc_4F12F5
mov     ebx, 20h ; ' '
mov     edx, ecx
call    memcpy_
cmp     dword ptr [ecx+0Ch], 10h
jz      short loc_4F12D4

loc_4F12F5:
mov     eax, 1
pop     ebx
retn    8
sub_4F12C3 endp




sub_4F12FE proc near
push    ebx
push    ecx
mov     ecx, edx
mov     ebx, 1
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_786ED4[eax]
test    edx, edx
jz      short loc_4F1330
push    0               ; pUnkOuter
push    ecx             ; lplpDD
push    0               ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346
jmp     short loc_4F1344

loc_4F1330:             ; pUnkOuter
push    edx
push    ecx             ; lplpDD
add     eax, offset dword_786ED4
add     eax, 8
push    eax             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346

loc_4F1344:
xor     ebx, ebx

loc_4F1346:
mov     eax, ebx
pop     ecx
pop     ebx
retn
sub_4F12FE endp




sub_4F134B proc near

var_84= byte ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_3C= byte ptr -3Ch
var_1C= dword ptr -1Ch

push    ecx
push    edi
sub     esp, 7Ch
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+84h+var_80], 1007h
mov     [esp+84h+var_1C], 24000h
mov     [esp+84h+var_78], ecx
mov     [esp+84h+var_7C], edx
mov     eax, ds:dword_551D0C
mov     ecx, [eax]
lea     edx, [esp+84h+var_3C]
push    edx
push    offset sub_4F12C3
push    offset word_4F0D1E
push    eax
call    dword ptr [ecx+28h]
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
push    offset dword_551CFC
lea     edx, [esp+8Ch+var_84]
push    edx
push    eax
call    dword ptr [ecx+18h]
test    eax, eax
jz      short loc_4F13AA

loc_4F13A6:
xor     eax, eax
jmp     short loc_4F13CA

loc_4F13AA:
mov     eax, ds:dword_551CF8
mov     ecx, [eax]
mov     edi, ds:dword_551CFC
push    edi
push    eax
call    dword ptr [ecx+0Ch]
test    eax, eax
jnz     short loc_4F13A6
mov     ds:dword_887774, eax
mov     eax, 1

loc_4F13CA:
add     esp, 7Ch
pop     edi
pop     ecx
retn
sub_4F134B endp




sub_4F13D0 proc near
push    ebx
push    ecx
mov     ecx, edx
xor     edx, edx
mov     dl, ds:byte_782BF4
cmp     eax, edx
jle     loc_4F1496
mov     ds:byte_782BF4, al
mov     al, [ecx+0Ch]
mov     ds:byte_782BF6, al
cmp     al, 10h
jnz     short loc_4F13FE
mov     ds:byte_782BF7, 2
jmp     short loc_4F1405

loc_4F13FE:
mov     ds:byte_782BF7, 4

loc_4F1405:
xor     edx, edx
mov     eax, [ecx+10h]
mov     ds:dword_782C04, eax

loc_4F140F:
test    eax, offset unk_800000
jnz     short loc_4F141B
add     eax, eax
inc     edx
jmp     short loc_4F140F

loc_4F141B:
mov     ds:dword_782BF8, edx
xor     edx, edx
mov     eax, [ecx+14h]
mov     ds:dword_782C08, eax

loc_4F142B:
test    eax, offset unk_800000
jnz     short loc_4F1437
add     eax, eax
inc     edx
jmp     short loc_4F142B

loc_4F1437:
mov     ds:dword_782BFC, edx
xor     edx, edx
mov     eax, [ecx+18h]
mov     ds:dword_782C0C, eax

loc_4F1447:
test    eax, offset unk_800000
jnz     short loc_4F1453
add     eax, eax
inc     edx
jmp     short loc_4F1447

loc_4F1453:
mov     ds:dword_782C00, edx
mov     eax, [ecx+1Ch]
mov     ds:dword_782C10, eax
mov     edx, ds:dword_782C04
cmp     edx, 1Fh
jz      short loc_4F1474
cmp     edx, 0FFh
jnz     short loc_4F147D

loc_4F1474:
mov     ds:byte_782BF5, 1
jmp     short loc_4F1485

loc_4F147D:
xor     bl, bl
mov     ds:byte_782BF5, bl

loc_4F1485:
mov     ebx, 20h ; ' '
mov     edx, ecx
mov     eax, offset unk_782C14
call    memcpy_

loc_4F1496:
pop     ecx
pop     ebx
retn
sub_4F13D0 endp




sub_4F1499 proc near

var_98= byte ptr -98h
var_74= dword ptr -74h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    edi
push    ebp
sub     esp, 84h
mov     [esp+98h+var_18], 3F800000h
mov     [esp+98h+var_1C], 40A00000h
test    ds:byte_8877EE, 10h
jz      loc_4F16B3
test    ds:byte_8877ED, 1
jz      loc_4F16B3
xor     ebp, ebp
mov     ds:flt_8876C4, ebp
mov     ds:flt_8876C8, ebp
mov     edx, 3F333333h
mov     ds:dword_8876CC, edx
mov     ecx, 3E124925h
mov     ds:flt_8876D0, ecx
mov     ebx, 0FFFFFFFFh
mov     ds:dword_8876D4, ebx
mov     ds:dword_8876D8, ebp
mov     edi, 41800000h
mov     ds:flt_8876E4, edi
mov     ds:flt_8876E8, ebp
mov     eax, edx
mov     ds:dword_8876EC, edx
mov     edx, ecx
mov     ds:flt_8876F0, ecx
mov     ecx, ebx
mov     ds:dword_8876F4, ebx
mov     ds:dword_8876F8, ebp
mov     ds:flt_887704, ebp
mov     ds:flt_887708, edi
mov     ebp, eax
mov     ds:dword_88770C, ebp
mov     eax, edx
mov     ds:flt_887710, eax
mov     edx, ebx
mov     ds:dword_887714, ebx
xor     ecx, ebx
mov     ds:dword_887718, ecx
mov     ds:flt_887724, edi
mov     ds:flt_887728, edi
mov     ds:dword_88772C, ebp
mov     ds:flt_887730, eax
mov     ds:dword_887734, ebx
xor     edx, ebx
mov     ds:dword_887738, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, [esp+98h+var_18]
push    ecx
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, [esp+98h+var_1C]
push    ebx
push    25h ; '%'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+28h]
mov     eax, esp
call    sub_4F188E
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0A0h+var_98]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F16E7
mov     edx, ds:dword_782C10
not     edx
mov     eax, [esp+98h+var_74]
test    [eax], edx
jnz     short loc_4F1697
xor     ebp, ebp
mov     ds:dword_551D3C, ebp
jmp     short loc_4F16A1

loc_4F1697:
mov     ds:dword_551D3C, 1

loc_4F16A1:
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     short loc_4F16E7

loc_4F16B3:
test    ds:byte_8877ED, 1
jz      short loc_4F16C8
mov     ds:dword_551D3C, 1
jmp     short loc_4F16E7

loc_4F16C8:
test    ds:byte_8877EC, 80h
jz      short loc_4F16DD
mov     ds:dword_551D3C, 2
jmp     short loc_4F16E7

loc_4F16DD:
mov     ds:dword_551D3C, 3

loc_4F16E7:
add     esp, 84h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F1499 endp




sub_4F16F3 proc near

var_1C= qword ptr -1Ch
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
test    eax, eax
jnz     loc_4F17C2
cmp     ds:dword_551D38, 0
jz      loc_4F17C2
cmp     ds:dword_551D40, 0
jnz     short loc_4F1731
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     ds:dword_551D40, 1

loc_4F1731:
cmp     ds:dword_551D3C, 2
jnz     loc_4F3BD5
xor     edx, edx
jmp     short loc_4F1780

loc_4F1742:
fld     [esp+1Ch+var_14]
fcomp   ds:flt_50A870
fnstsw  ax
sahf
jbe     short loc_4F1759
mov     [esp+1Ch+var_14], 437F0000h

loc_4F1759:
fld     [esp+1Ch+var_14]
call    __CHP
fistp   [esp+1Ch+var_1C]
mov     ecx, dword ptr [esp+1Ch+var_1C]
mov     eax, edx
shl     eax, 5
shl     ecx, 18h
or      ds:dword_8876D8[eax], ecx
inc     edx
cmp     edx, 4
jge     loc_4F3BD5

loc_4F1780:
mov     eax, edx
shl     eax, 5
fld     ds:dword_8876CC[eax]
fmul    ds:flt_50A86C
fsubr   ds:flt_551D48
fld     ds:flt_551D48
fsub    ds:flt_551D44
fdivp   st(1), st
fmul    ds:flt_50A870
fstp    [esp+1Ch+var_14]
fldz
fcomp   [esp+1Ch+var_14]
fnstsw  ax
sahf
jbe     short loc_4F1742
xor     ebx, ebx
mov     [esp+1Ch+var_14], ebx
jmp     short loc_4F1759

loc_4F17C2:
test    eax, eax
jnz     short loc_4F17D3
cmp     ds:dword_551D38, 0
jnz     loc_4F3BD5

loc_4F17D3:
cmp     ds:dword_551D40, 1
jnz     loc_4F3BD5
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
push    eax
call    dword ptr [edx+58h]
xor     esi, esi
mov     ds:dword_551D40, esi
jmp     loc_4F3BD5
sub_4F16F3 endp




sub_4F17FC proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ecx, edx
and     eax, 3Fh
shl     eax, 4
mov     edx, esi
sar     edx, 6
and     edx, 1FFh
mov     edi, ecx
and     edi, 0Fh
shl     edi, 7
mov     esi, ebx
and     esi, 0FFh
sar     esi, 1
add     edi, esi
and     ecx, 10h
shl     ecx, 4
mov     esi, ebx
sar     esi, 8
add     esi, ecx
and     ebx, 1
xor     bl, 1
mov     ecx, ebx
shl     ecx, 2
mov     ebx, esi
shl     ebx, 0Bh
mov     bl, ds:byte_7876C4[edi+ebx]
and     ebx, 0FFh
sar     ebx, cl
mov     ecx, ebx
and     ecx, 0Fh
cmp     ds:byte_782BF7, 2
jnz     short loc_4F187B
call    sub_4F1D5C
mov     eax, ds:dword_782C38[eax*8]
mov     ax, [eax+ecx*2]
and     eax, 0FFFFh
pop     edi
pop     esi
pop     ecx
retn

loc_4F187B:
call    sub_4F1D5C
mov     eax, ds:dword_782C38[eax*8]
mov     eax, [eax+ecx*4]
pop     edi
pop     esi
pop     ecx
retn
sub_4F17FC endp




sub_4F188E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, 7Ch ; '|'
xor     edx, edx
call    memset_
mov     dword ptr [ecx], 7Ch ; '|'
mov     dword ptr [ecx+48h], 20h ; ' '
pop     edx
pop     ecx
pop     ebx
retn
sub_4F188E endp




sub_4F18B0 proc near
cmp     eax, 8
jb      short loc_4F18CE
jbe     short loc_4F18F4
cmp     eax, 18h
jb      short loc_4F18C6
jbe     short loc_4F1900
cmp     eax, 20h ; ' '
jz      short loc_4F1906
xor     eax, eax
retn

loc_4F18C6:
cmp     eax, 10h
jz      short loc_4F18FA
xor     eax, eax
retn

loc_4F18CE:
cmp     eax, 2
jb      short loc_4F18DD
jbe     short loc_4F18E8
cmp     eax, 4
jz      short loc_4F18EE
xor     eax, eax
retn

loc_4F18DD:
cmp     eax, 1
jnz     short loc_4F190C
mov     eax, 4000h
retn

loc_4F18E8:
mov     eax, 2000h
retn

loc_4F18EE:
mov     eax, 1000h
retn

loc_4F18F4:
mov     eax, 800h
retn

loc_4F18FA:
mov     eax, 400h
retn

loc_4F1900:
mov     eax, 200h
retn

loc_4F1906:
mov     eax, 100h
retn

loc_4F190C:
xor     eax, eax
retn
sub_4F18B0 endp




sub_4F190F proc near

var_70= dword ptr -70h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
sub     esp, 64h
mov     ecx, eax
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+70h+var_70], 64h ; 'd'
xor     ebx, ebx
mov     [esp+70h+var_20], ebx
mov     eax, [ecx]
mov     edx, esp
push    edx
push    1000400h
push    ebx
push    ebx
push    ebx
push    ecx
call    dword ptr [eax+14h]
add     esp, 64h
pop     edx
pop     ecx
pop     ebx
retn
sub_4F190F endp

jpt_4F19EF dd offset loc_4F19F5 ; jump table for switch statement
dd offset loc_4F1A03
dd offset loc_4F1A03
dd offset loc_4F19FC



sub_4F195A proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, edx
mov     edx, ebx
mov     [esp+18h+var_14], ecx
xor     ebx, ebx
xor     ebp, ebp
mov     [esp+18h+var_10], ebx
mov     [esp+18h+var_18], ebx
test    byte ptr [esp+18h+var_14], 4
jz      short loc_4F19D2
lea     ecx, [eax+eax]
mov     eax, edi
add     eax, eax
add     edx, edx
cmp     ecx, 100h
jb      short loc_4F199B
lea     ebp, [ecx-100h]
mov     ecx, 0FFh
mov     ebx, 1

loc_4F199B:
cmp     eax, 100h
jb      short loc_4F19B5
sub     eax, 100h
mov     [esp+18h+var_10], eax
mov     eax, 0FFh
mov     ebx, 1

loc_4F19B5:
cmp     edx, 100h
jb      short loc_4F19D6
sub     edx, 100h
mov     [esp+18h+var_18], edx
mov     edx, 0FFh
mov     ebx, 1
jmp     short loc_4F19D6

loc_4F19D2:
mov     ecx, eax
mov     eax, edi

loc_4F19D6:
test    byte ptr [esp+18h+var_14], 2
jz      short loc_4F1A03 ; jumptable 004F19EF cases 1,2
mov     edi, [esp+18h+arg_0]
shr     edi, 5
and     edi, 3
cmp     edi, 3          ; switch 4 cases
ja      short def_4F19EF ; jumptable 004F19EF default case
shl     edi, 2
jmp     jpt_4F19EF[edi] ; switch jump

loc_4F19F5:             ; jumptable 004F19EF case 0
mov     esi, 80h
jmp     short def_4F19EF ; jumptable 004F19EF default case

loc_4F19FC:             ; jumptable 004F19EF case 3
mov     esi, 40h ; '@'
jmp     short def_4F19EF ; jumptable 004F19EF default case

loc_4F1A03:             ; jumptable 004F19EF cases 1,2
mov     esi, 0FFh

def_4F19EF:             ; jumptable 004F19EF default case
shl     esi, 18h
shl     ecx, 10h
or      ecx, esi
shl     eax, 8
or      ecx, eax
or      ecx, edx
mov     eax, [esp+18h+arg_4]
mov     [eax], ecx
test    ebx, ebx
jz      short loc_4F1A3A
shl     ebp, 10h
mov     eax, [esp+18h+var_10]
shl     eax, 8
or      eax, ebp
mov     edx, [esp+18h+var_18]
or      edx, eax
mov     eax, [esp+18h+arg_8]
mov     [eax], edx
jmp     short loc_4F1A40

loc_4F1A3A:
mov     eax, [esp+18h+arg_8]
mov     [eax], ebx

loc_4F1A40:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn    0Ch
sub_4F195A endp

align 2
jpt_4F1A74 dd offset loc_4F1A7B ; jump table for switch statement
dd offset loc_4F1AA4
dd offset loc_4F1AD3
dd offset loc_4F1AFC



sub_4F1A5A proc near
push    ecx
test    al, 2
jz      loc_4F1B16
mov     eax, edx
shr     eax, 5
and     eax, 3
cmp     eax, 3          ; switch 4 cases
ja      def_4F1A74      ; jumptable 004F1A74 default case
jmp     jpt_4F1A74[eax*4] ; switch jump

loc_4F1A7B:             ; jumptable 004F1A74 case 0
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    6
jmp     short loc_4F1ACB

loc_4F1AA4:             ; jumptable 004F1A74 case 1
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2

loc_4F1ABC:
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2

loc_4F1ACB:
push    14h
push    eax
call    dword ptr [edx+58h]
pop     ecx
retn

loc_4F1AD3:             ; jumptable 004F1A74 case 2
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
jmp     short loc_4F1ACB

loc_4F1AFC:             ; jumptable 004F1A74 case 3
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
jmp     short loc_4F1ABC

loc_4F1B16:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    13h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    6
push    14h
push    eax
call    dword ptr [edx+58h]

def_4F1A74:             ; jumptable 004F1A74 default case
pop     ecx
retn
sub_4F1A5A endp




sub_4F1B45 proc near

var_75= byte ptr -75h
var_74= byte ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_60= dword ptr -60h
var_38= dword ptr -38h
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 64h
xor     ebx, ebx
cmp     ds:byte_782BF4, 0
jz      short loc_4F1B76
mov     ebx, 40h ; '@'
mov     edx, offset byte_782BF4
mov     eax, esp
call    memcpy_
xor     dl, dl
mov     ds:byte_782BF4, dl
mov     ebx, 1

loc_4F1B76:
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F1BAC
mov     [esp+78h+var_38], 20h ; ' '
mov     eax, ds:dword_551CF4
mov     edx, [eax]
lea     ecx, [esp+78h+var_38]
push    ecx
push    eax
call    dword ptr [edx+54h]
lea     edx, [esp+78h+var_38]
mov     eax, 1
call    sub_4F13D0
call    sub_4FBC14
jmp     short loc_4F1BCE

loc_4F1BAC:
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    offset sub_4F11EA
push    eax
call    dword ptr [edx+20h]
cmp     ds:byte_782BF4, 0
jnz     short loc_4F1BCE
xor     eax, eax
jmp     loc_4F1D54

loc_4F1BCE:
test    ebx, ebx
jz      loc_4F1D4F
xor     ecx, ecx
mov     [esp+78h+var_18], ecx
jmp     loc_4F1CAE

loc_4F1BE1:
lea     eax, [edi+ebx]
mov     eax, [eax]
jmp     short loc_4F1C07

loc_4F1BE8:
cmp     [esp+78h+var_75], 2
jnz     short loc_4F1BFE
mov     eax, ds:dword_782C38[eax]
mov     ax, [ecx+eax]
jmp     loc_4F1D45

loc_4F1BFE:
mov     eax, ds:dword_782C38[eax]
mov     eax, [ebx+eax]

loc_4F1C07:
mov     ebx, [esp+78h+var_68]
and     ebx, eax
mov     cl, [esp+78h+var_74]
shl     ebx, cl
mov     esi, [esp+78h+var_64]
and     esi, eax
mov     cl, byte ptr [esp+78h+var_70]
shl     esi, cl
and     eax, [esp+78h+var_60]
mov     cl, byte ptr [esp+78h+var_6C]
shl     eax, cl
mov     cl, byte ptr ds:dword_782BF8
shr     ebx, cl
and     ebx, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     eax, cl
and     eax, ds:dword_782C0C
or      ebx, esi
or      eax, ebx
jz      short loc_4F1C5F
or      eax, ds:dword_782C10

loc_4F1C5F:
mov     ecx, [esp+78h+var_18]
shl     ecx, 3
cmp     ds:byte_782BF7, 2
jnz     short loc_4F1C7D
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*2], ax
jmp     short loc_4F1C88

loc_4F1C7D:
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*4], eax

loc_4F1C88:
inc     edx
jmp     loc_4F1D0C

loc_4F1C8E:
test    edi, edi
jz      short loc_4F1C99
mov     eax, edi
call    _nfree_

loc_4F1C99:
mov     esi, [esp+78h+var_18]
inc     esi
mov     [esp+78h+var_18], esi
cmp     esi, 254h
jge     loc_4F1D4F

loc_4F1CAE:
mov     edx, [esp+78h+var_18]
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F1C99
xor     edi, edi
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ecx, ecx
mov     cl, ds:byte_782C35[edx]
imul    ecx, eax
xor     ebx, ebx
mov     bl, ds:byte_782BF7
imul    eax, ebx
cmp     ecx, eax
jz      short loc_4F1D0A
mov     edi, ds:dword_782C38[edx]
mov     ds:byte_782C35[edx], bl
xor     ecx, ecx
mov     cx, ds:word_782C36[edx]
xor     eax, eax
mov     al, bl
imul    eax, ecx
call    _nmalloc_
mov     ds:dword_782C38[edx], eax

loc_4F1D0A:
xor     edx, edx

loc_4F1D0C:
mov     eax, [esp+78h+var_18]
shl     eax, 3
xor     ecx, ecx
mov     cx, ds:word_782C36[eax]
cmp     edx, ecx
jge     loc_4F1C8E
lea     ecx, [edx+edx]
mov     ebx, edx
shl     ebx, 2
test    edi, edi
jz      loc_4F1BE8
cmp     [esp+78h+var_75], 2
jnz     loc_4F1BE1
lea     eax, [edi+ecx]
mov     ax, [eax]

loc_4F1D45:
and     eax, 0FFFFh
jmp     loc_4F1C07

loc_4F1D4F:
mov     eax, 1

loc_4F1D54:
add     esp, 64h
jmp     loc_4F3509
sub_4F1B45 endp




sub_4F1D5C proc near
push    ecx
xor     ecx, ecx
test    eax, eax
jl      short loc_4F1DA5
cmp     eax, 100h
jge     short loc_4F1DA5
cmp     edx, 0F0h
jl      short loc_4F1D8D
cmp     edx, 100h
jge     short loc_4F1D8D
shl     edx, 4
sar     eax, 4
sub     edx, 0F00h
lea     ecx, [edx+eax]
mov     eax, ecx
pop     ecx
retn

loc_4F1D8D:
shl     edx, 4
sar     eax, 4
sub     edx, 1F00h
add     eax, edx
lea     ecx, [eax+100h]
mov     eax, ecx
pop     ecx
retn

loc_4F1DA5:
cmp     eax, 100h
jl      short loc_4F1DE0
cmp     eax, 140h
jge     short loc_4F1DE0
cmp     edx, 0F0h
jl      short loc_4F1DE0
cmp     edx, 0F4h
jge     short loc_4F1DE0
shl     edx, 2
sub     eax, 100h
sar     eax, 4
sub     edx, 3C0h
add     eax, edx
lea     ecx, [eax+200h]
mov     eax, ecx
pop     ecx
retn

loc_4F1DE0:
cmp     eax, 140h
jl      short loc_4F1E1C
cmp     eax, 170h
jg      short loc_4F1E1C
cmp     edx, 1F8h
jl      short loc_4F1E1C
cmp     edx, 200h
jge     short loc_4F1E1C
shl     edx, 2
lea     ecx, [eax-140h]
sar     ecx, 4
lea     eax, [edx-7E0h]
add     eax, ecx
lea     ecx, [eax+210h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E1C:
cmp     eax, 340h
jl      short loc_4F1E57
cmp     eax, 380h
jge     short loc_4F1E57
cmp     edx, 0F8h
jl      short loc_4F1E57
cmp     edx, 0FCh
jge     short loc_4F1E57
shl     edx, 2
sub     eax, 340h
sar     eax, 4
sub     edx, 3E0h
add     eax, edx
lea     ecx, [eax+230h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E57:
cmp     eax, 340h
jnz     short loc_4F1E78
cmp     edx, 0FCh
jl      short loc_4F1E78
cmp     edx, 100h
jge     short loc_4F1E78
lea     ecx, [edx+144h]
mov     eax, ecx
pop     ecx
retn

loc_4F1E78:
cmp     eax, 3C0h
jl      short loc_4F1E98
shl     edx, 2
sub     eax, 3C0h
sar     eax, 4
sub     edx, 7F0h
add     eax, edx
lea     ecx, [eax+244h]

loc_4F1E98:
mov     eax, ecx
pop     ecx
retn
sub_4F1D5C endp




sub_4F1E9C proc near

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
xor     esi, esi
jmp     short loc_4F1EB1

loc_4F1EA7:
inc     esi
cmp     esi, 20h ; ' '
jge     loc_4F3509

loc_4F1EB1:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
cmp     ds:word_783ED4[eax], 0
jz      short loc_4F1EA7
mov     edx, ds:dword_783EDC[eax]
test    edx, edx
jz      short loc_4F1EE3
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F1EE3:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ecx, ds:dword_783ED8[eax]
test    ecx, ecx
jz      short loc_4F1F09
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]

loc_4F1F09:
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset word_783ED4
add     ecx, eax
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ebx, 0Ch
xor     edx, esi
call    memset_
jmp     loc_4F1EA7
sub_4F1E9C endp




sub_4F1F39 proc near

; FUNCTION CHUNK AT 004F3509 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     edi, edi
jmp     short loc_4F1F4C

loc_4F1F42:
inc     edi
cmp     edi, 20h ; ' '
jge     loc_4F3509

loc_4F1F4C:
xor     esi, esi
jmp     short loc_4F1F81

loc_4F1F50:
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset word_783ED4
add     ecx, eax
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 20h ; ' '
jge     short loc_4F1F42

loc_4F1F81:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     edx, ds:dword_783EDC[eax]
test    edx, edx
jz      short loc_4F1FA9
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F1FA9:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ecx, ds:dword_783ED8[eax]
test    ecx, ecx
jz      short loc_4F1F50
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     loc_4F1F50
sub_4F1F39 endp




sub_4F1FD4 proc near
push    ebx
push    ecx
push    edx
push    esi
xor     esi, esi
jmp     short loc_4F2003

loc_4F1FDC:
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset word_7873C4
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 40h ; '@'
jge     loc_4F350A

loc_4F2003:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_7873CC[eax]
test    edx, edx
jz      short loc_4F201F
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F201F:
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     ecx, ds:dword_7873C8[eax]
test    ecx, ecx
jz      short loc_4F1FDC
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     short loc_4F1FDC
sub_4F1FD4 endp




sub_4F203B proc near

var_8C= byte ptr -8Ch
var_88= dword ptr -88h
var_84= dword ptr -84h
var_80= dword ptr -80h
var_44= byte ptr -44h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_10= byte ptr -10h

push    ebx
push    ecx
push    edi
sub     esp, 80h
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+8Ch+var_88], 1007h
mov     [esp+8Ch+var_24], 1800h
xor     edi, edi
mov     [esp+8Ch+var_20], edi
mov     [esp+8Ch+var_80], ecx
mov     [esp+8Ch+var_84], edx
cmp     ds:dword_782C20, 18h
jnz     short loc_4F207E
mov     ds:dword_782C20, 20h ; ' '

loc_4F207E:
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+8Ch+var_44]
call    memcpy_
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
lea     edx, [esp+90h+var_10]
push    edx
lea     edx, [esp+94h+var_8C]
push    edx
push    eax
call    dword ptr [ecx+18h]
mov     eax, dword ptr [esp+8Ch+var_10]
add     esp, 80h
pop     edi
pop     ecx
pop     ebx
retn
sub_4F203B endp




sub_4F20B9 proc near

var_A8= dword ptr -0A8h
var_A4= dword ptr -0A4h
var_A0= dword ptr -0A0h
var_9C= dword ptr -9Ch
var_98= dword ptr -98h
var_84= dword ptr -84h
var_60= byte ptr -60h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 94h
mov     edi, eax
mov     [esp+0A8h+var_18], edx
and     edi, 1Fh
xor     esi, esi
jmp     short loc_4F20DA

loc_4F20D4:
inc     esi
cmp     esi, 20h ; ' '
jge     short loc_4F20F6

loc_4F20DA:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
cmp     ds:word_783ED4[ecx+eax*4], 0
jnz     short loc_4F20D4

loc_4F20F6:
cmp     esi, 20h ; ' '
jnz     short loc_4F2102

loc_4F20FB:
xor     eax, eax
jmp     loc_4F2494

loc_4F2102:
mov     eax, edi
and     eax, 0Fh
shl     eax, 7
mov     [esp+0A8h+var_20], eax
mov     eax, edi
and     eax, 10h
shl     eax, 4
mov     [esp+0A8h+var_1C], eax
mov     eax, esp
call    sub_4F188E
test    byte ptr ds:dword_88787C, 1
jz      loc_4F22CA
mov     [esp+0A8h+var_A4], 1007h
mov     [esp+0A8h+var_40], 840h
mov     eax, 100h
mov     [esp+0A8h+var_9C], eax
mov     [esp+0A8h+var_A0], eax
cmp     ds:dword_782C20, 18h
jnz     short loc_4F2164
mov     ds:dword_782C20, 20h ; ' '

loc_4F2164:
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+0A8h+var_60]
call    memcpy_
mov     edx, ds:dword_551CF0
mov     ebx, [edx]
push    0
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     [esp+0ACh+var_24], eax
mov     ebp, offset word_783ED4
add     ebp, eax
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     [esp+0ACh+var_2C], eax
add     eax, ebp
add     eax, 4
push    eax
lea     eax, [esp+0B0h+var_A8]
push    eax
push    edx
call    dword ptr [ebx+18h]
test    eax, eax
jnz     loc_4F20FB
mov     eax, [esp+0A8h+var_1C]
shl     eax, 0Bh
add     eax, offset byte_7876C4
mov     ebp, [esp+0A8h+var_20]
add     ebp, eax
mov     eax, [esp+0A8h+var_18]
and     eax, 3Fh
shl     eax, 4
mov     [esp+0A8h+var_20], eax
mov     eax, [esp+0A8h+var_18]
sar     eax, 6
and     eax, 1FFh
mov     [esp+0A8h+var_1C], eax
mov     edx, eax
mov     eax, [esp+0A8h+var_20]
call    sub_4F1D5C
mov     ebx, ds:dword_782C38[eax*8]
test    ebx, ebx
jnz     short loc_4F222B
mov     eax, ds:dword_551D00
call    sub_4F190F
jmp     loc_4F22A9

loc_4F222B:
mov     eax, esp
call    sub_4F188E
mov     eax, [esp+0A8h+var_24]
add     eax, [esp+0A8h+var_2C]
mov     eax, ds:dword_783ED8[eax]
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0B0h+var_A8]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F20FB
test    byte ptr [esp+0A8h+var_18+1], 80h
jz      short loc_4F2277
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB8EA
jmp     short loc_4F2286

loc_4F2277:
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB766

loc_4F2286:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
mov     eax, ds:dword_783ED8[ecx+eax*4]
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]

loc_4F22A9:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
xor     ebx, ebx
mov     ds:dword_783EDC[ecx+eax*4], ebx
jmp     loc_4F2465

loc_4F22CA:
mov     [esp+0A8h+var_A4], 1007h
mov     [esp+0A8h+var_40], 1000h
mov     [esp+0A8h+var_3C], 10h
mov     ebp, 100h
mov     [esp+0A8h+var_9C], ebp
mov     [esp+0A8h+var_A0], ebp
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+0A8h+var_60]
call    memcpy_
mov     edx, ds:dword_551CF0
mov     ecx, [edx]
push    0
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     [esp+0ACh+var_28], eax
mov     ebp, offset word_783ED4
add     ebp, eax
mov     ebx, esi
shl     ebx, 2
sub     ebx, esi
shl     ebx, 2
add     ebp, ebx
lea     eax, [ebp+4]
push    eax
lea     eax, [esp+0B0h+var_A8]
push    eax
push    edx
call    dword ptr [ecx+18h]
test    eax, eax
jnz     loc_4F20FB
mov     eax, [esp+0A8h+var_28]
mov     eax, ds:dword_783ED8[ebx+eax]
mov     edx, [eax]
add     ebp, 8
push    ebp
push    offset word_4F0D9E
push    eax
call    dword ptr [edx]
mov     eax, [esp+0A8h+var_1C]
shl     eax, 0Bh
add     eax, offset byte_7876C4
mov     ebp, [esp+0A8h+var_20]
add     ebp, eax
mov     eax, [esp+0A8h+var_18]
and     eax, 3Fh
shl     eax, 4
mov     [esp+0A8h+var_20], eax
mov     eax, [esp+0A8h+var_18]
sar     eax, 6
and     eax, 1FFh
mov     [esp+0A8h+var_1C], eax
mov     edx, eax
mov     eax, [esp+0A8h+var_20]
call    sub_4F1D5C
mov     ebx, eax
shl     ebx, 3
mov     ebx, ds:dword_782C38[ebx]
test    ebx, ebx
jnz     short loc_4F23CC
mov     eax, ds:dword_551D00
call    sub_4F190F
jmp     short loc_4F242B

loc_4F23CC:
mov     eax, esp
call    sub_4F188E
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0B0h+var_A8]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F20FB
test    byte ptr [esp+0A8h+var_18+1], 80h
jz      short loc_4F240C
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB8EA
jmp     short loc_4F241B

loc_4F240C:
mov     ecx, [esp+0A8h+var_98]
mov     edx, ebp
mov     eax, [esp+0A8h+var_84]
call    sub_4FB766

loc_4F241B:
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]

loc_4F242B:
mov     ebx, edi
shl     ebx, 2
sub     ebx, edi
shl     ebx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     ebx, eax
mov     eax, ds:dword_783ED8[ebx]
mov     edx, [eax]
push    0
push    1000000h
push    0
mov     ecx, ds:dword_551D00
push    ecx
push    0
push    eax
call    dword ptr [edx+14h]
mov     edx, ds:dword_783EDC[ebx]

loc_4F2465:
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
mov     ds:word_783ED4[ecx+eax*4], 1
mov     ebx, [esp+0A8h+var_18]
and     bh, 7Fh
mov     ds:word_783ED6[ecx+eax*4], bx
mov     eax, edx

loc_4F2494:
add     esp, 94h

loc_4F249A:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F20B9 endp




sub_4F24A0 proc near

var_8C= byte ptr -8Ch
var_7C= dword ptr -7Ch
var_68= dword ptr -68h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 7Ch
mov     ecx, eax
and     ecx, 0Fh
mov     ebx, eax
and     ebx, 10h
shl     ecx, 7
and     eax, 1Fh
shl     ebx, 0Fh
add     ebx, offset byte_7876C4
lea     edi, [ebx+ecx]
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     eax, esi
shl     eax, 7
mov     esi, edx
shl     esi, 2
sub     esi, edx
shl     esi, 2
add     esi, eax
mov     ds:word_783ED4[esi], 1
xor     eax, eax
mov     ax, ds:word_783ED6[esi]
mov     ecx, eax
and     ecx, 3Fh
shl     ecx, 4
mov     edx, eax
sar     edx, 6
and     edx, 1FFh
mov     eax, ecx
call    sub_4F1D5C
mov     ebx, eax
shl     ebx, 3
mov     ebx, ds:dword_782C38[ebx]
mov     eax, esp
call    sub_4F188E
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F2563
mov     eax, ds:dword_783ED8[esi]
mov     ecx, [eax]
push    0
push    1
lea     edx, [esp+94h+var_8C]
push    edx
push    0
push    eax
call    dword ptr [ecx+64h]
test    eax, eax
jnz     loc_4F25BA
mov     ecx, [esp+8Ch+var_7C]
mov     edx, edi
mov     eax, [esp+8Ch+var_68]
call    sub_4FB766
mov     eax, ds:dword_783ED8[esi]
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     short loc_4F25BA

loc_4F2563:
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+94h+var_8C]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     short loc_4F25BA
mov     ecx, [esp+8Ch+var_7C]
mov     edx, edi
mov     eax, [esp+8Ch+var_68]
call    sub_4FB766
mov     eax, ds:dword_551D00
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
mov     eax, ds:dword_783ED8[esi]
mov     ecx, [eax]
push    0
push    1000000h
push    0
mov     edx, ds:dword_551D00
push    edx
push    0
push    eax
call    dword ptr [ecx+14h]

loc_4F25BA:
add     esp, 7Ch
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F24A0 endp




sub_4F25C2 proc near

var_98= dword ptr -98h
var_94= dword ptr -94h
var_90= dword ptr -90h
var_8C= dword ptr -8Ch
var_84= dword ptr -84h
var_70= dword ptr -70h
var_50= byte ptr -50h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 84h
push    eax
mov     esi, edx
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
cmp     ds:dword_7873C8[eax], 0
jz      short loc_4F2636
mov     ecx, ds:dword_7873CC[eax]
test    ecx, ecx
jz      short loc_4F25F9
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]

loc_4F25F9:
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ebx, ds:dword_7873C8[eax]
test    ebx, ebx
jz      short loc_4F2619
mov     edx, [ebx]
push    ebx
call    dword ptr [edx+8]

loc_4F2619:
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edi, edi
mov     ds:dword_7873CC[eax*4], edi
mov     ds:dword_7873C8[eax*4], edi

loc_4F2636:
lea     eax, [esp+9Ch+var_98]
call    sub_4F188E
test    byte ptr ds:dword_88787C, 1
jz      loc_4F278D
mov     [esp+9Ch+var_94], 1007h
mov     [esp+9Ch+var_30], 840h
mov     ebp, 20h ; ' '
mov     [esp+9Ch+var_8C], ebp
mov     [esp+9Ch+var_90], ebp
cmp     ds:dword_782C20, 18h
jnz     short loc_4F2678
mov     ds:dword_782C20, ebp

loc_4F2678:
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+9Ch+var_50]
call    memcpy_
mov     ebx, ds:dword_551CF0
mov     edx, [ebx]
push    0
mov     edi, ds:dword_887880
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 2
add     eax, offset word_7873C4
add     eax, 4
push    eax
lea     eax, [esp+0A4h+var_98]
push    eax
push    ebx
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F26C2

loc_4F26BB:
xor     eax, eax
jmp     loc_4F2936

loc_4F26C2:
mov     ebx, [esp+98h+var_98]
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
add     eax, ebx
shl     eax, 3
mov     edi, offset unk_5F914C
add     edi, eax
mov     eax, esi
and     eax, 3Fh
shl     eax, 4
mov     edx, esi
sar     edx, 6
and     edx, 1FFh
call    sub_4F1D5C
mov     ebx, ds:dword_782C38[eax*8]
lea     eax, [esp+98h+var_94]
call    sub_4F188E
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_7873C8[eax*4]
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0A0h+var_94]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     short loc_4F26BB
mov     ecx, [esp+98h+var_84]
mov     edx, edi
mov     eax, [esp+98h+var_70]
call    sub_4FB9D0
mov     ebx, ds:dword_887880
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     eax, ds:dword_7873C8[eax*4]
mov     ebx, [eax]
push    0
push    eax
call    dword ptr [ebx+80h]
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [esp+98h+var_98]
mov     ds:word_7873C4[eax*4], dx
mov     ds:word_7873C6[eax*4], si
xor     ebx, ebx
mov     ds:dword_7873CC[eax*4], ebx
mov     eax, ds:dword_887880
jmp     loc_4F291C

loc_4F278D:
mov     [esp+9Ch+var_94], 1007h
mov     [esp+9Ch+var_30], 1000h
mov     [esp+9Ch+var_2C], 10h
mov     ebx, 20h ; ' '
mov     [esp+9Ch+var_8C], ebx
mov     [esp+9Ch+var_90], ebx
mov     edx, offset unk_782C14
lea     eax, [esp+9Ch+var_50]
call    memcpy_
mov     ebx, ds:dword_551CF0
mov     edi, [ebx]
push    0
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset word_7873C4
add     eax, 4
push    eax
lea     eax, [esp+0A4h+var_98]
push    eax
push    ebx
call    dword ptr [edi+18h]
test    eax, eax
jnz     loc_4F26BB
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     ebx, ds:dword_7873C8[eax]
mov     edx, [ebx]
add     eax, offset word_7873C4
add     eax, 8
push    eax
push    offset word_4F0D9E
push    ebx
call    dword ptr [edx]
xor     ebp, ebp
mov     [esp+98h+var_18], ebp
mov     [esp+98h+var_14], ebp
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_7873C8[eax*4]
mov     edx, [eax]
lea     ebx, [esp+98h+var_18]
push    ebx
push    8
push    eax
call    dword ptr [edx+74h]
mov     ebx, [esp+98h+var_98]
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 4
add     eax, ebx
shl     eax, 3
mov     edi, offset unk_5F914C
add     edi, eax
mov     eax, esi
and     eax, 3Fh
shl     eax, 4
mov     edx, esi
sar     edx, 6
and     edx, 1FFh
call    sub_4F1D5C
mov     ebx, ds:dword_782C38[eax*8]
lea     eax, [esp+98h+var_94]
call    sub_4F188E
mov     eax, ds:dword_551D04
mov     edx, [eax]
push    ebp
push    1
lea     ecx, [esp+0A0h+var_94]
push    ecx
push    ebp
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F26BB
mov     ecx, [esp+98h+var_84]
mov     edx, edi
mov     eax, [esp+98h+var_70]
call    sub_4FB9D0
mov     eax, ds:dword_551D04
mov     edx, [eax]
push    ebp
push    eax
call    dword ptr [edx+80h]
mov     ebx, ds:dword_887880
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
mov     eax, ds:dword_7873C8[eax*4]
mov     edx, [eax]
push    ebp
push    1000000h
push    ebp
mov     ecx, ds:dword_551D04
push    ecx
push    ebp
push    eax
call    dword ptr [edx+14h]
mov     edx, ds:dword_887880
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, [esp+98h+var_98]
mov     ds:word_7873C4[eax*4], dx
mov     ds:word_7873C6[eax*4], si
mov     eax, ds:dword_7873CC[eax*4]

loc_4F291C:
mov     esi, ds:dword_887880
inc     esi
mov     ds:dword_887880, esi
cmp     esi, 40h ; '@'
jnz     short loc_4F2936
xor     ebp, ebp
mov     ds:dword_887880, ebp

loc_4F2936:
add     esp, 88h
jmp     loc_4F249A
sub_4F25C2 endp




sub_4F2941 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     edi, edx
mov     ebp, eax
shr     ebp, 7
and     ebp, 3
and     ebx, 1Fh
xor     edx, edx
jmp     short loc_4F295F

loc_4F2959:
inc     edx
cmp     edx, 20h ; ' '
jge     short loc_4F2981

loc_4F295F:
mov     esi, ebx
shl     esi, 2
sub     esi, ebx
shl     esi, 7
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_783ED6[esi+eax*4]
and     eax, 0FFFFh
cmp     eax, edi
jnz     short loc_4F2959