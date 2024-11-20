loc_41319A:
mov     edx, ebx
mov     eax, ecx
call    sub_413467
pop     edx
pop     ecx
pop     ebx
retn
sub_413176 endp




sub_4131A7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_413427
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1

loc_4131F7:
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4131A7 endp




sub_413200 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413223
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_413223:
mov     eax, ds:dword_560BEC
cmp     eax, 28h ; '('
jb      short loc_41324B
jbe     short loc_413239
cmp     eax, 41h ; 'A'
jz      short loc_413240
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_413239:
mov     ebx, 1
jmp     short loc_413242

loc_413240:
xor     ebx, ebx

loc_413242:
mov     edx, esi
mov     eax, ecx
call    sub_413427

loc_41324B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413200 endp




sub_413250 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_413427
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 3
jmp     loc_4131F7
sub_413250 endp




sub_4132A8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4132D9
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_413427
inc     byte ptr [ecx+0Ah]

loc_4132D9:
mov     eax, ds:dword_560BEC
cmp     eax, 2Dh ; '-'
jb      short loc_413301
jbe     short loc_41330D
cmp     eax, 96h
jb      short loc_4132FA
jbe     short loc_41330D
cmp     eax, 0C0h

loc_4132F3:
jz      short loc_413314
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4132FA:
cmp     eax, 87h
jmp     short loc_4132F3

loc_413301:
cmp     eax, 0Ah
jb      short loc_413322
jbe     short loc_41330D
cmp     eax, 1Eh
jmp     short loc_4132F3

loc_41330D:
mov     ebx, 3
jmp     short loc_413319

loc_413314:
mov     ebx, 0Bh

loc_413319:
mov     edx, esi
mov     eax, ecx
call    sub_413427

loc_413322:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_4132A8 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_42]



sub_413327 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41335C
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_413427
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41335C:
mov     eax, ds:dword_560BEC
cmp     eax, 0D2h
jb      short loc_4133B5
jbe     loc_4133F1
cmp     eax, 140h
jb      short loc_41339C
jbe     loc_413406
cmp     eax, 16Dh
jb      loc_413422
jbe     loc_41340D
cmp     eax, 190h
jz      loc_413414
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41339C:
cmp     eax, 11Dh
jb      loc_413422
jbe     short loc_4133F8
cmp     eax, 12Ch
jz      short loc_4133FF
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4133B5:
cmp     eax, 91h
jb      short loc_4133D7
jbe     short loc_4133EA
cmp     eax, 9Bh
jb      loc_413422
jbe     short loc_4133F1
cmp     eax, 0B4h
jz      short loc_4133F8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4133D7:
cmp     eax, 50h ; 'P'
jb      short loc_413422
jbe     short loc_4133EA
cmp     eax, 64h ; 'd'
jnz     short loc_413422
mov     ebx, 6
jmp     short loc_413419

loc_4133EA:
mov     ebx, 7
jmp     short loc_413419

loc_4133F1:
mov     ebx, 0Ch
jmp     short loc_413419

loc_4133F8:
mov     ebx, 5
jmp     short loc_413419

loc_4133FF:
mov     ebx, 8
jmp     short loc_413419

loc_413406:
mov     ebx, 0Dh
jmp     short loc_413419

loc_41340D:
mov     ebx, 0Eh
jmp     short loc_413419

loc_413414:
mov     ebx, 0Ah

loc_413419:
mov     edx, esi
mov     eax, ecx
call    sub_413427

loc_413422:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413327 endp




sub_413427 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50E1C6[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50E202[eax*4]
mov     [edx+10h], eax
retn
sub_413427 endp




sub_413467 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_413493
jbe     short loc_413497
cmp     ax, 7FFFh
jnz     short loc_413493
mov     word ptr [edx+4], 0
jmp     short loc_413497

loc_413493:
inc     word ptr [esi+4]

loc_413497:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_4134DC
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_4134DC:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_413507
jbe     short loc_41350B
cmp     ax, 7FFFh
jnz     short loc_413507
mov     word ptr [esi+0Ah], 0
jmp     short loc_41350B

loc_413507:
inc     word ptr [esi+0Ah]

loc_41350B:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_41355A
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_41355A:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_413467 endp




sub_413567 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+640h]
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   esi, byte ptr [eax+8]
mov     ebx, ecx
mov     edx, offset dword_560BDC
call    ds:funcs_4135A6[esi*4]
mov     edx, ecx
mov     eax, ebp
call    sub_413D26
mov     dl, [ebp+0ACh]
cmp     dl, [ebp+0ADh]
jz      short loc_4135DA
mov     ebx, [ecx]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ebp+0ACh]
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4135E1

loc_4135DA:
mov     eax, ebp
call    sub_4DEADD

loc_4135E1:
cmp     byte ptr [ecx+12h], 0
jz      short loc_4135FA
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4135FA:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413567 endp




sub_413601 proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, ebx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     byte ptr [ebx+12h], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_413CF4
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_413D0D
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     esi
pop     ecx
retn
sub_413601 endp

db 8Dh, 40h, 0
jpt_4136F7 dd offset loc_4136FE ; jump table for switch statement
dd offset loc_413721
dd offset loc_41379D
dd offset loc_4137E3
dd offset loc_413880
dd offset loc_41389F
dd offset loc_4138EB
dd offset loc_413946
dd offset loc_413975
dd offset loc_41399E
dd offset loc_4139BB
dd offset loc_4139F4
dd offset loc_413A1F
dd offset loc_413A77
dd offset loc_413AA1
dd offset loc_413B43
dd offset loc_413B5D
dd offset loc_413BBA
dd offset loc_413C30
dd offset loc_413C9C
dd offset loc_413CCA
dd offset def_4136F7



sub_4136DB proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+9]
cmp     dl, 15h         ; switch 22 cases
ja      def_4136F7      ; jumptable 004136F7 default case, case 21
and     edx, 0FFh
jmp     jpt_4136F7[edx*4] ; switch jump

loc_4136FE:             ; jumptable 004136F7 case 0
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 0Ah

loc_413713:             ; jumptable 004136F7 default case, case 21
jnz     def_4136F7

loc_413719:
inc     byte ptr [esi+9]

def_4136F7:             ; jumptable 004136F7 default case, case 21
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413721:             ; jumptable 004136F7 case 1
mov     bl, [eax+9]
cmp     bl, 1
jnz     short def_4136F7 ; jumptable 004136F7 default case, case 21
mov     eax, [eax+10h]
cmp     eax, 2Dh ; '-'
jb      short loc_413746
jbe     short loc_41377E
cmp     eax, 41h ; 'A'
jb      short def_4136F7 ; jumptable 004136F7 default case, case 21
jbe     short loc_413777
cmp     eax, 122h
jz      short loc_413788
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413746:
cmp     eax, 14h
jb      short def_4136F7 ; jumptable 004136F7 default case, case 21
jbe     short loc_413757
cmp     eax, 28h ; '('
jz      short loc_413777
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413757:
mov     ebx, 0Bh
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ecx+2], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413777:
xor     ebx, ebx
jmp     loc_413C18

loc_41377E:
mov     ebx, 0Bh
jmp     loc_413C18

loc_413788:
mov     byte ptr [esi+0ACh], 3
mov     word ptr [ecx+2], 0
add     [esi+9], bl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41379D:             ; jumptable 004136F7 case 2
cmp     byte ptr [eax+9], 2
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 4
mov     word ptr [ebx+2], 0
mov     ebx, 6
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [ecx+12h], 1
jmp     loc_413719

loc_4137E3:             ; jumptable 004136F7 case 3
cmp     byte ptr [eax+9], 2
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     eax, [eax+10h]
cmp     eax, 46h ; 'F'
jb      short loc_413816
jbe     short loc_413834
cmp     eax, 0DCh
jb      short loc_41380C
jbe     short loc_413848
cmp     eax, 15Eh
jz      short loc_41385B
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41380C:
cmp     eax, 78h ; 'x'

loc_41380F:
jz      short loc_41383E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413816:
cmp     eax, 28h ; '('
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     short loc_413826
cmp     eax, 3Ch ; '<'
jmp     short loc_41380F

loc_413826:
mov     ebx, 0Bh
mov     edx, ecx
mov     eax, esi
call    sub_413CF4

loc_413834:
mov     ebx, 0Ch
jmp     loc_413C18

loc_41383E:
mov     ebx, 1
jmp     loc_413C18

loc_413848:
mov     ebx, 0Bh

loc_41384D:
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41385B:
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ecx+2], 0
mov     ebx, 6
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 0Ch
jmp     loc_413A69

loc_413880:             ; jumptable 004136F7 case 4
cmp     byte ptr [esi+0A4h], 0Eh
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ebx+2], 0Eh
jmp     loc_413719

loc_41389F:             ; jumptable 004136F7 case 5
mov     byte ptr [esi+0ADh], 0FFh
mov     edi, [eax+10h]
cmp     edi, 186h
jz      short loc_41383E
cmp     edi, 1B3h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 0Ch
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ecx+2], 0Eh
jmp     loc_413719

loc_4138EB:             ; jumptable 004136F7 case 6
mov     ebp, [eax+10h]
cmp     ebp, 1EAh
jz      loc_41383E
cmp     ebp, 226h
jnz     short loc_41390C
mov     ebx, 8
jmp     loc_41384D

loc_41390C:
cmp     ebp, 27Bh
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
mov     byte ptr [esi+0ACh], 6
mov     word ptr [ecx+2], 0
jmp     loc_413719

loc_413946:             ; jumptable 004136F7 case 7
cmp     byte ptr [esi+0A4h], 7
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
add     word ptr [esi+14h], 0Ah
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     loc_413713

loc_413975:             ; jumptable 004136F7 case 8
mov     byte ptr [esi+0ACh], 7
mov     word ptr [ebx+2], 0
mov     word ptr [esi+56h], 0C00h
add     word ptr [esi+14h], 0Ah
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
jmp     loc_413719

loc_41399E:             ; jumptable 004136F7 case 9
add     word ptr [esi+14h], 0Ah
mov     edx, [esi+12h]
sar     edx, 10h
shl     edx, 10h
mov     [esi+1Ch], edx
cmp     dword ptr [eax+10h], 2CEh
jmp     loc_413713

loc_4139BB:             ; jumptable 004136F7 case 10
cmp     byte ptr [eax+9], 3
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 8
mov     word ptr [ecx+2], 0
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 3
jmp     loc_413A69

loc_4139F4:             ; jumptable 004136F7 case 11
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 4
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebp, [eax+10h]
cmp     ebp, 0Ah
jnz     short loc_413A17
mov     ebx, 0Dh
jmp     loc_413C18

loc_413A17:
cmp     ebp, 32h ; '2'
jmp     loc_413713

loc_413A1F:             ; jumptable 004136F7 case 12
cmp     byte ptr [eax+9], 4
jnz     short loc_413A35
cmp     dword ptr [eax+10h], 50h ; 'P'
jnz     short loc_413A35
mov     ebx, 3
jmp     loc_413C18

loc_413A35:
cmp     byte ptr [eax+9], 5
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 7

loc_413A50:
mov     word ptr [ecx+2], 0
mov     ebx, 3
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 6

loc_413A69:
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
jmp     loc_413719

loc_413A77:             ; jumptable 004136F7 case 13
cmp     byte ptr [eax+9], 6
jnz     short loc_413A8C
cmp     dword ptr [eax+10h], 1
jnz     short loc_413A8C
mov     byte ptr [esi+0ACh], 9
jmp     short loc_413A50

loc_413A8C:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A4h
mov     eax, esi
call    sub_4DD43B
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413AA1:             ; jumptable 004136F7 case 14
mov     dl, [eax+9]
cmp     dl, 6
jnz     short loc_413B0B
mov     eax, [eax+10h]
cmp     eax, 41h ; 'A'
jb      short loc_413ACA
jbe     short loc_413ADF
cmp     eax, 4Bh ; 'K'
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     short loc_413AE9
cmp     eax, 11Dh
jz      short loc_413AF3
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413ACA:
cmp     eax, 1Eh
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     short loc_413ADF
cmp     eax, 37h ; '7'
jz      short loc_413AE9
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413ADF:
mov     ebx, 0Eh
jmp     loc_413C18

loc_413AE9:
mov     ebx, 6
jmp     loc_413C18

loc_413AF3:
mov     ebx, 0Ah
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 10h
jmp     loc_413C18

loc_413B0B:
cmp     dl, 7
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 0Ah
mov     word ptr [ebx+2], 0
mov     ebx, 4
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 7
jmp     loc_413A69

loc_413B43:             ; jumptable 004136F7 case 15
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 8
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 14h
jmp     loc_413713

loc_413B5D:             ; jumptable 004136F7 case 16
cmp     byte ptr [eax+9], 8
jnz     short loc_413B81
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_413B81
mov     ebx, 5
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 8
jmp     loc_413C18

loc_413B81:
cmp     byte ptr [eax+9], 9
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     byte ptr [esi+0ACh], 0Bh
mov     word ptr [ecx+2], 0
mov     ebx, 6
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 9
jmp     loc_413A69

loc_413BBA:             ; jumptable 004136F7 case 17
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 9
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_413BF4
jbe     short loc_413C13
cmp     eax, 80h
jb      short loc_413BEA
jbe     short loc_413C13
cmp     eax, 0A5h
jz      short loc_413C26
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413BEA:
cmp     eax, 32h ; '2'
jz      short loc_413C0C
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413BF4:
cmp     eax, 5
jb      def_4136F7      ; jumptable 004136F7 default case, case 21
jbe     loc_413848
cmp     eax, 14h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21

loc_413C0C:
mov     ebx, 0Fh
jmp     short loc_413C18

loc_413C13:
mov     ebx, 9

loc_413C18:
mov     edx, ecx
mov     eax, esi
call    sub_413D0D
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413C26:
mov     ebx, 0Fh
jmp     loc_413A69

loc_413C30:             ; jumptable 004136F7 case 18
mov     dl, [eax+9]
cmp     dl, 9
jnz     short loc_413C65
mov     eax, [eax+10h]
cmp     eax, 0FAh
jb      short loc_413C58
jbe     loc_413848
cmp     eax, 104h
jz      loc_413848
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_413C58:
cmp     eax, 0F3h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
jmp     short loc_413C13

loc_413C65:
cmp     dl, 0Ch
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 1
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     [esi+0ACh], dl
mov     word ptr [ebx+2], 0
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
mov     ebx, 0Ah
jmp     loc_413A69

loc_413C9C:             ; jumptable 004136F7 case 19
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 0Ch
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, [eax+10h]
cmp     ebx, 5Ah ; 'Z'
jnz     short loc_413CBF
mov     ebx, 0Ch
jmp     loc_41384D

loc_413CBF:
cmp     ebx, 0B9h
jmp     loc_413713

loc_413CCA:             ; jumptable 004136F7 case 20
cmp     byte ptr [eax+9], 0Ch
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
cmp     dword ptr [eax+10h], 0C8h
jnz     def_4136F7      ; jumptable 004136F7 default case, case 21
mov     ebx, 0Ch
mov     edx, ecx
mov     eax, esi
call    sub_413CF4
jmp     loc_413719
sub_4136DB endp




sub_413CF4 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50E329[ebx*4]
mov     [edx+4], eax
retn
sub_413CF4 endp




sub_413D0D proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50E35D[ebx*4]
mov     [edx+8], eax
retn
sub_413D0D endp




sub_413D26 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_413D4B
jbe     short loc_413D4E
cmp     al, 7Fh
jnz     short loc_413D4B
mov     byte ptr [edx+0Eh], 0
jmp     short loc_413D4E

loc_413D4B:
inc     byte ptr [esi+0Eh]

loc_413D4E:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_413D90
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_413D90:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_413DB3
jbe     short loc_413DB6
cmp     al, 7Fh
jnz     short loc_413DB3
mov     byte ptr [esi+11h], 0
jmp     short loc_413DB6

loc_413DB3:
inc     byte ptr [esi+11h]

loc_413DB6:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_413DF8
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044

loc_413DF8:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_413D26 endp




sub_413E03 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_413E15[edx*4]
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
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_413E45
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_413E53

loc_413E45:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_413E53:
mov     edx, ebx
mov     eax, ecx
call    sub_4143B7
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413E03 endp




sub_413E62 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413ECD
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Eh]
inc     byte ptr [ecx+9]
inc     byte ptr [ecx+0Ah]

loc_413ECD:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413E62 endp




sub_413ED2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 5Ah ; 'Z'
jb      short loc_413F14
jbe     short loc_413EF2
cmp     eax, 9Bh
jz      short loc_413F06
jmp     short loc_413F14

loc_413EF2:
mov     ebx, 1
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Eh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_413F06:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B

loc_413F14:
cmp     byte ptr [ecx+0Eh], 0
jz      short loc_413F1F
sub     word ptr [ecx+18h], 3

loc_413F1F:
pop     edx
pop     ecx
pop     ebx
retn
sub_413ED2 endp




sub_413F23 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413F71
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+108h], 13h
mov     word ptr [ecx+14h], 0FF9Ch
mov     word ptr [ecx+18h], 64h ; 'd'
mov     word ptr [ecx+56h], 400h
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_413F71:
cmp     ds:dword_560BEC, 0Ah
jnz     short loc_413F88
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_413F88:
cmp     ds:dword_560BEC, 16h
jnz     short loc_413F9F
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_413F9F:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413F23 endp




sub_413FA4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_413FE0
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+108h], 4
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_413FE0:
cmp     ds:dword_560BEC, 0Ah
jnz     short loc_413FF7
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_413FF7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_413FA4 endp




sub_413FFC proc near
push    ebx
push    edx
lea     edx, [eax+640h]
mov     ebx, ds:dword_560BEC
cmp     ebx, 28h ; '('
jb      short loc_414020
jbe     short loc_41402F
cmp     ebx, 5Ah ; 'Z'
jb      short loc_41404E
jbe     short loc_41403D
cmp     ebx, 69h ; 'i'
jz      short loc_414044
pop     edx
pop     ebx
retn

loc_414020:
cmp     ebx, 5
jb      short loc_41404E
jbe     short loc_41402F
cmp     ebx, 14h
jz      short loc_414036
pop     edx
pop     ebx
retn

loc_41402F:
mov     ebx, 0Bh
jmp     short loc_414049

loc_414036:
mov     ebx, 0Ch
jmp     short loc_414049

loc_41403D:
mov     ebx, 0Dh
jmp     short loc_414049

loc_414044:
mov     ebx, 0Eh

loc_414049:
call    sub_414377

loc_41404E:
pop     edx
pop     ebx
retn
sub_413FFC endp




sub_414051 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414078
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_414078:
mov     edx, ds:dword_560BEC
cmp     edx, 0Ah
jz      short loc_414088
cmp     edx, 1Eh
jnz     short loc_414096

loc_414088:
mov     ebx, 0Fh
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414096:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414051 endp




sub_41409B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 1Eh
jb      short loc_4140C2
jbe     short loc_4140C7
cmp     eax, 32h ; '2'
jb      short loc_4140D3
jbe     short loc_4140C7
cmp     eax, 50h ; 'P'
jz      short loc_4140C7
pop     edx
pop     ecx
pop     ebx
retn

loc_4140C2:
cmp     eax, 1
jnz     short loc_4140D3

loc_4140C7:
mov     ebx, 11h
mov     eax, ecx
call    sub_414377

loc_4140D3:
pop     edx
pop     ecx
pop     ebx
retn
sub_41409B endp




sub_4140D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41410C
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 12h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41410C:
cmp     ds:dword_560BEC, 5
jnz     short loc_414123
mov     ebx, 13h
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414123:
cmp     ds:dword_560BEC, 3Ch ; '<'
jnz     short loc_41413A
mov     ebx, 12h
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41413A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4140D7 endp




sub_41413F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414174
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 14h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_414174:
mov     eax, ds:dword_560BEC
cmp     eax, 87h
jb      short loc_414197
jbe     short loc_4141A3
cmp     eax, 8Ch
jb      short loc_4141B8
jbe     short loc_4141AA
cmp     eax, 96h
jz      short loc_4141AA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_414197:
cmp     eax, 1Eh
jnz     short loc_4141B8
mov     ebx, 15h
jmp     short loc_4141AF

loc_4141A3:
mov     ebx, 16h
jmp     short loc_4141AF

loc_4141AA:
mov     ebx, 17h

loc_4141AF:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_4141B8:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41413F endp




sub_4141BD proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
jnz     short loc_4141D1
mov     word ptr [eax+18h], 12Ch
mov     [eax+0Dh], dl
inc     byte ptr [eax+0Ah]

loc_4141D1:
pop     edx
retn
sub_4141BD endp




sub_4141D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41420E
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 18h
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     word ptr [ecx+18h], 64h ; 'd'
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41420E:
mov     eax, ds:dword_560BEC
cmp     eax, 50h ; 'P'
jb      short loc_41422D
jbe     short loc_414239
cmp     eax, 69h ; 'i'
jb      short loc_41424E
jbe     short loc_414232
cmp     eax, 0AAh
jz      short loc_414240
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_41422D:
cmp     eax, 0Ah
jnz     short loc_41424E

loc_414232:
mov     ebx, 19h
jmp     short loc_414245

loc_414239:
mov     ebx, 1Ah
jmp     short loc_414245

loc_414240:
mov     ebx, 18h

loc_414245:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41424E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4141D3 endp




sub_414253 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0Ah
jb      short loc_414298
jbe     short loc_414275
cmp     eax, 69h ; 'i'
jz      short loc_41428A
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_414275:
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 19h
jmp     short loc_41428F

loc_41428A:
mov     ebx, 18h

loc_41428F:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_414298:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414253 endp




sub_41429D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0AAh
jb      short loc_4142C3
jbe     short loc_4142F6
cmp     eax, 0C8h
jz      short loc_4142FD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4142C3:
cmp     eax, 9Bh
jnz     short loc_41430B
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+114h], 14h
mov     ebx, 1Bh
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4142F6:
mov     ebx, 1Ch
jmp     short loc_414302

loc_4142FD:
mov     ebx, 1Dh

loc_414302:
mov     edx, esi
mov     eax, ecx
call    sub_414377

loc_41430B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41429D endp




sub_414310 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414367
mov     word ptr [ecx+14h], 3Ch ; '<'
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 96h
mov     word ptr [ecx+56h], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+114h], 7
mov     ebx, 1Fh
mov     edx, esi
mov     eax, ecx
call    sub_414377
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Eh]
inc     byte ptr [ecx+0Ah]

loc_414367:
cmp     byte ptr [ecx+0Eh], 0
jz      short loc_414372
sub     word ptr [ecx+18h], 8

loc_414372:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414310 endp




sub_414377 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50E614[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50E694[eax*4]
mov     [edx+10h], eax
retn
sub_414377 endp




sub_4143B7 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_4143E3
jbe     short loc_4143E7
cmp     ax, 7FFFh
jnz     short loc_4143E3
mov     word ptr [edx+4], 0
jmp     short loc_4143E7

loc_4143E3:
inc     word ptr [esi+4]

loc_4143E7:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_41442C
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_41442C:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_414457
jbe     short loc_41445B
cmp     ax, 7FFFh
jnz     short loc_414457
mov     word ptr [esi+0Ah], 0
jmp     short loc_41445B

loc_414457:
inc     word ptr [esi+0Ah]

loc_41445B:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_4144AA
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, ecx
call    sub_4EE044

loc_4144AA:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4143B7 endp




sub_4144B7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559140, dx
mov     eax, ds:dword_55913C
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 10000Fh

loc_4144F3:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4144B7 endp




sub_4144FF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559138, dx
mov     eax, ds:dword_559134
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 120011h
jmp     short loc_4144F3
sub_4144FF endp




sub_41453D proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_55913C
test    ecx, ecx
jz      loc_4145E3
cmp     ds:dword_559134, 0
jz      loc_4145E3
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41459F
jge     short loc_414577
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_414593

loc_414577:
inc     ds:word_559140
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_55913C+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41459F
add     eax, 4

loc_414593:
mov     ds:dword_55913C, eax
mov     eax, edx
call    sub_4144B7

loc_41459F:
mov     eax, ds:dword_559134
mov     di, [eax+2]
test    di, di
jz      short loc_4145E3
jge     short loc_4145BB
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4145D7

loc_4145BB:
inc     ds:word_559138
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559134+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_4145E3
add     eax, 4

loc_4145D7:
mov     ds:dword_559134, eax
mov     eax, edx
call    sub_4144FF

loc_4145E3:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41453D endp




sub_4145E8 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559148
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_414642
cmp     bl, ds:byte_560BE4
jnz     short loc_414642
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_414642
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_414642
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50E740[eax*4]
mov     ds:dword_55913C, eax
mov     eax, edx
call    sub_4144B7
add     ds:dword_559148, 6

loc_414642:
mov     eax, ds:dword_559144
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_414689
cmp     bl, [ecx+8]
jnz     short loc_414689
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_414689
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_414689
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50E814[eax*4]
mov     ds:dword_559134, eax
mov     eax, edx
call    sub_4144FF
add     ds:dword_559144, 6

loc_414689:
mov     eax, edx
call    sub_41453D
pop     edx
pop     ecx
pop     ebx
retn
sub_4145E8 endp




sub_414694 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
cmp     byte ptr ds:dword_77E7D5+1, 6
jnz     short loc_4146DE
mov     ds:dword_559148, offset unk_50E89A
mov     ds:dword_559144, offset unk_50E8CA
jmp     short loc_4146F2

loc_4146DE:
mov     ds:dword_559148, offset unk_50E84C
mov     ds:dword_559144, offset unk_50E864

loc_4146F2:
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_4147FD
pop     edx
pop     ecx
pop     ebx
retn
sub_414694 endp




sub_414700 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414719
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414719:
pop     edx
pop     ecx
pop     ebx
retn
sub_414700 endp




sub_41471D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414739
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414739:
pop     edx
pop     ecx
pop     ebx
retn
sub_41471D endp




sub_41473D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414759
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414759:
pop     edx
pop     ecx
pop     ebx
retn
sub_41473D endp




sub_41475D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414779
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414779:
pop     edx
pop     ecx
pop     ebx
retn
sub_41475D endp




sub_41477D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_414799
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414799:
pop     edx
pop     ecx
pop     ebx
retn
sub_41477D endp




sub_41479D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147B9
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147B9:
pop     edx
pop     ecx
pop     ebx
retn
sub_41479D endp




sub_4147BD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147D9
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147D9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4147BD endp




sub_4147DD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4147F9
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4147F9:
pop     edx
pop     ecx
pop     ebx
retn
sub_4147DD endp




sub_4147FD proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_414806[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_414825
mov     eax, ecx
call    sub_4DEADD

loc_414825:
mov     eax, ecx
call    sub_4145E8
pop     edx
pop     ecx
retn
sub_4147FD endp



; Attributes: thunk

sub_41482F proc near
jmp     sub_4DE336
sub_41482F endp




sub_414834 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_41483A[edx*4]
pop     edx
retn
sub_414834 endp




sub_414843 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_414866
mov     word ptr [ecx+56h], 0FA00h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414866:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_414843 endp




sub_414878 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_414895
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414895:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414878 endp




sub_4148A0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4148B6
jbe     short loc_4148E3
cmp     al, 2
jz      short loc_4148F5
pop     edx
pop     ecx
pop     ebx
retn

loc_4148B6:
test    al, al
jnz     short loc_4148FC
mov     word ptr [ecx+14h], 0FFA6h
mov     word ptr [ecx+16h], 0FFDDh
mov     word ptr [ecx+18h], 154h
mov     word ptr [ecx+56h], 0FE40h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4148E3:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4148F5:
mov     eax, ecx
call    sub_4DEADD

loc_4148FC:
pop     edx
pop     ecx
pop     ebx
retn
sub_4148A0 endp




sub_414900 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414914
cmp     al, 1
jz      short loc_41493D
pop     edx
pop     ecx
pop     ebx
retn

loc_414914:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 0FE00h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41493D:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414900 endp




sub_414948 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41495C
cmp     al, 1
jz      short loc_414985
pop     edx
pop     ecx
pop     ebx
retn

loc_41495C:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 0FC40h
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414985:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414948 endp




sub_414990 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4149A4
cmp     al, 1
jz      short loc_4149CD
pop     edx
pop     ecx
pop     ebx
retn

loc_4149A4:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
mov     word ptr [ecx+56h], 400h
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4149CD:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414990 endp




sub_4149D8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4149EC
cmp     al, 1
jz      short loc_414A0F
pop     edx
pop     ecx
pop     ebx
retn

loc_4149EC:
mov     word ptr [ecx+14h], 0FFE2h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 122h
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414A0F:
mov     eax, ecx
call    sub_4DEADD
sub     word ptr [ecx+14h], 2
pop     edx
pop     ecx
pop     ebx
retn
sub_4149D8 endp




sub_414A1F proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A2F
cmp     al, 1
jz      short loc_414A3F
pop     edx
retn

loc_414A2F:
mov     word ptr [edx+14h], 0FB50h
mov     eax, edx
call    sub_4DEADD
inc     byte ptr [edx+0Ah]

loc_414A3F:
mov     eax, edx
call    sub_4DEADD
dec     word ptr [edx+14h]
pop     edx
retn
sub_414A1F endp




sub_414A4C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A60
cmp     al, 1
jz      short loc_414A71
pop     edx
pop     ecx
pop     ebx
retn

loc_414A60:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414A71:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414A4C endp




sub_414A7C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414A90
cmp     al, 1
jz      short loc_414AA1
pop     edx
pop     ecx
pop     ebx
retn

loc_414A90:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414AA1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414A7C endp




sub_414AAC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_414AC0
cmp     al, 1
jz      short loc_414AD1
pop     edx
pop     ecx
pop     ebx
retn

loc_414AC0:
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_414AD1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_414AAC endp

db 8Dh, 40h, 0
jpt_414B00 dd offset loc_414B07 ; jump table for switch statement
dd offset loc_414B2F
dd offset loc_414B45
dd offset loc_414B57



sub_414AEF proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      short def_414B00 ; jumptable 00414B00 default case
and     eax, 0FFh
jmp     jpt_414B00[eax*4] ; switch jump

loc_414B07:             ; jumptable 00414B00 case 0
mov     word ptr [ecx+14h], 0F5A6h
mov     word ptr [ecx+56h], 4FCh
mov     word ptr [ecx+18h], 15Eh
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 2
pop     edx
pop     ecx
pop     ebx
retn

loc_414B2F:             ; jumptable 00414B00 case 1
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 3
pop     edx
pop     ecx
pop     ebx
retn

loc_414B45:             ; jumptable 00414B00 case 2
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_414B57:             ; jumptable 00414B00 case 3
mov     eax, ecx
call    sub_4DEADD

def_414B00:             ; jumptable 00414B00 default case
pop     edx
pop     ecx
pop     ebx
retn
sub_414AEF endp




sub_414B62 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_414B68[edx*4]
pop     edx
retn
sub_414B62 endp




sub_414B71 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+640h]
mov     [esp+1Ch+var_1C], offset dword_560BDC
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_414C15
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     word ptr [ebp+0], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
inc     byte ptr [ecx+8]

loc_414C15:
mov     eax, ecx
call    sub_414B62
mov     eax, [esp+1Ch+var_1C]
mov     al, [eax+8]
cmp     al, 0Bh
jb      short loc_414C5E
jbe     loc_414D18
cmp     al, 0Eh
jb      short loc_414C51
jbe     loc_414DC1
cmp     al, 10h
jb      loc_414EAE
jbe     loc_414E0B
cmp     al, 11h
jz      loc_414E89
jmp     loc_414EAE

loc_414C51:
cmp     al, 0Ch
jz      loc_414D6B
jmp     loc_414EAE

loc_414C5E:
cmp     al, 7
jb      short loc_414C6D
jbe     short loc_414C9D
cmp     al, 9
jz      short loc_414CD3
jmp     loc_414EAE

loc_414C6D:
test    al, al
jnz     loc_414EAE
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     loc_414EAE
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
xor     ebx, ebx

loc_414C8F:
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
jmp     loc_414EAE

loc_414C9D:
mov     eax, [esp+1Ch+var_1C]
mov     ebx, [eax+10h]
cmp     ebx, 1
jnz     short loc_414CB1
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414CB1:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     loc_414EAE
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
mov     ebx, 2
jmp     short loc_414C8F

loc_414CD3:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414CEA
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414CEA:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 18h
jnz     short loc_414D01
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D01:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 20h ; ' '
jnz     loc_414EAE
mov     ebx, 0Ch
jmp     loc_414C8F

loc_414D18:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414D3D
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D3D:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 14h
jnz     short loc_414D54
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414D54:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     loc_414EAE
mov     ebx, 5
jmp     loc_414C8F

loc_414D6B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414D90
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414D90:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_414DA7
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414DA7:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 8Ch
jnz     loc_414EAE
mov     ebx, 7
jmp     loc_414C8F

loc_414DC1:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414DE6
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414DE6:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 0Ah
jnz     loc_414EAE
mov     ebx, 9
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 5
jmp     loc_414EA5

loc_414E0B:
mov     eax, [esp+1Ch+var_1C]
mov     esi, [eax+10h]
cmp     esi, 0Ah
jnz     short loc_414E2F
mov     ebx, esi
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414E2F:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 29h ; ')'
jnz     short loc_414E54
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414E54:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 32h ; '2'
jnz     short loc_414E6B
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5

loc_414E6B:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 46h ; 'F'
jnz     short loc_414EAE
mov     ebx, 0Ah
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 7
jmp     short loc_414EA5

loc_414E89:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1
jnz     short loc_414EAE
mov     ebx, 0Bh
mov     edx, ebp
mov     eax, ecx
call    sub_414EC5
mov     ebx, 6

loc_414EA5:
mov     edx, ebp
mov     eax, ecx
call    sub_414EDE

loc_414EAE:
mov     edx, ebp
mov     eax, ecx
call    sub_414EF7
inc     word ptr [ebp+0]
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414B71 endp




sub_414EC5 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50E9F4[ebx*4]
mov     [edx+4], eax
retn
sub_414EC5 endp




sub_414EDE proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EA28[ebx*4]
mov     [edx+8], eax
retn
sub_414EDE endp




sub_414EF7 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_414F1C
jbe     short loc_414F1F
cmp     al, 7Fh
jnz     short loc_414F1C
mov     byte ptr [edx+0Eh], 0
jmp     short loc_414F1F

loc_414F1C:
inc     byte ptr [esi+0Eh]

loc_414F1F:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_414F61
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 10000Fh
mov     eax, ecx
call    sub_4EE044

loc_414F61:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_414F84
jbe     short loc_414F87
cmp     al, 7Fh
jnz     short loc_414F84
mov     byte ptr [esi+11h], 0
jmp     short loc_414F87

loc_414F84:
inc     byte ptr [esi+11h]

loc_414F87:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_414FC9
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 120011h
mov     eax, edi
call    sub_4EE044

loc_414FC9:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_414EF7 endp




sub_414FD4 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559158, dx
mov     eax, ds:dword_559154
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 10000Fh

loc_415010:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_414FD4 endp




sub_41501C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559150, dx
mov     eax, ds:dword_55914C
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 120011h
jmp     short loc_415010
sub_41501C endp




sub_41505A proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559154
test    ecx, ecx
jz      loc_415100
cmp     ds:dword_55914C, 0
jz      loc_415100
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_4150BC
jge     short loc_415094
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4150B0

loc_415094:
inc     ds:word_559158
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559154+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_4150BC
add     eax, 4

loc_4150B0:
mov     ds:dword_559154, eax
mov     eax, edx
call    sub_414FD4

loc_4150BC:
mov     eax, ds:dword_55914C
mov     di, [eax+2]
test    di, di
jz      short loc_415100
jge     short loc_4150D8
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4150F4

loc_4150D8:
inc     ds:word_559150
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_55914C+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_415100
add     eax, 4

loc_4150F4:
mov     ds:dword_55914C, eax
mov     eax, edx
call    sub_41501C

loc_415100:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_41505A endp




sub_415105 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559160
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_41515F
cmp     bl, ds:byte_560BE4
jnz     short loc_41515F
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_41515F
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_41515F
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50EB9C[eax*4]
mov     ds:dword_559154, eax
mov     eax, edx
call    sub_414FD4
add     ds:dword_559160, 6

loc_41515F:
mov     eax, ds:dword_55915C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4151A6
cmp     bl, [ecx+8]
jnz     short loc_4151A6
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_4151A6
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_4151A6
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50EBC0[eax*4]
mov     ds:dword_55914C, eax
mov     eax, edx
call    sub_41501C
add     ds:dword_55915C, 6

loc_4151A6:
mov     eax, edx
call    sub_41505A
pop     edx
pop     ecx
pop     ebx
retn
sub_415105 endp




sub_4151B1 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_559160, offset unk_50EBF4
mov     ds:dword_55915C, offset unk_50EC2A
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4151B1 endp




sub_4151EA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415206
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415206:
pop     edx
pop     ecx
pop     ebx
retn
sub_4151EA endp




sub_41520A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415226
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415226:
pop     edx
pop     ecx
pop     ebx
retn
sub_41520A endp




sub_41522A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_415246
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415246:
pop     edx
pop     ecx
pop     ebx
retn
sub_41522A endp




sub_41524A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_415253[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_415272
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_415272:
mov     eax, ecx
call    sub_415105
pop     edx
pop     ecx
retn
sub_41524A endp




sub_41527C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41528C
mov     eax, edx
call    sub_4151B1

loc_41528C:
mov     eax, edx
call    sub_41524A
pop     edx
retn
sub_41527C endp

jpt_4152D2 dd offset loc_4152D9 ; jump table for switch statement
dd offset def_4152D2
dd offset loc_415336
dd offset def_4152D2



sub_4152A5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
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
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      short def_4152D2 ; jumptable 004152D2 default case, cases 1,3
and     eax, 0FFh
jmp     jpt_4152D2[eax*4] ; switch jump

loc_4152D9:             ; jumptable 004152D2 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
jmp     short def_4152D2 ; jumptable 004152D2 default case, cases 1,3

loc_415336:             ; jumptable 004152D2 case 2
mov     eax, ecx
call    sub_4DEADD

def_4152D2:             ; jumptable 004152D2 default case, cases 1,3
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4152A5 endp




sub_415343 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_415387
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_415387:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_415343 endp




sub_415392 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4153B5
mov     word ptr [ecx+56h], 0FA00h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4153B5:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_415392 endp




sub_4153C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4153DD
jbe     short loc_41540A
cmp     al, 2
jz      short loc_41541C
pop     edx
pop     ecx
pop     ebx
retn

loc_4153DD:
test    al, al
jnz     short loc_415423
mov     word ptr [ecx+14h], 0FFB0h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
mov     word ptr [ecx+56h], 0FD00h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41540A:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_41541C:
mov     eax, ecx
call    sub_4DEADD

loc_415423:
pop     edx
pop     ecx
pop     ebx
retn
sub_4153C7 endp




sub_415427 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_41543B
cmp     al, 1
jz      short loc_415464
pop     edx
pop     ecx
pop     ebx
retn

loc_41543B:
mov     word ptr [ecx+14h], 0FFB0h
mov     word ptr [ecx+16h], 0FFFFh
mov     word ptr [ecx+18h], 258h
mov     word ptr [ecx+56h], 480h
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415464:
mov     eax, ecx
call    sub_4DEADD
sub     word ptr [ecx+14h], 2
pop     edx
pop     ecx
pop     ebx
retn
sub_415427 endp




sub_415474 proc near
push    edx
mov     edx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_415484
cmp     al, 1
jz      short loc_415494
pop     edx
retn

loc_415484:
mov     word ptr [edx+14h], 0FAECh
mov     eax, edx
call    sub_4DEADD
inc     byte ptr [edx+0Ah]

loc_415494:
mov     eax, edx
call    sub_4DEADD
dec     word ptr [edx+14h]
pop     edx
retn
sub_415474 endp




sub_4154A1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_4154B7
jbe     short loc_4154DE
cmp     al, 2
jz      short loc_4154F0
pop     edx
pop     ecx
pop     ebx
retn

loc_4154B7:
test    al, al
jnz     short loc_4154F7
mov     word ptr [ecx+14h], 0F98Eh
mov     word ptr [ecx+16h], 0FFF6h
mov     word ptr [ecx+18h], 28Ah
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4154DE:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_4154F0:
mov     eax, ecx
call    sub_4DEADD

loc_4154F7:
pop     edx
pop     ecx
pop     ebx
retn
sub_4154A1 endp




sub_4154FB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_415511
jbe     short loc_415538
cmp     al, 2
jz      short loc_41554A
pop     edx
pop     ecx
pop     ebx
retn

loc_415511:
test    al, al
jnz     short loc_415551
mov     word ptr [ecx+14h], 0F60Ah
mov     word ptr [ecx+18h], 186h
mov     word ptr [ecx+56h], 200h
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_415538:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn

loc_41554A:
mov     eax, ecx
call    sub_4DEADD

loc_415551:
pop     edx
pop     ecx
pop     ebx
retn
sub_4154FB endp




sub_415555 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_41555B[edx*4]
pop     edx
retn
sub_415555 endp




sub_415564 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_4155D4
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

