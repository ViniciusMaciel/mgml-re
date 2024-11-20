pop     edx
retn
sub_49C4E3 endp




sub_49C50D proc near
push    edx
mov     dword ptr [eax+0A4h], offset unk_52C5F8
mov     byte ptr [eax+0Bh], 0
mov     dl, [eax+0Bh]
mov     [eax+0Ah], dl
mov     dword ptr [eax+0Ch], 0
mov     byte ptr [eax+7], 0
mov     byte ptr [eax+0Ah], 0
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 246h
call    sub_47EA91
pop     edx
retn
sub_49C50D endp




sub_49C54C proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49C55C
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49C55C:
pop     edx
retn
sub_49C54C endp

align 10h
jpt_49C58C dd offset loc_49C593 ; jump table for switch statement
dd offset loc_49C5A1
dd offset loc_49C5DA
dd offset loc_49C5F1
dd offset loc_49C645
dd offset loc_49C692



sub_49C578 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49C58C      ; jumptable 0049C58C default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_49C58C[ecx*4] ; switch jump

loc_49C593:             ; jumptable 0049C58C case 0
mov     eax, edx
call    sub_49C50D
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49C5A1:             ; jumptable 0049C58C case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49C58C      ; jumptable 0049C58C default case
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [edx+4]
mov     eax, 1
call    sub_49E0D7
pop     edx
pop     ecx
pop     ebx
retn

loc_49C5DA:             ; jumptable 0049C58C case 2
cmp     ds:word_6E23D6, 0
jnz     def_49C58C      ; jumptable 0049C58C default case

loc_49C5E8:
inc     al
mov     [edx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_49C5F1:             ; jumptable 0049C58C case 3
cmp     byte ptr [edx+8], 0FFh
jz      short loc_49C5E8
call    sub_47EBCB
test    eax, eax
jz      short loc_49C62A
mov     cl, [edx+0Ah]
cmp     cl, 1
jnz     short loc_49C62A
cmp     ds:word_6E23D6, 0
jnz     short loc_49C62A
xor     eax, eax
call    sub_4A0E75
mov     eax, 9
call    sub_49E0D7
add     [edx+4], cl
pop     edx
pop     ecx
pop     ebx
retn

loc_49C62A:
mov     eax, edx
call    sub_49C54C
cmp     byte ptr [edx+7], 0
jz      short loc_49C63C
call    sub_49DBD1

loc_49C63C:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_49C645:             ; jumptable 0049C58C case 4
cmp     ds:word_6E23D6, 0
jnz     short def_49C58C ; jumptable 0049C58C default case
mov     eax, 1
call    sub_49E0D7
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
inc     byte ptr [edx+4]
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, 0Fh
call    sub_47EEAE
call    sub_42A66D
pop     edx
pop     ecx
pop     ebx
retn

loc_49C692:             ; jumptable 0049C58C case 5
cmp     ds:word_6E23D6, 0
jnz     short def_49C58C ; jumptable 0049C58C default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr [edx], 0

def_49C58C:             ; jumptable 0049C58C default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49C578 endp




sub_49C6AD proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_49C6D2
xor     eax, eax
mov     al, [ecx+6]
add     eax, 243h
call    sub_47EA91
mov     edx, 49h ; 'I'
xor     eax, eax
call    sub_4A0E24

loc_49C6D2:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C6EE
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
call    sub_49DF64

loc_49C6EE:
pop     edx
pop     ecx
retn
sub_49C6AD endp




sub_49C6F1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_49C7E2
xor     edx, edx
mov     dl, [eax+6]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52C65E
call    sub_49DB4D
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C628[eax]
mov     word ptr ds:dword_5F889A+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C62C[eax]
mov     word ptr ds:dword_5F889E, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C630[eax]
mov     word ptr ds:dword_5F889E+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C628[eax]
shl     eax, 10h
mov     ds:dword_5F888C, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C62C[eax]
shl     eax, 10h
mov     ds:dword_5F8890, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C630[eax]
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, ds:word_52C634[eax]
mov     word ptr ds:dword_5F88A4+2, ax
mov     byte ptr [ecx+7], 1
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+6]
mov     eax, ds:off_52C802[eax*4]
mov     ds:dword_77E6B4, eax
mov     eax, 1
call    sub_49E0D7
call    sub_49DF64

loc_49C7E2:
pop     edx
pop     ecx
pop     ebx

locret_49C7E5:
retn
sub_49C6F1 endp




sub_49C7E6 proc near
cmp     ds:word_6E23D6, 0
jnz     short locret_49C7E5
mov     byte ptr [eax+0Ah], 1
jmp     sub_49DF64
sub_49C7E6 endp




sub_49C7F9 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_49C829
mov     edx, 4Ah ; 'J'
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Eh], 8
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Dh], 1

loc_49C829:
cmp     dword ptr [ecx+10h], 3Dh ; '='
jnz     short loc_49C834
call    sub_49DF64

loc_49C834:
pop     edx
pop     ecx

locret_49C836:
retn
sub_49C7F9 endp




sub_49C837 proc near
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short locret_49C836
cmp     dword ptr [eax+10h], 0B5h
jle     short locret_49C836
jmp     sub_49DF64
sub_49C837 endp




sub_49C84E proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 1
jnz     short loc_49C89F
call    sub_49CBBF
cmp     al, 0FFh
jz      short loc_49C88A
mov     edx, 4Bh ; 'K'
xor     eax, eax
call    sub_4A0E24
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Eh], 8
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
mov     byte ptr [eax+0Dh], 1
pop     edx
pop     ecx
retn

loc_49C88A:
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+4], 4
pop     edx
pop     ecx
retn

loc_49C89F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_49C8BB
mov     eax, 9
call    sub_49E0D7
mov     byte ptr [ecx+0Ah], 0
call    sub_49DF64

loc_49C8BB:
pop     edx
pop     ecx
retn
sub_49C84E endp




sub_49C8BE proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     loc_49C9EC
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
call    sub_49CBBF
mov     [ecx+6], al
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_52C65E
call    sub_49DB4D
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C628[eax]
mov     word ptr ds:dword_5F889A+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C62C[eax]
mov     word ptr ds:dword_5F889E, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, word ptr ds:dword_52C630[eax]
mov     word ptr ds:dword_5F889E+2, ax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C628[eax]
shl     eax, 10h
mov     ds:dword_5F888C, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C62C[eax]
shl     eax, 10h
mov     ds:dword_5F8890, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     eax, ds:dword_52C630[eax]
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     eax, eax
mov     al, [ecx+6]
shl     eax, 4
mov     ax, ds:word_52C634[eax]
mov     word ptr ds:dword_5F88A4+2, ax
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+6]
mov     eax, ds:off_52C802[eax*4]
mov     ds:dword_77E6B4, eax
mov     eax, 1
call    sub_49E0D7
mov     byte ptr [ecx+4], 3
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     dword ptr [ecx+0A4h], offset unk_52C81E
xor     eax, eax
mov     al, [ecx+6]
add     eax, 243h
call    sub_47EA91

loc_49C9EC:
pop     edx
pop     ecx
pop     ebx
retn
sub_49C8BE endp




sub_49C9F0 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dword ptr [eax+0A4h], offset unk_52C80E
mov     byte ptr [eax+0Bh], 0
mov     al, [eax+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+7], 0
mov     byte ptr [ecx+0Ah], 0
mov     edx, 5
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_49CBBF
mov     [ecx+6], al
mov     eax, ecx
call    sub_49CBF5
pop     edx
pop     ecx
retn
sub_49C9F0 endp




sub_49CA38 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49CA48
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49CA48:
pop     edx
retn
sub_49CA38 endp

db 8Dh, 40h, 0
jpt_49CA79 dd offset loc_49CA80 ; jump table for switch statement
dd offset loc_49CA8E
dd offset loc_49CAC7
dd offset loc_49CADE
dd offset loc_49CB32
dd offset loc_49CBA4



sub_49CA65 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 5           ; switch 6 cases
ja      def_49CA79      ; jumptable 0049CA79 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49CA79[edx*4] ; switch jump

loc_49CA80:             ; jumptable 0049CA79 case 0
mov     eax, ecx
call    sub_49C9F0
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49CA8E:             ; jumptable 0049CA79 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_49CA79      ; jumptable 0049CA79 default case
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ecx+4]
mov     eax, 1
call    sub_49E0D7
pop     edx
pop     ecx
pop     ebx
retn

loc_49CAC7:             ; jumptable 0049CA79 case 2
cmp     ds:word_6E23D6, 0
jnz     def_49CA79      ; jumptable 0049CA79 default case

loc_49CAD5:
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_49CADE:             ; jumptable 0049CA79 case 3
cmp     byte ptr [ecx+8], 0FFh
jz      short loc_49CAD5
call    sub_47EBCB
test    eax, eax
jz      short loc_49CB17
mov     bl, [ecx+0Ah]
cmp     bl, 1
jnz     short loc_49CB17
cmp     ds:word_6E23D6, 0
jnz     short loc_49CB17
xor     eax, eax
call    sub_4A0E75
mov     eax, 9
call    sub_49E0D7
add     [ecx+4], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_49CB17:
mov     eax, ecx
call    sub_49CA38
cmp     byte ptr [ecx+7], 0
jz      short loc_49CB29
call    sub_49DBD1

loc_49CB29:
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_49CB32:             ; jumptable 0049CA79 case 4
cmp     ds:word_6E23D6, 0
jnz     def_49CA79      ; jumptable 0049CA79 default case
mov     eax, 243h
call    sub_47EA91
mov     eax, 244h
call    sub_47EA91
mov     eax, 245h
call    sub_47EA91
mov     eax, 1
call    sub_49E0D7
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
inc     byte ptr [ecx+4]
xor     eax, eax
mov     al, [ecx+6]
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
mov     edx, 0Ah
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     eax, ecx
call    sub_49CC30
call    sub_42A66D
pop     edx
pop     ecx
pop     ebx
retn

loc_49CBA4:             ; jumptable 0049CA79 case 5
cmp     ds:word_6E23D6, 0
jnz     short def_49CA79 ; jumptable 0049CA79 default case
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr [ecx], 0

def_49CA79:             ; jumptable 0049CA79 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_49CA65 endp




sub_49CBBF proc near
mov     eax, 243h
call    sub_47E888
test    eax, eax
jz      short loc_49CBD0
xor     al, al
retn

loc_49CBD0:
mov     eax, 244h
call    sub_47E888
test    eax, eax
jz      short loc_49CBE1
mov     al, 1
retn

loc_49CBE1:
mov     eax, 245h
call    sub_47E888
test    eax, eax
jz      short loc_49CBF2
mov     al, 2
retn

loc_49CBF2:
mov     al, 0FFh
retn
sub_49CBBF endp




sub_49CBF5 proc near
push    edx
mov     edx, eax
mov     eax, 243h
call    sub_47E888
test    eax, eax
jz      short loc_49CC0A
or      byte ptr [edx+5], 1

loc_49CC0A:
mov     eax, 244h
call    sub_47E888
test    eax, eax
jz      short loc_49CC1C
or      byte ptr [edx+5], 2

loc_49CC1C:
mov     eax, 245h
call    sub_47E888
test    eax, eax
jz      short loc_49CC2E
or      byte ptr [edx+5], 4

loc_49CC2E:
pop     edx
retn
sub_49CBF5 endp




sub_49CC30 proc near
push    edx
mov     edx, eax
test    byte ptr [eax+5], 1
jz      short loc_49CC46
mov     eax, ds:dword_52C656
sar     eax, 10h
call    sub_47EEAE

loc_49CC46:
test    byte ptr [edx+5], 2
jz      short loc_49CC59
mov     eax, ds:dword_52C656+2
sar     eax, 10h
call    sub_47EEAE

loc_49CC59:
test    byte ptr [edx+5], 4
jz      short loc_49CC6C
mov     eax, ds:dword_52C65A
sar     eax, 10h
call    sub_47EEAE

loc_49CC6C:
pop     edx
retn
sub_49CC30 endp

word_49CC6E dw 1637h
dword_49CC70 dd 4E3AFFFFh, 8DC30000h
db 40h, 0
jpt_49CCAC dd offset loc_49CCB3 ; jump table for switch statement
dd offset loc_49CD22
dd offset loc_49CD3B
dd offset loc_49CD4B
dd offset loc_49CD91
dd offset loc_49CD9D



sub_49CC92 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     al, [eax+0Dh]
cmp     al, 5           ; switch 6 cases
ja      def_49CCAC      ; jumptable 0049CCAC default case
xor     edx, edx
mov     dl, al
jmp     jpt_49CCAC[edx*4] ; switch jump

loc_49CCB3:             ; jumptable 0049CCAC case 0
mov     word ptr [ebp+538h], 174Bh
mov     word ptr [ebp+53Ah], 0FFFFh
mov     word ptr [ebp+53Ch], 4DA0h
mov     eax, [ebp+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+528h], eax
mov     eax, [ebp+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+52Ch], eax
mov     eax, [ebp+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+530h], eax
mov     word ptr [ebp+540h], 0
mov     word ptr [ebp+542h], 524h
mov     word ptr [ebp+544h], 0
inc     byte ptr [ebp+0Dh]

loc_49CD22:             ; jumptable 0049CCAC case 1
mov     byte ptr [ebp+548h], 30h ; '0'
mov     dword ptr [ebp+184h], 0

loc_49CD33:
inc     byte ptr [ebp+0Dh]
jmp     def_49CCAC      ; jumptable 0049CCAC default case

loc_49CD3B:             ; jumptable 0049CCAC case 2
cmp     ds:byte_560BE5, 3
jnz     short def_49CCAC ; jumptable 0049CCAC default case
inc     al
mov     [ebp+0Dh], al
jmp     short def_49CCAC ; jumptable 0049CCAC default case

loc_49CD4B:             ; jumptable 0049CCAC case 3
mov     edi, esp
mov     esi, offset word_49CC6E
movsd
movsd
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ebp+14h]
mov     ecx, 40h ; '@'
mov     edx, esp
call    sub_4DE552
mov     dx, [ebp+542h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+542h], dx
test    ax, ax
jnz     short def_49CCAC ; jumptable 0049CCAC default case
mov     byte ptr [ebp+548h], 0Ch
inc     byte ptr [ebp+0Dh]
mov     byte ptr [ebp+0Eh], 0Ah
jmp     short def_49CCAC ; jumptable 0049CCAC default case

loc_49CD91:             ; jumptable 0049CCAC case 4
mov     ah, [ebp+0Eh]
dec     ah
mov     [ebp+0Eh], ah
jnz     short def_49CCAC ; jumptable 0049CCAC default case
jmp     short loc_49CD33

loc_49CD9D:             ; jumptable 0049CCAC case 5
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4DD47D

def_49CCAC:             ; jumptable 0049CCAC default case
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49CC92 endp




sub_49CDB7 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49CDC1[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49CDB7 endp




sub_49CDE7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C850
mov     dword ptr [ecx+0A4h], offset unk_52C8F8
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49CDE7 endp




sub_49CE26 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49CE36
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49CE36:
pop     edx
retn
sub_49CE26 endp




sub_49CE38 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49CE60
jbe     short loc_49CEA1
cmp     al, 0Ah
jb      loc_49CF14
jbe     loc_49CECA
cmp     al, 0Bh
jz      loc_49CEF6
pop     edx
pop     ecx
pop     ebx
retn

loc_49CE60:
test    al, al
ja      short loc_49CE84
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49CF14
mov     eax, edx
call    sub_49CDE7
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49CE84:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49CE94
inc     al
mov     [edx+4], al

loc_49CE94:
call    sub_47EBCB
test    eax, eax
jz      short loc_49CEA1
mov     byte ptr [edx+4], 0Ah

loc_49CEA1:
mov     eax, edx
call    sub_49CE26
mov     eax, offset byte_5F8364
call    sub_49CDB7
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49CF14
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49CECA:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
call    sub_4E1D8A
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
mov     eax, [edx+24h]
and     byte ptr [eax+6], 0FEh
add     [edx+4], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_49CEF6:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     ds:byte_77E805, 1
mov     byte ptr [edx], 0
mov     eax, 45h ; 'E'
call    sub_47E8B8

loc_49CF14:
pop     edx
pop     ecx
pop     ebx
retn
sub_49CE38 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_72]
align 4
jpt_49CF53 dd offset loc_49CF5A ; jump table for switch statement
dd offset loc_49CFD9
dd offset loc_49D009
dd offset loc_49D028
dd offset loc_49D03D
dd offset loc_49D075
dd offset loc_49D028



sub_49CF38 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edi, offset dword_560BDC
mov     al, [eax+0Dh]
cmp     al, 6           ; switch 7 cases
ja      def_49CF53      ; jumptable 0049CF53 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49CF53[edx*4] ; switch jump

loc_49CF5A:             ; jumptable 0049CF53 case 0
mov     word ptr [esi+538h], 16F7h
mov     word ptr [esi+53Ah], 0FFFFh
mov     word ptr [esi+53Ch], 4E9Ah
mov     eax, [esi+536h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+528h], eax
mov     eax, [esi+538h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+52Ch], eax
mov     eax, [esi+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [esi+530h], eax
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 0C1Ch
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
mov     dword ptr [esi+184h], 0
jmp     short loc_49D01F

loc_49CFD9:             ; jumptable 0049CF53 case 1
mov     edx, ds:dword_560C04
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+542h]
and     ah, 0Fh
mov     [esi+542h], ax
inc     byte ptr [esi+0Dh]

loc_49D009:             ; jumptable 0049CF53 case 2
cmp     byte ptr [edi+9], 1
jnz     def_49CF53      ; jumptable 0049CF53 default case
mov     edx, 0B3h

loc_49D018:
xor     eax, eax
call    sub_4A0E24

loc_49D01F:
inc     byte ptr [esi+0Dh]

def_49CF53:             ; jumptable 0049CF53 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49D028:             ; jumptable 0049CF53 cases 3,6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49CF53 ; jumptable 0049CF53 default case
inc     al
mov     [esi+0Dh], al
call    sub_49DF64
jmp     short def_49CF53 ; jumptable 0049CF53 default case

loc_49D03D:             ; jumptable 0049CF53 case 4
cmp     ds:byte_560BE5, 5
jnz     short def_49CF53 ; jumptable 0049CF53 default case
mov     edx, ds:dword_560C00
mov     ebx, [esi+54h]
sar     ebx, 10h
add     edx, 14h
lea     eax, [esi+14h]
mov     ecx, 800h
call    sub_4DE552
add     ax, [esi+542h]
and     ah, 0Fh
mov     [esi+542h], ax
jmp     short loc_49D01F

loc_49D075:             ; jumptable 0049CF53 case 5
cmp     ds:byte_560BE5, 6
jnz     short def_49CF53 ; jumptable 0049CF53 default case
mov     edx, 0B8h
jmp     short loc_49D018
sub_49CF38 endp




sub_49D085 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49D08F[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49D085 endp




sub_49D0B5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C924
mov     dword ptr [ecx+0A4h], offset unk_52C9A0
mov     eax, offset unk_52C978
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     eax, offset unk_52C98C
call    sub_49DB4D
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49D0B5 endp




sub_49D10C proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49D11C
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49D11C:
pop     edx
retn
sub_49D10C endp




sub_49D11E proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49D146
jbe     short loc_49D18C
cmp     al, 0Ah
jb      loc_49D207
jbe     loc_49D1B5
cmp     al, 0Bh
jz      loc_49D1EE
pop     edx
pop     ecx
pop     ebx
retn

loc_49D146:
test    al, al
ja      short loc_49D16F
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49D207
mov     eax, edx
call    sub_49D0B5
call    sub_49DBD1
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49D16F:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49D17F
inc     al
mov     [edx+4], al

loc_49D17F:
call    sub_47EBCB
test    eax, eax
jz      short loc_49D18C
mov     byte ptr [edx+4], 0Ah

loc_49D18C:
mov     eax, edx
call    sub_49D10C
mov     eax, offset byte_5F8364
call    sub_49D085
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49D207
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49D1B5:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     bl, 1
mov     byte ptr ds:dword_77E954, bl
call    sub_42A66D
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+24h]
mov     byte ptr [eax+8], 8
mov     eax, 52Ah
call    sub_47E8B8
add     [edx+4], bl
pop     edx
pop     ecx
pop     ebx
retn

loc_49D1EE:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42AC90
mov     byte ptr [edx], 0

loc_49D207:
pop     edx
pop     ecx
pop     ebx
retn
sub_49D11E endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_73]
db 8Dh, 40h, 0
jpt_49D236 dd offset loc_49D23D ; jump table for switch statement
dd offset loc_49D2C0
dd offset loc_49D2D3
dd offset loc_49D2E8
dd offset loc_49D2FD



sub_49D223 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Dh]
cmp     al, 4           ; switch 5 cases
ja      def_49D236      ; jumptable 0049D236 default case
xor     edx, edx
mov     dl, al
jmp     jpt_49D236[edx*4] ; switch jump

loc_49D23D:             ; jumptable 0049D236 case 0
mov     word ptr [ecx+538h], 206h
mov     word ptr [ecx+53Ah], 0FCFFh
mov     word ptr [ecx+53Ch], 90Fh
mov     edx, [ecx+536h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+528h], edx
mov     edx, [ecx+538h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+52Ch], edx
mov     edx, [ecx+53Ah]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+530h], edx
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 0
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     dword ptr [ecx+184h], 0

loc_49D2BA:
inc     byte ptr [ecx+0Dh]

def_49D236:             ; jumptable 0049D236 default case
pop     edx
pop     ecx
retn

loc_49D2C0:             ; jumptable 0049D236 case 1
mov     ah, ds:byte_560BE5
cmp     ah, 1
jnz     short def_49D236 ; jumptable 0049D236 default case
add     al, ah
mov     [ecx+0Dh], al
pop     edx
pop     ecx
retn

loc_49D2D3:             ; jumptable 0049D236 case 2
mov     edx, 13h
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+548h], 32h ; '2'
jmp     short loc_49D2BA

loc_49D2E8:             ; jumptable 0049D236 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49D236 ; jumptable 0049D236 default case
inc     al
mov     [ecx+0Dh], al
mov     byte ptr [ecx+0Eh], 0Ah
pop     edx
pop     ecx
retn

loc_49D2FD:             ; jumptable 0049D236 case 4
mov     ah, [ecx+0Eh]
dec     ah
mov     [ecx+0Eh], ah
jnz     short def_49D236 ; jumptable 0049D236 default case
call    sub_49DF64
jmp     short loc_49D2BA
sub_49D223 endp




sub_49D30E proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49D318[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49D30E endp




sub_49D33E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52C9F4
mov     dword ptr [ecx+0A4h], offset unk_52CB04
mov     eax, offset unk_52CAB4
call    sub_49DB4D
mov     eax, offset unk_52CAC8
call    sub_49DB4D
mov     eax, offset unk_52CADC
call    sub_49DB4D
mov     eax, offset unk_52CAF0
call    sub_49DB4D
mov     byte ptr ds:dword_5F836C, 3
xor     dl, dl
mov     byte ptr ds:dword_5F836C+1, dl
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49D33E endp




sub_49D3A5 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49D3B5
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49D3B5:
pop     edx
retn
sub_49D3A5 endp




sub_49D3B7 proc near
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49D3DD
jbe     short loc_49D422
cmp     al, 0Ah
jb      loc_49D4A2
jbe     loc_49D44A
cmp     al, 0Bh
jz      loc_49D471
pop     edx
pop     ecx
retn

loc_49D3DD:
test    al, al
ja      short loc_49D405
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49D4A2
mov     eax, edx
call    sub_49D33E
call    sub_49DBD1
inc     byte ptr [edx+4]
pop     edx
pop     ecx
retn

loc_49D405:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49D415
inc     al
mov     [edx+4], al

loc_49D415:
call    sub_47EBCB
test    eax, eax
jz      short loc_49D422
mov     byte ptr [edx+4], 0Ah

loc_49D422:
mov     eax, edx
call    sub_49D3A5
mov     eax, offset byte_5F8364
call    sub_49D30E
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49D4A2
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
retn

loc_49D44A:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
call    sub_4E1D8A
inc     byte ptr [edx+4]
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, [edx+28h]
call    sub_4DE2F6
pop     edx
pop     ecx
retn

loc_49D471:
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     eax, [edx+30h]
call    sub_4DE2F6
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     byte ptr [edx], 0
xor     dl, dl
mov     byte ptr ds:dword_77E5EC, dl

loc_49D4A2:
pop     edx
pop     ecx
retn
sub_49D3B7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_74]
db 8Dh, 40h, 0
jpt_49D4E9 dd offset loc_49D4F0 ; jump table for switch statement
dd offset loc_49D572
dd offset loc_49D591
dd offset loc_49D5A1
dd offset loc_49D591
dd offset loc_49D5A8
dd offset loc_49D591
dd offset loc_49D5AF
dd offset loc_49D5DF



sub_49D4CD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, ds:dword_560C00
mov     al, [eax+0Dh]
cmp     al, 8           ; switch 9 cases
ja      def_49D4E9      ; jumptable 0049D4E9 default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_49D4E9[ebx*4] ; switch jump

loc_49D4F0:             ; jumptable 0049D4E9 case 0
and     byte ptr [ecx], 0FDh
mov     word ptr [ecx+538h], 0DDF4h
mov     word ptr [ecx+53Ah], 0FDFFh
mov     word ptr [ecx+53Ch], 0EA50h
mov     eax, [ecx+536h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+528h], eax
mov     eax, [ecx+538h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+52Ch], eax
mov     eax, [ecx+53Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+530h], eax
mov     word ptr [ecx+540h], 0
mov     word ptr [ecx+542h], 800h
mov     word ptr [ecx+544h], 0
mov     byte ptr [ecx+548h], 30h ; '0'
mov     dword ptr [ecx+184h], 0
jmp     short loc_49D58C

loc_49D572:             ; jumptable 0049D4E9 case 1
cmp     ds:word_6E23D6, 0
jnz     def_49D4E9      ; jumptable 0049D4E9 default case
mov     edx, 6

loc_49D585:
xor     eax, eax
call    sub_4A0E24

loc_49D58C:
inc     byte ptr [ecx+0Dh]
jmp     short def_49D4E9 ; jumptable 0049D4E9 default case

loc_49D591:             ; jumptable 0049D4E9 cases 2,4,6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_49D4E9 ; jumptable 0049D4E9 default case
inc     al
mov     [ecx+0Dh], al
jmp     short def_49D4E9 ; jumptable 0049D4E9 default case

loc_49D5A1:             ; jumptable 0049D4E9 case 3
mov     edx, 7
jmp     short loc_49D585

loc_49D5A8:             ; jumptable 0049D4E9 case 5
mov     edx, 8
jmp     short loc_49D585

loc_49D5AF:             ; jumptable 0049D4E9 case 7
call    sub_4DE13B
test    eax, eax
jz      short def_49D4E9 ; jumptable 0049D4E9 default case
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd
mov     bx, [edx+16h]
sub     ebx, 64h ; 'd'
mov     [eax+4Ah], bx
mov     eax, edx
call    sub_4DE371
jmp     short loc_49D58C

loc_49D5DF:             ; jumptable 0049D4E9 case 8
inc     al
mov     [ecx+0Dh], al
call    sub_49DF64

def_49D4E9:             ; jumptable 0049D4E9 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49D4CD endp




sub_49D5EF proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
call    ds:funcs_49D5F9[edx*4]
lea     edx, [ecx+538h]
lea     eax, [ecx+528h]
call    sub_4DD57B
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
retn
sub_49D5EF endp




sub_49D61F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_52CB28
mov     dword ptr [ecx+0A4h], offset unk_52CB7C
mov     eax, offset unk_52CB54
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     eax, offset unk_52CB68
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_49D61F endp




sub_49D67A proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_49D68A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_49D68A:
pop     edx
retn
sub_49D67A endp




sub_49D68C proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 2
jb      short loc_49D6B4
jbe     short loc_49D6FA
cmp     al, 0Ah
jb      loc_49D76B
jbe     loc_49D723
cmp     al, 0Bh
jz      loc_49D74B
pop     edx
pop     ecx
pop     ebx
retn

loc_49D6B4:
test    al, al
ja      short loc_49D6DD
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_49D76B
mov     eax, edx
call    sub_49D61F
call    sub_49DBD1
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_49D6DD:
mov     ecx, [edx+0A4h]
cmp     byte ptr [ecx], 0FFh
jnz     short loc_49D6ED
inc     al
mov     [edx+4], al

loc_49D6ED:
call    sub_47EBCB
test    eax, eax
jz      short loc_49D6FA
mov     byte ptr [edx+4], 0Ah

loc_49D6FA:
mov     eax, edx
call    sub_49D67A
mov     eax, offset byte_5F8364
call    sub_49D5EF
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 2
jnz     short loc_49D76B
mov     byte ptr [edx+4], 0Bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49D723:
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1
mov     bh, 1
mov     byte ptr ds:dword_77E954, bh
call    sub_42A66D
mov     eax, [edx+24h]
call    sub_4DE371
add     [edx+4], bh
pop     edx
pop     ecx
pop     ebx
retn

loc_49D74B:
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_77E954, 1
call    sub_42AC90
mov     byte ptr [edx], 0

loc_49D76B:
pop     edx
pop     ecx
pop     ebx
retn
sub_49D68C endp




sub_49D76F proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     eax, offset unk_77E5F4
cmp     ds:byte_77E5F7, 0
jnz     short loc_49D7B8
mov     edx, ds:dword_77E604
add     edx, ds:dword_77E694
sar     edx, 10h
mov     [esp+34h+var_34], edx
mov     edx, dword ptr ds:unk_77E608
add     edx, ds:dword_77E698
sar     edx, 10h
mov     [esp+34h+var_30], edx
mov     edx, ds:dword_77E60C
add     edx, ds:dword_77E69C
jmp     short loc_49D815

loc_49D7B8:
xor     edx, edx
mov     dl, ds:byte_77E5FD
mov     edx, ds:dword_560C00[edx*4]
mov     ecx, [edx+1Ch]
mov     ebx, ds:dword_77E6A4
add     ecx, ebx
mov     ds:dword_77E604, ecx
mov     ecx, [edx+20h]
mov     esi, ds:dword_77E6A8
add     ecx, esi
mov     dword ptr ds:unk_77E608, ecx
mov     edx, [edx+24h]
mov     edi, ds:dword_77E6AC
add     edx, edi
mov     ds:dword_77E60C, edx
mov     edx, ds:dword_77E604
sar     edx, 10h
mov     [esp+34h+var_34], edx
mov     edx, ecx
sar     edx, 10h
mov     [esp+34h+var_30], edx
mov     edx, ds:dword_77E60C

loc_49D815:
sar     edx, 10h
mov     [esp+34h+var_2C], edx
cmp     byte ptr [eax+8], 0
jnz     short loc_49D83D
mov     ecx, [eax+44h]
sar     ecx, 10h
mov     ebx, [eax+40h]
sar     ebx, 10h
mov     edx, [eax+48h]
sar     edx, 10h
mov     eax, esp
call    sub_42984E
jmp     short loc_49D878

loc_49D83D:
mov     edx, [eax+70h]
add     edx, [eax+0A0h]
sar     edx, 10h
mov     [esp+34h+var_24], edx
mov     edx, [eax+74h]
add     edx, [eax+0A4h]
sar     edx, 10h
mov     [esp+34h+var_20], edx
mov     edx, [eax+78h]
add     edx, [eax+0A8h]
sar     edx, 10h
mov     [esp+34h+var_1C], edx
lea     edx, [esp+34h+var_24]
mov     eax, esp
call    sub_4298E1

loc_49D878:
add     esp, 20h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49D76F endp




sub_49D881 proc near
push    ecx
mov     ecx, eax
mov     eax, ds:dword_77E998
shl     eax, 10h
mov     ds:dword_77E604, eax
mov     eax, ds:dword_77E99C
shl     eax, 10h
mov     dword ptr ds:unk_77E608, eax
mov     eax, ds:dword_77E9A0
shl     eax, 10h
mov     ds:dword_77E60C, eax
mov     eax, ds:dword_77E960
and     eax, 0FFFh
shl     eax, 10h
mov     ds:dword_77E634, eax
mov     eax, ds:dword_77E964
and     eax, 0FFFh
shl     eax, 10h
mov     ds:dword_77E638, eax
mov     eax, ds:dword_77E95C
and     eax, 0FFFh
shl     eax, 10h
mov     ds:dword_77E63C, eax
movsx   eax, cx
shl     eax, 10h
mov     ds:dword_77E694, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_77E698, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_77E69C, eax
xor     edx, edx
mov     ds:dword_77E61C, edx
mov     ds:dword_77E618, edx
mov     ds:dword_77E614, edx
mov     ds:dword_77E64C, edx
mov     ds:dword_77E648, edx
mov     ds:dword_77E644, edx
xor     eax, eax
mov     ds:dword_77E67C, edx
mov     ds:dword_77E678, edx
mov     ds:dword_77E674, edx
xor     ah, dh
mov     ds:byte_77E5FC, ah
mov     byte ptr ds:dword_77E954, 3
xor     eax, eax
call    sub_42A701
pop     ecx
retn
sub_49D881 endp

cwde
shl     eax, 10h
mov     ds:dword_77E604, eax
movsx   eax, dx
shl     eax, 10h
mov     dword ptr ds:unk_77E608, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_77E60C, eax
retn
cwde
shl     eax, 10h
mov     ds:dword_77E634, eax
movsx   eax, dx
shl     eax, 10h
mov     ds:dword_77E638, eax
movsx   eax, bx
shl     eax, 10h
mov     ds:dword_77E63C, eax
retn



sub_49D994 proc near
push    esi
mov     esi, edx
mov     edx, ecx
movsx   ebx, bx
movsx   ecx, ax
sub     ebx, ecx
mov     ecx, ebx
movsx   edx, dx
movsx   eax, si
sub     edx, eax
shl     edx, 0Ch
xor     eax, eax
test    ebx, ebx
jge     short loc_49D9BC
imul    ecx, ebx, -1
mov     eax, 2

loc_49D9BC:
test    edx, edx
jge     short loc_49D9C4
imul    edx, -1
inc     eax

loc_49D9C4:
test    ecx, ecx
jnz     short loc_49D9D6
mov     edx, 1
sub     edx, eax
mov     eax, edx
shl     eax, 0Bh
pop     esi
retn

loc_49D9D6:
test    eax, eax
jz      short loc_49D9DF
cmp     eax, 3
jnz     short loc_49D9FC

loc_49D9DF:
mov     ebx, eax
shl     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
mov     edx, ds:dword_52CB98[ebx]
sub     edx, eax
mov     eax, edx
pop     esi
retn

loc_49D9FC:
mov     ebx, eax
shl     ebx, 2
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
call    sub_4EF016
add     eax, ds:dword_52CB98[ebx]
pop     esi
retn
sub_49D994 endp




sub_49DA15 proc near

var_C= dword ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     [esp+0Ch+var_C], edx
mov     eax, ebx
xor     esi, esi
mov     edx, edi
shl     edx, 2
cmp     ebx, 40h ; '@'
jb      short loc_49DA4F
jbe     loc_49DAB8
cmp     ebx, 60h ; '`'
jb      loc_49DB45
jbe     loc_49DAE6
cmp     ebx, 0E0h
jz      short loc_49DABF
jmp     loc_49DB45

loc_49DA4F:
cmp     ebx, 20h ; ' '
jnz     loc_49DB45
call    sub_4DDF54

loc_49DA5D:
test    eax, eax
jz      loc_49DB45
mov     byte ptr [eax], 1
mov     bl, byte ptr [esp+0Ch+var_C]
mov     [eax+2], bl
or      byte ptr [eax+6], 20h
mov     esi, [ecx]
mov     [eax+14h], esi
mov     si, [ecx+4]
mov     [eax+18h], si
mov     word ptr [eax+54h], 0
mov     word ptr [eax+58h], 0
mov     si, [ecx+6]
mov     [eax+56h], si
movsx   esi, word ptr [ecx]
shl     esi, 10h
mov     [eax+1Ch], esi
mov     esi, [ecx]
sar     esi, 10h
shl     esi, 10h
mov     [eax+20h], esi
mov     ecx, [ecx+2]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx
jmp     loc_49DB3D

loc_49DAB8:
call    sub_4DDFD0
jmp     short loc_49DA5D

loc_49DABF:
call    sub_4DE227
test    eax, eax
jz      loc_49DB45
mov     byte ptr [eax], 1
mov     bl, byte ptr [esp+0Ch+var_C]
mov     [eax+2], bl
or      byte ptr [eax+6], 20h
mov     esi, [ecx]
mov     [eax+48h], esi
mov     ecx, [ecx+4]
mov     [eax+4Ch], ecx
jmp     short loc_49DB3D

loc_49DAE6:
call    sub_4DE043
test    eax, eax
jz      short loc_49DB45
mov     byte ptr [eax], 1
mov     bl, byte ptr [esp+0Ch+var_C]
mov     [eax+2], bl
or      byte ptr [eax+6], 20h
mov     esi, [ecx]
mov     [eax+14h], esi
mov     si, [ecx+4]
mov     [eax+18h], si
mov     word ptr [eax+54h], 0
mov     word ptr [eax+58h], 0
mov     si, [ecx+6]
mov     [eax+56h], si
movsx   esi, word ptr [ecx]
shl     esi, 10h
mov     [eax+1Ch], esi
mov     esi, [ecx]
sar     esi, 10h
shl     esi, 10h
mov     [eax+20h], esi
mov     ecx, [ecx+2]
sar     ecx, 10h
shl     ecx, 10h
mov     [eax+24h], ecx

loc_49DB3D:
mov     ds:dword_560C00[edx], eax
mov     esi, eax

loc_49DB45:
mov     eax, esi
add     esp, 4
pop     edi
pop     esi
retn
sub_49DA15 endp




sub_49DB4D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+0Ch]
xor     ebx, ebx
mov     bl, [eax+3]
xor     edx, edx
mov     dl, [eax+1]
xor     eax, eax
mov     al, [esi]
call    sub_49DA15
mov     ecx, eax
test    eax, eax
jz      short loc_49DBA0
mov     dl, [esi+3]
cmp     dl, 40h ; '@'
jb      short loc_49DB87
jbe     short loc_49DB8C
cmp     dl, 60h ; '`'
jb      short loc_49DB9E
jbe     short loc_49DB8C
cmp     dl, 0E0h
jz      short loc_49DB8C
jmp     short loc_49DB9E

loc_49DB87:
cmp     dl, 20h ; ' '
jnz     short loc_49DB9E

loc_49DB8C:
mov     dl, [esi+4]
mov     [eax+3], dl
mov     dl, [esi+2]
mov     [eax+4], dl
mov     edx, [esi+8]
mov     [eax+0Ch], edx

loc_49DB9E:
mov     eax, ecx

loc_49DBA0:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49DB4D endp




sub_49DBA5 proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx]
mov     ecx, ds:dword_560C00[eax*4]
mov     eax, edx
call    sub_49DB4D
and     byte ptr [eax+6], 0DFh
mov     dl, [edx]
and     edx, 0FFh
mov     ds:dword_560C00[edx*4], ecx
pop     edx
pop     ecx
retn
sub_49DBA5 endp




sub_49DBD1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, offset dword_560BDC
mov     edx, offset unk_77E5F4
mov     eax, ds:dword_77E6B4
cmp     dword ptr [eax], 0FFFFFFFFh
jz      loc_49DD1A
xor     esi, esi
jmp     loc_49DC9E

loc_49DBF4:
cmp     eax, 20h ; ' '
jz      loc_49DEB1
jmp     loc_49DC96

loc_49DC02:
cmp     eax, 13h
jb      loc_49DDFC
jbe     loc_49DE1C
cmp     eax, 14h
jbe     loc_49DE3C
mov     eax, [ecx+4]
mov     [edx+70h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+74h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+78h], eax
jmp     loc_49DDD0

loc_49DC3D:
cmp     eax, 3
jb      short loc_49DC6B
jbe     loc_49DD84
cmp     eax, 5
jb      loc_49DD8D
jbe     loc_49DD96
cmp     eax, 6
jbe     loc_49DD9F
cmp     eax, 10h
jz      loc_49DDA8
jmp     short loc_49DC96

loc_49DC6B:
cmp     eax, 1
jb      short loc_49DC7B
jbe     loc_49DCED
jmp     loc_49DD5E

loc_49DC7B:
test    eax, eax
jnz     short loc_49DC96
mov     eax, [ecx]
and     eax, 0FFFFFFh
cmp     eax, [ebx+14h]
ja      loc_49DD1A

loc_49DC8F:
add     dword ptr [edx+0C0h], 4

loc_49DC96:
test    esi, esi
jnz     loc_49DD1A

loc_49DC9E:
mov     ecx, [edx+0C0h]
mov     eax, [ecx]
and     eax, 0FF000000h
shr     eax, 18h
cmp     eax, 11h
jb      short loc_49DC3D
jbe     loc_49DDDC
cmp     eax, 16h
jb      loc_49DC02
jbe     loc_49DE85
cmp     eax, 21h ; '!'
jb      loc_49DBF4
jbe     loc_49DEBB
cmp     eax, 22h ; '"'
jbe     loc_49DEC5
cmp     eax, 0FFh
jz      loc_49DD1A
jmp     short loc_49DC96

loc_49DCED:
mov     eax, [ecx]
and     eax, 0FF0000h
shr     eax, 10h
xor     ecx, ecx
mov     cl, [ebx+8]
cmp     ecx, eax
jnz     loc_49DD1A
mov     eax, [edx+0C0h]
mov     eax, [eax]
and     eax, 0FFFFh
cmp     eax, [ebx+18h]

loc_49DD14:
jz      loc_49DC8F

loc_49DD1A:
mov     eax, [edx+20h]
add     [edx+10h], eax
mov     eax, [edx+24h]
add     [edx+14h], eax
mov     eax, [edx+28h]
add     [edx+18h], eax
mov     eax, [edx+50h]
add     [edx+40h], eax
mov     eax, [edx+54h]
add     [edx+44h], eax
mov     eax, [edx+58h]
add     [edx+48h], eax
mov     eax, [edx+80h]
add     [edx+70h], eax
mov     eax, [edx+84h]
add     [edx+74h], eax
mov     eax, [edx+88h]
add     [edx+78h], eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49DD5E:
mov     ecx, [ecx]
and     ecx, 0FF0000h
shr     ecx, 10h
xor     eax, eax
mov     al, [ebx+9]
cmp     eax, ecx
jnz     short loc_49DD1A
mov     eax, [edx+0C0h]
mov     eax, [eax]
and     eax, 0FFFFh
cmp     eax, [ebx+1Ch]
jmp     short loc_49DD14

loc_49DD84:
mov     byte ptr [edx+8], 0
jmp     loc_49DC8F

loc_49DD8D:
mov     byte ptr [edx+8], 1
jmp     loc_49DC8F

loc_49DD96:
mov     byte ptr [edx+3], 0
jmp     loc_49DC8F

loc_49DD9F:
mov     byte ptr [edx+3], 1
jmp     loc_49DC8F

loc_49DDA8:
mov     byte ptr [edx+3], 0
mov     eax, [edx+0C0h]
mov     eax, [eax+4]
mov     [edx+10h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+14h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+18h], eax

loc_49DDD0:
add     dword ptr [edx+0C0h], 10h
jmp     loc_49DC96

loc_49DDDC:
mov     eax, [ecx+4]
mov     [edx+40h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+44h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+48h], eax
jmp     short loc_49DDD0

loc_49DDFC:
mov     eax, [ecx+4]
mov     [edx+20h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+24h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+28h], eax
jmp     short loc_49DDD0

loc_49DE1C:
mov     eax, [ecx+4]
mov     [edx+50h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+54h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+58h], eax
jmp     short loc_49DDD0

loc_49DE3C:
mov     byte ptr [edx+3], 1
mov     eax, [edx+0C0h]
mov     eax, [eax]
and     eax, 0FF0000h
shr     eax, 10h
mov     [edx+9], al
mov     eax, [edx+0C0h]
mov     eax, [eax+4]
mov     [edx+0B0h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+0B4h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+0B8h], eax
jmp     loc_49DDD0

loc_49DE85:
mov     eax, [ecx+4]
mov     [edx+80h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+8]
mov     [edx+84h], eax
mov     eax, [edx+0C0h]
mov     eax, [eax+0Ch]
mov     [edx+88h], eax
jmp     loc_49DDD0

loc_49DEB1:
call    sub_4E1D8A
jmp     loc_49DC8F

loc_49DEBB:
call    sub_4E1DBA
jmp     loc_49DC8F

loc_49DEC5:
call    sub_4E1DFF
jmp     loc_49DC8F
sub_49DBD1 endp




sub_49DECF proc near
push    ecx
push    edx
push    esi
push    ebp
mov     eax, offset dword_560BDC
inc     ds:dword_560BF0
inc     ds:dword_560BF4
inc     ds:dword_560BF8
mov     esi, ds:dword_560BEC
inc     esi
mov     ds:dword_560BEC, esi
mov     edx, ds:dword_560C80
mov     ecx, [edx]
sar     ecx, 10h
cmp     ecx, 0FFFFFFFFh
jz      short loc_49DF5F
cmp     ecx, esi
jnz     short loc_49DF5F
add     edx, 8
mov     ds:dword_560C80, edx
mov     cl, ds:byte_560BE4
cmp     cl, [edx]
jz      short loc_49DF2C
xor     ebp, ebp
mov     ds:dword_560BF4, ebp
mov     ds:dword_560BF8, ebp

loc_49DF2C:
mov     edx, [eax+0A4h]
mov     dl, [edx]
mov     [eax+8], dl
mov     edx, [eax+0A4h]
mov     cl, [eax+9]
cmp     cl, [edx+1]
jz      short loc_49DF4C
mov     dword ptr [eax+1Ch], 0

loc_49DF4C:
mov     edx, [eax+0A4h]
mov     dl, [edx+1]
mov     [eax+9], dl
mov     dword ptr [eax+10h], 0

loc_49DF5F:
pop     ebp
pop     esi
pop     edx
pop     ecx
retn
sub_49DECF endp




sub_49DF64 proc near
push    ebx
push    ecx
push    edx
mov     eax, offset dword_560BDC
mov     edx, ds:dword_560C80
add     edx, 8
mov     ds:dword_560C80, edx
mov     bl, ds:byte_560BE4
cmp     bl, [edx]
jz      short loc_49DF93
xor     ecx, ecx
mov     ds:dword_560BF4, ecx
mov     ds:dword_560BF8, ecx

loc_49DF93:
mov     edx, [eax+0A4h]
mov     dl, [edx]
mov     [eax+8], dl
mov     edx, [eax+0A4h]
mov     bl, [eax+9]
cmp     bl, [edx+1]
jz      short loc_49DFB3
mov     dword ptr [eax+1Ch], 0

loc_49DFB3:
mov     edx, [eax+0A4h]
mov     dl, [edx+1]
mov     [eax+9], dl
mov     dword ptr [eax+10h], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_49DF64 endp




sub_49DFCA proc near
push    edx
xor     edx, edx
mov     ds:dword_560BEC, edx
mov     ds:dword_560BF4, edx
mov     ds:dword_560BF8, edx
xor     ah, ah
mov     ds:byte_560BE4, ah
mov     ds:byte_560BE5, ah
pop     edx
retn
sub_49DFCA endp




sub_49DFEF proc near
mov     ds:dword_77E6B4, edx
mov     ds:dword_560C80, eax
mov     dl, [eax]
mov     ds:byte_560BE4, dl
mov     al, [eax+1]
mov     ds:byte_560BE5, al
retn
sub_49DFEF endp




sub_49E00B proc near
push    edx
cmp     ds:word_6E23D4, 0
jz      short loc_49E072
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 4
mov     dl, byte ptr ds:word_6E23DA
mov     ds:byte_751630[eax], dl
mov     ds:byte_751631[eax], dl
mov     ds:byte_751632[eax], dl
mov     edx, offset unk_75162C
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
call    sub_4F87A6
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_763F4C
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
call    sub_4F87A6

loc_49E072:
pop     edx
retn
sub_49E00B endp

db 8Dh, 40h, 0
jpt_49E0F6 dd offset loc_49E0FD ; jump table for switch statement
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset def_49E0F6
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset loc_49E0FD
dd offset def_49E0F6
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E12F
dd offset loc_49E138
dd offset loc_49E138
dd offset loc_49E138
dd offset loc_49E160
dd offset loc_49E189
dd offset loc_49E1B2
dd offset loc_49E1D8
dd offset loc_49E1FE



sub_49E0D7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
cmp     ds:word_6E23D6, 0
jnz     loc_49E2EF
cmp     eax, 17h        ; switch 24 cases
ja      def_49E0F6      ; jumptable 0049E0F6 default case, cases 4,12
mov     edx, eax
jmp     jpt_49E0F6[edx*4] ; switch jump

loc_49E0FD:             ; jumptable 0049E0F6 cases 0-3,8-11
xor     bh, bh
mov     byte ptr ds:dword_6E23C9+3, bh

loc_49E105:
mov     edx, eax
sar     edx, 3
mov     dx, ds:word_52CBA8[edx*2]
mov     ds:word_6E23D6, dx
and     eax, 3
mov     ax, ds:word_52CBAC[eax*2]
mov     ds:word_6E23D8, ax
jmp     loc_49E250

loc_49E12F:             ; jumptable 0049E0F6 cases 5-7,13-15
mov     byte ptr ds:dword_6E23C9+3, 1
jmp     short loc_49E105

loc_49E138:             ; jumptable 0049E0F6 cases 16-18
mov     byte ptr ds:dword_6E23C9+3, 2
xor     dl, dl
mov     byte ptr ds:dword_6E23CD, dl
mov     byte ptr ds:dword_6E23CD+1, dl
sub     al, 10h
mov     byte ptr ds:dword_6E23CD+2, al
xor     eax, eax
mov     ds:dword_6E23CD+3, eax
jmp     loc_49E247

loc_49E160:             ; jumptable 0049E0F6 case 19
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 1
xor     ch, ch
mov     byte ptr ds:dword_6E23CD+1, ch
mov     byte ptr ds:dword_6E23CD+2, ch
xor     ebp, ebp
mov     ds:dword_6E23CD+3, ebp
jmp     loc_49E247

loc_49E189:             ; jumptable 0049E0F6 case 20
mov     ah, 2
mov     byte ptr ds:dword_6E23C9+3, ah
mov     byte ptr ds:dword_6E23CD, ah
xor     dh, dh
mov     byte ptr ds:dword_6E23CD+1, dh
mov     byte ptr ds:dword_6E23CD+2, dh
xor     edi, edi
mov     ds:dword_6E23CD+3, edi
jmp     loc_49E247

loc_49E1B2:             ; jumptable 0049E0F6 case 21
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 3
xor     ch, ch
mov     byte ptr ds:dword_6E23CD+1, ch
mov     byte ptr ds:dword_6E23CD+2, ch
xor     esi, esi
mov     ds:dword_6E23CD+3, esi
jmp     short loc_49E247

loc_49E1D8:             ; jumptable 0049E0F6 case 22
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 4
xor     dh, dh
mov     byte ptr ds:dword_6E23CD+1, dh
mov     byte ptr ds:dword_6E23CD+2, dh
xor     ebx, ebx
mov     ds:dword_6E23CD+3, ebx
jmp     short loc_49E247

loc_49E1FE:             ; jumptable 0049E0F6 case 23
mov     byte ptr ds:dword_6E23C9+3, 2
mov     byte ptr ds:dword_6E23CD, 5
xor     ch, ch
mov     byte ptr ds:dword_6E23CD+1, ch
mov     byte ptr ds:dword_6E23CD+2, ch
xor     ecx, ecx
mov     ds:dword_6E23CD+3, ecx
jmp     short loc_49E247

def_49E0F6:             ; jumptable 0049E0F6 default case, cases 4,12
mov     byte ptr ds:dword_6E23C9+3, 2
xor     dl, dl
mov     byte ptr ds:dword_6E23CD, dl
mov     byte ptr ds:dword_6E23CD+1, dl
mov     byte ptr ds:dword_6E23CD+2, dl
xor     edx, edx
mov     ds:dword_6E23CD+3, edx

loc_49E247:
mov     ds:word_6E23D6, 0FFFFh

loc_49E250:
xor     esi, esi

loc_49E252:
mov     ecx, esi
shl     ecx, 4
mov     ebx, offset unk_75162C
add     ebx, ecx
mov     eax, ebx
call    sub_4F87C5
mov     edx, 1
mov     eax, ebx
call    sub_4F884E
xor     edi, edi
mov     ds:word_751634[ecx], di
mov     ds:word_751636[ecx], di
mov     ds:word_751638[ecx], 140h
mov     ds:word_75163A[ecx], 0F0h
push    0
mov     al, byte ptr ds:dword_6E23C9+3
and     al, 1
movsx   edx, al
mov     eax, 2
sub     eax, edx
mov     edx, eax
xor     ecx, ecx
xor     ebx, ebx
mov     eax, 2
call    sub_4F892F
mov     ebx, esi
mov     ecx, esi
shl     ecx, 2
sub     ecx, esi
shl     ecx, 2
mov     edi, offset unk_763F4C
add     edi, ecx
mov     ecx, eax
xor     ebx, esi
xor     edx, edx
mov     eax, edi
call    sub_4F8864
inc     esi
cmp     esi, 2
jb      loc_49E252
mov     edx, offset loc_49E2F6
mov     eax, 1
call    sub_4EED79

loc_49E2EF:
pop     ebp

loc_49E2F0:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49E2F6:
mov     eax, ds:dword_6E23C9
sar     eax, 18h
call    ds:funcs_49E2FE[eax*4]
sub_49E0D7 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_75]


; Attributes: noreturn

sub_49E306 proc near

var_24= qword ptr -24h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ebx, (offset dword_6E23C9+3)
cmp     ds:word_6E23D6, 0
jle     short loc_49E330
xor     dl, dl
mov     byte ptr ds:dword_6E23CD, dl
mov     ds:word_6E23DA, 0FFh
jmp     short loc_49E340

loc_49E330:
mov     byte ptr ds:dword_6E23CD, 1
xor     ecx, ecx
mov     ds:word_6E23DA, cx

loc_49E340:
mov     byte ptr [ebx+4], 0
mov     word ptr [ebx+8], 1
call    cs:__imp_GetTickCount
xor     edx, edx
mov     dword ptr [esp+24h+var_24+4], edx
mov     dword ptr [esp+24h+var_24], eax
fild    [esp+24h+var_24]
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:dbl_50A2F4
fsubp   st(1), st
call    __CHP
fistp   [esp+24h+var_24]
mov     eax, dword ptr [esp+24h+var_24]
mov     ds:dword_55B8F4, eax

loc_49E384:
call    cs:__imp_GetTickCount
mov     edx, eax
mov     ds:dword_55B8F8, eax
sub     eax, ds:dword_55B8F4
xor     esi, esi
mov     dword ptr [esp+24h+var_24+4], esi
mov     dword ptr [esp+24h+var_24], eax
fild    [esp+24h+var_24]
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+24h+var_18], eax
fild    word ptr [esp+24h+var_18]
fmul    ds:dbl_50A2F4
fdivp   st(1), st
fstp    ds:flt_55B8F0
mov     ds:dword_55B8F4, edx
mov     al, [ebx+1]
cmp     al, 1
jb      short loc_49E3DD
jbe     short loc_49E42A
cmp     al, 2
jz      loc_49E45D
jmp     loc_49E485

loc_49E3DD:
test    al, al
jnz     loc_49E485
fild    word ptr [ebx+0Ch]
fmul    ds:flt_55B8F0
fild    word ptr [ebx+0Eh]
fstp    [esp+24h+var_1C]
fsubr   [esp+24h+var_1C]
call    __CHP
fistp   [esp+24h+var_1C]
mov     eax, [esp+24h+var_1C]
mov     [ebx+0Eh], ax
test    ax, ax
jg      loc_49E485
mov     word ptr [ebx+0Eh], 0

loc_49E419:
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [ebx+0Ch], ax
mov     byte ptr [ebx+1], 2
jmp     short loc_49E485

loc_49E42A:
fild    word ptr [ebx+0Ch]
fmul    ds:flt_55B8F0
fild    word ptr [ebx+0Eh]
fstp    [esp+24h+var_1C]
fadd    [esp+24h+var_1C]
call    __CHP
fistp   [esp+24h+var_1C]
mov     eax, [esp+24h+var_1C]
mov     [ebx+0Eh], ax
cmp     ax, 100h
jl      short loc_49E485
mov     word ptr [ebx+0Eh], 0FFh
jmp     short loc_49E419

loc_49E45D:
mov     di, [ebx+0Ch]
test    di, di
jnz     short loc_49E47E
cmp     word ptr [ebx+0Ah], 1
jnz     short loc_49E471
mov     [ebx+8], di

loc_49E471:
mov     word ptr [ebx+0Ah], 0
call    sub_4EEDFD
jmp     short loc_49E485

loc_49E47E:
mov     eax, edi
dec     eax
mov     [ebx+0Ch], ax

loc_49E485:
mov     eax, 1
call    sub_4EEDA4
jmp     loc_49E384
sub_49E306 endp



; Attributes: noreturn

sub_49E494 proc near
push    edx

loc_49E495:
mov     edx, ds:dword_6E23C9+1
sar     edx, 18h
shl     edx, 2
mov     eax, ds:dword_6E23C9+2
sar     eax, 18h
mov     al, ds:byte_52CC64[edx+eax]
and     eax, 0FFh
call    ds:funcs_49E4B5[eax*4]
mov     eax, 1
call    sub_4EEDA4
jmp     short loc_49E495
sub_49E494 endp




sub_49E4C8 proc near
push    ebx
push    ecx
push    edx
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E4E0
cmp     al, 1
jz      loc_49E568
pop     edx
pop     ecx
pop     ebx
retn

loc_49E4E0:
cmp     ds:byte_77EAC6, 0
jz      loc_49E576
xor     edx, edx
mov     ds:word_77E4E2, dx
xor     ebx, ebx
mov     ds:word_77E4DA, dx
xor     ecx, ecx
mov     ds:word_77E4C6, dx
xor     bl, dl
mov     ds:byte_77E4F0, bl
xor     bh, dh
mov     ds:byte_77E4EF, bh
mov     ds:word_77E572, dx
mov     ds:word_77E56A, dx
mov     ds:word_77E556, dx
xor     cl, dl
mov     ds:byte_77E580, cl
xor     ch, dh
mov     ds:byte_77E57F, ch
call    sub_4A0E35
mov     edx, 1
mov     ds:dword_77E738, edx
mov     ds:dword_77E710, edx
mov     ds:dword_77E720, edx
inc     byte ptr ds:dword_6E23CD+2
call    sub_49F39A
pop     edx
pop     ecx
pop     ebx
retn

loc_49E568:
xor     ah, ah
mov     byte ptr ds:dword_6E23CD+2, ah
add     byte ptr ds:dword_6E23CD+1, al

loc_49E576:
pop     edx
pop     ecx
pop     ebx
retn
sub_49E4C8 endp




sub_49E57A proc near
push    ebx
push    ecx
push    edx
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E592
cmp     al, 1
jz      loc_49E61A
pop     edx
pop     ecx
pop     ebx
retn

loc_49E592:
cmp     ds:byte_77EAC6, 0
jz      loc_49E628
xor     edx, edx
mov     ds:word_77E4E2, dx
xor     ebx, ebx
mov     ds:word_77E4DA, dx
xor     ecx, ecx
mov     ds:word_77E4C6, dx
xor     bl, dl
mov     ds:byte_77E4F0, bl
xor     bh, dh
mov     ds:byte_77E4EF, bh
mov     ds:word_77E572, dx
mov     ds:word_77E56A, dx
mov     ds:word_77E556, dx
xor     cl, dl
mov     ds:byte_77E580, cl
xor     ch, dh
mov     ds:byte_77E57F, ch
call    sub_4A0E35
mov     edx, 1
mov     ds:dword_77E738, edx
mov     ds:dword_77E710, edx
mov     ds:dword_77E720, edx
inc     byte ptr ds:dword_6E23CD+2
call    sub_49F39A
pop     edx
pop     ecx
pop     ebx
retn

loc_49E61A:
xor     ah, ah
mov     byte ptr ds:dword_6E23CD+2, ah
add     byte ptr ds:dword_6E23CD+1, al

loc_49E628:
pop     edx
pop     ecx
pop     ebx
retn
sub_49E57A endp




sub_49E62C proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E647
cmp     al, 1
jz      loc_49E6FE
jmp     loc_49E714

loc_49E647:
cmp     ds:byte_77EAC6, 0
jnz     short loc_49E669
cmp     ds:dword_77E710, 0
jz      short loc_49E669
xor     ebx, ebx
mov     ds:dword_77E710, ebx
xor     esi, esi
mov     ds:dword_77E720, esi

loc_49E669:
cmp     ds:byte_77EAC6, 0
jz      loc_49E714
cmp     ds:dword_77E710, 0
jnz     loc_49E714
xor     ebx, ebx
mov     ds:word_77E4E2, bx
xor     ecx, ecx
mov     ds:word_77E4DA, cx
mov     esi, 100h
mov     ds:word_77E4C6, si
mov     dh, 1
mov     ds:byte_77E4F0, dh
xor     bl, bl
mov     ds:byte_77E4EE, bl
mov     bh, dh
mov     ds:byte_77E4EF, dh
mov     ds:word_77E572, si
mov     ds:word_77E56A, si
xor     edx, edx
mov     ds:word_77E556, dx
mov     ds:byte_77E580, bh
mov     ds:byte_77E57E, bl
mov     ds:byte_77E57F, bh
xor     ebp, ebp
mov     ds:dword_77E738, ebp
xor     eax, eax
mov     ds:dword_77E710, eax
mov     ds:dword_77E720, eax
add     byte ptr ds:dword_6E23CD+2, bh
jmp     short loc_49E714

loc_49E6FE:
xor     edx, edx
mov     ds:dword_77E738, edx
xor     edx, edx
mov     ds:word_6E23D6, dx
call    sub_4EEDFD

loc_49E714:
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49E62C endp




sub_49E71A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E736
cmp     al, 1
jz      loc_49E7E4
jmp     loc_49E2EF

loc_49E736:
cmp     ds:byte_77EAC6, 0
jnz     short loc_49E750
cmp     ds:dword_77E710, 0
jz      short loc_49E750
xor     ebx, ebx
mov     ds:dword_77E710, ebx

loc_49E750:
cmp     ds:byte_77EAC6, 0
jz      loc_49E2EF
cmp     ds:dword_77E710, 0
jnz     loc_49E2EF
xor     ebx, ebx
mov     ds:word_77E4E2, bx
xor     ecx, ecx
mov     ds:word_77E4DA, cx
mov     esi, 100h
mov     ds:word_77E4C6, si
mov     dh, 1
mov     ds:byte_77E4F0, dh
xor     bl, bl
mov     ds:byte_77E4EE, bl
mov     bh, dh
mov     ds:byte_77E4EF, dh
mov     ds:word_77E572, si
mov     ds:word_77E56A, si
xor     edx, edx
mov     ds:word_77E556, dx
mov     ds:byte_77E580, bh
mov     ds:byte_77E57E, bl
mov     ds:byte_77E57F, bh
xor     edi, edi
mov     ds:dword_77E738, edi
xor     ebp, ebp
mov     ds:dword_77E710, ebp
add     byte ptr ds:dword_6E23CD+2, bh
jmp     loc_49E2EF

loc_49E7E4:
xor     edx, edx
mov     ds:dword_77E738, edx
xor     edx, edx
mov     ds:word_6E23D6, dx
call    sub_4EEDFD
jmp     loc_49E2EF
sub_49E71A endp




sub_49E7FF proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
xor     edx, edx
mov     ds:dword_77E738, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     edi, offset unk_55B3F8
add     edi, eax
mov     eax, ds:dword_6E23CD
sar     eax, 18h
mov     edx, ds:dword_6E23C9+3
sar     edx, 18h
mov     esi, edx
shl     esi, 3
test    al, 3
jnz     short loc_49E84D
mov     esi, ds:dword_52CC7C[esi]
jmp     short loc_49E853

loc_49E84D:
mov     esi, ds:dword_52CC80[esi]

loc_49E853:
mov     ecx, ds:dword_52CC94[edx*4]
mov     [esp+18h+var_18], ecx
mov     ebx, eax
shl     ebx, 5
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
add     eax, 100h
cmp     edx, 1
jnz     short loc_49E882
movsx   ecx, ax
xor     ebx, ebx
jmp     short loc_49E888

loc_49E882:
movsx   ecx, ax
movsx   ebx, bx

loc_49E888:
mov     edx, 78h ; 'x'
mov     eax, 0A0h
call    sub_49F433
xor     ebx, ebx

loc_49E899:
mov     eax, ebx
shl     eax, 3
mov     ecx, eax
shl     eax, 3
sub     eax, ecx
lea     ecx, [edi+eax]
mov     eax, ecx
call    sub_4F87F0
mov     dword ptr [ecx], 9000000h
mov     [ecx+4], esi
mov     ax, [ecx+16h]
xor     ah, ah
and     al, 7Fh
mov     edx, [esp+18h+var_18]
or      eax, edx
mov     [ecx+16h], ax
mov     edx, 1F0h
xor     eax, eax
call    sub_4F8961
mov     [ecx+0Eh], ax
xor     edx, edx
mov     dl, ds:byte_52CC08[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+8], dx
xor     edx, edx
mov     dl, ds:byte_52CC08[ebx*4]
mov     dx, ds:word_55B3B2[edx*4]
mov     [ecx+0Ah], dx
xor     edx, edx
mov     dl, ds:byte_52CC09[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+10h], dx
xor     edx, edx
mov     dl, ds:byte_52CC09[ebx*4]
mov     dx, ds:word_55B3B2[edx*4]
mov     [ecx+12h], dx
xor     edx, edx
mov     dl, ds:byte_52CC0A[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+18h], dx
xor     edx, edx
mov     dl, ds:byte_52CC0A[ebx*4]
mov     dx, ds:word_55B3B2[edx*4]
mov     [ecx+1Ah], dx
xor     edx, edx
mov     dl, ds:byte_52CC0B[ebx*4]
mov     dx, ds:word_55B3B0[edx*4]
mov     [ecx+20h], dx
mov     al, ds:byte_52CC0B[ebx*4]
and     eax, 0FFh
mov     ax, ds:word_55B3B2[eax*4]
mov     [ecx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ecx
call    sub_4F87A6
inc     ebx
cmp     ebx, 0Ah
jl      loc_49E899
mov     ah, byte ptr ds:dword_6E23CD+3
inc     ah
mov     byte ptr ds:dword_6E23CD+3, ah
cmp     ah, 3Fh ; '?'
jle     short loc_49E9D6
xor     dh, dh
mov     byte ptr ds:dword_6E23C9+3, dh
mov     byte ptr ds:dword_6E23CD+2, dh
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49E9D6:
add     esp, 4
jmp     loc_49E2F0
sub_49E7FF endp




sub_49E9DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49E9F8
cmp     al, 1
jz      loc_49EAB7
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49E9F8:
xor     ecx, ecx

loc_49E9FA:
mov     ebx, ecx
shl     ebx, 7
mov     eax, ebx
call    sub_4EF003
mov     word ptr ds:(dword_55B86E+2)[ecx*4], ax
mov     eax, ebx
call    sub_4EF008
mov     ds:word_55B872[ecx*4], ax
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49E9FA
xor     esi, esi
jmp     short loc_49EA4F

loc_49EA27:
push    0
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset unk_55B858
mov     ecx, 140h
mov     ebx, 1
mov     edx, ebx
call    sub_4F8864
inc     esi
cmp     esi, 2
jge     short loc_49EAAC

loc_49EA4F:
xor     ecx, ecx

loc_49EA51:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 2
add     edx, esi
shl     edx, 7
mov     ebx, offset unk_55A6B0
add     ebx, edx
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, ecx
shl     edx, 2
add     edx, ebx
mov     eax, edx
call    sub_4F8817
mov     dword ptr [edx], 8000000h
mov     dword ptr [edx+4], 3AFFFFFFh
mov     dword ptr [edx+0Ch], 0FFFFFFh
mov     dword ptr [edx+14h], 0
mov     dword ptr [edx+1Ch], 0
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49EA51
jmp     loc_49EA27

loc_49EAAC:
inc     byte ptr ds:dword_6E23CD+2
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49EAB7:
xor     edx, edx
mov     ds:dword_77E738, edx
mov     esi, ds:dword_6E23CD
sar     esi, 18h
shl     esi, 2
xor     ecx, ecx

loc_49EACD:
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 7
mov     ebx, offset unk_55A6B0
add     ebx, eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     edx, [ebx+eax]
mov     word ptr [edx+8], 0A0h
mov     word ptr [edx+0Ah], 78h ; 'x'
mov     word ptr [edx+10h], 0A0h
mov     word ptr [edx+12h], 78h ; 'x'
mov     ebx, ds:dword_55B86E[ecx*4]
sar     ebx, 10h
imul    ebx, esi
sar     ebx, 0Ch
add     ebx, 0A0h
mov     [edx+18h], bx
mov     eax, ds:(dword_55B86E+2)[ecx*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+1Ah], ax
lea     ebx, [ecx+1]
mov     eax, ebx
and     eax, 1Fh
mov     ecx, ds:dword_55B86E[eax*4]
sar     ecx, 10h
imul    ecx, esi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [edx+20h], cx
mov     eax, ds:(dword_55B86E+2)[eax*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ecx, ebx
cmp     ebx, 20h ; ' '
jl      loc_49EACD
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_55B858
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ah, byte ptr ds:dword_6E23CD+3
inc     ah
mov     byte ptr ds:dword_6E23CD+3, ah
cmp     ah, 3Fh ; '?'
jle     short loc_49EBF6
xor     dh, dh
mov     byte ptr ds:dword_6E23C9+3, dh
mov     byte ptr ds:dword_6E23CD+2, dh
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49EBF6:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_49E9DE endp




sub_49EBFB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     al, byte ptr ds:dword_6E23CD+2
cmp     al, 1
jb      short loc_49EC20
jbe     loc_49ECEE
cmp     al, 2
jz      loc_49EE7D
jmp     loc_49F01F

loc_49EC20:
test    al, al
jnz     loc_49F01F
xor     ecx, ecx

loc_49EC2A:
mov     edx, ecx
shl     edx, 7
mov     eax, edx
call    sub_4EF003
mov     word ptr ds:(dword_55B86E+2)[ecx*4], ax
mov     eax, edx
call    sub_4EF008
mov     ds:word_55B872[ecx*4], ax
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49EC2A
xor     esi, esi
jmp     short loc_49EC7F

loc_49EC57:
push    0
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset unk_55B858
mov     ecx, 140h
mov     ebx, 1
mov     edx, ebx
call    sub_4F8864
inc     esi
cmp     esi, 2
jge     short loc_49ECDC

loc_49EC7F:
xor     ecx, ecx

loc_49EC81:
mov     edx, esi
shl     edx, 2
sub     edx, esi
shl     edx, 2
add     edx, esi
shl     edx, 7
mov     ebx, offset unk_55A6B0
add     ebx, edx
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
add     edx, ecx
shl     edx, 2
add     edx, ebx
mov     eax, edx
call    sub_4F8817
mov     dword ptr [edx], 8000000h
mov     dword ptr [edx+4], 3A000000h
mov     dword ptr [edx+0Ch], 0
mov     dword ptr [edx+14h], 0FFFFFFh
mov     dword ptr [edx+1Ch], 0FFFFFFh
inc     ecx
cmp     ecx, 20h ; ' '
jl      short loc_49EC81
jmp     loc_49EC57

loc_49ECDC:
mov     byte ptr ds:dword_6E23CD+3, 3Ch ; '<'

loc_49ECE3:
inc     byte ptr ds:dword_6E23CD+2
jmp     loc_49F01F

loc_49ECEE:
xor     edx, edx
mov     ds:dword_77E738, edx
mov     esi, ds:dword_6E23CD
sar     esi, 18h
shl     esi, 2
xor     ecx, ecx

loc_49ED04:
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 7
mov     ebx, offset unk_55A6B0
add     ebx, eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     edx, [ebx+eax]
mov     eax, ecx
mov     ebx, ds:dword_55B86E[ecx*4]
sar     ebx, 10h
imul    ebx, esi
sar     ebx, 0Ch
add     ebx, 0A0h
mov     [edx+8], bx
mov     ebx, ds:(dword_55B86E+2)[ecx*4]
sar     ebx, 10h
imul    ebx, esi
sar     ebx, 0Ch
add     ebx, 78h ; 'x'
mov     [edx+0Ah], bx
lea     ebx, [ecx+1]
mov     ecx, ebx
and     ecx, 1Fh
mov     edi, ds:dword_55B86E[ecx*4]
sar     edi, 10h
imul    edi, esi
sar     edi, 0Ch
add     edi, 0A0h
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     [edx+10h], di
mov     edi, ds:(dword_55B86E+2)[ecx*4]
sar     edi, 10h
imul    edi, esi
sar     edi, 0Ch
add     edi, 78h ; 'x'
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     [edx+12h], di
mov     edi, ds:dword_55B86E[eax*4]
sar     edi, 10h
imul    edi, 0D2h
sar     edi, 0Ch
add     edi, 0A0h
mov     [esp+1Ch+var_1C], edi
mov     edi, [esp+1Ch+var_1C]
mov     [edx+18h], di
mov     eax, ds:(dword_55B86E+2)[eax*4]
sar     eax, 10h
imul    eax, 0D2h
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+1Ah], ax
mov     eax, ds:dword_55B86E[ecx*4]
sar     eax, 10h
imul    eax, 0D2h
sar     eax, 0Ch
add     eax, 0A0h
mov     [edx+20h], ax
mov     eax, ds:(dword_55B86E+2)[ecx*4]
sar     eax, 10h
imul    eax, 0D2h
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ecx, ebx
cmp     ebx, 20h ; ' '
jl      loc_49ED04
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_55B858
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     cl, byte ptr ds:dword_6E23CD+3
dec     cl
mov     byte ptr ds:dword_6E23CD+3, cl
jnz     loc_49F01F
mov     byte ptr ds:dword_6E23CD+3, 5
jmp     loc_49ECE3

loc_49EE7D:
mov     ah, byte ptr ds:dword_6E23CD+3
dec     ah
mov     byte ptr ds:dword_6E23CD+3, ah
jnz     short loc_49EEB1
mov     byte ptr ds:dword_6E23C9+3, ah
mov     byte ptr ds:dword_6E23CD+2, ah
mov     ds:word_6E23D4, 1
mov     ds:word_6E23DA, 0FFh
inc     byte ptr ds:dword_6E23CD+1

loc_49EEB1:
mov     eax, ds:dword_6E23CD
sar     eax, 18h
mov     esi, eax
shl     esi, 2
shl     eax, 4
lea     edi, [eax+10h]
xor     ecx, ecx

loc_49EEC6:
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 7
mov     ebx, offset unk_55A6B0
add     ebx, eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
lea     edx, [ebx+eax]
mov     ebx, ecx
mov     eax, ds:dword_55B86E[ecx*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 0A0h
mov     [esp+1Ch+var_1C], eax
mov     eax, [esp+1Ch+var_1C]
mov     [edx+8], ax
mov     eax, ds:(dword_55B86E+2)[ecx*4]
sar     eax, 10h
imul    eax, esi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [esp+1Ch+var_1C], eax
mov     eax, [esp+1Ch+var_1C]
mov     [edx+0Ah], ax
lea     ebp, [ecx+1]
mov     eax, ebp
and     eax, 1Fh
mov     ecx, ds:dword_55B86E[eax*4]
sar     ecx, 10h
imul    ecx, esi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [esp+1Ch+var_1C], ecx
mov     ecx, [esp+1Ch+var_1C]
mov     [edx+10h], cx
mov     ecx, ds:(dword_55B86E+2)[eax*4]
sar     ecx, 10h
imul    ecx, esi
sar     ecx, 0Ch
add     ecx, 78h ; 'x'
mov     [esp+1Ch+var_1C], ecx
mov     ecx, [esp+1Ch+var_1C]
mov     [edx+12h], cx
mov     ecx, ds:dword_55B86E[ebx*4]
sar     ecx, 10h
imul    ecx, edi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [esp+1Ch+var_1C], ecx
mov     ecx, [esp+1Ch+var_1C]
mov     [edx+18h], cx
mov     ebx, ds:(dword_55B86E+2)[ebx*4]
sar     ebx, 10h
imul    ebx, edi
sar     ebx, 0Ch
add     ebx, 78h ; 'x'
mov     [edx+1Ah], bx
mov     ecx, ds:dword_55B86E[eax*4]
sar     ecx, 10h
imul    ecx, edi
sar     ecx, 0Ch
add     ecx, 0A0h
mov     [edx+20h], cx
mov     eax, ds:(dword_55B86E+2)[eax*4]
sar     eax, 10h
imul    eax, edi
sar     eax, 0Ch
add     eax, 78h ; 'x'
mov     [edx+22h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     ecx, ebp
cmp     ebp, 20h ; ' '
jl      loc_49EEC6
xor     edx, edx
mov     dl, ds:byte_77EAC6
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     edx, offset unk_55B858
add     edx, eax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_49F01F:
add     esp, 4
jmp     loc_49E2EF
sub_49EBFB endp




sub_49F027 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     al, byte ptr ds:dword_6E23CD+2
test    al, al
jbe     short loc_49F041
cmp     al, 1
jz      loc_49F0DC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_49F041:
xor     esi, esi
jmp     short loc_49F06D

loc_49F045:
push    0
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset unk_55B858
mov     ecx, 140h
mov     ebx, 1
mov     edx, ebx
call    sub_4F8864
inc     esi
cmp     esi, 2
jge     short loc_49F0CA

loc_49F06D:
xor     ecx, ecx

loc_49F06F:
