lea     eax, [ebx+44h]
mov     edx, ebp
call    sub_42D90F

loc_4CC98E:
mov     eax, [esp+1Ch+var_1C]
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CC833 endp




sub_4CC99B proc near
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
jge     short loc_4CC9CA
mov     word ptr [eax+44h], 0A000h
jmp     short loc_4CC9D8

loc_4CC9CA:
cmp     word ptr [eax+44h], 6000h
jle     short loc_4CC9D8
mov     word ptr [eax+44h], 6000h

loc_4CC9D8:
mov     edx, [eax+44h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4CC9EE
mov     word ptr [eax+46h], 0A000h
jmp     short loc_4CC9FC

loc_4CC9EE:
cmp     word ptr [eax+46h], 6000h
jle     short loc_4CC9FC
mov     word ptr [eax+46h], 6000h

loc_4CC9FC:
mov     edx, [eax+46h]
sar     edx, 10h
cmp     edx, 0FFFFA000h
jge     short loc_4CCA12
mov     word ptr [eax+48h], 0A000h
jmp     short loc_4CCA20

loc_4CCA12:
cmp     word ptr [eax+48h], 6000h
jle     short loc_4CCA20
mov     word ptr [eax+48h], 6000h

loc_4CCA20:
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
pop     edx
retn
sub_4CC99B endp




sub_4CCA46 proc near
push    esi
push    edi
mov     byte ptr [edx], 5
mov     byte ptr [edx+2], 80h
cmp     byte ptr [eax+0Ah], 0
jz      short loc_4CCA5B
mov     byte ptr [edx+3], 2
jmp     short loc_4CCA5F

loc_4CCA5B:
mov     byte ptr [edx+3], 42h ; 'B'

loc_4CCA5F:
lea     edi, [edx+48h]
lea     esi, [eax+14h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4CCA46 endp




sub_4CCA6A proc near
push    esi
push    edi
mov     byte ptr [edx], 1
mov     byte ptr [edx+2], 19h
mov     byte ptr [edx+3], 0
jmp     short loc_4CCA5F
sub_4CCA6A endp




sub_4CCA79 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+8]
lea     edx, [eax+0E0h]
call    ds:funcs_4CCA86[ecx*4]
pop     edx
pop     ecx
retn
sub_4CCA79 endp

db 90h
jpt_4CCB9A dd offset loc_4CCBA1 ; jump table for switch statement
dd offset loc_4CCBB5
dd offset loc_4CCBC3
dd offset loc_4CCBCF
dd offset loc_4CCBCF
dd offset loc_4CCBC3
dd offset loc_4CCBB5
dd offset loc_4CCBA1



sub_4CCAB1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
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
mov     byte ptr [edx], 0
mov     byte ptr [edx+1], 0
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
call    rand_
mov     bl, [ecx+3]
cmp     bl, 1
jb      short loc_4CCB00
jbe     short loc_4CCB08
cmp     bl, 2
jz      loc_4CCB8C
jmp     loc_4CCC43

loc_4CCB00:
test    bl, bl
jnz     loc_4CCC43

loc_4CCB08:
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4CCB39
mov     si, [ecx+14h]
sub     esi, 1900h
sub     esi, ebx
mov     [edx+0Ah], si
cwde
sar     eax, 2
and     eax, 3
mov     ebx, 0FFFFFFB0h
sub     ebx, eax
mov     [ecx+44h], bx
jmp     short loc_4CCB57

loc_4CCB39:
mov     si, [ecx+14h]
add     esi, 1900h
add     esi, ebx
mov     [edx+0Ah], si
cwde
sar     eax, 2
and     eax, 3
add     eax, 50h ; 'P'
mov     [ecx+44h], ax

loc_4CCB57:
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     dword ptr [ecx+88h], 3D08000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     al, ds:byte_538CA4
mov     [ecx+96h], al
mov     al, ds:byte_538CA5
jmp     loc_4CCC3D

loc_4CCB8C:
mov     bl, [ecx+0Ch]
cmp     bl, 7           ; switch 8 cases
ja      short def_4CCB9A ; jumptable 004CCB9A default case
and     ebx, 0FFh
jmp     jpt_4CCB9A[ebx*4] ; switch jump

loc_4CCBA1:             ; jumptable 004CCB9A cases 0,7
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
mov     esi, 0FFFFFFE0h

loc_4CCBAD:
sub     esi, ebx
mov     [ecx+4Ch], si
jmp     short def_4CCB9A ; jumptable 004CCB9A default case

loc_4CCBB5:             ; jumptable 004CCB9A cases 1,6
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     esi, 0FFFFFFF0h
jmp     short loc_4CCBAD

loc_4CCBC3:             ; jumptable 004CCB9A cases 2,5
mov     ebx, eax
xor     bh, ah
and     bl, 7
add     ebx, 10h
jmp     short loc_4CCBD9

loc_4CCBCF:             ; jumptable 004CCB9A cases 3,4
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
add     ebx, 20h ; ' '

loc_4CCBD9:
mov     [ecx+4Ch], bx

def_4CCB9A:             ; jumptable 004CCB9A default case
test    byte ptr [ecx+0Ch], 1
jnz     short loc_4CCBF9
movsx   ebx, ax
sar     ebx, 3
and     ebx, 0Fh
mov     esi, 0FFFFFFE0h
sub     esi, ebx
mov     [ecx+4Eh], si
jmp     short loc_4CCC09

loc_4CCBF9:
movsx   ebx, ax
sar     ebx, 3
and     ebx, 0Fh
add     ebx, 20h ; ' '
mov     [ecx+4Eh], bx

loc_4CCC09:
mov     word ptr [ecx+50h], 0FFF0h
cwde
sar     eax, 6
and     eax, 0Fh
mov     [edx+0Eh], al
mov     dword ptr [ecx+88h], 3C48000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     al, ds:byte_538CB0
mov     [ecx+96h], al
mov     al, ds:byte_538CB1

loc_4CCC3D:
mov     [ecx+97h], al

loc_4CCC43:
movsx   ax, byte ptr [ecx+0Dh]
add     eax, eax
movsx   bx, byte ptr [ecx+0Fh]
add     ebx, eax
mov     [edx+0Ch], bx
mov     dword ptr [ecx+0D8h], 0
mov     eax, [ecx+0D8h]
mov     [ecx+0D4h], eax
mov     [ecx+0D0h], eax
mov     [ecx+0CCh], eax
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     word ptr [ecx+98h], 40h ; '@'
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCAB1 endp




sub_4CCCB6 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     ebx, edx
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
call    rand_
mov     [edx+2], ax
movzx   esi, byte ptr [ecx+3]
mov     eax, ecx
call    ds:funcs_4CCCE7[esi*4]
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
mov     ax, [ecx+14h]
mov     [ecx+90h], ax
mov     ax, [ecx+16h]
mov     [ecx+92h], ax
mov     ax, [ecx+18h]
mov     [ecx+94h], ax
mov     edx, ebx
mov     eax, ecx
call    sub_4CD2F2
mov     ah, [ebx]
test    ah, 1
jz      short loc_4CCD52
mov     dl, ah
and     dl, 0FEh
mov     [ebx], dl
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0

loc_4CCD52:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCCB6 endp




sub_4CCD57 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jbe     short loc_4CCD6B
cmp     al, 1
jz      short loc_4CCD92
pop     edi
pop     esi
pop     ecx
retn

loc_4CCD6B:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CCD8B
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 41h ; 'A'
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd
mov     byte ptr [eax+0Dh], 0

loc_4CCD8B:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_4CCD92:
mov     eax, ecx
call    sub_4DE371
pop     edi
pop     esi
pop     ecx
retn
sub_4CCD57 endp




sub_4CCD9D proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     dx, [eax+44h]
add     [eax+14h], dx
mov     dx, [eax+46h]
add     [eax+16h], dx
mov     dx, [eax+48h]
mov     ax, [eax+18h]
add     eax, edx
mov     [ecx+18h], ax

loc_4CCDC2:
xor     edx, edx
mov     dl, [ebx+1]
sar     edx, 1
mov     esi, 6
mov     eax, edx
sar     edx, 1Fh
idiv    esi
and     edx, 0FFh
mov     al, ds:byte_538CA4[edx*2]
mov     [ecx+96h], al
mov     al, ds:byte_538CA5[edx*2]
mov     [ecx+97h], al
inc     byte ptr [ebx+1]
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCD9D endp

db 90h
jpt_4CCE23 dd offset loc_4CCE2A ; jump table for switch statement
dd offset loc_4CCE54
dd offset loc_4CCE83
dd offset def_4CCE23



sub_4CCE0D proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     ebx, edx
mov     al, [eax+9]
cmp     al, 3           ; switch 4 cases
ja      def_4CCE23      ; jumptable 004CCE23 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_4CCE23[edx*4] ; switch jump

loc_4CCE2A:             ; jumptable 004CCE23 case 0
call    rand_
xor     ah, ah
and     al, 7
imul    eax, 84h
add     eax, 3A0h
mov     [ebx+8], ax
cmp     byte ptr [ecx+0Ch], 1
jnz     short loc_4CCE4F
imul    eax, -1
mov     [ebx+8], ax

loc_4CCE4F:
inc     byte ptr [ecx+9]
jmp     short def_4CCE23 ; jumptable 004CCE23 default case, case 3

loc_4CCE54:             ; jumptable 004CCE23 case 1
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4CCE71
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [ebx+6]
sar     edx, 10h
cmp     esi, edx
jge     short def_4CCE23 ; jumptable 004CCE23 default case, case 3

loc_4CCE6A:
inc     al
mov     [ecx+9], al
jmp     short def_4CCE23 ; jumptable 004CCE23 default case, case 3

loc_4CCE71:
mov     esi, [ecx+12h]
sar     esi, 10h
mov     edx, [ebx+6]
sar     edx, 10h
cmp     esi, edx
jle     short def_4CCE23 ; jumptable 004CCE23 default case, case 3
jmp     short loc_4CCE6A

loc_4CCE83:             ; jumptable 004CCE23 case 2
cmp     word ptr [ebx+4], 10h
jge     short loc_4CCE6A
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_4CCE96
inc     word ptr [ecx+44h]
jmp     short loc_4CCE9A

loc_4CCE96:
dec     word ptr [ecx+44h]

loc_4CCE9A:
inc     word ptr [ecx+46h]
inc     word ptr [ebx+4]

def_4CCE23:             ; jumptable 004CCE23 default case, case 3
mov     ax, [ecx+44h]
add     [ecx+14h], ax
mov     ax, [ecx+46h]
add     [ecx+16h], ax
mov     ax, [ecx+48h]
add     [ecx+18h], ax
jmp     loc_4CCDC2
sub_4CCE0D endp

db 8Bh, 0C0h
jpt_4CCF24 dd offset loc_4CCF2B ; jump table for switch statement
dd offset loc_4CCFE6
dd offset loc_4CD03B
dd offset loc_4CD10A



sub_4CCED1 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ebx, eax
mov     ecx, edx
mov     eax, [eax+0DCh]
mov     ax, [eax]
mov     dx, [ebx+14h]
sub     eax, edx
mov     [ecx+10h], ax
mov     eax, [ebx+0DCh]
mov     ax, [eax+2]
mov     si, [ebx+16h]
sub     eax, esi
mov     [ecx+12h], ax
mov     eax, [ebx+0DCh]
mov     ax, [eax+4]
mov     di, [ebx+18h]
sub     eax, edi
mov     [ecx+14h], ax
mov     al, [ebx+9]
cmp     al, 3           ; switch 4 cases
ja      def_4CCF24      ; jumptable 004CCF24 default case
and     eax, 0FFh
jmp     jpt_4CCF24[eax*4] ; switch jump

loc_4CCF2B:             ; jumptable 004CCF24 case 0
cmp     word ptr [ecx+4], 10h
jge     loc_4CCFB4
mov     edx, [ebx+4Ah]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, [ecx+2]
sar     edx, 10h
mov     esi, 10h
sub     esi, edx
imul    eax, esi
mov     [ebx+44h], ax
mov     edx, [ebx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, [ecx+2]
sar     edx, 10h
mov     esi, 10h
sub     esi, edx
imul    eax, esi
mov     [ebx+46h], ax
mov     edx, [ebx+4Eh]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     edx, [ecx+2]
sar     edx, 10h
mov     esi, 10h
sub     esi, edx
imul    eax, esi
mov     [ebx+48h], ax
inc     word ptr [ecx+4]
jmp     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CCFB4:
mov     word ptr [ecx+4], 0
mov     word ptr [ebx+44h], 0
mov     word ptr [ebx+46h], 0
mov     word ptr [ebx+48h], 0
mov     word ptr [ebx+4Ch], 0
mov     word ptr [ebx+4Eh], 0
mov     word ptr [ebx+50h], 0

loc_4CCFDE:
inc     byte ptr [ebx+9]
jmp     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CCFE6:             ; jumptable 004CCF24 case 1
cmp     word ptr [ecx+4], 40h ; '@'
jge     short loc_4CCFB4
mov     eax, [ecx+2]
sar     eax, 10h
sar     eax, 2
cmp     eax, 6
jb      short loc_4CD00B
jbe     short loc_4CD01C
cmp     eax, 0Ah
jb      short loc_4CD02A
jbe     short loc_4CD014
cmp     eax, 0Eh
jz      short loc_4CD024
jmp     short loc_4CD02A

loc_4CD00B:
test    eax, eax
jbe     short loc_4CD024
cmp     eax, 2
jnz     short loc_4CD02A

loc_4CD014:
mov     word ptr [ebx+4Eh], 0
jmp     short loc_4CD02A

loc_4CD01C:
mov     word ptr [ebx+4Eh], 0FFFFh
jmp     short loc_4CD02A

loc_4CD024:
mov     word ptr [ebx+4Eh], 1

loc_4CD02A:
inc     word ptr [ecx+4]
mov     ax, [ebx+4Eh]
add     [ebx+46h], ax
jmp     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CD03B:             ; jumptable 004CCF24 case 2
cmp     word ptr [ecx+10h], 0
jle     short loc_4CD049
mov     eax, 4
jmp     short loc_4CD04E

loc_4CD049:
mov     eax, 0FFFFFFFCh

loc_4CD04E:
mov     edx, [ecx+0Eh]
sar     edx, 10h
sar     edx, 6
add     eax, edx
mov     [ebx+44h], ax
cmp     word ptr [ecx+12h], 0
jle     short loc_4CD06B
mov     eax, 4
jmp     short loc_4CD070

loc_4CD06B:
mov     eax, 0FFFFFFFCh

loc_4CD070:
mov     edx, [ecx+10h]
sar     edx, 10h
sar     edx, 6
add     eax, edx
mov     [ebx+46h], ax
cmp     word ptr [ecx+14h], 0
jle     short loc_4CD08D
mov     eax, 4
jmp     short loc_4CD092

loc_4CD08D:
mov     eax, 0FFFFFFFCh

loc_4CD092:
mov     edx, [ecx+12h]
sar     edx, 10h
sar     edx, 6
add     eax, edx
mov     [ebx+48h], ax
cmp     word ptr [ecx+10h], 0
jge     short loc_4CD0B2
mov     eax, [ecx+0Eh]
sar     eax, 10h
neg     eax
jmp     short loc_4CD0B8

loc_4CD0B2:
mov     eax, [ecx+0Eh]
sar     eax, 10h

loc_4CD0B8:
cmp     eax, 400h
jl      short loc_4CD0FF
cmp     word ptr [ecx+12h], 0
jge     short loc_4CD0D0
mov     eax, [ecx+10h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD0D6

loc_4CD0D0:
mov     eax, [ecx+10h]
sar     eax, 10h

loc_4CD0D6:
cmp     eax, 400h
jl      short loc_4CD0FF
cmp     word ptr [ecx+14h], 0
jge     short loc_4CD0EE
mov     eax, [ecx+12h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD0F4

loc_4CD0EE:
mov     eax, [ecx+12h]
sar     eax, 10h

loc_4CD0F4:
cmp     eax, 400h
jge     def_4CCF24      ; jumptable 004CCF24 default case

loc_4CD0FF:
mov     word ptr [ecx+4], 0
jmp     loc_4CCFDE

loc_4CD10A:             ; jumptable 004CCF24 case 3
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_4CD172
cmp     word ptr [ecx+10h], 0
jle     short loc_4CD11E
mov     eax, 0Ch
jmp     short loc_4CD123

loc_4CD11E:
mov     eax, 0FFFFFFF4h

loc_4CD123:
mov     edx, [ecx+0Eh]
sar     edx, 10h
sar     edx, 4
add     eax, edx
mov     [ebx+44h], ax
cmp     word ptr [ecx+12h], 0
jle     short loc_4CD140
mov     eax, 0Ch
jmp     short loc_4CD145

loc_4CD140:
mov     eax, 0FFFFFFF4h

loc_4CD145:
mov     edx, [ecx+10h]
sar     edx, 10h
sar     edx, 4
add     eax, edx
mov     [ebx+46h], ax
cmp     word ptr [ecx+14h], 0
jle     short loc_4CD162
mov     eax, 0Ch
jmp     short loc_4CD167

loc_4CD162:
mov     eax, 0FFFFFFF4h

loc_4CD167:
mov     edx, [ecx+12h]
sar     edx, 10h
sar     edx, 4
jmp     short loc_4CD1D2

loc_4CD172:
cmp     word ptr [ecx+10h], 0
jle     short loc_4CD180
mov     eax, 8
jmp     short loc_4CD185

loc_4CD180:
mov     eax, 0FFFFFFF8h

loc_4CD185:
mov     edx, [ecx+0Eh]
sar     edx, 10h
sar     edx, 5
add     eax, edx
mov     [ebx+44h], ax
cmp     word ptr [ecx+12h], 0
jle     short loc_4CD1A2
mov     eax, 8
jmp     short loc_4CD1A7

loc_4CD1A2:
mov     eax, 0FFFFFFF8h

loc_4CD1A7:
mov     edx, [ecx+10h]
sar     edx, 10h
sar     edx, 5
add     eax, edx
mov     [ebx+46h], ax
cmp     word ptr [ecx+14h], 0
jle     short loc_4CD1C4
mov     eax, 8
jmp     short loc_4CD1C9

loc_4CD1C4:
mov     eax, 0FFFFFFF8h

loc_4CD1C9:
mov     edx, [ecx+12h]
sar     edx, 10h
sar     edx, 5

loc_4CD1D2:
add     eax, edx
mov     [ebx+48h], ax
mov     si, [ecx+4]
cmp     si, 100h
jge     short loc_4CD1EC
mov     edi, esi
inc     edi
mov     [ecx+4], di
jmp     short loc_4CD1F5

loc_4CD1EC:
mov     word ptr [ecx+4], 0
or      byte ptr [ecx], 1

loc_4CD1F5:
cmp     word ptr [ecx+10h], 0
jge     short loc_4CD206
mov     eax, [ecx+0Eh]
sar     eax, 10h
neg     eax
jmp     short loc_4CD20C

loc_4CD206:
mov     eax, [ecx+0Eh]
sar     eax, 10h

loc_4CD20C:
cmp     eax, 28h ; '('
jge     short def_4CCF24 ; jumptable 004CCF24 default case
cmp     word ptr [ecx+12h], 0
jge     short loc_4CD222
mov     eax, [ecx+10h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD228

loc_4CD222:
mov     eax, [ecx+10h]
sar     eax, 10h

loc_4CD228:
cmp     eax, 28h ; '('
jge     short def_4CCF24 ; jumptable 004CCF24 default case
cmp     word ptr [ecx+14h], 0
jge     short loc_4CD23E
mov     eax, [ecx+12h]
sar     eax, 10h
neg     eax
jmp     short loc_4CD244

loc_4CD23E:
mov     eax, [ecx+12h]
sar     eax, 10h

loc_4CD244:
cmp     eax, 28h ; '('
jge     short def_4CCF24 ; jumptable 004CCF24 default case
mov     word ptr [ecx+4], 0
or      byte ptr [ecx], 1

def_4CCF24:             ; jumptable 004CCF24 default case
mov     eax, [ecx]
sar     eax, 10h
sar     eax, 2
and     eax, 3
mov     edx, [ebx+42h]
sar     edx, 10h
add     edx, eax
mov     eax, [ebx+12h]
sar     eax, 10h
add     eax, edx
mov     [ebx+14h], ax
mov     edx, [ecx]
sar     edx, 10h
sar     edx, 4
and     edx, 3
mov     eax, [ebx+44h]
sar     eax, 10h
add     edx, eax
mov     eax, [ebx+14h]
sar     eax, 10h
add     eax, edx
mov     [ebx+16h], ax
mov     ax, [ebx+48h]
add     [ebx+18h], ax
cmp     byte ptr [ebx+9], 0
jnz     short loc_4CD2B9
mov     al, ds:byte_538CB0
mov     [ebx+96h], al
mov     al, ds:byte_538CB1
mov     [ebx+97h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4CD2B9:
xor     edx, edx
mov     dl, [ecx+1]
sar     edx, 1
mov     esi, 10h
mov     eax, edx
sar     edx, 1Fh
idiv    esi
xor     eax, eax
mov     al, dl
mov     dl, ds:byte_538CB0[eax*2]
mov     [ebx+96h], dl
mov     al, ds:byte_538CB1[eax*2]
mov     [ebx+97h], al
inc     byte ptr [ecx+1]
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CCED1 endp




sub_4CD2F2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
test    byte ptr [eax+0CFh], 0Ah
jz      short loc_4CD30B
or      byte ptr [edx], 1
jmp     loc_4CD38A

loc_4CD30B:
cmp     byte ptr [esi+0Eh], 0
jnz     short loc_4CD315
xor     eax, eax
jmp     short loc_4CD31A

loc_4CD315:
mov     eax, 80h

loc_4CD31A:
mov     ecx, eax
mov     al, [esi+3]
cmp     al, 1
jb      short loc_4CD327
jbe     short loc_4CD32B
jmp     short loc_4CD35A

loc_4CD327:
test    al, al
jnz     short loc_4CD35A

loc_4CD32B:
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_4CD341
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+8]
sar     eax, 10h
cmp     edx, eax
jl      short loc_4CD357

loc_4CD341:
cmp     byte ptr [esi+0Ch], 1
jnz     short loc_4CD35A
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+8]
sar     eax, 10h
cmp     edx, eax
jle     short loc_4CD35A

loc_4CD357:
or      byte ptr [edi], 1

loc_4CD35A:
push    ecx
push    0
mov     eax, [edi+0Ah]
sar     eax, 10h
or      eax, 4000000h
push    eax
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 40h ; '@'
call    sub_4E01FC

loc_4CD38A:
mov     dword ptr [esi+0CCh], 0
mov     eax, esi
call    sub_42CE47
test    eax, eax
jz      short loc_4CD3A2
or      byte ptr [edi], 1

loc_4CD3A2:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4CD2F2 endp




sub_4CD3A7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4CD3AD[edx*4]
pop     edx
retn
sub_4CD3A7 endp

db 90h
jpt_4CD475 dd offset loc_4CD493 ; jump table for switch statement
dd offset loc_4CD52F
dd offset loc_4CD54B
dd offset loc_4CD47C



sub_4CD3C7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, offset byte_5F8364
mov     ah, [eax]
or      ah, 22h
mov     [ecx], ah
mov     dword ptr [ecx+10h], 0
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+88h], 3D08000Eh
mov     dword ptr [ecx+8Ch], 2C808080h
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ecx+90h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ecx+92h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ecx+94h], ax
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
mov     byte ptr [ecx+96h], 0E0h
mov     byte ptr [ecx+97h], 20h ; ' '
mov     word ptr [ecx+98h], 20h ; ' '
mov     word ptr [ecx+9Ah], 0
mov     byte ptr [ecx+0Dh], 14h
mov     al, [ecx+3]
cmp     al, 3           ; switch 4 cases
ja      def_4CD475      ; jumptable 004CD475 default case
and     eax, 0FFh
jmp     jpt_4CD475[eax*4] ; switch jump

loc_4CD47C:             ; jumptable 004CD475 case 3
mov     word ptr [ecx+98h], 30h ; '0'
mov     dword ptr [ecx+8Ch], 2C8080FFh
mov     byte ptr [ecx+0Dh], 28h ; '('

loc_4CD493:             ; jumptable 004CD475 case 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 78h ; 'x'
mov     byte ptr [ecx+0Eh], 0
mov     eax, [ecx+62h]
sar     eax, 10h
call    sub_4EF008
neg     eax
mov     ebx, eax
shl     eax, 3
add     eax, ebx
shl     eax, 2
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     eax, [edx+4E8h]
sar     eax, 10h
mov     ebx, [ecx+14h]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     eax, ecx
call    sub_4DD64B
lea     edx, [eax+24h]
mov     esi, 24h ; '$'
mov     eax, edx
sar     edx, 1Fh
idiv    esi
mov     esi, eax
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    esi
mov     [ecx+46h], ax
mov     eax, [ecx+62h]
sar     eax, 10h
call    sub_4EF003
neg     eax
mov     edx, eax
shl     eax, 3
add     eax, edx
shl     eax, 2
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
jmp     short def_4CD475 ; jumptable 004CD475 default case

loc_4CD52F:             ; jumptable 004CD475 case 1
mov     byte ptr [ecx+8], 2
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 3Ch ; '<'
mov     byte ptr [ecx+0Eh], 0
mov     word ptr [ecx+44h], 200h
jmp     short loc_4CD56B

loc_4CD54B:             ; jumptable 004CD475 case 2
mov     byte ptr [ecx+8], 3
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 3Ch ; '<'
mov     byte ptr [ecx+0Eh], 0
movsx   ax, byte ptr [ecx+0Ch]
shl     eax, 4
mov     [ecx+44h], ax

loc_4CD56B:
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+54h], 0
mov     ax, [ecx+64h]
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0

def_4CD475:             ; jumptable 004CD475 default case
mov     eax, ecx
call    sub_42CE47
test    eax, eax
jz      short loc_4CD5AF
mov     eax, ecx
call    sub_4DE371

loc_4CD5AF:
mov     dword ptr [ecx+9Ch], 0
lea     edx, [ecx+14h]
mov     eax, 1AFh
call    sub_4D8BC3
jmp     loc_4CD744
sub_4CD3C7 endp




sub_4CD5CB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     ah, [eax+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4CD5FB
mov     eax, ebp
call    sub_4DE371
jmp     loc_4CD70F

loc_4CD5FB:
lea     eax, [ebp+0Ah]
cmp     byte ptr [ebp+0Ah], 6
jnz     short loc_4CD60B
mov     ecx, 0FFFFFFFAh
jmp     short loc_4CD610

loc_4CD60B:
mov     ecx, 2

loc_4CD610:
xor     edx, edx
mov     dl, [eax]
add     edx, ecx
mov     [eax], dl
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE4[eax]
mov     [ebp+96h], al
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE5[eax]
mov     [ebp+97h], al
mov     dx, [ebp+9Ah]
add     edx, 8
mov     [ebp+9Ah], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3Fh
mov     [ebp+9Ah], bx
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, [ebp+4Ah]
sar     eax, 10h
add     eax, edx
shl     eax, 10h
add     [ebp+1Ch], eax
mov     eax, [ebp+44h]
sar     eax, 10h
shl     eax, 10h
add     [ebp+20h], eax
mov     edx, [ebp+46h]
sar     edx, 10h
mov     eax, [ebp+4Eh]
sar     eax, 10h
add     eax, edx
shl     eax, 10h
add     [ebp+24h], eax
lea     edx, [ebp+14h]
lea     eax, [ebp+1Ch]
call    sub_4DD57B
jmp     loc_4CD7BE
sub_4CD5CB endp

; START OF FUNCTION CHUNK FOR sub_4CD6E4

loc_4CD69D:
test    byte ptr [ebp+0], 1
jz      loc_4CD739
push    80h
push    0
mov     eax, [ebp+0Ah]
sar     eax, 18h
or      eax, 8000000h
push    eax
lea     eax, [ebp+9Ch]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
xor     edx, edx
mov     dx, [ebp+98h]
add     edx, 10h
lea     eax, [ebp+14h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
jmp     short loc_4CD739
; END OF FUNCTION CHUNK FOR sub_4CD6E4



sub_4CD6E4 proc near

; FUNCTION CHUNK AT 004CD69D SIZE 00000047 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
mov     ah, [eax+0Bh]
dec     ah
mov     [ebp+0Bh], ah
jnz     short loc_4CD74A
mov     eax, ebp
call    sub_4DE371

loc_4CD70F:
mov     eax, ebp
call    sub_42CE47
test    eax, eax
jnz     short loc_4CD727
test    byte ptr [ebp+9Fh], 2
jz      loc_4CD69D

loc_4CD727:
mov     byte ptr [ebp+8], 4
mov     byte ptr [ebp+96h], 0
mov     byte ptr [ebp+97h], 40h ; '@'

loc_4CD739:
mov     dword ptr [ebp+9Ch], 0
pop     ebp

loc_4CD744:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CD74A:
lea     eax, [ebp+0Ah]
cmp     byte ptr [ebp+0Ah], 6
jnz     loc_4CD835
mov     ecx, 0FFFFFFFAh

loc_4CD75C:
xor     edx, edx
mov     dl, [eax]
add     edx, ecx
mov     [eax], dl
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE4[eax]
mov     [ebp+96h], al
xor     eax, eax
mov     al, [ebp+0Ah]
mov     al, ds:byte_538CE5[eax]
mov     [ebp+97h], al
mov     dx, [ebp+9Ah]
add     edx, 8
mov     [ebp+9Ah], dx
mov     ebx, edx
xor     bh, dh
and     bl, 3Fh
mov     [ebp+9Ah], bx
mov     ecx, [ebp+46h]
sar     ecx, 10h
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
mov     eax, ebp
call    sub_4DD43B

loc_4CD7BE:
mov     bl, [ebp+0Eh]
test    bl, bl
jz      short loc_4CD7CC
mov     bh, bl
dec     bh
mov     [ebp+0Eh], bh

loc_4CD7CC:
mov     cl, [ebp+0Eh]
test    cl, cl
jnz     short loc_4CD80F
call    sub_4DE13B
test    eax, eax
jz      short loc_4CD80F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 4
mov     [eax+0Ch], cl
mov     dx, [ebp+90h]
mov     [eax+1Ch], dx
mov     dx, [ebp+92h]
mov     [eax+1Eh], dx
mov     dx, [ebp+94h]
mov     [eax+20h], dx
mov     byte ptr [ebp+0Eh], 2

loc_4CD80F:
mov     ax, [ebp+14h]
mov     [ebp+90h], ax
mov     ax, [ebp+16h]
mov     [ebp+92h], ax
mov     ax, [ebp+18h]
mov     [ebp+94h], ax
jmp     loc_4CD70F

loc_4CD835:
mov     ecx, 2
jmp     loc_4CD75C
sub_4CD6E4 endp



; Attributes: thunk

sub_4CD83F proc near
jmp     sub_4DE371
sub_4CD83F endp




sub_4CD844 proc near
push    ecx
push    edx
lea     edx, [eax+0CCh]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4CD851[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4CD844 endp




sub_4CD862 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     [ecx+34h], eax
test    byte ptr [edx+0Eh], 1
jnz     short loc_4CD883
or      byte ptr [edx], 2

loc_4CD883:
mov     dword ptr [edx+54h], 0
mov     dword ptr [edx+58h], 0
mov     dword ptr [edx+64h], 0
mov     dword ptr [edx+70h], 0
mov     dword ptr [edx+74h], 0
mov     eax, [ecx+34h]
mov     eax, [eax+88h]
mov     [edx+88h], eax
movsx   ax, byte ptr [edx+0Dh]
mov     [edx+0C2h], ax
mov     word ptr [ecx], 10h
mov     dword ptr [ecx+4], 0
mov     dword ptr [ecx+8], 0
mov     dword ptr [ecx+14h], 0
lea     eax, [ecx+24h]
call    sub_4E19B4
mov     dword ptr [ecx+38h], 1000h
mov     dword ptr [ecx+3Ch], 1000h
mov     dword ptr [ecx+40h], 1000h
mov     word ptr [edx+6Eh], 400h
mov     dword ptr [edx+78h], offset unk_538D0C
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
mov     dword ptr [edx+0C4h], offset unk_808080
mov     eax, edx
call    sub_4CD927
pop     edx
pop     ecx
retn
sub_4CD862 endp




sub_4CD927 proc near

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
mov     ah, [ebp+0Eh]
test    ah, 20h
jz      short loc_4CD970
mov     dl, ah
and     dl, 0DFh
mov     [ebp+0Eh], dl
mov     dword ptr [ebp+0C4h], 0FFFFFFh
jmp     short loc_4CD97A

loc_4CD970:
mov     dword ptr [ebp+0C4h], offset unk_808080

loc_4CD97A:
call    rand_
mov     ecx, [esp+1Ch+var_1C]
mov     [ecx+2], ax
test    byte ptr [ebp+0], 2
jz      loc_4CDA0F
test    byte ptr [ecx], 10h
jz      short loc_4CDA0F
mov     esi, [ebp+0Ah]
sar     esi, 18h
mov     eax, [ecx+34h]
lea     edi, [ebp+14h]
lea     esi, [eax+esi*8+190h]
movsd
movsd
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
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
mov     ecx, [ebp+0Ah]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 4
mov     esi, [esp+1Ch+var_1C]
mov     esi, [esi+34h]
mov     ecx, 0Ch
lea     edi, [ebp+8Ch]
lea     esi, [esi+eax+250h]
rep movsd
movsx   ax, byte ptr [ebp+0Dh]
mov     [ebp+0C2h], ax

loc_4CDA0F:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4CDA1E
mov     eax, ebp
call    sub_4CE50D

loc_4CDA1E:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4CDA25[ecx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_4CDA41
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [eax], 0FEh

loc_4CDA41:
mov     eax, [esp+1Ch+var_1C]
mov     dx, [eax+0Ah]
test    dx, dx
jz      short loc_4CDA54
mov     ebx, edx
dec     ebx
mov     [eax+0Ah], bx

loc_4CDA54:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 10h
jnz     short loc_4CDAC6
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
movsx   ax, byte ptr [ebp+0Dh]
mov     [ebp+0C2h], ax
mov     ax, [ebp+58h]
mov     ds:word_55D3C8, ax
mov     ax, [ebp+54h]
mov     ds:word_55D3CA, ax
mov     ax, [ebp+56h]
mov     ds:word_55D3CC, ax
lea     ecx, [ebp+8Ch]  ; int
mov     edx, ecx
mov     eax, offset word_55D3C8
call    sub_4EF5F7
mov     edx, 200h
mov     ds:dword_55D3D0, edx
mov     ds:dword_55D3D4, edx
mov     ds:dword_55D3D8, edx
mov     edx, offset dword_55D3D0
mov     eax, ecx
call    sub_4EF689

loc_4CDAC6:
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 40h
jz      short loc_4CDB1D
mov     edi, offset word_55D3C8
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset dword_55D3D0
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1800h
mov     eax, ebp
call    sub_4DD43B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
lea     edi, [ebp+14h]
mov     esi, offset word_55D3C8
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset dword_55D3D0
movsd
movsd
movsd
movsd

loc_4CDB1D:
test    byte ptr [ebp+0], 1
jz      loc_4CDBB9
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 8
jz      loc_4CDBB9
mov     edi, offset word_55D3C8
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset dword_55D3D0
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1800h
mov     eax, ebp
call    sub_4DD43B
mov     edi, [esp+1Ch+var_1C]
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+14h]
mov     esi, offset word_55D3C8
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, offset dword_55D3D0
movsd
movsd
movsd
movsd
push    0
push    offset unk_800000
xor     eax, eax
mov     ecx, [esp+24h+var_1C]
mov     al, [ecx+8]
or      eax, 9880000h
push    eax
lea     eax, [ecx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    0A000h
push    200h
lea     ebx, [ebp+14h]
lea     eax, [ecx+0Ch]
mov     ecx, 40h ; '@'
mov     edx, 50h ; 'P'
call    sub_4E02CB

loc_4CDBB9:
add     esp, 4

loc_4CDBBC:
pop     ebp

loc_4CDBBD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4CD927 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_106]


; Attributes: thunk

sub_4CDBC3 proc near
jmp     sub_4DE371
sub_4CDBC3 endp




sub_4CDBC8 proc near

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
mov     ebp, eax
add     eax, 0CCh
mov     [esp+24h+var_20], eax
mov     [esp+24h+var_24], offset byte_5F8364
mov     dl, [ebp+0Ah]
cmp     dl, 1
jb      short loc_4CDBFF
jbe     loc_4CDD09
cmp     dl, 2
jz      loc_4CDD76
jmp     loc_4CDDBE

loc_4CDBFF:
test    dl, dl
jnz     loc_4CDDBE
mov     byte ptr [ebp+0Ah], 1
mov     edi, offset unk_55D3E0
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, offset unk_55D3E8
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     ax, word ptr ds:dword_5F83B8+2
mov     [esp+24h+var_1C], eax
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0C00h
lea     edi, [ebp+14h]
mov     esi, offset byte_5F8364
add     esi, 14h
mov     edx, edi
mov     eax, esi
call    sub_4DDDB4
mov     word ptr ds:dword_5F83B8+2, ax
test    byte ptr [ebp+0Eh], 40h
jz      short loc_4CDC62
mov     ecx, 800h
jmp     short loc_4CDC67

loc_4CDC62:
mov     ecx, 0FFFFF800h

loc_4CDC67:
xor     ebx, ebx
xor     edx, edx
mov     eax, offset byte_5F8364
call    sub_4DD43B
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
mov     [ebp+56h], ax
mov     edx, [esp+24h+var_24]
mov     edx, [edx+12h]
sar     edx, 10h
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+44h], ax
mov     eax, [esp+24h+var_24]
mov     eax, [eax+16h]
sar     eax, 10h
mov     edx, [ebp+16h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+48h], ax
mov     edi, [esp+24h+var_24]
lea     edi, [edi+14h]
mov     esi, offset unk_55D3E0
movsd
movsd
mov     edi, [esp+24h+var_24]
lea     edi, [edi+1Ch]
mov     esi, offset unk_55D3E8
movsd
movsd
movsd
movsd
mov     eax, [esp+24h+var_1C]
mov     edx, [esp+24h+var_24]
mov     [edx+56h], ax
mov     eax, [esp+24h+var_20]
mov     word ptr [eax+4], 15h
mov     byte ptr [eax+8], 0
mov     dl, [eax]
and     dl, 0AFh
mov     [eax], dl
mov     dh, dl
or      dh, 40h
mov     [eax], dh

loc_4CDD09:
mov     eax, [esp+24h+var_20]
dec     word ptr [eax+4]
mov     eax, 10h
mov     edx, [esp+24h+var_20]
sub     ax, [edx+4]
add     eax, eax
mov     [ebp+46h], ax
mov     ax, [ebp+44h]
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
mov     eax, ebp
call    sub_42DE56
test    ah, 3Fh
jnz     short loc_4CDD72
test    byte ptr [edx+17h], 2
jz      short loc_4CDDBE

loc_4CDD72:
mov     byte ptr [ebp+0Ah], 2

loc_4CDD76:
call    sub_4DE13B
mov     esi, eax
test    eax, eax
jz      short loc_4CDDA4
mov     byte ptr [eax], 7
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1000h
mov     eax, ebp
call    sub_4DD43B
lea     edi, [esi+48h]
lea     esi, [ebp+14h]
movsd
movsd

loc_4CDDA4:
and     byte ptr [ebp+0], 0FDh
or      byte ptr [ebp+0Eh], 1
mov     eax, [esp+24h+var_20]
mov     ch, [eax]
or      ch, 1
mov     [eax], ch
mov     dl, ch
and     dl, 0A1h
mov     [eax], dl

loc_4CDDBE:
add     esp, 0Ch
jmp     loc_4CDBBC
sub_4CDBC8 endp




sub_4CDDC6 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4CDDE9
jbe     short loc_4CDE2A
cmp     al, 2
jz      loc_4CDE6F
jmp     loc_4CDBBD

loc_4CDDE9:
test    al, al
jnz     loc_4CDBBD
mov     byte ptr [edx+0Ah], 1
mov     word ptr [edx+48h], 0
mov     word ptr [edx+54h], 0
mov     eax, [ecx+34h]
mov     ax, [eax+56h]
mov     [edx+56h], ax
mov     word ptr [edx+58h], 0C00h
mov     word ptr [ecx+4], 20h ; ' '
mov     byte ptr [ecx+8], 0
mov     ah, [ecx]
and     ah, 0AFh
mov     [ecx], ah
mov     bl, ah
or      bl, 40h
mov     [ecx], bl

loc_4CDE2A:
mov     bx, [ecx+4]
dec     ebx
mov     [ecx+4], bx
test    bx, bx
jl      short loc_4CDE6B
mov     eax, 20h ; ' '
sub     eax, ebx
add     eax, eax
mov     [edx+46h], ax
add     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, edx
call    sub_42DE56
test    ah, 3Fh
jnz     short loc_4CDE6B
test    byte ptr [ecx+17h], 2
jz      loc_4CDBBD

loc_4CDE6B:
mov     byte ptr [edx+0Ah], 2

loc_4CDE6F:
call    sub_4DE13B
test    eax, eax
jz      short loc_4CDE8B
mov     byte ptr [eax], 7
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [edx+14h]
movsd
movsd

loc_4CDE8B:
and     byte ptr [edx], 0FDh
or      byte ptr [edx+0Eh], 1
mov     dl, [ecx]
or      dl, 1
mov     [ecx], dl
mov     dh, dl
and     dh, 0A1h
mov     [ecx], dh
jmp     loc_4CDBBD
sub_4CDDC6 endp

align 4
jpt_4CDED5 dd offset loc_4CDEDC ; jump table for switch statement
dd offset loc_4CDEFF
dd offset loc_4CDF27
dd offset loc_4CDF3F



sub_4CDEB8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 0CCh
mov     cl, [edx+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_4CDED5      ; jumptable 004CDED5 default case
and     ecx, 0FFh
jmp     jpt_4CDED5[ecx*4] ; switch jump

loc_4CDEDC:             ; jumptable 004CDED5 case 0
mov     byte ptr [edx+0Ah], 1
mov     word ptr [eax+4], 0Ah
mov     byte ptr [eax+8], 0
mov     dword ptr [eax+38h], 1000h
mov     dword ptr [eax+3Ch], 1000h
mov     dword ptr [eax+40h], 1000h

loc_4CDEFF:             ; jumptable 004CDED5 case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jl      short loc_4CDF16
add     dword ptr [eax+3Ch], 199h
jmp     short def_4CDED5 ; jumptable 004CDED5 default case

loc_4CDF16:
mov     byte ptr [edx+0Ah], 2
mov     word ptr [eax+4], 1Eh
mov     dword ptr [eax+3Ch], 2000h

loc_4CDF27:             ; jumptable 004CDED5 case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_4CDED5 ; jumptable 004CDED5 default case
mov     byte ptr [edx+0Ah], 3
mov     word ptr [eax+4], 0Fh

loc_4CDF3F:             ; jumptable 004CDED5 case 3
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jl      short loc_4CDF56
sub     dword ptr [eax+3Ch], 111h
jmp     short def_4CDED5 ; jumptable 004CDED5 default case

loc_4CDF56:
or      byte ptr [eax], 1
mov     dword ptr [eax+3Ch], 1000h

def_4CDED5:             ; jumptable 004CDED5 default case
add     eax, 38h ; '8'
lea     ecx, [edx+8Ch]
mov     edx, eax
mov     eax, ecx
call    sub_4EF689
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CDEB8 endp

align 4
jpt_4CDFCF dd offset loc_4CDFD6 ; jump table for switch statement
dd offset loc_4CE024
dd offset loc_4CE06C
dd offset loc_4CE0C1
dd offset loc_4CE163
dd offset loc_4CE1C4
dd offset loc_4CE30E
dd offset loc_4CE3FF
dd offset loc_4CE42C



sub_4CDF9C proc near

var_30= dword ptr -30h
var_28= byte ptr -28h
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
add     eax, 0CCh
mov     [esp+40h+var_1C], eax
mov     esi, offset byte_5F8364
test    byte ptr [eax+17h], 2
jz      short loc_4CDFBF
mov     byte ptr [eax+8], 0

loc_4CDFBF:
mov     al, [ebp+0Ah]
cmp     al, 8           ; switch 9 cases
ja      def_4CDFCF      ; jumptable 004CDFCF default case
and     eax, 0FFh
jmp     jpt_4CDFCF[eax*4] ; switch jump

loc_4CDFD6:             ; jumptable 004CDFCF case 0
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+54h], 0
mov     eax, [esp+40h+var_1C]
mov     eax, [eax+34h]
mov     ax, [eax+56h]
mov     [ebp+56h], ax
mov     word ptr [ebp+58h], 0C00h
or      byte ptr [ebp+0Eh], 10h
mov     eax, [esp+40h+var_1C]
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+6], 0
mov     bl, [eax]
and     bl, 0A7h
mov     [eax], bl
mov     bh, bl
or      bh, 48h
mov     [eax], bh
lea     edx, [ebp+14h]
mov     eax, 0C5h
call    sub_4D8BC3

loc_4CE024:             ; jumptable 004CDFCF case 1
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_4CE058
test    byte ptr [eax+4], 1
jz      short loc_4CE04A

loc_4CE03C:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
jmp     loc_4CE471

loc_4CE04A:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h
jmp     loc_4CE471

loc_4CE058:
mov     byte ptr [ebp+0Ah], 2
mov     word ptr [ebp+44h], 100h
mov     byte ptr [eax+8], 20h ; ' '
mov     word ptr [eax+4], 14h

loc_4CE06C:             ; jumptable 004CDFCF case 2
mov     eax, [esp+40h+var_1C]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_4CE09D
sar     word ptr [ebp+44h], 1
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 4
lea     edx, [eax+80h]
xor     ecx, ecx
mov     ebx, 0A0h
jmp     loc_4CE471

loc_4CE09D:
mov     byte ptr [ebp+0Ah], 3
mov     word ptr [ebp+46h], 0Ch
mov     word ptr [ebp+4Eh], 4
mov     word ptr [ebp+44h], 30h ; '0'
mov     word ptr [ebp+4Ch], 10h
mov     word ptr [eax+4], 8
jmp     short loc_4CE0CC

loc_4CE0C1:             ; jumptable 004CDFCF case 3
mov     eax, [esp+40h+var_1C]
cmp     word ptr [eax+4], 0
jz      short loc_4CE0DC

loc_4CE0CC:
mov     ax, [ebp+4Ch]
add     [ebp+44h], ax
mov     eax, [esp+40h+var_1C]
dec     word ptr [eax+4]

loc_4CE0DC:
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
test    ah, 3Fh
jnz     short loc_4CE106
mov     eax, [esp+40h+var_1C]
test    byte ptr [eax+17h], 2
jz      short loc_4CE130

loc_4CE106:
mov     eax, [esp+40h+var_1C]
cmp     word ptr [eax+4], 0
jnz     short loc_4CE130
mov     byte ptr [ebp+0Ah], 5
or      byte ptr [ebp+0Eh], 4
mov     eax, 0Ah
call    sub_42A701
lea     edx, [ebp+14h]
mov     eax, 0C6h
call    sub_4D8BC3

loc_4CE130:
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [esi+54h]
sar     edx, 10h
lea     eax, [esi+1Ch]
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      def_4CDFCF      ; jumptable 004CDFCF default case
mov     byte ptr [ebp+0Ah], 4
jmp     loc_4CE482

loc_4CE163:             ; jumptable 004CDFCF case 4
mov     eax, [ebp+42h]
sar     eax, 10h
shl     eax, 4
lea     edx, [eax+80h]
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
sar     word ptr [ebp+44h], 1
test    ah, 3Fh
jz      short loc_4CE1AC
mov     byte ptr [ebp+0Ah], 5
or      byte ptr [ebp+0Eh], 4
mov     eax, 0Ah
call    sub_42A701
lea     edx, [ebp+14h]
mov     eax, 0C6h
call    sub_4D8BC3

loc_4CE1AC:
cmp     word ptr [ebp+44h], 0
jnz     def_4CDFCF      ; jumptable 004CDFCF default case
mov     byte ptr [ebp+0Ah], 5
or      byte ptr [ebp+0Eh], 4
jmp     def_4CDFCF      ; jumptable 004CDFCF default case

loc_4CE1C4:             ; jumptable 004CDFCF case 5
test    byte ptr [ebp+0Eh], 8
jz      def_4CDFCF      ; jumptable 004CDFCF default case
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
mov     ecx, [ebp+0Ah]
sar     ecx, 18h
shl     ecx, 3
mov     eax, [esp+40h+var_1C]
mov     eax, [eax+34h]
add     eax, 190h
add     eax, ecx
mov     ecx, 20h ; ' '
call    sub_4DE552
mov     dx, [ebp+56h]
add     edx, eax
and     dh, 0Fh
mov     [ebp+56h], dx
test    ax, ax
jnz     def_4CDFCF      ; jumptable 004CDFCF default case
mov     byte ptr [ebp+0Ah], 6
lea     edi, [esp+40h+var_30]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [esp+40h+var_28]
lea     esi, [ebp+54h]
movsd
movsd
mov     esi, [esp+40h+var_1C]
mov     esi, [esi+34h]
lea     edi, [ebp+54h]
lea     esi, [esi+54h]
movsd
movsd
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     esi, [esp+40h+var_1C]
mov     esi, [esi+34h]
lea     edi, [ebp+14h]
lea     esi, [esi+eax*8+190h]
movsd
movsd
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
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     eax, ebp
call    sub_4DD43B
mov     edx, [ebp+12h]
sar     edx, 10h
mov     eax, [esp+0Eh]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+44h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     edx, [esp+40h+var_30]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+46h], ax
mov     eax, [ebp+16h]
sar     eax, 10h
mov     edx, [esp+40h+var_30+2]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 5
sbb     eax, edx
sar     eax, 5
mov     [ebp+48h], ax
lea     edi, [ebp+14h]
lea     esi, [esp+40h+var_30]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, esp
movsd
movsd
movsd
movsd
lea     edi, [ebp+54h]
lea     esi, [esp+40h+var_28]
movsd
movsd
mov     eax, [esp+40h+var_1C]
mov     word ptr [eax+4], 20h ; ' '

loc_4CE30E:             ; jumptable 004CDFCF case 6
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      short loc_4CE361

loc_4CE320:
mov     ax, [ebp+44h]
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
jmp     def_4CDFCF      ; jumptable 004CDFCF default case

loc_4CE361:
mov     byte ptr [ebp+0Ah], 7
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+40h+var_1C]
mov     edx, [edx+34h]
mov     edx, [edx+eax*8+18Eh]
sar     edx, 10h
mov     eax, [ebp+12h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     [ebp+44h], ax
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+40h+var_1C]
mov     edx, [edx+34h]
mov     eax, [edx+eax*8+190h]
sar     eax, 10h
mov     edx, [ebp+14h]
sar     edx, 10h
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     [ebp+46h], ax
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     edx, [esp+40h+var_1C]
mov     edx, [edx+34h]
mov     edx, [edx+eax*8+192h]
sar     edx, 10h
mov     eax, [ebp+16h]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     [ebp+48h], ax
mov     eax, [esp+40h+var_1C]
mov     word ptr [eax+4], 10h

loc_4CE3FF:             ; jumptable 004CDFCF case 7
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     loc_4CE320
mov     byte ptr [ebp+0Ah], 8
mov     word ptr [eax+4], 4
lea     edx, [ebp+14h]
mov     eax, 0C7h
call    sub_4D8BC3

loc_4CE42C:             ; jumptable 004CDFCF case 8
mov     eax, [esp+40h+var_1C]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4CE45E
mov     bh, [eax]
or      bh, 11h
mov     [eax], bh
mov     cl, bh
and     cl, 0B7h
mov     [eax], cl
mov     ch, [ebp+0Eh]
or      ch, 2
mov     [ebp+0Eh], ch
mov     al, ch
and     al, 0E7h
mov     [ebp+0Eh], al
jmp     short def_4CDFCF ; jumptable 004CDFCF default case

loc_4CE45E:
test    byte ptr [eax+4], 1
jnz     loc_4CE03C
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC0h

loc_4CE471:
mov     eax, ebp
call    sub_4DD43B

def_4CDFCF:             ; jumptable 004CDFCF default case
cmp     byte ptr [ebp+0Ah], 5
jnb     loc_4CE505

loc_4CE482:
mov     eax, [esp+40h+var_1C]
mov     ax, [eax+6]
mov     edx, eax
inc     edx
mov     ecx, [esp+40h+var_1C]
mov     [ecx+6], dx
test    al, 1
jnz     short loc_4CE505
call    sub_4DE13B
mov     [esp+40h+var_20], eax
test    eax, eax
jz      short loc_4CE505
lea     edi, [esp+40h+var_30]
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFD00h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [esp+40h+var_20]
mov     byte ptr [eax], 9
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 0
mov     ax, [ebp+14h]
mov     edx, [esp+40h+var_20]
mov     [edx+1Ch], ax
mov     ax, [ebp+16h]
mov     [edx+1Eh], ax
mov     ax, [ebp+18h]
mov     [edx+20h], ax
lea     edi, [ebp+14h]
lea     esi, [esp+40h+var_30]
movsd
movsd
lea     edi, [ebp+1Ch]
mov     esi, esp
movsd
movsd
movsd
movsd

loc_4CE505:
add     esp, 28h
jmp     loc_4CDBBC
sub_4CDF9C endp




sub_4CE50D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 0CCh
mov     ebx, [eax+14h]
and     ebx, 0FFFFFFh
jz      short loc_4CE56C
lea     edx, [ecx+14h]
test    byte ptr [eax+17h], 38h
jz      short loc_4CE562
mov     si, [ecx+6Eh]
sub     esi, ebx
mov     [ecx+6Eh], si
test    si, si
jg      short loc_4CE54C
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
mov     eax, 0A2h
jmp     short loc_4CE551

loc_4CE54C:
mov     eax, 0A0h

loc_4CE551:
call    sub_4D8BC3
mov     dword ptr [ecx+0C4h], 0FFFFFFh
jmp     short loc_4CE56C

loc_4CE562:
mov     eax, 0A3h
call    sub_4D8BC3

loc_4CE56C:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CE50D endp




sub_4CE576 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4CE57F[ecx*4]
mov     dword ptr [edx+0CCh], 0
pop     edx
pop     ecx
retn
sub_4CE576 endp




sub_4CE593 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 14h
mov     ecx, eax
xor     ah, ah
mov     [esp+28h+var_18], ah
lea     ebx, [ecx+0DCh]
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
lea     edx, [esp+28h+var_18]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
movsx   ax, byte ptr [ecx+0Ch]
mov     [ebx+4], ax
movsx   ax, byte ptr [ecx+0Dh]
mov     [ebx+6], ax
movsx   ax, byte ptr [ecx+0Eh]
mov     [ebx+8], ax
movsx   ax, byte ptr [ecx+0Fh]
mov     [ebx+0Ah], ax
mov     word ptr [ebx+0Ch], 0
mov     ax, [ecx+56h]
mov     [ebx+0Eh], ax
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+0CCh], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4CE682
add     esp, 14h

loc_4CE67C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CE593 endp




sub_4CE682 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+0DCh]
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
mov     dword ptr [eax+0C4h], offset unk_808080
call    rand_
mov     [ecx+2], ax
test    byte ptr [ebp+0CFh], 39h
jz      short loc_4CE6D3
lea     edx, [ebp+14h]
mov     eax, 0A3h
call    sub_4D8BC3

loc_4CE6D3:
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_4CE6DA[ecx*4]
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF5F7
mov     edx, 200h
mov     ds:dword_55D3F8, edx
mov     ds:dword_55D3FC, edx
mov     ds:dword_55D400, edx
mov     edx, offset dword_55D3F8
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4CE738
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 50h ; 'P'
mov     eax, ebp
call    sub_4ED88B

loc_4CE738:
test    byte ptr [ebp+0], 1
jz      short loc_4CE778
push    80h
push    0
mov     al, [ebp+3]
and     al, 7Fh
and     eax, 0FFh
add     eax, eax
or      eax, 29000000h
push    eax
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 0E000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_4CE778:
pop     ebp
jmp     loc_4CE67C
sub_4CE682 endp



; Attributes: thunk

sub_4CE77E proc near
jmp     sub_4DE371
sub_4CE77E endp




sub_4CE783 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edi, eax
lea     esi, [eax+0DCh]
mov     ax, [esi+0Eh]
mov     [edi+56h], ax
mov     al, [edi+0Ah]
cmp     al, 1
jb      short loc_4CE7AE
jbe     short loc_4CE7CC
cmp     al, 2
jz      loc_4CE819
jmp     loc_4CE841

loc_4CE7AE:
test    al, al
jnz     loc_4CE841
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     loc_4CE841
mov     byte ptr [edi+0Ah], 1

loc_4CE7CC:
test    byte ptr [edi+0CFh], 4
jz      short loc_4CE7F1
neg     word ptr [esi+0Ah]
mov     eax, [edi+0Ah]
sar     eax, 18h
mov     edx, [esi+4]
sar     edx, 10h
sub     eax, edx
test    eax, eax
jge     short loc_4CE7ED
neg     eax

loc_4CE7ED:
mov     [esi+6], ax

loc_4CE7F1:
mov     ax, [esi+6]
dec     eax
mov     [esi+6], ax
test    ax, ax
jl      short loc_4CE815
mov     edx, [esi+8]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
jmp     short loc_4CE841

loc_4CE815:
mov     byte ptr [edi+0Ah], 2

loc_4CE819:
mov     bx, [esi+8]
dec     ebx
mov     [esi+8], bx
test    bx, bx
jge     short loc_4CE841
mov     byte ptr [edi+0Ah], 1
movsx   ax, byte ptr [edi+0Dh]
mov     [esi+6], ax
movsx   ax, byte ptr [edi+0Eh]
mov     [esi+8], ax
neg     word ptr [esi+0Ah]

loc_4CE841:
mov     ax, [esi+0Ch]
mov     [edi+56h], ax
mov     al, [edi+3]
and     al, 7Fh
xor     ah, ah
shl     eax, 4
add     ax, [esi+0Ch]
and     ah, 0Fh
mov     [esi+0Ch], ax
jmp     loc_4CE67C
sub_4CE783 endp




sub_4CE863 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+0CCh]
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
mov     dword ptr [eax+0C4h], offset unk_808080
call    rand_
mov     [ecx+2], ax
xor     edx, edx
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_4CE8A8[edx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4CE8F1
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 80h
mov     eax, ebp
call    sub_4ED88B

loc_4CE8F1:
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697
add     esp, 10h
sub_4CE863 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4CE9EE

loc_4CE90A:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_4CE9EE
; START OF FUNCTION CHUNK FOR sub_4CE911
;   ADDITIONAL PARENT FUNCTION sub_4CEB14

loc_4CE90B:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4CE911



sub_4CE911 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= byte ptr -18h

; FUNCTION CHUNK AT 004CE90B SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 14h
mov     ecx, eax
xor     ah, ah
mov     [esp+28h+var_18], ah
lea     ebx, [ecx+0CCh]
or      byte ptr [ecx], 6
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
lea     edx, [esp+28h+var_18]
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], 0
mov     bl, [ecx+3]
cmp     bl, 1
jb      short loc_4CE97D
jbe     short loc_4CE98A
cmp     bl, 2
jz      short loc_4CE994
jmp     short loc_4CE9A2

loc_4CE97D:
test    bl, bl
jnz     short loc_4CE9A2
mov     byte ptr [ecx+8], 1
mov     [ecx+9], bl
jmp     short loc_4CE99C

loc_4CE98A:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
jmp     short loc_4CE99C

loc_4CE994:
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1

loc_4CE99C:
mov     word ptr [ecx+0Ah], 0

loc_4CE9A2:
mov     dword ptr [ecx+0C4h], offset unk_808080
mov     dword ptr [ecx+0CCh], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF5F7
mov     edx, 200h
mov     [esp+28h+var_28], edx
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_20], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     eax, ecx
call    sub_4CE9EE
add     esp, 14h
jmp     loc_4CE90B
sub_4CE911 endp




sub_4CE9EE proc near

; FUNCTION CHUNK AT 004CE90A SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+0CCh]
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4CEA01[ecx*4]
lea     edi, [ebp+0BCh]
lea     esi, [ebp+14h]
movsd
movsd
test    byte ptr [edx], 2
jz      short loc_4CEA3F
push    80h
push    0
push    500000Ah
push    edx
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 30h ; '0'
call    sub_4E01FC

loc_4CEA3F:
mov     dword ptr [ebp+0CCh], 0
jmp     loc_4CE90A
sub_4CE9EE endp ; sp-analysis failed



; Attributes: thunk

sub_4CEA4E proc near
jmp     sub_4DE371
sub_4CEA4E endp




sub_4CEA53 proc near
push    ebx
push    ecx
push    edx
push    esi
lea     edx, [eax+0CCh]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4CEA71
jbe     short loc_4CEA96
cmp     bl, 2
jz      short loc_4CEAB6
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CEA71:
test    bl, bl
jnz     loc_4CEB0F
inc     bl
mov     [eax+0Ah], bl
mov     word ptr [edx+4], 40h ; '@'
mov     word ptr [eax+46h], 0FFC0h
mov     word ptr [eax+4Eh], 1
mov     word ptr [edx+6], 0

loc_4CEA96:
mov     bx, [eax+46h]
test    bx, bx
jz      short loc_4CEAAD
mov     dx, [eax+4Eh]
mov     ecx, ebx
add     ecx, edx
mov     [eax+46h], cx
jmp     short loc_4CEAF8

loc_4CEAAD:
inc     byte ptr [eax+0Ah]
mov     word ptr [edx+4], 0

loc_4CEAB6:
mov     si, [edx+4]
dec     esi
mov     [edx+4], si
test    si, si
jge     short loc_4CEAF0
mov     bx, [edx+6]
inc     ebx
mov     [edx+6], bx
mov     ecx, ebx
xor     ch, bh
and     cl, 3
mov     [edx+6], cx
mov     ecx, [edx+4]
sar     ecx, 10h
movsx   cx, ds:byte_538D44[ecx]
mov     [eax+4Eh], cx
mov     word ptr [edx+4], 1Fh

loc_4CEAF0:
mov     dx, [eax+4Eh]
add     [eax+46h], dx

loc_4CEAF8:
mov     edx, [eax+44h]
sar     edx, 10h
shl     edx, 0Ch
add     [eax+20h], edx
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B

loc_4CEB0F:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4CEA53 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_107]



sub_4CEB14 proc near

; FUNCTION CHUNK AT 004CE90B SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4CEB2F
jbe     short loc_4CEB8C
jmp     loc_4CE90B

loc_4CEB2F:
test    al, al
jnz     loc_4CE90B
inc     al
mov     [esi+0Ah], al
mov     eax, [esi+0Ah]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D4E[eax]
mov     [esi+44h], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D48[eax]
mov     [edi+0Eh], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D4A[eax]
mov     [edi+10h], ax
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ax, ds:word_538D4C[eax]
mov     [edi+12h], ax

loc_4CEB8C:
mov     eax, [esi+9]
sar     eax, 18h
shl     eax, 4
mov     ecx, ds:dword_538D54[eax]
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+0Eh]
lea     eax, [esi+14h]
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
mov     edx, [esi+12h]
sar     edx, 10h
mov     eax, [edi+0Ch]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     ecx, [esi+16h]
sar     ecx, 10h
mov     edx, [edi+10h]
sar     edx, 10h
sub     ecx, edx
mov     edx, ecx
mov     edi, [esi+9]
sar     edi, 18h
shl     edi, 4
imul    eax, eax
imul    edx, ecx
add     eax, edx
cmp     eax, ds:dword_538D50[edi]
jnb     loc_4CE90B
inc     byte ptr [esi+0Ah]
jmp     loc_4CE90B
sub_4CEB14 endp




sub_4CEC0D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+0CCh]
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4CEC27
jbe     short loc_4CEC50
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4CEC27:
test    al, al
jnz     short loc_4CEC80
inc     al
mov     [ecx+0Ah], al
mov     word ptr [esi+4], 82h
mov     word ptr [ecx+46h], 0FFF0h
mov     word ptr [ecx+4Eh], 0FFFCh
xor     ebx, ebx
xor     edx, edx
mov     eax, 156h
call    sub_4D89E4

loc_4CEC50:
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+20h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     short loc_4CEC80
inc     byte ptr [ecx+0Ah]

loc_4CEC80:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CEC0D endp




sub_4CEC85 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
add     eax, 0CCh
mov     [esp+2Ch+var_1C], eax
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
call    rand_
mov     edx, [esp+2Ch+var_1C]
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+8]
mov     eax, ebp
call    ds:funcs_4CECC7[ecx*4]
lea     ecx, [ebp+8Ch]  ; int
lea     eax, [ebp+54h]
mov     edx, ecx
call    sub_4EF638
mov     edx, 200h
mov     [esp+2Ch+var_2C], edx
mov     [esp+2Ch+var_28], edx
mov     [esp+2Ch+var_24], edx
mov     edx, esp
mov     eax, ecx
call    sub_4EF689
test    byte ptr [ebp+0], 2
jz      short loc_4CED2B
mov     edx, [ebp+56h]
sar     edx, 10h
mov     ecx, edx
sar     ecx, 4
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ebx, 2C0h
sub     ebx, eax
sar     edx, 6
mov     eax, 32h ; '2'
sub     eax, edx
mov     edx, eax
xor     ecx, ecx
mov     eax, ebp
call    sub_4ED88B

loc_4CED2B:
test    byte ptr [ebp+0], 1
jz      short loc_4CED8A
mov     eax, [esp+2Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4CED8A
sub     word ptr [ebp+16h], 20h ; ' '
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
push    80h
push    0
push    4880000h
mov     eax, [esp+38h+var_1C]
add     eax, 8
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [ebp+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 20h ; ' '
call    sub_4E01FC
add     word ptr [ebp+16h], 20h ; ' '
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax

loc_4CED8A:
add     esp, 14h
pop     ebp

loc_4CED8E:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CEC85 endp




sub_4CED94 proc near

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
lea     ebx, [eax+0CCh]
lea     edi, [ecx+0BCh]
lea     esi, [ecx+14h]
movsd
movsd
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
mov     dword ptr [ecx+54h], 0
mov     dword ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     word ptr [ecx+54h], 400h
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     word ptr [ebx], 0
mov     dword ptr [ebx+4], 0
lea     ebx, [ecx+8Ch]
lea     eax, [ecx+54h]
mov     edx, ebx
call    sub_4EF638
mov     edx, 200h
mov     [esp+24h+var_24], edx
mov     [esp+24h+var_20], edx
mov     [esp+24h+var_1C], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     word ptr [ecx+6Eh], 400h
mov     dword ptr [ecx+78h], offset unk_538DBC
mov     dword ptr [ecx+10h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 1
mov     word ptr [ecx+0Ah], 0
mov     dword ptr [ecx+0C4h], offset unk_808080
add     esp, 10h
jmp     loc_4CED8E
sub_4CED94 endp




sub_4CEE76 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+0CCh]
xor     ebx, ebx
mov     bl, [eax+9]
call    ds:funcs_4CEE88[ebx*4]
lea     edi, [edx+0BCh]
lea     esi, [edx+14h]
movsd
movsd
test    byte ptr [ecx], 1
jz      loc_4CED8E
mov     byte ptr [edx+9], 0
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh
jmp     loc_4CED8E
sub_4CEE76 endp



; Attributes: thunk

sub_4CEEB5 proc near
jmp     sub_4DE371
sub_4CEEB5 endp




sub_4CEEBA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
add     eax, 0CCh
mov     edx, offset byte_5F8364
mov     bl, [ecx+0Ah]
cmp     bl, 1
jb      short loc_4CEEDE
jbe     short loc_4CEEF2
cmp     bl, 2
jz      short loc_4CEF29
jmp     loc_4CEFB0

loc_4CEEDE:
test    bl, bl
jnz     loc_4CEFB0
or      byte ptr [ecx], 2
inc     byte ptr [ecx+0Ah]
mov     word ptr [eax+4], 3Ch ; '<'

loc_4CEEF2:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jl      short loc_4CEF16
sub     word ptr [ecx+16h], 2
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
mov     [ecx+20h], eax
jmp     loc_4CEFB0

loc_4CEF16:
inc     byte ptr [ecx+0Ah]
mov     bx, [ecx+16h]
mov     [ecx+4Eh], bx
mov     word ptr [ecx+46h], 10h
jmp     short loc_4CEF30

loc_4CEF29:
cmp     word ptr [eax+4], 40h ; '@'
jnz     short loc_4CEF36

loc_4CEF30:
mov     word ptr [eax+4], 0

loc_4CEF36:
mov     bx, [ecx+54h]
test    bx, bx
jz      short loc_4CEF49
sub     ebx, 10h
and     bh, 0Fh
mov     [ecx+54h], bx

loc_4CEF49:
mov     bx, [ecx+56h]
add     ebx, 20h ; ' '
and     bh, 0Fh
mov     [ecx+56h], bx
mov     si, [ecx+58h]
cmp     si, 400h
jz      short loc_4CEF6E
mov     ebx, esi
add     ebx, 10h
and     bh, 0Fh
mov     [ecx+58h], bx

loc_4CEF6E:
mov     ebx, [eax+2]
sar     ebx, 10h
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
mov     esi, [ecx+44h]
sar     esi, 10h
imul    esi, ebx
sar     esi, 0Ch
mov     ebx, [ecx+4Ch]
sar     ebx, 10h
add     ebx, esi
mov     [ecx+16h], bx
mov     ebx, [ecx+44h]
sar     ebx, 10h
shl     ebx, 0Ch
mov     [ecx+20h], ebx
mov     bx, [eax+4]
inc     ebx
xor     bh, bh
and     bl, 3Fh
mov     [eax+4], bx

loc_4CEFB0:
mov     eax, [ecx+12h]
sar     eax, 10h
mov     ebx, [edx+12h]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     eax, [ecx+14h]
sar     eax, 10h
mov     esi, [edx+14h]
sar     esi, 10h
sub     eax, esi
mov     esi, [ecx+16h]
sar     esi, 10h
mov     edx, [edx+16h]
sar     edx, 10h
sub     esi, edx
mov     edx, esi
test    eax, eax
jge     short loc_4CEFE4
neg     eax

loc_4CEFE4:
cmp     eax, 80h
jge     short loc_4CF013
imul    ebx, ebx
imul    edx, edx
add     edx, ebx
cmp     edx, 400h
jge     short loc_4CF013
xor     ebx, ebx
xor     edx, edx
mov     eax, 80010005h
call    sub_4D89E4
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0

loc_4CF013:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4CEEBA endp




sub_4CF018 proc near
and     byte ptr [eax], 0FDh
retn
sub_4CF018 endp




sub_4CF01C proc near
or      byte ptr [eax], 2
retn
sub_4CF01C endp




sub_4CF020 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+0CCh]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4CF03A
cmp     al, 1
jz      short loc_4CF047
pop     edx
pop     ecx
pop     ebx
retn

loc_4CF03A:
or      byte ptr [ecx], 2
mov     byte ptr [ecx+0Ah], 1
mov     word ptr [ecx+66h], 400h

loc_4CF047:
mov     ax, [ecx+4Ch]
add     [ecx+44h], ax
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     ax, [ecx+50h]
add     [ecx+48h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_42DE56
test    ah, 10h
jz      short loc_4CF0CF
cmp     word ptr [ecx+66h], 0
jnz     short loc_4CF0A4
or      byte ptr [ebx], 1

loc_4CF0A4:
sar     word ptr [ecx+44h], 1
sar     word ptr [ecx+48h], 1
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+50h], 0
mov     ax, [ecx+56h]
add     ax, [ecx+66h]
and     ah, 0Fh
mov     [ecx+56h], ax
sub     word ptr [ecx+66h], 20h ; ' '
or      byte ptr [ebx], 2

loc_4CF0CF:
pop     edx
pop     ecx
pop     ebx
retn
sub_4CF020 endp




sub_4CF0D3 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+0CCh]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4CF0EB
cmp     al, 1
jz      short loc_4CF0FE
pop     edx
pop     ecx
retn

loc_4CF0EB:
or      byte ptr [edx], 2
mov     byte ptr [edx+0Ah], 1
mov     word ptr [edx+46h], 0FFCEh
mov     word ptr [edx+4Eh], 4

loc_4CF0FE:
mov     ax, [edx+46h]
add     [edx+16h], ax
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     ax, [edx+4Eh]
add     [edx+46h], ax
mov     eax, edx
call    sub_42DE56
test    ah, 10h
jz      short loc_4CF12D
mov     byte ptr [edx+0Ah], 2
or      byte ptr [ecx], 1

loc_4CF12D:
pop     edx
pop     ecx
retn
sub_4CF0D3 endp




sub_4CF130 proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4CF14E
mov     eax, edx
call    sub_4DE371
mov     eax, 611h
call    sub_47E8B8
inc     byte ptr [edx+0Ah]

loc_4CF14E:
