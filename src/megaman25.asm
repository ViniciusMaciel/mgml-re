mov     eax, edx
mov     byte ptr [ecx+eax*2], 0
mov     byte ptr [ecx+eax*2+1], 0
inc     edx
cmp     edx, 10h
jb      short loc_43CCE6
pop     edx
pop     ecx
retn
sub_43CCCB endp




sub_43CCFA proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 28h ; '('
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     ebp, eax
mov     dl, [esi+0Dh]
test    dl, dl
jnz     short loc_43CD2C
test    byte ptr [eax], 1

loc_43CD22:
jnz     short loc_43CD38
inc     byte ptr [esi+8]
jmp     loc_43CE24

loc_43CD2C:
cmp     dl, 1
jnz     short loc_43CD38
cmp     word ptr [eax+44h], 0
jmp     short loc_43CD22

loc_43CD38:
mov     cl, [esi+0Fh]
cmp     cl, 40h ; '@'
jge     short loc_43CD47
mov     ch, cl
inc     ch
mov     [esi+0Fh], ch

loc_43CD47:
mov     ax, [ebp+14h]
mov     [esi+1Ch], ax
mov     ax, [ebp+16h]
mov     [esi+1Eh], ax
mov     ax, [ebp+18h]
mov     [esi+20h], ax
mov     edx, [esi+0Ah]
sar     edx, 18h
mov     edx, ds:dword_513DD0[edx*4]
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
call    sub_4EF008
mov     ecx, eax
imul    ecx, edx
shr     ecx, 0Ch
mov     eax, [esi+1Ah]
sar     eax, 10h
add     eax, ecx
mov     [esi+1Ch], ax
mov     eax, [ebp+54h]
sar     eax, 10h
add     eax, 800h
and     eax, 0FFFh
call    sub_4EF003
imul    edx, eax
shr     edx, 0Ch
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, edx
mov     [esi+20h], ax
mov     eax, [esi+0Ah]
sar     eax, 18h
mov     ax, ds:word_513DE0[eax*4]
sub     [esi+1Eh], ax
xor     edi, edi
jmp     short loc_43CDEC

loc_43CDD2:
mov     edx, [esi+0Ch]
sar     edx, 18h
sar     edx, 2
cmp     edi, edx
jnb     short loc_43CDE6
mov     dl, ah
or      dl, 1
mov     [ecx], dl

loc_43CDE6:
inc     edi
cmp     edi, 6
jnb     short loc_43CE24

loc_43CDEC:
lea     ecx, [edi+edi]
add     ecx, [esp+1Ch+var_1C]
mov     ah, [ecx]
test    ah, 1
jz      short loc_43CDD2
movsx   ebx, byte ptr [ecx+1]
mov     dx, [ebp+56h]
add     dh, 8
and     dh, 0Fh
movsx   edx, dx
mov     eax, esi
call    sub_43CE33
mov     dh, [ecx+1]
inc     dh
mov     [ecx+1], dh
cmp     dh, 18h
jle     short loc_43CDE6
mov     byte ptr [ecx+1], 0
jmp     short loc_43CDE6

loc_43CE24:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43CCFA endp



; Attributes: thunk

sub_43CE2E proc near
jmp     sub_4DE3EA
sub_43CE2E endp




sub_43CE33 proc near

var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= word ptr -28h
var_24= word ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 48h
mov     ecx, eax
mov     [esp+58h+var_14], 80h
mov     [esp+58h+var_20], 40h ; '@'
mov     [esp+58h+var_1C], 0F0h
mov     ah, 0A0h
mov     [esp+58h+var_18], ah
mov     bh, ah
add     dh, 4
mov     esi, edx
movsx   ax, bl
mov     edx, eax
shl     edx, 4
add     edx, esi
and     dh, 0Fh
mov     esi, eax
shl     esi, 7
and     esi, 0FFFh
mov     [esp+58h+var_28], si
imul    eax, 0Fh
mov     [esp+58h+var_24], ax
movsx   esi, dx
mov     eax, esi
call    sub_4EF008
mov     ebp, [esp+32h]
sar     ebp, 10h
imul    eax, ebp
sar     eax, 0Ch
mov     [esp+58h+var_48], eax
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, [esp+58h+var_48]
mov     [esp+58h+var_48], eax
mov     eax, [esp+58h+var_48]
mov     word ptr [esp+58h+var_44], ax
mov     eax, esi
call    sub_4EF003
imul    eax, ebp
sar     eax, 0Ch
mov     esi, [ecx+1Eh]
sar     esi, 10h
add     eax, esi
mov     di, ax
cmp     bl, 11h
jge     short loc_43CEF5
mov     eax, [esp+2Eh]
sar     eax, 10h
call    sub_4EF008
mov     esi, eax
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 0Ch
mov     esi, [ecx+1Ch]
sar     esi, 10h
sub     esi, eax
mov     word ptr [esp+58h+var_44+2], si
jmp     short loc_43CEFE

loc_43CEF5:
mov     ax, [ecx+1Eh]
mov     word ptr [esp+58h+var_44+2], ax

loc_43CEFE:
call    sub_4EE133
movzx   esi, [esp+58h+var_1C]
shl     esi, 10h
or      esi, 2E000000h
mov     [esp+58h+var_48], esi
movzx   esi, [esp+58h+var_18]
shl     esi, 8
or      esi, [esp+58h+var_48]
movzx   ebp, bh
or      ebp, esi
mov     [esp+58h+var_48], ebp
mov     [eax+4], ebp
mov     esi, [esp+58h+var_44]
mov     [eax+8], esi
mov     [eax+10h], edi
movzx   esi, [esp+58h+var_20]
shl     esi, 8
mov     [esp+58h+var_58], esi
or      esi, 3D480000h
mov     [esp+58h+var_50], esi
movzx   esi, [esp+58h+var_14]
mov     ebp, [esp+58h+var_50]
or      ebp, esi
mov     [esp+58h+var_34], ebp
mov     [eax+0Ch], ebp
mov     ebp, [esp+58h+var_58]
or      ebp, 0E0000h
mov     [esp+58h+var_40], ebp
lea     ebp, [esi+1Fh]
mov     [esp+58h+var_30], ebp
mov     ebp, [esp+58h+var_40]
or      ebp, [esp+58h+var_30]
mov     [esp+58h+var_4C], ebp
mov     [eax+14h], ebp
mov     ebp, [esp+58h+var_58]
add     ebp, 1F00h
mov     [esp+58h+var_54], ebp
or      ebp, esi
mov     [esp+58h+var_38], ebp
mov     [eax+1Ch], ebp
mov     esi, [esp+58h+var_54]
mov     ebp, [esp+58h+var_30]
or      esi, ebp
mov     [esp+58h+var_3C], esi
mov     [eax+24h], esi
mov     esi, [ecx+0Ah]
sar     esi, 18h
movsx   ebp, bl
add     ebp, ebp
mov     [esp+58h+var_2C], ebp
mov     esi, ds:dword_513DD8[esi*4]
sub     esi, ebp
mov     [eax+18h], esi
mov     dword ptr [eax+20h], 0
movsx   ax, bl
shl     eax, 5
add     ah, 8
sub     edx, eax
and     dh, 0Fh
movsx   edx, dx
mov     eax, edx
call    sub_4EF008
mov     esi, [esp+32h]
sar     esi, 10h
imul    eax, esi
sar     eax, 0Ch
mov     ebp, [ecx+1Ah]
sar     ebp, 10h
add     eax, ebp
mov     word ptr [esp+58h+var_44], ax
mov     eax, edx
call    sub_4EF003
imul    eax, esi
sar     eax, 0Ch
mov     edx, [ecx+1Eh]
sar     edx, 10h
add     eax, edx
mov     di, ax
call    sub_4EE133
mov     edx, [esp+58h+var_48]
mov     [eax+4], edx
mov     edx, [esp+58h+var_44]
mov     [eax+8], edx
mov     [eax+10h], edi
mov     edx, [esp+58h+var_34]
mov     [eax+0Ch], edx
mov     edx, [esp+58h+var_4C]
mov     [eax+14h], edx
mov     edx, [esp+58h+var_38]
mov     [eax+1Ch], edx
mov     edx, [esp+58h+var_3C]
mov     [eax+24h], edx
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     edx, ds:dword_513DD8[edx*4]
mov     ecx, [esp+58h+var_2C]
sub     edx, ecx
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
add     esp, 48h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_43CE33 endp




sub_43D06C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D072[edx*4]
pop     edx
retn
sub_43D06C endp




sub_43D07B proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 28h ; '('
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     ebp, eax
test    byte ptr [eax], 1
jnz     short loc_43D0A6
inc     byte ptr [esi+8]
jmp     loc_43CE24

loc_43D0A6:
mov     dh, [esi+0Fh]
cmp     dh, 40h ; '@'
jge     short loc_43D0B5
mov     bl, dh
inc     bl
mov     [esi+0Fh], bl

loc_43D0B5:
mov     ax, [ebp+14h]
mov     [esi+1Ch], ax
mov     ax, [ebp+16h]
mov     [esi+1Eh], ax
mov     ax, [ebp+18h]
mov     [esi+20h], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF008
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 2
mov     ecx, edx
shl     edx, 2
add     edx, ecx
sar     edx, 0Ch
mov     eax, [esi+1Ah]
sar     eax, 10h
add     eax, edx
mov     [esi+1Ch], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF003
mov     edx, eax
shl     edx, 2
sub     edx, eax
shl     edx, 3
add     edx, eax
shl     edx, 2
mov     ecx, edx
shl     edx, 2
add     edx, ecx
sar     edx, 0Ch
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, edx
mov     [esi+20h], ax
xor     edi, edi
sub     word ptr [esi+1Eh], 60h ; '`'
jmp     short loc_43D157

loc_43D13A:
mov     edx, [esi+0Ch]
sar     edx, 18h
sar     edx, 1
cmp     edi, edx
jnb     short loc_43D14D
mov     ah, al
or      ah, 1
mov     [ecx], ah

loc_43D14D:
inc     edi
cmp     edi, 6
jnb     loc_43CE24

loc_43D157:
lea     ecx, [edi+edi]
add     ecx, [esp+1Ch+var_1C]
mov     al, [ecx]
test    al, 1
jz      short loc_43D13A
movsx   ebx, byte ptr [ecx+1]
mov     dx, [ebp+56h]
and     dh, 0Fh
movsx   edx, dx
mov     eax, esi
call    sub_43D18B
mov     dl, [ecx+1]
inc     dl
mov     [ecx+1], dl
cmp     dl, 0Ch
jle     short loc_43D14D
mov     byte ptr [ecx+1], 0
jmp     short loc_43D14D
sub_43D07B endp




sub_43D18B proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= byte ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ecx, eax
mov     edi, edx
mov     [esp+2Ch+var_14], bl
mov     eax, [esp+2Ch+var_18+1]
sar     eax, 18h
mov     [esp+2Ch+var_24], eax
lea     edx, [eax+eax]
mov     eax, edx
shl     edx, 4
sub     edx, eax
movsx   ebx, di
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     ebp, [ecx+1Ah]
sar     ebp, 10h
add     ebp, eax
mov     [esp+2Ch+var_2C], ebp
mov     eax, [esp+2Ch+var_2C]
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     ebp, [ecx+1Eh]
sar     ebp, 10h
add     ebp, eax
mov     [esp+2Ch+var_28], ebp
movsx   ax, [esp+2Ch+var_14]
shl     eax, 2
mov     si, [ecx+1Eh]
add     si, ax
mov     word ptr [esp+2Ch+var_18+2], si
add     edi, 400h
and     edi, 0FFFh
movsx   eax, di
mov     [esp+2Ch+var_1C], eax
call    sub_4EF008
mov     [esp+2Ch+var_20], eax
shl     eax, 2
mov     ebp, [esp+2Ch+var_20]
sub     eax, ebp
shl     eax, 3
add     eax, ebp
shl     eax, 2
sar     eax, 0Ch
mov     [esp+2Ch+var_20], eax
mov     eax, [esp-2]
sar     eax, 10h
add     eax, [esp+2Ch+var_20]
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, [esp+2Ch+var_1C]
call    sub_4EF003
mov     [esp+2Ch+var_20], eax
shl     eax, 2
mov     ebp, [esp+2Ch+var_20]
sub     eax, ebp
shl     eax, 3
add     eax, ebp
shl     eax, 2
sar     eax, 0Ch
mov     [esp+2Ch+var_20], eax
mov     eax, [esp+2Ch+var_2C+2]
sar     eax, 10h
add     eax, [esp+2Ch+var_20]
mov     si, ax
call    sub_4EE133
mov     dword ptr [eax+4], 2EF0A0A0h
mov     ebp, [esp+2Ch+var_18]
mov     [eax+8], ebp
mov     [eax+10h], esi
mov     dword ptr [eax+0Ch], 3D484080h
mov     dword ptr [eax+14h], 0E409Fh
mov     dword ptr [eax+1Ch], 5F80h
mov     dword ptr [eax+24h], 5F9Fh
mov     ebp, [esp+2Ch+var_24]
shl     ebp, 2
mov     [esp+2Ch+var_20], ebp
mov     ebp, 80h
sub     ebp, [esp+2Ch+var_20]
mov     [esp+2Ch+var_1C], ebp
mov     [eax+18h], ebp
mov     dword ptr [eax+20h], 0
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     [esp+2Ch+var_20], eax
mov     eax, [ecx+1Ah]
sar     eax, 10h
mov     ebp, [esp+2Ch+var_20]
add     ebp, eax
mov     [esp+2Ch+var_20], ebp
mov     eax, [esp+2Ch+var_20]
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     ebx, [ecx+1Eh]
sar     ebx, 10h
add     ebx, eax
sub     edi, 800h
and     edi, 0FFFh
movsx   edx, di
mov     eax, edx
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     ecx, eax
shl     ecx, 2
sar     ecx, 0Ch
mov     eax, [esp+2Ch+var_24+2]
sar     eax, 10h
add     eax, ecx
mov     word ptr [esp+2Ch+var_18], ax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     edx, eax
shl     edx, 2
sar     edx, 0Ch
movsx   eax, bx
add     eax, edx
mov     si, ax
call    sub_4EE133
mov     dword ptr [eax+4], 2EF0A0A0h
mov     edx, [esp+2Ch+var_18]
mov     [eax+8], edx
mov     [eax+10h], esi
mov     dword ptr [eax+0Ch], 3D484080h
mov     dword ptr [eax+14h], 0E409Fh
mov     dword ptr [eax+1Ch], 5F80h
mov     dword ptr [eax+24h], 5F9Fh
mov     edx, [esp+2Ch+var_1C]
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_43D18B endp




sub_43D3A9 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D3AF[edx*4]
pop     edx
retn
sub_43D3A9 endp




sub_43D3B8 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
add     eax, 28h ; '('
mov     [esp+1Ch+var_1C], eax
mov     eax, [esi+9]
sar     eax, 18h
call    sub_4E1877
mov     ebp, eax
cmp     word ptr [eax+44h], 0
jnz     short loc_43D3E5
inc     byte ptr [esi+8]
jmp     loc_43CE24

loc_43D3E5:
mov     ah, [esi+0Fh]
cmp     ah, 40h ; '@'
jge     short loc_43D3F4
mov     dl, ah
inc     dl
mov     [esi+0Fh], dl

loc_43D3F4:
mov     ax, [ebp+14h]
mov     [esi+1Ch], ax
mov     ax, [ebp+16h]
mov     [esi+1Eh], ax
mov     ax, [ebp+18h]
mov     [esi+20h], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF008
mov     edx, eax
shl     edx, 2
add     edx, eax
shl     edx, 6
sar     edx, 0Ch
mov     eax, [esi+1Ah]
sar     eax, 10h
add     eax, edx
mov     [esi+1Ch], ax
mov     ax, [ebp+56h]
and     ah, 0Fh
cwde
call    sub_4EF003
mov     edx, eax
shl     edx, 2
add     edx, eax
shl     edx, 6
sar     edx, 0Ch
mov     eax, [esi+1Eh]
sar     eax, 10h
add     eax, edx
mov     [esi+20h], ax
xor     edi, edi
sub     word ptr [esi+1Eh], 10h
jmp     short loc_43D47E

loc_43D461:
mov     edx, [esi+0Ch]
sar     edx, 18h
sar     edx, 1
cmp     edi, edx
jnb     short loc_43D474
mov     bh, bl
or      bh, 1
mov     [ecx], bh

loc_43D474:
inc     edi
cmp     edi, 4
jnb     loc_43CE24

loc_43D47E:
lea     ecx, [edi+edi]
add     ecx, [esp+1Ch+var_1C]
mov     bl, [ecx]
test    bl, 1
jz      short loc_43D461
movsx   ebx, byte ptr [ecx+1]
mov     dx, [ebp+56h]
and     dh, 0Fh
movsx   edx, dx
mov     eax, esi
call    sub_43D4B2
mov     al, [ecx+1]
inc     al
mov     [ecx+1], al
cmp     al, 8
jle     short loc_43D474
mov     byte ptr [ecx+1], 0
jmp     short loc_43D474
sub_43D3B8 endp




sub_43D4B2 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= byte ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 0Ch
mov     ecx, eax
mov     eax, edx
mov     [esp+18h+var_10], bl
mov     esi, [esp+5]
sar     esi, 18h
lea     edx, [esi+esi]
mov     ebx, edx
shl     edx, 4
sub     edx, ebx
movsx   ebx, ax
mov     eax, ebx
call    sub_4EF008
imul    eax, edx
sar     eax, 0Ch
mov     edi, [ecx+1Ah]
sar     edi, 10h
add     eax, edi
mov     word ptr [esp+18h+var_18], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, edx
sar     eax, 0Ch
mov     edx, [ecx+1Eh]
sar     edx, 10h
add     eax, edx
mov     word ptr [esp+18h+var_14], ax
movsx   ax, [esp+18h+var_10]
shl     eax, 2
mov     dx, [ecx+1Eh]
add     edx, eax
mov     word ptr [esp+18h+var_18+2], dx
call    sub_4EE133
mov     dword ptr [eax+4], 2EF0A0A0h
mov     edx, [esp+18h+var_18]
mov     [eax+8], edx
mov     edx, [esp+18h+var_14]
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D484080h
mov     dword ptr [eax+14h], 0E409Fh
mov     dword ptr [eax+1Ch], 5F80h
mov     dword ptr [eax+24h], 5F9Fh
shl     esi, 2
mov     edx, 40h ; '@'
sub     edx, esi
mov     [eax+18h], edx
mov     dword ptr [eax+20h], 0
add     esp, 0Ch
pop     edi
pop     esi
pop     ecx
retn
sub_43D4B2 endp




sub_43D56B proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax
mov     edx, [eax+9]
sar     edx, 18h
mov     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 2
mov     ebx, offset unk_513E18
add     ebx, eax
mov     al, [ecx+8]
test    al, al
jbe     short loc_43D59C
cmp     al, 1
jz      short loc_43D5C3
jmp     loc_43D697

loc_43D59C:
or      byte ptr [ecx], 6
mov     al, [ebx+20h]
mov     [ecx+3], al
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+50h], offset unk_808080
mov     word ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+8]

loc_43D5C3:
mov     dx, [ecx+0Eh]
inc     edx
mov     [ecx+0Eh], dx
mov     eax, edx
mov     edx, [ebx+6]
sar     edx, 10h
xor     esi, esi
mov     si, ax
imul    edx, esi
movsx   edi, word ptr [ebx]
add     edx, edi
sar     edx, 4
mov     [ecx+48h], dx
mov     edi, [ebx+8]
sar     edi, 10h
imul    edi, esi
mov     edx, [ebx]
sar     edx, 10h
add     edx, edi
sar     edx, 4
sub     edx, 1B1Ch
mov     [ecx+4Ah], dx
mov     edx, [ebx+0Ah]
sar     edx, 10h
imul    edx, esi
mov     edi, [ebx+2]
sar     edi, 10h
add     edx, edi
sar     edx, 4
mov     [ecx+4Ch], dx
mov     dx, [ebx+18h]
imul    edx, eax
shl     edx, 7
mov     di, [ebx+10h]
add     edi, edx
mov     [esp+2Ch+var_1C], di
mov     dx, [ebx+1Ah]
imul    edx, eax
shl     edx, 7
mov     di, [ebx+12h]
add     edi, edx
mov     [esp+2Ch+var_1A], di
imul    ax, [ebx+1Ch]
shl     eax, 7
mov     dx, [ebx+14h]
add     edx, eax
mov     [esp+2Ch+var_18], dx
lea     edx, [ecx+18h]
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     eax, [ebx+0Ch]
sar     eax, 10h
imul    eax, esi
mov     edx, [ebx+4]
sar     edx, 10h
add     eax, edx
sar     eax, 4
test    ax, ax
jge     short loc_43D681
xor     eax, eax

loc_43D681:
cwde
mov     [esp+2Ch+var_2C], eax
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_24], eax
lea     eax, [ecx+18h]
mov     edx, esp
call    sub_4EF689

loc_43D697:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D56B endp




sub_43D6A0 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D6A6[edx*4]
pop     edx
retn
sub_43D6A0 endp




sub_43D6AF proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     ebx, [ecx+3Ch]
mov     word ptr [ebx+4], 0
test    byte ptr [ecx+0Ch], 1
jz      short loc_43D6DD
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F5E[eax*8]
jmp     short loc_43D6EA

loc_43D6DD:
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F5C[eax*8]

loc_43D6EA:
mov     [ebx], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F74[eax*8]
mov     [ebx+2], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513F8C[eax*8]
mov     [ebx+6], ax
xor     eax, eax
mov     al, [ecx+3]
mov     ax, ds:word_513FA4[eax*8]
mov     [ebx+8], ax
mov     word ptr [ebx+0Ah], 0
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     edx, edx
mov     [esp+28h+var_18], dx
mov     al, [ecx+0Ch]
and     al, 2
movsx   eax, al
sar     eax, 1
shl     eax, 0Bh
sub     eax, 400h
mov     [esp+28h+var_16], ax
mov     [esp+28h+var_14], dx
lea     esi, [ecx+18h]
mov     edx, esi
lea     eax, [esp+28h+var_18]
call    sub_4EF638
mov     eax, [ebx+2]
sar     eax, 10h
mov     [esp+28h+var_20], eax
mov     [esp+28h+var_24], eax
mov     [esp+28h+var_28], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     dword ptr [ecx+50h], 2808080h
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 80h
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_513FBC[eax*2]
mov     [ecx+0Bh], al
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D6AF endp




sub_43D7A4 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ebx, eax
lea     ecx, [eax+3Ch]
mov     ax, [ecx+2]
mov     dx, [ecx]
add     edx, eax
mov     [ecx], dx
add     [ecx+4], dx
cmp     byte ptr [ebx+3], 0
jz      short loc_43D81C
xor     eax, eax
mov     al, [ebx+0Bh]
shl     eax, 2
mov     dl, [ebx+0Bh]
test    dl, dl
jz      short loc_43D7DD
mov     dh, dl
dec     dh
mov     [ebx+0Bh], dh

loc_43D7DD:
mov     esi, eax
shl     esi, 10h
or      esi, 2000000h
mov     edx, eax
shl     edx, 8
or      edx, esi
or      edx, eax
mov     [ebx+50h], edx
cmp     word ptr [ecx], 0
jge     short loc_43D806

loc_43D7FA:
mov     eax, ebx
call    sub_4DE3EA
jmp     loc_43D966

loc_43D806:
mov     eax, [ecx+2]
sar     eax, 10h
mov     [esp+2Ch+var_24], eax
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_2C], eax
jmp     loc_43D92C

loc_43D81C:
mov     di, [ecx+6]
test    di, di
jle     short loc_43D893
mov     ax, [ecx+8]
mov     edx, edi
add     edx, eax
mov     [ecx+6], dx
add     [ecx+0Ah], dx
cmp     word ptr [ecx+6], 0
jnz     short loc_43D893
test    byte ptr [ebx+0Ch], 1
jz      short loc_43D85E
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
jmp     short loc_43D86D

loc_43D85E:
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1

loc_43D86D:
mov     [ecx+2], ax
call    sub_4DE13B
test    eax, eax
jz      short loc_43D893
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 17h
mov     byte ptr [eax+3], 1
mov     dl, [ebx+0Ch]
mov     [eax+0Ch], dl
lea     edi, [eax+48h]
lea     esi, [ebx+48h]
movsd
movsd

loc_43D893:
cmp     word ptr [ecx+6], 0
jg      short loc_43D8D3
xor     eax, eax
mov     al, [ebx+0Ah]
test    al, al
jz      short loc_43D8AB
mov     dh, al
sub     dh, 10h
mov     [ebx+0Ah], dh

loc_43D8AB:
mov     edx, eax
shl     edx, 10h
or      edx, 2000000h
mov     esi, eax
shl     esi, 8
or      edx, esi
or      edx, eax
mov     [ebx+50h], edx
sub     word ptr [ecx+0Ah], 32h ; '2'
add     word ptr [ecx+2], 14h
mov     eax, [ecx]
sar     eax, 10h
jmp     short loc_43D904

loc_43D8D3:
test    byte ptr [ebx+0Ch], 1
jz      short loc_43D8F5
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
sar     edx, 1Fh
shl     edx, 2
sbb     eax, edx
sar     eax, 2
jmp     short loc_43D904

loc_43D8F5:
mov     edx, [ecx+8]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1

loc_43D904:
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_2C], eax
mov     eax, [ecx+8]
sar     eax, 10h
add     eax, eax
mov     [esp+2Ch+var_24], eax
cmp     word ptr [ecx+0Ah], 0
jl      loc_43D7FA
cmp     byte ptr [ebx+0Ah], 0
jz      loc_43D7FA

loc_43D92C:
xor     edx, edx
mov     [esp+2Ch+var_1C], dx
mov     al, [ebx+0Ch]
and     al, 2
movsx   eax, al
sar     eax, 1
shl     eax, 0Bh
sub     eax, 400h
mov     [esp+2Ch+var_1A], ax
mov     [esp+2Ch+var_18], dx
add     ebx, 18h
mov     edx, ebx
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     edx, esp
mov     eax, ebx
call    sub_4EF689

loc_43D966:
add     esp, 18h
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D7A4 endp



; Attributes: thunk

sub_43D96F proc near
jmp     sub_4DE3EA
sub_43D96F endp




sub_43D974 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43D97A[edx*4]
pop     edx
retn
sub_43D974 endp




sub_43D983 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
xor     bl, bl

loc_43D9AC:
call    rand_
mov     bh, al
and     bh, 1Fh
xor     eax, eax
mov     al, bl
shl     eax, 3
lea     edx, [eax+ebp]
mov     [edx], bh
call    rand_
and     al, 0Fh
mov     [edx+1], al
call    rand_
and     al, 3Fh
inc     al
mov     [edx+2], al
movzx   esi, byte ptr [ecx+3]
call    rand_
and     al, 1Fh
mov     ah, ds:byte_513FCC[esi*8]
add     al, ah
mov     [edx+3], al
xor     eax, eax
mov     al, [ecx+3]
mov     al, ds:byte_513FCE[eax*8]
mov     [edx+4], al
movzx   esi, byte ptr [ecx+3]
call    rand_
xor     ah, ah
and     al, 3Fh
mov     di, ds:word_513FD0[esi*8]
add     eax, edi
mov     [edx+6], ax
inc     bl
cmp     bl, 4
jb      short loc_43D9AC

loc_43DA20:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43D983 endp




sub_43DA27 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     edi, eax
lea     ebp, [eax+28h]
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
xor     ah, ah
mov     [esp+40h+var_1C], ah
jmp     loc_43DB31

loc_43DA4D:
mov     al, 10h

loc_43DA4F:
and     eax, 0FFh
push    eax
mov     esi, [esp+44h+var_3C]
push    esi
mov     eax, [esp+48h+var_40]
push    eax
mov     edx, [esp+4Ch+var_34]
push    edx
mov     ebx, [esp+50h+var_38]
push    ebx
call    sub_43DCF8
test    byte ptr ds:word_77EAB6, 1
jz      short loc_43DA92
xor     eax, eax
mov     al, [esp+40h+var_1C]
shl     eax, 3
lea     edx, [eax+ebp]
mov     ah, [edx+4]
cmp     ah, 2
jz      short loc_43DA92
mov     bl, ah
dec     bl
mov     [edx+4], bl

loc_43DA92:
xor     eax, eax
mov     al, [esp+40h+var_1C]
shl     eax, 3
lea     edx, [eax+ebp]
xor     eax, eax
mov     al, [edx+4]
mov     bx, [edx+6]
sub     ebx, eax
mov     [edx+6], bx
cmp     bx, 8
jge     short loc_43DB1E
call    rand_
and     al, 1Fh
mov     [edx], al
call    rand_
and     al, 0Fh
mov     [edx+1], al
call    rand_
and     al, 3Fh
inc     al
mov     [edx+2], al
xor     ebx, ebx
mov     bl, [edi+3]
call    rand_
and     al, 1Fh
mov     ah, ds:byte_513FCC[ebx*8]
add     al, ah
mov     [edx+3], al
xor     eax, eax
mov     al, [edi+3]
mov     al, ds:byte_513FCE[eax*8]
mov     [edx+4], al
xor     ebx, ebx
mov     bl, [edi+3]
call    rand_
xor     ah, ah
and     al, 3Fh
mov     si, ds:word_513FD0[ebx*8]
add     eax, esi
mov     [edx+6], ax
jmp     short loc_43DB1E

loc_43DB17:
mov     bh, bl
dec     bh
mov     [edx+2], bh

loc_43DB1E:
mov     dl, [esp+40h+var_1C]
inc     dl
mov     [esp+40h+var_1C], dl
cmp     dl, 4
jnb     loc_43DCEB

loc_43DB31:
xor     eax, eax
mov     al, [esp+40h+var_1C]
shl     eax, 3
lea     edx, [eax+ebp]
mov     bl, [edx+2]
test    bl, bl
jnz     short loc_43DB17
xor     bh, bh
mov     bl, [edx]
shl     ebx, 7
xor     eax, eax
mov     al, [edx+1]
shl     eax, 8
mov     esi, [edx+4]
sar     esi, 10h
mov     [esp+40h+var_30], esi
movsx   esi, ax
mov     eax, esi
call    sub_4EF008
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_28]
mov     [esp+40h+var_20], ax
mov     eax, [edx+4]
sar     eax, 10h
mov     [esp+40h+var_30], eax
mov     eax, esi
call    sub_4EF003
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_30], eax
mov     eax, [esp+40h+var_30]
mov     [esp+40h+var_24], eax
movsx   ebx, bx
mov     eax, ebx
call    sub_4EF008
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_24+2]
sar     eax, 10h
mov     [esp+40h+var_30], eax
mov     eax, [esp+40h+var_2C]
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_2C], eax
mov     eax, [ecx+46h]
sar     eax, 10h
add     eax, [esp+40h+var_2C]
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_28]
mov     word ptr [esp+40h+var_38], ax
mov     eax, ebx
call    sub_4EF003
imul    eax, [esp+40h+var_30]
sar     eax, 0Ch
mov     [esp+40h+var_2C], eax
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     eax, [esp+40h+var_2C]
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_2C]
mov     word ptr [esp+40h+var_34], ax
mov     ax, [ecx+4Ah]
add     eax, [esp+40h+var_24]
mov     word ptr [esp+40h+var_38+2], ax
mov     eax, [edx+4]
sar     eax, 10h
mov     [esp+40h+var_28], eax
xor     eax, eax
mov     al, [edx+3]
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_28]
add     eax, [esp+40h+var_2C]
mov     [esp+40h+var_2C], eax
mov     eax, esi
call    sub_4EF008
imul    eax, [esp+40h+var_2C]
sar     eax, 0Ch
mov     [esp+40h+var_2C], eax
mov     eax, [esp+40h+var_2C]
mov     [esp+40h+var_20], ax
mov     eax, [edx+4]
sar     eax, 10h
mov     [esp+40h+var_2C], eax
xor     eax, eax
mov     al, [edx+3]
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_2C]
add     eax, [esp+40h+var_28]
mov     [esp+40h+var_28], eax
mov     eax, esi
call    sub_4EF003
imul    eax, [esp+40h+var_28]
sar     eax, 0Ch
mov     [esp+40h+var_24], eax
mov     eax, ebx
call    sub_4EF008
mov     esi, [esp+40h+var_24+2]
sar     esi, 10h
mov     [esp+40h+var_28], esi
imul    eax, esi
sar     eax, 0Ch
mov     esi, [ecx+46h]
sar     esi, 10h
add     eax, esi
mov     word ptr [esp+40h+var_40], ax
mov     eax, ebx
call    sub_4EF003
mov     ebx, [esp+40h+var_28]
imul    ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+4Ah]
sar     eax, 10h
add     eax, ebx
mov     word ptr [esp+40h+var_3C], ax
mov     ax, [ecx+4Ah]
mov     ebx, [esp+40h+var_24]
add     eax, ebx
mov     word ptr [esp+40h+var_40+2], ax
cmp     word ptr [edx+6], 18h
jge     loc_43DA4D
mov     al, [edx+6]
sub     al, 8
jmp     loc_43DA4F

loc_43DCEB:
add     esp, 28h
jmp     loc_43DA20
sub_43DA27 endp



; Attributes: thunk

sub_43DCF3 proc near
jmp     sub_4DE3EA
sub_43DCF3 endp




sub_43DCF8 proc near

arg_0= dword ptr  4
arg_8= dword ptr  0Ch
arg_10= byte ptr  14h

push    ebx
push    ecx
push    edx
push    esi
mov     dl, [esp+10h+arg_10]
call    rand_
and     al, 7
add     al, 6
mul     dl
mov     bl, al
call    rand_
and     al, 7
add     al, 6
mul     dl
mov     cl, al
call    rand_
and     al, 7
add     al, 6
mul     dl
mov     bh, al
call    sub_4EE16B
mov     edx, eax
mov     eax, [esp+10h+arg_8]
mov     [edx], eax
xor     eax, eax
mov     al, bl
mov     esi, eax
shl     esi, 10h
or      esi, 52000000h
xor     eax, eax
mov     al, cl
shl     eax, 8
or      esi, eax
xor     eax, eax
mov     al, bh
or      esi, eax
mov     [edx+4], esi
mov     eax, [esp+10h+arg_0]
mov     [edx+8], eax
mov     dword ptr [edx+0Ch], 10101h
mov     esi, [esp+10h+arg_8+2]
sar     esi, 10h
shl     esi, 10h
mov     eax, [esp+10h+arg_0+2]
sar     eax, 10h
and     eax, 0FFFFh
add     esi, eax
mov     [edx+10h], esi
mov     dword ptr [edx+28h], 0E1000020h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn    14h
sub_43DCF8 endp




sub_43DD8C proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43DD92[edx*4]
pop     edx
retn
sub_43DD8C endp




sub_43DD9B proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+14h], 3DC8000Ah
mov     dword ptr [ecx+18h], 2E808080h
mov     dl, ds:byte_513FE8
mov     [ecx+22h], dl
mov     dl, ds:byte_513FE9
mov     [ecx+23h], dl
xor     dh, dh
mov     dl, ds:byte_513FFA
mov     [ecx+24h], dx
mov     dl, ds:byte_513FF4
mov     [ecx+0Bh], dl
mov     [ecx+0Ah], dh
mov     [ecx+9], dh
inc     byte ptr [ecx+8]
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_43DDF7
lea     edx, [ecx+1Ch]
mov     eax, 9Bh
call    sub_4D8BC3

loc_43DDF7:
mov     dl, [ecx+1Eh]
mov     [ecx+0Dh], dl
pop     edx
pop     ecx
retn
sub_43DD9B endp




sub_43DE00 proc near
push    ebx
push    ecx
push    edx
inc     byte ptr [eax+9]
mov     dh, [eax+0Bh]
dec     dh
mov     [eax+0Bh], dh
jnz     short loc_43DE77
mov     bh, [eax+0Ah]
inc     bh
mov     [eax+0Ah], bh
cmp     bh, 6
jb      short loc_43DE26
call    sub_4DE3EA
pop     edx
pop     ecx
pop     ebx
retn

loc_43DE26:
xor     edx, edx
mov     dl, bh
mov     bl, ds:byte_513FF4[edx]
mov     [eax+0Bh], bl
mov     bl, ds:byte_513FE8[edx*2]
mov     [eax+22h], bl
mov     dl, ds:byte_513FE9[edx*2]
mov     [eax+23h], dl
xor     edx, edx
mov     dl, [eax+9]
mov     dl, ds:byte_513FFA[edx]
xor     dh, dh
mov     [eax+24h], dx
xor     edx, edx
mov     dl, [eax+9]
mov     dl, ds:byte_513FFA[edx]
and     edx, 0FFh
sar     edx, 1
mov     ecx, [eax+0Ah]
sar     ecx, 18h
sub     ecx, edx
mov     [eax+1Eh], cx

loc_43DE77:
pop     edx
pop     ecx
pop     ebx
retn
sub_43DE00 endp




sub_43DE7B proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43DE81[edx*4]
pop     edx
retn
sub_43DE7B endp




sub_43DE8A proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43DE90[edx*4]
pop     edx
retn
sub_43DE8A endp




sub_43DE99 proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_2C= word ptr -2Ch
var_2A= word ptr -2Ah
var_28= word ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 54h
mov     ebp, eax
mov     ah, [eax+6]
or      ah, 20h
mov     [ebp+6], ah
mov     byte ptr [ebp+8], 1
mov     byte ptr [ebp+9], 0
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0Bh], 0
mov     byte ptr [ebp+0Eh], 2
mov     byte ptr [ebp+0Fh], 0
mov     dword ptr [ebp+18h], 2E404040h
mov     dword ptr [ebp+14h], 3D080029h
mov     eax, [ebp+0Ch]
sar     eax, 18h
mov     al, ds:byte_51400C[eax*2]
mov     [ebp+22h], al
mov     eax, [ebp+0Ch]
sar     eax, 18h
mov     al, ds:byte_51400D[eax*2]
mov     [ebp+23h], al
mov     word ptr [ebp+24h], 30h ; '0'
mov     eax, [ebp+9]
sar     eax, 18h
call    sub_4E1877
mov     [esp+6Ch+var_1C], eax
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 4
mov     esi, [esp+6Ch+var_1C]
mov     ecx, 0Ch
mov     edi, esp
lea     esi, [esi+eax+1F8h]
rep movsd
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     ax, word ptr ds:off_51403C[eax*4]
mov     [esp+6Ch+var_2C], ax
xor     edx, edx
mov     [esp+6Ch+var_2A], dx
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     ax, word ptr ds:(off_51403C+2)[eax*4]
mov     [esp+6Ch+var_28], ax
lea     ebx, [esp+6Ch+var_3C]
lea     edx, [esp+6Ch+var_2C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [ebp+0Ah]
sar     eax, 18h
mov     esi, [esp+6Ch+var_1C]
lea     edi, [esp+6Ch+var_24]
lea     esi, [esi+eax*8+190h]
movsd
movsd
mov     eax, [esp+46h]
sar     eax, 10h
add     [esp+6Ch+var_3C], eax
mov     eax, [esp+6Ch+var_24]
sar     eax, 10h
add     [esp+6Ch+var_38], eax
mov     eax, [esp+6Ch+var_24+2]
sar     eax, 10h
add     [esp+6Ch+var_34], eax
mov     eax, [esp+6Ch+var_3C]
mov     [ebp+1Ch], ax
mov     eax, [esp+6Ch+var_38]
mov     [ebp+1Eh], ax
mov     eax, [esp+6Ch+var_34]
mov     [ebp+20h], ax
mov     edx, [ebp+0Ah]
sar     edx, 18h
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
add     eax, 0A0h
mov     [ebp+28h], eax
add     esp, 54h

loc_43DFD2:
pop     ebp

loc_43DFD3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43DE99 endp




sub_43DFD9 proc near
push    edx
mov     edx, [eax+28h]
dec     edx
mov     [eax+28h], edx
jnz     short loc_43DFEE
mov     byte ptr [eax+8], 2
mov     dword ptr [eax+28h], 4

loc_43DFEE:
pop     edx
retn
sub_43DFD9 endp




sub_43DFF0 proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
mov     al, [edx+28h]
call    sub_43E511
mov     ecx, [edx+28h]
dec     ecx
mov     [edx+28h], ecx
jnz     short loc_43E00E
or      byte ptr [edx], 2
mov     byte ptr [edx+8], 3

loc_43E00E:
pop     edx
pop     ecx
retn
sub_43DFF0 endp




sub_43E011 proc near
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     short loc_43E057
mov     byte ptr [eax+0Eh], 2
inc     byte ptr [eax+0Fh]
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_51400C[edx*2]
mov     [eax+22h], dl
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_51400D[edx*2]
mov     [eax+23h], dl
cmp     byte ptr [eax+0Fh], 2
jnz     short loc_43E050
mov     dword ptr [eax+18h], 2E808080h

loc_43E050:
mov     dword ptr [eax+14h], 3D480009h

loc_43E057:
inc     word ptr [eax+24h]
cmp     byte ptr [eax+0Fh], 0Bh
jnz     short loc_43E065
mov     byte ptr [eax+8], 4

loc_43E065:
pop     edx
retn
sub_43E011 endp




sub_43E067 proc near
push    edx
mov     dl, [eax+0Eh]
dec     dl
mov     [eax+0Eh], dl
jnz     short loc_43E077
call    sub_4DE3EA

loc_43E077:
pop     edx
retn
sub_43E067 endp




sub_43E079 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E07F[edx*4]
pop     edx
retn
sub_43E079 endp




sub_43E088 proc near
push    edx
mov     edx, eax
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     al, [eax+0Dh]
mov     [edx+0Bh], al
mov     al, [edx+0Dh]
mov     ah, 6
imul    ah
add     al, 8
mov     [edx+0Dh], al
mov     byte ptr [edx+0Eh], 10h
mov     byte ptr [edx+0Fh], 0
mov     dword ptr [edx+18h], 2EC0C0C0h
mov     dword ptr [edx+14h], 3D08002Eh
mov     byte ptr [edx+22h], 0E0h
mov     byte ptr [edx+23h], 60h ; '`'
pop     edx
retn
sub_43E088 endp




sub_43E0C9 proc near

var_24= dword ptr -24h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebx, eax
lea     esi, [eax+28h]
mov     ah, [eax+0Dh]
dec     ah
mov     [ebx+0Dh], ah
jnz     loc_43E286
or      byte ptr [ebx], 2
mov     byte ptr [ebx+8], 2
mov     al, ds:byte_560BE4
cmp     al, 5
jb      short loc_43E0FB
jbe     short loc_43E0FB
cmp     al, 7
jz      short loc_43E169

loc_43E0FB:
call    rand_
xor     ah, ah
and     al, 0Fh
add     eax, 10h
shl     eax, 6
mov     [esp+24h+var_20], ax
call    rand_
xor     ah, ah
and     al, 7
add     eax, 0Dh
shl     eax, 7
movsx   ecx, ax
mov     eax, ecx
call    sub_4EF008
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 0Ch
mov     [esp+24h+var_1C], eax
mov     eax, ecx
call    sub_4EF003
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 0Ch
mov     edi, eax
mov     word ptr [ebx+24h], 32h ; '2'
jmp     short loc_43E1CC

loc_43E169:
call    rand_
xor     ah, ah
and     al, 1Fh
shl     eax, 6
mov     [esp+24h+var_20], ax
call    rand_
xor     ah, ah
and     al, 7
add     eax, 0Ch
shl     eax, 7
movsx   edx, ax
mov     eax, edx
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
sub     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 6
sar     eax, 0Ch
mov     [esp+24h+var_1C], eax
mov     eax, edx
call    sub_4EF003
mov     edx, eax
shl     eax, 2
sub     eax, edx
shl     eax, 3
add     eax, edx
shl     eax, 6
sar     eax, 0Ch
mov     edi, eax
mov     word ptr [ebx+24h], 64h ; 'd'

loc_43E1CC:
mov     eax, [ebx+9]
sar     eax, 18h
call    sub_4E1877
mov     edx, eax
mov     ecx, [esp+2]
sar     ecx, 10h
mov     eax, ecx
call    sub_4EF003
movsx   edi, di
imul    eax, edi
sar     eax, 0Ch
mov     ebp, [edx+12h]
sar     ebp, 10h
add     ebp, eax
mov     [esp+24h+var_24], ebp
mov     eax, [esp+24h+var_24]
mov     [ebx+1Ch], ax
mov     eax, ecx
call    sub_4EF008
imul    eax, edi
sar     eax, 0Ch
mov     ecx, [edx+16h]
sar     ecx, 10h
add     eax, ecx
mov     [ebx+20h], ax
mov     ax, [edx+16h]
mov     edx, [esp+24h+var_1C]
add     eax, edx
mov     [ebx+1Eh], ax
xor     ecx, ecx

loc_43E22B:
call    rand_
and     al, 1Fh
mov     edx, ecx
mov     [esi+edx*2], al
call    rand_
and     al, 7
add     al, 0Ch
mov     [esi+edx*2+1], al
inc     ecx
cmp     ecx, 0Ch
jb      short loc_43E22B
test    byte ptr [ebx+0Bh], 1
jz      short loc_43E26F
call    rand_
test    al, 1
jz      short loc_43E264
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A4h
jmp     short loc_43E281

loc_43E264:
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A5h
jmp     short loc_43E281

loc_43E26F:
call    rand_
test    al, 0Fh
jnz     short loc_43E286
xor     ebx, ebx
xor     edx, edx
mov     eax, 0A4h

loc_43E281:
call    sub_4D89E4

loc_43E286:
add     esp, 0Ch
jmp     loc_43DFD2
sub_43E0C9 endp




sub_43E28E proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
call    sub_4EF003
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ecx
mov     [edx+1Ch], ax
xor     eax, eax
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Eh]
sar     eax, 10h
add     eax, ecx
mov     [edx+20h], ax
dec     byte ptr [edx+0Eh]
mov     ecx, [edx+0Bh]
sar     ecx, 18h
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     ecx, eax
shl     ecx, 10h
mov     ebx, eax
shl     ebx, 8
add     ecx, 2E000000h
add     ecx, ebx
add     ecx, eax
mov     [edx+18h], ecx
add     word ptr [edx+24h], 8
inc     byte ptr [edx+0Dh]
inc     byte ptr [edx+0Fh]
mov     eax, edx
call    sub_43E37D
cmp     byte ptr [edx+0Eh], 0
jnz     short loc_43E31A
and     byte ptr [edx], 0FDh
mov     byte ptr [edx+8], 3

loc_43E31A:
pop     edx
pop     ecx
pop     ebx
retn
sub_43E28E endp




sub_43E31E proc near
push    ecx
push    edx
mov     edx, eax
xor     eax, eax
call    sub_4EF003
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Ah]
sar     eax, 10h
add     eax, ecx
mov     [edx+1Ch], ax
xor     eax, eax
call    sub_4EF008
mov     ecx, eax
shl     eax, 2
add     ecx, eax
add     ecx, ecx
sar     ecx, 0Ch
mov     eax, [edx+1Eh]
sar     eax, 10h
add     eax, ecx
mov     [edx+20h], ax
inc     byte ptr [edx+0Dh]
dec     byte ptr [edx+0Fh]
mov     eax, edx
call    sub_43E37D
cmp     byte ptr [edx+0Fh], 0
jnz     short loc_43E37A
mov     eax, edx
call    sub_4DE3EA

loc_43E37A:
pop     edx
pop     ecx
retn
sub_43E31E endp




sub_43E37D proc near

var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
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
sub     esp, 24h
mov     edx, eax
add     eax, 28h ; '('
mov     [esp+3Ch+var_34], eax
mov     [esp+3Ch+var_1C], 40h ; '@'
xor     bl, bl
mov     [esp+3Ch+var_20], bl
mov     al, [edx+0Fh]
mov     ah, 6
mul     ah
mov     [esp+3Ch+var_24], al
movsx   ax, byte ptr [edx+0Dh]
add     eax, eax
add     eax, 64h ; 'd'
mov     [esp+3Ch+var_2C], ax
mov     [esp+3Ch+var_28], bl
jmp     short loc_43E3E5

loc_43E3BC:
mov     ebx, [edx+0Ah]
sar     ebx, 18h
add     ebx, 82h
mov     [eax+18h], ebx

loc_43E3CB:
mov     dword ptr [ecx+20h], 0
mov     cl, [esp+3Ch+var_28]
inc     cl
mov     [esp+3Ch+var_28], cl
cmp     cl, 0Ch
jnb     loc_43E509

loc_43E3E5:
xor     ecx, ecx
mov     cl, [esp+3Ch+var_28]
add     ecx, ecx
add     ecx, [esp+3Ch+var_34]
xor     eax, eax
mov     al, [ecx+1]
shl     eax, 7
movsx   ebx, ax
mov     eax, ebx
call    sub_4EF008
mov     esi, [esp+0Eh]
sar     esi, 10h
mov     edi, eax
imul    edi, esi
sar     edi, 0Ch
mov     eax, ebx
call    sub_4EF003
mov     ebx, eax
imul    ebx, esi
sar     ebx, 0Ch
xor     eax, eax
mov     al, [ecx]
shl     eax, 7
movsx   ecx, ax
mov     eax, ecx
call    sub_4EF003
movsx   ebx, bx
imul    eax, ebx
sar     eax, 0Ch
mov     esi, [edx+1Ah]
sar     esi, 10h
add     eax, esi
mov     word ptr [esp+3Ch+var_30], ax
mov     eax, ecx
call    sub_4EF008
imul    eax, ebx
sar     eax, 0Ch
mov     ecx, [edx+1Eh]
sar     ecx, 10h
add     eax, ecx
mov     word ptr [esp+3Ch+var_38], ax
mov     ax, [edx+1Eh]
add     eax, edi
mov     word ptr [esp+3Ch+var_30+2], ax
call    sub_4EE133
mov     ecx, eax
xor     ebx, ebx
mov     bl, [esp+3Ch+var_24]
mov     esi, ebx
shl     esi, 10h
or      esi, 2E000000h
mov     edi, ebx
shl     edi, 8
or      esi, edi
or      esi, ebx
mov     [eax+4], esi
mov     ebx, [esp+3Ch+var_30]
mov     [eax+8], ebx
mov     ebx, [esp+3Ch+var_38]
mov     [eax+10h], ebx
xor     ebx, ebx
mov     bl, [esp+3Ch+var_20]
shl     ebx, 8
mov     edi, ebx
or      edi, 3D480000h
movzx   esi, [esp+3Ch+var_1C]
or      edi, esi
mov     [eax+0Ch], edi
mov     edi, ebx
or      edi, 4E0000h
mov     [esp+3Ch+var_3C], edi
lea     edi, [esi+1Fh]
mov     ebp, [esp+3Ch+var_3C]
or      ebp, edi
mov     [eax+14h], ebp
add     ebx, 1F00h
mov     ebp, ebx
or      ebp, esi
mov     [eax+1Ch], ebp
or      ebx, edi
mov     [eax+24h], ebx
mov     bl, ds:byte_560BE4
cmp     bl, 5
jb      short loc_43E4F8
jbe     short loc_43E4F8
cmp     bl, 7
jz      loc_43E3BC

loc_43E4F8:
mov     eax, [edx+0Ah]
sar     eax, 18h
add     eax, 50h ; 'P'
mov     [ecx+18h], eax
jmp     loc_43E3CB

loc_43E509:
add     esp, 24h
jmp     loc_43DFD2
sub_43E37D endp




sub_43E511 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, ds:dword_77E6DC
mov     dl, al
shl     dl, 5
mov     eax, esi
call    sub_4F87C5
mov     word ptr [esi+0Ah], 0
mov     ax, [esi+0Ah]
mov     [esi+8], ax
mov     word ptr [esi+0Ch], 140h
mov     word ptr [esi+0Eh], 0F0h
mov     [esi+4], dl
mov     [esi+5], dl
mov     [esi+6], dl
or      byte ptr [esi+7], 2
mov     edx, ds:dword_77E6DC
add     edx, 38h ; '8'
mov     ds:dword_77E6DC, edx
mov     edi, edx
push    0
mov     ecx, 2Fh ; '/'
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
jmp     loc_43DFD3
sub_43E511 endp




sub_43E59C proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43E5A2[edx*4]
pop     edx
retn
sub_43E59C endp




sub_43E5AB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E5B1[edx*4]
pop     edx
retn
sub_43E5AB endp




sub_43E5BA proc near
push    ebx
push    ecx
push    edx
lea     ecx, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Dh], 1
mov     dl, [eax+0Ch]
shl     dl, 2
mov     [eax+0Eh], dl
mov     byte ptr [eax+0Fh], 0
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     dx, ds:word_514086[edx*2]
mov     [eax+1Ch], dx
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     dx, ds:word_514088[edx*2]
mov     [eax+1Eh], dx
mov     ebx, [eax+9]
sar     ebx, 18h
mov     edx, ebx
shl     edx, 2
sub     edx, ebx
mov     dx, ds:word_51408A[edx*2]
mov     [eax+20h], dx
mov     word ptr [eax+24h], 8
xor     eax, eax

loc_43E634:
mov     bl, al
shl     bl, 3
mov     edx, eax
mov     [ecx+edx*2], bl
inc     eax
cmp     eax, 10h
jb      short loc_43E634
pop     edx
pop     ecx
pop     ebx
retn
sub_43E5BA endp




sub_43E648 proc near
push    edx
test    byte ptr ds:word_77EAB6, 1
jz      short loc_43E655
inc     byte ptr [eax+0Eh]

loc_43E655:
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, ds:byte_51405C[edx*2]
cmp     dl, ds:byte_560BE4
ja      short loc_43E66E
mov     byte ptr [eax+8], 2

loc_43E66E:
pop     edx
retn
sub_43E648 endp




sub_43E670 proc near
push    ebx
push    edx
mov     edx, eax
test    byte ptr ds:word_77EAB6, 1
jz      short loc_43E680
inc     byte ptr [edx+0Eh]

loc_43E680:
mov     eax, edx
call    sub_43E6A6
mov     eax, [edx+9]
sar     eax, 18h
mov     bl, ds:byte_560BE4
cmp     bl, ds:byte_51405D[eax*2]
jnz     short loc_43E6A3
mov     eax, edx
call    sub_4DE3EA

loc_43E6A3:
pop     edx
pop     ebx
retn
sub_43E670 endp




sub_43E6A6 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ecx, eax
add     eax, 28h ; '('
mov     [esp+30h+var_28], eax
mov     bh, 40h ; '@'
xor     ah, ah
mov     [esp+30h+var_1C], ah
xor     bl, bl
jmp     loc_43E7ED

loc_43E6C7:
mov     byte ptr [eax], 0

loc_43E6CA:
xor     eax, eax
mov     al, bl
add     eax, eax
mov     edx, [esp+30h+var_28]
add     edx, eax
xor     eax, eax
mov     al, [edx]
sar     eax, 3
shl     eax, 2
mov     esi, 40h ; '@'
sub     esi, eax
mov     [esp+30h+var_24], esi
mov     al, [ecx+0Eh]
and     al, 7Fh
cbw
shl     eax, 5
and     eax, 0FFFFh
call    sub_4EF008
shl     eax, 2
mov     esi, eax
shl     eax, 4
sub     eax, esi
sar     eax, 0Ch
lea     edi, [eax+50h]
xor     ah, ah
mov     al, [edx]
and     ah, 1
shl     eax, 3
movzx   esi, byte ptr [edx]
sar     esi, 1
add     esi, 14h
mov     [esp+30h+var_2C], esi
and     eax, 0FFFFh
call    sub_4EF008
xor     esi, esi
mov     si, di
imul    eax, esi
sar     eax, 0Ch
mov     esi, [ecx+1Ah]
sar     esi, 10h
add     eax, esi
mov     word ptr [esp+30h+var_30], ax
mov     ax, [ecx+20h]
mov     word ptr [esp+30h+var_20], ax
xor     eax, eax
mov     al, [edx]
shl     eax, 2
mov     dx, [ecx+1Eh]
sub     edx, eax
mov     word ptr [esp+30h+var_30+2], dx
call    sub_4EE133
mov     edx, eax
xor     eax, eax
mov     al, byte ptr [esp+30h+var_24]
mov     esi, eax
shl     esi, 10h
or      esi, 2E000000h
mov     edi, eax
shl     edi, 8
or      esi, edi
or      esi, eax
mov     [edx+4], esi
mov     eax, [esp+30h+var_30]
mov     [edx+8], eax
mov     eax, [esp+30h+var_20]
mov     [edx+10h], eax
movzx   esi, [esp+30h+var_1C]
shl     esi, 8
mov     edi, esi
or      edi, 3D480000h
xor     eax, eax
mov     al, bh
or      edi, eax
mov     [edx+0Ch], edi
mov     edi, esi
or      edi, 2E0000h
mov     [esp+30h+var_24], edi
lea     edi, [eax+1Fh]
mov     ebp, [esp+30h+var_24]
or      ebp, edi
mov     [edx+14h], ebp
add     esi, 1F00h
mov     ebp, esi
or      ebp, eax
mov     [edx+1Ch], ebp
or      esi, edi
mov     [edx+24h], esi
xor     eax, eax
mov     ax, word ptr [esp+30h+var_2C]
mov     [edx+18h], eax
mov     dword ptr [edx+20h], 0
inc     bl
cmp     bl, 10h
jnb     short loc_43E80D

loc_43E7ED:
xor     eax, eax
mov     al, bl
add     eax, eax
add     eax, [esp+30h+var_28]
mov     dl, [eax]
cmp     dl, 80h
jnb     loc_43E6C7
mov     dh, dl
inc     dh
mov     [eax], dh
jmp     loc_43E6CA

loc_43E80D:
add     esp, 18h
pop     ebp

loc_43E811:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43E6A6 endp




sub_43E817 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E81D[edx*4]
pop     edx
retn
sub_43E817 endp




sub_43E826 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
mov     ecx, eax        ; int
lea     esi, [eax+14h]
mov     eax, [eax+9]
sar     eax, 18h
shl     eax, 4
mov     ebx, offset unk_5140BC
add     ebx, eax
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
mov     ax, [ebx+8]
mov     [esp+2Ch+var_1C], ax
mov     ax, [ebx+0Ah]
mov     [esp+2Ch+var_1A], ax
mov     ax, [ebx+0Ch]
mov     [esp+2Ch+var_18], ax
lea     edi, [ecx+18h]
mov     edx, edi
lea     eax, [esp+2Ch+var_1C]
call    sub_4EF638
mov     eax, [ebx+4]
sar     eax, 10h
mov     [esp+2Ch+var_28], eax
mov     [esp+2Ch+var_24], eax
mov     [esp+2Ch+var_2C], eax
mov     edx, esp
mov     eax, edi
call    sub_4EF689
mov     ax, [ebx]
mov     [esi+34h], ax
mov     ax, [ebx+2]
mov     [esi+36h], ax
mov     ax, [ebx+4]
mov     [esi+38h], ax
mov     dword ptr [esi+3Ch], offset unk_808080
mov     byte ptr [ecx+2], 16h
lea     edx, [ebx+0Eh]
mov     eax, ecx
call    sub_4DD0F8
mov     byte ptr [ecx+2], 1Bh
add     esp, 18h
jmp     loc_43E811
sub_43E826 endp




sub_43E8DA proc near
push    edx
mov     edx, [eax+9]
sar     edx, 18h
mov     dl, ds:byte_51406E[edx*2]
cmp     dl, ds:byte_560BE4
ja      short loc_43E8F7
or      byte ptr [eax], 6
mov     byte ptr [eax+8], 2

loc_43E8F7:
pop     edx
retn
sub_43E8DA endp




sub_43E8F9 proc near
push    ebx
push    edx
mov     edx, [eax+9]
sar     edx, 18h
mov     bl, ds:byte_560BE4
cmp     bl, ds:byte_51406F[edx*2]
jnz     short loc_43E915
call    sub_4DE3EA

loc_43E915:
pop     edx
pop     ebx
retn
sub_43E8F9 endp




sub_43E918 proc near
push    edx
xor     edx, edx
mov     dl, [eax+3]
call    ds:funcs_43E91E[edx*4]
pop     edx
retn
sub_43E918 endp




sub_43E927 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43E92D[edx*4]
pop     edx
retn
sub_43E927 endp




sub_43E936 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ah, [eax]
or      ah, 2
mov     [edx], ah
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
sub     byte ptr [edx+0Dh], 3
mov     byte ptr [edx+0Eh], 0
mov     byte ptr [edx+0Fh], 0
mov     eax, [edx+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+48h]
mov     si, ds:word_51419C[ebx]
add     eax, esi
mov     [edx+1Ch], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+4Ah]
mov     di, ds:word_51419E[ebx]
add     eax, edi
mov     [edx+1Eh], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+4Ch]
mov     cx, ds:word_5141A0[ebx]
add     eax, ecx
mov     [edx+20h], ax
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D4[eax*2]
mov     [edx+22h], al
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D5[eax*2]
mov     [edx+23h], al
mov     dword ptr [edx+18h], 2E808080h
mov     dword ptr [edx+14h], 3D080029h
mov     word ptr [edx+24h], 10h

loc_43EA04:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_43E936 endp




sub_43EA0A proc near
push    edx
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D4[edx*2]
mov     [eax+22h], dl
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D5[edx*2]
mov     [eax+23h], dl
mov     dl, [eax+0Fh]
inc     dl
mov     [eax+0Fh], dl
cmp     dl, 8
jl      short loc_43EA3C
mov     byte ptr [eax+8], 2

loc_43EA3C:
pop     edx
retn
sub_43EA0A endp



; Attributes: thunk

sub_43EA3E proc near
jmp     sub_4DE3EA
sub_43EA3E endp




sub_43EA43 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43EA49[edx*4]
pop     edx
retn
sub_43EA43 endp




sub_43EA52 proc near
push    ebx
push    edx
lea     edx, [eax+28h]
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+9], 0
mov     byte ptr [eax+0Ah], 0
mov     byte ptr [eax+0Bh], 0
mov     byte ptr [eax+0Eh], 0
mov     byte ptr [eax+0Fh], 0
movsx   bx, byte ptr [eax+0Dh]
imul    ebx, 0Ch
add     ebx, 0Fh
mov     [edx], bx
mov     word ptr [eax+1Ch], 0
mov     word ptr [eax+20h], 188h
mov     word ptr [eax+1Eh], 0FF2Ch
pop     edx
pop     ebx
retn
sub_43EA52 endp




sub_43EA92 proc near
push    ebx
push    edx
mov     edx, eax
add     eax, 28h ; '('
mov     bx, [eax]
dec     bx
mov     [eax], bx
jnz     short loc_43EAA7
mov     byte ptr [edx+8], 2

loc_43EAA7:
pop     edx
pop     ebx
retn
sub_43EA92 endp




sub_43EAAA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+28h]
movsx   eax, word ptr [edx]
shl     eax, 4
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
shl     eax, 3
sar     eax, 0Ch
mov     ebx, 0FFFFFF38h
sub     ebx, eax
mov     [ecx+1Eh], bx
mov     eax, ecx
call    sub_43EAF7
mov     bx, [edx]
inc     ebx
mov     [edx], bx
cmp     bx, 80h
jle     short loc_43EAF3
mov     byte ptr [ecx+8], 3

loc_43EAF3:
pop     edx
pop     ecx
pop     ebx
retn
sub_43EAAA endp




sub_43EAF7 proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 10h
mov     edi, eax
mov     [esp+28h+var_1C], 40h ; '@'
xor     dh, dh
xor     dl, dl

loc_43EB0B:
xor     eax, eax
mov     al, dl
imul    eax, 32h ; '2'
sub     eax, 0C8h
mov     word ptr [esp+28h+var_20], ax
mov     word ptr [esp+28h+var_24], 200h
mov     ax, [edi+1Eh]
mov     word ptr [esp+28h+var_20+2], ax
call    sub_4EE133
mov     dword ptr [eax+4], 2E202020h
mov     ecx, [esp+28h+var_20]
mov     [eax+8], ecx
mov     ecx, [esp+28h+var_24]
mov     [eax+10h], ecx
xor     ebx, ebx
mov     bl, dh
shl     ebx, 8
mov     esi, ebx
or      esi, 3D480000h
xor     ecx, ecx
mov     cl, [esp+28h+var_1C]
or      esi, ecx
mov     [eax+0Ch], esi
mov     esi, ebx
or      esi, 2E0000h
mov     [esp+28h+var_28], esi
lea     esi, [ecx+1Fh]
mov     ebp, [esp+28h+var_28]
or      ebp, esi
mov     [eax+14h], ebp
add     ebx, 1F00h
mov     ebp, ebx
or      ebp, ecx
mov     [eax+1Ch], ebp
or      ebx, esi
mov     [eax+24h], ebx
mov     dword ptr [eax+18h], 40h ; '@'
mov     dword ptr [eax+20h], 0
inc     dl
cmp     dl, 9
jb      loc_43EB0B
add     esp, 10h
pop     ebp
jmp     loc_43EA04
sub_43EAF7 endp




sub_43EBAB proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43EBB1[edx*4]
pop     edx
retn
sub_43EBAB endp




sub_43EBBA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ah, [eax]
or      ah, 2
mov     [edx], ah
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 0
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     al, ds:byte_5141CE[eax*4]
mov     [edx+0Eh], al
mov     byte ptr [edx+0Fh], 0
mov     eax, [edx+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+14h]
mov     si, ds:word_5141C0[ebx]
add     eax, esi
mov     [edx+1Ch], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+16h]
mov     di, ds:word_5141C2[ebx]
add     eax, edi
mov     [edx+1Eh], ax
mov     ebx, [edx+0Ah]
sar     ebx, 18h
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
lea     ebx, [eax+eax]
mov     ax, [ecx+18h]
mov     cx, ds:word_5141C4[ebx]
add     eax, ecx
mov     [edx+20h], ax
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D4[eax*2]
mov     [edx+22h], al
mov     eax, [edx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D5[eax*2]
mov     [edx+23h], al
mov     dword ptr [edx+18h], 2E808080h
mov     dword ptr [edx+14h], 3DC00029h
mov     eax, [edx+0Ah]
sar     eax, 18h
mov     ax, ds:word_5141CC[eax*4]
mov     [edx+24h], ax
jmp     loc_43EA04
sub_43EBBA endp




sub_43ECA1 proc near
push    edx
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D4[edx*2]
mov     [eax+22h], dl
mov     edx, [eax+0Ch]
sar     edx, 18h
mov     dl, ds:byte_5141D5[edx*2]
mov     [eax+23h], dl
mov     dl, [eax+0Fh]
inc     dl
mov     [eax+0Fh], dl
cmp     dl, 8
jl      short loc_43ECD3
mov     byte ptr [eax+0Fh], 0

loc_43ECD3:
mov     dl, [eax+0Eh]
cmp     dl, ds:byte_560BE5
jz      short loc_43ECE2
mov     byte ptr [eax+8], 2

loc_43ECE2:
pop     edx
retn
sub_43ECA1 endp




sub_43ECE4 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43ECEA[edx*4]
pop     edx
retn
sub_43ECE4 endp




sub_43ECF3 proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [edx], 2
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 10h
mov     byte ptr [edx+0Eh], 0
call    rand_
and     al, 7
mov     [edx+0Fh], al
mov     dword ptr [edx+14h], 3DC00029h
mov     word ptr [edx+24h], 40h ; '@'
mov     eax, edx
call    sub_43EDA4
pop     edx
retn
sub_43ECF3 endp




sub_43ED38 proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     eax, edx
call    sub_43EDA4
mov     ah, [edx+0Fh]
inc     ah
mov     [edx+0Fh], ah
cmp     ah, 8
jl      short loc_43ED61
mov     byte ptr [edx+0Fh], 0

loc_43ED61:
test    byte ptr [ecx], 1
jnz     short loc_43ED6D
mov     eax, edx
call    sub_4DE3EA

loc_43ED6D:
cmp     word ptr [ecx+4Ah], 0
jz      short loc_43ED78
mov     byte ptr [edx+8], 2

loc_43ED78:
pop     edx
pop     ecx
retn
sub_43ED38 endp




sub_43ED7B proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     eax, edx
call    sub_43EDA4
mov     ah, [edx+0Bh]
sub     ah, 2
mov     [edx+0Bh], ah
jnz     short loc_43EDA2
mov     eax, edx
call    sub_4DE3EA

loc_43EDA2:
pop     edx
retn
sub_43ED7B endp




sub_43EDA4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     dx, [eax+48h]
mov     [ecx+1Ch], dx
mov     dx, [eax+4Ah]
mov     [ecx+1Eh], dx
mov     ax, [eax+4Ch]
mov     [ecx+20h], ax
mov     bx, word ptr ds:dword_77E9E8
mov     dx, word ptr ds:dword_77E9F0
mov     eax, [ecx+1Eh]
sar     eax, 10h
movsx   edx, dx
sub     edx, eax
mov     eax, [ecx+1Ah]
sar     eax, 10h
movsx   ebx, bx
sub     ebx, eax
mov     eax, ebx
call    sub_4EF04B
and     eax, 0FFFh
mov     edx, eax
call    sub_4EF008
shl     eax, 2
mov     ebx, eax
shl     eax, 4
sub     eax, ebx
mov     ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+1Ch], ax
sub     word ptr [ecx+1Eh], 0E6h
mov     eax, edx
call    sub_4EF003
shl     eax, 2
mov     edx, eax
shl     eax, 4
sub     eax, edx
mov     edx, eax
sar     edx, 0Ch
mov     eax, [ecx+1Eh]
sar     eax, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D4[eax*2]
mov     [ecx+22h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141D5[eax*2]
mov     [ecx+23h], al
xor     eax, eax
mov     al, [ecx+0Bh]
mov     ebx, eax
shl     ebx, 3
mov     edx, eax
shl     edx, 13h
or      edx, 2E000000h
shl     eax, 0Bh
or      eax, edx
or      eax, ebx
mov     [ecx+18h], eax
pop     edx
pop     ecx
pop     ebx
retn
sub_43EDA4 endp




sub_43EE89 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43EE8F[edx*4]
pop     edx
retn
sub_43EE89 endp




sub_43EE98 proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
or      byte ptr [edx], 22h
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 0
mov     byte ptr [edx+0Bh], 10h
call    rand_
and     al, 1
mov     [edx+0Fh], al
mov     eax, edx
call    sub_43EF38
pop     edx
retn
sub_43EE98 endp




sub_43EECC proc near
push    ecx
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     ecx, eax
mov     eax, edx
call    sub_43EF38
mov     ah, [edx+0Fh]
inc     ah
mov     [edx+0Fh], ah
cmp     ah, 3
jl      short loc_43EEF5
mov     byte ptr [edx+0Fh], 0

loc_43EEF5:
test    byte ptr [ecx], 1
jnz     short loc_43EF01
mov     eax, edx
call    sub_4DE3EA

loc_43EF01:
cmp     word ptr [ecx+4Ah], 0
jz      short loc_43EF0C
mov     byte ptr [edx+8], 2

loc_43EF0C:
pop     edx
pop     ecx
retn
sub_43EECC endp




sub_43EF0F proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     eax, edx
call    sub_43EF38
mov     ah, [edx+0Bh]
sub     ah, 2
mov     [edx+0Bh], ah
jnz     short loc_43EF36
mov     eax, edx
call    sub_4DE3EA

loc_43EF36:
pop     edx
retn
sub_43EF0F endp




sub_43EF38 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+9]
sar     eax, 18h
call    sub_4E1877
mov     edx, ds:dword_560C00
mov     bx, [eax+48h]
mov     [ecx+1Ch], bx
mov     bx, [eax+4Ah]
mov     [ecx+1Eh], bx
mov     ax, [eax+4Ch]
mov     [ecx+20h], ax
mov     eax, [edx+16h]
sar     eax, 10h
mov     ebx, [ecx+1Eh]
sar     ebx, 10h
sub     eax, ebx
mov     ebx, eax
mov     edx, [edx+12h]
sar     edx, 10h
mov     eax, [ecx+1Ah]
sar     eax, 10h
sub     edx, eax
mov     eax, edx
mov     edx, ebx
call    sub_4EF04B
mov     edx, eax
and     edx, 0FFFh
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ebx, ds:dword_51425E[eax*8]
sar     ebx, 10h
mov     eax, edx
call    sub_4EF008
imul    ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+1Ah]
sar     eax, 10h
add     eax, ebx
mov     [ecx+1Ch], ax
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, ds:word_514262[eax*8]
sub     [ecx+1Eh], ax
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ebx, ds:dword_51425E[eax*8]
sar     ebx, 10h
mov     eax, edx
call    sub_4EF003
mov     edx, eax
imul    edx, ebx
sar     edx, 0Ch
mov     eax, [ecx+1Eh]
sar     eax, 10h
add     eax, edx
mov     [ecx+20h], ax
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141E4[eax*2]
mov     [ecx+22h], al
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     al, ds:byte_5141E5[eax*2]
mov     [ecx+23h], al
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     ax, word ptr ds:dword_51425E[eax*8]
mov     [ecx+24h], ax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ax, ds:word_51423E[eax*4]
mov     [ecx+26h], ax
xor     edx, edx
mov     dl, [ecx+0Bh]
mov     eax, edx
shl     eax, 2
sub     eax, edx
add     eax, eax
mov     ebx, eax
shl     ebx, 10h
or      ebx, 2E000000h
mov     edx, eax
shl     edx, 8
or      edx, ebx
or      edx, eax
mov     [ecx+18h], edx
mov     dword ptr [ecx+14h], 3DC0002Eh
cmp     ds:byte_560BE4, 0
jnz     short loc_43F08F
cmp     ds:byte_560BE5, 1Bh
jnz     short loc_43F08F
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ax, ds:word_51424E[eax*4]
mov     [ecx+26h], ax

loc_43F08F:
cmp     ds:byte_560BE4, 0
jnz     short loc_43F0B3
cmp     ds:byte_560BE5, 1Ch
jnz     short loc_43F0B3
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ax, ds:word_51424E[eax*4]
mov     [ecx+26h], ax

loc_43F0B3:
pop     edx
pop     ecx
pop     ebx
retn
sub_43EF38 endp




sub_43F0B7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_43F0BD[edx*4]
pop     edx
retn
sub_43F0B7 endp




sub_43F0C6 proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 4
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
lea     edx, [ecx+54h]
mov     al, [ecx+3]
and     al, 0Fh
and     eax, 0FFh
mov     [esp+10h+var_10], eax
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
shl     ebx, 2
shl     eax, 4
mov     ax, ds:word_514288[ebx+eax]
mov     [edx], ax
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     ebx, [esp+10h+var_10]
shl     ebx, 4
mov     ax, ds:word_51428A[ebx+eax*4]
mov     [edx+2], ax
mov     dword ptr [ecx+50h], 2808080h
mov     byte ptr [ecx+0Ah], 0
mov     word ptr [ecx+4Eh], 0
lea     eax, [ecx+18h]
call    sub_4EF184
mov     dword ptr [ecx+38h], 0
mov     eax, [ecx+38h]
mov     [ecx+28h], eax
mov     eax, [ecx+28h]
mov     [ecx+18h], eax
mov     dl, [ecx+3]
test    dl, 80h
jz      short loc_43F151

loc_43F148:
mov     [esp+10h+var_10], 4
jmp     short loc_43F187

loc_43F151:
mov     al, dl
and     al, 0Fh
and     eax, 0FFh
mov     [esp+10h+var_10], eax
cmp     eax, 5
jb      short loc_43F169
jbe     short loc_43F187
cmp     eax, 6
jmp     short loc_43F16C

loc_43F169:
cmp     eax, 4

loc_43F16C:
jz      short loc_43F187
mov     eax, [ecx+48h]
sar     eax, 10h
mov     edx, 0FFFFFFFFh
sub     edx, eax
cmp     edx, 1Eh
jl      short loc_43F148
mov     [esp+10h+var_10], 5

loc_43F187:
cmp     byte ptr [ecx+0Eh], 0
jnz     short loc_43F191
add     [esp+10h+var_10], 2

loc_43F191:
mov     edx, esp
mov     eax, ecx
call    sub_4DD0F8
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+0Bh], 0
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_43F1B4
lea     edx, [ecx+48h]
mov     eax, 0A1h
call    sub_4D8BC3

loc_43F1B4:
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_43F0C6 endp




sub_43F1BB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax        ; int
xor     edx, edx
mov     dl, [eax+9]     ; int
call    ds:funcs_43F1C5[edx*4]
cmp     byte ptr ds:dword_77E7DC+3, 1
jle     short loc_43F1EF
mov     eax, [ecx+0Bh]
sar     eax, 18h
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     al, ds:byte_514358[edx+eax*4]
and     eax, 0FFh
jmp     short loc_43F20D

loc_43F1EF:
mov     edx, [ecx+0Bh]
sar     edx, 18h
shl     edx, 2
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     al, ds:byte_514358[edx+eax]
and     eax, 0FFh
add     eax, 20h ; ' '

loc_43F20D:
push    80h
push    0
or      eax, 10000000h
push    eax
push    offset unk_559E00
xor     eax, eax
mov     al, [ecx+1]
push    eax
mov     edx, [ecx+4Ch]
sar     edx, 10h
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     edx, eax
lea     eax, [ecx+48h]
mov     ecx, 0A000h
xor     ebx, ebx
call    sub_4E01FC
pop     edx
pop     ecx
pop     ebx
retn
sub_43F1BB endp

db 8Bh, 0C0h
jpt_43F275 dd offset def_43F275 ; jump table for switch statement
dd offset loc_43F318
dd offset loc_43F39C
dd offset loc_43F3F8



; int __fastcall sub_43F25B(int, int)
sub_43F25B proc near
push    ebx             ; int
push    ecx             ; int
push    edx             ; int
push    esi             ; int
mov     ecx, eax
add     eax, 54h ; 'T'
mov     dl, [ecx+3]
and     dl, 0Fh
cmp     dl, 3           ; switch 4 cases
ja      short def_43F275 ; jumptable 0043F275 default case, case 0
and     edx, 0FFh
jmp     jpt_43F275[edx*4] ; switch jump

def_43F275:             ; jumptable 0043F275 default case, case 0
mov     dx, [eax+2]
mov     bx, [eax]
add     ebx, edx
mov     [eax], bx
add     [ecx+4Eh], bx
cmp     word ptr [eax], 0
jg      short loc_43F2EB
mov     ebx, [ecx+0Ah]
sar     ebx, 18h
mov     ebx, ds:dword_5142F6[ebx*8]
sar     ebx, 10h
mov     edx, [ecx+4Ch]
sar     edx, 10h
cmp     edx, ebx
jge     short loc_43F2BA

loc_43F2AC:
mov     word ptr [ecx+4Eh], 0
inc     byte ptr [ecx+8]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_43F2BA:
mov     word ptr [eax+2], 0
mov     edx, [ecx+0Ah]
sar     edx, 18h
mov     dx, word ptr ds:dword_5142FA[edx*8]
mov     [eax], dx
mov     eax, [ecx+0Ah]
sar     eax, 18h
mov     eax, ds:dword_5142FA[eax*8]
sar     eax, 10h
mov     esi, [ecx+4Ch]
sar     esi, 10h
cmp     esi, eax
jle     short loc_43F2F2

loc_43F2EB:
mov     eax, 80h
jmp     short loc_43F306

loc_43F2F2:
mov     edx, esi
sub     edx, ebx
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
idiv    esi
test    eax, eax
jge     short loc_43F306
xor     eax, eax

loc_43F306:
