loc_40AD3A:
pop     edx
pop     ecx
pop     ebx
retn
sub_40AD1E endp




sub_40AD3E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 1Ah
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
jmp     short loc_40AD37
sub_40AD3E endp




sub_40AD55 proc near
push    edx
inc     byte ptr [eax+0Ch]
mov     edx, [eax+98h]
cmp     byte ptr [edx], 10h
jnz     short loc_40AD67
inc     byte ptr [eax+0Ah]

loc_40AD67:
pop     edx
retn
sub_40AD55 endp




sub_40AD69 proc near
push    edx
add     dword ptr [eax+24h], 268000h
mov     edx, [eax+98h]
cmp     byte ptr [edx], 18h
jnz     short loc_40AD7F
inc     byte ptr [eax+0Ah]

loc_40AD7F:
pop     edx
sub_40AD69 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_38]



sub_40AD81 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40AD87[edx*4]
pop     edx
retn
sub_40AD81 endp




sub_40AD90 proc near
cmp     byte ptr [eax+8], 0
jz      sub_40AB68
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40ADA3[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40ADC2
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40ADC2:
pop     edx
pop     ecx
retn
sub_40AD90 endp




sub_40ADC5 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+3], 0
jnz     short loc_40ADDC
mov     eax, edx
call    sub_40AD90
mov     eax, edx
call    sub_40AAD2

loc_40ADDC:
pop     edx
retn
sub_40ADC5 endp




sub_40ADDE proc near
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
call    ds:funcs_40AE1D[esi*4]
mov     edx, ebp
mov     eax, ecx
call    sub_40B3A2
mov     dl, [ecx+0ACh]
cmp     dl, [ecx+0ADh]
jz      short loc_40AE52
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_40AE59

loc_40AE52:
mov     eax, ecx
call    sub_4DEADD

loc_40AE59:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40ADDE endp




sub_40AE60 proc near
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
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B370
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B389
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
retn
sub_40AE60 endp

jpt_40AF14 dd offset loc_40AF1B ; jump table for switch statement
dd offset loc_40AF3F
dd offset loc_40AF7A
dd offset loc_40AFF8
dd offset loc_40B031
dd offset loc_40B0A6
dd offset loc_40B0CC
dd offset loc_40B10E
dd offset loc_40B168
dd offset loc_40B196
dd offset loc_40B1B4



sub_40AEFA proc near
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ebp, edx
mov     edi, ebx
mov     al, [eax+9]
cmp     al, 0Ah         ; switch 11 cases
ja      def_40AF14      ; jumptable 0040AF14 default case
and     eax, 0FFh
jmp     jpt_40AF14[eax*4] ; switch jump

loc_40AF1B:             ; jumptable 0040AF14 case 0
mov     byte ptr [esi+0ADh], 0FFh
mov     ah, [edx+4]
cmp     ah, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     ah, [edx+5]
jnz     def_40AF14      ; jumptable 0040AF14 default case
add     [esi+9], ah
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AF3F:             ; jumptable 0040AF14 case 1
xor     ecx, ecx
mov     ebx, 0FFFFFFDCh
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
mov     ch, [ebp+9]
cmp     ch, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+2], 0
add     [esi+9], ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AF7A:             ; jumptable 0040AF14 case 2
cmp     byte ptr [esi+0A4h], 37h ; '7'
jnb     short loc_40AF96
xor     ecx, ecx
mov     ebx, 0FFFFFFE8h
mov     edx, 8
mov     eax, esi
call    sub_4DD43B

loc_40AF96:
cmp     byte ptr [ebp+9], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, [ebp+10h]
cmp     ebx, 4Bh ; 'K'
jnz     short loc_40AFBB
mov     ebx, 8

loc_40AFAD:
mov     edx, edi
mov     eax, esi
call    sub_40B370
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AFBB:
cmp     ebx, 0AAh
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 1
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 12h

loc_40AFEA:
mov     word ptr [edi+2], 0

loc_40AFF0:
inc     byte ptr [esi+9]
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40AFF8:             ; jumptable 0040AF14 case 3
cmp     byte ptr [edx+9], 3
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 2Dh ; '-'
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 2
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 2
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 13h
jmp     short loc_40AFEA

loc_40B031:             ; jumptable 0040AF14 case 4
cmp     byte ptr [edx+9], 3
jnz     short loc_40B06A
mov     ebx, [edx+10h]
cmp     ebx, 55h ; 'U'
jnz     short loc_40B046
mov     ebx, 6
jmp     short loc_40B061

loc_40B046:
cmp     ebx, 0B4h
jnz     short loc_40B06A
mov     ebx, 0Ah
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 2

loc_40B061:
mov     edx, edi
mov     eax, esi
call    sub_40B389

loc_40B06A:
cmp     byte ptr [ebp+9], 4
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 0Bh
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 9
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 14h
jmp     loc_40AFEA

loc_40B0A6:             ; jumptable 0040AF14 case 5
cmp     byte ptr [esi+0A4h], 19h
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 14h
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [edi+2], 19h
jmp     loc_40AFF0

loc_40B0CC:             ; jumptable 0040AF14 case 6
mov     byte ptr [esi+0ADh], 0FFh
mov     word ptr [ebx+2], 19h
cmp     byte ptr [edx+9], 4
jnz     def_40AF14      ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 28h ; '('
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, 3
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 8
mov     edx, edi
mov     eax, esi
call    sub_40B389
jmp     loc_40AFF0

loc_40B10E:             ; jumptable 0040AF14 case 7
cmp     byte ptr [edx+9], 4
jnz     short loc_40B12D
cmp     dword ptr [edx+10h], 46h ; 'F'
jnz     short loc_40B12D
mov     ebx, 3
mov     edx, edi
mov     eax, esi
call    sub_40B389
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_40B12D:
cmp     byte ptr [ebp+9], 5
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     edx, [ebp+10h]
cmp     edx, 1
jnz     def_40AF14      ; jumptable 0040AF14 default case
mov     ebx, edx
mov     edx, edi
mov     eax, esi
call    sub_40B370
mov     ebx, 4
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 15h
jmp     loc_40AFEA

loc_40B168:             ; jumptable 0040AF14 case 8
cmp     byte ptr [edx+9], 5
jnz     short loc_40B17E
cmp     dword ptr [edx+10h], 14h
jnz     short loc_40B17E
mov     ebx, 0Ch
jmp     loc_40AFAD

loc_40B17E:
cmp     byte ptr [ebp+9], 6
jnz     short def_40AF14 ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 2
jnz     short def_40AF14 ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 0
jmp     loc_40AFEA

loc_40B196:             ; jumptable 0040AF14 case 9
cmp     byte ptr [edx+9], 6
jnz     short def_40AF14 ; jumptable 0040AF14 default case
cmp     dword ptr [ebp+10h], 0Ah
jnz     short def_40AF14 ; jumptable 0040AF14 default case
mov     byte ptr [esi+0ACh], 2
mov     word ptr [ebx+2], 0
jmp     loc_40AFF0

loc_40B1B4:             ; jumptable 0040AF14 case 10
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 30h ; '0'
mov     eax, esi
call    sub_4DD43B
cmp     byte ptr [ebp+8], 1
jnz     short def_40AF14 ; jumptable 0040AF14 default case
xor     ebx, ebx
mov     edx, edi
mov     eax, esi
call    sub_40B370
xor     ebx, ebx
mov     edx, edi
mov     eax, esi
call    sub_40B389
mov     byte ptr [esi+0ACh], 16h
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0

def_40AF14:             ; jumptable 0040AF14 default case
pop     ebp

def_40B22B:             ; jumptable 0040B22B default case, case 7
pop     edi
pop     esi
pop     ecx
retn
sub_40AEFA endp

db 8Dh, 40h, 0
jpt_40B22B dd offset loc_40B232 ; jump table for switch statement
dd offset loc_40B23B
dd offset loc_40B26F
dd offset loc_40B29F
dd offset loc_40B2C2
dd offset loc_40B311
dd offset loc_40B337
dd offset def_40B22B



sub_40B216 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 7           ; switch 8 cases
ja      short def_40B22B ; jumptable 0040B22B default case, case 7
xor     ebx, ebx
mov     bl, dl
jmp     jpt_40B22B[ebx*4] ; switch jump

loc_40B232:             ; jumptable 0040B22B case 0
inc     dl
mov     [ecx+9], dl
pop     edi
pop     esi
pop     ecx
retn

loc_40B23B:             ; jumptable 0040B22B case 1
cmp     byte ptr [eax+9], 2
jnz     short def_40B22B ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 1
jnz     short def_40B22B ; jumptable 0040B22B default case, case 7
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B370
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B389
mov     byte ptr [ecx+0ACh], 17h
jmp     loc_40B30A

loc_40B26F:             ; jumptable 0040B22B case 2
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 14h
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40B389
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0ACh], 18h
pop     edi
pop     esi
pop     ecx
retn

loc_40B29F:             ; jumptable 0040B22B case 3
cmp     byte ptr [ecx+0A4h], 0Bh
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     byte ptr [ecx+0ACh], 18h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Bh
jmp     short loc_40B30A

loc_40B2C2:             ; jumptable 0040B22B case 4
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0Bh
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     edi, [eax+10h]
cmp     edi, 50h ; 'P'
jnz     short loc_40B2F3
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B389
pop     edi
pop     esi
pop     ecx
retn

loc_40B2F3:
cmp     edi, 64h ; 'd'
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7

loc_40B2FC:
mov     ebx, 0Dh
mov     edx, esi
mov     eax, ecx
call    sub_40B370

loc_40B30A:
inc     byte ptr [ecx+9]
pop     edi
pop     esi
pop     ecx
retn

loc_40B311:             ; jumptable 0040B22B case 5
cmp     byte ptr [eax+9], 3
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 0A0h
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     byte ptr [ecx+0ACh], 1Ah
mov     word ptr [esi+2], 0
jmp     short loc_40B2FC

loc_40B337:             ; jumptable 0040B22B case 6
cmp     byte ptr [eax+9], 4
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
cmp     dword ptr [eax+10h], 1
jnz     def_40B22B      ; jumptable 0040B22B default case, case 7
mov     ebx, 7
mov     edx, esi
mov     eax, ecx
call    sub_40B370
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40B389
mov     byte ptr [ecx+0ACh], 19h
jmp     short loc_40B30A
sub_40B216 endp




sub_40B370 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50BDE9[ebx*4]
mov     [edx+4], eax
retn
sub_40B370 endp




sub_40B389 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50BE21[ebx*4]
mov     [edx+8], eax
retn
sub_40B389 endp




sub_40B3A2 proc near
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
jb      short loc_40B3C7
jbe     short loc_40B3CA
cmp     al, 7Fh
jnz     short loc_40B3C7
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40B3CA

loc_40B3C7:
inc     byte ptr [esi+0Eh]

loc_40B3CA:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40B40C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40B40C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40B42F
jbe     short loc_40B432
cmp     al, 7Fh
jnz     short loc_40B42F
mov     byte ptr [esi+11h], 0
jmp     short loc_40B432

loc_40B42F:
inc     byte ptr [esi+11h]

loc_40B432:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40B474
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40B474:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40B3A2 endp




sub_40B47F proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+670h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40B48F[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40B4A3
mov     eax, ecx
call    sub_4DEADD

loc_40B4A3:
mov     edx, ebx
mov     eax, ecx
call    sub_40B7EE
pop     edx
pop     ecx
pop     ebx
retn
sub_40B47F endp




sub_40B4B0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+670h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B4D7
mov     word ptr [ecx+56h], 0C00h
jmp     short loc_40B4DD

loc_40B4D7:
mov     word ptr [ecx+56h], 800h

loc_40B4DD:
mov     word ptr [ecx+58h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 0
xor     eax, eax

loc_40B502:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 18h
jb      short loc_40B502
or      byte ptr [ecx+23Fh], 80h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
mov     byte ptr [ecx+10Bh], 0
mov     byte ptr [ecx+117h], 0
mov     byte ptr [ecx+143h], 0FFh
mov     byte ptr [ecx+147h], 0FFh
mov     byte ptr [ecx+14Bh], 0FFh
mov     byte ptr [ecx+14Fh], 0FFh
inc     byte ptr [ecx+0Dh]
mov     byte ptr [ecx+0Ah], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40B4B0 endp




sub_40B570 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B592
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+0Ah]

loc_40B592:
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B59F
add     word ptr [ecx+14h], 3
jmp     short loc_40B5A4

loc_40B59F:
add     word ptr [ecx+18h], 3

loc_40B5A4:
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
jmp     loc_40B678
sub_40B570 endp




sub_40B5C3 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     esi, offset dword_560BDC
lea     edi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B5EC
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40B5EC:
cmp     dword ptr [esi+10h], 4Bh ; 'K'
jnz     loc_40B678
mov     ebx, 1
mov     edx, edi
mov     eax, ecx
call    sub_40B7AE
jmp     loc_40B678
sub_40B5C3 endp




sub_40B609 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B64E
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+10Bh], 0FFh
mov     byte ptr [ecx+117h], 0FFh
mov     byte ptr [ecx+143h], 0
mov     byte ptr [ecx+147h], 0
inc     byte ptr [ecx+0Ah]

loc_40B64E:
mov     eax, [edi+10h]
cmp     eax, 0C9h
jb      short loc_40B663
jbe     short loc_40B67E
cmp     eax, 0CDh
jz      short loc_40B685
jmp     short loc_40B678

loc_40B663:
cmp     eax, 0BFh
jnz     short loc_40B678
mov     ebx, 2

loc_40B66F:
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE

loc_40B678:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40B67E:
mov     ebx, 3
jmp     short loc_40B66F

loc_40B685:
mov     ebx, 4
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
mov     byte ptr [ecx+14Bh], 0
mov     byte ptr [ecx+14Fh], 0
jmp     short loc_40B678
sub_40B609 endp




sub_40B6A3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B6D4
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 5
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
inc     byte ptr [ecx+0Ah]

