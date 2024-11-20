loc_4F90A1:
inc     eax
cmp     eax, 0Ah
jge     short loc_4F90B3

loc_4F90A7:
test    [esp+eax+5Ch+var_2C], 80h
jz      short loc_4F90A1
jmp     loc_4F8FA6

loc_4F90B3:
mov     eax, 0FFFFFFFFh
jmp     loc_4F8FA6
sub_4F904F endp




sub_4F90BD proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset byte_887A0C
jmp     short loc_4F9121
sub_4F90BD endp




sub_4F90CB proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset unk_551F48
jmp     short loc_4F9121
sub_4F90CB endp




sub_4F90D9 proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, eax

loc_4F90E2:
mov     eax, offset byte_887A0C
jmp     short loc_4F9121
sub_4F90D9 endp




sub_4F90E9 proc near
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset unk_551F48
jmp     short loc_4F90E2
sub_4F90E9 endp




sub_4F90F7 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset byte_887A34
jmp     short loc_4F9121
sub_4F90F7 endp




sub_4F9105 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset unk_551F70
jmp     short loc_4F9121
sub_4F9105 endp




sub_4F9113 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, eax

loc_4F911C:
mov     eax, offset byte_887A34

loc_4F9121:
call    memcpy_
pop     edx
pop     ebx
retn
sub_4F9113 endp




sub_4F9129 proc near
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset unk_551F70
jmp     short loc_4F911C
sub_4F9129 endp

; [00000025 BYTES: COLLAPSED FUNCTION memcpy_]
; [0000001D BYTES: COLLAPSED FUNCTION __CHP]
align 2
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_115]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_116]



sub_4F917C proc near

Value= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, eax
mov     ecx, 1
xor     ebp, ebp
xor     esi, esi
xor     edi, edi
mov     [esp+18h+Value], ebp ; Value
test    edx, edx
jz      short loc_4F91A6
cmp     ecx, ds:dword_557C68
jnz     short loc_4F91A4
mov     [edx], ecx
jmp     short loc_4F91A6

loc_4F91A4:
mov     [edx], ebp

loc_4F91A6:
mov     al, [ebx]
cmp     al, 72h ; 'r'
jb      short loc_4F91B4
jbe     short loc_4F91BA
cmp     al, 77h ; 'w'
jz      short loc_4F91C0
jmp     short loc_4F91CC

loc_4F91B4:
cmp     al, 61h ; 'a'
jz      short loc_4F91C6
jmp     short loc_4F91CC

loc_4F91BA:
or      byte ptr [esp+18h+Value], 1
jmp     short loc_4F91DD

loc_4F91C0:
or      byte ptr [esp+18h+Value], 2
jmp     short loc_4F91DD

loc_4F91C6:
or      byte ptr [esp+18h+Value], 82h
jmp     short loc_4F91DD

loc_4F91CC:
mov     eax, 9
call    __set_errno_
xor     ecx, ecx
jmp     loc_4F928C

loc_4F91DD:
inc     ebx
mov     al, [ebx]
test    al, al
jz      loc_4F9275
test    ecx, ecx
jz      loc_4F9275
cmp     al, 63h ; 'c'
jb      short loc_4F920A
jbe     loc_4F924C
cmp     al, 6Eh ; 'n'
jb      short loc_4F91DD
jbe     loc_4F9261
cmp     al, 74h ; 't'
jz      short loc_4F922E
jmp     short loc_4F91DD

loc_4F920A:
cmp     al, 2Bh ; '+'
jb      short loc_4F91DD
jbe     short loc_4F9216
cmp     al, 62h ; 'b'
jz      short loc_4F9239
jmp     short loc_4F91DD

loc_4F9216:
test    ebp, ebp
jz      short loc_4F921E

loc_4F921A:
xor     ecx, ecx
jmp     short loc_4F91DD

loc_4F921E:
mov     ah, byte ptr [esp+18h+Value]
or      ah, 3
mov     ebp, 1
mov     byte ptr [esp+18h+Value], ah
jmp     short loc_4F91DD

loc_4F922E:
test    esi, esi
jnz     short loc_4F921A
mov     esi, 1
jmp     short loc_4F91DD

loc_4F9239:
test    esi, esi
jnz     short loc_4F921A
mov     al, byte ptr [esp+18h+Value]
or      al, 40h
mov     esi, 1
mov     byte ptr [esp+18h+Value], al
jmp     short loc_4F91DD

loc_4F924C:
test    edi, edi
jnz     short loc_4F921A
mov     ah, [edx]
or      ah, 1
mov     edi, 1
mov     [edx], ah
jmp     loc_4F91DD

loc_4F9261:
test    edi, edi
jnz     short loc_4F921A
mov     al, [edx]
and     al, 0FEh
mov     edi, 1
mov     [edx], al
jmp     loc_4F91DD

loc_4F9275:
test    esi, esi
jnz     short loc_4F9289
cmp     ds:dword_557E75, 200h
jnz     short loc_4F9289
or      byte ptr [esp+18h+Value], 40h

loc_4F9289:
mov     ecx, [esp+18h+Value]

loc_4F928C:
mov     eax, ecx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F917C endp




sub_4F9297 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push    esi
push    edi
push    ebp
mov     esi, eax
mov     al, dl
mov     edx, ecx
mov     ecx, [esp+0Ch+arg_4]
and     byte ptr [ecx+0Ch], 0FCh
or      [ecx+0Ch], ebx
and     eax, 0FFh
call    tolower_
cmp     al, 72h ; 'r'
jnz     short loc_4F92DB
xor     eax, eax
test    bl, 2
jz      short loc_4F92C5
mov     eax, 2

loc_4F92C5:
test    bl, 40h
jz      short loc_4F92CF
or      ah, 2
jmp     short loc_4F92D2

loc_4F92CF:
or      ah, 1

loc_4F92D2:
push    0
mov     edi, [esp+10h+arg_0]
push    edi
jmp     short loc_4F930B

loc_4F92DB:
test    bl, 1
setnz   al
and     eax, 0FFh
add     eax, 21h ; '!'
test    bl, 80h
jz      short loc_4F92F2
or      al, 10h
jmp     short loc_4F92F4

loc_4F92F2:
or      al, 40h

loc_4F92F4:
test    bl, 40h
jz      short loc_4F92FE
or      ah, 2
jmp     short loc_4F9301

loc_4F92FE:
or      ah, 1

loc_4F9301:
push    180h
mov     ebp, [esp+10h+arg_0]
push    ebp

loc_4F930B:
push    eax
push    esi
call    sub_4FE251
add     esp, 10h
mov     [ecx+10h], eax
cmp     dword ptr [ecx+10h], 0FFFFFFFFh
jnz     short loc_4F9329
mov     eax, ecx
call    __freefp_
xor     eax, eax
jmp     short loc_4F9377

loc_4F9329:
mov     dword ptr [ecx+4], 0
mov     eax, [ecx+8]
mov     dword ptr [ecx+14h], 0
mov     dword ptr [eax+0Ch], 0
mov     eax, [ecx+8]
mov     [eax+10h], edx
mov     eax, [ecx+8]
mov     dword ptr [eax+15h], 0
mov     eax, [ecx+8]
mov     dword ptr [eax+8], 0
test    bl, 80h
jz      short loc_4F936E
mov     ebx, 2
mov     eax, ecx
xor     edx, edx
call    sub_4FB1EB

loc_4F936E:
mov     eax, ecx
call    __chktty_
mov     eax, ecx

loc_4F9377:
pop     ebp
pop     edi
pop     esi
retn    8
sub_4F9297 endp




sub_4F937D proc near

var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 4
mov     esi, eax
mov     ecx, edx
mov     edi, ebx
mov     edx, esp
mov     eax, ecx
call    sub_4F917C
mov     ebx, eax
test    eax, eax
jz      short loc_4F93BA
xor     eax, eax
call    __allocfp_
mov     edx, eax
test    eax, eax
jz      short loc_4F93B8
push    eax
xor     edx, eax
push    edi
mov     eax, esi
mov     dl, [ecx]
mov     ecx, [esp+18h+var_10]
call    sub_4F9297
mov     edx, eax

loc_4F93B8:
mov     eax, edx

loc_4F93BA:
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_4F937D endp




sub_4F93C1 proc near
push    ebx
xor     ebx, ebx
call    sub_4F937D
pop     ebx
retn
sub_4F93C1 endp




sub_4F93CB proc near
push    ebx
push    ecx
push    edx             ; Value
mov     ebx, eax
call    ds:off_551FD8
mov     eax, ds:dword_897BC4

loc_4F93DB:
test    eax, eax
jz      short loc_4F9408
mov     edx, [eax+4]
cmp     ebx, edx
jnz     short loc_4F9404
test    byte ptr [edx+0Ch], 3
jz      short loc_4F93F8
mov     edx, 1
mov     eax, ebx
call    __doclose_

loc_4F93F8:
call    ds:off_551FDC
mov     eax, ebx
pop     edx
pop     ecx
pop     ebx
retn

loc_4F9404:
mov     eax, [eax]
jmp     short loc_4F93DB

loc_4F9408:
mov     edx, offset dword_897BC8

loc_4F940D:
mov     eax, [edx]
test    eax, eax
jz      short loc_4F942F
cmp     ebx, [eax+4]
jnz     short loc_4F942B
mov     ecx, [eax]
mov     [edx], ecx
mov     edx, ds:dword_897BC4
mov     ds:dword_897BC4, eax
mov     [eax], edx
jmp     short loc_4F93F8

loc_4F942B:
mov     edx, eax
jmp     short loc_4F940D

loc_4F942F:
mov     eax, 4
call    __set_errno_
call    ds:off_551FDC
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
sub_4F93CB endp




sub_4F9445 proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     edi, eax
mov     ecx, edx
mov     edx, esp
mov     eax, ecx
call    sub_4F917C
mov     ebp, eax
test    eax, eax
jz      short loc_4F94B4
mov     esi, [ebx+10h]
mov     eax, esi
call    ds:off_551FC8
cmp     ds:dword_557E80, 0
jz      short loc_4F947B
mov     eax, esi
call    ds:dword_557E80

loc_4F947B:
mov     eax, ebx
call    sub_4F93CB
mov     ebx, eax
test    eax, eax
jz      short loc_4F94AA
push    eax
mov     ebx, [eax+0Ch]
xor     edx, edx
and     ebx, 4000h
push    0
mov     [eax+0Ch], ebx
mov     ebx, ebp
mov     eax, edi
mov     dl, [ecx]
mov     ecx, [esp+1Ch+var_14]
call    sub_4F9297
mov     ebx, eax

loc_4F94AA:
mov     eax, esi
call    ds:off_551FCC
mov     eax, ebx

loc_4F94B4:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4F9445 endp

; [00000075 BYTES: COLLAPSED FUNCTION fgets_]
; [00000057 BYTES: COLLAPSED FUNCTION unknown_libname_37]
; [00000029 BYTES: COLLAPSED FUNCTION cget_string_]
; [00000004 BYTES: COLLAPSED FUNCTION uncget_string_]
; [00000027 BYTES: COLLAPSED FUNCTION vsscanf_]
; [00000021 BYTES: COLLAPSED FUNCTION sscanf_]
; [0000003F BYTES: COLLAPSED FUNCTION fclose_]
; [00000015 BYTES: COLLAPSED FUNCTION __shutdown_stream_]
; [0000000C BYTES: COLLAPSED FUNCTION __hex_]
; [000000AA BYTES: COLLAPSED FUNCTION __MkTmpFile_]
; [000000BD BYTES: COLLAPSED FUNCTION __doclose_]



sub_4F97C4 proc near

var_C= dword ptr -0Ch
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= byte ptr  0Ch

push    ebx
push    edx
sub     esp, 4
lea     eax, [esp+0Ch+arg_8]
mov     ebx, esp
mov     edx, [esp+0Ch+arg_4]
mov     [esp+0Ch+var_C], eax
mov     eax, [esp+0Ch+arg_0]
call    sub_4FFA59
add     esp, 4
pop     edx
pop     ebx
retn
sub_4F97C4 endp




sub_4F97E5 proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
push    80000000h       ; dwNewLong
push    0FFFFFFF0h      ; nIndex
push    eax             ; hWnd
call    cs:__imp_SetWindowLongA
mov     ds:dwNewLong, eax
push    0               ; pUnkOuter
push    offset lpDD     ; lplpDD
push    0               ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F9816

loc_4F9810:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_4F9816:
mov     eax, ds:lpDD
mov     edx, [eax]
push    11h
push    ebx
push    eax
call    dword ptr [edx+50h]
mov     eax, ds:lpDD
mov     edx, [eax]
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
test    eax, eax
jnz     short loc_4F9810
push    40h ; '@'       ; uFlags
push    1E0h            ; cy
push    280h            ; cx
push    eax             ; Y
push    eax             ; X
push    eax             ; hWndInsertAfter
push    ebx             ; hWnd
call    cs:__imp_SetWindowPos
mov     eax, 1
pop     edx
pop     ecx
pop     ebx
retn
sub_4F97E5 endp




; int __stdcall sub_4F985F(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
sub_4F985F proc near

hWnd= dword ptr  4
Msg= dword ptr  8
wParam= dword ptr  0Ch
lParam= dword ptr  10h

push    ebx
mov     eax, [esp+4+Msg]
mov     edx, [esp+4+wParam]
cmp     eax, 100h
jb      short loc_4F989A
jbe     loc_4F98EB
cmp     eax, 204h
jb      short loc_4F988E
jbe     loc_4F98EB
cmp     eax, 3B9h
jz      short loc_4F98DC
jmp     loc_4F991C

loc_4F988E:
cmp     eax, 201h
jz      short loc_4F98EB
jmp     loc_4F991C

loc_4F989A:
cmp     eax, 2
jb      loc_4F991C
jbe     short loc_4F98FE
cmp     eax, 1Ch
jnz     loc_4F991C
test    edx, edx
jz      short loc_4F98D2
mov     edx, [esp+4+hWnd]
push    edx             ; hWnd
call    cs:__imp_SetFocus
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset strCommand ; "resume vfw"

loc_4F98C9:
call    cs:__imp_mciSendStringA
jmp     short loc_4F9916

loc_4F98D2:
push    edx
push    edx
push    edx
push    offset aPauseVfw ; "pause vfw"
jmp     short loc_4F98C9

loc_4F98DC:
cmp     edx, 1
jnz     short loc_4F9916
xor     ah, ah
mov     ds:byte_551FA8, ah
jmp     short loc_4F9916

loc_4F98EB:
cmp     ds:byte_551FA8, 0
jz      short loc_4F9916
xor     dh, dh
mov     ds:byte_551FA8, dh
jmp     short loc_4F9916

loc_4F98FE:
xor     bl, bl
mov     ds:byte_551FA8, bl
mov     ds:byte_530418, 1
push    0               ; nExitCode
call    cs:__imp_PostQuitMessage

loc_4F9916:
xor     eax, eax
pop     ebx
retn    10h

loc_4F991C:
mov     ecx, [esp+4+lParam]
push    ecx             ; lParam
push    edx             ; wParam
push    eax             ; Msg
mov     ebx, [esp+10h+hWnd]
push    ebx             ; hWnd
call    cs:__imp_DefWindowProcA
pop     ebx
retn    10h
sub_4F985F endp




sub_4F9933 proc near

strCommand= byte ptr -78h
Msg= MSG ptr -28h

push    ecx
push    esi
push    edi
sub     esp, 6Ch
mov     edi, eax
mov     esi, edx
xor     ah, ah
mov     ds:byte_551FA8, ah
push    edi
push    offset aOpenAvivideoSA ; "open avivideo!%s alias vfw"
lea     eax, [esp+80h+strCommand]
push    eax
call    sprintf_
add     esp, 0Ch
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
lea     eax, [esp+84h+strCommand]
push    eax             ; lpstrCommand
call    cs:__imp_mciSendStringA
test    eax, eax
jz      short loc_4F99A1
call    sub_4F09AF
push    edi
push    eax
push    offset aOpenAvivideoSS ; "open avivideo!%s%s alias vfw"
lea     eax, [esp+84h+strCommand]
push    eax
call    sprintf_
add     esp, 10h
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
lea     eax, [esp+84h+strCommand]
push    eax             ; lpstrCommand
call    cs:__imp_mciSendStringA
test    eax, eax
jnz     loc_4F9ACF

loc_4F99A1:
test    ebx, ebx
jz      short loc_4F99C8
mov     eax, esi
call    sub_4F97E5
cmp     eax, 1
jz      short loc_4F99C8
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aCloseVfwWait ; "close vfw wait"
call    cs:__imp_mciSendStringA
jmp     loc_4F9ACF

loc_4F99C8:             ; dwNewLong
push    offset sub_4F985F
push    0FFFFFFFCh      ; nIndex
push    esi             ; hWnd
call    cs:__imp_SetWindowLongA
mov     ebx, eax
push    esi
push    offset aWindowVfwHandl ; "window vfw handle %d"
lea     eax, [esp+80h+strCommand]
push    eax
call    sprintf_
add     esp, 0Ch
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
lea     eax, [esp+84h+strCommand]
push    eax             ; lpstrCommand
call    cs:__imp_mciSendStringA
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aPutVfwDestinat ; "put vfw destination at 0 0 640 480"
call    cs:__imp_mciSendStringA
push    esi             ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aPlayVfwWindowF ; "play vfw window from 0 notify"
call    cs:__imp_mciSendStringA
mov     ds:byte_551FA8, 1
jmp     short loc_4F9A4B

loc_4F9A2A:
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_TranslateMessage
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_DispatchMessageA
cmp     ds:byte_551FA8, 0
jz      short loc_4F9A61

loc_4F9A4B:             ; wMsgFilterMax
push    0
push    0               ; wMsgFilterMin
push    0               ; hWnd
lea     eax, [esp+84h+Msg]
push    eax             ; lpMsg
call    cs:__imp_GetMessageA
test    eax, eax
jnz     short loc_4F9A2A

loc_4F9A61:             ; hwndCallback
push    0
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aStopVfwWait ; "stop vfw wait"
call    cs:__imp_mciSendStringA
push    0               ; hwndCallback
push    0               ; uReturnLength
push    0               ; lpstrReturnString
push    offset aCloseVfwWait ; "close vfw wait"
call    cs:__imp_mciSendStringA
push    ebx             ; dwNewLong
push    0FFFFFFFCh      ; nIndex
push    esi             ; hWnd
call    cs:__imp_SetWindowLongA
mov     edx, ds:lpDD
test    edx, edx
jz      short loc_4F9ACF
mov     edi, [edx]
push    edx
call    dword ptr [edi+8]
push    40h ; '@'       ; uFlags
mov     ecx, ds:cy
push    ecx             ; cy
mov     ebx, ds:nWidth
push    ebx             ; cx
push    0               ; Y
push    0               ; X
push    0               ; hWndInsertAfter
push    esi             ; hWnd
call    cs:__imp_SetWindowPos
mov     edi, ds:dwNewLong
push    edi             ; dwNewLong
push    0FFFFFFF0h      ; nIndex
push    esi             ; hWnd
call    cs:__imp_SetWindowLongA

loc_4F9ACF:
add     esp, 6Ch
pop     edi
pop     esi
pop     ecx
retn
sub_4F9933 endp




sub_4F9AD6 proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 14h
mov     edi, eax
mov     esi, edx
mov     edx, [eax+8]
mov     ecx, [edx]
mov     eax, ds:nCount
mov     [esp+20h+var_10], eax
shl     eax, 2
sub     eax, [esp+20h+var_10]
shl     eax, 2
add     eax, offset dword_897A50
add     eax, 4
push    eax
push    offset word_4F0EBE
push    edx
call    dword ptr [ecx]
test    esi, esi
jz      loc_4F9B99
push    0               ; lpName
push    0               ; bInitialState
push    0               ; bManualReset
push    0               ; lpEventAttributes
call    cs:__imp_CreateEventA
mov     edx, ds:nCount
mov     ds:pHandles[edx*4], eax
push    0               ; lpName
push    0               ; bInitialState
push    0               ; bManualReset
push    0               ; lpEventAttributes
call    cs:__imp_CreateEventA
mov     ecx, ds:nCount
mov     ds:dword_897B54[ecx*4], eax
xor     eax, eax
mov     [esp+20h+var_20], eax
mov     eax, ds:pHandles[ecx*4]
mov     [esp+20h+var_1C], eax
mov     [esp+20h+var_18], ebx
mov     eax, ds:dword_897B54[ecx*4]
mov     [esp+20h+var_14], eax
mov     edx, ecx
shl     edx, 2
sub     edx, ecx
shl     edx, 2
mov     ds:dword_897A58[edx], edi
inc     ecx
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
mov     ds:dword_897A58[eax*4], edi
mov     ds:dword_897A50[edx], esi
mov     edx, esi
inc     edx
mov     ds:dword_897A50[eax*4], edx
jmp     short loc_4F9BD6

loc_4F9B99:             ; lpName
push    esi
push    esi             ; bInitialState
push    esi             ; bManualReset
push    esi             ; lpEventAttributes
call    cs:__imp_CreateEventA
mov     edx, eax
mov     eax, ds:nCount
mov     ds:pHandles[eax*4], edx
mov     [esp+20h+var_20], ebx
mov     eax, edx
mov     [esp+20h+var_1C], eax
mov     edx, ds:nCount
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     ds:dword_897A58[eax*4], edi
mov     ds:dword_897A50[eax*4], esi

loc_4F9BD6:
mov     edx, ds:nCount
mov     eax, edx
shl     eax, 2
sub     eax, edx
mov     eax, ds:dword_897A54[eax*4]
mov     edx, [eax]
mov     ecx, esp
push    ecx
inc     esi
push    esi
push    eax
call    dword ptr [edx+0Ch]
add     ds:nCount, esi
add     esp, 14h
pop     edi
pop     esi
pop     ecx
retn
sub_4F9AD6 endp




sub_4F9C02 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebx, eax
shl     eax, 2
sub     eax, ebx
shl     eax, 2
mov     edx, ds:dword_897A54[eax]
test    edx, edx
jz      short loc_4F9C27
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]

loc_4F9C27:
mov     eax, ebx
shl     eax, 2
sub     eax, ebx
shl     eax, 2
mov     esi, ebx
shl     esi, 2
mov     ebp, offset pHandles
add     ebp, esi
mov     edi, offset dword_897A50
add     edi, eax
cmp     ds:dword_897A50[eax], 0
jz      loc_4F9CFC
mov     eax, ds:pHandles[esi]
push    eax             ; hObject
call    cs:__imp_CloseHandle
mov     edx, ds:dword_897B54[esi]
push    edx             ; hObject
call    cs:__imp_CloseHandle
lea     ecx, [ebx+2]
mov     ebx, ds:nCount
cmp     ecx, ebx
jge     short loc_4F9CB9
sub     ebx, ecx
mov     edx, ebx
shl     ebx, 2
sub     ebx, edx
shl     ebx, 2
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset dword_897A50
add     edx, eax
mov     eax, edi
call    memcpy_
mov     ebx, ds:nCount
sub     ebx, ecx
shl     ebx, 2
lea     edx, [esi+8]
add     edx, offset pHandles
mov     eax, ebp
call    memcpy_

loc_4F9CB9:
mov     esi, ds:nCount
sub     esi, 2
mov     ds:nCount, esi
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset dword_897A50
mov     ebx, 18h
xor     edx, esi
call    memset_
mov     eax, ds:nCount
shl     eax, 2
add     eax, offset pHandles
mov     ebx, 8
jmp     loc_4F9D98

loc_4F9CFC:
mov     eax, ds:pHandles[esi]
push    eax             ; hObject
call    cs:__imp_CloseHandle
lea     ecx, [ebx+1]
mov     edx, ds:nCount
cmp     ecx, edx
jge     short loc_4F9D5C
sub     edx, ecx
mov     eax, edx
shl     eax, 2
sub     eax, edx
shl     eax, 2
mov     [esp+1Ch+var_1C], eax
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
mov     edx, offset dword_897A50
add     edx, eax
mov     ebx, [esp+1Ch+var_1C]
mov     eax, edi
call    memcpy_
mov     ebx, ds:nCount
sub     ebx, ecx
shl     ebx, 2
lea     edx, [esi+4]
add     edx, offset pHandles
mov     eax, ebp
call    memcpy_

loc_4F9D5C:
mov     ecx, ds:nCount
dec     ecx
mov     ds:nCount, ecx
mov     edx, ecx
mov     eax, ecx
shl     eax, 2
sub     eax, ecx
shl     eax, 2
add     eax, offset dword_897A50
mov     ebx, 0Ch
xor     edx, ecx
call    memset_
mov     eax, ds:nCount
shl     eax, 2
add     eax, offset pHandles
mov     ebx, 4

loc_4F9D98:
xor     edx, edx
call    memset_
add     esp, 4

loc_4F9DA2:
pop     ebp

loc_4F9DA3:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F9C02 endp




sub_4F9DA9 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     edx, [eax+10h]
add     edx, 14h

loc_4F9DB6:
lea     eax, [ecx+edx]
cmp     byte ptr [eax], 64h ; 'd'
jnz     short loc_4F9DD0
cmp     byte ptr [eax+1], 61h ; 'a'
jnz     short loc_4F9DD0
cmp     byte ptr [eax+2], 74h ; 't'
jnz     short loc_4F9DD0
cmp     byte ptr [eax+3], 61h ; 'a'
jz      short loc_4F9DDD

loc_4F9DD0:
lea     eax, [ecx+edx]
mov     ebx, [eax+4]
add     ebx, 8
add     edx, ebx
jmp     short loc_4F9DB6

loc_4F9DDD:
mov     ebx, [eax+4]
test    esi, esi
jz      short loc_4F9DE9
add     eax, 8
mov     [esi], eax

loc_4F9DE9:
mov     eax, ebx
pop     esi
pop     ecx
pop     ebx
retn
sub_4F9DA9 endp




sub_4F9DEF proc near

var_2C= byte ptr -2Ch
var_28= byte ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 18h
mov     esi, eax
mov     ecx, edx
lea     edx, [eax+14h]
mov     ebx, 10h
mov     eax, offset word_897BA4
call    memcpy_
xor     edx, edx
mov     ds:word_897BB4, dx
lea     edx, [esp+2Ch+var_28]
mov     eax, esi
call    sub_4F9DA9
mov     edi, eax
mov     esi, eax
mov     ebx, 14h
xor     edx, edx
mov     eax, offset dword_897B90
call    memset_
mov     ds:dword_897B90, 14h
cmp     ecx, 1
jb      short loc_4F9E4E
jbe     short loc_4F9E64
cmp     ecx, 2
jz      short loc_4F9E70
jmp     short loc_4F9E89

loc_4F9E4E:
test    ecx, ecx
jnz     short loc_4F9E89
mov     ds:dword_897B94, 180E2h

loc_4F9E5C:
mov     ds:dword_897B98, edi
jmp     short loc_4F9E89

loc_4F9E64:
mov     ds:dword_897B94, 181E0h
jmp     short loc_4F9E5C

loc_4F9E70:
mov     ds:dword_897B94, 181E0h
mov     ds:dword_897B98, 20000h
mov     esi, 10000h

loc_4F9E89:
xor     edx, edx
mov     ds:dword_897B9C, edx
mov     ds:dword_897BA0, offset word_897BA4
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    0
lea     ecx, [esp+30h+var_2C]
push    ecx
push    offset dword_897B90
push    eax
call    dword ptr [edx+0Ch]
test    eax, eax
jz      short loc_4F9EBD

loc_4F9EB6:
xor     eax, eax
jmp     loc_4F9F74

loc_4F9EBD:
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
push    0
lea     edx, [esp+30h+var_18]
push    edx
lea     edx, [esp+34h+var_20]
push    edx
lea     edx, [esp+38h+var_1C]
push    edx
lea     edx, [esp+3Ch+var_24]
push    edx
push    esi
push    0
mov     ebx, dword ptr [esp+48h+var_2C]
push    ebx
call    dword ptr [eax+2Ch]
mov     edx, eax
cmp     eax, 88780096h
jnz     short loc_4F9F20
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
mov     edi, dword ptr [esp+2Ch+var_2C]
push    edi
call    dword ptr [eax+50h]
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
push    0
lea     edx, [esp+30h+var_18]
push    edx
lea     edx, [esp+34h+var_20]
push    edx
lea     edx, [esp+38h+var_1C]
push    edx
lea     edx, [esp+3Ch+var_24]
push    edx
push    esi
push    0
mov     ebp, dword ptr [esp+48h+var_2C]
push    ebp
call    dword ptr [eax+2Ch]
mov     edx, eax

loc_4F9F20:
test    edx, edx
jnz     short loc_4F9EB6
mov     ebx, [esp+2Ch+var_1C]
mov     edx, dword ptr [esp+2Ch+var_28]
mov     eax, [esp+2Ch+var_24]
call    memcpy_
mov     eax, [esp+2Ch+var_1C]
cmp     esi, eax
jz      short loc_4F9F50
mov     edx, dword ptr [esp+2Ch+var_28]
add     edx, eax
mov     ebx, [esp+2Ch+var_18]
mov     eax, [esp+2Ch+var_20]
call    memcpy_

loc_4F9F50:
mov     eax, dword ptr [esp+2Ch+var_2C]
mov     eax, [eax]
mov     ebx, [esp+2Ch+var_18]
push    ebx
mov     esi, [esp+30h+var_20]
push    esi
mov     edi, [esp+34h+var_1C]
push    edi
mov     ebp, [esp+38h+var_24]
push    ebp
mov     edx, dword ptr [esp+3Ch+var_2C]
push    edx
call    dword ptr [eax+4Ch]
mov     eax, dword ptr [esp+2Ch+var_2C]

loc_4F9F74:
add     esp, 18h

loc_4F9F77:
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F9DEF endp




sub_4F9F7D proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
mov     edx, ds:pUnkOuter
test    edx, edx
jnz     loc_4FA0D8
push    edx             ; pUnkOuter
push    offset pUnkOuter ; ppDS
push    edx             ; pcGuidDevice
call    DirectSoundCreate
test    eax, eax
jz      short loc_4F9FB5
xor     ebp, ebp
mov     ds:pUnkOuter, ebp
mov     eax, 64h ; 'd'
jmp     loc_4F9DA2

loc_4F9FB5:
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    3
push    ebx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F9FE4
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:pUnkOuter, edi
mov     eax, 65h ; 'e'
jmp     loc_4F9DA2

loc_4F9FE4:
mov     ebx, 14h
xor     edx, edx
mov     eax, offset dword_897B90
call    memset_
mov     ds:dword_897B90, 14h
mov     ds:dword_897B94, 1
xor     esi, esi
mov     ds:dword_897B98, esi
mov     ds:dword_897B9C, esi
mov     ds:dword_897BA0, esi
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    esi
push    offset dword_551FB4
push    offset dword_897B90
push    eax
call    dword ptr [edx+0Ch]
test    eax, eax
jz      short loc_4FA052
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
mov     ds:pUnkOuter, esi
mov     eax, 66h ; 'f'
jmp     loc_4F9DA2

loc_4FA052:
mov     ds:word_897BA4, 1
mov     ebx, 2
mov     ds:word_897BA6, bx
mov     ds:dword_897BA8, 5622h
mov     ds:dword_897BAC, 0AC44h
mov     ds:word_897BB0, bx
mov     ds:word_897BB2, 8
xor     edi, edi
mov     ds:word_897BB4, di
mov     eax, ds:dword_551FB4
mov     edx, [eax]
push    offset word_897BA4
push    eax
call    dword ptr [edx+38h]
test    eax, eax
jz      short loc_4FA0D8
mov     eax, ds:pUnkOuter
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:pUnkOuter, ecx
mov     eax, ds:dword_551FB4
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     ebx, ebx
mov     ds:dword_551FB4, ebx
mov     eax, 67h ; 'g'
jmp     loc_4F9DA2

loc_4FA0D8:
mov     ebx, 40h ; '@'
xor     edx, edx
mov     eax, offset dword_897B10
call    memset_
xor     eax, eax
jmp     loc_4F9DA2
sub_4F9F7D endp




sub_4FA0F0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, ds:dword_551FB4
test    edx, edx
jz      short loc_4FA10E
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551FB4, ecx

loc_4FA10E:
mov     ebx, ds:pUnkOuter
test    ebx, ebx
jz      short loc_4FA126
mov     edx, [ebx]
push    ebx
call    dword ptr [edx+8]
xor     esi, esi
mov     ds:pUnkOuter, esi

loc_4FA126:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FA0F0 endp




sub_4FA12B proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     ecx, eax
cmp     ds:pUnkOuter, 0
jz      loc_4FA1E8
test    edx, edx
jnz     short loc_4FA198
mov     esi, [eax]
test    esi, esi
jz      short loc_4FA18B
cmp     dword ptr [eax+4], 0
jz      short loc_4FA17F
mov     eax, esi
mov     edx, 1
call    sub_4F9DEF
mov     [ecx+8], eax
mov     eax, [ecx+4]
xor     edx, edx
call    sub_4F9DEF
mov     [ecx+0Ch], eax
mov     eax, [ecx]
xor     edx, edx
call    sub_4F9DA9
lea     ebx, [eax-200h]
xor     edx, edx
jmp     short loc_4FA1E1

loc_4FA17F:
mov     eax, esi
call    sub_4F9DEF
mov     [ecx+8], eax
jmp     short loc_4FA1E8

loc_4FA18B:
mov     eax, [eax+4]
call    sub_4F9DEF
mov     [ecx+0Ch], eax
jmp     short loc_4FA1E8

loc_4FA198:
mov     eax, [eax]
mov     edx, 2
call    sub_4F9DEF
mov     [ecx+8], eax
mov     eax, [ecx]
mov     edx, esp
call    sub_4F9DA9
sub     eax, 10000h
mov     [ecx+4], eax
mov     ebx, 10000h
mov     edx, [esp+10h+var_10]
mov     eax, offset unk_887A50
call    memcpy_
mov     eax, [ecx]
call    _nfree_
mov     dword ptr [ecx], 0FFFFFFFFh
mov     ebx, 10000h
mov     edx, 1

loc_4FA1E1:
mov     eax, ecx
call    sub_4F9AD6

loc_4FA1E8:
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA12B endp




sub_4FA1EF proc near

var_28= dword ptr -28h
var_24= byte ptr -24h
var_20= byte ptr -20h
var_1C= byte ptr -1Ch
var_18= dword ptr -18h

push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 14h
mov     esi, eax
mov     eax, edx
cmp     ds:pUnkOuter, 0
jz      loc_4FA2C1
cmp     eax, 0FFFFFFFFh
jz      short loc_4FA218
mov     edx, esp
call    sub_4F9DA9
mov     edi, eax
jmp     short loc_4FA224

loc_4FA218:
mov     edi, 10000h
mov     [esp+28h+var_28], offset unk_887A50

loc_4FA224:
mov     eax, [esi]
push    esi
call    dword ptr [eax+50h]
mov     eax, [esi]
push    0
lea     edx, [esp+2Ch+var_18]
push    edx
lea     edx, [esp+30h+var_20]
push    edx
lea     edx, [esp+34h+var_1C]
push    edx
lea     edx, [esp+38h+var_24]
push    edx
push    edi
push    0
push    esi
call    dword ptr [eax+2Ch]
mov     edx, eax
cmp     eax, 88780096h
jnz     short loc_4FA279
mov     eax, [esi]
push    esi
call    dword ptr [eax+50h]
mov     eax, [esi]
push    0
lea     edx, [esp+2Ch+var_18]
push    edx
lea     edx, [esp+30h+var_20]
push    edx
lea     edx, [esp+34h+var_1C]
push    edx
lea     edx, [esp+38h+var_24]
push    edx
push    edi
push    0
push    esi
call    dword ptr [eax+2Ch]
mov     edx, eax

loc_4FA279:
test    edx, edx
jnz     short loc_4FA2C1
mov     ebx, dword ptr [esp+28h+var_1C]
mov     edx, [esp+28h+var_28]
mov     eax, dword ptr [esp+28h+var_24]
call    memcpy_
mov     ebx, dword ptr [esp+28h+var_1C]
cmp     edi, ebx
jz      short loc_4FA2A7
mov     edx, [esp+28h+var_28]
add     edx, ebx
mov     ebx, [esp+28h+var_18]
mov     eax, dword ptr [esp+28h+var_20]
call    memcpy_

loc_4FA2A7:
mov     eax, [esi]
mov     ebp, [esp+28h+var_18]
push    ebp
mov     edx, dword ptr [esp+2Ch+var_20]
push    edx
mov     ecx, dword ptr [esp+30h+var_1C]
push    ecx
mov     ebx, dword ptr [esp+34h+var_24]
push    ebx
push    esi
call    dword ptr [eax+4Ch]

loc_4FA2C1:
add     esp, 14h
jmp     loc_4F9F77
sub_4FA1EF endp




sub_4FA2C9 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
xor     esi, esi
cmp     ds:pUnkOuter, 0
jz      loc_4FA366
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA328
mov     edx, [ecx]
push    esi
push    ecx
call    dword ptr [edx+34h]
cmp     dword ptr [ebx], 0FFFFFFFFh
jnz     short loc_4FA2F6
mov     esi, 1

loc_4FA2F6:
mov     eax, [ebx+8]
mov     edx, [eax]
push    esi
push    0
push    0
push    eax
call    dword ptr [edx+30h]
cmp     eax, 88780096h
jnz     short loc_4FA366
mov     edx, [ebx]
mov     eax, [ebx+8]
call    sub_4FA1EF
mov     eax, [ebx+8]
mov     edx, [eax]
push    esi
push    0
push    0
push    eax
call    dword ptr [edx+30h]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_4FA328:
mov     esi, [eax+0Ch]
test    esi, esi
jz      short loc_4FA366
mov     edx, [esi]
push    ecx
push    esi
call    dword ptr [edx+34h]
mov     eax, [ebx+0Ch]
mov     edx, [eax]
push    1
push    0
push    0
push    eax
call    dword ptr [edx+30h]
cmp     eax, 88780096h
jnz     short loc_4FA366
mov     edx, [ebx+4]
mov     eax, [ebx+0Ch]
call    sub_4FA1EF
mov     ebx, [ebx+0Ch]
mov     eax, [ebx]
push    1
push    0
push    0
push    ebx
call    dword ptr [eax+30h]

loc_4FA366:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FA2C9 endp




sub_4FA36B proc near
push    ebx
push    ecx
push    edx
push    edi
mov     ebx, eax
cmp     ds:pUnkOuter, 0
jz      short loc_4FA399
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA387
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+48h]

loc_4FA387:
cmp     dword ptr [ebx], 0FFFFFFFFh
jz      short loc_4FA399
mov     edi, [ebx+0Ch]
test    edi, edi
jz      short loc_4FA399
mov     eax, [edi]
push    edi
call    dword ptr [eax+48h]

loc_4FA399:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FA36B endp




sub_4FA39E proc near
push    ebx
push    ecx
push    esi
push    ebp
mov     ebx, eax
xor     esi, esi
cmp     ds:pUnkOuter, 0
jz      loc_4FA431
cmp     dword ptr [eax+8], 0
jz      short loc_4FA3F7
cmp     edx, 1
jnz     short loc_4FA3F7
cmp     dword ptr [eax], 0FFFFFFFFh
jnz     short loc_4FA3C5
mov     esi, edx

loc_4FA3C5:
mov     eax, [ebx+8]
mov     edx, [eax]
push    esi
push    0
push    0
push    eax
call    dword ptr [edx+30h]
cmp     eax, 88780096h
jnz     short loc_4FA431
mov     edx, [ebx]
mov     eax, [ebx+8]
call    sub_4FA1EF
mov     ebx, [ebx+8]
mov     eax, [ebx]
push    esi
push    0
push    0
push    ebx
call    dword ptr [eax+30h]
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn

loc_4FA3F7:
mov     ebp, [ebx+0Ch]
test    ebp, ebp
jz      short loc_4FA431
cmp     edx, 2
jnz     short loc_4FA431
mov     eax, [ebp+0]
push    1
push    0
push    0
push    ebp
call    dword ptr [eax+30h]
cmp     eax, 88780096h
jnz     short loc_4FA431
mov     edx, [ebx+4]
mov     eax, [ebx+0Ch]
call    sub_4FA1EF
mov     eax, [ebx+0Ch]
mov     edx, [eax]
push    1
push    0
push    0
push    eax
call    dword ptr [edx+30h]

loc_4FA431:
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA39E endp




sub_4FA436 proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ebx
push    ecx
push    esi
push    ebp
sub     esp, 8
mov     ebx, eax
mov     [esp+18h+var_14], edx
fild    [esp+18h+var_14]
fdiv    ds:flt_50AA94
fmul    ds:flt_50AA98
fadd    ds:flt_50AA9C
call    __CHP
fistp   [esp+18h+var_18]
cmp     ds:pUnkOuter, 0
jz      short loc_4FA492
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA47B
mov     edx, [ecx]
mov     esi, [esp+18h+var_18]
push    esi
push    ecx
call    dword ptr [edx+3Ch]

loc_4FA47B:
cmp     dword ptr [ebx], 0FFFFFFFFh
jz      short loc_4FA492
mov     ebp, [ebx+0Ch]
test    ebp, ebp
jz      short loc_4FA492
mov     eax, [ebp+0]
mov     edx, [esp+18h+var_18]
push    edx
push    ebp
call    dword ptr [eax+3Ch]

loc_4FA492:
add     esp, 8
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA436 endp




sub_4FA49A proc near
push    ebx
push    ecx
push    esi
push    ebp
mov     ebx, eax
mov     esi, edx
cmp     ds:pUnkOuter, 0
jz      short loc_4FA4CD
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4FA4B9
mov     edx, [ecx]
push    esi
push    ecx
call    dword ptr [edx+40h]

loc_4FA4B9:
cmp     dword ptr [ebx], 0FFFFFFFFh
jz      short loc_4FA4CD
mov     ebp, [ebx+0Ch]
test    ebp, ebp
jz      short loc_4FA4CD
mov     eax, [ebp+0]
push    esi
push    ebp
call    dword ptr [eax+40h]

loc_4FA4CD:
pop     ebp
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA49A endp




sub_4FA4D2 proc near

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
mov     ebx, eax
xor     edi, edi
mov     [esp+24h+var_24], edi
mov     [esp+24h+var_20], edi
mov     [esp+24h+var_1C], edi
cmp     ds:pUnkOuter, 0
jnz     short loc_4FA4FA
xor     eax, eax
jmp     loc_4FA58C

loc_4FA4FA:
cmp     dword ptr [eax+8], 0
jz      short loc_4FA50C
mov     eax, [ebx+8]
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    eax
call    dword ptr [edx+24h]

loc_4FA50C:
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

