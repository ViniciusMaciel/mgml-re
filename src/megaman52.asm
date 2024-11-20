loc_47F14D:
inc     byte ptr [ecx+5]
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F155:             ; jumptable 0047F039 cases 3,11
mov     eax, ecx
call    sub_47F364
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F161:             ; jumptable 0047F039 cases 4,12
mov     eax, 7B1h
call    sub_47EA91
jmp     short loc_47F14D

loc_47F16D:             ; jumptable 0047F039 case 5
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     def_47F039      ; jumptable 0047F039 default case
mov     dl, 1
mov     byte ptr ds:dword_77EA5A+2, dl
mov     ds:byte_77EA61, 0Ah
mov     ds:byte_77EA60, 2
add     [ecx+5], dl
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F19D:             ; jumptable 0047F039 case 6
cmp     byte ptr ds:dword_77EA5A+2, 2
jnz     def_47F039      ; jumptable 0047F039 default case
inc     al
mov     [ecx+5], al
jmp     def_47F039      ; jumptable 0047F039 default case

loc_47F1B4:             ; jumptable 0047F039 case 7
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     def_47F039      ; jumptable 0047F039 default case
mov     byte ptr ds:dword_77EA5A+2, 3
jmp     loc_47F14D

loc_47F1D2:             ; jumptable 0047F039 case 8
cmp     byte ptr ds:dword_77EA5A+2, 0
jnz     def_47F039      ; jumptable 0047F039 default case
mov     eax, ds:dword_77EA56+2
sar     eax, 10h
sar     eax, 0Ah
mov     eax, ds:off_519AF8[eax*4]
mov     ds:dword_77E6B4, eax
mov     ebx, ds:dword_77EA52
sar     ebx, 10h
mov     edx, ds:dword_77EA4E+2
sar     edx, 10h
mov     eax, ds:dword_77EA4E
sar     eax, 10h
call    sub_49D881
mov     byte ptr ds:dword_5F836C, 3
mov     byte ptr ds:dword_5F836C+1, 1
mov     eax, ds:dword_77EA56+2
sar     eax, 10h
call    sub_4EF008
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA4E
sar     edx, 10h
add     eax, edx
mov     word ptr ds:dword_5F889A+2, ax
mov     ax, word ptr ds:dword_77EA52
dec     eax
mov     word ptr ds:dword_5F889E, ax
mov     eax, ds:dword_77EA56+2
sar     eax, 10h
call    sub_4EF003
shl     eax, 6
sar     eax, 0Ch
mov     edx, ds:dword_77EA52
sar     edx, 10h
add     eax, edx
mov     word ptr ds:dword_5F889E+2, ax
mov     eax, ds:dword_5F889A
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F888C, eax
mov     eax, ds:dword_5F889A+2
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8890, eax
mov     eax, ds:dword_5F889E
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_5F8894, eax
xor     edx, edx
mov     word ptr ds:dword_5F88A4, dx
mov     ax, word ptr ds:dword_77EA5A
mov     word ptr ds:dword_5F88A4+2, ax
mov     ds:word_5F88A8, dx
mov     ds:byte_5F88AC, 30h ; '0'
jmp     loc_47F14D

loc_47F2D0:             ; jumptable 0047F039 case 10
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     short def_47F039 ; jumptable 0047F039 default case
inc     byte ptr ds:dword_5F836C+1
jmp     loc_47F14D

loc_47F2E9:             ; jumptable 0047F039 case 13
mov     eax, 7B2h
call    sub_47E888
test    eax, eax
jnz     short def_47F039 ; jumptable 0047F039 default case
mov     eax, 7B0h
call    sub_47EA91
mov     eax, 7B3h
call    sub_47E8B8
inc     byte ptr [ecx+4]
mov     byte ptr [ecx+5], 0

def_47F039:             ; jumptable 0047F039 default case
call    sub_49DBD1
call    sub_49DECF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47F024 endp




sub_47F321 proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4B565A
xor     ecx, ecx
mov     ds:dword_5F836C, ecx
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, 7B3h
call    sub_47EA91
mov     byte ptr [edx], 0
pop     edx
pop     ecx
retn
sub_47F321 endp

align 4
jpt_47F388 dd offset loc_47F38F ; jump table for switch statement
dd offset loc_47F3AB
dd offset loc_47F3EC
dd offset loc_47F3F6



sub_47F364 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, offset byte_5F8364
xor     ebx, ebx
mov     ds:word_57096A, bx
mov     cl, [eax+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_47F388      ; jumptable 0047F388 default case
and     ecx, 0FFh
jmp     jpt_47F388[ecx*4] ; switch jump

loc_47F38F:             ; jumptable 0047F388 case 0
mov     ecx, ds:dword_77E7D0+1
sar     ecx, 18h
mov     cl, ds:byte_519B18[ecx]
mov     [eax+0Bh], cl
or      ds:byte_5F8421, 20h
inc     byte ptr [eax+0Ah]

loc_47F3AB:             ; jumptable 0047F388 case 1
mov     cx, [edx+124h]
mov     ds:word_57096A, cx
cmp     dword ptr [eax+10h], 24h ; '$'
jle     short def_47F388 ; jumptable 0047F388 default case
inc     byte ptr [eax+5]
inc     byte ptr [eax+0Ah]
mov     al, [edx+0BDh]
and     al, 9Fh
mov     [edx+0BDh], al
mov     ah, al
or      ah, 40h
mov     [edx+0BDh], ah
xor     esi, esi
mov     ds:word_57096A, si
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_47F3EC:             ; jumptable 0047F388 case 2
or      ds:byte_5F8421, 20h
inc     byte ptr [eax+0Ah]

loc_47F3F6:             ; jumptable 0047F388 case 3
mov     cx, [edx+124h]
mov     ds:word_57096A, cx
xor     ecx, ecx
mov     cl, [eax+0Bh]
cmp     ecx, [eax+10h]
jge     short def_47F388 ; jumptable 0047F388 default case
inc     byte ptr [eax+5]
inc     byte ptr [eax+0Ah]
mov     al, [edx+0BDh]
and     al, 9Fh
mov     [edx+0BDh], al
mov     ah, al
or      ah, 40h
mov     [edx+0BDh], ah
xor     ecx, ecx
mov     ds:word_57096A, cx

def_47F388:             ; jumptable 0047F388 default case
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_47F43A:
retn
sub_47F364 endp




sub_47F43B proc near

var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     [esp+0Ch+var_C], al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     al, [esp+0Ch+var_C]
mov     [esi+4], al
mov     [esi+5], dl
mov     [esi+6], bl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
xor     eax, eax
mov     ax, cx
shl     eax, 5
or      al, 0Fh
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
add     esp, 4
pop     edi
pop     esi
retn
sub_47F43B endp




sub_47F4CF proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F50E
mov     ds:byte_55A2DD, 1
mov     dh, 40h ; '@'
mov     ds:byte_55A2DC, dh
mov     ds:byte_55A2DE, dh
mov     ds:byte_55A2E0, dh
mov     ds:byte_55A2DF, 2
mov     edx, [eax+24h]
mov     word ptr [edx+15Eh], 4210h
mov     edx, [eax+30h]
mov     dword ptr [edx+50h], offset unk_808080

loc_47F50E:
cmp     dword ptr [eax+10h], 1A9h
jnz     short loc_47F525
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 6
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_47F525:
cmp     dword ptr [eax+10h], 1D1h
jnz     short loc_47F53C
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 0

loc_47F53C:
pop     edx
retn
sub_47F4CF endp




sub_47F53E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F58F
xor     dl, dl
mov     ds:byte_55A2DD, dl
mov     edx, [eax+24h]
mov     dword ptr [edx+1Ch], 0
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 800h
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 0
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+30h]
mov     word ptr [edx+48h], 0
mov     eax, [eax+30h]
mov     dword ptr [eax+50h], offset unk_808080

loc_47F58F:
pop     edx
retn
sub_47F53E endp




sub_47F591 proc near
push    edx
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_47F5A6
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F5A6:
pop     edx

locret_47F5A7:
retn
sub_47F591 endp




sub_47F5A8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F5BD
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F5BD:
pop     edx
retn
sub_47F5A8 endp




sub_47F5BF proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+24h]
mov     ecx, [edx+10h]
test    ecx, ecx
jnz     short loc_47F5E6
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     [eax+1Ch], ecx
mov     dword ptr [eax+20h], 0FEF00000h
mov     dword ptr [eax+24h], 0D590000h

loc_47F5E6:
cmp     dword ptr [edx+10h], 14h
jnz     short loc_47F5F6
mov     byte ptr [eax+0Ah], 0
mov     dl, [eax+0Ah]
mov     [eax+9], dl

loc_47F5F6:
pop     edx
pop     ecx
retn
sub_47F5BF endp




sub_47F5F9 proc near
push    edx
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_47F60E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 3
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_47F60E:
cmp     dword ptr [eax+10h], 60h ; '`'
jnz     short loc_47F642
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 1
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     word ptr [eax+1Ch], 10h
mov     word ptr [eax+1Eh], 0FE6Ch
mov     word ptr [eax+20h], 0DF0h

loc_47F642:
pop     edx
retn
sub_47F5F9 endp




sub_47F644 proc near
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F656
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_47F656:
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_47F663
mov     ds:byte_56FA77, 1

loc_47F663:
cmp     dword ptr [eax+10h], 0D2h
jnz     short loc_47F674
mov     byte ptr [edx+9], 5
mov     byte ptr [edx+0Ah], 0

loc_47F674:
cmp     dword ptr [eax+10h], 136h
jnz     short loc_47F685
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_47F685:
cmp     dword ptr [eax+10h], 172h
jnz     short loc_47F695
mov     eax, [eax+2Ch]
mov     byte ptr [eax+9], 1

loc_47F695:
pop     edx
retn
sub_47F644 endp




sub_47F697 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 32h ; '2'
jnz     short loc_47F6B0
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
add     word ptr [eax+22h], 50h ; 'P'

loc_47F6B0:
pop     edx
retn
sub_47F697 endp




sub_47F6B2 proc near
push    edx
mov     edx, [eax+2Ch]
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_47F6C4
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_47F6C4:
pop     edx
retn
sub_47F6B2 endp




sub_47F6C6 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F717
call    sub_4DE1BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+5], 0
call    sub_4DE1BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 3
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+5], 0
call    sub_4DE1BE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 4
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+5], 0

loc_47F717:
cmp     dword ptr [edx+10h], 1Ah
jnz     short loc_47F72B
mov     eax, [edx+44h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+44h]
mov     byte ptr [eax+0Ah], 0

loc_47F72B:
cmp     dword ptr [edx+10h], 21h ; '!'
jnz     short loc_47F73F
mov     eax, [edx+48h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+48h]
mov     byte ptr [eax+0Ah], 0

loc_47F73F:
cmp     dword ptr [edx+10h], 28h ; '('
jnz     short loc_47F753
mov     eax, [edx+40h]
mov     byte ptr [eax+9], 1
mov     eax, [edx+40h]
mov     byte ptr [eax+0Ah], 0

loc_47F753:
cmp     dword ptr [edx+10h], 31h ; '1'
jnz     short loc_47F76E
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 9
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
mov     ds:byte_55A2E1, 1

loc_47F76E:
pop     edx
retn
sub_47F6C6 endp




sub_47F770 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F78B
mov     edx, [eax+2Ch]
and     byte ptr [edx], 0FDh
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Ah
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F78B:
pop     edx
retn
sub_47F770 endp




sub_47F78D proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F7B3
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     byte ptr [edx+0Ah], 0
mov     dword ptr [edx+1Ch], 0
mov     dword ptr [edx+20h], 0
mov     word ptr [edx+56h], 0

loc_47F7B3:
cmp     dword ptr [eax+10h], 1
jnz     short loc_47F7C7
mov     edx, [eax+34h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+34h]
mov     byte ptr [edx+0Ah], 0

loc_47F7C7:
cmp     dword ptr [eax+10h], 0Dh
jnz     short loc_47F7DB
mov     edx, [eax+38h]
mov     byte ptr [edx+9], 1
mov     edx, [eax+38h]
mov     byte ptr [edx+0Ah], 0

loc_47F7DB:
cmp     dword ptr [eax+10h], 19h
jnz     short loc_47F7EF
mov     edx, [eax+3Ch]
mov     byte ptr [edx+9], 1
mov     edx, [eax+3Ch]
mov     byte ptr [edx+0Ah], 0

loc_47F7EF:
cmp     dword ptr [eax+10h], 44h ; 'D'
jnz     short loc_47F803
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 3
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 0

loc_47F803:
pop     edx
retn
sub_47F78D endp

push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F81A
mov     edx, [eax+30h]
mov     byte ptr [edx+9], 3
mov     eax, [eax+30h]
mov     byte ptr [eax+0Ah], 0

loc_47F81A:
pop     edx
retn



sub_47F81C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47F833
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 0Ch
mov     byte ptr [eax+0Ah], 0
add     word ptr [eax+26h], 0C8h

locret_47F833:
retn
sub_47F81C endp




sub_47F834 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 6
jnz     short loc_47F844
xor     dl, dl
mov     ds:byte_55A2E1, dl

loc_47F844:
cmp     dword ptr [eax+10h], 1Eh
jg      loc_47F8F5
mov     ecx, [eax+24h]
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_47F8A3
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+14h]
sub     eax, 1Fh
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [ecx+16h]
sub     eax, 0Fh
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+18h]
sub     eax, 1Fh
mov     [edx+20h], ax

loc_47F8A3:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_47F8F5
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+14h]
sub     eax, 1Fh
mov     [edx+1Ch], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [ecx+16h]
sub     eax, 0Fh
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 3Fh
add     ax, [ecx+18h]
sub     eax, 1Fh
mov     [edx+20h], ax

loc_47F8F5:
pop     edx
pop     ecx
retn
sub_47F834 endp




sub_47F8F8 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F90D
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F90D:
pop     edx
retn
sub_47F8F8 endp




sub_47F90F proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47F924
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47F924:
pop     edx
retn
sub_47F90F endp




sub_47F926 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_519C78
xor     ecx, ecx
jmp     short loc_47F94B

loc_47F945:
inc     ecx
cmp     ecx, 10h
jge     short loc_47F97C

loc_47F94B:
mov     eax, ecx
shl     eax, 2
add     eax, ecx
shl     eax, 2
add     eax, offset unk_519B38
call    sub_49DB4D
mov     ebx, eax
test    ecx, ecx
jz      short loc_47F945
lea     edx, [ecx-1]
add     edx, offset unk_51A0A4
call    sub_4DD0F8
mov     dword ptr [ebx+50h], offset unk_808080
jmp     short loc_47F945

loc_47F97C:
mov     eax, [esi+28h]
mov     dword ptr [eax+50h], offset unk_808080
mov     eax, [esi+60h]
mov     dword ptr [eax+50h], 2808080h
mov     eax, [esi+30h]
mov     dword ptr [eax+50h], 0
call    sub_4DE13B
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+0Ch], 2
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     word ptr [eax+1Ch], 0
mov     word ptr [eax+1Eh], 0FE6Ch
mov     word ptr [eax+20h], 0E00h
mov     [esi+64h], eax
xor     ah, ah
mov     ds:byte_55A2DD, ah
mov     dword ptr [esi+0A4h], offset unk_51A014
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47F926 endp




sub_47F9E2 proc near
push    edx
mov     dl, ds:byte_55A2E1
cmp     dl, 1
jnz     short loc_47FA0B
test    byte ptr ds:word_77EAB6, 2
jz      short loc_47FA01
add     ds:word_77E60A, 2
jmp     short loc_47FA0B

loc_47FA01:
sub     dword ptr ds:unk_77E608, 20000h

loc_47FA0B:
cmp     byte ptr [eax+8], 0FFh
jz      short loc_47FA1A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_47FA1A:
pop     edx
retn
sub_47F9E2 endp

db 8Dh, 40h, 0
jpt_47FA53 dd offset loc_47FA5A ; jump table for switch statement
dd offset loc_47FA71
dd offset loc_47FA91
dd offset loc_47FAA2
dd offset loc_47FABD
dd offset loc_47FADB
dd offset loc_47FAE4
dd offset loc_47FB33



sub_47FA3F proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     al, [eax+4]
cmp     al, 7           ; switch 8 cases
ja      def_47FA53      ; jumptable 0047FA53 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_47FA53[ecx*4] ; switch jump

loc_47FA5A:             ; jumptable 0047FA53 case 0
cmp     ds:word_6E23D6, 0
jnz     def_47FA53      ; jumptable 0047FA53 default case
inc     al
mov     [edx+4], al
pop     edx
pop     ecx
pop     ebx
retn

loc_47FA71:             ; jumptable 0047FA53 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47FA53      ; jumptable 0047FA53 default case
and     ds:byte_5F8364, 0FCh

loc_47FA8A:
inc     byte ptr [edx+4]
pop     edx
pop     ecx
pop     ebx
retn

loc_47FA91:             ; jumptable 0047FA53 case 2
call    sub_4D8E21
mov     eax, 240003h
call    sub_4D8E42
jmp     short loc_47FA8A

loc_47FAA2:             ; jumptable 0047FA53 case 3
call    sub_4D8ECC
test    eax, eax
jz      def_47FA53      ; jumptable 0047FA53 default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 37h ; '7'
pop     edx
pop     ecx
pop     ebx
retn

loc_47FABD:             ; jumptable 0047FA53 case 4
mov     ebx, [edx+0Ch]
dec     ebx
mov     [edx+0Ch], ebx
jnz     def_47FA53      ; jumptable 0047FA53 default case
inc     byte ptr [edx+4]
mov     eax, 2
call    sub_49E0D7
pop     edx
pop     ecx
pop     ebx
retn

loc_47FADB:             ; jumptable 0047FA53 case 5
mov     eax, edx
call    sub_47F926
jmp     short loc_47FA8A

loc_47FAE4:             ; jumptable 0047FA53 case 6
mov     eax, edx
call    sub_47F9E2
call    sub_49DBD1
call    sub_49DECF
cmp     ds:word_6E23D6, 0
jnz     short loc_47FB21
cmp     byte ptr [edx+9], 13h
jnz     short loc_47FB0B
cmp     dword ptr [edx+10h], 2Ch ; ','
jz      short loc_47FB14

loc_47FB0B:
call    sub_47EBCB
test    eax, eax
jz      short loc_47FB21

loc_47FB14:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_47FB21:
cmp     ds:byte_55A2DD, 0
jz      def_47FA53      ; jumptable 0047FA53 default case
jmp     loc_47FBC6

loc_47FB33:             ; jumptable 0047FA53 case 7
mov     eax, edx
call    sub_47F9E2
call    sub_49DBD1
call    sub_49DECF
cmp     ds:word_6E23D6, 0
jnz     short loc_47FBBD
mov     byte ptr ds:dword_77EA5A+2, 2
xor     bl, bl
mov     ds:byte_77EA5E, bl
mov     bh, 1
mov     ds:byte_77EA5F, bh
mov     word ptr ds:dword_77EA4E+2, 0B06h
mov     word ptr ds:dword_77EA52, 0FFFFh
mov     word ptr ds:dword_77EA52+2, 0ED1Fh
xor     eax, eax
mov     word ptr ds:dword_77EA5A, ax
mov     byte ptr ds:dword_77EA5A+3, bl
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, 2
mov     eax, 604h
call    sub_47EA91
or      ds:byte_5F8364, bh
mov     eax, offset byte_5F8364
call    sub_4B565A
mov     [edx], bl
call    sub_4D8EB1

loc_47FBBD:
cmp     ds:byte_55A2DD, 0
jz      short def_47FA53 ; jumptable 0047FA53 default case

loc_47FBC6:
xor     ecx, ecx
mov     cl, ds:byte_55A2DF
xor     ebx, ebx
mov     bl, ds:byte_55A2DC
xor     edx, edx
mov     dl, ds:byte_55A2DE
xor     eax, eax
mov     al, ds:byte_55A2E0
call    sub_47F43B

def_47FA53:             ; jumptable 0047FA53 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_47FA3F endp




sub_47FBEE proc near
push    ebx
push    ecx
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FC03
mov     word ptr [edx+15Eh], 2108h

loc_47FC03:
cmp     dword ptr [eax+10h], 14Ah
jnz     short loc_47FC1C
mov     ecx, [eax+30h]
mov     byte ptr [ecx+0Ch], 1
mov     bl, [ecx+0Ch]
mov     ecx, [eax+2Ch]
mov     [ecx+0Ch], bl

loc_47FC1C:
cmp     dword ptr [eax+10h], 1AEh
jnz     short loc_47FC2D
mov     byte ptr [edx+9], 1
mov     byte ptr [edx+0Ah], 0

loc_47FC2D:
cmp     dword ptr [eax+10h], 1B8h
jnz     short loc_47FC3A
mov     byte ptr [edx+0Bh], 1

loc_47FC3A:
cmp     dword ptr [eax+10h], 1EFh
jnz     short loc_47FC53
mov     ecx, [eax+30h]
mov     byte ptr [ecx+0Ch], 2
mov     bl, [ecx+0Ch]
mov     ecx, [eax+2Ch]
mov     [ecx+0Ch], bl

loc_47FC53:
cmp     dword ptr [eax+10h], 219h
jnz     short loc_47FC64
mov     byte ptr [edx+9], 2
mov     byte ptr [edx+0Ah], 0

loc_47FC64:
pop     edx
pop     ecx
pop     ebx
retn
sub_47FBEE endp




sub_47FC68 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FC83
mov     edx, [eax+28h]
or      byte ptr [edx], 2
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 3
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0

loc_47FC83:
cmp     dword ptr [eax+10h], 82h
jnz     short loc_47FC9C
mov     edx, [eax+30h]
mov     byte ptr [edx+0Ch], 1
mov     dl, [edx+0Ch]
mov     eax, [eax+2Ch]
mov     [eax+0Ch], dl

loc_47FC9C:
pop     edx
retn
sub_47FC68 endp




sub_47FC9E proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FCB3
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 4
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FCB3:
pop     edx
retn
sub_47FC9E endp




sub_47FCB5 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FCCA
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 5
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FCCA:
pop     edx
retn
sub_47FCB5 endp




sub_47FCCC proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47FCF3
mov     eax, [eax+28h]
mov     dword ptr [eax+1Ch], 1F40000h
mov     dword ptr [eax+20h], 0E3FF0000h
mov     dword ptr [eax+24h], 1800000h
mov     word ptr [eax+15Eh], 4210h

locret_47FCF3:
retn
sub_47FCCC endp




sub_47FCF4 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47FD28
call    sub_4DE13B
test    eax, eax
jz      short locret_47FD28
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 1F4h
mov     word ptr [eax+1Eh], 0E2B0h
mov     word ptr [eax+20h], 0ECh

locret_47FD28:
retn
sub_47FCF4 endp




sub_47FD29 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FD3E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 6
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FD3E:
pop     edx
retn
sub_47FD29 endp




sub_47FD40 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FD58
mov     edx, [eax+24h]
mov     word ptr [edx+56h], 800h
mov     byte ptr [edx+9], 7
mov     byte ptr [edx+0Ah], 0

loc_47FD58:
cmp     dword ptr [eax+10h], 2Dh ; '-'
jnz     short loc_47FD69
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0

loc_47FD69:
pop     edx

locret_47FD6A:
retn
sub_47FD40 endp




sub_47FD6B proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FD91
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+24h], 0FC200000h
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_47FD91:
pop     edx

locret_47FD92:
retn
sub_47FD6B endp




sub_47FD93 proc near
push    edx
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_47FDA8
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 9
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_47FDA8:
pop     edx
retn
sub_47FD93 endp




sub_47FDAA proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+28h]
mov     ecx, [edx+10h]
test    ecx, ecx
jnz     short loc_47FDC3
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     [eax+24h], ecx

loc_47FDC3:
cmp     dword ptr [edx+10h], 3Ch ; '<'
jnz     short loc_47FDD1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

loc_47FDD1:
pop     edx
pop     ecx
retn
sub_47FDAA endp




sub_47FDD4 proc near

var_10= word ptr -10h
var_E= word ptr -0Eh
var_C= word ptr -0Ch

push    ebx
push    edx
sub     esp, 8
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FE29
mov     [esp+10h+var_10], 260h
mov     [esp+10h+var_E], 0E290h
mov     [esp+10h+var_C], 0FF10h
mov     ebx, 50h ; 'P'
mov     edx, 250h
mov     eax, esp
call    sub_43AB52
mov     [esp+10h+var_10], 1D0h
mov     [esp+10h+var_E], 0E290h
mov     [esp+10h+var_C], 0FF50h
mov     ebx, 8E0h
mov     edx, 250h
mov     eax, esp
call    sub_43AB52

loc_47FE29:
add     esp, 8
pop     edx
pop     ebx
retn
sub_47FDD4 endp




sub_47FE2F proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 0
jnz     short loc_47FE4A
mov     dword ptr [eax+24h], 0FC380000h
mov     byte ptr [eax+9], 0Ah
mov     byte ptr [eax+0Ah], 0

loc_47FE4A:
pop     edx

locret_47FE4B:
retn
sub_47FE2F endp




sub_47FE4C proc near
push    edx
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_47FE6E
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0Bh
mov     edx, [eax+24h]
mov     byte ptr [edx+0Ah], 0
mov     edx, [eax+34h]
or      byte ptr [edx], 2
mov     eax, [eax+34h]
mov     byte ptr [eax+9], 1

loc_47FE6E:
pop     edx
retn
sub_47FE4C endp




sub_47FE70 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_47FE80
mov     eax, [eax+28h]
mov     dword ptr [eax+24h], 0FE400000h

locret_47FE80:
retn
sub_47FE70 endp




sub_47FE81 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FE96
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ah], 0

loc_47FE96:
pop     edx

locret_47FE97:
retn
sub_47FE81 endp




sub_47FE98 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_47FEB4
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+34h]
mov     byte ptr [eax+0Ah], 2

loc_47FEB4:
pop     edx

locret_47FEB5:
retn
sub_47FE98 endp




sub_47FEB6 proc near
push    ebx
push    edx
push    esi
mov     esi, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51A1E0
xor     edx, edx

loc_47FED2:
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 2
add     eax, offset unk_51A0B4
call    sub_49DB4D
inc     edx
cmp     edx, 0Eh
jl      short loc_47FED2
mov     dword ptr [esi+0A4h], offset unk_51A778
pop     esi
pop     edx
pop     ebx
retn
sub_47FEB6 endp




sub_47FEFA proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_47FF0A
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_47FF0A:
pop     edx
retn
sub_47FEFA endp

db 8Bh, 0C0h
jpt_47FF44 dd offset loc_47FF4B ; jump table for switch statement
dd offset loc_47FF63
dd offset loc_47FF84
dd offset loc_47FF95
dd offset loc_47FFB1
dd offset loc_47FFCA
dd offset loc_47FFD3
dd offset loc_47FFF9



sub_47FF2E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 7           ; switch 8 cases
ja      def_47FF44      ; jumptable 0047FF44 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_47FF44[ecx*4] ; switch jump

loc_47FF4B:             ; jumptable 0047FF44 case 0
cmp     ds:word_6E23D6, 0
jnz     def_47FF44      ; jumptable 0047FF44 default case
inc     al
mov     [edx+4], al
jmp     def_47FF44      ; jumptable 0047FF44 default case

loc_47FF63:             ; jumptable 0047FF44 case 1
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_47FF44      ; jumptable 0047FF44 default case
and     ds:byte_5F8364, 0FCh

loc_47FF7C:
inc     byte ptr [edx+4]
jmp     def_47FF44      ; jumptable 0047FF44 default case

loc_47FF84:             ; jumptable 0047FF44 case 2
call    sub_4D8E21
mov     eax, 240002h
call    sub_4D8E42
jmp     short loc_47FF7C

loc_47FF95:             ; jumptable 0047FF44 case 3
call    sub_4D8ECC
test    eax, eax
jz      def_47FF44      ; jumptable 0047FF44 default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 1Eh
jmp     def_47FF44      ; jumptable 0047FF44 default case

loc_47FFB1:             ; jumptable 0047FF44 case 4
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_47FF44      ; jumptable 0047FF44 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_47FF7C

loc_47FFCA:             ; jumptable 0047FF44 case 5
mov     eax, edx
call    sub_47FEB6
jmp     short loc_47FF7C

loc_47FFD3:             ; jumptable 0047FF44 case 6
cmp     ds:word_6E23D6, 0
jnz     short loc_47FFF9 ; jumptable 0047FF44 case 7
call    sub_47EBCB
test    eax, eax
jnz     short loc_47FFEC
cmp     byte ptr [edx+8], 0FFh
jnz     short loc_47FFF9 ; jumptable 0047FF44 case 7

loc_47FFEC:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_47FFF9:             ; jumptable 0047FF44 case 7
mov     eax, edx
call    sub_47FEFA

loc_480000:
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 7
jnz     short def_47FF44 ; jumptable 0047FF44 default case
cmp     ds:word_6E23D6, 0
jnz     short def_47FF44 ; jumptable 0047FF44 default case
mov     cl, 2
mov     byte ptr ds:dword_77EA5A+2, cl
mov     ds:byte_77EA5E, cl
xor     al, al
mov     ds:byte_77EA5F, al
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     ah, ah
mov     word ptr ds:dword_77EA52+2, ax
xor     ebx, ebx
mov     word ptr ds:dword_77EA5A, bx
mov     byte ptr ds:dword_77EA5A+3, al
mov     bl, 0FFh
mov     ds:byte_77EA61, bl
mov     ds:byte_77EA60, bl
mov     eax, 605h
call    sub_47EA91
mov     byte ptr [edx], 0
call    sub_4D8EB1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_47FF44:             ; jumptable 0047FF44 default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_47FF2E endp




sub_480087 proc near
push    edx
cmp     dword ptr [eax+10h], 0Fh
jnz     short loc_48009C
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 1
mov     eax, [eax+28h]
mov     byte ptr [eax+0Ah], 0

loc_48009C:
pop     edx
retn
sub_480087 endp




sub_48009E proc near

var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     esi, eax
mov     eax, [eax+28h]
mov     di, [eax+14h]
mov     [esp+24h+var_18], edi
mov     di, [eax+16h]
mov     dx, [eax+18h]
mov     [esp+24h+var_1C], edx
cmp     dword ptr [esi+10h], 0
jnz     short loc_4800D0
mov     byte ptr [eax+9], 3
mov     eax, [esi+28h]
mov     byte ptr [eax+0Ah], 0

loc_4800D0:
cmp     dword ptr [esi+10h], 0E6h
jnz     short loc_480149
mov     eax, [esp+24h+var_18]
sub     eax, 40h ; '@'
mov     [esp+24h+var_24], ax
mov     eax, edi
sub     eax, 174h
mov     [esp+24h+var_22], ax
mov     eax, [esp+24h+var_1C]
add     eax, 58h ; 'X'
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2E4, eax
mov     [esp+24h+var_24], 0FEA2h
mov     [esp+24h+var_22], 0FDDAh
mov     [esp+24h+var_20], 0FC7Ch
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2F4, eax

loc_480149:
cmp     dword ptr [esi+10h], 0F0h
jnz     short loc_480195
mov     eax, [esp+24h+var_18]
add     eax, 7Eh ; '~'
mov     [esp+24h+var_24], ax
mov     eax, edi
sub     eax, 180h
mov     [esp+24h+var_22], ax
mov     eax, [esp+24h+var_1C]
add     eax, 28h ; '('
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2E8, eax

loc_480195:
cmp     dword ptr [esi+10h], 0F5h
jnz     short loc_4801E1
mov     eax, [esp+24h+var_18]
add     eax, 38h ; '8'
mov     [esp+24h+var_24], ax
mov     eax, edi
sub     eax, 0E8h
mov     [esp+24h+var_22], ax
mov     eax, [esp+24h+var_1C]
add     eax, 78h ; 'x'
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2EC, eax

loc_4801E1:
cmp     dword ptr [esi+10h], 104h
jnz     short loc_480229
mov     eax, [esp+24h+var_18]
sub     eax, 28h ; '('
mov     [esp+24h+var_24], ax
sub     edi, 128h
mov     [esp+24h+var_22], di
mov     eax, [esp+24h+var_1C]
add     eax, 0C4h
mov     [esp+24h+var_20], ax
push    0
push    0FFFFFFFEh
xor     ecx, ecx
mov     ebx, 1
mov     edx, ebx
lea     eax, [esp+2Ch+var_24]
call    sub_43954B
mov     ds:dword_55A2F0, eax

loc_480229:
add     esp, 10h
sub_48009E endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4803B7

def_4803CE:             ; jumptable 004803CE default case
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx

locret_480231:
retn
; END OF FUNCTION CHUNK FOR sub_4803B7



sub_480232 proc near
cmp     dword ptr [eax+10h], 23h ; '#'
jnz     short locret_480242
mov     eax, [eax+28h]
mov     byte ptr [eax+128h], 0Ch

locret_480242:
retn
sub_480232 endp




sub_480243 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_480258
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 1
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_480258:
pop     edx

locret_480259:
retn
sub_480243 endp




sub_48025A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4802B1
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+9], 0
mov     eax, [edx+24h]
mov     byte ptr [eax+0Ah], 0
mov     eax, ds:dword_55A2E4
call    sub_4DE3EA
mov     eax, ds:dword_55A2E8
call    sub_4DE3EA
mov     eax, ds:dword_55A2EC
call    sub_4DE3EA
mov     eax, ds:dword_55A2F0
call    sub_4DE3EA
mov     eax, ds:dword_55A2F4
call    sub_4DE3EA

loc_4802B1:
cmp     dword ptr [edx+10h], 3Ch ; '<'
jnz     short loc_4802E5
call    sub_4DE13B
test    eax, eax
jz      short loc_4802E5
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 5
mov     byte ptr [eax+0Ch], 5
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 2
mov     word ptr [eax+1Ch], 0FF00h
mov     word ptr [eax+1Eh], 0FD28h
mov     word ptr [eax+20h], 0FC90h

loc_4802E5:
pop     edx
retn
sub_48025A endp




sub_4802E7 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_480315
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 2
mov     edx, [eax+28h]
mov     byte ptr [edx+0Ah], 0
mov     eax, [eax+28h]
mov     byte ptr [eax+128h], 0Dh
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480315:
pop     edx
retn
sub_4802E7 endp




sub_480317 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_48032C
mov     edx, [eax+24h]
mov     byte ptr [edx+9], 0
mov     eax, [eax+24h]
mov     byte ptr [eax+0Ah], 0

loc_48032C:
pop     edx

locret_48032D:
retn
sub_480317 endp




sub_48032E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
and     ds:byte_5F8364, 0FCh
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51A868
mov     ds:byte_6E23E4, 2
mov     eax, offset unk_51A840
call    sub_49DB4D
mov     eax, offset unk_51A854
call    sub_49DB4D
mov     dword ptr [ecx+0A4h], offset unk_51AB70
mov     byte ptr [ecx+0Bh], 0
mov     al, [ecx+0Bh]
mov     [ecx+0Ah], al
mov     dword ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_48032E endp




sub_480389 proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_480399
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_480399:
pop     edx
retn
sub_480389 endp

jpt_4803CE dd offset loc_4803D5 ; jump table for switch statement
dd offset loc_4803F4
dd offset loc_480405
dd offset loc_480421
dd offset loc_480430
dd offset loc_48043A
dd offset loc_480460



sub_4803B7 proc near

; FUNCTION CHUNK AT 0048022C SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_4803CE      ; jumptable 004803CE default case
and     eax, 0FFh
jmp     jpt_4803CE[eax*4] ; switch jump

loc_4803D5:             ; jumptable 004803CE case 0
call    sub_436868
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_4803CE      ; jumptable 004803CE default case

loc_4803EC:
inc     byte ptr [edx+4]
jmp     def_4803CE      ; jumptable 004803CE default case

loc_4803F4:             ; jumptable 004803CE case 1
call    sub_4D8E21
mov     eax, 240001h
call    sub_4D8E42
jmp     short loc_4803EC

loc_480405:             ; jumptable 004803CE case 2
call    sub_4D8ECC
test    eax, eax
jz      def_4803CE      ; jumptable 004803CE default case
inc     byte ptr [edx+4]
mov     dword ptr [edx+0Ch], 1Eh
jmp     def_4803CE      ; jumptable 004803CE default case

loc_480421:             ; jumptable 004803CE case 3
mov     ecx, [edx+0Ch]
dec     ecx
mov     [edx+0Ch], ecx
jnz     def_4803CE      ; jumptable 004803CE default case
jmp     short loc_4803EC

loc_480430:             ; jumptable 004803CE case 4
mov     eax, edx
call    sub_48032E
inc     byte ptr [edx+4]

loc_48043A:             ; jumptable 004803CE case 5
cmp     ds:word_6E23D6, 0
jnz     short loc_480460 ; jumptable 004803CE case 6
cmp     byte ptr [edx+8], 0FFh
jz      short loc_480453
call    sub_47EBCB
test    eax, eax
jz      short loc_480460 ; jumptable 004803CE case 6

loc_480453:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [edx+4]

loc_480460:             ; jumptable 004803CE case 6
mov     eax, edx
call    sub_480389
call    sub_49DBD1
call    sub_49DECF
cmp     byte ptr [edx+4], 6
jnz     def_4803CE      ; jumptable 004803CE default case
cmp     ds:word_6E23D6, 0
jnz     def_4803CE      ; jumptable 004803CE default case
call    sub_4369AD
mov     byte ptr ds:dword_77EA5A+2, 2
xor     al, al
mov     ds:byte_77EA5E, al
mov     ds:byte_77EA5F, 4
xor     esi, esi
mov     word ptr ds:dword_77EA4E+2, si
xor     edi, edi
mov     word ptr ds:dword_77EA52, di
xor     ah, ah
mov     word ptr ds:dword_77EA52+2, ax
xor     ebx, ebx
mov     word ptr ds:dword_77EA5A, bx
xor     bl, bl
mov     byte ptr ds:dword_77EA5A+3, al
mov     bh, 0FFh
mov     ds:byte_77EA61, bh
mov     ds:byte_77EA60, bh
mov     eax, 606h
call    sub_47EA91
mov     [edx], bl
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A
jmp     def_4803CE      ; jumptable 004803CE default case
sub_4803B7 endp




sub_480502 proc near
push    ebx
push    edx
mov     byte ptr ds:dword_77EA5A+2, 0FFh
mov     ds:byte_77EA5E, 2
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
sub_480502 endp




sub_48054E proc near

var_C= byte ptr -0Ch

push    esi
push    edi
sub     esp, 4
mov     [esp+0Ch+var_C], al
mov     esi, ds:dword_77E6DC
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     al, [esp+0Ch+var_C]
mov     [esi+4], al
mov     [esi+5], dl
mov     [esi+6], bl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
xor     eax, eax
mov     ax, cx
shl     eax, 5
or      al, 0Fh
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, edi
call    sub_4F8864
mov     eax, ds:dword_77EA74
add     ds:dword_77E6DC, 38h ; '8'
add     eax, 74h ; 't'
mov     edx, esi
call    sub_4F87A6
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, edi
call    sub_4F87A6
add     esp, 4
pop     edi
pop     esi
retn
sub_48054E endp




sub_4805E2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480626
xor     ah, ah
mov     ds:byte_56F844, ah
xor     bl, bl
mov     ds:byte_56F80C, bl
mov     ds:byte_56F87C, 3
mov     cl, 60h ; '`'
mov     ds:byte_55A304, cl
mov     ds:byte_55A306, cl
mov     ds:byte_55A308, cl
mov     ah, 1
mov     ds:byte_55A305, ah
mov     ds:byte_55A307, ah

loc_480626:
cmp     dword ptr [edx+10h], 0BFh
jnz     short loc_480652
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 0
mov     dword ptr [eax+24h], 6500000h
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_480652:
cmp     dword ptr [edx+10h], 15Dh
jnz     short loc_480678
mov     eax, ds:dword_55A300
mov     byte ptr [eax+0Dh], 0
mov     eax, [edx+30h]
mov     word ptr [eax+15Eh], 1884h
xor     cl, cl
mov     ds:byte_55A305, cl

loc_480678:
pop     edx
pop     ecx
pop     ebx
retn
sub_4805E2 endp




sub_48067C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_4806F1
xor     ah, ah
mov     ds:byte_56F87C, ah
mov     bl, 3
mov     ds:byte_56F80C, bl
mov     ds:byte_56F844, bl
mov     ebx, 0F00000h
mov     ds:dword_56F814, ebx
mov     ds:dword_56F84C, ebx
mov     ds:dword_55A2F8, offset loc_500000
mov     ds:dword_55A2FC, 0FF060000h
mov     eax, [edx+30h]
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+15Eh], 4210h
mov     eax, ds:dword_55A300
mov     byte ptr [eax+0Dh], 1
mov     ds:byte_55A305, 1

loc_4806F1:
cmp     dword ptr [edx+10h], 0B4h
jge     short loc_480768
sub     ds:dword_56F814, 15555h
sub     ds:dword_56F84C, 15555h
mov     esi, ds:dword_55A2FC
add     esi, 15555h
mov     ds:dword_55A2FC, esi
mov     eax, esi
shr     eax, 10h
mov     ebx, eax
mov     eax, ds:dword_55A300
mov     [eax+1Eh], bx
mov     edx, [edx+10h]
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 5
mov     ecx, 0B4h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ds:byte_55A304, al
mov     ds:byte_55A306, al
mov     ds:byte_55A308, al
mov     ch, 1
mov     ds:byte_55A305, ch
mov     ds:byte_55A307, ch

loc_480768:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_48067C endp




sub_48076D proc near
push    ebx
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4807D1
xor     dl, dl
mov     ds:byte_55A305, dl
mov     edx, ds:dword_55A300
mov     byte ptr [edx+0Dh], 0
xor     dh, dh
mov     ds:byte_56F844, dh
mov     ds:byte_56F80C, dh
mov     bh, 3
mov     ds:byte_56F994, bh
mov     ds:word_56F9B6, 80h
mov     ds:byte_56FA3C, bh
mov     ds:word_56FA5E, 100h
mov     ds:byte_56FA6C, 1
mov     eax, [eax+30h]
mov     ecx, 0FFFFFE0Ch
xor     ebx, ebx
mov     edx, 3E8h
call    sub_43A761

loc_4807D1:
pop     edx
pop     ecx
pop     ebx
retn
sub_48076D endp




sub_4807D5 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48084B
mov     eax, 1
call    sub_480502
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     eax, [ecx+2Ch]
or      byte ptr [eax], 2
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+34h]
or      byte ptr [eax], 2
mov     ds:byte_56F80C, 3
xor     ecx, ecx
mov     ds:dword_56F84C, ecx
mov     ds:dword_56F814, ecx
mov     ds:word_56F82C, 0FFB0h
mov     ds:byte_56F844, 3
xor     ah, ah
mov     ds:byte_56F994, ah
xor     dl, dl
mov     ds:byte_56FA3C, dl

loc_48084B:
pop     edx
pop     ecx

locret_48084D:
retn
sub_4807D5 endp




sub_48084E proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_480874
mov     eax, [eax+24h]
mov     dword ptr [eax+24h], 0F7000000h
mov     dword ptr [eax+20h], 0FE8D0000h
mov     dword ptr [eax+24h], 0FFA80000h
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0

locret_480874:
retn
sub_48084E endp




sub_480875 proc near
push    edx
mov     edx, eax
mov     eax, [eax+24h]
cmp     dword ptr [edx+10h], 0
jnz     short loc_4808AF
mov     dword ptr [eax+1Ch], 0F6C10000h
mov     dword ptr [eax+20h], 0FF9F0000h
mov     dword ptr [eax+24h], 0FEA00000h
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
mov     word ptr [eax+56h], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_4808AF:
cmp     dword ptr [edx+10h], 6Ch ; 'l'
jnz     short loc_4808BD
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0

loc_4808BD:
pop     edx
retn
sub_480875 endp




sub_4808BF proc near
push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_4808D1
mov     byte ptr [edx+9], 3
mov     byte ptr [edx+0Ah], 0

loc_4808D1:
mov     edx, [eax+28h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_4808E2
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0

loc_4808E2:
pop     edx
retn
sub_4808BF endp




sub_4808E4 proc near
push    edx
mov     edx, eax
mov     eax, [eax+28h]
cmp     dword ptr [edx+10h], 1Eh
jnz     short loc_4808F8
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0

loc_4808F8:
cmp     dword ptr [edx+10h], 0B4h
jnz     short loc_480909
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0

loc_480909:
pop     edx
retn
sub_4808E4 endp

push    edx
mov     edx, [eax+24h]
cmp     dword ptr [eax+10h], 0
jnz     short loc_48091D
mov     byte ptr [edx+9], 4
mov     byte ptr [edx+0Ah], 0

loc_48091D:
pop     edx
retn



sub_48091F proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48094C
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Dh], 1
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
xor     ebx, ebx
mov     ds:word_56F82C, bx

loc_48094C:
cmp     dword ptr [edx+10h], 4Fh ; 'O'
jnz     short loc_480959
mov     eax, [edx+24h]
mov     byte ptr [eax+0Dh], 0

loc_480959:
pop     edx
pop     ebx
retn
sub_48091F endp




sub_48095C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_48096B
mov     ds:word_56F82C, 0FFB0h

locret_48096B:
retn
sub_48095C endp




sub_48096C proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_480986
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 5
mov     byte ptr [eax+0Ah], 0
mov     ds:word_56F82C, 50h ; 'P'

locret_480986:
retn
sub_48096C endp




sub_480987 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_480A1D
xor     eax, eax
call    sub_480502
xor     ah, ah
mov     ds:byte_56F844, ah
xor     dl, dl
mov     ds:byte_56F80C, ah
mov     dh, 3
mov     ds:byte_56F994, dh
mov     ds:byte_56FA3C, dh
xor     ecx, ecx
mov     ds:dword_56FA40, ecx
mov     ds:dword_56FA44, ecx
xor     dh, dh
mov     ds:word_56FA5C, dx
mov     ds:word_56FA5E, 100h
mov     eax, [esi+24h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [esi+30h]
or      byte ptr [eax], 2
mov     eax, [esi+34h]
and     byte ptr [eax], 0FDh
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     eax, [esi+30h]
mov     ecx, 0FFFFFE0Ch
xor     ebx, ebx
mov     edx, 3E8h
call    sub_43A761

loc_480A1D:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480A46
push    1
mov     eax, [esi+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480A46:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_480987 endp




sub_480A4B proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_480FAD
mov     eax, 1
call    sub_480502
xor     ah, ah
mov     ds:byte_56FA3C, ah
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     edx, [edx+30h]
and     byte ptr [edx], 0FDh
mov     ds:byte_55A305, 1
mov     ch, 20h ; ' '
mov     ds:byte_55A304, ch
mov     ds:byte_55A306, ch
mov     ds:byte_55A308, ch
mov     ds:byte_55A307, 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     [esp+14h+var_14], 0F826h
mov     [esp+14h+var_12], 0FFE9h
mov     [esp+14h+var_10], 82Ah
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F844h
mov     [esp+14h+var_12], 0FF9Ch
mov     [esp+14h+var_10], 88Eh
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
jmp     loc_480FAD

loc_480B0B:
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480B7C
xor     eax, eax
call    sub_480502
xor     ah, ah
mov     ds:byte_55A305, ah
mov     eax, [esi+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [esi+30h]
or      byte ptr [eax], 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     ds:byte_56FA3C, 3
xor     ecx, ecx
mov     ds:dword_56FA40, ecx
mov     ds:dword_56FA44, ecx
xor     edx, edx
mov     ds:word_56FA5C, dx
mov     ds:word_56FA5E, 100h
mov     eax, [esi+30h]
mov     ecx, 0FFFFFE0Ch
xor     ebx, ebx
mov     edx, 3E8h
call    sub_43A761

loc_480B7C:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480BA5
push    1
mov     eax, [esi+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480BA5:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_480BAA:
push    ecx
push    edx
mov     ecx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480C21
mov     eax, 1
call    sub_480502
mov     ah, 3
mov     ds:byte_56F844, ah
mov     ds:byte_56F80C, ah
xor     dh, dh
mov     ds:byte_56FA3C, dh
mov     ds:byte_56F994, dh
mov     eax, [ecx+24h]
or      byte ptr [eax], 2
mov     dword ptr [eax+1Ch], 0F6500000h
mov     dword ptr [eax+20h], 0FF9F0000h
mov     dword ptr [eax+24h], 0FF700000h
mov     eax, [ecx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 6
mov     [eax+0Ah], dh
mov     byte ptr [eax+0Ch], 1
mov     eax, [ecx+30h]
and     byte ptr [eax], 0FDh
mov     eax, [ecx+34h]
or      byte ptr [eax], 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480C21:
cmp     dword ptr [ecx+10h], 0C8h
jnz     short loc_480C31
mov     eax, [ecx+28h]
mov     byte ptr [eax+0Ch], 0

loc_480C31:
pop     edx
pop     ecx
retn

loc_480C34:
cmp     dword ptr [eax+10h], 0
jnz     short locret_480C4B
mov     eax, [eax+24h]
mov     word ptr [eax+56h], 400h
mov     byte ptr [eax+9], 6
mov     byte ptr [eax+0Ah], 0

locret_480C4B:
retn

loc_480C4C:
cmp     dword ptr [eax+10h], 0
jnz     short locret_480C73
xor     ah, ah
mov     ds:byte_56F994, ah
mov     ds:byte_56F87C, ah
mov     ds:byte_56F844, ah
mov     ds:byte_56F80C, ah
mov     ds:byte_56F8B4, 3

locret_480C73:
retn

loc_480C74:
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480CA6
mov     eax, [eax+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
xor     bh, bh
mov     ds:byte_56F8B4, bh
mov     cl, 3
mov     ds:byte_56F844, cl
mov     ds:byte_56F80C, cl

loc_480CA6:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480CCF
push    1
mov     eax, [edx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480CCF:
pop     edx
pop     ecx
pop     ebx

locret_480CD2:
retn

loc_480CD3:
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_480D44
xor     eax, eax
call    sub_480502
mov     eax, [edx+30h]
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 1
mov     byte ptr [eax+0Ah], 0
xor     ah, ah
mov     ds:byte_56F844, ah
xor     bl, bl
mov     ds:byte_56F80C, bl
mov     ds:byte_56F95C, 3
mov     ds:dword_56F964, ecx
mov     ds:dword_56F960, ecx
mov     ds:word_56F97E, 0FE00h
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+30h]
or      byte ptr [eax], 2

loc_480D44:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
sub     ds:word_56F97E, 6
cmp     ax, 7
jnz     short loc_480D75
push    1
mov     eax, [edx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480D75:
pop     edx
pop     ecx
pop     ebx
retn
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     short loc_480DA2
mov     eax, [eax+30h]
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 3
mov     byte ptr [eax+0Ah], 0
mov     ds:word_56F97E, 0FF80h

loc_480DA2:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480DCB
push    1
mov     eax, [edx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480DCB:
pop     edx
pop     ecx
pop     ebx
retn

loc_480DCF:
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     edx, [eax+10h]
test    edx, edx
jnz     short loc_480E23
mov     ds:dword_56F964, edx
xor     esi, esi
mov     ds:dword_56F960, edx
xor     edx, edx
mov     ds:word_56F97E, dx
mov     ds:word_56F97C, 0FC00h
mov     eax, [eax+30h]
mov     [eax+1Ch], esi
mov     [eax+20h], esi
mov     [eax+24h], esi
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     [eax+56h], dx
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480E23:
cmp     dword ptr [ecx+10h], 73h ; 's'
jl      short loc_480E39
add     ds:word_56F97C, 0Bh
add     ds:word_56F97E, 21h ; '!'

loc_480E39:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
cmp     ax, 7
jnz     short loc_480E62
push    1
mov     eax, [ecx+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480E62:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_480E67:
push    ebx
push    ecx
push    edx
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 7
add     ds:word_56F97C, 16h
cmp     dx, 7
jnz     short loc_480E9D
push    1
mov     eax, [eax+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480E9D:
pop     edx
pop     ecx
pop     ebx
retn

loc_480EA1:
push    ebx
push    ecx
push    edx
mov     dx, ds:word_77EAB6
xor     dh, dh
and     dl, 7
cmp     dx, 7
jnz     short loc_480ECF
push    1
mov     eax, [eax+30h]
mov     ecx, 12Ch
mov     ebx, 0FFFFFF9Ch
mov     edx, 190h
call    sub_43A67E

loc_480ECF:
pop     edx
pop     ecx
pop     ebx
retn

loc_480ED3:
push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     loc_480F8B
mov     eax, 1
call    sub_480502
mov     edx, [edx+2Ch]
or      byte ptr [edx], 2
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979
mov     [esp+14h+var_14], 0F826h
mov     [esp+14h+var_12], 0FFE9h
mov     [esp+14h+var_10], 82Ah
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F844h
mov     [esp+14h+var_12], 0FF9Ch
mov     [esp+14h+var_10], 88Eh
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F86Ch
mov     [esp+14h+var_12], 0FFECh
mov     [esp+14h+var_10], 834h
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 18h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B

loc_480F8B:
mov     ds:byte_55A305, 1
mov     dh, 20h ; ' '
mov     ds:byte_55A304, dh
mov     ds:byte_55A306, dh
mov     ds:byte_55A308, dh

loc_480FA6:
mov     ds:byte_55A307, 2

loc_480FAD:
add     esp, 8
pop     edx
pop     ecx
pop     ebx
retn
sub_480A4B endp




sub_480FB4 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_480FFA
mov     eax, [eax+24h]
or      byte ptr [eax], 2
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     edx, [edx+34h]
or      byte ptr [edx], 2
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     ds:word_56F97C, 0FFB0h
xor     ebx, ebx
mov     ds:word_56F97E, bx
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_480FFA:
xor     ch, ch
mov     ds:byte_55A305, ch
pop     edx
pop     ecx
pop     ebx
retn
sub_480FB4 endp




sub_481006 proc near
cmp     dword ptr [eax+10h], 0
jnz     short locret_481032
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 7
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F6C00000h
mov     dword ptr [eax+20h], 0FF9F0000h
mov     dword ptr [eax+24h], 0FE620000h
mov     word ptr [eax+56h], 0

locret_481032:
retn
sub_481006 endp




sub_481033 proc near
push    ecx
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_481085
xor     dl, dl
mov     ds:byte_56F95C, dl
mov     ds:byte_56F9CC, 3
xor     ecx, ecx
mov     ds:dword_56F9D0, ecx
mov     ds:dword_56F9D4, 0AE0000h
mov     ds:word_56F9EE, 18h
mov     ds:byte_56FA04, 3
mov     ds:dword_56FA08, ecx
mov     ds:dword_56FA0C, 0AE0000h
mov     ds:word_56FA26, 10h

loc_481085:
cmp     dword ptr [eax+10h], 28h ; '('
jnz     short loc_481092
mov     ds:byte_55A309, 2

loc_481092:
pop     edx
pop     ecx
retn
sub_481033 endp




sub_481095 proc near
cmp     dword ptr [eax+0Ch], 0
jnz     short locret_4810A9
xor     ah, ah
mov     ds:byte_56FA04, ah
mov     ds:byte_56F9CC, ah

locret_4810A9:
retn
sub_481095 endp




sub_4810AA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_48114A
xor     eax, eax
call    sub_480502
mov     ah, 3
mov     ds:byte_56F8EC, ah
mov     ebx, 1400000h
mov     ds:dword_56F8F0, ebx
mov     ds:dword_56F8F4, ecx
mov     ds:byte_56F924, ah
mov     ds:dword_56F928, ebx
mov     ds:dword_56F92C, ecx
mov     ebx, 0FFFFF175h
mov     ds:word_56F944, bx
mov     ds:word_56F90C, bx
xor     esi, esi
mov     ds:word_56F946, si
xor     edi, edi
mov     ds:word_56F90E, di
mov     eax, [edx+30h]
or      byte ptr [eax], 2
mov     [eax+1Ch], ecx
mov     [eax+20h], ecx
mov     [eax+24h], ecx
mov     byte ptr [eax+9], 4
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+24h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+28h]
and     byte ptr [eax], 0FDh
mov     eax, [edx+2Ch]
and     byte ptr [eax], 0FDh
mov     eax, [edx+34h]
and     byte ptr [eax], 0FDh
xor     cl, cl
mov     ds:byte_55A309, cl

loc_48114A:
cmp     dword ptr [edx+10h], 16h
jge     short loc_481162
add     ds:word_56F90E, 0FEh
add     ds:word_56F946, 0FEh

loc_481162:
cmp     dword ptr [edx+10h], 16h
jnz     short loc_48117B
mov     ecx, 0E8Bh
mov     ds:word_56F944, cx
mov     ds:word_56F90C, cx

loc_48117B:
cmp     dword ptr [edx+10h], 2Ch ; ','
jnz     short loc_48119F
xor     edi, edi
mov     ds:word_56F944, di
mov     ds:word_56F90C, di
mov     ds:word_56F946, di
mov     ds:word_56F90E, di

loc_48119F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4810AA endp




sub_4811A5 proc near
push    ebx
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481207
mov     eax, 2
call    sub_480502
xor     ah, ah
mov     ds:byte_56F8EC, ah
xor     bl, bl
mov     ds:byte_56F924, bl
mov     ds:byte_56F95C, 3
xor     bh, bh
mov     ds:word_56F97E, bx
mov     eax, [edx+30h]
mov     dword ptr [eax+1Ch], 7D00000h
mov     dword ptr [eax+20h], 0FA880000h
mov     dword ptr [eax+24h], 0E8900000h
mov     byte ptr [eax+9], 5
mov     [eax+0Ah], bl
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_481207:
pop     edx
pop     ebx
retn
sub_4811A5 endp




sub_48120A proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_481246
mov     eax, 1
call    sub_480502
mov     eax, [edx+24h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 8
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+34h]
or      byte ptr [eax], 2
mov     ds:byte_55A309, 1

loc_481246:
pop     edx
retn
sub_48120A endp




sub_481248 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_48126F
mov     eax, [eax+24h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
mov     eax, [edx+28h]
mov     byte ptr [eax+9], 9
mov     byte ptr [eax+0Ah], 0
xor     ah, ah
mov     ds:byte_55A309, ah

loc_48126F:
pop     edx
retn
sub_481248 endp




sub_481271 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4812FC
mov     eax, [eax+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     eax, [esi+28h]
and     byte ptr [eax], 0FDh
mov     [esp+18h+var_18], 12Ch
mov     [esp+18h+var_16], 0FE0Ch
mov     [esp+18h+var_14], 1900h
push    1
push    0FFFFFFFDh
mov     ecx, 1Eh
mov     ebx, 1
mov     edx, 30h ; '0'
lea     eax, [esp+20h+var_18]
call    sub_43954B
mov     [esp+18h+var_18], 0FED4h
mov     [esp+18h+var_16], 0FE70h
mov     [esp+18h+var_14], 1900h
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
mov     ebx, 1
mov     edx, 30h ; '0'
lea     eax, [esp+20h+var_18]
call    sub_43954B
mov     eax, 3
call    sub_480502

loc_4812FC:
cmp     dword ptr [esi+10h], 3Bh ; ';'
jnz     short loc_481311
mov     edx, 80h
mov     eax, 40h ; '@'
call    sub_4DC979

loc_481311:
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_481271 endp




sub_481319 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 8
mov     edx, eax
mov     ecx, [eax+10h]
test    ecx, ecx
jnz     loc_4813E2
mov     eax, 1
call    sub_480502
mov     eax, [edx+2Ch]
or      byte ptr [eax], 2
mov     byte ptr [eax+9], 2
mov     byte ptr [eax+0Ah], 0
mov     dword ptr [eax+1Ch], 0F8680000h
mov     [eax+20h], ecx
mov     dword ptr [eax+24h], 8000000h
mov     word ptr [eax+56h], 130h
mov     [esp+14h+var_14], 0F812h
mov     [esp+14h+var_12], 0FFE9h
mov     [esp+14h+var_10], 802h
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 10h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F894h
mov     [esp+14h+var_12], 0FFF6h
mov     [esp+14h+var_10], 7EEh
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 10h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B
mov     [esp+14h+var_14], 0F83Ah
xor     ebx, ebx
mov     [esp+14h+var_12], bx
mov     [esp+14h+var_10], 866h
push    1
push    0FFFFFFFEh
mov     ecx, 1Eh
xor     ebx, ebx
mov     edx, 10h
lea     eax, [esp+1Ch+var_14]
call    sub_43954B

loc_4813E2:
mov     ds:byte_55A305, 1
mov     bl, 20h ; ' '
mov     ds:byte_55A304, bl
mov     ds:byte_55A306, bl
mov     ds:byte_55A308, bl
jmp     loc_480FA6
sub_481319 endp




sub_481402 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     ds:dword_77E6B4, offset unk_51ABC8
mov     eax, offset unk_51B2C0
call    sub_49DB4D
mov     eax, offset unk_51B2D4
call    sub_49DB4D
mov     eax, offset unk_51B2E8
call    sub_49DB4D
mov     eax, offset unk_51B2FC
call    sub_49DB4D
mov     eax, offset unk_51B310
call    sub_49DB4D
call    sub_4DE13B
test    eax, eax
jz      short loc_481477
mov     ds:dword_55A300, eax
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+0Ch], 1
mov     byte ptr [eax+0Dh], 1
mov     word ptr [eax+1Ch], 50h ; 'P'
mov     word ptr [eax+1Eh], 40h ; '@'

loc_481477:
call    sub_4DE1BE
test    eax, eax
jz      short loc_48148F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+0Fh], 0
or      byte ptr [eax+6], 20h

loc_48148F:
xor     edx, edx
jmp     short loc_481499

loc_481493:
inc     edx
cmp     edx, 4
jge     short loc_4814B7

loc_481499:
call    sub_4DE1BE
test    eax, eax
jz      short loc_481493
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 4
mov     bl, dl
add     bl, 0Ah
mov     [eax+3], bl
or      byte ptr [eax+6], 20h
jmp     short loc_481493

loc_4814B7:
xor     bh, bh
mov     ds:byte_55A309, bh
mov     dword ptr [ecx+0A4h], offset unk_51B324
pop     edx
pop     ecx
pop     ebx
retn
sub_481402 endp




sub_4814CD proc near
push    edx
cmp     byte ptr [eax+8], 0FFh
jz      short loc_4814DD
mov     edx, [eax+0A4h]
call    dword ptr [edx+4]

loc_4814DD:
pop     edx
retn
sub_4814CD endp

db 8Dh, 40h, 0
jpt_481514 dd offset loc_48151B ; jump table for switch statement
dd offset loc_48153C
dd offset loc_481548
dd offset loc_481564
dd offset loc_48157D
dd offset loc_481587
dd offset loc_4815B2



sub_4814FE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+4]
cmp     al, 6           ; switch 7 cases
ja      def_481514      ; jumptable 00481514 default case
and     eax, 0FFh
jmp     jpt_481514[eax*4] ; switch jump

loc_48151B:             ; jumptable 00481514 case 0
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      def_481514      ; jumptable 00481514 default case
and     ds:byte_5F8364, 0FCh

loc_481534:
inc     byte ptr [esi+4]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_48153C:             ; jumptable 00481514 case 1
mov     eax, 240004h
call    sub_4D8E42
jmp     short loc_481534

loc_481548:             ; jumptable 00481514 case 2
call    sub_4D8ECC
test    eax, eax
jz      def_481514      ; jumptable 00481514 default case
inc     byte ptr [esi+4]
mov     dword ptr [esi+0Ch], 14h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_481564:             ; jumptable 00481514 case 3
mov     ecx, [esi+0Ch]
dec     ecx
mov     [esi+0Ch], ecx
jnz     def_481514      ; jumptable 00481514 default case
mov     eax, 2
call    sub_49E0D7
jmp     short loc_481534

loc_48157D:             ; jumptable 00481514 case 4
mov     eax, esi
call    sub_481402
inc     byte ptr [esi+4]

loc_481587:             ; jumptable 00481514 case 5
cmp     ds:word_6E23D6, 0
jnz     short loc_4815B2 ; jumptable 00481514 case 6
mov     eax, [esi+0A4h]
cmp     byte ptr [eax], 0FFh
jz      short loc_4815A5
call    sub_47EBCB
test    eax, eax
jz      short loc_4815B2 ; jumptable 00481514 case 6

loc_4815A5:
mov     eax, 0Ah
call    sub_49E0D7
inc     byte ptr [esi+4]

loc_4815B2:             ; jumptable 00481514 case 6
mov     eax, esi
call    sub_4814CD
call    sub_49DBD1
cmp     ds:byte_55A305, 0
jz      short loc_4815EB
xor     ecx, ecx
mov     cl, ds:byte_55A307
xor     ebx, ebx
mov     bl, ds:byte_55A304
xor     edx, edx
mov     dl, ds:byte_55A306
xor     eax, eax
mov     al, ds:byte_55A308
call    sub_48054E

loc_4815EB:
mov     al, ds:byte_55A309
cmp     al, 1
jb      short loc_4815FC
jbe     short loc_48160A
cmp     al, 2
jz      short loc_48162D
jmp     short loc_48164E

loc_4815FC:
test    al, al
jnz     short loc_48164E
xor     edx, edx
mov     ds:dword_77E698, edx
jmp     short loc_48164E

loc_48160A:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_51B44A[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E698, eax
jmp     short loc_48164E

loc_48162D:
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 1
and     eax, 0FFFFh
mov     eax, ds:dword_51B452[eax*2]
sar     eax, 10h
shl     eax, 10h
mov     ds:dword_77E694, eax

loc_48164E:
call    sub_49DECF
cmp     byte ptr [esi+4], 6
jnz     def_481514      ; jumptable 00481514 default case
mov     bx, ds:word_6E23D6
test    bx, bx
jnz     short def_481514 ; jumptable 00481514 default case
mov     cl, 2
mov     byte ptr ds:dword_77EA5A+2, cl
mov     ds:byte_77EA5E, 3
mov     ds:byte_77EA5F, 1
mov     word ptr ds:dword_77EA4E+2, bx
mov     word ptr ds:dword_77EA52, bx
xor     eax, eax
mov     word ptr ds:dword_77EA52+2, bx
mov     word ptr ds:dword_77EA5A, bx
xor     ah, bh
mov     byte ptr ds:dword_77EA5A+3, ah
mov     ds:byte_77EA61, 0FFh
mov     ds:byte_77EA60, cl
mov     eax, 600h
call    sub_47EA91
xor     eax, eax
call    sub_47EA91
mov     byte ptr [esi], 0
call    sub_4D8EB1
or      ds:byte_5F8364, 1
mov     eax, offset byte_5F8364
call    sub_4B565A

def_481514:             ; jumptable 00481514 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4814FE endp




sub_4816E1 proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_4816F6
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 5
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0

loc_4816F6:
cmp     dword ptr [eax+10h], 3Ch ; '<'
jnz     short loc_48170A
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 9
mov     edx, [eax+28h]
mov     byte ptr [edx+9], 0

loc_48170A:
cmp     dword ptr [eax+10h], 5Ah ; 'Z'
jnz     short loc_48171E
mov     edx, [eax+28h]
mov     byte ptr [edx+8], 6
mov     eax, [eax+28h]
mov     byte ptr [eax+9], 0

loc_48171E:
pop     edx
retn
sub_4816E1 endp




sub_481720 proc near
push    edx
mov     edx, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4817A6
mov     eax, [eax+28h]
call    sub_4DE2F6
or      byte ptr [edx+0Ah], 20h
mov     eax, ds:dword_55A30C
mov     dword ptr [eax+528h], 72C0000h
mov     eax, ds:dword_55A30C
mov     dword ptr [eax+52Ch], 0FFFF0000h
mov     eax, ds:dword_55A30C
mov     dword ptr [eax+530h], 137B0000h
mov     eax, ds:dword_55A30C
mov     word ptr [eax+538h], 72Ch
mov     eax, ds:dword_55A30C
mov     word ptr [eax+53Ah], 0FFFFh
mov     eax, ds:dword_55A30C
mov     word ptr [eax+53Ch], 137Bh
mov     eax, ds:dword_55A30C
mov     word ptr [eax+542h], 0C00h
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 30h ; '0'

loc_4817A6:
cmp     dword ptr [edx+10h], 0Fh
jnz     short loc_4817C4
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 80h
mov     edx, 7
xor     eax, eax
call    sub_4A0E24

loc_4817C4:
pop     edx
retn
sub_481720 endp




sub_4817C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 1Eh
jnz     short loc_481809
mov     eax, ds:dword_55A30C
mov     word ptr [eax+542h], 800h
mov     eax, ds:dword_55A30C
xor     byte ptr [eax], 2
mov     eax, ds:dword_55A30C
mov     byte ptr [eax+548h], 30h ; '0'
mov     eax, [esi+24h]
mov     byte ptr [eax+8], 2
mov     eax, [esi+24h]
mov     byte ptr [eax+0Dh], 9
mov     eax, [esi+24h]
mov     byte ptr [eax+0Eh], 0Fh

loc_481809:
cmp     dword ptr [esi+10h], 0ACh
jnz     short loc_481878
mov     eax, ds:dword_51B456+1
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_51B456+2
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_481878:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4817C6 endp




sub_48187D proc near
push    edx
cmp     dword ptr [eax+10h], 0
jnz     short loc_481895
mov     edx, [eax+24h]
sub     word ptr [edx+18h], 40h ; '@'
mov     edx, ds:dword_55A30C
or      byte ptr [edx], 2

loc_481895:
mov     eax, [eax+24h]
cmp     byte ptr [eax+0A6h], 1
jnz     short loc_4818AE
lea     edx, [eax+14h]
mov     eax, 111h
call    sub_4D8BC3

loc_4818AE:
pop     edx
retn
sub_48187D endp




sub_4818B0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     dword ptr [eax+10h], 0
jnz     short loc_4818C8
mov     eax, ds:dword_55A30C
xor     byte ptr [eax], 2
mov     byte ptr [esi+0Ah], 0

loc_4818C8:
mov     ecx, [esi+10h]
cmp     ecx, 3
jl      short loc_481942
cmp     ecx, 5
jg      short loc_481942
mov     eax, ds:(dword_51B452+1)[ecx*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, [esi+10h]
mov     eax, ds:(dword_51B452+2)[eax*2]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_481942:
cmp     dword ptr [esi+10h], 0Fh
jnz     short loc_4819AE
mov     eax, ds:dword_51B45F
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044
mov     eax, ds:dword_51B45F+1
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_4819AE:
cmp     dword ptr [esi+10h], 1Eh
jnz     short loc_4819C0
mov     edx, 9
xor     eax, eax
call    sub_4A0E24

loc_4819C0:
mov     eax, [esi+10h]
cmp     eax, 2Dh ; '-'
jl      loc_481A3E
cmp     eax, 89h
jge     short loc_481A3E
xor     eax, eax
mov     al, [esi+0Ah]
add     eax, eax
mov     edx, ds:(dword_51B45F+3)[eax]
sar     edx, 10h
cmp     edx, 0FFFFFFFFh
jnz     short loc_4819EE
mov     byte ptr [esi+0Ah], 0
jmp     short loc_481A01

loc_4819EE:
cmp     ds:word_51B464[eax], 0
jnz     short loc_481A01
mov     al, ds:byte_51B466[eax]
sub     [esi+0Ah], al

loc_481A01:
xor     eax, eax
mov     al, [esi+0Ah]
mov     eax, ds:(dword_51B45F+3)[eax*2]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edx, [esi+24h]
mov     ecx, [edx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044
inc     byte ptr [esi+0Ah]

loc_481A3E:
cmp     dword ptr [esi+10h], 89h
jnz     short loc_481A7A
mov     eax, ds:dword_51B45F+1
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+24h]
mov     ecx, [ecx+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

