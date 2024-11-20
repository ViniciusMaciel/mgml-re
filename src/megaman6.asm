loc_40D389:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D390:             ; jumptable 0040D34E case 4
add     dword ptr [ecx+1Ch], 28000h
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 3Dh ; '='
jmp     short loc_40D387
sub_40D33D endp

db 8Dh, 40h, 0
jpt_40D3D2 dd offset loc_40D3D9 ; jump table for switch statement
dd offset loc_40D3F2
dd offset loc_40D416
dd offset loc_40D42F
dd offset def_40D2EA
dd offset loc_40D3EA



sub_40D3BD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D3D2[eax*4] ; switch jump

loc_40D3D9:             ; jumptable 0040D3D2 case 0
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D3EA:             ; jumptable 0040D3D2 case 5
mov     byte ptr [ecx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_40D3F2:             ; jumptable 0040D3D2 case 1
add     dword ptr [ecx+1Ch], 1B102h
sub     dword ptr [ecx+24h], 9D9Ah
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 13h

loc_40D409:             ; jumptable 0040D2EA default case, cases 1,3
jnz     def_40D2EA      ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4

loc_40D40F:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D416:             ; jumptable 0040D3D2 case 2
add     dword ptr [ecx+1Ch], 12CB3h
sub     dword ptr [ecx+24h], 6D72h
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 1Dh
jmp     short loc_40D409

loc_40D42F:             ; jumptable 0040D3D2 case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 31h ; '1'
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_40D40F
sub_40D3BD endp

db 90h
jpt_40D46E dd offset loc_40D475 ; jump table for switch statement
dd offset loc_40D48E
dd offset def_40D2EA
dd offset loc_40D4B2
dd offset def_40D2EA



sub_40D459 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D46E[eax*4] ; switch jump

loc_40D475:             ; jumptable 0040D46E case 0
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0
pop     edx
pop     ecx
pop     ebx
retn

loc_40D48E:             ; jumptable 0040D46E case 1
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 18h
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
xor     ebx, ebx
mov     edx, 14h

loc_40D4A4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D4B2:             ; jumptable 0040D46E case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 0Bh
jnz     def_40D2EA      ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
xor     ebx, ebx
mov     edx, 15h
jmp     short loc_40D4A4
sub_40D459 endp




sub_40D4CA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D4E6
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D4E6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D4CA endp




sub_40D4EA proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40D4F3[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40D512
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40D512:
mov     eax, ecx
call    sub_40D1DE
pop     edx
pop     ecx
retn
sub_40D4EA endp




sub_40D51C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40D52F
mov     eax, esi
call    sub_40D28A

loc_40D52F:
mov     eax, esi
call    sub_40D4EA
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D51C endp




sub_40D54E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   esi, byte ptr [eax+3]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_40D58D[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_40DE4F
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_40D5C2
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40D5C9

loc_40D5C2:
mov     eax, ecx
call    sub_4DEADD

loc_40D5C9:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D54E endp




sub_40D5D0 proc near
push    ecx
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, offset dword_560BDC
call    ds:funcs_40D5DB[ecx*4]
pop     ecx
retn
sub_40D5D0 endp




sub_40D5E4 proc near
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
mov     word ptr [ecx+15Eh], 0
xor     al, al

loc_40D619:
movsx   edx, al
mov     word ptr [ecx+edx*8+196h], 4210h
inc     al
cmp     al, 12h
jl      short loc_40D619
mov     word ptr [ecx+226h], 4210h
mov     word ptr [ecx+22Eh], 0C210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0
mov     word ptr [esi], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_40D5E4 endp

jpt_40D6B8 dd offset loc_40D6BF ; jump table for switch statement
dd offset loc_40D6E1
dd offset loc_40D74C
dd offset loc_40D7AB
dd offset loc_40D7DB
dd offset loc_40D81A
dd offset loc_40D86C
dd offset loc_40D8E5



sub_40D69E proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+9]
cmp     dl, 7           ; switch 8 cases
ja      def_40D6B8      ; jumptable 0040D6B8 default case
and     edx, 0FFh
jmp     jpt_40D6B8[edx*4] ; switch jump

loc_40D6BF:             ; jumptable 0040D6B8 case 0
mov     byte ptr [esi+0ADh], 0FFh
mov     ch, [eax+4]
cmp     ch, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
cmp     ch, [eax+5]
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
add     [esi+9], ch
pop     esi
pop     ecx
retn

loc_40D6E1:             ; jumptable 0040D6B8 case 1
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [eax+9], 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     eax, [eax+10h]
cmp     eax, 0Ah
jb      short loc_40D70F
jbe     short loc_40D729
cmp     eax, 28h ; '('
jb      def_40D6B8      ; jumptable 0040D6B8 default case
jbe     short loc_40D734
cmp     eax, 32h ; '2'
jz      short loc_40D738
pop     esi
pop     ecx
retn

loc_40D70F:
cmp     eax, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     ebx, 4
mov     eax, esi
mov     edx, ecx
call    sub_40DE1D
pop     esi
pop     ecx
retn

loc_40D729:
mov     ebx, 7

loc_40D72E:
mov     eax, esi
mov     edx, ecx
jmp     short loc_40D77B

loc_40D734:
xor     ebx, ebx
jmp     short loc_40D72E

loc_40D738:
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_40DE36

loc_40D746:
inc     byte ptr [esi+9]
pop     esi
pop     ecx
retn

loc_40D74C:             ; jumptable 0040D6B8 case 2
mov     dh, [eax+9]
cmp     dh, 1
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_40D76C
jbe     short loc_40D783
cmp     eax, 96h
jz      short loc_40D798
pop     esi
pop     ecx
retn

loc_40D76C:
cmp     eax, 6Eh ; 'n'

loc_40D76F:             ; jumptable 0040D6B8 default case
jnz     def_40D6B8

loc_40D775:
xor     ebx, ebx

loc_40D777:
mov     edx, ecx
mov     eax, esi

loc_40D77B:
call    sub_40DE36
pop     esi
pop     ecx
retn

loc_40D783:
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 2
jmp     short loc_40D777

loc_40D798:
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ebx+2], 0
add     [esi+9], dh
pop     esi
pop     ecx
retn

loc_40D7AB:             ; jumptable 0040D6B8 case 3
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
mov     byte ptr [esi+0ACh], 3
mov     word ptr [ebx+2], 0
jmp     loc_40D746

loc_40D7DB:             ; jumptable 0040D6B8 case 4
cmp     byte ptr [esi+0A4h], 4
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
xor     ebx, ebx
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 7
mov     edx, ecx
mov     eax, esi
call    sub_40DE36
mov     byte ptr [esi+0ACh], 3
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ecx+2], 4
jmp     loc_40D746

loc_40D81A:             ; jumptable 0040D6B8 case 5
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ebx+2], 4
mov     dh, [eax+9]
cmp     dh, 1
jnz     short loc_40D83B
cmp     dword ptr [eax+10h], 0AFh
jmp     loc_40D76F

loc_40D83B:
cmp     dh, 3
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     edx, [eax+10h]
cmp     edx, 1
jz      loc_40D775
cmp     edx, 0Ah
jnz     def_40D6B8      ; jumptable 0040D6B8 default case
mov     ebx, 5
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
jmp     loc_40D746

loc_40D86C:             ; jumptable 0040D6B8 case 6
mov     cl, [esi+0A4h]
cmp     cl, 5
jnz     short loc_40D885
mov     word ptr [esi+44h], 56h ; 'V'
mov     word ptr [esi+48h], 0FF95h
jmp     short loc_40D8CD

loc_40D885:
cmp     cl, 14h
jnz     short loc_40D898
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0
jmp     short loc_40D8CD

loc_40D898:
cmp     cl, 34h ; '4'
jnz     short loc_40D8AB
mov     word ptr [esi+44h], 0
mov     word ptr [esi+48h], 0FF80h
jmp     short loc_40D8CD

loc_40D8AB:
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_40D8CD
and     byte ptr [esi], 0FDh
mov     byte ptr [esi+143h], 0FFh
mov     byte ptr [esi+147h], 0FFh
inc     byte ptr [esi+9]

loc_40D8CD:
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     ecx
retn

loc_40D8E5:             ; jumptable 0040D6B8 case 7
cmp     byte ptr [eax+8], 1
jnz     short def_40D6B8 ; jumptable 0040D6B8 default case
cmp     byte ptr [eax+9], 0
jnz     short def_40D6B8 ; jumptable 0040D6B8 default case
or      byte ptr [esi], 2
mov     byte ptr [esi+0ACh], 5
mov     word ptr [ecx+2], 0
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_40DE1D
mov     ebx, 3
mov     edx, ecx
mov     eax, esi
call    sub_40DE36
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

def_40D6B8:             ; jumptable 0040D6B8 default case
pop     esi
pop     ecx
retn
sub_40D69E endp

db 8Dh, 40h, 0
jpt_40D974 dd offset loc_40D97B ; jump table for switch statement
dd offset loc_40D9A0
dd offset loc_40DA5A
dd offset loc_40DA93
dd offset loc_40DABE
dd offset loc_40DAEC
dd offset loc_40DB1D
dd offset loc_40DB57
dd offset loc_40DBBD
dd offset loc_40DBE6
dd offset loc_40DC20
dd offset loc_40DC7B



sub_40D95A proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     al, [eax+9]
cmp     al, 0Bh         ; switch 12 cases
ja      def_40D974      ; jumptable 0040D974 default case
and     eax, 0FFh
jmp     jpt_40D974[eax*4] ; switch jump

loc_40D97B:             ; jumptable 0040D974 case 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     bl, [edx+9]
cmp     bl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 1
jnz     def_40D974      ; jumptable 0040D974 default case

loc_40D998:
add     [ecx+9], bl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40D9A0:             ; jumptable 0040D974 case 1
cmp     byte ptr [ecx+0A4h], 10h
jbe     short loc_40D9C7
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_40D9C7
dec     word ptr [ecx+18h]
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax

loc_40D9C7:
cmp     byte ptr [edi+9], 1
jnz     def_40D974      ; jumptable 0040D974 default case
mov     eax, [edi+10h]
cmp     eax, 28h ; '('
jb      short loc_40D9F2
jbe     short loc_40DA05
cmp     eax, 32h ; '2'
jb      def_40D974      ; jumptable 0040D974 default case
jbe     short loc_40DA0F
cmp     eax, 82h
jz      short loc_40DA27
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40D9F2:
cmp     eax, 5
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 8
jmp     loc_40DCCB

loc_40DA05:
mov     ebx, 6
jmp     loc_40DCCB

loc_40DA0F:
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 9
jmp     loc_40DCCB

loc_40DA27:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
mov     byte ptr [ecx+0ACh], 6
mov     word ptr [esi+2], 9
mov     word ptr [esi], 0
jmp     loc_40DB4F

loc_40DA5A:             ; jumptable 0040D974 case 2
cmp     word ptr [ebx], 26h ; '&'
jge     short loc_40DA7C
xor     eax, eax
xor     ebx, ebx
mov     edx, 21h ; '!'
mov     edi, ecx
mov     ecx, eax
mov     eax, edi
call    sub_4DD43B
inc     word ptr [esi]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DA7C:
mov     byte ptr [ecx+0ACh], 7
mov     word ptr [ebx+2], 0
mov     word ptr [ebx], 0
jmp     loc_40DB4F

loc_40DA93:             ; jumptable 0040D974 case 3
mov     bl, [edx+9]
cmp     bl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 0D7h
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 8
mov     word ptr [esi+2], 0
jmp     loc_40D998

loc_40DABE:             ; jumptable 0040D974 case 4
mov     dl, [edx+9]
cmp     dl, 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edi+10h], 19Ah
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 9
mov     word ptr [ebx+2], 0
add     [ecx+9], dl
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DAEC:             ; jumptable 0040D974 case 5
cmp     byte ptr [ecx+0A4h], 0Ah
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Ah
jmp     short loc_40DB4F

loc_40DB1D:             ; jumptable 0040D974 case 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0Ah
cmp     byte ptr [edx+9], 1
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 1C7h
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 7
mov     edx, esi
mov     eax, ecx

loc_40DB4A:
call    sub_40DE1D

loc_40DB4F:
inc     byte ptr [ecx+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DB57:             ; jumptable 0040D974 case 7
cmp     byte ptr [edx+9], 1
jnz     short loc_40DB7E
mov     ebp, [edx+10h]
cmp     ebp, 203h
jz      short loc_40DB70
cmp     ebp, 230h
jnz     short loc_40DB7E

loc_40DB70:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D

loc_40DB7E:
cmp     byte ptr [edi+9], 2
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edi+10h], 1
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_40DE36
mov     byte ptr [ecx+0ACh], 0Ah
mov     word ptr [esi+2], 0
jmp     short loc_40DB4F

loc_40DBBD:             ; jumptable 0040D974 case 8
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 3
jnz     def_40D974      ; jumptable 0040D974 default case
cmp     dword ptr [edx+10h], 64h ; 'd'
jnz     def_40D974      ; jumptable 0040D974 default case
mov     ebx, 8
mov     eax, ecx
mov     edx, esi
jmp     loc_40DB4A

loc_40DBE6:             ; jumptable 0040D974 case 9
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_40DBFA
mov     ebx, 0Ah
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DBFA:
cmp     byte ptr [ecx+0A4h], 23h ; '#'
jnz     def_40D974      ; jumptable 0040D974 default case
mov     byte ptr [ecx+0ACh], 0Ah
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 23h ; '#'
jmp     loc_40DB4F

loc_40DC20:             ; jumptable 0040D974 case 10
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 23h ; '#'
cmp     byte ptr [edx+9], 3
jnz     def_40D974      ; jumptable 0040D974 default case
mov     eax, [edx+10h]
cmp     eax, 0A5h
jb      short loc_40DC53
jbe     short loc_40DC68
cmp     eax, 0AFh
jz      loc_40DB4F
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC53:
cmp     eax, 9Bh
jnz     def_40D974      ; jumptable 0040D974 default case

loc_40DC5E:
mov     ebx, 3
jmp     loc_40DCCB

loc_40DC68:
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC7B:             ; jumptable 0040D974 case 11
mov     eax, [edx+10h]
cmp     eax, 12Ch
jb      short loc_40DCA8
jbe     short loc_40DC5E
cmp     eax, 145h
jb      short loc_40DC9C
jbe     short loc_40DC68
cmp     eax, 159h
jz      short loc_40DCC6
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DC9C:
cmp     eax, 140h

loc_40DCA1:
jz      short loc_40DCBF
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40DCA8:
cmp     eax, 0F5h
jb      short loc_40DCB8
jbe     short loc_40DC5E
cmp     eax, 0FFh
jmp     short loc_40DCA1

loc_40DCB8:
cmp     eax, 0B4h
jnz     short def_40D974 ; jumptable 0040D974 default case

loc_40DCBF:
mov     ebx, 0Ah
jmp     short loc_40DCCB

loc_40DCC6:
mov     ebx, 3

loc_40DCCB:
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

def_40D974:             ; jumptable 0040D974 default case
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40D95A endp

align 2
jpt_40DD02 dd offset loc_40DD09 ; jump table for switch statement
dd offset loc_40DD94
dd offset loc_40DDA9
dd offset def_40DD02



sub_40DCEA proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     esi, ebx
mov     al, [eax+8]
cmp     al, 3           ; switch 4 cases
ja      def_40DD02      ; jumptable 0040DD02 default case, case 3
xor     edx, edx
mov     dl, al
jmp     jpt_40DD02[edx*4] ; switch jump

loc_40DD09:             ; jumptable 0040DD02 case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ebx+2], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DD69:
inc     byte ptr [ecx+8]

def_40DD02:             ; jumptable 0040DD02 default case, case 3
mov     eax, [edi+10h]
cmp     eax, 4Bh ; 'K'
jb      short loc_40DDC1
jbe     loc_40DDDD
cmp     eax, 78h ; 'x'
jb      short loc_40DDB8
jbe     loc_40DDF6
cmp     eax, 82h
jz      loc_40DE0B
pop     edi
pop     esi
pop     ecx
retn

loc_40DD94:             ; jumptable 0040DD02 case 1
mov     edx, [ecx+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short def_40DD02 ; jumptable 0040DD02 default case, case 3
inc     al
mov     [ecx+8], al
jmp     short def_40DD02 ; jumptable 0040DD02 default case, case 3

loc_40DDA9:             ; jumptable 0040DD02 case 2
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebx+2], 0
jmp     short loc_40DD69

loc_40DDB8:
cmp     eax, 4Dh ; 'M'
jz      short loc_40DDE4
pop     edi
pop     esi
pop     ecx
retn

loc_40DDC1:
cmp     eax, 23h ; '#'
jb      short loc_40DDD1
jbe     short loc_40DDDD
cmp     eax, 32h ; '2'
jz      short loc_40DDD6
pop     edi
pop     esi
pop     ecx
retn

loc_40DDD1:
cmp     eax, 14h
jnz     short loc_40DE19

loc_40DDD6:
mov     ebx, 0Eh
jmp     short loc_40DE10

loc_40DDDD:
mov     ebx, 0Bh
jmp     short loc_40DE10

loc_40DDE4:
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
pop     edi
pop     esi
pop     ecx
retn

loc_40DDF6:
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ecx
call    sub_40DE1D
mov     ebx, 0Fh
jmp     short loc_40DE10

loc_40DE0B:
mov     ebx, 0Dh

loc_40DE10:
mov     edx, esi
mov     eax, ecx
call    sub_40DE36

loc_40DE19:
pop     edi
pop     esi
pop     ecx
retn
sub_40DCEA endp




sub_40DE1D proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CB0A[ebx*4]
mov     [edx+4], eax
retn
sub_40DE1D endp




sub_40DE36 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CB3E[ebx*4]
mov     [edx+8], eax
retn
sub_40DE36 endp




sub_40DE4F proc near
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
cmp     al, 3Fh ; '?'
jb      short loc_40DE74
jbe     short loc_40DE77
cmp     al, 7Fh
jnz     short loc_40DE74
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40DE77

loc_40DE74:
inc     byte ptr [esi+0Eh]

loc_40DE77:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40DEB9
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40DEB9:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 3Fh ; '?'
jb      short loc_40DEDC
jbe     short loc_40DEDF
cmp     al, 7Fh
jnz     short loc_40DEDC
mov     byte ptr [esi+11h], 0
jmp     short loc_40DEDF

loc_40DEDC:
inc     byte ptr [esi+11h]

loc_40DEDF:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40DF21
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40DF21:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40DE4F endp

jpt_40DF8E dd offset loc_40DF95 ; jump table for switch statement
dd offset loc_40DFF7
dd offset loc_40E01F
dd offset loc_40E08D
dd offset loc_40E0B3



sub_40DF40 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     [esp+1Ch+var_1C], offset dword_560BDC
lea     ebp, [eax+640h]
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
mov     al, [ecx+8]
cmp     al, 4           ; switch 5 cases
ja      def_40DF8E      ; jumptable 0040DF8E default case
and     eax, 0FFh
jmp     jpt_40DF8E[eax*4] ; switch jump

loc_40DF95:             ; jumptable 0040DF8E case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
xor     ebx, ebx

loc_40DFE6:
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C

loc_40DFEF:
inc     byte ptr [ecx+8]
jmp     def_40DF8E      ; jumptable 0040DF8E default case

loc_40DFF7:             ; jumptable 0040DF8E case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     def_40DF8E      ; jumptable 0040DF8E default case
cmp     ds:dword_560BEC, 0Ah
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     ebx, 2
jmp     short loc_40DFE6

loc_40E01F:             ; jumptable 0040DF8E case 2
cmp     ds:byte_560BE5, 3
jnz     short loc_40E04F
cmp     ds:dword_560BEC, 2Dh ; '-'
jnz     short loc_40E04F
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
jmp     def_40DF8E      ; jumptable 0040DF8E default case

loc_40E04F:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+9], 4
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     edx, [eax+10h]
cmp     edx, 1
jnz     def_40DF8E      ; jumptable 0040DF8E default case
mov     ebx, edx
mov     edx, ebp
mov     eax, ecx
call    sub_40E163
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
mov     byte ptr [ecx+0ACh], 5
jmp     loc_40DFEF

loc_40E08D:             ; jumptable 0040DF8E case 3
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 4
jnz     def_40DF8E      ; jumptable 0040DF8E default case
cmp     ds:dword_560BEC, 0Ah
jnz     def_40DF8E      ; jumptable 0040DF8E default case
jmp     loc_40DFEF

loc_40E0B3:             ; jumptable 0040DF8E case 4
cmp     ds:byte_560BE5, 5
jnz     short loc_40E0EA
mov     ebx, ds:dword_560BEC
cmp     ebx, 1
jnz     short loc_40E0D7
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40E17C
jmp     short loc_40E0EA

loc_40E0D7:
cmp     ebx, 1Eh
jnz     short loc_40E0EA
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40E163

loc_40E0EA:
mov     al, [ecx+0A4h]
cmp     al, 11h
jb      short loc_40E102
jbe     short loc_40E10F
cmp     al, 19h
jb      short def_40DF8E ; jumptable 0040DF8E default case
jbe     short loc_40E118
cmp     al, 20h ; ' '
jz      short loc_40E121
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E102:
cmp     al, 3
jnz     short def_40DF8E ; jumptable 0040DF8E default case
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 1
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E10F:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 2
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E118:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 3
jmp     short def_40DF8E ; jumptable 0040DF8E default case

loc_40E121:
mov     eax, [esp+1Ch+var_1C]
mov     byte ptr [eax+7], 4

def_40DF8E:             ; jumptable 0040DF8E default case
mov     edx, ebp
mov     eax, ecx
call    sub_40E195
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_40E152
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40E159

loc_40E152:
mov     eax, ecx
call    sub_4DEADD

loc_40E159:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40DF40 endp




sub_40E163 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CBD1[ebx*4]
mov     [edx+4], eax
retn
sub_40E163 endp




sub_40E17C proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CBE1[ebx*4]
mov     [edx+8], eax
retn
sub_40E17C endp




sub_40E195 proc near
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
jb      short loc_40E1BA
jbe     short loc_40E1BD
cmp     al, 7Fh
jnz     short loc_40E1BA
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40E1BD

loc_40E1BA:
inc     byte ptr [esi+0Eh]

loc_40E1BD:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40E1FF
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E1FF:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40E222
jbe     short loc_40E225
cmp     al, 7Fh
jnz     short loc_40E222
mov     byte ptr [esi+11h], 0
jmp     short loc_40E225

loc_40E222:
inc     byte ptr [esi+11h]

loc_40E225:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40E267
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40E267:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E195 endp

off_40E272 dd offset dword_40E2D4
dd offset byte_40E337
dd offset byte_40E36F
dd offset word_40E37E
dd offset byte_40E393
dd offset off_40E342
word_40E28A dw 5153h
dd 55575652h, 0A88DC189h, 640h, 8D2C798Dh
dd 0A5A51471h, 8D34798Dh, 0A5A51C71h, 798DA5A5h
dd 54718D5Ch, 808AA5A5h, 0ACh, 0AD8188h
dd 418A0000h, 0F053C08h, 7987h, 88D23100h
dd 9524FFC2h
dd offset off_40E272
dword_40E2D4 dd 31020980h, 0E8C889D2h, 0CEE18h, 15881C7h
dd 2000000h, 81C70200h, 15Ch, 200h, 5E81C766h
dd 10000001h, 7841C742h, 0
dd 0AC81C6h, 0C6060000h, 0AD81h, 0C766FF00h
dd 370245h, 45C766h, 0DB310000h, 0C889EA89h
dd 0E8E8h, 89DB3100h, 0E8C889EAh, 0F6h
db 0FEh, 41h, 8
byte_40E337 db 66h
dd 92007D81h, 0FE037500h
db 41h, 8
off_40E342 dd offset loc_45FF66
mov     eax, ds:dword_560BEC
cmp     eax, 37h ; '7'
jb      short loc_40E3A5
jbe     loc_40E3B3
cmp     eax, 91h
jb      short loc_40E39C
jbe     short loc_40E3B3
cmp     eax, 0AFh
jz      loc_40E3CE
jmp     loc_40E3D9
byte_40E36F db 0C6h
dd 0AC81h, 0C7660700h, 245h
db 0EBh, 0C1h
word_40E37E dw 918Bh
dd 0A4h, 8318FAC1h, 0B675FFFAh, 4188C0FEh
db 8, 0EBh, 0AFh
byte_40E393 db 0C6h
dd 0AC81h, 0A3EB0800h

loc_40E39C:
cmp     eax, 87h
jz      short loc_40E3BE
jmp     short loc_40E3D9

loc_40E3A5:
cmp     eax, 1Eh
jb      short loc_40E3D9
jbe     short loc_40E3B3
cmp     eax, 2Dh ; '-'
jz      short loc_40E3BA
jmp     short loc_40E3D9

loc_40E3B3:
mov     ebx, 1
jmp     short loc_40E3D0

loc_40E3BA:
xor     ebx, ebx
jmp     short loc_40E3D0

loc_40E3BE:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40E411
jmp     short loc_40E3BA

loc_40E3CE:
xor     ebx, ebx

loc_40E3D0:
mov     edx, ebp
mov     eax, ecx
call    sub_40E42A

loc_40E3D9:
mov     edx, ebp
mov     eax, ecx
call    sub_40E443
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_40E403
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40E40A

loc_40E403:
mov     eax, ecx
call    sub_4DEADD

loc_40E40A:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_40E411 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50CC21[ebx*4]
mov     [edx+4], eax
retn
sub_40E411 endp




sub_40E42A proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50CC29[ebx*4]
mov     [edx+8], eax
retn
sub_40E42A endp




sub_40E443 proc near
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
jb      short loc_40E468
jbe     short loc_40E46B
cmp     al, 7Fh
jnz     short loc_40E468
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40E46B

loc_40E468:
inc     byte ptr [esi+0Eh]

loc_40E46B:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40E4AD
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E4AD:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40E4D0
jbe     short loc_40E4D3
cmp     al, 7Fh
jnz     short loc_40E4D0
mov     byte ptr [esi+11h], 0
jmp     short loc_40E4D3

loc_40E4D0:
inc     byte ptr [esi+11h]

loc_40E4D3:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40E515
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40E515:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E443 endp




sub_40E520 proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50CC40[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_40E520 endp




sub_40E533 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50CC61[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_40E533 endp




sub_40E546 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_40E5BA
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_40E56F
jbe     short loc_40E5C1
cmp     al, 7Fh
jnz     short loc_40E56F
mov     byte ptr [edx+4], 0

loc_40E56F:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
mov     al, [ecx+eax+1]
mov     [esi+5], al
add     byte ptr [esi+4], 2
jmp     short loc_40E5C1

loc_40E5BA:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_40E5C1:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_40E62F
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_40E5E1
jbe     short loc_40E636
cmp     al, 7Fh
jnz     short loc_40E5E1
mov     [esi+6], bl

loc_40E5E1:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax+1]
mov     [esi+7], al
add     byte ptr [esi+6], 2
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_40E62F:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_40E636:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40E546 endp

align 4
jpt_40E698 dd offset loc_40E69F ; jump table for switch statement
dd offset loc_40E738
dd offset loc_40E710
dd offset loc_40E71E
dd offset loc_40E738



sub_40E650 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     [esp+20h+var_20], offset dword_560BDC
lea     edx, [eax+640h]
mov     [esp+20h+var_1C], edx
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
mov     dl, [eax+8]
cmp     dl, 4           ; switch 5 cases
ja      def_40E698      ; jumptable 0040E698 default case
and     edx, 0FFh
jmp     jpt_40E698[edx*4] ; switch jump

loc_40E69F:             ; jumptable 0040E698 case 0
or      byte ptr [eax], 2
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     word ptr [ebp+44h], 0
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     byte ptr [ebp+0Ch], 0
mov     byte ptr [ebp+0Dh], 0
xor     edx, edx
mov     eax, [esp+20h+var_1C]
call    sub_40E520
xor     edx, edx
mov     eax, [esp+20h+var_1C]
call    sub_40E533
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short def_40E698 ; jumptable 0040E698 default case

loc_40E710:             ; jumptable 0040E698 case 2
mov     word ptr [eax+48h], 20h ; ' '
mov     ah, [eax+8]
inc     ah
mov     [ebp+8], ah

loc_40E71E:             ; jumptable 0040E698 case 3
mov     edx, [ebp+46h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_4DEADD
jmp     short def_40E698 ; jumptable 0040E698 default case

loc_40E738:             ; jumptable 0040E698 cases 1,4
mov     eax, ebp
call    sub_4DFC52
mov     eax, ebp
call    sub_4DF795

def_40E698:             ; jumptable 0040E698 default case
mov     edx, [esp+20h+var_20]
cmp     byte ptr [edx+9], 6
jnz     loc_40E7DC
mov     ecx, [edx+10h]
cmp     ecx, 2Dh ; '-'
jnz     short loc_40E762

loc_40E75B:
mov     edx, 1
jmp     short loc_40E769

loc_40E762:
cmp     ecx, 35h ; '5'
jnz     short loc_40E777

loc_40E767:
xor     edx, edx

loc_40E769:
mov     eax, [esp+20h+var_1C]
call    sub_40E520
jmp     loc_40E7D1

loc_40E777:
cmp     ecx, 41h ; 'A'
jnz     short loc_40E783
mov     edx, 2
jmp     short loc_40E7C8

loc_40E783:
cmp     ecx, 96h
jnz     short loc_40E78F
xor     edx, edx
jmp     short loc_40E7C8

loc_40E78F:
cmp     ecx, 0A0h
jz      short loc_40E75B
cmp     ecx, 0A8h
jz      short loc_40E767
cmp     ecx, 0C8h
jz      short loc_40E75B
cmp     ecx, 0D0h
jz      short loc_40E767
cmp     ecx, 0DAh
jnz     short loc_40E7BE
mov     edx, 1
jmp     short loc_40E7C8

loc_40E7BE:
cmp     ecx, 0E6h
jnz     short loc_40E7D1
xor     edx, edx

loc_40E7C8:
mov     eax, [esp+20h+var_1C]
call    sub_40E533

loc_40E7D1:
mov     edx, [esp+20h+var_1C]
mov     eax, ebp
call    sub_40E546

loc_40E7DC:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E650 endp




sub_40E7E6 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50CD44[edx*4]
mov     ds:dword_5590C8, eax
xor     edx, edx
mov     ds:word_5590CC, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40E828:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     ecx
pop     ebx
retn
sub_40E7E6 endp




sub_40E833 proc near
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     eax, ds:off_50CD6C[edx*4]
mov     ds:dword_5590C0, eax
xor     edx, edx
mov     ds:word_5590C4, dx
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40E828
sub_40E833 endp




sub_40E877 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
mov     edx, ds:dword_5590C8
test    edx, edx
jz      loc_40E99A
cmp     ds:dword_5590C0, 0
jz      loc_40E99A
mov     eax, edx
cmp     word ptr [edx+2], 0
jg      short loc_40E8BA
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_5590C8, eax
xor     ebx, ebx
mov     ds:word_5590CC, bx

loc_40E8BA:
mov     eax, ds:dword_5590C8
inc     ds:word_5590CC
mov     edx, [eax]
sar     edx, 10h
mov     ecx, ds:dword_5590C8+2
sar     ecx, 10h
cmp     ecx, edx
jnz     short loc_40E918
xor     edi, edi
mov     ds:word_5590CC, di
add     eax, 4
mov     ds:dword_5590C8, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40E918:
mov     eax, ds:dword_5590C0
cmp     word ptr [eax+2], 0
jg      short loc_40E93C
mov     edx, [eax]
sar     edx, 10h
shl     edx, 2
add     eax, edx
mov     ds:dword_5590C0, eax
xor     ebx, ebx
mov     ds:word_5590C4, bx

loc_40E93C:
mov     eax, ds:dword_5590C0
inc     ds:word_5590C4
mov     ecx, [eax]
sar     ecx, 10h
mov     edx, ds:dword_5590C0+2
sar     edx, 10h
cmp     edx, ecx
jnz     short loc_40E99A
xor     edi, edi
mov     ds:word_5590C4, di
add     eax, 4
mov     ds:dword_5590C0, eax
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40E99A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E877 endp




sub_40E9A0 proc near
push    ebx
push    ecx
push    edx
push    esi
push    ebp
mov     ecx, eax
mov     ebx, offset dword_560BDC
mov     eax, ds:dword_5590D4
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40E9EF
cmp     dl, ds:byte_560BE4
jnz     short loc_40E9EF
mov     dl, [eax+1]
cmp     dl, ds:byte_560BE5
jnz     short loc_40E9EF
xor     edx, edx
mov     dx, [eax+2]
mov     esi, ds:dword_560BF8
cmp     edx, esi
jnz     short loc_40E9EF
xor     edx, esi
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40E7E6
add     ds:dword_5590D4, 6

loc_40E9EF:
mov     eax, ds:dword_5590D0
mov     dl, [eax]
cmp     dl, 0FFh
jz      short loc_40EA29
cmp     dl, [ebx+8]
jnz     short loc_40EA29
mov     dl, [eax+1]
cmp     dl, [ebx+9]
jnz     short loc_40EA29
xor     edx, edx
mov     dx, [eax+2]
mov     ebp, [ebx+1Ch]
cmp     edx, ebp
jnz     short loc_40EA29
xor     edx, ebp
mov     dx, [eax+4]
mov     eax, ecx
call    sub_40E833
add     ds:dword_5590D0, 6

loc_40EA29:
mov     eax, ecx
call    sub_40E877
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40E9A0 endp




sub_40EA36 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     byte ptr [ecx+147h], 0FFh
mov     al, [ecx+147h]
mov     [ecx+143h], al
mov     ds:dword_5590D4, offset unk_50CD90
mov     ds:dword_5590D0, offset unk_50CDF6
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40EA36 endp




sub_40EA86 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EAA2
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B

loc_40EA9F:
inc     byte ptr [ecx+0Ah]

loc_40EAA2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EA86 endp




sub_40EAA6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 7
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 5Ah ; 'Z'
jmp     short loc_40EA9F
sub_40EAA6 endp




sub_40EABD proc near
push    edx
dec     byte ptr [eax+0Ch]
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ch
jnz     short loc_40EACF
inc     byte ptr [eax+0Ah]

loc_40EACF:
pop     edx
retn
sub_40EABD endp




sub_40EAD1 proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_40EAE2
mov     eax, [eax+44h]
inc     byte ptr [eax+8]

loc_40EAE2:
pop     edx

locret_40EAE3:
retn
sub_40EAD1 endp




sub_40EAE4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EB00
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB00:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EAE4 endp




sub_40EB04 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EB25
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB25:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EB04 endp




sub_40EB29 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 22h ; '"'
jnz     short loc_40EB4A
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB4A:
pop     edx
pop     ecx
pop     ebx

locret_40EB4D:
retn
sub_40EB29 endp




sub_40EB4E proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EB54[edx*4]
pop     edx
retn
sub_40EB4E endp




sub_40EB5D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EB7E
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB7E:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EB5D endp




sub_40EB82 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EBA3
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBA3:
pop     edx
pop     ecx
pop     ebx
sub_40EB82 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_39]



sub_40EBA7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EBAD[edx*4]
pop     edx
retn
sub_40EBA7 endp




sub_40EBB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EBD2
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBD2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBB6 endp




sub_40EBD6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EBF2
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBF2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBD6 endp




sub_40EBF6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EC12
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EC12:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBF6 endp




sub_40EC16 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EC32
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx

loc_40EC2A:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EC32:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EC16 endp




sub_40EC36 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 9
jmp     short loc_40EC2A
sub_40EC36 endp




sub_40EC44 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 12h
jnz     short loc_40EC53
inc     byte ptr [eax+0Ah]

loc_40EC53:
pop     edx
retn
sub_40EC44 endp




sub_40EC55 proc near
push    edx
add     word ptr [eax+26h], 2Ch ; ','
mov     edx, [eax+98h]
cmp     byte ptr [edx], 17h
jnz     short loc_40EC69
inc     byte ptr [eax+0Ah]

loc_40EC69:
pop     edx
sub_40EC55 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_40]



sub_40EC6B proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EC71[edx*4]
pop     edx
retn
sub_40EC6B endp




sub_40EC7A proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40EC80[edx*4]
pop     edx
retn
sub_40EC7A endp




sub_40EC89 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40EC9A
mov     eax, ecx
call    sub_40EA36

loc_40EC9A:
mov     eax, ecx
call    sub_40EC7A
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_40ECB9
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40ECB9:
mov     eax, ecx
call    sub_40E9A0
mov     eax, ecx
call    sub_40ECF2
pop     edx
pop     ecx
retn
sub_40EC89 endp

jpt_40ED13 dd offset def_40ED13 ; jump table for switch statement
dd offset loc_40ED1A
dd offset loc_40ED1A
dd offset loc_40ED1A
dd offset loc_40ED3E
dd offset loc_40ED56
dd offset loc_40ED60
dd offset loc_40ED6A
dd offset loc_40ED97
dd offset loc_40EDA1



sub_40ECF2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, ds:dword_560C10
mov     byte ptr [eax+0Ch], 1
mov     bl, [edx+0ACh]
cmp     bl, 9           ; switch 10 cases
ja      def_40ED13      ; jumptable 0040ED13 default case, case 0
xor     ecx, ecx
mov     cl, bl
jmp     jpt_40ED13[ecx*4] ; switch jump

loc_40ED1A:             ; jumptable 0040ED13 cases 1-3
mov     edx, [edx+98h]
mov     dl, [edx]
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF0A

loc_40ED30:
mov     dx, [edx]
imul    edx, -1
mov     [eax+58h], dx
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED3E:             ; jumptable 0040ED13 case 4
mov     edx, [edx+98h]
mov     dl, [edx]
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF4C
jmp     short loc_40ED30

loc_40ED56:             ; jumptable 0040ED13 case 5
mov     word ptr [eax+58h], 13Eh
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED60:             ; jumptable 0040ED13 case 6
mov     word ptr [eax+58h], 0FFC1h
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED6A:             ; jumptable 0040ED13 case 7
mov     edx, [edx+98h]
mov     bh, [edx]
cmp     bh, 1Fh
jnb     short loc_40ED89
mov     dl, bh
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF92
jmp     short loc_40ED30

loc_40ED89:
mov     byte ptr [eax+0Ch], 0
sub     word ptr [eax+58h], 11Ch
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED97:             ; jumptable 0040ED13 case 8
mov     word ptr [eax+58h], 0FEC2h
pop     edx
pop     ecx
pop     ebx
retn

loc_40EDA1:             ; jumptable 0040ED13 case 9
mov     word ptr [eax+58h], 0FEC2h
mov     edx, [edx+98h]
cmp     byte ptr [edx], 12h
jb      short def_40ED13 ; jumptable 0040ED13 default case, case 0
mov     byte ptr [eax+0Ch], 0

def_40ED13:             ; jumptable 0040ED13 default case, case 0
pop     edx
pop     ecx
pop     ebx
retn
sub_40ECF2 endp




sub_40EDBA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40EDCA[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40EDDE
mov     eax, ecx
call    sub_4DEADD

loc_40EDDE:
mov     edx, ebx
mov     eax, ecx
call    sub_40EF30
pop     edx
pop     ecx
pop     ebx
retn
sub_40EDBA endp




sub_40EDEB proc near
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
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_40EEF0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40EDEB endp




sub_40EE43 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 64h ; 'd'
jb      short loc_40EE86
jbe     loc_40EEBC
cmp     eax, 8Ch
jb      short loc_40EE7C
jbe     loc_40EED6
cmp     eax, 0BEh
jz      loc_40EEDD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE7C:
cmp     eax, 78h ; 'x'
jz      short loc_40EEC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE86:
cmp     eax, 2Dh ; '-'
jb      short loc_40EE97
jbe     short loc_40EEAE
cmp     eax, 5Fh ; '_'
jz      short loc_40EEB5
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE97:
cmp     eax, 1Eh
jnz     short loc_40EEEB
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
jmp     short loc_40EEE2

loc_40EEAE:
mov     ebx, 1
jmp     short loc_40EEE2

loc_40EEB5:
mov     ebx, 2
jmp     short loc_40EEE2

loc_40EEBC:
mov     ebx, 3
jmp     short loc_40EEE2

loc_40EEC3:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EED6:
mov     ebx, 4
jmp     short loc_40EEE2

loc_40EEDD:
mov     ebx, 5

loc_40EEE2:
mov     edx, esi
mov     eax, ecx
call    sub_40EEF0

loc_40EEEB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40EE43 endp




sub_40EEF0 proc near
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
mov     ebx, ds:off_50D080[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50D09C[eax*4]
mov     [edx+10h], eax
retn
sub_40EEF0 endp




sub_40EF30 proc near
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
jb      short loc_40EF5C
jbe     short loc_40EF60
cmp     ax, 7FFFh
jnz     short loc_40EF5C
mov     word ptr [edx+4], 0
jmp     short loc_40EF60

loc_40EF5C:
inc     word ptr [esi+4]

loc_40EF60:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_40EFA5
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40EFA5:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40EFD0
jbe     short loc_40EFD4
cmp     ax, 7FFFh
jnz     short loc_40EFD0
mov     word ptr [esi+0Ah], 0
jmp     short loc_40EFD4

loc_40EFD0:
inc     word ptr [esi+0Ah]

loc_40EFD4:
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
jz      short loc_40F023
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40F023:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40EF30 endp

jpt_40F09F dd offset loc_40F0A6 ; jump table for switch statement
dd offset loc_40F0E0
dd offset loc_40F106
dd offset loc_40F1BF
dd offset loc_40F1E3
dd offset loc_40F1FB
dd offset loc_40F249
dd offset def_40F09F



sub_40F050 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     edx, offset dword_560BDC
mov     [esp+1Ch+var_1C], edx
lea     ebp, [eax+640h]
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
mov     al, [ecx+8]
cmp     al, 7           ; switch 8 cases
ja      def_40F09F      ; jumptable 0040F09F default case, case 7
and     eax, 0FFh
jmp     jpt_40F09F[eax*4] ; switch jump

loc_40F0A6:             ; jumptable 0040F09F case 0
mov     edx, ebp
mov     eax, ecx
call    sub_40F299

def_40F09F:             ; jumptable 0040F09F default case, case 7
mov     edx, ebp
mov     eax, ecx
call    sub_40F332
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      loc_40F288
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     loc_40F28F

loc_40F0E0:             ; jumptable 0040F09F case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 1Bh
jnz     short def_40F09F ; jumptable 0040F09F default case, case 7
cmp     dword ptr [edx+10h], 5
jnz     short def_40F09F ; jumptable 0040F09F default case, case 7
mov     ebx, 2

loc_40F0F8:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319

loc_40F101:
inc     byte ptr [ecx+8]
jmp     short def_40F09F ; jumptable 0040F09F default case, case 7

loc_40F106:             ; jumptable 0040F09F case 2
cmp     ds:byte_560BE5, 1Bh
jnz     loc_40F191
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_40F13F
jbe     loc_40F183
cmp     eax, 0D7h
jb      short loc_40F138
jbe     short loc_40F176
cmp     eax, 0FAh
jz      short loc_40F183
jmp     loc_40F191

loc_40F138:
cmp     eax, 64h ; 'd'
jz      short loc_40F166
jmp     short loc_40F191

loc_40F13F:
cmp     eax, 1Eh
jb      short loc_40F14D
jbe     short loc_40F15F
cmp     eax, 32h ; '2'
jz      short loc_40F152
jmp     short loc_40F191

loc_40F14D:
cmp     eax, 14h
jnz     short loc_40F191

loc_40F152:
xor     ebx, ebx

loc_40F154:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319
jmp     short loc_40F191

loc_40F15F:
mov     ebx, 2
jmp     short loc_40F154

loc_40F166:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     short loc_40F15F

loc_40F176:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     short loc_40F152

loc_40F183:
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40F300

loc_40F191:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+9], 1Dh
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     esi, [eax+10h]
cmp     esi, 1
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
mov     ebx, esi
jmp     loc_40F0F8

loc_40F1BF:             ; jumptable 0040F09F case 3
cmp     ds:dword_560BEC, 19h
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebp+2], 0

loc_40F1D9:
mov     ebx, 3
jmp     loc_40F0F8

loc_40F1E3:             ; jumptable 0040F09F case 4
cmp     byte ptr [ecx+0A4h], 0Fh
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     word ptr [ebp+2], 0Fh
jmp     loc_40F101

loc_40F1FB:             ; jumptable 0040F09F case 5
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, ds:dword_560BEC
cmp     eax, 6Eh ; 'n'
jb      short loc_40F21A
jbe     short loc_40F236
cmp     eax, 82h
jz      short loc_40F1D9
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F21A:
cmp     eax, 5Fh ; '_'

loc_40F21D:             ; jumptable 0040F09F default case, case 7
jnz     def_40F09F
mov     ebx, 1

loc_40F228:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F236:
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F249:             ; jumptable 0040F09F case 6
mov     eax, ds:dword_560BEC
cmp     eax, 0A0h
jb      short loc_40F270
jbe     short loc_40F277
cmp     eax, 0C6h
jb      def_40F09F      ; jumptable 0040F09F default case, case 7
jbe     short loc_40F27E
cmp     eax, 0F0h
jz      short loc_40F236
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F270:
cmp     eax, 91h
jmp     short loc_40F21D

loc_40F277:
mov     ebx, 3
jmp     short loc_40F228

loc_40F27E:
mov     ebx, 1
jmp     loc_40F0F8

loc_40F288:
mov     eax, ecx
call    sub_4DEADD

loc_40F28F:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F050 endp




sub_40F299 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40F300
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40F319
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_40F299 endp




sub_40F300 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D114[ebx*4]
mov     [edx+4], eax
retn
sub_40F300 endp




sub_40F319 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D128[ebx*4]
mov     [edx+8], eax
retn
sub_40F319 endp




sub_40F332 proc near
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
cmp     al, 3Fh ; '?'
jb      short loc_40F357
jbe     short loc_40F35A
cmp     al, 7Fh
jnz     short loc_40F357
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40F35A

loc_40F357:
inc     byte ptr [esi+0Eh]

loc_40F35A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40F39C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40F39C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 3Fh ; '?'
jb      short loc_40F3BF
jbe     short loc_40F3C2
cmp     al, 7Fh
jnz     short loc_40F3BF
mov     byte ptr [esi+11h], 0
jmp     short loc_40F3C2

loc_40F3BF:
inc     byte ptr [esi+11h]

loc_40F3C2:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40F404
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40F404:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40F332 endp




sub_40F40F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_40F41A[ecx*4]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F40F endp




sub_40F47A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 640h
or      byte ptr [ecx], 2
mov     word ptr [eax], 2
mov     dx, [ecx+56h]
mov     [eax+0Ah], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_50D138
mov     byte ptr [ecx+9], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40F47A endp




sub_40F505 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+640h]
mov     [esp+1Ch+var_1C], edx
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
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
mov     edx, [esp+1Ch+var_1C]
test    byte ptr [edx], 2
jz      short loc_40F54E
mov     eax, ebp
call    sub_40F7F8

loc_40F54E:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_40F555[edx*4]
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      short loc_40F57D
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_40F584

loc_40F57D:
mov     eax, ebp
call    sub_4DEADD

loc_40F584:
test    byte ptr [ebp+0], 2
jz      short loc_40F59D
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40F59D:
mov     edx, [esp+1Ch+var_1C]
test    byte ptr [edx], 4
jnz     short loc_40F5B8
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697

loc_40F5B8:
add     esp, 4
jmp     loc_40F745
sub_40F505 endp



; Attributes: thunk

sub_40F5C0 proc near
jmp     sub_4DE336
sub_40F5C0 endp




sub_40F5C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40F5CB[edx*4]
pop     edx
retn
sub_40F5C5 endp




sub_40F5D4 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+640h]
mov     byte ptr [eax+0ACh], 0
call    rand_
and     eax, 0Fh
mov     al, ds:byte_50D164[eax]
xor     ah, ah
mov     [ecx+8], ax
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
retn
sub_40F5D4 endp




sub_40F5FF proc near
push    ebx
push    edx
lea     edx, [eax+640h]
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     short loc_40F61D
mov     byte ptr [eax+0ACh], 9
inc     byte ptr [eax+0Ah]

loc_40F61D:
pop     edx
pop     ebx
retn
sub_40F5FF endp




sub_40F620 proc near
cmp     byte ptr [eax+0A7h], 0
jge     short locret_40F62D
mov     byte ptr [eax+0Ah], 0

locret_40F62D:
retn
sub_40F620 endp




sub_40F62E proc near
push    edx
lea     edx, [eax+640h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_40F63E[edx*4]
pop     edx
retn
sub_40F62E endp




sub_40F647 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+640h]
inc     byte ptr [edi+3]
mov     ax, [esi+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
mov     eax, esi
add     eax, 14h
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_40F6B2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
neg     eax
jmp     short loc_40F6C7

loc_40F6B2:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552

loc_40F6C7:
sar     eax, 3
mov     [edi+6], ax
xor     ecx, ecx
mov     cl, [esi+0Ch]
lea     eax, [esi+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
jmp     loc_40F5B8
sub_40F647 endp




sub_40F6E4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_40F731
mov     byte ptr [esi+0ACh], 9
inc     byte ptr [edi+3]

loc_40F731:
mov     dh, [ebp+0]
test    dh, dh
jnz     short loc_40F745
and     byte ptr [edi], 0FBh
mov     byte ptr [edi+3], 3
mov     [esi+0ACh], dh

loc_40F745:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F6E4 endp




sub_40F74C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_40F731
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [edi+3]
jmp     short loc_40F731
sub_40F74C endp




sub_40F79B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_40F7D3
mov     eax, 4Eh ; 'N'
call    sub_47E888
test    eax, eax
jz      short loc_40F7E8

loc_40F7D3:
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     byte ptr [ecx+9], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40F7E8:
add     dx, [ecx+56h]
and     dh, 0Fh
mov     [ecx+56h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F79B endp




sub_40F7F8 proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 640h
mov     ecx, ds:dword_5F84E8
cmp     edx, ecx
jnz     short loc_40F821
mov     byte ptr [ecx+9], 1
mov     byte ptr [eax+3], 0
mov     dl, [eax]
or      dl, 4
mov     [eax], dl
mov     dh, dl
and     dh, 0FDh
mov     [eax], dh

loc_40F821:
pop     edx
pop     ecx
retn
sub_40F7F8 endp




sub_40F824 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590E4, dx
mov     eax, ds:dword_5590E0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

