loc_4B30C1:
call    sub_4EE16B
test    eax, eax
jz      short loc_4B30B7
mov     edx, ecx
mov     ebx, [edi+edx*8+0E4h]
mov     [eax], ebx
mov     esi, ds:off_530F70[ecx*4]
or      esi, 52000000h
mov     [eax+4], esi
mov     esi, [edi+edx*8+0ECh]
mov     [eax+8], esi
mov     ebx, ds:dword_530F6C[ecx*4]
mov     [eax+0Ch], ebx
mov     ebx, [edi+edx*8+0E6h]
sar     ebx, 10h
shl     ebx, 10h
mov     dx, [edi+edx*8+0F0h]
and     edx, 0FFFFh
or      ebx, edx
mov     [eax+10h], ebx
mov     dword ptr [eax+28h], 0E1000020h
jmp     short loc_4B30B7
sub_4B305F endp




sub_4B3122 proc near
push    edx
and     byte ptr [eax+3], 7Fh
xor     edx, edx
mov     dl, [eax+3]
call    ds:off_530FDC[edx*4]
pop     edx
retn
sub_4B3122 endp




sub_4B3135 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B313B[edx*4]
pop     edx
retn
sub_4B3135 endp




sub_4B3144 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530FA4
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     eax, ecx
call    sub_4B39B8
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
mov     dword ptr [ecx+0C4h], 2808080h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B3565
lea     edx, [ecx+14h]
mov     eax, 12Eh
call    sub_4D8BC3
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0Dh
mov     byte ptr [ecx+8], 1
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B3144 endp




sub_4B31E1 proc near
push    ecx
push    edx
push    esi
push    edi
mov     edx, eax
mov     ah, [eax+0Fh]
dec     ah
mov     [edx+0Fh], ah
jnz     short loc_4B31FD
mov     eax, edx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B31FD:
cmp     ah, 9
jnz     short loc_4B3219
cmp     ds:byte_5F89A2, 0
jz      short loc_4B3212
mov     eax, edx
call    sub_4B38E8

loc_4B3212:
mov     eax, edx
call    sub_4B390B

loc_4B3219:
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
mov     eax, edx
call    sub_4B39B8
mov     eax, edx
call    sub_4B3565
mov     ch, [edx+0Fh]
cmp     ch, 0Bh
jge     short loc_4B324D
cmp     ch, 7
jle     short loc_4B324D
mov     eax, edx
call    sub_4B375F

loc_4B324D:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B31E1 endp




sub_4B3252 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B3258[edx*4]
pop     edx
retn
sub_4B3252 endp




sub_4B3261 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= byte ptr -28h
var_20= word ptr -20h
var_1E= word ptr -1Eh
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
lea     ebp, [ecx+88h]
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_530FA4
call    sub_42A85C
mov     [ecx+54h], ax
mov     [esp+38h+var_20], ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     [ecx+56h], ax
mov     [esp+38h+var_1E], ax
mov     word ptr [ecx+58h], 680h
mov     ax, [ecx+58h]
mov     [esp+38h+var_1C], ax
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+38h+var_20]
call    sub_4EF638
mov     edx, 200h
mov     [esp+38h+var_30], edx
mov     [esp+38h+var_34], edx
mov     [esp+38h+var_38], edx
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
lea     eax, [ecx+44h]
mov     edx, 32h ; '2'
call    sub_4B3A21
lea     edi, [ecx+14h]
mov     esi, offset unk_5F882C
movsd
movsd
lea     edi, [esp+38h+var_28]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [esp+38h+var_28]
movsd
movsd
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
mov     dword ptr [ebp+3Ch], 2808080h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B3881
mov     byte ptr [ecx+0Eh], 4
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     edx, eax
mov     ebx, 32h ; '2'
sar     edx, 1Fh
idiv    ebx
mov     [ecx+0Fh], al
mov     byte ptr [ecx+8], 1
add     esp, 20h

loc_4B338E:
pop     ebp

loc_4B338F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3261 endp




sub_4B3395 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
mov     ah, [eax+0Fh]
dec     ah
mov     [ecx+0Fh], ah
jnz     short loc_4B33B2

loc_4B33AC:
mov     byte ptr [ecx+8], 2
jmp     short loc_4B338F

loc_4B33B2:
xor     edx, edx
mov     eax, ecx
call    sub_4EE66E
test    eax, eax
jnz     short loc_4B33AC
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
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
mov     eax, ecx
call    sub_4B3881
jmp     loc_4B338F
sub_4B3395 endp




sub_4B342B proc near

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
mov     ecx, eax        ; int
add     eax, 88h
mov     ebx, [ecx+0Bh]
sar     ebx, 18h
mov     esi, ebx
shl     esi, 5
mov     edx, ebx
shl     edx, 15h
or      edx, 2000000h
shl     ebx, 0Dh
or      edx, ebx
or      edx, esi
mov     [eax+3Ch], edx
mov     ax, [ecx+54h]
mov     [esp+28h+var_18], ax
mov     ax, [ecx+56h]
mov     [esp+28h+var_16], ax
mov     ax, [ecx+58h]
mov     [esp+28h+var_14], ax
lea     ebx, [ecx+8Ch]
mov     edx, ebx
lea     eax, [esp+28h+var_18]
call    sub_4EF638
mov     edx, 200h
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_28], edx
mov     eax, [ecx+0Bh]
sar     eax, 18h
shl     eax, 4
add     eax, 100h
mov     [esp+28h+var_20], eax
mov     edx, esp
mov     eax, ebx
call    sub_4EF689
mov     ah, [ecx+0Eh]
dec     ah
mov     [ecx+0Eh], ah
jnz     short loc_4B34BD
mov     eax, ecx
call    sub_4DE3AC

loc_4B34BD:
add     esp, 18h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B342B endp




sub_4B34C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B34CB[edx*4]
pop     edx
retn
sub_4B34C5 endp




sub_4B34D4 proc near
push    edx
or      byte ptr [eax], 22h
mov     byte ptr [eax+8], 1
mov     byte ptr [eax+0Dh], 0
mov     dword ptr [eax+88h], 3D48002Ch
mov     dword ptr [eax+8Ch], 2E808080h
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD0[edx*2]
mov     [eax+96h], dl
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD1[edx*2]
mov     [eax+97h], dl
mov     word ptr [eax+98h], 60h ; '`'
mov     word ptr [eax+9Ah], 0Bh
pop     edx
retn
sub_4B34D4 endp




sub_4B352E proc near
push    edx
inc     byte ptr [eax+0Dh]
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD0[edx*2]
mov     [eax+96h], dl
mov     edx, [eax+0Ah]
sar     edx, 18h
mov     dl, ds:byte_530FD1[edx*2]
mov     [eax+97h], dl
cmp     byte ptr [eax+0Dh], 5
jle     short loc_4B3563
call    sub_4DE3AC

loc_4B3563:
pop     edx
retn
sub_4B352E endp




sub_4B3565 proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= dword ptr -28h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 58h
mov     ebp, eax
mov     eax, ds:dword_5F899D
sar     eax, 18h
mov     [esp+70h+var_1C], eax
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [esp+70h+var_20], eax
mov     ecx, 0Ch
mov     edi, esp
mov     esi, offset unk_5F85FC
rep movsd
lea     edi, [esp+70h+var_30]
mov     esi, offset unk_5F882C
movsd
movsd
lea     ecx, [ebp+8Ch]
mov     eax, ecx
call    sub_4EF184
mov     edx, 1000h
mov     [esp+70h+var_38], edx
mov     [esp+70h+var_3C], edx
mov     [esp+70h+var_40], edx
lea     edx, [esp+70h+var_40]
mov     eax, ecx
call    sub_4EF689
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
xor     edx, edx
mov     word ptr [esp+70h+var_28], dx
mov     word ptr [esp+70h+var_28+2], 1000h
mov     [esp+70h+var_24], dx
lea     ebx, [esp+70h+var_40]
lea     edx, [esp+70h+var_28]
mov     eax, ecx
call    sub_4EF1FB
mov     edx, [esp+70h+var_40]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     word ptr [esp+70h+var_28], ax
mov     edx, [esp+70h+var_3C]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     word ptr [esp+70h+var_28+2], ax
mov     edx, [esp+70h+var_38]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sar     eax, 4
mov     [esp+70h+var_24], ax
mov     ebx, [esp+70h+var_1C]
shl     ebx, 2
mov     eax, [esp+46h]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+3Eh]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_40], eax
mov     eax, [esp+70h+var_28]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+70h+var_30]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_3C], eax
mov     eax, [esp+70h+var_28+2]
sar     eax, 10h
shl     eax, 8
mov     edx, ds:dword_531004[ebx]
imul    edx, eax
mov     eax, [esp+70h+var_30+2]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [esp+70h+var_38], eax
mov     eax, [esp+70h+var_40]
sar     eax, 10h
mov     word ptr [esp+70h+var_28], ax
mov     eax, [esp+70h+var_3C]
sar     eax, 10h
mov     word ptr [esp+70h+var_28+2], ax
mov     eax, [esp+70h+var_38]
sar     eax, 10h
mov     [esp+70h+var_24], ax
mov     edx, [esp+70h+var_1C]
mov     eax, ds:dword_531048[edx*8]
add     eax, 1000h
mov     [esp+70h+var_40], eax
mov     [esp+70h+var_38], eax
mov     eax, ds:dword_531044[edx*8]
add     eax, 1000h
mov     [esp+70h+var_3C], eax
lea     edx, [esp+70h+var_40]
mov     eax, ecx
call    sub_4EF689
push    80h
push    0
mov     eax, [esp+78h+var_20]
or      eax, 28000000h
push    eax
lea     eax, [ebp+0CCh]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    4000h
push    200h
mov     edx, ds:dword_531024[ebx]
lea     ebx, [ebp+14h]
mov     ecx, edx
lea     eax, [esp+8Ch+var_28]
call    sub_4E02CB
mov     dword ptr [ebp+0CCh], 0
mov     dword ptr [ebp+0D0h], 0
add     esp, 58h
jmp     loc_4B338E
sub_4B3565 endp




sub_4B375F proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_34= word ptr -34h
var_32= word ptr -32h
var_30= word ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 2Ch
mov     ebp, eax
mov     edi, esp
mov     esi, offset dword_5F8380
movsd
movsd
movsd
movsd
mov     esi, ds:dword_5F899D
sar     esi, 18h
mov     esi, ds:dword_531084[esi*4]
sub     [esp+44h+var_40], offset loc_500000
mov     edx, 9
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     ebx, eax
mov     edx, 3Ch ; '<'
lea     eax, [esp+44h+var_2C]
call    sub_4B3A21
mov     eax, [esp+16h]
sar     eax, 10h
mov     edx, eax
shl     edx, 9
add     edx, [esp+44h+var_44]
sar     edx, 10h
mov     [esp+44h+var_34], dx
mov     edx, [esp+44h+var_2C]
sar     edx, 10h
mov     ecx, edx
shl     ecx, 9
add     ecx, [esp+44h+var_40]
sar     ecx, 10h
mov     [esp+44h+var_32], cx
mov     ecx, [esp+44h+var_2C+2]
sar     ecx, 10h
mov     edi, ecx
shl     edi, 9
mov     [esp+44h+var_1C], edi
mov     edi, [esp+44h+var_3C]
add     edi, [esp+44h+var_1C]
sar     edi, 10h
mov     [esp+44h+var_1C], edi
mov     edi, [esp+44h+var_1C]
mov     [esp+44h+var_30], di
shl     eax, 8
add     eax, [esp+44h+var_44]
sar     eax, 10h
mov     [esp+44h+var_24], ax
shl     edx, 8
add     edx, [esp+44h+var_40]
sar     edx, 10h
mov     [esp+44h+var_22], dx
shl     ecx, 8
add     ecx, [esp+44h+var_3C]
sar     ecx, 10h
mov     [esp+44h+var_20], cx
push    80h
push    0
or      ebx, 28000000h
push    ebx
lea     eax, [ebp+0D4h]
push    eax
xor     eax, eax
mov     al, [ebp+1]
push    eax
push    4000h
push    200h
mov     ecx, esi
lea     ebx, [esp+60h+var_24]
mov     edx, esi
lea     eax, [esp+60h+var_34]
call    sub_4E02CB
mov     dword ptr [ebp+0D4h], 0
mov     dword ptr [ebp+0D8h], 0
add     esp, 2Ch
jmp     loc_4B338E
sub_4B375F endp




sub_4B3881 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     al, byte ptr ds:dword_5F899D+3
push    80h
push    0
movsx   eax, al
mov     eax, ds:dword_530FB0[eax*4]
or      eax, 8000000h
push    eax
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
lea     ebx, [esi+2Ch]
lea     eax, [esi+14h]
mov     ecx, 5Ch ; '\'
mov     edx, 8
call    sub_4E02CB
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3881 endp




sub_4B38E8 proc near
push    ebx
push    edx
mov     edx, eax
call    sub_4DE0BF
test    eax, eax
jz      short loc_4B3908
mov     byte ptr [eax], 1
mov     bl, [edx+2]
mov     [eax+2], bl
mov     byte ptr [eax+3], 1
mov     dl, [edx+1]
mov     [eax+0Ch], dl

loc_4B3908:
pop     edx
pop     ebx
retn
sub_4B38E8 endp




sub_4B390B proc near

var_26= dword ptr -26h
var_22= dword ptr -22h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
mov     ecx, eax
lea     edi, [esp+24h+var_1C]
mov     esi, (offset dword_5F880A+2)
movsd
movsd
mov     edx, 64h ; 'd'
mov     eax, esp
call    sub_4B3A21
mov     edx, [esp+6]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_26]
sar     eax, 10h
shl     eax, 8
lea     ebx, [edx+eax]
mov     edx, [esp+24h+var_1C]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_26+2]
sar     eax, 10h
shl     eax, 8
lea     esi, [edx+eax]
mov     edx, [esp+24h+var_1C+2]
sar     edx, 10h
shl     edx, 10h
mov     eax, [esp+24h+var_22]
sar     eax, 10h
shl     eax, 8
lea     edi, [edx+eax]
call    sub_4DE0BF
test    eax, eax
jz      short loc_4B39B0
mov     byte ptr [eax], 1
mov     dl, [ecx+2]
mov     [eax+2], dl
mov     byte ptr [eax+3], 2
mov     cl, [ecx+1]
mov     [eax+0Ch], cl
mov     ecx, ebx
sar     ecx, 10h
mov     [eax+90h], cx
mov     ecx, esi
sar     ecx, 10h
mov     [eax+92h], cx
mov     ecx, edi
sar     ecx, 10h
mov     [eax+94h], cx

loc_4B39B0:
add     esp, 10h
jmp     loc_4B338F
sub_4B390B endp




sub_4B39B8 proc near

var_1A= dword ptr -1Ah
var_16= dword ptr -16h

push    ecx
push    edx
push    esi
push    edi
sub     esp, 8
mov     edx, eax
lea     ecx, [eax+88h]
mov     edi, esp
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [esp+18h+var_1A]
sar     eax, 10h
shl     eax, 10h
mov     [edx+1Ch], eax
mov     eax, [esp+18h+var_1A+2]
sar     eax, 10h
shl     eax, 10h
mov     [edx+20h], eax
mov     eax, [esp+18h+var_16]
sar     eax, 10h
shl     eax, 10h
mov     [edx+24h], eax
mov     eax, [esp+18h+var_1A+2]
mov     [edx+14h], ax
mov     [ecx+34h], ax
mov     eax, [esp+18h+var_16]
mov     [edx+16h], ax
mov     [ecx+36h], ax
mov     eax, [esp+18h+var_16+2]
mov     [edx+18h], ax
mov     [ecx+38h], ax
add     esp, 8
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B39B8 endp




sub_4B3A21 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 48h
mov     ecx, eax
mov     esi, edx
call    sub_42A85C
mov     [esp+54h+var_14], ax
mov     ax, word ptr ds:dword_5F83B8+2
mov     [esp+54h+var_12], ax
xor     edx, edx
mov     [esp+54h+var_10], dx
mov     edx, esp
lea     eax, [esp+54h+var_14]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+54h+var_1C], edx
mov     [esp+54h+var_20], edx
mov     [esp+54h+var_24], edx
lea     edx, [esp+54h+var_24]
mov     eax, esp
call    sub_4EF689
xor     ebx, ebx
mov     [esp+54h+var_14], bx
mov     [esp+54h+var_12], bx
mov     [esp+54h+var_10], 0F000h
lea     ebx, [esp+54h+var_24]
lea     edx, [esp+54h+var_14]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+54h+var_24]
imul    eax, esi
sar     eax, 4
mov     [ecx], ax
mov     eax, [esp+54h+var_20]
imul    eax, esi
sar     eax, 4
mov     [ecx+2], ax
imul    esi, [esp+54h+var_1C]
sar     esi, 4
mov     [ecx+4], si
add     esp, 48h
pop     esi
pop     ecx
pop     ebx
retn
sub_4B3A21 endp




