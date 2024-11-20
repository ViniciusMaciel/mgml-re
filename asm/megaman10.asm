loc_4155D4:
mov     eax, ecx
call    sub_415555
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_415564 endp




sub_4155E0 proc near
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
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
movzx   edi, byte ptr [eax+3]
lea     esi, [eax+5B0h]
mov     ebx, esi
mov     edx, offset dword_560BDC
call    ds:funcs_41561E[edi*4]
mov     edx, esi
mov     eax, ecx
call    sub_415BC2
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_41564F
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_415656

loc_41564F:
mov     eax, ecx
call    sub_4DEADD

loc_415656:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4155E0 endp

jpt_4156BA dd offset loc_4156C1 ; jump table for switch statement
dd offset loc_41571E
dd offset loc_415764
dd offset loc_4157A9
dd offset loc_4157B2
dd offset loc_4157DC
dd offset loc_4157E5
dd offset loc_415822
dd offset loc_415830
dd offset loc_415870
dd offset loc_415891
dd offset loc_4158C3
dd offset loc_4158CF
dd offset loc_4158F4
dd offset loc_41597B
dd offset loc_415999
dd offset loc_4159A5



sub_4156A0 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     edi, edx
mov     ebp, ebx
mov     al, [eax+8]
cmp     al, 10h         ; switch 17 cases
ja      def_4156BA      ; jumptable 004156BA default case
and     eax, 0FFh
jmp     jpt_4156BA[eax*4] ; switch jump

loc_4156C1:             ; jumptable 004156BA case 0
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 1400140h
mov     dword ptr [esi+15Ch], 140h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 1
mov     byte ptr [esi+0ADh], 0FFh
xor     ebx, ebx
mov     eax, esi
mov     edx, ebp
call    sub_415B6E
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_41571E:             ; jumptable 004156BA case 1
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 2
jnz     def_4156BA      ; jumptable 004156BA default case
mov     eax, [edx+10h]
cmp     eax, 28h ; '('
jb      short loc_415747
jbe     short loc_41575A
cmp     eax, 2Dh ; '-'

loc_41573C:
jz      loc_4157D4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415747:
cmp     eax, 0Ah
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 1
jmp     loc_415963

loc_41575A:
mov     ebx, 2
jmp     loc_415963

loc_415764:             ; jumptable 004156BA case 2
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_41578B
cmp     byte ptr [esi+0A4h], 24h ; '$'
jbe     short loc_41578B
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 48h ; 'H'
mov     eax, esi
call    sub_4DD43B

loc_41578B:
cmp     byte ptr [edi+9], 3
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 1
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 4
jmp     loc_415862

loc_4157A9:             ; jumptable 004156BA case 3
mov     byte ptr [esi+0ACh], 2
jmp     short loc_4157D4

loc_4157B2:             ; jumptable 004156BA case 4
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh

loc_4157CE:             ; jumptable 004156BA default case
jnz     def_4156BA

loc_4157D4:
inc     byte ptr [esi+8]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4157DC:             ; jumptable 004156BA case 5
mov     byte ptr [esi+0ACh], 7
jmp     short loc_4157D4

loc_4157E5:             ; jumptable 004156BA case 6
cmp     byte ptr [edx+9], 4
jnz     def_4156BA      ; jumptable 004156BA default case
mov     eax, [edx+10h]
cmp     eax, 82h
jb      short loc_415805
jbe     short loc_415818
cmp     eax, 8Ch
jmp     loc_41573C

loc_415805:
cmp     eax, 3Ch ; '<'
jnz     def_4156BA      ; jumptable 004156BA default case
mov     ebx, 3
jmp     loc_415963

loc_415818:
mov     ebx, 4
jmp     loc_415963

loc_415822:             ; jumptable 004156BA case 7
mov     byte ptr [esi+0ACh], 3
mov     ebx, 5
jmp     short loc_415862

loc_415830:             ; jumptable 004156BA case 8
cmp     byte ptr [edx+9], 4
jnz     short loc_415849
cmp     dword ptr [edx+10h], 96h
jnz     short loc_415849
mov     ebx, 6
jmp     loc_415963

loc_415849:
cmp     byte ptr [edi+9], 5
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 1

loc_415857:             ; jumptable 004156BA default case
jnz     def_4156BA
mov     ebx, 8

loc_415862:
mov     edx, ebp
mov     eax, esi
call    sub_415B6E
jmp     loc_4157D4

loc_415870:             ; jumptable 004156BA case 9
mov     byte ptr [esi+0ACh], 4
mov     byte ptr [esi+0ADh], 0FFh
cmp     byte ptr [edx+9], 5
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 6Eh ; 'n'
jmp     loc_4157CE

loc_415891:             ; jumptable 004156BA case 10
cmp     dword ptr [edx+10h], 78h ; 'x'
jnz     short loc_4158A5
mov     ebx, 7
mov     edx, ebp
mov     eax, esi
call    sub_415B6E

loc_4158A5:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0A0h
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     short loc_415857

loc_4158C3:             ; jumptable 004156BA case 11
mov     byte ptr [esi+0ACh], 8
jmp     loc_4157D4

loc_4158CF:             ; jumptable 004156BA case 12
cmp     byte ptr [edx+9], 6
jnz     def_4156BA      ; jumptable 004156BA default case
cmp     dword ptr [edx+10h], 1
jnz     def_4156BA      ; jumptable 004156BA default case
mov     byte ptr [esi+0ACh], 5
mov     ebx, 0Ah
jmp     loc_415862

loc_4158F4:             ; jumptable 004156BA case 13
mov     byte ptr [esi+0ADh], 0FFh
mov     eax, [edx+10h]
cmp     eax, 0C8h
jb      short loc_415935
jbe     short loc_415957
cmp     eax, 104h
jb      short loc_415929
jbe     short loc_415957
cmp     eax, 136h
jb      def_4156BA      ; jumptable 004156BA default case
jbe     short loc_41595E
cmp     eax, 15Eh
jz      short loc_415971
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415929:
cmp     eax, 0F0h

loc_41592E:
jz      short loc_41595E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415935:
cmp     eax, 64h ; 'd'
jb      short loc_41594E
jbe     short loc_41595E
cmp     eax, 6Eh ; 'n'
jb      def_4156BA      ; jumptable 004156BA default case
jbe     short loc_415957
cmp     eax, 0AAh
jmp     short loc_41592E

loc_41594E:
cmp     eax, 0Ah
jnz     def_4156BA      ; jumptable 004156BA default case

loc_415957:
mov     ebx, 9
jmp     short loc_415963

loc_41595E:
mov     ebx, 0Ah

loc_415963:
mov     edx, ebp
mov     eax, esi
call    sub_415B6E
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_415971:
mov     ebx, 9
jmp     loc_415862

loc_41597B:             ; jumptable 004156BA case 14
cmp     byte ptr [edx+9], 6
jnz     short loc_41598A
cmp     dword ptr [edi+10h], 168h
jz      short loc_41595E

loc_41598A:
cmp     byte ptr [edi+9], 7
jnz     short def_4156BA ; jumptable 004156BA default case
cmp     dword ptr [edi+10h], 0Ah
jmp     loc_4157CE

loc_415999:             ; jumptable 004156BA case 15
mov     byte ptr [esi+0ACh], 6
jmp     loc_4157D4

loc_4159A5:             ; jumptable 004156BA case 16
cmp     byte ptr [esi+0A4h], 11h
jbe     short def_4156BA ; jumptable 004156BA default case
add     word ptr [esi+56h], 14h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFF60h
mov     eax, esi
call    sub_4DD43B

def_4156BA:             ; jumptable 004156BA default case
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4156A0 endp

jpt_415A06 dd offset loc_415A0D ; jump table for switch statement
dd offset loc_415A8D
dd offset loc_415AE6
dd offset loc_415AF0
dd offset loc_415AFC
dd offset loc_415B0A
dd offset loc_415B4A
dd offset loc_415B61
dd offset def_415A06



sub_4159EC proc near
push    ecx
push    esi
mov     esi, eax
mov     eax, edx
mov     ecx, ebx
mov     dl, [esi+8]
cmp     dl, 8           ; switch 9 cases
ja      def_415A06      ; jumptable 00415A06 default case, case 8
and     edx, 0FFh
jmp     jpt_415A06[edx*4] ; switch jump

loc_415A0D:             ; jumptable 00415A06 case 0
or      byte ptr [esi], 2
xor     edx, edx
mov     eax, esi
call    sub_4DD0F8
mov     dword ptr [esi+158h], 2000200h
mov     dword ptr [esi+15Ch], 200h
mov     word ptr [esi+15Eh], 4210h
mov     dword ptr [esi+78h], 0
mov     byte ptr [esi+0ACh], 10h
mov     byte ptr [esi+0ADh], 0FFh
mov     ebx, 1
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
mov     edx, ecx
mov     eax, esi
call    sub_415C9F
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 0
mov     byte ptr [esi+0Bh], 0

def_415A06:             ; jumptable 00415A06 default case, case 8
cmp     byte ptr [esi+8], 6
jnb     short loc_415A8A
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 40h ; '@'
mov     eax, esi
call    sub_4ED88B

loc_415A8A:
pop     esi
pop     ecx
retn

loc_415A8D:             ; jumptable 00415A06 case 1
mov     dl, [eax+9]
test    dl, dl
jnz     short loc_415AC7
mov     eax, [eax+10h]
cmp     eax, 41h ; 'A'
jb      short loc_415AAE
jbe     short loc_415AC0
cmp     eax, 5Fh ; '_'
jb      short def_415A06 ; jumptable 00415A06 default case, case 8
jbe     short loc_415AB3
cmp     eax, 0EBh
jz      short loc_415AC0
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AAE:
cmp     eax, 2Dh ; '-'
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AB3:
xor     ebx, ebx

loc_415AB5:
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AC0:
mov     ebx, 1
jmp     short loc_415AB5

loc_415AC7:
cmp     dl, 1
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8
cmp     dl, [eax+7]
jnz     short def_415A06 ; jumptable 00415A06 default case, case 8
xor     ebx, ebx
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
mov     word ptr [ecx], 0

loc_415AE1:
inc     byte ptr [esi+8]
jmp     short def_415A06 ; jumptable 00415A06 default case, case 8

loc_415AE6:             ; jumptable 00415A06 case 2
mov     byte ptr [esi+0ACh], 11h
inc     byte ptr [esi+8]

loc_415AF0:             ; jumptable 00415A06 case 3
cmp     byte ptr [eax+7], 2
jnz     def_415A06      ; jumptable 00415A06 default case, case 8
jmp     short loc_415AE1

loc_415AFC:             ; jumptable 00415A06 case 4
mov     word ptr [ebx], 0
mov     byte ptr [esi+0ACh], 12h
jmp     short loc_415AE1

loc_415B0A:             ; jumptable 00415A06 case 5
cmp     word ptr [ebx], 1Eh
jle     short loc_415B14
mov     byte ptr [eax+7], 3

loc_415B14:
inc     word ptr [ecx]
mov     eax, [esi+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     short loc_415B28
inc     byte ptr [esi+8]

loc_415B28:
cmp     byte ptr [esi+0A4h], 0Fh
jbe     def_415A06      ; jumptable 00415A06 default case, case 8
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0FFFFFFC9h
mov     eax, esi
call    sub_4DD43B
jmp     def_415A06      ; jumptable 00415A06 default case, case 8

loc_415B4A:             ; jumptable 00415A06 case 6
mov     byte ptr [esi+0ACh], 13h
mov     ebx, 2
mov     edx, ecx
mov     eax, esi
call    sub_415B6E
jmp     short loc_415AE1

loc_415B61:             ; jumptable 00415A06 case 7
mov     eax, [ebx+14h]
call    sub_4DE2F6
jmp     loc_415AE1
sub_4159EC endp




sub_415B6E proc near
push    ecx
mov     ecx, eax
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     al, [edx+10h]
mov     [edx+0Dh], al
mov     eax, ebx
shl     eax, 2
cmp     byte ptr [ecx+3], 0
jnz     short loc_415BAE
mov     ecx, ds:off_50ED0F[eax]
mov     [edx+4], ecx
mov     eax, ds:off_50ED3B[eax]
mov     [edx+8], eax
pop     ecx
retn

loc_415BAE:
mov     ecx, ds:off_50ED67[eax]
mov     [edx+4], ecx
mov     eax, ds:off_50ED73[eax]
mov     [edx+8], eax
pop     ecx
retn
sub_415B6E endp




sub_415BC2 proc near
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
jb      short loc_415BE7
jbe     short loc_415BEA
cmp     al, 7Fh
jnz     short loc_415BE7
mov     byte ptr [edx+0Eh], 0
jmp     short loc_415BEA

loc_415BE7:
inc     byte ptr [esi+0Eh]

loc_415BEA:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_415C2C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_415C2C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_415C4F
jbe     short loc_415C52
cmp     al, 7Fh
jnz     short loc_415C4F
mov     byte ptr [esi+11h], 0
jmp     short loc_415C52

loc_415C4F:
inc     byte ptr [esi+11h]

loc_415C52:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_415C94
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_415C94:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_415BC2 endp




sub_415C9F proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     [esp+18h+var_18], edx
xor     cl, cl
lea     ebx, [edx+18h]
mov     edx, 3
call    sub_451925
mov     edx, [esp+18h+var_18]
mov     [edx+14h], eax
mov     byte ptr [eax+0Ch], 3Fh ; '?'

loc_415CC5:
movsx   edx, cl
shl     edx, 3
mov     eax, [esp+18h+var_18]
add     eax, edx
lea     edi, [eax+18h]
lea     esi, [ebp+14h]
movsd
movsd
mov     bx, ds:word_50ED7F[edx]
add     [eax+18h], bx
mov     bx, ds:word_50ED81[edx]
add     [eax+1Ah], bx
mov     dx, ds:word_50ED83[edx]
add     [eax+1Ch], dx
inc     cl
cmp     cl, 6
jl      short loc_415CC5
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_415C9F endp




sub_415D09 proc near
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
movzx   esi, byte ptr [eax+8]
mov     ebx, ebp
mov     edx, offset dword_560BDC
call    ds:funcs_415D48[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_416222
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_415D7D
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_415D84

loc_415D7D:
mov     eax, ecx
call    sub_4DEADD

loc_415D84:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_415D09 endp




sub_415D8B proc near
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
mov     byte ptr [ecx+0ACh], 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 0
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_416209
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_415D8B endp

db 90h
jpt_415E54 dd offset loc_415E5B ; jump table for switch statement
dd offset loc_415E7A
dd offset loc_415F3B
dd offset loc_415F74
dd offset loc_415FA3
dd offset loc_415FC5
dd offset loc_41603D
dd offset loc_41606F
dd offset loc_416105
dd offset loc_416142
dd offset loc_416190
dd offset loc_4161A8
dd offset loc_4161C7



sub_415E39 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 0Ch         ; switch 13 cases
ja      def_415E54      ; jumptable 00415E54 default case
and     edx, 0FFh
jmp     jpt_415E54[edx*4] ; switch jump

loc_415E5B:             ; jumptable 00415E54 case 0
cmp     byte ptr [ecx+0A4h], 0Eh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0Eh
jmp     loc_41613B

loc_415E7A:             ; jumptable 00415E54 case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [eax+9], 0
jnz     def_415E54      ; jumptable 00415E54 default case
mov     eax, [eax+10h]
cmp     eax, 78h ; 'x'
jb      short loc_415EC9
jbe     loc_415F01
cmp     eax, 96h
jb      short loc_415EBE
jbe     loc_415F0F
cmp     eax, 0C8h
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_415F19
cmp     eax, 0DCh
jz      short loc_415F23
pop     edi
pop     esi
pop     ecx
retn

loc_415EBE:
cmp     eax, 8Ch

loc_415EC3:
jz      short loc_415F19
pop     edi
pop     esi
pop     ecx
retn

loc_415EC9:
cmp     eax, 28h ; '('
jb      short loc_415ED9
jbe     short loc_415EF0
cmp     eax, 5Fh ; '_'
jz      short loc_415EFA
pop     edi
pop     esi
pop     ecx
retn

loc_415ED9:
cmp     eax, 14h
jnz     def_415E54      ; jumptable 00415E54 default case
mov     ebx, 1
mov     eax, ecx
mov     edx, esi
jmp     loc_4161E7

loc_415EF0:
mov     ebx, 0Bh
jmp     loc_416183

loc_415EFA:
xor     ebx, ebx
jmp     loc_416183

loc_415F01:
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_415F0F:
mov     ebx, 0Ah
jmp     loc_416183

loc_415F19:
mov     ebx, 1
jmp     loc_416183

loc_415F23:
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 2
jmp     loc_416132

loc_415F3B:             ; jumptable 00415E54 case 2
cmp     byte ptr [eax+9], 1
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Ah
mov     word ptr [esi+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 6
jmp     loc_416132

loc_415F74:             ; jumptable 00415E54 case 3
mov     eax, [ecx+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     di, [ebx]
cmp     di, 1Eh
jge     short loc_415F99
mov     eax, edi
inc     eax
mov     [ebx], ax
pop     edi
pop     esi
pop     ecx
retn

loc_415F99:
mov     word ptr [ebx], 0
jmp     loc_41613B

loc_415FA3:             ; jumptable 00415E54 case 4
mov     byte ptr [ecx+0ACh], 0Bh
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Bh
jmp     loc_416132

loc_415FC5:             ; jumptable 00415E54 case 5
mov     dl, [eax+9]
cmp     dl, 2
jnz     short loc_416005
mov     eax, [eax+10h]
cmp     eax, 19h
jb      short loc_415FE4
jbe     loc_415EF0
cmp     eax, 30h ; '0'
jz      short loc_415FFB
pop     edi
pop     esi
pop     ecx
retn

loc_415FE4:
cmp     eax, 0Ah
jnz     def_415E54      ; jumptable 00415E54 default case
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_415FFB:
mov     ebx, 4
jmp     loc_416183

loc_416005:
cmp     dl, 4
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Ch
mov     word ptr [ebx+2], 0
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Ch
jmp     loc_416132

loc_41603D:             ; jumptable 00415E54 case 6
mov     byte ptr [ecx+0ADh], 0FFh
mov     dx, [ebx]
cmp     dx, 0Ah
jge     short loc_416057
mov     ebx, edx
inc     ebx
mov     [esi], bx
pop     edi
pop     esi
pop     ecx
retn

loc_416057:
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     word ptr [esi], 0
jmp     loc_41613B

loc_41606F:             ; jumptable 00415E54 case 7
mov     dl, [eax+9]
cmp     dl, 4
jnz     short loc_4160D0
mov     eax, [eax+10h]
cmp     eax, 55h ; 'U'
jb      short loc_416096
jbe     short loc_4160B8
cmp     eax, 7Dh ; '}'
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_4160AE
cmp     eax, 0C3h
jmp     loc_415EC3

loc_416096:
cmp     eax, 19h
jb      def_415E54      ; jumptable 00415E54 default case
jbe     loc_415F19
cmp     eax, 37h ; '7'
jnz     def_415E54      ; jumptable 00415E54 default case

loc_4160AE:
mov     ebx, 0Ch
jmp     loc_416183

loc_4160B8:
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 5
jmp     loc_416183

loc_4160D0:
cmp     dl, 5
jnz     def_415E54      ; jumptable 00415E54 default case
cmp     dword ptr [eax+10h], 1
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ACh], 0Dh
mov     word ptr [ebx+2], 0
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 7
jmp     short loc_416132

loc_416105:             ; jumptable 00415E54 case 8
cmp     byte ptr [ecx+0A4h], 0Eh
jnz     def_415E54      ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Eh

loc_41611F:
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 0Dh

loc_416132:
mov     edx, esi
mov     eax, ecx
call    sub_416209

loc_41613B:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_416142:             ; jumptable 00415E54 case 9
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, [eax+10h]
cmp     eax, 3Ch ; '<'
jb      short loc_416167
jbe     short loc_416189
cmp     eax, 64h ; 'd'
jb      def_415E54      ; jumptable 00415E54 default case
jbe     short loc_41617E
cmp     eax, 78h ; 'x'
jz      short loc_41611F
pop     edi
pop     esi
pop     ecx
retn

loc_416167:
cmp     eax, 32h ; '2'
jnz     def_415E54      ; jumptable 00415E54 default case

loc_416170:
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0

loc_41617E:
mov     ebx, 7

loc_416183:
mov     edx, esi
mov     eax, ecx
jmp     short loc_4161E7

loc_416189:
mov     ebx, 0Dh
jmp     short loc_416183

loc_416190:             ; jumptable 00415E54 case 10
cmp     byte ptr [ecx+0A4h], 20h ; ' '
jnz     short def_415E54 ; jumptable 00415E54 default case
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 20h ; ' '
jmp     short loc_41613B

loc_4161A8:             ; jumptable 00415E54 case 11
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, [eax+10h]
cmp     ebx, 0AAh
jz      short loc_416170
cmp     ebx, 0C8h
jnz     short def_415E54 ; jumptable 00415E54 default case
jmp     loc_41611F

loc_4161C7:             ; jumptable 00415E54 case 12
cmp     dword ptr [eax+10h], 0F3h
jnz     short def_415E54 ; jumptable 00415E54 default case
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_4161F0
mov     ebx, 8
mov     edx, esi
mov     eax, ecx

loc_4161E7:
call    sub_416209

def_415E54:             ; jumptable 00415E54 default case
pop     edi
pop     esi
pop     ecx
retn
sub_415E39 endp




sub_4161F0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50EE8E[ebx*4]
mov     [edx+4], eax
retn
sub_4161F0 endp




sub_416209 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EEB2[ebx*4]
mov     [edx+8], eax
retn
sub_416209 endp




sub_416222 proc near
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
jb      short loc_416247
jbe     short loc_41624A
cmp     al, 7Fh
jnz     short loc_416247
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41624A

loc_416247:
inc     byte ptr [esi+0Eh]

loc_41624A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41628C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41628C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4162AF
jbe     short loc_4162B2
cmp     al, 7Fh
jnz     short loc_4162AF
mov     byte ptr [esi+11h], 0
jmp     short loc_4162B2

loc_4162AF:
inc     byte ptr [esi+11h]

loc_4162B2:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_4162F4
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_4162F4:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_416222 endp

jpt_41635F dd offset loc_416366 ; jump table for switch statement
dd offset loc_4163CB
dd offset loc_4163F8
dd offset loc_41643C
dd offset loc_416474
dd offset loc_4164F6
dd offset loc_416547



sub_41631B proc near
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 6           ; switch 7 cases
ja      def_41635F      ; jumptable 0041635F default case
and     eax, 0FFh
jmp     jpt_41635F[eax*4] ; switch jump

loc_416366:             ; jumptable 0041635F case 0
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     ebx, 5
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 5

loc_4163BD:
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9
jmp     loc_4164EE

loc_4163CB:             ; jumptable 0041635F case 1
cmp     byte ptr [ecx+0A4h], 1Dh
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 6
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 1Dh
jmp     loc_4164EE

loc_4163F8:             ; jumptable 0041635F case 2
mov     byte ptr [ecx+0ADh], 0FFh
mov     ebx, ds:dword_560BEC
cmp     ebx, 32h ; '2'
jnz     short loc_416414
mov     ebx, 0Ah
jmp     loc_41657F

loc_416414:
cmp     ebx, 5Ah ; 'Z'
jnz     short loc_41642B
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 6
jmp     short loc_4163BD

loc_41642B:
cmp     ebx, 0A0h
jnz     def_41635F      ; jumptable 0041635F default case
jmp     loc_4164EE

loc_41643C:             ; jumptable 0041635F case 3
mov     bh, ds:byte_560BE5
cmp     bh, 1
jz      def_41635F      ; jumptable 0041635F default case
cmp     bh, 2
jnz     def_41635F      ; jumptable 0041635F default case
cmp     ds:dword_560BEC, 1
jnz     def_41635F      ; jumptable 0041635F default case
mov     [ecx+0ACh], bh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
jmp     loc_4163BD

loc_416474:             ; jumptable 0041635F case 4
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_41648C
jbe     short loc_4164AD
cmp     eax, 82h
jz      short loc_4164C5
jmp     def_41635F      ; jumptable 0041635F default case

loc_41648C:
cmp     eax, 0Ah
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 7
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 7
jmp     loc_41657F

loc_4164AD:
mov     ebx, 8
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 8
jmp     loc_41657F

loc_4164C5:
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9
mov     byte ptr [ecx+0ACh], 3

loc_4164E8:
mov     word ptr [ebp+2], 0

loc_4164EE:
inc     byte ptr [ecx+8]
jmp     def_41635F      ; jumptable 0041635F default case

loc_4164F6:             ; jumptable 0041635F case 5
mov     ah, ds:byte_560BE5
cmp     ah, 2
jnz     short loc_416530
mov     edi, ds:dword_560BEC
cmp     edi, 96h
jz      short loc_4164AD
cmp     edi, 0C8h
jnz     def_41635F      ; jumptable 0041635F default case
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 2
jmp     short loc_41657F

loc_416530:
cmp     ah, 3
jnz     short def_41635F ; jumptable 0041635F default case
cmp     ds:dword_560BEC, 1
jnz     short def_41635F ; jumptable 0041635F default case
mov     byte ptr [ecx+0ACh], 4
jmp     short loc_4164E8

loc_416547:             ; jumptable 0041635F case 6
mov     edx, ds:dword_560BEC
cmp     edx, 1
jnz     short loc_416567
mov     ebx, 9
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 9
jmp     short loc_41657F

loc_416567:
cmp     edx, 3Ch ; '<'
jnz     short def_41635F ; jumptable 0041635F default case
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_4165C0
mov     ebx, 4

loc_41657F:
mov     edx, ebp
mov     eax, ecx
call    sub_4165D9

def_41635F:             ; jumptable 0041635F default case
mov     edx, ebp
mov     eax, ecx
call    sub_4165F2
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_4165B2
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4165B9

loc_4165B2:
mov     eax, ecx
call    sub_4DEADD

loc_4165B9:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41631B endp




sub_4165C0 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50EF7C[ebx*4]
mov     [edx+4], eax
retn
sub_4165C0 endp




sub_4165D9 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50EFA4[ebx*4]
mov     [edx+8], eax
retn
sub_4165D9 endp




sub_4165F2 proc near
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
jb      short loc_416617
jbe     short loc_41661A
cmp     al, 7Fh
jnz     short loc_416617
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41661A

loc_416617:
inc     byte ptr [esi+0Eh]

loc_41661A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_41665C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41665C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_41667F
jbe     short loc_416682
cmp     al, 7Fh
jnz     short loc_41667F
mov     byte ptr [esi+11h], 0
jmp     short loc_416682

loc_41667F:
inc     byte ptr [esi+11h]

loc_416682:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_4166C4
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_4166C4:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4165F2 endp




sub_4166CF proc near
mov     byte ptr [eax+4], 0
mov     edx, ds:off_50EFDC[edx*4]
mov     [eax+8], edx
mov     byte ptr [eax+5], 0
retn
sub_4166CF endp




sub_4166E2 proc near
mov     byte ptr [eax+6], 0
mov     edx, ds:off_50EFF8[edx*4]
mov     [eax+0Ch], edx
mov     byte ptr [eax+7], 0
retn
sub_4166E2 endp




sub_4166F5 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     ah, [edx+5]
test    ah, ah
jnz     short loc_416769
mov     eax, [edx+1]
sar     eax, 18h
mov     ecx, [edx+8]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_41671E
jbe     short loc_416770
cmp     al, 7Fh
jnz     short loc_41671E
mov     byte ptr [edx+4], 0

loc_41671E:
mov     ecx, [esi+1]
sar     ecx, 18h
mov     eax, [esi+8]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
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
jmp     short loc_416770

loc_416769:
mov     dl, ah
dec     dl
mov     [esi+5], dl

loc_416770:
mov     bl, [esi+7]
test    bl, bl
jnz     short loc_4167DE
mov     eax, [esi+3]
sar     eax, 18h
mov     ecx, [esi+0Ch]
mov     al, [ecx+eax]
cmp     al, 7Eh ; '~'
jb      short loc_416790
jbe     short loc_4167E5
cmp     al, 7Fh
jnz     short loc_416790
mov     [esi+6], bl

loc_416790:
mov     ecx, [esi+3]
sar     ecx, 18h
mov     eax, [esi+0Ch]
movsx   eax, byte ptr [ecx+eax]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
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

loc_4167DE:
mov     bh, bl
dec     bh
mov     [esi+7], bh

loc_4167E5:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4166F5 endp




sub_4167EA proc near

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
mov     ah, ds:byte_560BE5
cmp     ah, 2
jnz     loc_416969
mov     ebx, ds:dword_560BEC
cmp     ebx, 1
jnz     short loc_4168A1
or      [ecx], ah
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
xor     edx, edx
mov     eax, ebp
call    sub_4166CF
xor     edx, edx
mov     eax, ebp
call    sub_4166E2
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_4168BE

loc_4168A1:
cmp     ebx, 3Eh ; '>'
jge     short loc_4168AB
cmp     ebx, 15h
jg      short loc_4168B7

loc_4168AB:
mov     eax, [esp+1Ch+var_1C]
cmp     dword ptr [eax+10h], 1AEh
jle     short loc_4168BE

loc_4168B7:
mov     eax, ecx
call    sub_4DEADD

loc_4168BE:
mov     eax, [esp+1Ch+var_1C]
mov     eax, [eax+10h]
cmp     eax, 10Eh
jb      short loc_416911
jbe     loc_416944
cmp     eax, 19Ah
jb      short loc_4168FB
jbe     loc_416954
cmp     eax, 1AEh
jb      loc_416960
jbe     short loc_416936
cmp     eax, 1F4h

loc_4168F0:
jz      loc_416944
jmp     loc_416960

loc_4168FB:
cmp     eax, 12Ch
jb      loc_416960
jbe     short loc_416936
cmp     eax, 17Ch
jz      short loc_416950
jmp     short loc_416960

loc_416911:
cmp     eax, 69h ; 'i'
jb      short loc_41692A
jbe     short loc_416936
cmp     eax, 0A5h
jb      short loc_416960
jbe     short loc_416950
cmp     eax, 0B4h
jz      short loc_416936
jmp     short loc_416960

loc_41692A:
cmp     eax, 14h
jb      short loc_416960
jbe     short loc_416936
cmp     eax, 4Bh ; 'K'
jmp     short loc_4168F0

loc_416936:
mov     edx, 1

loc_41693B:
mov     eax, ebp
call    sub_4166E2
jmp     short loc_416960

loc_416944:
mov     edx, 1
mov     eax, ebp
call    sub_4166CF

loc_416950:
xor     edx, edx
jmp     short loc_41693B

loc_416954:
mov     edx, 1
mov     eax, ebp
call    sub_4166CF

loc_416960:
mov     edx, ebp
mov     eax, ecx
call    sub_4166F5

loc_416969:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4167EA endp




sub_416973 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_416983[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_416997
mov     eax, ecx
call    sub_4DEADD

loc_416997:
mov     edx, ebx
mov     eax, ecx
call    sub_416D8E
pop     edx
pop     ecx
pop     ebx
retn
sub_416973 endp




sub_4169A4 proc near
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
mov     al, ds:byte_560BE4
cmp     al, 4
jb      short loc_4169EF
jbe     short loc_416A07
cmp     al, 8
jb      loc_416A50
jbe     short loc_416A21
cmp     al, 0Bh
jz      short loc_416A3B
jmp     short loc_416A50

loc_4169EF:
cmp     al, 2
jnz     short loc_416A50
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 1
jmp     short loc_416A50

loc_416A07:
mov     word ptr [ecx+18h], 0FAh
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 3
jmp     short loc_416A50

loc_416A21:
mov     word ptr [ecx+18h], 0F0h
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 4
jmp     short loc_416A50

loc_416A3B:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 5

loc_416A50:
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4169A4 endp




sub_416A67 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
mov     ah, [eax+0Ah]
test    ah, ah
jnz     short loc_416A91
mov     [ecx+0Dh], ah
inc     byte ptr [ecx+0Ah]
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416A91:
mov     eax, [edi+10h]
cmp     eax, 23h ; '#'
jb      short loc_416AA4
jbe     short loc_416AAE
cmp     eax, 122h
jz      short loc_416AB5
jmp     short loc_416AC3

loc_416AA4:
cmp     eax, 14h
jnz     short loc_416AC3
inc     byte ptr [ecx+0Dh]
jmp     short loc_416AC3

loc_416AAE:
mov     ebx, 1
jmp     short loc_416ABA

loc_416AB5:
mov     ebx, 2

loc_416ABA:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416AC3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416A67 endp




sub_416AC9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416B04
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_416B04:
mov     eax, [edi+10h]
cmp     eax, 19h
jb      short loc_416AC3
jbe     short loc_416B15
cmp     eax, 55h ; 'U'
jz      short loc_416B1C
jmp     short loc_416AC3

loc_416B15:
mov     ebx, 4
jmp     short loc_416ABA

loc_416B1C:
mov     ebx, 5
jmp     short loc_416ABA
sub_416AC9 endp




sub_416B23 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416B50
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Dh], 0

loc_416B50:
cmp     dword ptr [edi+10h], 37h ; '7'
jnz     loc_416AC3
mov     ebx, 7
jmp     loc_416ABA
sub_416B23 endp




sub_416B64 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 2Dh ; '-'
jb      short loc_416B9D
jbe     short loc_416BAE
cmp     eax, 78h ; 'x'
jb      short loc_416B93
jbe     short loc_416BE8
cmp     eax, 0B4h
jz      loc_416BFD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416B93:
cmp     eax, 50h ; 'P'
jz      short loc_416BD8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416B9D:
cmp     eax, 1
jb      short loc_416C0E
jbe     short loc_416BAE
cmp     eax, 5
jz      short loc_416BC1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BAE:
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BC1:
mov     ebx, 9

loc_416BC6:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416BCF:
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416BD8:
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_416BCF

loc_416BE8:
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
jmp     short loc_416BC6

loc_416BFD:
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Dh]

loc_416C0E:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416B64 endp




sub_416C13 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416C33
mov     ebx, 0Ah
mov     eax, ecx
call    sub_416D4E
inc     byte ptr [ecx+0Ah]

loc_416C33:
pop     edx
pop     ecx
pop     ebx
retn
sub_416C13 endp




sub_416C37 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 0EBh
jb      short loc_416CB0
jbe     loc_416D16
cmp     eax, 140h
jb      short loc_416C8F
jbe     loc_416D1D
cmp     eax, 1AEh
jb      short loc_416C7F
jbe     loc_416D3B
cmp     eax, 1E0h

loc_416C74:
jz      loc_416CEA
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416C7F:
cmp     eax, 168h
jz      loc_416CF1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416C8F:
cmp     eax, 104h
jb      loc_416D49
jbe     loc_416D0F
cmp     eax, 136h
jz      loc_416D16
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416CB0:
cmp     eax, 5Ah ; 'Z'
jb      short loc_416CD3
jbe     short loc_416CF1
cmp     eax, 0B9h
jb      short loc_416CCC
jbe     short loc_416CF8
cmp     eax, 0C8h
jz      short loc_416D0F
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416CCC:
cmp     eax, 0A5h
jmp     short loc_416C74

loc_416CD3:
cmp     eax, 1
jb      loc_416D49
jbe     short loc_416CE3
cmp     eax, 32h ; '2'
jmp     short loc_416C74

loc_416CE3:
mov     ebx, 0Bh
jmp     short loc_416D40

loc_416CEA:
mov     ebx, 0Ch
jmp     short loc_416D40

loc_416CF1:
mov     ebx, 0Dh
jmp     short loc_416D40

loc_416CF8:
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B

loc_416D06:
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_416D0F:
mov     ebx, 0Eh
jmp     short loc_416D40

loc_416D16:
mov     ebx, 0Fh
jmp     short loc_416D40

loc_416D1D:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 0Ah
mov     edx, esi
mov     eax, ecx
call    sub_416D4E
jmp     short loc_416D06

loc_416D3B:
mov     ebx, 0Bh

loc_416D40:
mov     edx, esi
mov     eax, ecx
call    sub_416D4E

loc_416D49:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416C37 endp




sub_416D4E proc near
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
mov     ebx, ds:off_50F188[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F188[eax*4]
mov     [edx+10h], eax
retn
sub_416D4E endp




sub_416D8E proc near
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
jb      short loc_416DBA
jbe     short loc_416DBE
cmp     ax, 7FFFh
jnz     short loc_416DBA
mov     word ptr [edx+4], 0
jmp     short loc_416DBE

loc_416DBA:
inc     word ptr [esi+4]

loc_416DBE:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_416E03
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_416E03:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_416E2E
jbe     short loc_416E32
cmp     ax, 7FFFh
jnz     short loc_416E2E
mov     word ptr [esi+0Ah], 0
jmp     short loc_416E32

loc_416E2E:
inc     word ptr [esi+0Ah]

loc_416E32:
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
jz      short loc_416E81
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_416E81:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_416D8E endp




sub_416E8E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_416E9E[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_416EB2
mov     eax, ecx
call    sub_4DEADD

loc_416EB2:
mov     edx, ebx
mov     eax, ecx
call    sub_417295
pop     edx
pop     ecx
pop     ebx
retn
sub_416E8E endp




sub_416EBF proc near
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
mov     al, ds:byte_560BE4
cmp     al, 3
jb      short loc_416F03
jbe     short loc_416F2D
cmp     al, 5
jz      short loc_416F68
jmp     loc_416FA1

loc_416F03:
test    al, al
jnz     loc_416FA1
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     byte ptr [ecx+9], 1
jmp     short loc_416FA1

loc_416F2D:
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     word ptr [ecx+14h], 0FFh
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 190h
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 5
jmp     short loc_416FA1

loc_416F68:
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     word ptr [ecx+14h], 0FFh
mov     word ptr [ecx+16h], 0
mov     word ptr [ecx+18h], 190h
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 6

loc_416FA1:
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416EBF endp




sub_416FAD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_416FE4
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_416FE4:
cmp     dword ptr [edi+10h], 1Eh
jnz     short loc_416FF5
xor     ebx, ebx

loc_416FEC:
mov     edx, esi

loc_416FEE:
mov     eax, ecx
call    sub_417255

loc_416FF5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_416FAD endp




sub_416FFB proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417032
xor     ebx, ebx
mov     edx, 9
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417032:
cmp     dword ptr [edi+10h], 0Ah
jnz     short loc_417046
mov     ebx, 2
mov     edx, esi
mov     eax, ecx
call    sub_417255

loc_417046:
cmp     dword ptr [edi+10h], 23h ; '#'
jnz     short loc_416FF5
mov     ebx, 1
jmp     short loc_416FEC
sub_416FFB endp




sub_417053 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417084
xor     ebx, ebx
mov     edx, 0Ah
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417084:
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_417053 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_43]



sub_417089 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4170B2
xor     ebx, ebx
mov     edx, 0Bh
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4170B2:
cmp     dword ptr [esi+10h], 7
jnz     short loc_4170C6
mov     ebx, 4
mov     edx, edi
mov     eax, ecx
call    sub_417255

loc_4170C6:
cmp     dword ptr [esi+10h], 4Bh ; 'K'
jnz     loc_416FF5
mov     ebx, 5
mov     edx, edi
jmp     loc_416FEE
sub_417089 endp




sub_4170DC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417113
xor     ebx, ebx
mov     edx, 0Ch
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_417113:
mov     eax, [edi+10h]
cmp     eax, 80h
jb      short loc_41712B
jbe     short loc_41713E
cmp     eax, 8Ch
jz      short loc_417134
jmp     loc_416FF5

loc_41712B:
cmp     eax, 5
jnz     loc_416FF5

loc_417134:
mov     ebx, 7
jmp     loc_416FEC

loc_41713E:
mov     ebx, 6
jmp     loc_416FEC
sub_4170DC endp




sub_417148 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41717F
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_417255
inc     byte ptr [ecx+0Ah]

loc_41717F:
cmp     byte ptr [edi+9], 0
jnz     loc_416FF5
mov     eax, [edi+10h]
cmp     eax, 50h ; 'P'
jb      short loc_4171E2
jbe     loc_417229
cmp     eax, 11Dh
jb      short loc_4171C5
jbe     loc_417221
cmp     eax, 172h
jb      loc_416FF5
jbe     loc_417237
cmp     eax, 190h
jz      loc_41723E
jmp     loc_416FF5

loc_4171C5:
cmp     eax, 0F0h
jb      loc_416FF5
jbe     loc_417237
cmp     eax, 10Eh
jz      short loc_417230
jmp     loc_416FF5

loc_4171E2:
cmp     eax, 32h ; '2'
jb      short loc_4171FE
jbe     short loc_41721A
cmp     eax, 39h ; '9'
jb      loc_416FF5
jbe     short loc_417221
cmp     eax, 46h ; 'F'
jz      short loc_417207
jmp     loc_416FF5

loc_4171FE:
cmp     eax, 14h
jnz     loc_416FF5

loc_417207:
mov     ebx, 0Bh

loc_41720C:
mov     edx, esi
mov     eax, ecx
call    sub_417255
jmp     loc_416FF5

loc_41721A:
mov     ebx, 8
jmp     short loc_417243

loc_417221:
inc     byte ptr [ecx+0Dh]
jmp     loc_416FF5

loc_417229:
mov     ebx, 9
jmp     short loc_41720C

loc_417230:
mov     ebx, 9
jmp     short loc_417243

loc_417237:
mov     ebx, 0Ch
jmp     short loc_41720C

loc_41723E:
mov     ebx, 0Ah

loc_417243:
mov     edx, esi
mov     eax, ecx
call    sub_417255
mov     byte ptr [ecx+0Dh], 0
jmp     loc_416FF5
sub_417148 endp




sub_417255 proc near
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
mov     ebx, ds:off_50F32E[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F362[eax*4]
mov     [edx+10h], eax
retn
sub_417255 endp




sub_417295 proc near
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
jb      short loc_4172C1
jbe     short loc_4172C5
cmp     ax, 7FFFh
jnz     short loc_4172C1
mov     word ptr [edx+4], 0
jmp     short loc_4172C5

loc_4172C1:
inc     word ptr [esi+4]

loc_4172C5:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_41730A
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_41730A:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417335
jbe     short loc_417339
cmp     ax, 7FFFh
jnz     short loc_417335
mov     word ptr [esi+0Ah], 0
jmp     short loc_417339

loc_417335:
inc     word ptr [esi+0Ah]

loc_417339:
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
jz      short loc_417388
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417388:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_417295 endp




sub_417395 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4173AB[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4173BF
mov     eax, ecx
call    sub_4DEADD

loc_4173BF:
cmp     byte ptr [esi+7], 0
jnz     short loc_4173CE
mov     edx, ebx
mov     eax, ecx
call    sub_41778E

loc_4173CE:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_417395 endp




sub_4173D3 proc near
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
call    sub_41774E
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4173D3 endp




sub_41742C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417460
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Ah]

loc_417460:
mov     eax, [edi+10h]
cmp     eax, 96h
jb      short loc_417485
jbe     short loc_417498
cmp     eax, 0AAh
jb      loc_41765D
jbe     short loc_41748E
cmp     eax, 104h
jz      short loc_417498
jmp     loc_41765D

loc_417485:
cmp     eax, 50h ; 'P'
jnz     loc_41765D

loc_41748E:
mov     ebx, 1
jmp     loc_417654

loc_417498:
mov     ebx, 2
jmp     loc_417654
sub_41742C endp




sub_4174A2 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4174D9
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 3
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Ah]

loc_4174D9:
cmp     dword ptr [edi+10h], 28h ; '('
jnz     loc_41765D
jmp     short loc_417498
sub_4174A2 endp




sub_4174E5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 4
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4174E5 endp




sub_41752B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417566
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_417566:
mov     eax, [edi+10h]
cmp     eax, 14h
jb      loc_41765D
jbe     short loc_417580
cmp     eax, 0C3h
jz      short loc_41758A
jmp     loc_41765D

loc_417580:
mov     ebx, 5
jmp     loc_417654

loc_41758A:
mov     ebx, 4
jmp     loc_417654
sub_41752B endp




sub_417594 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4175CF
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_4175CF:
mov     eax, [edi+10h]
cmp     eax, 28h ; '('
jb      short loc_4175E5
jbe     short loc_4175F5
cmp     eax, 0AAh
jz      short loc_4175EE
jmp     loc_41765D

loc_4175E5:
cmp     eax, 19h
jnz     loc_41765D

loc_4175EE:
mov     ebx, 6
jmp     short loc_417654

loc_4175F5:
mov     ebx, 7
jmp     short loc_417654
sub_417594 endp




sub_4175FC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417637
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_417637:
mov     eax, [edi+10h]
cmp     eax, 0Ah
jb      short loc_41765D
jbe     short loc_417648
cmp     eax, 4Bh ; 'K'
jz      short loc_41764F
jmp     short loc_41765D

loc_417648:
mov     ebx, 9
jmp     short loc_417654

loc_41764F:
mov     ebx, 0Ah

loc_417654:
mov     edx, esi
mov     eax, ecx
call    sub_41774E

loc_41765D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4175FC endp




sub_417663 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41769E
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_41769E:
cmp     dword ptr [edi+10h], 0DCh
jnz     short loc_41765D
jmp     short loc_41764F
sub_417663 endp




sub_4176A9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4176E4
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 9
mov     edx, esi
mov     eax, ecx
call    sub_41774E
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_4176E4:
cmp     dword ptr [edi+10h], 127h
jnz     loc_41765D
mov     ebx, 0Bh
jmp     loc_417654
sub_4176A9 endp




sub_4176FB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417749
or      byte ptr [ecx], 2
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_41774E
inc     byte ptr [ecx+0Dh]
inc     byte ptr [ecx+0Ah]

loc_417749:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4176FB endp




sub_41774E proc near
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
mov     ebx, ds:off_50F4E6[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F516[eax*4]
mov     [edx+10h], eax
retn
sub_41774E endp




sub_41778E proc near
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
jb      short loc_4177BA
jbe     short loc_4177BE
cmp     ax, 7FFFh
jnz     short loc_4177BA
mov     word ptr [edx+4], 0
jmp     short loc_4177BE

loc_4177BA:
inc     word ptr [esi+4]

loc_4177BE:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_417803
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_417803:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_41782E
jbe     short loc_417832
cmp     ax, 7FFFh
jnz     short loc_41782E
mov     word ptr [esi+0Ah], 0
jmp     short loc_417832

loc_41782E:
inc     word ptr [esi+0Ah]

loc_417832:
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
jz      short loc_417881
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_417881:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_41778E endp




sub_41788E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4178A0[edx*4]
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
jnz     short loc_4178D0
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_4178DE

loc_4178D0:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_4178DE:
mov     edx, ebx
mov     eax, ecx
call    sub_417A77
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41788E endp




sub_4178ED proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_417957
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+56h], 400h
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_417A37
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+9]
inc     byte ptr [ecx+0Ah]

loc_417957:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4178ED endp




sub_41795C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 168h
jb      short loc_4179B4
jbe     loc_417A1D
cmp     eax, 1F4h
jb      short loc_4179A8
jbe     loc_417A14
cmp     eax, 214h
jb      loc_417A32
jbe     loc_417A1D
cmp     eax, 258h
jz      loc_417A24
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179A8:
cmp     eax, 17Ch
jz      short loc_417A0D
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179B4:
cmp     eax, 0EBh
jb      short loc_4179C9
jbe     short loc_4179F1
cmp     eax, 104h
jz      short loc_4179F8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179C9:
cmp     eax, 0BAh
jnz     short loc_417A32
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 4

loc_4179E3:
mov     edx, esi
mov     eax, ecx
call    sub_417A37
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4179F1:
mov     ebx, 5
jmp     short loc_4179E3

loc_4179F8:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
jmp     short loc_4179E3

loc_417A0D:
mov     ebx, 7
jmp     short loc_4179E3

loc_417A14:
xor     ebx, ebx
mov     edx, 4
jmp     short loc_417A2B

loc_417A1D:
mov     ebx, 8
jmp     short loc_4179E3

loc_417A24:
xor     ebx, ebx
mov     edx, 5

loc_417A2B:
mov     eax, ecx
call    sub_4DE96B

loc_417A32:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_41795C endp




sub_417A37 proc near
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
mov     ebx, ds:off_50F642[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50F642[eax*4]
mov     [edx+10h], eax
retn
sub_417A37 endp




sub_417A77 proc near
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
jb      short loc_417AA3
jbe     short loc_417AA7
cmp     ax, 7FFFh
jnz     short loc_417AA3
mov     word ptr [edx+4], 0
jmp     short loc_417AA7

loc_417AA3:
inc     word ptr [esi+4]

loc_417AA7:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_417AEC
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_417AEC:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_417B17
jbe     short loc_417B1B
cmp     ax, 7FFFh
jnz     short loc_417B17
mov     word ptr [esi+0Ah], 0
jmp     short loc_417B1B

loc_417B17:
inc     word ptr [esi+0Ah]

loc_417B1B:
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
jz      short loc_417B6A
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 40h ; '@'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

