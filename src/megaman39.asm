xor     edx, edx
mov     dl, [esi+3]
mov     eax, esi
call    ds:funcs_45F37B[edx*4]
cmp     byte ptr [esi+9], 0
jz      short loc_45F396
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
jmp     short loc_45F3A2

loc_45F396:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1

loc_45F3A2:
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F34D endp




sub_45F3AE proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45F3B4[edx*4]
pop     edx
retn
sub_45F3AE endp




sub_45F3BD proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45F3C3[edx*4]
pop     edx
retn
sub_45F3BD endp




sub_45F3CC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_516850
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
mov     word ptr [ecx+15Eh], 4210h
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+1Ch], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+24h], edx
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     byte ptr [ecx+9], 0

loc_45F4A6:
mov     word ptr [ecx+64h], 80h
mov     edx, [ecx+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_45F3CC endp




sub_45F4C6 proc near

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
mov     esi, eax
cmp     eax, ds:dword_5F84E8
jnz     loc_45F56B
and     ds:byte_5F8364, 0FDh
or      ds:byte_5F8421, 80h
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+28h+var_28], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+28h+var_24], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     ecx, ds:dword_77E964
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     ds:word_55A0C0, ax
mov     byte ptr [esi+8], 2
jmp     short loc_45F58D

loc_45F56B:
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_45F57A
mov     eax, esi
call    sub_4DEADD
jmp     short loc_45F58D

loc_45F57A:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0

loc_45F58D:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F4C6 endp




sub_45F597 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
cmp     byte ptr [esi+0Dh], 0
jnz     short loc_45F5BE
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45F5BE:
mov     edx, [esi+0Bh]
sar     edx, 18h
xor     ebx, ebx
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F597 endp




sub_45F5D6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_516850
mov     dword ptr [ecx+158h], 1D701D7h
mov     dword ptr [ecx+15Ch], 1D7h
mov     word ptr [ecx+15Eh], 4210h
mov     edx, [ecx+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+1Ch], edx
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     edx, [ecx+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+24h], edx
mov     edx, [ecx+1Ch]
mov     [ecx+34h], edx
mov     edx, [ecx+20h]
mov     [ecx+38h], edx
mov     edx, [ecx+24h]
mov     [ecx+3Ch], edx
mov     dx, [ecx+14h]
mov     [ecx+2Ch], dx
mov     dx, [ecx+16h]
mov     [ecx+2Eh], dx
mov     dx, [ecx+18h]
mov     [ecx+30h], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+54h]
mov     [ecx+5Ch], dx
mov     dx, [ecx+56h]
mov     [ecx+5Eh], dx
mov     dx, [ecx+58h]
mov     [ecx+60h], dx
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
jmp     loc_45F4A6
sub_45F5D6 endp




sub_45F6B1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, dword ptr ds:unk_55A0BE
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short loc_45F71A
call    sub_42ABA2
test    eax, eax
jnz     short loc_45F71A
mov     ecx, [esi+9]
sar     ecx, 18h
lea     eax, [esi+14h]
xor     ebx, ebx
mov     edx, 1
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+9], 1
inc     byte ptr [esi+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_45F71A:
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F6B1 endp




sub_45F726 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr ds:dword_77E760, 0
jnz     short loc_45F74E
call    sub_42A98E
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_45F74E:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45F726 endp




sub_45F759 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, [eax+62h]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [eax+5Ch]
sar     eax, 10h
call    sub_4DE5F4
mov     dx, [ecx+56h]
add     edx, eax
and     dh, 0Fh
mov     [ecx+56h], dx
test    ax, ax
jnz     short loc_45F7B5
call    sub_42ABA2
test    eax, eax
jnz     short loc_45F7B5
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
and     ds:byte_5F8421, 7Fh
or      ds:byte_5F8364, 2
mov     byte ptr [ecx+8], 1
pop     edx
pop     ecx
pop     ebx
retn

loc_45F7B5:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45F759 endp

jpt_45F818 dd offset loc_45F81F ; jump table for switch statement
dd offset loc_45F86A
dd offset loc_45F883
dd offset loc_45F896
dd offset loc_45F8A5
dd offset loc_45F8B4
dd offset loc_45F8F7



sub_45F7DC proc near
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 6           ; switch 7 cases
ja      def_45F818      ; jumptable 0045F818 default case
xor     edx, edx
mov     dl, al
jmp     jpt_45F818[edx*4] ; switch jump

loc_45F81F:             ; jumptable 0045F818 case 0
or      byte ptr [ecx], 2
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ecx+58h], 0FEC1h
jmp     short loc_45F891

loc_45F86A:             ; jumptable 0045F818 case 1
mov     dl, byte ptr ds:dword_560BE0+3
cmp     dl, 1
jnz     def_45F818      ; jumptable 0045F818 default case
add     al, dl
mov     [ecx+8], al
jmp     def_45F818      ; jumptable 0045F818 default case

loc_45F883:             ; jumptable 0045F818 case 2
add     word ptr [ecx+58h], 3Fh ; '?'
cmp     byte ptr ds:dword_560BE0+3, 2

loc_45F88F:             ; jumptable 0045F818 default case
jnz     short def_45F818

loc_45F891:
inc     byte ptr [ecx+8]
jmp     short def_45F818 ; jumptable 0045F818 default case

loc_45F896:             ; jumptable 0045F818 case 3
mov     word ptr [ecx+58h], 1F4h
cmp     byte ptr ds:dword_560BE0+3, 3
jmp     short loc_45F88F

loc_45F8A5:             ; jumptable 0045F818 case 4
sub     word ptr [ecx+58h], 0ABh
cmp     byte ptr ds:dword_560BE0+3, 4
jmp     short loc_45F88F

loc_45F8B4:             ; jumptable 0045F818 case 5
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
inc     byte ptr [ecx+8]

loc_45F8F7:             ; jumptable 0045F818 case 6
sub     word ptr [ecx+58h], 0ABh

def_45F818:             ; jumptable 0045F818 default case
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      short loc_45F91A
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_45F921

loc_45F91A:
mov     eax, ecx
call    sub_4DEB53

loc_45F921:
mov     eax, ecx
call    sub_4DF7CB
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F7DC endp

jpt_45F97F dd offset loc_45F986 ; jump table for switch statement
dd offset loc_45F9DC
dd offset loc_45FA4C
dd offset loc_45FA5D
dd offset def_45F97F



sub_45F942 proc near
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
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 4           ; switch 5 cases
ja      def_45F97F      ; jumptable 0045F97F default case, case 4
and     eax, 0FFh
jmp     jpt_45F97F[eax*4] ; switch jump

loc_45F986:             ; jumptable 0045F97F case 0
or      byte ptr [ecx], 2
mov     byte ptr [ecx+3], 1
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 1
mov     byte ptr [ecx+0Eh], 38h ; '8'
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+8]