sub_4B3ABE proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B3AC7[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B3ABE endp




sub_4B3AD8 proc near

var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_1C= dword ptr -1Ch
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 48h
mov     ecx, eax
mov     ah, [eax]
or      ah, 0Ah
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5310A4
call    sub_42A85C
sub     eax, 80h
mov     word ptr [esp+5Ch+var_1C], ax
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     word ptr [esp+5Ch+var_1C+2], ax
xor     edx, edx
mov     [esp+5Ch+var_18], dx
mov     edx, esp
lea     eax, [esp+5Ch+var_1C]
call    sub_4EF638
xor     ebx, ebx
mov     word ptr [esp+5Ch+var_1C], bx
mov     word ptr [esp+5Ch+var_1C+2], bx
mov     [esp+5Ch+var_18], 0F000h
lea     ebx, [esp+5Ch+var_2C]
lea     edx, [esp+5Ch+var_1C]
mov     eax, esp
call    sub_4EF1FB
mov     eax, [esp+5Ch+var_2C]
mov     word ptr [esp+5Ch+var_1C], ax
mov     eax, [esp+5Ch+var_28]
mov     word ptr [esp+5Ch+var_1C+2], ax
mov     eax, [esp+5Ch+var_24]
mov     [esp+5Ch+var_18], ax
mov     edx, 0Ah
mov     eax, offset byte_5F8364
call    sub_4EE62E
mov     edx, [esp+3Eh]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+44h], dx
mov     edx, [esp+5Ch+var_1C]
sar     edx, 10h
imul    edx, eax
sar     edx, 4
mov     [ecx+46h], dx
mov     edx, [esp+5Ch+var_1C+2]
sar     edx, 10h
imul    eax, edx
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [ecx+0A4h]
lea     esi, [esp+5Ch+var_1C]
movsd
movsd
mov     word ptr [ecx+4Ch], 0
mov     word ptr [ecx+4Eh], 200h
mov     word ptr [ecx+50h], 0
mov     eax, ds:dword_5F89A5
sar     eax, 18h
mov     eax, ds:dword_5310C0[eax*4]
mov     [ecx+88h], eax
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
mov     byte ptr [ecx+96h], 0
mov     byte ptr [ecx+97h], 0
mov     eax, ds:dword_5F89A5
sar     eax, 18h
mov     ax, ds:word_5310B0[eax*2]
mov     [ecx+98h], ax
mov     word ptr [ecx+7Ch], 0
mov     byte ptr [ecx+0Bh], 0
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
mov     eax, ecx
call    sub_4B3EFC
lea     edx, [ecx+14h]
mov     eax, 12Fh
call    sub_4D8BC3
add     esp, 48h

loc_4B3C8F:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B3AD8 endp




sub_4B3C95 proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
mov     edx, 40h ; '@'
call    sub_4EE66E
mov     esi, eax
test    eax, eax
jnz     short loc_4B3CB2
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B3CD8

loc_4B3CB2:
cmp     esi, 7FFFh
mov     eax, ecx
call    sub_4B3D80
lea     edx, [ecx+14h]
mov     eax, 130h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
pop     edi
pop     esi
pop     edx
pop     ecx
retn

loc_4B3CD8:
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
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
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
mov     ah, [ecx+0Bh]
inc     ah
mov     [ecx+0Bh], ah
mov     al, ah
and     al, 7
and     eax, 0FFh
mov     dl, ds:byte_5310E0[eax*2]
mov     [ecx+96h], dl
mov     al, ds:byte_5310E1[eax*2]
mov     [ecx+97h], al
mov     eax, ecx
call    sub_4B3EFC
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4B3C95 endp




sub_4B3D80 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
cmp     byte ptr ds:dword_5F89A5+3, 0
jnz     loc_4B3E44
call    sub_4DE13B
test    eax, eax
jz      short loc_4B3DB8
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4B3DB8:
xor     esi, esi
jmp     short loc_4B3DC6

loc_4B3DBC:
inc     esi
cmp     esi, 4
jge     loc_4B3C8F

loc_4B3DC6:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B3DBC
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 0
mov     byte ptr [eax+0Eh], 1
mov     ebx, esi
shl     ebx, 0Ah
mov     eax, ebx
call    sub_4EF003
mov     edi, eax
shl     eax, 2
add     eax, edi
add     eax, eax
mov     edi, eax
shl     eax, 4
sub     eax, edi
sar     eax, 0Ch
mov     edi, [ecx+12h]
sar     edi, 10h
add     eax, edi
mov     [edx+48h], ax
mov     eax, ebx
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 4
sub     eax, ebx
mov     ebx, eax
sar     ebx, 0Ch
mov     eax, [ecx+16h]
sar     eax, 10h
add     eax, ebx
mov     [edx+4Ch], ax
mov     ax, [ecx+16h]
mov     [edx+4Ah], ax
jmp     loc_4B3DBC

loc_4B3E44:
call    sub_4DE13B
test    eax, eax
jz      short loc_4B3E68
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 2
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [ecx+14h]
movsd
movsd

loc_4B3E68:
xor     esi, esi
jmp     short loc_4B3E76

loc_4B3E6C:
inc     esi
cmp     esi, 8
jge     loc_4B3C8F

loc_4B3E76:
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B3E6C
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Dh], 1
mov     byte ptr [eax+0Eh], 1
mov     edi, esi
shl     edi, 9
mov     eax, edi
call    sub_4EF003
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 2
add     eax, ebx
sar     eax, 0Ch
mov     ebx, [ecx+12h]
sar     ebx, 10h
add     eax, ebx
mov     [edx+48h], ax
mov     eax, edi
call    sub_4EF008
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 3
add     eax, ebx
add     eax, eax
mov     ebx, eax
shl     eax, 2
add     eax, ebx
sar     eax, 0Ch
mov     ebx, [ecx+16h]
sar     ebx, 10h
add     eax, ebx
mov     [edx+4Ch], ax
mov     ax, [ecx+16h]
mov     [edx+4Ah], ax
jmp     loc_4B3E6C
sub_4B3D80 endp




sub_4B3EFC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
xor     esi, esi
mov     si, [eax+98h]
mov     edx, 1
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     edx, eax
lea     eax, [ecx+14h]
lea     ebx, [ecx+2Ch]
lea     edi, [ecx+0D4h]
or      edx, 88000000h
cmp     byte ptr [ecx+0Ch], 0
jz      short loc_4B3F4B
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    6000h
jmp     short loc_4B3F5F

loc_4B3F4B:
push    80h
push    0
push    edx
push    edi
xor     edx, edx
mov     dl, [ecx+1]
push    edx
push    4000h

loc_4B3F5F:
push    200h
mov     ecx, esi
mov     edx, esi
call    sub_4E02CB
jmp     loc_4B3C8F
sub_4B3EFC endp




sub_4B3F72 proc near
push    ecx
push    edx
mov     edx, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_4B3F7B[ecx*4]
mov     eax, edx
call    sub_4326CA
pop     edx
pop     ecx
retn
sub_4B3F72 endp




sub_4B3F8C proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 1Ch
mov     ecx, eax
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx], 6
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_5310F8
mov     byte ptr [ecx+74h], 1
lea     ebp, [ecx+0DCh]
mov     dword ptr [ebp+0], 0F0h
mov     eax, ds:dword_5F89AD
sar     eax, 18h
mov     [ebp+4], eax
mov     edx, 0Bh
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [ebp+8], eax
xor     edx, edx
mov     [esp+34h+var_24], dx
mov     ax, [ecx+64h]
and     ah, 0Fh
mov     [esp+34h+var_22], ax
mov     [esp+34h+var_20], dx
mov     eax, ecx
add     eax, 8Ch
mov     [esp+34h+var_1C], eax
mov     edx, eax
lea     eax, [esp+34h+var_24]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+34h+var_30], edx
mov     ebx, edx
mov     [esp+34h+var_2C], edx
mov     esi, edx
mov     [esp+34h+var_34], edx
mov     edx, esp
mov     eax, [esp+34h+var_1C]
call    sub_4EF689
xor     esi, ebx
mov     [esp+34h+var_24], si
xor     edi, edi
mov     [esp+34h+var_22], di
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, [esp+34h+var_1C]
call    sub_4EF1FB
mov     eax, [esp+34h+var_34]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+44h], bx
mov     eax, [esp+34h+var_30]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+46h], bx
mov     eax, [esp+34h+var_2C]
mov     ebx, eax
shl     ebx, 2
add     ebx, eax
shl     ebx, 3
sar     ebx, 4
mov     [ecx+48h], bx
mov     [ecx+4Ch], di
mov     word ptr [ecx+4Eh], 200h
mov     [ecx+50h], di
lea     ebx, [ecx+88h]
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+34h], eax
mov     eax, [ecx+44h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+38h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
sub     [ecx+3Ch], eax
mov     eax, [ecx+34h]
sar     eax, 10h
mov     [ecx+2Ch], ax
mov     eax, [ecx+38h]
sar     eax, 10h
mov     [ecx+2Eh], ax
mov     eax, [ecx+3Ch]
sar     eax, 10h
mov     [ecx+30h], ax
mov     word ptr [ecx+7Ch], 0
mov     edi, 200h
mov     [esp+34h+var_2C], edi
mov     [esp+34h+var_34], edi
mov     [esp+34h+var_30], 300h
mov     edx, esp
mov     eax, [esp+34h+var_1C]
call    sub_4EF689
cmp     dword ptr [ebp+4], 0
jz      short loc_4B4173
mov     dword ptr [ebx+3Ch], offset unk_8080C0
jmp     short loc_4B417A

loc_4B4173:
mov     dword ptr [ebx+3Ch], offset unk_808080

loc_4B417A:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     edx, 4000h
mov     eax, ecx
call    sub_4B4402
lea     edx, [ecx+14h]
mov     eax, 132h
call    sub_4D8BC3
mov     byte ptr [ecx+8], 1
add     esp, 1Ch
jmp     loc_4B432C
sub_4B3F8C endp




sub_4B41A8 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jz      short loc_4B41CA
cmp     word ptr [ecx+7Ch], 0
jz      short loc_4B41DD

loc_4B41CA:
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     loc_4B432D

loc_4B41DD:
lea     eax, [ecx+14h]
call    sub_42C443
test    eax, eax
jz      short loc_4B41CA
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
mov     ax, [ecx+4Eh]
add     [ecx+46h], ax
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
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebx+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebx+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebx+38h], ax
mov     eax, ecx
call    sub_42DE56
mov     edx, eax
test    eax, eax
jl      short loc_4B4275
test    ah, 10h
jz      short loc_4B426B
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+8], 2

loc_4B426B:
lea     eax, [ecx+44h]
call    sub_42D90F
jmp     short loc_4B427D

loc_4B4275:
mov     byte ptr [ecx+74h], 0
mov     byte ptr [ecx+8], 2

loc_4B427D:
mov     edx, 4000h
mov     eax, ecx
call    sub_4B4402
jmp     loc_4B432D
sub_4B41A8 endp




sub_4B428E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebx, [eax+0DCh]
lea     ebp, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jnz     short loc_4B42C0
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B432C

loc_4B42C0:
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
mov     eax, ecx
call    sub_431C8C
mov     eax, ecx
call    sub_42DE56
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     ax, [ecx+14h]
mov     [ebp+34h], ax
mov     ax, [ecx+16h]
mov     [ebp+36h], ax
mov     ax, [ecx+18h]
mov     [ebp+38h], ax
mov     edx, [ebx]
dec     edx
mov     [ebx], edx
jnz     short loc_4B4320
mov     dword ptr [ebx], 3Ch ; '<'
mov     byte ptr [ecx+8], 3

loc_4B4320:
mov     edx, 6000h
mov     eax, ecx
call    sub_4B4402

loc_4B432C:
pop     ebp

loc_4B432D:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B428E endp




sub_4B4333 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+0DCh]
lea     ebx, [eax+88h]
xor     edx, edx
call    sub_4EE66E
cmp     eax, 7FFFh
jnz     short loc_4B4365

loc_4B4355:
mov     eax, ecx
call    sub_4B4490
mov     eax, ecx
call    sub_4DE3AC
jmp     short loc_4B432C

loc_4B4365:
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
mov     eax, ecx
call    sub_431C8C
mov     eax, ecx
call    sub_42DE56
mov     eax, ecx
call    sub_42C592
mov     [ecx+16h], ax
mov     eax, [ecx+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+20h], eax
mov     ax, [ecx+14h]
mov     [ebx+34h], ax
mov     ax, [ecx+16h]
mov     [ebx+36h], ax
mov     ax, [ecx+18h]
mov     [ebx+38h], ax
mov     ah, byte ptr ds:word_77EAB6
test    ah, 2
jz      short loc_4B43DA
test    ah, 1
jz      short loc_4B43D1
lea     edx, [ecx+14h]
mov     eax, 133h
call    sub_4D8BC3

loc_4B43D1:
mov     dword ptr [ebx+3Ch], 0E0E0E0h
jmp     short loc_4B43F0

loc_4B43DA:
cmp     dword ptr [ebp+4], 0
jz      short loc_4B43E9
mov     dword ptr [ebx+3Ch], offset unk_8080C0
jmp     short loc_4B43F0

loc_4B43E9:
mov     dword ptr [ebx+3Ch], offset unk_808080

loc_4B43F0:
mov     ebx, [ebp+0]
dec     ebx
mov     [ebp+0], ebx
jz      loc_4B4355
jmp     loc_4B4320
sub_4B4333 endp




sub_4B4402 proc near

var_14= word ptr -14h
var_12= word ptr -12h
var_10= word ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 8
mov     esi, eax
mov     ebx, edx
lea     edx, [eax+0DCh]
mov     ax, [eax+14h]
mov     [esp+14h+var_14], ax
mov     ax, [esi+16h]
sub     eax, 28h ; '('
mov     [esp+14h+var_12], ax
mov     ax, [esi+18h]
mov     [esp+14h+var_10], ax
push    80h
push    0
mov     eax, [edx+8]
or      eax, 8000000h
push    eax
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
xor     ecx, ecx
mov     cx, bx
xor     ebx, ebx
mov     edx, 30h ; '0'
lea     eax, [esp+28h+var_14]
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     ecx
pop     ebx
retn
sub_4B4402 endp




sub_4B4490 proc near
push    edx
push    esi
push    edi
mov     esi, eax
lea     edx, [eax+0DCh]
call    sub_4DE13B
test    eax, eax
jz      short loc_4B44CB
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
mov     byte ptr [eax+0Ch], 1
mov     edx, [edx+4]
mov     dl, ds:byte_531114[edx]
mov     [eax+0Dh], dl
mov     byte ptr [eax+0Eh], 1
lea     edi, [eax+48h]
lea     esi, [esi+14h]
movsd
movsd

loc_4B44CB:
pop     edi
pop     esi
pop     edx
retn
sub_4B4490 endp




sub_4B44CF proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B44D5[edx*4]
pop     edx
retn
sub_4B44CF endp




sub_4B44DE proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_24= word ptr -24h
var_22= word ptr -22h
var_20= word ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 20h
mov     ecx, eax
mov     ah, [eax]
or      ah, 6
mov     [ecx], ah
or      byte ptr [ecx+6], 20h
mov     dword ptr [ecx+0CCh], 0
mov     dword ptr [ecx+0D0h], 0
mov     dword ptr [ecx+0D4h], 0
mov     dword ptr [ecx+0D8h], 0
mov     dword ptr [ecx+78h], offset unk_53111C
mov     eax, [ecx+0Ah]
sar     eax, 18h
call    sub_4E0F14
mov     al, ds:byte_5F89BC
mov     [ecx+0Fh], al
call    sub_42A85C
mov     [esp+34h+var_24], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+34h+var_22], ax
xor     edx, edx
mov     [esp+34h+var_20], dx
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+34h+var_24]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     eax, ds:dword_531128[eax*4]
mov     [esp+34h+var_2C], eax
mov     [esp+34h+var_30], eax
mov     [esp+34h+var_34], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
xor     ebx, ebx
mov     [esp+34h+var_24], bx
mov     [esp+34h+var_22], bx
mov     [esp+34h+var_20], 0F000h
mov     ebx, esp
lea     edx, [esp+34h+var_24]
mov     eax, esi
call    sub_4EF1FB
mov     edx, [esp+34h+var_34]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+44h], ax
mov     edx, [esp+34h+var_30]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+34h+var_2C]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+48h], ax
lea     eax, [ecx+88h]
lea     edi, [esp+34h+var_1C]
mov     esi, offset unk_5F882C
movsd
movsd
mov     ebx, [ecx+42h]
sar     ebx, 10h
shl     ebx, 0Ah
mov     edx, [esp+16h]
sar     edx, 10h
shl     edx, 10h
add     edx, ebx
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 0Ah
mov     ebx, [esp+34h+var_1C]
sar     ebx, 10h
shl     ebx, 10h
add     ebx, edx
mov     [ecx+20h], ebx
mov     ebx, [ecx+46h]
sar     ebx, 10h
shl     ebx, 0Ah
mov     edx, [esp+34h+var_1C+2]
sar     edx, 10h
shl     edx, 10h
add     edx, ebx
mov     [ecx+24h], edx
mov     edx, [ecx+1Ch]
sar     edx, 10h
mov     [ecx+14h], dx
mov     [eax+34h], dx
mov     edx, [ecx+20h]
sar     edx, 10h
mov     [ecx+16h], dx
mov     [eax+36h], dx
mov     edx, [ecx+24h]
sar     edx, 10h
mov     [ecx+18h], dx
mov     [eax+38h], dx
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
mov     dword ptr [eax+3Ch], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     eax, ecx
call    sub_4B48A3
lea     edx, [ecx+14h]
mov     eax, 134h
call    sub_4D8BC3
inc     byte ptr [ecx+8]
add     esp, 20h

loc_4B46A3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B44DE endp




sub_4B46A9 proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     ecx, eax
lea     ebp, [eax+88h]
call    sub_4B4877
test    al, al
jz      short loc_4B46DC

loc_4B46C3:
lea     edx, [ecx+14h]
mov     eax, 135h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
jmp     loc_4B486E

loc_4B46DC:
mov     dword ptr [ebp+3Ch], 2808080h
test    byte ptr [ecx+0D7h], 0Ch
jz      short loc_4B46FC
mov     dword ptr [ebp+3Ch], 2E0E0E0h
or      ds:byte_5F88B0, 3
jmp     short loc_4B470E

loc_4B46FC:
mov     eax, ecx
call    sub_4B4980
test    al, al
jz      short loc_4B470E
or      ds:byte_5F88B0, 1

loc_4B470E:
mov     dx, ds:word_5F89BE
test    dx, dx
jz      short loc_4B46C3
cmp     dx, 7FFFh
jz      short loc_4B472B
mov     esi, edx
dec     esi
mov     ds:word_5F89BE, si

loc_4B472B:
call    sub_42A85C
mov     [esp+38h+var_28], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+38h+var_26], ax
xor     edi, edi
mov     [esp+38h+var_24], di
lea     esi, [ecx+8Ch]
mov     edx, esi
lea     eax, [esp+38h+var_28]
call    sub_4EF638
mov     eax, [ecx+0Ch]
sar     eax, 18h
mov     eax, ds:dword_531128[eax*4]
mov     [esp+38h+var_30], eax
mov     [esp+38h+var_34], eax
mov     [esp+38h+var_38], eax
mov     edx, esp
mov     eax, esi
call    sub_4EF689
mov     [esp+38h+var_28], di
mov     [esp+38h+var_26], di
mov     [esp+38h+var_24], 0F000h
mov     ebx, esp
lea     edx, [esp+38h+var_28]
mov     eax, esi
call    sub_4EF1FB
mov     esi, [esp+38h+var_38]
mov     eax, esi
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 4
mov     [ecx+44h], ax
mov     esi, [esp+38h+var_34]
mov     eax, esi
shl     eax, 2
add     eax, esi
shl     eax, 3
sar     eax, 4
mov     [ecx+46h], ax
mov     edx, [esp+38h+var_30]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 3
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [esp+38h+var_20]
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 0Ah
mov     edx, [esp+16h]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 0Ah
mov     eax, [esp+38h+var_20]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 0Ah
mov     edx, [esp+38h+var_20+2]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+24h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     [ebp+34h], ax
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     [ebp+36h], ax
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     [ebp+38h], ax
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
mov     eax, ecx
call    sub_4B48A3

loc_4B486E:
add     esp, 20h
pop     ebp
jmp     loc_4B46A3
sub_4B46A9 endp




sub_4B4877 proc near
push    edx
xor     eax, eax
mov     ax, word ptr ds:dword_5F8480
xor     edx, edx
mov     dx, ds:word_5F84A0
test    eax, edx
jz      short loc_4B489B
mov     eax, offset byte_5F8364
call    sub_4B61E1
test    eax, eax
jnz     short loc_4B489F

loc_4B489B:
mov     al, 1
pop     edx
retn

loc_4B489F:
xor     al, al
pop     edx
retn
sub_4B4877 endp




sub_4B48A3 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h

push    ebx
push    ecx
push    edx
push    esi
sub     esp, 8
mov     esi, eax
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+18h+var_18], ax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+18h+var_16], ax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 0Ah
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+18h+var_14], ax
push    80h
push    0
push    2000001h
lea     eax, [esi+0D4h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [esi+0Ch]
sar     edx, 18h
mov     edx, ds:dword_531148[edx*4]
xor     ecx, ecx
xor     ebx, ebx
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
push    80h
push    0
push    28000001h
lea     eax, [esi+0CCh]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [esi+0Ch]
sar     edx, 18h
mov     edx, ds:dword_531148[edx*4]
mov     ecx, 4000h
xor     ebx, ebx
lea     eax, [esp+2Ch+var_18]
call    sub_4E01FC
mov     dword ptr [esi+0CCh], 0
mov     dword ptr [esi+0D0h], 0
mov     dword ptr [esi+0D4h], 0
mov     dword ptr [esi+0D8h], 0
add     esp, 8
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B48A3 endp




sub_4B4980 proc near

var_2C= dword ptr -2Ch
var_24= dword ptr -24h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
lea     edi, [esp+2Ch+var_1C]
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, esp
mov     esi, offset dword_5F83B8
movsd
movsd
mov     ebx, [eax+0Ch]
sar     ebx, 18h
mov     ebx, ds:dword_531168[ebx*4]
xor     ecx, ecx
jmp     short loc_4B49B7

loc_4B49AD:
inc     ecx
cmp     ecx, 20h ; ' '
jnb     loc_4B4AB8

loc_4B49B7:
mov     eax, ecx
shl     eax, 3
add     eax, ecx
shl     eax, 3
sub     eax, ecx
shl     eax, 2
add     eax, offset byte_57098C
cmp     byte ptr [eax], 0
jz      short loc_4B49AD
lea     edi, [esp+2Ch+var_24]
lea     esi, [eax+14h]
movsd
movsd
mov     eax, [esp+0Eh]
sar     eax, 10h
mov     edx, [esp+6]
sar     edx, 10h
sub     eax, edx
lea     edx, [eax+7D0h]
cmp     edx, 0FA0h
ja      short loc_4B49AD
mov     edx, [esp+2Ch+var_1C]
sar     edx, 10h
mov     esi, [esp+2Ch+var_24]
sar     esi, 10h
sub     edx, esi
mov     esi, edx
add     edx, 7D0h
cmp     edx, 0FA0h
ja      short loc_4B49AD
mov     edi, [esp+2Ch+var_1C+2]
sar     edi, 10h
mov     edx, [esp+2Ch+var_24+2]
sar     edx, 10h
sub     edi, edx
mov     edx, edi
add     edi, 7D0h
cmp     edi, 0FA0h
ja      loc_4B49AD
imul    esi, esi
mov     edi, eax
imul    edi, eax
add     edi, esi
mov     esi, edx
imul    esi, edx
add     esi, edi
cmp     esi, 0F4240h
jnb     loc_4B49AD
call    sub_4EF04B
mov     edx, eax
and     edx, 0FFFh
mov     eax, [esp+2Ch+var_2C]
sar     eax, 10h
lea     edi, [eax+ebx]
and     edi, 0FFFh
cmp     edi, eax
jb      short loc_4B4A86
mov     esi, eax
sub     esi, ebx
and     esi, 0FFFh
cmp     eax, esi
jnb     short loc_4B4AAC

loc_4B4A86:
mov     eax, [esp+2Ch+var_2C]
sar     eax, 10h
lea     esi, [eax+ebx]
and     esi, 0FFFh
cmp     edx, esi
jb      short loc_4B4AA8
sub     eax, ebx
and     eax, 0FFFh
cmp     eax, edx

loc_4B4AA2:
jnb     loc_4B49AD

loc_4B4AA8:
mov     al, 1
jmp     short loc_4B4ABA

loc_4B4AAC:
cmp     edx, edi
jnb     loc_4B49AD
cmp     esi, edx
jmp     short loc_4B4AA2

loc_4B4AB8:
xor     al, al

loc_4B4ABA:
add     esp, 18h
jmp     loc_4B46A3
sub_4B4980 endp




sub_4B4AC2 proc near
push    edx
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_4B4AC8[edx*4]
pop     edx
retn
sub_4B4AC2 endp




sub_4B4AD1 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     ebx, [eax+0CCh]
mov     eax, [eax+0Ah]
sar     eax, 18h
call    sub_4E0F14
or      byte ptr [ecx], 6
or      byte ptr [ecx+6], 20h
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
mov     byte ptr [ecx+0Ch], 0
mov     byte ptr [ecx+0Dh], 0
mov     byte ptr [ecx+0Eh], 0
mov     byte ptr [ecx+0Fh], 0
mov     al, ds:byte_5F89C2
mov     byte ptr [ebx+1], 8
xor     edx, edx
mov     dl, al
mov     al, ds:byte_531198[edx]
mov     [ebx+2], al
mov     al, ds:byte_531190[edx]
mov     [ebx+3], al
mov     esi, edx
shl     esi, 2
mov     eax, ds:dword_5311A0[esi]
mov     [ebx+4], eax
mov     edx, 0Dh
mov     eax, offset byte_5F8364
call    sub_4EE5F2
mov     [ebx+8], eax
mov     eax, ds:dword_5311C0[esi]
mov     [ebx+0Ch], eax
mov     eax, ecx
call    sub_4B4C6F
mov     dword ptr [ecx+0C4h], 2808080h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     al, al

loc_4B4B73:
xor     edx, edx
mov     dl, al
mov     dword ptr [ecx+edx*4+0DCh], 0
inc     al
cmp     al, 10h
jb      short loc_4B4B73
mov     dword ptr [ecx+78h], offset unk_5311E0
mov     eax, ecx
call    sub_4B4E46
lea     edx, [ecx+14h]
mov     eax, 136h
call    sub_4D8BC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4AD1 endp




sub_4B4BA8 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     edx, [eax+0CCh]
mov     ah, [edx+1]
cmp     ah, 40h ; '@'
jnb     short loc_4B4BC6
mov     bl, ah
add     bl, 8
mov     [edx+1], bl
jmp     short loc_4B4BCA

loc_4B4BC6:
mov     byte ptr [edx+1], 40h ; '@'

loc_4B4BCA:
mov     eax, ecx
call    sub_4B4C43
test    al, al
jz      short loc_4B4BEE

loc_4B4BD5:
lea     edx, [ecx+14h]
mov     eax, 137h
call    sub_4D8BC3
mov     eax, ecx
call    sub_4DE3AC
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B4BEE:
mov     eax, ecx
call    sub_4B509B
mov     ebx, eax
test    eax, eax
jz      short loc_4B4BFE
mov     [edx+1], al

loc_4B4BFE:
mov     eax, ecx
call    sub_4B51C6
test    eax, eax
jz      short loc_4B4C13
mov     dword ptr [ecx+0C4h], 2808080h

loc_4B4C13:
mov     dx, ds:word_5F89C6
test    dx, dx
jz      short loc_4B4BD5
cmp     dx, 7FFFh
jz      short loc_4B4C30
mov     esi, edx
dec     esi
mov     ds:word_5F89C6, si

loc_4B4C30:
mov     eax, ecx
call    sub_4B4C6F
mov     eax, ecx
call    sub_4B4E46
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4BA8 endp




sub_4B4C43 proc near
push    edx
xor     eax, eax
mov     ax, word ptr ds:dword_5F8480
xor     edx, edx
mov     dx, ds:word_5F84A0
test    eax, edx
jz      short loc_4B4C67
mov     eax, offset byte_5F8364
call    sub_4B61E1
test    eax, eax
jnz     short loc_4B4C6B

loc_4B4C67:
mov     al, 1
pop     edx
retn

loc_4B4C6B:
xor     al, al
pop     edx
retn
sub_4B4C43 endp




sub_4B4C6F proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_30= dword ptr -30h
var_28= word ptr -28h
var_26= word ptr -26h
var_24= word ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     ecx, eax
lea     ebp, [eax+0CCh]
add     eax, 88h
mov     [esp+40h+var_20], eax
call    sub_42A85C
mov     [esp+40h+var_28], ax
mov     ax, word ptr ds:dword_5F83B8+2
and     ah, 0Fh
mov     [esp+40h+var_26], ax
mov     ax, ds:word_77EAB6
xor     ah, ah
and     al, 0Fh
shl     eax, 8
mov     [esp+40h+var_24], ax
mov     eax, ecx
add     eax, 8Ch
mov     [esp+40h+var_1C], eax
mov     edx, eax
lea     eax, [esp+40h+var_28]
call    sub_4EF638
mov     edx, 1000h
mov     [esp+40h+var_38], edx
mov     [esp+40h+var_3C], edx
mov     [esp+40h+var_40], edx
mov     edx, esp
mov     eax, [esp+40h+var_1C]
call    sub_4EF689
xor     edx, edx
mov     [esp+40h+var_28], dx
mov     [esp+40h+var_26], dx
mov     [esp+40h+var_24], 0F000h
mov     ebx, esp
lea     edx, [esp+40h+var_28]
mov     eax, [esp+40h+var_1C]
call    sub_4EF1FB
mov     eax, [esp+40h+var_40]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [esp+40h+var_3C]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [esp+40h+var_38]
add     eax, eax
mov     edx, eax
shl     eax, 4
sub     eax, edx
sar     eax, 4
mov     [ecx+48h], ax
lea     edi, [esp+40h+var_30]
mov     esi, offset unk_5F882C
movsd
movsd
mov     eax, [ecx+42h]
sar     eax, 10h
shl     eax, 8
mov     edx, [esp+0Eh]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+1Ch], edx
mov     edx, [ecx+44h]
sar     edx, 10h
shl     edx, 8
mov     eax, [esp+40h+var_30]
sar     eax, 10h
shl     eax, 10h
add     eax, edx
mov     [ecx+20h], eax
mov     eax, [ecx+46h]
sar     eax, 10h
shl     eax, 8
mov     edx, [esp+40h+var_30+2]
sar     edx, 10h
shl     edx, 10h
add     edx, eax
mov     [ecx+24h], edx
mov     eax, [ecx+1Ch]
sar     eax, 10h
mov     [ecx+14h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+34h], dx
mov     eax, [ecx+20h]
sar     eax, 10h
mov     [ecx+16h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+36h], dx
mov     eax, [ecx+24h]
sar     eax, 10h
mov     [ecx+18h], ax
mov     edx, eax
mov     eax, [esp+40h+var_20]
mov     [eax+38h], dx
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
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_40]
sar     eax, 4
mov     [ecx+44h], ax
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_3C]
sar     eax, 4
mov     [ecx+46h], ax
mov     eax, [ebp+0]
sar     eax, 18h
imul    eax, [esp+40h+var_38]
sar     eax, 4
mov     [ecx+48h], ax
mov     eax, [ebp+0Ch]
mov     [esp+40h+var_3C], eax
mov     [esp+40h+var_40], eax
movsx   edx, byte ptr [ebp+2]
xor     eax, eax
mov     al, [ebp+1]
imul    edx, eax
mov     [esp+40h+var_38], edx
mov     edx, esp
mov     eax, [esp+40h+var_1C]
call    sub_4EF689
add     esp, 28h

