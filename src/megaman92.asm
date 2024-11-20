loc_4E4097:
inc     ecx
jmp     short loc_4E4051
sub_4E4037 endp




sub_4E409A proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E40B2

loc_4E40A8:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E40B2:
xor     ecx, ecx

loc_4E40B4:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E40A8
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E40FA
mov     al, [eax+554h]
test    al, al
jz      short loc_4E40EE
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5E[edx*8]
cmp     dl, ds:byte_52DE5E[eax*8]
jge     short loc_4E40FA

loc_4E40EE:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160

loc_4E40FA:
inc     ecx
jmp     short loc_4E40B4
sub_4E409A endp




sub_4E40FD proc near

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, offset byte_5F8364
xor     edi, edi
jmp     short loc_4E4115

loc_4E410B:
inc     edi
cmp     edi, 1Fh
jge     loc_4E3DDC

loc_4E4115:
xor     ecx, ecx

loc_4E4117:
mov     eax, 1Fh
sub     eax, edi
cmp     ecx, eax
jge     short loc_4E410B
lea     eax, [esi+ecx]
mov     bl, [eax+555h]
test    bl, bl
jz      short loc_4E415D
mov     al, [eax+554h]
test    al, al
jz      short loc_4E4151
xor     edx, edx
mov     dl, al
xor     eax, eax
mov     al, bl
mov     dl, ds:byte_52DE5F[edx*8]
cmp     dl, ds:byte_52DE5F[eax*8]
jge     short loc_4E415D

loc_4E4151:
lea     ebx, [ecx+1]
mov     edx, ecx
mov     eax, esi
call    sub_4E4160

loc_4E415D:
inc     ecx
jmp     short loc_4E4117
sub_4E40FD endp




sub_4E4160 proc near
push    ecx
add     edx, eax
mov     cl, [edx+554h]
add     eax, ebx
mov     bl, [eax+554h]
mov     [edx+554h], bl
mov     [eax+554h], cl
pop     ecx
retn
sub_4E4160 endp




sub_4E417F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, offset byte_5F8364
mov     eax, 526h
call    sub_47E888
test    eax, eax
jz      short loc_4E419D
mov     esi, 3
jmp     short loc_4E41A2

loc_4E419D:
mov     esi, 2

loc_4E41A2:
mov     byte ptr [edx+5FCh], 0
mov     byte ptr [edx+5FDh], 0
mov     byte ptr [edx+5FEh], 0
mov     byte ptr [edx+5FFh], 0
xor     ecx, ecx

loc_4E41C0:
cmp     ecx, esi
jge     short loc_4E420B
lea     eax, [edx+ecx]
mov     al, [eax+550h]
and     eax, 0FFh
jz      short loc_4E4208
mov     bl, ds:byte_52DE5C[eax*8]
add     [edx+5FCh], bl
mov     bl, ds:byte_52DE5D[eax*8]
add     [edx+5FDh], bl
mov     bl, ds:byte_52DE5E[eax*8]
add     [edx+5FEh], bl
mov     al, ds:byte_52DE5F[eax*8]
add     [edx+5FFh], al

loc_4E4208:
inc     ecx
jmp     short loc_4E41C0

loc_4E420B:
cmp     byte ptr [edx+5FCh], 7
jle     short loc_4E421B
mov     byte ptr [edx+5FCh], 7

loc_4E421B:
cmp     byte ptr [edx+5FDh], 7
jle     short loc_4E422B
mov     byte ptr [edx+5FDh], 7

loc_4E422B:
cmp     byte ptr [edx+5FEh], 7
jle     short loc_4E423B
mov     byte ptr [edx+5FEh], 7

loc_4E423B:
cmp     byte ptr [edx+5FFh], 7
jle     short loc_4E424B
mov     byte ptr [edx+5FFh], 7

loc_4E424B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E417F endp




sub_4E4250 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
mov     ebp, offset byte_5F8364
mov     eax, 526h
call    sub_47E888
test    eax, eax
jz      short loc_4E4272
mov     edi, 3
jmp     short loc_4E4277

loc_4E4272:
mov     edi, 2

loc_4E4277:
mov     byte ptr [ecx+14h], 0
mov     al, [ecx+14h]
mov     [ecx+11h], al
mov     byte ptr [ecx+1Ch], 0
mov     al, [ecx+1Ch]
mov     [ecx+19h], al
mov     byte ptr [ecx+24h], 0
mov     al, [ecx+24h]
mov     [ecx+21h], al
mov     byte ptr [ecx+2Ch], 0
mov     al, [ecx+2Ch]
mov     [ecx+29h], al
test    byte ptr ds:dword_55BD7C+3, 8
jz      short loc_4E42D6
xor     ebx, ebx

loc_4E42AA:
cmp     ebx, edi
jge     loc_4E3DDB
lea     esi, [ebx+ebp]
movzx   esi, byte ptr [esi+550h]
test    esi, esi
jz      short loc_4E42D3
dec     esi
mov     edx, esi
mov     eax, ecx
call    sub_4E437A
mov     edx, esi
mov     eax, ecx
call    sub_4E43DF

loc_4E42D3:
inc     ebx
jmp     short loc_4E42AA

loc_4E42D6:
test    byte ptr ds:dword_55BD74+2, 1
jz      short loc_4E4325
xor     ebx, ebx

loc_4E42E1:
cmp     ebx, edi
jge     loc_4E3DDB
lea     esi, [ebx+ebp]
movzx   esi, byte ptr [esi+550h]
test    esi, esi
jz      short loc_4E4301
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E437A

loc_4E4301:
mov     edx, ds:dword_55BD78
and     edx, 0FF00h
shr     edx, 8
cmp     ebx, edx
jz      short loc_4E4322
test    esi, esi
jz      short loc_4E4322
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E43DF

loc_4E4322:
inc     ebx
jmp     short loc_4E42E1

loc_4E4325:
xor     ebx, ebx

loc_4E4327:
cmp     ebx, edi
jge     loc_4E3DDB
lea     esi, [ebx+ebp]
movzx   esi, byte ptr [esi+550h]
test    esi, esi
jz      short loc_4E4347
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E437A

loc_4E4347:
mov     edx, ds:dword_55BD78
and     edx, 0FF00h
shr     edx, 8
cmp     ebx, edx
jnz     short loc_4E4369
mov     esi, ds:dword_55BD74
and     esi, 0FF00h
shr     esi, 8

loc_4E4369:
test    esi, esi
jz      short loc_4E4377
lea     edx, [esi-1]
mov     eax, ecx
call    sub_4E43DF

loc_4E4377:
inc     ebx
jmp     short loc_4E4327
sub_4E4250 endp




sub_4E437A proc near
push    ecx
mov     ecx, eax
mov     al, ds:byte_52DE64[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+11h], al
mov     al, ds:byte_52DE65[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+19h], al
mov     al, ds:byte_52DE66[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+21h], al
mov     al, ds:byte_52DE67[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+29h], al
cmp     byte ptr [ecx+11h], 46h ; 'F'
jbe     short loc_4E43BF
mov     byte ptr [ecx+11h], 46h ; 'F'

loc_4E43BF:
cmp     byte ptr [ecx+19h], 46h ; 'F'
jbe     short loc_4E43C9
mov     byte ptr [ecx+19h], 46h ; 'F'

loc_4E43C9:
cmp     byte ptr [ecx+21h], 46h ; 'F'
jbe     short loc_4E43D3
mov     byte ptr [ecx+21h], 46h ; 'F'

loc_4E43D3:
cmp     byte ptr [ecx+29h], 28h ; '('
jbe     short loc_4E43DD
mov     byte ptr [ecx+29h], 28h ; '('

loc_4E43DD:
pop     ecx
retn
sub_4E437A endp




sub_4E43DF proc near
push    ecx
mov     ecx, eax
mov     al, ds:byte_52DE64[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+14h], al
mov     al, ds:byte_52DE65[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+1Ch], al
mov     al, ds:byte_52DE66[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+24h], al
mov     al, ds:byte_52DE67[edx*8]
mov     ah, 0Ah
mul     ah
add     [ecx+2Ch], al
cmp     byte ptr [ecx+14h], 46h ; 'F'
jbe     short loc_4E4424
mov     byte ptr [ecx+14h], 46h ; 'F'

loc_4E4424:
cmp     byte ptr [ecx+1Ch], 46h ; 'F'
jbe     short loc_4E442E
mov     byte ptr [ecx+1Ch], 46h ; 'F'

loc_4E442E:
cmp     byte ptr [ecx+24h], 46h ; 'F'
jbe     short loc_4E4438
mov     byte ptr [ecx+24h], 46h ; 'F'

loc_4E4438:
cmp     byte ptr [ecx+2Ch], 28h ; '('
jbe     short loc_4E4442
mov     byte ptr [ecx+2Ch], 28h ; '('

loc_4E4442:
pop     ecx
retn
sub_4E43DF endp




sub_4E4444 proc near
push    ebx
push    ecx
push    esi
mov     ebx, edx
test    edx, edx
jge     short loc_4E4483
mov     byte ptr [eax+16h], 0
mov     dl, [eax+16h]
mov     [eax+11h], dl
mov     byte ptr [eax+1Eh], 0
mov     dl, [eax+1Eh]
mov     [eax+19h], dl
mov     byte ptr [eax+26h], 0
mov     dl, [eax+26h]
mov     [eax+21h], dl
mov     byte ptr [eax+2Eh], 0
mov     dl, [eax+2Eh]
mov     [eax+29h], dl
mov     byte ptr [eax+36h], 0
mov     dl, [eax+36h]
mov     [eax+31h], dl
pop     esi
pop     ecx
pop     ebx
retn

loc_4E4483:
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ecx, esi
shl     ecx, 2
add     esi, ecx
shl     esi, 2
mov     ecx, edx
shl     ecx, 3
add     ecx, offset byte_5F8364
mov     ebx, [ecx+5F1h]
sar     ebx, 18h
mov     bl, ds:byte_5506D8[esi+ebx]
mov     [eax+11h], bl
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
mov     esi, [ecx+5F2h]
sar     esi, 18h
mov     bl, ds:byte_5506DC[esi+ebx*4]
mov     [eax+19h], bl
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
mov     esi, [ecx+5F3h]
sar     esi, 18h
mov     bl, ds:byte_5506E0[esi+ebx*4]
mov     [eax+21h], bl
xor     esi, esi
mov     si, ds:word_5509F6[edx*2]
mov     ebx, esi
shl     ebx, 2
add     ebx, esi
mov     esi, [ecx+5F4h]
sar     esi, 18h
mov     bl, ds:byte_5506E4[esi+ebx*4]
mov     [eax+29h], bl
xor     ebx, ebx
mov     bx, ds:word_5509F6[edx*2]
mov     edx, ebx
shl     edx, 2
add     edx, ebx
mov     ecx, [ecx+5F5h]
sar     ecx, 18h
mov     dl, ds:byte_5506E8[ecx+edx*4]
mov     [eax+31h], dl
cmp     byte ptr [eax+11h], 0FFh
jnz     short loc_4E4555
mov     byte ptr [eax+11h], 58h ; 'X'
mov     byte ptr [eax+16h], 1
jmp     short loc_4E4559

loc_4E4555:
mov     byte ptr [eax+16h], 0

loc_4E4559:
cmp     byte ptr [eax+19h], 0FFh
jnz     short loc_4E4569
mov     byte ptr [eax+19h], 58h ; 'X'
mov     byte ptr [eax+1Eh], 1
jmp     short loc_4E456D

loc_4E4569:
mov     byte ptr [eax+1Eh], 0

loc_4E456D:
cmp     byte ptr [eax+21h], 0FFh
jnz     short loc_4E457D
mov     byte ptr [eax+21h], 58h ; 'X'
mov     byte ptr [eax+26h], 1
jmp     short loc_4E4581

loc_4E457D:
mov     byte ptr [eax+26h], 0

loc_4E4581:
cmp     byte ptr [eax+29h], 0FFh
jnz     short loc_4E4591
mov     byte ptr [eax+29h], 58h ; 'X'
mov     byte ptr [eax+2Eh], 1
jmp     short loc_4E4595

loc_4E4591:
mov     byte ptr [eax+2Eh], 0

loc_4E4595:
cmp     byte ptr [eax+31h], 0FFh
jnz     short loc_4E45A7
mov     byte ptr [eax+31h], 58h ; 'X'
mov     byte ptr [eax+36h], 1
pop     esi
pop     ecx
pop     ebx
retn

loc_4E45A7:
mov     byte ptr [eax+36h], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_4E4444 endp




sub_4E45AF proc near

var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     edi, eax
mov     esi, edx
mov     [esp+28h+var_28], ecx
mov     ecx, ds:dword_77E6DC
mov     ebp, ecx
lea     edx, [ecx+38h]
mov     [ecx], edx
mov     dword ptr [ecx+4], 2C808080h
mov     eax, ecx
call    sub_4F87F0
mov     [ecx+18h], di
mov     eax, edi
mov     [ecx+8], ax
add     eax, ebx
mov     [esp+28h+var_24], eax
add     eax, 6
mov     [esp+28h+var_20], eax
mov     [ecx+20h], ax
mov     [ecx+10h], ax
mov     eax, [esp+28h+var_28]
add     eax, eax
add     eax, esi
mov     [esp+28h+var_1C], eax
mov     [ecx+12h], ax
mov     [ecx+0Ah], ax
add     eax, 5
mov     [esp+28h+var_18], eax
mov     [ecx+22h], ax
mov     [ecx+1Ah], ax
mov     word ptr [ecx+16h], 0Ch
mov     word ptr [ecx+0Eh], 3E83h
mov     eax, [esp+28h+var_28]
shl     eax, 3
mov     [esp+28h+var_10], eax
add     eax, 90h
shl     eax, 8
mov     [esp+28h+var_14], eax
or      al, 60h
mov     [ecx+0Ch], ax
mov     eax, [esp+28h+var_14]
or      al, 61h
mov     [ecx+14h], ax
mov     eax, [esp+28h+var_10]
add     eax, 95h
shl     eax, 8
mov     [esp+28h+var_10], eax
or      al, 60h
mov     [ecx+1Ch], ax
mov     eax, [esp+28h+var_10]
or      al, 61h
mov     [ecx+24h], ax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
lea     ecx, [edx+38h]
mov     [edx], ecx
mov     eax, [esp+28h+var_20]
mov     [edx+18h], ax
mov     [edx+8], ax
mov     eax, [esp+28h+var_24]
add     eax, 0Ah
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     eax, [esp+28h+var_1C]
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     eax, [esp+28h+var_18]
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     word ptr [edx+16h], 0Ch
mov     word ptr [edx+0Eh], 3E83h
mov     eax, [esp+28h+var_14]
or      al, 6Fh
mov     [edx+0Ch], ax
mov     eax, [esp+28h+var_14]
or      al, 73h
mov     [edx+14h], ax
mov     eax, [esp+28h+var_10]
or      al, 6Fh
mov     [edx+1Ch], ax
mov     eax, [esp+28h+var_10]
or      al, 73h
mov     [edx+24h], ax
cmp     [esp+28h+var_28], 0
jnz     short loc_4E473F
cmp     esi, 46h ; 'F'
jz      short loc_4E46FA
cmp     ebx, 46h ; 'F'
jz      short loc_4E4704

loc_4E46FA:
cmp     esi, 46h ; 'F'
jnz     short loc_4E473F
cmp     ebx, 28h ; '('
jnz     short loc_4E473F

loc_4E4704:
lea     eax, [ecx+38h]
mov     [ecx], eax
mov     dword ptr [ecx+4], 64808080h
cmp     ebx, 46h ; 'F'
jnz     short loc_4E471C
mov     eax, 1
jmp     short loc_4E471E

loc_4E471C:
xor     eax, eax

loc_4E471E:
imul    eax, 0Eh
add     edi, 0Ah
add     edi, eax
mov     [ecx+8], di
mov     [ecx+0Ah], si
mov     dword ptr [ecx+0Ch], 3E82F028h
mov     dword ptr [ecx+10h], 60018h
add     ecx, 38h ; '8'

loc_4E473F:
lea     ebx, [ecx-38h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ebp
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 1Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4E45AF endp




sub_4E475E proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edi, eax
mov     esi, edx
mov     [esp+18h+var_18], ecx
mov     ecx, ds:dword_77E6DC
mov     ebp, ecx
lea     edx, [ecx+38h]
mov     [ecx], edx
mov     dword ptr [ecx+4], 2C808080h
mov     eax, ecx
call    sub_4F87F0
mov     [ecx+18h], di
mov     eax, edi
mov     [ecx+8], ax
add     eax, ebx
mov     [esp+18h+var_14], eax
mov     [ecx+20h], ax
mov     [ecx+10h], ax
mov     [ecx+12h], si
mov     eax, esi
mov     [ecx+0Ah], ax
add     eax, 8
mov     [esp+18h+var_10], eax
mov     [ecx+22h], ax
mov     [ecx+1Ah], ax
mov     word ptr [ecx+16h], 0Ch
mov     word ptr [ecx+0Eh], 3E83h
mov     word ptr [ecx+0Ch], 9048h
mov     word ptr [ecx+14h], 9049h
mov     word ptr [ecx+1Ch], 9848h
mov     word ptr [ecx+24h], 9849h
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
lea     eax, [edx+38h]
mov     [edx], eax
mov     ecx, [esp+18h+var_14]
mov     [edx+18h], cx
mov     [edx+8], cx
add     ecx, 4
mov     [edx+20h], cx
mov     [edx+10h], cx
mov     [edx+12h], si
mov     ecx, esi
mov     [edx+0Ah], cx
mov     ecx, [esp+18h+var_10]
mov     [edx+22h], cx
mov     [edx+1Ah], cx
mov     word ptr [edx+16h], 0Ch
mov     word ptr [edx+0Eh], 3E83h
mov     word ptr [edx+0Ch], 904Ch
mov     word ptr [edx+14h], 9050h
mov     word ptr [edx+1Ch], 984Ch
mov     word ptr [edx+24h], 9850h
mov     ecx, eax
cmp     [esp+18h+var_18], 0
jz      short loc_4E4873
cmp     ebx, 58h ; 'X'
jnz     short loc_4E4873
lea     ecx, [eax+38h]
mov     [eax], ecx
mov     dword ptr [eax+4], 64808080h
add     edi, 18h
mov     [eax+8], di
mov     [eax+0Ah], si
mov     dword ptr [eax+0Ch], 3E82F828h
mov     dword ptr [eax+10h], 80028h

loc_4E4873:
lea     ebx, [ecx-38h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ebp
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4E475E endp




sub_4E4892 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, ds:dword_5F8412
sar     ebp, 10h
dec     ebp
sar     ebp, 4
mov     ecx, dword ptr ds:unk_5F83D0
sar     ecx, 10h
mov     esi, ds:dword_77E6DC
mov     [esp+1Ch+var_1C], esi
mov     dword ptr [esi], 2000000h
mov     dword ptr [esi+4], 0E100000Dh
mov     dword ptr [esi+8], 0
lea     eax, [esi+14h]
mov     [esi], eax
xor     ebx, ebx
mov     esi, eax
mov     edi, 10h

loc_4E48DC:
cmp     ebx, ebp
jg      short loc_4E493E
lea     eax, [esi+14h]
mov     [esi], eax
mov     dword ptr [esi+4], 64808080h
mov     edx, ebx
mov     eax, ebx
shl     eax, 2
add     eax, ebx
add     eax, 31h ; '1'
or      eax, 240000h
mov     [esi+8], eax
mov     dword ptr [esi+10h], 80008h
shl     edx, 4
cmp     ecx, edx
jle     short loc_4E4930
lea     eax, [ecx-10h]
cmp     eax, edx
jg      short loc_4E4922
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
idiv    edi
test    edx, edx
jnz     short loc_4E4929

loc_4E4922:
mov     edx, 3E75B870h
jmp     short loc_4E4935

loc_4E4929:
mov     edx, 3E75B878h
jmp     short loc_4E4935

loc_4E4930:
mov     edx, 3E75B880h

loc_4E4935:
mov     [esi+0Ch], edx
add     esi, 14h
inc     ebx
jmp     short loc_4E48DC

loc_4E493E:
mov     ebx, ds:dword_77E7A0
mov     ecx, 306h
mov     edx, 2400A4h
mov     eax, esi
call    sub_4E49C7
mov     esi, eax
mov     ecx, 1A5E0h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ecx, 2
mov     ebx, eax
mov     edx, 240106h
mov     eax, esi
call    sub_4E49C7
mov     esi, eax
mov     ecx, 708h
xor     edx, edx
mov     eax, ds:dword_77E790
div     ecx
mov     ecx, 3Ch ; '<'
xor     edx, edx
div     ecx
mov     ecx, 2
mov     ebx, edx
mov     edx, 24011Ah
mov     eax, esi
call    sub_4E49C7
mov     ecx, eax
lea     ebx, [eax-14h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, [esp+1Ch+var_1C]
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 4
jmp     loc_4E3DDB
sub_4E4892 endp




sub_4E49C7 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     [esp+14h+var_14], edx
mov     [esp+14h+var_10], ecx
and     ecx, 0FFh

loc_4E49DC:
dec     ecx
test    ecx, ecx
jl      loc_4E4A59
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     eax, [esp+14h+var_10]
and     eax, 0FFh
dec     eax
cmp     ecx, eax
jnz     short loc_4E4A08
test    byte ptr [esp+14h+var_10+1], 2
jz      short loc_4E4A13

loc_4E4A08:
test    ebx, ebx
jnz     short loc_4E4A13
test    byte ptr [esp+14h+var_10+1], 1
jnz     short loc_4E4A47

loc_4E4A13:
lea     edi, [esi+14h]
mov     [esi], edi
mov     dword ptr [esi+4], 64808080h
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     ebp, [esp+14h+var_14]
add     ebp, eax
mov     [esi+8], ebp
mov     dword ptr [esi+10h], 80008h
mov     eax, edx
shl     eax, 3
add     eax, 60h ; '`'
or      eax, 3E75B000h
mov     [esi+0Ch], eax
mov     esi, edi

loc_4E4A47:
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     ebx, eax
jmp     short loc_4E49DC

loc_4E4A59:
mov     eax, esi
add     esp, 8
pop     ebp
pop     edi
pop     esi
retn
sub_4E49C7 endp




sub_4E4A62 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, ds:dword_77E6DC
mov     ebp, esi
mov     ebx, eax
shl     ebx, 3
add     ebx, offset byte_5F8364
mov     ebx, [ebx+5F8h]
sar     ebx, 10h
mov     edx, eax
mov     eax, offset byte_5F8364
call    sub_4EE60F
mov     edi, eax
cmp     eax, 7FFFh
jge     loc_4E3DDB
mov     dword ptr [esi], 2000000h
mov     dword ptr [esi+4], 0E100000Ch
mov     dword ptr [esi+8], 0
lea     eax, [esi+14h]
lea     edx, [esi+28h]
mov     [esi], edx
mov     dword ptr [eax+4], 64808080h
mov     dword ptr [eax+8], 8C00D1h
mov     dword ptr [eax+10h], 80006h
mov     dword ptr [eax+0Ch], 3E82F040h
add     eax, 14h
mov     ecx, 4
mov     edx, 8C00B4h
call    sub_4E4B17
mov     ecx, 4
mov     ebx, edi
mov     edx, 8C00D8h
call    sub_4E4B17
mov     esi, eax
lea     ebx, [eax-14h]
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
mov     edx, ebp
call    sub_4F87AF
mov     ds:dword_77E6DC, esi
jmp     loc_4E3DDB
sub_4E4A62 endp




sub_4E4B17 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     [esp+14h+var_14], edx
mov     [esp+14h+var_10], ecx
and     ecx, 0FFh

loc_4E4B2C:
dec     ecx
test    ecx, ecx
jl      loc_4E4A59
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     edi, edx
mov     eax, [esp+14h+var_10]
and     eax, 0FFh
dec     eax
cmp     ecx, eax
jnz     short loc_4E4B5A
test    byte ptr [esp+14h+var_10+1], 2
jz      short loc_4E4B65

loc_4E4B5A:
test    ebx, ebx
jnz     short loc_4E4B65
test    byte ptr [esp+14h+var_10+1], 1
jnz     short loc_4E4B95

loc_4E4B65:
lea     ebp, [esi+14h]
mov     [esi], ebp
mov     dword ptr [esi+4], 64808080h
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
mov     edx, [esp+14h+var_14]
add     edx, eax
mov     [esi+8], edx
mov     dword ptr [esi+10h], 80006h
shl     edi, 3
or      edi, 3E82C000h
mov     [esi+0Ch], edi
mov     esi, ebp

loc_4E4B95:
mov     edi, 0Ah
mov     eax, ebx
mov     edx, ebx
sar     edx, 1Fh
idiv    edi
mov     ebx, eax
jmp     short loc_4E4B2C
sub_4E4B17 endp




sub_4E4BA7 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h

; FUNCTION CHUNK AT 004E3DDC SIZE 00000006 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     eax, ds:dword_77E6DC
mov     [esp+1Ch+var_1C], eax
mov     dword ptr [eax], 2000000h
mov     dword ptr [eax+4], 0E100000Dh
mov     dword ptr [eax+8], 0
lea     edx, [eax+14h]
mov     [eax], edx
xor     edx, edx
mov     [esp+1Ch+var_18], edx
mov     eax, [eax]
jmp     short loc_4E4BE8

loc_4E4BDA:
mov     ebx, [esp+1Ch+var_18]
inc     ebx
mov     [esp+1Ch+var_18], ebx
cmp     ebx, 4
jg      short loc_4E4C44

loc_4E4BE8:
xor     edx, edx

loc_4E4BEA:
lea     ecx, [eax+14h]
mov     [eax], ecx
mov     dword ptr [eax+4], 64808080h
mov     edi, edx
shl     edi, 6
mov     bx, ds:word_77EAB6
xor     bh, bh
and     bl, 3Fh
and     ebx, 0FFFFh
sub     edi, 40h ; '@'
add     edi, ebx
and     edi, 0FFFFh
mov     esi, [esp+1Ch+var_18]
shl     esi, 6
sub     esi, 40h ; '@'
add     ebx, esi
shl     ebx, 10h
or      edi, ebx
mov     [eax+8], edi
mov     dword ptr [eax+0Ch], 3E7788C0h
mov     dword ptr [eax+10h], 400040h
mov     eax, ecx
inc     edx
cmp     edx, 6
jle     short loc_4E4BEA
jmp     short loc_4E4BDA

loc_4E4C44:
lea     ebx, [ecx-14h]
mov     eax, ds:dword_77EA74
add     eax, 8Ch
mov     edx, [esp+1Ch+var_1C]
call    sub_4F87AF
mov     ds:dword_77E6DC, ecx
add     esp, 8
jmp     loc_4E3DDC
sub_4E4BA7 endp




sub_4E4C67 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+9], 3
jnz     short loc_4E4C86
cmp     byte ptr [ecx+0Ah], 4
jnz     short loc_4E4C86
xor     ebx, ebx
xor     edx, edx
mov     eax, 8Ch
call    sub_4D89E4

loc_4E4C86:
mov     edx, [ecx+171h]
sar     edx, 18h
test    dl, 0C0h
jz      loc_4E4D2F
and     edx, 0C0h
cmp     edx, 40h ; '@'
jnz     loc_4E4D2F
cmp     byte ptr [ecx+170h], 4
jnz     short loc_4E4CC9
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4CC9
lea     edx, [ecx+4C8h]
mov     eax, 123h
call    sub_4D8BC3

loc_4E4CC9:
cmp     byte ptr [ecx+170h], 7
jnz     short loc_4E4CEB
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4CEB
lea     edx, [ecx+4C8h]
mov     eax, 12Bh
call    sub_4D8BC3

loc_4E4CEB:
cmp     byte ptr [ecx+170h], 0Ch
jnz     short loc_4E4D0D
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4D0D
lea     edx, [ecx+4C8h]
mov     eax, 134h
call    sub_4D8BC3

loc_4E4D0D:
cmp     byte ptr [ecx+170h], 0Dh
jnz     short loc_4E4D2F
cmp     byte ptr [ecx+178h], 2
jnz     short loc_4E4D2F
lea     edx, [ecx+4C8h]
mov     eax, 136h
call    sub_4D8BC3

loc_4E4D2F:
pop     edx
pop     ecx
pop     ebx
retn
sub_4E4C67 endp




sub_4E4D33 proc near
push    edx
xor     edx, edx
mov     ds:dword_55DD0C, edx
mov     ds:dword_55DD10, edx
cmp     byte ptr ds:dword_77E7D5+1, 9
jge     short loc_4E4D55
xor     dh, dh
mov     byte ptr ds:dword_55DD10, dh
pop     edx
retn

loc_4E4D55:
mov     byte ptr ds:dword_55DD10, 1
pop     edx
retn
sub_4E4D33 endp




sub_4E4D5E proc near
push    ebx
push    ecx
push    edx
xor     edx, edx
mov     dx, ds:word_5708DE
mov     ecx, offset dword_55DD0C
mov     al, byte ptr ds:dword_55DD0C
cmp     al, 1
jb      short loc_4E4D8B
jbe     loc_4E4E42
cmp     al, 2
jz      loc_4E4E75
jmp     loc_4E4E86

loc_4E4D8B:
test    al, al
jnz     loc_4E4E86
call    sub_4E4F14
call    sub_4E4E8C
test    dx, 1009h
jz      short loc_4E4DBE
xor     ebx, ebx
mov     edx, 1
mov     eax, 83h
call    sub_4D89E4
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn

loc_4E4DBE:
test    dx, 4828h
jnz     short loc_4E4DCC
mov     eax, 1
jmp     short loc_4E4DCE

loc_4E4DCC:
xor     eax, eax

loc_4E4DCE:
test    dx, 480h
jnz     short loc_4E4DDC
mov     ebx, 1
jmp     short loc_4E4DDE

loc_4E4DDC:
xor     ebx, ebx

loc_4E4DDE:
cmp     eax, ebx
jz      loc_4E4E86
test    dx, 480h
jz      short loc_4E4E0C
mov     al, [ecx+5]
dec     al
mov     [ecx+5], al
test    al, al
jge     short loc_4E4E2D
cmp     byte ptr [ecx+4], 0
jle     short loc_4E4E03
mov     al, 1
jmp     short loc_4E4E05

loc_4E4E03:
xor     al, al

loc_4E4E05:
inc     al
mov     [ecx+5], al
jmp     short loc_4E4E2D

loc_4E4E0C:
cmp     byte ptr [ecx+4], 0
jle     short loc_4E4E19
mov     eax, 1
jmp     short loc_4E4E1B

loc_4E4E19:
xor     eax, eax

loc_4E4E1B:
inc     byte ptr [ecx+5]
mov     edx, [ecx+2]
sar     edx, 18h
inc     eax
cmp     edx, eax
jle     short loc_4E4E2D
mov     byte ptr [ecx+5], 0

loc_4E4E2D:
xor     ebx, ebx
mov     edx, 1
mov     eax, 82h
call    sub_4D89E4

loc_4E4E3E:
inc     byte ptr [ecx]
jmp     short loc_4E4E86

loc_4E4E42:
cmp     byte ptr ds:dword_55DD10, 0
jnz     short loc_4E4E5C
mov     eax, ds:dword_55DD0C+2
sar     eax, 18h
mov     eax, ds:dword_550A12[eax*2]
jmp     short loc_4E4E6B

loc_4E4E5C:
mov     eax, ds:dword_55DD0C+2
sar     eax, 18h
mov     eax, ds:dword_550A16[eax*2]

loc_4E4E6B:
sar     eax, 10h
call    sub_42BEB2
jmp     short loc_4E4E3E

loc_4E4E75:
call    sub_42C353
test    eax, eax
jnz     short loc_4E4E86
xor     ah, ah
mov     byte ptr ds:dword_55DD0C, ah

loc_4E4E86:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4E4D5E endp




sub_4E4E8C proc near
push    edx
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     word ptr [edx+18h], 20h ; ' '
mov     ax, [edx+18h]
mov     [edx+8], ax
mov     word ptr [edx+20h], 11Fh
mov     ax, [edx+20h]
mov     [edx+10h], ax
mov     word ptr [edx+12h], 0
mov     ax, [edx+12h]
mov     [edx+0Ah], ax
mov     word ptr [edx+22h], 0F0h
mov     ax, [edx+22h]
mov     [edx+1Ah], ax
mov     word ptr [edx+16h], 8Ch
mov     word ptr [edx+0Eh], 3E80h
mov     word ptr [edx+0Ch], 0
mov     word ptr [edx+14h], 0FFh
mov     word ptr [edx+1Ch], 0F000h
mov     word ptr [edx+24h], 0F0FFh
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
pop     edx
retn
sub_4E4E8C endp




sub_4E4F14 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     eax, offset dword_77E784
mov     dl, ds:byte_77E7D4
cmp     dl, 17h
jb      short loc_4E4F47
jbe     loc_4E503C
cmp     dl, 1Ch
jb      short loc_4E4F40
jbe     short loc_4E4F7A
cmp     dl, 1Dh
jz      loc_4E503C
jmp     short loc_4E4F81

loc_4E4F40:
cmp     dl, 1Bh
jz      short loc_4E4F5A
jmp     short loc_4E4F81

loc_4E4F47:
cmp     dl, 0Fh
jb      short loc_4E4F55
jbe     short loc_4E4F6C
cmp     dl, 13h
jz      short loc_4E4F73
jmp     short loc_4E4F81

loc_4E4F55:
cmp     dl, 3
jnz     short loc_4E4F81

loc_4E4F5A:
cmp     byte ptr [eax+51h], 3
jge     short loc_4E4F65
mov     eax, [eax+4Eh]
jmp     short loc_4E4F84

loc_4E4F65:
mov     eax, 3
jmp     short loc_4E4F87

loc_4E4F6C:
mov     eax, 6
jmp     short loc_4E4F87

loc_4E4F73:
mov     eax, 0Ah
jmp     short loc_4E4F87

loc_4E4F7A:
mov     eax, 8
jmp     short loc_4E4F87

loc_4E4F81:
mov     eax, [eax+4Dh]

loc_4E4F84:
sar     eax, 18h

loc_4E4F87:
mov     esi, ds:off_550A1C[eax*4]
sar     esi, 10h
add     esi, 20h ; ' '
mov     ebx, ds:(off_550A1C+2)[eax*4]
sar     ebx, 10h
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 7
xor     ecx, ecx
mov     cx, ax
shl     ecx, 4
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     eax, esi
sub     eax, 8
mov     [edx+18h], ax
mov     [edx+8], ax
add     esi, 7
mov     [edx+20h], si
mov     [edx+10h], si
mov     eax, ebx
sub     eax, 8
mov     [edx+12h], ax
mov     [edx+0Ah], ax
add     ebx, 7
mov     [edx+22h], bx
mov     [edx+1Ah], bx
mov     word ptr [edx+16h], 8Ch
mov     word ptr [edx+0Eh], 3E80h
mov     eax, ecx
or      ah, 0F0h
mov     [edx+0Ch], ax
mov     eax, ecx
add     eax, 0Fh
mov     ebx, eax
or      bh, 0F0h
mov     [edx+14h], bx
or      ch, 0FFh
mov     [edx+1Ch], cx
or      ah, 0FFh
mov     [edx+24h], ax
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E503C:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E4F14 endp




sub_4E5041 proc near
push    ebx
push    edx
mov     ebx, 1000h
xor     edx, edx
mov     eax, offset unk_55E514
call    memset_
mov     edx, offset byte_55FDB4
mov     eax, offset dword_55FD14
call    sub_4EECF9
pop     edx
pop     ebx
retn
sub_4E5041 endp




sub_4E5066 proc near
xor     eax, eax
mov     al, byte ptr ds:dword_55FD14
call    ds:funcs_4E506D[eax*4]
mov     eax, ds:dword_55FD1A
sar     eax, 10h
retn
sub_4E5066 endp




sub_4E507D proc near
push    ebx
push    ecx
push    edx
push    ebp
mov     al, byte ptr ds:dword_55FD14+1
test    al, al
jbe     short loc_4E5092
cmp     al, 1
jz      loc_4E5121

loc_4E5092:
mov     ds:dword_55FD30, 180h
xor     ecx, ecx
mov     ds:dword_55FD34, ecx
mov     ds:dword_55FD38, 80h
mov     ds:dword_55FD20, 40h ; '@'
mov     ds:dword_55FD24, 0FFFFFF6Ah
xor     ebp, ebp
mov     ds:dword_55FD28, ecx
mov     ds:dword_55F51C, ecx
mov     ds:dword_55F514, 112003h
mov     ecx, 30000h
mov     ds:dword_55F518, ecx
mov     ds:dword_55DD1C, ebp
mov     ds:dword_55DD14, 52003h
mov     ds:dword_55DD18, ecx
mov     eax, ds:dword_77E7D0+1
sar     eax, 18h
mov     eax, ds:dword_550D63[eax]
sar     eax, 18h
inc     byte ptr ds:dword_55FD14+1
call    sub_4E7831
call    sub_4D8ED6
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5121:
mov     ah, ds:byte_77EAB8
test    ah, ah
jnz     short loc_4E5148
mov     byte ptr ds:dword_55FD14+1, ah
add     byte ptr ds:dword_55FD14, al
xor     ebx, ebx
mov     edx, 1
mov     eax, 8000002Bh
call    sub_4D89E4

loc_4E5148:
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_4E507D endp




sub_4E514D proc near
push    ebx
push    edx
cmp     byte ptr ds:dword_55FD14+1, 0
jnz     short loc_4E5191
mov     eax, 24h ; '$'
call    sub_47E888
test    eax, eax
jz      short loc_4E517C
mov     ds:dword_55FD14, 5
mov     eax, 24h ; '$'
call    sub_47EA91
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E517C:
inc     byte ptr ds:dword_55FD14+1
mov     ebx, 1
mov     edx, offset unk_75354C
call    sub_4A0CDD

loc_4E5191:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E7924 ; jumptable 004E7924 default case
mov     eax, ds:dword_55BD7C
and     eax, 0FFh
mov     eax, ds:dword_550DBC[eax*4]
mov     ds:dword_55FD14, eax

def_4E7924:             ; jumptable 004E7924 default case
call    sub_4E521C
pop     edx
pop     ebx
retn
sub_4E514D endp




sub_4E51B8 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+1
cmp     al, 1
jb      short loc_4E51CB
jbe     short loc_4E51E8
cmp     al, 2
jz      short loc_4E51FA
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E51CB:
test    al, al
jnz     short def_4E7924 ; jumptable 004E7924 default case
mov     ebx, 1Ch
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
inc     byte ptr ds:dword_55FD14+1
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E51E8:
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E7924 ; jumptable 004E7924 default case
inc     al
mov     byte ptr ds:dword_55FD14+1, al
jmp     short def_4E7924 ; jumptable 004E7924 default case

loc_4E51FA:
mov     word ptr ds:dword_55FD1A+2, 1
jmp     short def_4E7924 ; jumptable 004E7924 default case
sub_4E51B8 endp




sub_4E5205 proc near
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short sub_4E521C
movsx   ax, ds:byte_55FDB4
mov     word ptr ds:dword_55FD1A+2, ax
sub_4E5205 endp




sub_4E521C proc near
push    ebx
push    edx
call    sub_4E5292
call    sub_4E5350
call    sub_4E525B
call    sub_4E527E
xor     eax, eax
mov     al, ds:byte_77EAC6
shl     eax, 0Eh
mov     ebx, offset unk_7764A4
add     ebx, eax
lea     edx, [ebx+3FFCh]
mov     eax, ds:dword_77EA74
add     eax, 80h
call    sub_4F87AF
pop     edx
pop     ebx
retn
sub_4E521C endp




sub_4E525B proc near
push    ebx
push    ecx
push    edx
mov     ecx, ds:dword_55FD38
mov     ebx, ds:dword_55FD34
mov     edx, ds:dword_55FD30
mov     eax, offset dword_55FD20
call    sub_4E7E66
pop     edx
pop     ecx
pop     ebx
retn
sub_4E525B endp




sub_4E527E proc near
mov     eax, offset dword_55F514
call    sub_4EB5D4
mov     eax, offset dword_55DD14
jmp     sub_4EB5D4
sub_4E527E endp




sub_4E5292 proc near
push    edx
xor     edx, edx
mov     dl, byte ptr ds:dword_55F51C
mov     eax, offset dword_55F514
call    ds:funcs_4E52A0[edx*4]
pop     edx
retn
sub_4E5292 endp




sub_4E52A9 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     word ptr [eax+2Ch], 0FFD0h
mov     ax, [eax+2Ch]
mov     [ecx+14h], ax
mov     word ptr [ecx+2Eh], 0FFB8h
mov     ax, [ecx+2Eh]
mov     [ecx+16h], ax
mov     word ptr [ecx+30h], 22h ; '"'
mov     ax, [ecx+30h]
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     word ptr [ecx+58h], 0
mov     ax, [ecx+58h]
mov     [ecx+54h], ax
mov     word ptr [ecx+56h], 0FEB0h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
sub_4E52A9 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_19]


; Attributes: thunk

sub_4E534B proc near
jmp     sub_4DEADD
sub_4E534B endp




sub_4E5350 proc near
push    edx
xor     edx, edx
mov     dl, byte ptr ds:dword_55DD1C
mov     eax, offset dword_55DD14
call    ds:funcs_4E535E[edx*4]
pop     edx
retn
sub_4E5350 endp




sub_4E5367 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     word ptr [eax+2Ch], 40h ; '@'
mov     ax, [eax+2Ch]
mov     [ecx+14h], ax
mov     word ptr [ecx+2Eh], 0
mov     ax, [ecx+2Eh]
mov     [ecx+16h], ax
mov     word ptr [ecx+30h], 60h ; '`'
mov     ax, [ecx+30h]
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+34h], eax
mov     [ecx+1Ch], eax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+38h], eax
mov     [ecx+20h], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+3Ch], eax
mov     [ecx+24h], eax
mov     word ptr [ecx+56h], 0
mov     ax, [ecx+56h]
mov     [ecx+58h], ax
mov     [ecx+54h], ax
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
xor     edx, edx
mov     word ptr ds:dword_55FDA8, dx
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5367 endp




sub_4E540D proc near
push    ebx
push    edx
cmp     word ptr ds:dword_55FDA8, 0
jz      short loc_4E5435
mov     edx, ds:dword_55FDA4+2
sar     edx, 10h
xor     ebx, ebx
call    sub_4DE96B
xor     ebx, ebx
mov     word ptr ds:dword_55FDA8, bx
pop     edx
pop     ebx
retn

loc_4E5435:
call    sub_4DEADD
pop     edx
pop     ebx
sub_4E540D endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_20]
jpt_4E5482 dd offset loc_4E5489 ; jump table for switch statement
dd offset loc_4E5522
dd offset loc_4E5545
dd offset loc_4E556A
dd offset loc_4E5580
dd offset loc_4E558A
dd offset loc_4E5594
dd offset loc_4E559E
dd offset def_4E5482
dd offset loc_4E55C1
dd offset loc_4E562E
dd offset loc_4E5643



sub_4E546D proc near
push    ebx
push    edx
push    esi
push    edi
mov     al, byte ptr ds:dword_55FD14+1
cmp     al, 0Bh         ; switch 12 cases
ja      def_4E5482      ; jumptable 004E5482 default case, case 8
xor     edx, edx
mov     dl, al
jmp     jpt_4E5482[edx*4] ; switch jump

loc_4E5489:             ; jumptable 004E5482 case 0
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, ds:dword_55DD26
sar     edx, 10h
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_55DD26+2
sar     edx, 10h
sub     edx, 76h ; 'v'
mov     ds:dword_55FD5C, edx
mov     edx, ds:dword_55DD2A
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     ds:dword_55FD68, 100h
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD6C, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD70, edx

loc_4E550D:
mov     ds:word_55FD1E, 10h
inc     al

loc_4E5518:
mov     byte ptr ds:dword_55FD14+1, al
jmp     loc_4E564D

loc_4E5522:             ; jumptable 004E5482 case 1
mov     di, ds:word_55FD1E
dec     di
mov     ds:word_55FD1E, di

loc_4E5532:
jnz     short loc_4E553B
inc     al
mov     byte ptr ds:dword_55FD14+1, al

loc_4E553B:
call    sub_4E5661
jmp     loc_4E564D

loc_4E5545:             ; jumptable 004E5482 case 2
mov     ebx, 5
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8

def_4E5482:             ; jumptable 004E5482 default case, case 8
inc     byte ptr ds:dword_55FD14+1
jmp     loc_4E564D

loc_4E556A:             ; jumptable 004E5482 case 3
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     loc_4E564D
mov     al, byte ptr ds:dword_55BD7C
add     al, 4
jmp     short loc_4E5518

loc_4E5580:             ; jumptable 004E5482 case 4
call    sub_4E57D9
jmp     loc_4E564D

loc_4E558A:             ; jumptable 004E5482 case 5
call    sub_4E5849
jmp     loc_4E564D

loc_4E5594:             ; jumptable 004E5482 case 6
call    sub_4E713D
jmp     loc_4E564D

loc_4E559E:             ; jumptable 004E5482 case 7
cmp     ds:byte_77E7D4, 13h
jnz     short loc_4E55B7
cmp     byte ptr ds:dword_77E7D5, 0Bh
jnz     short loc_4E55B7
add     al, 2
jmp     loc_4E5518

loc_4E55B7:
call    sub_4E73DD
jmp     loc_4E564D

loc_4E55C1:             ; jumptable 004E5482 case 9
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     ds:dword_55FD58, 40h ; '@'
mov     ds:dword_55FD5C, 0FFFFFF6Ah
xor     esi, esi
mov     ds:dword_55FD60, esi
mov     ds:dword_55FD68, 180h
mov     ds:dword_55FD6C, esi
mov     ds:dword_55FD70, 80h
jmp     loc_4E550D

loc_4E562E:             ; jumptable 004E5482 case 10
mov     dx, ds:word_55FD1E
dec     dx
mov     ds:word_55FD1E, dx
jmp     loc_4E5532

loc_4E5643:             ; jumptable 004E5482 case 11
mov     ds:dword_55FD14, 1

loc_4E564D:
cmp     word ptr ds:dword_55FD1A+2, 0
jl      short loc_4E565C

def_4E7642:             ; jumptable 004E7642 default case, cases 5-8
call    sub_4E521C

loc_4E565C:
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4E546D endp




sub_4E5661 proc near
push    ebx
push    ecx
push    edx
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
mov     edx, 10h
sub     edx, eax
mov     ebx, ds:dword_55FD58
imul    ebx, edx
mov     ecx, ds:dword_55FD3C
imul    ecx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD20, ecx
mov     ecx, ds:dword_55FD5C
imul    ecx, edx
mov     ebx, ds:dword_55FD40
imul    ebx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD24, ecx
mov     ebx, ds:dword_55FD60
imul    ebx, edx
mov     ecx, ds:dword_55FD44
imul    ecx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD28, ecx
mov     ecx, ds:dword_55FD68
imul    ecx, edx
mov     ebx, ds:dword_55FD4C
imul    ebx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD30, ecx
mov     ecx, ds:dword_55FD6C
imul    ecx, edx
mov     ebx, ds:dword_55FD50
imul    ebx, eax
add     ecx, ebx
sar     ecx, 4
mov     ds:dword_55FD34, ecx
imul    edx, ds:dword_55FD70
imul    eax, ds:dword_55FD54
add     eax, edx
sar     eax, 4
mov     ds:dword_55FD38, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5661 endp




sub_4E5720 proc near
push    edx
push    esi
push    edi
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, eax
shl     eax, 2
sub     eax, edx
mov     edx, ds:(funcs_4E535E+0Ah)[eax*4]
sar     edx, 10h
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_550DE0[eax*4]
sar     edx, 10h
mov     ds:dword_55FD5C, edx
mov     edx, ds:(dword_550DE0+2)[eax*4]
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     edx, ds:dword_550DE4[eax*4]
sar     edx, 10h
mov     ds:dword_55FD68, edx
mov     edx, ds:(dword_550DE4+2)[eax*4]
sar     edx, 10h
mov     ds:dword_55FD6C, edx
mov     eax, ds:off_550DE8[eax*4]
sar     eax, 10h
mov     ds:dword_55FD70, eax
mov     ds:word_55FD1E, 10h
pop     edi
pop     esi
pop     edx
retn
sub_4E5720 endp

db 90h
jpt_4E57E8 dd offset loc_4E57EF ; jump table for switch statement
dd offset loc_4E5812
dd offset loc_4E581B
dd offset loc_4E5825



sub_4E57D9 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+2
cmp     al, 3           ; switch 4 cases
ja      short def_4E57E8 ; jumptable 004E57E8 default case
xor     edx, edx
mov     dl, al
jmp     jpt_4E57E8[edx*4] ; switch jump

loc_4E57EF:             ; jumptable 004E57E8 case 0
mov     ebx, 0Ah
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
inc     byte ptr ds:dword_55FD14+2
pop     edx
pop     ebx
retn

loc_4E5812:             ; jumptable 004E57E8 case 1
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E57E8 ; jumptable 004E57E8 default case

loc_4E581B:             ; jumptable 004E57E8 case 2
inc     al
mov     byte ptr ds:dword_55FD14+2, al
pop     edx
pop     ebx
retn

loc_4E5825:             ; jumptable 004E57E8 case 3
mov     ds:dword_55FD14, 203h

def_4E57E8:             ; jumptable 004E57E8 default case
pop     edx
pop     ebx
retn
sub_4E57D9 endp

db 8Dh, 40h, 0
jpt_4E585D dd offset loc_4E5864 ; jump table for switch statement
dd offset loc_4E589B
dd offset loc_4E58B3
dd offset loc_4E58BB
dd offset loc_4E58C3



sub_4E5849 proc near
push    ebx
push    edx
mov     al, byte ptr ds:dword_55FD14+2
cmp     al, 4           ; switch 5 cases
ja      def_4E585D      ; jumptable 004E585D default case
and     eax, 0FFh
jmp     jpt_4E585D[eax*4] ; switch jump

loc_4E5864:             ; jumptable 004E585D case 0
mov     ebx, 0Fh
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ebx, 10h
mov     edx, offset unk_75354C
mov     eax, 1
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
inc     byte ptr ds:dword_55FD14+2
pop     edx
pop     ebx
retn

loc_4E589B:             ; jumptable 004E585D case 1
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     short def_4E585D ; jumptable 004E585D default case
mov     al, byte ptr ds:dword_55BD7C
add     al, 2
mov     byte ptr ds:dword_55FD14+2, al
pop     edx
pop     ebx
retn

loc_4E58B3:             ; jumptable 004E585D case 2
call    sub_4E58F9
pop     edx
pop     ebx
retn

loc_4E58BB:             ; jumptable 004E585D case 3
call    sub_4E6D0D
pop     edx
pop     ebx
retn

loc_4E58C3:             ; jumptable 004E585D case 4
mov     ds:dword_55FD14, 203h

def_4E585D:             ; jumptable 004E585D default case
pop     edx
pop     ebx
retn
sub_4E5849 endp

db 90h
jpt_4E5914 dd offset loc_4E591B ; jump table for switch statement
dd offset loc_4E59B7
dd offset loc_4E59DF
dd offset loc_4E5A58
dd offset loc_4E5AB6
dd offset loc_4E59AB
dd offset loc_4E5AED
dd offset loc_4E5B04
dd offset loc_4E5B75
dd offset loc_4E5B9E



sub_4E58F9 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, offset dword_55DD14
mov     al, byte ptr ds:dword_55FD14+3
cmp     al, 9           ; switch 10 cases
ja      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
xor     ecx, ecx
mov     cl, al
jmp     jpt_4E5914[ecx*4] ; switch jump

loc_4E591B:             ; jumptable 004E5914 case 0
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, ds:dword_55DD26
sar     edx, 10h
sub     edx, 40h ; '@'
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_55DD26+2
sar     edx, 10h
sub     edx, 76h ; 'v'
mov     ds:dword_55FD5C, edx
mov     edx, ds:dword_55DD2A
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     ds:dword_55FD68, 0E0h

loc_4E598A:
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD6C, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD70, edx
mov     ds:word_55FD1E, 10h

loc_4E59AB:             ; jumptable 004E5914 case 5
inc     al
mov     byte ptr ds:dword_55FD14+3, al
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E59B7:             ; jumptable 004E5914 case 1
mov     di, ds:word_55FD1E
dec     di
mov     ds:word_55FD1E, di
jnz     short loc_4E59D0
inc     al
mov     byte ptr ds:dword_55FD14+3, al

loc_4E59D0:
call    sub_4E5661
add     word ptr [edx+56h], 24h ; '$'
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E59DF:             ; jumptable 004E5914 case 2
mov     ds:word_55FD78, 0FF30h
mov     ds:word_55FD7A, 8
xor     edi, edi
mov     ds:dword_55FD7C, edi
mov     ds:dword_55FD80, 1000h
mov     ds:dword_55FD84, edi
mov     edx, 100h
mov     ds:dword_55FD8C, edx
mov     ecx, edx
mov     ds:dword_55FD90, edx
mov     ebx, edx
mov     ds:dword_55FD94, edx
xor     edx, edx
mov     ds:word_55FDA0, dx
xor     ebx, ecx
mov     ds:word_55FD9E, bx
xor     ecx, ecx
mov     ds:word_55FD9C, cx
call    sub_4E5BAA
mov     ds:word_55FD1E, 10h

loc_4E5A4D:
inc     byte ptr ds:dword_55FD14+3
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E5A58:             ; jumptable 004E5914 case 3
add     ds:dword_55FD7C, 100h
add     ds:dword_55FD84, 100h
mov     dx, ds:word_55FD78
add     edx, 0Dh
mov     ds:word_55FD78, dx
test    dx, dx
jl      short loc_4E5AAC
inc     al
mov     byte ptr ds:dword_55FD14+3, al
mov     ebx, 64h ; 'd'
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
xor     esi, esi
mov     word ptr ds:dword_55FDA4, si

loc_4E5AAC:
call    sub_4E61AA
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E5AB6:             ; jumptable 004E5914 case 4
call    sub_42C353
test    eax, eax
jnz     short loc_4E5AAC
mov     dx, word ptr ds:dword_55FDA4
cmp     dx, 1
jb      short loc_4E5AD4
jbe     short loc_4E5ADB
cmp     dx, 2
jz      short loc_4E5AE4

loc_4E5AD4:
call    sub_4E5C98
jmp     short loc_4E5AAC

loc_4E5ADB:
mov     byte ptr ds:dword_55FD14+3, 6
jmp     short loc_4E5AAC

loc_4E5AE4:
mov     byte ptr ds:dword_55FD14+3, 7
jmp     short loc_4E5AAC

loc_4E5AED:             ; jumptable 004E5914 case 6
call    sub_4E61AA
test    byte ptr ds:dword_55BD7C+3, 80h
jnz     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
jmp     loc_4E5A4D

loc_4E5B04:             ; jumptable 004E5914 case 7
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     edx, ds:dword_55FD30
mov     ds:dword_55FD4C, edx
mov     edx, ds:dword_55FD34
mov     ds:dword_55FD50, edx
mov     edx, ds:dword_55FD38
mov     ds:dword_55FD54, edx
mov     edx, ds:dword_55DD26
sar     edx, 10h
mov     ds:dword_55FD58, edx
mov     edx, ds:dword_55DD26+2
sar     edx, 10h
sub     edx, 76h ; 'v'
mov     ds:dword_55FD5C, edx
mov     edx, ds:dword_55DD2A
sar     edx, 10h
mov     ds:dword_55FD60, edx
mov     ds:dword_55FD68, 100h
jmp     loc_4E598A

loc_4E5B75:             ; jumptable 004E5914 case 8
mov     bx, ds:word_55FD1E ; jumptable 004E6D28 case 11
dec     bx
mov     ds:word_55FD1E, bx
jnz     short loc_4E5B8E
inc     al
mov     byte ptr ds:dword_55FD14+3, al

loc_4E5B8E:
call    sub_4E5661
sub     word ptr [edx+56h], 24h ; '$'

def_4E5914:             ; jumptable 004E5914 default case
pop     edi             ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5B9E:             ; jumptable 004E5914 case 9
mov     ds:dword_55FD14, 503h ; jumptable 004E6D28 case 12
jmp     short def_4E5914 ; jumptable 004E5914 default case
sub_4E58F9 endp         ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0



sub_4E5BAA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, offset unk_55E514
xor     ebx, ebx
jmp     short loc_4E5C11

loc_4E5BB9:
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 5
mov     al, ds:byte_550B82[ebx*8]
mov     [ecx+ebp+3], al

loc_4E5BCE:
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 5
add     ecx, ebp
mov     dword ptr [ecx+8], 0
mov     esi, ebx
lea     edi, [ecx+48h]
lea     esi, unk_550B7C[esi*8]
movsd
movsd
mov     dword ptr [ecx+50h], offset unk_808080
lea     eax, [ecx+18h]
call    sub_4EF1BC
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD111
inc     byte ptr [ecx+8]
inc     ebx
cmp     ebx, 28h ; '('
jge     short loc_4E5C68

loc_4E5C11:
mov     ecx, ebx
shl     ecx, 2
sub     ecx, ebx
shl     ecx, 5
add     ecx, ebp
mov     byte ptr [ecx], 7
mov     byte ptr [ecx+1], 0E0h
mov     byte ptr [ecx+2], 11h
mov     al, ds:byte_550B82[ebx*8]
mov     [ecx+3], al
cmp     ebx, 0Dh
jl      short loc_4E5BB9
cmp     ebx, 1Ah
jge     loc_4E5BB9
mov     ax, ds:word_550CDE[ebx*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
test    eax, eax
jnz     loc_4E5BB9
mov     byte ptr [ecx+3], 5
jmp     loc_4E5BCE

loc_4E5C68:
mov     eax, dword ptr ds:unk_5F84D3
sar     eax, 18h
mov     ax, ds:word_550CD6[eax*2]
and     eax, 0FFFFh
mov     ds:dword_55FD74, eax
xor     edx, edx
mov     ds:word_55FD1E, dx
mov     word ptr ds:dword_55FDA4+2, dx

loc_4E5C92:
pop     ebp
jmp     def_4E5914      ; jumptable 004E5914 default case
sub_4E5BAA endp         ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0



sub_4E5C98 proc near
push    ebx
push    ecx
push    edx
push    edi
cmp     ds:word_55FD1E, 0
jnz     loc_4E5E3F
test    byte ptr ds:word_5708DA, 10h
jz      short loc_4E5CBC
mov     word ptr ds:dword_55FDA4+2, 0FFFFh

loc_4E5CBC:
test    byte ptr ds:word_5708DA, 40h
jz      short loc_4E5CCE
mov     word ptr ds:dword_55FDA4+2, 1

loc_4E5CCE:
mov     eax, ds:dword_55FDA4
sar     eax, 10h
mov     edx, ds:dword_55FD74
add     edx, eax
mov     ds:dword_55FD74, edx
cmp     edx, 0Dh
jl      short loc_4E5CF3
xor     edi, edi
mov     ds:dword_55FD74, edi
jmp     short loc_4E5D01

loc_4E5CF3:
test    edx, edx
jge     short loc_4E5D01
mov     ds:dword_55FD74, 0Ch

loc_4E5D01:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
mov     dx, word ptr ds:dword_55FDA4+2
shl     edx, 4
test    eax, eax
jnz     short loc_4E5D37
mov     ds:word_55FD1E, dx
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5D37:
cmp     word ptr ds:dword_55FDA4+2, 0
jz      short loc_4E5D8D
mov     ds:word_55FD1E, dx
xor     edi, edi
mov     word ptr ds:dword_55FDA4+2, di
xor     eax, eax
call    sub_4A0E75
mov     ebx, ds:dword_55FD74
mov     bx, ds:word_550CBC[ebx*2]
and     ebx, 0FFFFh
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ds:word_55FDA0, di
mov     ds:word_55FD9E, di
mov     ds:word_55FD9C, di

loc_4E5D8D:
test    byte ptr ds:word_5708DE+1, 10h
jz      short loc_4E5DA6
mov     word ptr ds:dword_55FDA4, 2
xor     eax, eax
call    sub_4A0E75

loc_4E5DA6:
test    ds:word_5708DE, 4008h
jz      loc_4E5E3F
xor     eax, eax
call    sub_4A0E75
mov     ebx, 65h ; 'e'
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
xor     ebx, ebx
xor     edx, edx
mov     eax, 88h
call    sub_4D89E4
mov     word ptr ds:dword_55FDA8, 8
mov     word ptr ds:dword_55FDA4, 1
mov     eax, ds:dword_55FD74
mov     al, byte ptr ds:word_550CF8[eax*2]
mov     ds:byte_5F84D6, al
call    sub_4EE5BE
cmp     byte ptr ds:dword_5F88B1+1, 0
jle     short loc_4E5E3F
mov     edx, 80h
mov     eax, 8
call    sub_4DC979
mov     al, ds:byte_5F84D6
mov     ds:byte_5F84D4, al
test    al, al
jle     short loc_4E5E32
mov     byte ptr ds:dword_5F88B1+2, 1
jmp     short loc_4E5E3A

loc_4E5E32:
xor     cl, cl
mov     byte ptr ds:dword_5F88B1+2, cl

loc_4E5E3A:
call    sub_4DBD14

loc_4E5E3F:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5C98 endp




sub_4E5E44 proc near
push    ebx
push    ecx
push    edx
push    edi
cmp     ds:word_55FD1E, 0
jnz     loc_4E5FDA
test    byte ptr ds:word_5708DA, 10h
jz      short loc_4E5E68
mov     word ptr ds:dword_55FDA4+2, 0FFFFh

loc_4E5E68:
test    byte ptr ds:word_5708DA, 40h
jz      short loc_4E5E7A
mov     word ptr ds:dword_55FDA4+2, 1

loc_4E5E7A:
mov     eax, ds:dword_55FDA4
sar     eax, 10h
mov     edx, ds:dword_55FD74
add     edx, eax
mov     ds:dword_55FD74, edx
cmp     edx, 0Dh
jl      short loc_4E5E9F
xor     edi, edi
mov     ds:dword_55FD74, edi
jmp     short loc_4E5EAD

loc_4E5E9F:
test    edx, edx
jge     short loc_4E5EAD
mov     ds:dword_55FD74, 0Ch

loc_4E5EAD:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
mov     dx, word ptr ds:dword_55FDA4+2
shl     edx, 4
test    eax, eax
jnz     short loc_4E5EE3
mov     ds:word_55FD1E, dx
pop     edi
pop     edx
pop     ecx
pop     ebx
retn

loc_4E5EE3:
cmp     word ptr ds:dword_55FDA4+2, 0
jz      short loc_4E5F34
mov     ds:word_55FD1E, dx
xor     edi, edi
mov     word ptr ds:dword_55FDA4+2, di
xor     eax, eax
call    sub_4A0E75
mov     eax, ds:dword_55FD74
call    sub_4A62B7
mov     ebx, 83h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ds:word_55FDA0, di
mov     ds:word_55FD9E, di
mov     ds:word_55FD9C, di

loc_4E5F34:
test    byte ptr ds:word_5708DE+1, 10h
jz      short loc_4E5F5D
mov     word ptr ds:dword_55FDA4, 2
inc     byte ptr ds:dword_55FD14+3
xor     eax, eax
call    sub_4A0E75
mov     eax, 1
call    sub_4A0E75

loc_4E5F5D:
test    ds:word_5708DE, 4008h
jz      short loc_4E5FDA
xor     eax, eax
call    sub_4A0E75
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
mov     al, byte ptr ds:(dword_5F8955+3)[eax*8]
mov     ecx, eax
and     ecx, 0FFh
add     ecx, ecx
mov     edx, ds:dword_55FD74
mov     eax, edx
shl     eax, 2
add     eax, edx
xor     edx, edx
mov     dx, ds:word_5507DC[ecx+eax*8]
mov     eax, edx
shl     eax, 2
add     eax, edx
add     eax, eax
call    sub_4A62A5
mov     ebx, 99h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
mov     word ptr ds:dword_55FDA4, 1

loc_4E5FDA:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4E5E44 endp

db 8Bh, 0C0h
jpt_4E60C4 dd offset def_4E60C4 ; jump table for switch statement
dd offset loc_4E60D2
dd offset loc_4E60E0
dd offset loc_4E60E7
dd offset loc_4E60EE



sub_4E5FF5 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     ebx, ebx
cmp     ds:word_55FDB0, 0
jz      short loc_4E600D
mov     ebx, 1
jmp     short loc_4E605D

loc_4E600D:
test    byte ptr ds:word_5708DE, 10h
jz      short loc_4E6022
mov     ebx, 1
dec     word ptr ds:dword_55FDA8+2

loc_4E6022:
test    byte ptr ds:word_5708DE, 40h
jz      short loc_4E6037
mov     ebx, 1
inc     word ptr ds:dword_55FDA8+2

loc_4E6037:
mov     di, word ptr ds:dword_55FDA8+2
test    di, di
jge     short loc_4E604E
mov     word ptr ds:dword_55FDA8+2, 4
jmp     short loc_4E605D

loc_4E604E:
cmp     di, 4
jle     short loc_4E605D
xor     edx, edx
mov     word ptr ds:dword_55FDA8+2, dx

loc_4E605D:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
mov     ecx, ds:dword_55FDA8
sar     ecx, 10h
movzx   esi, byte ptr ds:(dword_5F8955+3)[ecx+eax*8]
mov     edx, ds:dword_55FD74
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
shl     ecx, 3
add     eax, ecx
xor     ecx, ecx
mov     cx, ds:word_5507DC[eax+esi*2]
mov     eax, ecx
shl     eax, 2
add     ecx, eax
add     ecx, ecx
test    ebx, ebx
jz      short loc_4E6113
xor     eax, eax
call    sub_4A0E75
mov     ax, word ptr ds:dword_55FDA8+2
cmp     ax, 4           ; switch 5 cases
ja      short def_4E60C4 ; jumptable 004E60C4 default case, case 0
and     eax, 0FFFFh
jmp     jpt_4E60C4[eax*4] ; switch jump

def_4E60C4:             ; jumptable 004E60C4 default case, case 0
mov     ebx, 99h
jmp     short loc_4E6100

loc_4E60D2:             ; jumptable 004E60C4 case 1
mov     ebx, ds:dword_55FD74
mov     bl, ds:byte_550E10[ebx]
jmp     short loc_4E60FA

loc_4E60E0:             ; jumptable 004E60C4 case 2
mov     ebx, 9Ch
jmp     short loc_4E6100

loc_4E60E7:             ; jumptable 004E60C4 case 3
mov     ebx, 9Dh
jmp     short loc_4E6100

loc_4E60EE:             ; jumptable 004E60C4 case 4
mov     ebx, ds:dword_55FD74
mov     bl, ds:byte_550E20[ebx]

loc_4E60FA:
and     ebx, 0FFh

loc_4E6100:
mov     eax, ecx
call    sub_4A62A5
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD

loc_4E6113:
test    byte ptr ds:word_5708DE+1, 10h
jz      short loc_4E6132
mov     word ptr ds:dword_55FDA4, 2
inc     byte ptr ds:dword_55FD14+3
xor     eax, eax
call    sub_4A0E75

loc_4E6132:
test    byte ptr ds:dword_55BD7C+2, 2
jz      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
test    ds:word_5708DE, 4008h
jz      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
xor     eax, eax
call    sub_4A0E75
mov     eax, ecx
neg     eax
call    sub_4B6204
test    eax, eax
jz      short loc_4E617E
mov     ebx, 85h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA4, 1
jmp     short loc_4E619C

loc_4E617E:
mov     ds:dword_55FDAC, ecx
mov     ebx, 86h
mov     edx, offset unk_75354C
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA4, 3

loc_4E619C:
mov     word ptr ds:dword_55FDA8, 8
jmp     def_4E5914      ; jumptable 004E5914 default case
sub_4E5FF5 endp         ; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0



sub_4E61AA proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, offset unk_55E514
mov     edi, ds:dword_55FD74
mov     dx, ds:word_55FD1E
test    dx, dx
jz      short loc_4E61F6
jle     short loc_4E61D4
mov     eax, edx
dec     eax
mov     ds:word_55FD1E, ax
jmp     short loc_4E61DE

loc_4E61D4:
mov     ecx, edx
inc     ecx
mov     ds:word_55FD1E, cx

loc_4E61DE:
cmp     ds:word_55FD1E, 0
jnz     short loc_4E61F6
xor     ebx, ebx
xor     edx, edx
mov     eax, 87h
call    sub_4D89E4

loc_4E61F6:
cmp     byte ptr ds:dword_55FD14+2, 3
jnz     loc_4E6302
mov     dl, byte ptr ds:dword_55FD14+3
cmp     dl, 5
jb      loc_4E6302
cmp     dl, 9
ja      loc_4E6302
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
and     eax, 0FFFFh
mov     ecx, dword ptr ds:unk_564C32[eax*4]
sar     ecx, 10h
sar     ecx, 5
mov     ebx, ecx
shl     ebx, 10h
or      ebx, 2E000000h
mov     eax, ecx
shl     eax, 8
or      eax, ebx
or      eax, ecx
mov     [edx+4], eax
mov     ax, ds:word_55FD78
add     eax, 11h
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 31h ; '1'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     bx, ds:word_55FD7A
add     ebx, 60h ; '`'
imul    ax, word ptr ds:dword_55FDA8+2, 0Ch
add     ebx, eax
mov     [edx+12h], bx
mov     [edx+0Ah], bx
mov     bx, ds:word_55FD7A
add     ebx, 68h ; 'h'
imul    ax, word ptr ds:dword_55FDA8+2, 0Ch
add     ebx, eax
mov     [edx+22h], bx
mov     [edx+1Ah], bx
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 8
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0F8h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 0FFh
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6302:
mov     eax, ds:dword_55FD74
mov     ax, ds:word_550CF8[eax*2]
and     eax, 0FFFFh
add     eax, 4C0h
call    sub_47E888
test    eax, eax
jz      loc_4E6520
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     ebx, ds:dword_5F8955[eax*8]
sar     ebx, 18h
mov     edx, edi
mov     ebp, edi
shl     ebp, 2
add     ebp, edi
shl     ebp, 2
lea     eax, [ebx+ebp]
mov     al, ds:byte_5506D8[eax]
and     eax, 0FFh
xor     ebx, ebx
xor     edx, edi
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:(dword_5F8955+1)[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506DC[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 0Ch
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:(dword_5F8955+2)[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506E0[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 18h
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:(dword_5F8955+3)[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506E4[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 24h ; '$'
call    sub_4E6A3F
xor     eax, eax
mov     ax, ds:word_550CF8[edi*2]
mov     eax, ds:dword_5F8959[eax*8]
sar     eax, 18h
mov     al, ds:byte_5506E8[eax+ebp]
and     eax, 0FFh
xor     ebx, ebx
mov     edx, 30h ; '0'
call    sub_4E6A3F
mov     ecx, ds:dword_77E6DC
mov     edx, ecx
lea     eax, [ecx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, ecx
call    sub_4F87F0
mov     dword ptr [ecx], 9000000h
cmp     ds:word_55FD1E, 0
jge     short loc_4E6447
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
shl     eax, 3
lea     ecx, [eax+80h]
jmp     short loc_4E6459

loc_4E6447:
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
mov     ecx, 10h
sub     ecx, eax
shl     ecx, 3

loc_4E6459:
mov     eax, ecx
shl     eax, 10h
or      eax, 2C000000h
mov     ebx, ecx
shl     ebx, 8
or      eax, ebx
or      eax, ecx
mov     [edx+4], eax
mov     ax, ds:word_55FD78
add     eax, 1Ah
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 62h ; 'b'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 51h ; 'Q'
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 58h ; 'X'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D86[eax*2]
mov     [edx+1Ch], al
mov     [edx+0Ch], al
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D86[eax*2]
add     al, 48h ; 'H'
mov     [edx+24h], al
mov     [edx+14h], al
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D87[eax*2]
mov     [edx+15h], al
mov     [edx+0Dh], al
mov     eax, ds:dword_55FD74
mov     al, ds:byte_550D87[eax*2]
add     al, 7
mov     [edx+25h], al
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D08h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6520:
cmp     byte ptr ds:dword_55FD14+2, 3
jnz     short loc_4E6591
mov     bh, byte ptr ds:dword_55FD14+3
cmp     bh, 5
jb      short loc_4E6591
cmp     bh, 7
ja      short loc_4E6591
mov     ax, ds:word_550CF8[edi*2]
and     eax, 0FFFFh
mov     edx, ds:dword_55FDA8
sar     edx, 10h
xor     ebx, ebx
mov     bl, byte ptr ds:(dword_5F8955+3)[edx+eax*8]
mov     ebp, edx
shl     ebp, 2
mov     eax, edi
shl     eax, 2
add     eax, edi
shl     eax, 2
lea     ecx, [eax+ebp]
mov     cl, ds:byte_5506D9[ecx+ebx]
and     ecx, 0FFh
jz      short loc_4E6591
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     edx, eax
shl     edx, 2
mov     ebx, 1
mov     eax, ecx
call    sub_4E6A3F

loc_4E6591:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
mov     [edx+18h], ax
mov     [edx+8], ax
add     eax, 80h
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
mov     [edx+12h], ax
mov     [edx+0Ah], ax
add     eax, 5Dh ; ']'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 80h
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 5Dh ; ']'
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 80h
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 0C8h
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 18h
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 50h ; 'P'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 80h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0C8h
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 18h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 50h ; 'P'
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 8
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 3Ah ; ':'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 5Dh ; ']'
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 9Ch
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 8
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 3Ah ; ':'
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 5Dh ; ']'
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 9Ch
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
xor     ecx, ecx
jmp     loc_4E682E

loc_4E677D:
mov     ebx, ds:dword_55FD1A+2
sar     ebx, 10h
neg     ebx

loc_4E6788:
mov     edx, 10h
sub     edx, ebx
shl     edx, 7
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ebx, eax
mov     edx, eax
shl     edx, 10h
shl     eax, 8
or      edx, eax
or      edx, ebx
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
lea     eax, [esi+ebx]
mov     [eax+0A10h], edx
jmp     short loc_4E67D9

loc_4E67C2:
mov     ebx, edi
shl     ebx, 2
sub     ebx, edi
shl     ebx, 5
lea     eax, [esi+ebx]
mov     dword ptr [eax+0A10h], offset unk_808080

loc_4E67D9:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
add     ebx, esi
mov     byte ptr [ebx+9C0h], 7
add     ebx, 9D8h
mov     edx, ebx
mov     eax, offset word_55FD9C
call    sub_4EF5F7
mov     edx, offset dword_55FD8C
mov     eax, ebx
call    sub_4EF689
add     ds:word_55FD9E, 30h ; '0'
jmp     short loc_4E6828

loc_4E6814:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
lea     eax, [esi+ebx]
mov     byte ptr [eax+9C0h], 0

loc_4E6828:
inc     ecx
cmp     ecx, 0Dh
jge     short loc_4E687E

loc_4E682E:
cmp     ecx, edi
jnz     short loc_4E6814
cmp     ds:word_55FD78, 0
jl      short loc_4E6814
mov     edx, ds:dword_55FD74
xor     eax, eax
mov     ax, ds:word_550CF8[edx*2]
add     eax, 4C0h
call    sub_47E888
test    eax, eax
jz      short loc_4E6828
mov     bx, ds:word_55FD1E
test    bx, bx
jz      loc_4E67C2
jle     loc_4E677D
mov     ebx, ds:dword_55FD1A+2
sar     ebx, 10h
jmp     loc_4E6788

loc_4E687E:
xor     ecx, ecx
jmp     short loc_4E68A3

loc_4E6882:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
lea     eax, [esi+ebx]
mov     dword ptr [eax+530h], 4040h

loc_4E6899:
inc     ecx
cmp     ecx, 0Dh
jge     loc_4E6948

loc_4E68A3:
mov     ebx, ecx
mov     eax, ecx
sub     eax, edi
cmp     eax, 6
jle     short loc_4E68B1
lea     ebx, [ecx-0Dh]

loc_4E68B1:
mov     eax, ebx
sub     eax, edi
cmp     eax, 0FFFFFFFAh
jge     short loc_4E68BD
lea     ebx, [ecx+0Dh]

loc_4E68BD:
mov     eax, edi
sub     eax, ebx
shl     eax, 5
mov     edx, 0FF69h
sub     edx, eax
mov     ax, ds:word_55FD1E
add     eax, eax
add     eax, edx
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
add     ebx, esi
mov     [ebx+52Ah], ax
mov     [ebx+4Ah], ax
lea     edx, [ebx+18h]
mov     eax, edx
call    sub_4EF1BC
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
shl     eax, 8
call    sub_4EF50D
lea     edx, [ebx+4F8h]
mov     eax, edx
call    sub_4EF1BC
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
shl     eax, 8
call    sub_4EF50D
cmp     ecx, edi
jnz     loc_4E6882
cmp     ds:word_55FD1E, 0
jnz     loc_4E6882
mov     dword ptr [ebx+530h], offset unk_808080
jmp     loc_4E6899

loc_4E6948:
lea     eax, [esi+0EB8h]
call    sub_4EF1BC
xor     ecx, ecx
jmp     short loc_4E695D

loc_4E6957:
inc     ecx
cmp     ecx, 28h ; '('
jge     short loc_4E6989

loc_4E695D:
mov     ebx, ecx
shl     ebx, 2
sub     ebx, ecx
shl     ebx, 5
add     ebx, esi
lea     eax, [ebx+18h]
mov     edx, offset dword_55FD7C
call    sub_4EF689
mov     al, [ebx]
test    al, 2
jz      short loc_4E6957
movsx   edx, al
lea     eax, [ebx+14h]
call    sub_4EC000
jmp     short loc_4E6957

loc_4E6989:
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx], 9000000h
mov     dword ptr [edx+4], 2C010101h
mov     ax, ds:word_55FD78
add     eax, 10h
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 70h ; 'p'
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 10h
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 50h ; 'P'
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 88h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 90h
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 7
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77E6FC
add     eax, 0A0h
call    sub_4F87A6
jmp     loc_4E5C92
sub_4E61AA endp




sub_4E6A3F proc near
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
cmp     eax, 0FFh
jnz     loc_4E6B1B
cmp     ds:word_55FD1E, 0
jnz     loc_4E6B16
test    ebx, ebx
jnz     loc_4E6B16
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     cx, ds:word_55FD78
add     ecx, 4Eh ; 'N'
mov     [edx+18h], cx
mov     [edx+8], cx
mov     cx, ds:word_55FD78
add     ecx, 76h ; 'v'
mov     [edx+20h], cx
mov     [edx+10h], cx
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
add     eax, 8
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 0
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 28h ; '('
mov     al, [edx+24h]
mov     [edx+14h], al
mov     byte ptr [edx+15h], 0E8h
mov     al, [edx+15h]
mov     [edx+0Dh], al
mov     byte ptr [edx+25h], 0F0h
mov     al, [edx+25h]
mov     [edx+1Dh], al
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6B16:
mov     ecx, 58h ; 'X'

loc_4E6B1B:
cmp     ds:word_55FD1E, 0
jge     short loc_4E6B33
mov     edx, ds:dword_55FD1A+2
sar     edx, 10h
add     edx, 10h
jmp     short loc_4E6B42

loc_4E6B33:
mov     eax, ds:dword_55FD1A+2
sar     eax, 10h
mov     edx, 10h
sub     edx, eax

loc_4E6B42:
imul    edx, ecx
mov     eax, edx
sar     edx, 1Fh
shl     edx, 4
sbb     eax, edx
sar     eax, 4
mov     ecx, eax
cmp     ecx, 4
jl      loc_4E6CC5
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
add     eax, ecx
sub     eax, 2
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
add     eax, 8
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 88h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0B8h
mov     al, [edx+24h]
mov     [edx+14h], al
shl     bl, 3
mov     [edx+15h], bl
mov     [edx+0Dh], bl
mov     bh, bl
add     bh, 8
mov     [edx+25h], bh
mov     [edx+1Dh], bh
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6
mov     edx, ds:dword_77E6DC
lea     eax, [edx+38h]
mov     ds:dword_77E6DC, eax
mov     eax, edx
call    sub_4F87F0
mov     dword ptr [edx+4], 2C808080h
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
add     eax, ecx
sub     eax, 2
mov     [edx+18h], ax
mov     [edx+8], ax
mov     ax, ds:word_55FD78
add     eax, 36h ; '6'
add     eax, ecx
mov     [edx+20h], ax
mov     [edx+10h], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
mov     [edx+12h], ax
mov     [edx+0Ah], ax
mov     ax, ds:word_55FD7A
add     eax, 60h ; '`'
add     eax, esi
add     eax, 8
mov     [edx+22h], ax
mov     [edx+1Ah], ax
mov     byte ptr [edx+1Ch], 0B8h
mov     al, [edx+1Ch]
mov     [edx+0Ch], al
mov     byte ptr [edx+24h], 0BAh
mov     al, [edx+24h]
mov     [edx+14h], al
mov     [edx+15h], bl
mov     [edx+0Dh], bl
mov     [edx+25h], bh
mov     [edx+1Dh], bh
mov     word ptr [edx+0Eh], 3D09h
mov     word ptr [edx+16h], 0Ch
mov     eax, ds:dword_77EA74
add     eax, 78h ; 'x'
call    sub_4F87A6

loc_4E6CC5:
pop     esi
pop     ecx
retn
sub_4E6A3F endp

db 90h
jpt_4E6D28 dd offset loc_4E6D2F ; jump table for switch statement
dd offset loc_4E6DBA
dd offset loc_4E6DE5
dd offset loc_4E6E4F
dd offset loc_4E6ECE
dd offset loc_4E6F4F
dd offset loc_4E6FF8
dd offset loc_4E7033
dd offset loc_4E705A
dd offset loc_4E6FF8
dd offset loc_4E70BE
dd offset loc_4E5B75
dd offset loc_4E5B9E
jpt_4E6F79 dd offset def_4E5914 ; jump table for switch statement
dd offset loc_4E6F80
dd offset loc_4E6F9D
dd offset loc_4E6FE8



sub_4E6D0D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     edx, offset dword_55DD14
mov     al, byte ptr ds:dword_55FD14+3
cmp     al, 0Ch         ; switch 13 cases
ja      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
xor     ecx, ecx
mov     cl, al
jmp     jpt_4E6D28[ecx*4] ; switch jump

loc_4E6D2F:             ; jumptable 004E6D28 case 0
mov     edi, offset dword_55FD3C
mov     esi, offset dword_55FD20
movsd
movsd
movsd
movsd
mov     eax, ds:dword_55FD30
mov     ds:dword_55FD4C, eax
mov     eax, ds:dword_55FD34
mov     ds:dword_55FD50, eax
mov     eax, ds:dword_55FD38
mov     ds:dword_55FD54, eax
mov     eax, ds:dword_55DD26
sar     eax, 10h
sub     eax, 40h ; '@'
mov     ds:dword_55FD58, eax
mov     eax, ds:dword_55DD26+2
sar     eax, 10h
sub     eax, 76h ; 'v'
mov     ds:dword_55FD5C, eax
mov     eax, ds:dword_55DD2A
sar     eax, 10h
mov     ds:dword_55FD60, eax
mov     ds:dword_55FD68, 0E0h

loc_4E6D92:
mov     eax, ds:dword_55FD34
mov     ds:dword_55FD6C, eax
mov     eax, ds:dword_55FD38
mov     ds:dword_55FD70, eax

loc_4E6DA6:
mov     ds:word_55FD1E, 10h

loc_4E6DAF:
inc     byte ptr ds:dword_55FD14+3
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6DBA:             ; jumptable 004E6D28 case 1
mov     di, ds:word_55FD1E
dec     di
mov     ds:word_55FD1E, di
jnz     short loc_4E6DD6
mov     bl, al
inc     bl
mov     byte ptr ds:dword_55FD14+3, bl

loc_4E6DD6:
call    sub_4E5661
add     word ptr [edx+56h], 24h ; '$'
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6DE5:             ; jumptable 004E6D28 case 2
mov     ds:word_55FD78, 0FF30h
mov     ds:word_55FD7A, 8
xor     edi, edi
mov     ds:dword_55FD7C, edi
mov     ds:dword_55FD80, 1000h
mov     ds:dword_55FD84, edi
mov     edx, 100h
mov     ds:dword_55FD8C, edx
mov     ecx, edx
mov     ds:dword_55FD90, edx
mov     ebx, edx
mov     ds:dword_55FD94, edx
xor     edx, edx
mov     ds:word_55FDA0, dx
xor     ebx, ecx
mov     ds:word_55FD9E, bx
xor     ecx, ecx
mov     ds:word_55FD9C, cx
call    sub_4E5BAA
jmp     loc_4E6DA6

loc_4E6E4F:             ; jumptable 004E6D28 case 3
add     ds:dword_55FD7C, 100h
add     ds:dword_55FD84, 100h
mov     dx, ds:word_55FD78
add     edx, 0Dh
mov     ds:word_55FD78, dx
test    dx, dx
jl      short loc_4E6EC4
mov     edx, ds:dword_55FD74
inc     al
mov     byte ptr ds:dword_55FD14+3, al
mov     eax, edx
call    sub_4A62B7
mov     ebx, 83h
mov     edx, offset unk_75354C
xor     eax, eax
call    sub_4A0CDD
mov     ebx, 82h
mov     edx, offset unk_75354C
mov     eax, 1
call    sub_4A0CDD
mov     word ptr ds:dword_55FDA8, 8
xor     esi, esi
mov     word ptr ds:dword_55FDA4, si

loc_4E6EC4:
call    sub_4E61AA
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

loc_4E6ECE:             ; jumptable 004E6D28 case 4
mov     ebx, 2
mov     edx, offset unk_75354C
mov     eax, 3
call    sub_4A0CDD
call    sub_4E5E44
call    sub_4E61AA
mov     dx, word ptr ds:dword_55FDA4
cmp     dx, 1
jb      def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0
jbe     short loc_4E6F0A
cmp     dx, 2
jz      short loc_4E6F3A
jmp     def_4E5914      ; jumptable 004E5914 default case
; jumptable 004E6D28 default case
; jumptable 004E6F79 default case, case 0

