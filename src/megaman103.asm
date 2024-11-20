mov     eax, 0Dh
call    __set_errno_
xor     eax, eax
jmp     loc_5059A6

loc_5058F3:
cmp     esi, 10h
jnz     short loc_50590D

loc_5058F8:
cmp     byte ptr [edx], 30h ; '0'
jnz     short loc_50590D
mov     bh, [edx+1]
cmp     bh, 78h ; 'x'
jz      short loc_50590A
cmp     bh, 58h ; 'X'
jnz     short loc_50590D

loc_50590A:
add     edx, 2

loc_50590D:
mov     [esp+1Ch+var_18], edx
mov     edi, esi
xor     cl, cl
xor     ebx, ebx
shl     edi, 2

loc_50591A:
xor     eax, eax
mov     al, [edx]
call    sub_5059BF
mov     [esp+1Ch+var_14], eax
cmp     eax, esi
jge     short loc_505947
cmp     ebx, ds:off_5583D0[edi] ; "Partial loss of significance"
jbe     short loc_505935
mov     cl, 1

loc_505935:
mov     eax, ebx
imul    ebx, esi
add     ebx, [esp+1Ch+var_14]
cmp     ebx, eax
jnb     short loc_505944
mov     cl, 1

loc_505944:
inc     edx
jmp     short loc_50591A

loc_505947:
cmp     edx, [esp+1Ch+var_18]
jnz     short loc_505950
mov     edx, [esp+1Ch+var_1C]

loc_505950:
test    ebp, ebp
jz      short loc_505957
mov     [ebp+0], edx

loc_505957:
cmp     [esp+1Ch+var_10], 1
jnz     short loc_50596D
cmp     ebx, 80000000h
jb      short loc_50596D
jnz     short loc_505971
cmp     ch, 2Dh ; '-'
jnz     short loc_505971

loc_50596D:
test    cl, cl
jz      short loc_50599D

loc_505971:
mov     eax, 0Eh
mov     ebp, [esp+1Ch+var_10]
call    __set_errno_
test    ebp, ebp
jnz     short loc_50598A
mov     eax, 0FFFFFFFFh
jmp     short loc_5059A6

loc_50598A:
cmp     ch, 2Dh ; '-'
jnz     short loc_505996
mov     eax, 80000000h
jmp     short loc_5059A6

loc_505996:
mov     eax, 7FFFFFFFh
jmp     short loc_5059A6

loc_50599D:
cmp     ch, 2Dh ; '-'
jnz     short loc_5059A4
neg     ebx

loc_5059A4:
mov     eax, ebx

loc_5059A6:
add     esp, 10h
pop     ebp
pop     edi
pop     esi
retn
sub_50586E endp

push    ecx
xor     ecx, ecx
; START OF FUNCTION CHUNK FOR sub_5059B7

loc_5059B0:
call    sub_50586E
pop     ecx
retn
; END OF FUNCTION CHUNK FOR sub_5059B7



sub_5059B7 proc near

; FUNCTION CHUNK AT 005059B0 SIZE 00000007 BYTES

push    ecx
mov     ecx, 1
jmp     short loc_5059B0
sub_5059B7 endp




sub_5059BF proc near
push    edx
cmp     al, 30h ; '0'
jb      short loc_5059D2
cmp     al, 39h ; '9'
ja      short loc_5059D2
and     eax, 0FFh
sub     eax, 30h ; '0'
pop     edx
retn

loc_5059D2:
and     eax, 0FFh
call    tolower_
mov     edx, eax
cmp     al, 61h ; 'a'
jb      short loc_5059EF
cmp     al, 69h ; 'i'
ja      short loc_5059EF
xor     eax, eax
mov     al, dl
sub     eax, 57h ; 'W'
pop     edx
retn

loc_5059EF:
cmp     al, 6Ah ; 'j'
jb      short loc_505A01
cmp     al, 72h ; 'r'
ja      short loc_505A01

loc_5059F7:
and     eax, 0FFh
sub     eax, 57h ; 'W'
pop     edx
retn

loc_505A01:
cmp     al, 73h ; 's'
jb      short loc_505A09
cmp     al, 7Ah ; 'z'
jbe     short loc_5059F7

loc_505A09:
mov     eax, 25h ; '%'
pop     edx
retn
sub_5059BF endp




sub_505A10 proc near

var_30= dword ptr -30h
var_2C= dword ptr -2Ch
lpName= dword ptr -28h
lpValue= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     ebp, eax
mov     edx, 2
mov     ebx, 1
mov     [esp+30h+var_30], edx
mov     edx, 3Dh ; '='
mov     [esp+30h+var_2C], ebx
call    _mbschr_
mov     ebx, eax
test    eax, eax
jz      short loc_505AA5
cmp     eax, ebp
jz      short loc_505AA5
sub     eax, ebp
mov     [esp+30h+var_20], eax
inc     eax
call    _nmalloc_
mov     edx, eax
mov     [esp+30h+lpName], eax
test    eax, eax
jz      short loc_505AA5
mov     ecx, [esp+30h+var_20]
mov     esi, ebp
mov     edi, eax
push    es
mov     eax, ds
mov     es, eax
assume es:AUTO
push    edi
mov     eax, ecx
shr     ecx, 2
repne movsd
mov     cl, al
and     cl, 3
repne movsb
pop     edi
pop     es
assume es:nothing
mov     eax, [esp+30h+var_20]
lea     esi, [ebx+1]
mov     byte ptr [edx+eax], 0
mov     eax, esi
call    _mbslen_
mov     [esp+30h+var_1C], eax
test    eax, eax
jz      short loc_505AD4
inc     eax
call    _nmalloc_
mov     ebx, eax
mov     [esp+30h+lpValue], eax
test    eax, eax
jnz     short loc_505AAF
mov     eax, edx

loc_505AA0:
call    _nfree_

loc_505AA5:
mov     eax, 0FFFFFFFFh
jmp     loc_505B5E

loc_505AAF:
mov     ecx, [esp+30h+var_1C]
mov     edi, eax
push    es
mov     eax, ds
mov     es, eax
assume es:AUTO
push    edi
mov     eax, ecx
shr     ecx, 2
repne movsd
mov     cl, al
and     cl, 3
repne movsb
pop     edi
pop     es
assume es:nothing
add     ebx, [esp+30h+var_1C]
mov     byte ptr [ebx], 0
jmp     short loc_505AD8

loc_505AD4:
mov     [esp+30h+lpValue], eax

loc_505AD8:
mov     eax, [esp+30h+lpValue]
push    eax             ; lpValue
mov     edx, [esp+34h+lpName]
push    edx             ; lpName
call    cs:__imp_SetEnvironmentVariableA
mov     edx, eax
mov     eax, [esp+30h+lpName]
call    _nfree_
mov     eax, [esp+30h+lpValue]
call    _nfree_
test    edx, edx
jz      short loc_505AA5
mov     eax, ebp
call    sub_505B68
test    eax, eax
jnz     short loc_505AA5
cmp     ds:dword_898338, 0
jz      short loc_505B5E
mov     eax, ebp
call    _mbslen_
lea     ebx, [eax+1]
mov     eax, [esp+30h+var_30]
imul    eax, ebx
call    _nmalloc_
mov     ecx, eax
test    eax, eax
jnz     short loc_505B3F
mov     eax, 5
call    __set_errno_dos_
jmp     loc_505AA5

loc_505B3F:
imul    ebx, [esp+30h+var_2C]
mov     edx, ebp
call    mbstowcs_
cmp     eax, 0FFFFFFFFh
jnz     short loc_505B57
mov     eax, ecx
jmp     loc_505AA0

loc_505B57:
mov     eax, ecx
call    sub_5061C8

loc_505B5E:
add     esp, 18h

loc_505B61:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_505A10 endp




sub_505B68 proc near

var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
push    eax
test    eax, eax
jnz     short loc_505B80

loc_505B76:
mov     eax, 0FFFFFFFFh
jmp     loc_505CCB

loc_505B80:
cmp     byte ptr [eax], 0
jz      short loc_505B96
lea     edx, [eax+1]
jmp     short loc_505B90

loc_505B8A:
cmp     bh, 3Dh ; '='
jz      short loc_505B96
inc     edx

loc_505B90:
mov     bh, [edx]
test    bh, bh
jnz     short loc_505B8A

loc_505B96:
cmp     byte ptr [edx], 0
jz      short loc_505B76
cmp     byte ptr [edx+1], 0
setz    al
movzx   ebp, al
mov     eax, ds:dword_898334
mov     [esp+24h+var_1C], eax
test    eax, eax
jnz     short loc_505BE3
test    ebp, ebp
jnz     loc_505CCB
mov     eax, 9
call    _nmalloc_
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      short loc_505B76
mov     ds:dword_898334, eax
mov     [eax], ebp
add     eax, 8
mov     [eax-4], ebp
mov     ds:dword_898330, eax
jmp     loc_505CB0

loc_505BE3:
mov     eax, [esp+24h+var_24]
mov     edx, ebp
call    sub_505CD3
test    ebp, ebp
jnz     loc_505CC9
test    eax, eax
jg      loc_505CAD
mov     ebp, eax
neg     ebp
lea     ebx, [ebp+1]
mov     ecx, ebp
shl     ecx, 2
lea     eax, [ecx+8]
mov     esi, ds:dword_898330
mov     [esp+24h+var_20], eax
add     eax, ebx
test    esi, esi
jnz     short loc_505C61
call    _nmalloc_
mov     edx, eax
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      loc_505B76
mov     esi, ds:dword_898334
mov     edi, eax
push    es
mov     eax, ds
mov     es, eax
assume es:AUTO
push    edi
mov     eax, ecx
shr     ecx, 2
repne movsd
mov     cl, al
and     cl, 3
repne movsb
pop     edi
pop     es
assume es:nothing
mov     eax, [esp+24h+var_20]
add     eax, edx
xor     edx, edx
mov     ds:dword_898330, eax
call    memset_
jmp     short loc_505C93

loc_505C61:
mov     edx, eax
mov     eax, [esp+24h+var_1C]
call    _nrealloc_
mov     [esp+24h+var_1C], eax
test    eax, eax
jz      loc_505B76
mov     ecx, [esp+24h+var_20]
mov     edx, ds:dword_898330
add     ecx, eax
mov     ebx, ebp
mov     eax, ecx
call    memmove_
mov     ds:dword_898330, ecx

loc_505C93:
mov     eax, ebp
mov     edi, [esp+24h+var_1C]
shl     eax, 2
add     eax, edi
mov     ds:dword_898334, edi
mov     dword ptr [eax+4], 0
jmp     short loc_505CB0

loc_505CAD:
lea     ebp, [eax-1]

loc_505CB0:
mov     eax, ebp
mov     edx, [esp+24h+var_1C]
shl     eax, 2
add     eax, edx
mov     edx, [esp+24h+var_24]
mov     [eax], edx
mov     eax, ds:dword_898330
mov     byte ptr [eax+ebp], 0

loc_505CC9:
xor     eax, eax

loc_505CCB:
add     esp, 0Ch
jmp     loc_505B61
sub_505B68 endp




sub_505CD3 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, edx
mov     esi, ds:dword_898334
jmp     loc_505D99

loc_505CE7:
mov     ebx, edi
jmp     loc_505D8D

loc_505CEE:
xor     eax, eax
mov     al, [edx]
call    toupper_
mov     ecx, eax
xor     eax, eax
mov     al, [ebx]
call    toupper_
cmp     ecx, eax
jnz     loc_505D96
cmp     byte ptr [edx], 3Dh ; '='
jnz     loc_505D8B
mov     edx, ds:dword_898334
mov     edi, esi
sub     edi, edx
sar     edi, 2
test    ebp, ebp
jz      short loc_505D86
mov     ecx, esi
mov     edx, [esi]
jmp     short loc_505D32

loc_505D2A:
mov     eax, [ecx+4]
mov     [ecx], eax
add     ecx, 4

loc_505D32:
cmp     dword ptr [ecx], 0
jnz     short loc_505D2A
mov     esi, ds:dword_898330
test    esi, esi
jz      short loc_505D82
mov     eax, esi
cmp     byte ptr [edi+eax], 0
jz      short loc_505D50
mov     eax, edx
call    _nfree_

loc_505D50:
mov     ebp, ds:dword_898334
mov     esi, ecx
sub     esi, ebp
mov     edx, ds:dword_898330
sar     esi, 2
mov     eax, ecx
mov     ebx, esi
call    memmove_
mov     ds:dword_898330, ecx
lea     eax, [edi+ecx]
jmp     short loc_505D7E

loc_505D77:
mov     dl, [eax+1]
inc     edi
mov     [eax], dl
inc     eax

loc_505D7E:
cmp     edi, esi
jl      short loc_505D77

loc_505D82:
xor     eax, eax
jmp     short loc_505DAD

loc_505D86:
lea     eax, [edi+1]
jmp     short loc_505DAD

loc_505D8B:
inc     edx
inc     ebx

loc_505D8D:
cmp     byte ptr [ebx], 0
jnz     loc_505CEE

loc_505D96:
add     esi, 4

loc_505D99:
mov     edx, [esi]
test    edx, edx
jnz     loc_505CE7
mov     eax, ds:dword_898334
sub     eax, esi
sar     eax, 2

loc_505DAD:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_505CD3 endp

align 4
; [00000005 BYTES: COLLAPSED FUNCTION F8UnderFlow]

F8InvalidOp:
mov     eax, 83h
call    sub_50644A
jmp     short loc_505DE2
; [0000000C BYTES: COLLAPSED CHUNK OF FUNCTION __FDD]
; [00000020 BYTES: COLLAPSED FUNCTION F8OverFlow]

F4DivZero:
mov     eax, 83h
call    sub_50644A
jmp     short loc_505E0E

F4OverFlow:
push    eax
call    __set_ERANGE_
mov     eax, 84h
call    sub_50644A
pop     eax

loc_505E0E:
and     eax, 80000000h
or      eax, 7F800000h
retn
align 2


; Attributes: thunk

sub_505E1A proc near
jmp     sub_506451
sub_505E1A endp

; [0000001F BYTES: COLLAPSED FUNCTION __get_std_stream_]
; [00000096 BYTES: COLLAPSED FUNCTION fputs_]
; [00000031 BYTES: COLLAPSED FUNCTION _mbccpy_]
; [0000004F BYTES: COLLAPSED FUNCTION _mbsupr_]
; [00000058 BYTES: COLLAPSED FUNCTION _mbccmp_]
; [0000005C BYTES: COLLAPSED FUNCTION _mbschr_]
; [00000022 BYTES: COLLAPSED FUNCTION _mbslen_]
; [00000073 BYTES: COLLAPSED FUNCTION mbstowcs_]



sub_50609D proc near

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
mov     ecx, eax
mov     edx, 2
mov     [esp+28h+var_24], edx
mov     [esp+28h+var_28], edx
mov     edx, 3Dh ; '='
call    wcschr_
mov     edi, eax
test    eax, eax
jz      short loc_50611C
cmp     eax, ecx
jz      short loc_50611C
mov     ebp, eax
sub     ebp, ecx
sar     ebp, 1
add     ebp, ebp
lea     eax, [ebp+2]
call    _nmalloc_
mov     esi, eax
mov     [esp+28h+var_20], eax
test    eax, eax
jz      short loc_50611C
mov     ebx, ebp
mov     edx, ecx
call    memcpy_
lea     edx, [edi+2]
mov     eax, edx
mov     word ptr [esi+ebp], 0
call    wcslen_
test    eax, eax
jz      short loc_50613C
add     eax, eax
mov     [esp+28h+var_1C], eax
add     eax, 2
call    _nmalloc_
mov     edi, eax
mov     ebp, eax
test    eax, eax
jnz     short loc_506126

loc_506115:
mov     eax, esi
call    _nfree_

loc_50611C:
mov     eax, 0FFFFFFFFh
jmp     loc_5061BE

loc_506126:
mov     esi, [esp+28h+var_1C]
mov     ebx, [esp+28h+var_1C]
add     edi, esi
call    memcpy_
mov     word ptr [edi], 0
jmp     short loc_50613E

loc_50613C:
xor     ebp, ebp

loc_50613E:
mov     eax, [esp+28h+var_20]
mov     edx, ebp
call    sub_506528
mov     edx, eax
mov     eax, [esp+28h+var_20]
call    _nfree_
mov     eax, ebp
call    _nfree_
test    edx, edx
jz      short loc_50611C
cmp     ds:dword_898338, 0
jnz     short loc_50616D
call    __create_wide_environment_

loc_50616D:
mov     eax, ecx
call    sub_5061C8
test    eax, eax
jnz     short loc_50611C
mov     eax, ecx
call    wcslen_
lea     ebx, [eax+1]
mov     eax, [esp+28h+var_24]
imul    eax, ebx
call    _nmalloc_
mov     esi, eax
test    eax, eax
jnz     short loc_5061A3
mov     eax, 5
call    __set_errno_dos_
jmp     loc_50611C

loc_5061A3:
imul    ebx, [esp+28h+var_28]
mov     edx, ecx
call    wcstombs_
cmp     eax, 0FFFFFFFFh
jz      loc_506115
mov     eax, esi
call    sub_505B68

loc_5061BE:
add     esp, 10h
sub_50609D endp ; sp-analysis failed

; START OF FUNCTION CHUNK FOR sub_5061C8

loc_5061C1:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_5061C8



sub_5061C8 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch

; FUNCTION CHUNK AT 005061C1 SIZE 00000007 BYTES

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     edi, eax
test    eax, eax
jnz     short loc_5061E1

loc_5061D7:
mov     eax, 0FFFFFFFFh
jmp     loc_50630C

loc_5061E1:
cmp     word ptr [eax], 0
jz      short loc_5061FD
lea     edx, [eax+2]
jmp     short loc_5061F5

loc_5061EC:
cmp     cx, 3Dh ; '='
jz      short loc_5061FD
add     edx, 2

loc_5061F5:
mov     cx, [edx]
test    cx, cx
jnz     short loc_5061EC

loc_5061FD:
cmp     word ptr [edx], 0
jz      short loc_5061D7
cmp     word ptr [edx+2], 0
setz    al
xor     ebx, ebx
mov     ecx, ds:dword_898338
mov     bl, al
test    ecx, ecx
jnz     short loc_50624A
test    ebx, ebx
jnz     loc_50630A
mov     eax, 9
call    _nmalloc_
mov     ecx, eax
test    eax, eax
jz      short loc_5061D7
mov     ds:dword_898338, eax
mov     [eax], ebx
add     eax, 8
xor     esi, esi
mov     [eax-4], ebx
mov     ds:dword_898330, eax
jmp     loc_5062FC

loc_50624A:
mov     edx, ebx
mov     eax, edi
call    sub_506314
test    ebx, ebx
jnz     loc_50630A
test    eax, eax
jg      loc_5062F9
neg     eax
mov     esi, eax
mov     ebp, ds:dword_898330
mov     ebx, esi
inc     eax
shl     ebx, 2
mov     [esp+20h+var_1C], eax
lea     eax, [ebx+8]
mov     edx, [esp+20h+var_1C]
mov     [esp+20h+var_20], eax
add     eax, edx
test    ebp, ebp
jnz     short loc_5062BA
call    _nmalloc_
mov     ebp, eax
mov     ecx, eax
test    eax, eax
jz      loc_5061D7
mov     edx, ds:dword_898338
call    memcpy_
mov     eax, [esp+20h+var_20]
mov     ebx, [esp+20h+var_1C]
add     eax, ebp
xor     edx, edx
mov     ds:dword_898330, eax
call    memset_
jmp     short loc_5062E7

loc_5062BA:
mov     edx, eax
mov     eax, ecx
call    _nrealloc_
mov     ecx, eax
test    eax, eax
jz      loc_5061D7
mov     ebp, [esp+20h+var_20]
mov     edx, ds:dword_898330
add     ebp, eax
mov     ebx, esi
mov     eax, ebp
call    memmove_
mov     ds:dword_898330, ebp

loc_5062E7:
mov     eax, esi
mov     ds:dword_898338, ecx
mov     dword ptr [ecx+eax*4+4], 0
jmp     short loc_5062FC

loc_5062F9:
lea     esi, [eax-1]

loc_5062FC:
mov     eax, esi
mov     [ecx+eax*4], edi
mov     eax, ds:dword_898330
mov     byte ptr [esi+eax], 0

loc_50630A:
xor     eax, eax

loc_50630C:
add     esp, 8
jmp     loc_5061C1
sub_5061C8 endp




sub_506314 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     ebp, edx
mov     esi, ds:dword_898338
jmp     loc_5063E3

loc_506328:
mov     ebx, edi
jmp     loc_5063D6

loc_50632F:
xor     eax, eax
mov     ax, [edx]
call    towupper_
mov     ecx, eax
xor     eax, eax
mov     ax, [ebx]
call    towupper_
cmp     cx, ax
jnz     loc_5063E0
cmp     word ptr [edx], 3Dh ; '='
jnz     loc_5063D0
mov     edx, ds:dword_898338
mov     edi, esi
sub     edi, edx
sar     edi, 2
test    ebp, ebp
jz      short loc_5063CB
mov     ecx, esi
mov     edx, [esi]
jmp     short loc_506377

loc_50636F:
mov     eax, [ecx+4]
mov     [ecx], eax
add     ecx, 4

loc_506377:
cmp     dword ptr [ecx], 0
jnz     short loc_50636F
mov     esi, ds:dword_898330
test    esi, esi
jz      short loc_5063C7
mov     eax, esi
cmp     byte ptr [edi+eax], 0
jz      short loc_506395
mov     eax, edx
call    _nfree_

loc_506395:
mov     ebp, ds:dword_898338
mov     esi, ecx
sub     esi, ebp
mov     edx, ds:dword_898330
sar     esi, 2
mov     eax, ecx
mov     ebx, esi
call    memmove_
mov     ds:dword_898330, ecx
lea     eax, [edi+ecx]
jmp     short loc_5063C3

loc_5063BC:
mov     dl, [eax+1]
inc     edi
mov     [eax], dl
inc     eax

loc_5063C3:
cmp     edi, esi
jl      short loc_5063BC

loc_5063C7:
xor     eax, eax
jmp     short loc_5063F7

loc_5063CB:
lea     eax, [edi+1]
jmp     short loc_5063F7

loc_5063D0:
add     edx, 2
add     ebx, 2

loc_5063D6:
cmp     word ptr [ebx], 0
jnz     loc_50632F

loc_5063E0:
add     esi, 4

loc_5063E3:
mov     edx, [esi]
test    edx, edx
jnz     loc_506328
mov     eax, ds:dword_898338
sub     eax, esi
sar     eax, 2

loc_5063F7:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_506314 endp

; [0000004D BYTES: COLLAPSED FUNCTION memmove_]



sub_50644A proc near
call    ds:off_557C63
retn
sub_50644A endp




sub_506451 proc near
xor     eax, eax
retn
sub_506451 endp

; [0000003B BYTES: COLLAPSED FUNCTION _mbsnextc_]
; [00000069 BYTES: COLLAPSED FUNCTION _mbctoupper_]
; [0000001A BYTES: COLLAPSED FUNCTION _mbvtop_]
; [00000016 BYTES: COLLAPSED FUNCTION wcschr_]



sub_506528 proc near

var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
push    eax
mov     edi, edx
cmp     ds:word_557C51, 8000h
jnb     short loc_506549
push    edi             ; lpValue
push    eax             ; lpName
call    cs:__imp_SetEnvironmentVariableW
jmp     loc_5065E5

loc_506549:
call    wcslen_
add     eax, eax
lea     ecx, [eax+1]
mov     eax, ecx
call    _nmalloc_
mov     edx, eax
mov     ebp, eax
test    eax, eax
jz      loc_5065E5
test    edi, edi
jnz     short loc_50656E
xor     esi, esi
jmp     short loc_50658B

loc_50656E:
mov     eax, edi
call    wcslen_
add     eax, eax
lea     ecx, [eax+1]
mov     eax, ecx
call    _nmalloc_
mov     esi, eax
test    eax, eax
jnz     short loc_50658B
mov     eax, edx
jmp     short loc_5065A9

loc_50658B:
mov     edx, [esp+18h+var_18]
mov     ebx, ecx
mov     eax, ebp
call    wcstombs_
cmp     eax, 0FFFFFFFFh
jnz     short loc_5065B2
mov     eax, ebp
call    _nfree_
test    esi, esi
jz      short loc_5065AE

loc_5065A7:
mov     eax, esi

loc_5065A9:
call    _nfree_

loc_5065AE:
xor     eax, eax
jmp     short loc_5065E5

loc_5065B2:
test    esi, esi
jz      short loc_5065C6
mov     ebx, ecx
mov     edx, edi
mov     eax, esi
call    wcstombs_
cmp     eax, 0FFFFFFFFh
jz      short loc_5065A7

loc_5065C6:             ; lpValue
push    esi
push    ebp             ; lpName
call    cs:__imp_SetEnvironmentVariableA
mov     edx, eax
mov     eax, ebp
call    _nfree_
test    esi, esi
jz      short loc_5065E3
mov     eax, esi
call    _nfree_

loc_5065E3:
mov     eax, edx

loc_5065E5:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_506528 endp

; [00000050 BYTES: COLLAPSED FUNCTION __create_wide_environment_]
; [000000B6 BYTES: COLLAPSED FUNCTION wcstombs_]
; [00000010 BYTES: COLLAPSED FUNCTION towupper_]
; [00000013 BYTES: COLLAPSED FUNCTION _mbdtoupper_]



sub_506717 proc near
push    edx
mov     edx, eax
call    _ismbclegal_
test    eax, eax
jz      short loc_506742
cmp     edx, 8281h
jb      short loc_50673C
cmp     edx, 829Ah
ja      short loc_50673C
mov     edx, 1
mov     eax, edx
pop     edx
retn

loc_50673C:
xor     edx, edx
mov     eax, edx
pop     edx
retn

loc_506742:
