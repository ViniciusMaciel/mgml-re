loc_4D3F27:
xor     ebx, ebx
mov     bl, ds:byte_53965A[edx*2]
movzx   edi, ds:byte_53965B[edx*2]
call    sub_4EE133
mov     dword ptr [eax+4], 2E808080h
mov     ecx, edx
shl     ecx, 3
add     ecx, [esp+18h+var_18]
mov     esi, [ecx+0DCh]
mov     [eax+8], esi
mov     ecx, [ecx+0E0h]
mov     [eax+10h], ecx
mov     ecx, edi
shl     ecx, 8
mov     esi, ecx
or      esi, 3DC80000h
or      esi, ebx
mov     [eax+0Ch], esi
mov     edi, ecx
or      edi, 2A0000h
lea     esi, [ebx+1Fh]
or      edi, esi
mov     [eax+14h], edi
add     ecx, 1F00h
mov     edi, ecx
or      edi, ebx
mov     [eax+1Ch], edi
or      ecx, esi
mov     [eax+24h], ecx
mov     dword ptr [eax+18h], 64h ; 'd'
inc     edx
cmp     edx, 5
jl      short loc_4D3F27
add     esp, 4
jmp     loc_4D3E11
sub_4D3F1F endp




sub_4D3FA7 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ebx, edx
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
lea     ecx, [eax+8Ch]  ; int
add     eax, 54h ; 'T'
mov     edx, ecx
call    sub_4EF638
movsx   eax, bx
mov     [esp+20h+var_20], eax
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_18], eax
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D3FA7 endp




sub_4D3FEA proc near

var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    0C800000h
add     eax, 0CCh
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 1Eh
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 8
jmp     loc_4D423E
sub_4D3FEA endp




sub_4D403E proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     byte ptr [ecx+3], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+14h], 1F4h
mov     word ptr [ecx+16h], 0FFF0h
mov     word ptr [ecx+18h], 0FF60h
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
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     edx, 200h
mov     eax, ecx
call    sub_4D3FA7
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+0CCh], 0
inc     byte ptr [ecx+8]
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D403E endp




sub_4D4107 proc near
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
test    byte ptr [eax+0CFh], 20h
jz      loc_4D41DA
lea     edx, [ebp+14h]
mov     eax, 160h
call    sub_4D8BC3
mov     edx, ds:dword_560BEC
inc     edx
mov     ds:dword_560BEC, edx
mov     ecx, 5
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_4D4176
call    sub_4DDF54
test    eax, eax
jz      short loc_4D4186
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+8], 1
jmp     short loc_4D4186

loc_4D4176:
call    sub_4DE043
test    eax, eax
jz      short loc_4D4186
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'

loc_4D4186:
xor     dl, dl
mov     ds:byte_560BE7, dl
lea     eax, [ebp+14h]
mov     edx, (offset dword_5F8376+2)
call    sub_4DDDB4
mov     edx, eax
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
add     eax, eax
sar     eax, 0Ch
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0FFF0h
mov     eax, edx
call    sub_4EF003
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 0Ch
mov     [ebp+48h], ax
inc     byte ptr [ebp+8]
jmp     short loc_4D41F4

loc_4D41DA:
cmp     word ptr [ebp+14h], 0
jle     short loc_4D41EE
sub     word ptr [ebp+58h], 100h
sub     word ptr [ebp+14h], 14h
jmp     short loc_4D41F4

loc_4D41EE:
mov     word ptr [ebp+14h], 0

loc_4D41F4:
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
mov     edx, 200h
mov     eax, ebp
call    sub_4D3FA7
mov     eax, ebp
call    sub_4D3FEA

loc_4D422B:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 28h ; '('
mov     eax, ebp
call    sub_4ED88B

loc_4D423E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4107 endp




sub_4D4245 proc near
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
sub     word ptr [eax+54h], 100h
cmp     word ptr [eax+18h], 400h
jge     short loc_4D42BA
test    byte ptr [ebp+0CFh], 4
jz      short loc_4D42FD

loc_4D42BA:
lea     edx, [ebp+14h]
test    byte ptr [ebp+0CFh], 4
jz      short loc_4D42CD
mov     eax, 162h
jmp     short loc_4D42D2

loc_4D42CD:
mov     eax, 161h

loc_4D42D2:
call    sub_4D8BC3
cmp     word ptr [ebp+44h], 0
jl      short loc_4D42E6
mov     word ptr [ebp+44h], 50h ; 'P'
jmp     short loc_4D42EC

loc_4D42E6:
mov     word ptr [ebp+44h], 0FFB0h

loc_4D42EC:
mov     word ptr [ebp+48h], 0
mov     word ptr [ebp+46h], 0FFC4h
inc     byte ptr [ebp+8]
jmp     short loc_4D4304

loc_4D42FD:
mov     eax, ebp
call    sub_4D3FEA

loc_4D4304:
mov     edx, 200h
mov     eax, ebp
call    sub_4D3FA7
jmp     loc_4D422B
sub_4D4245 endp




sub_4D4315 proc near
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
mov     ax, [eax+44h]
add     [ebp+14h], ax
mov     ax, [ebp+46h]
add     [ebp+16h], ax
mov     ax, [ebp+48h]
add     [ebp+18h], ax
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
mov     eax, [ebp+14h]
sar     eax, 10h
cmp     eax, 0FFFFFDA8h
jg      short loc_4D4304
mov     eax, ebp
call    sub_4DE371
jmp     loc_4D423E
sub_4D4315 endp




sub_4D438C proc near
push    edx
cmp     byte ptr ds:dword_560BE0, 0Bh
jnz     short loc_4D439D
call    sub_4DE371
pop     edx
retn

loc_4D439D:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D43A2[edx*4]
pop     edx
retn
sub_4D438C endp




sub_4D43AB proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D43D0[ecx*4]
mov     dword ptr [edx+0CCh], 0
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D43AB endp




sub_4D43E6 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+88h]
xor     edx, edx
mov     dl, [ecx+3]
mov     ax, ds:word_5396CA[edx*8]
mov     [ecx+14h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5396CC[eax*8]
mov     [ecx+16h], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_5396CE[eax*8]
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
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+4Ch], 10h
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 40h ; '@'
mov     dword ptr [ecx+0DCh], 0
mov     dword ptr [ecx+78h], 0
lea     eax, [ecx+14h]
call    sub_42C7E7
mov     [ecx+16h], ax
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebx+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+10h+var_10], edx
mov     [esp+10h+var_C], edx
mov     [esp+10h+var_8], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
add     esp, 10h
jmp     loc_4D478A
sub_4D43E6 endp




sub_4D4500 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= dword ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     ebx, offset byte_5F8364
add     eax, 88h
mov     [esp+34h+var_1C], eax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4D4520[edx*4]
cmp     byte ptr [ebp+0Bh], 0
jz      short loc_4D4546
cmp     byte ptr [ebp+3], 0
jnz     short loc_4D4546
mov     eax, ebp
call    sub_4D49D8
mov     eax, ebp
call    sub_4D49E7
jmp     loc_4D4675

loc_4D4546:
mov     dh, [ebp+0CFh]
test    dh, 8
jz      loc_4D45F4
test    dh, 20h
jnz     loc_4D45F4
test    dword ptr [ebp+0CCh], 0FFFFFFh
jz      loc_4D45F4
add     dword ptr [ebp+0DCh], 100h
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4D45F4
cmp     byte ptr [ebp+3], 0
jnz     short loc_4D45BF
mov     edx, [ebp+0Ch]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_53974E[edx]
inc     edx
mov     esi, 6
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ebp+0Fh], dl
mov     ah, [ebp+0Ch]
dec     ah
mov     [ebp+0Ch], ah
jnz     short loc_4D45E7
mov     word ptr [ebp+58h], 0
mov     byte ptr [ebp+0Bh], 1
jmp     short loc_4D45F4

loc_4D45BF:
mov     edx, [ebp+0Ch]
sar     edx, 18h
xor     ecx, ecx
mov     cl, ds:byte_539754[edx]
inc     edx
mov     esi, 4
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     [ebp+0Fh], dl
mov     eax, 1Ch
call    sub_47EEAE

loc_4D45E7:
test    ecx, ecx
jz      short loc_4D45F4
mov     edx, ecx
xor     eax, eax
call    sub_4A0E24

loc_4D45F4:
mov     dh, [ebp+0Eh]
test    dh, dh
jnz     short loc_4D4651
test    byte ptr [ebp+0CFh], 2
jz      loc_4D4675
mov     edx, [ebx+14h]
sar     edx, 10h
mov     eax, [ebp+14h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
call    abs_
cmp     eax, 10h
jge     short loc_4D4675
cmp     byte ptr [ebp+3], 0
jnz     short loc_4D463E
mov     al, [ebp+0Ch]
dec     al
mov     [ebp+0Ch], al
jnz     short loc_4D463E
mov     word ptr [ebp+58h], 0
mov     byte ptr [ebp+0Bh], 1
jmp     short loc_4D4642

loc_4D463E:
mov     byte ptr [ebp+0Eh], 18h

loc_4D4642:
lea     edx, [ebp+14h]
mov     eax, 189h
call    sub_4D8BC3
jmp     short loc_4D4675

loc_4D4651:
cmp     dh, 8
jle     short loc_4D4672
mov     al, dh
and     al, 7
movsx   eax, al
mov     ax, ds:word_53973E[eax*2]
add     [ebp+56h], ax
xor     edx, edx
mov     eax, ebp
call    sub_4D4E6E

loc_4D4672:
dec     byte ptr [ebp+0Eh]

loc_4D4675:
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+34h+var_1C]
lea     edi, [edi+34h]
lea     esi, [ebp+14h]
movsd
movsd
mov     bx, [ebp+56h]
mov     ax, [ebp+0DCh]
and     ah, 0Fh
mov     edx, ebx
add     edx, eax
mov     [ebp+56h], dx
mov     ecx, [esp+34h+var_1C]
add     ecx, 4          ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     esi, 200h
mov     [esp+34h+var_34], esi
mov     [esp+34h+var_30], esi
mov     [esp+34h+var_2C], esi
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
mov     eax, [ebp+62h]
sar     eax, 10h
mov     edx, [ebp+0DCh]
cmp     eax, edx
jnb     short loc_4D46EE
mov     ecx, edx
sub     ecx, eax
mov     [ebp+0DCh], ecx
jmp     short loc_4D46F8

loc_4D46EE:
mov     dword ptr [ebp+0DCh], 0

loc_4D46F8:
mov     [ebp+56h], bx
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     bx, [ebp+56h]
lea     edi, [esp+34h+var_24]
lea     esi, [ebp+14h]
movsd
movsd
movsx   edx, bx
sub     word ptr [esp+34h+var_22], 50h ; 'P'
mov     eax, edx
call    sub_4EF008
mov     ecx, [esp+0Eh]
sar     ecx, 10h
mov     [esp+34h+var_24], cx
mov     eax, edx
call    sub_4EF003
mov     edx, [esp+34h+var_22]
sar     edx, 10h
mov     word ptr [esp+34h+var_22+2], dx
push    80h
push    0
push    8880000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
lea     eax, [esp+48h+var_24]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 1Ch

loc_4D4789:
pop     ebp

loc_4D478A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4500 endp ; sp-analysis failed




sub_4D4790 proc near
push    edx
mov     edx, eax
call    sub_432EAB
mov     eax, edx
call    sub_4DE371
pop     edx
sub_4D4790 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_111]



sub_4D47A1 proc near

var_22= dword ptr -22h
var_1E= dword ptr -1Eh
var_8= byte ptr -8
var_6= dword ptr -6

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
call    sub_432697
mov     ax, [ebp+56h]
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
movsx   edx, ax
sub     word ptr [esp+20h+var_1E], 50h ; 'P'
mov     eax, edx
call    sub_4EF008
mov     eax, [esp+20h+var_22]
sar     eax, 10h
mov     word ptr [esp+20h+var_22+2], ax
mov     eax, edx
call    sub_4EF003
mov     eax, [esp+8+var_6]
sar     eax, 10h
mov     word ptr [esp+8+var_6+2], ax
push    80h
push    0
push    8880000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
lea     eax, [esp+1Ch+var_8]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 8
jmp     loc_4D4789
sub_4D47A1 endp




sub_4D4836 proc near
mov     byte ptr [eax+9], 1
retn
sub_4D4836 endp




sub_4D483B proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     ax, [eax+4Ch]
mov     dx, [esi+44h]
add     edx, eax
mov     [esi+44h], dx
cmp     dx, 300h
jle     short loc_4D485F
mov     word ptr [esi+44h], 300h

loc_4D485F:
xor     eax, eax
mov     al, [esi+0Ah]
shl     eax, 2
add     eax, offset unk_539692
xor     edx, edx
mov     dl, [eax]
movsx   dx, ds:byte_53967C[edx*2]
shl     edx, 8
mov     [esp+18h+var_18], dx
mov     al, [eax]
and     eax, 0FFh
movsx   ax, ds:byte_53967D[eax*2]
shl     eax, 8
mov     [esp+18h+var_14], ax
mov     ax, [esi+16h]
mov     [esp+18h+var_16], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, esp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_4D4968
test    ax, ax
jz      short loc_4D48D2
mov     byte ptr [esi+9], 2

loc_4D48D2:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D483B endp




sub_4D48DA proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
xor     eax, eax
mov     al, [esi+0Ah]
shl     eax, 2
add     eax, offset unk_539692
xor     ecx, ecx
mov     cl, [eax+3]
movsx   dx, ds:byte_53967C[ecx*2]
shl     edx, 8
mov     [esp+18h+var_18], dx
mov     al, [eax+3]
and     eax, 0FFh
movsx   ax, ds:byte_53967D[eax*2]
shl     eax, 8
mov     [esp+18h+var_14], ax
mov     ax, [esi+16h]
mov     [esp+18h+var_16], ax
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, esp
call    sub_4DE552
mov     edx, eax
add     dx, [esi+56h]
and     dh, 0Fh
mov     [esi+56h], dx
test    eax, eax
jnz     short loc_4D48D2
mov     ah, [esi+0Ah]
inc     ah
mov     [esi+0Ah], ah
cmp     ah, 0Eh
jb      short loc_4D495F
mov     byte ptr [esi+0Ah], 0

loc_4D495F:
mov     byte ptr [esi+9], 1
jmp     loc_4D48D2
sub_4D48DA endp




sub_4D4968 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+0Ah]
shl     eax, 2
add     eax, offset unk_539692
mov     al, [eax]
and     eax, 0FFh
movsx   cx, ds:byte_53967C[eax*2]
movsx   bx, ds:byte_53967D[eax*2]
shl     ecx, 8
shl     ebx, 8
mov     eax, [edx+12h]
sar     eax, 10h
movsx   ecx, cx
sub     ecx, eax
mov     eax, ecx
call    abs_
cmp     eax, 200h
jge     short loc_4D49D2
mov     edx, [edx+16h]
sar     edx, 10h
movsx   eax, bx
sub     eax, edx
call    abs_
cmp     eax, 200h
jge     short loc_4D49D2
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4D49D2:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4968 endp




sub_4D49D8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Bh]
call    ds:funcs_4D49DE[edx*4]
pop     edx
retn
sub_4D49D8 endp




sub_4D49E7 proc near
push    edx
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_4D49EE[edx*4]
pop     edx
sub_4D49E7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_112]



sub_4D49F7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ax, [eax+44h]
mov     ebx, 20h ; ' '
movsx   edx, ax
cmp     edx, ebx
jge     short loc_4D4A1D
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+4Ch], 0
inc     byte ptr [ecx+0Bh]
jmp     short loc_4D4A25

loc_4D4A1D:
mov     edx, eax
sub     edx, ebx
mov     [ecx+44h], dx

loc_4D4A25:
cmp     word ptr [ecx+44h], 100h
jge     short loc_4D4A40
cmp     ax, 100h
jle     short loc_4D4A40
lea     edx, [ecx+14h]
mov     eax, 18Bh
call    sub_4D8BC3

loc_4D4A40:
mov     edx, 1
mov     eax, ecx
call    sub_4D4E6E
pop     edx
pop     ecx
pop     ebx
retn
sub_4D49F7 endp




sub_4D4A50 proc near
push    ecx
push    edx
mov     ecx, eax
test    byte ptr [eax+0CFh], 8
jz      short loc_4D4AB5
test    dword ptr [ecx+0CCh], 0FFFFFFh
jnz     short loc_4D4AB5
mov     eax, [ecx+0C8h]
mov     word ptr [eax+4Ch], 0
mov     dx, [eax+4Ch]
mov     eax, [ecx+0C8h]
mov     [eax+44h], dx
mov     eax, [ecx+0C8h]
mov     byte ptr [eax+8], 4
mov     word ptr [ecx+44h], 300h
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+50h]
mov     [ecx+4Eh], ax
mov     [ecx+4Ch], ax
inc     byte ptr [ecx+0Bh]
lea     edx, [ecx+14h]
mov     eax, 18Ah
call    sub_4D8BC3

loc_4D4AB5:
mov     edx, 1
mov     eax, ecx
call    sub_4D4E6E
pop     edx
pop     ecx
retn
sub_4D4A50 endp




sub_4D4AC4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     edx, 20h ; ' '
mov     eax, [eax+42h]
sar     eax, 10h
cmp     eax, edx
jl      short loc_4D4AEA
mov     eax, ebp
call    sub_42DE56
test    eax, eax
jz      loc_4D4C00

loc_4D4AEA:
mov     eax, offset unk_539702
call    sub_49DBA5
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     dx, ds:word_77EAB6
and     dh, 1
add     [eax+56h], dx
mov     word ptr [eax+46h], 0FF40h
mov     eax, offset unk_539702
call    sub_49DBA5
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [eax+1Ch]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+54h]
lea     esi, [ebp+54h]
movsd
movsd
mov     dx, ds:word_77EAB6
and     dh, 1
sub     [eax+56h], dx
mov     word ptr [eax+46h], 0FF40h
mov     eax, offset unk_539716
call    sub_49DBA5
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+56h]
xor     dh, dh
and     dl, 0C0h
movsx   esi, dx
mov     edx, esi
sar     edx, 6
mov     [eax+0Fh], dl
mov     eax, offset unk_53972A
call    sub_49DBA5
mov     esi, [ebp+0C8h]
lea     edi, [eax+14h]
lea     esi, [esi+14h]
movsd
movsd
mov     esi, [ebp+0C8h]
lea     edi, [eax+1Ch]
lea     esi, [esi+1Ch]
movsd
movsd
movsd
movsd
mov     esi, [ebp+0C8h]
lea     edi, [eax+54h]
lea     esi, [esi+54h]
movsd
movsd
mov     ecx, 0FFFFF380h
xor     ebx, ebx
xor     edx, edx
call    sub_4DD43B
call    sub_4DE13B
test    eax, eax
jz      short loc_4D4C14
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ebp+14h]
movsd
movsd
mov     dx, [ebp+16h]
sub     edx, 64h ; 'd'
mov     [eax+4Ah], dx
mov     [ebp+0C8h], eax
and     byte ptr [ebp+0], 0FDh
mov     word ptr [ebp+44h], 0
inc     byte ptr [ebp+0Bh]
jmp     short loc_4D4C14

loc_4D4C00:
mov     ax, [ebp+56h]
add     eax, 40h ; '@'
and     ah, 0Fh
mov     [ebp+56h], ax
sub     [ebp+44h], dx

loc_4D4C14:
mov     edx, 1
mov     eax, ebp
call    sub_4D4E6E
jmp     loc_4D4789
sub_4D4AC4 endp




sub_4D4C25 proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, [eax+0C8h]
cmp     byte ptr [eax], 0
jnz     short loc_4D4C44
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
add     [edx+0Bh], bh

loc_4D4C44:
pop     edx
pop     ebx
retn
sub_4D4C25 endp




sub_4D4C47 proc near
push    edx
mov     edx, eax
call    sub_42ABA2
test    eax, eax
jnz     short loc_4D4C74
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0

loc_4D4C74:
pop     edx
retn
sub_4D4C47 endp




sub_4D4C76 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_4D4CA3
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
inc     byte ptr [edx+0Ch]

loc_4D4CA3:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4C76 endp




sub_4D4CA7 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     edi, eax
mov     esi, offset byte_5F8364
xor     edx, edx
mov     ds:word_57096E, dx
mov     ds:word_57096A, dx
mov     al, byte ptr ds:dword_5F8370
mov     ah, al
inc     ah
cmp     al, 0Ah
jb      short loc_4D4CF4
jbe     loc_4D4D96
cmp     al, 14h
jb      short loc_4D4CF0
jbe     loc_4D4DBC
cmp     al, 15h

loc_4D4CE5:
jz      loc_4D4DE0
jmp     loc_4D4DE3

loc_4D4CF0:
cmp     al, 0Bh
jmp     short loc_4D4CE5

loc_4D4CF4:
cmp     al, 1
jb      short loc_4D4D03
jbe     short loc_4D4D1C
cmp     al, 2
jz      short loc_4D4D25
jmp     loc_4D4DE3

loc_4D4D03:
test    al, al
jnz     loc_4D4DE3
inc     byte ptr ds:dword_5F836C+1

loc_4D4D11:
mov     byte ptr ds:dword_5F8370, ah
jmp     loc_4D4DE3

loc_4D4D1C:
or      ds:byte_5F8421, 20h
jmp     short loc_4D4D11

loc_4D4D25:
mov     ecx, 2
mov     [esp+2Ch+var_1C], cx
mov     [esp+2Ch+var_1A], 9
mov     [esp+2Ch+var_18], cx
mov     ecx, esp
lea     ebx, [esp+2Ch+var_1C]
mov     edx, esi
mov     eax, edi
call    sub_4DD821
test    al, 1
jz      short loc_4D4D72
mov     ax, ds:word_5F848C
mov     cx, ds:word_5F849C
or      eax, ecx
mov     ds:word_57096E, ax
mov     ds:word_57096A, ax
mov     byte ptr ds:dword_5F8370, 0Ah
jmp     short loc_4D4DE3

loc_4D4D72:
mov     ax, ds:word_5F848E
mov     bx, ds:word_5F849C
or      eax, ebx
mov     ds:word_57096E, ax
mov     ds:word_57096A, ax
mov     byte ptr ds:dword_5F8370, 14h
jmp     short loc_4D4DE3

loc_4D4D96:
mov     dx, ds:word_5F848C
mov     bx, ds:word_5F849C
or      edx, ebx
mov     ds:word_57096E, dx
mov     ds:word_57096A, dx
mov     byte ptr ds:dword_5F8370, ah
jmp     short loc_4D4DE0

loc_4D4DBC:
mov     dx, ds:word_5F848E
mov     cx, ds:word_5F849C
or      edx, ecx
mov     ds:word_57096E, dx
mov     ds:word_57096A, dx
mov     byte ptr ds:dword_5F8370, ah