loc_4B4E3F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B4C6F endp




sub_4B4E46 proc near

var_4C= word ptr -4Ch
var_4A= word ptr -4Ah
var_48= word ptr -48h
var_44= word ptr -44h
var_42= word ptr -42h
var_40= word ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
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
sub     esp, 34h
mov     esi, eax
lea     edi, [eax+0CCh]
mov     eax, [eax+42h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_2C], eax
mov     eax, [esi+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_24], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+4Ch+var_20], eax
xor     ah, ah
mov     [esp+4Ch+var_1C], ah

loc_4B4E84:
xor     ecx, ecx
mov     cl, [edi+1]
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
mov     [esp+4Ch+var_3C], eax
xor     edx, edx
mov     dl, [esp+4Ch+var_1C]
lea     eax, [esi+0DCh]
mov     [esp+4Ch+var_28], eax
mov     bl, dl
shl     bl, 3
mov     eax, edx
shl     eax, 3
mov     [esp+4Ch+var_38], eax
mov     eax, edx
shl     eax, 2
mov     [esp+4Ch+var_30], eax
mov     ebp, [esp+4Ch+var_38]
add     ebp, esi
mov     eax, [esp+4Ch+var_28]
add     eax, [esp+4Ch+var_30]
mov     [esp+4Ch+var_34], eax
cmp     edx, [esp+4Ch+var_3C]
jge     loc_4B4FB1
mov     dl, bl
add     dl, 6
and     edx, 0FFh
mov     eax, [esp+4Ch+var_2C]
imul    eax, edx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+4Ch+var_4C], ax
mov     eax, [esp+4Ch+var_24]
imul    eax, edx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+4Ch+var_4A], ax
mov     eax, [esp+4Ch+var_20]
imul    eax, edx
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_48], ax
mov     dl, bl
inc     dl
and     edx, 0FFh
mov     eax, [esp+4Ch+var_2C]
imul    eax, edx
add     eax, [esi+1Ch]
sar     eax, 10h
mov     [esp+4Ch+var_44], ax
mov     eax, [esp+4Ch+var_24]
imul    eax, edx
add     eax, [esi+20h]
sar     eax, 10h
mov     [esp+4Ch+var_42], ax
imul    edx, [esp+4Ch+var_20]
add     edx, [esi+24h]
sar     edx, 10h
mov     [esp+4Ch+var_40], dx
push    80h
push    0
mov     eax, [edi+8]
or      eax, 8000000h
push    eax
mov     ebx, [esp+58h+var_34]
push    ebx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
mov     edx, [edi+4]
mov     ecx, edx
lea     ebx, [esp+68h+var_44]
lea     eax, [esp+68h+var_4C]
call    sub_4E02CB
mov     dword ptr [ebp+0DCh], 0
mov     dword ptr [ebp+0E0h], 0
inc     [esp+4Ch+var_1C]
jmp     loc_4B4E84

loc_4B4FB1:
mov     eax, ecx
mov     edx, ecx
sar     edx, 1Fh
mov     ecx, 8
idiv    ecx
test    edx, edx
jz      loc_4B5093
cmp     [esp+4Ch+var_1C], 8
jnb     loc_4B5093
mov     eax, [esp+4Ch+var_38]
add     eax, edx
and     eax, 0FFh
mov     edx, [esp+4Ch+var_2C]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+4Ch+var_4C], dx
mov     edx, [esp+4Ch+var_24]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+4Ch+var_4A], dx
imul    eax, [esp+4Ch+var_20]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_48], ax
xor     eax, eax
mov     al, bl
mov     edx, [esp+4Ch+var_2C]
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+4Ch+var_44], dx
mov     edx, [esp+4Ch+var_24]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+4Ch+var_42], dx
imul    eax, [esp+4Ch+var_20]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+4Ch+var_40], ax
push    80h
push    0
mov     eax, [edi+8]
or      eax, 8000000h
push    eax
mov     ecx, [esp+58h+var_34]
push    ecx
xor     eax, eax
mov     al, [esi+1]
push    eax
push    4000h
push    200h
mov     edx, [edi+4]
mov     ecx, edx
lea     ebx, [esp+68h+var_44]
lea     eax, [esp+68h+var_4C]
call    sub_4E02CB
mov     dword ptr [ebp+0DCh], 0
mov     dword ptr [ebp+0E0h], 0

loc_4B5093:
add     esp, 34h
jmp     loc_4B4E3F
sub_4B4E46 endp




sub_4B509B proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= word ptr -30h
var_2E= word ptr -2Eh
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     esi, eax
lea     edi, [eax+0CCh]
mov     ebp, [eax+42h]
sar     ebp, 10h
shl     ebp, 8
mov     eax, [eax+44h]
sar     eax, 10h
shl     eax, 8
mov     [esp+38h+var_28], eax
mov     eax, [esi+46h]
sar     eax, 10h
shl     eax, 8
mov     [esp+38h+var_24], eax
xor     ah, ah
mov     [esp+38h+var_1C], ah

loc_4B50D5:
mov     al, [esp+38h+var_1C]
cmp     al, [edi+1]
jnb     loc_4B51BC
inc     al
mov     [esp+38h+var_20], al
xor     eax, eax
mov     al, [esp+38h+var_20]
mov     edx, ebp
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     [esp+38h+var_30], dx
mov     edx, [esp+38h+var_28]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     [esp+38h+var_2E], dx
imul    eax, [esp+38h+var_24]
add     eax, [esi+24h]
sar     eax, 10h
mov     [esp+38h+var_2C], ax
xor     eax, eax
mov     al, [esp+38h+var_1C]
mov     edx, ebp
imul    edx, eax
add     edx, [esi+1Ch]
sar     edx, 10h
mov     word ptr [esp+38h+var_38], dx
mov     edx, [esp+38h+var_28]
imul    edx, eax
add     edx, [esi+20h]
sar     edx, 10h
mov     word ptr [esp+38h+var_38+2], dx
imul    eax, [esp+38h+var_24]
add     eax, [esi+24h]
sar     eax, 10h
mov     word ptr [esp+38h+var_34], ax
mov     ecx, 0FFFFh
mov     ebx, offset unk_5311E0
mov     edx, esp
lea     eax, [esp+38h+var_30]
call    sub_42CE61
test    eax, eax
jz      short loc_4B51AF
test    byte ptr ds:word_77EAB6, 3
jnz     short loc_4B51A6
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      short loc_4B51A6
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 8Ah
mov     byte ptr [eax+3], 1
mov     eax, [esp+38h+var_38]
mov     [edx+1Ch], ax
mov     eax, [esp+38h+var_38+2]
mov     [edx+1Eh], ax
mov     eax, [esp+38h+var_34]
mov     [edx+20h], ax

loc_4B51A6:
xor     eax, eax
mov     al, [esp+38h+var_1C]
inc     eax
jmp     short loc_4B51BE

loc_4B51AF:
mov     al, [esp+38h+var_20]
mov     [esp+38h+var_1C], al
jmp     loc_4B50D5

loc_4B51BC:
xor     eax, eax

loc_4B51BE:
add     esp, 20h
jmp     loc_4B4E3F
sub_4B509B endp




sub_4B51C6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     ecx, [eax+0CCh]
xor     bl, bl

loc_4B51D4:
xor     edx, edx
mov     dl, [ecx+1]
mov     eax, edx
sar     edx, 1Fh
shl     edx, 3
sbb     eax, edx
sar     eax, 3
xor     edx, edx
mov     dl, bl
cmp     edx, eax
jge     short loc_4B5206
test    byte ptr [esi+edx*8+0DFh], 0FFh
jz      short loc_4B5202
mov     eax, 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4B5202:
inc     bl
jmp     short loc_4B51D4

loc_4B5206:
xor     eax, eax
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4B51C6 endp




sub_4B520D proc near
test    cl, cl
jz      short loc_4B521A
mov     byte ptr [eax+0ADh], 0FFh
jmp     short loc_4B5222

loc_4B521A:
cmp     dl, [eax+0ADh]
jz      short locret_4B527A

loc_4B5222:
cmp     dl, 1
jb      short loc_4B526E
jbe     short loc_4B524F
cmp     dl, 0Ch
jnz     short loc_4B526E
cmp     byte ptr [eax+0ADh], 1
jnz     short loc_4B526E
xor     ebx, ebx
mov     bl, [eax+0A4h]
add     ebx, ebx
add     ebx, 4
cmp     bx, 1Fh
jle     short loc_4B526E
sub     ebx, 20h ; ' '
jmp     short loc_4B526E

loc_4B524F:
cmp     byte ptr [eax+0ADh], 0Ch
jnz     short loc_4B526E
xor     ebx, ebx
mov     bl, [eax+0A4h]
sub     ebx, 4
test    bx, bx
jge     short loc_4B526B
add     ebx, 20h ; ' '

loc_4B526B:
sar     bx, 1

loc_4B526E:
mov     [eax+0ACh], dl
mov     [eax+0A4h], bl

locret_4B527A:
retn
sub_4B520D endp




sub_4B527B proc near
push    esi
mov     esi, eax
mov     ax, [eax+116h]
sub     [esi+56h], ax
movsx   ecx, cx
movsx   ebx, bx
movsx   edx, dx
mov     eax, esi
call    sub_4DD43B
mov     ax, [esi+116h]
add     [esi+56h], ax
pop     esi
retn
sub_4B527B endp




sub_4B52A6 proc near
push    ecx
push    esi
push    edi
push    ebp
xor     edi, edi
mov     di, [eax+11Ch]
xor     esi, esi
mov     si, [eax+124h]
xor     ecx, ecx
mov     cx, [eax+126h]
mov     ebp, esi
or      ebp, ecx
test    edi, ebp
jz      short loc_4B52E2
cmp     ds:byte_77E7D9, 0
jnz     short loc_4B52D8
mov     ecx, esi

loc_4B52D8:
call    sub_4B52F0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn

loc_4B52E2:
mov     word ptr [eax+10Ch], 0
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4B52A6 endp




sub_4B52F0 proc near
push    esi
push    edi
xor     esi, esi
mov     si, [eax+11Ch]
test    esi, ecx
jz      short loc_4B5363
mov     cx, [eax+10Ch]
test    cx, cx
jge     short loc_4B5316
mov     word ptr [eax+10Ch], 0
jmp     short loc_4B5335

loc_4B5316:
mov     esi, ecx
add     esi, edx
mov     [eax+10Ch], si
mov     edx, [eax+10Ah]
sar     edx, 10h
cmp     edx, ebx
jle     short loc_4B5335
mov     [eax+10Ch], bx

loc_4B5335:
mov     dx, [eax+10Ch]
mov     di, [eax+108h]
add     edi, edx
mov     [eax+108h], di
cmp     di, 200h
jle     loc_4B53D0
mov     word ptr [eax+108h], 200h
pop     edi
pop     esi
retn

loc_4B5363:
mov     cx, [eax+10Ch]
test    cx, cx
jle     short loc_4B537A
mov     word ptr [eax+10Ch], 0
jmp     short loc_4B53A8

loc_4B537A:
mov     esi, ecx
sub     esi, edx
mov     [eax+10Ch], si
mov     ecx, [eax+10Ah]
sar     ecx, 10h
mov     edx, ebx
neg     edx
cmp     ecx, edx
jge     short loc_4B53A8
mov     [eax+10Ch], bx
mov     edi, ebx
neg     edi
mov     [eax+10Ch], di

loc_4B53A8:
mov     dx, [eax+10Ch]
add     [eax+108h], dx
mov     edx, [eax+106h]
sar     edx, 10h
cmp     edx, 0FFFFFE00h
jge     short loc_4B53D0
mov     word ptr [eax+108h], 0FE00h

loc_4B53D0:
pop     edi
pop     esi
retn
sub_4B52F0 endp




sub_4B53D3 proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, edx
xor     edx, edx
xor     ecx, ecx
mov     cx, [eax+11Ch]
mov     [esp+14h+var_14], ecx
xor     edi, edi
mov     di, [eax+128h]
xor     ecx, ecx
mov     cx, [eax+12Ah]
or      edi, ecx
mov     ebp, [esp+14h+var_14]
test    edi, ebp
jz      short loc_4B5416
and     ebp, edi
cmp     edi, ebp
jz      short loc_4B5416
mov     edx, esi
call    sub_4B5502
mov     edx, eax
jmp     short loc_4B541F

loc_4B5416:
mov     word ptr [eax+0B4h], 0

loc_4B541F:
mov     eax, edx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4B53D3 endp




sub_4B5429 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     esi, eax
mov     [esp+18h+var_10], ecx
xor     edi, edi
movzx   ebp, word ptr [eax+11Ch]
xor     eax, eax
mov     ax, [esi+12Ah]
xor     ecx, ecx
mov     cx, [esi+12Eh]
or      eax, ecx
test    ebp, eax
jnz     short loc_4B545D
mov     ecx, 1
jmp     short loc_4B545F

loc_4B545D:
xor     ecx, ecx

loc_4B545F:
xor     eax, eax
mov     ax, [esi+128h]
mov     [esp+18h+var_18], eax
xor     eax, eax
mov     ax, [esi+12Ch]
mov     [esp+18h+var_14], eax
mov     eax, [esp+18h+var_18]
or      eax, [esp+18h+var_14]
test    ebp, eax
jnz     short loc_4B548A
mov     eax, 1
jmp     short loc_4B548C

loc_4B548A:
xor     eax, eax

loc_4B548C:
cmp     ecx, eax
jz      short loc_4B54DC
xor     eax, eax
mov     ax, [esi+12Ah]
xor     ecx, ecx
mov     cx, [esi+12Eh]
or      ecx, eax
mov     eax, esi
call    sub_4B5502
mov     edi, eax
cmp     [esp+18h+var_10], 0
jz      short loc_4B54F9
xor     eax, eax
mov     ax, [esi+12Ah]
xor     edx, edx
mov     dx, [esi+12Eh]
or      eax, edx
test    ebp, eax
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 0Dh
mov     eax, esi
call    sub_4B520D
jmp     short loc_4B54F9

loc_4B54DC:
cmp     [esp+18h+var_10], 0
jz      short loc_4B54F0
xor     ecx, eax
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4B520D

loc_4B54F0:
mov     word ptr [esi+0B4h], 0

loc_4B54F9:
mov     eax, edi
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
retn
sub_4B5429 endp




sub_4B5502 proc near
push    esi
push    edi
xor     esi, esi
mov     si, [eax+11Ch]
test    esi, ecx
jz      short loc_4B5558
mov     ecx, 1
mov     di, [eax+0B4h]
test    di, di
jge     short loc_4B5530

loc_4B5522:
mov     word ptr [eax+0B4h], 0
jmp     loc_4B55A7

loc_4B5530:
mov     esi, edi
add     esi, edx
mov     [eax+0B4h], si
mov     esi, [eax+0B2h]
sar     esi, 10h
cmp     esi, ebx
jle     short loc_4B554F
mov     [eax+0B4h], bx

loc_4B554F:
mov     [eax+0B6h], dx
jmp     short loc_4B55A7

loc_4B5558:
mov     ecx, 2
mov     si, [eax+0B4h]
test    si, si
jg      short loc_4B5522
mov     edi, esi
sub     edi, edx
mov     [eax+0B4h], di
mov     edi, [eax+0B2h]
sar     edi, 10h
mov     esi, ebx
neg     esi
cmp     edi, esi
jge     short loc_4B5595
mov     [eax+0B4h], bx
neg     ebx
mov     [eax+0B4h], bx

loc_4B5595:
mov     [eax+0B6h], dx
mov     esi, edx
neg     esi
mov     [eax+0B6h], si

loc_4B55A7:
mov     dx, [eax+0B4h]
add     [eax+56h], dx
and     byte ptr [eax+57h], 0Fh
mov     eax, ecx
pop     edi
pop     esi
retn
sub_4B5502 endp




sub_4B55BB proc near
cmp     ds:word_5F83D2, 0
jl      short loc_4B55D2
mov     ds:byte_5F88AD, 1
mov     eax, 1
retn

loc_4B55D2:
xor     eax, eax
retn
sub_4B55BB endp




sub_4B55D5 proc near
push    ecx
push    edx
mov     edx, eax
mov     ah, [eax+0BDh]
or      ah, 40h
mov     [edx+0BDh], ah
mov     byte ptr [edx+549h], 0FFh
test    byte ptr [edx], 1
jz      short loc_4B5635
cmp     byte ptr [edx+8], 1
jnz     short loc_4B562A
mov     cl, [edx+9]
test    cl, cl
jz      short loc_4B560F
cmp     cl, 0Eh
jnz     short loc_4B561A
cmp     ds:byte_77E807, 0
jz      short loc_4B561A

loc_4B560F:
mov     eax, edx
call    sub_4B61E1
test    eax, eax
jz      short loc_4B5635

loc_4B561A:
cmp     byte ptr [edx+9], 0Dh
jnz     short loc_4B562A
cmp     byte ptr [edx+0Ah], 2
jnz     short loc_4B562A
mov     byte ptr [edx+0Ah], 6

loc_4B562A:
cmp     byte ptr [edx+8], 3
jz      short loc_4B5635
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4B5635:
mov     word ptr [edx+0B4h], 0
mov     eax, 16h
call    sub_4D8E2B
mov     eax, 17h
call    sub_4D8E2B
mov     eax, 1
pop     edx
pop     ecx
retn
sub_4B55D5 endp




sub_4B565A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4EDDAA
mov     byte ptr [ecx+549h], 0
mov     byte ptr [ecx+111h], 0
mov     byte ptr [ecx+71h], 0
mov     byte ptr [ecx+73h], 0
mov     dword ptr [ecx+188h], 0
mov     dword ptr [ecx+18Ch], 0
mov     dword ptr [ecx+190h], 0
mov     dword ptr [ecx+194h], 0
mov     byte ptr [ecx+168h], 0
mov     byte ptr [ecx+169h], 0
test    byte ptr [ecx], 1
jz      short loc_4B56CF
mov     byte ptr [ecx], 3
mov     byte ptr [ecx+6], 3
mov     dl, [ecx+8]
cmp     dl, 3
jnz     short loc_4B56CF
mov     [ecx+9], dl
pop     edx
pop     ecx
pop     ebx
retn

loc_4B56CF:
mov     byte ptr [ecx+0BDh], 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4B565A endp




sub_4B56DA proc near
push    edx
mov     byte ptr [eax+174h], 0
and     byte ptr [eax+175h], 0FEh
mov     byte ptr [eax+177h], 0
mov     dl, [eax+0ACh]
mov     [eax+104h], dl
mov     dl, [eax+0A4h]
mov     [eax+100h], dl
pop     edx
retn
sub_4B56DA endp




sub_4B570A proc near
or      byte ptr [eax+175h], 1
retn
sub_4B570A endp

db 8Dh, 40h, 0
jpt_4B5750 dd offset def_4B5750 ; jump table for switch statement
dd offset def_4B5750
dd offset loc_4B5757
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset def_4B5750
dd offset loc_4B5757
dd offset def_4B5750
dd offset def_4B5750



sub_4B5741 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
and     edx, 0FFh
jmp     jpt_4B5750[edx*4] ; switch jump

loc_4B5757:             ; jumptable 004B5750 cases 2,8
mov     al, [eax+112h]
cmp     al, 1
jb      short loc_4B5769
jbe     short loc_4B5774
cmp     al, 3
jz      short loc_4B577B
jmp     short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10

loc_4B5769:
test    al, al
jnz     short def_4B5750 ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
mov     eax, 61h ; 'a'
pop     edx
retn

loc_4B5774:
mov     eax, 63h ; 'c'
pop     edx
retn

loc_4B577B:
mov     eax, 62h ; 'b'
pop     edx
retn

def_4B5750:             ; jumptable 004B5750 default case, cases 0,1,3-7,9,10
mov     eax, 60h ; '`'
pop     edx
retn
sub_4B5741 endp

jpt_4B57C4 dd offset def_4B57C4 ; jump table for switch statement
dd offset def_4B57C4
dd offset loc_4B57CB
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset def_4B57C4
dd offset loc_4B57CB
dd offset def_4B57C4
dd offset def_4B57C4



sub_4B57B5 proc near
push    edx
mov     dl, [eax+9]
cmp     dl, 0Ah         ; switch 11 cases
ja      short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
and     edx, 0FFh
jmp     jpt_4B57C4[edx*4] ; switch jump

loc_4B57CB:             ; jumptable 004B57C4 cases 2,8
mov     al, [eax+112h]
cmp     al, 1
jb      short loc_4B57DD
jbe     short loc_4B57E8
cmp     al, 3
jz      short loc_4B57EF
jmp     short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10

loc_4B57DD:
test    al, al
jnz     short def_4B57C4 ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
mov     eax, 41h ; 'A'
pop     edx
retn

loc_4B57E8:
mov     eax, 43h ; 'C'
pop     edx
retn

loc_4B57EF:
mov     eax, 42h ; 'B'
pop     edx
retn

def_4B57C4:             ; jumptable 004B57C4 default case, cases 0,1,3-7,9,10
mov     eax, 40h ; '@'
pop     edx
retn
sub_4B57B5 endp




sub_4B57FD proc near
push    ecx
push    esi
push    edi
mov     ecx, eax
mov     esi, edx
mov     byte ptr [edx], 7
mov     byte ptr [edx+2], 80h
mov     byte ptr [edx+3], 2
xor     edx, edx
mov     dl, [eax+0Ah]
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
lea     edi, [esi+48h]
lea     esi, [ecx+eax*8+4A8h]
movsd
movsd
pop     edi
pop     esi
pop     ecx
retn
sub_4B57FD endp




sub_4B582D proc near
mov     byte ptr [edx], 3
mov     byte ptr [edx+2], 83h
mov     byte ptr [edx+3], 0
cmp     bx, 1
jb      short loc_4B5847
jbe     short loc_4B5868
cmp     bx, 2
jz      short loc_4B588D
retn

loc_4B5847:
test    bx, bx
jnz     short locret_4B58B1
mov     bx, [eax+14h]
mov     [edx+1Ch], bx
mov     bx, [eax+16h]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+18h]
mov     [edx+20h], ax
retn

loc_4B5868:
mov     bx, [eax+518h]
mov     [edx+1Ch], bx
mov     bx, [eax+51Ah]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+51Ch]
mov     [edx+20h], ax
retn

loc_4B588D:
mov     bx, [eax+500h]
mov     [edx+1Ch], bx
mov     bx, [eax+502h]
add     ebx, 10h
mov     [edx+1Eh], bx
mov     ax, [eax+504h]
mov     [edx+20h], ax

locret_4B58B1:
retn
sub_4B582D endp




sub_4B58B2 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, edx
xor     edx, edx