loc_45F9DC:             ; jumptable 0045F97F case 1
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_51685C[eax*2]
sub     eax, 222h
mov     [ecx+58h], ax
mov     al, [ecx+0Eh]
inc     al
mov     [ecx+0Eh], al
cmp     byte ptr [ecx+0Fh], 2
jge     short loc_45FA13
cmp     al, 44h ; 'D'
jnz     def_45F97F      ; jumptable 0045F97F default case, case 4
mov     byte ptr [ecx+0Eh], 0
inc     byte ptr [ecx+0Fh]
jmp     short def_45F97F ; jumptable 0045F97F default case, case 4

loc_45FA13:
cmp     al, 67h ; 'g'
jnz     short def_45F97F ; jumptable 0045F97F default case, case 4

loc_45FA17:
inc     byte ptr [ecx+8]

def_45F97F:             ; jumptable 0045F97F default case, case 4
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      loc_45FAC2
cmp     byte ptr [ecx+0Dh], 0
jnz     loc_45FAAF
mov     ebx, [ecx+9]
sar     ebx, 18h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     loc_45FADF

loc_45FA4C:             ; jumptable 0045F97F case 2
mov     byte ptr [ecx+0ACh], 8
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_45FA17

loc_45FA5D:             ; jumptable 0045F97F case 3
cmp     byte ptr [ecx+0A4h], 8
jnz     short def_45F97F ; jumptable 0045F97F default case, case 4
mov     byte ptr [ecx+3], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 8
mov     byte ptr [ecx+0ADh], 0FFh
mov     byte ptr [ecx+0Ch], 8
jmp     loc_45FA17

loc_45FAAF:
mov     ebx, [ecx+9]
sar     ebx, 18h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE9BA
jmp     short loc_45FAD8

loc_45FAC2:
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45FAD1
mov     eax, ecx
call    sub_4DEADD
jmp     short loc_45FADF

loc_45FAD1:
mov     eax, ecx
call    sub_4DEB53

loc_45FAD8:
mov     eax, ecx
call    sub_4DF7CB

loc_45FADF:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45F942 endp




sub_45FAE5 proc near
push    edx
mov     word ptr [eax+58h], 0
mov     dx, [eax+58h]
mov     [eax+54h], dx
mov     [eax+56h], dx
mov     dword ptr [eax+158h], 2000200h
mov     dword ptr [eax+15Ch], 42100200h
inc     byte ptr [eax+8]
call    sub_45FB16
pop     edx
retn
sub_45FAE5 endp




sub_45FB16 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     dl, [eax+0Ch]
cmp     dl, [eax+0Dh]
jz      short loc_45FB38
lea     edx, [ecx+0Ch]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_45FB38:
mov     dl, [ecx+0Ch]
mov     [ecx+0Dh], dl
pop     edx
pop     ecx
pop     ebx
retn
sub_45FB16 endp



; Attributes: thunk

sub_45FB42 proc near
jmp     sub_4DE2F6
sub_45FB42 endp




sub_45FB47 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FB50[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_45FB47 endp




sub_45FB73 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_45FB79[edx*4]
pop     edx
retn
sub_45FB73 endp




sub_45FB82 proc near
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
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn
sub_45FB82 endp




sub_45FBC0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, ds:dword_560BEC
cmp     eax, 50h ; 'P'
jb      short loc_45FBD8
jbe     short loc_45FBDD
cmp     eax, 64h ; 'd'
jz      short loc_45FBE6
jmp     short loc_45FBF4

loc_45FBD8:
cmp     eax, 14h
jnz     short loc_45FBF4

loc_45FBDD:
xor     ebx, ebx
mov     edx, 2
jmp     short loc_45FBED

loc_45FBE6:
xor     ebx, ebx
mov     edx, 3

loc_45FBED:
mov     eax, ecx
call    sub_4DE96B

loc_45FBF4:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_45FBC0 endp




sub_45FBFF proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 3
mov     [edx], ah
mov     word ptr [edx+58h], 0
mov     ax, [edx+58h]
mov     [edx+54h], ax
mov     [edx+56h], ax
mov     dword ptr [edx+158h], 2000200h
mov     dword ptr [edx+15Ch], 200h
mov     word ptr [edx+15Eh], 4210h
mov     dword ptr [edx+78h], 0
inc     byte ptr [edx+8]
mov     eax, edx
call    sub_45FC51
mov     word ptr [edx+58h], 0B4h
pop     edx
retn
sub_45FBFF endp




sub_45FC51 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
ja      short loc_45FCBC
lea     eax, [ecx+0Ch]
mov     dl, ds:byte_560BE4
cmp     dl, 1
jnz     short loc_45FCA4
cmp     dl, ds:byte_560BE5
jnz     short loc_45FCBC
cmp     ds:dword_560BEC, 8
jnz     short loc_45FCBC
mov     byte ptr [ecx+0Ch], 1
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+58h], 0
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_45FCA4:
mov     byte ptr [ecx+0Ch], 0
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_45FCBC:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FC51 endp



; Attributes: thunk

sub_45FCC0 proc near
jmp     sub_4DE2F6
sub_45FCC0 endp




sub_45FCC5 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FCCE[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_45FCC5 endp




sub_45FCF1 proc near
push    edx
mov     edx, eax
mov     ah, [eax]
or      ah, 3
mov     [edx], ah
mov     word ptr [edx+58h], 0
mov     ax, [edx+58h]
mov     [edx+54h], ax
mov     [edx+56h], ax
mov     dword ptr [edx+158h], 2000200h
mov     dword ptr [edx+15Ch], 200h
mov     word ptr [edx+15Eh], 4210h
mov     dword ptr [edx+78h], 0
inc     byte ptr [edx+8]
mov     eax, edx
call    sub_45FD43
mov     word ptr [edx+58h], 0B4h
pop     edx
retn
sub_45FCF1 endp




sub_45FD43 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
test    al, al
jnz     short loc_45FDA4
lea     eax, [ecx+0Ch]
mov     dl, ds:byte_560BE4
cmp     dl, 1
jnz     short loc_45FD8C
cmp     dl, ds:byte_560BE5
jnz     short loc_45FDA4
mov     [ecx+0Ch], dl
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+58h], 0
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_45FD8C:
mov     byte ptr [ecx+0Ch], 0
mov     edx, eax
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B

loc_45FDA4:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FD43 endp



; Attributes: thunk

sub_45FDA8 proc near
jmp     sub_4DE2F6
sub_45FDA8 endp




sub_45FDAD proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FDB6[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn
sub_45FDAD endp




sub_45FDD9 proc near
mov     dword ptr [eax+158h], 2000200h
mov     dword ptr [eax+15Ch], 42100200h
inc     byte ptr [eax+8]
sub_45FDD9 endp




sub_45FDF0 proc near
push    ecx
push    edx
mov     ecx, eax
mov     dl, [eax+0Eh]
cmp     dl, [eax+0Fh]
jz      short loc_45FE06
lea     edx, [ecx+0Eh]
mov     eax, ecx
call    sub_4DD0F8

loc_45FE06:
mov     dl, [ecx+0Eh]
mov     [ecx+0Fh], dl
xor     edx, edx
mov     dl, [ecx+9]
mov     eax, ecx
call    ds:funcs_45FE13[edx*4]
pop     edx
pop     ecx
retn
sub_45FDF0 endp




sub_45FE1D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE3C
mov     ebx, 3Bh ; ';'
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE3C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE1D endp




sub_45FE40 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE5C
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE5C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE40 endp




sub_45FE60 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE7C
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE7C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE60 endp




sub_45FE80 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_45FE9C
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_45FE9C:
pop     edx
pop     ecx
pop     ebx
retn
sub_45FE80 endp




sub_45FEA0 proc near
add     word ptr [eax+58h], 11Ch
retn
sub_45FEA0 endp



; Attributes: thunk

sub_45FEA7 proc near
jmp     sub_4DE2F6
sub_45FEA7 endp




sub_45FEAC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FEB5[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45FEEB
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
cmp     byte ptr [ecx+9], 4
jnz     short loc_45FEE4
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
retn

loc_45FEE4:
mov     eax, ecx
call    sub_4DEADD

loc_45FEEB:
pop     edx
pop     ecx
retn
sub_45FEAC endp




sub_45FEEE proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_45FEF4[edx*4]
pop     edx
retn
sub_45FEEE endp




sub_45FEFD proc near

var_28= byte ptr -28h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
lea     ecx, [eax+438h]
mov     ah, [eax]
or      ah, 2
mov     [ebp+0], ah
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     word ptr [ecx], 0
mov     dword ptr [ecx+4], 0
mov     edi, esp
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    0
push    0
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     eax, [ecx+0Ch]

loc_45FF66:
mov     ecx, 100h
lea     edx, [esp+30h+var_28]
call    sub_4DD4C5
mov     word ptr [ebp+6Eh], 80h
mov     ax, [ebp+6Eh]
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     dword ptr [ebp+78h], offset unk_516994
mov     dword ptr [ebp+10h], 0
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     dword ptr [ebp+44h], 0
mov     dword ptr [ebp+48h], 0
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
mov     eax, ebp
call    sub_45FFDE
add     esp, 10h

loc_45FFD7:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45FEFD endp




sub_45FFDE proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     edx, [eax+438h]
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
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
mov     word ptr [ebp+15Eh], 4210h
call    rand_
mov     [edx+2], ax
xor     ecx, ecx
mov     cl, [ebp+9]
mov     eax, ebp
call    ds:funcs_46002B[ecx*4]
test    byte ptr [edx], 1
jz      short loc_460044
mov     byte ptr [ebp+9], 0
mov     word ptr [ebp+0Ah], 0
and     byte ptr [edx], 0FEh

loc_460044:
mov     al, [ebp+0ADh]
mov     bh, [ebp+0ACh]
cmp     al, bh
jz      short loc_460063
xor     edx, edx
mov     dl, bh
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46006A

loc_460063:
mov     eax, ebp
call    sub_4DEADD

loc_46006A:
test    byte ptr [ebp+0], 2
jz      loc_45FFD7
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
jmp     loc_45FFD7
sub_45FFDE endp



; Attributes: thunk

sub_46008C proc near
jmp     sub_4DE2F6
sub_46008C endp




sub_460091 proc near
push    edx
mov     dl, [eax+0Ah]
test    dl, dl
ja      short loc_4600A5
inc     dl
mov     [eax+0Ah], dl
mov     byte ptr [eax+0ACh], 0

loc_4600A5:
pop     edx
retn
sub_460091 endp




sub_4600A7 proc near
push    ebx
push    edx
lea     edx, [eax+438h]
mov     bl, [eax+0Ah]
cmp     bl, 1
jb      short loc_4600C1
jbe     short loc_4600D4
cmp     bl, 2
jz      short loc_4600FB
pop     edx
pop     ebx
retn

loc_4600C1:
test    bl, bl
jnz     short loc_460113
inc     bl
mov     [eax+0Ah], bl
mov     byte ptr [eax+0ACh], 11h
pop     edx
pop     ebx
retn

loc_4600D4:
cmp     byte ptr [eax+0A7h], 0
jge     short loc_460113
mov     byte ptr [eax+0ACh], 0
inc     byte ptr [eax+0Ah]
mov     ax, [edx+2]
xor     ah, ah
and     al, 1Fh
add     eax, 10h
mov     [edx+4], ax
pop     edx
pop     ebx
retn

loc_4600FB:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_460113
mov     byte ptr [eax+0ACh], 11h
dec     byte ptr [eax+0Ah]

loc_460113:
pop     edx
pop     ebx
retn
sub_4600A7 endp




sub_460116 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_46012A
jbe     short loc_460149
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46012A:
test    al, al
jnz     short loc_46017A
cmp     byte ptr [esi+0A7h], 0
jge     short loc_46017A
inc     al
mov     [esi+0Ah], al
mov     byte ptr [esi+0ACh], 10h
mov     word ptr [esi+64h], 1Eh

loc_460149:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, offset unk_5169A0
call    sub_4DE552
test    ax, ax
jz      short loc_460177
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_460177:
inc     byte ptr [esi+0Ah]

loc_46017A:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460116 endp

db 8Dh, 40h, 0
jpt_4601AD dd offset loc_4601B4 ; jump table for switch statement
dd offset loc_4601CB
dd offset loc_4601F8
dd offset def_4601AD



sub_460192 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
add     eax, 438h
mov     dl, [esi+0Ah]
cmp     dl, 3           ; switch 4 cases
ja      def_4601AD      ; jumptable 004601AD default case, case 3
xor     ecx, ecx
mov     cl, dl
jmp     jpt_4601AD[ecx*4] ; switch jump

loc_4601B4:             ; jumptable 004601AD case 0
inc     dl
mov     [esi+0Ah], dl
mov     byte ptr [esi+0ACh], 12h
mov     word ptr [eax+4], 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4601CB:             ; jumptable 004601AD case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     def_4601AD      ; jumptable 004601AD default case, case 3
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 1
mov     word ptr [esi+44h], 38h ; '8'
mov     word ptr [esi+64h], 20h ; ' '
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4601F8:             ; jumptable 004601AD case 2
cmp     byte ptr [esi+0A6h], 0
jz      short loc_46020F
xor     ebx, ebx
xor     edx, edx
mov     eax, 111h
call    sub_4D89E4

loc_46020F:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5169A6+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ecx, [esi+46h]
sar     ecx, 10h
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
mov     eax, esi
call    sub_4DD43B
mov     eax, [esi+12h]
sar     eax, 10h
mov     edx, ds:dword_5169A6
sar     edx, 10h
sub     eax, edx
mov     edx, eax
mov     eax, [esi+16h]
sar     eax, 10h
mov     ecx, ds:dword_5169AA
sar     ecx, 10h
sub     eax, ecx
imul    edx, edx
imul    eax, eax
add     eax, edx
cmp     eax, 800h
jge     short def_4601AD ; jumptable 004601AD default case, case 3
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0ACh], 0
mov     word ptr [esi+44h], 0

def_4601AD:             ; jumptable 004601AD default case, case 3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460192 endp




sub_460294 proc near
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
mov     dl, [eax+8]
call    ds:funcs_4602BB[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4602DB
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4602DB:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_4602EB
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4602F2

loc_4602EB:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_4602F2:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460294 endp




sub_4602F9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_5169BC
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_4602F9 endp

jpt_4603D2 dd offset loc_4603D9 ; jump table for switch statement
dd offset loc_46041A
dd offset loc_460432
dd offset loc_46047B
dd offset loc_4604DE



sub_4603BC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_4603D2      ; jumptable 004603D2 default case
and     eax, 0FFh
jmp     jpt_4603D2[eax*4] ; switch jump

loc_4603D9:             ; jumptable 004603D2 case 0
cmp     ds:word_6E23D6, 0
jnz     def_4603D2      ; jumptable 004603D2 default case
mov     edx, 12h
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+9]
xor     ebx, ebx
xor     edx, edx
mov     eax, 16Fh

loc_4603FF:
call    sub_4D89E4

def_4603D2:             ; jumptable 004603D2 default case
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_46041A:             ; jumptable 004603D2 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_4603D2 ; jumptable 004603D2 default case
mov     word ptr [esi+44h], 200h
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ch], 0A0h
jmp     short def_4603D2 ; jumptable 004603D2 default case

