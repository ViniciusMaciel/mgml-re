loc_4865FE:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
cmp     byte ptr [esi+0A7h], 0
jge     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
call    sub_49DF64
jmp     loc_48670F

loc_486622:             ; jumptable 0048651F case 5
mov     ds:dword_5F888C, 16020000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0FA610000h
mov     edx, offset byte_5F8364
add     edx, 538h
mov     eax, offset byte_5F8364
add     eax, 528h
call    sub_4DD57B
mov     word ptr ds:dword_5F88A4+2, 6D0h
mov     eax, 60Bh
call    sub_47E8B8
mov     eax, 60Dh
jmp     loc_48670A

loc_486677:             ; jumptable 0048651F case 6
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
mov     edx, 0Bh

loc_486698:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_48670F

loc_4866A1:             ; jumptable 0048651F case 7
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_4866B1
mov     ds:byte_5F88AC, 32h ; '2'

loc_4866B1:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Ch
jmp     short loc_48670A

loc_4866C5:             ; jumptable 0048651F case 8
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
mov     edx, 0Dh
jmp     short loc_486698

loc_4866E8:             ; jumptable 0048651F cases 9,11
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_4866F8
mov     ds:byte_5F88AC, 32h ; '2'

loc_4866F8:
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     eax, 60Bh

loc_48670A:
call    sub_47E8B8

loc_48670F:
inc     byte ptr [ecx+2]
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_486717:             ; jumptable 0048651F case 10
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
mov     edx, 17h
jmp     loc_486698

loc_48673D:             ; jumptable 0048651F case 12
mov     eax, 60Ah
call    sub_47E888
test    eax, eax
jz      def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16
mov     ds:byte_5F88AC, 0Dh
mov     word ptr [ecx+8], 0Ch
mov     eax, 60Ah
call    sub_47EA91
jmp     short loc_48670F

loc_486768:             ; jumptable 0048651F case 13
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jz      short loc_48678B
mov     ax, word ptr ds:dword_5F88A4+2
sub     eax, 30h ; '0'
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_48678B:
mov     eax, 60Bh
call    sub_47E8B8
mov     ah, 1
mov     ds:byte_5F88AC, ah
mov     word ptr [ecx+8], 6Ch ; 'l'
add     [ecx+2], ah
mov     eax, 60Ch
call    sub_47E8B8
mov     eax, 60Dh
call    sub_47E8B8

loc_4867BA:             ; jumptable 0048651F case 14
mov     di, [ecx+8]
dec     di
mov     [ecx+8], di
jz      short loc_4867DB

loc_4867C6:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h

loc_4867CF:
mov     eax, esi
call    sub_4DD47D
jmp     def_485B1F      ; jumptable 00485B1F default case
; jumptable 0048604B default case
; jumptable 004861C3 default case
; jumptable 00486367 default case
; jumptable 0048651F default case, case 16

loc_4867DB:
mov     word ptr [ecx+8], 5Ah ; 'Z'
inc     byte ptr [ecx+2]

loc_4867E4:             ; jumptable 0048651F case 15
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jz      loc_48670F
mov     ax, [esi+542h]
add     eax, 0Ah
and     ah, 0Fh
mov     [esi+542h], ax
jmp     short loc_4867C6
sub_486504 endp

jpt_48684E dd offset loc_486855 ; jump table for switch statement
dd offset loc_486889
dd offset loc_4868BF
dd offset loc_4868DF
dd offset loc_48690B
dd offset loc_486925
dd offset loc_486965
dd offset loc_4869A4
dd offset loc_4869C5
dd offset def_4870C2



sub_486834 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, ds:dword_55A400
mov     al, [eax+2]
cmp     al, 9           ; switch 10 cases
ja      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
and     eax, 0FFh
jmp     jpt_48684E[eax*4] ; switch jump

loc_486855:             ; jumptable 0048684E case 0
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh
call    sub_47EA91
mov     edx, 6

loc_486880:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_4868B9

loc_486889:             ; jumptable 0048684E case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
call    sub_49DF64
mov     eax, 60Ch
call    sub_47E8B8
mov     eax, 60Dh

loc_4868B4:
call    sub_47E8B8

loc_4868B9:
inc     byte ptr [ecx+2]

def_4870C2:             ; jumptable 004870C2 default case, case 4
pop     edx             ; jumptable 0048684E default case, case 9
pop     ecx
retn

loc_4868BF:             ; jumptable 0048684E case 2
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     word ptr [edx+56h], 0E08h
mov     eax, 60Bh

loc_4868D8:
call    sub_47EA91
jmp     short loc_4868B9

loc_4868DF:             ; jumptable 0048684E case 3
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 4
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh
call    sub_47EA91
mov     edx, 16h
jmp     loc_486880

loc_48690B:             ; jumptable 0048684E case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     eax, 60Ah
jmp     short loc_4868B4

loc_486925:             ; jumptable 0048684E case 5
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      short def_4870C2 ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh
call    sub_47EA91
mov     eax, 619h
call    sub_47EA91
mov     eax, 61Fh
call    sub_47EA91
mov     edx, 18h
jmp     loc_486880

loc_486965:             ; jumptable 0048684E case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 61Fh
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     edx, 19h
xor     eax, eax
call    sub_4A0E24
mov     eax, 61Fh
jmp     loc_4868D8

loc_4869A4:             ; jumptable 0048684E case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 60Ah
call    sub_47E8B8
mov     eax, 60Ch
jmp     loc_4868B4

loc_4869C5:             ; jumptable 0048684E case 8
mov     eax, 60Bh
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     byte ptr [edx+9], 5
mov     word ptr [edx+0Ah], 0
jmp     loc_4868B9
sub_486834 endp

align 4
jpt_486A26 dd offset loc_486A2D ; jump table for switch statement
dd offset loc_486A36
dd offset loc_486A6A
dd offset loc_486A92
dd offset loc_486AC4
dd offset loc_486AFE
dd offset loc_486B1F
dd offset loc_486B59
dd offset def_486A26



sub_486A0C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, ds:dword_55A404
mov     al, [eax+2]
cmp     al, 8           ; switch 9 cases
ja      def_486A26      ; jumptable 00486A26 default case, case 8
xor     ebx, ebx
mov     bl, al
jmp     jpt_486A26[ebx*4] ; switch jump

loc_486A2D:             ; jumptable 00486A26 case 0
inc     al
mov     [ecx+2], al
pop     edx
pop     ecx
pop     ebx
retn

loc_486A36:             ; jumptable 00486A26 case 1
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     eax, 60Ch
call    sub_47EA91
mov     edx, 7

loc_486A61:
xor     eax, eax
call    sub_4A0E24
jmp     short loc_486A8B

loc_486A6A:             ; jumptable 00486A26 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     eax, 60Bh

loc_486A86:
call    sub_47E8B8

loc_486A8B:
inc     byte ptr [ecx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_486A92:             ; jumptable 00486A26 case 3
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 20h ; ' '
and     byte ptr [edx+0Fh], 0FDh
mov     eax, 60Ch
call    sub_47EA91
jmp     short loc_486A8B

loc_486AC4:             ; jumptable 00486A26 case 4
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 800h
or      byte ptr [edx+0Fh], 2
mov     eax, 60Ch
call    sub_47EA91
mov     edx, 0Ch
jmp     loc_486A61

loc_486AFE:             ; jumptable 00486A26 case 5
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     eax, 60Ah
jmp     loc_486A86

loc_486B1F:             ; jumptable 00486A26 case 6
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 20h ; ' '
or      byte ptr [edx+0Fh], 2
mov     eax, 60Ch
call    sub_47EA91
mov     edx, 0Eh
jmp     loc_486A61

loc_486B59:             ; jumptable 00486A26 case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486A26      ; jumptable 00486A26 default case, case 8
mov     byte ptr [edx+9], 2
mov     word ptr [edx+0Ah], 0
mov     word ptr [edx+0Ch], 20h ; ' '
and     byte ptr [edx+0Fh], 0FDh
mov     eax, 61Dh
jmp     loc_486A86
sub_486A0C endp

jpt_486BBF dd offset loc_486BC6 ; jump table for switch statement
dd offset loc_486C02
dd offset loc_486C11
dd offset loc_486C34
dd offset loc_486C11
dd offset loc_486C77
dd offset loc_486CA7
dd offset loc_486CE3



sub_486BA4 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     ecx, ds:dword_55A408
mov     al, [eax+2]
cmp     al, 7           ; switch 8 cases
ja      def_486BBF      ; jumptable 00486BBF default case
and     eax, 0FFh
jmp     jpt_486BBF[eax*4] ; switch jump

loc_486BC6:             ; jumptable 00486BBF case 0
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 20h ; ' '
or      byte ptr [ecx+0Fh], 2
mov     eax, 60Dh
call    sub_47EA91
mov     eax, 619h

loc_486BFB:
call    sub_47EA91
jmp     short loc_486C70

loc_486C02:             ; jumptable 00486BBF case 1
mov     edx, 9
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [ebx+2]

loc_486C11:             ; jumptable 00486BBF cases 2,4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     eax, 60Ah
call    sub_47E8B8
jmp     short loc_486C70

loc_486C34:             ; jumptable 00486BBF case 3
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 800h
or      byte ptr [ecx+0Fh], 2
mov     eax, 60Dh
call    sub_47EA91
mov     edx, 0Ah

loc_486C69:
xor     eax, eax
call    sub_4A0E24

loc_486C70:
inc     byte ptr [ebx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_486C77:             ; jumptable 00486BBF case 5
mov     eax, 60Dh
call    sub_47E888
test    eax, eax
jz      def_486BBF      ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 20h ; ' '
and     byte ptr [ecx+0Fh], 0FDh
mov     eax, 60Ch
jmp     loc_486BFB

loc_486CA7:             ; jumptable 00486BBF case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_486BBF ; jumptable 00486BBF default case
mov     eax, 61Dh
call    sub_47E888
test    eax, eax
jz      short def_486BBF ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 2
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+0Ch], 20h ; ' '
or      byte ptr [ecx+0Fh], 2
mov     eax, 61Dh
call    sub_47EA91
mov     edx, 0Fh
jmp     short loc_486C69

loc_486CE3:             ; jumptable 00486BBF case 7
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_486BBF ; jumptable 00486BBF default case
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     eax, 60Fh
call    sub_47E8B8

def_486BBF:             ; jumptable 00486BBF default case
pop     edx
pop     ecx
pop     ebx
retn
sub_486BA4 endp




sub_486D04 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_485BD7[edx*4]
mov     edx, offset unk_55A440

loc_486D16:
cmp     edx, offset unk_55A4A0
jnb     loc_485BFA
test    byte ptr [edx], 1
jz      short loc_486D2C
mov     eax, edx
call    dword ptr [edx+4]

loc_486D2C:
add     edx, 0Ch
jmp     short loc_486D16
sub_486D04 endp

align 4
jpt_486D7B dd offset loc_486D82 ; jump table for switch statement
dd offset loc_486DCB
dd offset loc_486E9B
dd offset loc_486EAD
dd offset loc_486EDA
dd offset loc_486F2C
dd offset loc_486F43
dd offset loc_486F5E
dd offset loc_486F78
dd offset loc_486FAA
dd offset loc_486FC8



sub_486D60 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+6]
cmp     al, 0Ah         ; switch 11 cases
ja      def_486D7B      ; jumptable 00486D7B default case
xor     edx, edx
mov     dl, al
jmp     jpt_486D7B[edx*4] ; switch jump

loc_486D82:             ; jumptable 00486D7B case 0
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      def_486D7B      ; jumptable 00486D7B default case
mov     eax, 10h
call    sub_4D9040
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51FE5C
mov     dword ptr [ecx+0A4h], offset unk_51FE4C
inc     byte ptr [ecx+6]
mov     ds:word_77EA80, 64h ; 'd'

loc_486DCB:             ; jumptable 00486D7B case 1
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 1
or      byte ptr [esi+0BDh], 10h
mov     dword ptr [esi+528h], 16160000h
mov     dword ptr [esi+52Ch], 0FFFF0000h
mov     dword ptr [esi+530h], 0FA800000h
lea     edx, [esi+538h]
lea     eax, [esi+528h]
call    sub_4DD57B
mov     word ptr [esi+540h], 0
mov     word ptr [esi+542h], 494h
mov     word ptr [esi+544h], 0
mov     byte ptr [esi+548h], 30h ; '0'
xor     eax, eax
call    sub_4873C4
call    sub_48761B
xor     edx, edx
xor     eax, eax
call    sub_4875D1
mov     edx, 1
mov     eax, edx
call    sub_4875D1
mov     edx, 2
mov     eax, edx
call    sub_4875D1
mov     edx, 3
mov     eax, edx
call    sub_4875D1
mov     eax, 606h
call    sub_47EA91
mov     eax, 607h
call    sub_47EA91
mov     eax, 608h
call    sub_47EA91
mov     eax, 609h
call    sub_47EA91
inc     byte ptr [ecx+6]
mov     dword ptr [ecx+0Ch], 1Eh
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486E9B:             ; jumptable 00486D7B case 2
cmp     byte ptr ds:dword_77E784+1, 2
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al

loc_486EAD:             ; jumptable 00486D7B case 3
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
test    edx, edx
jge     def_486D7B      ; jumptable 00486D7B default case
inc     byte ptr [ecx+6]
mov     eax, 606h
call    sub_47E8B8
mov     edx, 0Fh

loc_486ECE:
xor     eax, eax
call    sub_4A0E24
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486EDA:             ; jumptable 00486D7B case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 7
mov     edx, 10h
xor     eax, eax
call    sub_4A0E24
mov     eax, 606h
call    sub_47E8B8

loc_486F09:
mov     eax, 607h
call    sub_47E8B8
mov     eax, 608h
call    sub_47E8B8
mov     eax, 609h

loc_486F22:
call    sub_47E8B8
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486F2C:             ; jumptable 00486D7B case 5
mov     ebp, [ecx+0Ch]
dec     ebp
mov     [ecx+0Ch], ebp
test    ebp, ebp
jge     def_486D7B      ; jumptable 00486D7B default case
inc     byte ptr [ecx+6]
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486F43:             ; jumptable 00486D7B case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 46h ; 'F'
jmp     short loc_486F09

loc_486F5E:             ; jumptable 00486D7B case 7
mov     esi, [ecx+0Ch]
dec     esi
mov     [ecx+0Ch], esi
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     byte ptr [ecx+6]
mov     edx, 11h
jmp     loc_486ECE

loc_486F78:             ; jumptable 00486D7B case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
mov     eax, 606h
call    sub_47E8B8
mov     eax, 60Eh
jmp     loc_486F22

loc_486FAA:             ; jumptable 00486D7B case 9
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_486D7B      ; jumptable 00486D7B default case
inc     al
mov     [ecx+6], al
mov     dword ptr [ecx+0Ch], 88h
jmp     def_486D7B      ; jumptable 00486D7B default case

loc_486FC8:             ; jumptable 00486D7B case 10
cmp     ds:byte_77EAB8, 0
jnz     short def_486D7B ; jumptable 00486D7B default case
mov     edx, [ecx+0Ch]
dec     edx
mov     [ecx+0Ch], edx
test    edx, edx
jge     short def_486D7B ; jumptable 00486D7B default case
xor     eax, eax
call    sub_487602
mov     eax, 1
call    sub_487602
mov     eax, 2
call    sub_487602
mov     eax, 3
call    sub_487602
mov     eax, esi
call    sub_4B565A
mov     byte ptr [ecx], 0
mov     byte ptr ds:dword_77E954, 1
call    sub_48742C
mov     eax, 1
call    sub_4873C4
mov     eax, 5
call    sub_47E8B8
mov     eax, 20h ; ' '
call    sub_4D9040
mov     ds:word_77EA80, 7Fh

def_486D7B:             ; jumptable 00486D7B default case
mov     dh, [ecx+6]
test    dh, dh
jbe     short loc_48705A
cmp     dh, 0Ah
jnb     short loc_48705A
mov     esi, [ecx+0A4h]
cmp     byte ptr [esi], 0FFh
jz      short loc_48705A
mov     eax, ecx
call    dword ptr [esi+4]

loc_48705A:
cmp     byte ptr [ecx+6], 2
jbe     short loc_48708D
call    sub_47EBCB
test    eax, eax
jz      short loc_48708D
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     byte ptr [ecx+6], 0Ah
mov     dword ptr [ecx+0Ch], 0
call    sub_48761B

loc_48708D:
pop     ebp

loc_48708E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_486D60 endp

align 4
jpt_4870C2 dd offset loc_4870C9 ; jump table for switch statement
dd offset loc_4870F5
dd offset loc_487117
dd offset loc_487139
dd offset def_4870C2

loc_4870A8:
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_55A400
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
and     eax, 0FFh
jmp     jpt_4870C2[eax*4] ; switch jump

loc_4870C9:             ; jumptable 004870C2 case 0
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 1

loc_4870E9:
mov     word ptr [ecx+0Ah], 0
inc     byte ptr [edx+2]
pop     edx
pop     ecx
retn

loc_4870F5:             ; jumptable 004870C2 case 1
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 0
jmp     short loc_4870E9

loc_487117:             ; jumptable 004870C2 case 2
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 2
jmp     short loc_4870E9

loc_487139:             ; jumptable 004870C2 case 3
mov     eax, 606h
call    sub_47E888
test    eax, eax
jz      def_4870C2      ; jumptable 004870C2 default case, case 4
; jumptable 0048684E default case, case 9
mov     eax, 606h
call    sub_47EA91
mov     byte ptr [ecx+9], 3
jmp     short loc_4870E9
align 4
jpt_487186 dd offset loc_48718D ; jump table for switch statement
dd offset loc_48718D
dd offset loc_4871B5
dd offset loc_4871D3

loc_48716C:
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_55A404
mov     al, [eax+2]
cmp     al, 3           ; switch 4 cases
ja      def_487186      ; jumptable 00487186 default case
and     eax, 0FFh
jmp     jpt_487186[eax*4] ; switch jump

loc_48718D:             ; jumptable 00487186 cases 0,1
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_487186 ; jumptable 00487186 default case
mov     eax, 607h
call    sub_47EA91
mov     byte ptr [ecx+9], 1

loc_4871A9:
mov     word ptr [ecx+0Ah], 0
inc     byte ptr [edx+2]
pop     edx
pop     ecx
retn

loc_4871B5:             ; jumptable 00487186 case 2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_487186 ; jumptable 00487186 default case
mov     eax, 607h
call    sub_47EA91
mov     byte ptr [ecx+9], 2
jmp     short loc_4871A9

loc_4871D3:             ; jumptable 00487186 case 3
mov     eax, 61Ah
call    sub_47E888
test    eax, eax
jz      short def_487186 ; jumptable 00487186 default case
mov     eax, 1
call    sub_4874BB
mov     eax, 1
call    sub_487602
mov     eax, 61Dh
call    sub_47E8B8

def_487186:             ; jumptable 00487186 default case
pop     edx
pop     ecx
retn
align 4
jpt_48723C dd offset loc_487243 ; jump table for switch statement
dd offset loc_487243
dd offset loc_487271
dd offset loc_487291
dd offset loc_4872B3
dd offset loc_4872D9
dd offset def_48723C



sub_487220 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_55A408
mov     al, [eax+2]
cmp     al, 6           ; switch 7 cases
ja      def_48723C      ; jumptable 0048723C default case, case 6
and     eax, 0FFh
jmp     jpt_48723C[eax*4] ; switch jump

loc_487243:             ; jumptable 0048723C cases 0,1
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_48723C      ; jumptable 0048723C default case, case 6
mov     eax, 608h
call    sub_47EA91
mov     byte ptr [ecx+9], 1

loc_487263:
mov     word ptr [ecx+0Ah], 0

loc_487269:
inc     byte ptr [edx+2]

def_48723C:             ; jumptable 0048723C default case, case 6
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_487271:             ; jumptable 0048723C case 2
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short def_48723C ; jumptable 0048723C default case, case 6
mov     eax, 608h
call    sub_47EA91
mov     word ptr [edx+8], 3Ch ; '<'
jmp     short loc_487269

loc_487291:             ; jumptable 0048723C case 3
mov     di, [edx+8]
dec     di
mov     [edx+8], di
jnz     short def_48723C ; jumptable 0048723C default case, case 6
mov     byte ptr [ecx+9], 2
mov     [ecx+0Ah], di
inc     byte ptr [edx+2]
mov     word ptr [edx+8], 0F0h
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4872B3:             ; jumptable 0048723C case 4
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     short loc_4872C9
mov     byte ptr [ecx+9], 3
mov     [ecx+0Ah], bx
jmp     short loc_487269

loc_4872C9:
mov     eax, 60Eh
call    sub_47E888
test    eax, eax
jz      short def_48723C ; jumptable 0048723C default case, case 6
jmp     short loc_487269

loc_4872D9:             ; jumptable 0048723C case 5
mov     eax, 61Bh
call    sub_47E888
test    eax, eax
jz      short def_48723C ; jumptable 0048723C default case, case 6
mov     byte ptr [ecx+9], 0
jmp     loc_487263
sub_487220 endp

jpt_48731F dd offset loc_487326 ; jump table for switch statement
dd offset loc_487326
dd offset loc_487353
dd offset loc_487373
dd offset loc_48738A



sub_487304 proc near

; FUNCTION CHUNK AT 004873B6 SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, ds:dword_55A40C
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_48731F      ; jumptable 0048731F default case
and     eax, 0FFh
jmp     jpt_48731F[eax*4] ; switch jump

loc_487326:             ; jumptable 0048731F cases 0,1
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_48731F      ; jumptable 0048731F default case
mov     eax, 609h
call    sub_47EA91
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0

loc_48734C:
inc     byte ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_487353:             ; jumptable 0048731F case 2
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      short def_48731F ; jumptable 0048731F default case
mov     eax, 609h
call    sub_47EA91
mov     word ptr [edx+8], 1Eh
jmp     short loc_48734C

loc_487373:             ; jumptable 0048731F case 3
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     short loc_48738A ; jumptable 0048731F case 4
mov     byte ptr [ecx+9], 2
mov     [ecx+0Ah], bx
inc     byte ptr [edx+2]

loc_48738A:             ; jumptable 0048731F case 4
mov     eax, 61Ch
call    sub_47E888
test    eax, eax
jz      short def_48731F ; jumptable 0048731F default case
mov     eax, 3
call    sub_4874BB
mov     eax, 3
call    sub_487602
mov     eax, 61Eh
call    sub_47E8B8
sub_487304 endp

; START OF FUNCTION CHUNK FOR sub_48742C
;   ADDITIONAL PARENT FUNCTION sub_487304

def_48731F:             ; jumptable 0048731F default case
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_48742C



sub_4873BA proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_4873BA endp




sub_4873C4 proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_520330
xor     ecx, ecx
mov     ds:dword_51F11C, ecx
xor     ebx, ebx

loc_4873DE:
movsx   eax, bx
cmp     eax, [edx]
jnb     loc_48708E
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
mov     ds:dword_55A400[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_51F11C, eax
inc     ebx
jmp     short loc_4873DE
sub_4873C4 endp




sub_48742C proc near

; FUNCTION CHUNK AT 004873B6 SIZE 00000004 BYTES

push    ebx
push    ecx
push    edx
xor     ebx, ebx

loc_487431:
mov     edx, ds:dword_51F11C
test    edx, edx
jz      def_48731F      ; jumptable 0048731F default case
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
test    eax, edx
jz      short loc_4874B5
mov     edx, ds:dword_55A400[ebx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_4874A4
jbe     short loc_48746B
cmp     eax, 60h ; '`'
jz      short loc_48748C
jmp     short loc_4874A4

loc_48746B:
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
jmp     short loc_48749E

loc_48748C:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_48749E:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_4874A4:
mov     cl, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51F11C, eax

loc_4874B5:
inc     ebx
jmp     loc_487431
sub_48742C endp




sub_4874BB proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51F11C, eax
jz      loc_487542
movsx   edx, bl
mov     edx, ds:dword_55A400[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_487530
jbe     short loc_4874F8
cmp     eax, 60h ; '`'
jz      short loc_487518
jmp     short loc_487530

loc_4874F8:
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
jmp     short loc_48752A

loc_487518:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_48752A:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_487530:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51F11C, eax

loc_487542:
pop     edx
pop     ecx
pop     ebx
retn
sub_4874BB endp




sub_487546 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_51F11C, eax
jz      loc_4875CD
movsx   edx, bl
mov     edx, ds:dword_55A400[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_4875BB
jbe     short loc_487583
cmp     eax, 60h ; '`'
jz      short loc_4875A3
jmp     short loc_4875BB

loc_487583:
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
jmp     short loc_4875B5

loc_4875A3:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_4875B5:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_4875BB:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_51F11C, eax

loc_4875CD:
pop     edx
pop     ecx
pop     ebx
retn
sub_487546 endp




sub_4875D1 proc near
push    ecx
xor     ecx, ecx
mov     cl, al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset unk_55A440
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
and     edx, 0FFh
mov     edx, ds:off_520300[edx*4]
mov     [eax+4], edx
pop     ecx
retn
sub_4875D1 endp




sub_487602 proc near
push    edx
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A440
mov     byte ptr [eax], 0
pop     edx
retn
sub_487602 endp




sub_48761B proc near
push    edx
xor     edx, edx
mov     eax, offset unk_55A440

loc_487623:
mov     byte ptr [eax], 0
mov     [eax+1], dl
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
add     eax, 0Ch
inc     edx
cmp     edx, 8
jl      short loc_487623
mov     byte ptr [eax], 0
pop     edx
retn
sub_48761B endp




sub_48763F proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_487645[edx*4]
mov     edx, offset unk_55A4AC

loc_487651:
cmp     edx, offset dword_55A50C
jnb     short loc_487668
test    byte ptr [edx], 1
jz      short loc_487663
mov     eax, edx
call    dword ptr [edx+4]

loc_487663:
add     edx, 0Ch
jmp     short loc_487651

loc_487668:
pop     edx
retn
sub_48763F endp

db 90h
jpt_487690 dd offset loc_487697 ; jump table for switch statement
dd offset loc_48772F
dd offset loc_487748
dd offset loc_487770



sub_48767B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 3           ; switch 4 cases
ja      def_487690      ; jumptable 00487690 default case
and     eax, 0FFh
jmp     jpt_487690[eax*4] ; switch jump

loc_487697:             ; jumptable 00487690 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_487690      ; jumptable 00487690 default case
call    sub_49DFCA
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_520CAC
mov     dword ptr [ecx+0A4h], offset unk_520C9C
mov     edx, 0Ah
xor     eax, eax
call    sub_4A0E24
mov     eax, 607h
call    sub_47EA91
mov     eax, 608h
call    sub_47EA91
mov     eax, 609h
call    sub_47EA91
mov     eax, 604h
call    sub_47EA91
call    sub_487C36
xor     edx, edx
xor     eax, eax
call    sub_487BEC
mov     edx, 1
mov     eax, edx
call    sub_487BEC
mov     edx, 2
mov     eax, edx
call    sub_487BEC

loc_487727:
inc     byte ptr [ecx+6]
jmp     def_487690      ; jumptable 00487690 default case

loc_48772F:             ; jumptable 00487690 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     def_487690      ; jumptable 00487690 default case
mov     eax, 608h
call    sub_47E8B8
jmp     short loc_487727

loc_487748:             ; jumptable 00487690 case 2
mov     eax, 604h
call    sub_47E888
test    eax, eax
jz      def_487690      ; jumptable 00487690 default case
mov     eax, 604h
call    sub_47EA91
mov     eax, 0Ah
call    sub_49E0D7
jmp     short loc_487727

loc_487770:             ; jumptable 00487690 case 3
cmp     ds:word_6E23D6, 0
jnz     short def_487690 ; jumptable 00487690 default case
xor     eax, eax
call    sub_487C1D
mov     eax, 1
call    sub_487C1D
mov     eax, 2
call    sub_487C1D
call    sub_487B46
mov     ah, 2
mov     byte ptr ds:dword_77EA5A+2, ah
mov     ds:byte_77EA5E, 6
mov     dh, 1
mov     ds:byte_77EA5F, dh
xor     ebx, ebx
mov     word ptr ds:dword_77EA4E+2, bx
mov     word ptr ds:dword_77EA52, bx
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, bx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, ah
mov     byte ptr ds:dword_77E954, dh
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [ecx], bl

def_487690:             ; jumptable 00487690 default case
cmp     byte ptr [ecx+6], 0
jbe     short loc_48780E
mov     eax, [ecx+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_48780E
mov     edx, eax
mov     eax, ecx
call    dword ptr [edx+4]

loc_48780E:
mov     dh, [ecx+6]
test    dh, dh
jbe     short loc_487845
cmp     dh, 3
jnb     short loc_487845
call    sub_47EBCB
test    eax, eax
jz      short loc_487845
call    sub_4A0E35
call    sub_4A62BD
call    sub_4D8EB1
call    sub_4D8ED6
mov     eax, 604h
call    sub_47E8B8
mov     byte ptr [ecx+6], 2

loc_487845:
pop     edx
pop     ecx
pop     ebx
retn
sub_48767B endp

db 8Bh, 0C0h
jpt_48787D dd offset loc_487884 ; jump table for switch statement
dd offset loc_487889
dd offset loc_4878F1
dd offset loc_487911
dd offset loc_48792C
dd offset def_48787D



sub_487863 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     ebx, offset byte_5F8364
mov     al, [eax+2]
cmp     al, 5           ; switch 6 cases
ja      def_48787D      ; jumptable 0048787D default case, case 5
xor     edx, edx
mov     dl, al
jmp     jpt_48787D[edx*4] ; switch jump

loc_487884:             ; jumptable 0048787D case 0
inc     al
mov     [ecx+2], al

loc_487889:             ; jumptable 0048787D case 1
mov     byte ptr [ebx+8], 3
mov     byte ptr [ebx+9], 1
or      byte ptr [ebx+0BDh], 10h
mov     dword ptr [ebx+528h], 2580000h
mov     dword ptr [ebx+52Ch], 0FCFF0000h
mov     dword ptr [ebx+530h], 8340000h
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     word ptr [ebx+540h], 0
mov     word ptr [ebx+542h], 990h
mov     word ptr [ebx+544h], 0
mov     byte ptr [ebx+548h], 30h ; '0'

loc_4878E9:
inc     byte ptr [ecx+2]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4878F1:             ; jumptable 0048787D case 2
mov     eax, 607h
call    sub_47E888
test    eax, eax
jz      short def_48787D ; jumptable 0048787D default case, case 5
mov     eax, 607h
call    sub_47EA91
mov     word ptr [ecx+8], 20h ; ' '
jmp     short loc_4878E9

loc_487911:             ; jumptable 0048787D case 3
mov     si, [ecx+8]
dec     si
mov     [ecx+8], si
jnz     short def_48787D ; jumptable 0048787D default case, case 5
mov     ds:byte_5F88AC, 0Dh
mov     word ptr [ecx+8], 10h
jmp     short loc_4878E9

loc_48792C:             ; jumptable 0048787D case 4
mov     dx, [ecx+8]
dec     dx
mov     [ecx+8], dx
jnz     short loc_48794B
mov     ds:byte_5F88AC, 30h ; '0'
mov     eax, 608h
call    sub_47EA91
jmp     short loc_4878E9

loc_48794B:
mov     ax, word ptr ds:dword_5F88A4+2
sub     eax, 30h ; '0'
and     ah, 0Fh
mov     word ptr ds:dword_5F88A4+2, ax

def_48787D:             ; jumptable 0048787D default case, case 5
pop     esi

def_487A8F:             ; jumptable 00487A8F default case, case 3
pop     edx
pop     ecx
pop     ebx
retn
sub_487863 endp

db 90h
jpt_487991 dd offset loc_487998 ; jump table for switch statement
dd offset loc_4879A3
dd offset loc_4879DC
dd offset loc_487A18
dd offset loc_487A48



sub_487977 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, ds:dword_55A518
mov     al, [eax+2]
cmp     al, 4           ; switch 5 cases
ja      def_487991      ; jumptable 00487991 default case
and     eax, 0FFh
jmp     jpt_487991[eax*4] ; switch jump

loc_487998:             ; jumptable 00487991 case 0
mov     word ptr [edx+56h], 200h
jmp     loc_487A5B

loc_4879A3:             ; jumptable 00487991 case 1
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_487991      ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     eax, 607h
call    sub_47E8B8
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0
jmp     loc_487A5B

loc_4879DC:             ; jumptable 00487991 case 2
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      def_487991      ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     eax, 607h
call    sub_47EA91
mov     byte ptr [edx+9], 3
mov     word ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 1
mov     word ptr [edx+56h], 0
jmp     short loc_487A5B

loc_487A18:             ; jumptable 00487991 case 3
mov     eax, 608h
call    sub_47E888
test    eax, eax
jz      short def_487991 ; jumptable 00487991 default case
mov     eax, 608h
call    sub_47EA91
mov     byte ptr [edx+9], 1
mov     word ptr [edx+0Ah], 0
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_487A5B

loc_487A48:             ; jumptable 00487991 case 4
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_487991 ; jumptable 00487991 default case
mov     eax, 604h
call    sub_47E8B8

loc_487A5B:
inc     byte ptr [ecx+2]

def_487991:             ; jumptable 00487991 default case
pop     edx
pop     ecx
retn
sub_487977 endp

db 8Bh, 0C0h
jpt_487A8F dd offset loc_487A96 ; jump table for switch statement
dd offset loc_487A9F
dd offset loc_487ABE
dd offset def_487A8F



sub_487A73 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, ds:dword_55A51C
mov     cl, [edx+2]
cmp     cl, 3           ; switch 4 cases
ja      def_487A8F      ; jumptable 00487A8F default case, case 3
and     ecx, 0FFh
jmp     jpt_487A8F[ecx*4] ; switch jump

loc_487A96:             ; jumptable 00487A8F case 0
mov     word ptr [edx+8], 258h
inc     byte ptr [edx+2]

loc_487A9F:             ; jumptable 00487A8F case 1
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     def_487A8F      ; jumptable 00487A8F default case, case 3
mov     byte ptr [eax+9], 2
mov     [eax+0Ah], bx

loc_487AB7:
inc     byte ptr [edx+2]
pop     edx
pop     ecx
pop     ebx
retn

loc_487ABE:             ; jumptable 00487A8F case 2
mov     eax, 609h
call    sub_47E888
test    eax, eax
jz      def_487A8F      ; jumptable 00487A8F default case, case 3
mov     eax, 609h
call    sub_47EA91
jmp     short loc_487AB7
sub_487A73 endp




sub_487ADC proc near
call    sub_49DBD1
jmp     sub_49DECF
sub_487ADC endp




sub_487AE6 proc near
push    ebx
push    ecx
push    edx
push    esi
movsx   edx, al
shl     edx, 3
add     edx, offset unk_520D00
xor     ebx, ebx

loc_487AF8:
movsx   eax, bx
cmp     eax, [edx]
jnb     def_48787D      ; jumptable 0048787D default case, case 5
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
mov     ds:dword_55A50C[eax*4], esi
and     byte ptr [esi+6], 0DFh
movsx   ecx, cx
mov     eax, 80000000h
shr     eax, cl
or      ds:dword_520410, eax
inc     ebx
jmp     short loc_487AF8
sub_487AE6 endp




sub_487B46 proc near
push    edx
xor     edx, edx

loc_487B49:
cmp     ds:dword_520410, 0
jz      loc_487668
movsx   eax, dl
call    sub_487B61
inc     edx
jmp     short loc_487B49
sub_487B46 endp




sub_487B61 proc near
push    ebx
push    ecx
push    edx
mov     bl, al
movsx   ecx, al
mov     eax, 80000000h
shr     eax, cl
test    ds:dword_520410, eax
jz      loc_487BE8
movsx   edx, bl
mov     edx, ds:dword_55A50C[edx*4]
xor     eax, eax
mov     al, [edx+1]
call    sub_4DD420
cmp     eax, 20h ; ' '
jb      short loc_487BD6
jbe     short loc_487B9E
cmp     eax, 60h ; '`'
jz      short loc_487BBE
jmp     short loc_487BD6

loc_487B9E:
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
jmp     short loc_487BD0

loc_487BBE:
mov     byte ptr [edx+8], 2
xor     eax, eax
mov     al, [edx+2]
shl     eax, 2
mov     ecx, ds:dword_77E6E0

loc_487BD0:
add     ecx, eax
mov     eax, edx
call    dword ptr [ecx]

loc_487BD6:
movsx   ecx, bl
mov     eax, 80000000h
shr     eax, cl
not     eax
and     ds:dword_520410, eax

loc_487BE8:
pop     edx
pop     ecx
pop     ebx
retn
sub_487B61 endp




sub_487BEC proc near
push    ecx
xor     ecx, ecx
mov     cl, al
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset unk_55A4AC
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
and     edx, 0FFh
mov     edx, ds:off_520CF4[edx*4]
mov     [eax+4], edx
pop     ecx
retn
sub_487BEC endp




sub_487C1D proc near
push    edx
xor     edx, edx
mov     dl, al
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
add     eax, offset unk_55A4AC
mov     byte ptr [eax], 0
pop     edx
retn
sub_487C1D endp




sub_487C36 proc near
push    edx
xor     edx, edx
mov     eax, offset unk_55A4AC

loc_487C3E:
mov     byte ptr [eax], 0
mov     [eax+1], dl
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
add     eax, 0Ch
inc     edx
cmp     edx, 8
jl      short loc_487C3E
mov     byte ptr [eax], 0
pop     edx
retn
sub_487C36 endp




sub_487C5A proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_487C60[edx*4]
pop     edx
retn
sub_487C5A endp

align 2
jpt_487C99 dd offset loc_487CA0 ; jump table for switch statement
dd offset loc_487CCD
dd offset loc_487D76
dd offset loc_487D7E
dd offset loc_487D9A



sub_487C7E proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ecx, offset byte_5F8364
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_487C99      ; jumptable 00487C99 default case
and     eax, 0FFh
jmp     jpt_487C99[eax*4] ; switch jump

loc_487CA0:             ; jumptable 00487C99 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_520D60
mov     dword ptr [esi+0A4h], offset unk_520DAC
mov     dword ptr [esi+0Ch], 0
mov     byte ptr [esi+0Ah], 0
inc     byte ptr [esi+5]

loc_487CCD:             ; jumptable 00487C99 case 1
mov     eax, ecx
call    sub_4B55D5
test    eax, eax
jz      def_487C99      ; jumptable 00487C99 default case
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 1
or      byte ptr [ecx+0BDh], 10h
mov     word ptr [ecx+538h], 0
mov     word ptr [ecx+53Ah], 0FFFFh
mov     word ptr [ecx+53Ch], 0DA80h
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
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     eax, offset unk_520D4C
call    sub_49DB4D

loc_487D71:
inc     byte ptr [esi+5]
jmp     short def_487C99 ; jumptable 00487C99 default case

loc_487D76:             ; jumptable 00487C99 case 2
inc     byte ptr ds:dword_5F836C+1
jmp     short loc_487D71

loc_487D7E:             ; jumptable 00487C99 case 3
or      ds:byte_5F8421, 20h
mov     ds:word_77EA80, 6Eh ; 'n'
mov     eax, 0B000Ah
call    sub_4D8E42
jmp     short loc_487D71

loc_487D9A:             ; jumptable 00487C99 case 4
call    sub_4D8ECC
test    eax, eax
jz      short def_487C99 ; jumptable 00487C99 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_520DBC
mov     dword ptr [esi+0A4h], offset unk_520FD4
inc     byte ptr [esi+4]
mov     byte ptr [esi+5], 0

def_487C99:             ; jumptable 00487C99 default case
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_487C7E endp




sub_487DD2 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jz      short loc_487DFD
call    sub_47EBCB
test    eax, eax
jz      short loc_487DF0
mov     byte ptr [edx+0Ah], 1
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_487DF0:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
jmp     short loc_487E04

loc_487DFD:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 1

loc_487E04:
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_487DD2 endp

db 8Bh, 0C0h
jpt_487E38 dd offset loc_487E3F ; jump table for switch statement
dd offset loc_487EBB
dd offset loc_487EE6
dd offset loc_487EFD
dd offset loc_487F16



sub_487E22 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 4           ; switch 5 cases
ja      def_487E38      ; jumptable 00487E38 default case
and     eax, 0FFh
jmp     jpt_487E38[eax*4] ; switch jump

loc_487E3F:             ; jumptable 00487E38 case 0
call    sub_4E1D8A
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F8D3h
mov     word ptr ds:dword_5F889E, 0FCFFh
mov     word ptr ds:dword_5F889E+2, 9Dh
mov     ds:dword_5F888C, 0F8D30000h
mov     ds:dword_5F8890, 0FCFF0000h
mov     ds:dword_5F8894, 9D0000h
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 0A08h
mov     ds:word_5F88A8, di
xor     bh, bh
mov     ds:byte_5F88AC, bh

loc_487EB3:
inc     byte ptr [ecx+5]
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_487EBB:             ; jumptable 00487E38 case 1
call    sub_4D8EB1
mov     eax, [ecx+24h]
call    sub_4DE2F6
mov     eax, offset byte_5F8364
call    sub_4B565A
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_487EB3
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
jmp     short loc_487EB3

loc_487EE6:             ; jumptable 00487E38 case 2
cmp     ds:byte_77EAB8, 0
jnz     short def_487E38 ; jumptable 00487E38 default case
mov     edx, 0Bh
xor     eax, eax
call    sub_4A0E24
jmp     short loc_487EB3

loc_487EFD:             ; jumptable 00487E38 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_487E38 ; jumptable 00487E38 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 80000009h
call    sub_4D89E4
jmp     short loc_487EB3

loc_487F16:             ; jumptable 00487E38 case 4
mov     byte ptr [ecx], 0

def_487E38:             ; jumptable 00487E38 default case
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_487E22 endp



; Attributes: thunk

sub_487F1E proc near
jmp     sub_49DBD1
sub_487F1E endp




sub_487F23 proc near
push    edx
xor     edx, edx
mov     ds:word_57096A, dx
cmp     dword ptr [eax+10h], 130h
jle     short loc_487F42
mov     ax, ds:word_5F8488
mov     ds:word_57096A, ax

loc_487F42:
call    sub_49DBD1
pop     edx
retn
sub_487F23 endp




sub_487F49 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ecx, offset byte_5F8364
mov     ebx, [eax+10h]
test    ebx, ebx
jnz     short loc_487FB5
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 0F7FCh
mov     word ptr ds:dword_5F889E, 0FFFFh
mov     word ptr ds:dword_5F889E+2, 0F1E0h
mov     ds:dword_5F888C, 0F7FC0000h
mov     ds:dword_5F8890, 0FFFF0000h
mov     ds:dword_5F8894, 0F1E00000h
xor     eax, eax
mov     word ptr ds:dword_5F88A4, ax
mov     word ptr ds:dword_5F88A4+2, 800h
mov     ds:word_5F88A8, ax
jmp     short loc_487FC6

loc_487FB5:
cmp     ebx, 1
jnz     short loc_487FC6
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D

loc_487FC6:
xor     edi, edi
mov     ds:word_57096A, di
cmp     dword ptr [edx+10h], 78h ; 'x'
jge     short loc_487FFE
mov     ax, [ecx+124h]
mov     ds:word_57096A, ax
mov     esi, [edx+10h]
cmp     esi, 68h ; 'h'
jle     short loc_487FFE
cmp     esi, 76h ; 'v'
jge     short loc_487FFE
mov     dx, [ecx+12Ah]
or      eax, edx
mov     ds:word_57096A, ax

loc_487FFE:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_487F49 endp




sub_488004 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_48800A[edx*4]
pop     edx
retn
sub_488004 endp




sub_488013 proc near
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      loc_4880AA
mov     eax, 626h
call    sub_47E888
test    eax, eax
jz      short loc_488040
mov     byte ptr [edx+0Bh], 4
mov     byte ptr [edx+4], 4
jmp     short loc_4880A6

loc_488040:
mov     eax, 622h
call    sub_47E888
test    eax, eax
jz      short loc_48806C
mov     eax, 62Ah
call    sub_47E888
test    eax, eax
jnz     short loc_48806C
mov     eax, 62Ah
call    sub_47E8B8
mov     byte ptr [edx+0Bh], 0
jmp     short loc_4880A2

loc_48806C:
mov     eax, 623h
call    sub_47E888
test    eax, eax
jz      short loc_48807E
mov     byte ptr [edx+0Bh], 1

loc_48807E:
mov     eax, 624h
call    sub_47E888
test    eax, eax
jz      short loc_488090
mov     byte ptr [edx+0Bh], 2

loc_488090:
mov     eax, 625h
call    sub_47E888
test    eax, eax
jz      short loc_4880A2
mov     byte ptr [edx+0Bh], 3

loc_4880A2:
mov     byte ptr [edx+4], 1

loc_4880A6:
mov     byte ptr [edx+5], 0

loc_4880AA:
pop     edx
retn
sub_488013 endp




sub_4880AC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
test    al, al
jbe     short loc_4880C0
cmp     al, 1
jz      short loc_4880D8
pop     edx
pop     ecx
pop     ebx
retn

loc_4880C0:
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:dword_521460[eax*4]
call    sub_4D8E42
inc     byte ptr [ecx+5]
pop     edx
pop     ecx
pop     ebx
retn

loc_4880D8:
call    sub_4D8ECC
test    eax, eax
jz      short loc_48813F
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_521438[eax*4]
mov     ds:dword_77E6B4, eax
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_52144C[eax*4]
mov     [ecx+0A4h], eax
mov     dword ptr [ecx+0Ch], 0
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
xor     dh, dh
mov     byte ptr ds:dword_5F836C+1, dh
mov     [ecx+0Ah], dh
call    sub_49DBD1
call    sub_49DECF
inc     byte ptr [ecx+4]
mov     [ecx+5], dh

loc_48813F:
pop     edx
pop     ecx
pop     ebx
retn
sub_4880AC endp




sub_488143 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_488154
or      byte ptr [edx+0Ah], 1

loc_488154:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_488167
mov     bh, [edx+0Ah]
test    bh, 1
jz      short loc_48816E
test    bh, 80h
jnz     short loc_48816E

loc_488167:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_48816E:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ebx
retn
sub_488143 endp




sub_48817B proc near
push    edx
mov     edx, eax
call    sub_4D8EB1
call    sub_4E1D8A
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 621h
call    sub_47EA91
mov     byte ptr [edx], 0
pop     edx
retn
sub_48817B endp




sub_4881AD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 80h
mov     eax, 1Ah
call    sub_4DC979
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_521438[eax*4]
mov     ds:dword_77E6B4, eax
xor     eax, eax
mov     al, [ecx+0Bh]
mov     eax, ds:off_52144C[eax*4]
mov     [ecx+0A4h], eax
mov     dword ptr [ecx+0Ch], 0
and     ds:byte_5F8364, 0FDh
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
or      ds:byte_5F8421, 10h
mov     word ptr ds:dword_5F889A+2, 200h
mov     word ptr ds:dword_5F889E, 0FFFFh
xor     esi, esi
mov     word ptr ds:dword_5F889E+2, si
mov     ds:dword_5F888C, 2000000h
mov     ds:dword_5F8890, 0FFFF0000h
xor     esi, esi
mov     ds:dword_5F8894, esi
xor     edi, edi
mov     word ptr ds:dword_5F88A4, di
mov     word ptr ds:dword_5F88A4+2, 800h
xor     edx, edx
mov     ds:word_5F88A8, dx
xor     bh, bh
mov     ds:byte_5F88AC, bh
mov     eax, offset unk_521018
call    sub_49DB4D
mov     byte ptr [ecx+0Ah], 80h
mov     ebx, 1
xor     edx, edx
mov     eax, 3Bh ; ';'
call    sub_4DBCF3
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0
call    sub_49DBD1
call    sub_49DECF
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4881AD endp




sub_4882A4 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_47EBCB
test    eax, eax
jz      short loc_4882B5
or      byte ptr [edx+0Ah], 1

loc_4882B5:
cmp     byte ptr [edx+8], 0FFh
jz      short loc_4882D3
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
mov     cl, [edx+0Ah]
test    cl, 1
jz      short loc_4882DA
test    cl, 80h
jnz     short loc_4882DA

loc_4882D3:
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_4882DA:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_4882A4 endp




sub_4882E7 proc near
push    ecx
push    edx
mov     ecx, eax
mov     edx, [eax+24h]
call    sub_4D8EB1
call    sub_4E1D8A
mov     ah, 1
mov     byte ptr ds:dword_77E954, ah
test    [ecx+0Ah], ah
jz      short loc_48834F
or      ds:byte_5F8364, 2
mov     word ptr [edx+14h], 200h
mov     word ptr [edx+16h], 0FB50h
mov     word ptr [edx+18h], 800h
mov     word ptr [edx+56h], 0
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
call    sub_42A66D
jmp     short loc_488354

loc_48834F:
call    sub_42AC90

loc_488354:
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     eax, 621h
call    sub_47EA91
mov     eax, edx
call    sub_41D22F
mov     eax, edx
call    sub_4DE336
mov     byte ptr [ecx], 0
pop     edx
pop     ecx
retn
sub_4882E7 endp




sub_48837C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+6]
cmp     al, 1
jb      short loc_488392
jbe     short loc_4883B4
cmp     al, 2
jz      short loc_4883CF
pop     edx
pop     ecx
pop     ebx
retn

loc_488392:
test    al, al
jnz     short loc_4883E1
cmp     ds:byte_77EAB8, 0
jnz     short loc_4883E1
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Ah
call    sub_4D89E4

loc_4883AD:
inc     byte ptr [ecx+6]
pop     edx
pop     ecx
pop     ebx
retn

loc_4883B4:
call    sub_42C353
test    eax, eax
jnz     short loc_4883E1
cmp     dword ptr [ecx+10h], 64h ; 'd'
jle     short loc_4883E1
mov     eax, 240013h
call    sub_4D8E42
jmp     short loc_4883AD

loc_4883CF:
call    sub_4D8ECC
test    eax, eax
jz      short loc_4883E1
mov     byte ptr [ecx+6], 0
call    sub_49DF64

loc_4883E1:
pop     edx
pop     ecx
pop     ebx
retn
sub_48837C endp




sub_4883E5 proc near
cmp     dword ptr [eax+10h], 2
jnz     short locret_4883EF
and     byte ptr [eax+0Ah], 7Fh

locret_4883EF:
retn
sub_4883E5 endp




sub_4883F0 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488436
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 0F920h
mov     word ptr [eax+16h], 0F9C0h
mov     word ptr [eax+18h], 20D0h
mov     word ptr [eax+56h], 0F80h
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

loc_488436:
pop     edx
retn
sub_4883F0 endp




sub_488438 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488485
or      ds:byte_5F8364, 2
mov     eax, [eax+24h]
mov     word ptr [eax+14h], 200h
mov     word ptr [eax+16h], 0F8F8h
mov     word ptr [eax+18h], 800h
mov     word ptr [eax+56h], 0
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

loc_488485:
pop     edx
retn
sub_488438 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_67]



sub_488488 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488496
mov     edx, [eax+24h]
mov     byte ptr [edx+8], 2

loc_488496:
cmp     dword ptr [eax+10h], 59h ; 'Y'
jnz     short loc_4884A3
mov     eax, [eax+24h]
mov     byte ptr [eax+8], 1

loc_4884A3:
pop     edx
retn
sub_488488 endp




sub_4884A5 proc near
push    edx
cmp     dword ptr [eax+10h], 0Fh
jnz     short loc_4884B3
mov     edx, [eax+2Ch]
mov     byte ptr [edx+8], 2

loc_4884B3:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4884C0
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 5

loc_4884C0:
cmp     dword ptr [eax+10h], 37h ; '7'
jnz     short loc_4884CD
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 3

loc_4884CD:
cmp     dword ptr [eax+10h], 3Bh ; ';'
jnz     short loc_4884E1
mov     edx, [eax+2Ch]
mov     byte ptr [edx+8], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+8], 4

loc_4884E1:
pop     edx
retn
sub_4884A5 endp




sub_4884E3 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4884FA
mov     eax, [eax+24h]
mov     byte ptr [eax+8], 4
mov     eax, [edx+28h]
mov     byte ptr [eax+8], 2

loc_4884FA:
cmp     dword ptr [edx+10h], 3Bh ; ';'
jnz     short loc_48850A
mov     eax, 0Ah
call    sub_49E0D7

loc_48850A:
cmp     dword ptr [edx+10h], 59h ; 'Y'
jnz     short loc_488517
mov     edx, [edx+24h]
mov     byte ptr [edx+8], 1

loc_488517:
pop     edx
retn
sub_4884E3 endp




sub_488519 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_5214B0
mov     dword ptr [ecx+0A4h], offset unk_52152C
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 0
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
pop     edx
pop     ecx
pop     ebx
retn
sub_488519 endp




sub_488565 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_488575
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_488575:
pop     edx
retn
sub_488565 endp

jpt_4885A7 dd offset loc_4885AE ; jump table for switch statement
dd offset loc_4885BC
dd offset loc_488603
dd offset loc_488627
dd offset loc_48864F
dd offset loc_4886A8
dd offset loc_4886EE



sub_488593 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_4885A7      ; jumptable 004885A7 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4885A7[edx*4] ; switch jump

loc_4885AE:             ; jumptable 004885A7 case 0
mov     eax, ecx
call    sub_488519

loc_4885B5:
inc     byte ptr [ecx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_4885BC:             ; jumptable 004885A7 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4885A7      ; jumptable 004885A7 default case
mov     byte ptr ds:dword_5F836C, 3
xor     bh, bh
mov     byte ptr ds:dword_5F836C+1, bh
mov     ds:byte_5F88AC, bh
mov     eax, offset unk_521474
call    sub_49DB4D
mov     eax, offset unk_52149C
call    sub_49DB4D
mov     eax, 24000Bh
call    sub_4D8E42
jmp     short loc_4885B5

loc_488603:             ; jumptable 004885A7 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_4885A7      ; jumptable 004885A7 default case
or      byte ptr [ecx+0Ah], 1
call    sub_436868
inc     byte ptr [ecx+4]
mov     dword ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_488627:             ; jumptable 004885A7 case 3
mov     edx, [ecx+0Ch]
inc     edx
mov     [ecx+0Ch], edx
cmp     edx, 20h ; ' '
jnz     def_4885A7      ; jumptable 004885A7 default case
inc     byte ptr [ecx+4]
xor     ds:byte_5F8364, 2
mov     eax, offset unk_521488
call    sub_49DB4D
pop     edx
pop     ecx
pop     ebx
retn

loc_48864F:             ; jumptable 004885A7 case 4
cmp     byte ptr [ecx+8], 0FFh
jnz     short loc_48865E
inc     al
mov     [ecx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_48865E:
call    sub_47EBCB
test    eax, eax
jz      short loc_488693
mov     dh, [ecx+0Ah]
cmp     dh, 1
jnz     short loc_488693
cmp     ds:word_6E23D6, 0
jnz     short loc_488693
cmp     ds:byte_77EAB8, 0
jnz     short loc_488693
mov     eax, 0Ah
call    sub_49E0D7
add     [ecx+4], dh
pop     edx
pop     ecx
pop     ebx
retn

loc_488693:
mov     eax, ecx
call    sub_488565
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn

loc_4886A8:             ; jumptable 004885A7 case 5
cmp     ds:word_6E23D6, 0
jnz     def_4885A7      ; jumptable 004885A7 default case
cmp     ds:byte_77EAB8, 0
jnz     def_4885A7      ; jumptable 004885A7 default case
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
inc     byte ptr [ecx+4]
mov     eax, 629h
call    sub_47E888
test    eax, eax
jnz     short def_4885A7 ; jumptable 004885A7 default case
mov     eax, 12h
call    sub_47EEAE
pop     edx
pop     ecx
pop     ebx
retn

loc_4886EE:             ; jumptable 004885A7 case 6
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4885A7 ; jumptable 004885A7 default case
call    sub_4D8EB1
inc     byte ptr ds:dword_5F836C+1
call    sub_42A66D
mov     edx, 80h
mov     eax, 56h ; 'V'
call    sub_4DC979
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 6
mov     ds:byte_77EA5F, 5
xor     al, al
mov     byte ptr ds:dword_77EA5A+3, al
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
and     ds:byte_5F8364, 0FCh
mov     ds:byte_5F83DA, al
mov     [ecx], al

def_4885A7:             ; jumptable 004885A7 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_488593 endp




sub_488752 proc near
push    edx
xor     edx, edx
mov     dl, [eax+4]
call    ds:funcs_488758[edx*4]
pop     edx
retn
sub_488752 endp

align 2
jpt_488787 dd offset loc_48878E ; jump table for switch statement
dd offset loc_4887E9
dd offset loc_4887FF
dd offset loc_48881E



sub_488772 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+5]
cmp     al, 3           ; switch 4 cases
ja      def_488787      ; jumptable 00488787 default case
and     eax, 0FFh
jmp     jpt_488787[eax*4] ; switch jump

loc_48878E:             ; jumptable 00488787 case 0
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Ah], 80h
mov     ds:dword_77E6B4, offset unk_52159C
mov     dword ptr [ecx+0A4h], offset unk_5219DC
mov     eax, offset unk_521560
call    sub_49DB4D
mov     al, ds:byte_521A5C
mov     ds:byte_56F80C, al
mov     ax, ds:word_521A5E
mov     ds:word_56F82C, ax
mov     ax, ds:word_521A60
mov     ds:word_56F82E, ax

loc_4887E4:
inc     byte ptr [ecx+5]
jmp     short def_488787 ; jumptable 00488787 default case

loc_4887E9:             ; jumptable 00488787 case 1
mov     eax, 3
call    sub_49E0D7
mov     eax, 3Dh ; '='
call    sub_42BEB2
jmp     short loc_4887E4

loc_4887FF:             ; jumptable 00488787 case 2
cmp     ds:word_6E23D6, 0
jnz     short def_488787 ; jumptable 00488787 default case
call    sub_42C353
test    eax, eax
jnz     short def_488787 ; jumptable 00488787 default case
mov     eax, 240007h
call    sub_4D8E42
jmp     short loc_4887E4

loc_48881E:             ; jumptable 00488787 case 3
call    sub_4D8ECC
test    eax, eax
jz      short def_488787 ; jumptable 00488787 default case
call    sub_49DFCA
mov     ds:dword_77E6B4, offset unk_5215EC
mov     dword ptr [ecx+0A4h], offset unk_5219EC
and     byte ptr [ecx+0Ah], 1
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_488787:             ; jumptable 00488787 default case
call    sub_47EBCB
test    eax, eax
jz      short loc_488858
or      byte ptr [ecx+0Ah], 1

loc_488858:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
pop     ebx
retn
sub_488772 endp




sub_488866 proc near
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0FFh
jnz     short loc_488877
mov     eax, 14h
jmp     short loc_488896

loc_488877:
mov     ecx, [edx+0A4h]
mov     eax, edx
call    dword ptr [ecx+4]
call    sub_47EBCB
test    eax, eax
jnz     short loc_488891
cmp     byte ptr [edx+0Ah], 1
jnz     short loc_4888A2

loc_488891:
mov     eax, 8

loc_488896:
call    sub_49E0D7
inc     byte ptr [edx+4]
mov     byte ptr [edx+5], 0

loc_4888A2:
call    sub_49DBD1
call    sub_49DECF
pop     edx
pop     ecx
retn
sub_488866 endp




sub_4888AF proc near
push    ecx
push    edx
mov     ecx, eax
cmp     ds:word_6E23D6, 0
jnz     short loc_488910
mov     al, [eax+5]
test    al, al
jbe     short loc_4888CA
cmp     al, 1
jz      short loc_488906
jmp     short loc_488910

loc_4888CA:
call    sub_4D8EB1
mov     edx, 80h
mov     eax, 7Eh ; '~'
call    sub_4DC979
call    sub_4E1D8A
mov     dl, 1
mov     byte ptr ds:dword_77E954, dl
call    sub_42A66D
mov     eax, 2
call    sub_488B78
mov     byte ptr ds:dword_77EA5A+2, 2
add     [ecx+5], dl
jmp     short loc_488910

loc_488906:
or      ds:byte_56F80C, 3
mov     byte ptr [ecx], 0

loc_488910:
cmp     byte ptr [ecx+0Ah], 0
jz      short loc_488920
call    sub_49DBD1
call    sub_49DECF

loc_488920:
pop     edx
pop     ecx

locret_488922:
retn
sub_4888AF endp




sub_488923 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488950
xor     ah, ah
mov     ds:byte_56F80C, ah
mov     eax, [edx+24h]
call    sub_4DE2F6
mov     eax, offset unk_521574
call    sub_49DB4D
mov     eax, 3
call    sub_488B78

loc_488950:
cmp     dword ptr [edx+10h], 1
jnz     short loc_488961
mov     edx, [edx+28h]
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_488961:
pop     edx
retn
sub_488923 endp




sub_488963 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_488979
mov     byte ptr [eax+5], 0
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_488979:
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_488986
mov     edx, [eax+28h]
mov     byte ptr [edx+0Dh], 0

loc_488986:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_48899B
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0

loc_48899B:
cmp     dword ptr [eax+10h], 1C2h
jnz     short loc_4889B3
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_4889B3:
pop     edx
retn
sub_488963 endp




sub_4889B5 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4889C7
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_4889C7:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_4889D4
mov     eax, [eax+28h]
mov     byte ptr [eax+0Dh], 0

loc_4889D4:
pop     edx

locret_4889D5:
retn
sub_4889B5 endp




sub_4889D6 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4889EC
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 6
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Dh], 0

loc_4889EC:
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_488A01
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 0

loc_488A01:
pop     edx
retn
sub_4889D6 endp




sub_488A03 proc near
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_488A61
mov     eax, offset unk_521588
call    sub_49DB4D
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     edx, 1

