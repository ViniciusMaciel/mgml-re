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