loc_460432:             ; jumptable 004603D2 case 2
mov     bl, [esi+0Ch]
dec     bl
mov     [esi+0Ch], bl
jnz     short loc_46044E
call    sub_49DF64
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ch], 3
mov     word ptr [esi+44h], 0

loc_46044E:
cmp     byte ptr [esi+0A6h], 0
jz      short loc_46047B ; jumptable 004603D2 case 3
lea     ecx, [esi+14h]
mov     edx, ecx
mov     eax, 112h
call    sub_4D8BC3
call    rand_
test    al, 3
jnz     short loc_46047B ; jumptable 004603D2 case 3
mov     edx, ecx
mov     eax, 171h
call    sub_4D8BC3

loc_46047B:             ; jumptable 004603D2 case 3
cmp     ds:byte_560BE5, 2
jnz     short def_4603D2 ; jumptable 004603D2 default case
mov     edx, 14h
xor     eax, eax
call    sub_4A0E24
mov     word ptr [esi+14h], 1EAh
mov     word ptr [esi+16h], 0FFFFh
mov     word ptr [esi+18h], 0EC8Fh
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
mov     word ptr [esi+56h], 0
mov     word ptr [esi+44h], 140h
mov     byte ptr [esi+0Ch], 0DEh
inc     byte ptr [esi+9]
jmp     def_4603D2      ; jumptable 004603D2 default case

loc_4604DE:             ; jumptable 004603D2 case 4
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_4604EF
mov     byte ptr [esi+8], 2
mov     [esi+9], ah

loc_4604EF:
cmp     byte ptr [esi+0A6h], 0
jz      def_4603D2      ; jumptable 004603D2 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 112h
call    sub_4D89E4
call    rand_
test    al, 3
jnz     def_4603D2      ; jumptable 004603D2 default case
xor     ebx, ebx
xor     edx, edx
mov     eax, 171h
jmp     loc_4603FF
sub_4603BC endp



; Attributes: thunk

sub_460525 proc near
jmp     sub_4DE2F6
sub_460525 endp




sub_46052A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_460593
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     eax, ebp
call    sub_42C592
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
xor     ebx, ebx
mov     edx, 13h
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short loc_4605B4

loc_460593:
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
mov     eax, ebp
call    sub_4DEADD

loc_4605B4:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46052A endp




sub_4605CE proc near
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
mov     dl, [eax+8]
call    ds:funcs_4605F5[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_460615
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_460615:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_460625
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_46062C

loc_460625:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_46062C:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4605CE endp




sub_460633 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], offset unk_5169D4
mov     dword ptr [ecx+10h], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+44h], 0
mov     dword ptr [ecx+48h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn
sub_460633 endp

jpt_460709 dd offset loc_460710 ; jump table for switch statement
dd offset loc_460736
dd offset loc_46074E
dd offset loc_460767
dd offset loc_4607BE



sub_4606F6 proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+9]
cmp     dl, 4           ; switch 5 cases
ja      def_460709      ; jumptable 00460709 default case
xor     ecx, ecx
mov     cl, dl
jmp     jpt_460709[ecx*4] ; switch jump

loc_460710:             ; jumptable 00460709 case 0
cmp     ds:word_6E23D6, 0
jnz     def_460709      ; jumptable 00460709 default case
inc     dl

loc_460720:
mov     [eax+9], dl

def_460709:             ; jumptable 00460709 default case
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn

loc_460736:             ; jumptable 00460709 case 1
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_460709 ; jumptable 00460709 default case
mov     word ptr [eax+44h], 200h
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ch], 0A0h
jmp     short def_460709 ; jumptable 00460709 default case

loc_46074E:             ; jumptable 00460709 case 2
mov     cl, [eax+0Ch]
dec     cl
mov     [eax+0Ch], cl
jnz     short def_460709 ; jumptable 00460709 default case
inc     byte ptr [eax+9]
mov     byte ptr [eax+0Ch], 3
mov     word ptr [eax+44h], 0
jmp     short def_460709 ; jumptable 00460709 default case

loc_460767:             ; jumptable 00460709 case 3
cmp     ds:byte_560BE5, 2
jnz     short def_460709 ; jumptable 00460709 default case
mov     word ptr [eax+14h], 1EAh
mov     word ptr [eax+16h], 0FFFFh
mov     word ptr [eax+18h], 0ECF3h
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
mov     word ptr [eax+56h], 0
mov     word ptr [eax+44h], 140h
mov     byte ptr [eax+0Ch], 0DEh
inc     byte ptr [eax+9]
jmp     def_460709      ; jumptable 00460709 default case

loc_4607BE:             ; jumptable 00460709 case 4
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     def_460709      ; jumptable 00460709 default case
mov     byte ptr [eax+8], 2
jmp     loc_460720
sub_4606F6 endp



; Attributes: thunk

sub_4607D5 proc near
jmp     sub_4DE2F6
sub_4607D5 endp




