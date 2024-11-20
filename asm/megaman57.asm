loc_484009:
cmp     dword ptr [ebp+0Ch], 50h ; 'P'
jnz     def_483CE5      ; jumptable 00483CE5 default case
inc     byte ptr [ebp+6]
mov     eax, ds:dword_55A384
mov     byte ptr [eax+9], 1
mov     word ptr [eax+0Ah], 0
mov     edx, ds:dword_55A388
jmp     loc_483ED5

loc_484030:             ; jumptable 00483CE5 case 9
mov     esi, [ebp+0Ch]
dec     esi
mov     [ebp+0Ch], esi
test    esi, esi
jge     def_483CE5      ; jumptable 00483CE5 default case
call    sub_49DF64
inc     byte ptr [ebp+6]
mov     ds:dword_5F888C, 0F5D70000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 4540000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F83B8+2, 6CCh
mov     eax, 3
call    sub_484DF3
mov     eax, 4
call    sub_484DF3
mov     eax, 1
call    sub_484DF3
mov     dword ptr [ebp+0Ch], 0B4h
xor     ebx, ebx
xor     edx, edx
mov     eax, 10Fh
call    sub_4D89E4
mov     eax, ds:dword_55A388
mov     word ptr [eax+56h], 800h
mov     eax, ds:dword_55A388
or      byte ptr [eax+0Fh], 40h
mov     eax, ds:dword_55A388
mov     byte ptr [eax+9], 1
mov     eax, ds:dword_55A388
mov     byte ptr [eax+0Ah], 0
mov     eax, ds:dword_55A388
mov     byte ptr [eax+0Bh], 0
jmp     short def_483CE5 ; jumptable 00483CE5 default case

loc_4840EC:             ; jumptable 00483CE5 case 10
mov     ecx, [ebp+0Ch]
dec     ecx
mov     [ebp+0Ch], ecx
test    ecx, ecx
jge     short def_483CE5 ; jumptable 00483CE5 default case
mov     word ptr ds:dword_5F88A4+2, 800h
jmp     loc_483D52

loc_484105:             ; jumptable 00483CE5 case 11
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 5
call    sub_484DF3
mov     byte ptr [ebp+0], 0
xor     eax, eax
call    sub_47E8B8
jmp     short def_483CE5 ; jumptable 00483CE5 default case

loc_484132:             ; jumptable 00483CE5 case 12
call    sub_42A9A2
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr [ebp+0], 0
xor     eax, eax
call    sub_47E8B8
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2

def_483CE5:             ; jumptable 00483CE5 default case
mov     dl, [ebp+6]
cmp     dl, 2
jbe     short loc_484179
cmp     dl, 0Bh
jnb     short loc_484179
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_484179
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_484179:
cmp     byte ptr [ebp+6], 0Bh
jnb     loc_484251
call    sub_47EBCB
test    eax, eax
jz      loc_484251
mov     eax, 3
call    sub_484DF3
mov     eax, 4
call    sub_484DF3
mov     eax, 1
call    sub_484DF3
mov     eax, 5
call    sub_484DF3
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 2
jnb     short loc_4841E6
mov     byte ptr [ebp+6], 0Ch
jmp     short loc_4841EA

loc_4841E6:
mov     byte ptr [ebp+6], 0Bh

loc_4841EA:
mov     eax, [esp+34h+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     dword ptr [eax+528h], 0F5D70000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 4540000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+540h], 0
mov     word ptr [eax+542h], 800h
mov     word ptr [eax+544h], 0
mov     byte ptr [eax+548h], 0

loc_484251:
add     esp, 1Ch

loc_484254:
pop     ebp

loc_484255:
pop     edi

loc_484256:
pop     esi

loc_484257:
pop     edx
pop     ecx
pop     ebx
retn
sub_483CC3 endp ; sp-analysis failed

jpt_4842C7 dd offset loc_4842CE ; jump table for switch statement
dd offset loc_48433B
dd offset loc_48435A
dd offset loc_484427
dd offset loc_48444E
dd offset loc_48447A
dd offset loc_4844B1
dd offset loc_4844D4
dd offset loc_484559
dd offset loc_48458B
dd offset loc_4845BD
dd offset loc_48464B
dd offset loc_484671
dd offset loc_4846A8
dd offset loc_4846BC
dd offset loc_4846E2
dd offset loc_484761
dd offset loc_484792



sub_4842A3 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= byte ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ebp, eax
mov     edx, offset byte_5F8364
mov     [esp+34h+var_1C], edx
mov     al, [eax+6]
cmp     al, 11h         ; switch 18 cases
ja      def_4842C7      ; jumptable 004842C7 default case
and     eax, 0FFh
jmp     jpt_4842C7[eax*4] ; switch jump

loc_4842CE:             ; jumptable 004842C7 case 0
mov     edx, ds:dword_55A374
lea     edi, [esp+34h+var_24]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, [edx+12h]
sar     eax, 10h
mov     [esp+34h+var_34], eax
mov     eax, [edx+14h]
sar     eax, 10h
sub     eax, 80h
mov     [esp+34h+var_30], eax
mov     eax, [edx+16h]
sar     eax, 10h
mov     [esp+34h+var_2C], eax
mov     ecx, ds:dword_77E964
sub     ecx, 30h ; '0'
mov     edx, [esp+34h+var_1C]
add     edx, 14h
lea     eax, [esp+34h+var_24]
call    sub_4DDDB4
mov     edx, 140h
mov     esi, esp
mov     ebx, eax
mov     eax, esi
call    sub_42AAD8
mov     eax, [esp+34h+var_1C]
or      byte ptr [eax+0BDh], 40h
and     byte ptr [eax], 0FDh
jmp     loc_4844CC

loc_48433B:             ; jumptable 004842C7 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 5Fh ; '_'
inc     byte ptr [ebp+6]
call    sub_4A0E24
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48435A:             ; jumptable 004842C7 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_4842C7      ; jumptable 004842C7 default case
call    sub_42A9A2
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51D530
mov     dword ptr [ebp+0A4h], offset unk_51D510
or      ds:byte_5F8364, 2
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 18BD0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 50290000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     esi, esi
mov     word ptr ds:dword_5F88A4, si
mov     word ptr ds:dword_5F88A4+2, 0DE8h
mov     ds:word_5F88A8, si
mov     ds:byte_5F88AC, 30h ; '0'
call    sub_484D64
mov     eax, 0Dh

loc_48441D:
call    sub_484CFC
jmp     loc_4844CC

loc_484427:             ; jumptable 004842C7 case 3
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 5Ah ; 'Z'

loc_48444E:             ; jumptable 004842C7 case 4
mov     edx, [ebp+0Ch]
dec     edx
mov     [ebp+0Ch], edx
test    edx, edx
jge     def_4842C7      ; jumptable 004842C7 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 28h ; '('
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48447A:             ; jumptable 004842C7 case 5
mov     edi, [ebp+0Ch]
dec     edi
mov     [ebp+0Ch], edi
test    edi, edi
jge     def_4842C7      ; jumptable 004842C7 default case
mov     eax, ds:dword_55A37C
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0

loc_484498:
mov     eax, 609h
call    sub_47E8B8

loc_4844A2:
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 14h
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4844B1:             ; jumptable 004842C7 case 6
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
test    ebx, ebx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 35h ; '5'

loc_4844C5:
xor     eax, eax
call    sub_4A0E24

loc_4844CC:
inc     byte ptr [ebp+6]
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4844D4:             ; jumptable 004842C7 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
and     ds:byte_5F8364, 0FDh
mov     ds:dword_5F888C, 18220000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 4F7C0000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 9B2h
call    sub_49DF64
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
xor     ebx, ebx
xor     edx, edx
mov     eax, 150h
call    sub_4D89E4
call    sub_484D64
mov     eax, 0Eh
jmp     loc_48441D

loc_484559:             ; jumptable 004842C7 case 8
mov     eax, ds:dword_55A378
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A37C
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     eax, ds:dword_55A380
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
jmp     loc_4844A2

loc_48458B:             ; jumptable 004842C7 case 9
mov     ebx, [ebp+0Ch]
dec     ebx
mov     [ebp+0Ch], ebx
test    ebx, ebx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     eax, 609h
call    sub_47E8B8
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 168h
mov     ds:dword_55A3B4, offset unk_51D5C8
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4845BD:             ; jumptable 004842C7 case 10
mov     ecx, [ebp+0Ch]
test    ecx, ecx
jz      short loc_4845CA
lea     ebx, [ecx-1]
mov     [ebp+0Ch], ebx

loc_4845CA:
mov     esi, [ebp+0Ch]
test    esi, esi
jz      short loc_4845F5
mov     eax, ds:dword_55A3B4
movsx   edx, word ptr [eax]
cmp     edx, esi
jnz     short loc_4845F5
mov     edx, [esp+34h+var_1C]
add     edx, 14h
mov     eax, [eax]
sar     eax, 10h
call    sub_4D8BC3
add     ds:dword_55A3B4, 4

loc_4845F5:
cmp     dword ptr [ebp+0Ch], 96h
jnz     short loc_484622
mov     edx, 36h ; '6'
xor     eax, eax
call    sub_4A0E24
mov     eax, 609h
call    sub_47E8B8
xor     ebx, ebx
xor     edx, edx
mov     eax, 80010015h
call    sub_4D89E4

loc_484622:
cmp     dword ptr [ebp+0Ch], 5Ah ; 'Z'
jg      def_4842C7      ; jumptable 004842C7 default case
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
inc     byte ptr [ebp+6]
mov     eax, 609h
call    sub_47E8B8
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_48464B:             ; jumptable 004842C7 case 11
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      def_4842C7      ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
mov     edx, 37h ; '7'
jmp     loc_4844C5

loc_484671:             ; jumptable 004842C7 case 12
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4842C7      ; jumptable 004842C7 default case
call    sub_49DF64
call    sub_484D64
mov     eax, 0Fh
call    sub_484CFC
inc     byte ptr [ebp+6]
mov     dword ptr [ebp+0Ch], 1Eh
or      ds:byte_5F8364, 2
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4846A8:             ; jumptable 004842C7 case 13
mov     eax, [ebp+0Ch]
dec     eax
mov     [ebp+0Ch], eax
test    eax, eax
jge     def_4842C7      ; jumptable 004842C7 default case
jmp     loc_484498

loc_4846BC:             ; jumptable 004842C7 case 14
mov     esi, [ebp+0Ch]
dec     esi
mov     [ebp+0Ch], esi
test    esi, esi
jge     def_4842C7      ; jumptable 004842C7 default case
mov     bl, 1
mov     ds:byte_5F88AC, bl
add     [ebp+6], bl
mov     dword ptr [ebp+0Ch], 0Ch
jmp     def_4842C7      ; jumptable 004842C7 default case

loc_4846E2:             ; jumptable 004842C7 case 15
mov     edx, ds:dword_55A374
mov     ebx, ds:dword_5F88A4
sar     ebx, 10h
add     edx, 14h
mov     eax, offset byte_5F8364
add     eax, 538h
mov     ecx, 50h ; 'P'
call    sub_4DE552
mov     ds:word_55A3B8, ax
add     ax, word ptr ds:dword_5F88A4+2
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, offset byte_5F8364
call    sub_4DD47D
mov     ecx, [ebp+0Ch]
dec     ecx
mov     [ebp+0Ch], ecx
test    ecx, ecx
jge     def_4842C7      ; jumptable 004842C7 default case
mov     edx, 39h ; '9'
xor     eax, eax
call    sub_4A0E24
mov     ds:byte_5F88AC, 32h ; '2'
mov     word ptr ds:dword_5F88A4+2, 800h
jmp     loc_4844CC

loc_484761:             ; jumptable 004842C7 case 16
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4842C7 ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ebp+0], 0
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
jmp     short loc_4847BA

loc_484792:             ; jumptable 004842C7 case 17
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_4842C7 ; jumptable 004842C7 default case
mov     eax, 607h
call    sub_47EA91
call    sub_42A9A2
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ebp+0], 0

loc_4847BA:
call    sub_484D64
mov     eax, 6
call    sub_47E8B8
mov     eax, 0Bh
call    sub_47E8B8
mov     eax, 10h
call    sub_484CFC

def_4842C7:             ; jumptable 004842C7 default case
mov     ah, [ebp+6]
cmp     ah, 2
jbe     short loc_4847FC
cmp     ah, 10h
jnb     short loc_4847FC
mov     eax, [ebp+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4847FC
mov     edx, eax
mov     eax, ebp
call    dword ptr [edx+4]

loc_4847FC:
cmp     byte ptr [ebp+6], 10h
jnb     loc_484251
call    sub_47EBCB
test    eax, eax
jz      loc_484251
mov     eax, 607h
call    sub_47E8B8
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
cmp     byte ptr [ebp+6], 2
jnb     short loc_48484B
mov     byte ptr [ebp+6], 11h
jmp     short loc_48484F

loc_48484B:
mov     byte ptr [ebp+6], 10h

loc_48484F:
mov     eax, [esp+34h+var_1C]
mov     byte ptr [eax+8], 3
mov     byte ptr [eax+9], 1
or      byte ptr [eax+0BDh], 10h
mov     dword ptr [eax+528h], 18820000h
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     dword ptr [eax+530h], 510A0000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     eax, [esp+34h+var_1C]
mov     word ptr [eax+540h], 0
mov     word ptr [eax+542h], 800h
mov     word ptr [eax+544h], 0
jmp     loc_484251
sub_4842A3 endp

db 8Dh, 40h, 0
jpt_4848F9 dd offset loc_484900 ; jump table for switch statement
dd offset loc_484966
dd offset loc_484A2C
dd offset loc_484A45
dd offset loc_484A79
dd offset loc_484AFE
dd offset loc_484B17
dd offset loc_484B57



sub_4848D7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edi, offset byte_5F8364
mov     ebp, ds:dword_55A374
mov     al, [eax+6]
cmp     al, 7           ; switch 8 cases
ja      def_4848F9      ; jumptable 004848F9 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4848F9[edx*4] ; switch jump

loc_484900:             ; jumptable 004848F9 case 0
mov     eax, edi
call    sub_4B55D5
test    eax, eax
jz      def_4848F9      ; jumptable 004848F9 default case
mov     eax, 0Bh
call    sub_484CFC
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484943
mov     ds:dword_77E6B4, offset unk_51D480
jmp     short loc_48494D

loc_484943:
mov     ds:dword_77E6B4, offset unk_51D3F0

loc_48494D:
mov     dword ptr [esi+0A4h], offset unk_51D3D0
inc     byte ptr [esi+6]
mov     edx, 5Eh ; '^'
xor     eax, eax
call    sub_4A0E24

loc_484966:             ; jumptable 004848F9 case 1
mov     byte ptr [edi+8], 3
mov     byte ptr [edi+9], 1
or      byte ptr [edi+0BDh], 10h
mov     eax, 16h
call    sub_47E888
mov     ebp, eax
lea     eax, [edi+528h]
lea     edx, [edi+538h]
test    ebp, ebp
jz      short loc_4849D8
mov     dword ptr [edi+528h], 1CDC0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 50400000h
call    sub_4DD57B
mov     word ptr [edi+540h], 0
mov     word ptr [edi+542h], 59Ch
mov     word ptr [edi+544h], 0
mov     dword ptr [esi+0Ch], 0Ah
jmp     short loc_484A1D

loc_4849D8:
mov     dword ptr [edi+528h], 170B0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 5E9F0000h
call    sub_4DD57B
mov     word ptr [edi+540h], 0
mov     word ptr [edi+542h], 1D1h
mov     word ptr [edi+544h], 0
mov     dword ptr [esi+0Ch], 0Ch

loc_484A1D:
mov     byte ptr [edi+548h], 30h ; '0'

loc_484A24:
inc     byte ptr [esi+6]
jmp     def_4848F9      ; jumptable 004848F9 default case

loc_484A2C:             ; jumptable 004848F9 case 2
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_4848F9      ; jumptable 004848F9 default case
inc     al
mov     [esi+6], al
mov     ds:byte_5F88AC, 1

loc_484A45:             ; jumptable 004848F9 case 3
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, edi
call    sub_4DD47D
cmp     dword ptr [esi+0Ch], 5
jnz     short loc_484A6A
call    sub_49DF64
mov     byte ptr [ebp+9], 3
mov     word ptr [ebp+0Ah], 0

loc_484A6A:
mov     ecx, [esi+0Ch]
dec     ecx
mov     [esi+0Ch], ecx
jnz     def_4848F9      ; jumptable 004848F9 default case
jmp     short loc_484A1D

loc_484A79:             ; jumptable 004848F9 case 4
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     def_4848F9      ; jumptable 004848F9 default case
mov     edx, 47h ; 'G'
xor     eax, eax
call    sub_4A0E24
call    sub_484D64
mov     eax, 0Ch
call    sub_484CFC
mov     edx, ds:dword_55A374
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484ABF
mov     word ptr [edx+56h], 0BB8h
jmp     short loc_484AC5

loc_484ABF:
mov     word ptr [edx+56h], 767h

loc_484AC5:
mov     edx, ds:dword_55A378
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484AE1
mov     word ptr [edx+56h], 800h
jmp     short loc_484AE7

loc_484AE1:
mov     word ptr [edx+56h], 727h

loc_484AE7:
mov     ch, 1
mov     byte ptr ds:dword_77E954, ch
add     [esi+6], ch

loc_484AF2:
mov     dword ptr [esi+0Ch], 1Eh
jmp     def_4848F9      ; jumptable 004848F9 default case

loc_484AFE:             ; jumptable 004848F9 case 5
mov     ebp, [esi+0Ch]
dec     ebp
mov     [esi+0Ch], ebp
jnz     def_4848F9      ; jumptable 004848F9 default case
mov     ds:byte_5F88AC, 0Dh
jmp     loc_484A24

loc_484B17:             ; jumptable 004848F9 case 6
mov     ebx, ds:dword_5F88A4
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+538h]
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, word ptr ds:dword_5F88A4+2
add     edx, eax
and     dh, 0Fh
mov     word ptr ds:dword_5F88A4+2, dx
test    ax, ax
jnz     short def_4848F9 ; jumptable 004848F9 default case
mov     ds:byte_5F88AC, 31h ; '1'
inc     byte ptr [esi+6]
jmp     short loc_484AF2

loc_484B57:             ; jumptable 004848F9 case 7
mov     edx, [esi+0Ch]
test    edx, edx
jz      short loc_484B64
lea     ecx, [edx-1]
mov     [esi+0Ch], ecx

loc_484B64:
cmp     dword ptr [esi+0Ch], 0
jnz     short def_4848F9 ; jumptable 004848F9 default case
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4848F9 ; jumptable 004848F9 default case
mov     eax, edi
call    sub_4B565A
mov     byte ptr [esi], 0
mov     eax, 17h
call    sub_47E8B8

def_4848F9:             ; jumptable 004848F9 default case
mov     ch, [esi+6]
test    ch, ch
jbe     short loc_484BA5
cmp     ch, 5
jnb     short loc_484BA5
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_484BA5
mov     edx, eax
mov     eax, esi
call    dword ptr [edx+4]

loc_484BA5:
mov     dh, [esi+6]
test    dh, dh
jbe     loc_484254
cmp     dh, 7
jnb     loc_484254
call    sub_47EBCB
test    eax, eax
jz      loc_484254
cmp     byte ptr [esi+6], 5
jnb     short loc_484BD3
mov     byte ptr ds:dword_77E954, 1

loc_484BD3:
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
xor     ebx, ebx
xor     edx, edx
mov     eax, 108h
call    sub_4D89E4
mov     byte ptr [esi+6], 7
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [edi+8], 3
mov     byte ptr [edi+9], 1
or      byte ptr [edi+0BDh], 10h
mov     eax, 16h
call    sub_47E888
mov     esi, eax
lea     eax, [edi+528h]
lea     edx, [edi+538h]
test    esi, esi
jz      short loc_484C59
mov     dword ptr [edi+528h], 1BDA0000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 50FD0000h
call    sub_4DD57B
mov     word ptr [edi+542h], 315h
jmp     short loc_484C85

loc_484C59:
mov     dword ptr [edi+528h], 16100000h
mov     dword ptr [edi+52Ch], 0FFFF0000h
mov     dword ptr [edi+530h], 5D7D0000h
call    sub_4DD57B
mov     word ptr [edi+542h], 0FCFh

loc_484C85:
mov     word ptr [edi+540h], 0
mov     word ptr [edi+544h], 0
call    sub_484D64
mov     eax, 0Ch
call    sub_484CFC
mov     edx, ds:dword_55A374
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484CC2
mov     word ptr [edx+56h], 0BB8h
jmp     short loc_484CC8

loc_484CC2:
mov     word ptr [edx+56h], 767h

loc_484CC8:
mov     edx, ds:dword_55A378
mov     eax, 16h
call    sub_47E888
test    eax, eax
jz      short loc_484CE7
mov     word ptr [edx+56h], 800h
jmp     loc_484254

loc_484CE7:
mov     word ptr [edx+56h], 727h
jmp     loc_484254
sub_4848D7 endp




sub_484CF2 proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_484CF2 endp




sub_484CFC proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_51D65C
xor     ecx, ecx
mov     ds:dword_51C450, ecx
xor     ebx, ebx

loc_484D16:
movsx   eax, bx
cmp     eax, [edx]
jnb     loc_484256
movsx   ecx, bx
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
mov     eax, [edx+4]
add     eax, ecx
xor     ecx, ecx
mov     cl, [eax]
call    sub_49DB4D
movsx   eax, cx
mov     esi, ds:dword_560C00[eax*4]
mov     ds:dword_55A374[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_51C450, eax
inc     ebx
jmp     short loc_484D16
sub_484CFC endp




sub_484D64 proc near
push    ebx
push    ecx
push    edx
xor     ebx, ebx

loc_484D69:
mov     edx, ds:dword_51C450
test    edx, edx
jz      loc_484257
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      short loc_484DED
mov     edx, ds:dword_55A374[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_484DDC
jbe     short loc_484DA3
cmp     eax, 60h ; '`'
jz      short loc_484DC4
jmp     short loc_484DDC

loc_484DA3:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_484DD6

loc_484DC4:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_484DD6:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_484DDC:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51C450, eax

loc_484DED:
inc     ebx
jmp     loc_484D69
sub_484D64 endp




sub_484DF3 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51C450, eax
jz      loc_484E7A
movsx   edx, bl
mov     edx, ds:dword_55A374[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_484E68
jbe     short loc_484E30
cmp     eax, 60h ; '`'
jz      short loc_484E50
jmp     short loc_484E68

loc_484E30:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_484E62

loc_484E50:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_484E62:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_484E68:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51C450, eax

loc_484E7A:
pop     edx
pop     ecx
pop     ebx
retn
sub_484DF3 endp




sub_484E7E proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_484E84[edx*4]
pop     edx
retn
sub_484E7E endp




sub_484E8D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
test    al, al
ja      short loc_484EC0
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51E7A4
mov     dword ptr [ecx+0A4h], offset unk_51E79C
inc     byte ptr [ecx+6]

loc_484EC0:
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_484ED2
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_484ED2:
pop     edx
pop     ecx
pop     ebx
retn
sub_484E8D endp




sub_484ED6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 1
jb      short loc_484EFA
jbe     loc_484FB8
cmp     al, 2
jz      loc_484FD8
jmp     loc_48500C

loc_484EFA:
test    al, al
jnz     loc_48500C
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      loc_48500C
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51E7B8
mov     dword ptr [ecx+0A4h], offset unk_51E7A8
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     ds:dword_5F888C, 0FFE00000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1300000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, dx
mov     ds:word_5F88A8, dx
mov     ds:byte_5F88AC, 30h ; '0'
inc     byte ptr [ecx+6]
mov     dword ptr [ecx+0Ch], 0Ah
xor     edx, edx
mov     eax, 1
call    sub_4A0E24
jmp     short loc_48500C

loc_484FB8:
mov     ebx, [ecx+0Ch]
dec     ebx
mov     [ecx+0Ch], ebx
test    ebx, ebx
jge     short loc_484FCD
mov     ds:byte_5F88AC, 32h ; '2'
inc     byte ptr [ecx+6]

loc_484FCD:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_48500C
jmp     short loc_484FFB

loc_484FD8:
cmp     ds:byte_5F840B, 0
jge     short loc_484FF2
call    rand_
and     eax, 1Fh
add     eax, 10h
mov     [ecx+0Ch], eax
dec     byte ptr [ecx+6]

loc_484FF2:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_48500C

loc_484FFB:
mov     byte ptr ds:dword_77E954, 1
mov     byte ptr [ecx], 0
mov     eax, edx
call    sub_4B565A

loc_48500C:
cmp     byte ptr [ecx+6], 0
jbe     short loc_485022
mov     edx, [ecx+0A4h]
cmp     byte ptr [edx], 0FFh
jz      short loc_485022
mov     eax, ecx
call    dword ptr [edx+4]

loc_485022:
pop     edx
pop     ecx
pop     ebx
retn
sub_484ED6 endp




sub_485026 proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_485026 endp




sub_485030 proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_51E7E0
xor     ecx, ecx
mov     ds:dword_51D78C, ecx
xor     ebx, ebx

loc_48504A:
movsx   eax, bx
cmp     eax, [edx]
jnb     short loc_485094
movsx   ecx, bx
mov     eax, ecx
shl     eax, 2
add     ecx, eax
shl     ecx, 2
mov     eax, [edx+4]
add     eax, ecx
xor     ecx, ecx
mov     cl, [eax]
call    sub_49DB4D
movsx   eax, cx
mov     esi, ds:dword_560C00[eax*4]
mov     ds:dword_55A3BC[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_51D78C, eax
inc     ebx
jmp     short loc_48504A

loc_485094:
pop     esi

loc_485095:
pop     edx
pop     ecx
pop     ebx
retn
sub_485030 endp




sub_485099 proc near
push    ebx
push    ecx
push    edx
xor     ebx, ebx

loc_48509E:
mov     edx, ds:dword_51D78C
test    edx, edx
jz      short loc_485095
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      short loc_48511E
mov     edx, ds:dword_55A3BC[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_48510D
jbe     short loc_4850D4
cmp     eax, 60h ; '`'
jz      short loc_4850F5
jmp     short loc_48510D

loc_4850D4:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
mov     ecx, eax
shl     ecx, 2
mov     eax, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
jmp     short loc_485107

loc_4850F5:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_485107:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_48510D:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51D78C, eax

loc_48511E:
inc     ebx
jmp     loc_48509E
sub_485099 endp




sub_485124 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51D78C, eax
jz      short loc_485191
movsx   edx, bl
mov     edx, ds:dword_55A3BC[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_48517F
jbe     short loc_48515B
cmp     eax, 60h ; '`'
jnz     short loc_48517F

loc_48515B:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6F0
add     eax, ecx
xor     ecx, ecx
mov     cl, [edx+4]
shl     ecx, 2
mov     eax, [eax]
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_48517F:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51D78C, eax

loc_485191:
pop     edx
pop     ecx
pop     ebx
retn
sub_485124 endp




sub_485195 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48519B[edx*4]
pop     edx
retn
sub_485195 endp




sub_4851A4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     al, [eax+5]
cmp     al, 1
jb      short loc_4851C5
jbe     loc_48526E
cmp     al, 2
jz      loc_485284
jmp     loc_4852C9

loc_4851C5:
test    al, al
jnz     loc_4852C9
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51EC00
mov     dword ptr [esi+0A4h], offset unk_51EC4C
mov     byte ptr [esi+0Ah], 80h
mov     byte ptr [esi+0Bh], 0
mov     dword ptr [esi+0Ch], 0
mov     eax, offset unk_51E9BC
call    sub_49DB4D
xor     ecx, ecx

loc_485207:
mov     eax, ecx
shl     eax, 3
mov     ebx, eax
shl     eax, 3
sub     eax, ebx
mov     bl, ds:byte_51EF54[ecx*8]
mov     ds:byte_56F80C[eax], bl
mov     bx, ds:word_51EF58[ecx*8]
mov     ds:word_56F82C[eax], bx
mov     dx, ds:word_51EF5A[ecx*8]
mov     ds:word_56F82E[eax], dx
inc     ecx
cmp     ecx, 8
jl      short loc_485207
mov     ds:word_56F9A2, 0F0h
mov     ds:dword_56F99C, 0F00000h
xor     edi, edi
mov     ds:dword_55A3FC, edi
mov     eax, 240005h
call    sub_4D8E42

loc_485269:
inc     byte ptr [esi+5]
jmp     short loc_4852C9

loc_48526E:
mov     edx, [esi+0A4h]
mov     eax, esi
call    dword ptr [edx+4]
call    sub_4D8ECC
test    eax, eax
jz      short loc_4852C9
jmp     short loc_485269

loc_485284:
mov     edx, [esi+0A4h]
mov     eax, esi
call    dword ptr [edx+4]
cmp     byte ptr [esi+0Bh], 0Ah
jnz     short loc_48529F
mov     eax, 2
call    sub_49E0D7

loc_48529F:
cmp     byte ptr [esi+0Bh], 1Eh
jnz     short loc_4852C6
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_51EC5C
mov     dword ptr [esi+0A4h], offset unk_51EF04
mov     byte ptr [esi+4], 1
mov     byte ptr [esi+5], 0

loc_4852C6:
inc     byte ptr [esi+0Bh]

loc_4852C9:
test    byte ptr ds:word_5708DE, 8
jz      short loc_4852D6
or      byte ptr [esi+0Ah], 1

loc_4852D6:
call    sub_49DBD1
call    sub_49DECF
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4851A4 endp




sub_4852E6 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_4852F8
cmp     al, 1
jz      short loc_485316
jmp     short loc_485356

loc_4852F8:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
cmp     ds:word_6E23D6, 0
jnz     short loc_485356
and     byte ptr [edx+0Ah], 7Fh
inc     byte ptr [edx+5]
jmp     short loc_485356

loc_485316:
cmp     byte ptr [edx+8], 0FFh
jnz     short loc_48532C
mov     eax, 14h
call    sub_49E0D7
or      byte ptr [edx+0Ah], 80h
jmp     short loc_48534E

loc_48532C:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     bl, [edx+0Ah]
test    bl, 1
jz      short loc_485356
test    bl, 80h
jnz     short loc_485356
mov     eax, 0Ah
call    sub_49E0D7

loc_48534E:
mov     byte ptr [edx+4], 2
mov     byte ptr [edx+5], 0

loc_485356:
test    byte ptr ds:word_5708DE, 8
jz      short loc_485363
or      byte ptr [edx+0Ah], 1

loc_485363:
call    sub_49DBD1
call    sub_49DECF

loc_48536D:
pop     edx
pop     ecx
pop     ebx
retn
sub_4852E6 endp




sub_485371 proc near
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_485383
cmp     al, 1
jz      short loc_4853BC
pop     edx
pop     ecx
retn

loc_485383:
cmp     ds:word_6E23D6, 0
jnz     short loc_4853A9
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
call    sub_4E1D8A
call    sub_4D8EB1
inc     byte ptr [ecx+5]

loc_4853A9:
mov     al, [ecx+0Ah]
test    al, 1
jz      short loc_4853E8
test    al, 80h
jnz     short loc_4853E8
call    sub_49DBD1
pop     edx
pop     ecx
retn

loc_4853BC:
mov     byte ptr ds:dword_77E954, al
call    sub_42A66D
and     ds:byte_77E806, 7Fh
mov     byte ptr [ecx], 0
xor     dh, dh
mov     byte ptr ds:dword_6DD9BC+1, dh
inc     byte ptr ds:dword_6DD9BC
mov     eax, offset sub_4378C0
call    sub_4EEDCA

loc_4853E8:
pop     edx
pop     ecx
retn
sub_485371 endp




sub_4853EB proc near
cmp     ds:dword_55A3FC, 0DEh
jnz     short loc_485411
xor     ah, ah
mov     ds:byte_56F87C, ah
mov     ds:byte_56F8EC, ah
mov     ds:byte_56F924, ah
mov     ds:byte_56F95C, ah

loc_485411:
inc     ds:dword_55A3FC
retn
sub_4853EB endp




sub_485418 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48543B
xor     ah, ah
mov     ds:byte_56F80C, ah
mov     dl, 3
mov     ds:byte_56F844, dl
mov     ds:byte_56F8B4, dl
mov     ds:byte_56F994, dl

loc_48543B:
pop     edx
retn
sub_485418 endp




sub_48543D proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_485458
xor     bl, bl
mov     ds:byte_56F8B4, bl
xor     bh, bh
mov     ds:byte_56F994, bh

loc_485458:
cmp     dword ptr [eax+10h], 82h
jnz     loc_48536D

loc_485465:
cmp     dx, 4
jge     loc_48536D
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
or      byte ptr [eax+6], 20h
mov     word ptr [eax+1Ch], 0FF00h
mov     ebx, edx
shl     ebx, 5
mov     ecx, 0FFFFFD60h
sub     ecx, ebx
mov     [eax+1Eh], cx
imul    ebx, edx, 3Fh ; '?'
add     ebx, 118h
mov     [eax+20h], bx
mov     bl, dl
add     bl, dl
mov     bh, 6
sub     bh, bl
mov     [eax+9], bh
inc     edx
jmp     short loc_485465
sub_48543D endp




sub_4854BC proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4854FC
mov     eax, [eax+24h]
call    sub_4DE2F6
xor     ah, ah
mov     ds:byte_56F844, ah
mov     edx, 1

loc_4854D8:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 3
jle     short loc_4854D8
mov     eax, 1
call    sub_4856CE

loc_4854FC:
pop     edx
retn
sub_4854BC endp




sub_4854FE proc near
push    ebx
push    edx
mov     ebx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_485564

loc_485509:
mov     eax, edx
mov     eax, [ebx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 2
jle     short loc_485509
xor     edx, edx

loc_48551C:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
call    sub_4DE3EA
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_48551C
mov     edx, 4

loc_485540:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 6
jle     short loc_485540
mov     eax, 2
call    sub_4856CE

loc_485564:
cmp     dword ptr [ebx+10h], 82h
jnz     short loc_4855D1
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     word ptr [eax+1Ch], 0FFEEh
mov     word ptr [eax+1Eh], 0FFB1h
mov     word ptr [eax+20h], 0C8h
mov     byte ptr [eax+9], 8
or      byte ptr [eax+6], 20h
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     word ptr [eax+1Ch], 1Ch
mov     word ptr [eax+1Eh], 0FFB1h
mov     word ptr [eax+20h], 0C8h
mov     byte ptr [eax+9], 4
or      byte ptr [eax+6], 20h

loc_4855D1:
pop     edx
pop     ebx
retn
sub_4854FE endp




sub_4855D4 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_485619

loc_4855DF:
mov     eax, edx
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 2
jle     short loc_4855DF
mov     edx, 7

loc_4855F5:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 0Bh
jle     short loc_4855F5
mov     eax, 3
call    sub_4856CE

loc_485619:
pop     edx
pop     ecx
retn
sub_4855D4 endp




sub_48561C proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_485689

loc_485627:
mov     eax, edx
mov     eax, [ecx+eax*4+24h]
call    sub_4DE2F6
inc     edx
cmp     edx, 4
jle     short loc_485627
xor     edx, edx

loc_48563A:
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, offset unk_572D5C
call    sub_4DE3EA
inc     edx
cmp     edx, 40h ; '@'
jl      short loc_48563A
mov     ds:byte_56F80C, 3
mov     edx, 0Ch

loc_485665:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 0Eh
jle     short loc_485665
mov     eax, 4
call    sub_4856CE

loc_485689:
pop     edx
pop     ecx
retn
sub_48561C endp




sub_48568C proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4856CC
mov     eax, [eax+24h]
call    sub_4DE2F6
mov     eax, [edx+28h]
call    sub_4DE2F6
mov     eax, [edx+2Ch]
call    sub_4DE2F6
mov     edx, 0Fh

loc_4856B2:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51E9BC
call    sub_49DB4D
inc     edx
cmp     edx, 1Ch
jle     short loc_4856B2

loc_4856CC:
pop     edx

locret_4856CD:
retn
sub_48568C endp




sub_4856CE proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 7
mov     ds:byte_77EA5F, al
xor     edx, edx
mov     word ptr ds:dword_77EA4E+2, dx
mov     word ptr ds:dword_77EA52, dx
mov     word ptr ds:dword_77EA52+2, dx
mov     word ptr ds:dword_77EA5A, dx
xor     dh, dh
mov     byte ptr ds:dword_77EA5A+3, dh
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
pop     edx
pop     ebx
retn
sub_4856CE endp




sub_48571A proc near
cmp     byte ptr [eax+4], 0
jnz     loc_48589A
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
test    al, al
jbe     short loc_48573F
cmp     al, 1
jz      short loc_485794
jmp     loc_48582C

loc_48573F:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     eax, ds:off_51F10C
mov     ds:dword_77E6B4, eax
mov     dword ptr [esi+0A4h], offset unk_51EFBC
mov     eax, offset unk_51EF94
call    sub_49DB4D
mov     eax, offset unk_51EFA8
call    sub_49DB4D
mov     eax, [esi+24h]
mov     ds:dword_55CF04, eax
mov     eax, [esi+28h]
mov     ds:dword_55CF08, eax
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
mov     dword ptr [esi+0Ch], 0
inc     byte ptr [esi+5]

loc_485794:
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      loc_48582C
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 0FF74h
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
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

loc_48582C:
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
db 8Dh, 40h, 0
jpt_4858AE dd offset loc_4858B5 ; jump table for switch statement
dd offset loc_48596E
dd offset loc_485902
dd offset loc_48591A
dd offset loc_485933
dd offset loc_48593C
dd offset loc_48594E
dd offset loc_485967
dd offset loc_48598A
dd offset loc_485994
dd offset loc_4859AB
dd offset loc_485994
dd offset loc_4859B2
dd offset loc_4859BC
dd offset loc_48596E
dd offset loc_4859D8
dd offset loc_4859E2
dd offset loc_48596E
dd offset loc_4859FC
dd offset loc_485A06
dd offset loc_485A19
dd offset loc_485A32
dd offset loc_485A3F

loc_48589A:
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 16h         ; switch 23 cases
ja      def_4858AE      ; jumptable 004858AE default case
xor     edx, edx
mov     dl, al
jmp     jpt_4858AE[edx*4] ; switch jump

loc_4858B5:             ; jumptable 004858AE case 0
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_4858AE      ; jumptable 004858AE default case
mov     eax, [ecx+24h]
cmp     byte ptr [eax+8], 0
jz      def_4858AE      ; jumptable 004858AE default case
mov     eax, [ecx+28h]
cmp     byte ptr [eax+8], 0
jz      def_4858AE      ; jumptable 004858AE default case

loc_4858E7:
call    sub_49DFCA
mov     eax, ds:off_51F10C

loc_4858F1:
mov     ds:dword_77E6B4, eax
mov     dword ptr [ecx+0A4h], offset unk_51EFCC
jmp     short loc_485912

loc_485902:             ; jumptable 004858AE case 2
mov     edx, 0Ch

loc_485907:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Ah], 1

loc_485912:
inc     byte ptr [ecx+5]
jmp     def_4858AE      ; jumptable 004858AE default case

loc_48591A:             ; jumptable 004858AE case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
call    sub_49DFCA
mov     eax, ds:off_51F110
jmp     short loc_4858F1

loc_485933:             ; jumptable 004858AE case 4
and     ds:byte_5F8364, 0FDh
jmp     short loc_48596E ; jumptable 004858AE cases 1,14,17

loc_48593C:             ; jumptable 004858AE case 5
mov     edx, 0Dh

loc_485941:
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Ah], 2
jmp     short loc_485912

loc_48594E:             ; jumptable 004858AE case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
call    sub_49DFCA
mov     eax, ds:off_51F114
jmp     short loc_4858F1

loc_485967:             ; jumptable 004858AE case 7
or      ds:byte_5F8364, 2

loc_48596E:             ; jumptable 004858AE cases 1,14,17
mov     edx, [ecx+0A4h]
mov     eax, ecx
call    dword ptr [edx+4]
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jnz     def_4858AE      ; jumptable 004858AE default case
jmp     short loc_485912

loc_48598A:             ; jumptable 004858AE case 8
mov     edx, 0Eh
jmp     loc_485907

loc_485994:             ; jumptable 004858AE cases 9,11
test    byte ptr ds:dword_55BD7C+3, 8

loc_48599B:             ; jumptable 004858AE default case
jnz     def_4858AE
inc     al
mov     [ecx+5], al
jmp     def_4858AE      ; jumptable 004858AE default case

loc_4859AB:             ; jumptable 004858AE case 10
mov     edx, 0Fh
jmp     short loc_485941

loc_4859B2:             ; jumptable 004858AE case 12
mov     edx, 10h
jmp     loc_485907

loc_4859BC:             ; jumptable 004858AE case 13
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
call    sub_49DFCA
mov     eax, ds:off_51F118
jmp     loc_4858F1

loc_4859D8:             ; jumptable 004858AE case 15
mov     edx, 11h
jmp     loc_485941

loc_4859E2:             ; jumptable 004858AE case 16
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4858AE      ; jumptable 004858AE default case
xor     bh, bh
mov     ds:byte_5F88AC, bh
jmp     loc_4858E7

loc_4859FC:             ; jumptable 004858AE case 18
mov     edx, 12h
jmp     loc_485907

loc_485A06:             ; jumptable 004858AE case 19
or      byte ptr [ecx+0Bh], 80h
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4858AE ; jumptable 004858AE default case
mov     byte ptr [ecx+5], 15h
jmp     short def_4858AE ; jumptable 004858AE default case

loc_485A19:             ; jumptable 004858AE case 20
cmp     ds:word_6E23D6, 0
jnz     short def_4858AE ; jumptable 004858AE default case
mov     eax, 1
call    sub_49E0D7
jmp     loc_485912

loc_485A32:             ; jumptable 004858AE case 21
cmp     ds:word_6E23D6, 0
jmp     loc_48599B

loc_485A3F:             ; jumptable 004858AE case 22
mov     eax, offset byte_5F8364
call    sub_4B565A
call    sub_4E1D8A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, [ecx+28h]
call    sub_4DE2F6
mov     eax, offset unk_51EF94
call    sub_4B8C15
mov     byte ptr [ecx], 0

def_4858AE:             ; jumptable 004858AE default case
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_485AB0
mov     bh, [ecx+0Ah]
cmp     bh, 1
jnz     short loc_485A97
mov     eax, [ecx+24h]
mov     byte ptr [eax+0ACh], 8
mov     eax, [ecx+24h]
jmp     short loc_485AA9

loc_485A97:
cmp     bh, 2
jnz     short loc_485AB0
mov     eax, [ecx+28h]
mov     byte ptr [eax+0ACh], 8
mov     eax, [ecx+28h]

loc_485AA9:
mov     byte ptr [eax+0ADh], 0FFh

loc_485AB0:
call    sub_47EBCB
test    eax, eax
jz      short loc_485AE6
test    byte ptr [ecx+0Bh], 80h
jnz     short loc_485AE6
mov     eax, 9
call    sub_49E0D7
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_485ADE
xor     eax, eax
call    sub_4A0E75
call    sub_4D8EB1

loc_485ADE:
or      byte ptr [ecx+0Bh], 81h
mov     byte ptr [ecx+5], 14h

loc_485AE6:
pop     edx
pop     ecx
pop     ebx
retn
sub_48571A endp




sub_485AEA proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_485AEA endp

jpt_485B1F dd offset loc_485B26 ; jump table for switch statement
dd offset loc_485B3D
dd offset loc_485B9D
dd offset loc_485BAD



sub_485B04 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
xor     ebx, ebx
mov     bl, al
jmp     jpt_485B1F[ebx*4] ; switch jump

loc_485B26:             ; jumptable 00485B1F case 0
mov     eax, edx
call    sub_4B55D5
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DFCA
inc     byte ptr [ecx+6]

loc_485B3D:             ; jumptable 00485B1F case 1
mov     byte ptr [edx+8], 3
mov     byte ptr [edx+9], 1
or      byte ptr [edx+0BDh], 10h
lea     edi, [edx+538h]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+528h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+540h]
lea     esi, [edx+54h]
movsd
movsd
mov     byte ptr [edx+548h], 35h ; '5'
mov     eax, 60Ah
call    sub_47EA91
inc     byte ptr [ecx+6]
mov     dword ptr [ecx+0Ch], 2Dh ; '-'
call    sub_436868
mov     edx, 28h ; '('
xor     eax, eax
call    sub_4A0E24
jmp     short def_485B1F ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_485B9D:             ; jumptable 00485B1F case 2
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_485B1F ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
inc     al
mov     [ecx+6], al
jmp     short def_485B1F ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_485BAD:             ; jumptable 00485B1F case 3
mov     eax, edx
call    sub_4B565A
mov     byte ptr [ecx], 0
mov     eax, 620h
call    sub_47E8B8
mov     eax, 52Dh

loc_485BC6:
call    sub_47E8B8

def_485B1F:             ; jumptable 00485B1F default case
pop     edi             ; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_485B04 endp




sub_485BD1 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_485BD7[edx*4]
mov     edx, offset unk_55A440

loc_485BE3:
cmp     edx, offset unk_55A4A0
jnb     short loc_485BFA
test    byte ptr [edx], 1
jz      short loc_485BF5
mov     eax, edx
call    dword ptr [edx+4]

loc_485BF5:
add     edx, 0Ch
jmp     short loc_485BE3

loc_485BFA:
mov     eax, 619h
call    sub_47EA91
mov     eax, 61Ah
call    sub_47EA91
mov     eax, 61Bh
call    sub_47EA91
mov     eax, 61Ch
call    sub_47EA91
pop     edx
retn
sub_485BD1 endp

jpt_485C58 dd offset loc_485C5F ; jump table for switch statement
dd offset loc_485CE5
dd offset loc_485D01
dd offset loc_485D7D
dd offset loc_485D9C
dd offset loc_485DC4
dd offset loc_485E5E
dd offset loc_485E6D



sub_485C44 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 7           ; switch 8 cases
ja      def_485C58      ; jumptable 00485C58 default case
xor     edx, edx
mov     dl, al
jmp     jpt_485C58[edx*4] ; switch jump

loc_485C5F:             ; jumptable 00485C58 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_485C58      ; jumptable 00485C58 default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51FF74
mov     dword ptr [ecx+0A4h], offset unk_51FEEC
mov     eax, 3
call    sub_4873C4
call    sub_48761B
mov     edx, 4
xor     eax, eax
call    sub_4875D1
mov     edx, 5
mov     eax, 1
call    sub_4875D1
mov     edx, 6
mov     eax, 2
call    sub_4875D1
mov     edx, 7
mov     eax, 3
call    sub_4875D1

loc_485CDD:
inc     byte ptr [ecx+6]
jmp     def_485C58      ; jumptable 00485C58 default case

loc_485CE5:             ; jumptable 00485C58 case 1
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_485C58      ; jumptable 00485C58 default case
inc     al
mov     [ecx+6], al
mov     eax, 60Ch
jmp     loc_485E8B

loc_485D01:             ; jumptable 00485C58 case 2
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      def_485C58      ; jumptable 00485C58 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000003h
call    sub_4D89E4
xor     eax, eax
call    sub_487602
mov     eax, 1
call    sub_487602
mov     eax, 2
call    sub_487602
mov     eax, 3
call    sub_487602
mov     edx, 8
xor     eax, eax
call    sub_4875D1
mov     eax, 60Fh
call    sub_47EA91
call    sub_48742C
call    sub_4DE4B5
mov     eax, 4
call    sub_4873C4
inc     byte ptr [ecx+6]
call    sub_49DF64
jmp     def_485C58      ; jumptable 00485C58 default case

loc_485D7D:             ; jumptable 00485C58 case 3
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax+1], 9
jnz     def_485C58      ; jumptable 00485C58 default case
mov     eax, 607h
call    sub_47E8B8
jmp     loc_485CDD

loc_485D9C:             ; jumptable 00485C58 case 4
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      def_485C58      ; jumptable 00485C58 default case
mov     eax, 60Fh
call    sub_47EA91
mov     dword ptr [ecx+0Ch], 1Eh
jmp     loc_485CDD

loc_485DC4:             ; jumptable 00485C58 case 5
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
jnz     def_485C58      ; jumptable 00485C58 default case
inc     byte ptr [ecx+6]
mov     byte ptr ds:dword_77E954, 1
mov     eax, 3
call    sub_487546
mov     eax, 4
call    sub_487546
mov     eax, 5
call    sub_487546
call    sub_48742C
mov     ds:dword_5F888C, 3F80000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 1DA30000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, dx
xor     bl, bl
mov     ds:byte_5F88AC, bl
call    sub_48761B
jmp     short def_485C58 ; jumptable 00485C58 default case

loc_485E5E:             ; jumptable 00485C58 case 6
mov     eax, 5
call    sub_4873C4
jmp     loc_485CDD

loc_485E6D:             ; jumptable 00485C58 case 7
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx], 0
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 9

loc_485E8B:
call    sub_47E8B8

def_485C58:             ; jumptable 00485C58 default case
mov     ah, [ecx+6]
test    ah, ah
jbe     short loc_485EAE
cmp     ah, 5
jnb     short loc_485EAE
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_485EAE
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_485EAE:
mov     bl, [ecx+6]
cmp     bl, 1
jbe     short loc_485EED
cmp     bl, 5
jnb     short loc_485EED
call    sub_47EBCB
test    eax, eax
jz      short loc_485EED
mov     eax, 60Fh
call    sub_47EA91
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     byte ptr [ecx+6], 5
mov     dword ptr [ecx+0Ch], 1

loc_485EED:
pop     edx
pop     ecx
pop     ebx
retn
sub_485C44 endp

align 4
jpt_485F29 dd offset loc_485F30 ; jump table for switch statement
dd offset loc_485F7D
dd offset loc_485F9B
dd offset loc_485FC7
dd offset loc_485FE0
dd offset def_485F29



sub_485F0C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     eax, offset byte_5F8364
mov     dl, [ecx+2]
cmp     dl, 5           ; switch 6 cases
ja      def_485F29      ; jumptable 00485F29 default case, case 5
and     edx, 0FFh
jmp     jpt_485F29[edx*4] ; switch jump

loc_485F30:             ; jumptable 00485F29 case 0
mov     ds:dword_5F888C, 3F80000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 17EA0000h
lea     edx, [eax+538h]
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ah, 1
mov     ds:byte_5F88AC, ah
mov     word ptr [ecx+8], 0A0h
add     [ecx+2], ah
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_485F7D:             ; jumptable 00485F29 case 1
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485F29      ; jumptable 00485F29 default case, case 5
mov     word ptr [ecx+8], 0A0h
inc     byte ptr [ecx+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_485F9B:             ; jumptable 00485F29 case 2
mov     dx, [ecx+8]
dec     edx
mov     [ecx+8], dx
cmp     dx, 7Ch ; '|'
jz      short loc_485FBD
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h

loc_485FB3:
call    sub_4DD47D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_485FBD:
inc     byte ptr [ecx+2]
mov     ds:byte_5F88AC, 30h ; '0'

loc_485FC7:             ; jumptable 00485F29 case 3
mov     si, [ecx+8]
dec     esi
mov     [ecx+8], si
cmp     si, 64h ; 'd'
jnz     short def_485F29 ; jumptable 00485F29 default case, case 5
inc     byte ptr [ecx+2]
mov     byte ptr [eax+548h], 0Ch

loc_485FE0:             ; jumptable 00485F29 case 4
mov     dx, [ecx+8]
dec     edx
mov     [ecx+8], dx
cmp     dx, 1Eh
jz      short loc_485FFA
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
jmp     short loc_485FB3

loc_485FFA:
inc     byte ptr [ecx+2]
mov     byte ptr [eax+548h], 30h ; '0'
mov     edx, 9
mov     eax, 1
call    sub_4875D1

def_485F29:             ; jumptable 00485F29 default case, case 5
pop     esi

def_486A26:             ; jumptable 00486A26 default case, case 8
pop     edx
pop     ecx
pop     ebx
retn
sub_485F0C endp

jpt_48604B dd offset loc_486052 ; jump table for switch statement
dd offset loc_486063
dd offset loc_486089
dd offset loc_4860BC
dd offset loc_486115
dd offset loc_486130
dd offset loc_486151



sub_486034 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 6           ; switch 7 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
and     eax, 0FFh
jmp     jpt_48604B[eax*4] ; switch jump

loc_486052:             ; jumptable 0048604B case 0
mov     eax, ds:dword_55A414
or      byte ptr [eax+0Fh], 8
mov     word ptr [ecx+8], 23h ; '#'
jmp     short loc_4860B4

loc_486063:             ; jumptable 0048604B case 1
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     edx, 0Ah
mov     eax, 2
call    sub_4875D1
jmp     short loc_4860B4

loc_486089:             ; jumptable 0048604B case 2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 607h
call    sub_47EA91
mov     eax, ds:dword_55A414
or      byte ptr [eax+0Fh], 10h

loc_4860AE:
mov     word ptr [ecx+8], 10h

loc_4860B4:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_4860BC:             ; jumptable 0048604B case 3
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ebx, ds:dword_55A400
mov     eax, ds:dword_55A414
mov     byte ptr [ebx+0Ah], 1
lea     edi, [ebx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
sub     word ptr [ebx+16h], 18Ch
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebx+14h]
call    sub_4DDDB4
mov     [ebx+56h], ax
jmp     short loc_4860AE

loc_486115:             ; jumptable 0048604B case 4
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
xor     edx, edx
xor     eax, eax
call    sub_4A0E24
jmp     short loc_4860B4

loc_486130:             ; jumptable 0048604B case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     eax, 608h
call    sub_47E8B8
jmp     loc_4860B4

loc_486151:             ; jumptable 0048604B case 6
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A400
mov     byte ptr [eax+0Ah], 4
mov     ecx, ds:dword_55A414
or      byte ptr [ecx+0Fh], 10h
mov     eax, 1

loc_48617B:
call    sub_487602
jmp     def_485B1F      ; jumptable 00485B1F default case
sub_486034 endp         ; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
align 4
jpt_4861C3 dd offset loc_4861CA ; jump table for switch statement
dd offset loc_4861D3
dd offset loc_4861F4
dd offset loc_48621A
dd offset loc_48624E
dd offset loc_4862A7
dd offset loc_4862C5
dd offset loc_4862E6
dd offset loc_486303



sub_4861AC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 8           ; switch 9 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
and     eax, 0FFh
jmp     jpt_4861C3[eax*4] ; switch jump

loc_4861CA:             ; jumptable 004861C3 case 0
mov     word ptr [ecx+8], 0Fh
inc     byte ptr [ecx+2]

loc_4861D3:             ; jumptable 004861C3 case 1
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A40C
or      byte ptr [eax+0Fh], 8
mov     word ptr [ecx+8], 14h
jmp     short loc_486246

loc_4861F4:             ; jumptable 004861C3 case 2
mov     di, [ecx+8]
dec     di
mov     [ecx+8], di
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     edx, 0Bh
mov     eax, 3
call    sub_4875D1
jmp     short loc_486246

loc_48621A:             ; jumptable 004861C3 case 3
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 608h
call    sub_47EA91
mov     ebx, ds:dword_55A40C
or      byte ptr [ebx+0Fh], 10h

loc_486240:
mov     word ptr [ecx+8], 10h

loc_486246:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_48624E:             ; jumptable 004861C3 case 4
mov     ax, [ecx+8]
dec     ax
mov     [ecx+8], ax
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ebx, ds:dword_55A404
mov     eax, ds:dword_55A40C
mov     byte ptr [ebx+0Ah], 1
lea     edi, [ebx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
sub     word ptr [ebx+16h], 18Ch
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebx+14h]
call    sub_4DDDB4
mov     [ebx+56h], ax
jmp     short loc_486240

loc_4862A7:             ; jumptable 004861C3 case 5
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     edx, 1
xor     eax, eax
call    sub_4A0E24
jmp     short loc_486246

loc_4862C5:             ; jumptable 004861C3 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     eax, 609h
call    sub_47E8B8
jmp     loc_486246

loc_4862E6:             ; jumptable 004861C3 case 7
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     word ptr [ecx+8], 0Ah
jmp     loc_486246

loc_486303:             ; jumptable 004861C3 case 8
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A404
mov     byte ptr [eax+0Ah], 4
mov     eax, ds:dword_55A40C
or      byte ptr [eax+0Fh], 10h
mov     eax, 2
jmp     loc_48617B
sub_4861AC endp

align 10h
jpt_486367 dd offset loc_48636E ; jump table for switch statement
dd offset loc_48637C
dd offset loc_4863AA
dd offset loc_486403
dd offset loc_486427
dd offset loc_486440
dd offset loc_48646D
dd offset loc_486487



sub_486350 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+2]
cmp     al, 7           ; switch 8 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
and     eax, 0FFh
jmp     jpt_486367[eax*4] ; switch jump

loc_48636E:             ; jumptable 00486367 case 0
mov     eax, ds:dword_55A410
or      byte ptr [eax+0Fh], 8
jmp     loc_48641F

loc_48637C:             ; jumptable 00486367 case 1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 609h
call    sub_47EA91
mov     ebx, ds:dword_55A410
or      byte ptr [ebx+0Fh], 10h

loc_4863A2:
mov     word ptr [ecx+8], 10h
jmp     short loc_48641F

loc_4863AA:             ; jumptable 00486367 case 2
mov     ax, [ecx+8]
dec     ax
mov     [ecx+8], ax
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ebx, ds:dword_55A408
mov     eax, ds:dword_55A410
mov     byte ptr [ebx+0Ah], 1
lea     edi, [ebx+14h]
lea     esi, [eax+14h]
movsd
movsd
lea     edi, [ebx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
sub     word ptr [ebx+16h], 18Ch
mov     eax, [ebx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebx+20h], eax
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [ebx+14h]
call    sub_4DDDB4
mov     [ebx+56h], ax
jmp     short loc_4863A2

loc_486403:             ; jumptable 00486367 case 3
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     edx, 2

loc_486418:
xor     eax, eax
call    sub_4A0E24

loc_48641F:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_486427:             ; jumptable 00486367 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
mov     edx, 3
jmp     short loc_486418

loc_486440:             ; jumptable 00486367 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 607h
call    sub_47E8B8
mov     eax, 608h
call    sub_47E8B8
mov     eax, 609h
call    sub_47E8B8
jmp     short loc_48641F

loc_48646D:             ; jumptable 00486367 case 6
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     word ptr [ecx+8], 0Fh
jmp     short loc_48641F

loc_486487:             ; jumptable 00486367 case 7
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, ds:dword_55A408
mov     byte ptr [eax+0Ah], 4
mov     eax, ds:dword_55A410
or      byte ptr [eax+0Fh], 10h
mov     eax, 3
call    sub_487602
mov     eax, 60Fh
jmp     loc_485BC6
sub_486350 endp

align 10h
jpt_48651F dd offset loc_486526 ; jump table for switch statement
dd offset loc_48652B
dd offset loc_486590
dd offset loc_4865BE
dd offset loc_4865EE
dd offset loc_486622
dd offset loc_486677
dd offset loc_4866A1
dd offset loc_4866C5
dd offset loc_4866E8
dd offset loc_486717
dd offset loc_4866E8
dd offset loc_48673D
dd offset loc_486768
dd offset loc_4867BA
dd offset loc_4867E4
dd offset def_485B1F



sub_486504 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+2]
cmp     al, 10h         ; switch 17 cases
ja      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
xor     edx, edx
mov     dl, al
jmp     jpt_48651F[edx*4] ; switch jump

loc_486526:             ; jumptable 0048651F case 0
inc     al
mov     [ecx+2], al

loc_48652B:             ; jumptable 0048651F case 1
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 1
or      byte ptr [esi+0BDh], 10h
mov     dword ptr [esi+528h], 16020000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 0F9C10000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 800h
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
jmp     loc_48670F

loc_486590:             ; jumptable 0048651F case 2
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Ah
call    sub_47EA91
mov     ds:byte_5F88AC, 0Ch
mov     word ptr [ecx+8], 0Ch
jmp     loc_48670F

loc_4865BE:             ; jumptable 0048651F case 3
mov     di, [ecx+8]
dec     di
mov     [ecx+8], di
jnz     short loc_4865E0
mov     ds:byte_5F88AC, 30h ; '0'
mov     edx, 8
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ecx+2]

loc_4865E0:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
jmp     loc_4867CF

loc_4865EE:             ; jumptable 0048651F case 4
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_4865FE
mov     ds:byte_5F88AC, 32h ; '2'