loc_4D4DE0:
inc     byte ptr [esi+0Dh]

loc_4D4DE3:
cmp     byte ptr [esi+0Dh], 0Ah
jle     short loc_4D4DF3
mov     dword ptr [esi+0Ch], 0
inc     byte ptr [edi+0Ch]

loc_4D4DF3:
add     esp, 18h
jmp     loc_4D478A
sub_4D4CA7 endp




sub_4D4DFB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Bh], 3
jbe     short loc_4D4E6A
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E604, eax
mov     eax, [ecx+14h]
sar     eax, 10h
sub     eax, 12Ch
shl     eax, 10h
mov     dword ptr ds:unk_77E608, eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E60C, eax
mov     eax, [ecx+54h]
sar     eax, 10h
add     eax, 600h
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     ds:dword_77E638, 1000000h
mov     ds:dword_77E63C, 3000000h
inc     byte ptr [ecx+0Ch]

loc_4D4E6A:
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4DFB endp




sub_4D4E6E proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     bl, dl
mov     esi, offset byte_5F8364
cmp     byte ptr [eax+0Dh], 0
jz      short loc_4D4E87
dec     byte ptr [ecx+0Dh]
pop     esi
pop     ecx
pop     ebx
retn

loc_4D4E87:
call    sub_4DE13B
test    eax, eax
jz      loc_4D4F58
test    dl, dl
ja      loc_4D4F17
mov     bx, word ptr ds:dword_5F8376+2
sub     bx, [ecx+14h]
movsx   edx, bx
sar     edx, 4
test    edx, edx
jz      short loc_4D4EC2
test    bx, bx
jge     short loc_4D4EBD
mov     ebx, 0FFFFFF9Ch
jmp     short loc_4D4EC2

loc_4D4EBD:
mov     ebx, 64h ; 'd'

loc_4D4EC2:
mov     dx, [esi+18h]
sub     dx, [ecx+18h]
movsx   esi, dx
sar     esi, 4
test    esi, esi
jz      short loc_4D4EE5
test    dx, dx
jge     short loc_4D4EE0
mov     edx, 0FFFFFF9Ch
jmp     short loc_4D4EE5

loc_4D4EE0:
mov     edx, 64h ; 'd'

loc_4D4EE5:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     si, [ecx+14h]
add     esi, ebx
mov     [eax+1Ch], si
mov     bx, [ecx+16h]
sub     ebx, 50h ; 'P'
mov     [eax+1Eh], bx
mov     bx, [ecx+18h]
add     ebx, edx
mov     [eax+20h], bx
mov     byte ptr [ecx+0Dh], 2
pop     esi
pop     ecx
pop     ebx
retn

loc_4D4F17:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
sub     edx, 50h ; 'P'
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
sub     edx, 28h ; '('
mov     [eax+20h], dx
mov     byte ptr [eax+9], 4
mov     byte ptr [ecx+0Dh], 8

loc_4D4F58:
pop     esi
pop     ecx
pop     ebx
retn
sub_4D4E6E endp




sub_4D4F5C proc near
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
call    ds:funcs_4D4F83[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4D4FA3
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4D4FA3:
pop     ebp

loc_4D4FA4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D4F5C endp




sub_4D4FAA proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax        ; int
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+88h]
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 800h
mov     word ptr [ecx+58h], 0
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebx+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+0], edx
mov     [esp+4], edx
mov     [esp+8], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_5397A0
inc     byte ptr [ecx+8]
add     esp, 10h
jmp     loc_4D4FA4
sub_4D4FAA endp




sub_4D502B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4D505A
mov     eax, 635h
call    sub_47E888
test    eax, eax
jnz     short loc_4D505A
mov     eax, 635h
call    sub_47E8B8
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_4D505A:
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
sub_4D502B endp

align 4
jpt_4D509A dd offset loc_4D50A1 ; jump table for switch statement
dd offset loc_4D50EE
dd offset loc_4D50F7
dd offset loc_4D5107



sub_4D5084 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4D509A      ; jumptable 004D509A default case
and     eax, 0FFh
jmp     jpt_4D509A[eax*4] ; switch jump

loc_4D50A1:             ; jumptable 004D509A case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4D509A      ; jumptable 004D509A default case
mov     byte ptr ds:dword_5F836C, 3
xor     ch, ch
mov     byte ptr ds:dword_5F836C+1, ch
xor     edx, edx
mov     ds:dword_5F8370, edx
lea     eax, [esi+14h]
mov     ecx, 0Ah
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_4D50E6:
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D50EE:             ; jumptable 004D509A case 1
mov     ds:byte_5F88AC, 30h ; '0'
jmp     short loc_4D50E6

loc_4D50F7:             ; jumptable 004D509A case 2
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_4D509A ; jumptable 004D509A default case
call    sub_42A98E
jmp     short loc_4D50E6

loc_4D5107:             ; jumptable 004D509A case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_4D509A ; jumptable 004D509A default case
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0

def_4D509A:             ; jumptable 004D509A default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5084 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_113]
unk_4D512F db    0



sub_4D5130 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

add     eax, [eax+2]
add     byte ptr [ecx], 53h ; 'S'
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax        ; int
lea     edi, [esp+28h+var_18]
mov     esi, offset unk_4D512F
movsd
movsw
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
lea     ebx, [eax+8Ch]
add     eax, 54h ; 'T'
mov     edx, ebx
call    sub_4EF638
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, [esp+eax*2+0Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, [esp+eax*2+0Eh]
sar     eax, 10h
mov     [esp+28h+var_24], eax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, [esp+eax*2+0Eh]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
add     esp, 18h

loc_4D51A4:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5130 endp ; sp-analysis failed




sub_4D51AA proc near

var_20= byte ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     edi, esp
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    4880000h
add     eax, 0CCh
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [ebp+0Ah]
sar     eax, 18h
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
mov     edx, 78h ; 'x'
sub     edx, eax
mov     ecx, 8000h
xor     ebx, ebx
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 8
pop     ebp
jmp     short loc_4D51A4
sub_4D51AA endp




sub_4D520D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     ebx, edx
call    sub_4DE043
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4D52B1
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 26h ; '&'
mov     al, [esi+0Ch]
mov     [edx+0Ch], al
mov     al, [esi+0Dh]
mov     [edx+0Dh], al
mov     byte ptr [edx+0Eh], 1
mov     al, [esi+0Fh]
mov     [edx+0Fh], al
lea     edi, [edx+14h]
lea     esi, [esi+14h]
movsd
movsd
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4D5267
call    rand_
and     eax, 3
mov     esi, eax
shl     esi, 2
add     esi, eax
add     esi, esi
add     esi, 64h ; 'd'
jmp     short loc_4D527B

loc_4D5267:
call    rand_
and     eax, 3
mov     esi, eax
shl     esi, 2
add     esi, eax
add     esi, esi
add     esi, 32h ; '2'

loc_4D527B:
mov     [edx+0DCh], esi
lea     edx, [ebx-400h]
mov     eax, edx
call    sub_4EF008
imul    eax, [ecx+0DCh]
shr     eax, 0Ch
mov     [ecx+44h], ax
mov     eax, edx
call    sub_4EF003
imul    eax, [ecx+0DCh]
shr     eax, 0Ch
mov     [ecx+48h], ax

loc_4D52B1:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D520D endp

word_4D52B6 dw 5651h
dd 8AC18957h, 6CC8020h, 41C72188h, 64h, 5441C700h
dd 0
dd 5841C7h, 0C7000000h, 6441h, 41C70000h
dd 70h, 7441C700h, 0
dd 5641C766h, 798D0400h, 14718D2Ch, 418BA5A5h
dd 10F8C112h, 8910E0C1h, 41893441h, 16418B1Ch
dd 0C110F8C1h, 418910E0h, 2441893Ch, 0C114418Bh
dd 0E0C110F8h, 38418910h, 66204189h, 4641C7h
dd 41C76600h, 6600104Eh, 4C41C7h, 41C76600h
dd 8B000050h, 0FAC10A51h, 0C1D08918h, 0D02902E0h
dd 0BA02E0C1h
dd offset unk_5397B8
dword_4D5354 dd 5189C201h, 0C481C778h, 80000000h, 89008080h
dd 0FDCBE8C8h, 418AFFFFh, 2E0C00Ch, 8D034188h
dd 0C8890351h, 7D7BE8h, 0E8C88900h, 0FFFFFE26h
dd 5F0841FEh, 53C3595Eh, 55575651h, 0D389C589h
dd 8D2C7D8Dh, 0A5A51475h, 8D347D8Dh, 0A5A51C75h
dd 7D8DA5A5h, 54758D5Ch, 7880A5A5h, 3874000Eh
db 0F6h, 5
dd offset word_77EAB6
dw 7503h
dd 345FE2Fh, 0C109458Bh, 0E0C118F8h, 8AD23102h
dd 0C0830355h, 7EC23903h, 0C558A0Dh, 8802E2C0h
dd 45C60355h, 558D000Eh, 0E8E88903h, 7D0Ch
dd 8A144D8Dh, 0CF85h, 7420A800h, 9A4BE827h
dd 0E0830001h, 0C1C38903h, 0C30102E3h, 0C381DB01h
dd 12Ch, 0DC9D89h
db 2 dup(0), 0BAh
dd offset dword_5F8376+2
db 0E9h
dd 0D0h, 0F27502A8h, 840F08A8h, 0BAh, 0C7D80h
dd 0CA890974h, 16BB8h, 8907EB00h, 16CB8CAh
dd 7CE80000h, 8A000037h, 0FC800D65h, 802A7502h
dd 74000C7Dh, 0C43FE05h, 438313EBh, 2CBA1E58h
dd 0B8000000h, 4, 0FCB9B7E8h, 0E8E889FFh
dd 8EFDh, 13FE9h, 0FEE28800h, 0D5588C2h
dd 10E45C6h, 0C10A458Bh, 0C18918F8h, 2902E1C1h
dd 2E1C1C1h
db 0B8h
dd offset unk_5397B8
db 1, 0C8h, 89h
dd 458D7845h
db 14h, 0BAh
dd offset dword_5F8376+2
dw 9E8h
dword_4D54A8 dd 89000089h, 888DC2h, 89000004h, 9B4EE8C8h
dd 0AF0F0001h, 0DC85h, 0CE8C100h, 44458966h
dd 34E8C889h, 0F00019Bh, 0DC85AFh, 0E8C10000h
dd 4589660Ch, 0E8E88948h, 0FFFFFD29h, 4A83FEBh
dd 958D3B74h, 0D4h, 0BDE8C889h, 89000088h
dd 9B0AE8C1h, 0AF0F0001h, 0DC85h, 0CE8C100h
dd 44458966h, 0F0E8C889h, 0F00019Ah, 0DC85AFh
dd 0E8C10000h, 4589660Ch, 0E45C648h, 458B6601h
dd 80556h, 0E4800000h, 4589660Fh, 458B6656h
dd 4501664Eh, 42458B46h, 0C110F8C1h, 45010CE0h
dd 44458B1Ch, 0C110F8C1h, 45010CE0h, 46458B20h
dd 0C110F8C1h, 45010CE0h, 14558D24h, 0E81C458Dh
dd 800Fh, 0E3E8E889h, 89FFF588h, 74C085C2h
dd 0E45C60Ch, 44458D01h, 0F5838AE8h, 0E8E889FFh
dd 0FFFFFBA9h, 17E8E889h, 8BFFFFFCh, 0F8C10A45h
dd 0C1C18918h, 0C10102E1h, 0BA02E1C1h, 64h
dd 0C931CA29h, 200BBh, 0E8E88900h, 182D3h
dd 595E5F5Dh, 5153C35Bh, 31C18952h, 0F418AC0h
dd 0C2AAE8h, 8ADB3100h, 0C2890859h, 14FFC889h
db 9Dh
dd offset off_5397DC
pop     edx
pop     ecx
pop     ebx
retn



sub_4D55E1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D55E7[edx*4]
pop     edx
retn
sub_4D55E1 endp




sub_4D55F0 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax        ; int
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5397E4
lea     ebx, [ecx+88h]
mov     ax, [ecx+64h]
add     ah, 4
and     ah, 0Fh
mov     [esp+2Ch+var_1C], ax
mov     ax, [ecx+66h]
and     ah, 0Fh
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, 100h
mov     [esp+2Ch+var_24], edx
mov     [esp+2Ch+var_2C], edx
mov     [esp+2Ch+var_28], 200h
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     eax, [ecx+64h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     esi, eax
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
add     eax, eax
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     word ptr [ecx+46h], 0
mov     eax, [ecx+64h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     esi, eax
shl     eax, 2
sub     eax, esi
shl     eax, 3
add     eax, esi
add     eax, eax
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
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
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ebx+3Ch], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4D58A6
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+8]

loc_4D5766:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D55F0 endp




sub_4D576F proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jz      short loc_4D5793

loc_4D578A:
mov     eax, ecx
call    sub_4DE371
jmp     short loc_4D5766

loc_4D5793:
mov     ah, [ecx+0Fh]
inc     ah
mov     [ecx+0Fh], ah
cmp     ah, 40h ; '@'
jz      short loc_4D578A
cmp     ah, 30h ; '0'
jge     short loc_4D57AE
mov     dword ptr [ebx+3Ch], 2808080h
jmp     short loc_4D57D7

loc_4D57AE:
mov     al, ah
sub     al, 30h ; '0'
shl     al, 3
mov     ah, 80h
sub     ah, al
mov     al, ah
and     eax, 0FFh
mov     edx, eax
shl     edx, 10h
mov     esi, eax
shl     esi, 8
add     edx, 2000000h
add     edx, esi
add     edx, eax
mov     [ebx+3Ch], edx

loc_4D57D7:
mov     ax, [ecx+64h]
add     ah, 4
and     ah, 0Fh
mov     [esp+2Ch+var_1C], ax
mov     ax, [ecx+66h]
and     ah, 0Fh
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 5
add     eax, 200h
mov     [esp+2Ch+var_24], eax
mov     [esp+2Ch+var_2C], eax
mov     [esp+2Ch+var_28], 200h
mov     edx, esp
mov     eax, esi
call    sub_4EF689
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 10h
add     [ecx+24h], eax
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
cmp     byte ptr [ecx+0Fh], 3Ch ; '<'
jge     loc_4D5766
mov     eax, ecx
call    sub_4D58A6
jmp     loc_4D5766
sub_4D576F endp




sub_4D58A6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
lea     edx, [eax+40h]
push    80h
push    0
push    8000020h
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D58A6 endp




sub_4D5911 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ebx, edx
lea     edi, [eax+0BCh]
lea     esi, [eax+14h]
movsd
movsd
lea     ecx, [eax+8Ch]  ; int
add     eax, 54h ; 'T'
mov     edx, ecx
call    sub_4EF638
movsx   eax, bx
mov     [esp+20h+var_20], eax
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_18], eax
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4D5911 endp




sub_4D5954 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_4D596A
cmp     al, 1
jz      short loc_4D59D1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D596A:
or      byte ptr [esi], 6
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Dh], 0
mov     dword ptr [esi+64h], 0
mov     word ptr [esi+54h], 0
mov     word ptr [esi+58h], 0
mov     dword ptr [esi+64h], 0
mov     dword ptr [esi+70h], 0
mov     dword ptr [esi+74h], 0
mov     dword ptr [esi+0C4h], offset unk_808080
mov     edx, 200h
mov     eax, esi
call    sub_4D5911
mov     byte ptr [esi+2], 4
mov     byte ptr [esi+3], 8
lea     edx, [esi+3]
mov     eax, esi
call    sub_4DD0F8
mov     byte ptr [esi+2], 29h ; ')'
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D59D1:
cmp     byte ptr [esi+0Dh], 0
jnz     loc_4D5A4F
mov     bx, [esi+56h]
cmp     bx, 800h
jnz     short loc_4D5A06
mov     eax, [esi+9]
sar     eax, 18h
mov     edx, ds:(funcs_4D55E7+6)[eax*4]
sar     edx, 10h
mov     eax, [esi+16h]
sar     eax, 10h
cmp     eax, edx
jl      short loc_4D5A27

loc_4D5A00:
mov     byte ptr [esi+0Dh], 8
jmp     short loc_4D5A2D

loc_4D5A06:
cmp     bx, 400h
jnz     short loc_4D5A27
mov     eax, [esi+9]
sar     eax, 18h
mov     edx, ds:(funcs_4D55E7+6)[eax*4]
sar     edx, 10h
mov     eax, [esi+12h]
sar     eax, 10h
cmp     eax, edx
jle     short loc_4D5A00

loc_4D5A27:
cmp     byte ptr [esi+0Dh], 8
jnz     short loc_4D5A64

loc_4D5A2D:
mov     edx, [esi+9]
sar     edx, 18h
cmp     ds:word_5397FA[edx*4], 0
jnz     short loc_4D5A4A
mov     eax, esi
call    sub_4DE371
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4D5A4A:
inc     byte ptr [esi+0Ch]
jmp     short loc_4D5A64

loc_4D5A4F:
mov     edx, [esi+9]
sar     edx, 18h
mov     ax, word ptr ds:(funcs_4D55E7+6)[edx*4]
add     [esi+56h], ax
dec     byte ptr [esi+0Dh]

loc_4D5A64:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, 200h
mov     eax, esi
call    sub_4D5911
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5954 endp




sub_4D5A9D proc near
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D5AB7[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4D5A9D endp




sub_4D5AC2 proc near
push    ebx
push    edx
lea     edx, [eax+0DCh]
or      byte ptr [eax], 2
mov     word ptr [eax+54h], 0
mov     word ptr [eax+56h], 0
mov     word ptr [eax+58h], 0
mov     dword ptr [eax+44h], 0
mov     dword ptr [eax+48h], 0
mov     dword ptr [eax+64h], 0
mov     dword ptr [eax+70h], 0
mov     dword ptr [eax+74h], 0
mov     dword ptr [eax+88h], 3DC8000Bh
mov     byte ptr [eax+96h], 0A0h
mov     byte ptr [eax+97h], 0C0h
mov     dword ptr [eax+8Ch], 2C808080h
mov     word ptr [eax+98h], 18h
inc     byte ptr [eax+8]
cmp     byte ptr [eax+3], 0
jz      short loc_4D5B3C
mov     byte ptr [eax+9], 0
jmp     short loc_4D5B40

loc_4D5B3C:
mov     byte ptr [eax+9], 1

loc_4D5B40:
mov     word ptr [eax+44h], 0FFD8h
mov     word ptr [eax+46h], 0FFB0h
mov     word ptr [eax+48h], 0FFD8h
mov     word ptr [eax+4Eh], 0Ch
mov     bx, [eax+14h]
mov     [eax+90h], bx
mov     bx, [eax+16h]
mov     [eax+92h], bx
mov     bx, [eax+18h]
mov     [eax+94h], bx
mov     word ptr [eax+6Eh], 1
mov     dword ptr [eax+78h], 0
mov     dword ptr [edx+8], 0
pop     edx
pop     ebx
retn
sub_4D5AC2 endp




sub_4D5B90 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+0DCh]
cmp     dword ptr [ebp+8], 0
jnz     loc_4D5C64
cmp     byte ptr [eax+9], 0
jnz     short loc_4D5C02
mov     ax, [eax+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
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
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
cmp     word ptr [ecx+16h], 0
jl      short loc_4D5C02
mov     word ptr [ecx+16h], 0FFF0h
inc     byte ptr [ecx+9]

loc_4D5C02:
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     edi, ebp
lea     esi, [ecx+14h]
movsd
movsd
push    80h
push    0
push    4080000h
sub     word ptr [ebp+2], 20h ; ' '
lea     eax, [ebp+8]
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     ecx, 0A000h
xor     ebx, ebx
mov     edx, 20h ; ' '
mov     eax, ebp
call    sub_4E01FC
mov     dword ptr [ebp+8], 0
jmp     loc_4D5D14

loc_4D5C64:
cmp     byte ptr [eax+0Ch], 1
jnz     short loc_4D5C71
mov     eax, 52Fh
jmp     short loc_4D5C8A

loc_4D5C71:
mov     dl, [ecx+0Ch]
cmp     dl, 2
jnz     short loc_4D5C80
mov     eax, 52Eh
jmp     short loc_4D5C8A

loc_4D5C80:
cmp     dl, 3
jnz     short loc_4D5C8F
mov     eax, 530h

loc_4D5C8A:
call    sub_47E8B8

loc_4D5C8F:
mov     al, [ecx+0Ah]
test    al, al
jbe     short loc_4D5C9F
cmp     al, 1
jz      short loc_4D5CFD
jmp     loc_4D5D14

loc_4D5C9F:
mov     eax, 609h
call    sub_47E888
test    eax, eax
jnz     short loc_4D5CC1
mov     eax, 609h
call    sub_47E8B8
mov     byte ptr [ebp+10h], 0Bh

loc_4D5CBB:
mov     byte ptr [ecx+0Ah], 1
jmp     short loc_4D5D14

loc_4D5CC1:
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jnz     short loc_4D5CDF
mov     eax, 60Ah
call    sub_47E8B8
mov     byte ptr [ebp+10h], 0Ch
jmp     short loc_4D5CBB

loc_4D5CDF:
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jnz     short loc_4D5D14
mov     eax, 60Bh
call    sub_47E8B8
mov     byte ptr [ebp+10h], 0Dh
jmp     short loc_4D5CBB

loc_4D5CFD:
call    sub_4A0E35
xor     edx, edx
mov     dl, [ebp+10h]
mov     eax, 4
call    sub_4A0E24
inc     byte ptr [ecx+8]

loc_4D5D14:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5B90 endp



; Attributes: thunk

sub_4D5D1B proc near
jmp     sub_4DE371
sub_4D5D1B endp




sub_4D5D20 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D5D2D[edx*4]
mov     dword ptr [ebp+0CCh], 0
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    0
push    4000000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 14h
mov     eax, ebp
call    sub_4ED88B
pop     ebp
jmp     loc_4D5E77
sub_4D5D20 endp




sub_4D5D8F proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ecx+54h], 400h
movsx   ax, byte ptr [ecx+0Fh]
shl     eax, 4
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
lea     ebx, [ecx+8Ch]
mov     eax, ebx
call    sub_4EF184
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+64h], 200h
mov     word ptr [ecx+66h], 80h
mov     dword ptr [ecx+0D8h], 0
mov     eax, [ecx+0D8h]
mov     [ecx+0D4h], eax
mov     [ecx+0D0h], eax
mov     [ecx+0CCh], eax
mov     dword ptr [ecx+0C4h], offset unk_808080
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [ecx+78h], offset unk_539814
mov     eax, ecx
call    sub_42DE56
mov     byte ptr [ecx+74h], 0
inc     byte ptr [ecx+8]

loc_4D5E74:
add     esp, 10h

loc_4D5E77:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5D8F endp




sub_4D5E7D proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
call    sub_4D6068
mov     ah, [ecx+0Ah]
test    ah, ah
jz      short loc_4D5ECF
mov     bx, [ecx+54h]
add     bx, [ecx+64h]
and     bh, 0Fh
mov     [ecx+54h], bx
mov     bx, [ecx+56h]
add     bx, [ecx+66h]
and     bh, 0Fh
mov     [ecx+56h], bx
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+74h], 1
jmp     short loc_4D5ED2

loc_4D5ECF:
mov     [ecx+74h], ah

loc_4D5ED2:
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_1C], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_24], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4D5F90
test    byte ptr [ecx+0CFh], 20h
jz      short loc_4D5F80
call    rand_
mov     edx, eax
xor     dh, ah
and     dl, 0Fh
add     edx, 20h ; ' '
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
add     ebx, 28h ; '('
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
neg     eax
movsx   edx, dx
imul    eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, ebx
neg     eax
shl     eax, 8
mov     [ecx+46h], ax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
neg     eax
imul    edx, eax
sar     edx, 4
mov     [ecx+48h], dx
mov     word ptr [ecx+4Eh], 300h
mov     byte ptr [ecx+0Ah], 1
lea     edx, [ecx+14h]
mov     eax, 138h
call    sub_4D8BC3

loc_4D5F80:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
jmp     loc_4D5E74
sub_4D5E7D endp




sub_4D5F90 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
xor     ebx, ebx
call    sub_42DE56
mov     esi, eax
test    eax, eax
jz      loc_4D6061
test    ah, 10h
jz      loc_4D604A
cmp     word ptr [ecx+46h], 0
jge     short loc_4D5FC1
mov     eax, [ecx+44h]
sar     eax, 10h
neg     eax
jmp     short loc_4D5FC7

loc_4D5FC1:
mov     eax, [ecx+44h]
sar     eax, 10h

loc_4D5FC7:
cmp     eax, 0A00h
jg      short loc_4D600B
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+54h], 400h
mov     ebx, 1
lea     edx, [ecx+14h]
mov     eax, 13Ah
jmp     short loc_4D6052

loc_4D600B:
mov     edx, [ecx+44h]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 5
test    eax, eax
jge     short loc_4D6021
neg     eax

loc_4D6021:
sar     eax, 8
mov     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
sar     eax, 1
mov     [ecx+44h], ax
mov     eax, [ecx+46h]
sar     eax, 10h
sar     eax, 1
mov     [ecx+48h], ax
lea     edx, [ecx+14h]
mov     eax, 139h
jmp     short loc_4D6052

loc_4D604A:
lea     edx, [ecx+14h]
mov     eax, 13Bh

loc_4D6052:
call    sub_4D8BC3
lea     eax, [ecx+44h]
mov     edx, esi
call    sub_42D90F

loc_4D6061:
mov     eax, ebx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D5F90 endp




sub_4D6068 proc near
push    edx
mov     dx, [eax+4Ch]
add     [eax+44h], dx
mov     dx, [eax+4Eh]
add     [eax+46h], dx
mov     dx, [eax+50h]
add     [eax+48h], dx
mov     edx, [eax+42h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4D6097
mov     word ptr [eax+44h], 0A000h
jmp     short loc_4D60A5

loc_4D6097:
cmp     word ptr [eax+44h], 6000h
jle     short loc_4D60A5
mov     word ptr [eax+44h], 6000h

loc_4D60A5:
mov     edx, [eax+44h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4D60BB
mov     word ptr [eax+46h], 0A000h
jmp     short loc_4D60C9

loc_4D60BB:
cmp     word ptr [eax+46h], 6000h
jle     short loc_4D60C9
mov     word ptr [eax+46h], 6000h

loc_4D60C9:
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4D60DF
mov     word ptr [eax+48h], 0A000h
jmp     short loc_4D60ED

loc_4D60DF:
cmp     word ptr [eax+48h], 6000h
jle     short loc_4D60ED
mov     word ptr [eax+48h], 6000h

loc_4D60ED:
mov     edx, [eax+42h]
sar     edx, 10h
shl     edx, 8
add     [eax+1Ch], edx
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 8
add     [eax+20h], edx
mov     edx, [eax+46h]
sar     edx, 10h
shl     edx, 8
add     [eax+24h], edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
pop     edx
retn
sub_4D6068 endp




sub_4D611E proc near
push    edx
push    esi
push    edi
lea     edi, [eax+34h]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [eax+2Ch]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [eax+5Ch]
lea     esi, [eax+54h]
movsd
movsd
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D6140[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4D611E endp




sub_4D614B proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax        ; int
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+88h]
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+48h], 0
mov     ax, [ecx+48h]
mov     [ecx+46h], ax
mov     [ecx+44h], ax
mov     word ptr [ecx+64h], 40h ; '@'
mov     dword ptr [ecx+78h], 0
lea     edi, [ebx+34h]
lea     esi, [ecx+14h]
movsd
movsd
lea     esi, [ebx+4]
lea     eax, [ecx+54h]
mov     edx, esi
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ebx+3Ch], offset unk_808080
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
add     esp, 10h

loc_4D61DF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D614B endp




sub_4D61E5 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_20= word ptr -20h
var_1E= dword ptr -1Eh
var_C= byte ptr -0Ch
var_A= dword ptr -0Ah

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
lea     ecx, [eax+88h]
call    sub_4D62B9
lea     edi, [ecx+34h]
lea     esi, [ebp+14h]
movsd
movsd
add     ecx, 4          ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+30h+var_30], edx
mov     [esp+30h+var_2C], edx
mov     [esp+30h+var_28], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
mov     ax, [ebp+56h]
lea     edi, [esp+30h+var_20]
lea     esi, [ebp+14h]
movsd
movsd
movsx   edx, ax
sub     word ptr [esp+30h+var_1E], 50h ; 'P'
mov     eax, edx
call    sub_4EF008
mov     ecx, [esp+0Eh]
sar     ecx, 10h
mov     [esp+30h+var_20], cx
mov     eax, edx
call    sub_4EF003
mov     edx, [esp+1Ch+var_A]
sar     edx, 10h
mov     word ptr [esp+1Ch+var_A+2], dx
push    80h
push    0
push    8880000h
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 80h
lea     eax, [esp+30h+var_C]
call    sub_4E01FC
mov     dword ptr [ebp+0CCh], 0
add     esp, 18h
pop     ebp
jmp     loc_4D61DF
sub_4D61E5 endp




sub_4D62B9 proc near
push    ebx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Ch], 0
jnz     short loc_4D6310
call    sub_4DE13B
test    eax, eax
jz      short loc_4D6313
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     bx, [edx+14h]
mov     [eax+1Ch], bx
mov     bx, [edx+16h]
sub     ebx, 50h ; 'P'
mov     [eax+1Eh], bx
mov     bx, [edx+18h]
sub     ebx, 28h ; '('
mov     [eax+20h], bx
mov     byte ptr [eax+9], 4
mov     byte ptr [edx+0Ch], 8
pop     edx
pop     ebx
retn

loc_4D6310:
dec     byte ptr [edx+0Ch]

loc_4D6313:
pop     edx
pop     ebx
retn
sub_4D62B9 endp




sub_4D6316 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4D631F[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4D6316 endp




sub_4D6330 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_539830
test    byte ptr [ecx+3], 40h
jz      short loc_4D636C
mov     ax, [ecx+66h]
jmp     short loc_4D637C

loc_4D636C:
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
call    sub_42A85C

loc_4D637C:
mov     [esp+2Ch+var_1C], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+2Ch+var_1A], ax
xor     edx, edx
mov     [esp+2Ch+var_18], dx
test    byte ptr [ecx+3], 40h
jz      short loc_4D63BB

loc_4D639A:
call    rand_
xor     ah, ah
and     al, 7
sub     eax, 4
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 7
sub     eax, 4
jmp     short loc_4D640C

loc_4D63BB:
mov     al, ds:byte_5F896C
cmp     al, 1
jb      short loc_4D63C8
jbe     short loc_4D639A
jmp     short loc_4D63ED

loc_4D63C8:
test    al, al
jnz     short loc_4D63ED
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 2
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 3
sub     eax, 2
jmp     short loc_4D640C

loc_4D63ED:
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8
add     eax, eax
add     [esp+2Ch+var_1C], ax
call    rand_
xor     ah, ah
and     al, 0Fh
sub     eax, 8

loc_4D640C:
add     eax, eax
add     [esp+2Ch+var_1A], ax
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_24], edx
mov     [esp+2Ch+var_2C], edx
mov     edx, esp
mov     eax, esi
call    sub_4EF689
xor     ebx, ebx
mov     [esp+2Ch+var_1C], bx
mov     [esp+2Ch+var_1A], bx
mov     [esp+2Ch+var_18], 0F000h
mov     ebx, esp
lea     edx, [esp+2Ch+var_1C]
mov     eax, esi
call    sub_4EF1FB
mov     edx, [esp+2Ch+var_2C]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
test    byte ptr [ecx+3], 40h
jz      short loc_4D64AB
mov     [ecx+44h], ax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+2Ch+var_24]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
jmp     short loc_4D651E

loc_4D64AB:
cmp     ds:byte_5F896B, 3
jl      short loc_4D64ED
mov     eax, [esp+2Ch+var_2C]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [esp+2Ch+var_28]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [esp+2Ch+var_24]
shl     eax, 3
mov     edx, eax
shl     eax, 4
sub     eax, edx
jmp     short loc_4D651E

loc_4D64ED:
mov     [ecx+44h], ax
mov     edx, [esp+2Ch+var_28]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+2Ch+var_24]
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2

loc_4D651E:
sar     eax, 4
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+7Ch], 0
lea     edx, [ecx+88h]
test    byte ptr [ecx+3], 40h
jz      short loc_4D6582
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 6
mov     esi, eax
shl     eax, 3
sub     eax, esi
add     [ecx+24h], eax

loc_4D6582:
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [edx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [edx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [edx+38h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
mov     dword ptr [edx+3Ch], 2808080h
mov     byte ptr [ecx+2], 82h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 2Eh ; '.'
mov     edx, 2
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     [ecx+0Bh], al
inc     byte ptr [ecx+8]
xor     edx, edx
mov     eax, ecx
call    sub_4D67C5
mov     eax, ecx
call    sub_4D66EE
lea     edx, [ecx+14h]
mov     eax, 120h
call    sub_4D8BC3
add     esp, 18h

loc_4D660B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4D6330 endp




sub_4D6611 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     edx, edx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4D6629
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4D6650

loc_4D6629:
test    byte ptr [ecx+3], 40h
jz      short loc_4D6638
mov     eax, ecx
call    sub_4DE371
jmp     short loc_4D663F

loc_4D6638:
mov     eax, ecx
call    sub_4DE3AC

loc_4D663F:
mov     edx, 1
mov     eax, ecx
call    sub_4D67C5
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D6650:
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     eax, [ecx+88h]
mov     dl, [ecx+0Bh]
mov     dh, dl
dec     dh
mov     [ecx+0Bh], dh
test    dl, dl
ja      short loc_4D6694
test    byte ptr [ecx+3], 40h
jz      short loc_4D6688
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D6688:
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4D6694:
mov     edx, [ecx+42h]
sar     edx, 10h
shl     edx, 8
add     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 8
add     [ecx+20h], edx
mov     edx, [ecx+46h]
sar     edx, 10h
shl     edx, 8
add     [ecx+24h], edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
mov     eax, ecx
call    sub_4D66EE
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4D6611 endp




sub_4D66EE proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edx, 2
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
mov     ax, [ecx+14h]
add     eax, eax
mov     bx, [ecx+2Ch]
sub     eax, ebx
mov     [esp+1Ch+var_1C], ax
mov     ax, [ecx+16h]
add     eax, eax
mov     si, [ecx+2Eh]
sub     eax, esi
mov     [esp+1Ch+var_1A], ax
mov     ax, [ecx+18h]
add     eax, eax
mov     di, [ecx+30h]
sub     eax, edi
mov     [esp+1Ch+var_18], ax
cmp     ds:byte_5F84D5, 0
jnz     short loc_4D6749
mov     edx, 1000h

loc_4D6749:
lea     ebx, [ecx+14h]
lea     eax, [ecx+0D4h]
test    byte ptr [ecx+3], 40h
jz      short loc_4D6772
push    80h
push    0
push    8000005h
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    0A000h
jmp     short loc_4D67A8

loc_4D6772:
or      edx, 8000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4D6794
push    80h
push    0
push    edx
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    6000h
jmp     short loc_4D67A8

loc_4D6794:
push    80h
push    0
push    edx
push    eax
xor     eax, eax
mov     al, [ecx+1]
push    eax
push    4000h

loc_4D67A8:
push    200h
mov     ecx, 20h ; ' '
mov     edx, ecx
lea     eax, [esp+38h+var_1C]
call    sub_4E02CB
add     esp, 8
jmp     loc_4D660B
sub_4D66EE endp




sub_4D67C5 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
call    sub_4DE13B
test    eax, eax
jz      loc_4D686E
lea     edx, [eax+28h]
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 85h
mov     si, [ecx+14h]
mov     [eax+1Ch], si
mov     si, [ecx+16h]
mov     [eax+1Eh], si
mov     si, [ecx+18h]
mov     [eax+20h], si
mov     si, [ecx+44h]
mov     [edx+8], si
mov     si, [ecx+46h]
mov     [edx+0Ah], si
mov     si, [ecx+48h]
mov     [edx+0Ch], si
mov     dl, [ecx+3]
cmp     dl, 40h ; '@'
jnz     short loc_4D6835
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h

loc_4D6827:
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4D6830:
add     bl, 10h
jmp     short loc_4D686B

loc_4D6835:
cmp     dl, 41h ; 'A'
jnz     short loc_4D6848
mov     edx, [ecx+62h]
sar     edx, 10h
sub     edx, 400h
jmp     short loc_4D6827

loc_4D6848:
cmp     dl, 42h ; 'B'
jnz     short loc_4D6856
mov     dword ptr [eax+40h], 0FFFFh
jmp     short loc_4D6830

loc_4D6856:
mov     edx, [ecx+62h]
sar     edx, 10h
add     edx, 400h
and     edx, 0FFFh
mov     [eax+40h], edx

loc_4D686B:
mov     [eax+3], bl

loc_4D686E:
pop     esi
pop     ecx
pop     ebx
retn
sub_4D67C5 endp




sub_4D6872 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4D6878[edx*4]
pop     edx
retn
sub_4D6872 endp




sub_4D6881 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 46h
mov     [ecx], ah
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Fh], 0
mov     eax, ecx
call    sub_4D6946
mov     dword ptr [ecx+0C4h], 2202020h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     eax, eax

loc_4D68BC:
mov     edx, eax
mov     dword ptr [ecx+edx*4+0DCh], 0
inc     eax
cmp     eax, 10h
jl      short loc_4D68BC
mov     dword ptr [ecx+78h], offset unk_539844
mov     eax, ecx
call    sub_4D6B42
pop     edx
pop     ecx
retn
sub_4D6881 endp




sub_4D68E0 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Fh], 40h ; '@'
jge     short loc_4D68F0
add     byte ptr [edx+0Fh], 8
jmp     short loc_4D68F4

loc_4D68F0:
mov     byte ptr [edx+0Fh], 40h ; '@'