sub_4607DA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     word ptr [eax+15Eh], 4210h
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_46080A[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_46082A
xor     ecx, ecx
mov     ebx, 100h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_46082A:
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_46083D:
pop     ebp

loc_46083E:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4607DA endp




sub_460844 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], offset unk_516A42
mov     dword ptr [ecx+10h], offset unk_516A36
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
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
mov     word ptr [ecx+56h], 400h
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [ecx+0Eh], al
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_516A08[eax*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     ds:dword_55A314, ecx
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_460844 endp

db 8Dh, 40h, 0
jpt_460963 dd offset loc_46096A ; jump table for switch statement
dd offset loc_4609A2
dd offset loc_4609A8
dd offset loc_4609B7



sub_46092A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     eax, [eax+0Ah]
sar     eax, 18h
mov     dl, [ecx+0Eh]
movsx   ebx, dl
inc     dl
mov     [ecx+0Eh], dl
cmp     ebx, ds:dword_516A0C[eax*8]
jnz     loc_4609E4
mov     al, [ecx+0Dh]
cmp     al, 3           ; switch 4 cases
ja      def_460963      ; jumptable 00460963 default case
and     eax, 0FFh
jmp     jpt_460963[eax*4] ; switch jump

loc_46096A:             ; jumptable 00460963 case 0
call    rand_
test    al, 3
jnz     short loc_46098F
mov     byte ptr [ecx+0Dh], 1

loc_460977:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_516A08[eax*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
jmp     short def_460963 ; jumptable 00460963 default case

loc_46098F:
call    rand_
test    al, 3
jnz     short loc_4609D1
mov     byte ptr [ecx+0Dh], 4
mov     byte ptr [ecx+8], 2
jmp     short loc_460977

loc_4609A2:             ; jumptable 00460963 case 1
mov     byte ptr [ecx+0Dh], 2
jmp     short loc_460977

loc_4609A8:             ; jumptable 00460963 case 2
call    rand_
test    al, 1
jnz     short loc_460977
mov     byte ptr [ecx+0Dh], 3
jmp     short loc_460977

loc_4609B7:             ; jumptable 00460963 case 3
mov     byte ptr [ecx+0Dh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_4609D1:
lea     edx, [ecx+14h]
mov     eax, 16Fh
call    sub_4D8BC3

def_460963:             ; jumptable 00460963 default case
mov     byte ptr [ecx+0Eh], 0
jmp     short loc_460A04

loc_4609E4:
cmp     byte ptr [ecx+0Dh], 2
jnz     short loc_4609FD
cmp     byte ptr [ecx+0Eh], 8
jnz     short loc_4609FD
lea     edx, [ecx+14h]
mov     eax, 171h
call    sub_4D8BC3

loc_4609FD:
mov     eax, ecx
call    sub_4DEADD

loc_460A04:
mov     ebx, [esi+184h]
cmp     ecx, ebx
jnz     short loc_460A55
mov     dword ptr [esi+184h], 0
mov     byte ptr [ebx+0Dh], 0
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     eax, 640h
call    sub_47E888
test    eax, eax
jz      short loc_460A43
mov     byte ptr [ecx+8], 4
mov     byte ptr [ecx+0Bh], 0
jmp     short loc_460A4A

loc_460A43:
mov     byte ptr [ecx+8], 3
xor     byte ptr [esi], 2

loc_460A4A:
mov     byte ptr [ecx+9], 0
or      byte ptr [esi+0BDh], 20h

loc_460A55:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46092A endp




sub_460A5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_4DEADD
inc     byte ptr [ecx+0Eh]
mov     ax, [ecx+4Eh]
mov     dx, [ecx+46h]
add     edx, eax
mov     [ecx+46h], dx
add     [ecx+16h], dx
cmp     byte ptr [ecx+0Eh], 8
jnz     short loc_460A8C
lea     edx, [ecx+14h]
mov     eax, 171h
call    sub_4D8BC3

loc_460A8C:
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, [ecx+0Bh]
sar     edx, 18h
cmp     edx, ds:dword_516A0C[eax*8]
jnz     short loc_460AC2
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     edx, ds:dword_516A08[eax*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
dec     byte ptr [ecx+8]

loc_460AC2:
mov     bl, [ecx+0Eh]
cmp     bl, 3
jnz     short loc_460ADA
mov     word ptr [ecx+46h], 0FFDCh
mov     word ptr [ecx+4Eh], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_460ADA:
cmp     bl, 0Bh
jnz     short loc_460AF6
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax

loc_460AF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_460A5A endp

jpt_460B27 dd offset loc_460B2E ; jump table for switch statement
dd offset loc_460B8E
dd offset loc_460BA7
dd offset loc_460BBC



sub_460B0A proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 10h
mov     esi, eax
call    sub_4DEADD
mov     al, [esi+9]
cmp     al, 3           ; switch 4 cases
ja      def_460B27      ; jumptable 00460B27 default case
xor     ecx, ecx
mov     cl, al
jmp     jpt_460B27[ecx*4] ; switch jump

loc_460B2E:             ; jumptable 00460B27 case 0
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
and     ds:byte_5F8364, 0FDh
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     [esp+20h+var_20], eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     [esp+20h+var_1C], eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     [esp+20h+var_18], eax
mov     ecx, ds:dword_77E964
add     ecx, 40h ; '@'
mov     ebx, 400h
mov     edx, 100h
mov     eax, esp
call    sub_42AAA8

loc_460B86:
inc     byte ptr [esi+9]
jmp     def_460B27      ; jumptable 00460B27 default case

loc_460B8E:             ; jumptable 00460B27 case 1
call    sub_42ABA2
test    eax, eax
jnz     def_460B27      ; jumptable 00460B27 default case
mov     edx, 0Bh
call    sub_4A0E24
jmp     short loc_460B86

loc_460BA7:             ; jumptable 00460B27 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_460B27 ; jumptable 00460B27 default case
inc     al
mov     [esi+9], al
call    sub_42A98E
jmp     short def_460B27 ; jumptable 00460B27 default case

loc_460BBC:             ; jumptable 00460B27 case 3
call    sub_42ABA2
test    eax, eax
jnz     short def_460B27 ; jumptable 00460B27 default case
mov     al, ds:byte_55A0CC
mov     ds:byte_77E952, al
mov     al, ds:byte_55A0CD
mov     ds:byte_77E953, al
mov     eax, ds:dword_77E95C
mov     ds:dword_77E980, eax
and     ds:byte_5F8421, 0DFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [esi+0Eh], al
xor     dh, dh
mov     byte ptr ds:dword_560BDC+1, dh
mov     byte ptr ds:dword_560BDC, dh

def_460B27:             ; jumptable 00460B27 default case
add     esp, 10h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_460B0A endp




sub_460C1B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Bh]
test    al, al
jbe     short loc_460C2F
cmp     al, 1
jz      short loc_460C6C
pop     edx
pop     ecx
pop     ebx
retn

loc_460C2F:
mov     eax, offset byte_5F8364
call    sub_4B55D5
test    eax, eax
jz      short loc_460C8A
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, bl
mov     eax, 10h
call    sub_4D9040
mov     ds:word_77EA80, 64h ; 'd'
inc     byte ptr [ecx+0Bh]
pop     edx
pop     ecx
pop     ebx
retn

loc_460C6C:
cmp     ds:byte_77EAB8, 0
jnz     short loc_460C8A
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Bh
call    sub_4D89E4
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Bh], 0

loc_460C8A:
pop     edx
pop     ecx
pop     ebx
retn
sub_460C1B endp




sub_460C8E proc near

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
mov     esi, eax
mov     byte ptr ds:dword_560BDC+1, 0FFh
mov     byte ptr ds:dword_560BDC, 1
mov     ecx, [esi+18Eh]
sar     ecx, 10h
mov     eax, ds:dword_5F8376
sar     eax, 10h
add     eax, ecx
sar     eax, 1
mov     [esp+2Ch+var_2C], eax
mov     ecx, [esi+190h]
sar     ecx, 10h
mov     eax, ds:dword_5F8376+2
sar     eax, 10h
add     eax, ecx
sar     eax, 1
sub     eax, 60h ; '`'
mov     [esp+2Ch+var_28], eax
mov     ecx, [esi+192h]
sar     ecx, 10h
mov     eax, ds:dword_5F837A
sar     eax, 10h
add     eax, ecx
sar     eax, 1
mov     [esp+2Ch+var_24], eax
lea     ebp, [esi+14h]
mov     edi, offset byte_5F8364
add     edi, 14h
mov     edx, ebp
mov     eax, edi
call    sub_4DDDB4
mov     ebx, eax
mov     edx, edi
mov     eax, ebp
call    sub_4DDDB4
mov     [esp+2Ch+var_1C], eax
mov     ecx, ds:dword_77E964
sub     ebx, 500h
mov     edx, 180h
mov     eax, esp
call    sub_42AAA8
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 80h
mov     edx, edi
mov     eax, ebp
call    sub_4DE552
mov     [esi+0B4h], ax
xor     ebx, ebx
mov     edx, 14h
mov     eax, esi
call    sub_4DE96B
mov     edx, ebp
mov     eax, edi
call    sub_4614E2
cmp     eax, 80h
jnb     short loc_460DB8
mov     dword ptr [esi+408h], 1
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF003
mov     edi, eax
shl     eax, 2
add     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 3
neg     eax
sar     eax, 0Ah
mov     ds:dword_55A0C8, eax
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF008
mov     edi, eax
shl     eax, 2
add     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 3
neg     eax
sar     eax, 0Ah
mov     ds:dword_55A0C4, eax
jmp     short loc_460DC2

loc_460DB8:
mov     dword ptr [esi+408h], 0

loc_460DC2:
inc     byte ptr [esi+9]
add     esp, 14h
jmp     loc_46083D
sub_460C8E endp




sub_460DCD proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebx, offset byte_5F8364
call    sub_42ABA2
test    eax, eax
jnz     short loc_460E34
lea     edi, [ecx+14h]
lea     esi, [ebx+14h]
mov     edx, edi
mov     eax, esi
call    sub_4614E2
cmp     eax, 80h
jb      short loc_460E34
inc     byte ptr [ecx+9]
mov     ds:byte_5F88AC, 82h
mov     byte ptr [ecx+0Fh], 0
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     edx, edi
mov     eax, esi
call    sub_4DDDB4
mov     word ptr ds:dword_5F88A4+2, ax
sub     eax, 800h
mov     [ecx+56h], ax
jmp     loc_46083D

loc_460E34:
call    sub_42ABA2
lea     edi, [ecx+14h]
lea     esi, [ebx+14h]
test    eax, eax
jz      short loc_460EA3
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
test    ebp, ebp
jge     short loc_460E6F
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
mov     eax, ebp
neg     eax
jmp     short loc_460E82

loc_460E6F:
mov     ebp, [ecx+54h]
sar     ebp, 10h
mov     edx, esi
mov     eax, edi
call    sub_4DDDB4
sub     ebp, eax
mov     eax, ebp

loc_460E82:
and     eax, 0FFFh
cmp     eax, 82h
jg      short loc_460E96
lea     edx, [ebx+14h]
lea     eax, [ecx+14h]
jmp     short loc_460EA7

loc_460E96:
mov     ax, [ecx+0B4h]
add     [ecx+56h], ax
jmp     short loc_460EB0

loc_460EA3:
mov     edx, esi
mov     eax, edi

loc_460EA7:
call    sub_4DDDB4
mov     [ecx+56h], ax

loc_460EB0:
lea     esi, [ecx+14h]
lea     ecx, [ebx+14h]
mov     edx, esi
mov     eax, ecx
call    sub_4614E2
cmp     eax, 80h
jnb     loc_46083D
mov     eax, ds:dword_55A0C4
shl     eax, 8
add     [ebx+528h], eax
mov     eax, ds:dword_55A0C8
shl     eax, 8
add     [ebx+530h], eax
lea     edx, [ebx+538h]
lea     eax, [ebx+528h]
call    sub_4DD57B
mov     byte ptr [ebx+548h], 0Dh
mov     edx, esi
mov     eax, ecx
call    sub_4DDDB4
mov     [ebx+542h], ax
jmp     loc_46083D
sub_460DCD endp




sub_460F13 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax+0Fh]
inc     ah
mov     [ecx+0Fh], ah
cmp     ah, 8
jnz     short loc_460F3F
mov     edx, 4
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+9]