loc_40B6D4:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40B6A3 endp




sub_40B6D9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edi, offset dword_560BDC
lea     esi, [eax+670h]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40B757
cmp     byte ptr [ecx+3], 0
jnz     short loc_40B6FF
mov     word ptr [ecx+56h], 100h
jmp     short loc_40B705

loc_40B6FF:
mov     word ptr [ecx+56h], 400h

loc_40B705:
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+117h], 0
mov     al, [ecx+117h]
mov     [ecx+10Bh], al
mov     byte ptr [ecx+14Bh], 0FFh
mov     al, [ecx+14Bh]
mov     [ecx+147h], al
mov     [ecx+143h], al
mov     byte ptr [ecx+14Fh], 0FFh
mov     ebx, 8
mov     edx, esi
mov     eax, ecx
call    sub_40B7AE
inc     byte ptr [ecx+0Ah]

loc_40B757:
mov     eax, [edi+10h]
cmp     eax, 5Ah ; 'Z'
jb      short loc_40B780
jbe     short loc_40B7A4
cmp     eax, 8Ch
jb      short loc_40B776
jbe     short loc_40B7A4
cmp     eax, 0A0h
jz      short loc_40B790
jmp     loc_40B678

loc_40B776:
cmp     eax, 7Ch ; '|'

loc_40B779:
jz      short loc_40B79A
jmp     loc_40B678

loc_40B780:
cmp     eax, 1Eh
jb      loc_40B678
jbe     short loc_40B790
cmp     eax, 46h ; 'F'
jmp     short loc_40B779

loc_40B790:
mov     ebx, 6
jmp     loc_40B66F

loc_40B79A:
mov     ebx, 7
jmp     loc_40B66F

loc_40B7A4:
mov     ebx, 8
jmp     loc_40B66F
sub_40B6D9 endp




sub_40B7AE proc near
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
mov     ebx, ds:off_50BF48[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50BF6C[eax*4]
mov     [edx+10h], eax
retn
sub_40B7AE endp




sub_40B7EE proc near
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
jb      short loc_40B81A
jbe     short loc_40B81E
cmp     ax, 7FFFh
jnz     short loc_40B81A
mov     word ptr [edx+4], 0
jmp     short loc_40B81E

loc_40B81A:
inc     word ptr [esi+4]

loc_40B81E:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_40B863
movsx   eax, word ptr [esi]
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40B863:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40B88E
jbe     short loc_40B892
cmp     ax, 7FFFh
jnz     short loc_40B88E
mov     word ptr [esi+0Ah], 0
jmp     short loc_40B892

loc_40B88E:
inc     word ptr [esi+0Ah]

loc_40B892:
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
jz      short loc_40B8E1
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40B8E1:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40B7EE endp




sub_40B8EE proc near
push    ebx
push    ecx
push    edx
xor     ebx, ebx
mov     bl, [eax+3]
xor     ecx, ecx
mov     cl, [eax+8]
mov     edx, ecx
shl     edx, 2
mov     ecx, ds:off_50BFA0[ebx*4]
add     ecx, edx
lea     ebx, [eax+640h]
mov     edx, offset dword_560BDC
call    dword ptr [ecx]
pop     edx
pop     ecx
pop     ebx
retn
sub_40B8EE endp




sub_40B91A proc near
push    ecx
push    esi
mov     ecx, eax
mov     eax, edx
mov     esi, ebx
mov     dl, [ecx+9]
cmp     dl, 1
jb      short loc_40B938
jbe     short loc_40B968
cmp     dl, 2
jz      loc_40B9FE
pop     esi
pop     ecx
retn

loc_40B938:
test    dl, dl
jnz     loc_40BA95
mov     [ebx+12h], dl
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C646
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C755
inc     byte ptr [ecx+9]
pop     esi
pop     ecx
retn

loc_40B968:
mov     bh, [eax+9]
cmp     bh, 1
jnz     short loc_40B998
mov     edx, [eax+10h]
cmp     edx, 1
jnz     short loc_40B98B

loc_40B978:
mov     ebx, 11h

loc_40B97D:
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
jmp     loc_40B9F2

loc_40B98B:
cmp     edx, 23h ; '#'
jnz     loc_40B9F2

loc_40B994:
xor     ebx, ebx
jmp     short loc_40B97D

loc_40B998:
cmp     bh, 2
jnz     loc_40B9F2
mov     eax, [eax+10h]
cmp     eax, 87h
jb      short loc_40B9D1
jbe     short loc_40B994
cmp     eax, 0E6h
jb      short loc_40B9C8
jbe     short loc_40B994
cmp     eax, 0FFh
jb      short loc_40B9F2
jbe     short loc_40B978
cmp     eax, 12Ch
jz      short loc_40B9E4
jmp     short loc_40B9F2

loc_40B9C8:
cmp     eax, 0D2h

loc_40B9CD:
jz      short loc_40B978
jmp     short loc_40B9F2

loc_40B9D1:
cmp     eax, 41h ; 'A'
jb      short loc_40B9DD
jbe     short loc_40B994
cmp     eax, 50h ; 'P'
jmp     short loc_40B9CD

loc_40B9DD:
cmp     eax, 14h
jnz     short loc_40B9F2
jmp     short loc_40B978

loc_40B9E4:
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
inc     byte ptr [ecx+9]

loc_40B9F2:
mov     edx, esi
mov     eax, ecx
call    sub_40C755
pop     esi
pop     ecx
retn

loc_40B9FE:
cmp     byte ptr [eax+9], 8
jnz     loc_40BA95
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 10h
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     ebx, 1
mov     edx, esi
mov     eax, ecx
call    sub_40C646
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C678
mov     byte ptr [esi+12h], 1

loc_40BA72:
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     ebx, [esi]
sar     ebx, 10h
xor     edx, edx
mov     dl, [ecx+0ACh]
mov     eax, ecx
call    sub_4DE96B

loc_40BA95:
pop     esi
pop     ecx
retn
sub_40B91A endp

db 8Bh, 0C0h
jpt_40BB24 dd offset loc_40BB2B ; jump table for switch statement
dd offset loc_40BB4B
dd offset loc_40BBFA
dd offset loc_40BC34
dd offset loc_40BCC4
dd offset loc_40BD63
dd offset loc_40BDA1
dd offset loc_40BE2A
dd offset loc_40BE7D
dd offset loc_40BEDF
dd offset loc_40BF40
dd offset loc_40BF65
dd offset loc_40BF95
dd offset loc_40C002
dd offset loc_40C066
dd offset loc_40C080
dd offset loc_40C0B9



sub_40BADE proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
mov     eax, edx
mov     [esp+14h+var_14], ebx
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
mov     dl, [ebp+0ACh]
mov     [ebp+0ADh], dl
mov     dl, [ebp+9]
cmp     dl, 10h         ; switch 17 cases
ja      def_40BB24      ; jumptable 0040BB24 default case
and     edx, 0FFh
jmp     jpt_40BB24[edx*4] ; switch jump

loc_40BB2B:             ; jumptable 0040BB24 case 0
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 9
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1

loc_40BB40:             ; jumptable 0040BB24 default case
jnz     def_40BB24
jmp     loc_40BD5B

loc_40BB4B:             ; jumptable 0040BB24 case 1
mov     dl, [eax+9]
cmp     dl, 9
jnz     short loc_40BB8F
mov     eax, [eax+10h]
cmp     eax, 14h
jb      short loc_40BB72
jbe     short loc_40BB85
cmp     eax, 3Ch ; '<'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BB7B
cmp     eax, 64h ; 'd'
jz      short loc_40BB85
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BB72:
cmp     eax, 0Ah
jnz     def_40BB24      ; jumptable 0040BB24 default case

loc_40BB7B:
mov     ebx, 11h
jmp     loc_40C10A

loc_40BB85:
mov     ebx, 1
jmp     loc_40C10A

loc_40BB8F:
cmp     dl, 0Ch
jnz     short loc_40BBB0
cmp     dword ptr [eax+10h], 1
jnz     short loc_40BBB0
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
xor     ebx, ebx
jmp     loc_40C10A

loc_40BBB0:
cmp     byte ptr [eax+9], 0Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 12Ch
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 0Eh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 12h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 11h

loc_40BBEC:
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
jmp     loc_40BD5B

loc_40BBFA:             ; jumptable 0040BB24 case 2
cmp     byte ptr [eax+9], 0Fh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     edi, [eax+10h]
cmp     edi, 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, edi
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 12h
jmp     short loc_40BBEC

loc_40BC34:             ; jumptable 0040BB24 case 3
mov     bl, [eax+9]
cmp     bl, 0Fh
jnz     short loc_40BC71
mov     eax, [eax+10h]
cmp     eax, 14h
jb      short loc_40BC54
jbe     short loc_40BC6A
cmp     eax, 28h ; '('
jb      short loc_40BC9D
jbe     short loc_40BC59
cmp     eax, 50h ; 'P'
jz      short loc_40BC6A
jmp     short loc_40BC9D

loc_40BC54:
cmp     eax, 5
jnz     short loc_40BC9D

loc_40BC59:
mov     ebx, 11h

loc_40BC5E:
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40BC9D

loc_40BC6A:
mov     ebx, 1
jmp     short loc_40BC5E

loc_40BC71:
cmp     bl, 11h
jnz     short loc_40BC9D
cmp     dword ptr [eax+10h], 1
jnz     short loc_40BC9D
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
inc     byte ptr [ebp+9]

loc_40BC9D:
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      def_40BB24      ; jumptable 0040BB24 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2Ah ; '*'
mov     eax, ebp
call    sub_4DD43B
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BCC4:             ; jumptable 0040BB24 case 4
mov     ch, [eax+9]
cmp     ch, 11h
jnz     short loc_40BD24
mov     ecx, [eax+10h]
cmp     ecx, 0Ah
jnz     short loc_40BCE8
mov     ebx, 0Fh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BCE8:
cmp     ecx, 1Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 14h
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BD24:
cmp     ch, 12h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     word ptr [ebp+56h], 700h
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 2

loc_40BD51:
mov     edx, [esp+14h+var_14]

loc_40BD54:
mov     eax, ebp
call    sub_40C65F

loc_40BD5B:
inc     byte ptr [ebp+9]
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BD63:             ; jumptable 0040BB24 case 5
cmp     byte ptr [eax+9], 13h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 0Ah
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 5
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 4
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 15h
jmp     loc_40BBEC

loc_40BDA1:             ; jumptable 0040BB24 case 6
mov     dl, [eax+9]
cmp     dl, 13h
jnz     short loc_40BDED
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_40BDC9
jbe     short loc_40BDD9
cmp     eax, 50h ; 'P'
jb      short loc_40BDC4
jbe     short loc_40BDD9
cmp     eax, 78h ; 'x'

loc_40BDBD:
jz      short loc_40BDE3
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BDC4:
cmp     eax, 37h ; '7'
jmp     short loc_40BDBD

loc_40BDC9:
cmp     eax, 0Fh
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BDD9
cmp     eax, 1Eh
jmp     short loc_40BDBD

loc_40BDD9:
mov     ebx, 13h
jmp     loc_40C10A

loc_40BDE3:
mov     ebx, 2
jmp     loc_40C10A

loc_40BDED:
cmp     dl, 15h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 2
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
mov     byte ptr [ebp+0ACh], 16h
jmp     loc_40BBEC

loc_40BE2A:             ; jumptable 0040BB24 case 7
cmp     byte ptr [eax+9], 15h
jnz     short loc_40BE54
cmp     dword ptr [eax+10h], 0Ah
jnz     short loc_40BE54
mov     ebx, 0Eh
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 13h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F

loc_40BE54:
cmp     byte ptr [ebp+0A4h], 0Eh
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 16h
mov     byte ptr [ebp+0ADh], 0FFh

loc_40BE6F:
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0Eh
jmp     loc_40BD5B

loc_40BE7D:             ; jumptable 0040BB24 case 8
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 15h
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     eax, [eax+10h]
cmp     eax, 32h ; '2'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BEA6
cmp     eax, 46h ; 'F'
jz      short loc_40BEBF
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BEA6:
mov     ebx, 3
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 15h
jmp     loc_40C10A

loc_40BEBF:
mov     ebx, 11h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 16h
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40BE6F

loc_40BEDF:             ; jumptable 0040BB24 case 9
cmp     byte ptr [eax+9], 15h
jnz     short loc_40BF04
cmp     dword ptr [eax+10h], 78h ; 'x'
jnz     short loc_40BF04
mov     ebx, 7
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 5
jmp     loc_40C10A

loc_40BF04:
cmp     byte ptr [eax+9], 16h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 17h
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
mov     ebx, 2
mov     edx, eax
mov     eax, ebp
call    sub_40C646
mov     ebx, 6
jmp     loc_40BD51

loc_40BF40:             ; jumptable 0040BB24 case 10
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 17h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 69h ; 'i'
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     ebx, 11h
jmp     loc_40BD51

loc_40BF65:             ; jumptable 0040BB24 case 11
cmp     byte ptr [ebp+0A4h], 8
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 17h
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 8
mov     ebx, 6
mov     edx, eax
jmp     loc_40BD54

loc_40BF95:             ; jumptable 0040BB24 case 12
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [eax+10h]
cmp     eax, 0D2h
jb      short loc_40BFC5
jbe     loc_40BB7B
cmp     eax, 104h
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     short loc_40BFDF
cmp     eax, 118h
jz      short loc_40BFE9
jmp     def_40BB24      ; jumptable 0040BB24 default case

loc_40BFC5:
cmp     eax, 78h ; 'x'
jb      def_40BB24      ; jumptable 0040BB24 default case
jbe     loc_40BB7B
cmp     eax, 0BEh
jnz     def_40BB24      ; jumptable 0040BB24 default case

loc_40BFDF:
mov     ebx, 6
jmp     loc_40C10A

loc_40BFE9:
mov     ebx, 8
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 17h
jmp     loc_40BD51

loc_40C002:             ; jumptable 0040BB24 case 13
cmp     byte ptr [eax+9], 17h
jnz     short loc_40C01B
cmp     dword ptr [eax+10h], 122h
jnz     short loc_40C01B
mov     ebx, 7
jmp     loc_40C10A

loc_40C01B:
mov     dl, [eax+9]
cmp     dl, 18h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 1
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     [ebp+0ACh], dl
mov     eax, [esp+14h+var_14]
mov     word ptr [eax+2], 0
mov     byte ptr [ebp+108h], 14h
mov     byte ptr [ebp+114h], 15h
mov     ebx, 9
mov     edx, eax
mov     eax, ebp
call    sub_40C646
mov     ebx, 9
jmp     loc_40BD51

loc_40C066:             ; jumptable 0040BB24 case 14
mov     byte ptr [ebp+0ADh], 0FFh
cmp     byte ptr [eax+9], 19h
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 5
jmp     loc_40BB40

loc_40C080:             ; jumptable 0040BB24 case 15
cmp     byte ptr [eax+9], 1Dh
jnz     def_40BB24      ; jumptable 0040BB24 default case
cmp     dword ptr [eax+10h], 5
jnz     def_40BB24      ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 19h
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 0Ah
mov     eax, ebp
call    sub_40C646
mov     ebx, 0Ah
jmp     loc_40BD51

loc_40C0B9:             ; jumptable 0040BB24 case 16
cmp     byte ptr [eax+9], 20h ; ' '
jnz     short def_40BB24 ; jumptable 0040BB24 default case
mov     eax, [eax+10h]
cmp     eax, 28h ; '('
jb      short loc_40C0D7
jbe     short loc_40C0FE
cmp     eax, 3Ch ; '<'
jb      short def_40BB24 ; jumptable 0040BB24 default case
jbe     short loc_40C0F7
cmp     eax, 55h ; 'U'
jz      short loc_40C105
jmp     short def_40BB24 ; jumptable 0040BB24 default case

loc_40C0D7:
cmp     eax, 1Eh
jnz     short def_40BB24 ; jumptable 0040BB24 default case
mov     byte ptr [ebp+0ACh], 1Ah
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 12h
mov     eax, ebp
call    sub_40C646

loc_40C0F7:
mov     ebx, 18h
jmp     short loc_40C10A

loc_40C0FE:
mov     ebx, 0Bh
jmp     short loc_40C10A

loc_40C105:
mov     ebx, 0Bh

loc_40C10A:
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C65F

def_40BB24:             ; jumptable 0040BB24 default case
mov     edx, [esp+14h+var_14]
mov     eax, ebp
call    sub_40C678
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_40C141
mov     ebx, [esp+14h+var_14]
mov     ebx, [ebx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_40C148

loc_40C141:
mov     eax, ebp
call    sub_4DEADD

loc_40C148:
mov     eax, [esp+14h+var_14]
cmp     byte ptr [eax+12h], 0
jz      short loc_40C164
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40C164:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40BADE endp




sub_40C16C proc near
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
mov     byte ptr [ecx+0ACh], 1Ah
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebx+2], 0
mov     byte ptr [ebx+12h], 1
mov     byte ptr [ecx+108h], 14h
mov     byte ptr [ecx+114h], 15h
mov     ebx, 0Bh
mov     edx, esi
mov     eax, ecx
call    sub_40C646
mov     ebx, 0Ch
mov     edx, esi
mov     eax, ecx
call    sub_40C65F
mov     edx, esi
mov     eax, ecx
call    sub_40C678
jmp     loc_40BA72
sub_40C16C endp

jpt_40C283 dd offset loc_40C28A ; jump table for switch statement
dd offset loc_40C2B7
dd offset loc_40C2D7
dd offset loc_40C30A
dd offset loc_40C326
dd offset loc_40C338
dd offset loc_40C3F5
dd offset loc_40C44C
dd offset loc_40C46B
dd offset loc_40C477
dd offset loc_40C4AB
dd offset loc_40C50B
dd offset loc_40C535
dd offset loc_40C583
dd offset loc_40C59A
dd offset loc_40C5BB
dd offset loc_40C5D7
dd offset def_40C283



sub_40C23E proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     ebp, eax
mov     [esp+18h+var_18], edx
mov     [esp+18h+var_14], ebx
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
mov     al, [eax+0ACh]
mov     [ebp+0ADh], al
mov     al, [ebp+9]
cmp     al, 11h         ; switch 18 cases
ja      def_40C283      ; jumptable 0040C283 default case, case 17
xor     edx, edx
mov     dl, al
jmp     jpt_40C283[edx*4] ; switch jump

loc_40C28A:             ; jumptable 0040C283 case 0
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 5
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Bh

loc_40C2A8:
mov     eax, [esp+18h+var_14]
mov     word ptr [eax+2], 0
jmp     loc_40C413

loc_40C2B7:             ; jumptable 0040C283 case 1
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 6
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Ch
jmp     short loc_40C2A8

loc_40C2D7:             ; jumptable 0040C283 case 2
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 6
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 0A0h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Dh
mov     ebx, 13h
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
jmp     short loc_40C2A8

loc_40C30A:             ; jumptable 0040C283 case 3
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 0Dh
jmp     loc_40C3E8

loc_40C326:             ; jumptable 0040C283 case 4
mov     byte ptr [ebp+0ACh], 1Eh

loc_40C32D:
mov     word ptr [ebx+2], 0
jmp     loc_40C413

loc_40C338:             ; jumptable 0040C283 case 5
mov     eax, [esp+18h+var_18]
mov     dl, [eax+9]
cmp     dl, 6
jnz     short loc_40C3A7
mov     eax, [eax+10h]
cmp     eax, 0E6h
jb      short loc_40C368
jbe     short loc_40C38D
cmp     eax, 0FAh
jb      def_40C283      ; jumptable 0040C283 default case, case 17
jbe     short loc_40C383
cmp     eax, 113h
jz      short loc_40C39D
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C368:
cmp     eax, 0C8h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 10h
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646

loc_40C383:
mov     ebx, 19h
jmp     loc_40C4E8

loc_40C38D:
mov     ebx, 0Ch
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646

loc_40C39D:
mov     ebx, 0Dh
jmp     loc_40C4E8

loc_40C3A7:
cmp     dl, 7
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 1Fh
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     byte ptr [ebp+108h], 4
mov     byte ptr [ebp+114h], 7
mov     ebx, 2
mov     eax, ebp
call    sub_40C646

loc_40C3E3:
mov     ebx, 4

loc_40C3E8:
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     short loc_40C413

loc_40C3F5:             ; jumptable 0040C283 case 6
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 8
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 0Ah

loc_40C40D:             ; jumptable 0040C283 default case, case 17
jnz     def_40C283

loc_40C413:
inc     byte ptr [ebp+9]

def_40C283:             ; jumptable 0040C283 default case, case 17
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C678
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      loc_40C61A
mov     ebx, [esp+18h+var_14]
mov     ebx, [ebx]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     loc_40C621

loc_40C44C:             ; jumptable 0040C283 case 7
mov     eax, [esp+18h+var_18]
mov     ebx, [eax+10h]
cmp     ebx, 32h ; '2'
jnz     short loc_40C461
mov     ebx, 13h
jmp     loc_40C4E8

loc_40C461:
cmp     ebx, 41h ; 'A'
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
jmp     loc_40C3E3

loc_40C46B:             ; jumptable 0040C283 case 8
mov     byte ptr [ebp+0ACh], 20h ; ' '
jmp     loc_40C32D

loc_40C477:             ; jumptable 0040C283 case 9
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     short def_40C283 ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 21h ; '!'
mov     edx, ebx
mov     word ptr [ebx+2], 0
mov     ebx, 0Dh
mov     eax, ebp
call    sub_40C646
mov     ebx, 0Eh
jmp     loc_40C3E8

loc_40C4AB:             ; jumptable 0040C283 case 10
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     esi, [eax+10h]
cmp     esi, 0Ah
jnz     short loc_40C4DE
mov     ebx, 6
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 1Ah
jmp     short loc_40C4E8

loc_40C4DE:
cmp     esi, 1Eh
jnz     short loc_40C4F8

loc_40C4E3:
mov     ebx, 0Fh

loc_40C4E8:
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C65F
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C4F8:
cmp     esi, 3Ch ; '<'
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     ebx, 1Ah
jmp     loc_40C3E8

loc_40C50B:             ; jumptable 0040C283 case 11
cmp     byte ptr [ebp+0A4h], 0Dh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+0ACh], 21h ; '!'
mov     byte ptr [ebp+114h], 16h
mov     eax, [esp+18h+var_14]
mov     word ptr [eax+2], 0Dh
jmp     loc_40C413

loc_40C535:             ; jumptable 0040C283 case 12
mov     byte ptr [ebp+0ADh], 0FFh
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ah
jnz     short loc_40C54B
cmp     dword ptr [eax+10h], 55h ; 'U'
jz      short loc_40C4E3

loc_40C54B:
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Bh
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
mov     byte ptr [ebp+114h], 7
mov     ebx, 2
mov     edx, [esp+18h+var_14]
mov     eax, ebp
call    sub_40C646
mov     ebx, 10h
jmp     loc_40C3E8

loc_40C583:             ; jumptable 0040C283 case 13
cmp     byte ptr [ebp+0A4h], 12h
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
inc     al
mov     [ebp+9], al
jmp     def_40C283      ; jumptable 0040C283 default case, case 17

loc_40C59A:             ; jumptable 0040C283 case 14
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     eax, [ebp+0A4h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jmp     loc_40C40D

loc_40C5BB:             ; jumptable 0040C283 case 15
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     byte ptr [ebp+0ACh], 1
jmp     loc_40C2A8

loc_40C5D7:             ; jumptable 0040C283 case 16
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 200h
mov     eax, ebp
call    sub_4DD43B
mov     ah, [ebp+0A4h]
cmp     ah, 3
jz      short loc_40C5F7
cmp     ah, 0Bh
jnz     short loc_40C604

loc_40C5F7:
lea     edx, [ebp+14h]
mov     eax, 91h
call    sub_4D8BC3

loc_40C604:
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax+9], 0Ch
jnz     def_40C283      ; jumptable 0040C283 default case, case 17
cmp     dword ptr [eax+10h], 1
jmp     loc_40C40D

loc_40C61A:
mov     eax, ebp
call    sub_4DEADD

loc_40C621:
mov     eax, [esp+18h+var_14]
cmp     byte ptr [eax+12h], 0
jz      short loc_40C63E
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40C63E:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_40C23E endp




sub_40C646 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50C156[ebx*4]
mov     [edx+4], eax
retn
sub_40C646 endp




sub_40C65F proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50C1A6[ebx*4]
mov     [edx+8], eax
retn
sub_40C65F endp




sub_40C678 proc near
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
jb      short loc_40C69D
jbe     short loc_40C6A0
cmp     al, 7Fh
jnz     short loc_40C69D
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40C6A0

loc_40C69D:
inc     byte ptr [esi+0Eh]

loc_40C6A0:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40C6E2
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40C6E2:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40C705
jbe     short loc_40C708
cmp     al, 7Fh
jnz     short loc_40C705
mov     byte ptr [esi+11h], 0
jmp     short loc_40C708

loc_40C705:
inc     byte ptr [esi+11h]

loc_40C708:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40C74A
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40C74A:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40C678 endp




sub_40C755 proc near
push    ebx
push    ecx
mov     eax, offset byte_5F8364
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     ebx, [edx+4]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_40C77B
jbe     short loc_40C77E
cmp     bl, 7Fh
jnz     short loc_40C77B
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40C77E

loc_40C77B:
inc     byte ptr [edx+0Eh]

loc_40C77E:
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     ebx, [edx+4]
mov     bl, [ecx+ebx]
mov     [edx+0Ch], bl
mov     [edx+0Dh], bl
mov     [eax+168h], bl
mov     ecx, [edx+0Eh]
sar     ecx, 18h
mov     ebx, [edx+8]
mov     bl, [ecx+ebx+1]
cmp     bl, 7Eh ; '~'
jb      short loc_40C7B5
jbe     short loc_40C7B8
cmp     bl, 7Fh
jnz     short loc_40C7B5
mov     byte ptr [edx+11h], 0
jmp     short loc_40C7B8

loc_40C7B5:
inc     byte ptr [edx+11h]

loc_40C7B8:
mov     ecx, [edx+0Eh]
sar     ecx, 18h
mov     ebx, [edx+8]
mov     bl, [ecx+ebx]
mov     [edx+0Fh], bl
mov     [edx+10h], bl
mov     [eax+169h], bl
pop     ecx
pop     ebx
retn
sub_40C755 endp




sub_40C7D3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559084, dx
mov     eax, ds:dword_559080
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40C80F:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40C7D3 endp




sub_40C81B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55907C, dx
mov     eax, ds:dword_559078
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40C80F
sub_40C81B endp




sub_40C859 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559080
test    ecx, ecx
jz      loc_40C8FF
cmp     ds:dword_559078, 0
jz      loc_40C8FF
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40C8BB
jge     short loc_40C893
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40C8AF

loc_40C893:
inc     ds:word_559084
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559080+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40C8BB
add     eax, 4

loc_40C8AF:
mov     ds:dword_559080, eax
mov     eax, edx
call    sub_40C7D3

loc_40C8BB:
mov     eax, ds:dword_559078
mov     di, [eax+2]
test    di, di
jz      short loc_40C8FF
jge     short loc_40C8D7
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40C8F3

loc_40C8D7:
inc     ds:word_55907C
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559078+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40C8FF
add     eax, 4

loc_40C8F3:
mov     ds:dword_559078, eax
mov     eax, edx
call    sub_40C81B

loc_40C8FF:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40C859 endp




sub_40C904 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_55908C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40C95E
cmp     bl, ds:byte_560BE4
jnz     short loc_40C95E
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40C95E
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40C95E
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C3CA[eax*4]
mov     ds:dword_559080, eax
mov     eax, edx
call    sub_40C7D3
add     ds:dword_55908C, 6

loc_40C95E:
mov     eax, ds:dword_559088
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40C9A5
cmp     bl, [ecx+8]
jnz     short loc_40C9A5
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40C9A5
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40C9A5
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C3FA[eax*4]
mov     ds:dword_559078, eax
mov     eax, edx
call    sub_40C81B
add     ds:dword_559088, 6

loc_40C9A5:
mov     eax, edx
call    sub_40C859
pop     edx
pop     ecx
pop     ebx
retn
sub_40C904 endp




sub_40C9B0 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     ds:dword_55908C, offset unk_50C44A
mov     ds:dword_559088, offset unk_50C498
xor     eax, eax

loc_40C9E5:
mov     edx, eax
mov     word ptr [ecx+edx*8+196h], 4210h
inc     eax
cmp     eax, 18h
jl      short loc_40C9E5
mov     word ptr [ecx+0Eh], 0
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40C9B0 endp




sub_40CA03 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA1F
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA1F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA03 endp




sub_40CA23 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA3F
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA3F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA23 endp




sub_40CA43 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA5F
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA5F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA43 endp




sub_40CA63 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA7F
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA7F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA63 endp




sub_40CA83 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CA9F
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CA9F:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CA83 endp




sub_40CAA3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CAB5
jbe     short loc_40CAC2
pop     edx
pop     ecx
pop     ebx
retn

loc_40CAB5:
test    al, al
jnz     short loc_40CADE
xor     ebx, ebx
mov     edx, 1Bh
jmp     short loc_40CAD4

loc_40CAC2:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 35h ; '5'
jnz     short loc_40CADE
xor     ebx, ebx
mov     edx, 15h

loc_40CAD4:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CADE:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CAA3 endp




sub_40CAE2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB09
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB09:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CAE2 endp




sub_40CB0D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB29
xor     ebx, ebx
mov     edx, 17h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB29:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB0D endp




sub_40CB2D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB49
xor     ebx, ebx
mov     edx, 18h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB49:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB2D endp




sub_40CB4D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB69
xor     ebx, ebx
mov     edx, 19h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB69:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB4D endp




sub_40CB6D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CB89
xor     ebx, ebx
mov     edx, 1Ah
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CB89:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB6D endp




sub_40CB8D proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CBA2
jbe     short loc_40CBD1
cmp     al, 2
jz      short loc_40CBE4
jmp     short loc_40CBF6

loc_40CBA2:
test    al, al
jnz     short loc_40CBF6
xor     ebx, ebx
mov     edx, 10h
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 14h
mov     word ptr [esi+56h], 5DCh
mov     dword ptr [esi+1Ch], 0FEB60000h
mov     dword ptr [esi+24h], 0FE520000h
inc     byte ptr [esi+0Ah]
jmp     short loc_40CBF6

loc_40CBD1:
mov     bl, [esi+0Ch]
dec     bl
mov     [esi+0Ch], bl
jnz     short loc_40CBF6
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Ch], 1Ch
jmp     short loc_40CBF6

loc_40CBE4:
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_40CBF1
inc     byte ptr [esi+0Ah]

loc_40CBF1:
add     word ptr [esi+56h], 14h

loc_40CBF6:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 50h ; 'P'
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CB8D endp




sub_40CC0B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_40CC20
jbe     short loc_40CC4F
cmp     al, 2
jz      short loc_40CC62
jmp     short loc_40CBF6

loc_40CC20:
test    al, al
jnz     short loc_40CBF6
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
mov     byte ptr [esi+0Ch], 14h
mov     word ptr [esi+56h], 0
mov     dword ptr [esi+1Ch], 0FE5C0000h
mov     dword ptr [esi+24h], 0FF3D0000h
inc     byte ptr [esi+0Ah]
jmp     short loc_40CBF6

loc_40CC4F:
mov     ah, [esi+0Ch]
dec     ah
mov     [esi+0Ch], ah
jnz     short loc_40CBF6
inc     byte ptr [esi+0Ah]
mov     byte ptr [esi+0Ch], 1Ch
jmp     short loc_40CBF6

loc_40CC62:
sub     word ptr [esi+56h], 14h
jmp     short loc_40CBF6
sub_40CC0B endp




sub_40CC69 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40CC73[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40CC92
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40CC92:
mov     eax, ecx
call    sub_40C904
mov     eax, ds:dword_560C0C
mov     dl, [ecx+9]
cmp     dl, 2
jb      short loc_40CCB2
jbe     short loc_40CCDA
cmp     dl, 5
jz      short loc_40CCF9
jmp     loc_40CD23

loc_40CCB2:
cmp     dl, 1
jnz     loc_40CD23
mov     edx, [ecx+98h]
mov     bl, [edx]
cmp     bl, 22h ; '"'
jb      short loc_40CD23
mov     dl, bl
and     edx, 0FFh
mov     dx, word ptr ds:(off_50C1CE+2)[edx*2]
jmp     short loc_40CD1F

loc_40CCDA:
mov     edx, [ecx+98h]
mov     bh, [edx]
cmp     bh, 4
ja      short loc_40CD23
mov     dl, bh
and     edx, 0FFh
mov     dx, ds:word_50C24C[edx*2]
jmp     short loc_40CD1F

loc_40CCF9:
cmp     byte ptr [ecx+0ACh], 15h
jnz     short loc_40CD23
mov     edx, [ecx+98h]
mov     bl, [edx]
cmp     bl, 1Bh
jb      short loc_40CD23
mov     dl, bl
and     edx, 0FFh
mov     dx, ds:word_50C220[edx*2]

loc_40CD1F:
mov     [eax+0Ch], dx

loc_40CD23:
mov     eax, [ecx+148h]
sar     eax, 18h
cmp     eax, 0FFFFFFFFh
jz      short loc_40CD6E
cmp     byte ptr [ecx+0Fh], 0
jnz     short loc_40CD4A
mov     dl, [ecx+0Eh]
inc     dl
mov     [ecx+0Eh], dl
cmp     dl, 0Fh
jnz     short loc_40CD57
mov     byte ptr [ecx+0Fh], 1
jmp     short loc_40CD57

loc_40CD4A:
mov     al, [ecx+0Eh]
dec     al
mov     [ecx+0Eh], al
jnz     short loc_40CD57
mov     [ecx+0Fh], al

loc_40CD57:
xor     eax, eax
mov     al, [ecx+0Eh]
imul    eax, 421h
add     eax, 4210h
mov     [ecx+236h], ax

loc_40CD6E:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CC69 endp




sub_40CD72 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40CD82
mov     eax, edx
call    sub_40C9B0

loc_40CD82:
mov     eax, edx
call    sub_40CC69
pop     edx
retn
sub_40CD72 endp




sub_40CD8B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55909C, dx
mov     eax, ds:dword_559098
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40CDC7:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CD8B endp




sub_40CDD3 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559094, dx
mov     eax, ds:dword_559090
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40CDC7
sub_40CDD3 endp




sub_40CE11 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559098
test    ecx, ecx
jz      loc_40CEB7
cmp     ds:dword_559090, 0
jz      loc_40CEB7
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40CE73
jge     short loc_40CE4B
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40CE67

loc_40CE4B:
inc     ds:word_55909C
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559098+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40CE73
add     eax, 4

loc_40CE67:
mov     ds:dword_559098, eax
mov     eax, edx
call    sub_40CD8B

loc_40CE73:
mov     eax, ds:dword_559090
mov     di, [eax+2]
test    di, di
jz      short loc_40CEB7
jge     short loc_40CE8F
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40CEAB

loc_40CE8F:
inc     ds:word_559094
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559090+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40CEB7
add     eax, 4

loc_40CEAB:
mov     ds:dword_559090, eax
mov     eax, edx
call    sub_40CDD3

loc_40CEB7:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40CE11 endp




sub_40CEBC proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590A4
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40CF16
cmp     bl, ds:byte_560BE4
jnz     short loc_40CF16
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40CF16
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40CF16
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C5A0[eax*4]
mov     ds:dword_559098, eax
mov     eax, edx
call    sub_40CD8B
add     ds:dword_5590A4, 6

loc_40CF16:
mov     eax, ds:dword_5590A0
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40CF5D
cmp     bl, [ecx+8]
jnz     short loc_40CF5D
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40CF5D
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40CF5D
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C5AC[eax*4]
mov     ds:dword_559090, eax
mov     eax, edx
call    sub_40CDD3
add     ds:dword_5590A0, 6

loc_40CF5D:
mov     eax, edx
call    sub_40CE11
pop     edx
pop     ecx
pop     ebx
retn
sub_40CEBC endp




sub_40CF68 proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr ds:dword_560BDC+1, 48h ; 'H'
jnz     short loc_40CF9B
mov     ds:dword_5590A4, offset unk_50C5B8
mov     ds:dword_5590A0, offset unk_50C5D6
jmp     short loc_40CFAF

loc_40CF9B:
mov     ds:dword_5590A4, offset unk_50C5FA
mov     ds:dword_5590A0, offset unk_50C606

loc_40CFAF:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40CF68 endp




sub_40CFC9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40CFE5
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40CFE5:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CFC9 endp




sub_40CFE9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D005
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D005:
pop     edx
pop     ecx
pop     ebx
retn
sub_40CFE9 endp




sub_40D009 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D025
xor     ebx, ebx
mov     edx, 12h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D025:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D009 endp




sub_40D029 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40D045
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40D045:
pop     edx
pop     ecx
pop     ebx
retn
sub_40D029 endp




sub_40D049 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40D052[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40D071
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40D071:
mov     eax, ecx
call    sub_40CEBC
pop     edx
pop     ecx
retn
sub_40D049 endp




sub_40D07B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40D08E
mov     eax, esi
call    sub_40CF68

loc_40D08E:
mov     eax, esi
call    sub_40D049
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
sub_40D07B endp




sub_40D0AD proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590B4, dx
mov     eax, ds:dword_5590B0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40D0E9:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D0AD endp




sub_40D0F5 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590AC, dx
mov     eax, ds:dword_5590A8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 6
mov     ebx, 33h ; '3'
mov     edx, 2Ah ; '*'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40D0E9
sub_40D0F5 endp




sub_40D133 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590B0
test    ecx, ecx
jz      loc_40D1D9
cmp     ds:dword_5590A8, 0
jz      loc_40D1D9
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40D195
jge     short loc_40D16D
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40D189

loc_40D16D:
inc     ds:word_5590B4
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590B0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40D195
add     eax, 4

loc_40D189:
mov     ds:dword_5590B0, eax
mov     eax, edx
call    sub_40D0AD

loc_40D195:
mov     eax, ds:dword_5590A8
mov     di, [eax+2]
test    di, di
jz      short loc_40D1D9
jge     short loc_40D1B1
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40D1CD

loc_40D1B1:
inc     ds:word_5590AC
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590A8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40D1D9
add     eax, 4

loc_40D1CD:
mov     ds:dword_5590A8, eax
mov     eax, edx
call    sub_40D0F5

loc_40D1D9:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40D133 endp




sub_40D1DE proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590BC
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40D238
cmp     bl, ds:byte_560BE4
jnz     short loc_40D238
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40D238
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40D238
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C824[eax*4]
mov     ds:dword_5590B0, eax
mov     eax, edx
call    sub_40D0AD
add     ds:dword_5590BC, 6

loc_40D238:
mov     eax, ds:dword_5590B8
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40D27F
cmp     bl, [ecx+8]
jnz     short loc_40D27F
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40D27F
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40D27F
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50C878[eax*4]
mov     ds:dword_5590A8, eax
mov     eax, edx
call    sub_40D0F5
add     ds:dword_5590B8, 6

loc_40D27F:
mov     eax, edx
call    sub_40D133
pop     edx
pop     ecx
pop     ebx
retn
sub_40D1DE endp




sub_40D28A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_5590BC, offset unk_50C8CC
mov     ds:dword_5590B8, offset unk_50C95C
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40D28A endp

db 8Bh, 0C0h
jpt_40D2EA dd offset loc_40D2F1 ; jump table for switch statement
dd offset def_40D2EA
dd offset loc_40D30A
dd offset def_40D2EA
dd offset loc_40D31B



sub_40D2D9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D2EA[eax*4] ; switch jump

loc_40D2F1:             ; jumptable 0040D2EA case 0
xor     ebx, ebx
mov     edx, 10h
mov     eax, ecx
call    sub_4DE96B

loc_40D2FF:
mov     byte ptr [ecx+0Dh], 1
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_40D30A:             ; jumptable 0040D2EA case 2
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 9
jnz     short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
jmp     short loc_40D2FF

loc_40D31B:             ; jumptable 0040D2EA case 4
mov     byte ptr [ecx+0Dh], 0

def_40D2EA:             ; jumptable 0040D2EA default case, cases 1,3
pop     edx             ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
pop     ecx
pop     ebx
retn
sub_40D2D9 endp

db 8Bh, 0C0h
jpt_40D34E dd offset loc_40D355 ; jump table for switch statement
dd offset loc_40D369
dd offset def_40D2EA
dd offset loc_40D37A
dd offset loc_40D390
dd offset def_40D2EA



sub_40D33D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
and     eax, 0FFh
jmp     jpt_40D34E[eax*4] ; switch jump

loc_40D355:             ; jumptable 0040D34E case 0
xor     ebx, ebx
mov     edx, 11h
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
jmp     short loc_40D389

loc_40D369:             ; jumptable 0040D34E case 1
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 9
jnz     short def_40D2EA ; jumptable 0040D2EA default case, cases 1,3
; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4
mov     byte ptr [ecx+0Dh], 1
jmp     short loc_40D389

loc_40D37A:             ; jumptable 0040D34E case 3
mov     byte ptr [ecx+0Dh], 0
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 14h

loc_40D387:             ; jumptable 0040D2EA default case, cases 1,3
jnz     short def_40D2EA ; jumptable 0040D34E default case, cases 2,5
; jumptable 0040D3D2 default case, case 4
; jumptable 0040D46E default case, cases 2,4

