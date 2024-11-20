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