loc_460F3F:
pop     edx
pop     ecx
retn
sub_460F13 endp

jpt_460F80 dd offset loc_460F87 ; jump table for switch statement
dd offset loc_460FFD
dd offset loc_46102F
dd offset loc_46103E



sub_460F52 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Fh]
mov     ah, al
inc     ah
mov     [ecx+0Fh], ah
cmp     al, 0AAh
jb      def_460F80      ; jumptable 00460F80 default case
mov     ah, [ecx+0Eh]
inc     ah
mov     [ecx+0Eh], ah
mov     al, [ecx+0Ch]
cmp     al, 3           ; switch 4 cases
ja      def_460F80      ; jumptable 00460F80 default case
xor     edx, edx
mov     dl, al
jmp     jpt_460F80[edx*4] ; switch jump

loc_460F87:             ; jumptable 00460F80 case 0
mov     ax, [ecx+4Eh]
mov     dx, [ecx+46h]
add     edx, eax
mov     [ecx+46h], dx
add     [ecx+16h], dx
cmp     byte ptr [ecx+0Eh], 13h
jnz     short loc_460FC1
mov     byte ptr [ecx+0Ch], 1
mov     byte ptr [ecx+0Dh], 2
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B

loc_460FC1:
mov     dl, [ecx+0Eh]
cmp     dl, 3
jnz     short loc_460FD9
mov     word ptr [ecx+46h], 0FFDCh
mov     word ptr [ecx+4Eh], 8
pop     edx
pop     ecx
pop     ebx
retn

loc_460FD9:
cmp     dl, 0Bh
jnz     def_460F80      ; jumptable 00460F80 default case
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+4Eh], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
pop     edx
pop     ecx
pop     ebx
retn

loc_460FFD:             ; jumptable 00460F80 case 1
cmp     ah, 0Ch
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     ds:byte_5F88AC, 83h
mov     byte ptr [ecx+0Ch], 2
mov     byte ptr [ecx+0Dh], 2

loc_461011:
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_46102F:             ; jumptable 00460F80 case 2
cmp     ah, 0Ch
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     byte ptr [ecx+0Ch], 3
mov     byte ptr [ecx+0Dh], 3
jmp     short loc_461011

loc_46103E:             ; jumptable 00460F80 case 3
cmp     ah, 6
jnz     short def_460F80 ; jumptable 00460F80 default case
mov     byte ptr [ecx+0Ch], 4
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_516A08[edx*8]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]

def_460F80:             ; jumptable 00460F80 default case
pop     edx
pop     ecx
pop     ebx

locret_46106B:
retn
sub_460F52 endp




sub_46106C proc near
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short locret_46106B
inc     byte ptr [eax+9]
mov     eax, 641h
jmp     sub_47E8B8
sub_46106C endp




sub_461082 proc near
push    edx
mov     edx, eax
call    sub_42ABA2
test    eax, eax
jnz     short loc_4610B7
and     ds:byte_5F8421, 0DFh
mov     byte ptr [edx+8], 1
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     al, byte ptr ds:dword_516A0C[eax*8]
mov     [edx+0Eh], al
xor     dl, dl
mov     byte ptr ds:dword_560BDC+1, dl
mov     byte ptr ds:dword_560BDC, dl

loc_4610B7:
pop     edx
retn
sub_461082 endp




sub_4610B9 proc near
push    ecx
push    edx
mov     edx, eax
call    sub_4DEADD
xor     ecx, ecx
mov     cl, [edx+9]
mov     eax, edx
call    ds:funcs_4610C9[ecx*4]
pop     edx
pop     ecx
retn
sub_4610B9 endp




sub_4610D3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_46111A
mov     dword ptr [ecx+24h], 105F0000h
mov     dword ptr [ecx+1Ch], 7900000h
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     word ptr [ecx+56h], 800h
or      byte ptr [ecx], 2
mov     byte ptr [ecx+0Fh], 0
inc     byte ptr [ecx+9]
mov     edx, ds:dword_516A08
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
pop     edx
pop     ecx
pop     ebx
retn

loc_46111A:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4610D3 endp




sub_461125 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_46113B
jbe     short loc_46115D
cmp     al, 2
jz      short loc_46118D
pop     edx
pop     ecx
pop     ebx
retn

loc_46113B:
test    al, al
jnz     short loc_4611AB
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+0B4h], 0FF80h
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_46115D:
mov     eax, ecx
call    sub_4DEADD
mov     ax, [ecx+0B4h]
mov     dx, [ecx+56h]
add     edx, eax
mov     [ecx+56h], dx
test    dx, dx
jg      short loc_4611AB
mov     word ptr [ecx+56h], 0
inc     byte ptr [ecx+9]
mov     word ptr [ecx+48h], 0F8E7h
pop     edx
pop     ecx
pop     ebx
retn

loc_46118D:
mov     eax, ecx
call    sub_4DEADD
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_4611AB:
pop     edx
pop     ecx
pop     ebx
retn
sub_461125 endp




sub_4611AF proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset byte_5F8364
mov     al, [eax+0Fh]
test    al, al
jbe     short loc_4611CF
cmp     al, 1
jz      loc_461256
jmp     loc_461270

loc_4611CF:
mov     eax, 42h ; 'B'
call    sub_47E8B8
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF003
shl     eax, 0Ah
neg     eax
sar     eax, 0Ch
mov     [ecx+48h], ax
mov     eax, ds:dword_5F83B8
sar     eax, 10h
call    sub_4EF008
shl     eax, 0Ah
neg     eax
sar     eax, 0Ch
mov     [ecx+44h], ax
mov     ax, ds:word_516A30
mov     [ecx+46h], ax
mov     word ptr [ecx+4Eh], 80h
inc     byte ptr [ecx+0Fh]
mov     byte ptr [ecx+0Eh], 0
or      ds:byte_5F8421, 20h
mov     eax, 10h
call    sub_4D9040
mov     eax, 3
call    sub_47EEAE
mov     ds:word_77EA80, 64h ; 'd'
jmp     short loc_461270

loc_461256:
cmp     ds:byte_77EAB8, 0
jnz     short loc_461270
xor     ebx, ebx
xor     edx, edx
mov     eax, 8000000Bh
call    sub_4D89E4
inc     byte ptr [ecx+0Fh]

loc_461270:
cmp     byte ptr [ecx+0Fh], 0
jz      short loc_4612D3
add     byte ptr [ecx+55h], 2
inc     byte ptr [ecx+57h]
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DFC52
mov     ax, [ecx+54h]
mov     ds:word_560E0C, ax
mov     eax, ecx
call    sub_4DF795
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+1Ch], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ch
add     [ecx+24h], eax
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B

loc_4612D3:
mov     eax, ecx
call    sub_42DE56
mov     ebx, eax
mov     edi, eax
test    eax, eax
jz      loc_4613A9
lea     edx, [ecx+14h]
mov     eax, 129h
call    sub_4D8BC3
test    bh, 10h
jz      loc_46139F
mov     dl, [ecx+0Eh]
cmp     dl, 2
jl      short loc_46133A
mov     al, dl
inc     al
mov     [ecx+0Eh], al
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 0
mov     word ptr [ecx+50h], 0
mov     word ptr [ecx+54h], 0
jmp     loc_46083E

loc_46133A:
mov     dh, dl
inc     dh
mov     [ecx+0Eh], dh
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_516A30[eax*2]
mov     [ecx+46h], ax
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 2
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 2
sar     eax, 4
mov     [ecx+48h], ax
call    sub_4DE13B
test    eax, eax
jz      short loc_46139F
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     dx, [ecx+14h]
mov     [eax+1Ch], dx
mov     dx, [ecx+16h]
mov     [eax+1Eh], dx
mov     dx, [ecx+18h]
mov     [eax+20h], dx

loc_46139F:
lea     eax, [ecx+44h]
mov     edx, edi
call    sub_42D90F

loc_4613A9:
cmp     byte ptr [ecx+0Eh], 2
jle     loc_46083E
cmp     byte ptr [ecx+0Fh], 1
jle     loc_46083E
mov     eax, 642h
call    sub_47E8B8
and     byte ptr [esi+0BDh], 0DFh
jmp     loc_46083E
sub_4611AF endp




sub_4613D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Fh], 46h ; 'F'
jnz     short loc_4613E8
mov     word ptr [esi+0B4h], 40h ; '@'

loc_4613E8:
cmp     word ptr [esi+56h], 400h
jle     short loc_4613F9
mov     word ptr [esi+0B4h], 0

loc_4613F9:
mov     dl, [esi+0Fh]
test    dl, dl
jnz     short loc_461434
mov     dword ptr [esi+1Ch], 5430000h
mov     dword ptr [esi+20h], 0FFFF0000h
mov     dword ptr [esi+24h], 11A00000h
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
mov     word ptr [esi+56h], 0
mov     word ptr [esi+0B4h], 0
inc     byte ptr [esi+0Fh]
jmp     short loc_4614A8

loc_461434:
cmp     dl, 0Ah
jl      short loc_4614A8
mov     ax, [esi+0B4h]
add     [esi+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 500h
mov     eax, esi
call    sub_4DD43B
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4614A8
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+14h]
sub     eax, 0Fh
mov     [edx+1Ch], ax
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 0Fh
mov     ax, [esi+16h]
sub     eax, ebx
mov     [edx+1Eh], ax
call    rand_
xor     ah, ah
and     al, 1Fh
add     ax, [esi+18h]
sub     eax, 0Fh
mov     [edx+20h], ax

loc_4614A8:
mov     eax, esi
call    sub_4DEADD
inc     byte ptr [esi+0Fh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4613D3 endp




sub_4614B7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 0
jnz     short loc_4614D7
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     edx
pop     ecx
pop     ebx
retn

loc_4614D7:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4614B7 endp




sub_4614E2 proc near
push    ebx
push    ecx
push    esi
movsx   ecx, word ptr [eax]
movsx   ebx, word ptr [edx]
sub     ecx, ebx
mov     ebx, [eax]
sar     ebx, 10h
mov     esi, [edx]
sar     esi, 10h
sub     ebx, esi
mov     esi, [eax+2]
sar     esi, 10h
mov     eax, [edx+2]
sar     eax, 10h
sub     esi, eax
mov     eax, esi
mov     edx, ecx
imul    edx, ecx
imul    ebx, ebx
add     edx, ebx
imul    eax, esi
add     eax, edx
call    sub_4EF075
pop     esi
pop     ecx
pop     ebx
retn
sub_4614E2 endp




sub_461521 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_46152A[ecx*4]
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_46153E
mov     eax, edx
call    sub_4DEADD

loc_46153E:
pop     edx
pop     ecx
retn
sub_461521 endp

jpt_46158C dd offset loc_461593 ; jump table for switch statement
dd offset def_46158C
dd offset loc_4615C4
dd offset def_46158C
dd offset loc_4615C4
dd offset def_46158C
dd offset loc_4615C4



sub_46155D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     al, ds:byte_560BE4
cmp     al, 6           ; switch 7 cases
ja      def_46158C      ; jumptable 0046158C default case, cases 1,3,5
and     eax, 0FFh
jmp     jpt_46158C[eax*4] ; switch jump

loc_461593:             ; jumptable 0046158C case 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 1
jmp     short def_46158C ; jumptable 0046158C default case, cases 1,3,5

loc_4615C4:             ; jumptable 0046158C cases 2,4,6
mov     dword ptr [ecx+158h], 4000400h
mov     dword ptr [ecx+15Ch], 400h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     eax, [esi+24h]
lea     edi, [ecx+14h]
lea     esi, [eax+14h]
movsd
movsd
add     word ptr [ecx+16h], 39Ah
lea     edi, [ecx+1Ch]
lea     esi, [eax+1Ch]
movsd
movsd
movsd
movsd
add     dword ptr [ecx+20h], 39Ah
mov     eax, ecx
call    sub_4DEADD
mov     byte ptr [ecx+9], 3

def_46158C:             ; jumptable 0046158C default case, cases 1,3,5
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_46155D endp




sub_461626 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461642
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_461642:
pop     edx
pop     ecx
pop     ebx
retn
sub_461626 endp




sub_461646 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461666
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_461666:
pop     edx
pop     ecx
pop     ebx
retn
sub_461646 endp




sub_46166A proc near
push    edx
push    esi
push    edi
mov     byte ptr [eax+0Dh], 0
mov     edx, ds:dword_560C00
lea     edi, [eax+14h]
lea     esi, [edx+14h]
movsd
movsd
add     word ptr [eax+16h], 39Ah
lea     edi, [eax+1Ch]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
add     dword ptr [eax+20h], 39Ah
pop     edi
pop     esi
pop     edx
retn
sub_46166A endp




sub_46169A proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+9]
call    ds:funcs_4616A3[ecx*4]
cmp     byte ptr [edx+0Dh], 0
jnz     short loc_4616B7
mov     eax, edx
call    sub_4DEADD

loc_4616B7:
pop     edx
pop     ecx
retn
sub_46169A endp




sub_4616BA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4616BA endp




sub_461709 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_461725
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_461725:
pop     edx
pop     ecx
pop     ebx
retn
sub_461709 endp




sub_461729 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_46178F
or      byte ptr [ebp+0], 2
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     dword ptr [ebp+78h], 0
mov     eax, ebp
call    sub_42C592
add     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
xor     ebx, ebx
xor     edx, edx
mov     eax, ebp
call    sub_4DE96B
inc     byte ptr [ebp+8]
jmp     short loc_4617B0

loc_46178F:
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
mov     eax, ebp
call    sub_4DEADD

loc_4617B0:
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_461729 endp




sub_4617CA proc near
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
inc     byte ptr [ecx+8]
mov     eax, ecx
call    sub_461820
pop     edx
pop     ecx
pop     ebx
retn
sub_4617CA endp




sub_461803 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_46181C
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_46181C:
pop     edx
pop     ecx
pop     ebx
retn
sub_461803 endp




sub_461820 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_461829[edx*4]
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
retn
sub_461820 endp



; Attributes: thunk

sub_461845 proc near
jmp     sub_4DE336
sub_461845 endp




sub_46184A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_461850[edx*4]
pop     edx
retn
sub_46184A endp




sub_461859 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     ebp, eax
add     eax, 3A8h
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
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
call    rand_
mov     edx, [esp+2Ch+var_1C]
mov     [edx+16h], ax
mov     edx, 4210h
mov     eax, ebp
call    sub_461B33
xor     ecx, ecx
mov     cl, [ebp+8]
mov     edx, [esp+2Ch+var_1C]
mov     eax, ebp
call    ds:funcs_4618B7[ecx*4]
cmp     byte ptr [ebp+3], 0
jnz     short loc_461918
mov     eax, [esp+2Ch+var_1C]
test    byte ptr [eax+14h], 4
jz      short loc_461918
mov     ecx, offset unk_560E24
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_4618F2
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
jmp     short loc_4618F9

loc_4618F2:
mov     eax, ebp
call    sub_4DEB53

loc_4618F9:
mov     eax, [esp+2Ch+var_1C]
mov     ax, [eax+1Ah]
add     ah, 8
sub     ax, [ebp+56h]
and     ah, 0Fh
mov     [ecx+2], ax
mov     eax, ebp
call    sub_4DF795
jmp     short loc_46193C

loc_461918:
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_461935
xor     edx, edx
mov     dl, al
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_46193C

loc_461935:
mov     eax, ebp
call    sub_4DEADD

loc_46193C:
mov     eax, [ebp+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 400h
mov     esi, esp
call    sub_4DD510
mov     edx, [esp+2Ch+var_1C]
add     edx, 2Ch ; ','
mov     eax, esp
call    sub_4DD57B
mov     ax, [ebp+14h]
mov     edx, [esp+2Ch+var_1C]
add     [edx+2Ch], ax
mov     ax, [ebp+18h]
add     [edx+30h], ax
mov     ax, [ebp+16h]
sub     eax, 80h
mov     [edx+2Eh], ax
test    byte ptr [edx+15h], 0Ch
jz      short loc_46198F
mov     eax, 80h
jmp     short loc_461991

loc_46198F:
xor     eax, eax

loc_461991:
