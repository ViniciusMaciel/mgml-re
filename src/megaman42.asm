loc_466609:
and     byte ptr [edx+4], 0FBh
pop     ecx
pop     ebx
retn
sub_4665A1 endp




sub_466610 proc near

var_58= dword ptr -58h
var_54= byte ptr -54h
var_44= byte ptr -44h
var_34= byte ptr -34h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 40h
push    eax
xor     edi, edi
mov     eax, [eax+54h]
sar     eax, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 600h
lea     esi, [esp+58h+var_54]
call    sub_4DD510
lea     edx, [esp+58h+var_24]
lea     eax, [esp+58h+var_54]
call    sub_4DD57B
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_18], eax
test    eax, eax
jz      loc_4666F6
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 34h ; '4'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 440h
mov     ebx, 0D00h
mov     edx, 0C80h
lea     esi, [esp+58h+var_44]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_44]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     ecx, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, ecx
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     eax, ecx
call    sub_4667D3
mov     edi, 1

loc_4666F6:
call    sub_4DE043
mov     ebp, eax
mov     [esp+58h+var_1C], eax
test    eax, eax
jz      loc_4667A9
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     byte ptr [eax+4], 0
mov     byte ptr [eax+0Fh], 34h ; '4'
mov     eax, [esp+58h+var_58]
mov     eax, [eax+54h]
sar     eax, 10h
mov     ecx, 0FFFFFBC0h
mov     ebx, 0D00h
mov     edx, 0C80h
lea     esi, [esp+58h+var_34]
call    sub_4DD510
lea     edi, [ebp+1Ch]
lea     esi, [esp+58h+var_34]
movsd
movsd
movsd
movsd
mov     eax, [esp+58h+var_58]
mov     eax, [eax+1Ch]
add     [ebp+1Ch], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+20h]
add     [ebp+20h], eax
mov     eax, [esp+58h+var_58]
mov     eax, [eax+24h]
add     [ebp+24h], eax
lea     ecx, [ebp+14h]
lea     eax, [ebp+1Ch]
mov     edx, ecx
call    sub_4DD57B
mov     eax, [esp+58h+var_24]
shl     eax, 8
mov     [ebp+44h], ax
mov     word ptr [ebp+46h], 0
mov     eax, [esp+58h+var_20]
shl     eax, 8
mov     [ebp+48h], ax
mov     word ptr [ebp+4Ah], 0
mov     word ptr [ebp+50h], 0
mov     ax, [ebp+50h]
mov     [ebp+4Eh], ax
mov     [ebp+4Ch], ax
mov     eax, ecx
call    sub_4667D3
jmp     short loc_4667AD

loc_4667A9:
test    edi, edi
jz      short loc_4667CB

loc_4667AD:
mov     ecx, [esp+58h+var_18]
test    ecx, ecx
jz      short loc_4667BA
lea     edx, [ecx+14h]
jmp     short loc_4667C1

loc_4667BA:
mov     edx, [esp+58h+var_1C]
add     edx, 14h

loc_4667C1:
mov     eax, 0D0h
call    sub_4D8BC3

loc_4667CB:
add     esp, 44h
jmp     loc_465B51
sub_466610 endp




sub_4667D3 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
call    sub_4EE133
mov     dword ptr [eax+4], 2C808080h
mov     ebx, [edx]
sar     ebx, 10h
shl     ebx, 10h
movsx   ecx, word ptr [edx]
and     ecx, 0FFFFh
or      ecx, ebx
mov     [eax+8], ecx
mov     edx, [edx+2]
sar     edx, 10h
mov     [eax+10h], edx
mov     dword ptr [eax+0Ch], 3D0840C0h
mov     dword ptr [eax+14h], 0E40DFh
mov     dword ptr [eax+1Ch], 5FC0h
mov     dword ptr [eax+24h], 5FDFh
mov     dword ptr [eax+18h], 40h ; '@'
mov     dword ptr [eax+20h], 8
pop     edx
pop     ecx
pop     ebx
retn
sub_4667D3 endp




sub_466831 proc near
push    ebx
push    ecx
mov     ecx, eax
mov     bx, [edx+0Eh]
cmp     bx, 8Ah
jge     loc_46695A
mov     eax, ebx
cmp     bx, 49h ; 'I'
jb      short loc_466894
jbe     loc_46692B
cmp     bx, 6Ah ; 'j'
jb      short loc_466879
jbe     loc_466934
cmp     bx, 75h ; 'u'
jb      loc_466953
jbe     short loc_4668CD
cmp     bx, 7Ah ; 'z'
jz      loc_46693C
jmp     loc_466953

loc_466879:
cmp     bx, 59h ; 'Y'
jb      loc_466953
jbe     loc_466923
cmp     bx, 5Ah ; 'Z'
jz      short loc_4668F2
jmp     loc_466953

loc_466894:
cmp     bx, 30h ; '0'
jb      short loc_4668B1
jbe     short loc_4668E3
cmp     bx, 31h ; '1'
jbe     short loc_46690A
cmp     bx, 41h ; 'A'
jz      loc_466923
jmp     loc_466953

loc_4668B1:
test    bx, bx
jbe     short loc_4668C1
cmp     bx, 15h
jz      short loc_4668D8
jmp     loc_466953

loc_4668C1:
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0

loc_4668CD:
mov     word ptr [edx+16h], 0FFFCh
jmp     loc_466953

loc_4668D8:
mov     word ptr [edx+16h], 0
jmp     loc_466953

loc_4668E3:
or      byte ptr [edx+4], 8
mov     word ptr [edx+16h], 4
jmp     loc_466953

loc_4668F2:
and     byte ptr [edx+4], 0F7h
mov     word ptr [edx+16h], 0
cmp     word ptr [ecx+14h], 0
jge     short loc_466943
mov     ecx, 1
jmp     short loc_46694F

loc_46690A:
cmp     word ptr [ecx+14h], 0
jge     short loc_466918

loc_466911:
mov     ecx, 4
jmp     short loc_46691D

loc_466918:
mov     ecx, 0FFFFFFFCh

loc_46691D:
mov     [edx+12h], cx
jmp     short loc_466953

loc_466923:
mov     word ptr [edx+12h], 0
jmp     short loc_466953

loc_46692B:
cmp     word ptr [ecx+14h], 0
jle     short loc_466911
jmp     short loc_466918

loc_466934:
mov     word ptr [edx+14h], 0
jmp     short loc_466953

loc_46693C:
cmp     word ptr [ecx+14h], 0
jge     short loc_46694A

loc_466943:
mov     ecx, 0FFFFFFFFh
jmp     short loc_46694F

loc_46694A:
mov     ecx, 1

loc_46694F:
mov     [edx+14h], cx

loc_466953:
inc     word ptr [edx+0Eh]
pop     ecx
pop     ebx
retn

loc_46695A:
or      byte ptr [edx+4], 40h
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+0Eh], 0
inc     byte ptr [ecx+0Bh]
pop     ecx
pop     ebx
retn
sub_466831 endp




sub_46697C proc near
push    ebx
push    ecx
mov     ecx, eax
mov     bx, [edx+0Eh]
cmp     bx, 8Ah
jge     loc_466A9C
mov     eax, ebx
cmp     bx, 49h ; 'I'
jb      short loc_4669E3
jbe     loc_466A67
cmp     bx, 65h ; 'e'
jb      short loc_4669C4
jbe     loc_466A40
cmp     bx, 6Ah ; 'j'
jb      loc_466A95
jbe     short loc_466A18
cmp     bx, 7Ah ; 'z'
jz      loc_466A7E
jmp     loc_466A95

loc_4669C4:
cmp     bx, 59h ; 'Y'
jb      loc_466A95
jbe     loc_466A5F
cmp     bx, 5Ah ; 'Z'
jz      loc_466A70
jmp     loc_466A95

loc_4669E3:
cmp     bx, 25h ; '%'
jb      short loc_466A02
jbe     short loc_466A34
cmp     bx, 31h ; '1'
jb      loc_466A95
jbe     short loc_466A46
cmp     bx, 41h ; 'A'
jz      short loc_466A5F
jmp     loc_466A95

loc_466A02:
test    bx, bx
jbe     short loc_466A12
cmp     bx, 20h ; ' '
jz      short loc_466A29
jmp     loc_466A95

loc_466A12:
mov     word ptr [edx+12h], 0

loc_466A18:
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0FFFDh
jmp     loc_466A95

loc_466A29:
mov     word ptr [edx+16h], 0
jmp     loc_466A95

loc_466A34:
or      byte ptr [edx+4], 8
mov     word ptr [edx+16h], 3
jmp     short loc_466A95

loc_466A40:
and     byte ptr [edx+4], 0F7h
jmp     short loc_466A29

loc_466A46:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A54

loc_466A4D:
mov     ecx, 4
jmp     short loc_466A59

loc_466A54:
mov     ecx, 0FFFFFFFCh

loc_466A59:
mov     [edx+12h], cx
jmp     short loc_466A95

loc_466A5F:
mov     word ptr [edx+12h], 0
jmp     short loc_466A95

loc_466A67:
cmp     word ptr [ecx+14h], 0
jle     short loc_466A4D
jmp     short loc_466A54

loc_466A70:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A85
mov     ecx, 1
jmp     short loc_466A91

loc_466A7E:
cmp     word ptr [ecx+14h], 0
jge     short loc_466A8C

loc_466A85:
mov     ecx, 0FFFFFFFFh
jmp     short loc_466A91

loc_466A8C:
mov     ecx, 1

loc_466A91:
mov     [edx+14h], cx

loc_466A95:
inc     word ptr [edx+0Eh]
pop     ecx
pop     ebx
retn

loc_466A9C:
or      byte ptr [edx+4], 40h
mov     word ptr [edx+12h], 0
mov     word ptr [edx+14h], 0
mov     word ptr [edx+16h], 0
mov     word ptr [edx+0Eh], 0
inc     byte ptr [ecx+0Bh]
pop     ecx
pop     ebx
retn
sub_46697C endp

word_466ABE dw 0F76Bh
dword_466AC0 dd 0F2B8F448h, 0F254F510h, 56525153h, 0CEC8357h
dd 0E789C289h
mov     esi, offset word_466ABE
movsd
movsd
movsw
cmp     byte ptr [eax+9], 0
jnz     short loc_466AEA
mov     eax, edx
call    sub_466BC6

loc_466AEA:
mov     ecx, [edx+9]
sar     ecx, 18h
mov     eax, edx
call    ds:funcs_466AF2[ecx*4]
cmp     byte ptr [edx+0Ch], 0
jz      short loc_466B49
cmp     byte ptr [edx+0Dh], 0
jz      short loc_466B17
movsx   ax, byte ptr [edx+0Eh]
sub     [edx+16h], ax
movsx   ax, byte ptr [edx+0Fh]
sub     [edx+18h], ax

loc_466B17:
mov     ebx, [edx+9]
sar     ebx, 18h
mov     ecx, ebx
shl     ecx, 3
sub     ecx, ebx
xor     eax, eax
mov     al, [edx+0Bh]
add     ecx, eax
and     ecx, 3Fh
mov     ecx, dword ptr ds:unk_564C32[ecx*2]
sar     ecx, 10h
shl     ecx, 4
sar     ecx, 0Ch
mov     eax, [esp+ebx*2-2]
sar     eax, 10h
add     eax, ecx
jmp     short loc_466B95

loc_466B49:
cmp     byte ptr [edx+0Dh], 0
jz      short loc_466B63
movsx   ax, byte ptr [edx+0Eh]
sub     [edx+16h], ax
movsx   ax, byte ptr [edx+0Fh]
sub     [edx+18h], ax
jmp     short loc_466B99

loc_466B63:
mov     ecx, [edx+9]
sar     ecx, 18h
mov     ebx, ecx
mov     eax, ecx
shl     eax, 3
sub     eax, ecx
xor     ebx, ecx
mov     bl, [edx+0Bh]
add     ebx, eax
and     ebx, 3Fh
mov     ebx, dword ptr ds:unk_564C32[ebx*2]
sar     ebx, 10h
shl     ebx, 4
sar     ebx, 0Ch
mov     eax, [esp+ecx*2-2]
sar     eax, 10h
add     eax, ebx

loc_466B95:
mov     [edx+16h], ax

loc_466B99:
lea     edi, [edx+2Ch]
lea     esi, [edx+14h]
movsd
movsd
lea     edi, [edx+34h]
lea     esi, [edx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [edx+5Ch]
lea     esi, [edx+54h]
movsd
movsd
inc     byte ptr [edx+0Bh]
mov     eax, edx
call    sub_4DEADD
add     esp, 0Ch
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn



sub_466BC6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
lea     edx, [ecx+3]
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Dh], 0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 0
mov     byte ptr [ecx+0Bh], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_466BC6 endp




sub_466C17 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466C48
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
cmp     ds:byte_560BE4, 2
jnz     short loc_466C41
inc     byte ptr [ecx+0Dh]
jmp     short loc_466C45

loc_466C41:
mov     byte ptr [ecx+0Dh], 0

loc_466C45:
inc     byte ptr [ecx+0Ah]

loc_466C48:
cmp     byte ptr [esi+8], 2
jnz     short loc_466C5B
cmp     dword ptr [esi+10h], 0DEh
jnz     short loc_466C5B
mov     byte ptr [ecx+0Dh], 0

loc_466C5B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466C17 endp




sub_466C60 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466C7F
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466C7F:
cmp     byte ptr [esi+8], 2
jnz     short loc_466CA1
mov     edx, [esi+10h]
cmp     edx, 64h ; 'd'
jnz     short loc_466C95
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466C95:
cmp     edx, 17Ch
jnz     short loc_466CA1
mov     byte ptr [ecx+0Dh], 0

loc_466CA1:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466C60 endp




sub_466CA6 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466CC5
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466CC5:
cmp     byte ptr [esi+8], 2
jnz     short loc_466CE7
mov     edx, [esi+10h]
cmp     edx, 64h ; 'd'
jnz     short loc_466CDB
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466CDB:
cmp     edx, 118h
jnz     short loc_466CE7
mov     byte ptr [ecx+0Dh], 0

loc_466CE7:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466CA6 endp




sub_466CEC proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466D0B
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466D0B:
cmp     byte ptr [esi+8], 2
jnz     short loc_466D2D
mov     edx, [esi+10h]
cmp     edx, 1Eh
jnz     short loc_466D21
inc     byte ptr [ecx+0Dh]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_466D21:
cmp     edx, 8Ch
jnz     short loc_466D2D
mov     byte ptr [ecx+0Dh], 0

loc_466D2D:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_466CEC endp




sub_466D32 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_466D4B
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_466D4B:
pop     edx
pop     ecx
pop     ebx
retn
sub_466D32 endp




sub_466D4F proc near
push    ecx
push    edx
push    esi
push    edi
lea     edx, [eax+378h]
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
mov     word ptr [eax+15Eh], 4210h
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_466D81[ecx*4]
mov     dword ptr [edx+8], 0
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_466D4F endp




sub_466D94 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+378h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
cmp     ds:byte_77E7D4, 0Ah
jnz     short loc_466DCF
cmp     byte ptr ds:dword_77E7D5, 0
jnz     short loc_466DCF
xor     edx, edx
mov     eax, ecx
call    sub_4DD107
jmp     short loc_466DD8

loc_466DCF:
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8

loc_466DD8:
mov     dword ptr [ecx+158h], 3000300h
mov     dword ptr [ecx+15Ch], 300h
mov     word ptr [ebx+44h], 0
mov     byte ptr [ebx+4Ah], 8
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 0
mov     word ptr [ebx+28h], 2
mov     word ptr [ebx+2Ah], 9
mov     word ptr [ebx+2Ch], 4
mov     byte ptr [ebx+50h], 0
mov     byte ptr [ebx+53h], 0
mov     byte ptr [ebx+54h], 0
mov     byte ptr [ebx+4Eh], 0
mov     byte ptr [ebx+48h], 0
mov     byte ptr [ebx+49h], 0
mov     word ptr [ebx+40h], 0
xor     eax, eax
mov     al, [ecx+3]
test    ax, 0FFFFh
jz      short loc_466E49
cmp     al, 1
jnz     short loc_466E49
mov     word ptr [ecx+44h], 0A0h

loc_466E49:
mov     word ptr [ebx+42h], 0
lea     eax, [ebx+18h]
mov     ebx, 0FFFFFFA0h
mov     edx, 0Bh
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     ebx, ds:dword_55A10C
mov     eax, [ebx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+0ACh], 0
mov     al, [ecx+0ACh]
mov     [ecx+0ADh], al
mov     byte ptr [ecx+8], 1
mov     byte ptr [ecx+9], 0
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_516D78
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE9BA
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_466D94 endp

db 8Dh, 40h, 0
jpt_466FDE dd offset loc_466FE5 ; jump table for switch statement
dd offset loc_466FE5
dd offset loc_466FF4
dd offset loc_467001



sub_466EE7 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+378h]
mov     ecx, offset byte_5F8364
add     eax, 390h
mov     edx, esi
call    sub_4E19CA
test    eax, eax
jnz     short loc_466F0F
and     byte ptr [edi+4Ah], 0EFh
jmp     short loc_466F13

loc_466F0F:
or      byte ptr [edi+4Ah], 10h

loc_466F13:
mov     dx, [edi+40h]
test    dx, dx
jz      short loc_466F23
mov     ebx, edx
dec     ebx
mov     [edi+40h], bx

loc_466F23:
mov     eax, [edi+8]
and     eax, 0FFFFFFh
jz      loc_467036
mov     dx, [esi+6Eh]
mov     [esi+0B2h], dx
sub     edx, eax
mov     [esi+6Eh], dx
test    dx, dx
jg      short loc_466F54
and     byte ptr [edi+4Ah], 0F7h
mov     byte ptr [esi+9], 6
jmp     loc_467036

loc_466F54:
cmp     byte ptr [ecx+76h], 0
jz      short loc_466F68
mov     edx, [ecx+0C0h]
cmp     esi, edx
jz      loc_467020

loc_466F68:
mov     cx, [edi+40h]
add     ecx, eax
mov     [edi+40h], cx
mov     bl, [edi+4Ah]
test    bl, 4
jnz     loc_467016
xor     eax, eax
mov     al, [esi+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+9]
and     eax, 0FFh
xor     edx, edx
mov     dx, cx
cmp     edx, eax
jl      loc_467016
mov     bh, bl
or      bh, 4
mov     [edi+4Ah], bh
mov     word ptr [edi+40h], 0
mov     al, [esi+9]
mov     [edi+4Ch], al
mov     byte ptr [esi+9], 5
mov     ebx, [esi+54h]
sar     ebx, 10h
lea     edx, [edi+10h]
lea     eax, [esi+14h]
mov     ecx, 1
call    sub_4DE726
xor     ax, ax
mov     ecx, eax
shr     ecx, 10h
cmp     ecx, 3          ; switch 4 cases
ja      short def_466FDE ; jumptable 00466FDE default case
mov     eax, ecx
jmp     jpt_466FDE[eax*4] ; switch jump

loc_466FE5:             ; jumptable 00466FDE cases 0,1
mov     [esi+0Ah], cl
mov     byte ptr [edi+4Bh], 8
mov     word ptr [esi+44h], 8Ch
jmp     short def_466FDE ; jumptable 00466FDE default case

loc_466FF4:             ; jumptable 00466FDE case 2
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 3
jmp     short def_466FDE ; jumptable 00466FDE default case

loc_467001:             ; jumptable 00466FDE case 3
mov     byte ptr [esi+0Ah], 2
mov     byte ptr [esi+0ACh], 2

def_466FDE:             ; jumptable 00466FDE default case
lea     edx, [esi+14h]
mov     eax, 0A2h
jmp     short loc_467028

loc_467016:
lea     edx, [esi+14h]
mov     eax, 0A0h
jmp     short loc_467028

loc_467020:
add     edx, 14h
mov     eax, 0A0h

loc_467028:
call    sub_4D8BC3
mov     word ptr [esi+15Eh], 7FFFh

loc_467036:
cmp     byte ptr ds:dword_560BDC, 0
jnz     short loc_46704D
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_467046[edx*4]

loc_46704D:
mov     eax, esi
call    sub_4DEB53
mov     ax, [edi+44h]
mov     ds:word_560E16, ax
mov     eax, esi
call    sub_4DF795
test    byte ptr [edi+4Ah], 8
jz      short loc_467081
mov     ecx, 1000008h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697

loc_467081:
test    byte ptr [esi], 2
jz      short loc_467099
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0A0h
mov     eax, esi
call    sub_4ED88B

loc_467099:
test    byte ptr [edi+4Ah], 8
jz      loc_46752C
mov     ax, [esi+190h]
mov     [edi], ax
mov     cx, [esi+192h]
sub     ecx, 8Ch
mov     [edi+2], cx
mov     ax, [esi+194h]
mov     [edi+4], ax
push    0
push    offset unk_800000
xor     eax, eax
mov     ax, [edi+42h]
or      eax, 4080000h
push    eax
lea     eax, [edi+8]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 118h
mov     eax, edi
call    sub_4E01FC
jmp     loc_46752C
sub_466EE7 endp



; Attributes: thunk

sub_4670FE proc near
jmp     sub_4DE2F6
sub_4670FE endp




sub_467103 proc near
push    edx
lea     edx, [eax+378h]
test    byte ptr [eax+3], 0F0h
jnz     short loc_46711C
test    byte ptr [edx+4Ah], 10h
jz      short loc_467132
mov     byte ptr [eax+9], 1
pop     edx
retn

loc_46711C:
test    byte ptr [edx+4Ah], 10h
jz      short loc_467132
mov     byte ptr [eax+9], 2
movsx   ax, byte ptr [eax+0Dh]
imul    eax, 3Ch ; '<'
mov     [edx+46h], ax

loc_467132:
pop     edx
retn
sub_467103 endp




sub_467134 proc near

var_20= dword ptr -20h
var_1C= word ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
lea     esi, [eax+378h]
mov     al, [eax+3]
and     al, 0Fh
lea     ebp, [edi+14h]
jnz     loc_467275
test    byte ptr [esi+4Ah], 10h
jz      loc_467528
mov     ax, [edi+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 6
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     [esp+20h+var_20], eax
mov     eax, [esp+20h+var_20]
mov     [esp+20h+var_1C], ax
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
mov     ax, [edi+56h]
mov     ecx, [esp+20h+var_20]
add     eax, ecx
and     ah, 0Fh
mov     [edi+56h], ax
test    cx, cx
jz      short loc_4671E1
mov     cl, [esi+48h]
test    cl, cl
jnz     short loc_4671D8
mov     edx, ebp
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_4671E5

loc_4671D8:
mov     ch, cl
dec     ch
mov     [esi+48h], ch
jmp     short loc_4671E5

loc_4671E1:
mov     byte ptr [esi+48h], 0

loc_4671E5:
test    bx, bx
jz      short loc_46720D
mov     al, [esi+49h]
test    al, al
jnz     short loc_467204
lea     edx, [edi+14h]
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_467211

loc_467204:
mov     ah, al
dec     ah
mov     [esi+49h], ah
jmp     short loc_467211

loc_46720D:
mov     byte ptr [esi+49h], 0

loc_467211:
movsx   eax, bx
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_467240
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_467259

loc_467240:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_467259:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
jmp     loc_467521

loc_467275:
cmp     al, 1
jnz     loc_467421
test    byte ptr [esi+4Ah], 10h
jz      loc_467528
test    byte ptr [esi+4Eh], 8
jnz     short loc_4672BA
mov     ax, [edi+56h]
and     ah, 0Fh
movsx   ebx, ax
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     [esp+20h+var_1C], ax
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
jmp     short loc_4672C1

loc_4672BA:
xor     eax, eax
mov     [esp+20h+var_1C], ax

loc_4672C1:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
lea     ebp, [edi+14h]
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
cmp     [esp+20h+var_1C], 0
jz      short loc_467315
mov     ch, [esi+48h]
test    ch, ch
jnz     short loc_46730C
mov     edx, ebp
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_467319

loc_46730C:
mov     al, ch
dec     al
mov     [esi+48h], al
jmp     short loc_467319

loc_467315:
mov     byte ptr [esi+48h], 0

loc_467319:
test    bx, bx
jz      short loc_467341
mov     ah, [esi+49h]
test    ah, ah
jnz     short loc_467338
lea     edx, [edi+14h]
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_467345

loc_467338:
mov     dl, ah
dec     dl
mov     [esi+49h], dl
jmp     short loc_467345

loc_467341:
mov     byte ptr [esi+49h], 0

loc_467345:
cmp     [esp+20h+var_1C], 0
jz      short loc_4673A1
mov     edx, [esp+20h+var_20+2]
sar     edx, 10h
movsx   eax, bx
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_46737C
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_467395

loc_46737C:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_467395:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax

loc_4673A1:
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
mov     word ptr [edi+44h], 0A0h
mov     dh, [esi+48h]
test    dh, dh
jnz     short loc_4673CC
lea     edx, [edi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 10h
jmp     short loc_4673D3

loc_4673CC:
mov     bl, dh
dec     bl
mov     [esi+48h], bl

loc_4673D3:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B
mov     eax, edi
call    sub_42DE56
mov     edx, eax
test    ah, 30h
jnz     short loc_467409
mov     eax, edi
call    sub_42C592
mov     [edi+16h], ax
mov     eax, [edi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [edi+20h], eax

loc_467409:
test    dh, 0Fh
jz      loc_467521
mov     byte ptr [edi+9], 4
mov     word ptr [esi+46h], 3Ch ; '<'
jmp     loc_467528

loc_467421:
cmp     al, 2
jnz     loc_467528
movsx   ax, byte ptr [edi+0Eh]
add     ax, [edi+56h]
and     ah, 0Fh
mov     [edi+56h], ax
mov     edx, [edi+54h]
sar     edx, 10h
mov     ebx, [esi+42h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
mov     ebx, eax
test    ax, ax
jz      short loc_467487
mov     ah, [esi+49h]
test    ah, ah
jnz     short loc_46747E
mov     edx, ebp
mov     eax, 0DCh
call    sub_4D8BC3
mov     byte ptr [esi+49h], 8
jmp     short loc_46748B

loc_46747E:
mov     dl, ah
dec     dl
mov     [esi+49h], dl
jmp     short loc_46748B

loc_467487:
mov     byte ptr [esi+49h], 0

loc_46748B:
mov     eax, [edi+0Bh]
sar     eax, 18h
movsx   edx, bx
imul    edx, eax
lea     eax, [edi+14h]
test    edx, edx
jle     short loc_4674B9
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 6
jmp     short loc_4674D2

loc_4674B9:
mov     ebx, [edi+54h]
sar     ebx, 10h
mov     edx, [esi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 18h

loc_4674D2:
mov     edx, (offset dword_5F8376+2)
call    sub_4DE552
mov     ebx, eax
add     bx, [esi+44h]
and     bh, 0Fh
mov     [esi+44h], bx
mov     word ptr [edi+44h], 0A0h
mov     dh, [esi+48h]
test    dh, dh
jnz     short loc_467509
lea     edx, [edi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [esi+48h], 18h
jmp     short loc_467510

loc_467509:
mov     bl, dh
dec     bl
mov     [esi+48h], bl

loc_467510:
mov     edx, [edi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, edi
call    sub_4DD43B

loc_467521:
mov     eax, edi
call    sub_467B19

loc_467528:
add     esp, 8

loc_46752B:
pop     ebp

loc_46752C:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_467134 endp




sub_467532 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+378h]
cmp     word ptr [edi+46h], 0
jz      loc_4675EF
mov     al, [edi+4Bh]
and     al, 18h
cmp     al, 18h
jnz     short loc_467561
lea     edx, [esi+14h]
mov     eax, 0DBh
call    sub_4D8BC3

loc_467561:
mov     ax, [esi+56h]
and     ah, 0Fh
movsx   ebx, ax
lea     ebp, [esi+14h]
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     edx, [edi+42h]
sar     edx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     ecx, 0Ch
mov     edx, (offset dword_5F8376+2)
mov     eax, ebp
call    sub_4DE552
add     ax, [edi+44h]
and     ah, 0Fh
mov     [edi+44h], ax
mov     word ptr [esi+44h], 0A0h
mov     edx, [esi+42h]
sar     edx, 10h
xor     ecx, ecx
xor     ebx, ebx
mov     eax, esi
call    sub_4DD43B
dec     word ptr [edi+46h]
test    byte ptr [edi+4Ah], 10h
jz      loc_46752B
mov     byte ptr [esi+9], 1
mov     eax, esi
call    sub_467134
jmp     loc_46752B

loc_4675EF:
mov     byte ptr [eax+9], 0
mov     byte ptr [edi+48h], 0
call    sub_467103
jmp     loc_46752B
sub_467532 endp




sub_467601 proc near

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
mov     ebp, eax
add     eax, 378h
mov     [esp+24h+var_1C], eax
mov     byte ptr [eax+48h], 0
add     eax, 30h ; '0'
mov     [esp+24h+var_24], eax
mov     eax, [esp+24h+var_1C]
add     eax, 28h ; '('
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      loc_467858
mov     edx, [esp+24h+var_1C]
mov     ch, [edx+53h]
test    ch, ch
jnz     loc_4677E0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
call    sub_4DE043
mov     [esp+24h+var_20], eax
test    eax, eax
jz      loc_467850
lea     edx, [ebp+14h]
mov     eax, 0DDh
call    sub_4D8BC3
mov     eax, [esp+24h+var_20]
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 1
mov     [eax+4], ch
mov     byte ptr [eax+0Fh], 3
mov     ax, [ebp+198h]
mov     edx, [esp+24h+var_20]
mov     [edx+14h], ax
mov     ax, [ebp+19Ah]
sub     eax, 41h ; 'A'
mov     [edx+16h], ax
mov     ax, [ebp+19Ch]
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
push    0
push    0
mov     edx, [ebp+54h]
sar     edx, 10h
mov     ebx, [esp+2Ch+var_1C]
mov     ebx, [ebx+42h]
sar     ebx, 10h
add     ebx, edx
and     ebx, 0FFFh
mov     edx, [esp+2Ch+var_20]
add     edx, 1Ch
mov     eax, [esp+2Ch+var_20]
add     eax, 14h
mov     ecx, 0C00h
call    sub_4DD4C5
mov     edi, offset dword_5F8428
mov     esi, [esp+24h+var_20]
lea     esi, [esi+14h]
movsd
movsd
mov     eax, ds:dword_5F8424+2
sar     eax, 10h
shl     eax, 10h
mov     edx, [esp+24h+var_1C]
mov     [edx+30h], eax
mov     eax, ds:dword_5F8428
sar     eax, 10h
shl     eax, 10h
mov     [edx+34h], eax
mov     eax, ds:dword_5F8428+2
sar     eax, 10h
shl     eax, 10h
mov     [edx+38h], eax
push    0
push    0
mov     eax, [ebp+54h]
sar     eax, 10h
mov     ebx, [edx+42h]
sar     ebx, 10h
add     ebx, eax
and     ebx, 0FFFh
mov     ebp, offset byte_5F8364
add     ebp, 0C4h
mov     ecx, 2000h
mov     edx, [esp+2Ch+var_24]
mov     eax, ebp
call    sub_4DD4C5
add     word ptr ds:dword_5F8428+2, 50h ; 'P'
mov     ebx, 30h ; '0'
mov     edx, ebp
mov     eax, [esp+24h+var_20]
call    sub_4DDC7D
call    sub_4DE13B
test    eax, eax
jz      loc_467850
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 0Fh
mov     byte ptr [eax+3], 3
mov     byte ptr [eax+0Ch], 1
mov     edx, [esp+24h+var_20]
mov     dx, [edx+14h]
mov     [eax+1Ch], dx
mov     edx, [esp+24h+var_20]
mov     dx, [edx+16h]
mov     [eax+1Eh], dx
mov     edx, [esp+24h+var_20]
mov     dx, [edx+18h]
mov     [eax+20h], dx
jmp     loc_467850

loc_4677E0:
mov     bl, ch
dec     bl
mov     [edx+53h], bl
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [edx+42h]
sar     edx, 10h
add     edx, ebx
push    edx
mov     ecx, [esp+28h+var_24]
mov     ebx, eax
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jnz     loc_467850

loc_467810:
mov     byte ptr [ebp+0ACh], 0
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE9BA
mov     al, [ebp+0ACh]
mov     [ebp+0ADh], al
mov     eax, [esp+24h+var_1C]
mov     al, [eax+4Ch]
mov     [ebp+9], al
mov     eax, [esp+24h+var_1C]
mov     al, [eax+4Dh]
mov     [ebp+0Ah], al
mov     eax, [esp+24h+var_1C]
mov     byte ptr [eax+53h], 1Eh

loc_467850:
add     esp, 0Ch
jmp     loc_46752B

loc_467858:
mov     edx, [ebp+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_467850
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+42h]
sar     edx, 10h
add     edx, ebx
push    edx
mov     ecx, [esp+28h+var_24]
mov     ebx, eax
mov     edx, offset byte_5F8364
mov     eax, ebp
call    sub_4DD830
test    al, 2
jz      short loc_467810
mov     eax, [esp+24h+var_1C]
mov     bl, [eax+52h]
test    bl, bl
jnz     loc_467810
or      byte ptr [eax+4Eh], 4
mov     [ebp+0ADh], bl
mov     byte ptr [ebp+0ACh], 1
dec     byte ptr [eax+52h]
jmp     short loc_467850
sub_467601 endp




sub_4678B4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+378h]
cmp     word ptr [edi+46h], 0
jz      short loc_467936
mov     ah, [edi+48h]
test    ah, ah
jnz     short loc_4678E2
lea     edx, [esi+14h]
mov     eax, 0DBh
call    sub_4D8BC3
mov     byte ptr [edi+48h], 30h ; '0'
jmp     short loc_4678E9

loc_4678E2:
mov     dl, ah
dec     dl
mov     [edi+48h], dl

loc_4678E9:
push    0
push    0
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h
lea     edx, [esi+1Ch]
lea     eax, [esi+14h]
call    sub_4DD4C5
mov     eax, esi
call    sub_42DE56
test    ah, 30h
jnz     short loc_46792D
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax

loc_46792D:
dec     word ptr [edi+46h]
jmp     loc_46752C

loc_467936:
mov     byte ptr [eax+9], 1
mov     byte ptr [edi+4Eh], 0
mov     byte ptr [edi+53h], 0
jmp     loc_46752C
sub_4678B4 endp




sub_467947 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
add     eax, 378h
mov     byte ptr [eax+48h], 0
mov     dl, [esi+0Ah]
lea     edi, [esi+14h]
lea     ebp, [esi+1Ch]
cmp     dl, 1
jb      short loc_467976
jbe     short loc_4679C8
cmp     dl, 2
jz      loc_4679F4
jmp     loc_467A44

loc_467976:
test    dl, dl
jnz     loc_467A44
mov     dl, [eax+4Bh]
test    dl, dl
jz      short loc_4679B5
push    0
push    0
mov     bl, dl
dec     bl
mov     [eax+4Bh], bl
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
add     ebx, 800h

loc_4679A2:
mov     edx, ebp
mov     eax, edi
call    sub_4DD4C5
sub     word ptr [esi+44h], 0Ah
jmp     loc_467A44

loc_4679B5:
mov     byte ptr [esi+9], 1
mov     [eax+4Eh], dl
mov     [eax+53h], dl

loc_4679BF:
and     byte ptr [eax+4Ah], 0FBh
jmp     loc_467A44

loc_4679C8:
mov     bh, [eax+4Bh]
test    bh, bh
jz      short loc_4679E8
push    0
push    0
mov     ch, bh
dec     ch
mov     [eax+4Bh], ch
mov     ecx, [esi+42h]
sar     ecx, 10h
mov     ebx, [esi+54h]
sar     ebx, 10h
jmp     short loc_4679A2

loc_4679E8:
mov     byte ptr [esi+9], 1
mov     [eax+4Eh], bh
mov     [eax+53h], bh
jmp     short loc_4679BF

loc_4679F4:
mov     dl, [esi+0ADh]
cmp     dl, [esi+0ACh]
jnz     short loc_467A27
mov     edx, [esi+0A4h]
sar     edx, 18h
cmp     edx, 0FFFFFFFFh
jnz     short loc_467A44
mov     byte ptr [esi+9], 1
mov     byte ptr [eax+4Eh], 0
mov     byte ptr [eax+53h], 0
and     byte ptr [eax+4Ah], 0FBh
mov     byte ptr [esi+0ACh], 0

loc_467A27:
xor     edx, edx
mov     dl, [esi+0ACh]
xor     ebx, ebx
mov     eax, esi
call    sub_4DE9BA
mov     al, [esi+0ACh]
mov     [esi+0ADh], al

loc_467A44:
mov     eax, esi
call    sub_42DE56
test    ah, 30h
jnz     loc_46752B
mov     eax, esi
call    sub_42C592
mov     [esi+16h], ax
mov     eax, [esi+14h]
sar     eax, 10h
shl     eax, 10h
mov     [esi+20h], eax
jmp     loc_46752B
sub_467947 endp




sub_467A70 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
call    sub_4DE13B
test    eax, eax
jz      short loc_467AA4
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ebp+198h]
movsd
movsd
lea     edx, [ebp+190h]
mov     eax, ebp
call    sub_4AF9F8

loc_467AA4:
mov     eax, ebp
call    sub_432EAB
mov     byte ptr [ebp+0], 1
mov     byte ptr [ebp+2], 0
mov     byte ptr [ebp+3], 1
mov     byte ptr [ebp+4], 1
mov     dword ptr [ebp+8], 0
mov     dword ptr [ebp+0Ch], 0
lea     edi, [ebp+14h]
lea     esi, [ebp+1A0h]
movsd
movsd
mov     eax, [ebp+196h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+1Ch], eax
mov     eax, [ebp+198h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     eax, [ebp+19Ah]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+24h], eax
xor     ecx, ecx
mov     ebx, 0FFFFFC00h
mov     edx, 0FFFFFD00h
mov     eax, ebp
call    sub_4DD43B
jmp     loc_46752B
sub_467A70 endp




sub_467B19 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
lea     ebp, [eax+378h]
mov     [esp+20h+var_1C], offset byte_5F8364
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     edi, eax
lea     edi, [edi+0C4h]
mov     esi, eax
lea     esi, [esi+198h]
movsd
movsd
cmp     dword ptr [eax+80h], offset unk_800000
jnb     short loc_467BBB
test    byte ptr [eax+6], 80h
jz      short loc_467BBB
mov     ecx, [eax+54h]
sar     ecx, 10h
mov     eax, [ebp+42h]
sar     eax, 10h
add     eax, ecx
push    eax
lea     ecx, [ebp+30h]
lea     ebx, [ebp+28h]
mov     edx, offset byte_5F8364
mov     eax, [esp+24h+var_20]
call    sub_4DD830
test    al, 2
jz      short loc_467BAD
cmp     byte ptr [ebp+53h], 0
jnz     short loc_467BAD
mov     eax, [esp+20h+var_20]
mov     al, [eax+9]
mov     [ebp+4Ch], al
mov     eax, [esp+20h+var_20]
mov     al, [eax+0Ah]
mov     [ebp+4Dh], al
mov     eax, [esp+20h+var_20]
mov     byte ptr [eax+9], 3
or      byte ptr [ebp+4Eh], 4
jmp     short loc_467BBB

loc_467BAD:
mov     bl, [ebp+53h]
test    bl, bl
jz      short loc_467BBB
mov     bh, bl
dec     bh
mov     [ebp+53h], bh

loc_467BBB:
mov     eax, [esp+20h+var_20]
cmp     byte ptr [eax+9], 3
jz      short loc_467C04
mov     edi, eax
lea     edi, [edi+0C4h]
mov     esi, eax
lea     esi, [esi+190h]
movsd
movsd
lea     ecx, [ebp+30h]
lea     ebx, [ebp+28h]
mov     edx, [esp+20h+var_1C]
call    sub_4DD6EC
test    al, 2
jz      short loc_467C04
mov     al, [ebp+4Eh]
test    al, 0Ah
jnz     short loc_467C04
mov     ah, al
or      ah, 2
mov     [ebp+4Eh], ah
mov     byte ptr [ebp+50h], 14h
mov     byte ptr [ebp+4Fh], 3
mov     byte ptr [ebp+51h], 0

loc_467C04:
mov     eax, [esp+20h+var_20]
mov     dl, [eax+9]
cmp     dl, 3
jnz     short loc_467C2B
mov     byte ptr [eax+0ACh], 1
and     byte ptr [ebp+4Eh], 0F5h
mov     [ebp+52h], dl
mov     byte ptr [ebp+53h], 0
call    sub_467601
jmp     loc_467528

loc_467C2B:
call    sub_467C35
jmp     loc_467528
sub_467B19 endp




sub_467C35 proc near

var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
lea     edi, [eax+378h]
cmp     dword ptr [eax+80h], 200000h
jnb     short loc_467C57
mov     byte ptr [edi+54h], 1
jmp     short loc_467C5B

loc_467C57:
mov     byte ptr [edi+54h], 0

loc_467C5B:
mov     ah, [edi+4Eh]
test    ah, 0Ah
jz      loc_467DA7
mov     dl, [edi+50h]
test    dl, dl
jnz     loc_467DA0
mov     bl, ah
or      bl, 8
mov     [edi+4Eh], bl
mov     bh, [edi+51h]
test    bh, bh
jnz     loc_467D97
mov     byte ptr [edi+51h], 5
cmp     byte ptr [edi+4Fh], 0
jz      loc_467D91
mov     [esp+18h+var_18], 1

loc_467C97:
call    sub_4DE043
mov     ecx, eax
test    eax, eax
jz      loc_467D7C
lea     edx, [esi+14h]
mov     eax, 0EBh
call    sub_4D8BC3
mov     byte ptr [ecx], 1
mov     byte ptr [ecx+2], 2Eh ; '.'
mov     byte ptr [ecx+3], 42h ; 'B'
mov     ax, [esi+56h]
mov     [ecx+64h], ax
mov     ax, [esi+198h]
mov     [ecx+14h], ax
mov     ax, [esi+19Ch]
mov     [ecx+18h], ax
mov     eax, [ecx+12h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+1Ch], eax
mov     eax, [ecx+16h]
sar     eax, 10h
shl     eax, 10h
mov     [ecx+24h], eax
lea     eax, [ecx+14h]
lea     edx, [ecx+1Ch]
cmp     byte ptr [edi+54h], 0
jnz     short loc_467D34
mov     bx, [esi+19Ah]
add     ebx, 22h ; '"'
mov     [ecx+16h], bx
mov     ebx, [ecx+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [ecx+20h], ebx
mov     word ptr [ecx+66h], 80h
cmp     [esp+18h+var_18], 0
jz      short loc_467D2D
push    8F0h
jmp     short loc_467D66

loc_467D2D:
push    0FF710h
jmp     short loc_467D66

loc_467D34:
mov     bx, [esi+19Ah]
add     ebx, 78h ; 'x'
mov     [ecx+16h], bx
mov     ebx, [ecx+14h]
sar     ebx, 10h
shl     ebx, 10h
mov     [ecx+20h], ebx
mov     word ptr [ecx+66h], 0
cmp     [esp+18h+var_18], 0
jz      short loc_467D61
push    280h
jmp     short loc_467D66

loc_467D61:
push    0FFD80h

loc_467D66:
push    0
mov     bx, [esi+56h]
and     bh, 0Fh
movsx   ebx, bx
mov     ecx, 800h
call    sub_4DD4C5

loc_467D7C:
mov     ch, [esp+18h+var_18]
dec     ch
mov     [esp+18h+var_18], ch
test    ch, ch
jge     loc_467C97
dec     byte ptr [edi+4Fh]
jmp     short loc_467DA7

loc_467D91:
and     byte ptr [edi+4Eh], 0F5h
jmp     short loc_467DA7

loc_467D97:
mov     cl, bh
dec     cl
mov     [edi+51h], cl
jmp     short loc_467DA7

loc_467DA0:
mov     dh, dl
dec     dh
mov     [edi+50h], dh

loc_467DA7:
add     esp, 4
jmp     loc_46752C
sub_467C35 endp




sub_467DAF proc near

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

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
call    ds:funcs_467DD6[edx*4]
test    byte ptr [ebp+0], 2
jz      short loc_467DF6
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 0Ch
mov     eax, ebp
call    sub_4ED88B
sub_467DAF endp

; START OF FUNCTION CHUNK FOR sub_467DFD
;   ADDITIONAL PARENT FUNCTION sub_467DAF
;   ADDITIONAL PARENT FUNCTION sub_467F7F
;   ADDITIONAL PARENT FUNCTION sub_468619

loc_467DF6:
pop     ebp

loc_467DF7:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_467DFD



sub_467DFD proc near

var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 0Ch
mov     ebp, eax
add     eax, 3A8h
mov     [esp+24h+var_1C], eax
or      byte ptr [ebp+0], 6
mov     word ptr [ebp+54h], 0
mov     word ptr [ebp+58h], 0
mov     word ptr [ebp+64h], 40h ; '@'
xor     edx, edx
mov     eax, ebp
call    sub_4DD0F8
mov     dword ptr [ebp+158h], 2000200h
mov     dword ptr [ebp+15Ch], 200h
mov     word ptr [ebp+15Eh], 4210h
mov     eax, ebp
call    sub_42C592
mov     [ebp+16h], ax
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     dword ptr [ebp+78h], offset unk_516DD4
mov     dword ptr [ebp+10h], offset unk_516DC8
mov     word ptr [ebp+44h], 0Ah
mov     word ptr [ebp+46h], 0
mov     word ptr [ebp+48h], 0
mov     byte ptr [ebp+74h], 0
mov     eax, [esp+24h+var_1C]
mov     word ptr [eax], 0
mov     edi, eax
lea     edi, [edi+8]
lea     esi, [ebp+14h]
movsd
movsd
mov     word ptr [eax+10h], 0FFD0h
mov     word ptr [eax+12h], 0FFB8h
mov     word ptr [eax+14h], 0
mov     word ptr [eax+16h], 48h ; 'H'
mov     dword ptr [eax+4], 8880000h
mov     word ptr [eax+2], 0
add     eax, 20h ; ' '
mov     ebx, 0FFFFFFA0h
xor     edx, edx
call    sub_4E19B9
mov     ecx, [esp+24h+var_1C]
mov     ecx, [ecx+12h]
sar     ecx, 10h
mov     ebx, [esp+24h+var_1C]
mov     ebx, [ebx+10h]
sar     ebx, 10h
mov     edx, [esp+24h+var_1C]
mov     edx, [edx+0Eh]
sar     edx, 10h
mov     eax, [ebp+54h]
sar     eax, 10h
mov     esi, esp
call    sub_4685B8
mov     edi, [esp+24h+var_1C]
lea     edi, [edi+8]
mov     esi, esp
movsd
movsd
mov     ax, [ebp+14h]
mov     edx, [esp+24h+var_1C]
add     [edx+8], ax
mov     ax, [ebp+16h]
add     [edx+0Ah], ax
mov     ax, [ebp+18h]
add     [edx+0Ch], ax
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ebp+6Eh], ax
mov     [ebp+0B0h], ax
mov     [ebp+0B2h], ax
mov     [ebp+9], ah
add     esp, 0Ch
jmp     loc_467DF6
sub_467DFD endp

db 8Bh, 0C0h
jpt_467FA1 dd offset loc_467FA8 ; jump table for switch statement
dd offset loc_467FB2
dd offset loc_467FE1
dd offset loc_468016
dd offset loc_46805B
dd offset loc_468065
dd offset loc_468094
dd offset loc_4680AE
dd offset loc_4681AC
dd offset loc_468094
dd offset loc_4681D9



sub_467F7F proc near

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+3A8h]
mov     ebp, offset byte_5F8364
mov     al, [eax+8]
cmp     al, 0Ah         ; switch 11 cases
ja      def_467FA1      ; jumptable 00467FA1 default case
xor     edx, edx
mov     dl, al
jmp     jpt_467FA1[edx*4] ; switch jump

loc_467FA8:             ; jumptable 00467FA1 case 0
mov     eax, esi
call    sub_467DFD
inc     byte ptr [esi+8]

loc_467FB2:             ; jumptable 00467FA1 case 1
mov     eax, esi
call    sub_4684ED
test    al, al
jz      short loc_467FCA
xor     ebx, ebx
xor     edx, edx
mov     eax, esi
call    sub_4DE96B
jmp     short loc_467FDE

loc_467FCA:
mov     ebx, 10h
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
or      byte ptr [edi], 2

loc_467FDE:
inc     byte ptr [esi+8]

loc_467FE1:             ; jumptable 00467FA1 case 2
mov     ebx, [ebp+184h]
cmp     esi, ebx
jnz     def_467FA1      ; jumptable 00467FA1 default case
mov     eax, ebx
call    sub_468512
test    al, al
jz      short loc_468007
mov     bl, [ebx+8]
inc     bl
mov     [esi+8], bl
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_468007:
mov     dword ptr [ebp+184h], 0
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_468016:             ; jumptable 00467FA1 case 3
mov     eax, ebp
call    sub_4B55D5
test    eax, eax
jz      def_467FA1      ; jumptable 00467FA1 default case
mov     byte ptr ds:dword_5F836C, 3
xor     bl, bl
mov     byte ptr ds:dword_5F836C+1, bl
mov     ds:byte_5F88AC, 30h ; '0'
xor     ecx, ecx
mov     ds:dword_5F8370, ecx
mov     edx, 1
mov     eax, 3FEh
call    sub_4DC979
or      byte ptr [esi], 1
or      byte ptr [esi+6], 1
jmp     short loc_468085

loc_46805B:             ; jumptable 00467FA1 case 4
inc     al
mov     [esi+8], al
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_468065:             ; jumptable 00467FA1 case 5
test    byte ptr [edi], 2
jnz     short loc_46808D
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_4DE96B
lea     edx, [esi+14h]
mov     eax, 103h

loc_468080:
call    sub_4D8BC3

loc_468085:
inc     byte ptr [esi+8]
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_46808D:
inc     al
mov     [esi+8], al
jmp     short loc_468085

loc_468094:             ; jumptable 00467FA1 cases 6,9
cmp     byte ptr [esi+0A7h], 0
jge     short loc_4680A2
inc     al
mov     [esi+8], al

loc_4680A2:
mov     eax, esi
call    sub_4DEADD
jmp     def_467FA1      ; jumptable 00467FA1 default case

loc_4680AE:             ; jumptable 00467FA1 case 7
mov     eax, esi
call    sub_4684ED
test    al, al
jz      loc_468197
lea     eax, [esi+14h]
mov     ch, [esi+0Dh]
test    ch, ch
jnz     short loc_4680DB
mov     ecx, [esi+0Bh]
sar     ecx, 18h

loc_4680CD:
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_468085

loc_4680DB:
cmp     ch, 1
jnz     short loc_4680E4
xor     ecx, ecx
jmp     short loc_4680CD

loc_4680E4:
mov     eax, [esi+0Ah]
sar     eax, 18h
test    al, 80h
jz      short loc_46813E
mov     al, ch
and     al, 7Fh
and     eax, 0FFh
shl     eax, 8
xor     edx, edx
mov     dl, [esi+0Eh]
or      edx, eax
mov     eax, edx
shl     eax, 2
add     edx, eax
add     edx, edx
mov     ecx, 0Ah
mov     eax, edx
sar     edx, 1Fh
idiv    ecx
xor     ecx, ecx
mov     ebx, eax
mov     edx, 1
mov     eax, 2
call    sub_4A6227
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
jmp     loc_468085

loc_46813E:
mov     dh, [esi+0Eh]
cmp     dh, 0FFh
jz      short loc_468197
mov     bl, [esi+0Ch]
cmp     bl, 40h ; '@'
jz      short loc_468153
cmp     bl, 42h ; 'B'
jnz     short loc_468169

loc_468153:
lea     eax, [esi+14h]
mov     ecx, 0Ch
xor     ebx, ebx
mov     edx, 2
call    sub_4A62D4
jmp     short loc_46817B

loc_468169:
xor     ebx, ebx
mov     bl, dh
xor     ecx, ecx
xor     edx, edx
mov     eax, 2
call    sub_4A6227

loc_46817B:
mov     eax, [esi+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E8B8
mov     byte ptr [ebp+548h], 35h ; '5'
jmp     loc_468085

loc_468197:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 2
mov     eax, edx
call    sub_4A6227
jmp     loc_468085

loc_4681AC:             ; jumptable 00467FA1 case 8
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_467FA1 ; jumptable 00467FA1 default case
test    byte ptr [edi], 2
jnz     loc_46808D
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
lea     edx, [esi+14h]
mov     eax, 104h
jmp     loc_468080

loc_4681D9:             ; jumptable 00467FA1 case 10
mov     edx, 2
mov     eax, 3FEh
call    sub_4DC979
mov     eax, ebp
call    sub_4B565A
or      ds:byte_5F8364, 2
xor     edx, edx
mov     ds:dword_5F84E8, edx
and     byte ptr [edi], 0FDh
mov     byte ptr [esi+8], 1

def_467FA1:             ; jumptable 00467FA1 default case
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, esi
call    sub_432697
push    80h
push    0
push    4000000h
lea     eax, [edi+18h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
lea     eax, [esi+14h]
mov     ecx, 8000h
xor     ebx, ebx
mov     edx, 28h ; '('
call    sub_4E01FC
mov     dword ptr [edi+18h], 0
jmp     loc_467DF6
sub_467F7F endp




sub_46824B proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     esi, eax
lea     edi, [eax+3A8h]
mov     al, [eax+0ACh]
mov     [esi+0ADh], al
mov     word ptr [esi+15Eh], 4210h
cmp     byte ptr [esi+8], 0
jz      short loc_468289
lea     eax, [edi+20h]
mov     edx, esi
call    sub_4E19CA
test    eax, eax
jz      short loc_468286
or      byte ptr [edi], 1
jmp     short loc_468289

loc_468286:
and     byte ptr [edi], 0FEh

loc_468289:
xor     edx, edx
mov     dl, [esi+8]
mov     eax, esi
call    ds:funcs_468290[edx*4]
cmp     byte ptr [esi+8], 0
jnz     short loc_4682B5
mov     ecx, 1000000h
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, esi
call    sub_432697
jmp     short loc_4682DC

loc_4682B5:
push    0
push    0
mov     edx, [edi+4]
push    edx
lea     eax, [edi+18h]
push    eax
xor     eax, eax
mov     al, [esi+1]
push    eax
mov     edx, [edi+14h]
sar     edx, 10h
lea     eax, [edi+8]
mov     ecx, 8000h
xor     ebx, ebx
call    sub_4E01FC

loc_4682DC:
mov     al, [esi+0ADh]
cmp     al, [esi+0ACh]
jnz     short loc_4682F1
mov     eax, esi
call    sub_4DEADD

loc_4682F1:
mov     dword ptr [edi+18h], 0
jmp     loc_467DF7
sub_46824B endp

db 8Bh, 0C0h
jpt_468337 dd offset loc_46833E ; jump table for switch statement
dd offset loc_468358
dd offset loc_468386
dd offset loc_468390
dd offset loc_4683C3
dd offset loc_4683D9



sub_468317 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset byte_5F8364
lea     edx, [eax+3A8h]
mov     al, [eax+9]
cmp     al, 5           ; switch 6 cases
ja      def_468337      ; jumptable 00468337 default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_468337[ebx*4] ; switch jump

loc_46833E:             ; jumptable 00468337 case 0
mov     eax, ecx
call    sub_467DFD
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468358:             ; jumptable 00468337 case 1
mov     edx, ds:dword_5F84E8
cmp     ecx, edx
jnz     def_468337      ; jumptable 00468337 default case
mov     eax, edx
call    sub_468512
test    al, al
jz      short loc_468379
inc     byte ptr [edx+9]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468379:
xor     ecx, edx
mov     ds:dword_5F84E8, ecx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468386:             ; jumptable 00468337 case 2
inc     al
mov     [ecx+9], al
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_468390:             ; jumptable 00468337 case 3
mov     edx, ds:off_530065
mov     ebx, 0FFFFFFFFh
mov     eax, 4
call    sub_4A0CDD
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
lea     edx, [ecx+14h]
mov     eax, 103h
call    sub_4D8BC3
inc     byte ptr [ecx+9]

loc_4683C3:             ; jumptable 00468337 case 4
mov     dword ptr [esi+184h], 0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Ah], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4683D9:             ; jumptable 00468337 case 5
mov     ah, [ecx+0Ah]
dec     ah
mov     [ecx+0Ah], ah
jnz     short def_468337 ; jumptable 00468337 default case
mov     byte ptr [ecx+8], 1
mov     [ecx+9], ah
mov     byte ptr [ecx+0Ah], 2Dh ; '-'
mov     dword ptr [edx+4], 48C0002h

def_468337:             ; jumptable 00468337 default case
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_468317 endp




sub_4683FA proc near
push    edx
mov     dl, [eax+9]
test    dl, dl
jbe     short loc_468409
cmp     dl, 1
jz      short loc_46840E
jmp     short loc_46841F

loc_468409:
inc     dl
mov     [eax+9], dl

loc_46840E:
mov     dl, [eax+0Ah]
dec     dl
mov     [eax+0Ah], dl
jnz     short loc_46841F
mov     byte ptr [eax+8], 3
mov     [eax+9], dl

loc_46841F:
call    sub_46856B
pop     edx
retn
sub_4683FA endp

db 90h
jpt_46845D dd offset loc_468464 ; jump table for switch statement
dd offset loc_468470
dd offset loc_468484
dd offset loc_468470
dd offset loc_468484
dd offset loc_468470
dd offset loc_468484
dd offset loc_468493



sub_468447 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+3A8h]
mov     al, [eax+9]
cmp     al, 7           ; switch 8 cases
ja      short def_46845D ; jumptable 0046845D default case
xor     ebx, ebx
mov     bl, al
jmp     jpt_46845D[ebx*4] ; switch jump

loc_468464:             ; jumptable 0046845D case 0
test    byte ptr [ecx], 1
jz      short def_46845D ; jumptable 0046845D default case
inc     al
mov     [edx+9], al
jmp     short def_46845D ; jumptable 0046845D default case

loc_468470:             ; jumptable 0046845D cases 1,3,5
mov     eax, edx
call    sub_468619
test    al, al
jz      short def_46845D ; jumptable 0046845D default case
inc     byte ptr [edx+9]
mov     byte ptr [edx+0Ah], 4
jmp     short def_46845D ; jumptable 0046845D default case

loc_468484:             ; jumptable 0046845D cases 2,4,6
mov     ah, [edx+0Ah]
dec     ah
mov     [edx+0Ah], ah
jnz     short def_46845D ; jumptable 0046845D default case
inc     byte ptr [edx+9]
jmp     short def_46845D ; jumptable 0046845D default case

loc_468493:             ; jumptable 0046845D case 7
mov     byte ptr [edx+8], 1
mov     byte ptr [edx+9], 0
mov     byte ptr [edx+0Ah], 1Eh

def_46845D:             ; jumptable 0046845D default case
mov     eax, edx
call    sub_46856B
pop     edx
pop     ecx
pop     ebx
retn
sub_468447 endp




sub_4684AA proc near
push    ecx
push    edx
push    esi
push    edi
mov     ecx, eax
lea     esi, [eax+3A8h]
call    sub_4DE13B
test    eax, eax
jz      short loc_4684E3
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 0
lea     edi, [eax+48h]
lea     esi, [esi+8]
movsd
movsd
lea     edx, [ecx+14h]
mov     eax, ecx
call    sub_4AF9F8
mov     eax, ecx
call    sub_4DE2F6

loc_4684E3:
pop     edi
pop     esi
pop     edx
pop     ecx
retn
sub_4684AA endp



; Attributes: thunk

sub_4684E8 proc near
jmp     sub_4DE2F6
sub_4684E8 endp




sub_4684ED proc near
push    edx
mov     edx, eax
mov     eax, [eax+9]
sar     eax, 18h
add     eax, 400h
call    sub_47E888
test    eax, eax
jnz     short loc_46850A
cmp     byte ptr [edx+0Eh], 0FFh
jnz     short loc_46850E

loc_46850A:
xor     al, al
pop     edx
retn

loc_46850E:
mov     al, 1
pop     edx
retn
sub_4684ED endp




sub_468512 proc near

var_1C= word ptr -1Ch
var_1A= word ptr -1Ah
var_18= word ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 18h
lea     edi, [eax+0C4h]
lea     esi, [eax+190h]
movsd
movsd
mov     edi, offset dword_5F8428
mov     esi, (offset dword_5F8376+2)
movsd
movsd
mov     [esp+2Ch+var_1C], 2
mov     [esp+2Ch+var_1A], 9
mov     [esp+2Ch+var_18], 4
mov     ecx, esp
lea     ebx, [esp+2Ch+var_1C]
mov     edx, offset byte_5F8364
call    sub_4DD6EC
test    al, 10h
jz      short loc_468561
xor     al, al
jmp     short loc_468563

loc_468561:
mov     al, 1

loc_468563:
add     esp, 18h
jmp     loc_467DF7
sub_468512 endp




sub_46856B proc near
push    ebx
push    ecx
push    edx
lea     edx, [eax+3A8h]
mov     ecx, [edx+18h]
and     ecx, 0FFFFFFh
jz      short loc_4685B4
test    byte ptr [edx+1Bh], 38h
jz      short loc_4685B4
mov     bx, [eax+6Eh]
mov     [eax+0B2h], bx
sub     ebx, ecx
mov     [eax+6Eh], bx
mov     word ptr [edx+2], 0Ah
cmp     word ptr [eax+6Eh], 1
jge     short loc_4685AB
mov     byte ptr [eax+8], 4
mov     byte ptr [eax+9], 0

loc_4685AB:
mov     word ptr [eax+15Eh], 7FFFh

loc_4685B4:
pop     edx
pop     ecx
pop     ebx
retn
sub_46856B endp




sub_4685B8 proc near

var_18= word ptr -18h
var_16= word ptr -16h
var_14= word ptr -14h
var_10= byte ptr -10h

push    edi
push    ebp
sub     esp, 40h
mov     ebp, esi
mov     esi, eax
mov     edi, edx
test    dx, dx
jge     short loc_4685D2
neg     edi
neg     ecx
lea     esi, [eax+800h]

loc_4685D2:
mov     eax, esp
call    sub_4EF184
mov     edx, esp
mov     eax, esi
call    sub_4EF50D
mov     [esp+48h+var_18], cx
mov     [esp+48h+var_16], bx
mov     [esp+48h+var_14], di
mov     edx, edi
neg     edx
mov     [esp+48h+var_14], dx
lea     ebx, [esp+48h+var_10]
lea     edx, [esp+48h+var_18]
mov     eax, esp
call    sub_4EF2DC
mov     edi, ebp
lea     esi, [esp+48h+var_10]
movsd
movsd
mov     eax, ebp
add     esp, 40h
pop     ebp
pop     edi
retn
sub_4685B8 endp




sub_468619 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 00467DF6 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
push    eax
call    sub_4DE043
mov     ebp, eax
mov     [esp+20h+var_1C], eax
test    eax, eax
jz      loc_4686D5
mov     byte ptr [eax], 3
mov     byte ptr [eax+2], 6
mov     byte ptr [eax+3], 0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 6Eh ; 'n'
mov     eax, [esp+20h+var_20]
call    sub_4DD43B
mov     edx, [esp+20h+var_20]
sub     word ptr [edx+16h], 3Ch ; '<'
lea     edi, [ebp+14h]
mov     esi, edx
lea     esi, [esi+14h]
movsd
movsd
mov     edx, [ebp+12h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+1Ch], edx
mov     edx, [ebp+14h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+20h], edx
mov     edx, [ebp+16h]
sar     edx, 10h
shl     edx, 10h
mov     [ebp+24h], edx
mov     edx, [esp+20h+var_20]
mov     dx, [edx+56h]
mov     [ebp+64h], dx
mov     dword ptr [ebp+9Ch], 20h ; ' '
mov     dword ptr [ebp+0A0h], 10h
mov     edi, [esp+20h+var_20]
lea     edi, [edi+14h]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+2Ch]
movsd
movsd
mov     edi, [esp+20h+var_20]
lea     edi, [edi+1Ch]
mov     esi, [esp+20h+var_20]
lea     esi, [esi+34h]
movsd
movsd
movsd
movsd
mov     edx, [esp+20h+var_20]
add     edx, 14h
mov     eax, 0B2h
call    sub_4D8BC3

loc_4686D5:
mov     edx, [esp+20h+var_1C]
test    edx, edx
jz      short loc_4686E2
mov     edx, 1

loc_4686E2:
mov     al, dl
add     esp, 8
jmp     loc_467DF6
sub_468619 endp




sub_4686EC proc near
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
mov     word ptr [eax+15Eh], 4200h
xor     edx, edx
mov     dl, [eax+8]
call    ds:funcs_468717[edx*4]
pop     edi
pop     esi
pop     edx
retn
sub_4686EC endp




sub_468722 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+8], 1
mov     word ptr [ecx+15Eh], 4210h
mov     byte ptr [ecx+74h], 1
mov     dword ptr [ecx+78h], offset unk_516DE0
mov     dword ptr [ecx+10h], offset unk_516DE0
mov     [ecx+0ACh], ah
xor     edx, edx
mov     dl, ah
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     word ptr [ecx+46h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+4Eh], 30h ; '0'
mov     eax, ecx
call    sub_4687E4
pop     edx
pop     ecx
pop     ebx
retn
sub_468722 endp

align 4
jpt_468990 dd offset loc_468997 ; jump table for switch statement
dd offset loc_4689B1
dd offset loc_4689C9
dd offset loc_4689E4



sub_4687E4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     esi, offset byte_5F8364
cmp     word ptr [eax+14h], 0
jle     loc_468887
call    sub_4DE13B
test    eax, eax
jz      short loc_46881B
mov     byte ptr [eax], 5
mov     byte ptr [eax+2], 80h
mov     byte ptr [eax+3], 40h ; '@'
lea     edi, [eax+48h]
lea     esi, [ebp+198h]
movsd
movsd

loc_46881B:
lea     esi, [ebp+198h]
mov     ecx, esi
mov     ebx, 2
mov     edx, 1
xor     eax, eax
call    sub_43C263
mov     ecx, esi
mov     ebx, 2
mov     edx, ebx
xor     eax, eax
call    sub_43C263
mov     ecx, esi
mov     ebx, 4
mov     edx, 3
xor     eax, eax
call    sub_43C263
call    sub_4DE043
test    eax, eax
jz      short loc_468877
mov     byte ptr [eax], 1
mov     byte ptr [eax+2], 2Ah ; '*'
mov     byte ptr [eax+3], 1
lea     edi, [eax+14h]
lea     esi, [ebp+14h]
movsd
movsd
mov     byte ptr [eax+0Ch], 3

loc_468877:
mov     eax, ebp
call    sub_432EAB
mov     byte ptr [ebp+8], 2
jmp     def_468990      ; jumptable 00468990 default case

loc_468887:
mov     eax, 60Ch
call    sub_47E888
test    eax, eax
jz      loc_46891C
cmp     byte ptr [ebp+9], 0
jnz     short loc_468900
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     ax, [ebp+4Eh]
add     [ebp+46h], ax
mov     eax, ebp
call    sub_42DE56
mov     eax, ebp
call    sub_42C592
mov     ebx, eax
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
cmp     eax, 10h
jge     short loc_46891C
mov     byte ptr [ebp+74h], 0
mov     [ebp+16h], bx
mov     eax, [ebp+14h]
sar     eax, 10h
shl     eax, 10h
mov     [ebp+20h], eax
mov     byte ptr [ebp+9], 1
lea     edx, [ebp+14h]
mov     eax, 187h
call    sub_4D8BC3
jmp     short loc_46891C

loc_468900:
mov     ebx, [ebp+44h]
sar     ebx, 10h
mov     edx, [ebp+42h]
sar     edx, 10h
xor     ecx, ecx
mov     eax, ebp
call    sub_4DD43B
mov     eax, ebp
call    sub_42DE56

loc_46891C:
mov     eax, ebp
call    sub_4DEADD
mov     dword ptr [ebp+78h], offset unk_516DEC
mov     eax, ebp
call    sub_431C8C
mov     dword ptr [ebp+78h], offset unk_516DE0
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 1
mov     eax, ebp
call    sub_432697
cmp     byte ptr [ebp+9], 0
jz      short loc_468980
mov     eax, ebp
call    sub_42C592
mov     edx, [ebp+2Ch]
sar     edx, 10h
sub     eax, edx
jz      short loc_468966
add     word ptr [ebp+46h], 0Ch
jmp     short loc_468980

loc_468966:
cmp     word ptr [ebp+46h], 0
jz      short loc_468980
lea     edx, [ebp+14h]
mov     eax, 187h
call    sub_4D8BC3
mov     word ptr [ebp+46h], 0

loc_468980:
mov     al, [ebp+0Ah]
cmp     al, 3           ; switch 4 cases
ja      def_468990      ; jumptable 00468990 default case
and     eax, 0FFh
jmp     jpt_468990[eax*4] ; switch jump

loc_468997:             ; jumptable 00468990 case 0
mov     edx, [esi+184h]
cmp     ebp, edx
jnz     short def_468990 ; jumptable 00468990 default case
mov     dword ptr [esi+184h], 0
mov     byte ptr [edx+0Ah], 2
jmp     short def_468990 ; jumptable 00468990 default case

loc_4689B1:             ; jumptable 00468990 case 1
mov     eax, esi
call    sub_4B55D5
test    eax, eax
jz      short def_468990 ; jumptable 00468990 default case
mov     byte ptr [esi+8], 3
mov     byte ptr [esi+9], 0
inc     byte ptr [ebp+0Ah]
jmp     short def_468990 ; jumptable 00468990 default case

loc_4689C9:             ; jumptable 00468990 case 2
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_468990 ; jumptable 00468990 default case
mov     edx, 1Ah
xor     eax, eax
call    sub_4A0E24
mov     byte ptr [ebp+0Ah], 3
jmp     short def_468990 ; jumptable 00468990 default case

loc_4689E4:             ; jumptable 00468990 case 3
test    byte ptr ds:dword_55BD7C+3, 8
jnz     short def_468990 ; jumptable 00468990 default case
mov     dword ptr [esi+184h], 0
mov     byte ptr [ebp+0Ah], 0

def_468990:             ; jumptable 00468990 default case
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4687E4 endp




sub_468A02 proc near
push    ecx
cmp     eax, ds:dword_5F84E8
jnz     short loc_468A13
xor     ecx, ecx
mov     ds:dword_5F84E8, ecx

loc_468A13:
call    sub_4DE2F6
pop     ecx
retn
sub_468A02 endp




sub_468A1A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+408h]
lea     edx, [eax+1E8h]
lea     ebx, [eax+64h]
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
mov     word ptr [eax+15Eh], 4210h
call    rand_
mov     [edx+2], ax
mov     ah, [ecx+3]
cmp     ah, 2
jnz     short loc_468A6D
cmp     byte ptr [ecx+8], 0
jz      short loc_468A6D
or      [ecx], ah

loc_468A6D:
xor     edx, edx
mov     dl, [ecx+8]
mov     eax, ecx
call    ds:funcs_468A74[edx*4]
cmp     byte ptr [ecx+3], 2
jnz     short loc_468AD8
cmp     byte ptr [ecx+8], 0
jz      short loc_468AD8
cmp     byte ptr [ebx+3], 0
jz      short loc_468AA5
cmp     byte ptr [ebx], 0
jnz     short loc_468AA5
lea     edx, [ecx+14h]
mov     eax, 190h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 0
jmp     short loc_468AAB

loc_468AA5:
cmp     byte ptr [ebx+3], 0
jnz     short loc_468AC1

loc_468AAB:
cmp     byte ptr [ebx], 0
jle     short loc_468AC1
lea     edx, [ecx+14h]
mov     eax, 191h
call    sub_4D8BC3
mov     byte ptr [ebx+3], 1

loc_468AC1:
mov     eax, [ecx+15Ch]
sar     eax, 10h
test    ah, 80h
jz      short loc_468AD8
cmp     byte ptr [ebx+2], 0
jnz     short loc_468AD8
and     byte ptr [ecx], 0FDh

loc_468AD8:
cmp     byte ptr [ecx+3], 2
jnz     short loc_468AF0
test    dword ptr [ebp+8], 0FFFFFFh
jz      short loc_468AF0
mov     word ptr [ecx+15Eh], 7FFFh

loc_468AF0:
mov     dword ptr [ebp+8], 0
jmp     loc_469533
sub_468A1A endp




sub_468AFC proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     esi, [eax+408h]
lea     edi, [eax+0C4h]
lea     ebx, [eax+1E8h]
lea     ebp, [eax+64h]
call    sub_4DF838
or      byte ptr [ecx], 2
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 1000100h
mov     dword ptr [ecx+15Ch], 100h
mov     dword ptr [ecx+64h], 0
mov     dword ptr [ecx+70h], 0
mov     dword ptr [ecx+74h], 0
mov     dword ptr [ecx+78h], offset unk_516E04
mov     byte ptr [esi+3Eh], 0
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Ah]
mov     [ecx+73h], al
xor     eax, eax
mov     al, [ecx+2]
shl     eax, 2
mov     edx, ds:dword_55A10C
add     eax, edx
mov     eax, [eax]
mov     al, [eax+0Bh]
xor     ah, ah
mov     [edi+4], ax
mov     [ebx+4], ah
mov     word ptr [ebx], 0
mov     byte ptr [ebx+5], 1Eh
mov     [ebp+3], ah
mov     [edi+6], ah
lea     eax, [esi+20h]
mov     ebx, 0FFFFFFA0h
mov     edx, 5
call    sub_4E19B9
xor     eax, eax
mov     al, [ecx+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
mov     al, [eax+8]
xor     ah, ah
shl     eax, 4
mov     [ecx+6Eh], ax
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     byte ptr [ecx+8], 1
mov     dl, [ecx+3]
test    dl, dl
jnz     short loc_468C13
mov     [ecx+9], dl
mov     [ecx+0Ah], dl
mov     [ecx+0Fh], dl
mov     byte ptr [ecx+0ACh], 1
mov     word ptr [ecx+44h], 50h ; 'P'
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     [esi+3Ch], dl
jmp     short loc_468C2C

loc_468C13:
mov     byte ptr [ecx+8], 3
mov     word ptr [ecx+44h], 1E0h
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [esi+3Dh], 78h ; 'x'
mov     byte ptr [esi+3Ch], 0

loc_468C2C:
mov     word ptr [ecx+15Eh], 4210h
mov     word ptr [ecx+4Eh], 30h ; '0'
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [esi+8], 0
mov     eax, ecx
call    sub_468C5F
jmp     loc_469533
sub_468AFC endp




sub_468C5F proc near

var_38= dword ptr -38h
var_34= dword ptr -34h
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
sub     esp, 20h
mov     ebp, eax
add     eax, 408h
mov     [esp+38h+var_20], eax
mov     eax, ebp
add     eax, 0C4h
mov     [esp+38h+var_1C], eax
lea     ecx, [ebp+1E8h]
lea     esi, [ebp+64h]
mov     ebx, offset byte_5F8364
and     byte ptr [eax+6], 0F7h
lea     eax, [ebp+428h]
mov     edx, ebp
call    sub_4E19CA
test    eax, eax
jz      short loc_468CA9
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 8

loc_468CA9:
mov     al, [ecx+5]
test    al, al
jz      short loc_468CB7
mov     ah, al
dec     ah
mov     [ecx+5], ah

loc_468CB7:
mov     dx, [ecx]
test    dx, dx
jz      short loc_468CC5
mov     edi, edx
dec     edi
mov     [ecx], di

loc_468CC5:
mov     eax, [esp+38h+var_20]
mov     eax, [eax+8]
and     eax, 0FFFFFFh
jz      loc_468EB7
mov     dh, [ebp+9]
cmp     dh, 1
jnz     short loc_468CE2
add     [ecx+4], dh

loc_468CE2:
mov     dx, [ebp+6Eh]
mov     [ebp+0B2h], dx
sub     edx, eax
mov     [ebp+6Eh], dx
add     [ecx], ax
cmp     word ptr [ebp+6Eh], 0
jg      short loc_468D0E
mov     eax, [esp+38h+var_1C]
and     byte ptr [eax+6], 0FDh
mov     byte ptr [ebp+9], 7
jmp     loc_4690BF

loc_468D0E:
mov     word ptr [ebp+15Eh], 7FFFh
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     short loc_468D3D
xor     eax, eax
mov     al, [ebp+2]
mov     edx, ds:dword_55A10C
mov     eax, [edx+eax*4]
xor     edx, edx
mov     dl, [eax+9]
xor     eax, eax
mov     ax, [ecx]
cmp     eax, edx
jge     short loc_468D4B

loc_468D3D:
mov     eax, [esp+38h+var_20]
test    byte ptr [eax+0Bh], 20h
jz      loc_468DF5

loc_468D4B:
cmp     byte ptr [ebp+9], 5
jz      loc_4690BF
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A2h
call    sub_4D8BC3
mov     eax, [esp+38h+var_1C]
mov     dl, [eax+6]
or      dl, 10h
mov     [eax+6], dl
mov     dh, dl
and     dh, 0DFh
mov     [eax+6], dh
mov     word ptr [ecx], 0
mov     byte ptr [ecx+4], 0
mov     byte ptr [ecx+5], 1Eh
mov     byte ptr [ebp+9], 6
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, [esp+38h+var_20]
add     edx, 10h
xor     ecx, ecx
mov     eax, edi
call    sub_4DE726
mov     edx, eax
mov     word ptr [ebp+44h], 0C0h
mov     word ptr [ebp+46h], 0FF40h
mov     ecx, [esp+38h+var_1C]
and     byte ptr [ecx+6], 0FDh
add     dh, 8
and     dh, 0Fh
mov     [ebp+56h], dx
test    eax, 0FFFF0000h
jnz     short loc_468DE8
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 8

loc_468DD2:
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     loc_4690BF

loc_468DE8:
mov     byte ptr [ebp+0Ah], 1
mov     byte ptr [ebp+0ACh], 0Ah
jmp     short loc_468DD2

loc_468DF5:
lea     edi, [ebp+14h]
mov     edx, edi
mov     eax, 0A0h
call    sub_4D8BC3
mov     dh, [ecx+5]
test    dh, dh
jz      short loc_468E4C
cmp     byte ptr [ecx+4], 2
jnz     loc_4690BF
cmp     byte ptr [ebp+9], 5
jz      loc_4690BF
mov     byte ptr [ebp+9], 5
mov     byte ptr [ebp+0Ah], 0
mov     byte ptr [ebp+0ACh], 6
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
mov     eax, [esp+38h+var_1C]
or      byte ptr [eax+6], 40h
jmp     loc_4690BF

loc_468E4C:
mov     byte ptr [ecx+5], 1Eh
mov     [ecx+4], dh
push    400h
mov     eax, [ebx+54h]
sar     eax, 10h
push    eax
lea     ecx, [ebx+1Ch]
mov     edx, [ebp+54h]
sar     edx, 10h
lea     eax, [ebp+1Ch]
mov     ebx, 400h
call    sub_4DE639
test    eax, eax
jnz     loc_4690BF
cmp     byte ptr [ebp+9], 8
jz      loc_4690BF
mov     byte ptr [ebp+9], 6
mov     byte ptr [ebp+0Ah], 4
mov     ecx, [esp+38h+var_20]
mov     ecx, [ecx+38h]
sar     ecx, 10h
mov     ebx, [ebp+54h]
sar     ebx, 10h
mov     edx, (offset dword_5F8376+2)
mov     eax, edi
call    sub_4DE552
mov     byte ptr [ebp+0ACh], 0Dh
jmp     loc_468DD2

loc_468EB7:
mov     dl, [ebp+9]
cmp     dl, 2
jz      loc_4690BF
cmp     dl, 3
jz      loc_4690BF
cmp     dl, 4
jz      loc_4690BF
cmp     dl, 5
jz      loc_4690BF
mov     eax, [esp+38h+var_1C]
test    byte ptr [eax+6], 10h
jnz     loc_4690BF
cmp     byte ptr [ebp+9], 8
jz      loc_4690BF
mov     eax, [esp+38h+var_20]
mov     cl, [eax+3Eh]
test    cl, cl
jz      short loc_468F08
mov     ch, cl
dec     ch
mov     [eax+3Eh], ch

