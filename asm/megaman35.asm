loc_4508E5:
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45087D endp




sub_4508EF proc near
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
call    ds:funcs_450916[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_450936
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_450936:
mov     dl, [ebp+9]
test    dl, dl
jz      short loc_450946
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_45094D

loc_450946:
mov     dh, dl
inc     dh
mov     [ebp+9], dh

loc_45094D:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4508EF endp




sub_450954 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     ecx, offset unk_77E5F4
mov     edi, offset byte_5F8364
cmp     byte ptr [eax+8], 14h
jbe     short loc_450994
call    sub_47EBCB
test    eax, eax
jz      short loc_450994
mov     eax, 618h
call    sub_47E8B8
mov     eax, 20h ; ' '
call    sub_47E8B8
xor     eax, eax
call    sub_4A0E75
mov     byte ptr [esi+8], 1Dh

loc_450994:
mov     al, [esi+8]
lea     ebp, [esi+14h]
cmp     al, 17h
jb      short loc_4509D3
jbe     loc_450AF5
cmp     al, 1Ah
jb      short loc_4509C6
jbe     loc_450B70
cmp     al, 1Ch
jb      loc_450B9C
jbe     loc_450BE9
cmp     al, 1Dh
jz      loc_450BFC
jmp     short loc_45094D

loc_4509C6:
cmp     al, 18h
jbe     loc_450B0E
jmp     loc_450B25

loc_4509D3:
cmp     al, 14h
jb      short loc_4509E6
jbe     short loc_450A38
cmp     al, 15h
jbe     loc_450A9F
jmp     loc_450AD9

loc_4509E6:
test    al, al
jbe     short loc_4509F3
cmp     al, 1
jz      short loc_450A02
jmp     loc_45094D

loc_4509F3:
mov     eax, esi
call    sub_450C2B

loc_4509FA:
inc     byte ptr [esi+8]
jmp     loc_45094D

loc_450A02:
mov     eax, 60Fh
call    sub_47E888
test    eax, eax
jz      loc_45094D
mov     word ptr [esi+0C4h], 0F348h
mov     word ptr [esi+0C6h], 0FFFFh
mov     word ptr [esi+0C8h], 111Dh
mov     byte ptr [esi+8], 14h
jmp     loc_45094D

loc_450A38:
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_49D881
mov     dword ptr [ecx+10h], 0F2180000h
mov     dword ptr [ecx+14h], 0FF380000h
mov     dword ptr [ecx+18h], 0BDB0000h
mov     dword ptr [ecx+40h], 0
mov     dword ptr [ecx+44h], 1800000h
mov     dword ptr [ecx+48h], 2000000h
mov     ebx, [edi+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
add     ax, [edi+542h]
and     ah, 0Fh
mov     [edi+542h], ax
mov     byte ptr [edi+548h], 30h ; '0'
jmp     loc_4509FA

loc_450A9F:
call    sub_42ABA2
test    eax, eax
jnz     loc_45094D
mov     ecx, 48h ; 'H'

loc_450AB1:
xor     ebx, ebx
mov     edx, 2
mov     eax, ebp
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 1
jmp     loc_45094D

loc_450AD9:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_45094D
mov     eax, 611h
call    sub_47E8B8
jmp     loc_4509FA

loc_450AF5:
mov     eax, 615h
call    sub_47E888
test    eax, eax
jz      loc_45094D
mov     ecx, 4Dh ; 'M'
jmp     short loc_450AB1

loc_450B0E:
cmp     byte ptr ds:dword_77E760, 0
jnz     loc_45094D
inc     al
mov     [esi+8], al
jmp     loc_45094D

loc_450B25:
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+0C4h]
mov     eax, ebp
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     loc_45094D
mov     word ptr [esi+44h], 140h
inc     byte ptr [esi+8]
mov     byte ptr [esi+0Ah], 14h
mov     eax, 20h ; ' '
call    sub_47E8B8
jmp     loc_45094D

loc_450B70:
mov     bh, [esi+0Ah]
dec     bh
mov     [esi+0Ah], bh
jnz     loc_45094D
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
mov     byte ptr [esi+0Ah], 3Ch ; '<'
jmp     loc_45094D

loc_450B9C:
mov     ch, [esi+0Ah]
dec     ch
mov     [esi+0Ah], ch
jnz     short loc_450BB2
and     byte ptr [esi], 0FDh
mov     byte ptr [esi+0Ah], 1Eh
jmp     loc_4509FA

loc_450BB2:
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
mov     ah, [esi+0A4h]
cmp     ah, 3
jz      short loc_450BD7
cmp     ah, 0Ah
jnz     loc_45094D

loc_450BD7:
lea     edx, [esi+14h]
mov     eax, 10Ch
call    sub_4D8BC3
jmp     loc_45094D

loc_450BE9:
mov     bl, [esi+0Ah]
dec     bl
mov     [esi+0Ah], bl
jnz     loc_45094D
jmp     loc_4509FA

loc_450BFC:
call    sub_42ABA2
test    eax, eax
jnz     loc_45094D
mov     byte ptr ds:dword_77E954, 1
call    sub_42A66D
mov     eax, edi
call    sub_4B565A
or      byte ptr [edi], 2
mov     eax, esi
call    sub_4DE2F6
jmp     loc_45094D
sub_450954 endp




sub_450C2B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+9], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_450C2B endp




sub_450CAD proc near

; FUNCTION CHUNK AT 00450CF4 SIZE 00000001 BYTES

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
call    ds:funcs_450CD4[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_450CF4
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0Ch
mov     eax, ebp
call    sub_4ED88B
sub_450CAD endp

; START OF FUNCTION CHUNK FOR sub_451324
;   ADDITIONAL PARENT FUNCTION sub_450CAD

loc_450CF4:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_451324
; START OF FUNCTION CHUNK FOR sub_450DF5

loc_450CF5:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_450DF5



sub_450CFB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 40h ; '@'
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], offset unk_515D30
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
mov     dword ptr [ecx+10h], 0
mov     word ptr [ebx+18h], 0Ah
mov     word ptr [ebx+1Ah], 0
mov     word ptr [ebx+1Ch], 0
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ebx], 0
mov     dword ptr [ebx+4], 0
mov     word ptr [ecx+44h], 80h
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 80h
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_450CFB endp

jpt_450E15 dd offset loc_450E1C ; jump table for switch statement
dd offset loc_450E58
dd offset loc_450EE3
dd offset loc_450F0F
dd offset loc_450F88
dd offset loc_45101F
dd offset loc_451077
dd offset def_450E15
dd offset loc_4510F4



sub_450DF5 proc near

var_18= dword ptr -18h

; FUNCTION CHUNK AT 00450CF5 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+8]
cmp     al, 8           ; switch 9 cases
ja      def_450E15      ; jumptable 00450E15 default case, case 7
and     eax, 0FFh
jmp     jpt_450E15[eax*4] ; switch jump

loc_450E1C:             ; jumptable 00450E15 case 0
mov     eax, esi
call    sub_450CFB
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
xor     edx, edx
mov     eax, esi
call    sub_451302
mov     edx, 1
mov     eax, esi
call    sub_4512EE
mov     byte ptr [esi+8], 1

def_450E15:             ; jumptable 00450E15 default case, case 7
mov     dword ptr [edi], 0

loc_450E50:
add     esp, 4
jmp     loc_450CF5

loc_450E58:             ; jumptable 00450E15 case 1
mov     ax, [esi+54h]
add     ax, [edi+18h]
and     ah, 0Fh
mov     [esi+54h], ax
mov     ax, [esi+56h]
add     ax, [edi+1Ah]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ax, [esi+58h]
add     ax, [edi+1Ch]
and     ah, 0Fh
mov     [esi+58h], ax
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     short loc_450E50
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     ebx, [esp+18h+var_18]
test    ebx, ebx
jz      short loc_450EB9
mov     edx, ebx
mov     eax, esi
call    sub_451220

loc_450EB9:
mov     eax, esi
call    sub_451276
mov     eax, esi
call    sub_4DEADD
mov     dl, [esi+9]
test    dl, dl
jnz     short loc_450ED7
mov     byte ptr [esi+8], 2
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450ED7:
mov     dh, dl
dec     dh
mov     [esi+9], dh
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450EE3:             ; jumptable 00450E15 case 2
cmp     byte ptr [esi+9], 0Ah
jnz     short loc_450F00
xor     edx, edx
mov     eax, esi
call    sub_451220
mov     byte ptr [esi+8], 1
call    rand_
and     al, 3Fh
mov     [esi+9], al

loc_450F00:
mov     eax, esi
call    sub_451276
inc     byte ptr [esi+9]
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450F0F:             ; jumptable 00450E15 case 3
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+14h]
mov     eax, offset byte_5F8364
add     eax, 14h
call    sub_4DE552
cwde
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     ecx, [esp+18h+var_18]
test    ecx, ecx
jz      short loc_450F75
mov     edx, ecx
mov     eax, esi
call    sub_451220

loc_450F75:
mov     eax, esi
call    sub_451276

loc_450F7C:
mov     eax, esi
call    sub_4DEADD
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_450F88:             ; jumptable 00450E15 case 4
mov     bh, [esi+0A4h]
test    bh, bh
jz      short loc_450F97
cmp     bh, 8
jnz     short loc_450FD9

loc_450F97:
lea     edx, [esi+14h]
mov     eax, 109h
call    sub_4D8BC3
xor     ebx, ebx
mov     edx, 4
mov     eax, esi
call    sub_4DE96B
mov     edx, 1
mov     eax, esi
call    sub_451302
mov     edx, 1
mov     eax, esi
call    sub_4512EE
mov     word ptr [esi+46h], 0FF00h
mov     byte ptr [esi+74h], 1
inc     byte ptr [esi+8]
jmp     short loc_450FE0

loc_450FD9:
mov     eax, esi
call    sub_4DEADD

loc_450FE0:
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     edx, [esp+18h+var_18]
test    edx, edx
jz      def_450E15      ; jumptable 00450E15 default case, case 7

loc_451013:
mov     eax, esi
call    sub_451220
jmp     def_450E15      ; jumptable 00450E15 default case, case 7

loc_45101F:             ; jumptable 00450E15 case 5
cmp     byte ptr [esi+0A7h], 0
jge     short loc_451050
xor     ebx, ebx
mov     edx, 3
mov     eax, esi
call    sub_4DE96B
mov     edx, 1
mov     eax, esi
call    sub_451302
xor     edx, edx
mov     eax, esi
call    sub_4512EE
inc     byte ptr [esi+8]
jmp     short loc_451057

loc_451050:
mov     eax, esi
call    sub_4DEADD

loc_451057:
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
mov     eax, [esp+18h+var_18]
test    eax, eax
jz      def_450E15      ; jumptable 00450E15 default case, case 7
mov     edx, eax
jmp     short loc_451013

loc_451077:             ; jumptable 00450E15 case 6
mov     ax, [esi+56h]
add     ax, [edi+1Ah]
and     ah, 0Fh
mov     [esi+56h], ax
mov     eax, esi
call    sub_42C592
cwde
sub     eax, 258h
mov     [esp+18h+var_18], eax
mov     eax, [esi+14h]
sar     eax, 10h
mov     ecx, [esp+18h+var_18]
cmp     eax, ecx
jbe     short loc_4510AB
mov     word ptr [esi+46h], 0FF00h
jmp     short loc_4510BB

loc_4510AB:
jnb     short loc_4510B5
mov     word ptr [esi+46h], 40h ; '@'
jmp     short loc_4510BB

loc_4510B5:
mov     word ptr [esi+46h], 0

loc_4510BB:
mov     edx, esp
mov     eax, esi
call    sub_45144D
test    al, al
jnz     loc_450E50
cmp     [esp+18h+var_18], 0
jnz     short loc_4510D8
test    byte ptr [esi+9], 3Fh
jnz     short loc_4510E2

loc_4510D8:
mov     edx, [esp+18h+var_18]
mov     eax, esi
call    sub_451220

loc_4510E2:
mov     edx, [esp+18h+var_18]
mov     eax, esi
call    sub_451413
inc     byte ptr [esi+9]
jmp     loc_450F7C

loc_4510F4:             ; jumptable 00450E15 case 8
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
mov     eax, [esi+64h]
sar     eax, 10h
call    sub_4DE5F4
mov     [esp+18h+var_18], eax
mov     ax, [esi+56h]
add     eax, [esp+18h+var_18]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     [esp+18h+var_18], 0
jnz     loc_450F7C
mov     byte ptr [esi+8], 6
jmp     loc_450F7C
sub_450DF5 endp

db 8Bh, 0C0h
jpt_45115B dd offset loc_451162 ; jump table for switch statement
dd offset loc_451171
dd offset loc_451182
dd offset loc_4511DA
dd offset loc_4511ED



sub_451145 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+8]
cmp     al, 4           ; switch 5 cases
ja      def_45115B      ; jumptable 0045115B default case
and     eax, 0FFh
jmp     jpt_45115B[eax*4] ; switch jump

loc_451162:             ; jumptable 0045115B case 0
mov     eax, esi
call    sub_450CFB

loc_451169:
inc     byte ptr [esi+8]
jmp     def_45115B      ; jumptable 0045115B default case

loc_451171:             ; jumptable 0045115B case 1
mov     eax, esi
call    sub_451324
test    eax, eax
jz      def_45115B      ; jumptable 0045115B default case
jmp     short loc_451169

loc_451182:             ; jumptable 0045115B case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     eax, [esi+14h]
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_45115B ; jumptable 0045115B default case
call    sub_42ABA2
test    eax, eax
jnz     short def_45115B ; jumptable 0045115B default case
mov     edx, 2Ah ; '*'
call    sub_4A0E24
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+8]
mov     byte ptr [esi+9], 0
jmp     short def_45115B ; jumptable 0045115B default case

loc_4511DA:             ; jumptable 0045115B case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_45115B ; jumptable 0045115B default case
call    sub_42A98E
jmp     loc_451169

loc_4511ED:             ; jumptable 0045115B case 4
call    sub_42ABA2
test    eax, eax
jnz     short def_45115B ; jumptable 0045115B default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+8], 1

def_45115B:             ; jumptable 0045115B default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_451145 endp




sub_451220 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
lea     edx, [ecx+408h]
mov     bx, [edx+1Ah]
test    eax, eax
jnz     short loc_451250
call    rand_
mov     bx, ds:word_77EAB6
imul    ebx, eax
xor     bh, bh
and     bl, 0Fh
sub     ebx, 8
shl     ebx, 2
jmp     short loc_451263

loc_451250:
sar     eax, 0Ch
test    al, 1
jz      short loc_45125C
mov     ebx, 10h

loc_45125C:
test    al, 2
jz      short loc_451263
imul    ebx, -1

loc_451263:
mov     word ptr [edx+18h], 0
mov     [edx+1Ah], bx
mov     word ptr [edx+1Ch], 0
pop     ecx
pop     ebx
retn
sub_451220 endp




sub_451276 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4DD64B
cmp     eax, 258h
jnb     short loc_4512B6
cmp     eax, 190h
jnb     short loc_4512A3
cmp     byte ptr [ecx+8], 4
jz      short loc_4512EA
mov     byte ptr [ecx+8], 4
pop     edx
pop     ecx
pop     ebx
retn

loc_4512A3:
cmp     byte ptr [ecx+8], 3
jz      short loc_4512EA
mov     byte ptr [ecx+8], 3
xor     ebx, ebx
mov     edx, 2
jmp     short loc_4512CE

loc_4512B6:
mov     ah, [ecx+8]
cmp     ah, 1
jz      short loc_4512EA
cmp     ah, 2
jz      short loc_4512EA
mov     byte ptr [ecx+8], 1
xor     ebx, ebx
mov     edx, 1

loc_4512CE:
mov     eax, ecx
call    sub_4DE96B
xor     edx, edx
mov     eax, ecx
call    sub_451302
mov     edx, 1
mov     eax, ecx
call    sub_4512EE

loc_4512EA:
pop     edx
pop     ecx
pop     ebx
retn
sub_451276 endp




sub_4512EE proc near
test    dl, dl
jz      short loc_4512FA
mov     byte ptr [eax+107h], 0
retn

loc_4512FA:
mov     byte ptr [eax+107h], 0FFh
retn
sub_4512EE endp




sub_451302 proc near
test    dl, dl
jz      short loc_451315
mov     byte ptr [eax+0FFh], 0
mov     byte ptr [eax+103h], 0
retn

loc_451315:
mov     byte ptr [eax+0FFh], 0FFh
mov     byte ptr [eax+103h], 0FFh
retn
sub_451302 endp




sub_451324 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00450CF4 SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_451409
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_45137E
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_451394

loc_45137E:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

loc_451394:
sar     eax, 3
mov     [esi+64h], ax
and     byte ptr [edi], 0FDh
or      byte ptr [edi+0BDh], 40h
mov     dword ptr [edi+184h], 0
mov     eax, [esi+18Eh]
sar     eax, 10h
mov     ds:dword_559E78, eax
mov     eax, [esi+190h]
sar     eax, 10h
sub     eax, 20h ; ' '
mov     ds:dword_559E7C, eax
mov     eax, [esi+192h]
sar     eax, 10h
mov     ds:dword_559E80, eax
mov     ecx, ds:dword_77E964
lea     edx, [esi+14h]
lea     eax, [edi+14h]
call    sub_4DDDB4
lea     ebx, [eax+800h]
mov     edx, 100h
mov     eax, offset dword_559E78
call    sub_42AAA8
mov     eax, 1
jmp     short loc_45140B

loc_451409:
xor     eax, eax

loc_45140B:
add     esp, 4
jmp     loc_450CF4
sub_451324 endp ; sp-analysis failed




sub_451413 proc near
push    ecx
mov     ecx, eax
test    edx, edx
jz      short loc_45144B
mov     ah, [eax+0Ch]
inc     ah
mov     [ecx+0Ch], ah
cmp     ah, 3Ch ; '<'
jle     short loc_45144B
mov     byte ptr [ecx+0Ch], 0
mov     dx, [ecx+56h]
add     edx, 7D0h
call    rand_
xor     ah, ah
and     al, 3Fh
add     eax, edx
and     ah, 0Fh
mov     [ecx+66h], ax
mov     byte ptr [ecx+8], 8

loc_45144B:
pop     ecx
retn
sub_451413 endp




sub_45144D proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
mov     ebx, [eax+44h]
sar     ebx, 10h
mov     edx, [eax+42h]
sar     edx, 10h
xor     ecx, ecx
call    sub_4DD43B
lea     eax, [esi+14h]
call    sub_42C517
test    eax, eax
jz      short loc_451482
mov     eax, esi
call    sub_4DE2F6
mov     al, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_451482:
mov     eax, esi
call    sub_42DE56
mov     [edi], eax
xor     al, al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_45144D endp

push    ecx
push    edx
mov     edx, eax
add     word ptr [eax+46h], 4
mov     cx, [eax+54h]
add     ecx, 20h ; ' '
mov     [eax+54h], cx
cmp     cx, 400h
jle     short loc_4514B3
mov     word ptr [eax+54h], 400h

loc_4514B3:
mov     eax, edx
call    sub_4DEB53
mov     eax, edx
call    sub_4DF7CB
pop     edx
pop     ecx
retn



sub_4514C4 proc near
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
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4514E6[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4514C4 endp




sub_4514F1 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    sub_450CFB
call    rand_
mov     ebx, eax
and     ebx, 3
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     edx, 1
mov     eax, ecx
call    sub_451302
xor     edx, edx
mov     eax, ecx
call    sub_4512EE
sub     word ptr [ecx+16h], 50h ; 'P'
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     word ptr [ecx+46h], 0FFF0h
mov     byte ptr [ecx+74h], 1
inc     byte ptr [ecx+8]
lea     edx, [ecx+14h]
mov     eax, 109h
call    sub_4D8BC3
pop     edx
pop     ecx
pop     ebx
retn
sub_4514F1 endp




sub_451555 proc near

var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
call    sub_42C592
movsx   edx, ax
sub     edx, 7D0h
mov     [esp+0Ch+var_C], edx
mov     edx, [ecx+14h]
sar     edx, 10h
cmp     edx, [esp+0Ch+var_C]
jnb     short loc_45157F
mov     eax, ecx
call    sub_4DE2F6

loc_45157F:
sub     word ptr [ecx+46h], 10h
mov     edx, esp
mov     eax, ecx
call    sub_45144D
test    al, al
jnz     short loc_451598
mov     eax, ecx
call    sub_4DEADD

loc_451598:
add     esp, 4
pop     edx
pop     ecx
retn
sub_451555 endp




sub_45159E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     ecx, [eax+408h]
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
mov     al, [ebp+8]
test    al, al
jbe     short loc_4515E2
cmp     al, 1
jz      short loc_4515F0
jmp     loc_45169E

loc_4515E2:
mov     edx, ecx
mov     eax, ebp
call    sub_4516EC
jmp     loc_45169E

loc_4515F0:
mov     ah, ds:byte_560BE5
cmp     ah, 0Eh
jnz     loc_451694
mov     eax, ds:dword_560BEC
cmp     eax, 0B9h
jb      short loc_451659
jbe     loc_45168C
cmp     eax, 2B2h
jb      short loc_451642
jbe     loc_45168C
cmp     eax, 334h
jb      short loc_45163B
jbe     loc_45168C
cmp     eax, 382h

loc_451630:
jz      loc_451684
jmp     loc_45169E

loc_45163B:
cmp     eax, 320h
jmp     short loc_451630

loc_451642:
cmp     eax, 186h
jb      short loc_451652
jbe     short loc_45168C
cmp     eax, 288h
jmp     short loc_451630

loc_451652:
cmp     eax, 163h
jmp     short loc_451630

loc_451659:
cmp     eax, 50h ; 'P'
jb      short loc_451673
jbe     short loc_45168C
cmp     eax, 7Dh ; '}'
jb      short loc_45166E
jbe     short loc_45168C
cmp     eax, 0A8h
jmp     short loc_451630

loc_45166E:
cmp     eax, 6Eh ; 'n'
jmp     short loc_451630

loc_451673:
cmp     eax, 3Ch ; '<'
jb      short loc_45167F
jbe     short loc_45168C
cmp     eax, 46h ; 'F'
jmp     short loc_451630

loc_45167F:
cmp     eax, 1Eh
jnz     short loc_45169E

loc_451684:
mov     word ptr [ecx+2], 0
jmp     short loc_45169E

loc_45168C:
mov     word ptr [ecx+2], 1
jmp     short loc_45169E

loc_451694:
cmp     ah, 0Fh
jnz     short loc_45169E
add     al, al
mov     [ebp+8], al

loc_45169E:
mov     edx, ecx
mov     eax, ebp
call    sub_451749
mov     al, [ebp+0ACh]
cmp     al, [ebp+0ADh]
jz      short loc_4516C5
movsx   ebx, word ptr [ecx]
xor     edx, edx
mov     dl, al
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_4516CC

loc_4516C5:
mov     eax, ebp
call    sub_4DEADD

loc_4516CC:
test    byte ptr [ebp+0], 2
jz      short loc_4516E5
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 24h ; '$'
mov     eax, ebp
call    sub_4ED88B

loc_4516E5:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_45159E endp




sub_4516EC proc near
push    ebx
push    ecx
mov     ecx, eax
mov     ebx, edx
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
mov     word ptr [ebx], 0
mov     word ptr [ebx+2], 1
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     ecx
pop     ebx
retn
sub_4516EC endp




sub_451749 proc near
cmp     word ptr [edx+2], 0
jnz     short loc_451758
mov     byte ptr [eax+114h], 7
retn

loc_451758:
test    byte ptr [eax+0Eh], 3
jnz     short loc_451779
cmp     byte ptr [eax+114h], 7
jnz     short loc_45176E
mov     edx, 8
jmp     short loc_451773

loc_45176E:
mov     edx, 7

loc_451773:
mov     [eax+114h], dl

loc_451779:
inc     byte ptr [eax+0Eh]
retn
sub_451749 endp




sub_45177D proc near
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
sub_45177D endp




sub_4517B8 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_4517D5
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4517D5:
pop     edx
pop     ecx
pop     ebx
retn
sub_4517B8 endp




sub_4517D9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_4517ED
cmp     al, 1
jz      short loc_451802
pop     edx
pop     ecx
pop     ebx
retn

loc_4517ED:
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_451802:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 12h
jnz     short loc_451811
mov     byte ptr [ecx+0Ah], 0

loc_451811:
pop     edx
pop     ecx
pop     ebx
retn
sub_4517D9 endp




sub_451815 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_45181E[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_45183D
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_45183D:
pop     edx
pop     ecx
retn
sub_451815 endp




sub_451840 proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_451850
mov     eax, edx
call    sub_45177D

loc_451850:
mov     eax, edx
call    sub_451815
pop     edx
retn
sub_451840 endp




sub_451859 proc near

var_10= byte ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     [esp+10h+var_10], dl
mov     esi, ebx
call    sub_4DDF54
mov     edi, eax
test    eax, eax
jz      loc_45191E
test    dl, dl
jz      short loc_45187E
cmp     dl, 6
jbe     short loc_45188C

loc_45187E:
mov     eax, edi
call    sub_4DE2F6
xor     eax, eax
jmp     loc_45191E

loc_45188C:
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+3], 2
or      byte ptr [eax+6], 20h
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+10h], 0
lea     ebx, [eax+88h]
mov     byte ptr [ebx], 3
mov     byte ptr [ebx+1], 3Fh ; '?'
mov     al, [ecx+1]
mov     [ebx+2], al
mov     [ebx+3], dl
mov     byte ptr [ebx+0Bh], 0
mov     dword ptr [ebx+10h], 2E808080h
mov     dword ptr [ebx+0Ch], 0
xor     dh, dh

loc_4518D7:
cmp     dh, [esp+10h+var_10]
jnb     short loc_45191C
xor     eax, eax
mov     al, dh
mov     byte ptr [ebx+eax+4], 7
xor     dl, dl

loc_4518E7:
xor     eax, eax
mov     al, dh
shl     eax, 7
lea     ecx, [ebx+14h]
add     ecx, eax
xor     eax, eax
mov     al, dl
shl     eax, 4
mov     [ecx+eax], esi
mov     byte ptr [ecx+eax+4], 0
mov     byte ptr [ecx+eax+5], 0
mov     word ptr [ecx+eax+6], 0
inc     dl
cmp     dl, 8
jb      short loc_4518E7
inc     dh
add     esi, 8
jmp     short loc_4518D7

loc_45191C:
mov     eax, edi

loc_45191E:
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_451859 endp




sub_451925 proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, ebx
call    sub_4DDF54
mov     edi, eax
test    eax, eax
jz      loc_451A03
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 12h
mov     byte ptr [eax+4], 0
mov     [eax+3], dl
mov     dword ptr [eax+0Ch], 0
lea     ebx, [eax+88h]
cmp     dl, 1
jb      short loc_451964
jbe     short loc_45197B
cmp     dl, 3
jz      short loc_45198F
jmp     short loc_45199C

loc_451964:
test    dl, dl
jnz     short loc_45199C
mov     [ebx], dl
mov     byte ptr [ebx+3], 3
mov     byte ptr [ebx+0Bh], 1
mov     dword ptr [ebx+10h], 2E808080h
jmp     short loc_4519A9

loc_45197B:
mov     byte ptr [ebx], 1
mov     byte ptr [ebx+3], 6
mov     byte ptr [ebx+0Bh], 1

loc_451986:
mov     dword ptr [ebx+10h], 2E404040h
jmp     short loc_4519A9

loc_45198F:
mov     byte ptr [ebx], 4
mov     byte ptr [ebx+3], 6
mov     byte ptr [ebx+0Bh], 2
jmp     short loc_451986

loc_45199C:
mov     eax, edi
call    sub_4DE2F6
xor     eax, eax
pop     edi
pop     esi
pop     ecx
retn

loc_4519A9:
mov     byte ptr [ebx+1], 3Fh ; '?'
mov     al, [ecx+1]
mov     [ebx+2], al
mov     dword ptr [ebx+0Ch], 0
xor     dh, dh

loc_4519BC:
cmp     dh, [ebx+3]
jnb     short loc_451A01
xor     eax, eax
mov     al, dh
mov     byte ptr [ebx+eax+4], 7
xor     dl, dl

loc_4519CC:
xor     eax, eax
mov     al, dh
shl     eax, 7
lea     ecx, [ebx+14h]
add     ecx, eax
xor     eax, eax
mov     al, dl
shl     eax, 4
mov     [ecx+eax], esi
mov     byte ptr [ecx+eax+4], 0
mov     byte ptr [ecx+eax+5], 0
mov     word ptr [ecx+eax+6], 0
inc     dl
cmp     dl, 8
jb      short loc_4519CC
inc     dh
add     esi, 8
jmp     short loc_4519BC

loc_451A01:
mov     eax, edi

loc_451A03:
pop     edi
pop     esi
pop     ecx
retn
sub_451925 endp

and     dl, 3Fh
mov     [eax+89h], dl
retn



sub_451A11 proc near
push    ecx
push    edx
xor     ecx, ecx
mov     cl, [eax+3]
lea     edx, [eax+88h]
call    ds:funcs_451A1E[ecx*4]
pop     edx
pop     ecx
retn
sub_451A11 endp




sub_451A28 proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     esi, edx
mov     ebx, ds:dword_77E7E0
sar     ebx, 10h
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
mov     edi, eax
mov     ecx, ds:dword_77E7DC+2
sar     ecx, 10h
cmp     ecx, eax
jg      short loc_451A5E
mov     [esp+18h+var_18], 3
jmp     short loc_451A89

loc_451A5E:
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
cmp     ecx, eax
jg      short loc_451A73
mov     [esp+18h+var_18], 2
jmp     short loc_451A89

loc_451A73:
mov     edx, edi
shl     edx, 2
sub     edx, edi
cmp     ecx, edx
jg      short loc_451A84
mov     [esp+18h+var_18], 1
jmp     short loc_451A89

loc_451A84:
xor     ah, ah
mov     [esp+18h+var_18], ah

loc_451A89:
xor     ch, ch

loc_451A8B:
cmp     ch, [esp+18h+var_18]
jnb     short loc_451AD9
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+4]
and     edx, 0FFh
sar     edx, 3
mov     [esp+18h+var_14], dl
xor     cl, cl

loc_451AA7:
cmp     cl, [esp+18h+var_14]
jnb     short loc_451AC0
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451AA7

loc_451AC0:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     ah, [edx+4]
cmp     ah, 40h ; '@'
jnb     short loc_451AD5
mov     bl, ah
inc     bl
mov     [edx+4], bl

loc_451AD5:
inc     ch
jmp     short loc_451A8B

loc_451AD9:
add     esp, 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_451A28 endp

jpt_451B21 dd offset loc_451B28 ; jump table for switch statement
dd offset loc_451B32
dd offset loc_451B38
dd offset loc_451B3E
dd offset loc_451B44
dd offset loc_451B4A



sub_451AF9 proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     edi, eax
mov     esi, edx
xor     ah, ah
mov     [esp+18h+var_14], ah
xor     ch, ch
jmp     loc_451BF9

loc_451B11:
mov     eax, 2

loc_451B16:
mov     [esi], al
cmp     ch, 5           ; switch 6 cases
ja      short def_451B21 ; jumptable 00451B21 default case
xor     eax, eax
mov     al, ch
jmp     jpt_451B21[eax*4] ; switch jump

loc_451B28:             ; jumptable 00451B21 case 0
test    byte ptr [edi+0Ch], 1

loc_451B2C:
jnz     short loc_451B50
xor     eax, eax
jmp     short loc_451B59

loc_451B32:             ; jumptable 00451B21 case 1
test    byte ptr [edi+0Ch], 2
jmp     short loc_451B2C

loc_451B38:             ; jumptable 00451B21 case 2
test    byte ptr [edi+0Ch], 4
jmp     short loc_451B2C

loc_451B3E:             ; jumptable 00451B21 case 3
test    byte ptr [edi+0Dh], 1
jmp     short loc_451B2C

loc_451B44:             ; jumptable 00451B21 case 4
test    byte ptr [edi+0Dh], 2
jmp     short loc_451B2C

loc_451B4A:             ; jumptable 00451B21 case 5
test    byte ptr [edi+0Dh], 4
jz      short loc_451B57

loc_451B50:
mov     eax, 1
jmp     short loc_451B59

loc_451B57:
xor     eax, eax

loc_451B59:
mov     [esp+18h+var_14], al

def_451B21:             ; jumptable 00451B21 default case
cmp     [esp+18h+var_14], 0
jz      short loc_451BA8
xor     eax, eax
mov     al, ch
mov     al, [esi+eax+4]
and     eax, 0FFh
sar     eax, 3
mov     [esp+18h+var_18], al
xor     cl, cl

loc_451B79:
cmp     cl, [esp+18h+var_18]
jnb     short loc_451B91
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451B79

loc_451B91:
xor     eax, eax
mov     al, ch
add     eax, esi
mov     bl, [eax+4]
cmp     bl, 40h ; '@'
jnb     short loc_451BE5
mov     bh, bl
inc     bh
mov     [eax+4], bh
jmp     short loc_451BE5

loc_451BA8:
xor     eax, eax
mov     al, ch
add     eax, esi
cmp     byte ptr [eax+4], 7
jbe     short loc_451BE5
mov     byte ptr [eax+4], 7
xor     cl, cl

loc_451BBA:
xor     eax, eax
mov     al, ch
shl     eax, 7
lea     edx, [esi+14h]
add     edx, eax
xor     eax, eax
mov     al, cl
shl     eax, 4
mov     byte ptr [edx+eax+4], 0
mov     byte ptr [edx+eax+5], 0
mov     word ptr [edx+eax+6], 0
inc     cl
cmp     cl, 8
jb      short loc_451BBA

loc_451BE5:
inc     ch
cmp     ch, 6
jnb     loc_451AD9
cmp     ch, 3
jnb     loc_451B11

loc_451BF9:
mov     eax, 1
jmp     loc_451B16
sub_451AF9 endp

db 8Bh, 0C0h
jpt_451C41 dd offset loc_451C48 ; jump table for switch statement
dd offset loc_451C52
dd offset loc_451C58
dd offset loc_451C5E
dd offset loc_451C64
dd offset loc_451C6A



sub_451C1D proc near

var_18= byte ptr -18h
var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 8
mov     edi, eax
mov     esi, edx
xor     ah, ah
mov     [esp+18h+var_18], ah
xor     ch, ch

loc_451C2F:
cmp     ch, [esi+3]
jnb     loc_451AD9
cmp     ch, 5           ; switch 6 cases
ja      short def_451C41 ; jumptable 00451C41 default case
xor     eax, eax
mov     al, ch
jmp     jpt_451C41[eax*4] ; switch jump

loc_451C48:             ; jumptable 00451C41 case 0
test    byte ptr [edi+0Ch], 1

loc_451C4C:
jnz     short loc_451C70
xor     eax, eax
jmp     short loc_451C79

loc_451C52:             ; jumptable 00451C41 case 1
test    byte ptr [edi+0Ch], 2
jmp     short loc_451C4C

loc_451C58:             ; jumptable 00451C41 case 2
test    byte ptr [edi+0Ch], 4
jmp     short loc_451C4C

loc_451C5E:             ; jumptable 00451C41 case 3
test    byte ptr [edi+0Ch], 8
jmp     short loc_451C4C

loc_451C64:             ; jumptable 00451C41 case 4
test    byte ptr [edi+0Ch], 10h
jmp     short loc_451C4C

loc_451C6A:             ; jumptable 00451C41 case 5
test    byte ptr [edi+0Ch], 20h
jz      short loc_451C77

loc_451C70:
mov     eax, 1
jmp     short loc_451C79

loc_451C77:
xor     eax, eax

loc_451C79:
mov     [esp+18h+var_18], al

def_451C41:             ; jumptable 00451C41 default case
cmp     [esp+18h+var_18], 0
jz      short loc_451CC8
xor     eax, eax
mov     al, ch
mov     al, [esi+eax+4]
and     eax, 0FFh
sar     eax, 3
mov     [esp+18h+var_14], al
xor     cl, cl

loc_451C98:
cmp     cl, [esp+18h+var_14]
jnb     short loc_451CB1
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451C98

loc_451CB1:
xor     eax, eax
mov     al, ch
add     eax, esi
mov     bh, [eax+4]
cmp     bh, 40h ; '@'
jnb     short loc_451D05
mov     cl, bh
inc     cl
mov     [eax+4], cl
jmp     short loc_451D05

loc_451CC8:
xor     eax, eax
mov     al, ch
add     eax, esi
cmp     byte ptr [eax+4], 7
jbe     short loc_451D05
mov     byte ptr [eax+4], 7
xor     cl, cl

loc_451CDA:
xor     eax, eax
mov     al, ch
shl     eax, 7
lea     edx, [esi+14h]
add     edx, eax
xor     eax, eax
mov     al, cl
shl     eax, 4
mov     byte ptr [edx+eax+4], 0
mov     byte ptr [edx+eax+5], 0
mov     word ptr [edx+eax+6], 0
inc     cl
cmp     cl, 8
jb      short loc_451CDA

loc_451D05:
inc     ch
jmp     loc_451C2F
sub_451C1D endp




sub_451D0C proc near

var_10= byte ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     esi, edx
xor     ch, ch
jmp     short loc_451D34

loc_451D18:
xor     edx, edx
mov     dl, ch
add     edx, esi
mov     bl, [edx+4]
cmp     bl, 40h ; '@'
jnb     short loc_451D2D
mov     bh, bl
inc     bh
mov     [edx+4], bh

loc_451D2D:
inc     ch
cmp     ch, 6
jnb     short loc_451D62

loc_451D34:
xor     cl, cl
xor     edx, edx
mov     dl, ch
mov     dl, [edx+esi+4]
and     edx, 0FFh
sar     edx, 3
mov     [esp+10h+var_10], dl

loc_451D4A:
cmp     cl, [esp+10h+var_10]
jnb     short loc_451D18
xor     ebx, ebx
mov     bl, cl
xor     edx, edx
mov     dl, ch
mov     eax, esi
call    sub_451D6C
inc     cl
jmp     short loc_451D4A

loc_451D62:
inc     dword ptr [esi+0Ch]
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
sub_451D0C endp




sub_451D6C proc near
push    ecx
push    esi
push    edi
mov     esi, eax
mov     cl, dl
xor     edx, edx
mov     dl, cl
shl     edx, 7
lea     edi, [eax+14h]
add     edi, edx
xor     edx, edx
mov     dl, bl
shl     edx, 4
lea     ebx, [edi+edx]
movsx   edi, byte ptr [eax]
mov     edx, ebx
call    ds:funcs_451D8E[edi*4]
movzx   edi, byte ptr [esi+1]
and     ecx, 0FFh
mov     edx, 1
shl     edx, cl
test    edi, edx
jz      short loc_451DBC
mov     ecx, [esi+8]
sar     ecx, 18h
mov     edx, [esi+10h]
mov     eax, ebx
call    ds:funcs_451DB5[ecx*4]

loc_451DBC:
pop     edi
pop     esi
pop     ecx
retn
sub_451D6C endp




sub_451DC0 proc near
push    ebx
push    ecx
call    rand_
mov     ecx, eax
xor     ch, ah
and     cl, 7
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_451E31
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+6], bx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 1Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 6
and     eax, 1Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_451E31:
add     byte ptr [edx+5], 2
dec     word ptr [edx+6]
add     word ptr [edx+8], 2
add     ecx, 8
sub     [edx+0Ch], cx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_451E68
mov     byte ptr [edx+4], 0

loc_451E68:
pop     ecx
pop     ebx
retn
sub_451DC0 endp




sub_451E6B proc near
push    ebx
push    ecx
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     cl, [edx+4]
test    cl, cl
jnz     short loc_451EDB
inc     cl
mov     [edx+4], cl
mov     byte ptr [edx+5], 0
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
mov     ecx, eax
sar     ecx, 1
and     ecx, 7
mov     ebx, 0C4h
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 2
and     ebx, 3Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 4
and     eax, 3Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_451EDB:
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
add     ebx, 0Ch
sub     [edx+0Ah], bx
movsx   ecx, ax
mov     ebx, ecx
sar     ebx, 2
and     ebx, 7
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ebx, 0Ch
sub     eax, ebx
mov     [edx+0Ch], ax
sar     ecx, 4
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_451F28
mov     byte ptr [edx+4], 0

loc_451F28:
pop     ecx
pop     ebx
retn
sub_451E6B endp




sub_451F2B proc near
push    ebx
push    ecx
call    rand_
mov     ebx, eax
xor     bh, ah
and     bl, 7
mov     cl, [edx+4]
test    cl, cl
jnz     short loc_451F9C
inc     cl
mov     [edx+4], cl
mov     byte ptr [edx+5], 0
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     ebx, 0C4h
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 3Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
add     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 6
and     eax, 3Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_451F9C:
inc     byte ptr [edx+5]
dec     word ptr [edx+6]
add     word ptr [edx+8], 3
add     ebx, 0Ch
add     [edx+0Ah], bx
movsx   ecx, ax
mov     ebx, ecx
sar     ebx, 2
and     ebx, 7
mov     eax, [edx+0Ah]
sar     eax, 10h
add     ebx, 0Ch
sub     eax, ebx
mov     [edx+0Ch], ax
sar     ecx, 4
and     ecx, 7
mov     eax, [edx+0Ch]
sar     eax, 10h
add     ecx, 10h
add     eax, ecx
mov     [edx+0Eh], ax
cmp     word ptr [edx+6], 0
jnz     short loc_451FE9
mov     byte ptr [edx+4], 0

loc_451FE9:
pop     ecx
pop     ebx
retn
sub_451F2B endp




sub_451FEC proc near
push    ebx
push    ecx
call    rand_
mov     ecx, eax
xor     ch, ah
and     cl, 7
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_45205D
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+6], bx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 7
mov     ebx, 40h ; '@'
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 1Fh
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     bx, [ecx+2]
mov     [edx+0Ch], bx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 6
and     eax, 1Fh
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_45205D:
add     byte ptr [edx+5], 2
dec     word ptr [edx+6]
add     word ptr [edx+8], 2
add     ecx, 8
sub     [edx+0Ch], cx
cmp     word ptr [edx+6], 0
jnz     short loc_45207C
mov     byte ptr [edx+4], 0

loc_45207C:
pop     ecx
pop     ebx
retn
sub_451FEC endp




sub_45207F proc near
push    ebx
push    ecx
mov     ecx, eax
call    rand_
mov     bl, [edx+4]
test    bl, bl
jnz     short loc_4520FD
inc     bl
mov     [edx+4], bl
mov     byte ptr [edx+5], 0
mov     ebx, eax
xor     bh, ah
and     bl, 3
mov     ecx, 40h ; '@'
sub     ecx, ebx
mov     [edx+6], cx
cwde
mov     ecx, eax
sar     ecx, 2
and     ecx, 1
mov     ebx, 7
sub     ebx, ecx
mov     [edx+8], bx
mov     ebx, eax
sar     ebx, 4
and     ebx, 3
mov     ecx, [edx]
movsx   ecx, word ptr [ecx]
sub     ecx, ebx
mov     [edx+0Ah], cx
mov     ecx, [edx]
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, eax
sar     ebx, 6
and     ebx, 3
sub     ecx, ebx
mov     [edx+0Ch], cx
mov     ecx, [edx]
mov     ecx, [ecx+2]
sar     ecx, 10h
sar     eax, 8
and     eax, 3
sub     ecx, eax
mov     [edx+0Eh], cx
pop     ecx
pop     ebx
retn

loc_4520FD:
cmp     bl, 1
jnz     short loc_452128
add     [edx+5], bl
dec     word ptr [edx+6]
dec     word ptr [edx+0Ch]
cmp     word ptr [edx+6], 0
jnz     short loc_452128
cmp     dword ptr [ecx+0Ch], 12Ch
jle     short loc_452124
mov     byte ptr [edx+4], 2
pop     ecx
pop     ebx
retn

loc_452124:
mov     byte ptr [edx+4], 0

loc_452128:
pop     ecx
pop     ebx
retn
sub_45207F endp




sub_45212B proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
call    sub_4EE133
xor     ebx, ebx
mov     bl, [ecx+5]
mov     edx, ebx
shl     edx, 8
add     edx, ebx
shl     edx, 8
add     edx, ebx
sub     esi, edx
mov     [eax+4], esi
mov     ebx, [ecx+8]
sar     ebx, 10h
and     ebx, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      ebx, edx
mov     [eax+8], ebx
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D480040h
mov     dword ptr [eax+14h], 4E005Fh
mov     dword ptr [eax+1Ch], 1F40h
mov     dword ptr [eax+24h], 1F5Fh
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8
pop     esi
pop     ecx
pop     ebx
retn
sub_45212B endp




sub_4521A0 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
mov     ebx, [eax+4]
sar     ebx, 10h
sar     ebx, 2
mov     bl, ds:byte_515D74[ebx]
and     ebx, 0FFh
call    sub_4EE133
movzx   esi, byte ptr [ecx+5]
mov     edx, esi
shl     edx, 8
add     edx, esi
shl     edx, 8
add     edx, esi
sub     edi, edx
mov     [eax+4], edi
mov     esi, [ecx+8]
sar     esi, 10h
and     esi, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      esi, edx
mov     [eax+8], esi
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     edx, ebx
or      edx, 3D480000h
mov     [eax+0Ch], edx
lea     edx, [ebx+1Fh]
mov     esi, edx
or      esi, 4E0000h
mov     [eax+14h], esi
or      bh, 1Fh
mov     [eax+1Ch], ebx
or      dh, 1Fh
mov     [eax+24h], edx
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4521A0 endp




sub_452234 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     edi, edx
cmp     byte ptr [eax+4], 2
jnb     loc_4522CD
mov     ebx, [ecx+4]
sar     ebx, 10h
sar     ebx, 2
mov     bl, ds:byte_515D74[ebx]
and     ebx, 0FFh
call    sub_4EE133
movzx   esi, byte ptr [ecx+5]
mov     edx, esi
shl     edx, 8
add     edx, esi
shl     edx, 8
add     edx, esi
sub     edi, edx
mov     [eax+4], edi
mov     esi, [ecx+8]
sar     esi, 10h
and     esi, 0FFFFh
mov     edx, [ecx+0Ah]
sar     edx, 10h
shl     edx, 10h
or      esi, edx
mov     [eax+8], esi
mov     edx, [ecx+0Ch]
sar     edx, 10h
mov     [eax+10h], edx
mov     edx, ebx
or      edx, 3D480000h
mov     [eax+0Ch], edx
lea     edx, [ebx+1Fh]
mov     esi, edx
or      esi, 2E0000h
mov     [eax+14h], esi
or      bh, 1Fh
mov     [eax+1Ch], ebx
or      dh, 1Fh
mov     [eax+24h], edx
xor     edx, edx
mov     dx, [ecx+8]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 8

loc_4522CD:
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_452234 endp




sub_4522D2 proc near
push    ecx
push    edx
lea     edx, [eax+408h]
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4522DF[ecx*4]
mov     dword ptr [edx+14h], 0
pop     edx
pop     ecx
retn
sub_4522D2 endp




sub_4522F0 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
cmp     byte ptr [ecx+3], 0
jz      short loc_45230D
lea     edx, [ecx+3]
jmp     short loc_45230F

loc_45230D:
xor     edx, edx

loc_45230F:
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
or      byte ptr [ebx], 2
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+14h], 0
mov     dword ptr [ebx+18h], 0
mov     word ptr [ebx+34h], 5905h
mov     word ptr [ebx+36h], 0
mov     word ptr [ebx+38h], 26A2h
mov     word ptr [ecx+6Eh], 80h
mov     dx, [ecx+6Eh]
mov     [ecx+0B0h], dx
mov     [ecx+0B2h], dx
mov     dword ptr [ecx+78h], offset unk_515DA0
mov     dword ptr [ecx+10h], offset unk_515DAC
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+48h], 0
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
mov     eax, ecx
call    sub_4523C3
pop     edx
pop     ecx
pop     ebx
retn
sub_4522F0 endp




sub_4523C3 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
add     eax, 408h
mov     [esp+1Ch+var_1C], eax
mov     al, [ebp+0ACh]
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
mov     edx, [esp+1Ch+var_1C]
mov     [edx+2], ax
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_452418[edx*4]
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 1
jz      short loc_452465
mov     al, [ebp+9]
cmp     al, 1
jb      short loc_452436
jbe     short loc_45244F
cmp     al, 2
jz      short loc_45243C
jmp     short loc_452459

loc_452436:
test    al, al
jz      short loc_452455
jmp     short loc_452459

loc_45243C:
mov     eax, ebp
call    sub_4DE2F6
mov     eax, 0Ch
call    sub_47E8B8
jmp     short loc_452459

loc_45244F:
mov     byte ptr [ebp+9], 2
jmp     short loc_452459

loc_452455:
mov     byte ptr [ebp+9], 1

loc_452459:
mov     word ptr [ebp+0Ah], 0
mov     eax, [esp+1Ch+var_1C]
and     byte ptr [eax], 0FEh

loc_452465:
mov     al, [ebp+0ADh]
mov     bl, [ebp+0ACh]
cmp     al, bl
jz      short loc_452484
xor     edx, edx
mov     dl, bl
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_45248B

loc_452484:
mov     eax, ebp
call    sub_4DEADD

loc_45248B:
test    byte ptr [ebp+0], 2
jz      short loc_4524A4
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4524A4:
test    byte ptr [ebp+0], 1
jz      short loc_4524BD
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 3
mov     eax, ebp
call    sub_432697

loc_4524BD:
test    byte ptr [ebp+0], 1
jz      short loc_45250B
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_45250B
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
push    4000000h
sub     word ptr [eax+0Eh], 50h ; 'P'
add     eax, 14h
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
mov     eax, [esp+30h+var_1C]
add     eax, 0Ch
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 50h ; 'P'
call    sub_4E01FC

loc_45250B:
add     esp, 4

loc_45250E:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4523C3 endp



; Attributes: thunk

sub_452515 proc near
jmp     sub_4DE2F6
sub_452515 endp




sub_45251A proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
lea     ebx, [eax+408h]
mov     ebp, offset byte_5F8364
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_45253B
jbe     short loc_452551
jmp     short loc_45250B

loc_45253B:
test    al, al
jnz     short loc_45250B
inc     al
mov     [edi+0Ah], al
mov     byte ptr [edi+0ACh], 14h
mov     word ptr [ebx+4], 3Ch ; '<'

loc_452551:
xor     edx, edx
mov     eax, offset byte_6DD9CC
jmp     short loc_452566

loc_45255A:
add     eax, 4A0h
inc     edx
cmp     dx, 10h
jge     short loc_4525C4

loc_452566:
movsx   ecx, dx
mov     esi, 80000000h
shr     esi, cl
mov     ecx, esi
test    ds:dword_77E778, ecx
jz      short loc_45255A
cmp     byte ptr [eax+2], 13h
jz      short loc_45255A
mov     esi, [eax+12h]
sar     esi, 10h
sar     esi, 9
mov     ecx, ds:dword_515DB5
sar     ecx, 18h
sub     esi, ecx
mov     [esp+1Ch+var_1C], esi
mov     cl, byte ptr [esp+1Ch+var_1C]
cmp     cl, byte ptr ds:dword_515DBA
jnb     short loc_45255A
mov     ecx, [eax+16h]
sar     ecx, 10h
sar     ecx, 9
mov     esi, ds:dword_515DB5+1
sar     esi, 18h
sub     ecx, esi
mov     [esp+1Ch+var_1C], ecx
mov     cl, byte ptr [esp+1Ch+var_1C]
cmp     cl, byte ptr ds:dword_515DBA+1
jnb     short loc_45255A

loc_4525C4:
cmp     dx, 10h
jnz     short loc_4525CF
or      byte ptr [ebx], 8
jmp     short loc_4525D2

loc_4525CF:
and     byte ptr [ebx], 0F7h

loc_4525D2:
mov     dx, [ebx+4]
test    dx, dx
jz      short loc_4525E2
mov     ecx, edx
dec     ecx
mov     [ebx+4], cx

loc_4525E2:
mov     ecx, [ebp+12h]
sar     ecx, 10h
sar     ecx, 9
mov     edx, ds:dword_515DB5
sar     edx, 18h
sub     ecx, edx
mov     edx, [ebp+16h]
sar     edx, 10h
sar     edx, 9
mov     eax, ds:dword_515DB5+1
sar     eax, 18h
sub     edx, eax
mov     eax, edx
mov     esi, [ebp+184h]
cmp     edi, esi
jnz     short loc_452667
mov     dword ptr [ebp+184h], 0
test    byte ptr [ebx], 8
jz      short loc_452646
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_45250B
mov     eax, 60Ch
call    sub_47E8B8
mov     word ptr [esi+56h], 5D4h
jmp     loc_45250B

loc_452646:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_45250B
mov     word ptr [ebx+4], 1C2h
mov     edx, [esi+9]
sar     edx, 18h
add     edx, 4
jmp     loc_4526EE

loc_452667:
test    dword ptr [ebx+14h], 0FFFFFFh
jz      short loc_45268E
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_45250B
mov     word ptr [ebx+4], 1C2h
mov     edx, [edi+9]
sar     edx, 18h
add     edx, 5
jmp     short loc_4526EE

loc_45268E:
xor     edx, edx
mov     dl, byte ptr ds:dword_515DBA
cmp     ecx, edx
jnb     short loc_4526A6
xor     edx, edx
mov     dl, byte ptr ds:dword_515DBA+1
cmp     eax, edx
jb      short loc_4526C2

loc_4526A6:
cmp     word ptr [ebx+4], 0
jnz     loc_45250B
and     byte ptr [ebx], 0FBh
mov     word ptr [ebx+4], 1C2h
mov     edx, [edi+9]
sar     edx, 18h
jmp     short loc_4526EE

loc_4526C2:
mov     dh, [ebx]
test    dh, 4
jnz     loc_45250B
mov     cl, dh
or      cl, 4
mov     [ebx], cl
mov     eax, 60Ah
call    sub_47EA91
mov     eax, 60Bh
call    sub_47EA91
mov     edx, [edi+9]
sar     edx, 18h

loc_4526EE:
mov     eax, 4
call    sub_4A0E24
jmp     loc_45250B
sub_45251A endp




sub_4526FD proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_452716
cmp     bl, 1
jz      short loc_45274C
pop     edx
pop     ecx
pop     ebx
retn

loc_452716:
mov     bh, [eax+0A4h]
cmp     bh, 0Fh
jz      short loc_452726
cmp     bh, 23h ; '#'
jnz     short loc_452758

loc_452726:
inc     byte ptr [eax+0Ah]
mov     byte ptr [eax+0ACh], 15h
mov     ecx, [eax+9]
sar     ecx, 18h
add     ecx, 6
add     eax, 14h
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
pop     edx
pop     ecx
pop     ebx
retn

loc_45274C:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short loc_452758
or      byte ptr [edx], 1

loc_452758:
pop     edx
pop     ecx
pop     ebx
retn
sub_4526FD endp




sub_45275C proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     ebp, eax
add     eax, 408h
mov     [esp+28h+var_24], eax
mov     al, [ebp+0Ah]
test    al, al
jbe     short loc_452780
cmp     al, 1
jz      short loc_4527B2
jmp     loc_452953

loc_452780:
inc     al
mov     [ebp+0Ah], al
mov     byte ptr [ebp+0ACh], 2
mov     word ptr [ebp+44h], 180h
mov     word ptr [ebp+46h], 180h
mov     word ptr [ebp+4Eh], 0C0h
mov     eax, [esp+28h+var_24]
mov     word ptr [eax+4], 8
mov     eax, 60Dh
call    sub_47E8B8

loc_4527B2:
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+28h+var_24]
add     edx, 34h ; '4'
lea     eax, [ebp+14h]
mov     ecx, 60h ; '`'
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     ecx, eax
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
cmp     edx, eax
jz      short loc_45280D
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax

loc_45280D:
test    ch, 10h
jz      short loc_45282E
cmp     word ptr [ebp+46h], 180h
jz      short loc_452828
xor     ebx, ebx
xor     edx, edx
mov     eax, 117h
call    sub_4D89E4

loc_452828:
mov     word ptr [ebp+46h], 180h

loc_45282E:
mov     eax, [ebp+12h]
sar     eax, 10h
mov     edx, [esp+28h+var_24]
mov     edx, [edx+32h]
sar     edx, 10h
sub     eax, edx
mov     [esp+28h+var_28], eax
mov     edx, [ebp+16h]
sar     edx, 10h
mov     eax, [esp+28h+var_24]
mov     eax, [eax+36h]
sar     eax, 10h
sub     edx, eax
mov     [esp+28h+var_20], edx
mov     eax, [esp+28h+var_24]
mov     si, [eax+4]
test    si, si
jz      short loc_45286D
mov     edi, esi
dec     edi
mov     [eax+4], di

loc_45286D:
mov     eax, [esp+28h+var_24]
cmp     word ptr [eax+4], 0
jnz     loc_452936
call    sub_4DE13B
mov     [esp+28h+var_1C], eax
test    eax, eax
jz      loc_452936
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 0
mov     edi, offset word_559E88
lea     esi, [ebp+14h]
movsd
movsd
mov     edi, offset unk_559E90
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [esp+28h+var_24]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     eax, ds:dword_515DBE[eax*8]
sar     eax, 10h
push    eax
call    rand_
and     eax, 1Fh
shl     eax, 4
neg     eax
push    eax
mov     eax, [esp+30h+var_24]
mov     ax, [eax+2]
xor     ah, ah
and     al, 3
and     eax, 0FFFFh
mov     ecx, ds:dword_515DBA[eax*8]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
add     ebx, 800h
and     ebx, 0FFFh
mov     edx, offset unk_559E90
mov     eax, offset word_559E88
call    sub_4DD4C5
mov     ax, ds:word_559E88
mov     edx, [esp+28h+var_1C]
mov     [edx+1Ch], ax
mov     ax, ds:word_559E8A
mov     [edx+1Eh], ax
mov     ax, ds:word_559E8C
mov     [edx+20h], ax

loc_452936:
mov     edx, [esp+28h+var_28]
imul    edx, edx
mov     eax, [esp+28h+var_20]
imul    eax, eax
add     eax, edx
cmp     eax, 800h
jge     short loc_452953
mov     eax, [esp+28h+var_24]
or      byte ptr [eax], 1

loc_452953:
cmp     byte ptr [ebp+0A6h], 1
jnz     short loc_45296A
xor     ebx, ebx
xor     edx, edx
mov     eax, 116h
call    sub_4D89E4

loc_45296A:
add     esp, 10h
jmp     loc_45250E
sub_45275C endp




sub_452972 proc near
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
call    ds:funcs_452999[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_4529B9
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4529B9:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_4529C9
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_4529D0

loc_4529C9:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh

loc_4529D0:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_452972 endp




sub_4529D7 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, [eax+9]
cmp     al, 1
jb      short loc_4529EF
jbe     short loc_452A02
cmp     al, 2
jz      short loc_452A1B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4529EF:
test    al, al
jnz     short loc_452A2B
mov     eax, esi
call    sub_452A30
inc     byte ptr [esi+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_452A02:
cmp     ds:word_6E23D6, 0
jnz     short loc_452A1B
mov     edx, 3
xor     eax, eax
call    sub_4A0E24
inc     byte ptr [esi+9]

loc_452A1B:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 90h
mov     eax, esi
call    sub_4DD43B

loc_452A2B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4529D7 endp




sub_452A30 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+64h], 80h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     edx, [ecx+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ecx+20h], edx
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_452A30 endp




sub_452AC1 proc near

; FUNCTION CHUNK AT 00452B1F SIZE 00000001 BYTES

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
call    ds:funcs_452AE8[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_452B08
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_452B08:
mov     dl, [ebp+0Ah]
test    dl, dl
jz      short loc_452B18
mov     eax, ebp
call    sub_4DEADD
jmp     short loc_452B1F

loc_452B18:
mov     dh, dl
inc     dh
mov     [ebp+0Ah], dh
sub_452AC1 endp

; START OF FUNCTION CHUNK FOR sub_452CF8
;   ADDITIONAL PARENT FUNCTION sub_452AC1

loc_452B1F:
pop     ebp
; END OF FUNCTION CHUNK FOR sub_452CF8
; START OF FUNCTION CHUNK FOR sub_452B3D

loc_452B20:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_452B3D
db 8Dh, 40h, 0
jpt_452B5A dd offset loc_452B61 ; jump table for switch statement
dd offset loc_452B70
dd offset loc_452B81
dd offset loc_452BEE
dd offset loc_452C01



sub_452B3D proc near

; FUNCTION CHUNK AT 00452B20 SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     ecx, [eax+408h]
mov     al, [eax+9]
cmp     al, 4           ; switch 5 cases
ja      def_452B5A      ; jumptable 00452B5A default case
and     eax, 0FFh
jmp     jpt_452B5A[eax*4] ; switch jump

loc_452B61:             ; jumptable 00452B5A case 0
mov     eax, esi
call    sub_452C5A

loc_452B68:
inc     byte ptr [esi+9]
jmp     def_452B5A      ; jumptable 00452B5A default case

loc_452B70:             ; jumptable 00452B5A case 1
mov     eax, esi
call    sub_452CF8
test    eax, eax
jz      def_452B5A      ; jumptable 00452B5A default case
jmp     short loc_452B68

loc_452B81:             ; jumptable 00452B5A case 2
mov     ecx, [esi+62h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
lea     edi, [esi+14h]
mov     eax, edi
call    sub_4DE552
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     def_452B5A      ; jumptable 00452B5A default case
call    sub_42ABA2
test    eax, eax
jnz     def_452B5A      ; jumptable 00452B5A default case
call    sub_452DE7
mov     ecx, eax
xor     ebx, ebx
mov     edx, 3
mov     eax, edi
call    sub_4A62D4
xor     ebx, ebx
mov     edx, 8
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+9]
mov     byte ptr [esi+0Ah], 0
jmp     short def_452B5A ; jumptable 00452B5A default case

loc_452BEE:             ; jumptable 00452B5A case 3
cmp     byte ptr ds:dword_77E760, 0
jnz     short def_452B5A ; jumptable 00452B5A default case
call    sub_42A98E
jmp     loc_452B68

loc_452C01:             ; jumptable 00452B5A case 4
mov     ebx, [esi+62h]
sar     ebx, 10h
mov     edx, [esi+54h]
sar     edx, 10h
movsx   eax, word ptr [ecx]
call    sub_4DE5F4
mov     dx, [esi+56h]
add     edx, eax
and     dh, 0Fh
mov     [esi+56h], dx
test    ax, ax
jnz     short def_452B5A ; jumptable 00452B5A default case
call    sub_42ABA2
test    eax, eax
jnz     short def_452B5A ; jumptable 00452B5A default case
and     ds:byte_5F8421, 0BFh
or      ds:byte_5F8364, 2
mov     byte ptr [esi+9], 1

def_452B5A:             ; jumptable 00452B5A default case
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     loc_452B20
sub_452B3D endp




sub_452C5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 408h
or      byte ptr [ecx], 2
mov     word ptr [ecx+64h], 80h
mov     word ptr [ecx+58h], 0
mov     dx, [ecx+58h]
mov     [ecx+54h], dx
mov     dx, [ecx+56h]
mov     [eax], dx
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
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
mov     dword ptr [ecx+10h], offset unk_515DE4
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ah], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_452C5A endp




sub_452CF8 proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00452B1F SIZE 00000001 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
mov     edi, offset byte_5F8364
mov     edx, ds:dword_5F84E8
cmp     eax, edx
jnz     loc_452DDD
mov     ebx, [edx+54h]
sar     ebx, 10h
lea     eax, [edi+14h]
mov     [esp+1Ch+var_1C], eax
lea     ebp, [edx+14h]
mov     ecx, 800h
mov     edx, eax
mov     eax, ebp
call    sub_4DE552
test    ax, ax
jge     short loc_452D52
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde
neg     eax
jmp     short loc_452D68

loc_452D52:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, [esp+1Ch+var_1C]
mov     eax, ebp
call    sub_4DE552
cwde

