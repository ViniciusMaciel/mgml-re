loc_4EE3F1:
mov     eax, [esi+8]
mov     [esp+8Ch+var_5C], eax
mov     eax, [esi+10h]
mov     [esp+8Ch+var_58], eax
mov     eax, [esi]
mov     [esp+8Ch+var_54], eax
mov     eax, [esp+8Ch+var_58+2]
mov     [esp+8Ch+var_50], ax
lea     eax, [esp+8Ch+var_5C]
call    sub_4EFD0C
call    sub_4EFE75
mov     [esi+24h], esi
mov     dword ptr [esi+2Ch], 0
lea     eax, [esp+8Ch+var_44]
call    sub_4F0102
xor     eax, eax
mov     ax, ds:word_77EAB2
shl     eax, 2
mov     ecx, [esp+8Ch+var_44]
cmp     eax, ecx
jl      short loc_4EE47F
cmp     ecx, 0C0h
jl      short loc_4EE47F
mov     edx, [esp+8Ch+var_40]
lea     eax, [ecx+edx]
sar     eax, 4
shl     eax, 2
mov     edx, ds:dword_77E6FC
add     eax, edx
mov     edx, [eax]
mov     [esi], edx
lea     edx, [esi+24h]
mov     [eax], edx
lea     eax, [esi+14h]
call    sub_4F000C
lea     eax, [esi+1Ch]
call    sub_4F001A
mov     eax, esi
call    sub_4F049B

loc_4EE47F:
inc     edi
jmp     loc_4EE1D7

loc_4EE485:
add     esp, 74h
jmp     loc_4EB1F0
sub_4EE1A3 endp




sub_4EE48D proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 10h
mov     ecx, esi
mov     eax, [eax+edx*4+18h]
mov     edx, [eax]
mov     [esp+18h+var_18], edx
and     edx, 0FFh
shl     edx, 2
add     eax, edx
shl     ebx, 3
add     eax, 4
add     eax, ebx
mov     edx, [eax]
and     edx, 0FFFFFFh
mov     ebx, offset unk_6B87CC
add     ebx, edx
mov     [esp+18h+var_10], ebx
mov     edx, [eax+4]
mov     eax, edx
shr     eax, 18h
mov     [esp+18h+var_14], eax
and     edx, 0FFFFFFh
mov     eax, offset unk_6B87CC
add     eax, edx
mov     [esp+18h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
movsd
movsd
mov     eax, ecx
add     esp, 10h
pop     edi
pop     ecx
retn
sub_4EE48D endp




sub_4EE4F0 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 8
mov     ecx, esi
shl     edx, 3
add     edx, eax
mov     eax, [edx]
mov     [esp+10h+var_10], eax
mov     eax, [edx+4]
mov     [esp+10h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
mov     eax, ecx
add     esp, 8
pop     edi
pop     ecx
retn
sub_4EE4F0 endp

shl     edx, 4
mov     eax, [edx+eax]
retn



sub_4EE51D proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edi
sub     esp, 0Ch
mov     ecx, esi
shl     edx, 4
add     edx, eax
mov     eax, [edx+4]
mov     [esp+14h+var_14], eax
mov     eax, [edx+8]
mov     [esp+14h+var_10], eax
mov     eax, [edx+0Ch]
mov     [esp+14h+var_C], eax
mov     edi, esi
mov     esi, esp
movsd
movsd
movsd
mov     eax, ecx
add     esp, 0Ch
pop     edi
pop     ecx
retn
sub_4EE51D endp




sub_4EE54C proc near
shl     edx, 3
add     eax, edx
mov     edx, [ebx]
mov     [eax], edx
mov     edx, [ebx+4]
mov     [eax+4], edx
retn
sub_4EE54C endp

shl     edx, 4
add     eax, edx
mov     edx, [ebx]
mov     [eax], edx
retn
shl     edx, 4
add     eax, edx
mov     edx, [ebx]
mov     [eax+4], edx
mov     edx, [ebx+4]
mov     [eax+8], edx
mov     edx, [ebx+8]
mov     [eax+0Ch], edx
retn



sub_4EE57D proc near
push    ebx
push    ecx
push    edx
add     eax, 5F4h
xor     edx, edx

loc_4EE587:
mov     byte ptr [eax], 0
mov     byte ptr [eax+1], 0
mov     byte ptr [eax+2], 0
mov     byte ptr [eax+3], 0
mov     byte ptr [eax+4], 0
movsx   ebx, byte ptr [eax+1]
shl     ebx, 3
mov     ecx, ds:off_5513A0[edx*4]
mov     cx, [ecx+ebx+2]
mov     [eax+6], cx
inc     edx
add     eax, 8
cmp     edx, 10h
jl      short loc_4EE587
pop     edx
pop     ecx
pop     ebx
retn
sub_4EE57D endp




sub_4EE5BE proc near
push    ecx
push    edx
mov     edx, dword ptr ds:unk_5F84D3
sar     edx, 18h
mov     eax, edx
shl     eax, 3
add     eax, offset byte_5F8364
mov     ecx, [eax+5F2h]
sar     ecx, 18h
mov     edx, ds:off_5513A0[edx*4]
mov     dx, [edx+ecx*8+2]
mov     [eax+5FAh], dx
pop     edx
pop     ecx
retn
sub_4EE5BE endp




sub_4EE5F2 proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F1h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
movsx   eax, word ptr [ecx+eax]
pop     ecx
retn
sub_4EE5F2 endp




sub_4EE60F proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F2h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax]
sar     eax, 10h
pop     ecx
retn
sub_4EE60F endp




sub_4EE62E proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F3h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax+2]
sar     eax, 10h
pop     ecx
retn
sub_4EE62E endp




sub_4EE64E proc near
push    ecx
mov     ecx, edx
mov     ecx, [eax+ecx*8+5F4h]
sar     ecx, 18h
shl     ecx, 3
mov     eax, ds:off_5513A0[edx*4]
mov     eax, [ecx+eax+4]
sar     eax, 10h
pop     ecx
retn
sub_4EE64E endp




sub_4EE66E proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
test    byte ptr [eax+0D7h], 0FFh
jz      short loc_4EE685
mov     eax, 7FFFh
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE685:
mov     eax, ecx
call    sub_42CE47
mov     ebx, eax
test    eax, eax
jz      short loc_4EE6BE
jle     short loc_4EE6B5
mov     esi, eax
and     esi, 0FFFFh
cmp     esi, 8000h
jge     short loc_4EE6B5
test    eax, 0F0000h
jz      short loc_4EE6B5
xor     eax, eax
mov     ax, bx
call    sub_4EE6EA

loc_4EE6B5:
mov     eax, ecx
call    sub_42DE56
mov     eax, ebx

loc_4EE6BE:
pop     esi
pop     ecx
pop     ebx
retn
sub_4EE66E endp




sub_4EE6C2 proc near
push    ecx
test    eax, eax
jle     short loc_4EE6E8
mov     ecx, eax
and     ecx, 0FFFFh
cmp     ecx, 8000h
jge     short loc_4EE6E8
test    eax, 0F0000h
jz      short loc_4EE6E8
and     eax, 0FFFFh
call    sub_4EE6EA

loc_4EE6E8:
pop     ecx
retn
sub_4EE6C2 endp




sub_4EE6EA proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, edx
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
xor     esi, esi
mov     si, ds:word_6E40B2[eax]
mov     ebx, esi
and     ebx, 0FFFh
mov     ecx, esi
shr     ecx, 0Ch
shr     edi, cl
sub     ebx, edi
test    ebx, ebx
jg      short loc_4EE741
mov     eax, ds:dword_6E40B4[eax]
test    byte ptr [eax+3], 80h
jz      short loc_4EE735
mov     eax, edx
call    sub_4EE755
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE735:
mov     eax, edx
call    sub_4EEA6B
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4EE741:
and     esi, 0F000h
or      ebx, esi
mov     ds:word_6E40B2[eax], bx
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EE6EA endp




sub_4EE755 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, eax
xor     ebx, ebx
mov     bx, ax
mov     ecx, ebx
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
xor     ecx, ebx
mov     cx, ds:word_6E40B2[eax*4]
sar     ecx, 0Ch
xor     esi, esi
mov     ds:word_6E40B2[eax*4], si
test    cx, cx
ja      short loc_4EE78E
mov     edx, 4
xor     eax, eax
jmp     short loc_4EE79A

loc_4EE78E:
xor     ebx, ebx
mov     bx, dx
mov     edx, 4
mov     eax, edx

loc_4EE79A:
call    sub_4EE7BD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4EE755 endp




sub_4EE7A4 proc near
push    edx
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
xor     edx, edx
mov     ds:word_6E40B2[eax*4], dx
pop     edx
retn
sub_4EE7A4 endp




sub_4EE7BD proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= word ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 28h
push    eax
push    edx
xor     edx, edx
mov     dx, bx
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ebp, ds:dword_6E40B4[eax*4]
lea     edi, [esp+40h+var_38]
lea     esi, [ebp+0Ch]
movsd
movsd
mov     ebp, [ebp+14h]
mov     edx, ebp
and     edx, 0FFFFh
mov     [esp+40h+var_14], edx
shr     ebp, 11h
lea     edi, [esp+40h+var_30]
lea     esi, (dword_6E40AA+2)[eax*4]
movsd
movsd
mov     eax, [esp+40h+var_38]
add     word ptr [esp+40h+var_30], ax
mov     edx, [esp+40h+var_38]
sar     edx, 10h
sar     edx, 1
mov     eax, [esp+40h+var_30]
sar     eax, 10h
add     eax, edx
mov     word ptr [esp+40h+var_30+2], ax
mov     eax, [esp+40h+var_34]
add     [esp+40h+var_2C], ax
lea     ecx, [esp+40h+var_30]
mov     ebx, 1388h
mov     edx, 3E8h
mov     eax, 1Eh
call    sub_42A70B
mov     eax, [esp+40h+var_3C]
dec     eax
mov     cl, al
mov     edx, 1000h
sar     edx, cl
mov     [esp+40h+var_1C], edx
mov     eax, 1
shl     eax, cl
mov     [esp+40h+var_18], eax
mov     eax, [esp+40h+var_40]
dec     eax
mov     cl, al
mov     edx, 1000h
sar     edx, cl
mov     [esp+40h+var_20], edx
mov     eax, 1
shl     eax, cl
mov     [esp+40h+var_24], eax
cmp     [esp+40h+var_3C], 0
jz      loc_4EE93A
xor     ebx, ebx

loc_4EE888:
cmp     ebx, [esp+40h+var_18]
jnb     loc_4EE93A
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4EE934
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 2
call    rand_
mov     esi, eax
mov     ecx, [esp+40h+var_1C]
imul    ecx, ebx
and     eax, 1Fh
sub     ecx, eax
cmp     [esp+40h+var_18], 1
jnz     short loc_4EE8C8
xor     ebp, ebp

loc_4EE8C8:
mov     eax, ecx
call    sub_4EF003
imul    eax, ebp
shr     eax, 0Ch
mov     [esp+40h+var_28], eax
mov     eax, [esp+40h+var_34+2]
sar     eax, 10h
add     eax, [esp+40h+var_28]
mov     [edx+48h], ax
mov     eax, esi
shr     eax, 7
and     eax, 0FFh
and     esi, 0FFh
add     eax, esi
mov     esi, [esp+40h+var_14]
shr     esi, 1
sub     eax, 100h
imul    esi, eax
shr     esi, 8
mov     eax, [esp+40h+var_30]
sar     eax, 10h
sub     eax, esi
mov     [edx+4Ah], ax
mov     eax, ecx
call    sub_4EF008
mov     ecx, eax
imul    ecx, ebp
shr     ecx, 0Ch
mov     eax, [esp+40h+var_30+2]
sar     eax, 10h
add     eax, ecx
mov     [edx+4Ch], ax

loc_4EE934:
inc     ebx
jmp     loc_4EE888

loc_4EE93A:
cmp     [esp+40h+var_40], 0
jz      loc_4EE9F0
xor     ebx, ebx

loc_4EE946:
cmp     ebx, [esp+40h+var_24]
jnb     loc_4EE9F0
call    sub_4DE13B
mov     edx, eax
test    eax, eax
jz      loc_4EE9EA
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 83h
mov     byte ptr [eax+3], 2
call    rand_
mov     esi, eax
mov     ecx, [esp+40h+var_20]
imul    ecx, ebx
and     eax, 1Fh
sub     ecx, eax
cmp     [esp+40h+var_24], 1
jnz     short loc_4EE986
xor     ebp, ebp

loc_4EE986:
mov     eax, ecx
call    sub_4EF003
imul    eax, ebp
shr     eax, 0Ch
mov     edi, [esp+40h+var_34+2]
sar     edi, 10h
add     eax, edi
mov     [edx+1Ch], ax
mov     eax, esi
shr     eax, 7
and     eax, 0FFh
and     esi, 0FFh
add     eax, esi
mov     esi, [esp+40h+var_14]
shr     esi, 1
sub     eax, 100h
imul    eax, esi
shr     eax, 8
mov     esi, [esp+40h+var_30]
sar     esi, 10h
sub     esi, eax
mov     [edx+1Eh], si
mov     eax, ecx
call    sub_4EF008
imul    eax, ebp
shr     eax, 0Ch
mov     ecx, [esp+40h+var_30+2]
sar     ecx, 10h
add     eax, ecx
mov     [edx+20h], ax

loc_4EE9EA:
inc     ebx
jmp     loc_4EE946

loc_4EE9F0:
add     esp, 30h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EE7BD endp




sub_4EE9F8 proc near
push    ecx
push    edx
mov     edx, eax
test    eax, eax
jle     short loc_4EEA37
cmp     ax, 8000h
jnb     short loc_4EEA37
xor     ecx, ecx
mov     cx, ax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ax, ds:word_6E40B2[eax*4]
and     ah, 0Fh
test    ax, ax
jnz     short loc_4EEA27
xor     eax, eax
pop     edx
pop     ecx
retn

loc_4EEA27:
test    edx, 0F0000h
jz      short loc_4EEA37
and     eax, 0FFFFh
pop     edx
pop     ecx
retn

loc_4EEA37:
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
retn
sub_4EE9F8 endp




sub_4EEA3F proc near
push    edx
cmp     ax, 8000h
jnb     short loc_4EEA64
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ax, ds:word_6E40B2[eax*4]
and     ah, 0Fh
and     eax, 0FFFFh
pop     edx
retn

loc_4EEA64:
mov     eax, 0FFFFFFFFh
sub_4EEA3F endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EECAA

loc_4EEA69:
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_4EECAA



sub_4EEA6B proc near
push    ecx
push    edx
cmp     ax, 800h
jnb     short loc_4EEADC
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ecx, ds:dword_6E40AE[eax*4]
sar     ecx, 10h
add     ecx, 8000h
sar     ecx, 9
xor     edx, edx
mov     dl, ds:byte_77EAC3
sub     ecx, edx
mov     edx, ecx
shl     edx, 8
mov     ecx, ds:dword_6E40AA[eax*4]
sar     ecx, 10h
add     ecx, 8000h
sar     ecx, 9
xor     eax, eax
mov     al, ds:byte_77EAC5
sub     ecx, eax
lea     eax, [ecx+edx]
mov     edx, eax
xor     eax, eax
mov     ax, ds:word_5513E0
mov     ds:word_560ADC[eax*2], dx
mov     edx, eax
inc     edx
mov     ds:word_5513E0, dx

loc_4EEADC:
pop     edx
pop     ecx
retn
sub_4EEA6B endp




sub_4EEADF proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     edx, eax
xor     dh, ah
and     edx, 0FFFFh
mov     [esp+24h+var_20], edx
movzx   ebp, ax
sar     ebp, 8
lea     eax, [edx+edx]
mov     edx, ds:dword_77E700
add     edx, eax
xor     eax, eax
mov     ax, ds:word_77EAAE
imul    eax, ebp
mov     ax, [edx+eax*2]
mov     [esp+24h+var_1C], eax
xor     edx, edx
mov     dx, ax
mov     eax, edx
shl     eax, 2
sub     eax, edx
test    ds:word_6E40B2[eax*4], 0FFFh
jz      loc_4EEBDA
xor     eax, eax
mov     edi, ds:dword_77E700
jmp     short loc_4EEB4A

loc_4EEB40:
inc     eax
cmp     eax, 8
jnb     loc_4EEBC4

loc_4EEB4A:
mov     esi, ds:(off_5513DC+3)[eax]
sar     esi, 18h
add     esi, [esp+24h+var_20]
mov     ecx, ds:dword_5513E7[eax]
sar     ecx, 18h
add     ecx, ebp
xor     edx, edx
mov     dx, ds:word_77EAAE
cmp     esi, edx
jnb     short loc_4EEB40
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     ecx, ebx
jnb     short loc_4EEB40
lea     ebx, [esi+esi]
add     ebx, edi
imul    edx, ecx
movsx   edx, word ptr [ebx+edx*2]
cmp     edx, 800h
jge     short loc_4EEB40
test    edx, edx
jle     short loc_4EEB40
xor     ebx, ebx
mov     bx, word ptr [esp+24h+var_1C]
cmp     edx, ebx
jnz     short loc_4EEB40
shl     ecx, 8
add     ecx, esi
xor     edx, ebx
mov     dx, ds:word_5513E0
mov     ds:word_560ADC[edx*2], cx
mov     ebx, edx
inc     ebx
mov     ds:word_5513E0, bx
jmp     loc_4EEB40

loc_4EEBC4:
xor     eax, eax
mov     ax, word ptr [esp+24h+var_1C]
call    sub_4EE755

loc_4EEBD0:
add     esp, 0Ch
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4EEBDA:
xor     eax, eax
dec     ds:word_5513E0
jmp     short loc_4EEBEB

loc_4EEBE5:
inc     eax
cmp     eax, 4
jnb     short loc_4EEBD0

loc_4EEBEB:
mov     esi, ds:dword_5513EF[eax]
sar     esi, 18h
add     esi, [esp+24h+var_20]
mov     ecx, ds:dword_5513F3[eax]
sar     ecx, 18h
add     ecx, ebp
xor     edx, edx
mov     dx, ds:word_77EAAE
cmp     esi, edx
jnb     short loc_4EEBE5
xor     ebx, ebx
mov     bx, ds:word_77EAB0
cmp     ecx, ebx
jnb     short loc_4EEBE5
lea     ebx, [esi+esi]
add     ebx, ds:dword_77E700
imul    edx, ecx
movsx   edx, word ptr [ebx+edx*2]
cmp     edx, 800h
jge     short loc_4EEBE5
test    edx, edx
jle     short loc_4EEBE5
xor     edi, edi
mov     di, word ptr [esp+24h+var_1C]
cmp     edx, edi
jz      short loc_4EEBE5
mov     ebx, edi
shl     ebx, 2
sub     ebx, edi
mov     ebx, ds:dword_6E40B4[ebx*4]
mov     ebx, [ebx]
shr     ebx, 10h
mov     [esp+24h+var_24], ebx
mov     ebx, edx
shl     edx, 2
sub     edx, ebx
shl     edx, 2
mov     ebx, ds:dword_6E40B4[edx]
mov     ebx, [ebx]
shr     ebx, 10h
cmp     ebx, [esp+24h+var_24]
jnz     loc_4EEBE5
test    ds:word_6E40B2[edx], 0FFFh
jz      loc_4EEBE5
shl     ecx, 8
add     ecx, esi
xor     edx, edx
mov     dx, ds:word_5513E0
mov     ds:word_560ADC[edx*2], cx
inc     edx
mov     ds:word_5513E0, dx
jmp     loc_4EEBE5
sub_4EEADF endp




sub_4EECAA proc near

; FUNCTION CHUNK AT 004EEA69 SIZE 00000002 BYTES

push    edx

loc_4EECAB:
mov     dx, ds:word_5513E0
test    dx, dx
jz      loc_4EEA69
xor     eax, eax
mov     ax, dx
mov     ax, ds:word_560ADA[eax*2]
and     eax, 0FFFFh
call    sub_4EEADF
jmp     short loc_4EECAB
sub_4EECAA endp




sub_4EECD4 proc near
push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 2
sub_4EECD4 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EECE5
;   ADDITIONAL PARENT FUNCTION sub_4EECEF

loc_4EECDC:
mov     edx, ecx
call    memcpy_
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4EECE5



sub_4EECE5 proc near

; FUNCTION CHUNK AT 004EECDC SIZE 00000009 BYTES

push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 4
jmp     short loc_4EECDC
sub_4EECE5 endp




sub_4EECEF proc near

; FUNCTION CHUNK AT 004EECDC SIZE 00000009 BYTES

push    ecx
mov     ecx, eax
mov     eax, edx
shl     ebx, 5
jmp     short loc_4EECDC
sub_4EECEF endp




sub_4EECF9 proc near
push    ebx
sub     edx, eax
lea     ebx, [edx+4]
xor     edx, edx
call    memset_
pop     ebx
retn
sub_4EECF9 endp




sub_4EED08 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ds:dword_551410, esp
xor     edx, edx

loc_4EED15:
mov     ds:dword_55140C, edx
test    word ptr ds:dword_5513FC[edx], 0FFFFh
jz      short loc_4EED5E
cmp     word ptr ds:dword_5513FC[edx], 1
jnz     short loc_4EED4B
dec     word ptr ds:(dword_5513FC+2)[edx]
test    word ptr ds:(dword_5513FC+2)[edx], 0FFFFh
jnz     short loc_4EED5E
mov     word ptr ds:dword_5513FC[edx], 2

loc_4EED4B:
mov     esp, ds:dword_551400[edx]
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4EED58:
mov     esp, ds:dword_551410

loc_4EED5E:
add     edx, 8
cmp     edx, 10h
jb      short loc_4EED15
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4EED08 endp




sub_4EED6C proc near
mov     eax, esp
sub     eax, 8000h
mov     ds:dword_551414, eax
retn
sub_4EED6C endp




sub_4EED79 proc near
push    ebx
mov     ebx, eax
shl     ebx, 3
mov     word ptr ds:dword_5513FC[ebx], 2
imul    eax, 4000h
sub     eax, ds:dword_551414
neg     eax
sub     eax, 1Ch
mov     ds:dword_551400[ebx], eax
mov     [eax+18h], edx
pop     ebx
retn
sub_4EED79 endp




sub_4EEDA4 proc near
push    edx
mov     edx, ds:dword_55140C
mov     word ptr ds:dword_5513FC[edx], 1
mov     word ptr ds:(dword_5513FC+2)[edx], ax
pop     eax
push    ebx
push    ecx
push    eax
push    esi
push    edi
push    ebp
mov     ds:dword_551400[edx], esp
jmp     short loc_4EED58
sub_4EEDA4 endp




sub_4EEDCA proc near
mov     edx, ds:dword_55140C
mov     word ptr ds:dword_5513FC[edx], 2
mov     ebx, edx
shr     ebx, 3
imul    ebx, 4000h
sub     ebx, ds:dword_551414
neg     ebx
sub     ebx, 1Ch
mov     ds:dword_551400[edx], ebx
mov     [ebx+18h], eax
jmp     loc_4EED58
sub_4EEDCA endp




sub_4EEDFD proc near
mov     edx, ds:dword_55140C
mov     ds:dword_5513FC[edx], 0
mov     ds:dword_551400[edx], 0
jmp     loc_4EED58
sub_4EEDFD endp




sub_4EEE1C proc near
push    ecx
push    esi
push    edi
mov     ecx, 40h ; '@'
mov     esi, eax
mov     edi, edx

loc_4EEE28:
mov     eax, [esi]
mov     edx, [edi]
and     edx, eax
xor     edx, 0FFFFFFFFh
and     [edi], edx
add     esi, 4
add     edi, 4
loop    loc_4EEE28
pop     edi
pop     esi
pop     ecx
retn
sub_4EEE1C endp

; [0000000A BYTES: COLLAPSED FUNCTION initrandnext_]
; [00000024 BYTES: COLLAPSED FUNCTION rand_]

srand_:
push    edx
mov     edx, eax
call    initrandnext_
test    eax, eax
jz      short loc_4EEE7B
mov     [eax], edx

loc_4EEE7B:
pop     edx
retn



sub_4EEE7D proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ecx
push    edx
sub     esp, 8
mov     edx, ds:dword_77EBE0
cmp     eax, edx
jge     short loc_4EEE90
xor     eax, eax
jmp     short loc_4EEECA

loc_4EEE90:
mov     ecx, ds:dword_77EBD4
cmp     eax, ecx
jle     short loc_4EEEA1
mov     eax, 1000h
jmp     short loc_4EEECA

loc_4EEEA1:
sub     eax, edx
mov     [esp+10h+var_C], eax
fild    [esp+10h+var_C]
mov     eax, ecx
sub     eax, edx
mov     [esp+10h+var_C], eax
fild    [esp+10h+var_C]
fdivp   st(1), st
fmul    ds:flt_50A4E8
call    __CHP
fistp   [esp+10h+var_10]
mov     eax, [esp+10h+var_10]

loc_4EEECA:
add     esp, 8
pop     edx
pop     ecx
retn
sub_4EEE7D endp




sub_4EEED0 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8

push    ecx
sub     esp, 0Ch
mov     ecx, eax
fld     ds:flt_77EB30
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jb      short loc_4EEF0E
fld     ds:flt_77EB28
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     ds:flt_77EB2C
jmp     loc_4EEFA6

loc_4EEF0E:
fldz
fcomp   ds:flt_77EB30
fnstsw  ax
sahf
jb      short loc_4EEF5E
fld     ds:flt_77EB28
fmul    ds:dword_77EBDC
fdiv    ds:dword_77EBC0
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     ds:flt_77EB2C
fmul    ds:dword_77EBDC
fdiv    ds:dword_77EBC0
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx]
mov     dword ptr [ebx], 0
add     esp, 0Ch
pop     ecx
retn

loc_4EEF5E:
fld     ds:flt_77EB30
fdiv    ds:dword_77EBC0
fstp    [esp+10h+var_C]
fld     ds:flt_77EB28
fmul    [esp+10h+var_C]
fstp    [esp+10h+var_8]
fld     ds:flt_77EB2C
fmul    [esp+10h+var_C]
fstp    [esp+10h+var_10]
fld     [esp+10h+var_8]
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [ecx]
fld     [esp+10h+var_10]

loc_4EEFA6:
fmul    ds:dword_77EBDC
fdiv    ds:flt_77EB30
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx]
fld     ds:flt_77EB30
call    __CHP
fistp   dword ptr [ebx]
add     esp, 0Ch
pop     ecx
retn
sub_4EEED0 endp

; START OF FUNCTION CHUNK FOR sub_4EF008

loc_4EEFCE:
mov     edx, 1

loc_4EEFD3:
and     eax, 7FFh
cmp     eax, 400h
jge     short loc_4EEFE9
mov     ax, ds:word_55143C[eax*2]
jmp     short loc_4EEFF8

loc_4EEFE9:
mov     ecx, 800h
sub     ecx, eax
mov     ax, ds:word_55143C[ecx*2]

loc_4EEFF8:
and     eax, 0FFFFh
imul    eax, edx
pop     edx
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_4EF008



sub_4EF003 proc near
add     eax, 400h
sub_4EF003 endp




sub_4EF008 proc near

; FUNCTION CHUNK AT 004EEFCE SIZE 00000035 BYTES

push    ecx
push    edx
test    ah, 8
jz      short loc_4EEFCE
mov     edx, 0FFFFFFFFh
jmp     short loc_4EEFD3
sub_4EF008 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF016 proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fmul    ds:dbl_50A4F0
call    IF@ATAN
fmul    ds:dbl_50A4F8
fdiv    ds:dbl_50A500

loc_4EF03C:
call    __CHP
fistp   [esp+4+var_4]
mov     eax, [esp+4+var_4]
mov     esp, ebp
pop     ebp
retn
sub_4EF016 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF04B proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
mov     [esp+4+var_4], edx
fild    [esp+4+var_4]
fxch    st(1)
call    IF@ATAN2
fmul    ds:dbl_50A508
fdiv    ds:dbl_50A510
jmp     short loc_4EF03C
sub_4EF04B endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF075 proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 4
and     esp, 0FFFFFFF8h
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
call    IF@SQRT
jmp     short loc_4EF03C
sub_4EF075 endp




sub_4EF08B proc near
push    ebx
push    esi
mov     ds:dword_77EBDC, 447A0000h
mov     ds:dword_77EBC0, 43FA0000h
mov     ebx, 3333h
mov     ds:dword_77EBC4, ebx
mov     esi, 10000h
mov     ds:dword_77EBD8, esi
mov     ds:dword_77EBE0, ebx
mov     ds:dword_77EBD4, esi
pop     esi
pop     ebx
retn
sub_4EF08B endp




sub_4EF0C6 proc near
mov     ds:dword_77EBCC, eax
mov     ds:dword_77EBD0, edx
retn
sub_4EF0C6 endp




sub_4EF0D2 proc near

var_4= dword ptr -4

sub     esp, 4
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fst     ds:dword_77EBDC
fmul    ds:flt_50A518
fstp    ds:dword_77EBC0
fild    ds:dword_77EBC4
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A51C
call    __CHP
fistp   ds:dword_77EBE0
fild    ds:dword_77EBD8
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A51C
call    __CHP
fistp   ds:dword_77EBD4
add     esp, 4
retn
sub_4EF0D2 endp




sub_4EF12B proc near

var_4= dword ptr -4

sub     esp, 4
mov     ds:dword_77EBC4, eax
mov     [esp+4+var_4], eax
fild    [esp+4+var_4]
fmul    ds:dword_77EBDC
fdiv    ds:flt_50A520
call    __CHP
fistp   ds:dword_77EBE0
add     esp, 4
retn
sub_4EF12B endp




sub_4EF154 proc near
mov     ds:byte_77EBB0, al
mov     ds:byte_77EBB1, dl
mov     ds:byte_77EBB2, bl
retn
sub_4EF154 endp




sub_4EF166 proc near
shl     eax, 4
mov     word ptr ds:dword_77EB66+2, ax
shl     edx, 4
mov     word ptr ds:dword_77EB6A, dx
shl     ebx, 4
mov     word ptr ds:dword_77EB6A+2, bx
retn
sub_4EF166 endp




sub_4EF184 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
call    memcpy_
lea     eax, [ecx+24h]
mov     ebx, 0Ch
xor     edx, edx
call    memset_
pop     edx
pop     ecx
pop     ebx
retn
sub_4EF184 endp




sub_4EF1AB proc near
push    ebx
push    edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
jmp     loc_4EFB52
sub_4EF1AB endp




sub_4EF1BC proc near
mov     dword ptr [eax], 3E000000h
mov     dword ptr [eax+4], 0
mov     dword ptr [eax+8], 0
mov     dword ptr [eax+0Ch], 0
mov     dword ptr [eax+10h], 3E000000h
mov     dword ptr [eax+14h], 0
mov     dword ptr [eax+18h], 0
mov     dword ptr [eax+1Ch], 0
mov     dword ptr [eax+20h], 3E000000h
retn
sub_4EF1BC endp




sub_4EF1FB proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 0Ch
fild    word ptr [edx]
fstp    [esp+0Ch+var_C]
fild    word ptr [edx+2]
fstp    [esp+0Ch+var_8]
fild    word ptr [edx+4]

loc_4EF20D:
fstp    [esp+0Ch+var_4]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+8]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+0Ch]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+14h]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+18h]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+20h]
faddp   st(1), st
call    __CHP
fistp   dword ptr [ebx+8]

loc_4EF26F:
mov     eax, ebx
add     esp, 0Ch
retn
sub_4EF1FB endp




sub_4EF275 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 0Ch
fild    word ptr [edx]
fstp    [esp+0Ch+var_C]
fild    word ptr [edx+2]
fstp    [esp+0Ch+var_8]
fild    word ptr [edx+4]
fstp    [esp+0Ch+var_4]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+8]
faddp   st(1), st
fstp    dword ptr [ebx]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+0Ch]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+14h]
faddp   st(1), st
fstp    dword ptr [ebx+4]
fld     [esp+0Ch+var_C]
fmul    dword ptr [eax+18h]
fld     [esp+0Ch+var_8]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+0Ch+var_4]
fmul    dword ptr [eax+20h]
faddp   st(1), st
fstp    dword ptr [ebx+8]
jmp     short loc_4EF26F
sub_4EF275 endp




sub_4EF2DC proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 10h
fild    word ptr [edx]
fstp    [esp+10h+var_10]
fild    word ptr [edx+2]
fstp    [esp+10h+var_C]
fild    word ptr [edx+4]
fstp    [esp+10h+var_8]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+4]
fld     [esp+10h+var_10]
fmul    dword ptr [eax]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+8]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     edx, [esp+10h+var_4]
mov     [ebx], dx
fld     [esp+10h+var_10]
fmul    dword ptr [eax+0Ch]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+10h]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+14h]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     edx, [esp+10h+var_4]
mov     [ebx+2], dx
fld     [esp+10h+var_10]
fmul    dword ptr [eax+18h]
fld     [esp+10h+var_C]
fmul    dword ptr [eax+1Ch]
faddp   st(1), st
fld     [esp+10h+var_8]
fmul    dword ptr [eax+20h]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_4]
mov     eax, [esp+10h+var_4]
mov     [ebx+4], ax
mov     eax, ebx
add     esp, 10h
retn
sub_4EF2DC endp




sub_4EF371 proc near

var_C= dword ptr -0Ch
var_8= dword ptr -8

sub     esp, 0Ch
fild    dword ptr [edx]
fstp    [esp+0Ch+var_C]
fild    dword ptr [edx+4]
fstp    [esp+0Ch+var_8]
fild    dword ptr [edx+8]
jmp     loc_4EF20D
sub_4EF371 endp




sub_4EF388 proc near

var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
sub     esp, 30h
mov     ecx, ebx
fld     dword ptr [eax+4]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_34]
fld     dword ptr [eax+4]
fmul    dword ptr [edx+10h]
fld     dword ptr [eax]
fmul    dword ptr [edx+4]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_30]
fld     dword ptr [eax+4]
fmul    dword ptr [edx+14h]
fld     dword ptr [eax]
fmul    dword ptr [edx+8]
faddp   st(1), st
fld     dword ptr [eax+8]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_2C]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_28]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx+4]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+10h]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_24]
fld     dword ptr [eax+0Ch]
fmul    dword ptr [edx+8]
fld     dword ptr [eax+10h]
fmul    dword ptr [edx+14h]
faddp   st(1), st
fld     dword ptr [eax+14h]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_20]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+0Ch]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+18h]
faddp   st(1), st
fstp    [esp+34h+var_1C]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx+4]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+10h]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+1Ch]
faddp   st(1), st
fstp    [esp+34h+var_18]
fld     dword ptr [eax+18h]
fmul    dword ptr [edx+8]
fld     dword ptr [eax+1Ch]
fmul    dword ptr [edx+14h]
faddp   st(1), st
fld     dword ptr [eax+20h]
fmul    dword ptr [edx+20h]
faddp   st(1), st
fstp    [esp+34h+var_14]
mov     ebx, 24h ; '$'
mov     edx, esp
mov     eax, ecx
call    memcpy_
mov     eax, ecx
add     esp, 30h
pop     ecx
retn
sub_4EF388 endp




sub_4EF486 proc near

var_44= dword ptr -44h
var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+44h+var_C], eax
fild    [esp+44h+var_C]
fmul    ds:dbl_50A528
fstp    [esp+44h+var_14]
mov     eax, ebx
call    sub_4EF008
mov     [esp+44h+var_C], eax
fild    [esp+44h+var_C]
fmul    ds:dbl_50A528
fstp    [esp+44h+var_10]
mov     [esp+44h+var_44], 3F800000h
xor     ebx, ebx
mov     [esp+44h+var_40], ebx
mov     [esp+44h+var_3C], ebx
mov     [esp+44h+var_38], ebx
mov     eax, [esp+44h+var_14]
mov     [esp+44h+var_34], eax
fld     [esp+44h+var_10]
fchs
fstp    [esp+44h+var_30]
mov     [esp+44h+var_2C], ebx
mov     eax, [esp+44h+var_10]
mov     [esp+44h+var_28], eax

loc_4EF4F2:
mov     eax, [esp+44h+var_14]
mov     [esp+44h+var_24], eax

loc_4EF4FA:
mov     ebx, ecx
mov     edx, ecx
mov     eax, esp
call    sub_4EF388
mov     eax, ecx
add     esp, 3Ch
pop     ecx
pop     ebx
retn
sub_4EF486 endp




; int __cdecl sub_4EF50D(int, int, int, int, int, float, int, int, int, int, int, float, float, int)
sub_4EF50D proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch
arg_2C= dword ptr  30h
arg_30= dword ptr  34h
arg_34= dword ptr  38h

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A530
fstp    [esp+arg_2C]
mov     eax, ebx
call    sub_4EF008
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A530
fstp    [esp+arg_30]
mov     eax, [esp+arg_2C]
mov     [esp+0], eax
xor     edx, edx
mov     [esp+arg_0], edx
mov     eax, [esp+arg_30]
mov     [esp+arg_4], eax
mov     [esp+arg_8], edx
mov     [esp+arg_C], 3F800000h
mov     [esp+arg_10], edx
fld     [esp+arg_30]
fchs
fstp    [esp+arg_14]
mov     [esp+arg_18], edx
jmp     loc_4EF4F2
sub_4EF50D endp




; int __cdecl sub_4EF57E(float, int, int, int, int, int, int, int, int, int, int, float, float, int)
sub_4EF57E proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= dword ptr  10h
arg_10= dword ptr  14h
arg_14= dword ptr  18h
arg_18= dword ptr  1Ch
arg_1C= dword ptr  20h
arg_2C= dword ptr  30h
arg_30= dword ptr  34h
arg_34= dword ptr  38h

push    ebx
push    ecx
sub     esp, 3Ch
mov     ebx, eax
mov     ecx, edx
call    sub_4EF003
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A538
fstp    [esp+arg_2C]
mov     eax, ebx
call    sub_4EF008
mov     [esp+arg_34], eax
fild    [esp+arg_34]
fmul    ds:dbl_50A538
fstp    [esp+arg_30]
mov     eax, [esp+arg_2C]
mov     [esp+0], eax
fld     [esp+arg_30]
fchs
fstp    [esp+arg_0]
xor     edx, edx
mov     [esp+arg_4], edx
mov     eax, [esp+arg_30]
mov     [esp+arg_8], eax
mov     eax, [esp+arg_2C]
mov     [esp+arg_C], eax
mov     [esp+arg_10], edx
mov     [esp+arg_14], edx
mov     [esp+arg_18], edx
mov     [esp+arg_1C], 3F800000h
jmp     loc_4EF4FA
sub_4EF57E endp




; int __thiscall sub_4EF5F7(int)
sub_4EF5F7 proc near
push    ebx             ; int
push    ecx             ; int
push    esi             ; int
mov     esi, eax
mov     ecx, edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
mov     eax, ecx
call    memcpy_
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF57E
mov     eax, [esi]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
movsx   eax, word ptr [esi]
mov     edx, ecx
call    sub_4EF486
sub_4EF5F7 endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_4EF638

loc_4EF632:
mov     eax, ecx
pop     esi
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_4EF638



; int __thiscall sub_4EF638(int)
sub_4EF638 proc near

; FUNCTION CHUNK AT 004EF632 SIZE 00000006 BYTES

push    ebx             ; int
push    ecx             ; int
push    esi             ; int
mov     esi, eax
mov     ecx, edx
mov     ebx, 24h ; '$'
mov     edx, offset unk_551418
mov     eax, ecx
call    memcpy_
mov     eax, [esi+2]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF57E
movsx   eax, word ptr [esi]
mov     edx, ecx
call    sub_4EF486
mov     eax, [esi]
sar     eax, 10h
mov     edx, ecx
call    sub_4EF50D
jmp     short loc_4EF632
sub_4EF638 endp




sub_4EF675 proc near
push    ecx
mov     ecx, [edx]
mov     [eax+24h], ecx
mov     ecx, [edx+4]
mov     [eax+28h], ecx
mov     edx, [edx+8]
mov     [eax+2Ch], edx
pop     ecx
retn
sub_4EF675 endp




sub_4EF689 proc near
fild    dword ptr [edx]
fmul    dword ptr [eax]
fmul    ds:dbl_50A540
fstp    dword ptr [eax]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+4]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+4]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+8]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+8]
fild    dword ptr [edx]
fmul    dword ptr [eax+0Ch]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+0Ch]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+10h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+10h]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+14h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+14h]
fild    dword ptr [edx]
fmul    dword ptr [eax+18h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+18h]
fild    dword ptr [edx+4]
fmul    dword ptr [eax+1Ch]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+1Ch]
fild    dword ptr [edx+8]
fmul    dword ptr [eax+20h]
fmul    ds:dbl_50A540
fstp    dword ptr [eax+20h]
retn
sub_4EF689 endp




sub_4EF70C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     eax, edx
mov     ebx, [ecx]
mov     [edx], ebx
mov     ebx, [ecx+0Ch]
mov     [edx+4], ebx
mov     ebx, [ecx+18h]
mov     [edx+8], ebx
mov     ebx, [ecx+4]
mov     [edx+0Ch], ebx
mov     ebx, [ecx+10h]
mov     [edx+10h], ebx
mov     ebx, [ecx+1Ch]
mov     [edx+14h], ebx
mov     ebx, [ecx+8]
mov     [edx+18h], ebx
mov     ebx, [ecx+14h]
mov     [edx+1Ch], ebx
mov     ebx, [ecx+20h]
mov     [edx+20h], ebx
pop     ecx
pop     ebx
retn
sub_4EF70C endp




sub_4EF749 proc near
push    ecx
push    esi
mov     ecx, [eax+4]
mov     esi, [edx+8]
imul    esi, ecx
mov     ecx, [eax+8]
imul    ecx, [edx+4]
sub     esi, ecx
mov     [ebx], esi
mov     esi, [eax+8]
imul    esi, [edx]
mov     ecx, [eax]
imul    ecx, [edx+8]
sub     esi, ecx
mov     [ebx+4], esi
mov     ecx, [eax]
imul    ecx, [edx+4]
mov     eax, [eax+4]
imul    eax, [edx]
sub     ecx, eax
mov     [ebx+8], ecx
pop     esi
pop     ecx
retn
sub_4EF749 endp




sub_4EF784 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 24h
fild    dword ptr [eax]
fmul    ds:flt_50A548
fstp    [esp+24h+var_24]
fild    dword ptr [eax+4]
fmul    ds:flt_50A548
fstp    [esp+24h+var_20]
fild    dword ptr [eax+8]
fmul    ds:flt_50A548
fstp    [esp+24h+var_1C]
fild    dword ptr [edx]
fmul    ds:flt_50A548
fstp    [esp+24h+var_18]
fild    dword ptr [edx+4]
fmul    ds:flt_50A548
fstp    [esp+24h+var_14]
fild    dword ptr [edx+8]
fmul    ds:flt_50A548
fstp    [esp+24h+var_10]
fld     [esp+24h+var_20]
fmul    [esp+24h+var_10]
fld     [esp+24h+var_1C]
fmul    [esp+24h+var_14]
fsubp   st(1), st
fstp    [esp+24h+var_C]
fld     [esp+24h+var_1C]
fmul    [esp+24h+var_18]
fld     [esp+24h+var_24]
fmul    [esp+24h+var_10]
fsubp   st(1), st
fstp    [esp+24h+var_8]
fld     [esp+24h+var_24]
fmul    [esp+24h+var_14]
fld     [esp+24h+var_20]
fmul    [esp+24h+var_18]
fsubp   st(1), st
fstp    [esp+24h+var_4]
fld     [esp+24h+var_C]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx]
fld     [esp+24h+var_8]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx+4]
fld     [esp+24h+var_4]
fmul    ds:flt_50A54C
call    __CHP
fistp   dword ptr [ebx+8]
add     esp, 24h
retn
sub_4EF784 endp




sub_4EF84B proc near

var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
sub     esp, 10h
mov     edi, edx
mov     ebx, esp
mov     edx, eax
mov     eax, offset unk_77EAF8
call    sub_4EF1FB
mov     eax, ds:dword_77EB1C
add     [esp+18h+var_18], eax
mov     eax, ds:dword_77EB20
add     [esp+18h+var_14], eax
mov     eax, ds:dword_77EB24
add     [esp+18h+var_10], eax
mov     esi, esp
movsd
movsd
movsd
movsd
add     esp, 10h
pop     edi
pop     esi
retn
sub_4EF84B endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF886 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= qword ptr -0Ch
var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 20h
and     esp, 0FFFFFFF8h
fild    dword ptr [eax]
fstp    [esp+20h+var_1C]
fild    dword ptr [eax+4]
fstp    [esp+20h+var_14]
fild    dword ptr [eax+8]
fstp    [esp+20h+var_10]
fld     [esp+20h+var_1C]
fmul    st, st
fld     [esp+20h+var_14]
fmul    st, st
faddp   st(1), st
fld     [esp+20h+var_10]
fmul    st, st
faddp   st(1), st
fst     [esp+20h+var_18]
call    IF@SQRT
fstp    [esp+20h+var_20]
test    [esp+20h+var_20], 7FFFFFFFh
jnz     short loc_4EF8D5
mov     [esp+20h+var_20], 3F800000h

loc_4EF8D5:
fld     [esp+20h+var_1C]
fmul    ds:dbl_50A550
fld     [esp+20h+var_20]
fstp    [esp+20h+var_C]
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx]
fld     [esp+20h+var_14]
fmul    ds:dbl_50A550
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx+4]
fld     [esp+20h+var_10]
fmul    ds:dbl_50A550
fdiv    [esp+20h+var_C]
call    __CHP
fistp   dword ptr [edx+8]
fld     [esp+20h+var_18]

loc_4EF921:
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     esp, ebp
pop     ebp
retn
sub_4EF886 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF932 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= qword ptr -0Ch
var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 20h
and     esp, 0FFFFFFF8h
fild    dword ptr [eax]
fstp    [esp+20h+var_1C]
fild    dword ptr [eax+4]
fstp    [esp+20h+var_10]
fild    dword ptr [eax+8]
fstp    [esp+20h+var_18]
fld     [esp+20h+var_1C]
fmul    st, st
fld     [esp+20h+var_10]
fmul    st, st
faddp   st(1), st
fld     [esp+20h+var_18]
fmul    st, st
faddp   st(1), st
fst     [esp+20h+var_14]
call    IF@SQRT
fstp    [esp+20h+var_20]
test    [esp+20h+var_20], 7FFFFFFFh
jnz     short loc_4EF981
mov     [esp+20h+var_20], 3F800000h

loc_4EF981:
fld     [esp+20h+var_1C]
fmul    ds:dbl_50A558
fld     [esp+20h+var_20]
fstp    [esp+20h+var_C]
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx], ax
fld     [esp+20h+var_10]
fmul    ds:dbl_50A558
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx+2], ax
fld     [esp+20h+var_18]
fmul    ds:dbl_50A558
fdiv    [esp+20h+var_C]
call    __CHP
fistp   [esp+20h+var_4]
mov     eax, [esp+20h+var_4]
mov     [edx+4], ax
fld     [esp+20h+var_14]
jmp     loc_4EF921
sub_4EF932 endp



; Attributes: bp-based frame fuzzy-sp

sub_4EF9ED proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_14= dword ptr -14h
var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 24h
and     esp, 0FFFFFFF8h
mov     ecx, edx
mov     esi, ebx
mov     ebx, esp
mov     edx, eax
mov     eax, offset unk_77EB38
call    sub_4EF1FB
mov     edx, esp
mov     eax, esp
call    sub_4EF886
mov     ebx, esp
mov     edx, esp
mov     eax, offset unk_77EAC8
call    sub_4EF371
mov     edx, esp
mov     eax, esp
call    sub_4EF886
mov     eax, ds:dword_77EB66
sar     eax, 10h
mov     edx, [esp+24h+var_24]
add     edx, eax
mov     [esp+24h+var_24], edx
mov     eax, ds:dword_77EB66+2
sar     eax, 10h
mov     ebx, [esp+24h+var_20]
add     ebx, eax
mov     [esp+24h+var_20], ebx
mov     eax, ds:dword_77EB6A
sar     eax, 10h
mov     edi, [esp+24h+var_1C]
add     edi, eax
mov     [esp+24h+var_1C], edi
mov     [esp+24h+var_8], edx
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_14]
mov     [esp+24h+var_8], ebx
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_10]
mov     eax, edi
mov     [esp+24h+var_8], edi
fild    [esp+24h+var_8]
fmul    ds:dbl_50A560
fstp    [esp+24h+var_C]
xor     eax, edi
mov     al, [ecx]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_14]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi], al
xor     eax, eax
mov     al, [ecx+1]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_10]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi+1], al
xor     eax, eax
mov     al, [ecx+2]
mov     [esp+24h+var_4], eax
fild    word ptr [esp+24h+var_4]
fmul    [esp+24h+var_C]
call    __CHP
fistp   [esp+24h+var_8]
mov     al, byte ptr [esp+24h+var_8]
mov     [esi+2], al
mov     al, [ecx]
mov     [esi], al
mov     al, [ecx+1]
mov     [esi+1], al
mov     al, [ecx+2]
mov     [esi+2], al
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4EF9ED endp




sub_4EFB0F proc near
push    ecx
push    esi
push    edi
mov     ecx, 0Ch
mov     edi, offset unk_77EB38

loc_4EFB1C:
mov     esi, eax
rep movsd
pop     edi
pop     esi
pop     ecx
retn
sub_4EFB0F endp




sub_4EFB24 proc near
push    ecx
push    esi
push    edi
mov     ecx, 0Ch
mov     edi, offset unk_77EAC8
jmp     short loc_4EFB1C
sub_4EFB24 endp




sub_4EFB33 proc near
push    ebx
push    edx
mov     ebx, 24h ; '$'
mov     edx, eax
mov     eax, offset unk_77EAF8
jmp     short loc_4EFB52
sub_4EFB33 endp




sub_4EFB43 proc near
push    ebx
push    edx
lea     edx, [eax+24h]
mov     ebx, 0Ch

loc_4EFB4D:
mov     eax, offset dword_77EB1C

loc_4EFB52:
call    memcpy_
pop     edx
pop     ebx
retn
sub_4EFB43 endp




sub_4EFB5A proc near
push    ebx
push    edx
mov     ebx, 0Ch
mov     edx, eax
jmp     short loc_4EFB4D
sub_4EFB5A endp




sub_4EFB65 proc near
push    ecx
push    edx
mov     edx, ds:dword_77EBA8
add     edx, ds:dword_77EBA4
add     edx, ds:dword_77EBA0
mov     ecx, 0Ch
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
mov     ds:dword_77EBB8, eax
pop     edx
pop     ecx
retn
sub_4EFB65 endp




sub_4EFB8D proc near
mov     eax, ds:dword_77EBAC
add     eax, ds:dword_77EBA8
add     eax, ds:dword_77EBA4
add     eax, ds:dword_77EBA0
sar     eax, 4
mov     ds:dword_77EBB8, eax
retn
sub_4EFB8D endp




sub_4EFBAD proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4

sub     esp, 10h
fild    ds:dword_77EBB4
fmul    ds:dbl_50A568
fstp    [esp+10h+var_10]
fld1
fsub    [esp+10h+var_10]
fstp    [esp+10h+var_C]
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB0
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8, al
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8+1
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB1
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8+1, al
xor     eax, eax
mov     al, byte ptr ds:dword_77EBC8+2
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_C]
xor     eax, eax
mov     al, ds:byte_77EBB2
mov     [esp+10h+var_4], eax
fild    word ptr [esp+10h+var_4]
fmul    [esp+10h+var_10]
faddp   st(1), st
call    __CHP
fistp   [esp+10h+var_8]
mov     al, byte ptr [esp+10h+var_8]
mov     byte ptr ds:dword_77EBC8+2, al
add     esp, 10h
retn
sub_4EFBAD endp




sub_4EFC77 proc near
test    eax, eax
jge     short loc_4EFC7F
xor     eax, eax
jmp     short loc_4EFC8B

loc_4EFC7F:
cmp     eax, 1000h
jle     short loc_4EFC8B
mov     eax, 1000h

loc_4EFC8B:
mov     ds:dword_77EBB4, eax
retn
sub_4EFC77 endp




sub_4EFC91 proc near
mov     eax, [eax]
mov     ds:dword_77EBC8, eax
retn
sub_4EFC91 endp




sub_4EFC99 proc near
push    esi
push    edi
mov     edi, offset flt_77EB88
mov     esi, eax
movsd
movsd
mov     edi, offset flt_77EB90
mov     esi, edx
movsd
movsd
mov     edi, offset flt_77EB98

loc_4EFCB2:
mov     esi, ebx
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFC99 endp




sub_4EFCB9 proc near
mov     ds:dword_77EBA8, eax
mov     ds:dword_77EBA4, edx
mov     ds:dword_77EBA0, ebx
retn
sub_4EFCB9 endp




sub_4EFCCB proc near
mov     ds:dword_77EBAC, eax
mov     ds:dword_77EBA8, edx
mov     ds:dword_77EBA4, ebx
mov     ds:dword_77EBA0, ecx
retn
sub_4EFCCB endp




sub_4EFCE3 proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFCE3 endp




sub_4EFCF1 proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
mov     edi, offset unk_77EB78
mov     esi, edx
movsd
movsd
mov     edi, offset unk_77EB70
jmp     short loc_4EFCB2
sub_4EFCF1 endp




sub_4EFD0C proc near
push    esi
push    edi
mov     edi, offset unk_77EB80
mov     esi, eax
movsd
movsd
mov     edi, offset unk_77EB78
lea     esi, [eax+8]
movsd
movsd
mov     edi, offset unk_77EB70
lea     esi, [eax+10h]
movsd
movsd
pop     edi
pop     esi
retn
sub_4EFD0C endp




sub_4EFD2E proc near

var_4= dword ptr -4

sub     esp, 4
fld     ds:flt_77EB94
fsub    ds:flt_77EB8C
fld     ds:flt_77EB98
fsub    ds:flt_77EB88
fmulp   st(1), st
fstp    [esp+4+var_4]
fld     ds:flt_77EB9C
fsub    ds:flt_77EB8C
fld     ds:flt_77EB90
fsub    ds:flt_77EB88
fmulp   st(1), st
fsub    [esp+4+var_4]
call    __CHP
fistp   ds:dword_77EBBC
add     esp, 4
retn
sub_4EFD2E endp




sub_4EFD7A proc near
push    ebx
push    edx
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
pop     edx
pop     ebx
retn
sub_4EFD7A endp




sub_4EFDC9 proc near
push    ebx
push    edx
push    esi
push    edi
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     eax, ds:dword_77EBA8
mov     ds:dword_77EBAC, eax
mov     eax, ds:dword_77EBA4
mov     ds:dword_77EBA8, eax
mov     eax, ds:dword_77EBA0
mov     ds:dword_77EBA4, eax
mov     edi, offset flt_77EB88
mov     esi, offset flt_77EB90
movsd
movsd
mov     edi, offset flt_77EB90
mov     esi, offset flt_77EB98
movsd
movsd
mov     ebx, offset dword_77EBA0
mov     edx, offset flt_77EB9C
mov     eax, offset flt_77EB98
call    sub_4EEED0
mov     eax, ds:dword_77EBA0
call    sub_4EEE7D
mov     ds:dword_77EBB4, eax
pop     edi
pop     esi
pop     edx
pop     ebx
retn
sub_4EFDC9 endp




sub_4EFE75 proc near
push    ebx
push    edx
mov     eax, ds:dword_77EBA0
mov     ds:dword_77EBAC, eax
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB80
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA8
mov     edx, offset flt_77EB8C
mov     eax, offset flt_77EB88
call    sub_4EEED0
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB78
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA4
mov     edx, offset flt_77EB94
mov     eax, offset flt_77EB90
call    sub_4EEED0
mov     ebx, offset flt_77EB28
mov     edx, offset unk_77EB70
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    ds:flt_77EB28
fstp    ds:flt_77EB28
fild    ds:dword_77EB20
fadd    ds:flt_77EB2C
fstp    ds:flt_77EB2C
fild    ds:dword_77EB24
fadd    ds:flt_77EB30
fstp    ds:flt_77EB30
mov     ebx, offset dword_77EBA0
mov     edx, offset flt_77EB9C
mov     eax, offset flt_77EB98
call    sub_4EEED0
mov     eax, ds:dword_77EBA0
call    sub_4EEE7D
mov     ds:dword_77EBB4, eax
pop     edx
pop     ebx
retn
sub_4EFE75 endp




sub_4EFFAD proc near
push    edx
mov     edx, ds:dword_77EBB4
mov     [eax], edx
pop     edx
retn
sub_4EFFAD endp




sub_4EFFB8 proc near
fld     ds:flt_77EB28
call    __CHP
fistp   dword ptr [eax]
fld     ds:flt_77EB2C
call    __CHP
fistp   dword ptr [eax+4]
fld     ds:flt_77EB30
call    __CHP
fistp   dword ptr [eax+8]
retn
sub_4EFFB8 endp




sub_4EFFE2 proc near
push    edx
mov     edx, ds:dword_77EBBC
mov     [eax], edx
pop     edx
retn
sub_4EFFE2 endp




sub_4EFFED proc near
push    edx
mov     edx, ds:dword_77EBB8
mov     [eax], edx
pop     edx
retn
sub_4EFFED endp




sub_4EFFF8 proc near
push    edx
mov     edx, ds:dword_77EBC8
mov     [eax], edx
pop     edx
retn
sub_4EFFF8 endp




sub_4F0003 proc near
push    esi
push    edi
mov     edi, eax
jmp     loc_4F008E
sub_4F0003 endp




sub_4F000C proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
pop     edi
pop     esi
retn
sub_4F000C endp




sub_4F001A proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB90
movsd
movsd
pop     edi
pop     esi
retn
sub_4F001A endp




sub_4F0028 proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
mov     edi, edx
mov     esi, offset flt_77EB90
movsd
movsd
mov     edi, ebx
jmp     short loc_4F008E
sub_4F0028 endp




sub_4F0040 proc near
push    esi
push    edi
mov     edi, eax
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+8]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+10h]
jmp     short loc_4F008E

loc_4F005A:
push    esi
push    edi
lea     edi, [eax+20h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+28h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+30h]
jmp     short loc_4F008E

loc_4F0075:
push    esi
push    edi
lea     edi, [eax+28h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+30h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+38h]

loc_4F008E:
mov     esi, offset flt_77EB98
movsd
movsd
pop     edi
pop     esi
retn
sub_4F0040 endp




sub_4F0098 proc near
push    esi
push    edi
lea     edi, [eax+1Ch]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+24h]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+2Ch]
jmp     short loc_4F008E
sub_4F0098 endp




sub_4F00B3 proc near
push    esi
push    edi
lea     edi, [eax+24h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+2Ch]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+34h]
jmp     short loc_4F008E
sub_4F00B3 endp




sub_4F00CE proc near
push    esi
push    edi
lea     edi, [eax+34h]
mov     esi, offset flt_77EB88
movsd
movsd
lea     edi, [eax+3Ch]
mov     esi, offset flt_77EB90
movsd
movsd
lea     edi, [eax+44h]
jmp     short loc_4F008E
sub_4F00CE endp




sub_4F00E9 proc near
push    ecx
mov     ecx, ds:dword_77EBA8
mov     [eax], ecx
mov     eax, ds:dword_77EBA4
mov     [edx], eax
mov     eax, ds:dword_77EBA0
mov     [ebx], eax
pop     ecx
retn
sub_4F00E9 endp




sub_4F0102 proc near
push    edx
mov     edx, ds:dword_77EBA8
mov     [eax], edx
mov     edx, ds:dword_77EBA4
mov     [eax+4], edx
mov     edx, ds:dword_77EBA0
mov     [eax+8], edx
pop     edx
retn
sub_4F0102 endp




sub_4F011F proc near
push    esi
mov     esi, ds:dword_77EBAC
mov     [eax], esi
mov     eax, ds:dword_77EBA8
mov     [edx], eax
mov     eax, ds:dword_77EBA4
mov     [ebx], eax
mov     eax, ds:dword_77EBA0
mov     [ecx], eax
pop     esi
retn
sub_4F011F endp




sub_4F013F proc near
push    edx
mov     edx, ds:dword_77EBAC
mov     [eax], edx
mov     edx, ds:dword_77EBA8
mov     [eax+4], edx
mov     edx, ds:dword_77EBA4
mov     [eax+8], edx
mov     edx, ds:dword_77EBA0
mov     [eax+0Ch], edx
pop     edx
retn
sub_4F013F endp




sub_4F0165 proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0180
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0180
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0196

loc_4F0180:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
retn

loc_4F0196:
fild    ds:dword_77EBA8
fmul    ds:flt_50A570
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A570
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A570
fstp    dword ptr [eax+18h]
retn
sub_4F0165 endp

cmp     ds:dword_77EBAC, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA8, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA4, 0
jz      short loc_4F01E8
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0205

loc_4F01E8:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+0Ch], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
retn

loc_4F0205:
fild    ds:dword_77EBAC
fmul    ds:flt_50A574
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A574
fstp    dword ptr [eax+0Ch]
fild    ds:dword_77EBA4
fmul    ds:flt_50A574
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A574
fstp    dword ptr [eax+14h]
retn



sub_4F0242 proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0266
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0283

loc_4F0266:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F0283:
fild    ds:dword_77EBAC
fmul    ds:flt_50A578
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A578
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A578
fstp    dword ptr [eax+18h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A578
fstp    dword ptr [eax+20h]
retn
sub_4F0242 endp

push    edx
fild    ds:dword_77EBAC
fmul    ds:flt_50A57C
fst     dword ptr [eax+8]
fstp    dword ptr [eax+10h]
mov     edx, [eax+8]
mov     [eax+18h], edx
mov     edx, [eax+8]
mov     [eax+20h], edx
pop     edx
retn



sub_4F02E1 proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F02FC
cmp     ds:dword_77EBA4, 0
jz      short loc_4F02FC
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0312

loc_4F02FC:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
retn

loc_4F0312:
fild    ds:dword_77EBA8
fmul    ds:flt_50A580
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A580
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A580
fstp    dword ptr [eax+18h]
retn
sub_4F02E1 endp




sub_4F0340 proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0364
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F0381

loc_4F0364:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
mov     dword ptr [eax+18h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F0381:
fild    ds:dword_77EBAC
fmul    ds:flt_50A584
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A584
fstp    dword ptr [eax+10h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A584
fstp    dword ptr [eax+18h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A584
fstp    dword ptr [eax+20h]
retn
sub_4F0340 endp




sub_4F03BE proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F03D9
cmp     ds:dword_77EBA4, 0
jz      short loc_4F03D9
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F03EF

loc_4F03D9:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
retn

loc_4F03EF:
fild    ds:dword_77EBA8
fmul    ds:flt_50A588
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A588
fstp    dword ptr [eax+14h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A588
fstp    dword ptr [eax+20h]
retn
sub_4F03BE endp




sub_4F041D proc near
cmp     ds:dword_77EBAC, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA8, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA4, 0
jz      short loc_4F0441
cmp     ds:dword_77EBA0, 0
jnz     short loc_4F045E

loc_4F0441:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+14h], 3F800000h
mov     dword ptr [eax+20h], 3F800000h
mov     dword ptr [eax+2Ch], 3F800000h
retn

loc_4F045E:
fild    ds:dword_77EBAC
fmul    ds:flt_50A58C
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA8
fmul    ds:flt_50A58C
fstp    dword ptr [eax+14h]
fild    ds:dword_77EBA4
fmul    ds:flt_50A58C
fstp    dword ptr [eax+20h]
fild    ds:dword_77EBA0
fmul    ds:flt_50A58C
fstp    dword ptr [eax+2Ch]
retn
sub_4F041D endp




sub_4F049B proc near
cmp     ds:dword_77EBA8, 0
jz      short loc_4F04AD
cmp     ds:dword_77EBA4, 0
jnz     short loc_4F04BC

loc_4F04AD:
mov     dword ptr [eax+8], 3F800000h
mov     dword ptr [eax+10h], 3F800000h
retn

loc_4F04BC:
fild    ds:dword_77EBA8
fmul    ds:flt_50A590
fstp    dword ptr [eax+8]
fild    ds:dword_77EBA4
fmul    ds:flt_50A590
fstp    dword ptr [eax+10h]
retn
sub_4F049B endp




sub_4F04DB proc near
push    edx
mov     edx, eax
mov     eax, ds:dword_77EBA0
sar     eax, 2
mov     [edx], eax
pop     edx
retn
sub_4F04DB endp




sub_4F04EA proc near
push    ebx
push    edx
mov     ebx, 30h ; '0'
mov     edx, offset unk_77EAF8
jmp     loc_4EFB52
sub_4F04EA endp



; Attributes: bp-based frame fuzzy-sp

sub_4F04FB proc near

var_84= dword ptr -84h
var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_78= dword ptr -78h
var_74= dword ptr -74h
var_70= dword ptr -70h
var_6C= dword ptr -6Ch
var_68= dword ptr -68h
var_64= dword ptr -64h
var_5C= byte ptr -5Ch
var_4C= dword ptr -4Ch
var_48= dword ptr -48h
var_44= dword ptr -44h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= byte ptr -18h
var_14= byte ptr -14h
var_10= byte ptr -10h
var_C= byte ptr -0Ch
var_8= byte ptr -8
var_4= byte ptr -4
arg_0= dword ptr  10h

push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 74h
and     esp, 0FFFFFFF8h
push    eax
push    edx
push    ebx
push    ecx
xor     edx, edx
mov     [esp+84h+var_24], edx
cmp     [ebp+arg_0], 4
jnz     short loc_4F0520
mov     [esp+84h+var_3C], 20301h
jmp     short loc_4F0528

loc_4F0520:
mov     [esp+84h+var_3C], 201h

loc_4F0528:
lea     ebx, [esp+84h+var_4C]
mov     edx, [esp+84h+var_78]
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    [esp+84h+var_4C]
fstp    [esp+84h+var_4C]
fild    ds:dword_77EB20
fadd    [esp+84h+var_48]
fstp    [esp+84h+var_48]
fild    ds:dword_77EB24
fadd    [esp+84h+var_44]
fstp    [esp+84h+var_44]
lea     edi, [esp+84h+var_5C]
lea     esi, [esp+84h+var_4C]
movsd
movsd
movsd
movsd
mov     eax, [esp+84h+var_7C]
mov     al, [eax]
mov     [esp+84h+var_18], al
mov     [esp+84h+var_14], al
mov     eax, [esp+84h+var_7C]
mov     al, [eax+1]
mov     [esp+84h+var_C], al
mov     [esp+84h+var_10], al
fld     [esp+84h+var_44]
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jnb     short loc_4F05A3
mov     eax, 1
jmp     short loc_4F05A5

loc_4F05A3:
xor     eax, eax

loc_4F05A5:
mov     [esp+84h+var_2C], eax
mov     [esp+84h+var_38], eax
xor     ecx, ecx

loc_4F05AF:
cmp     ecx, [ebp+arg_0]
jge     loc_4F08C6
cmp     ecx, 3
jnz     short loc_4F05E5
lea     edi, [esp+84h+var_6C]
lea     esi, [esp+84h+var_5C]
movsd
movsd
movsd
movsd
mov     al, [esp+84h+var_14]
mov     [esp+84h+var_8], al
mov     al, [esp+84h+var_10]
mov     [esp+84h+var_4], al
mov     esi, [esp+84h+var_38]
jmp     loc_4F0660

loc_4F05E5:
xor     eax, eax
mov     al, byte ptr [esp+ecx+84h+var_3C]
shl     eax, 3
mov     edx, [esp+84h+var_78]
add     edx, eax
lea     ebx, [esp+84h+var_6C]
mov     eax, offset unk_77EAF8
call    sub_4EF275
fild    ds:dword_77EB1C
fadd    [esp+84h+var_6C]
fstp    [esp+84h+var_6C]
fild    ds:dword_77EB20
fadd    [esp+84h+var_68]
fstp    [esp+84h+var_68]
fild    ds:dword_77EB24
fadd    [esp+84h+var_64]
fstp    [esp+84h+var_64]
xor     eax, eax
mov     al, byte ptr [esp+ecx+84h+var_3C]
add     eax, eax
add     eax, [esp+84h+var_7C]
mov     dl, [eax]
mov     [esp+84h+var_8], dl
mov     al, [eax+1]
mov     [esp+84h+var_4], al
fld     [esp+84h+var_64]
fcomp   ds:dword_77EBC0
fnstsw  ax
sahf
jnb     short loc_4F065E
mov     esi, 1
jmp     short loc_4F0660

loc_4F065E:
xor     esi, esi

loc_4F0660:
mov     eax, [esp+84h+var_2C]
add     eax, esi
mov     ebx, [esp+84h+var_24]
inc     ebx
mov     edx, [esp+84h+var_24]
shl     edx, 4
add     edx, [esp+84h+var_80]
test    eax, eax
jnz     short loc_4F06C5
mov     eax, [esp+84h+var_44]
mov     [edx+8], eax
fld     [esp+84h+var_4C]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_48]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
mov     al, [esp+84h+var_18]
mov     [edx+0Ch], al
mov     al, [esp+84h+var_C]

loc_4F06BD:
mov     [edx+0Dh], al
jmp     loc_4F088D

loc_4F06C5:
cmp     eax, 1
jnz     loc_4F0891
fld     [esp+84h+var_44]
fsub    [esp+84h+var_64]
fld     [esp+84h+var_44]
fsub    ds:dword_77EBC0
fdivrp  st(1), st
fstp    [esp+84h+var_28]
fld     [esp+84h+var_4C]
fsub    [esp+84h+var_6C]
fmul    [esp+84h+var_28]
fsubr   [esp+84h+var_4C]
fstp    [esp+84h+var_74]
fld     [esp+84h+var_48]
fsub    [esp+84h+var_68]
fmul    [esp+84h+var_28]
fsubr   [esp+84h+var_48]
fstp    [esp+84h+var_70]
xor     eax, eax
mov     al, [esp+84h+var_18]
mov     [esp+84h+var_20], eax
xor     eax, eax
mov     al, [esp+84h+var_8]
mov     edi, [esp+84h+var_20]
sub     edi, eax
mov     eax, edi
mov     [esp+84h+var_20], edi
fild    [esp+84h+var_20]
fmul    [esp+84h+var_28]
xor     eax, edi
mov     al, [esp+84h+var_18]
mov     [esp+84h+var_1C], eax
fild    word ptr [esp+84h+var_1C]
fsubrp  st(1), st
fstp    [esp+84h+var_34]
xor     eax, eax
mov     al, [esp+84h+var_C]
mov     [esp+84h+var_20], eax
xor     eax, eax
mov     al, [esp+84h+var_4]
mov     edi, [esp+84h+var_20]
sub     edi, eax
mov     eax, edi
mov     [esp+84h+var_20], edi
fild    [esp+84h+var_20]
fmul    [esp+84h+var_28]
xor     eax, edi
mov     al, [esp+84h+var_C]
mov     [esp+84h+var_1C], eax
fild    word ptr [esp+84h+var_1C]
fsubrp  st(1), st
fstp    [esp+84h+var_30]
cmp     [esp+84h+var_2C], 0
jz      short loc_4F07E3
mov     eax, ds:dword_77EBC0
mov     [edx+8], eax
fld     [esp+84h+var_74]
fmul    ds:dbl_50A598
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_70]
fmul    ds:dbl_50A598
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
fld     [esp+84h+var_34]
call    __CHP
fistp   [esp+84h+var_20]
mov     al, byte ptr [esp+84h+var_20]
mov     [edx+0Ch], al
fld     [esp+84h+var_30]
call    __CHP
fistp   [esp+84h+var_20]
mov     al, byte ptr [esp+84h+var_20]
jmp     loc_4F06BD

loc_4F07E3:
mov     eax, [esp+84h+var_44]
mov     [edx+8], eax
fld     [esp+84h+var_4C]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [edx]
fld     [esp+84h+var_48]
fmul    ds:dword_77EBDC
fdiv    [esp+84h+var_44]
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [edx+4]
mov     al, [esp+84h+var_18]
mov     [edx+0Ch], al
mov     al, [esp+84h+var_C]
mov     [edx+0Dh], al
mov     eax, ebx
shl     eax, 4
add     eax, [esp+84h+var_80]
mov     edx, ds:dword_77EBC0
mov     [eax+8], edx
fld     [esp+84h+var_74]
fmul    ds:dbl_50A598
fild    ds:dword_77EBCC
faddp   st(1), st
fstp    dword ptr [eax]
fld     [esp+84h+var_70]
fmul    ds:dbl_50A598
fild    ds:dword_77EBD0
faddp   st(1), st
fstp    dword ptr [eax+4]
fld     [esp+84h+var_34]
call    __CHP
fistp   [esp+84h+var_20]
mov     dl, byte ptr [esp+84h+var_20]
mov     [eax+0Ch], dl
fld     [esp+84h+var_30]
call    __CHP
fistp   [esp+84h+var_20]
mov     dl, byte ptr [esp+84h+var_20]
mov     [eax+0Dh], dl
inc     ebx

loc_4F088D:
mov     [esp+84h+var_24], ebx

loc_4F0891:
mov     eax, [esp+84h+var_6C]
mov     [esp+84h+var_4C], eax
mov     eax, [esp+84h+var_68]
mov     [esp+84h+var_48], eax
mov     eax, [esp+84h+var_64]
mov     [esp+84h+var_44], eax
mov     al, [esp+84h+var_8]
mov     [esp+84h+var_18], al
mov     al, [esp+84h+var_4]
mov     [esp+84h+var_C], al
mov     [esp+84h+var_2C], esi
inc     ecx
jmp     loc_4F05AF

loc_4F08C6:
cmp     [esp+84h+var_84], 0
jz      short loc_4F0914
mov     edx, [esp+84h+var_24]
cmp     edx, 3
jl      short loc_4F0914
mov     eax, edx
shl     eax, 4
mov     ecx, [esp+84h+var_80]
add     eax, ecx
fld     dword ptr [eax-10h]
mov     edx, ecx
fsub    dword ptr [ecx]
fld     dword ptr [edx+14h]
fsub    dword ptr [ecx+4]
fmulp   st(1), st
fstp    [esp+84h+var_74]
fld     dword ptr [eax-0Ch]
mov     eax, ecx
fsub    dword ptr [ecx+4]
fld     dword ptr [eax+10h]
fsub    dword ptr [ecx]
fmulp   st(1), st
fst     [esp+84h+var_70]
fsub    [esp+84h+var_74]
mov     eax, [esp+84h+var_84]
call    __CHP
fistp   dword ptr [eax]

loc_4F0914:
mov     eax, [esp+84h+var_24]
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
retn    4
sub_4F04FB endp

; [00000007 BYTES: COLLAPSED FUNCTION abs_]



sub_4F0927 proc near

var_60= byte ptr -60h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 50h
mov     esi, edx
xor     edi, edi
mov     edx, offset unk_50A5A0
call    sub_4F93C1
test    eax, eax
jnz     short loc_4F0993
xor     ebx, ebx
jmp     short loc_4F094A

loc_4F0944:
inc     ebx
cmp     ebx, 0Ah
jge     short loc_4F09A5

loc_4F094A:
mov     al, bl
add     al, 43h ; 'C'
mov     ds:RootPathName, al
push    offset RootPathName ; lpRootPathName
call    cs:__imp_GetDriveTypeA
cmp     eax, 5
jnz     short loc_4F0944
push    esi
push    offset RootPathName
push    offset aSS      ; "%s%s"
lea     eax, [esp+6Ch+var_60]
push    eax
call    sprintf_
add     esp, 10h
mov     edx, offset unk_50A5A0
mov     eax, esp
call    sub_4F93C1
test    eax, eax
jz      short loc_4F0944
call    fclose_
jmp     short loc_4F09A0

loc_4F0993:
call    fclose_
xor     ah, ah
mov     ds:RootPathName, ah

loc_4F09A0:
mov     edi, 1

loc_4F09A5:
mov     eax, edi
add     esp, 50h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0927 endp




sub_4F09AF proc near
mov     eax, offset RootPathName
retn
sub_4F09AF endp




sub_4F09B5 proc near

var_58= byte ptr -58h

push    ecx
push    esi
sub     esp, 50h
mov     esi, eax
xor     ecx, ecx

loc_4F09BE:
cmp     ds:dword_551C40[ecx*4], 0
jz      short loc_4F09D0
cmp     ecx, 10h
jge     short loc_4F09D0
inc     ecx
jmp     short loc_4F09BE

loc_4F09D0:
cmp     ecx, 10h
jnz     short loc_4F09DC
mov     eax, 0FFFFFFFFh
jmp     short loc_4F0A28

loc_4F09DC:
mov     edx, offset unk_50A5A0
mov     eax, esi
call    sub_4F93C1
mov     ebx, ecx
shl     ebx, 2
test    eax, eax
jz      short loc_4F09F9

loc_4F09F1:
mov     ds:dword_551C40[ebx], eax
jmp     short loc_4F0A26

loc_4F09F9:
push    esi
push    offset RootPathName
push    offset aSS      ; "%s%s"
lea     eax, [esp+64h+var_58]
push    eax
call    sprintf_
add     esp, 10h
mov     edx, offset unk_50A5A0
mov     eax, esp
call    sub_4F93C1
test    eax, eax
jnz     short loc_4F09F1
mov     ecx, 0FFFFFFFFh

loc_4F0A26:
mov     eax, ecx

loc_4F0A28:
add     esp, 50h
pop     esi
pop     ecx
retn
sub_4F09B5 endp




sub_4F0A2E proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
xor     ecx, ecx

loc_4F0A35:
cmp     ds:dword_551C40[ecx*4], 0
jz      short loc_4F0A47
cmp     ecx, 10h
jge     short loc_4F0A47
inc     ecx
jmp     short loc_4F0A35

loc_4F0A47:
cmp     ecx, 10h
jnz     short loc_4F0A55
mov     eax, 0FFFFFFFFh
pop     edx
pop     ecx
pop     ebx
retn

