mov     edx, eax
or      edx, 2000000h
mov     ebx, eax
shl     ebx, 8
jmp     loc_43F41F

loc_43F318:             ; jumptable 0043F275 case 1
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
mov     si, [ecx+4Eh]
add     esi, ebx
mov     [ecx+4Eh], si
test    si, si
jle     loc_43F2AC
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_514316[ebx*8]
sar     ebx, 10h
cmp     word ptr [eax], 0
jg      short loc_43F357
mov     eax, [ecx+4Ch]
sar     eax, 10h
cmp     eax, ebx
jle     short loc_43F35E

loc_43F357:
mov     eax, 80h
jmp     short loc_43F38A

loc_43F35E:
mov     edx, ebx
sub     edx, eax
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    ebx
mov     edx, 60h ; '`'
sub     edx, eax
mov     eax, edx
cmp     edx, 0FFh
jle     short loc_43F384
mov     eax, 0FFh
jmp     short loc_43F38A

loc_43F384:
test    edx, edx
jge     short loc_43F38A
xor     eax, edx

loc_43F38A:
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8
jmp     loc_43F41F

loc_43F39C:             ; jumptable 0043F275 case 2
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 0
jle     loc_43F2AC
mov     eax, [ecx+0Ah]
sar     eax, 18h
shl     eax, 3
mov     edx, ds:dword_514336[eax]
sar     edx, 10h
mov     ebx, [ecx+4Ch]
sar     ebx, 10h
cmp     ebx, edx
jle     short loc_43F357
mov     al, ds:byte_51433A[eax]
mov     dh, [ecx+0Ah]
add     dh, al
mov     [ecx+0Ah], dh
cmp     dh, 80h
ja      short loc_43F3F4
xor     eax, eax
mov     al, dh
mov     edx, 80h
sub     edx, eax
mov     eax, edx
jmp     short loc_43F38A

loc_43F3F4:
xor     eax, eax
jmp     short loc_43F38A

loc_43F3F8:             ; jumptable 0043F275 case 3
xor     eax, eax
mov     al, [ecx+0Fh]
add     eax, eax
mov     [ecx+4Eh], ax
cmp     byte ptr [ecx+0Fh], 0
jz      loc_43F2AC
xor     eax, eax
mov     al, [ecx+0Dh]
mov     ebx, eax
or      ebx, 2000000h
mov     edx, eax
shl     edx, 8

loc_43F41F:
or      edx, ebx
shl     eax, 10h
or      edx, eax
mov     [ecx+50h], edx
test    byte ptr [ecx+3], 20h
jz      short loc_43F434
sub     word ptr [ecx+4Ah], 28h ; '('

loc_43F434:
lea     edx, [ecx+18h]
mov     eax, edx
call    sub_4EF184
fild    word ptr [ecx+4Eh]
fmul    ds:dbl_50A2AC
fst     dword ptr [ecx+38h]
fst     dword ptr [ecx+28h]
fstp    dword ptr [ecx+18h]
mov     bl, [ecx+0Bh]
inc     bl
mov     [ecx+0Bh], bl
xor     eax, eax
mov     al, bl
shl     eax, 7
call    sub_4EF50D
pop     esi
pop     edx
pop     ecx
pop     ebx
sub_43F25B endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_49]


; Attributes: thunk

sub_43F469 proc near
jmp     sub_4DE3EA
sub_43F469 endp




sub_43F46E proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F474[edx*4]
pop     edx
retn
sub_43F46E endp




sub_43F47D proc near
push    ecx
push    edx
or      byte ptr [eax], 22h
mov     word ptr [eax+24h], 20h ; ' '
mov     dword ptr [eax+14h], 3D48002Ch
mov     dword ptr [eax+18h], 2EC06060h
mov     byte ptr [eax+0Ch], 80h
mov     byte ptr [eax+0Dh], 0
cmp     byte ptr [eax+3], 0
jz      short loc_43F4E8
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514394[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514390[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514392[edx*2]
jmp     short loc_43F52A

loc_43F4E8:
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437C[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514378[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437A[edx*2]

loc_43F52A:
mov     [eax+23h], dl
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Bh], 0
pop     edx
pop     ecx
retn
sub_43F47D endp




sub_43F538 proc near
push    ecx
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     loc_43F5E2
cmp     byte ptr [eax+3], 0
jz      short loc_43F59A
add     word ptr [eax+24h], 8
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514394[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514390[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514392[edx*2]
jmp     short loc_43F5DF

loc_43F59A:
inc     byte ptr [eax+0Dh]
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437C[edx*2]
mov     [eax+0Eh], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_514378[edx*2]
mov     [eax+22h], dl
mov     ecx, [eax+0Ah]
sar     ecx, 18h
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
mov     dl, ds:byte_51437A[edx*2]

loc_43F5DF:
mov     [eax+23h], dl

loc_43F5E2:
cmp     byte ptr [eax+0Eh], 80h
jnz     short loc_43F5EC
mov     byte ptr [eax+8], 2

loc_43F5EC:
pop     edx
pop     ecx
retn
sub_43F538 endp



; Attributes: thunk

sub_43F5EF proc near
jmp     sub_4DE3EA
sub_43F5EF endp




sub_43F5F4 proc near
push    edx
cmp     byte ptr [eax+0Dh], 0
jnz     short loc_43F609
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F600[edx*4]
pop     edx
retn

loc_43F609:
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F60E[edx*4]
pop     edx
retn
sub_43F5F4 endp




sub_43F617 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
cmp     byte ptr [eax+0Fh], 1
jnz     loc_43F6D1
test    byte ptr [ecx+9], 7
jnz     loc_43F6CE
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_43F6CE
mov     al, [ecx+3]
add     al, al
mov     ah, [ecx+0Ch]
add     ah, al
mov     byte ptr [edx], 3
mov     al, [ecx+2]
mov     [edx+2], al
mov     al, [ecx+3]
mov     [edx+3], al
mov     al, [ecx+0Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 1
mov     byte ptr [edx+0Eh], 40h ; '@'
mov     al, [ecx+0Fh]
mov     [edx+0Fh], al
movsx   ebx, ah
shl     ebx, 4
call    rand_
mov     esi, eax
and     esi, 7Fh
mov     ax, ds:word_5143D0[ebx]
sub     eax, esi
mov     [edx+1Ch], ax
call    rand_
mov     esi, eax
and     esi, 7Fh
mov     ax, ds:word_5143D4[ebx]
sub     eax, esi
mov     [edx+20h], ax
mov     ax, ds:word_5143D2[ebx]
mov     [edx+1Eh], ax
mov     dword ptr [edx+14h], 3D48000Eh
mov     dword ptr [edx+18h], 2E808080h
mov     byte ptr [edx+22h], 40h ; '@'
mov     byte ptr [edx+23h], 0
movsx   ax, ds:byte_5143D8[ebx]
mov     [edx+24h], ax

loc_43F6CE:
inc     byte ptr [ecx+9]

loc_43F6D1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43F617 endp



; Attributes: thunk

sub_43F6D6 proc near
jmp     sub_4DE3EA
sub_43F6D6 endp




sub_43F6DB proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
cmp     byte ptr [eax+0Eh], 0
jle     loc_43F769
mov     al, [edx+3]
add     al, al
add     al, [edx+0Ch]
movsx   ecx, al
shl     ecx, 4
movsx   bx, ds:byte_5143DD[ecx]
call    rand_
and     ebx, eax
movsx   ax, ds:byte_5143D9[ecx]
add     eax, ebx
add     [edx+1Ch], ax
movsx   bx, ds:byte_5143DE[ecx]
call    rand_
and     ebx, eax
movsx   ax, ds:byte_5143DA[ecx]
add     eax, ebx
sub     [edx+1Eh], ax
movsx   bx, ds:byte_5143DF[ecx]
call    rand_
and     eax, ebx
movsx   bx, ds:byte_5143DB[ecx]
add     eax, ebx
add     [edx+20h], ax
movsx   ax, ds:byte_5143DC[ecx]
add     [edx+24h], ax
sub     dword ptr [edx+18h], 10101h
dec     byte ptr [edx+0Eh]
pop     edx
pop     ecx
pop     ebx
retn

loc_43F769:
mov     eax, edx
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43F6DB endp




sub_43F774 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= byte ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ebx, eax
mov     al, [eax+8]
test    al, al
jbe     short loc_43F78F
cmp     al, 1
jz      short loc_43F799
jmp     loc_43F8F6

loc_43F78F:
mov     dword ptr [ebx+28h], 0
inc     byte ptr [ebx+8]

loc_43F799:
inc     dword ptr [ebx+28h]
xor     edx, edx
mov     dl, [ebx+3]
mov     edx, ds:off_514888[edx*8]
xor     edi, edi

loc_43F7AA:
xor     eax, eax
mov     al, [ebx+3]
cmp     edi, ds:dword_51488C[eax*8]
jge     loc_43F8F6
mov     ecx, [edx+6]
sar     ecx, 10h
mov     esi, [ebx+28h]
imul    ecx, esi
movsx   eax, word ptr [edx]
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_38], eax
mov     eax, [edx+8]
sar     eax, 10h
imul    eax, esi
mov     ecx, [edx]
sar     ecx, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_34], eax
mov     ecx, [edx+0Ah]
sar     ecx, 10h
imul    ecx, esi
mov     eax, [edx+2]
sar     eax, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_2C], eax
mov     eax, [edx+0Ch]
sar     eax, 10h
imul    eax, esi
mov     ecx, [edx+4]
sar     ecx, 10h
add     eax, ecx
shr     eax, 4
mov     [esp+38h+var_30], eax
xor     eax, eax
mov     al, [edx+10h]
mov     cl, ds:byte_514430[eax*4]
mov     [esp+38h+var_28], cl
mov     ch, ds:byte_514432[eax*4]
add     cl, ch
mov     [esp+38h+var_24], cl
mov     cl, ds:byte_514431[eax*4]
mov     [esp+38h+var_20], cl
mov     ch, ds:byte_514433[eax*4]
add     cl, ch
mov     [esp+38h+var_1C], cl
call    sub_4EE133
mov     ecx, eax
movzx   esi, byte ptr [edx+11h]
mov     eax, esi
shl     eax, 8
add     eax, esi
shl     eax, 8
add     eax, esi
shl     eax, 3
mov     esi, 2C808080h
sub     esi, eax
mov     [ecx+4], esi
mov     eax, [esp+38h+var_38+2]
sar     eax, 10h
shl     eax, 10h
mov     esi, [esp-2]
sar     esi, 10h
and     esi, 0FFFFh
or      esi, eax
mov     [ecx+8], esi
mov     eax, [esp+38h+var_30+2]
sar     eax, 10h
mov     [ecx+10h], eax
movzx   esi, [esp+38h+var_20]
shl     esi, 8
xor     eax, eax
mov     al, [esp+38h+var_28]
mov     [esp+38h+var_2C], eax
or      eax, esi
or      eax, 3E400000h
mov     [ecx+0Ch], eax
xor     eax, eax
mov     al, [esp+38h+var_24]
or      esi, eax
or      esi, 70000h
mov     [ecx+14h], esi
movzx   esi, [esp+38h+var_1C]
shl     esi, 8
mov     ebp, [esp+38h+var_2C]
or      ebp, esi
mov     [ecx+1Ch], ebp
mov     dword ptr [ecx+20h], 0
or      esi, eax
mov     [ecx+24h], esi
mov     eax, [esp+38h+var_34+2]
sar     eax, 10h
mov     [ecx+18h], eax
inc     edi
add     edx, 14h
jmp     loc_43F7AA

loc_43F8F6:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43F774 endp




sub_43F900 proc near
push    ebx
push    ecx
push    edx
mov     dl, [eax+8]
cmp     dl, 1
jb      short loc_43F916
jbe     short loc_43F920
cmp     dl, 2
jz      short loc_43F975
pop     edx
pop     ecx
pop     ebx
retn

loc_43F916:
test    dl, dl
jnz     short loc_43F97A
or      byte ptr [eax], 2
inc     byte ptr [eax+8]

loc_43F920:
mov     edx, [eax+2Ch]
cmp     dword ptr [edx+18h], 0
jz      short loc_43F92E
sub     word ptr [eax+1Ch], 2

loc_43F92E:
mov     bl, [eax+0Dh]
dec     bl
mov     [eax+0Dh], bl
jz      short loc_43F93E
cmp     byte ptr [eax+8], 2
jnz     short loc_43F945

loc_43F93E:
mov     byte ptr [eax+0Dh], 0
inc     byte ptr [eax+8]

loc_43F945:
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     ecx, edx
shl     ecx, 8
add     ecx, edx
shl     edx, 10h
add     edx, ecx
add     edx, 2E000000h
mov     [eax+18h], edx
movsx   dx, byte ptr [eax+0Fh]
add     [eax+24h], dx
mov     dx, [eax+28h]
add     [eax+1Eh], dx
pop     edx
pop     ecx
pop     ebx
retn

loc_43F975:
call    sub_4DE3EA

loc_43F97A:
pop     edx
pop     ecx
pop     ebx
retn
sub_43F900 endp




sub_43F97E proc near

var_14= dword ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 4
mov     edx, eax
mov     ah, [eax+0Bh]
inc     ah
mov     [edx+0Bh], ah
cmp     ah, 8
jnz     loc_43FA65
call    sub_4DE13B
mov     ecx, eax
mov     ebx, eax
test    eax, eax
jz      loc_43FA65
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'
mov     byte ptr [eax+3], 1
mov     al, [edx+6]
mov     [ecx+6], al
mov     byte ptr [ecx+0Ch], 0
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 7
add     al, al
add     al, 40h ; '@'
mov     ah, [edx+0Dh]
sub     al, ah
mov     [ecx+0Dh], al
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+1Ch]
add     eax, esi
mov     [ecx+1Ch], ax
mov     ax, [edx+1Eh]
mov     [ecx+1Eh], ax
call    rand_
mov     esi, eax
and     esi, 0Fh
mov     ax, [edx+20h]
add     eax, esi
mov     [ecx+20h], ax
mov     dword ptr [ecx+14h], 3D48004Eh
call    rand_
mov     [esp+14h+var_14], eax
mov     al, byte ptr [esp+14h+var_14]
and     al, 3
shl     al, 5
add     al, 20h ; ' '
mov     [ecx+22h], al
mov     byte ptr [ecx+23h], 0
movsx   ax, byte ptr [edx+0Eh]
mov     [ecx+24h], ax
mov     al, [edx+0Fh]
mov     [ecx+0Fh], al
mov     eax, [edx+28h]
mov     [ecx+28h], eax
mov     [ecx+2Ch], edx
xor     ecx, ecx

loc_43FA41:
xor     eax, eax
mov     ax, [edx+26h]
cmp     ecx, eax
jge     short loc_43FA55
mov     eax, ebx
call    sub_43F900
inc     ecx
jmp     short loc_43FA41

loc_43FA55:
mov     word ptr [edx+26h], 0
call    rand_
and     al, 3
mov     [edx+0Bh], al

loc_43FA65:
add     esp, 4
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43F97E endp




sub_43FA6D proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     cl, [eax+8]
test    cl, cl
jbe     short loc_43FA86
cmp     cl, 1
jz      loc_43FD02
pop     edx
pop     ecx
pop     ebx
retn

loc_43FA86:
mov     ecx, ds:dword_77E6DC
mov     ax, [eax+28h]
add     [edx+1Ch], ax
mov     eax, [edx+30h]
mov     ebx, [edx+2Ch]
add     ebx, eax
mov     [edx+2Ch], ebx
shr     ebx, 4
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, ebx
mov     [edx+1Eh], ax
add     word ptr [edx+26h], 80h
cmp     word ptr [edx+1Eh], 110h
jg      short loc_43FAC4
cmp     word ptr [edx+1Ch], 160h
jle     short loc_43FACB

loc_43FAC4:
inc     byte ptr [edx+8]
pop     edx
pop     ecx
pop     ebx
retn

loc_43FACB:
mov     eax, ecx
call    sub_4F87F0
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ah]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+8], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ch]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+0Ah], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 400h
call    sub_4EF003
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+10h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 400h
call    sub_4EF008
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, ebx
mov     [ecx+12h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 0C00h
call    sub_4EF003
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ah]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+18h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 0C00h
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Dh
mov     ebx, [edx+1Ch]
sar     ebx, 10h
add     eax, ebx
mov     [ecx+1Ah], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AA[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 800h
call    sub_4EF003
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+20h], ax
mov     eax, [edx+9]
sar     eax, 18h
xor     ebx, ebx
mov     bl, ds:byte_5148AB[eax*4]
xor     eax, eax
mov     ax, [edx+26h]
add     eax, 800h
call    sub_4EF008
imul    ebx, eax
sar     ebx, 0Dh
mov     eax, [edx+1Ch]
sar     eax, 10h
add     eax, ebx
mov     [ecx+22h], ax
mov     eax, [edx+9]
sar     eax, 18h
mov     al, ds:byte_5148A8[eax*4]
mov     [ecx+0Ch], al
mov     eax, [edx+9]
sar     eax, 18h
mov     al, ds:byte_5148A9[eax*4]
mov     [ecx+0Dh], al
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, [ecx+0Ch]
mov     bh, ds:byte_5148AA[eax*4]
add     bl, bh
mov     [ecx+14h], bl
mov     al, [ecx+0Dh]
mov     [ecx+15h], al
mov     al, [ecx+0Ch]
mov     [ecx+1Ch], al
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, [ecx+0Dh]
mov     bh, ds:byte_5148AB[eax*4]
add     bl, bh
mov     [ecx+1Dh], bl
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, [ecx+0Ch]
mov     bh, ds:byte_5148AA[eax*4]
add     bl, bh
mov     [ecx+24h], bl
mov     eax, [edx+9]
sar     eax, 18h
mov     dl, [ecx+0Dh]
mov     dh, ds:byte_5148AB[eax*4]
add     dl, dh
mov     [ecx+25h], dl
mov     word ptr [ecx+0Eh], 3E40h
mov     word ptr [ecx+16h], 7
mov     byte ptr [ecx+4], 80h
mov     byte ptr [ecx+5], 80h
mov     byte ptr [ecx+6], 80h
mov     eax, ds:dword_77EA74
add     eax, 74h ; 't'
mov     edx, ecx
call    sub_4F87A6
add     ds:dword_77E6DC, 38h ; '8'
pop     edx
pop     ecx
pop     ebx
retn

loc_43FD02:
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn
sub_43FA6D endp




sub_43FD0B proc near
push    edx
mov     dl, [eax+3]
cmp     dl, 1
jb      short loc_43FD1D
jbe     short loc_43FD35
cmp     dl, 2
jz      short loc_43FD3C
pop     edx
retn

loc_43FD1D:
test    dl, dl
jnz     short loc_43FD41
cmp     byte ptr [eax+8], 2
jz      short loc_43FD2E
call    sub_43F97E
pop     edx
retn

loc_43FD2E:
call    sub_4DE3EA
pop     edx
retn

loc_43FD35:
call    sub_43F900
pop     edx
retn

loc_43FD3C:
call    sub_43FA6D

loc_43FD41:
pop     edx
retn
sub_43FD0B endp




sub_43FD43 proc near

var_C= byte ptr -0Ch
var_8= byte ptr -8
arg_0= dword ptr  4
arg_4= byte ptr  8
arg_8= byte ptr  0Ch

push    esi
sub     esp, 8
mov     esi, eax
mov     [esp+0Ch+var_C], dl
mov     [esp+0Ch+var_8], bl
mov     ebx, ecx
call    sub_4DE13B
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      short loc_43FDCE
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'
mov     byte ptr [eax+3], 0
xor     eax, eax
mov     al, [esp+0Ch+arg_8]
mov     [edx+18h], eax
mov     byte ptr [edx+0Ch], 0
mov     byte ptr [edx+0Dh], 0
mov     al, [esp+0Ch+var_C]
mov     [edx+0Eh], al
mov     al, [esp+0Ch+var_8]
mov     [edx+0Fh], al
mov     ax, [esi]
mov     [edx+1Ch], ax
mov     ax, [esi+2]
mov     [edx+1Eh], ax
mov     ax, [esi+4]
mov     [edx+20h], ax
mov     [edx+26h], bx
cmp     [esp+0Ch+arg_4], 0
jz      short loc_43FDB0
or      byte ptr [edx+6], 20h
jmp     short loc_43FDB4

loc_43FDB0:
and     byte ptr [edx+6], 0DFh

loc_43FDB4:
mov     eax, [esp+0Ch+arg_0]
mov     [ecx+28h], eax
xor     edx, edx

loc_43FDBD:
movsx   eax, bx
cmp     edx, eax
jge     short loc_43FDCE
mov     eax, ecx
call    sub_43F97E
inc     edx
jmp     short loc_43FDBD

loc_43FDCE:
mov     eax, ecx
add     esp, 8
pop     esi
retn    0Ch
sub_43FD43 endp




sub_43FDD7 proc near

var_C= byte ptr -0Ch
arg_2= dword ptr  6

push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     [esp+0Ch+var_C], bl
call    sub_4DE13B
mov     edx, eax
mov     ebx, eax
test    eax, eax
jz      short loc_43FE29
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 21h ; '!'
mov     byte ptr [eax+3], 2
mov     al, [esp+0Ch+var_C]
mov     [edx+0Ch], al
mov     [edx+1Ch], di
mov     [edx+1Eh], si
mov     word ptr [edx+26h], 0
movsx   eax, cx
mov     [edx+28h], eax
mov     eax, [esp+0Eh]
sar     eax, 10h
mov     [edx+2Ch], eax
mov     eax, [esp+0Ch+arg_2]
sar     eax, 10h
mov     [edx+30h], eax

loc_43FE29:
mov     eax, ebx
add     esp, 4
pop     edi
pop     esi
retn    8
sub_43FDD7 endp




sub_43FE33 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43FE39[edx*4]
pop     edx
retn
sub_43FE33 endp




sub_43FE42 proc near
push    edx
lea     edx, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Ch], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
mov     dword ptr [edx], 0
mov     word ptr [edx+4], 0
mov     word ptr [edx+6], 0
pop     edx
retn
sub_43FE42 endp




sub_43FE7A proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
lea     ebp, [eax+28h]
mov     ecx, 12h
mov     eax, [ebp+0]
mov     edx, eax
sar     edx, 1Fh
idiv    ecx
mov     edi, 102h
sub     edi, edx
mov     dx, [ebp+6]
mov     cx, [ebp+4]
mov     [esp+20h+var_1C], cx

loc_43FEAA:
cmp     [esp+20h+var_1C], 0
jl      short loc_43FF18
movsx   ecx, di
cmp     ecx, 0FFFFFFEEh
jle     short loc_43FF18
imul    edx, 12h
sub     edi, edx
movsx   esi, di
mov     ecx, [esp+20h+var_20+2]
sar     ecx, 10h
xor     edx, edx
mov     dl, ds:byte_514BE8[ecx*4]
mov     ebx, esi
xor     eax, eax
call    sub_43FF87
xor     edx, edx
mov     dl, ds:byte_514BE9[ecx*4]
mov     ebx, esi
mov     eax, 1
call    sub_43FF87
xor     edx, edx
mov     dl, ds:byte_514BEA[ecx*4]
mov     ebx, esi
mov     eax, 2
call    sub_43FF87
xor     edx, edx
mov     dl, ds:byte_514BE7[ecx*4]
sub     edi, 12h
dec     [esp+20h+var_1C]
jmp     short loc_43FEAA

loc_43FF18:
mov     edx, [ebp+0]
inc     edx
mov     [ebp+0], edx
mov     ecx, 12h
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
test    edx, edx
jnz     short loc_43FF63
mov     edx, [ebp+2]
sar     edx, 10h
shl     edx, 2
mov     ah, ds:byte_514BEB[edx]
test    ah, ah
jz      short loc_43FF59
mov     dl, ah
and     edx, 0FFh
inc     word ptr [ebp+6]
mov     ecx, [ebp+4]
sar     ecx, 10h
inc     edx
cmp     ecx, edx
jnz     short loc_43FF63

loc_43FF59:
inc     word ptr [ebp+4]
mov     word ptr [ebp+6], 0

loc_43FF63:
cmp     word ptr [ebp+4], 0A4h
jle     short loc_43FF72
mov     edx, [esp+20h+var_20]
mov     byte ptr [edx+8], 2

loc_43FF72:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43FE7A endp




sub_43FF7C proc near
inc     byte ptr ds:dword_560BE0+1
jmp     sub_4DE3EA
sub_43FF7C endp




sub_43FF87 proc near

var_1C= byte ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h
var_10= byte ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 10h
mov     [esp+1Ch+var_14], al
test    dl, dl
jz      loc_4400D5
movzx   esi, dl
mov     al, ds:byte_5148DC[esi*4]
mov     [esp+1Ch+var_18], al
mov     al, ds:byte_5148DD[esi*4]
mov     [esp+1Ch+var_1C], al
mov     al, ds:byte_5148DE[esi*4]
mov     [esp+1Ch+var_10], al
mov     edx, ds:dword_77E6DC
mov     ecx, edx
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx], 9000000h
mov     dword ptr [edx+4], 2C808080h
mov     word ptr [edx+0Eh], 7C00h
xor     ah, ah
mov     al, ds:byte_5148DF[esi*4]
mov     [edx+16h], ax
mov     al, [esp+1Ch+var_18]
mov     [edx+0Ch], al
mov     al, [esp+1Ch+var_1C]
mov     [edx+0Dh], al
mov     al, [esp+1Ch+var_10]
mov     [edx+14h], al
mov     al, [esp+1Ch+var_1C]
mov     [edx+15h], al
mov     al, [esp+1Ch+var_18]
mov     [edx+1Ch], al
mov     al, [esp+1Ch+var_1C]
add     al, 0Fh
mov     [edx+1Dh], al
mov     ah, [esp+1Ch+var_10]
mov     [edx+24h], ah
mov     [edx+25h], al
mov     esi, ebx
add     esi, 10h
mov     ah, [esp+1Ch+var_14]
cmp     ah, 1
jb      short loc_440038
jbe     short loc_440075
jmp     short loc_44009B

loc_440038:
test    ah, ah
jnz     short loc_44009B
mov     al, [esp+1Ch+var_10]
movzx   di, [esp+1Ch+var_18]
sub     eax, edi
mov     edi, 90h
sub     edi, eax
mov     [edx+8], di
mov     [edx+0Ah], bx
mov     word ptr [edx+10h], 90h
mov     [edx+12h], bx
mov     [edx+18h], di
mov     [edx+1Ah], si
mov     word ptr [edx+20h], 90h

loc_44006F:
mov     [edx+22h], si
jmp     short loc_4400C6

loc_440075:
mov     word ptr [edx+8], 20h ; ' '
mov     [edx+0Ah], bx
mov     word ptr [edx+10h], 11Fh
mov     [edx+12h], bx
mov     word ptr [edx+18h], 20h ; ' '
mov     [edx+1Ah], si
mov     word ptr [edx+20h], 11Fh
jmp     short loc_44006F

loc_44009B:
mov     word ptr [ecx+8], 0B0h
mov     [ecx+0Ah], bx
mov     word ptr [ecx+10h], 12Fh
mov     [ecx+12h], bx
mov     word ptr [ecx+18h], 0B0h
add     ebx, 10h
mov     [ecx+1Ah], bx
mov     word ptr [ecx+20h], 12Fh
mov     [ecx+22h], bx

loc_4400C6:
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ecx
call    sub_4F87A6

loc_4400D5:
add     esp, 10h
pop     edi
pop     esi
pop     ecx
retn
sub_43FF87 endp

dword_4400DC dd 2 dup(0)



sub_4400E4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
cmp     ds:byte_77E7D4, 5
jnz     short loc_44010D
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_44010D
mov     eax, ebp
call    sub_448ED4
jmp     loc_440207

loc_44010D:
lea     eax, [ebp+408h]
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
mov     dl, [ebp+8]
mov     eax, ebp
call    ds:funcs_440158[edx*4]
mov     al, [ebp+0ADh]
cmp     al, [ebp+0ACh]
jz      short loc_440180
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_440187

loc_440180:
mov     eax, ebp
call    sub_4DEADD

loc_440187:
test    byte ptr [ebp+0], 2
jz      short loc_4401A8
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 20h
jnz     short loc_4401A8
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 30h ; '0'
mov     eax, ebp
call    sub_4ED88B

loc_4401A8:
test    byte ptr [ebp+0], 1
jz      short loc_4401FD
mov     eax, [esp+1Ch+var_1C]
test    byte ptr [eax], 2
jz      short loc_4401FD
mov     edi, eax
lea     edi, [edi+0Ch]
lea     esi, [ebp+14h]
movsd
movsd
push    80h
push    offset unk_800000
sub     word ptr [eax+0Eh], 28h ; '('
xor     eax, eax
mov     edx, [esp+24h+var_1C]
mov     ax, [edx+8]
or      eax, 4000000h
push    eax
lea     eax, [edx+14h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
lea     eax, [edx+0Ch]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC

loc_4401FD:
mov     eax, [esp+1Ch+var_1C]
mov     dword ptr [eax+14h], 0

loc_440207:
add     esp, 4

def_440D56:             ; jumptable 00440D56 default case
pop     ebp

def_440601:             ; jumptable 00440601 default case
pop     edi             ; jumptable 004412B9 default case
; jumptable 004415E9 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4400E4 endp




sub_440211 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+408h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     al, [ecx+3]
and     al, 0F0h
cmp     al, 50h ; 'P'
jz      short loc_44024A
mov     word ptr [ecx+54h], 0
mov     al, [ecx+0Ch]
and     al, 0Fh
cbw
shl     eax, 9
and     ah, 0Fh
mov     [ecx+56h], ax
mov     word ptr [ecx+58h], 0

loc_44024A:
mov     dword ptr [ecx+64h], 0
and     byte ptr [ecx+0Ch], 0F0h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [esi], 0Eh
mov     dword ptr [esi+4], 0
mov     dword ptr [esi+8], 0
mov     dword ptr [esi+14h], 0
mov     dword ptr [esi+18h], 0
lea     eax, [esi+24h]
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     dword ptr [esi+34h], 7FFFFFFFh
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
mov     al, [ecx+3]
and     al, 0F0h
cmp     al, 50h ; 'P'
jz      short loc_4402F5
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax

loc_4402F5:
mov     byte ptr [ecx+8], 1
mov     al, [ecx+3]
and     al, 0F0h
cmp     al, 20h ; ' '
jb      short loc_440320
jbe     short loc_440344
cmp     al, 40h ; '@'
jb      short loc_440317
jbe     short loc_44036F
cmp     al, 50h ; 'P'
jz      loc_44038A
jmp     loc_44039C

loc_440317:
cmp     al, 30h ; '0'
jz      short loc_440351
jmp     loc_44039C

loc_440320:
test    al, al
jbe     short loc_44032D
cmp     al, 10h
jz      short loc_440337
jmp     loc_44039C

loc_44032D:
mov     byte ptr [ecx+9], 0

loc_440331:
xor     ebx, ebx
xor     edx, edx
jmp     short loc_440395

loc_440337:
mov     byte ptr [ecx+9], 0Eh
xor     ebx, ebx
mov     edx, 1
jmp     short loc_440395

loc_440344:
mov     byte ptr [ecx+9], 0Dh
xor     ebx, ebx
mov     edx, 0Ch
jmp     short loc_440395

loc_440351:
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+9], 10h
mov     ah, [esi]
and     ah, 0D9h
mov     [esi], ah
mov     dl, ah
or      dl, 20h
mov     [esi], dl
xor     ebx, ebx
mov     edx, 0Ah
jmp     short loc_440395

loc_44036F:
and     byte ptr [ecx], 0FDh
mov     byte ptr [ecx+9], 0Fh
mov     byte ptr [ecx+0Dh], 0
mov     bl, [esi]
and     bl, 0D9h
mov     [esi], bl
mov     bh, bl
or      bh, 20h
mov     [esi], bh
jmp     short loc_440331

loc_44038A:
mov     byte ptr [ecx+9], 0Bh
xor     ebx, ebx
mov     edx, 25h ; '%'

loc_440395:
mov     eax, ecx
call    sub_4DE96B

loc_44039C:
mov     word ptr [ecx+0Ah], 0
and     byte ptr [ecx+3], 0Fh
cmp     byte ptr [ecx+0Ch], 0
jz      loc_440443
call    sub_4DE043
mov     [esi+38h], eax
test    eax, eax
jz      loc_440443
mov     byte ptr [eax], 1
mov     eax, [esi+38h]
mov     byte ptr [eax+2], 6
mov     eax, [esi+38h]
mov     byte ptr [eax+3], 80h
mov     eax, [esi+38h]
mov     dx, [ecx+14h]
mov     [eax+14h], dx
mov     dx, [ecx+16h]
sub     edx, 64h ; 'd'
mov     eax, [esi+38h]
mov     [eax+16h], dx
mov     eax, [esi+38h]
mov     dx, [ecx+18h]
mov     [eax+18h], dx
mov     eax, [esi+38h]
mov     edx, [eax+12h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+1Ch], edx
mov     eax, [esi+38h]
mov     edx, [eax+14h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+20h], edx
mov     eax, [esi+38h]
mov     edx, [eax+16h]
sar     edx, 10h
shl     edx, 10h
mov     [eax+24h], edx
mov     eax, [esi+38h]
mov     byte ptr [eax+8], 4
mov     eax, [esi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [esi+38h]
mov     dword ptr [eax+0A0h], 10h

loc_440443:
mov     word ptr [ecx+15Eh], 4210h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_440211 endp

align 4
jpt_4404BA dd offset loc_4404CD ; jump table for switch statement
dd offset loc_4404CD
dd offset loc_4404CD
dd offset loc_4404C1
dd offset loc_4404E8
dd offset loc_4404E8
dd offset loc_4404E8
dd offset def_4404BA
dd offset loc_440504
dd offset loc_440504



sub_44047C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
lea     ecx, [eax+408h]
test    byte ptr [ecx], 4
jz      short loc_440495
mov     eax, edx
call    sub_441A5A

loc_440495:
xor     ebx, ebx
mov     bl, [edx+9]
mov     eax, edx
call    ds:funcs_44049C[ebx*4]
test    byte ptr [ecx], 1
jz      loc_440547
mov     al, [edx+9]
sub     al, 5           ; switch 10 cases
cmp     al, 9
ja      short def_4404BA ; jumptable 004404BA default case, case 12
and     eax, 0FFh
jmp     jpt_4404BA[eax*4] ; switch jump

loc_4404C1:             ; jumptable 004404BA case 8
mov     eax, edx
call    sub_4DE2F6
jmp     loc_44053E

loc_4404CD:             ; jumptable 004404BA cases 5-7
cmp     byte ptr [edx+3], 2
jnb     short loc_4404E2
cmp     byte ptr [edx+0Ch], 0
jnz     short loc_4404E2

loc_4404D9:
mov     byte ptr [edx+9], 3
jmp     loc_44053E

loc_4404E2:
mov     byte ptr [edx+9], 2
jmp     short loc_44053E

loc_4404E8:             ; jumptable 004404BA cases 9-11
cmp     word ptr [edx+6Eh], 0
jle     short loc_4404FB
mov     word ptr [edx+66h], 80h
mov     byte ptr [edx+9], 5
jmp     short loc_44053E

loc_4404FB:
and     byte ptr [ecx], 0FBh
mov     byte ptr [edx+9], 8
jmp     short loc_44053E

loc_440504:             ; jumptable 004404BA cases 13,14
mov     bh, [edx+0Dh]
test    bh, bh
jz      short def_4404BA ; jumptable 004404BA default case, case 12
mov     al, bh
dec     al
mov     [edx+0Dh], al
jmp     short loc_44053E

def_4404BA:             ; jumptable 004404BA default case, case 12
test    byte ptr [ecx], 10h
jz      short loc_440527
cmp     byte ptr [edx+3], 2
jnb     short loc_4404E2
cmp     byte ptr [edx+0Ch], 0
jz      short loc_4404D9
jmp     short loc_4404E2

loc_440527:
test    byte ptr [edx+3], 1
jz      short loc_440533
mov     byte ptr [edx+9], 0
jmp     short loc_44053E

loc_440533:
mov     byte ptr [edx+9], 1
mov     eax, edx
call    sub_4419A4

loc_44053E:
mov     word ptr [edx+0Ah], 0
and     byte ptr [ecx], 0FEh

loc_440547:
cmp     byte ptr [edx+0Ch], 0
jz      short loc_44059E
mov     eax, [ecx+38h]
mov     bx, [edx+14h]
mov     [eax+14h], bx
mov     bx, [edx+16h]
sub     ebx, 64h ; 'd'
mov     eax, [ecx+38h]
mov     [eax+16h], bx
mov     eax, [ecx+38h]
mov     dx, [edx+18h]
mov     [eax+18h], dx
mov     edx, [ecx+38h]
mov     eax, [edx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     edx, [ecx+38h]
mov     eax, [edx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     edx, [ecx+38h]
mov     eax, [edx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax

loc_44059E:
mov     si, [ecx+0Ah]
test    si, si
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     edi, esi
dec     edi
mov     [ecx+0Ah], di
jmp     def_440601      ; jumptable 00440601 default case
sub_44047C endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_4405B7 proc near
push    edx
lea     edx, [eax+408h]
cmp     byte ptr [eax+0Ch], 0
jz      short loc_4405CB
mov     edx, [edx+38h]
mov     byte ptr [edx+8], 0

loc_4405CB:
call    sub_4DE2F6
pop     edx
retn
sub_4405B7 endp

align 4
jpt_440601 dd offset loc_440608 ; jump table for switch statement
dd offset loc_4406A6
dd offset loc_4406C6
dd offset loc_44075E



sub_4405E4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_440601[eax*4] ; switch jump

loc_440608:             ; jumptable 00440601 case 0
and     byte ptr [edi], 0FDh
mov     word ptr [edi+6], 0
mov     byte ptr [esi+0Ch], 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 0
mov     word ptr [edi+4], 40h ; '@'
mov     ax, [edi+4]
mov     [esi+4Eh], ax
mov     word ptr [esi+4Ch], 30h ; '0'
xor     ebx, ebx
jmp     short loc_44066D

loc_440638:
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 83h
movsx   edx, bx
mov     cx, [esi+edx*8+190h]
mov     [eax+1Ch], cx
mov     cx, [esi+edx*8+192h]
mov     [eax+1Eh], cx
mov     dx, [esi+edx*8+194h]
mov     [eax+20h], dx
inc     ebx
cmp     bx, 6
jge     short loc_440676

loc_44066D:
call    sub_4DE13B
test    eax, eax
jnz     short loc_440638

loc_440676:
mov     byte ptr [esi+0FBh], 0FFh
mov     byte ptr [esi+103h], 0FFh
mov     byte ptr [esi+107h], 0FFh
mov     byte ptr [esi+10Bh], 0FFh
mov     byte ptr [esi+10Fh], 0FFh
lea     edx, [esi+190h]
mov     eax, esi
call    sub_4AF9F8

loc_4406A6:             ; jumptable 00440601 case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jg      short loc_4406BA
mov     byte ptr [esi+0Ah], 2
jmp     short loc_4406C6 ; jumptable 00440601 case 2

loc_4406BA:
mov     ax, [esi+4Ch]
sub     eax, ecx
add     eax, eax
mov     [esi+46h], ax

loc_4406C6:             ; jumptable 00440601 case 2
or      byte ptr [esi], 2
mov     ax, [edi+6]
inc     eax
xor     ah, ah
and     al, 3
mov     [edi+6], ax
cmp     word ptr [esi+6Eh], 0
jg      short loc_4406E5
test    ax, ax
jnz     short loc_4406E5
and     byte ptr [esi], 0FDh

loc_4406E5:
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
xor     ecx, ecx
xor     edx, edx
mov     eax, esi
call    sub_4DD43B
sub     word ptr [esi+16h], 34h ; '4'
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, esi
call    sub_42DE56
test    ah, 10h
jz      short loc_440748
mov     cl, [esi+0Bh]
inc     cl
mov     [esi+0Bh], cl
cmp     cl, 3
jnz     short loc_44072E
mov     word ptr [edi+4], 16h
mov     [esi+0Ah], cl
jmp     short loc_440748

loc_44072E:
or      byte ptr [esi], 2
mov     byte ptr [esi+0Ah], 1
sar     word ptr [esi+4Ch], 1
mov     bx, [esi+4Eh]
sar     bx, 1
mov     [esi+4Eh], bx
mov     [edi+4], bx

loc_440748:
add     word ptr [esi+16h], 34h ; '4'
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_44075E:             ; jumptable 00440601 case 3
xor     byte ptr [esi], 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
or      byte ptr [edi], 1
jmp     def_440601      ; jumptable 00440601 default case
sub_4405E4 endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_44077B proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
test    bl, bl
jbe     short loc_440793
cmp     bl, 1
jz      short loc_4407A4
pop     edx
pop     ebx
retn

loc_440793:
mov     word ptr [eax+4], 78h ; 'x'
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0

loc_4407A4:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4407B5
or      byte ptr [eax], 1

loc_4407B5:
pop     edx
pop     ebx
retn
sub_44077B endp




sub_4407B8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_4407D6
cmp     dl, 1
jz      short loc_4407E7
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4407D6:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 1
mov     word ptr [eax+4], 5Ah ; 'Z'

loc_4407E7:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4407FD
or      byte ptr [eax], 1
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4407FD:
mov     ax, [ebp+56h]
add     ax, [ebp+66h]
and     ah, 0Fh
mov     [ebp+56h], ax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 30h ; '0'

loc_440815:
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+14h]
sar     eax, 10h
mov     ecx, [ebp+2Ch]
sar     ecx, 10h
sub     eax, ecx
cmp     eax, 10h

loc_44084D:
jle     short loc_440870
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440870:
test    dh, 0Fh
jz      def_440D56      ; jumptable 00440D56 default case
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     def_440D56      ; jumptable 00440D56 default case
sub_4407B8 endp




sub_44088C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
add     eax, 408h
mov     dl, [ebp+0Ah]
test    dl, dl
jbe     short loc_4408AA
cmp     dl, 1
jz      short loc_4408BB
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4408AA:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Ah
mov     word ptr [eax+4], 0Fh

loc_4408BB:
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short loc_4408D1
or      byte ptr [eax], 1
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4408D1:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 80h
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ecx, [ebp+14h]
sar     ecx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     ecx, eax
cmp     ecx, 10h
jmp     loc_44084D
sub_44088C endp




sub_440917 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     edi, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_44093A
cmp     al, 1
jz      short loc_44096E
jmp     def_440D56      ; jumptable 00440D56 default case

loc_44093A:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 8
mov     word ptr [ebp+66h], 10h
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440960
mov     dword ptr [esi+34h], 80000h
mov     byte ptr [ebp+0ACh], 9
jmp     short loc_44096E

loc_440960:
mov     dword ptr [esi+34h], 8000h
mov     byte ptr [ebp+0ACh], 2

loc_44096E:
mov     dl, [esi]
test    dl, 10h
jnz     short loc_440981
mov     bl, dl
or      bl, 1
mov     [esi], bl
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440981:
push    400h
mov     eax, [ebp+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebp+1Ch]
mov     edx, [edi+54h]
sar     edx, 10h
lea     eax, [edi+1Ch]
mov     ebx, 800h
call    sub_4DE689
test    eax, eax
jz      short loc_4409C8
mov     word ptr [ebp+66h], 80h
mov     byte ptr [ebp+9], 5

loc_4409B1:
mov     word ptr [ebp+0Ah], 0
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
jmp     def_440D56      ; jumptable 00440D56 default case

loc_4409C8:
mov     ecx, [ebp+64h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [ebp+14h]
call    sub_4DE552
mov     edx, eax
test    ax, ax
jge     short loc_4409EB
cwde
neg     eax
jmp     short loc_4409EC

loc_4409EB:
cwde

loc_4409EC:
cmp     eax, 10h
jge     short loc_440A0E
mov     eax, [ebp+80h]
cmp     eax, [esi+34h]
jnb     short loc_440A0E
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440A08
mov     byte ptr [ebp+9], 6
jmp     short loc_4409B1

loc_440A08:
mov     byte ptr [ebp+9], 7
jmp     short loc_4409B1

loc_440A0E:
mov     ax, [ebp+56h]
add     eax, edx
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
jmp     loc_440815
sub_440917 endp




sub_440A2D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
mov     edi, offset byte_5F8364
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_440A50
cmp     al, 1
jz      short loc_440A7D
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440A50:
mov     byte ptr [ebp+0Ah], 1
mov     word ptr [ebp+44h], 0Ch
mov     word ptr [ebp+66h], 18h
mov     byte ptr [ebp+0ACh], 9
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440A76
mov     dword ptr [esi+34h], 80000h
jmp     short loc_440A7D

loc_440A76:
mov     dword ptr [esi+34h], 8000h

loc_440A7D:
mov     dl, [esi]
test    dl, 10h
jnz     short loc_440A90
mov     bl, dl
or      bl, 1
mov     [esi], bl
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440A90:
mov     ecx, [ebp+64h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [edi+14h]
lea     eax, [ebp+14h]
call    sub_4DE552
test    ax, ax
jge     short loc_440AB3
movsx   ecx, ax
neg     ecx
jmp     short loc_440AB6

loc_440AB3:
movsx   ecx, ax

loc_440AB6:
cmp     cx, 10h
jge     short loc_440AEE
mov     eax, [ebp+80h]
cmp     eax, [esi+34h]
jnb     short loc_440AEE
cmp     byte ptr [ebp+0Ch], 0
jz      short loc_440AD3
mov     byte ptr [ebp+9], 6
jmp     short loc_440AD7

loc_440AD3:
mov     byte ptr [ebp+9], 7

loc_440AD7:
mov     word ptr [ebp+0Ah], 0
mov     al, [ebp+0ADh]
mov     [ebp+0ACh], al
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440AEE:
mov     ecx, [ebp+64h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
lea     edx, [ebp+14h]
lea     eax, [edi+14h]
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ecx, [ebp+14h]
sar     ecx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     ecx, eax
cmp     ecx, 10h
jle     short loc_440B78
mov     byte ptr [ebp+9], 0Ch
mov     word ptr [ebp+0Ah], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440B78:
test    dh, 0Fh
jz      short loc_440B90
mov     ax, [ebp+56h]
add     ah, 8
and     ah, 0Fh
mov     [ebp+56h], ax
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440B90:
test    word ptr [esi+2], 1FFh
jnz     def_440D56      ; jumptable 00440D56 default case
mov     byte ptr [ebp+9], 0Ah
mov     word ptr [ebp+0Ah], 0
jmp     def_440D56      ; jumptable 00440D56 default case
sub_440A2D endp




sub_440BAB proc near
push    ebx
push    edx
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
test    bl, bl
jbe     short loc_440BC2
cmp     bl, 1
jz      short loc_440BD3
pop     edx
pop     ebx
retn

loc_440BC2:
mov     byte ptr [eax+0Ah], 1
mov     byte ptr [eax+0ACh], 1
mov     word ptr [edx+8], 0

loc_440BD3:
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jge     short loc_440BE7
or      byte ptr [edx], 1
pop     edx
pop     ebx
retn

loc_440BE7:
mov     dx, [eax+56h]
add     dx, [eax+66h]
and     dh, 0Fh
mov     [eax+56h], dx
pop     edx
pop     ebx
retn
sub_440BAB endp




sub_440BF9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
test    al, al
jbe     short loc_440C16
cmp     al, 1
jz      short loc_440C27
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_440C16:
mov     byte ptr [esi+0ACh], 1
mov     byte ptr [esi+0Ah], 1
mov     word ptr [edi+8], 0

loc_440C27:
cmp     byte ptr [esi+3], 2
jnb     short loc_440C49
cmp     byte ptr [esi+0Ch], 0
jnz     short loc_440C49
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [esi+14h]
mov     eax, (offset dword_5F8376+2)
jmp     short loc_440C5D

loc_440C49:
mov     ecx, [esi+64h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     edx, (offset dword_5F8376+2)

loc_440C5D:
call    sub_4DE552
test    ax, ax
jnz     short loc_440C6F

loc_440C67:
or      byte ptr [edi], 1
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_440C6F:
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
jmp     def_440601      ; jumptable 00440601 default case
sub_440BF9 endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case



sub_440C7F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_440C9E
jbe     short loc_440CB9
cmp     bl, 2
jz      short loc_440D01
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_440C9E:
test    bl, bl
jnz     short loc_440D12
mov     word ptr [eax+4], 0Fh
mov     byte ptr [edx+0ACh], 30h ; '0'
mov     byte ptr [edx+0Ah], 1
mov     word ptr [eax+8], 0

loc_440CB9:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_440D12
mov     ecx, [eax+38h]
mov     byte ptr [ecx+8], 0
mov     ecx, [eax+38h]
mov     bx, [edx+56h]
mov     [ecx+64h], bx
mov     ecx, [eax+38h]
mov     dword ptr [ecx+9Ch], 20h ; ' '
mov     ecx, [eax+38h]
mov     dword ptr [ecx+0A0h], 10h
mov     byte ptr [edx+0Ch], 0
mov     word ptr [eax+4], 8
mov     byte ptr [edx+0Ah], 2

loc_440D01:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short loc_440D12
or      byte ptr [eax], 1

loc_440D12:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_440C7F endp

align 4
jpt_440D56 dd offset loc_440D5D ; jump table for switch statement
dd offset loc_440D6E
dd offset loc_440DAE
dd offset loc_440E2A
dd offset loc_440EBB



sub_440D2C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
lea     esi, [eax+408h]
test    byte ptr [esi+17h], 2
jz      short loc_440D46
mov     word ptr [esi+8], 0

loc_440D46:
mov     al, [ebp+0Ah]
cmp     al, 4           ; switch 5 cases
ja      def_440D56      ; jumptable 00440D56 default case
and     eax, 0FFh
jmp     jpt_440D56[eax*4] ; switch jump

loc_440D5D:             ; jumptable 00440D56 case 0
mov     word ptr [esi+4], 0Fh
mov     byte ptr [ebp+0ACh], 15h
mov     byte ptr [ebp+0Ah], 1

loc_440D6E:             ; jumptable 00440D56 case 1
mov     bx, [esi+4]
dec     ebx
mov     [esi+4], bx
test    bx, bx
jge     def_440D56      ; jumptable 00440D56 default case
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0ACh], 18h
mov     word ptr [ebp+44h], 0Fh
mov     word ptr [esi+4], 0Fh
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+0Ah]
xor     ah, ah
mov     [esi+8], ax

loc_440DAE:             ; jumptable 00440D56 case 2
dec     word ptr [esi+4]
test    byte ptr [esi+17h], 2
jz      short loc_440DBE
mov     word ptr [ebp+44h], 0

loc_440DBE:
mov     eax, 8
sub     ax, [esi+4]
shl     eax, 2
mov     [ebp+46h], ax
mov     ebx, [ebp+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440D56      ; jumptable 00440D56 default case
test    ah, 0Fh
jz      short loc_440E05
mov     word ptr [ebp+44h], 0

loc_440E05:
test    dh, 10h
jz      def_440D56      ; jumptable 00440D56 default case
mov     word ptr [esi+4], 0Fh
mov     word ptr [esi+8], 0
mov     byte ptr [ebp+0ACh], 17h
mov     byte ptr [ebp+0Ah], 3
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440E2A:             ; jumptable 00440D56 case 3
mov     cx, [esi+4]
dec     ecx
mov     [esi+4], cx
test    cx, cx
jge     short loc_440E4B
mov     byte ptr [ebp+0Ah], 4
mov     word ptr [esi+4], 12h
mov     byte ptr [ebp+0ACh], 23h ; '#'
jmp     short loc_440E5B

loc_440E4B:
mov     ax, [ebp+44h]
test    ax, ax
jz      short loc_440E5B
mov     edx, eax
dec     edx
mov     [ebp+44h], dx

loc_440E5B:
mov     edx, [ebp+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
xor     ebx, ebx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     edx, [ebp+14h]
sar     edx, 10h
mov     eax, [ebp+2Ch]
sar     eax, 10h
sub     edx, eax
cmp     edx, 10h
jle     def_440D56      ; jumptable 00440D56 default case
lea     edi, [ebp+14h]
lea     esi, [ebp+2Ch]
movsd
movsd
lea     edi, [ebp+1Ch]
lea     esi, [ebp+34h]
movsd
movsd
movsd
movsd
jmp     def_440D56      ; jumptable 00440D56 default case

loc_440EBB:             ; jumptable 00440D56 case 4
mov     dx, [esi+4]
dec     edx
mov     [esi+4], dx
test    dx, dx
jge     def_440D56      ; jumptable 00440D56 default case
or      byte ptr [esi], 1
jmp     def_440D56      ; jumptable 00440D56 default case
sub_440D2C endp




sub_440ED5 proc near
push    ebx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     bl, [edx+0Ah]
cmp     bl, 1
jb      short loc_440EF2
jbe     short loc_440F17
cmp     bl, 2
jz      short loc_440F39
pop     esi
pop     edx
pop     ebx
retn

loc_440EF2:
test    bl, bl
jnz     short loc_440F4A
and     byte ptr [eax], 0F7h
mov     word ptr [eax+4], 0Ah
mov     word ptr [eax+8], 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 20h ; ' '
mov     byte ptr [edx+110h], 7

loc_440F17:
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short loc_440F39
mov     word ptr [eax+4], 0Ah
mov     byte ptr [edx+0ACh], 8
mov     byte ptr [edx+110h], 6

loc_440F39:
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short loc_440F4A
or      byte ptr [eax], 9

loc_440F4A:
pop     esi
pop     edx
pop     ebx
retn
sub_440ED5 endp

align 10h
jpt_440F7D dd offset loc_440F84 ; jump table for switch statement
dd offset loc_440FEB
dd offset loc_441035
dd offset loc_44109E



sub_440F60 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
and     eax, 0FFh
jmp     jpt_440F7D[eax*4] ; switch jump

loc_440F84:             ; jumptable 00440F7D case 0
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+8], 0
and     byte ptr [esi+57h], 0Fh
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 21h ; '!'
mov     word ptr [esi+44h], 0Dh
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
cmp     byte ptr [esi+0Ch], 0
jz      short loc_440FEB ; jumptable 00440F7D case 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     eax, [edi+38h]
mov     dx, [esi+56h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_440FEB:             ; jumptable 00440F7D case 1
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_441024
cmp     cx, 2
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_441024:
mov     word ptr [edi+4], 7
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 22h ; '"'

loc_441035:             ; jumptable 00440F7D case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 4
sub     eax, ebx
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
test    ah, 0Fh
jz      short loc_44107F
mov     word ptr [esi+44h], 0

loc_44107F:
test    dh, 10h
jz      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
cmp     word ptr [edi+4], 0
jg      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 12h
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 23h ; '#'
jmp     short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_44109E:             ; jumptable 00440F7D case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx

loc_4410AA:             ; jumptable 00440F7D default case
jge     short def_440F7D ; jumptable 00441115 default case
or      byte ptr [edi], 1
mov     byte ptr [esi+110h], 6
or      byte ptr [edi], 8

def_440F7D:             ; jumptable 00440F7D default case
or      byte ptr [esi], 2 ; jumptable 00441115 default case
mov     ax, [edi+6]
inc     eax
xor     ah, ah
and     al, 3
mov     [edi+6], ax
cmp     word ptr [esi+6Eh], 0
jg      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    ax, ax
jnz     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     byte ptr [esi], 0FDh
jmp     def_440601      ; jumptable 00440601 default case
sub_440F60 endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case
align 4
jpt_441115 dd offset loc_44111C ; jump table for switch statement
dd offset loc_441191
dd offset loc_4411DB
dd offset loc_441250
dd offset loc_441273



sub_4410FC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_440F7D ; jumptable 00440F7D default case
; jumptable 00441115 default case
and     eax, 0FFh
jmp     jpt_441115[eax*4] ; switch jump

loc_44111C:             ; jumptable 00441115 case 0
and     byte ptr [edi], 0F7h
mov     word ptr [edi+4], 4
mov     word ptr [edi+6], 0
mov     word ptr [edi+8], 0
and     byte ptr [esi+57h], 0Fh
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 25h ; '%'
mov     word ptr [esi+44h], 0FFF5h
mov     word ptr [esi+46h], 0FFE8h
mov     byte ptr [esi+110h], 7
cmp     byte ptr [esi+0Ch], 0
jz      short loc_441191 ; jumptable 00441115 case 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     ax, [esi+56h]
add     ah, 8
and     ah, 0Fh
mov     edx, eax
mov     eax, [edi+38h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_441191:             ; jumptable 00441115 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      short loc_4411CA
cmp     dx, 2
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     ebx, [esi+44h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_4411CA:
mov     word ptr [edi+4], 0Bh
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 26h ; '&'

loc_4411DB:             ; jumptable 00441115 case 2
dec     word ptr [edi+4]
mov     eax, 8
sub     ax, [edi+4]
shl     eax, 3
mov     [esi+46h], ax
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
test    ah, 0Fh
jz      short loc_441226
mov     word ptr [esi+44h], 0

loc_441226:
test    dh, 10h
jz      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
cmp     word ptr [edi+4], 0
jg      def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 26h ; '&'
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 27h ; '''
jmp     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case

loc_441250:             ; jumptable 00441115 case 3
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440F7D      ; jumptable 00440F7D default case
; jumptable 00441115 default case
mov     word ptr [edi+4], 11h
mov     byte ptr [esi+0Ah], 4
mov     byte ptr [esi+0ACh], 28h ; '('

loc_441273:             ; jumptable 00441115 case 4
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jmp     loc_4410AA
sub_4410FC endp

jpt_4412B9 dd offset loc_4412C0 ; jump table for switch statement
dd offset loc_4412E3
dd offset loc_441306
dd offset loc_44132D
dd offset loc_4413FE
dd offset loc_441428



sub_44129C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 5           ; switch 6 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_4412B9[eax*4] ; switch jump

loc_4412C0:             ; jumptable 004412B9 case 0
mov     word ptr [edi+4], 5
mov     word ptr [edi+8], 0
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 10h
mov     word ptr [esi+44h], 8
mov     word ptr [esi+46h], 0FFF2h

loc_4412E3:             ; jumptable 004412B9 case 1
mov     ax, [edi+4]
dec     eax
mov     [edi+4], ax
test    ax, ax
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     word ptr [edi+4], 0Eh
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 11h

loc_441306:             ; jumptable 004412B9 case 2
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
test    bx, bx
jge     short loc_441320
mov     byte ptr [esi+0Ah], 3
mov     word ptr [esi+44h], 0
jmp     short loc_44132D ; jumptable 004412B9 case 3

loc_441320:
mov     eax, 7
sub     eax, ebx
add     eax, eax
mov     [esi+46h], ax

loc_44132D:             ; jumptable 004412B9 case 3
cmp     byte ptr [esi+0Ah], 3
jnz     short loc_441349
mov     bx, [edi+4]
dec     ebx
mov     [edi+4], bx
mov     eax, 7
sub     eax, ebx
add     eax, eax
mov     [esi+46h], ax

loc_441349:
mov     ebx, [esi+44h]
sar     ebx, 10h
shl     ebx, 4
mov     edx, [esi+42h]
sar     edx, 10h
shl     edx, 4
xor     ecx, ecx
mov     eax, esi
call    sub_4DD43B
mov     eax, esi
call    sub_42DE56
mov     edx, eax
test    eax, eax
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    ah, 0Fh
jz      short loc_441380
mov     word ptr [esi+44h], 0

loc_441380:
test    dh, 10h
jz      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
test    byte ptr [edi+2], 0Fh
jnz     short loc_4413E8
mov     word ptr [edi+4], 0Eh
mov     byte ptr [esi+0Ah], 4
add     byte ptr [esi+0ACh], 3
cmp     byte ptr [esi+0Ch], 0
jz      short loc_4413DC
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     dx, [esi+56h]
add     dh, 8
and     dh, 0Fh
mov     eax, [edi+38h]
mov     [eax+64h], dx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 20h ; ' '
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 10h
mov     byte ptr [esi+0Ch], 0

loc_4413DC:
mov     byte ptr [esi+110h], 7
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4413E8:
mov     word ptr [edi+4], 7
mov     byte ptr [esi+0Ah], 5
add     byte ptr [esi+0ACh], 2
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4413FE:             ; jumptable 004412B9 case 4
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     byte ptr [esi+110h], 6
mov     word ptr [edi+4], 26h ; '&'
mov     byte ptr [esi+0Ah], 5
mov     byte ptr [esi+0ACh], 28h ; '('

loc_441428:             ; jumptable 004412B9 case 5
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
jmp     loc_440C67
sub_44129C endp

align 10h
jpt_44146D dd offset loc_441474 ; jump table for switch statement
dd offset loc_44148B
dd offset loc_4414B4
dd offset loc_4414D3



sub_441450 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
add     eax, 408h
mov     cl, [edx+0Ah]
cmp     cl, 3           ; switch 4 cases
ja      def_44146D      ; jumptable 0044146D default case
and     ecx, 0FFh
jmp     jpt_44146D[ecx*4] ; switch jump

loc_441474:             ; jumptable 0044146D case 0
mov     word ptr [eax+4], 0Eh
mov     word ptr [eax+8], 0
mov     byte ptr [edx+0Ah], 1
mov     byte ptr [edx+0ACh], 0Ch

loc_44148B:             ; jumptable 0044146D case 1
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_44146D ; jumptable 0044146D default case
mov     cx, [eax+2]
xor     ch, ch
and     cl, 1Fh
add     ecx, 8
mov     [eax+4], cx
mov     byte ptr [edx+0Ah], 2
mov     byte ptr [edx+0ACh], 0Dh

loc_4414B4:             ; jumptable 0044146D case 2
mov     si, [eax+4]
dec     esi
mov     [eax+4], si
test    si, si
jge     short def_44146D ; jumptable 0044146D default case
mov     word ptr [eax+4], 7
mov     byte ptr [edx+0Ah], 3
mov     byte ptr [edx+0ACh], 0Eh

loc_4414D3:             ; jumptable 0044146D case 3
mov     bx, [eax+4]
dec     ebx
mov     [eax+4], bx
test    bx, bx
jge     short def_44146D ; jumptable 0044146D default case
or      byte ptr [eax], 1

def_44146D:             ; jumptable 0044146D default case
test    byte ptr [eax], 10h
jz      short loc_4414F0
mov     byte ptr [edx+0Dh], 0
or      byte ptr [eax], 1

loc_4414F0:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_441450 endp




sub_4414F5 proc near
and     byte ptr [eax], 0FDh
retn
sub_4414F5 endp

align 4
jpt_44152E dd offset def_44152E ; jump table for switch statement
dd offset loc_441535
dd offset loc_44155D
dd offset def_44152E
dd offset loc_441585
dd offset loc_441596



sub_441514 proc near
push    ebx
push    ecx
push    edx
push    edi
lea     edx, [eax+408h]
mov     bl, [eax+0Ah]
cmp     bl, 5           ; switch 6 cases
ja      def_44152E      ; jumptable 0044152E default case, cases 0,3
xor     ecx, ecx
mov     cl, bl
jmp     jpt_44152E[ecx*4] ; switch jump

loc_441535:             ; jumptable 0044152E case 1
or      byte ptr [eax], 2
mov     byte ptr [eax+0Ah], 2
mov     byte ptr [eax+0ACh], 11h
mov     word ptr [edx+4], 8
mov     word ptr [edx+8], 0
mov     byte ptr [eax+10Bh], 0FFh
mov     byte ptr [eax+10Fh], 0FFh

loc_44155D:             ; jumptable 0044152E case 2
mov     di, [edx+4]
dec     edi
mov     [edx+4], di
test    di, di
jge     short loc_44157B
mov     byte ptr [eax+0Ah], 3
mov     byte ptr [eax+0ACh], 0Ah
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_44157B:
sub     word ptr [eax+16h], 4
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_441585:             ; jumptable 0044152E case 4
mov     byte ptr [eax+0Ah], 5
mov     byte ptr [eax+0ACh], 11h
mov     word ptr [edx+4], 8

loc_441596:             ; jumptable 0044152E case 5
mov     bx, [edx+4]
dec     ebx
mov     [edx+4], bx
test    bx, bx
jl      short loc_4415AE
add     word ptr [eax+16h], 8
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4415AE:
mov     byte ptr [eax+0Ah], 6
and     byte ptr [eax], 0FDh

def_44152E:             ; jumptable 0044152E default case, cases 0,3
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_441514 endp

align 4
jpt_4415E9 dd offset loc_4415F0 ; jump table for switch statement
dd offset loc_44164F
dd offset loc_441725
dd offset loc_441748



sub_4415CC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+408h]
mov     al, [eax+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
and     eax, 0FFh
jmp     jpt_4415E9[eax*4] ; switch jump

loc_4415F0:             ; jumptable 004415E9 case 0
mov     byte ptr [esi+0Dh], 0
call    sub_4DE043
mov     [edi+38h], eax
test    eax, eax
jnz     short loc_44160F
mov     byte ptr [esi+9], 0Fh
mov     word ptr [esi+0Ah], 0
jmp     loc_441779

loc_44160F:
mov     byte ptr [eax], 1
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 4
mov     eax, [edi+38h]
mov     byte ptr [eax+2], 6
mov     eax, [edi+38h]
mov     byte ptr [eax+3], 80h
or      byte ptr [esi], 2
mov     byte ptr [esi+0Ah], 1
mov     byte ptr [esi+0ACh], 30h ; '0'
mov     word ptr [edi+4], 0Fh
mov     word ptr [edi+8], 0
mov     byte ptr [esi+10Bh], 0FFh
mov     byte ptr [esi+10Fh], 0FFh

loc_44164F:             ; jumptable 004415E9 case 1
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jl      loc_4416EB
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     eax, [esi+14h]
mov     ecx, 40h ; '@'
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
sub     word ptr [esi+16h], 4
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     eax, [edi+38h]
mov     bx, [esi+14h]
mov     [eax+14h], bx
mov     bx, [esi+16h]
sub     ebx, 64h ; 'd'
mov     eax, [edi+38h]
mov     [eax+16h], bx
mov     eax, [edi+38h]
mov     bx, [esi+18h]
mov     [eax+18h], bx
mov     esi, [edi+38h]
mov     eax, [esi+12h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+1Ch], eax
mov     esi, [edi+38h]
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
mov     esi, [edi+38h]
mov     eax, [esi+16h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+24h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_4416EB:
mov     eax, [edi+38h]
mov     byte ptr [eax+8], 0
mov     eax, [edi+38h]
mov     bx, [esi+56h]
mov     [eax+64h], bx
mov     eax, [edi+38h]
mov     dword ptr [eax+9Ch], 18h
mov     eax, [edi+38h]
mov     dword ptr [eax+0A0h], 8
mov     byte ptr [esi+0Ch], 0
mov     word ptr [edi+4], 8
mov     byte ptr [esi+0Ah], 2

loc_441725:             ; jumptable 004415E9 case 2
mov     dx, [edi+4]
dec     edx
mov     [edi+4], dx
test    dx, dx
jge     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case
mov     byte ptr [esi+0Ah], 3
mov     byte ptr [esi+0ACh], 11h
mov     word ptr [edi+4], 8

loc_441748:             ; jumptable 004415E9 case 3
mov     cx, [edi+4]
dec     ecx
mov     [edi+4], cx
test    cx, cx
jl      short loc_44176C
add     word ptr [esi+16h], 8
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     def_440601      ; jumptable 00440601 default case
; jumptable 004412B9 default case
; jumptable 004415E9 default case

loc_44176C:
mov     byte ptr [esi+9], 0Fh
mov     word ptr [esi+0Ah], 0
and     byte ptr [esi], 0FDh

loc_441779:
mov     byte ptr [esi+0Dh], 1
jmp     def_440601      ; jumptable 00440601 default case
sub_4415CC endp         ; jumptable 004412B9 default case
; jumptable 004415E9 default case
align 4
jpt_4417C0 dd offset loc_4417C7 ; jump table for switch statement
dd offset loc_441805
dd offset loc_44192D
dd offset loc_44194F



sub_441794 proc near

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
add     eax, 408h
mov     [esp+20h+var_20], eax
mov     eax, ds:dword_55A00C
mov     [esp+20h+var_1C], eax
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_4417C0      ; jumptable 004417C0 default case
and     eax, 0FFh
jmp     jpt_4417C0[eax*4] ; switch jump

loc_4417C7:             ; jumptable 004417C0 case 0
or      byte ptr [ebp+0], 2
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0Dh], 0
mov     byte ptr [ebp+0ACh], 30h ; '0'
mov     byte ptr [ebp+10Bh], 0FFh
mov     byte ptr [ebp+10Fh], 0FFh
mov     eax, [esp+20h+var_20]
mov     word ptr [eax+4], 0Fh
mov     word ptr [eax+8], 0
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+9], 5
mov     word ptr [eax+0Ah], 0

loc_441805:             ; jumptable 004417C0 case 1
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jl      loc_4418A9
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [ebp+0Bh]
sar     edx, 18h
mov     edx, ds:dword_559FEC[edx*4]
add     edx, 14h
lea     eax, [ebp+14h]
mov     ecx, 40h ; '@'
call    sub_4DE552
add     ax, [ebp+56h]
and     ah, 0Fh
mov     [ebp+56h], ax
sub     word ptr [ebp+16h], 4
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     ax, [ebp+14h]
mov     edx, [esp+20h+var_1C]
mov     [edx+14h], ax
mov     si, [ebp+16h]
sub     esi, 50h ; 'P'
mov     [edx+16h], si
mov     ax, [ebp+18h]
mov     [edx+18h], ax
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
mov     ax, [ebp+56h]
mov     [edx+56h], ax
jmp     def_4417C0      ; jumptable 004417C0 default case

loc_4418A9:
mov     byte ptr [ebp+0Ah], 2
mov     byte ptr [ebp+0Ch], 0
mov     word ptr [eax+4], 8
mov     eax, [esp+20h+var_1C]
mov     byte ptr [eax+9], 2
mov     word ptr [eax+0Ah], 0
mov     esi, [ebp+0Bh]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
lea     edi, [esi+0C4h]
lea     esi, [esi+190h]
movsd
movsd
mov     esi, [ebp+0Bh]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
sub     word ptr [esi+0C6h], 140h
mov     edx, [ebp+0Bh]
sar     edx, 18h
mov     edx, ds:dword_559FEC[edx*4]
xor     ecx, ecx
mov     ebx, 18h
call    sub_4DD9FD
mov     eax, [ebp+0Bh]
sar     eax, 18h
mov     eax, ds:dword_559FEC[eax*4]
mov     esi, [eax+0Ah]
sar     esi, 18h
mov     esi, ds:dword_559FEC[esi*4]
and     byte ptr [esi+0Fh], 0BFh

loc_44192D:             ; jumptable 004417C0 case 2
mov     eax, [esp+20h+var_20]
mov     dx, [eax+4]
dec     edx
mov     [eax+4], dx
test    dx, dx
jge     short def_4417C0 ; jumptable 004417C0 default case
mov     byte ptr [ebp+0Ah], 3
mov     byte ptr [ebp+0ACh], 11h
mov     word ptr [eax+4], 8

loc_44194F:             ; jumptable 004417C0 case 3
mov     eax, [esp+20h+var_20]
mov     cx, [eax+4]
dec     ecx
mov     [eax+4], cx
test    cx, cx
jl      short loc_441973
add     word ptr [ebp+16h], 8
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
jmp     short def_4417C0 ; jumptable 004417C0 default case

loc_441973:
mov     byte ptr [ebp+9], 0Fh
mov     word ptr [ebp+0Ah], 0
and     byte ptr [ebp+0], 0FDh
mov     byte ptr [ebp+0Dh], 1

def_4417C0:             ; jumptable 004417C0 default case
add     esp, 8
jmp     def_440D56      ; jumptable 00440D56 default case
sub_441794 endp

align 10h
jpt_4419FD dd offset loc_441A04 ; jump table for switch statement
dd offset loc_441A0C
dd offset loc_441A14
dd offset loc_441A1C
dd offset loc_441A34



sub_4419A4 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     esi, [eax+408h]
test    byte ptr [eax+3], 1
jz      short loc_4419C2
mov     eax, offset unk_514EEC
jmp     short loc_4419C7

loc_4419C2:
mov     eax, offset unk_514EF2

loc_4419C7:
xor     ebx, ebx
xor     edx, edx
jmp     short loc_4419D5

loc_4419CD:
inc     edx
inc     eax
cmp     dx, 6
jge     short loc_4419F2

loc_4419D5:
movzx   di, byte ptr [eax]
add     ebx, edi
mov     di, [esi+2]
and     edi, 0Fh
mov     [esp+1Ch+var_1C], edi
xor     edi, edi
mov     di, word ptr [esp+1Ch+var_1C]
movsx   ebp, bx
cmp     edi, ebp
jge     short loc_4419CD

loc_4419F2:             ; switch 5 cases
cmp     dx, 4
ja      short def_4419FD ; jumptable 004419FD default case
xor     eax, eax
mov     ax, dx
jmp     jpt_4419FD[eax*4] ; switch jump

loc_441A04:             ; jumptable 004419FD case 0
mov     word ptr [ecx+66h], 0
jmp     short loc_441A50

loc_441A0C:             ; jumptable 004419FD case 1
mov     word ptr [ecx+66h], 6
jmp     short loc_441A50

loc_441A14:             ; jumptable 004419FD case 2
mov     word ptr [ecx+66h], 0FFFAh
jmp     short loc_441A50

loc_441A1C:             ; jumptable 004419FD case 3
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+66h], 10h

loc_441A2C:
mov     word ptr [esi+4], 40h ; '@'
jmp     short loc_441A50

loc_441A34:             ; jumptable 004419FD case 4
mov     byte ptr [ecx+9], 4
mov     word ptr [ecx+0Ah], 0
mov     word ptr [ecx+66h], 0FFF0h
jmp     short loc_441A2C

def_4419FD:             ; jumptable 004419FD default case
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+0Ah], 0

loc_441A50:
mov     eax, 1
jmp     loc_440207
sub_4419A4 endp




sub_441A5A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     ecx, eax
mov     edi, esp
mov     esi, offset dword_4400DC
movsd
movsd
lea     ebx, [eax+408h]
mov     eax, [ebx+14h]
and     eax, 0FFFFFFh
jz      loc_441B94
test    byte ptr [ebx+17h], 38h
jz      loc_441B94
cmp     word ptr [ecx+6Eh], 0
jg      short loc_441AB5
mov     dh, [ebx]
and     dh, 0F3h
mov     [ebx], dh
mov     al, dh
or      al, 8
mov     [ebx], al
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh

loc_441AB5:
test    byte ptr [ebx], 8
jz      loc_441B8B
add     [ebx+0Ah], ax
test    byte ptr [ebx+17h], 20h
jnz     short loc_441AFD
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
mov     edx, [ebx+8]
sar     edx, 10h
cmp     edx, eax
jge     short loc_441AFD
mov     edx, [ecx+14h]
sar     edx, 10h
mov     eax, ecx
call    sub_42C592
cmp     edx, eax
jz      loc_441B81

loc_441AFD:
lea     edx, [ebx+1Ch]
test    byte ptr [ebx+22h], 1
jz      short loc_441B3F
lea     eax, [ecx+14h]
call    sub_4DDDB4
mov     esi, [ecx+54h]
sar     esi, 10h
movsx   edx, ax
sub     esi, edx
lea     edx, [esi+400h]
and     edx, 0FFFh
cmp     edx, 800h
jge     short loc_441B33
mov     byte ptr [ecx+9], 0Bh
jmp     short loc_441B75

loc_441B33:
mov     byte ptr [ecx+9], 0Ah
add     ah, 8
and     ah, 0Fh
jmp     short loc_441B75

loc_441B3F:
mov     eax, esp
call    sub_4DDDB4
mov     edx, [ecx+54h]
sar     edx, 10h
movsx   esi, ax
sub     esi, edx
add     esi, 400h
and     esi, 0FFFh
cmp     esi, 800h
jge     short loc_441B6B
mov     byte ptr [ecx+9], 0Ah
jmp     short loc_441B75

loc_441B6B:
mov     byte ptr [ecx+9], 0Bh
add     ah, 8
and     ah, 0Fh

loc_441B75:
mov     [ecx+56h], ax
mov     word ptr [ebx+0Ah], 0
jmp     short loc_441B85

loc_441B81:
mov     byte ptr [ecx+9], 9

loc_441B85:
mov     word ptr [ecx+0Ah], 0

loc_441B8B:
mov     word ptr [ecx+15Eh], 7FFFh

loc_441B94:
