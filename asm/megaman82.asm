loc_4C1638:
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C1648
mov     eax, 60Bh
jmp     short loc_4C164D

loc_4C1648:
mov     eax, 608h

loc_4C164D:
mov     cl, [ebp+0Ah]
cmp     cl, 1
jnz     loc_4C1738
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_4C1738
call    sub_47E888
test    eax, eax
jz      loc_4C170F
test    byte ptr ds:dword_55BD7C, 0FFh
jnz     short loc_4C16E2
cmp     byte ptr [ebp+0Bh], 0
jnz     short loc_4C1692
lea     edx, [ebp+48h]
mov     eax, 17Ah
call    sub_4D8BC3
add     [ebp+0Bh], cl

loc_4C1692:
mov     eax, [esp+28h+var_20]
mov     ecx, [eax]
test    ecx, ecx
jz      short loc_4C16A6
lea     ebx, [ecx-40h]
mov     [eax], ebx
jmp     loc_4C1738

loc_4C16A6:
mov     byte ptr [ebp+8], 2
mov     eax, [esp+28h+var_1C]
and     byte ptr [eax+0BDh], 0BFh
cmp     ds:byte_77E7D4, 0Eh
jnz     short loc_4C16C5
mov     eax, 1Eh
jmp     short loc_4C16CA

loc_4C16C5:
mov     eax, 27h ; '''

loc_4C16CA:
call    sub_47E8B8
mov     eax, [ebp+58h]
mov     byte ptr [eax+8], 2
mov     eax, 8
call    sub_49E0D7
jmp     short loc_4C1738

loc_4C16E2:
mov     eax, [esp+28h+var_1C]
and     byte ptr [eax+0BDh], 0BFh
mov     byte ptr [ebp+0Ah], 0
mov     ch, ds:byte_77E7D4
cmp     ch, 0Eh
jnz     short loc_4C1703

loc_4C16FC:
mov     eax, 608h
jmp     short loc_4C1733

loc_4C1703:
cmp     ch, 14h
jnz     short loc_4C1738
mov     eax, 605h
jmp     short loc_4C1733

loc_4C170F:
mov     eax, [esp+28h+var_1C]
and     byte ptr [eax+0BDh], 0BFh
mov     byte ptr [ebp+0Ah], 0
mov     dh, ds:byte_77E7D4
cmp     dh, 0Eh
jz      short loc_4C16FC
cmp     dh, 14h
jnz     short loc_4C1738
mov     eax, 605h

loc_4C1733:
call    sub_47EA91

loc_4C1738:
add     esp, 10h
jmp     loc_4C06D7
sub_4C159C endp




sub_4C1740 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
call    sub_432697
xor     edx, edx
mov     dl, [ebp+8]     ; int
mov     eax, ebp
call    ds:funcs_4C1760[edx*4]
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
sub     [esp+2Ch+var_1E], 50h ; 'P'
lea     eax, [ebp+58h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 64h ; 'd'
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+58h], 0
add     esp, 8
sub_4C1740 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4C1C1E

loc_4C17A9:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_4C1C1E
; START OF FUNCTION CHUNK FOR sub_4C199D

loc_4C17AA:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4C199D



; int __fastcall sub_4C17B0(int, int)
sub_4C17B0 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
lea     ebx, [ecx+3]
mov     edx, ebx
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     al, [ecx+3]
and     al, 3
and     eax, 0FFh
shl     eax, 0Ah
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_537394
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Fh], 28h ; '('
cmp     byte ptr ds:dword_77E7D5, 1
jnz     short loc_4C187B
cmp     ds:byte_77E7D4, 5
jnz     short loc_4C187B
mov     edx, [ecx+0Ah]
sar     edx, 18h
shl     edx, 2
add     edx, 681h
mov     eax, edx
call    sub_47E888
test    eax, eax
jz      short loc_4C184A
mov     eax, ecx
call    sub_4DE477
pop     edx
pop     ecx
pop     ebx
retn

loc_4C184A:
lea     eax, [edx+1]
call    sub_47E888
test    eax, eax
jz      short loc_4C186B
or      byte ptr [ecx+0Ch], 2
add     byte ptr [ecx+3], 4
mov     edx, ebx
mov     eax, ecx
call    sub_4DD0F8
pop     edx
pop     ecx
pop     ebx
retn

loc_4C186B:
lea     eax, [edx+2]
call    sub_47E888
test    eax, eax
jz      short loc_4C187B
or      byte ptr [ecx+0Ch], 1

loc_4C187B:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C17B0 endp




sub_4C187F proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
call    sub_4C2060
test    al, al
jz      short loc_4C18B0
mov     eax, ecx
call    sub_4C2097
test    eax, eax
jz      short loc_4C189F
inc     byte ptr [ecx+8]

loc_4C189F:
test    byte ptr [ecx+5Bh], 20h
jz      short loc_4C18B0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 0

loc_4C18B0:
test    byte ptr [ecx+5Bh], 80h
jz      short loc_4C18C5
or      byte ptr [ecx+0Ch], 8
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 3
mov     byte ptr [ecx+0Ah], 1Eh

loc_4C18C5:
pop     edx
pop     ecx
retn
sub_4C187F endp




sub_4C18C8 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C18CE[edx*4]
pop     edx
retn
sub_4C18C8 endp

align 4
jpt_4C1902 dd offset loc_4C1909 ; jump table for switch statement
dd offset loc_4C191C
dd offset loc_4C1936
dd offset loc_4C1946



sub_4C18E8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4C1902      ; jumptable 004C1902 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4C1902[edx*4] ; switch jump

loc_4C1909:             ; jumptable 004C1902 case 0
mov     byte ptr ds:dword_5F836C+1, 10h
xor     al, al
mov     byte ptr ds:dword_5F836C+2, al

loc_4C1917:
inc     byte ptr [ecx+0Ah]
jmp     short def_4C1902 ; jumptable 004C1902 default case

loc_4C191C:             ; jumptable 004C1902 case 1
xor     eax, eax
mov     al, [ecx+0Bh]
mov     edx, ds:off_52FCBD[eax*4]
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4C1917

loc_4C1936:             ; jumptable 004C1902 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C1902 ; jumptable 004C1902 default case
inc     al
mov     [ecx+0Ah], al
jmp     short def_4C1902 ; jumptable 004C1902 default case

loc_4C1946:             ; jumptable 004C1902 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_4C1902 ; jumptable 004C1902 default case
xor     edx, edx
mov     ds:dword_5F84E8, eax
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
xor     dl, al
mov     byte ptr ds:dword_5F836C+2, dl
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
mov     [ecx+0Ah], ah

def_4C1902:             ; jumptable 004C1902 default case
mov     dl, [esi+9]
cmp     dl, 0Bh
jz      short loc_4C197D
cmp     dl, 0Ch
jnz     short loc_4C1998

loc_4C197D:
call    sub_4A0E35
mov     dword ptr [esi+184h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0

loc_4C1998:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C18E8 endp




sub_4C199D proc near

; FUNCTION CHUNK AT 004C17AA SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 6
jb      short loc_4C19FA
lea     edi, [ecx+48h]
jbe     loc_4C1AB3
cmp     al, 0Ah
jb      short loc_4C19E7
jbe     loc_4C1B6F
cmp     al, 14h
jb      short loc_4C19DA
jbe     loc_4C1BB9
cmp     al, 15h
jz      loc_4C1BC4
jmp     loc_4C1BED

loc_4C19DA:
cmp     al, 0Bh
jz      loc_4C1BA2
jmp     loc_4C1BED

loc_4C19E7:
cmp     al, 8
jb      loc_4C1AD4
jbe     loc_4C1AF7
jmp     loc_4C1B58

loc_4C19FA:
cmp     al, 2
jb      short loc_4C1A0F
jbe     short loc_4C1A3C
cmp     al, 4
jb      short loc_4C1A5B
jbe     loc_4C1A97
jmp     loc_4C1AA0

loc_4C1A0F:
test    al, al
ja      short loc_4C1A1D
mov     byte ptr [esi+9], 10h

loc_4C1A17:
mov     byte ptr [esi+0Ah], 0
jmp     short loc_4C1A34

loc_4C1A1D:
mov     ebx, 0FFFFFFFFh
movzx   edi, byte ptr [ecx+0Bh]
mov     edx, ds:off_52FCBD[edi*4]

loc_4C1A2D:
xor     eax, eax
call    sub_4A0CDD

loc_4C1A34:
inc     byte ptr [ecx+0Ah]
jmp     loc_4C1BED

loc_4C1A3C:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C1BED
test    byte ptr ds:dword_55BD7C, 0FFh
jz      short loc_4C1A34

loc_4C1A52:
mov     byte ptr [ecx+0Ah], 14h
jmp     loc_4C1BED

loc_4C1A5B:
mov     eax, 0FFFFFFF6h
call    sub_4B6204
test    eax, eax
jge     short loc_4C1A7D
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FFF9
xor     eax, eax
call    sub_4A0CDD
jmp     short loc_4C1A52

loc_4C1A7D:
xor     ebx, ebx
xor     edx, edx
mov     eax, 0FFFFFFF6h
call    sub_4B6217

loc_4C1A8B:
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Eh], 10h
jmp     loc_4C1BED

loc_4C1A97:
mov     byte ptr [esi+9], 11h
jmp     loc_4C1A17

loc_4C1AA0:
cmp     byte ptr [esi+0A7h], 0
jge     loc_4C1BED
mov     byte ptr [ecx+0Eh], 10h
jmp     short loc_4C1A34

loc_4C1AB3:
mov     ah, [ecx+0Eh]
test    ah, ah
jz      short loc_4C1AC6
mov     dh, ah
dec     dh
mov     [ecx+0Eh], dh
jmp     loc_4C1BED

loc_4C1AC6:
mov     edx, edi
mov     eax, 13Eh
call    sub_4D8BC3
jmp     short loc_4C1A8B

loc_4C1AD4:
mov     bl, [ecx+0Eh]
test    bl, bl
jz      short loc_4C1AE7
mov     al, bl
dec     al
mov     [ecx+0Eh], al
jmp     loc_4C1BED

loc_4C1AE7:
mov     edx, ds:off_52FFF1
mov     ebx, 0FFFFFFFFh
jmp     loc_4C1A2D

loc_4C1AF7:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C1BED
mov     byte ptr ds:dword_5F836C+1, 14h
xor     ah, ah
mov     byte ptr ds:dword_5F836C+2, ah
mov     edx, ds:off_52FFF5
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     edx, edi
mov     eax, 13Fh
call    sub_4D8BC3
mov     eax, ds:dword_5F8412
sar     eax, 10h
xor     edx, edx
call    sub_4B6268
or      byte ptr [ecx+0Ch], 1
xor     eax, eax
mov     al, [ecx+0Dh]
mov     edx, 2
call    sub_4C216B
jmp     loc_4C1A34

loc_4C1B58:
cmp     ds:byte_5F840B, 0
jge     loc_4C1BED

loc_4C1B65:
inc     al
mov     [ecx+0Ah], al
jmp     loc_4C1BED

loc_4C1B6F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C1BED
mov     edx, ds:off_53002D
mov     ebx, 0FFFFFFFFh
xor     eax, eax
call    sub_4A0CDD
mov     byte ptr ds:dword_5F836C+1, 13h
xor     dl, dl
mov     byte ptr ds:dword_5F836C+2, dl
jmp     loc_4C1A34

loc_4C1BA2:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C1BED
cmp     ds:byte_5F840B, 0
jge     short loc_4C1BED
jmp     loc_4C1A52

loc_4C1BB9:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C1BED
jmp     short loc_4C1B65

loc_4C1BC4:
call    sub_42ABA2
test    eax, eax
jnz     short loc_4C1BED
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
mov     byte ptr ds:dword_5F836C+2, ah
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
mov     [ecx+0Ah], ah

loc_4C1BED:
mov     ah, [esi+9]
cmp     ah, 0Bh
jz      short loc_4C1BFE
cmp     ah, 0Ch
jnz     loc_4C17AA

loc_4C1BFE:
call    sub_4A0E35
mov     dword ptr [esi+184h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     loc_4C17AA
sub_4C199D endp




; int __fastcall sub_4C1C1E(int, int)
sub_4C1C1E proc near

; FUNCTION CHUNK AT 004C17A9 SIZE 00000001 BYTES

push    ebx             ; float
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
push    ebp             ; int
mov     ecx, eax
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 11h
jb      short loc_4C1C98
jbe     loc_4C1E43
cmp     al, 18h
jb      short loc_4C1C74
jbe     loc_4C1F53
cmp     al, 1Fh
jb      short loc_4C1C67
jbe     loc_4C1FC4
cmp     al, 28h ; '('
jb      loc_4C2017
jbe     loc_4C1FCC
cmp     al, 29h ; ')'
jz      loc_4C1FFE
jmp     loc_4C2017

loc_4C1C67:
cmp     al, 1Eh
jz      loc_4C1F69
jmp     loc_4C2017

loc_4C1C74:
cmp     al, 15h
jb      short loc_4C1C8B
jbe     loc_4C1EA6
cmp     al, 16h
jbe     loc_4C1F10
jmp     loc_4C1F43

loc_4C1C8B:
cmp     al, 14h
jz      loc_4C1E62
jmp     loc_4C2017

loc_4C1C98:
cmp     al, 0Ch
jb      short loc_4C1CBD
jbe     loc_4C1D91
cmp     al, 0Eh
jb      loc_4C1DD7
jbe     loc_4C1DE6
cmp     al, 0Fh
jbe     loc_4C1DFC
jmp     loc_4C1E24

loc_4C1CBD:
cmp     al, 1
jb      short loc_4C1CD2
jbe     short loc_4C1CFD
cmp     al, 0Ah
jb      loc_4C2017
jbe     short loc_4C1D3E
jmp     loc_4C1D64

loc_4C1CD2:
test    al, al
jnz     loc_4C2017
or      byte ptr [ebp+0BDh], 40h
mov     eax, ebp
call    sub_4B61E1
test    eax, eax
jnz     loc_4C2017

loc_4C1CF0:
mov     byte ptr [ebp+9], 10h

loc_4C1CF4:
mov     byte ptr [ebp+0Ah], 0
jmp     loc_4C1D89

loc_4C1CFD:
test    byte ptr [ecx+0Ch], 2
jz      short loc_4C1D0C
mov     byte ptr [ecx+0Ah], 1Eh
jmp     loc_4C2017

loc_4C1D0C:
call    rand_
test    al, 1
jz      short loc_4C1D31
mov     edx, 1
xor     eax, eax
mov     al, [ecx+0Dh]
call    sub_4C216B
or      byte ptr [ecx+0Ch], 2
mov     byte ptr [ecx+0Ah], 14h
jmp     loc_4C2017

loc_4C1D31:
mov     byte ptr [ecx+0Eh], 10h
mov     byte ptr [ecx+0Ah], 0Ah
jmp     loc_4C2017

loc_4C1D3E:
mov     dl, [ecx+0Eh]
test    dl, dl
jz      short loc_4C1D51
mov     bl, dl
dec     bl
mov     [ecx+0Eh], bl
jmp     loc_4C2017

loc_4C1D51:
lea     edx, [ecx+48h]
mov     eax, 13Eh
call    sub_4D8BC3
mov     byte ptr [ecx+0Eh], 10h
jmp     short loc_4C1D89

loc_4C1D64:
mov     bh, [ecx+0Eh]
test    bh, bh
jz      short loc_4C1D77
mov     ah, bh
dec     ah
mov     [ecx+0Eh], ah
jmp     loc_4C2017

loc_4C1D77:
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FFF1

loc_4C1D82:
xor     eax, eax
call    sub_4A0CDD

loc_4C1D89:
inc     byte ptr [ecx+0Ah]
jmp     loc_4C2017

loc_4C1D91:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
mov     byte ptr [ebp+9], 14h
mov     byte ptr [ebp+0Ah], 0
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_52FFF5
xor     eax, eax
call    sub_4A0CDD
lea     edx, [ecx+48h]
mov     eax, 13Fh
call    sub_4D8BC3
xor     edx, edx
mov     eax, [ebp+0AEh]
sar     eax, 10h
call    sub_4B6268
jmp     short loc_4C1D89

loc_4C1DD7:
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4C2017
jmp     short loc_4C1D89

loc_4C1DE6:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
xor     eax, eax
call    sub_47EEAE
jmp     short loc_4C1D89

loc_4C1DFC:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
mov     ebx, 0FFFFFFFFh
mov     edx, ds:off_53002D
xor     eax, eax
call    sub_4A0CDD
mov     byte ptr [ebp+9], 13h
jmp     loc_4C1CF4

loc_4C1E24:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4C2017
jmp     loc_4C1CF0

loc_4C1E43:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     loc_4C2017
cmp     byte ptr [ebp+0A7h], 0
jge     loc_4C2017
jmp     loc_4C1F60

loc_4C1E62:
add     byte ptr [ecx+3], 4
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     eax, [ecx+18h]
call    sub_4EF184
lea     edx, [ecx+18h]
mov     al, [ecx+3]
and     al, 3
and     eax, 0FFh
shl     eax, 0Ah
call    sub_4EF50D
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Bh], 0
lea     edx, [ecx+48h]
mov     eax, 0A4h
call    sub_4D8BC3
jmp     loc_4C2017

loc_4C1EA6:
call    sub_4DE13B
test    eax, eax
jz      loc_4C2017
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Bh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 14h
mov     byte ptr [eax+0Fh], 8
mov     dl, [ecx+3]
and     dl, 3
xor     ebx, ebx
mov     bl, dl
mov     dx, [ecx+48h]
mov     si, ds:word_5373A0[ebx*4]
add     edx, esi
mov     [eax+1Ch], dx
mov     dx, [ecx+4Ah]
sub     edx, 0C8h
mov     [eax+1Eh], dx
mov     dx, [ecx+4Ch]
mov     [eax+20h], dx
mov     byte ptr [eax+9], 4
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Eh], 2
jmp     loc_4C2017

loc_4C1F10:
mov     dh, [ecx+0Eh]
test    dh, dh
jz      short loc_4C1F23
mov     al, dh
dec     al
mov     [ecx+0Eh], al
jmp     loc_4C2017

loc_4C1F23:
cmp     byte ptr [ecx+0Bh], 8
jnb     short loc_4C1F36
dec     al
mov     [ecx+0Ah], al
inc     byte ptr [ecx+0Bh]
jmp     loc_4C2017

loc_4C1F36:
inc     al
mov     [ecx+0Ah], al
mov     [ecx+0Bh], dh
jmp     loc_4C2017

loc_4C1F43:
mov     edx, ds:off_52FFFD
mov     ebx, 0FFFFFFFFh
jmp     loc_4C1D82

loc_4C1F53:
test    byte ptr ds:dword_55BD7C+3, 8

loc_4C1F5A:
jnz     loc_4C2017

loc_4C1F60:
mov     byte ptr [ecx+0Ah], 28h ; '('
jmp     loc_4C2017

loc_4C1F69:
call    sub_4DE13B
test    eax, eax
jz      loc_4C2017
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
mov     dx, [ecx+4Ah]
sub     edx, 64h ; 'd'
mov     [eax+4Ah], dx
mov     [ecx+54h], eax
and     byte ptr [ecx], 0FDh
test    byte ptr [ecx+0Ch], 8
jnz     short loc_4C1FA5
call    sub_4C20DB

loc_4C1FA5:
mov     eax, 1
call    sub_47EEAE
or      byte ptr [ecx+0Ch], 4
xor     eax, eax
mov     al, [ecx+0Dh]
xor     edx, edx
call    sub_4C216B
jmp     loc_4C1D89

loc_4C1FC4:
mov     eax, [ecx+54h]
cmp     byte ptr [eax], 0
jmp     short loc_4C1F5A

loc_4C1FCC:
call    sub_42ABA2
test    eax, eax
jnz     short loc_4C2017
test    byte ptr [ecx+0Ch], 8
jnz     loc_4C1D89
and     ds:byte_5F8421, 0BFh
mov     byte ptr ds:dword_5F836C+1, 10h
mov     byte ptr ds:dword_5F836C+2, 2
mov     ds:dword_5F84E8, eax
jmp     loc_4C1D89

loc_4C1FFE:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
test    byte ptr [ecx+0Ch], 4
jz      short loc_4C2017
mov     eax, ecx
call    sub_4DE477

loc_4C2017:
mov     dh, [ebp+9]
cmp     dh, 0Bh
jz      short loc_4C2028
cmp     dh, 0Ch
jnz     loc_4C17A9

loc_4C2028:
call    sub_4A0E35
and     byte ptr [ebp+0BDh], 0BFh
mov     dword ptr [ebp+184h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
test    byte ptr [ecx+0Ch], 4
jz      loc_4C17A9
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C17A9
sub_4C1C1E endp ; sp-analysis failed




sub_4C2060 proc near
push    ebx
push    ecx
xor     ecx, ecx
mov     cl, [eax+3]
shl     ecx, 0Ah
sub     ecx, 400h
and     ch, 0Fh
mov     ebx, ecx
push    1FFh
mov     ecx, [edx+54h]
sar     ecx, 10h
push    ecx
lea     ecx, [edx+14h]
movsx   edx, bx
add     eax, 48h ; 'H'
mov     ebx, 1FFh
call    sub_4DE6D6
pop     ecx
pop     ebx
retn
sub_4C2060 endp




sub_4C2097 proc near
push    edx
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4C20D7
test    byte ptr [edx+0Ch], 2
jz      short loc_4C20B3
mov     byte ptr [eax+9], 0
mov     edx, 0CBh
jmp     short loc_4C20CD

loc_4C20B3:
test    byte ptr [eax+0Ch], 1
jz      short loc_4C20C4
mov     byte ptr [eax+9], 1
mov     edx, 0CAh
jmp     short loc_4C20CD

loc_4C20C4:
mov     byte ptr [eax+9], 2
mov     edx, 0CCh

loc_4C20CD:
mov     [eax+0Bh], dl
mov     eax, 1
pop     edx
retn

loc_4C20D7:
xor     eax, eax
pop     edx

locret_4C20DA:
retn
sub_4C2097 endp




sub_4C20DB proc near
mov     eax, 220h
call    sub_47E888
test    eax, eax
jz      short loc_4C2115
mov     eax, 221h
call    sub_47E888
test    eax, eax
jz      short loc_4C2115
mov     eax, 220h
call    sub_47EA91
mov     eax, 221h
call    sub_47EA91
mov     eax, 2E0h
jmp     sub_47EE82

loc_4C2115:
mov     eax, 220h
call    sub_47E888
test    eax, eax
jnz     short loc_4C213B
mov     eax, 221h
call    sub_47E888
test    eax, eax
jz      short loc_4C213B

loc_4C2131:
mov     eax, 220h
jmp     sub_47E8B8

loc_4C213B:
mov     eax, 220h
call    sub_47E888
test    eax, eax
jz      short loc_4C2131
mov     eax, 221h
call    sub_47E888
test    eax, eax
jnz     short loc_4C2131
mov     eax, 220h
call    sub_47EA91
mov     eax, 221h
jmp     sub_47E8B8
sub_4C20DB endp




sub_4C216B proc near
cmp     byte ptr ds:dword_77E7D5, 1
jnz     locret_4C20DA
cmp     ds:byte_77E7D4, 5
jnz     locret_4C20DA
and     eax, 0FFh
shl     eax, 2
add     eax, 681h
and     edx, 0FFh
add     eax, edx
jmp     sub_47E8B8
sub_4C216B endp




sub_4C219F proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]     ; int
call    ds:funcs_4C21A5[edx*4]
pop     edx
retn
sub_4C219F endp




; int __fastcall sub_4C21AE(int, int)
sub_4C21AE proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jnz     short loc_4C21CE
mov     eax, [ecx+4Ch]
sar     eax, 10h
mov     [ecx+54h], eax
mov     word ptr [ecx+4Eh], 0

loc_4C21CE:
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 6
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_5373D4
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C21AE endp




sub_4C2212 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C2222[edx*4]
cmp     byte ptr [ebp+3], 2
jz      short loc_4C227E
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
mov     eax, ebp
call    sub_432697
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
sub     [esp+2Ch+var_1E], 2Dh ; '-'
lea     eax, [ebp+58h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+58h], 0

loc_4C227E:
add     esp, 8
pop     ebp

loc_4C2282:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2212 endp




sub_4C2288 proc near
push    ebx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4C22BC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+48h]
movsd
movsd
mov     bx, [edx+4Ah]
sub     ebx, 28h ; '('
mov     [eax+4Ah], bx
mov     eax, edx
call    sub_4DE477

loc_4C22BC:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4C2288 endp




sub_4C22C1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4C22C7[edx*4]
pop     edx
retn
sub_4C22C1 endp




sub_4C22D0 proc near
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_5F84E8
cmp     eax, ecx
jnz     short loc_4C22E9
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
retn

loc_4C22E9:
test    byte ptr [eax+5Bh], 20h
jz      short loc_4C2318
mov     eax, edx
call    sub_4C2720
test    al, al
jz      short loc_4C2301
mov     byte ptr [edx+9], 2
pop     edx
pop     ecx
retn

loc_4C2301:
mov     eax, edx
call    sub_4C255B
add     edx, 48h ; 'H'
mov     eax, 13Dh
call    sub_4D8BC3
pop     edx
pop     ecx
retn

loc_4C2318:
test    byte ptr [edx+5Bh], 80h
jz      short loc_4C2325
inc     byte ptr [edx+8]
mov     byte ptr [edx+9], 0

loc_4C2325:
pop     edx
pop     ecx
retn
sub_4C22D0 endp




sub_4C2328 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4C2344
jbe     short loc_4C2383
cmp     al, 2
jz      loc_4C242F
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2344:
test    al, al
jnz     loc_4C2459
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4C2459
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_4C237B:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2383:
mov     eax, esi
call    sub_4C2720
test    al, al
jz      loc_4C241A
mov     dh, [esi+0Dh]
test    dh, dh
jnz     short loc_4C23B0
mov     ecx, [esi+0Bh]
sar     ecx, 18h
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_4C237B

loc_4C23B0:
cmp     dh, 1
jz      short loc_4C237B
mov     eax, [esi+0Ah]
sar     eax, 18h
test    al, 80h
jz      short loc_4C2409
mov     al, dh
and     al, 7Fh
and     eax, 0FFh
shl     eax, 8
xor     ecx, ecx
mov     cl, [esi+0Eh]
or      ecx, eax
mov     eax, ecx
shl     eax, 2
add     eax, ecx
add     eax, eax
mov     ecx, 0Ah
xor     edx, edx
div     ecx
xor     ecx, ecx
mov     ebx, eax
mov     edx, 1

loc_4C23ED:
xor     eax, eax
call    sub_4A6227
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
jmp     loc_4C237B

loc_4C2409:
cmp     byte ptr [esi+0Eh], 0FFh
jz      short loc_4C241A
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     ecx, ecx
xor     edx, edx
jmp     short loc_4C23ED

loc_4C241A:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
xor     eax, eax
call    sub_4A6227
jmp     loc_4C237B

loc_4C242F:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C2459
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0

loc_4C2459:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2328 endp

db 90h
jpt_4C2489 dd offset loc_4C2490 ; jump table for switch statement
dd offset loc_4C24B0
dd offset loc_4C24B3
dd offset loc_4C2515
dd offset loc_4C253E



; int __fastcall sub_4C2473(int, int)
sub_4C2473 proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_4C2489      ; jumptable 004C2489 default case
and     eax, 0FFh
jmp     jpt_4C2489[eax*4] ; switch jump

loc_4C2490:             ; jumptable 004C2489 case 0
cmp     byte ptr [esi+0Dh], 1
jz      short loc_4C24A3
lea     edx, [esi+48h]
mov     eax, 13Ch
call    sub_4D8BC3

loc_4C24A3:
mov     al, [esi+0Bh]
add     al, 10h
and     al, 3Fh
mov     [esi+0Fh], al
inc     byte ptr [esi+0Ah]

loc_4C24B0:             ; jumptable 004C2489 case 1
inc     byte ptr [esi+0Ah]

loc_4C24B3:             ; jumptable 004C2489 case 2
mov     al, [esi+0Fh]
cmp     al, [esi+0Bh]
jz      short loc_4C2501
lea     ecx, [esi+18h]
mov     eax, ecx
call    sub_4EF184
mov     al, [esi+0Bh]
and     al, 7
and     eax, 0FFh
mov     eax, ds:dword_5373DE[eax*2]
sar     eax, 10h
sar     eax, 2
mov     edx, ecx
call    sub_4EF57E
xor     eax, eax
mov     al, [esi+0Bh]
shl     eax, 6
mov     edx, ecx
call    sub_4EF50D
mov     al, [esi+0Bh]
inc     al
and     al, 3Fh
mov     [esi+0Bh], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2501:
mov     dl, [esi+0Ah]
cmp     dl, 2
jnz     short def_4C2489 ; jumptable 004C2489 default case
mov     dh, dl
inc     dh
mov     [esi+0Ah], dh
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2515:             ; jumptable 004C2489 case 3
cmp     byte ptr [esi+0Dh], 1
jnz     short loc_4C2536
cmp     byte ptr [esi+0Eh], 0FFh
jz      short loc_4C2536
mov     ecx, [esi+0Bh]
sar     ecx, 18h
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4

loc_4C2536:
inc     byte ptr [esi+0Ah]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C253E:             ; jumptable 004C2489 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4C2489 ; jumptable 004C2489 default case
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     dword ptr [esi+58h], 0

def_4C2489:             ; jumptable 004C2489 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2473 endp




; int __fastcall sub_4C255B(int, int)
sub_4C255B proc near
push    ecx             ; int
push    edx             ; int
push    esi             ; int
push    edi             ; int
mov     ecx, eax
call    sub_4DE227
test    eax, eax
jz      short loc_4C25C8
mov     dl, [ecx]
mov     [eax], dl
mov     byte ptr [eax+3], 2
mov     dl, [ecx+2]
mov     [eax+2], dl
lea     edi, [eax+48h]
lea     esi, [ecx+48h]
movsd
movsd
mov     dx, [ecx+4Ah]
sub     edx, 50h ; 'P'
mov     [eax+4Ah], dx
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Bh], 0
mov     [eax+54h], ecx
lea     edx, [eax+3]
call    sub_4DD0F8
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 6
call    sub_4EF50D
mov     byte ptr [ecx+9], 0

loc_4C25C8:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4C255B endp




; int __fastcall sub_4C25CD(int, int)
sub_4C25CD proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
lea     ebx, [eax+18h]
mov     eax, ebx
call    sub_4EF184
mov     al, [ecx+0Bh]
and     al, 7
and     eax, 0FFh
mov     eax, ds:dword_5373DE[eax*2]
sar     eax, 10h
sar     eax, 2
mov     edx, ebx
call    sub_4EF57E
xor     eax, eax
mov     al, [ecx+0Bh]
shl     eax, 6
mov     edx, ebx
call    sub_4EF50D
pop     edx
pop     ecx
pop     ebx
retn
sub_4C25CD endp




; int __fastcall sub_4C260D(int, int)
sub_4C260D proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
mov     ebx, [eax+54h]
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C2628
jbe     short loc_4C2647
cmp     al, 2
jz      short loc_4C265D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C2628:
test    al, al
jnz     loc_4C271B
mov     eax, [ecx+48h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+58h], eax
mov     dword ptr [ecx+5Ch], 200000h
mov     byte ptr [ecx+9], 1

loc_4C2647:
cmp     byte ptr [ebx+0Dh], 1
jnz     short loc_4C265A
cmp     byte ptr [ebx+0Eh], 10h
jnz     short loc_4C265A
mov     eax, ebx
call    sub_4C2761

loc_4C265A:
inc     byte ptr [ecx+9]

loc_4C265D:
mov     dx, [ebx+4Ah]
sub     edx, 50h ; 'P'
mov     eax, [ecx+5Ch]
sub     [ecx+58h], eax
sub     dword ptr [ecx+5Ch], 40000h
mov     eax, [ecx+58h]
shr     eax, 10h
mov     [ecx+4Ah], ax
mov     esi, [ecx+48h]
sar     esi, 10h
movsx   eax, dx
cmp     esi, eax
jle     short loc_4C26E3
mov     byte ptr [ebx+3], 0
mov     byte ptr [ebx+8], 1
mov     byte ptr [ebx+9], 0
mov     dword ptr [ebx+58h], 0
mov     dword ptr [ebx+5Ch], 0
lea     edx, [ebx+3]
mov     eax, ebx
call    sub_4DD0F8
lea     esi, [ebx+18h]
mov     eax, esi
call    sub_4EF184
mov     edx, esi
xor     eax, eax
call    sub_4EF486
xor     eax, eax
mov     al, [ebx+0Bh]
shl     eax, 6
mov     edx, esi
call    sub_4EF50D
mov     edx, esi
xor     eax, eax
call    sub_4EF57E
mov     eax, ecx
call    sub_4DE477
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C26E3:
lea     esi, [ecx+18h]
mov     eax, esi
call    sub_4EF184
mov     al, [ebx+0Bh]
and     al, 7
and     eax, 0FFh
mov     eax, ds:dword_5373DE[eax*2]
sar     eax, 10h
mov     edx, esi
call    sub_4EF57E
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 6
mov     edx, esi
call    sub_4EF50D
inc     byte ptr [ebx+0Bh]

loc_4C271B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C260D endp




sub_4C2720 proc near
push    edx
mov     edx, eax
mov     eax, [eax+54h]
cmp     byte ptr [edx+0Dh], 1
jnz     short loc_4C2736
cmp     byte ptr [edx+0Eh], 10h
jnz     short loc_4C2736

loc_4C2732:
xor     al, al
pop     edx
retn

loc_4C2736:
test    eax, eax
jz      short loc_4C2743
call    sub_47E888
test    eax, eax
jz      short loc_4C2732

loc_4C2743:
mov     eax, [edx+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E888
test    eax, eax
jnz     short loc_4C2732
cmp     byte ptr [edx+0Eh], 0FFh
jz      short loc_4C2732
mov     al, 1
pop     edx
retn
sub_4C2720 endp




sub_4C2761 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     bl, bl
jmp     short loc_4C2777

loc_4C276C:
inc     bl
cmp     bl, 3
jnb     loc_4C2282

loc_4C2777:
call    sub_4DDF54
mov     edx, eax
test    eax, eax
jz      short loc_4C276C
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 10h
mov     byte ptr [eax+4], 1
lea     edi, [edx+14h]
lea     esi, [ecx+48h]
movsd
movsd
mov     eax, [eax+12h]
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
xor     eax, eax
mov     al, bl
imul    eax, 600h
mov     [edx+56h], ax
jmp     short loc_4C276C
sub_4C2761 endp




sub_4C27C9 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 38h
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4C27EC
or      byte ptr [ecx], 4
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
mov     word ptr [ecx+0Ch], 0

loc_4C27EC:
xor     edx, edx
mov     dl, [ecx+0Eh]
mov     eax, edx
shl     eax, 8
add     eax, edx
shl     eax, 8
add     eax, edx
mov     [ecx+50h], eax
xor     edx, edx
mov     [esp+44h+var_14], dx
mov     [esp+44h+var_12], 800h
mov     ax, [ecx+0Ch]
mov     [esp+44h+var_10], ax
add     ecx, 18h
mov     eax, ecx
call    sub_4EF184
mov     eax, esp
call    sub_4EF184
mov     edx, esp
lea     eax, [esp+44h+var_14]
call    sub_4EF5F7
mov     ebx, ecx
mov     edx, esp
mov     eax, ecx
call    sub_4EF388
add     esp, 38h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C27C9 endp




sub_4C2845 proc near

var_20= byte ptr -20h
var_1E= word ptr -1Eh

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 7
call    sub_432697
xor     edx, edx
mov     dl, [ebp+8]     ; int
mov     eax, ebp
call    ds:funcs_4C2865[edx*4]
mov     edi, esp
lea     esi, [ebp+48h]
movsd
movsd
push    80h
push    0
push    4000000h
sub     [esp+2Ch+var_1E], 2Dh ; '-'
lea     eax, [ebp+58h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 32h ; '2'
lea     eax, [esp+34h+var_20]
call    sub_4E01FC
mov     dword ptr [ebp+58h], 0
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2845 endp




; int __fastcall sub_4C28B5(int, int)
sub_4C28B5 proc near
push    ecx             ; int
push    edx             ; int
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     eax, [ecx+4Ch]
sar     eax, 10h
mov     [ecx+54h], eax
mov     word ptr [ecx+4Eh], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
mov     eax, [ecx+0Ch]
sar     eax, 18h
shl     eax, 0Ah
call    sub_4EF50D
mov     dword ptr [ecx+50h], offset unk_808080
mov     dword ptr [ecx+10h], offset unk_537400
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+5Ch], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4C28B5 endp




sub_4C2913 proc near
push    edx
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     short loc_4C2926
mov     dl, [edx+8]
inc     dl
mov     [eax+8], dl

loc_4C2926:
test    byte ptr [eax+5Bh], 80h
jz      short loc_4C2930
mov     byte ptr [eax+8], 3

loc_4C2930:
pop     edx
retn
sub_4C2913 endp




sub_4C2932 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4C294E
jbe     short loc_4C298D
cmp     al, 2
jz      loc_4C2A44
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C294E:
test    al, al
jnz     loc_4C2A6E
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4C2A6E
mov     byte ptr ds:dword_5F836C, 3
xor     al, al
mov     byte ptr ds:dword_5F836C+1, al
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx

loc_4C2985:
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C298D:
mov     eax, esi
call    sub_4C2AAC
test    al, al
jz      loc_4C2A2C
mov     dh, [esi+0Dh]
test    dh, dh
jnz     short loc_4C29BA
mov     ecx, [esi+0Bh]
sar     ecx, 18h
lea     eax, [esi+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_4C2985

loc_4C29BA:
cmp     dh, 1
jz      short loc_4C2985
mov     eax, [esi+0Ah]
sar     eax, 18h
test    al, 80h
jz      short loc_4C2A16
mov     al, dh
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
mov     eax, edx

loc_4C29FC:
call    sub_4A6227
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
jmp     loc_4C2985

loc_4C2A16:
cmp     byte ptr [esi+0Eh], 0FFh
jz      short loc_4C2A2C
xor     ebx, ebx
mov     bl, [esi+0Eh]
xor     ecx, ecx
xor     edx, edx
mov     eax, 1
jmp     short loc_4C29FC

loc_4C2A2C:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, 1
call    sub_4A6227
jmp     loc_4C2985

loc_4C2A44:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C2A6E
mov     eax, offset byte_5F8364
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
mov     byte ptr [esi+8], 1
mov     byte ptr [esi+9], 0

loc_4C2A6E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2932 endp




sub_4C2A73 proc near
push    ebx
push    edx
push    esi
push    edi
mov     edx, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_4C2AA7
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [edx+48h]
movsd
movsd
mov     bx, [edx+4Ah]
sub     ebx, 28h ; '('
mov     [eax+4Ah], bx
mov     eax, edx
call    sub_4DE477

loc_4C2AA7:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4C2A73 endp




sub_4C2AAC proc near
push    edx
mov     edx, eax
mov     eax, [eax+54h]
test    eax, eax
jz      short loc_4C2AC3
call    sub_47E888
test    eax, eax
jnz     short loc_4C2AC3

loc_4C2ABF:
xor     al, al
pop     edx
retn

loc_4C2AC3:
mov     eax, [edx+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E888
test    eax, eax
jnz     short loc_4C2ABF
cmp     byte ptr [edx+0Eh], 0FFh
jz      short loc_4C2ABF
mov     al, 1
pop     edx
retn
sub_4C2AAC endp




sub_4C2AE1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4C2AE7[edx*4]
pop     edx
retn
sub_4C2AE1 endp




sub_4C2AF0 proc near

var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     ebx, eax
mov     ecx, offset dword_77E784
mov     al, ds:byte_77E7D4
cmp     al, 6
jb      short loc_4C2B25
jbe     short loc_4C2B55
cmp     al, 8
jb      loc_4C2B9C
jbe     loc_4C2B81
cmp     al, 19h
jz      loc_4C2B96
jmp     loc_4C2B9C

loc_4C2B25:
cmp     al, 5
jnz     loc_4C2B9C
mov     ah, byte ptr ds:dword_77E7D5+1
test    ah, ah
jnz     short loc_4C2B3F

loc_4C2B37:
mov     [ebx+3], ah
jmp     loc_4C2BA0

loc_4C2B3F:
cmp     ah, 1
jz      short loc_4C2B37
cmp     ah, 7
jg      short loc_4C2B4F
mov     byte ptr [ebx+3], 2
jmp     short loc_4C2BA0

loc_4C2B4F:
mov     byte ptr [ebx+3], 3
jmp     short loc_4C2BA0

loc_4C2B55:
mov     dl, byte ptr ds:dword_77E7D5+1
test    dl, dl
jnz     short loc_4C2B65
mov     byte ptr [ebx+3], 4
jmp     short loc_4C2BA0

loc_4C2B65:
cmp     dl, 5
jg      short loc_4C2B70
mov     byte ptr [ebx+3], 5
jmp     short loc_4C2BA0

loc_4C2B70:
cmp     dl, 7
jg      short loc_4C2B7B
mov     byte ptr [ebx+3], 6
jmp     short loc_4C2BA0

loc_4C2B7B:
mov     byte ptr [ebx+3], 7
jmp     short loc_4C2BA0

loc_4C2B81:
cmp     byte ptr ds:dword_77E7D5+1, 7
jg      short loc_4C2B90
mov     byte ptr [ebx+3], 8
jmp     short loc_4C2BA0

loc_4C2B90:
mov     byte ptr [ebx+3], 9
jmp     short loc_4C2BA0

loc_4C2B96:
mov     byte ptr [ebx+3], 0Ah
jmp     short loc_4C2BA0

loc_4C2B9C:
mov     byte ptr [ebx+3], 0FFh

loc_4C2BA0:
cmp     byte ptr [ecx+51h], 0
jz      short loc_4C2BAC
mov     byte ptr [ebx+3], 0FFh
jmp     short loc_4C2BB2

loc_4C2BAC:
cmp     byte ptr [ebx+3], 0FFh
jnz     short loc_4C2BBB

loc_4C2BB2:
mov     eax, ebx
call    sub_4DE477
jmp     short loc_4C2C21

loc_4C2BBB:
xor     edx, edx
mov     [esp+18h+var_18], dx
mov     edi, 11Ch

loc_4C2BC6:
xor     eax, eax
mov     al, [ebx+3]
mov     eax, ds:dword_53740A[eax*8]
sar     eax, 10h
mov     esi, [esp-2]
sar     esi, 10h
cmp     esi, eax
jge     short loc_4C2C1E
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      short loc_4C2C18
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 4
mov     al, [ebx+3]
mov     [ecx+0Ch], al
mov     al, byte ptr [esp+18h+var_18]
mov     [ecx+0Dh], al
mov     eax, ecx
sub     eax, offset byte_57098C
xor     edx, edx
div     edi
mov     dl, al
lea     eax, [ebx+esi]
mov     [eax+14h], dl
mov     ds:dword_55D0E0[esi*4], ecx

loc_4C2C18:
inc     [esp+18h+var_18]
jmp     short loc_4C2BC6

loc_4C2C1E:
inc     byte ptr [ebx+8]

loc_4C2C21:
add     esp, 4

loc_4C2C24:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2AF0 endp




sub_4C2C2A proc near
push    edx
mov     edx, eax
call    sub_4C2C79
mov     eax, edx
call    sub_4C2CE0
mov     eax, edx
call    sub_4C3374
pop     edx
retn
sub_4C2C2A endp




sub_4C2C42 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx

loc_4C2C49:
xor     eax, eax
mov     al, [ecx+3]
mov     ebx, ds:dword_53740A[eax*8]
sar     ebx, 10h
movsx   eax, dx
cmp     eax, ebx
jge     short loc_4C2C6E
mov     eax, ds:dword_55D0E0[eax*4]
call    sub_4DE371
inc     edx
jmp     short loc_4C2C49

loc_4C2C6E:
mov     eax, ecx
call    sub_4DE477
pop     edx
pop     ecx
pop     ebx
sub_4C2C42 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_99]



sub_4C2C79 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     ebx, eax
xor     edx, edx
mov     [esp+18h+var_18], edx
xor     edx, edx

loc_4C2C89:
xor     eax, eax
mov     al, [ebx+3]
mov     ecx, ds:dword_53740A[eax*8]
sar     ecx, 10h
movsx   eax, dx
cmp     eax, ecx
jge     short loc_4C2CD8
test    dl, 3
jnz     short loc_4C2CB5
mov     ecx, eax
sar     ecx, 2
mov     ecx, [ebx+ecx*4+14h]
mov     [esp+18h+var_18], ecx
mov     cl, byte ptr [esp+18h+var_18]
jmp     short loc_4C2CCF

loc_4C2CB5:
mov     ecx, edx
xor     ch, dh
and     cl, 3
movsx   ecx, cx
shl     ecx, 3
mov     esi, [esp+18h+var_18]
shr     esi, cl
mov     [esp+18h+var_14], esi
mov     cl, byte ptr [esp+18h+var_14]

loc_4C2CCF:
mov     ds:byte_55D0D0[eax], cl
inc     edx
jmp     short loc_4C2C89

loc_4C2CD8:
add     esp, 8
pop     esi

loc_4C2CDC:
pop     edx
pop     ecx
pop     ebx
retn
sub_4C2C79 endp




sub_4C2CE0 proc near

var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
xor     edx, edx
mov     [esp+1Ch+var_1C], edx
mov     [esp+1Ch+var_18], dx

loc_4C2CF4:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
mov     eax, [esp+1Ch+var_1C+2]
sar     eax, 10h
cmp     eax, edx
jge     loc_4C2E50
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     esi, offset byte_57098C
add     esi, eax
lea     edi, [esi+0DCh]
and     byte ptr [edi+0Fh], 0F9h
xor     ebx, ebx

loc_4C2D3C:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
movsx   eax, bx
cmp     eax, edx
jge     short loc_4C2D85
mov     edx, [esp+1Ch+var_1C+2]
sar     edx, 10h
cmp     edx, eax
jz      short loc_4C2D82
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     edx, offset byte_57098C
add     edx, eax
mov     eax, esi
call    sub_4C2E58

loc_4C2D82:
inc     ebx
jmp     short loc_4C2D3C

loc_4C2D85:
mov     dl, [edi+0Fh]
test    dl, 20h
jz      loc_4C2E46
mov     al, dl
and     al, 50h
cmp     al, 50h ; 'P'
jnz     short loc_4C2DBC
mov     ax, [edi+1Ch]
test    ax, ax
jle     short loc_4C2DAE
mov     edx, eax
dec     edx
mov     [edi+1Ch], dx
jmp     loc_4C2E46

loc_4C2DAE:
mov     dh, dl
and     dh, 0EFh
mov     [edi+0Fh], dh
mov     word ptr [edi+1Ch], 0Fh

loc_4C2DBC:
xor     ebx, ebx

loc_4C2DBE:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
movsx   eax, bx
cmp     eax, edx
jge     short loc_4C2E0F
mov     edx, [esp+1Ch+var_1C+2]
sar     edx, 10h
cmp     edx, eax
jz      short loc_4C2E0C
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
mov     edx, offset byte_57098C
add     edx, eax
mov     eax, esi
call    sub_4C3051
mov     [esp+1Ch+var_1C], eax
test    ax, ax
jz      short loc_4C2E0F

loc_4C2E0C:
inc     ebx
jmp     short loc_4C2DBE

loc_4C2E0F:
mov     ebx, [esp+1Ch+var_1C]
test    bx, bx
jz      short loc_4C2E42
mov     si, [edi+1Ch]
inc     esi
mov     [edi+1Ch], si
cmp     si, 0Fh
jle     short loc_4C2E46
mov     word ptr [edi+1Ch], 0
mov     bl, [edi+0Fh]
test    bl, 40h
jnz     short loc_4C2E3C
mov     bh, bl
or      bh, 1
mov     [edi+0Fh], bh

loc_4C2E3C:
and     byte ptr [edi+0Fh], 0CFh
jmp     short loc_4C2E46

loc_4C2E42:
mov     [edi+1Ch], bx

loc_4C2E46:
inc     [esp+1Ch+var_18]
jmp     loc_4C2CF4

loc_4C2E50:
add     esp, 8
jmp     loc_4C2C24
sub_4C2CE0 endp




sub_4C2E58 proc near

var_28= dword ptr -28h
var_24= word ptr -24h
var_20= word ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ecx, edx
lea     edx, [eax+0DCh]
lea     esi, [ecx+0DCh]
mov     bl, [edx+0Ch]
shl     bl, 2
mov     bh, [edx+0Dh]
or      bh, bl
mov     bl, [esi+0Dh]
shl     bl, 4
or      bh, bl
mov     bl, [esi+0Ch]
shl     bl, 6
or      bl, bh
mov     bh, bl
and     bh, 0Ch
mov     [esp+28h+var_1C], bh
test    bl, 1
jz      short loc_4C2F03
mov     edi, [eax+16h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_24], di
mov     edi, [ecx+16h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_20], di
cmp     byte ptr [eax+9], 2
jnz     short loc_4C2ED7
cmp     [esp+28h+var_1C], 8
jnz     short loc_4C2ED7
inc     [esp+28h+var_24]

loc_4C2ED7:
cmp     byte ptr [ecx+9], 2
jnz     loc_4C2F67
test    bl, 30h
jz      loc_4C2F62
mov     bh, bl
and     bh, 0F3h
cmp     bh, 0B3h
jz      loc_4C2F62
cmp     bh, 91h
jnz     loc_4C2F67
jmp     short loc_4C2F62

loc_4C2F03:
mov     edi, [eax+12h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_24], di
mov     edi, [ecx+12h]
sar     edi, 10h
sar     edi, 9
add     edi, 40h ; '@'
mov     [esp+28h+var_28], edi
mov     edi, [esp+28h+var_28]
mov     [esp+28h+var_20], di
cmp     byte ptr [eax+9], 2
jnz     short loc_4C2F43
cmp     [esp+28h+var_1C], 0Ch
jnz     short loc_4C2F43
inc     [esp+28h+var_24]

loc_4C2F43:
cmp     byte ptr [ecx+9], 2
jnz     short loc_4C2F67
mov     bh, bl
and     bh, 30h
cmp     bh, 10h
jz      short loc_4C2F62
mov     bh, bl
and     bh, 0F3h
cmp     bh, 0E2h
jz      short loc_4C2F62
cmp     bh, 0C0h
jnz     short loc_4C2F67

loc_4C2F62:
inc     [esp+28h+var_20]

loc_4C2F67:
mov     edi, [esp+28h+var_28+2]
sar     edi, 10h
mov     [esp+28h+var_28], edi
mov     edi, [esp+6]
sar     edi, 10h
mov     ebp, [esp+28h+var_28]
sub     ebp, edi
jnz     loc_4C3048
mov     edi, [eax+42h]
sar     edi, 10h
mov     [esp+28h+var_28], edi
mov     edi, [ecx+42h]
sar     edi, 10h
mov     ebp, [esp+28h+var_28]
sub     ebp, edi
mov     edi, ebp
sar     ebp, 4
add     ebp, 6
imul    edi, ebp
sar     edi, 4
cmp     word ptr [eax+44h], 100h
jg      short loc_4C2FB4
cmp     word ptr [eax+44h], 0
jnz     short loc_4C2FBC

loc_4C2FB4:
add     edi, 600h
jmp     short loc_4C2FC2

loc_4C2FBC:
add     edi, 400h

loc_4C2FC2:
mov     bh, bl
and     bh, 3
mov     [esp+28h+var_18], bh
test    bl, 1
jz      short loc_4C2FE5
mov     cx, [ecx+14h]
mov     bx, [eax+14h]
sub     ecx, ebx
xor     ebx, ebx
mov     bl, [esp+28h+var_18]
sub     ebx, 2
jmp     short loc_4C2FF6

loc_4C2FE5:
mov     cx, [ecx+18h]
mov     bx, [eax+18h]
sub     ecx, ebx
xor     ebx, ebx
mov     bl, [esp+28h+var_18]
dec     ebx

loc_4C2FF6:
imul    ecx, ebx
test    cx, cx
jl      short loc_4C3048
movsx   ebx, cx
cmp     ebx, edi
jge     short loc_4C3048
mov     edi, [edx+12h]
sar     edi, 10h
cmp     ebx, edi
jge     short loc_4C3048
mov     eax, [eax+42h]
sar     eax, 10h
mov     ebx, [esi+0Eh]
sar     ebx, 10h
cmp     eax, ebx
jle     short loc_4C3027
mov     ax, [esi+10h]
mov     [edx+10h], ax

loc_4C3027:
mov     al, [edx+0Fh]
or      al, 2
mov     [edx+0Fh], al
cmp     cx, 3C0h
jge     short loc_4C3044
mov     ah, al
or      ah, 4
mov     [edx+0Fh], ah
mov     word ptr [edx+10h], 0

loc_4C3044:
mov     [edx+14h], cx

loc_4C3048:
add     esp, 14h
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4C2E58 endp




sub_4C3051 proc near

var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 10h
mov     ecx, edx
lea     edx, [eax+0DCh]
movzx   si, byte ptr [edx+0Dh]
mov     ebx, [eax+12h]
sar     ebx, 10h
sar     ebx, 9
lea     edi, [ebx+40h]
cmp     si, 3
jnz     short loc_4C307E
mov     ebx, 1
jmp     short loc_4C3080

loc_4C307E:
xor     ebx, ebx

loc_4C3080:
add     ebx, edi
mov     [esp+20h+var_20], bx
mov     eax, [eax+16h]
sar     eax, 10h
sar     eax, 9
lea     ebx, [eax+40h]
cmp     si, 2
jnz     short loc_4C309F
mov     eax, 1
jmp     short loc_4C30A1

loc_4C309F:
xor     eax, eax

loc_4C30A1:
add     eax, ebx
mov     [esp+20h+var_1E], ax
mov     eax, [ecx+12h]
sar     eax, 10h
sar     eax, 9
add     eax, 40h ; '@'
mov     [esp+20h+var_1C], ax
mov     eax, [ecx+16h]
sar     eax, 10h
sar     eax, 9
add     eax, 40h ; '@'
mov     [esp+20h+var_1A], ax
mov     [esp+20h+var_18], 1
xor     eax, eax
mov     al, [edx+0Eh]
mov     edx, [edx]
mov     al, [edx+eax*8+3]
mov     [esp+20h+var_14], al
test    al, 1
jz      short loc_4C3106
movsx   edx, si
mov     ecx, 10h
mov     ebx, 1
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C3106
xor     ah, ah
mov     [esp+20h+var_18], ah
jmp     loc_4C3257

loc_4C3106:
test    [esp+20h+var_14], 10h
jz      short loc_4C313C
mov     eax, esi
add     eax, 2
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFFh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C313C
xor     al, al
mov     [esp+20h+var_18], al
jmp     loc_4C3257

loc_4C313C:
test    [esp+20h+var_14], 2
jz      short loc_4C3167
movsx   edx, si
mov     ecx, 10h
mov     ebx, 2
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C3167
xor     ch, ch
mov     [esp+20h+var_18], ch
jmp     loc_4C3257

loc_4C3167:
test    [esp+20h+var_14], 20h
jz      short loc_4C319D
mov     eax, esi
add     eax, 2
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFEh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C319D
xor     cl, cl
mov     [esp+20h+var_18], cl
jmp     loc_4C3257

loc_4C319D:
test    [esp+20h+var_14], 4
jz      short loc_4C31C8
movsx   edx, si
mov     ecx, 10h
mov     ebx, 3
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C31C8
xor     bh, bh
mov     [esp+20h+var_18], bh
jmp     loc_4C3257

loc_4C31C8:
test    [esp+20h+var_14], 40h
jz      short loc_4C31FB
mov     eax, esi
add     eax, 2
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFDh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C31FB
xor     bl, bl
mov     [esp+20h+var_18], bl
jmp     short loc_4C3257

loc_4C31FB:
test    [esp+20h+var_14], 8
jz      short loc_4C322E
mov     eax, esi
add     eax, 3
xor     ah, ah
and     al, 3
movsx   edx, ax
mov     ecx, 10h
mov     ebx, 0FFFFFFFFh
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C322E
xor     dh, dh
mov     [esp+20h+var_18], dh
jmp     short loc_4C3257

loc_4C322E:
test    [esp+20h+var_14], 80h
jz      short loc_4C3257
add     esi, 3
and     esi, 3
movsx   edx, si
mov     ecx, 6
xor     ebx, ebx
mov     eax, esp
call    sub_4C3275
test    ax, ax
jnz     short loc_4C3257
xor     dl, dl
mov     [esp+20h+var_18], dl

loc_4C3257:
xor     eax, eax
mov     al, [esp+20h+var_18]
add     esp, 10h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4C3051 endp

off_4C3265 dd offset loc_4C32AE
dd offset loc_4C32E8
dd offset loc_4C3315
dd offset loc_4C333E



sub_4C3275 proc near

var_14= word ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     [esp+14h+var_10], edx
mov     si, [eax]
mov     dx, [eax+2]
mov     [esp+14h+var_14], dx
mov     dx, [eax+4]
mov     di, [eax+6]
mov     al, 1
cmp     word ptr [esp+14h+var_10], 3
ja      loc_4C336B
movzx   ebp, word ptr [esp+14h+var_10]
shl     ebp, 2
jmp     ss:off_4C3265[ebp]

loc_4C32AE:
mov     ebp, [esp-2]
sar     ebp, 10h
movsx   ebx, bx
sub     ebp, ebx
movsx   edi, di
cmp     edi, ebp
jnz     loc_4C336B
movsx   ebx, si
movsx   ecx, cx
mov     esi, ebx
sub     esi, ecx
movsx   edx, dx
cmp     edx, esi
jl      loc_4C336B
inc     ebx
cmp     edx, ebx

loc_4C32DD:
jg      loc_4C336B
jmp     loc_4C3369

loc_4C32E8:
movsx   esi, si
movsx   ebx, bx
sub     esi, ebx
movsx   edx, dx
cmp     edx, esi
jnz     loc_4C336B
mov     edx, [esp-2]
sar     edx, 10h
movsx   ebx, di
lea     esi, [edx-1]
cmp     ebx, esi
jl      short loc_4C336B
movsx   ecx, cx
add     edx, ecx
cmp     ebx, edx
jmp     short loc_4C32DD

loc_4C3315:
mov     ebp, [esp-2]
sar     ebp, 10h
movsx   ebx, bx
add     ebx, ebp
movsx   edi, di
cmp     edi, ebx
jnz     short loc_4C336B
movsx   ebx, si
movsx   edx, dx
lea     esi, [ebx-1]
cmp     edx, esi
jl      short loc_4C336B
movsx   ecx, cx
add     ecx, ebx
cmp     edx, ecx
jmp     short loc_4C32DD

loc_4C333E:
movsx   esi, si
movsx   ebx, bx
add     ebx, esi
movsx   edx, dx
cmp     edx, ebx
jnz     short loc_4C336B
mov     edx, [esp-2]
sar     edx, 10h
movsx   ecx, cx
mov     ebx, edx
sub     ebx, ecx
mov     ecx, ebx
movsx   ebx, di
cmp     ebx, ecx
jl      short loc_4C336B
inc     edx
cmp     ebx, edx
jg      short loc_4C336B

loc_4C3369:
xor     al, al

loc_4C336B:
xor     ah, ah
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn
sub_4C3275 endp




sub_4C3374 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx

loc_4C337B:
xor     eax, eax
mov     al, [ecx+3]
mov     edx, ds:dword_53740A[eax*8]
sar     edx, 10h
movsx   eax, bx
cmp     eax, edx
jge     loc_4C2CDC
xor     edx, edx
mov     dl, ds:byte_55D0D0[eax]
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 3
sub     eax, edx
shl     eax, 2
add     eax, offset byte_57098C
call    sub_4C33B9
inc     ebx
jmp     short loc_4C337B
sub_4C3374 endp




sub_4C33B9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 0DCh
mov     bl, [eax+0Fh]
xor     ecx, ecx
mov     cl, [eax+0Eh]
mov     esi, ecx
shl     esi, 3
mov     ecx, [eax]
mov     bh, [ecx+esi+2]
and     bh, 0E0h
test    bl, 20h
jnz     loc_4C3466
test    bl, 10h
jz      short loc_4C3436
mov     word ptr [eax+10h], 0
cmp     word ptr [edx+44h], 0
jnz     loc_4C3466
test    bh, 80h
jz      short loc_4C3427
or      byte ptr [eax+0Fh], 60h
cmp     bh, 80h
jnz     short loc_4C340F
mov     word ptr [eax+1Ch], 0Fh
jmp     short loc_4C342B

loc_4C340F:
cmp     bh, 0A0h
jnz     short loc_4C341C
mov     word ptr [eax+1Ch], 1Eh
jmp     short loc_4C342B

loc_4C341C:
cmp     bh, 0C0h
mov     word ptr [eax+1Ch], 0F0h
jmp     short loc_4C342B

loc_4C3427:
or      byte ptr [eax+0Fh], 20h

loc_4C342B:
mov     word ptr [edx+4Ch], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C3436:
test    bl, 2
jnz     short loc_4C3466
test    bl, 1
jz      short loc_4C344B
mov     word ptr [eax+10h], 140h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4C344B:
mov     ecx, edx
mov     ecx, [ecx+0Ah]
sar     ecx, 18h
shl     ecx, 3
mov     edx, [eax+4]
mov     dl, [ecx+edx+2]
xor     dh, dh
shl     edx, 4
mov     [eax+10h], dx

loc_4C3466:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C33B9 endp




sub_4C346B proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4C3474[ecx*4]
mov     dword ptr [edx+58h], 0
pop     edx
pop     ecx
retn
sub_4C346B endp




sub_4C3485 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
mov     ah, [eax]
or      ah, 6
mov     [esi], ah
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
lea     ecx, [esi+18h]
mov     eax, ecx
call    sub_4EF184
mov     edx, 400h
mov     [esp+20h+var_18], edx
mov     [esp+20h+var_1C], edx
mov     [esp+20h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
xor     ecx, ecx
mov     cl, [esi+1]
lea     eax, [esi+48h]
xor     ebx, ebx
xor     edx, edx
call    sub_42C5B7
sub     eax, 0Ah
mov     [esi+4Ah], ax
mov     dword ptr [esi+50h], offset unk_808080
mov     dword ptr [esi+10h], offset unk_537480
mov     dword ptr [esi+58h], 0
mov     dword ptr [esi+5Ch], 0
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3485 endp




sub_4C3504 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     eax, 670h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3550
mov     ah, [edx+0Dh]
test    ah, ah
jz      short loc_4C352A
dec     ah
mov     [edx+0Dh], ah
jmp     short loc_4C3550

loc_4C352A:
mov     bl, [edx+0Ch]
test    bl, bl
jnz     short loc_4C3545
inc     byte ptr [edx+8]
mov     [edx+9], ah

loc_4C3537:
mov     eax, 670h
call    sub_47E8B8
pop     edx
pop     ecx
pop     ebx
retn

loc_4C3545:
mov     al, bl
dec     al
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 3Ch ; '<'

loc_4C3550:
mov     ebx, [ecx+184h]
cmp     edx, ebx
jnz     short loc_4C3568
mov     bl, [ebx+8]
inc     bl
mov     [edx+8], bl
mov     byte ptr [edx+9], 0Ah
jmp     short loc_4C3537

loc_4C3568:
push    80h
push    0
push    4000000h
lea     eax, [edx+58h]
push    eax
xor     eax, eax
mov     al, [edx+1]
push    eax
lea     eax, [edx+48h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3504 endp




sub_4C3596 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ecx, offset unk_77E5F4
mov     edx, offset byte_5F8364
mov     al, [eax+9]
cmp     al, 7
jb      short loc_4C35EE
jbe     loc_4C380C
cmp     al, 0Dh
jb      short loc_4C35D2
jbe     loc_4C3886
cmp     al, 0Fh
jb      loc_4C38B6
jbe     loc_4C38E7
jmp     loc_4C390F

loc_4C35D2:
cmp     al, 0Bh
jb      short loc_4C35E1
jbe     loc_4C384D
jmp     loc_4C3860

loc_4C35E1:
cmp     al, 0Ah
jz      loc_4C381E
jmp     loc_4C390F

loc_4C35EE:
cmp     al, 3
jb      short loc_4C360B
jbe     loc_4C36E9
cmp     al, 5
jb      loc_4C36F6
jbe     loc_4C37B5
jmp     loc_4C37EA

loc_4C360B:
cmp     al, 1
jb      short loc_4C3616
jbe     short loc_4C363F
jmp     loc_4C36D3

loc_4C3616:
test    al, al
jnz     loc_4C390F
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_4C390F
call    sub_42ABA2
test    eax, eax

loc_4C3634:
jnz     loc_4C390F
jmp     loc_4C37E2

loc_4C363F:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, [ebp+46h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+10h], eax
mov     eax, [ebp+48h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+14h], eax
mov     eax, [ebp+4Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+18h], eax
xor     eax, eax
mov     al, [ebp+3]
mov     edx, eax
shl     edx, 5
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:dword_53755E[edx+eax*8]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+40h], eax
xor     eax, eax
mov     al, [ebp+3]
mov     edx, eax
shl     edx, 5
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:(dword_53755E+2)[edx+eax*8]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+44h], eax
xor     eax, eax
mov     al, [ebp+3]
mov     edx, eax
shl     edx, 5
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:dword_537562[edx+eax*8]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+48h], eax
jmp     loc_4C37E2

loc_4C36D3:
call    sub_42ABA2
test    eax, eax
jnz     loc_4C390F
mov     byte ptr [ebp+0Ch], 1Eh
jmp     loc_4C37E2

loc_4C36E9:
mov     al, [ebp+0Ch]
dec     al
mov     [ebp+0Ch], al
jmp     loc_4C3634

loc_4C36F6:
call    sub_4DE13B
mov     ecx, eax
test    eax, eax
jz      loc_4C390F
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [ecx+48h]
lea     esi, [ebp+48h]
movsd
movsd
mov     dx, [ebp+4Ah]
sub     edx, 32h ; '2'
mov     [eax+4Ah], dx
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A4h
call    sub_4D89E4
mov     dh, [ebp+3]
test    dh, dh
jnz     short loc_4C3751
mov     edx, 2710h
lea     eax, [ebp+48h]
call    sub_42C443
or      eax, 0F0000h
call    sub_4EE6C2
jmp     short loc_4C37A7

loc_4C3751:
cmp     dh, 1
jnz     short loc_4C3774
mov     edx, 2710h
lea     eax, [ebp+48h]
call    sub_42C443
or      eax, 0F0000h
call    sub_4EE6C2
mov     eax, 671h
jmp     short loc_4C37A2

loc_4C3774:
cmp     dh, 2
jnz     short loc_4C37A7
mov     edx, 2710h
mov     eax, [ebp+0Bh]
sar     eax, 18h
shl     eax, 3
mov     ebx, offset unk_537540
add     eax, ebx
call    sub_42C443
or      eax, 0F0000h
call    sub_4EE6C2
mov     eax, 672h

loc_4C37A2:
call    sub_47E8B8

loc_4C37A7:
call    sub_4C3916
mov     [ebp+54h], ecx
and     byte ptr [ebp+0], 0FDh
jmp     short loc_4C37E2

loc_4C37B5:
mov     ecx, [ebp+54h]
cmp     byte ptr [ecx], 0
jnz     loc_4C390F
cmp     byte ptr [ebp+3], 0
jz      short loc_4C37CE
mov     ecx, 41h ; 'A'
jmp     short loc_4C37D3

loc_4C37CE:
mov     ecx, 3Eh ; '>'

loc_4C37D3:
lea     eax, [ebp+48h]
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4

loc_4C37E2:
inc     byte ptr [ebp+9]
jmp     loc_4C390F

loc_4C37EA:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_4C390F
mov     cl, 1
mov     byte ptr ds:dword_77E954, cl
call    sub_42A66D
add     [ebp+9], cl
jmp     loc_4C390F

loc_4C380C:
call    sub_42ABA2
test    eax, eax
jnz     loc_4C390F
jmp     loc_4C38F0

loc_4C381E:
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_4C390F
mov     byte ptr ds:dword_5F836C, 3
xor     ah, ah
mov     byte ptr ds:dword_5F836C+1, ah
mov     ds:byte_5F88AC, 30h ; '0'
xor     edx, edx
mov     ds:dword_5F8370, edx
jmp     short loc_4C37E2

loc_4C384D:
mov     ds:byte_5F88AC, 34h ; '4'
inc     byte ptr [ebp+9]
mov     byte ptr [ebp+0Ch], 10h
jmp     loc_4C390F

loc_4C3860:
mov     ch, [ebp+0Ch]
test    ch, ch
jz      short loc_4C3870
mov     ah, ch
dec     ah
mov     [ebp+0Ch], ah
jmp     short loc_4C3874

loc_4C3870:
and     byte ptr [ebp+0], 0FDh

loc_4C3874:
cmp     byte ptr [edx+0A7h], 0
jge     loc_4C390F
jmp     loc_4C37E2

loc_4C3886:
mov     eax, 671h
call    sub_47E888
test    eax, eax
jnz     short loc_4C38A2
mov     eax, 672h
call    sub_47E888
test    eax, eax
jz      short loc_4C38AC

loc_4C38A2:
mov     ecx, 40h ; '@'
jmp     loc_4C37D3

loc_4C38AC:
mov     ecx, 3Fh ; '?'
jmp     loc_4C37D3

loc_4C38B6:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short loc_4C390F
mov     dh, [ebp+3]
cmp     dh, 1
jnz     short loc_4C38CE
mov     eax, 671h
jmp     short loc_4C38D8

loc_4C38CE:
cmp     dh, 2
jnz     short loc_4C38DD
mov     eax, 672h

loc_4C38D8:
call    sub_47E8B8

loc_4C38DD:
call    sub_4C3916
jmp     loc_4C37E2

loc_4C38E7:
call    sub_42ABA2
test    eax, eax
jnz     short loc_4C390F

loc_4C38F0:
mov     eax, edx
call    sub_4B565A
or      ds:byte_5F8364, 2
mov     eax, ebp
call    sub_4DE477
mov     eax, 670h
call    sub_47EA91

loc_4C390F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3596 endp




sub_4C3916 proc near
mov     eax, 671h
call    sub_47E888
test    eax, eax
jz      loc_4C39D1
mov     eax, 672h
call    sub_47E888
test    eax, eax
jz      loc_4C39D1
mov     eax, 575h
call    sub_47E888
test    eax, eax
jz      short loc_4C3956
mov     eax, 576h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3994

loc_4C3956:
mov     eax, 575h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3979
mov     eax, 576h
call    sub_47E888
test    eax, eax
jnz     short loc_4C3979
mov     eax, 5
jmp     short loc_4C397E

loc_4C3979:
mov     eax, 4

loc_4C397E:
call    sub_47EEAE
mov     eax, 205h
call    sub_47E8B8
mov     eax, 2E6h
jmp     short loc_4C39A3

loc_4C3994:
mov     eax, 8
call    sub_47EEAE
mov     eax, 2E5h

loc_4C39A3:
call    sub_47EE82
mov     eax, 7E0h
call    sub_47EA91
mov     eax, 236h
call    sub_47EA91
mov     eax, 206h
call    sub_47E8B8
mov     ah, 1
mov     byte ptr ds:word_77E7FC, ah
mov     al, ah
retn

loc_4C39D1:
xor     al, al
retn
sub_4C3916 endp




sub_4C39D4 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     eax, [eax+54h]
cmp     byte ptr [eax], 0
jnz     short loc_4C39F2
mov     eax, ecx
call    sub_4DE477
jmp     loc_4C3A7D

loc_4C39F2:
mov     bl, [ecx+8]
test    bl, bl
jbe     short loc_4C3A03
cmp     bl, 1
jz      short loc_4C3A1A
jmp     loc_4C3A7D

loc_4C3A03:
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]

loc_4C3A1A:
mov     ebx, [ecx+54h]
lea     edi, [esp+2Ch+var_1C]
lea     esi, [ebx+54h]
movsd
movsd
xor     edx, edx
mov     [esp+2Ch+var_1C], dx
mov     [esp+2Ch+var_18], dx
lea     edx, [ecx+18h]
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     [esp+2Ch+var_2C], 600h
cmp     byte ptr [ebx+3], 0
jnz     short loc_4C3A55
mov     [esp+2Ch+var_28], 200h
jmp     short loc_4C3A5D

loc_4C3A55:
mov     [esp+2Ch+var_28], 400h

loc_4C3A5D:
mov     [esp+2Ch+var_24], 600h
lea     eax, [ecx+18h]
mov     edx, esp
call    sub_4EF689
lea     edi, [ecx+48h]
lea     esi, [ebx+14h]
movsd
movsd
mov     word ptr [ecx+4Ah], 0FFFFh

loc_4C3A7D:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4C39D4 endp




sub_4C3A86 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 18h
mov     ecx, eax
cmp     byte ptr ds:dword_560BE0, 0Bh
jnz     short loc_4C3AA0
mov     eax, ecx
call    sub_4DE477
jmp     short loc_4C3B08

loc_4C3AA0:
mov     al, [ecx+8]
test    al, al
ja      short loc_4C3B08
or      byte ptr [ecx], 6
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
xor     edx, edx
mov     [esp+24h+var_14], dx
mov     [esp+24h+var_12], dx
mov     [esp+24h+var_10], dx
lea     ebx, [ecx+18h]
mov     edx, ebx
lea     eax, [esp+24h+var_14]
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ah], 0FFFFh
mov     word ptr [ecx+4Ch], 200h
inc     byte ptr [ecx+8]

loc_4C3B08:
add     esp, 18h
pop     edx
pop     ecx
pop     ebx
retn
sub_4C3A86 endp




sub_4C3B0F proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_4C3B15[edx*4]
pop     edx
retn
sub_4C3B0F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_100]



sub_4C3B1F proc near
push    edx
push    esi
mov     dl, [eax+0Ah]
cmp     dl, 0Ah
jb      short loc_4C3B4A
jbe     short loc_4C3B7D
cmp     dl, 15h
jb      short loc_4C3B42
jbe     loc_4C3BA3
cmp     dl, 16h
jz      loc_4C3BB8
pop     esi
pop     edx
retn

loc_4C3B42:
cmp     dl, 14h
jz      short loc_4C3B91
pop     esi
pop     edx
retn

loc_4C3B4A:
cmp     dl, 1
jb      short loc_4C3B54
jbe     short loc_4C3B68
pop     esi
pop     edx
retn

loc_4C3B54:
test    dl, dl
jnz     loc_4C3BCE
mov     word ptr [eax+0Ch], 0

loc_4C3B62:
inc     byte ptr [eax+0Ah]
pop     esi
pop     edx
retn

loc_4C3B68:
sub     word ptr [eax+0Ch], 2
mov     edx, [eax+0Ah]
sar     edx, 10h
cmp     edx, 0FFFFFC7Ch
jg      short loc_4C3BCE
jmp     short loc_4C3B62

loc_4C3B7D:
mov     dx, [eax+4Ah]
add     edx, 2
mov     [eax+4Ah], dx
cmp     dx, 370h

loc_4C3B8D:
jl      short loc_4C3BCE
jmp     short loc_4C3BCA

loc_4C3B91:
mov     si, [eax+4Ah]
sub     esi, 2
mov     [eax+4Ah], si
cmp     si, 96h
jmp     short loc_4C3B8D

loc_4C3BA3:
sub     word ptr [eax+48h], 2
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFFF6Ah
jg      short loc_4C3BCE
jmp     short loc_4C3BCA

loc_4C3BB8:
mov     dx, [eax+48h]
add     edx, 2
mov     [eax+48h], dx
cmp     dx, 96h
jl      short loc_4C3BCE

loc_4C3BCA:
mov     byte ptr [eax+0Ah], 2

loc_4C3BCE:
pop     esi
pop     edx
sub_4C3B1F endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_101]



sub_4C3BD1 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 3Ch
mov     ecx, eax
mov     al, [eax+8]
cmp     al, 1
jb      short loc_4C3BE8
jbe     short loc_4C3C0A
jmp     loc_4C3C61

loc_4C3BE8:
test    al, al
jnz     short loc_4C3C61
mov     al, [ecx+3]
mov     [esp+4Ch+var_14], al
lea     edx, [esp+4Ch+var_14]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
inc     byte ptr [ecx+8]
jmp     short loc_4C3C61
