cmp     dword ptr [ebx], 0FFFFFFFFh
jz      short loc_4FA525
mov     ecx, [ebx+0Ch]
test    ecx, ecx
jz      short loc_4FA525
mov     eax, ecx
mov     edx, [ecx]
lea     ecx, [esp+24h+var_20]
push    ecx
push    eax
call    dword ptr [edx+24h]

loc_4FA525:
test    byte ptr [esp+24h+var_24], 1
jz      short loc_4FA530
mov     edi, 1

loc_4FA530:
test    byte ptr [esp+24h+var_20], 1
jz      short loc_4FA53C
mov     edi, 2

loc_4FA53C:
xor     esi, esi
jmp     short loc_4FA546

loc_4FA540:
inc     esi
cmp     esi, 10h
jge     short loc_4FA58A

loc_4FA546:
mov     ebx, esi
shl     ebx, 2
mov     ebp, ds:dword_897B10[ebx]
test    ebp, ebp
jz      short loc_4FA540
mov     edx, [ebp+0]
lea     ecx, [esp+24h+var_1C]
push    ecx
push    ebp
call    dword ptr [edx+24h]
test    byte ptr [esp+24h+var_1C], 1
jnz     short loc_4FA540
mov     eax, ds:dword_897B10[ebx]
mov     edx, [eax]
push    eax
call    dword ptr [edx+48h]
mov     eax, ds:dword_897B10[ebx]
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_897B10[ebx], eax
jmp     short loc_4FA540

loc_4FA58A:
mov     eax, edi

loc_4FA58C:
add     esp, 0Ch
jmp     loc_4F9DA2
sub_4FA4D2 endp




sub_4FA594 proc near

var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= byte ptr -18h

push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 10h
cmp     ds:pUnkOuter, 0
jz      loc_4FA74D
mov     esi, eax
shl     esi, 2
sub     esi, eax
mov     eax, esi
shl     eax, 2
mov     esi, ds:dword_897A58[eax]
mov     ecx, ds:dword_897A50[eax]
test    ecx, ecx
jz      loc_4FA708
lea     eax, [ecx-1]
test    eax, eax
jz      short loc_4FA5D4
xor     edi, edi
jmp     short loc_4FA5D9

loc_4FA5D4:
mov     edi, 10000h

loc_4FA5D9:
mov     ebx, [esi+4]
cmp     ebx, 0FFFFFFFFh
jnz     short loc_4FA5EF
mov     eax, [esi+8]
mov     ecx, [eax]
push    eax
call    dword ptr [ecx+48h]
jmp     loc_4FA74D

loc_4FA5EF:
test    ebx, ebx
jz      short loc_4FA637
cmp     ebx, 10000h
jle     short loc_4FA602
mov     ecx, 10000h
jmp     short loc_4FA604

loc_4FA602:
mov     ecx, ebx

loc_4FA604:
mov     eax, [esi+0Ch]
mov     ebx, ecx
mov     edx, offset unk_887A50
call    sub_4F0A70
mov     edx, [esi+4]
sub     edx, ecx
mov     [esi+4], edx
jnz     short loc_4FA652
mov     ebx, 10000h
sub     ebx, ecx
mov     eax, offset unk_887A50
add     eax, ecx
mov     edx, 80h
call    memset_
jmp     short loc_4FA652

loc_4FA637:
mov     ebx, 10000h
mov     edx, 80h
mov     eax, offset unk_887A50
call    memset_
mov     dword ptr [esi+4], 0FFFFFFFFh

loc_4FA652:
mov     eax, [esi+8]
mov     edx, [eax]
push    0
lea     ecx, [esp+28h+var_18]
push    ecx
lea     ecx, [esp+2Ch+var_20]
push    ecx
lea     ecx, [esp+30h+var_1C]
push    ecx
lea     ecx, [esp+34h+var_24]
push    ecx
push    10000h
push    edi
push    eax
call    dword ptr [edx+2Ch]
mov     edx, eax
cmp     eax, 88780096h
jnz     short loc_4FA6B0
mov     eax, [esi+8]
mov     edx, [eax]
push    eax
call    dword ptr [edx+50h]
mov     eax, [esi+8]
mov     edx, [eax]
push    0
lea     ecx, [esp+28h+var_18]
push    ecx
lea     ecx, [esp+2Ch+var_20]
push    ecx
lea     ecx, [esp+30h+var_1C]
push    ecx
lea     ecx, [esp+34h+var_24]
push    ecx
push    10000h
push    edi
push    eax
call    dword ptr [edx+2Ch]
mov     edx, eax

loc_4FA6B0:
test    edx, edx
jnz     loc_4FA74D
mov     ebx, dword ptr [esp+24h+var_1C]
mov     edx, offset unk_887A50
mov     eax, dword ptr [esp+24h+var_24]
call    memcpy_
mov     edi, dword ptr [esp+24h+var_1C]
cmp     edi, 10000h
jz      short loc_4FA6E9
mov     edx, offset unk_887A50
add     edx, edi
mov     ebx, dword ptr [esp+24h+var_18]
mov     eax, dword ptr [esp+24h+var_20]
call    memcpy_

loc_4FA6E9:
mov     eax, [esi+8]
mov     edx, [eax]
mov     ecx, dword ptr [esp+24h+var_18]
push    ecx
mov     ebx, dword ptr [esp+28h+var_20]
push    ebx
mov     esi, dword ptr [esp+2Ch+var_1C]
push    esi
mov     edi, dword ptr [esp+30h+var_24]
push    edi
push    eax
call    dword ptr [edx+4Ch]
jmp     short loc_4FA74D

loc_4FA708:
mov     eax, esi
call    sub_4FA4D2
test    eax, eax
jz      short loc_4FA74D
mov     eax, [esi+0Ch]
mov     edx, [eax]
push    ecx
push    eax
call    dword ptr [edx+34h]
mov     eax, [esi+0Ch]
mov     ecx, [eax]
push    1
push    0
push    0
push    eax
call    dword ptr [ecx+30h]
cmp     eax, 88780096h
jnz     short loc_4FA74D
mov     edx, [esi+4]
mov     eax, [esi+0Ch]
call    sub_4FA1EF
mov     eax, [esi+0Ch]
mov     edx, [eax]
push    1
push    0
push    0
push    eax
call    dword ptr [edx+30h]

loc_4FA74D:
add     esp, 10h
jmp     loc_4F9DA3
sub_4FA594 endp




sub_4FA755 proc near

var_14= byte ptr -14h

push    ebx
push    ecx
push    esi
push    edi
sub     esp, 4
mov     ebx, eax
mov     esi, edx
cmp     ds:pUnkOuter, 0
jz      loc_4FA89B
cmp     ds:nCount, 0
jz      short loc_4FA79C
xor     eax, eax
mov     edi, ds:nCount

loc_4FA77E:
cmp     eax, edi
jge     short loc_4FA79C
mov     edx, eax
shl     edx, 2
sub     edx, eax
cmp     ebx, ds:dword_897A58[edx*4]
jnz     short loc_4FA799
call    sub_4F9C02
jmp     short loc_4FA79C

loc_4FA799:
inc     eax
jmp     short loc_4FA77E

loc_4FA79C:
mov     eax, [ebx]
cmp     eax, 0FFFFFFFFh
jz      loc_4FA84E
test    eax, eax
jz      short loc_4FA803
test    esi, esi
jz      short loc_4FA7B4
call    _nfree_

loc_4FA7B4:
mov     dword ptr [ebx], 0
mov     edi, [ebx+8]
test    edi, edi
jz      short loc_4FA803
mov     edx, [edi]
mov     ecx, esp
push    ecx
push    edi
call    dword ptr [edx+24h]
test    [esp+14h+var_14], 1
jz      short loc_4FA7F3
xor     eax, eax
jmp     short loc_4FA7DA

loc_4FA7D4:
inc     eax
cmp     eax, 10h
jge     short loc_4FA7FC

loc_4FA7DA:
mov     edx, eax
shl     edx, 2
cmp     ds:dword_897B10[edx], 0
jnz     short loc_4FA7D4
mov     eax, [ebx+8]
mov     ds:dword_897B10[edx], eax
jmp     short loc_4FA7FC

loc_4FA7F3:
mov     eax, [ebx+8]
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]

loc_4FA7FC:
mov     dword ptr [ebx+8], 0

loc_4FA803:
mov     eax, [ebx+4]
test    eax, eax
jz      loc_4FA89B
test    esi, esi
jz      short loc_4FA817
call    _nfree_

loc_4FA817:
mov     dword ptr [ebx+4], 0
mov     edx, [ebx+0Ch]
test    edx, edx
jz      loc_4FA89B
mov     eax, edx
mov     edx, [edx]
mov     ecx, esp
push    ecx
push    eax
call    dword ptr [edx+24h]
test    [esp+14h+var_14], 1
jz      short loc_4FA843
mov     eax, [ebx+0Ch]
mov     edx, [eax]
push    eax
call    dword ptr [edx+48h]

loc_4FA843:
mov     eax, [ebx+0Ch]
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
jmp     short loc_4FA894

loc_4FA84E:
cmp     dword ptr [ebx+8], 0
jz      short loc_4FA89B
mov     dword ptr [ebx], 0
mov     dword ptr [ebx+4], 0
mov     eax, [ebx+8]
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    eax
call    dword ptr [edx+24h]
test    [esp+14h+var_14], 1
jz      short loc_4FA87C
mov     eax, [ebx+8]
mov     edx, [eax]
push    eax
call    dword ptr [edx+48h]

loc_4FA87C:
mov     eax, [ebx+8]
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
mov     dword ptr [ebx+8], 0
mov     eax, [ebx+0Ch]
call    sub_4F0AF4

loc_4FA894:
mov     dword ptr [ebx+0Ch], 0

loc_4FA89B:
add     esp, 4
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA755 endp




sub_4FA8A3 proc near
push    ecx
push    edx
cmp     ds:pUnkOuter, 0
jz      short loc_4FA8DB
mov     ecx, ds:nCount
test    ecx, ecx
jz      short loc_4FA8DB
push    0FFh            ; dwWakeMask
push    0               ; dwMilliseconds
push    0               ; fWaitAll
push    offset pHandles ; pHandles
push    ecx             ; nCount
call    cs:__imp_MsgWaitForMultipleObjects
cmp     eax, ds:nCount
jnb     short loc_4FA8DB
call    sub_4FA594

loc_4FA8DB:
pop     edx
pop     ecx
retn
sub_4FA8A3 endp

; [00000021 BYTES: COLLAPSED FUNCTION sprintf_]
align 10h
; [00000005 BYTES: COLLAPSED FUNCTION start]
dd offset ___begtext
db 57h, 41h, 54h
dd 204D4F43h, 2B432F43h, 2032332Bh, 2D6E7552h
dd 656D6954h, 73797320h, 2E6D6574h, 29632820h
dd 706F4320h, 67697279h, 62207468h, 41572079h
dd 4D4F4354h, 746E4920h, 616E7265h, 6E6F6974h
dd 43206C61h, 2E70726Fh, 38393120h, 39312D38h
dd 202E3539h, 206C6C41h, 68676972h, 72207374h
dd 72657365h, 2E646576h
; [00000018 BYTES: COLLAPSED FUNCTION memset_]
call    ds:off_551FC4
add     eax, 0DAh
retn



sub_4FA998 proc near
mov     eax, ds:lpTlsValue
sub_4FA998 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_4]
; [00000005 BYTES: COLLAPSED FUNCTION j___NTAddFileHandle_]
; [00000005 BYTES: COLLAPSED FUNCTION j___NTRemoveFileHandle_]



sub_4FA9A8 proc near

var_41C= byte ptr -41Ch
Filename= byte ptr -214h
var_110= byte ptr -110h

push    ecx
push    esi
push    edi
sub     esp, 618h
mov     edi, eax
mov     esi, ebx
mov     eax, edx
mov     ds:dword_897BB8, edi
call    sub_5000A0
mov     ds:lpTlsValue, eax
test    eax, eax
jnz     short loc_4FA9DC
test    edi, edi
jnz     loc_4FABC9
push    1               ; uExitCode
call    cs:__imp_ExitProcess

loc_4FA9DC:
call    __NTInitFileHandles_
call    cs:__imp_GetEnvironmentStrings
xor     edx, edx
mov     ds:dword_557C49, eax
mov     ds:dword_898334, edx
call    cs:__imp_GetVersion
mov     edx, eax
mov     ebx, eax
mov     ds:byte_557C4F, al
shr     eax, 10h
and     eax, 0FFFFh
mov     ds:word_557C51, ax
xor     eax, eax
mov     ax, ds:word_557C51
and     edx, 0FFFFh
mov     ds:dword_557C53, eax
xor     eax, eax
sar     edx, 8
mov     al, bl
and     edx, 0FFh
mov     ds:dword_557C57, eax
xor     eax, eax
mov     al, dl
mov     ds:byte_557C50, dl
mov     ds:dword_557C5B, eax
mov     eax, ds:dword_557C57
mov     edx, ds:dword_557C5B
shl     eax, 8
or      eax, edx
push    104h            ; nSize
mov     ds:dword_557C5F, eax
lea     eax, [esp+628h+Filename]
push    eax             ; lpFilename
push    0               ; hModule
mov     ebx, 208h
call    cs:__imp_GetModuleFileNameA
lea     eax, [esp+624h+Filename]
mov     edx, esp
call    strdup_
mov     ds:dword_557C10, eax
xor     eax, eax
call    __lib_GetModuleFileNameW_
mov     eax, esp
call    sub_50045B
mov     ds:dword_557C1C, eax
call    cs:__imp_GetCommandLineA
call    strdup_
mov     bl, [eax]
mov     edx, eax
cmp     bl, 22h ; '"'
jnz     short loc_4FAAC6

loc_4FAAB2:
inc     eax
mov     ch, [eax]
cmp     ch, 22h ; '"'
jz      short loc_4FAABE
test    ch, ch
jnz     short loc_4FAAB2

loc_4FAABE:
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1

loc_4FAAC3:
inc     eax
jmp     short loc_4FAAE1

loc_4FAAC6:
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAAE1
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
inc     eax
jmp     short loc_4FAAC6

loc_4FAAE1:
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAAC3
mov     ds:lpCmdLine, eax
call    cs:__imp_GetCommandLineW
test    eax, eax
jz      loc_4FAB67
call    sub_50045B
mov     bx, [eax]
mov     edx, eax
cmp     bx, 22h ; '"'
jnz     short loc_4FAB34

loc_4FAB18:
add     eax, 2
mov     dx, [eax]
cmp     dx, 22h ; '"'
jz      short loc_4FAB29
test    dx, dx
jnz     short loc_4FAB18

loc_4FAB29:
cmp     word ptr [eax], 0
jz      short loc_4FAB52

loc_4FAB2F:
add     eax, 2
jmp     short loc_4FAB52

loc_4FAB34:
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAB52
cmp     word ptr [eax], 0
jz      short loc_4FAB52
add     eax, 2
jmp     short loc_4FAB34

loc_4FAB52:
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FAB71
jmp     short loc_4FAB2F

loc_4FAB67:
mov     eax, offset unk_50AAA0
call    sub_50045B

loc_4FAB71:
mov     ds:dword_557C18, eax
test    edi, edi
jz      short loc_4FABC4
push    104h            ; nSize
lea     eax, [esp+628h+var_110]
push    eax             ; lpFilename
push    esi             ; hModule
mov     ebx, 208h
call    cs:__imp_GetModuleFileNameA
lea     eax, [esp+624h+var_110]
lea     edx, [esp+624h+var_41C]
call    strdup_
mov     ds:dword_557C14, eax
mov     eax, esi
call    __lib_GetModuleFileNameW_
lea     eax, [esp+624h+var_41C]
call    sub_50045B
mov     ds:dword_557C20, eax

loc_4FABC4:
mov     eax, 1

loc_4FABC9:
add     esp, 618h
pop     edi
pop     esi
pop     ecx
retn
sub_4FA9A8 endp




sub_4FABD3 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     esi, eax
mov     edi, edx
push    0               ; lpModuleName
call    cs:__imp_GetModuleHandleA
mov     ebx, eax
mov     edx, edi
xor     eax, eax
call    sub_4FA9A8
mov     edx, offset unk_557C2C
call    ds:off_551FC4
call    __init_stack_limits_
mov     eax, esi
call    sub_500909
mov     eax, 21h ; '!'
call    __InitRtns
call    ds:off_552004
mov     eax, 0FFh
call    __InitRtns
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FABD3 endp

; [00000042 BYTES: COLLAPSED CHUNK OF FUNCTION sub_50235C]
align 4
; [00000015 BYTES: COLLAPSED FUNCTION IF@ATAN]
; [00000015 BYTES: COLLAPSED FUNCTION IF@ATAN2]

atan_:
fld     qword ptr [esp+4]
call    IF@ATAN
retn    8

atan2_:
fld     qword ptr [esp+0Ch]
fld     qword ptr [esp+4]
call    IF@ATAN2
retn    10h

sqrt_:
test    byte ptr [esp+0Bh], 80h
jz      short loc_4FACD5
mov     eax, [esp+8]
and     eax, 7FFFFFFFh
or      eax, [esp+4]
jz      short loc_4FACD5
push    3
push    dword ptr [esp+0Ch]
push    dword ptr [esp+0Ch]
call    __math87_err_
jmp     short locret_4FACDB

loc_4FACD5:
fld     qword ptr [esp+4]
fsqrt

locret_4FACDB:
retn    8
; [00000037 BYTES: COLLAPSED FUNCTION IF@SQRT]
; [00000205 BYTES: COLLAPSED FUNCTION fread_]



sub_4FAF1A proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi             ; Value
mov     ecx, eax
test    eax, eax
jl      short loc_4FAF2D
cmp     eax, ds:dword_55811C
jbe     short loc_4FAF3E

loc_4FAF2D:
mov     eax, 4
call    __set_errno_
mov     eax, 0FFFFFFFFh
jmp     short loc_4FAF8A

loc_4FAF3E:
call    ds:off_551FC8
mov     ebx, 1
mov     eax, ecx
xor     edx, edx
call    lseek_
mov     esi, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FAF65
mov     eax, ecx
call    ds:off_551FCC
mov     eax, esi
jmp     short loc_4FAF8A

loc_4FAF65:
mov     ebx, 2
mov     eax, ecx
xor     edx, edx
call    lseek_
mov     edi, eax
mov     edx, esi
xor     ebx, ebx
mov     eax, ecx
call    lseek_
mov     eax, ecx
call    ds:off_551FCC
mov     eax, edi

loc_4FAF8A:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FAF1A endp

; [00000206 BYTES: COLLAPSED FUNCTION fwrite_]



sub_4FB196 proc near
push    ebx
push    ecx
push    esi
push    edi
cmp     eax, [edx+4]
jg      short loc_4FB1CB
mov     ebx, [edx+8]
mov     ecx, [edx]
mov     ebx, [ebx+8]
sub     ebx, ecx
cmp     eax, ebx
jl      short loc_4FB1CB
mov     bl, [edx+0Ch]
mov     esi, [edx]
mov     edi, [edx+4]
and     bl, 0EFh
add     esi, eax
mov     [edx+0Ch], bl
sub     edi, eax
mov     [edx], esi
xor     eax, eax
mov     [edx+4], edi
pop     edi
pop     esi
pop     ecx
pop     ebx
retn

loc_4FB1CB:
mov     eax, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FB196 endp




sub_4FB1D5 proc near
push    edx
and     byte ptr [eax+0Ch], 0EFh
mov     edx, [eax+8]
mov     edx, [edx+8]
mov     dword ptr [eax+4], 0
mov     [eax], edx
pop     edx
retn
sub_4FB1D5 endp




sub_4FB1EB proc near
push    ecx
push    esi
push    edi             ; Value
mov     ecx, eax
mov     esi, edx
mov     eax, [eax+10h]
call    ds:off_551FC8
mov     ah, [ecx+0Ch]
test    ah, 6
jz      short loc_4FB268
test    byte ptr [ecx+0Dh], 10h
jz      short loc_4FB228
mov     eax, ecx
call    __flush_
test    eax, eax
jz      short loc_4FB23F
test    ebx, ebx
jnz     short loc_4FB256
test    esi, esi
jge     short loc_4FB256

loc_4FB21C:
mov     eax, 9
call    __set_errno_
jmp     short loc_4FB256

loc_4FB228:
cmp     ebx, 1
jnz     short loc_4FB230
sub     esi, [ecx+4]

loc_4FB230:
mov     eax, [ecx+8]
mov     eax, [eax+8]
mov     dword ptr [ecx+4], 0
mov     [ecx], eax

loc_4FB23F:
and     byte ptr [ecx+0Ch], 0EBh
mov     edx, esi
mov     eax, [ecx+10h]

loc_4FB248:
call    lseek_
cmp     eax, 0FFFFFFFFh
jnz     loc_4FB2EC

loc_4FB256:
mov     eax, [ecx+10h]
call    ds:off_551FCC
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
retn

loc_4FB268:
cmp     ebx, 1
jb      short loc_4FB276
jbe     short loc_4FB27C
cmp     ebx, 2
jz      short loc_4FB2CB
jmp     short loc_4FB21C

loc_4FB276:
test    ebx, ebx
jz      short loc_4FB2A6
jmp     short loc_4FB21C

loc_4FB27C:
mov     edx, ecx
mov     eax, esi
mov     edi, [ecx+4]
call    sub_4FB196
test    eax, eax
jz      short loc_4FB2EC
mov     edx, esi
mov     eax, [ecx+10h]
sub     edx, edi

loc_4FB293:
call    lseek_
cmp     eax, 0FFFFFFFFh
jz      short loc_4FB256
mov     eax, ecx
call    sub_4FB1D5
jmp     short loc_4FB2EC

loc_4FB2A6:
mov     eax, [ecx+10h]
call    tell_
mov     edx, [ecx+4]
mov     edi, esi
sub     eax, edx
sub     edi, eax
mov     edx, ecx
mov     eax, edi
call    sub_4FB196
test    eax, eax
jz      short loc_4FB2EC
mov     edx, esi
mov     eax, [ecx+10h]
jmp     short loc_4FB293

loc_4FB2CB:
mov     dl, ah
and     dl, 0EFh
mov     eax, [ecx+8]
mov     [ecx+0Ch], dl
mov     eax, [eax+8]
mov     [ecx], eax
mov     edx, esi
mov     eax, [ecx+10h]
mov     dword ptr [ecx+4], 0
jmp     loc_4FB248

loc_4FB2EC:
mov     eax, [ecx+10h]
call    ds:off_551FCC
xor     eax, eax
pop     edi
pop     esi
pop     ecx
retn
sub_4FB1EB endp

align 10h
; [000000AF BYTES: COLLAPSED FUNCTION __MemAllocator]
align 10h
; [00000130 BYTES: COLLAPSED FUNCTION __MemFree]
; [00000074 BYTES: COLLAPSED FUNCTION __LinkUpNewMHeap_]
; [00000092 BYTES: COLLAPSED FUNCTION __CreateNewNHeap_]
; [00000011 BYTES: COLLAPSED FUNCTION __ExpandDGROUP_]
; [0000004A BYTES: COLLAPSED FUNCTION __AdjustAmount_]



sub_4FB641 proc near
xor     eax, eax
retn
sub_4FB641 endp

; [0000001E BYTES: COLLAPSED FUNCTION memcmp_]
; [0000001F BYTES: COLLAPSED FUNCTION strcpy_]
align 10h



sub_4FB690 proc near
push    edx
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ebp, eax
mov     ds:dword_55204C, 7FFFh
mov     esi, [ebp+8]
mov     edi, [ebp+0Ch]
call    sub_4FC443
mov     esi, [ebp+0Ch]
mov     edi, [ebp+10h]
call    sub_4FC443
cmp     byte ptr [ebp+0], 3
jz      short loc_4FB6D6
mov     esi, [ebp+10h]
mov     edi, [ebp+14h]
call    sub_4FC443
mov     esi, [ebp+14h]
mov     edi, [ebp+8]
call    sub_4FC443
jmp     short loc_4FB6E1

loc_4FB6D6:
mov     esi, [ebp+10h]
mov     edi, [ebp+8]
call    sub_4FC443

loc_4FB6E1:
mov     esi, ds:dword_55204C
cmp     esi, 7FFFh
jz      short loc_4FB714
mov     ebx, [ebp+4]
mov     ecx, [ebp+0]
and     ecx, 0FFFF0000h
cmp     ecx, ds:dword_552068[ebx*4]
jl      short loc_4FB714
cmp     ecx, ds:dword_5527E8[ebx*4]
jg      short loc_4FB714
mov     eax, 1
jmp     short loc_4FB716

loc_4FB714:
xor     eax, eax

loc_4FB716:
xor     esi, esi
mov     ecx, 1E0h

loc_4FB71D:
mov     ds:dword_552068[esi], 7FFF0000h
mov     ds:dword_5527E8[esi], 80000000h
add     esi, 4
loop    loc_4FB71D
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
pop     edx
retn
sub_4FB690 endp




sub_4FB73D proc near
pushf
pop     eax
mov     edx, eax
xor     eax, 200000h
push    eax
popf
pushf
pop     eax
cmp     eax, edx
jz      short loc_4FB763
mov     eax, 1
cpuid
test    edx, offset unk_800000
jz      short loc_4FB763
mov     eax, 1
retn

loc_4FB763:
xor     eax, eax
retn
sub_4FB73D endp




sub_4FB766 proc near
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, edx
mov     ebp, ecx
cmp     ds:byte_782BF7, 4
jz      loc_4FB83B
sub     ebp, 200h
mov     ch, 0

loc_4FB784:
mov     cl, 20h ; ' '

loc_4FB786:
mov     eax, [esi]
mov     edx, eax
and     edx, 0Fh
mov     dx, [ebx+edx*2]
mov     [edi+2], dx
mov     edx, eax
and     edx, 0F0h
shr     edx, 4
mov     dx, [ebx+edx*2]
mov     [edi], dx
mov     edx, eax
and     edx, 0F00h
shr     edx, 8
mov     dx, [ebx+edx*2]
mov     [edi+6], dx
mov     edx, eax
and     edx, 0F000h
shr     edx, 0Ch
mov     dx, [ebx+edx*2]
mov     [edi+4], dx
mov     edx, eax
and     edx, 0F0000h
shr     edx, 10h
mov     dx, [ebx+edx*2]
mov     [edi+0Ah], dx
mov     edx, eax
and     edx, 0F00000h
shr     edx, 14h
mov     dx, [ebx+edx*2]
mov     [edi+8], dx
mov     edx, eax
and     edx, 0F000000h
shr     edx, 18h
mov     dx, [ebx+edx*2]
mov     [edi+0Eh], dx
mov     edx, eax
and     edx, 0F0000000h
shr     edx, 1Ch
mov     dx, [ebx+edx*2]
mov     [edi+0Ch], dx
add     esi, 4
add     edi, 10h
dec     cl
jnz     loc_4FB786
add     esi, 780h
add     edi, ebp
dec     ch
jnz     loc_4FB784
pop     ebp
pop     edi
pop     esi
retn

loc_4FB83B:
sub     ebp, 400h
mov     ch, 0

loc_4FB843:
mov     cl, 20h ; ' '

loc_4FB845:
mov     eax, [esi]
mov     edx, eax
and     edx, 0Fh
mov     edx, [ebx+edx*4]
mov     [edi+4], edx
mov     edx, eax
and     edx, 0F0h
shr     edx, 4
mov     edx, [ebx+edx*4]
mov     [edi], edx
mov     edx, eax
and     edx, 0F00h
shr     edx, 8
mov     edx, [ebx+edx*4]
mov     [edi+0Ch], edx
mov     edx, eax
and     edx, 0F000h
shr     edx, 0Ch
mov     edx, [ebx+edx*4]
mov     [edi+8], edx
mov     edx, eax
and     edx, 0F0000h
shr     edx, 10h
mov     edx, [ebx+edx*4]
mov     [edi+14h], edx
mov     edx, eax
and     edx, 0F00000h
shr     edx, 14h
mov     edx, [ebx+edx*4]
mov     [edi+10h], edx
mov     edx, eax
and     edx, 0F000000h
shr     edx, 18h
mov     edx, [ebx+edx*4]
mov     [edi+1Ch], edx
mov     edx, eax
and     edx, 0F0000000h
shr     edx, 1Ch
mov     edx, [ebx+edx*4]
mov     [edi+18h], edx
add     esi, 4
add     edi, 20h ; ' '
dec     cl
jnz     loc_4FB845
add     esi, 780h
add     edi, ebp
dec     ch
jnz     loc_4FB843
pop     ebp
pop     edi
pop     esi
retn
sub_4FB766 endp




sub_4FB8EA proc near
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, edx
mov     ebp, ecx
cmp     ds:byte_782BF7, 4
jz      short loc_4FB96A
sub     ebp, 200h
mov     ch, 0

loc_4FB904:
mov     cl, 40h ; '@'

loc_4FB906:
mov     eax, [esi]
mov     edx, eax
and     edx, 0FFh
mov     dx, [ebx+edx*2]
mov     [edi], dx
mov     edx, eax
and     edx, 0FF00h
shr     edx, 8
mov     dx, [ebx+edx*2]
mov     [edi+2], dx
mov     edx, eax
and     edx, 0FF0000h
shr     edx, 10h
mov     dx, [ebx+edx*2]
mov     [edi+4], dx
mov     edx, eax
and     edx, 0FF000000h
shr     edx, 18h
mov     dx, [ebx+edx*2]
mov     [edi+6], dx
add     esi, 4
add     edi, 8
dec     cl
jnz     short loc_4FB906
add     esi, 700h
add     edi, ebp
dec     ch
jnz     short loc_4FB904
pop     ebp
pop     edi
pop     esi
retn

loc_4FB96A:
sub     ebp, 400h
mov     ch, 0

loc_4FB972:
mov     cl, 40h ; '@'

loc_4FB974:
mov     eax, [esi]
mov     edx, eax
and     edx, 0FFh
mov     edx, [ebx+edx*4]
mov     [edi], edx
mov     edx, eax
and     edx, 0FF00h
shr     edx, 8
mov     edx, [ebx+edx*4]
mov     [edi+4], edx
mov     edx, eax
and     edx, 0FF0000h
shr     edx, 10h
mov     edx, [ebx+edx*4]
mov     [edi+8], edx
mov     edx, eax
and     edx, 0FF000000h
shr     edx, 18h
mov     edx, [ebx+edx*4]
mov     [edi+0Ch], edx
add     esi, 4
add     edi, 10h
dec     cl
jnz     short loc_4FB974
add     esi, 700h
add     edi, ebp
dec     ch
jnz     short loc_4FB972
pop     ebp
pop     edi
pop     esi
retn
sub_4FB8EA endp




sub_4FB9D0 proc near
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, edx
mov     ebp, ecx
cmp     ds:byte_782BF7, 4
jz      loc_4FBAE7
sub     ebp, 30h ; '0'
mov     ch, 1Ch

loc_4FB9EB:
mov     cl, 3

loc_4FB9ED:
mov     eax, [esi]
mov     edx, eax
and     edx, 0Fh
mov     dx, [ebx+edx*2]
mov     [edi+2], dx
mov     edx, eax
and     edx, 0F0h
shr     edx, 4
mov     dx, [ebx+edx*2]
mov     [edi], dx
mov     edx, eax
and     edx, 0F00h
shr     edx, 8
mov     dx, [ebx+edx*2]
mov     [edi+6], dx
mov     edx, eax
and     edx, 0F000h
shr     edx, 0Ch
mov     dx, [ebx+edx*2]
mov     [edi+4], dx
mov     edx, eax
and     edx, 0F0000h
shr     edx, 10h
mov     dx, [ebx+edx*2]
mov     [edi+0Ah], dx
mov     edx, eax
and     edx, 0F00000h
shr     edx, 14h
mov     dx, [ebx+edx*2]
mov     [edi+8], dx
mov     edx, eax
and     edx, 0F000000h
shr     edx, 18h
mov     dx, [ebx+edx*2]
mov     [edi+0Eh], dx
mov     edx, eax
and     edx, 0F0000000h
shr     edx, 1Ch
mov     dx, [ebx+edx*2]
mov     [edi+0Ch], dx
add     esi, 4
add     edi, 10h
dec     cl
jnz     loc_4FB9ED
mov     ax, [esi]
mov     edx, eax
and     edx, 0Fh
mov     dx, [ebx+edx*2]
mov     [edi+2], dx
mov     edx, eax
and     edx, 0F0h
shr     edx, 4
mov     dx, [ebx+edx*2]
mov     [edi], dx
mov     edx, eax
and     edx, 0F00h
shr     edx, 8
mov     dx, [ebx+edx*2]
mov     [edi+6], dx
mov     edx, eax
and     edx, 0F000h
shr     edx, 0Ch
mov     dx, [ebx+edx*2]
mov     [edi+4], dx
add     esi, 2
add     edi, ebp
dec     ch
jnz     loc_4FB9EB
pop     ebp
pop     edi
pop     esi
retn

loc_4FBAE7:
sub     ebp, 60h ; '`'
mov     ch, 1Ch

loc_4FBAEC:
mov     cl, 3

loc_4FBAEE:
mov     eax, [esi]
mov     edx, eax
and     edx, 0Fh
mov     edx, [ebx+edx*4]
mov     [edi+4], edx
mov     edx, eax
and     edx, 0F0h
shr     edx, 4
mov     edx, [ebx+edx*4]
mov     [edi], edx
mov     edx, eax
and     edx, 0F00h
shr     edx, 8
mov     edx, [ebx+edx*4]
mov     [edi+0Ch], edx
mov     edx, eax
and     edx, 0F000h
shr     edx, 0Ch
mov     edx, [ebx+edx*4]
mov     [edi+8], edx
mov     edx, eax
and     edx, 0F0000h
shr     edx, 10h
mov     edx, [ebx+edx*4]
mov     [edi+14h], edx
mov     edx, eax
and     edx, 0F00000h
shr     edx, 14h
mov     edx, [ebx+edx*4]
mov     [edi+10h], edx
mov     edx, eax
and     edx, 0F000000h
shr     edx, 18h
mov     edx, [ebx+edx*4]
mov     [edi+1Ch], edx
mov     edx, eax
and     edx, 0F0000000h
shr     edx, 1Ch
mov     edx, [ebx+edx*4]
mov     [edi+18h], edx
add     esi, 4
add     edi, 20h ; ' '
dec     cl
jnz     loc_4FBAEE
mov     ax, [esi]
mov     edx, eax
and     edx, 0Fh
mov     edx, [ebx+edx*4]
mov     [edi+4], edx
mov     edx, eax
and     edx, 0F0h
shr     edx, 4
mov     edx, [ebx+edx*4]
mov     [edi], edx
mov     edx, eax
and     edx, 0F00h
shr     edx, 8
mov     edx, [ebx+edx*4]
mov     [edi+0Ch], edx
mov     edx, eax
and     edx, 0F000h
shr     edx, 0Ch
mov     edx, [ebx+edx*4]
mov     [edi+8], edx
add     esi, 2
add     edi, ebp
dec     ch
jnz     loc_4FBAEC
pop     ebp
pop     edi
pop     esi
retn
sub_4FB9D0 endp




sub_4FBBD0 proc near
push    ebx
push    ecx
push    esi
push    edi
movzx   esi, word ptr [edx+2]
movzx   ebx, word ptr [edx]
shl     esi, 0Bh
lea     esi, [esi+ebx*2]
add     esi, eax
mov     edi, [edx+0Ch]
mov     ebx, [edx+8]
shl     edi, 0Bh
lea     edi, [edi+ebx*2]
add     edi, eax
mov     bx, [edx+6]
movzx   edx, word ptr [edx+4]
mov     eax, 400h
sub     eax, edx
shl     eax, 1
shr     edx, 1

loc_4FBC04:
mov     ecx, edx
rep movsd
add     esi, eax
add     edi, eax
dec     ebx
jnz     short loc_4FBC04
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FBBD0 endp




sub_4FBC14 proc near
push    eax
push    ebx
push    edx
cmp     ds:byte_782BF6, 10h
jnz     short loc_4FBC63
mov     edx, ds:dword_782C08
cmp     edx, 3E0h
jnz     short loc_4FBC3A
mov     eax, offset loc_4FBCBB
mov     edx, offset loc_4FBD06
jmp     short loc_4FBC58

loc_4FBC3A:
cmp     edx, 7E0h
jnz     short loc_4FBC4E
mov     eax, offset loc_4FBCD4
mov     edx, offset loc_4FBD19
jmp     short loc_4FBC58

loc_4FBC4E:
mov     eax, offset loc_4FBCED
mov     edx, offset loc_4FBD2C

loc_4FBC58:
mov     ds:dword_55205C, eax
mov     ds:dword_552060, edx

loc_4FBC63:
movzx   eax, ds:byte_782BF5
mov     eax, ds:off_557A6C[eax*4]
mov     ds:dword_557A68, eax
call    sub_4FB73D
mov     ebx, eax
movzx   eax, ds:byte_782BF6
shr     eax, 3
sub     eax, 2
mov     edx, eax
test    ebx, 1
jz      short loc_4FBC97
add     eax, 3

loc_4FBC97:
mov     eax, ds:off_557A78[eax*4]
mov     ds:dword_557A74, eax
imul    edx, 5
test    ebx, 1
jz      short loc_4FBCB1
add     edx, 0Fh

loc_4FBCB1:
mov     ds:dword_552064, edx
pop     edx
pop     ebx
pop     eax
retn

loc_4FBCBB:
shld    edx, eax, 19h
shl     eax, 16h
shld    edx, eax, 8
shl     eax, 5
shld    edx, eax, 8
and     edx, 0F8F8F8h
retn

loc_4FBCD4:
shld    edx, eax, 18h
shl     eax, 15h
shld    edx, eax, 8
shl     eax, 6
shld    edx, eax, 8
and     edx, 0F8FCF8h
retn

loc_4FBCED:
shld    edx, eax, 1Ch
shl     eax, 18h
shld    edx, eax, 8
shl     eax, 4
shld    edx, eax, 8
and     edx, 0F0F0F0h
retn

loc_4FBD06:
shld    eax, edx, 0Dh
shl     edx, 10h
shld    eax, edx, 5
shl     edx, 8
shld    eax, edx, 5
retn

loc_4FBD19:
shld    eax, edx, 0Dh
shl     edx, 10h
shld    eax, edx, 6
shl     edx, 8
shld    eax, edx, 5
retn

loc_4FBD2C:
shld    eax, edx, 0Ch
shl     edx, 10h
shld    eax, edx, 4
shl     edx, 8
shld    eax, edx, 4
retn
sub_4FBC14 endp




sub_4FBD3F proc near
push    eax
push    ebx
push    edx
mov     ecx, ds:dword_782BF8
shr     eax, cl
and     eax, ds:dword_782C04
mov     ecx, ds:dword_782BFC
shr     ebx, cl
and     ebx, ds:dword_782C08
mov     ecx, ds:dword_782C00
shr     edx, cl
and     edx, ds:dword_782C0C
mov     ecx, eax
or      ecx, ebx
or      ecx, edx
pop     edx
pop     ebx
pop     eax
retn
sub_4FBD3F endp




sub_4FBD76 proc near
and     eax, 0FC0000h
shr     ebx, 8
and     ebx, 0FC00h
shr     edx, 10h
and     edx, 0FCh
mov     ecx, eax
or      ecx, ebx
or      ecx, edx
retn
sub_4FBD76 endp




sub_4FBD94 proc near
shr     eax, 10h
and     eax, 0FCh
shr     ebx, 8
and     ebx, 0FC00h
and     edx, 0FC0000h
mov     ecx, eax
or      ecx, ebx
or      ecx, edx
retn
sub_4FBD94 endp




sub_4FBDB2 proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ds:dword_552014, eax
mov     ds:dword_552010, edx
mov     ebp, ebx
mov     eax, [ebp-2]
mov     ebx, [ebp-1]
mov     edx, [ebp+0]
call    ds:dword_557A68
mov     ds:dword_552058, ecx
mov     al, [ebp+3]
and     eax, 7
add     eax, ds:dword_552064
mov     eax, ds:off_557A94[eax*4]
mov     ds:dword_557A90, eax
mov     ds:dword_55204C, 7FFFh
movzx   ebx, byte ptr [ebp+20h]
movzx   edx, byte ptr [ebp+22h]
shl     ebx, 10h
shl     edx, 10h
mov     bl, [ebp+21h]
mov     dl, [ebp+23h]
mov     esi, [ebp+10h]
mov     edi, [ebp+14h]
call    sub_4FC2A9
movzx   ebx, byte ptr [ebp+22h]
movzx   edx, byte ptr [ebp+24h]
shl     ebx, 10h
shl     edx, 10h
mov     bl, [ebp+23h]
mov     dl, [ebp+25h]
mov     esi, [ebp+14h]
mov     edi, [ebp+18h]
call    sub_4FC2A9
test    byte ptr [ebp+3], 80h
jz      short loc_4FBE7E
movzx   ebx, byte ptr [ebp+24h]
movzx   edx, byte ptr [ebp+26h]
shl     ebx, 10h
shl     edx, 10h
mov     bl, [ebp+25h]
mov     dl, [ebp+27h]
mov     esi, [ebp+18h]
mov     edi, [ebp+1Ch]
call    sub_4FC2A9
movzx   ebx, byte ptr [ebp+26h]
movzx   edx, byte ptr [ebp+20h]
shl     ebx, 10h
shl     edx, 10h
mov     bl, [ebp+27h]
mov     dl, [ebp+21h]
mov     esi, [ebp+1Ch]
mov     edi, [ebp+10h]
call    sub_4FC2A9
jmp     short loc_4FBE9D

loc_4FBE7E:
movzx   ebx, byte ptr [ebp+24h]
movzx   edx, byte ptr [ebp+20h]
shl     ebx, 10h
shl     edx, 10h
mov     bl, [ebp+25h]
mov     dl, [ebp+21h]
mov     esi, [ebp+18h]
mov     edi, [ebp+10h]
call    sub_4FC2A9

loc_4FBE9D:
mov     esi, ds:dword_55204C
cmp     esi, 7FFFh
jz      loc_4FBF82
mov     edi, esi
imul    edi, ds:dword_88776C
add     edi, ds:dword_552014
shl     esi, 2

loc_4FBEC1:
mov     ebx, ds:dword_552068[esi]
mov     ecx, ds:dword_5527E8[esi]
cmp     ebx, 7FFF0000h
jz      loc_4FBF82
sar     ebx, 10h
sar     ecx, 10h
mov     ebp, ecx
sub     ebp, ebx
jz      short loc_4FBF59
cmp     ecx, 0
jle     short loc_4FBF59
cmp     ebx, 280h
jge     short loc_4FBF59
mov     eax, ds:dword_553E68[esi]
sub     eax, ds:dword_552F68[esi]
cdq
idiv    ebp
mov     ds:dword_552024, eax
mov     eax, ds:dword_5545E8[esi]
sub     eax, ds:dword_5536E8[esi]
cdq
idiv    ebp
mov     ds:dword_552028, eax
cmp     ebx, 0
jge     short loc_4FBF49
mov     eax, 0
sub     eax, ebx
mov     ebx, eax
sub     ebp, ebx
imul    ds:dword_552024
add     ds:dword_552F68[esi], eax
mov     eax, ebx
imul    ds:dword_552028
add     ds:dword_5536E8[esi], eax
mov     ebx, 0

loc_4FBF49:
sub     ecx, 280h
jle     short loc_4FBF53
sub     ebp, ecx

loc_4FBF53:
call    ds:dword_557A90

loc_4FBF59:
mov     ds:dword_552068[esi], 7FFF0000h
mov     ds:dword_5527E8[esi], 80000000h
add     edi, ds:dword_88776C
add     esi, 4
cmp     esi, 780h
jb      loc_4FBEC1

loc_4FBF82:
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FBDB2 endp




sub_4FBF87 proc near
push    ebx
push    ecx
push    esi
push    edi
push    ebp
mov     ds:dword_552014, eax
mov     ebp, edx
mov     eax, [ebp-2]
mov     ebx, [ebp-1]
mov     edx, [ebp+0]
call    sub_4FBD3F
or      ecx, ecx
jz      loc_4FC0C5
mov     ds:dword_552050, ecx
cmp     ds:byte_782BF6, 10h
jnz     short loc_4FBFC8
mov     eax, ecx
call    ds:dword_55205C
mov     ds:dword_552054, edx
jmp     short loc_4FBFD2

loc_4FBFC8:
and     ds:dword_552050, 0FCFCFCh

loc_4FBFD2:
mov     al, [ebp+3]
and     eax, 7
add     eax, ds:dword_552064
mov     eax, ds:off_557B10[eax*4]
mov     ds:dword_557B0C, eax
mov     ds:dword_55204C, 7FFFh
mov     esi, [ebp+10h]
mov     edi, [ebp+14h]
call    sub_4FC443
mov     esi, [ebp+14h]
mov     edi, [ebp+18h]
call    sub_4FC443
test    byte ptr [ebp+3], 80h
jz      short loc_4FC028
mov     esi, [ebp+18h]
mov     edi, [ebp+1Ch]
call    sub_4FC443
mov     esi, [ebp+1Ch]
mov     edi, [ebp+10h]
call    sub_4FC443
jmp     short loc_4FC033

loc_4FC028:
mov     esi, [ebp+18h]
mov     edi, [ebp+10h]
call    sub_4FC443

loc_4FC033:
mov     esi, ds:dword_55204C
cmp     esi, 7FFFh
jz      loc_4FC0C5
mov     edi, esi
imul    edi, ds:dword_88776C
add     edi, ds:dword_552014
shl     esi, 2

loc_4FC057:
mov     ebx, ds:dword_552068[esi]
mov     ecx, ds:dword_5527E8[esi]
cmp     ebx, 7FFF0000h
jz      short loc_4FC0C5
sar     ebx, 10h
sar     ecx, 10h
mov     ebp, ecx
sub     ebp, ebx
jz      short loc_4FC0A0
cmp     ecx, 0
jle     short loc_4FC0A0
cmp     ebx, 280h
jge     short loc_4FC0A0
cmp     ebx, 0
jge     short loc_4FC090
add     ebp, ebx
mov     ebx, 0

loc_4FC090:
sub     ecx, 280h
jle     short loc_4FC09A
sub     ebp, ecx

loc_4FC09A:
call    ds:dword_557B0C

loc_4FC0A0:
mov     ds:dword_552068[esi], 7FFF0000h
mov     ds:dword_5527E8[esi], 80000000h
add     edi, ds:dword_88776C
add     esi, 4
cmp     esi, 780h
jb      short loc_4FC057

loc_4FC0C5:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FBF87 endp




sub_4FC0CB proc near
push    ecx
push    esi
push    edi
push    ebp
mov     ds:dword_552014, eax
mov     ebp, edx
mov     al, [ebp+3]
and     eax, 7
add     eax, ds:dword_552064
mov     eax, ds:off_557B8C[eax*4]
mov     ds:dword_557B88, eax
mov     ds:dword_55204C, 7FFFh
mov     ebx, [ebp+0]
mov     edx, [ebp+4]
mov     esi, [ebp+10h]
mov     edi, [ebp+14h]
call    sub_4FC516
mov     ebx, [ebp+4]
mov     edx, [ebp+8]
mov     esi, [ebp+14h]
mov     edi, [ebp+18h]
call    sub_4FC516
test    byte ptr [ebp+3], 80h
jz      short loc_4FC144
mov     ebx, [ebp+8]
mov     edx, [ebp+0Ch]
mov     esi, [ebp+18h]
mov     edi, [ebp+1Ch]
call    sub_4FC516
mov     ebx, [ebp+0Ch]
mov     edx, [ebp+0]
mov     esi, [ebp+1Ch]
mov     edi, [ebp+10h]
call    sub_4FC516
jmp     short loc_4FC155

loc_4FC144:
mov     ebx, [ebp+8]
mov     edx, [ebp+0]
mov     esi, [ebp+18h]
mov     edi, [ebp+10h]
call    sub_4FC516

loc_4FC155:
mov     esi, ds:dword_55204C
cmp     esi, 7FFFh
jz      loc_4FC268
mov     edi, esi
imul    edi, ds:dword_88776C
add     edi, ds:dword_552014
shl     esi, 2

loc_4FC179:
mov     ebx, ds:dword_552068[esi]
mov     ecx, ds:dword_5527E8[esi]
cmp     ebx, 7FFF0000h
jz      loc_4FC268
sar     ebx, 10h
sar     ecx, 10h
mov     ebp, ecx
sub     ebp, ebx
jz      loc_4FC23F
cmp     ecx, 0
jle     loc_4FC23F
cmp     ebx, 280h
jge     loc_4FC23F
mov     eax, ds:dword_5563E8[esi]
sub     eax, ds:dword_554D68[esi]
cdq
idiv    ebp
mov     ds:dword_55203C, eax
mov     eax, ds:dword_556B68[esi]
sub     eax, ds:dword_5554E8[esi]
cdq
idiv    ebp
mov     ds:dword_552040, eax
mov     eax, ds:dword_5572E8[esi]
sub     eax, ds:dword_555C68[esi]
cdq
idiv    ebp
mov     ds:dword_552044, eax
cmp     ebx, 0
jge     short loc_4FC22F
mov     eax, 0
sub     eax, ebx
mov     ebx, eax
sub     ebp, ebx
imul    ds:dword_55203C
add     ds:dword_554D68[esi], eax
mov     eax, ebx
imul    ds:dword_552040
add     ds:dword_5554E8[esi], eax
mov     eax, ebx
imul    ds:dword_552044
add     ds:dword_555C68[esi], eax
mov     ebx, 0

loc_4FC22F:
sub     ecx, 280h
jle     short loc_4FC239
sub     ebp, ecx

loc_4FC239:
call    ds:dword_557B88

loc_4FC23F:
mov     ds:dword_552068[esi], 7FFF0000h
mov     ds:dword_5527E8[esi], 80000000h
add     edi, ds:dword_88776C
add     esi, 4
cmp     esi, 780h
jb      loc_4FC179

loc_4FC268:
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FC0CB endp




sub_4FC26D proc near
push    ecx
push    esi
push    edi
push    ebp
mov     edi, eax
mov     esi, edx
mov     ebp, ebx
mov     eax, [ebp-2]
mov     ebx, [ebp-1]
mov     edx, [ebp+0]
call    ds:dword_557A68
mov     ds:dword_552058, ecx
movzx   eax, word ptr [ebp+10h]
movzx   ebx, word ptr [ebp+12h]
mov     ebp, ds:dword_88776C
imul    ebp
add     edi, eax
call    ds:dword_557A74
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FC26D endp




sub_4FC2A9 proc near
push    ebp
mov     bp, di
sub     bp, si
jz      loc_4FC441
jg      short loc_4FC2BF
neg     bp
xchg    ebx, edx
xchg    esi, edi

loc_4FC2BF:
and     ebp, 0FFFFh
mov     eax, ebx
mov     ecx, edx
and     eax, 0FFFF0000h
and     ecx, 0FFFF0000h
sub     ecx, eax
mov     cx, dx
sub     cx, bx
cmp     di, 0
jle     loc_4FC441
cmp     si, 1E0h
jge     loc_4FC441
mov     ax, si
cmp     ax, word ptr ds:dword_55204C
jge     short loc_4FC30D
cmp     ax, 0
jge     short loc_4FC307
mov     ax, 0

loc_4FC307:
mov     word ptr ds:dword_55204C, ax

loc_4FC30D:
mov     eax, ebx
and     eax, 0FFFF0000h
mov     ds:dword_552018, eax
shl     ebx, 10h
mov     ds:dword_55201C, ebx
mov     eax, ecx
and     eax, 0FFFF0000h
jz      short loc_4FC33B
or      eax, 8000h
cdq
idiv    ebp
cdq
mov     word ptr ds:dword_552018, dx

loc_4FC33B:
mov     ds:dword_552024, eax
shrd    eax, ecx, 10h
and     eax, 0FFFF0000h
jz      short loc_4FC35B
or      eax, 8000h
cdq
idiv    ebp
cdq
mov     word ptr ds:dword_55201C, dx

loc_4FC35B:
mov     ds:dword_552028, eax
mov     eax, edi
mov     ebx, esi
and     eax, 0FFFF0000h
and     ebx, 0FFFF0000h
mov     ds:dword_552020, ebx
sub     eax, ebx
cdq
idiv    ebp
mov     ds:dword_55202C, eax
cmp     si, 0
jge     short loc_4FC3BE
mov     eax, 0
sub     ax, si
mov     esi, eax
sub     ebp, esi
imul    ds:dword_552024
add     ds:dword_552018, eax
mov     eax, esi
imul    ds:dword_552028
add     ds:dword_55201C, eax
mov     eax, esi
imul    ds:dword_55202C
add     ds:dword_552020, eax
mov     esi, 0

loc_4FC3BE:
sub     di, 1E0h
jle     short loc_4FC3CA
movzx   edi, di
sub     ebp, edi

loc_4FC3CA:
mov     ds:dword_552048, ebp
mov     eax, ds:dword_552018
mov     ebx, ds:dword_552024
mov     ecx, ds:dword_55201C
mov     edx, ds:dword_552028
mov     edi, ds:dword_552020
mov     ebp, ds:dword_55202C
and     esi, 0FFFFh
shl     esi, 2

loc_4FC3FC:
cmp     edi, ds:dword_552068[esi]
jge     short loc_4FC416
mov     ds:dword_552068[esi], edi
mov     ds:dword_552F68[esi], eax
mov     ds:dword_5536E8[esi], ecx

loc_4FC416:
cmp     edi, ds:dword_5527E8[esi]
jle     short loc_4FC430
mov     ds:dword_5527E8[esi], edi
mov     ds:dword_553E68[esi], eax
mov     ds:dword_5545E8[esi], ecx

loc_4FC430:
add     eax, ebx
add     ecx, edx
add     edi, ebp
add     esi, 4
dec     ds:dword_552048
jnz     short loc_4FC3FC

loc_4FC441:
pop     ebp
retn
sub_4FC2A9 endp




sub_4FC443 proc near
push    ebp
mov     bp, di
sub     bp, si
jz      loc_4FC514
jg      short loc_4FC457
neg     bp
xchg    esi, edi

loc_4FC457:
and     ebp, 0FFFFh
cmp     di, 0
jle     loc_4FC514
cmp     si, 1E0h
jge     loc_4FC514
mov     ax, si
cmp     ax, word ptr ds:dword_55204C
jge     short loc_4FC48E
cmp     ax, 0
jge     short loc_4FC488
mov     ax, 0

loc_4FC488:
mov     word ptr ds:dword_55204C, ax

loc_4FC48E:
mov     eax, edi
mov     ebx, esi
and     eax, 0FFFF0000h
and     ebx, 0FFFF0000h
mov     ds:dword_552020, ebx
sub     eax, ebx
cdq
idiv    ebp
mov     ds:dword_55202C, eax
cmp     si, 0
jge     short loc_4FC4CE
mov     eax, 0
sub     ax, si
sub     ebp, eax
imul    ds:dword_55202C
add     ds:dword_552020, eax
mov     esi, 0

loc_4FC4CE:
sub     di, 1E0h
jle     short loc_4FC4DA
movzx   edi, di
sub     ebp, edi

loc_4FC4DA:
mov     ecx, ebp
mov     edi, ds:dword_552020
mov     ebp, ds:dword_55202C
and     esi, 0FFFFh
shl     esi, 2

loc_4FC4F1:
cmp     edi, ds:dword_552068[esi]
jge     short loc_4FC4FF
mov     ds:dword_552068[esi], edi

loc_4FC4FF:
cmp     edi, ds:dword_5527E8[esi]
jle     short loc_4FC50D
mov     ds:dword_5527E8[esi], edi

loc_4FC50D:
add     edi, ebp
add     esi, 4
loop    loc_4FC4F1

loc_4FC514:
pop     ebp
retn
sub_4FC443 endp




sub_4FC516 proc near
push    ebp
mov     bp, di
sub     bp, si
jz      loc_4FC6DA
jg      short loc_4FC52C
neg     bp
xchg    edx, ebx
xchg    esi, edi

loc_4FC52C:
and     ebp, 0FFFFh
mov     eax, ebx
mov     ecx, edx
and     eax, 0FF0000h
and     ecx, 0FF00FFh
sub     ecx, eax
mov     al, bl
xor     ah, ah
sub     cx, ax
mov     al, bh
mov     dl, dh
xor     dh, dh
sub     dx, ax
cmp     di, 0
jle     loc_4FC6DA
cmp     si, 1E0h
jge     loc_4FC6DA
mov     ax, si
cmp     ax, word ptr ds:dword_55204C
jge     short loc_4FC584
cmp     ax, 0
jge     short loc_4FC57E
mov     ax, 0

loc_4FC57E:
mov     word ptr ds:dword_55204C, ax

loc_4FC584:
mov     eax, ebx
and     eax, 0FF0000h
mov     ds:dword_552038, eax
mov     ds:dword_552034, 0
mov     byte ptr ds:dword_552034+2, bh
mov     ds:dword_552030, 0
mov     byte ptr ds:dword_552030+2, bl
shrd    eax, edx, 10h
and     eax, 0FFFF0000h
cdq
idiv    ebp
mov     ds:dword_552040, eax
mov     eax, ecx
and     eax, 0FFFF0000h
cdq
idiv    ebp
mov     ds:dword_552044, eax
shrd    eax, ecx, 10h
and     eax, 0FFFF0000h
cdq
idiv    ebp
mov     ds:dword_55203C, eax
mov     eax, edi
mov     ebx, esi
and     eax, 0FFFF0000h
and     ebx, 0FFFF0000h
mov     ds:dword_552020, ebx
sub     eax, ebx
cdq
idiv    ebp
mov     ds:dword_55202C, eax
cmp     si, 0
jge     short loc_4FC64D
mov     eax, 0
sub     ax, si
mov     esi, eax
sub     ebp, eax
imul    ds:dword_55203C
add     ds:dword_552030, eax
mov     eax, esi
imul    ds:dword_552040
add     ds:dword_552034, eax
mov     eax, esi
imul    ds:dword_552044
add     ds:dword_552038, eax
mov     eax, esi
imul    ds:dword_55202C
add     ds:dword_552020, eax
mov     esi, 0

loc_4FC64D:
sub     di, 1E0h
jle     short loc_4FC659
movzx   edi, di
sub     ebp, edi

loc_4FC659:
mov     ecx, ebp
mov     eax, ds:dword_552030
mov     ebx, ds:dword_552034
mov     edx, ds:dword_552038
mov     edi, ds:dword_552020
mov     ebp, ds:dword_55202C
and     esi, 0FFFFh
shl     esi, 2

loc_4FC681:
cmp     edi, ds:dword_552068[esi]
jge     short loc_4FC6A1
mov     ds:dword_552068[esi], edi
mov     ds:dword_554D68[esi], eax
mov     ds:dword_5554E8[esi], ebx
mov     ds:dword_555C68[esi], edx

loc_4FC6A1:
cmp     edi, ds:dword_5527E8[esi]
jle     short loc_4FC6C1
mov     ds:dword_5527E8[esi], edi
mov     ds:dword_5563E8[esi], eax
mov     ds:dword_556B68[esi], ebx
mov     ds:dword_5572E8[esi], edx

loc_4FC6C1:
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
add     edi, ebp
add     esi, 4
loop    loc_4FC681

loc_4FC6DA:
pop     ebp
retn
sub_4FC516 endp




sub_4FC6DC proc near
mov     edx, ds:dword_552010
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC6F3:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
mov     ax, [esi+edx]
or      ax, ax
jz      short loc_4FC714
mov     [edi], ax

loc_4FC714:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC6F3
pop     esi
pop     edi
retn
sub_4FC6DC endp




sub_4FC729 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC73A:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC77B
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
add     edx, esi
shr     edx, 1
call    ds:dword_552060
mov     [edi], ax

loc_4FC77B:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC73A
pop     esi
pop     edi
retn
sub_4FC729 endp




sub_4FC790 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC7A1:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC80A
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
add     edx, esi
test    edx, 1000000h
jz      short loc_4FC7E5
or      edx, 0FF0000h

loc_4FC7E5:
test    edx, 10000h
jz      short loc_4FC7F3
or      edx, 0FF00h

loc_4FC7F3:
test    edx, 100h
jz      short loc_4FC801
or      edx, 0FFh

loc_4FC801:
call    ds:dword_552060
mov     [edi], ax

loc_4FC80A:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC7A1
pop     esi
pop     edi
retn
sub_4FC790 endp




sub_4FC81F proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC830:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC896
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
mov     eax, esi
sub     dl, al
jnb     short loc_4FC870
and     edx, 0FFFF00h

loc_4FC870:
sub     dh, ah
jnb     short loc_4FC87A
and     edx, 0FF00FFh

loc_4FC87A:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FC88A
and     edx, 0FF0000FFh

loc_4FC88A:
rol     edx, 8
call    ds:dword_552060
mov     [edi], ax

loc_4FC896:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC830
pop     esi
pop     edi
retn
sub_4FC81F endp




sub_4FC8AB proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC8BC:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC928
call    ds:dword_55205C
mov     esi, edx
mov     ax, [edi]
call    ds:dword_55205C
shr     esi, 2
add     edx, esi
test    edx, 1000000h
jz      short loc_4FC903
or      edx, 0FF0000h

loc_4FC903:
test    edx, 10000h
jz      short loc_4FC911
or      edx, 0FF00h

loc_4FC911:
test    edx, 100h
jz      short loc_4FC91F
or      edx, 0FFh

loc_4FC91F:
call    ds:dword_552060
mov     [edi], ax

loc_4FC928:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC8BC
pop     esi
pop     edi
retn
sub_4FC8AB endp




sub_4FC93D proc near
xor     edx, edx
movd    mm2, edx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC95D:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FC9B8
call    ds:dword_55205C
movd    mm0, edx
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
mov     ax, [edi]
call    ds:dword_55205C
movd    mm3, edx
punpcklbw mm3, mm2
paddusw mm3, mm0
psrlw   mm3, 1
packuswb mm3, mm2
movd    edx, mm3
call    ds:dword_552060
mov     [edi], ax

loc_4FC9B8:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC95D
pop     esi
pop     edi
emms
retn
sub_4FC93D endp




sub_4FC9CF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FC9E0:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FCA27
call    ds:dword_55205C
movd    mm0, edx
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, edx
paddusb mm1, mm0
movd    edx, mm1
call    ds:dword_552060
mov     [edi], ax

loc_4FCA27:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FC9E0
pop     esi
pop     edi
emms
retn
sub_4FC9CF endp




sub_4FCA3E proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCA4F:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FCA96
call    ds:dword_55205C
movd    mm0, edx
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, edx
psubusb mm1, mm0
movd    edx, mm1
call    ds:dword_552060
mov     [edi], ax

loc_4FCA96:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCA4F
pop     esi
pop     edi
emms
retn
sub_4FCA3E endp




sub_4FCAAD proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCABE:
shld    eax, ecx, 11h
shld    esi, ebx, 19h
and     eax, 1FEh
and     esi, 1FE00h
add     esi, eax
add     esi, ds:dword_552010
mov     ax, [esi]
or      ax, ax
jz      short loc_4FCB08
call    ds:dword_55205C
shr     edx, 2
movd    mm0, edx
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, edx
paddusb mm1, mm0
movd    edx, mm1
call    ds:dword_552060
mov     [edi], ax

loc_4FCB08:
add     edi, 2
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCABE
pop     esi
pop     edi
emms
retn
sub_4FCAAD endp




sub_4FCB1F proc near
mov     edx, ds:dword_552010
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCB38:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
mov     eax, [esi+edx]
and     eax, 0FFFFFFh
jz      short loc_4FCB60
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCB60:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCB38
pop     esi
pop     edi
retn
sub_4FCB1F endp




sub_4FCB75 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCB88:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCBC1
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
shr     eax, 1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCBC1:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCB88
pop     esi
pop     edi
retn
sub_4FCB75 endp




sub_4FCBD6 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCBE9:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCC44
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
test    eax, 1000000h
jz      short loc_4FCC23
or      eax, 0FF0000h

loc_4FCC23:
test    eax, 10000h
jz      short loc_4FCC2F
or      eax, 0FF00h

loc_4FCC2F:
test    eax, 100h
jz      short loc_4FCC3B
or      eax, 0FFh

loc_4FCC3B:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCC44:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCBE9
pop     esi
pop     edi
retn
sub_4FCBD6 endp




sub_4FCC59 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCC6C:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCCC8
mov     edx, [edi]
and     edx, 0FCFCFCh
sub     dl, al
jnb     short loc_4FCCA2
and     edx, 0FFFF00h

loc_4FCCA2:
sub     dh, ah
jnb     short loc_4FCCAC
and     edx, 0FF00FFh

loc_4FCCAC:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FCCBC
and     edx, 0FF0000FFh

loc_4FCCBC:
rol     edx, 8
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh

loc_4FCCC8:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCC6C
pop     esi
pop     edi
retn
sub_4FCC59 endp




sub_4FCCDD proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCCF0:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCD4E
mov     edx, [edi]
and     edx, 0FCFCFCh
shr     eax, 2
add     eax, edx
test    eax, 1000000h
jz      short loc_4FCD2D
or      eax, 0FF0000h

loc_4FCD2D:
test    eax, 10000h
jz      short loc_4FCD39
or      eax, 0FF00h

loc_4FCD39:
test    eax, 100h
jz      short loc_4FCD45
or      eax, 0FFh

loc_4FCD45:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCD4E:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCCF0
pop     esi
pop     edi
retn
sub_4FCCDD endp




sub_4FCD63 proc near
xor     edx, edx
movd    mm2, edx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCD85:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FCDD2
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
movd    mm3, dword ptr [edi]
punpcklbw mm3, mm2
paddusw mm3, mm0
psrlw   mm3, 1
packuswb mm3, mm2
movd    eax, mm3
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCDD2:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCD85
pop     esi
pop     edi
emms
retn
sub_4FCD63 endp




sub_4FCDE9 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCDFC:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FCE35
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    eax, mm1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCE35:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCDFC
pop     esi
pop     edi
emms
retn
sub_4FCDE9 endp




sub_4FCE4C proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCE5F:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FCE98
movd    mm0, eax
movd    mm1, dword ptr [edi]
psubusb mm1, mm0
movd    edx, mm1
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh

loc_4FCE98:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCE5F
pop     esi
pop     edi
emms
retn
sub_4FCE4C endp




sub_4FCEAF proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCEC2:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCEFE
shr     eax, 2
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    eax, mm1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FCEFE:
add     edi, 3
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCEC2
pop     esi
pop     edi
emms
retn
sub_4FCEAF endp




sub_4FCF15 proc near
mov     edx, ds:dword_552010
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCF2C:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
mov     eax, [esi+edx]
or      eax, eax
jz      short loc_4FCF4A
mov     [edi], eax

loc_4FCF4A:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCF2C
pop     esi
pop     edi
retn
sub_4FCF15 endp




sub_4FCF5F proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCF70:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FCFA2
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
shr     eax, 1
mov     [edi], eax

loc_4FCFA2:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCF70
pop     esi
pop     edi
retn
sub_4FCF5F endp




sub_4FCFB7 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FCFC8:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD01C
mov     edx, [edi]
and     edx, 0FCFCFCh
add     eax, edx
test    eax, 1000000h
jz      short loc_4FD002
or      eax, 0FF0000h

loc_4FD002:
test    eax, 10000h
jz      short loc_4FD00E
or      eax, 0FF00h

loc_4FD00E:
test    eax, 100h
jz      short loc_4FD01A
or      eax, 0FFh

loc_4FD01A:
mov     [edi], eax

loc_4FD01C:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FCFC8
pop     esi
pop     edi
retn
sub_4FCFB7 endp




sub_4FD031 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD042:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD097
mov     edx, [edi]
and     edx, 0FCFCFCh
sub     dl, al
jnb     short loc_4FD078
and     edx, 0FFFF00h

loc_4FD078:
sub     dh, ah
jnb     short loc_4FD082
and     edx, 0FF00FFh

loc_4FD082:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FD092
and     edx, 0FF0000FFh

loc_4FD092:
rol     edx, 8
mov     [edi], edx

loc_4FD097:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD042
pop     esi
pop     edi
retn
sub_4FD031 endp




sub_4FD0AC proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD0BD:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD114
mov     edx, [edi]
and     edx, 0FCFCFCh
shr     eax, 2
add     eax, edx
test    eax, 1000000h
jz      short loc_4FD0FA
or      eax, 0FF0000h

loc_4FD0FA:
test    eax, 10000h
jz      short loc_4FD106
or      eax, 0FF00h

loc_4FD106:
test    eax, 100h
jz      short loc_4FD112
or      eax, 0FFh

loc_4FD112:
mov     [edi], eax

loc_4FD114:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD0BD
pop     esi
pop     edi
retn
sub_4FD0AC endp




sub_4FD129 proc near
xor     edx, edx
movd    mm2, edx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD149:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FD18D
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
movd    mm3, dword ptr [edi]
punpcklbw mm3, mm2
paddusw mm3, mm0
psrlw   mm3, 1
packuswb mm3, mm2
movd    dword ptr [edi], mm3

loc_4FD18D:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD149
pop     esi
pop     edi
emms
retn
sub_4FD129 endp




sub_4FD1A4 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD1B5:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FD1E5
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    dword ptr [edi], mm1

loc_4FD1E5:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD1B5
pop     esi
pop     edi
emms
retn
sub_4FD1A4 endp




sub_4FD1FC proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD20D:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FFFFFFh
jz      short loc_4FD23D
movd    mm0, eax
movd    mm1, dword ptr [edi]
psubusb mm1, mm0
movd    dword ptr [edi], mm1

loc_4FD23D:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD20D
pop     esi
pop     edi
emms
retn
sub_4FD1FC endp




sub_4FD254 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ds:dword_552F68[esi]
mov     ebx, ds:dword_5536E8[esi]
push    esi

loc_4FD265:
shld    eax, ecx, 12h
shld    esi, ebx, 1Ah
and     eax, 3FCh
and     esi, 3FC00h
add     esi, eax
add     esi, ds:dword_552010
mov     eax, [esi]
and     eax, 0FCFCFCh
jz      short loc_4FD298
shr     eax, 2
movd    mm0, eax
movd    mm1, dword ptr [edi]
paddusb mm1, mm0
movd    dword ptr [edi], mm1

loc_4FD298:
add     edi, 4
add     ecx, ds:dword_552024
add     ebx, ds:dword_552028
dec     ebp
jnz     short loc_4FD265
pop     esi
pop     edi
emms
retn
sub_4FD254 endp




sub_4FD2AF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ecx, ebp
mov     eax, ds:dword_552050
rep stosw
pop     edi
retn
sub_4FD2AF endp




sub_4FD2BF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054

loc_4FD2C9:
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ebx
shr     edx, 1
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD2C9
pop     edi
retn
sub_4FD2BF endp




sub_4FD2E3 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054

loc_4FD2ED:
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ebx
test    edx, 1000000h
jz      short loc_4FD306
or      edx, 0FF0000h

loc_4FD306:
test    edx, 10000h
jz      short loc_4FD314
or      edx, 0FF00h

loc_4FD314:
test    edx, 100h
jz      short loc_4FD322
or      edx, 0FFh

loc_4FD322:
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD2ED
pop     edi
retn
sub_4FD2E3 endp




sub_4FD32F proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054

loc_4FD339:
mov     ax, [edi]
call    ds:dword_55205C
mov     eax, ebx
sub     dl, al
jnb     short loc_4FD34E
and     edx, 0FFFF00h

loc_4FD34E:
sub     dh, ah
jnb     short loc_4FD358
and     edx, 0FF00FFh

loc_4FD358:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FD368
and     edx, 0FF0000FFh

loc_4FD368:
rol     edx, 8
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD339
pop     edi
retn
sub_4FD32F endp




sub_4FD378 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     ebx, ds:dword_552054
shr     ebx, 2

loc_4FD385:
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ebx
test    edx, 1000000h
jz      short loc_4FD39E
or      edx, 0FF0000h

loc_4FD39E:
test    edx, 10000h
jz      short loc_4FD3AC
or      edx, 0FF00h

loc_4FD3AC:
test    edx, 100h
jz      short loc_4FD3BA
or      edx, 0FFh

loc_4FD3BA:
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD385
pop     edi
retn
sub_4FD378 endp




sub_4FD3C7 proc near
push    edi
lea     edi, [edi+ebx*2]
movd    mm1, ds:dword_552054

loc_4FD3D2:
mov     ax, [edi]
call    ds:dword_55205C
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD3D2
pop     edi
emms
retn
sub_4FD3C7 endp




sub_4FD3F3 proc near
push    edi
lea     edi, [edi+ebx*2]
movd    mm1, ds:dword_552054

loc_4FD3FE:
mov     ax, [edi]
call    ds:dword_55205C
movd    mm0, edx
psubusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD3FE
pop     edi
emms
retn
sub_4FD3F3 endp




sub_4FD41F proc near
push    edi
lea     edi, [edi+ebx*2]
mov     edx, ds:dword_552054
shr     edx, 2
movd    mm1, edx

loc_4FD42F:
mov     ax, [edi]
call    ds:dword_55205C
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
dec     ebp
jnz     short loc_4FD42F
pop     edi
emms
retn
sub_4FD41F endp




sub_4FD450 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ecx, ebp
mov     ax, word ptr ds:dword_552050
mov     bx, word ptr ds:dword_552050+2

loc_4FD465:
mov     [edi], ax
mov     [edi+2], bl
add     edi, 3
loop    loc_4FD465
pop     edi
retn
sub_4FD450 endp




sub_4FD472 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050

loc_4FD47E:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
shr     eax, 1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD47E
pop     edi
retn
sub_4FD472 endp




sub_4FD49A proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050

loc_4FD4A6:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD4BB
or      eax, 0FF0000h

loc_4FD4BB:
test    eax, 10000h
jz      short loc_4FD4C7
or      eax, 0FF00h

loc_4FD4C7:
test    eax, 100h
jz      short loc_4FD4D3
or      eax, 0FFh

loc_4FD4D3:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD4A6
pop     edi
retn
sub_4FD49A endp




sub_4FD4E4 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050

loc_4FD4F0:
mov     edx, [edi]
and     edx, 0FCFCFCh
mov     eax, ebx
sub     dl, al
jnb     short loc_4FD504
and     edx, 0FFFF00h

loc_4FD504:
sub     dh, ah
jnb     short loc_4FD50E
and     edx, 0FF00FFh

loc_4FD50E:
ror     eax, 8
ror     edx, 8
sub     dh, ah
jnb     short loc_4FD51E
and     edx, 0FF0000FFh

loc_4FD51E:
