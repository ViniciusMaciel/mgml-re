loc_50011D:
cmp     ds:dwTlsIndex, 0FFFFFFFFh
setnz   al
and     eax, 0FFh
pop     edx
pop     ecx
retn
sub_5000DA endp




sub_50012F proc near
push    ebx
push    ecx
push    edx
cmp     ds:dwTlsIndex, 0FFFFFFFFh
jnz     short loc_500141

loc_50013B:
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn

loc_500141:
call    sub_5000A0
mov     ebx, eax
test    eax, eax
jz      short loc_50017A
mov     edx, ebx
mov     eax, [eax+0DAh]
call    __AddThreadData_
test    eax, eax
jnz     short loc_500166
mov     eax, ebx
call    _nfree_
jmp     short loc_50013B

loc_500166:             ; lpTlsValue
push    ebx
mov     ebx, ds:dwTlsIndex
push    ebx             ; dwTlsIndex
call    cs:__imp_TlsSetValue
mov     eax, 1

loc_50017A:
pop     edx
pop     ecx
pop     ebx
retn
sub_50012F endp




sub_50017E proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
mov     ebx, eax
mov     edx, ds:dwTlsIndex
cmp     edx, 0FFFFFFFFh
jz      short loc_5001CD
push    edx             ; dwTlsIndex
call    cs:__imp_TlsGetValue
test    eax, eax
jz      short loc_5001CD
mov     esi, [eax+0DEh]
mov     eax, [eax+0DAh]
call    __RemoveThreadData_
push    0               ; lpTlsValue
mov     edi, ds:dwTlsIndex
push    edi             ; dwTlsIndex
call    cs:__imp_TlsSetValue
test    esi, esi
jz      short loc_5001CD
test    ebx, ebx
jz      short loc_5001CD
push    esi             ; hObject
call    cs:__imp_CloseHandle

loc_5001CD:
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_50017E endp




sub_5001D3 proc near
mov     eax, 1
call    sub_50017E

loc_5001DD:
push    ecx
push    edx
mov     edx, ds:dwTlsIndex
cmp     edx, 0FFFFFFFFh
jz      short loc_5001FC
push    edx             ; dwTlsIndex
call    cs:__imp_TlsFree
mov     ds:dwTlsIndex, 0FFFFFFFFh

loc_5001FC:
pop     edx
pop     ecx
retn
sub_5001D3 endp




sub_5001FF proc near
push    ebx
push    ecx
sub_5001FF endp ; sp-analysis failed




sub_500201 proc near
push    edx
push    esi
push    edi
push    ebp
mov     edx, offset loc_4FFF5C
mov     ebx, offset loc_4FFF69
mov     ecx, offset j___NTAddFileHandle__0
mov     esi, offset sub_4FFF7E
mov     edi, offset sub_4FFF48
mov     ebp, offset sub_4FFF52
mov     eax, offset sub_4FFFBC
mov     ds:off_551FC8, edx
mov     ds:off_551FCC, ebx
mov     ds:off_551FD0, ecx
mov     ds:off_551FD4, esi
mov     ds:off_551FD8, edi
mov     ds:off_551FDC, ebp
mov     ds:off_551FF0, eax
mov     edx, offset sub_4FFFC3
mov     ebx, offset sub_4FFFCF
mov     ecx, offset sub_500035
mov     esi, offset sub_4FFF1A
mov     edi, offset sub_4FFF9A
mov     ebp, offset sub_4FFFAB
mov     eax, offset sub_4FFFA1
mov     ds:off_551FF4, edx
mov     ds:off_5580F0, ebx
mov     ds:off_5580F4, ecx
mov     ds:off_5580F8, esi
mov     ds:off_551FE0, edi
mov     ds:off_551FE4, ebp
mov     ds:off_551FE8, eax
mov     edx, offset sub_4FFFB2
mov     ebx, 1
mov     esi, offset sub_500030
mov     ds:off_551FEC, edx
call    sub_4FFEC6
push    eax             ; lpCriticalSection
mov     edi, offset sub_5001D3
mov     ds:dword_897CFC, eax
call    cs:__imp_InitializeCriticalSection
mov     ecx, offset sub_4FFFCA
mov     edx, ds:lpTlsValue
mov     ds:dword_897D00, ebx
mov     ds:off_551FFC, esi
mov     ds:off_552000, edi
mov     eax, [edx+0DAh]
mov     ds:off_551FF8, ecx
call    __AddThreadData_
mov     ebp, ds:lpTlsValue
push    ebp             ; lpTlsValue
mov     eax, ds:dwTlsIndex
push    eax             ; dwTlsIndex
call    cs:__imp_TlsSetValue
mov     ds:off_551FC4, offset sub_50005C
pop     ebp
jmp     loc_5001CD
sub_500201 endp




sub_50031B proc near
push    ebx
push    edx
mov     eax, offset unk_897BCC
mov     edx, offset unk_897BEC
call    ds:off_5580F8
lea     ebx, [edx+100h]

loc_500333:
mov     eax, edx
add     edx, 10h
call    ds:off_5580F8
cmp     edx, ebx
jnz     short loc_500333
mov     eax, offset unk_897D1C
call    ds:off_5580F8
call    j___FreeThreadDataList_
mov     eax, offset unk_897CEC
call    ds:off_5580F8
mov     eax, offset unk_897BDC
call    ds:off_5580F8
mov     eax, offset unk_897D0C
call    ds:off_5580F8
mov     eax, offset dword_897CFC
call    ds:off_5580F8
call    loc_5001DD
pop     edx
pop     ebx
retn
sub_50031B endp

; [00000045 BYTES: COLLAPSED FUNCTION strdup_]
; [00000090 BYTES: COLLAPSED FUNCTION __lib_GetModuleFileNameW_]
; [00000027 BYTES: COLLAPSED FUNCTION sub_50045B]
; [00000067 BYTES: COLLAPSED FUNCTION __init_stack_limits_]



sub_5004E9 proc near
push    ebx
push    ecx
push    edx
push    offset LibFileName ; "USER32.DLL"
call    cs:__imp_LoadLibraryA
xor     ebx, ebx
test    eax, eax
jz      short loc_500515
push    offset ProcName ; "GetActiveWindow"
push    eax             ; hModule
call    cs:__imp_GetProcAddress
mov     edx, eax
test    eax, eax
jz      short loc_500515
call    edx
mov     ebx, eax

loc_500515:
test    ebx, ebx
setnz   al
and     eax, 0FFh
pop     edx
pop     ecx
pop     ebx
retn
sub_5004E9 endp




sub_500523 proc near
push    ecx
push    esi
push    edi
mov     edi, ebx
xor     ebx, ebx

loc_50052A:
cmp     byte ptr [eax], 0
jz      short loc_500532
inc     eax
jmp     short loc_50052A

loc_500532:
lea     esi, [eax+9]

loc_500535:
mov     cl, [edx]
mov     [eax], cl
test    cl, cl
jz      short loc_50054F
cmp     cl, 30h ; '0'
jnz     short loc_50054A
cmp     byte ptr [edx+1], 78h ; 'x'
jnz     short loc_50054A
mov     ebx, esi

loc_50054A:
inc     esi
inc     eax
inc     edx
jmp     short loc_500535

loc_50054F:
test    ebx, ebx
jz      short loc_50056C
mov     eax, edi

loc_500555:
test    eax, eax
jz      short loc_50056C
mov     edx, eax
and     edx, 0Fh
mov     dl, ds:byte_558104[edx]
shr     eax, 4
mov     [ebx], dl
dec     ebx
jmp     short loc_500555

loc_50056C:
pop     edi
pop     esi
pop     ecx
retn
sub_500523 endp




; LONG __stdcall TopLevelExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
TopLevelExceptionFilter proc near

Buffer= byte ptr -10Ch
NumberOfBytesWritten= dword ptr -0Ch
ExceptionInfo= dword ptr  4

push    ebx
push    edi
sub     esp, 104h
mov     ebx, [esp+10Ch+ExceptionInfo]
mov     ecx, [ebx]
mov     ebx, [ebx+4]
call    sub_5004E9
test    eax, eax
jnz     short loc_500597
call    __NTConsoleOutput_
cmp     eax, 0FFFFFFFFh
jnz     short loc_50059E

loc_500597:
xor     eax, eax
jmp     loc_50071C

loc_50059E:
xor     ah, ah
mov     [esp+10Ch+Buffer], ah
mov     eax, [ecx]
cmp     eax, 0C0000090h
jb      short loc_5005F9
jbe     loc_500667
cmp     eax, 0C0000093h
jb      short loc_5005EC
jbe     loc_500660
cmp     eax, 0C0000096h
jb      short loc_5005DC
jbe     loc_5006A4
cmp     eax, 0C00000FDh
jz      loc_5006BC
jmp     loc_5006C6

loc_5005DC:
cmp     eax, 0C0000094h
jz      loc_5006B2
jmp     loc_5006C6

loc_5005EC:
cmp     eax, 0C0000091h
jbe     loc_500659
jmp     short loc_500628

loc_5005F9:
cmp     eax, 0C000008Dh
jb      short loc_50060B
jbe     short loc_500644
cmp     eax, 0C000008Eh
jbe     short loc_50064B
jmp     short loc_500652

loc_50060B:
cmp     eax, 0C0000005h
jb      loc_5006C6
jbe     short loc_50066E
cmp     eax, 0C000001Dh
jz      loc_5006AB
jmp     loc_5006C6

loc_500628:
test    byte ptr [ebx+21h], 2
jz      short loc_50063D
mov     edx, offset aTheInstruction ; "The instruction at 0x00000000 caused a "...

loc_500633:
mov     eax, esp
mov     ebx, [ecx+0Ch]
jmp     loc_5006DE

loc_50063D:
mov     edx, offset aTheInstruction_0 ; "The instruction at 0x00000000 caused a "...
jmp     short loc_500633

loc_500644:
mov     edx, offset aTheInstruction_1 ; "The instruction at 0x00000000 caused a "...
jmp     short loc_500633

loc_50064B:
mov     edx, offset aTheInstruction_2 ; "The instruction at 0x00000000 caused a "...
jmp     short loc_500633

loc_500652:
mov     edx, offset aTheInstruction_3 ; "The instruction at 0x00000000 caused an"...
jmp     short loc_500633

loc_500659:
mov     edx, offset aTheInstruction_4 ; "The instruction at 0x00000000 caused an"...
jmp     short loc_500633

loc_500660:
mov     edx, offset aTheInstruction_5 ; "The instruction at 0x00000000 caused an"...
jmp     short loc_500633

loc_500667:
mov     edx, offset aTheInstruction_6 ; "The instruction at 0x00000000 caused an"...
jmp     short loc_500633

loc_50066E:
mov     edx, offset aTheInstruction_7 ; "The instruction at 0x00000000 reference"...
mov     eax, esp
mov     ebx, [ecx+0Ch]
call    sub_500523
mov     edx, offset aAt0x00000000Th ; "at 0x00000000.\nThe memory could not be"...
mov     eax, esp
mov     ebx, [ecx+18h]
call    sub_500523
cmp     dword ptr [ecx+14h], 0
jnz     short loc_50069D
mov     edx, offset aRead ; "read.\n"

loc_500697:
mov     eax, esp
xor     ebx, ebx
jmp     short loc_5006DE

loc_50069D:
mov     edx, offset aWritten ; "written.\n"
jmp     short loc_500697

loc_5006A4:
mov     edx, offset aAPrivilegedIns ; "A privileged instruction was executed a"...
jmp     short loc_500633

loc_5006AB:
mov     edx, offset aAnIllegalInstr ; "An illegal instruction was executed at "...
jmp     short loc_500633

loc_5006B2:
mov     edx, offset aAnIntegerDivid ; "An integer divide by zero was encounter"...
jmp     loc_500633

loc_5006BC:
mov     edx, offset aAStackOverflow ; "A stack overflow was encountered at add"...
jmp     loc_500633

loc_5006C6:
mov     edx, offset aTheProgramEnco ; "The program encountered exception 0x000"...
mov     eax, esp
mov     ebx, [ecx]
call    sub_500523
mov     edx, offset aAddress0x00000 ; "address 0x00000000 and\ncannot continue"...
mov     eax, esp
mov     ebx, [ecx+0Ch]

loc_5006DE:
call    sub_500523
push    0               ; lpOverlapped
lea     eax, [esp+110h+NumberOfBytesWritten]
push    eax             ; lpNumberOfBytesWritten
lea     edi, [esp+114h+Buffer]
push    es
mov     eax, ds
mov     es, eax
assume es:AUTO
sub     ecx, ecx
dec     ecx
xor     eax, eax
repne scasb
not     ecx
dec     ecx
pop     es
assume es:nothing
push    ecx             ; nNumberOfBytesToWrite
lea     eax, [esp+118h+Buffer]
push    eax             ; lpBuffer
mov     eax, ds:dword_5580E4
mov     ebx, [eax+8]
push    ebx             ; hFile
call    cs:__imp_WriteFile
mov     eax, 1

loc_50071C:
add     esp, 104h
pop     edi
pop     ebx
retn    4
TopLevelExceptionFilter endp

db 8Bh, 0C0h
jpt_50076D dd offset loc_50078F ; jump table for switch statement
dd offset loc_500799
dd offset loc_5007A3
dd offset loc_5007C1
dd offset loc_5007AD
dd offset loc_500775
dd offset loc_5007B7



sub_500745 proc near

var_14= dword ptr -14h
var_10= dword ptr -10h
arg_0= dword ptr  4
arg_8= dword ptr  0Ch

push    ebx
push    esi
push    edi
sub     esp, 8
mov     esi, [esp+14h+arg_0]
mov     edi, [esp+14h+arg_8]
test    byte ptr [esi+4], 6
jnz     loc_5008FD
mov     eax, [esi]
add     eax, 3FFFFF73h  ; switch 7 cases
cmp     eax, 6
ja      def_50076D      ; jumptable 0050076D default case
jmp     cs:jpt_50076D[eax*4] ; switch jump

loc_500775:             ; jumptable 0050076D case -1073741678
test    byte ptr [edi+21h], 2
jz      short loc_500785
mov     ebx, 8Ah
jmp     loc_500853

loc_500785:
mov     ebx, 8Bh
jmp     loc_500853

loc_50078F:             ; jumptable 0050076D case -1073741683
mov     ebx, 82h
jmp     loc_500853

loc_500799:             ; jumptable 0050076D case -1073741682
mov     ebx, 83h
jmp     loc_500853

loc_5007A3:             ; jumptable 0050076D case -1073741681
mov     ebx, 86h
jmp     loc_500853

loc_5007AD:             ; jumptable 0050076D case -1073741679
mov     ebx, 84h
jmp     loc_500853

loc_5007B7:             ; jumptable 0050076D case -1073741677
mov     ebx, 85h
jmp     loc_500853

loc_5007C1:             ; jumptable 0050076D case -1073741680
mov     eax, [edi+28h]
mov     dx, [eax]
mov     ebx, 81h
cmp     dx, 0FAD9h
jnz     short loc_5007DD
mov     ebx, 88h
jmp     loc_500853

loc_5007DD:
cmp     dx, 0F1D9h
jnz     short loc_5007EE
mov     ebx, 8Eh
jmp     loc_500853

loc_5007EE:
jnz     short loc_5007F7
mov     ebx, 8Fh
jmp     short loc_500853

loc_5007F7:
mov     dh, [eax]
cmp     dh, 0DBh
jz      short loc_500803
cmp     dh, 0DFh
jnz     short loc_500813

loc_500803:
mov     dl, [eax+1]
and     dl, 30h
cmp     dl, 10h
jnz     short loc_500813
mov     ebx, 8Dh

loc_500813:
test    byte ptr [eax], 1
jnz     short loc_50084E
mov     al, [eax+1]
and     al, 30h
cmp     al, 30h ; '0'
jnz     short loc_50084E
mov     eax, [edi+20h]
and     eax, 0FFFFh
shl     eax, 2
xor     ecx, ecx
shr     ax, 0Dh
mov     edx, [edi+24h]
mov     cx, ax
and     edx, 0FFFFh
add     ecx, ecx
shr     edx, cl
and     edx, 1
cmp     edx, 1
jz      loc_500799      ; jumptable 0050076D case -1073741682

loc_50084E:
cmp     ebx, 0FFFFFFFFh
jz      short def_50076D ; jumptable 0050076D default case

loc_500853:
mov     ds:byte_898340, 1
call    sub_50293A
mov     eax, ebx
call    sub_502B07
cmp     eax, 0FFFFFFFFh
jz      loc_5008DE
cmp     ds:byte_898340, 0
jz      loc_5008DE
mov     bx, [edi+20h]
xor     bl, bl
and     bh, 7Fh
xor     eax, eax
mov     [edi+20h], bx
jmp     loc_500902

def_50076D:             ; jumptable 0050076D default case
cmp     ds:dword_558100, 0
jz      short loc_5008DE
mov     ebx, 1

loc_50089E:
mov     eax, ebx
mov     edx, [esi]
call    ds:dword_5580FC
test    eax, eax
jz      short loc_5008D8
cmp     eax, 1
jz      short loc_5008DE
cmp     eax, 2
jz      short loc_5008DE
cmp     eax, 3
jz      short loc_5008DE
mov     dl, 1
mov     eax, ebx
mov     ds:byte_898340, dl
call    ds:dword_558100
cmp     ds:byte_898340, 0
jz      short loc_5008D8
xor     eax, eax
jmp     short loc_500902

loc_5008D8:
inc     ebx
cmp     ebx, 0Ch
jle     short loc_50089E

loc_5008DE:
mov     eax, esp
push    eax             ; ExceptionInfo
mov     [esp+18h+var_14], esi
mov     [esp+18h+var_10], edi
call    cs:__imp_UnhandledExceptionFilter
test    eax, eax
jz      short loc_5008FD
push    0FFFFFFFFh      ; uExitCode
call    cs:__imp_ExitProcess

loc_5008FD:
mov     eax, 1

loc_500902:
add     esp, 8
pop     edi
pop     esi
pop     ebx
retn
sub_500745 endp




sub_500909 proc near
push    ecx
push    edx
mov     edx, eax
call    ds:off_551FC4
mov     [eax+54h], edx
xor     eax, eax
mov     eax, fs:[eax]
mov     edx, eax
call    ds:off_551FC4
mov     eax, [eax+54h]
mov     [eax], edx
call    ds:off_551FC4
mov     eax, [eax+54h]
xor     edx, edx
mov     dword ptr [eax+4], offset sub_500745
call    ds:off_551FC4
mov     eax, [eax+54h]
mov     fs:[edx], eax
push    offset TopLevelExceptionFilter ; lpTopLevelExceptionFilter
call    cs:__imp_SetUnhandledExceptionFilter
pop     edx
pop     ecx
retn
sub_500909 endp




sub_500955 proc near
push    edx
call    ds:off_551FC4
mov     eax, [eax+54h]
test    eax, eax
jz      short loc_50096A
mov     eax, [eax]
xor     edx, edx
mov     fs:[edx], eax

loc_50096A:
call    ds:off_551FC4
mov     dword ptr [eax+54h], 0
pop     edx
retn
sub_500955 endp

; [0000000C BYTES: COLLAPSED FUNCTION callit_]
; [0000004C BYTES: COLLAPSED FUNCTION __InitRtns]
; [00000051 BYTES: COLLAPSED FUNCTION __FiniRtns]
align 4
; [00000034 BYTES: COLLAPSED FUNCTION __fpatan_wrap]
; [0000007B BYTES: COLLAPSED FUNCTION __math87_err_]
; [00000087 BYTES: COLLAPSED FUNCTION __ioalloc_]



sub_500B5A proc near

NumberOfBytesRead= dword ptr -0Ch

push    ecx
push    esi
sub     esp, 4
mov     esi, eax
test    eax, eax
jl      short loc_500B6D
cmp     eax, ds:dword_55811C
jbe     short loc_500B7E

loc_500B6D:
mov     eax, 4
call    __set_errno_
mov     eax, 0FFFFFFFFh
jmp     short loc_500BE6

loc_500B7E:
call    ds:off_551FC8
cmp     ds:dword_557EA4, 0
jz      short loc_500BAD
mov     eax, esi
call    ds:dword_557E7C
test    eax, eax
jz      short loc_500BAD
call    ds:dword_557EA4
mov     edx, eax
mov     eax, esi
call    ds:off_551FCC
mov     eax, edx
jmp     short loc_500BE6

loc_500BAD:
mov     eax, ds:dword_5580E4
mov     ecx, esi
push    0               ; lpOverlapped
mov     eax, [eax+ecx*4]
lea     ecx, [esp+10h+NumberOfBytesRead]
push    ecx             ; lpNumberOfBytesRead
push    ebx             ; nNumberOfBytesToRead
push    edx             ; lpBuffer
push    eax             ; hFile
call    cs:__imp_ReadFile
test    eax, eax
jnz     short loc_500BDB
mov     eax, esi
call    ds:off_551FCC
call    __set_errno_nt_
jmp     short loc_500BE6

loc_500BDB:
mov     eax, esi
call    ds:off_551FCC
mov     eax, [esp+0Ch+NumberOfBytesRead]

loc_500BE6:
add     esp, 4
pop     esi
pop     ecx
retn
sub_500B5A endp

; [00000055 BYTES: COLLAPSED FUNCTION __IOMode_]
; [00000021 BYTES: COLLAPSED FUNCTION __SetIOMode_]
; [000000CA BYTES: COLLAPSED FUNCTION __qwrite_]
; [000000DE BYTES: COLLAPSED FUNCTION sub_500D2C]
; [0000005B BYTES: COLLAPSED FUNCTION tell_]
; [00000021 BYTES: COLLAPSED FUNCTION _heapenable_]
; [00000014 BYTES: COLLAPSED FUNCTION _nheapshrink_]
; [00000060 BYTES: COLLAPSED FUNCTION __ReturnMemToSystem_]
; [0000002A BYTES: COLLAPSED FUNCTION __ReleaseMiniHeap_]
; [00000029 BYTES: COLLAPSED CHUNK OF FUNCTION _nheapshrink_]
; [0000003B BYTES: COLLAPSED FUNCTION stricmp_]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_27]
align 2
; [00000027 BYTES: COLLAPSED FUNCTION __init_80x87]
; [00000092 BYTES: COLLAPSED FUNCTION __InitFiles_]
; [0000000C BYTES: COLLAPSED FUNCTION __full_io_exit_]
; [0000005D BYTES: COLLAPSED FUNCTION fcloseall_]
test    al, 1
jz      short loc_5010BE
mov     dword ptr [edx], 80000000h
mov     dword ptr [ebx], 1
jmp     short loc_5010CA

loc_5010BE:
mov     dword ptr [edx], 0C0000000h
mov     dword ptr [ebx], 80h

loc_5010CA:
test    al, 2
jz      short loc_5010D1
or      byte ptr [ebx], 2

loc_5010D1:
test    al, 4
jz      short locret_5010D8
or      byte ptr [ebx], 4

locret_5010D8:
retn



sub_5010D9 proc near
cmp     eax, 2
jnz     short loc_5010EB
mov     dword ptr [edx], 0C0000000h

loc_5010E4:
mov     dword ptr [ebx], 80h
retn

loc_5010EB:
cmp     eax, 1
jnz     short loc_5010F8
mov     dword ptr [edx], 40000000h
jmp     short loc_5010E4

loc_5010F8:
mov     dword ptr [edx], 80000000h
mov     dword ptr [ebx], 1
retn
sub_5010D9 endp




sub_501105 proc near
push    ebx
mov     ebx, eax
and     eax, 70h
and     ebx, 7
cmp     eax, 20h ; ' '
jb      short loc_501123
jbe     short loc_50114D
cmp     eax, 30h ; '0'
jb      short loc_50115B
jbe     short loc_501145
cmp     eax, 40h ; '@'
jz      short loc_501155
pop     ebx
retn

loc_501123:
test    eax, eax
jbe     short loc_50112E
cmp     eax, 10h
jz      short loc_50113D
pop     ebx
retn

loc_50112E:
mov     dword ptr [edx], 1
test    ebx, ebx
jnz     short loc_50115B
or      byte ptr [edx], 2
pop     ebx
retn

loc_50113D:
mov     dword ptr [edx], 0
pop     ebx
retn

loc_501145:
mov     dword ptr [edx], 2
pop     ebx
retn

loc_50114D:
mov     dword ptr [edx], 1
pop     ebx
retn

loc_501155:
mov     dword ptr [edx], 3

loc_50115B:
pop     ebx
retn
sub_501105 endp


_dosret0_:
test    edx, edx
jnz     short _dosretax_
xor     eax, eax

locret_501163:
retn

_dosretax_:
test    edx, edx
jz      short locret_501163
; [00000051 BYTES: COLLAPSED FUNCTION __set_errno_dos_]
; [00000011 BYTES: COLLAPSED FUNCTION __set_errno_nt_]
; [00000056 BYTES: COLLAPSED FUNCTION isatty_]
; [00000005 BYTES: COLLAPSED FUNCTION flushall_]
; [0000003B BYTES: COLLAPSED FUNCTION __flushall_]
; [00000022 BYTES: COLLAPSED FUNCTION getche_]

_ismbblead_:
mov     al, ds:byte_898349[eax]
and     al, 1
and     eax, 0FFh
retn
; [00000007 BYTES: COLLAPSED FUNCTION __mbInitOnStartup_]


; Attributes: bp-based frame

sub_501297 proc near

WideCharStr= word ptr -4

push    ecx
push    esi
push    edi
push    ebp
mov     ebp, esp
sub     esp, 4
mov     esi, eax
test    edx, edx
jnz     short loc_5012AD

loc_5012A6:
xor     eax, eax
jmp     loc_501324

loc_5012AD:
test    ebx, ebx
jbe     loc_50131F
cmp     byte ptr [edx], 0
jnz     short loc_5012C5
test    esi, esi
jz      short loc_5012A6
mov     word ptr [esi], 0
jmp     short loc_5012A6

loc_5012C5:
cmp     ds:dword_898344, 0
jz      short loc_5012E7
xor     eax, eax
mov     al, [edx]
mov     al, ds:byte_898349[eax]
and     al, 1
and     eax, 0FFh
jz      short loc_5012E7
cmp     byte ptr [edx+1], 0
jz      short loc_50131F

loc_5012E7:
mov     eax, edx
call    _mbclen_
push    1               ; cchWideChar
lea     ecx, [ebp+WideCharStr]
mov     edi, eax
push    ecx             ; lpWideCharStr
cmp     ebx, eax
jnb     short loc_5012FC
mov     eax, ebx

loc_5012FC:             ; cbMultiByte
push    eax
push    edx             ; lpMultiByteStr
push    8               ; dwFlags
mov     eax, ds:CodePage
push    eax             ; CodePage
call    cs:__imp_MultiByteToWideChar
test    eax, eax
jz      short loc_50131F
test    esi, esi
jz      short loc_50131B
mov     eax, dword ptr [ebp+WideCharStr]
mov     [esi], ax

loc_50131B:
mov     eax, edi
jmp     short loc_501324

loc_50131F:
mov     eax, 0FFFFFFFFh

loc_501324:
mov     esp, ebp
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_501297 endp

; [00000012 BYTES: COLLAPSED FUNCTION _no_support_loaded(void)]
align 2
; [0000004C BYTES: COLLAPSED FUNCTION __FDFS]
; [0000001C BYTES: COLLAPSED FUNCTION __I8M]



sub_5013A6 proc near
push    ebx
push    ecx
mov     ebx, edx
push    eax             ; lpFileName
call    cs:__imp_GetFileAttributesA
cmp     eax, 0FFFFFFFFh
jnz     short loc_5013BF
call    __set_errno_nt_
pop     ecx
pop     ebx
retn

loc_5013BF:
test    bl, 2
jz      short loc_5013D5
test    al, 1
jz      short loc_5013D5
mov     eax, 5
call    __set_errno_dos_
pop     ecx
pop     ebx
retn

loc_5013D5:
xor     eax, eax
pop     ecx
pop     ebx
retn
sub_5013A6 endp




sub_5013DA proc near
call    ds:off_551FC4
add     eax, 4
retn
sub_5013DA endp

call    ds:off_551FC4
add     eax, 8
retn



sub_5013EE proc near
push    ecx
push    edx             ; lpNewFileName
push    eax             ; lpExistingFileName
call    cs:__imp_MoveFileA
test    eax, eax
jnz     short loc_501403
call    __set_errno_nt_
pop     ecx
retn

loc_501403:
xor     eax, eax
pop     ecx
retn
sub_5013EE endp

; [0000005A BYTES: COLLAPSED FUNCTION getenv_]
; [00000091 BYTES: COLLAPSED FUNCTION _fullpath_]
; [00000081 BYTES: COLLAPSED FUNCTION getcwd_]
; [0000005D BYTES: COLLAPSED FUNCTION fsync_]
; [00000010 BYTES: COLLAPSED FUNCTION fflush_]



sub_5015E0 proc near
push    ecx
push    edx
push    eax             ; lpFileName
call    cs:__imp_DeleteFileA
test    eax, eax
jnz     short loc_5015F6
call    __set_errno_nt_
pop     edx
pop     ecx
retn

loc_5015F6:
xor     eax, eax
pop     edx
pop     ecx
retn
sub_5015E0 endp




sub_5015FB proc near

var_80= dword ptr -80h
var_7C= dword ptr -7Ch
var_70= dword ptr -70h
var_6B= byte ptr -6Bh
var_6A= byte ptr -6Ah
var_64= word ptr -64h
var_62= word ptr -62h
var_60= dword ptr -60h
var_5C= dword ptr -5Ch
var_58= dword ptr -58h
var_54= dword ptr -54h
var_50= dword ptr -50h
var_4C= dword ptr -4Ch
var_48= byte ptr -48h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= byte ptr -14h

push    esi
push    edi
push    es
push    ebp
sub     esp, 70h
mov     esi, ebx
mov     ebp, ecx
mov     ecx, 64h ; 'd'
xor     bl, bl
mov     [esp+80h+var_80], eax
mov     [esp+80h+var_14], bl
xor     bh, bh
mov     [esp+80h+var_18], edx
mov     [esp+80h+var_62], bx
xor     ebx, ebx
mov     [esp+80h+var_64], cx
mov     [esp+80h+var_70], ebx
jmp     loc_5016A7

loc_50162F:
mov     ebx, esp
mov     eax, [esi]
lea     edx, [esp+80h+var_20]
mov     [esp+80h+var_20], eax
mov     eax, edi
call    sub_5018BC
mov     edi, eax
mov     eax, [esp+80h+var_20]
mov     [esi], eax
mov     al, [edi]
inc     edi
mov     [esp+80h+var_6B], al
mov     [esp+80h+var_18], edi
test    al, al
jz      loc_5018B0
cmp     al, 6Eh ; 'n'
jnz     loc_50173D
mov     dh, byte ptr [esp+80h+var_62]
test    dh, 20h
jz      short loc_5016CF
test    dh, 80h
jz      short loc_501686
mov     edx, [esi]
add     edx, 8
mov     [esi], edx
les     edx, [edx-8]

loc_50167D:
mov     eax, [esp+80h+var_70]
mov     es:[edx], eax
jmp     short loc_5016A7

loc_501686:
test    dh, 40h
jz      short loc_501697
mov     eax, [esi]
add     eax, 4
mov     [esi], eax
mov     edx, [eax-4]
jmp     short loc_5016A1

loc_501697:
mov     edi, [esi]
add     edi, 4
mov     [esi], edi
mov     edx, [edi-4]

loc_5016A1:
mov     eax, [esp+80h+var_70]
mov     [edx], eax

loc_5016A7:
mov     eax, [esp+80h+var_18]
mov     bh, [eax]
test    bh, bh
jz      loc_5018B0
lea     edi, [eax+1]
cmp     bh, 25h ; '%'
jz      loc_50162F
xor     edx, edx
mov     eax, esp
mov     dl, bh
mov     [esp+80h+var_18], edi
call    ebp
jmp     short loc_5016A7

loc_5016CF:
test    dh, 10h
jz      short loc_501711
test    dh, 80h
jz      short loc_5016ED
mov     ecx, [esi]
add     ecx, 8
mov     [esi], ecx
les     edx, [ecx-8]
mov     eax, [esp+80h+var_70]
mov     es:[edx], ax
jmp     short loc_5016A7

loc_5016ED:
test    dh, 40h
jz      short loc_501705
mov     ebx, [esi]
add     ebx, 4
mov     [esi], ebx
mov     edx, [ebx-4]

loc_5016FC:
mov     eax, [esp+80h+var_70]
mov     [edx], ax
jmp     short loc_5016A7

loc_501705:
mov     edx, [esi]
add     edx, 4
mov     [esi], edx
mov     edx, [edx-4]
jmp     short loc_5016FC

loc_501711:
test    dh, 80h
jz      short loc_501725
mov     eax, [esi]
add     eax, 8
mov     [esi], eax
les     edx, [eax-8]
jmp     loc_50167D

loc_501725:
test    dh, 40h
jnz     loc_501697
mov     ecx, [esi]
add     ecx, 4
mov     [esi], ecx
mov     edx, [ecx-4]
jmp     loc_5016A1

loc_50173D:
lea     ecx, [esp+80h+var_14]
mov     ebx, esp
mov     eax, [esi]
lea     edx, [esp+80h+var_1C]
mov     [esp+80h+var_1C], eax
lea     eax, [esp+80h+var_48]
call    sub_501CCE
mov     edi, eax
mov     eax, [esp+80h+var_1C]
mov     es, edx
mov     [esi], eax
mov     eax, [esp+80h+var_60]
mov     ecx, [esp+80h+var_5C]
mov     edx, [esp+80h+var_58]
add     eax, ecx
mov     ebx, [esp+80h+var_54]
add     eax, edx
mov     ecx, [esp+80h+var_50]
add     eax, ebx
mov     edx, [esp+80h+var_4C]
add     eax, ecx
mov     ebx, [esp+80h+var_7C]
add     eax, edx
sub     ebx, eax
mov     ah, byte ptr [esp+80h+var_62]
mov     [esp+80h+var_7C], ebx
test    ah, 8
jnz     short loc_5017B2
cmp     [esp+80h+var_6A], 20h ; ' '
jnz     short loc_5017B2

loc_50179C:
cmp     [esp+80h+var_7C], 0
jle     short loc_5017B2
mov     edx, 20h ; ' '
mov     eax, esp
call    ebp
dec     [esp+80h+var_7C]
jmp     short loc_50179C

loc_5017B2:
lea     ebx, [esp+80h+var_48]

loc_5017B6:
cmp     [esp+80h+var_60], 0
jle     short loc_5017D1
xor     edx, edx
mov     eax, esp
mov     dl, [ebx]
call    ebp
mov     edx, [esp+80h+var_60]
dec     edx
inc     ebx
mov     [esp+80h+var_60], edx
jmp     short loc_5017B6

loc_5017D1:
cmp     [esp+80h+var_5C], 0
jle     short loc_5017E7
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_5C]
jmp     short loc_5017D1

loc_5017E7:
mov     dh, [esp+80h+var_6B]
cmp     dh, 73h ; 's'
jnz     short loc_501822
test    byte ptr [esp+80h+var_62], 20h
jz      short loc_501806

loc_5017F7:
mov     ebx, esp
mov     ecx, ebp
mov     edx, es
mov     eax, edi
call    sub_501C76
jmp     short loc_501843

loc_501806:
cmp     [esp+80h+var_58], 0
jle     short loc_501843
xor     edx, edx
mov     eax, esp
mov     dl, es:[edi]
call    ebp
mov     ecx, [esp+80h+var_58]
dec     ecx
inc     edi
mov     [esp+80h+var_58], ecx
jmp     short loc_501806

loc_501822:
cmp     dh, 53h ; 'S'
jz      short loc_5017F7

loc_501827:
cmp     [esp+80h+var_58], 0
jle     short loc_501843
xor     edx, edx
mov     eax, esp
mov     dl, es:[edi]
call    ebp
mov     edx, [esp+80h+var_58]
dec     edx
inc     edi
mov     [esp+80h+var_58], edx
jmp     short loc_501827

loc_501843:
cmp     [esp+80h+var_54], 0
jle     short loc_501859
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_54]
jmp     short loc_501843

loc_501859:
cmp     [esp+80h+var_50], 0
jle     short loc_501875
xor     edx, edx
mov     eax, esp
mov     dl, es:[edi]
call    ebp
mov     ecx, [esp+80h+var_50]
dec     ecx
inc     edi
mov     [esp+80h+var_50], ecx
jmp     short loc_501859

loc_501875:
cmp     [esp+80h+var_4C], 0
jle     short loc_50188B
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_4C]
jmp     short loc_501875

loc_50188B:
test    byte ptr [esp+80h+var_62], 8
jz      loc_5016A7

loc_501896:
cmp     [esp+80h+var_7C], 0
jle     loc_5016A7
mov     edx, 20h ; ' '
mov     eax, esp
call    ebp
dec     [esp+80h+var_7C]
jmp     short loc_501896

loc_5018B0:
mov     eax, [esp+80h+var_70]
add     esp, 70h
pop     ebp
pop     es
pop     edi
pop     esi
retn
sub_5015FB endp




sub_5018BC proc near
push    ecx
push    esi
push    edi
mov     esi, edx
mov     edx, ebx
mov     byte ptr [ebx+16h], 20h ; ' '
call    sub_501A09
mov     dword ptr [ebx+4], 0
cmp     byte ptr [eax], 2Ah ; '*'
jnz     short loc_5018FC
mov     edx, [esi]
add     edx, 4
mov     [esi], edx
mov     edx, [edx-4]
mov     [ebx+4], edx
test    edx, edx
jge     short loc_5018F9
mov     edi, edx
mov     ch, [ebx+1Eh]
neg     edi
or      ch, 8
mov     [ebx+4], edi
mov     [ebx+1Eh], ch

loc_5018F9:
inc     eax
jmp     short loc_50191B

loc_5018FC:
mov     dl, [eax]
cmp     dl, 30h ; '0'
jb      short loc_50191B
cmp     dl, 39h ; '9'
ja      short loc_50191B
imul    ecx, [ebx+4], 0Ah
xor     edx, edx
mov     dl, [eax]
sub     edx, 30h ; '0'
add     ecx, edx
inc     eax
mov     [ebx+4], ecx
jmp     short loc_5018FC

loc_50191B:
mov     dword ptr [ebx+8], 0FFFFFFFFh
cmp     byte ptr [eax], 2Eh ; '.'
jnz     short loc_501978
inc     eax
mov     dword ptr [ebx+8], 0
cmp     byte ptr [eax], 2Ah ; '*'
jnz     short loc_50194F
mov     edx, [esi]
add     edx, 4
mov     [esi], edx
mov     edx, [edx-4]
mov     [ebx+8], edx
test    edx, edx
jge     short loc_50194C
mov     dword ptr [ebx+8], 0FFFFFFFFh

loc_50194C:
inc     eax
jmp     short loc_50196E

loc_50194F:
mov     dl, [eax]
cmp     dl, 30h ; '0'
jb      short loc_50196E
cmp     dl, 39h ; '9'
ja      short loc_50196E
imul    ecx, [ebx+8], 0Ah
xor     edx, edx
mov     dl, [eax]
sub     edx, 30h ; '0'
add     ecx, edx
inc     eax
mov     [ebx+8], ecx
jmp     short loc_50194F

loc_50196E:
cmp     dword ptr [ebx+8], 0FFFFFFFFh
jz      short loc_501978
mov     byte ptr [ebx+16h], 20h ; ' '

loc_501978:
mov     dl, [eax]
lea     ecx, [eax+1]
cmp     dl, 4Eh ; 'N'
jb      short loc_5019A1
jbe     loc_5019FF
cmp     dl, 6Ch ; 'l'
jb      short loc_501998
jbe     short loc_5019BA
cmp     dl, 77h ; 'w'
jz      short loc_5019BA
pop     edi
pop     esi
pop     ecx
retn

loc_501998:
cmp     dl, 68h ; 'h'
jz      short loc_5019C8
pop     edi
pop     esi
pop     ecx
retn

loc_5019A1:
cmp     dl, 49h ; 'I'
jb      short loc_5019B1
jbe     short loc_5019CE
cmp     dl, 4Ch ; 'L'
jz      short loc_5019EA
pop     edi
pop     esi
pop     ecx
retn

loc_5019B1:
cmp     dl, 46h ; 'F'
jz      short loc_5019F9
pop     edi
pop     esi
pop     ecx
retn

loc_5019BA:
mov     cl, [ebx+1Eh]
or      cl, 20h
inc     eax
mov     [ebx+1Eh], cl
pop     edi
pop     esi
pop     ecx
retn

loc_5019C8:
or      byte ptr [ebx+1Eh], 10h
jmp     short loc_501A03

loc_5019CE:
cmp     byte ptr [eax+1], 36h ; '6'
jnz     short loc_501A05
cmp     byte ptr [eax+2], 34h ; '4'
jnz     short loc_501A05
mov     ch, [ebx+1Fh]
or      ch, 1
add     eax, 3
mov     [ebx+1Fh], ch
pop     edi
pop     esi
pop     ecx
retn

loc_5019EA:
mov     dl, [ebx+1Fh]
or      dl, 1
mov     eax, ecx
mov     [ebx+1Fh], dl
pop     edi
pop     esi
pop     ecx
retn

loc_5019F9:
or      byte ptr [ebx+1Eh], 80h
jmp     short loc_501A03

loc_5019FF:
or      byte ptr [ebx+1Eh], 40h

loc_501A03:
mov     eax, ecx

loc_501A05:
pop     edi
pop     esi
pop     ecx
retn
sub_5018BC endp




sub_501A09 proc near
push    ebx
push    ecx
mov     word ptr [edx+1Eh], 0

loc_501A11:
mov     bl, [eax]
cmp     bl, 2Dh ; '-'
jnz     short loc_501A1E
or      byte ptr [edx+1Eh], 8
jmp     short loc_501A60

loc_501A1E:
cmp     bl, 23h ; '#'
jnz     short loc_501A29
or      byte ptr [edx+1Eh], 1
jmp     short loc_501A60

loc_501A29:
cmp     bl, 2Bh ; '+'
jnz     short loc_501A41
mov     ch, [edx+1Eh]
or      ch, 4
mov     bl, ch
mov     [edx+1Eh], ch
and     bl, 0FDh
mov     [edx+1Eh], bl
jmp     short loc_501A60

loc_501A41:
cmp     bl, 20h ; ' '
jnz     short loc_501A58
mov     bh, [edx+1Eh]
test    bh, 4
jnz     short loc_501A60
mov     cl, bh
or      cl, 2
mov     [edx+1Eh], cl
jmp     short loc_501A60

loc_501A58:
cmp     bl, 30h ; '0'
jnz     short loc_501A63
mov     [edx+16h], bl

loc_501A60:
inc     eax
jmp     short loc_501A11

loc_501A63:
pop     ecx
pop     ebx
retn
sub_501A09 endp




sub_501A66 proc near
push    ecx
push    esi
push    edi
push    es
mov     ecx, edx
mov     edi, ebx
mov     edx, eax
mov     es, ecx
xor     eax, eax

loc_501A74:
mov     esi, edx
mov     bl, es:[esi]
inc     edx
test    bl, bl
jz      short loc_501A85
cmp     eax, edi
jz      short loc_501A85
inc     eax
jmp     short loc_501A74

loc_501A85:
pop     es
pop     edi
pop     esi
pop     ecx
retn
sub_501A66 endp




sub_501A8A proc near
push    ecx
push    esi
push    es
sub     esp, 4
mov     esi, ebx
mov     es, edx
mov     ebx, eax
xor     ecx, ecx
cmp     esi, 0FFFFFFFFh
jnz     short loc_501AC2

loc_501A9D:
mov     si, es:[ebx]
test    si, si
jz      short loc_501ABE
xor     edx, edx
mov     eax, esp
mov     dx, si
add     ebx, 2
call    wctomb_
cmp     eax, 0FFFFFFFFh
jz      short loc_501A9D
add     ecx, eax
jmp     short loc_501A9D

loc_501ABE:
mov     eax, ecx
jmp     short loc_501AEC

loc_501AC2:
cmp     word ptr es:[ebx], 0
jz      short loc_501AE6
cmp     ecx, esi
jg      short loc_501AE6
xor     edx, edx
mov     eax, esp
mov     dx, es:[ebx]
call    wctomb_
add     ebx, 2
cmp     eax, 0FFFFFFFFh
jz      short loc_501AC2
add     ecx, eax
jmp     short loc_501AC2

loc_501AE6:
cmp     ecx, esi
jle     short loc_501ABE
mov     eax, esi

loc_501AEC:
add     esp, 4
pop     es
pop     esi
pop     ecx
retn
sub_501A8A endp




sub_501AF3 proc near

var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, edx
mov     [esp+14h+var_14], ebx
mov     ebx, 10h
mov     edi, ebp
call    sub_503469
push    es
mov     eax, ds
mov     es, eax
assume es:AUTO
sub     ecx, ecx
dec     ecx
xor     eax, eax
repne scasb
not     ecx
dec     ecx
pop     es
assume es:nothing
mov     eax, [esp+14h+var_14]
mov     esi, ebp
dec     eax
lea     edx, [ecx+ebp]
lea     ebx, [eax+ebp]
jmp     short loc_501B30

loc_501B29:
dec     edx
mov     cl, [edx]
dec     eax
mov     [ebx], cl
dec     ebx

loc_501B30:
cmp     edx, esi
jnz     short loc_501B29
lea     edx, [eax+ebp]

loc_501B37:
test    eax, eax
jl      short loc_501B42
dec     eax
mov     byte ptr [edx], 30h ; '0'
dec     edx
jmp     short loc_501B37

loc_501B42:
add     ebp, [esp+14h+var_14]
mov     byte ptr [ebp+0], 0
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_501AF3 endp




sub_501B51 proc near

var_10= dword ptr -10h

push    ecx
push    esi
push    edi
sub     esp, 4
mov     ecx, eax
mov     esi, ebx
mov     [esp+10h+var_10], edx
test    edx, edx
jge     short loc_501B6D
neg     edx
lea     ecx, [eax+1]
mov     byte ptr [eax], 2Dh ; '-'
mov     [esp+10h+var_10], edx

loc_501B6D:
cmp     dword ptr [esi+8], 0FFFFFFFFh
jnz     short loc_501B7A
mov     dword ptr [esi+8], 4

loc_501B7A:
mov     ebx, 0Ah
xor     eax, eax
mov     edx, ecx
mov     ax, word ptr [esp+10h+var_10+2]
call    sub_503469
mov     ebx, ecx

loc_501B8F:
mov     ah, [ecx]
lea     edx, [ecx+1]
test    ah, ah
jz      short loc_501B9C
mov     ecx, edx
jmp     short loc_501B8F

loc_501B9C:
cmp     dword ptr [esi+8], 0
jz      short loc_501BCE
mov     byte ptr [ecx], 2Eh ; '.'
xor     eax, eax
mov     ecx, edx
jmp     short loc_501BC6

loc_501BAB:
xor     edx, edx
mov     word ptr [esp+10h+var_10+2], dx
mov     edi, [esp+10h+var_10]
imul    edx, edi, 0Ah
mov     [esp+10h+var_10], edx
mov     dl, byte ptr [esp+10h+var_10+2]
add     dl, 30h ; '0'
inc     eax
mov     [ecx], dl
inc     ecx

loc_501BC6:
cmp     eax, [esi+8]
jl      short loc_501BAB
mov     byte ptr [ecx], 0

loc_501BCE:
test    byte ptr [esp+10h+var_10+1], 80h
jz      short loc_501C25

loc_501BD5:
cmp     ecx, ebx
jnz     short loc_501C0B
lea     ecx, [ebx+1]
mov     byte ptr [ebx], 31h ; '1'

loc_501BDF:
mov     dl, [ecx]
lea     eax, [ecx+1]
cmp     dl, 30h ; '0'
jnz     short loc_501BED
mov     ecx, eax
jmp     short loc_501BDF

loc_501BED:
cmp     dl, 2Eh ; '.'
jnz     short loc_501C02
mov     byte ptr [ecx], 30h ; '0'
lea     ecx, [eax+1]
mov     [eax], dl

loc_501BFA:
cmp     byte ptr [ecx], 30h ; '0'
jnz     short loc_501C02
inc     ecx
jmp     short loc_501BFA

loc_501C02:
mov     byte ptr [ecx], 30h ; '0'
inc     ecx
mov     byte ptr [ecx], 0
jmp     short loc_501C25

loc_501C0B:
dec     ecx
cmp     byte ptr [ecx], 2Eh ; '.'
jnz     short loc_501C12
dec     ecx

loc_501C12:
mov     al, [ecx]
cmp     al, 39h ; '9'
jz      short loc_501C20
mov     ah, al
inc     ah
mov     [ecx], ah
jmp     short loc_501C25

loc_501C20:
mov     byte ptr [ecx], 30h ; '0'
jmp     short loc_501BD5

loc_501C25:
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_501B51 endp




sub_501C2C proc near
call    ds:off_5581A0   ; _no_support_loaded(void) ...
retn
sub_501C2C endp




sub_501C33 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
test    byte ptr [eax+1Eh], 8
jnz     short loc_501C6F
cmp     byte ptr [eax+16h], 30h ; '0'
jnz     short loc_501C6F
mov     edx, [eax+4]
mov     ebx, [eax+20h]
mov     ecx, [eax+24h]
sub     edx, ebx
mov     esi, [eax+28h]
sub     edx, ecx
mov     edi, [eax+2Ch]
sub     edx, esi
mov     ebp, [eax+30h]
sub     edx, edi
mov     ebx, [eax+34h]
sub     edx, ebp
sub     edx, ebx
test    edx, edx
jle     short loc_501C6F
add     ecx, edx
mov     [eax+24h], ecx

loc_501C6F:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_501C33 endp




sub_501C76 proc near
push    esi
push    edi
push    es
push    ebp
sub     esp, 4
mov     es, edx
mov     esi, eax
mov     ebp, ecx

loc_501C83:
cmp     dword ptr [ebx+28h], 0
jle     short loc_501CC6
xor     edx, edx
mov     eax, esp
mov     dx, es:[esi]
call    wctomb_
add     esi, 2
mov     edi, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_501C83
cmp     eax, [ebx+28h]
jg      short loc_501CBF
mov     ecx, esp

loc_501CA7:
dec     edi
cmp     edi, 0FFFFFFFFh
jz      short loc_501C83
xor     edx, edx
mov     eax, ebx
mov     dl, [ecx]
call    ebp
mov     eax, [ebx+28h]
dec     eax
inc     ecx
mov     [ebx+28h], eax
jmp     short loc_501CA7

loc_501CBF:
mov     dword ptr [ebx+28h], 0

loc_501CC6:
add     esp, 4
pop     ebp
pop     es
pop     edi
pop     esi
retn
sub_501C76 endp




sub_501CCE proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= byte ptr -14h
var_13= byte ptr -13h

push    esi
push    edi
push    es
push    ebp
sub     esp, 10h
mov     esi, eax
mov     ecx, ebx
mov     eax, ds
mov     es, eax
assume es:AUTO
mov     dword ptr [ebx+20h], 0
mov     dword ptr [ebx+24h], 0
mov     dword ptr [ebx+28h], 0
mov     dword ptr [ebx+2Ch], 0
mov     dword ptr [ebx+30h], 0
mov     edi, esi
mov     al, [ebx+15h]
mov     dword ptr [ebx+34h], 0
cmp     al, 69h ; 'i'
jb      short loc_501D29
jbe     loc_501D9C
cmp     al, 75h ; 'u'
jb      short loc_501D25
jbe     short loc_501D3C
cmp     al, 78h ; 'x'

loc_501D1E:
jz      short loc_501D3C
jmp     loc_501E7B

loc_501D25:
cmp     al, 6Fh ; 'o'
jmp     short loc_501D1E

loc_501D29:
cmp     al, 58h ; 'X'
jb      loc_501E7B
jbe     short loc_501D3C
cmp     al, 64h ; 'd'
jz      short loc_501D9C
jmp     loc_501E7B

loc_501D3C:
test    byte ptr [ecx+1Fh], 1
jz      short loc_501D62
mov     ebx, [edx]
add     ebx, 4
mov     [edx], ebx
mov     eax, [ebx-4]
mov     [esp+20h+var_20], eax
mov     ebp, [edx]
add     ebp, 4
mov     [edx], ebp
mov     eax, [ebp-4]

loc_501D59:
mov     [esp+20h+var_1C], eax
jmp     loc_501E7B

loc_501D62:
test    byte ptr [ecx+1Eh], 20h
jz      short loc_501D7B
mov     eax, [edx]
add     eax, 4
mov     [edx], eax
mov     eax, [eax-4]

loc_501D72:
mov     [esp+20h+var_18], eax
jmp     loc_501E7B

loc_501D7B:
mov     ebp, [edx]
add     ebp, 4
mov     [edx], ebp
mov     eax, [ebp-4]
mov     [esp+20h+var_18], eax
test    byte ptr [ecx+1Eh], 10h
jz      loc_501E7B
xor     eax, eax
mov     ax, word ptr [esp+20h+var_18]
jmp     short loc_501D72

loc_501D9C:
test    byte ptr [ecx+1Fh], 1
jz      short loc_501DBF
mov     eax, [edx]
add     eax, 4
mov     [edx], eax
mov     eax, [eax-4]
mov     [esp+20h+var_20], eax
mov     ebx, [edx]
add     ebx, 4
mov     [edx], ebx
mov     eax, [ebx-4]
mov     [esp+20h+var_1C], eax
jmp     short loc_501DF2

loc_501DBF:
test    byte ptr [ecx+1Eh], 20h
jz      short loc_501DD1
mov     ebp, [edx]
add     ebp, 4
mov     [edx], ebp
mov     eax, [ebp-4]
jmp     short loc_501DEE

loc_501DD1:
mov     ebx, [edx]
add     ebx, 4
mov     [edx], ebx
mov     eax, [ebx-4]
mov     bh, [ecx+1Eh]
mov     [esp+20h+var_18], eax
test    bh, 10h
jz      short loc_501DF2
mov     eax, [esp+20h+var_1C+2]
sar     eax, 10h

loc_501DEE:
mov     [esp+20h+var_18], eax

loc_501DF2:
mov     bl, [ecx+1Fh]
xor     eax, eax
test    bl, 1
jz      short loc_501E05
test    byte ptr [esp+20h+var_1C+3], 80h
jz      short loc_501E0C
jmp     short loc_501E10

loc_501E05:
cmp     [esp+20h+var_18], 0
jl      short loc_501E10

loc_501E0C:
test    eax, eax
jz      short loc_501E54

loc_501E10:
mov     eax, [ecx+20h]
lea     ebx, [eax+1]
mov     [ecx+20h], ebx
mov     byte ptr [esi+eax], 2Dh ; '-'
test    byte ptr [ecx+1Fh], 1
jz      short loc_501E4E
mov     ebx, [esp+20h+var_20]
mov     ebp, [esp+20h+var_1C]
not     ebx
not     ebp
mov     [esp+20h+var_20], ebx
lea     eax, [ebx+1]
mov     [esp+20h+var_1C], ebp
mov     [esp+20h+var_20], eax
test    eax, eax
jnz     short loc_501E47
lea     eax, [ebp+1]
jmp     loc_501D59

loc_501E47:
mov     eax, ebp
jmp     loc_501D59

loc_501E4E:
neg     [esp+20h+var_18]
jmp     short loc_501E7B

loc_501E54:
mov     al, [ecx+1Eh]
test    al, 4
jz      short loc_501E6A
mov     eax, [ecx+20h]
lea     ebx, [eax+1]
mov     [ecx+20h], ebx
mov     byte ptr [esi+eax], 2Bh ; '+'
jmp     short loc_501E7B

loc_501E6A:
test    al, 2
jz      short loc_501E7B
mov     eax, [ecx+20h]
lea     ebx, [eax+1]
mov     [ecx+20h], ebx
mov     byte ptr [esi+eax], 20h ; ' '

loc_501E7B:
mov     al, [ecx+15h]
mov     ebx, 0Ah
cmp     al, 64h ; 'd'
jb      short loc_501EE8
jbe     loc_50207D
cmp     al, 6Fh ; 'o'
jb      short loc_501EC9
jbe     loc_50205D
cmp     al, 73h ; 's'
jb      short loc_501EBC
jbe     loc_501F81
cmp     al, 75h ; 'u'
jb      loc_50224B
jbe     loc_50207D
cmp     al, 78h ; 'x'
jz      loc_50201A
jmp     loc_50224B

loc_501EBC:
cmp     al, 70h ; 'p'

loc_501EBE:
jz      loc_502123
jmp     loc_50224B

loc_501EC9:
cmp     al, 66h ; 'f'
jb      loc_501F65
jbe     short loc_501F30
cmp     al, 67h ; 'g'
jbe     loc_501F65
cmp     al, 69h ; 'i'
jz      loc_50207D
jmp     loc_50224B

loc_501EE8:
cmp     al, 47h ; 'G'
jb      short loc_501F1B
jbe     loc_501F65
cmp     al, 53h ; 'S'
jb      short loc_501F17
jbe     loc_501F81
cmp     al, 58h ; 'X'
jb      loc_50224B
jbe     loc_50201A
cmp     al, 63h ; 'c'
jz      loc_5021AF
jmp     loc_50224B

loc_501F17:
cmp     al, 50h ; 'P'
jmp     short loc_501EBE

loc_501F1B:
cmp     al, 45h ; 'E'
jb      short loc_501F23
jbe     short loc_501F65
jmp     short loc_501F30

loc_501F23:
cmp     al, 43h ; 'C'
jz      loc_50221F
jmp     loc_50224B

loc_501F30:
test    byte ptr [ecx+1Eh], 10h
jz      short loc_501F65
mov     ebx, [edx]
add     ebx, 4
mov     [edx], ebx
mov     eax, [ebx-4]
mov     [esp+20h+var_18], eax
mov     ebx, ecx
mov     edx, eax
mov     eax, esi
call    sub_501B51
mov     ebx, 0FFFFFFFFh
mov     edx, ds
mov     eax, esi
call    sub_501A66
mov     [ecx+28h], eax
jmp     loc_50225E

loc_501F65:
mov     ebx, ecx
mov     eax, esi
call    sub_501C2C
mov     eax, ecx
call    sub_501C33
mov     eax, ds
lea     edi, [esi+1]
mov     es, eax
jmp     loc_50225E

loc_501F81:
mov     byte ptr [esi], 0
mov     al, [ecx+1Eh]
test    al, 80h
jz      short loc_501FA8
mov     ebp, [edx]
add     ebp, 8
mov     [edx], ebp
mov     eax, [ebp-8]
mov     dx, [ebp-4]
test    eax, eax
jnz     short loc_501FA2
test    dx, dx
jz      short loc_501FD0

loc_501FA2:
mov     es, edx
assume es:nothing
mov     edi, eax
jmp     short loc_501FD0

loc_501FA8:
test    al, 40h
jz      short loc_501FBC
mov     esi, [edx]
add     esi, 4
mov     [edx], esi
mov     eax, [esi-4]
test    eax, eax
jz      short loc_501FD0
jmp     short loc_501FCA

loc_501FBC:
mov     ebx, [edx]
add     ebx, 4
mov     [edx], ebx
mov     eax, [ebx-4]
test    eax, eax
jz      short loc_501FD0

loc_501FCA:
mov     edx, ds
mov     edi, eax
mov     es, edx
assume es:AUTO

loc_501FD0:
cmp     byte ptr [ecx+15h], 53h ; 'S'
jnz     short loc_501FEA
test    byte ptr [ecx+1Eh], 10h
jnz     short loc_501FF0

loc_501FDC:
mov     edx, es
mov     eax, edi
mov     ebx, [ecx+8]
call    sub_501A8A
jmp     short loc_501FFC

loc_501FEA:
test    byte ptr [ecx+1Eh], 20h
jnz     short loc_501FDC

loc_501FF0:
mov     edx, es
mov     eax, edi
mov     ebx, [ecx+8]
call    sub_501A66

loc_501FFC:
mov     edx, [ecx+8]
mov     [ecx+28h], eax
test    edx, edx
jl      loc_50225E
cmp     eax, edx
jle     loc_50225E
mov     [ecx+28h], edx
jmp     loc_50225E

loc_50201A:
test    byte ptr [ecx+1Eh], 1
jz      short loc_502058
test    byte ptr [ecx+1Fh], 1
jz      short loc_502035
cmp     [esp+20h+var_20], 0
jnz     short loc_50203C
cmp     [esp+20h+var_1C], 0
jz      short loc_502058
jmp     short loc_50203C

loc_502035:
cmp     [esp+20h+var_18], 0
jz      short loc_502058

loc_50203C:
mov     eax, [ecx+20h]
lea     edx, [eax+1]
mov     [ecx+20h], edx
mov     byte ptr [esi+eax], 30h ; '0'
mov     eax, [ecx+20h]
lea     edx, [eax+1]
mov     [ecx+20h], edx
mov     dl, [ecx+15h]
mov     [esi+eax], dl

loc_502058:
mov     ebx, 10h

loc_50205D:
cmp     byte ptr [ecx+15h], 6Fh ; 'o'
jnz     short loc_50207D
mov     dl, [ecx+1Eh]
mov     ebx, 8
test    dl, 1
jz      short loc_50207D
mov     eax, [ecx+20h]
lea     edx, [eax+1]
mov     [ecx+20h], edx
mov     byte ptr [esi+eax], 30h ; '0'

loc_50207D:
mov     edx, ds
mov     eax, [ecx+20h]
mov     es, edx
add     eax, esi
mov     dh, [ecx+1Fh]
mov     edi, eax
test    dh, 1
jz      short loc_5020C6
cmp     dword ptr [ecx+8], 0
jnz     short loc_5020AB
cmp     [esp+20h+var_20], 0
jnz     short loc_5020AB
cmp     [esp+20h+var_1C], 0
jnz     short loc_5020AB

loc_5020A3:
mov     byte ptr es:[eax], 0
xor     eax, eax
jmp     short loc_5020FC

loc_5020AB:
mov     edx, [ecx+20h]
mov     eax, esp
add     edx, esi
call    __clib_ulltoa_
cmp     byte ptr [ecx+15h], 58h ; 'X'
jnz     short loc_5020EE
mov     eax, esi
call    sub_50226A
jmp     short loc_5020EE

loc_5020C6:
cmp     dword ptr [ecx+8], 0
jnz     short loc_5020D3
cmp     [esp+20h+var_18], 0
jz      short loc_5020A3

loc_5020D3:
mov     edx, [ecx+20h]
mov     eax, [esp+20h+var_18]
add     edx, esi
call    sub_503571
cmp     byte ptr [ecx+15h], 58h ; 'X'
jnz     short loc_5020EE
mov     eax, esi
call    sub_50226A

loc_5020EE:
mov     ebx, 0FFFFFFFFh
mov     edx, es
mov     eax, edi
call    sub_501A66

loc_5020FC:
mov     [ecx+28h], eax
mov     edx, eax
mov     eax, [ecx+8]
cmp     edx, eax
jge     short loc_50210D
sub     eax, edx
mov     [ecx+24h], eax

loc_50210D:
cmp     dword ptr [ecx+8], 0FFFFFFFFh
jnz     loc_50225E
mov     eax, ecx
call    sub_501C33
jmp     loc_50225E

loc_502123:
cmp     dword ptr [ecx+4], 0
jnz     short loc_50213F
test    byte ptr [ecx+1Eh], 80h
jz      short loc_502138
mov     dword ptr [ecx+4], 0Dh
jmp     short loc_50213F

loc_502138:
mov     dword ptr [ecx+4], 8

loc_50213F:
and     byte ptr [ecx+1Eh], 0F9h
mov     eax, [edx]
add     eax, 4
mov     [edx], eax
mov     bl, [ecx+1Eh]
mov     ebp, [eax-4]
test    bl, 80h
jz      short loc_50217E
add     eax, 4
mov     [edx], eax
mov     ebx, 4
mov     eax, [eax-4]
mov     edx, esi
and     eax, 0FFFFh
call    sub_501AF3
mov     ebx, 8
lea     edx, [esi+5]
mov     eax, ebp
mov     byte ptr [esi+4], 3Ah ; ':'
jmp     short loc_502187

loc_50217E:
mov     ebx, 8
mov     edx, esi
mov     eax, ebp

loc_502187:
call    sub_501AF3
cmp     byte ptr [ecx+15h], 50h ; 'P'
jnz     short loc_502199
mov     eax, esi
call    sub_50226A

loc_502199:
mov     ebx, 0FFFFFFFFh
mov     edx, es
mov     eax, edi
call    sub_501A66

loc_5021A7:
mov     [ecx+20h], eax
jmp     loc_50225E

loc_5021AF:
mov     bl, [ecx+1Eh]
mov     dword ptr [ecx+20h], 1
test    bl, 20h
jz      short loc_502211
mov     ebx, [edx]
add     ebx, 4
mov     [edx], ebx
mov     ax, [ebx-4]
xor     edx, edx
mov     dx, ax
lea     eax, [esp+20h+var_14]
call    wctomb_
cmp     eax, 0FFFFFFFFh
jz      loc_50225E
mov     al, [esp+20h+var_14]
mov     ebp, ds:dword_898344
mov     [esi], al
test    ebp, ebp
jz      short loc_50225E
xor     eax, eax
mov     al, [esp+20h+var_14]
mov     al, ds:byte_898349[eax]
and     al, 1
and     eax, 0FFh
jz      short loc_50225E
mov     al, [esp+20h+var_13]
mov     [esi+1], al
inc     dword ptr [ecx+20h]
jmp     short loc_50225E

loc_502211:
mov     eax, [edx]
add     eax, 4
mov     [edx], eax
mov     al, [eax-4]
mov     [esi], al
jmp     short loc_50225E

loc_50221F:
mov     ebp, [edx]
add     ebp, 4
mov     [edx], ebp
mov     dx, [ebp-4]
and     edx, 0FFFFh
mov     eax, esi
call    wctomb_
mov     edx, eax
cmp     eax, 0FFFFFFFFh
jnz     loc_5021A7
mov     dword ptr [ecx+20h], 0
jmp     short loc_50225E

loc_50224B:
mov     dword ptr [ecx+4], 0
mov     al, [ecx+15h]
mov     [esi], al
mov     dword ptr [ecx+20h], 1

loc_50225E:
mov     edx, es
mov     eax, edi
add     esp, 10h
pop     ebp
pop     es
assume es:nothing
pop     edi
pop     esi
retn
sub_501CCE endp




sub_50226A proc near
push    edx
mov     edx, eax

loc_50226D:
cmp     byte ptr [edx], 0
jz      short loc_502280
xor     eax, eax
mov     al, [edx]
call    toupper_
mov     [edx], al
inc     edx
jmp     short loc_50226D

loc_502280:
pop     edx
retn
sub_50226A endp

; [00000028 BYTES: COLLAPSED FUNCTION __RegisterThreadDataSize_]
; [0000000F BYTES: COLLAPSED FUNCTION stackavail_]
align 2
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_117]
xchg    eax, [esp+4]    ; __CHK
; doubtful name
call    sub_5022CB      ; __STK
; doubtful name
mov     eax, [esp+4]
retn    4
; [0000002F BYTES: COLLAPSED FUNCTION sub_5022CB]
; [00000020 BYTES: COLLAPSED FUNCTION sub_5022FA]
push    eax
call    sub_5022FA      ; __GRO
; doubtful name
push    eax
lea     eax, [esp+8]
sub     eax, [esp]
xchg    eax, esp
mov     eax, [eax+4]
jmp     eax
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_6]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_7]


; Attributes: noreturn

sub_502330 proc near
push    ebx
push    edx
mov     ebx, eax
call    ds:off_5581C0
cmp     byte ptr ds:dword_897BB8, 0
jnz     short loc_502352
mov     edx, 0FFh
mov     eax, 10h
call    __FiniRtns

loc_502352:
mov     eax, ebx
call    sub_50235C
sub_502330 endp

pop     edx
pop     ebx
retn


; Attributes: noreturn

sub_50235C proc near

; FUNCTION CHUNK AT 004FAC25 SIZE 00000042 BYTES

push    edx
mov     edx, eax
call    ds:off_5581C0
call    ds:off_5581C4
cmp     ds:dword_557EBC, 0
jz      short loc_50237A
call    ds:dword_557EBC

loc_50237A:
mov     eax, edx
jmp     loc_4FAC25
sub_50235C endp

align 2
; [00000114 BYTES: COLLAPSED FUNCTION _EFG_Format_]
; [0000000E BYTES: COLLAPSED FUNCTION __cnvs2d_]
; [0000007A BYTES: COLLAPSED FUNCTION _nrealloc_]
; [00000018 BYTES: COLLAPSED FUNCTION calloc_]
; [00000039 BYTES: COLLAPSED FUNCTION __exit_with_msg_]
; [0000001D BYTES: COLLAPSED FUNCTION __fatal_runtime_error_]
; [00000039 BYTES: COLLAPSED FUNCTION __GetThreadData_]
; [000000D4 BYTES: COLLAPSED FUNCTION __ReallocThreadData_]
; [00000061 BYTES: COLLAPSED FUNCTION __AddThreadData_]
; [0000004A BYTES: COLLAPSED FUNCTION __RemoveThreadData_]
; [00000023 BYTES: COLLAPSED FUNCTION __ResizeThreadDataList_]
; [00000029 BYTES: COLLAPSED FUNCTION __FreeThreadDataList_]
; [00000028 BYTES: COLLAPSED FUNCTION __InitThreadData_]
; [00000005 BYTES: COLLAPSED FUNCTION j___FreeThreadDataList_]
; [00000005 BYTES: COLLAPSED FUNCTION allocate_]
; [000000BD BYTES: COLLAPSED FUNCTION __setenvp_]
; [00000013 BYTES: COLLAPSED FUNCTION wcslen_]
; [00000025 BYTES: COLLAPSED FUNCTION __NTRealKey_]
; [0000006D BYTES: COLLAPSED FUNCTION initConsoleHandles_]
; [0000000B BYTES: COLLAPSED FUNCTION __NTConsoleInput_]
; [0000000B BYTES: COLLAPSED FUNCTION __NTConsoleOutput_]



sub_50293A proc near
fnclex
retn
sub_50293A endp

; [0000003C BYTES: COLLAPSED FUNCTION __SetSignalFunc_]
; [00000022 BYTES: COLLAPSED FUNCTION __GetSignalFunc_]
; [00000022 BYTES: COLLAPSED FUNCTION __GetSignalOSCode_]
; [00000019 BYTES: COLLAPSED FUNCTION __CheckSignalExCode_]
; [00000062 BYTES: COLLAPSED FUNCTION CtrlSignalHandler(x)]
; [00000036 BYTES: COLLAPSED FUNCTION CtrlHandlerIsNeeded_]
; [0000002E BYTES: COLLAPSED FUNCTION StartCtrlHandler_]
; [00000039 BYTES: COLLAPSED FUNCTION KillCtrlHandler_]
; [00000005 BYTES: COLLAPSED FUNCTION __sigabort_]
; [0000002D BYTES: COLLAPSED FUNCTION raise_]
; [00000044 BYTES: COLLAPSED FUNCTION sub_502B07]



sub_502B4B proc near
push    ebx
push    ecx
push    esi             ; Value
mov     ebx, eax
mov     ecx, edx
cmp     eax, 1
jl      short loc_502B5C
cmp     eax, 0Ch
jle     short loc_502B6F

loc_502B5C:
mov     eax, 9
call    __set_errno_
mov     eax, 3
pop     esi
pop     ecx
pop     ebx
retn

loc_502B6F:
mov     ds:off_5583B4, offset __sigabort_
cmp     ecx, 2
jz      short loc_502B9D
cmp     ecx, 3
jz      short loc_502B9D
call    __GetSignalOSCode_
test    eax, eax
jz      short loc_502B9D
cmp     ebx, 2
jnz     short loc_502B9D
mov     edx, 9Fh
xor     eax, eax
call    _control87_

loc_502B9D:
mov     eax, ebx
call    __GetSignalFunc_
mov     edx, ecx
mov     esi, eax
mov     eax, ebx
call    __SetSignalFunc_
call    CtrlHandlerIsNeeded_
test    eax, eax
jz      short loc_502BBF
call    StartCtrlHandler_
jmp     short loc_502BC4

loc_502BBF:
call    KillCtrlHandler_

loc_502BC4:
mov     eax, esi
pop     esi
pop     ecx
pop     ebx
retn
sub_502B4B endp

; [00000053 BYTES: COLLAPSED CHUNK OF FUNCTION raise_]
byte_502C1D db 53h, 52h, 56h
dd 8BA0657h
db 0
__SigInit_ db 2 dup(0), 0FFh
db 15h
dd offset off_551FC4
db 8Dh, 34h, 10h
dd 0C08ED88Ch, 8D587E8Dh
db 0B2h
dd offset dword_5581D0
db 83h, 0C2h, 8
dd 0FA83A5A5h, 0BAE07568h
dd offset __CheckSignalExCode_
mov     ebx, offset raise_
mov     ds:dword_5580FC, edx
mov     ds:dword_558100, ebx
pop     es
pop     edi
pop     esi
pop     edx
pop     ebx
retn



sub_502C63 proc near
push    edx
call    CtrlHandlerIsNeeded_
test    eax, eax

__SigFini_:
jz      short loc_502C90
call    KillCtrlHandler_
mov     edx, 2
mov     eax, 4
call    __SetSignalFunc_
mov     edx, 2
mov     eax, 7
call    __SetSignalFunc_

loc_502C90:
pop     edx
retn
sub_502C63 endp

word_502C92 dw 5253h
db 0BAh
dd offset byte_502C1D
db 0BBh
__sig_init_ dd offset sub_502C63
mov     ds:off_552004, edx
mov     ds:off_552008, ebx
pop     edx
pop     ebx
retn



sub_502CAD proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    ebx
push    ecx
push    edx
sub     esp, 10h
mov     [esp+1Ch+var_14], 0C0000000h
mov     [esp+1Ch+var_10], 4150017Eh
mov     [esp+1Ch+var_1C], 80000000h
mov     [esp+1Ch+var_18], 4147FFFFh
cmp     ds:byte_551FA5, 3
jb      short loc_502D24
mov     eax, [esp+1Ch+var_14]
mov     edx, [esp+1Ch+var_10]
mov     ebx, [esp+1Ch+var_1C]
mov     ecx, [esp+1Ch+var_18]
call    __FDD
mov     ebx, [esp+1Ch+var_1C]
mov     ecx, [esp+1Ch+var_18]
call    __FDM
mov     ebx, eax
mov     ecx, edx
mov     eax, [esp+1Ch+var_14]
mov     edx, [esp+1Ch+var_10]
call    __FDS
mov     ebx, 0E2308C3Ah
mov     ecx, 3E45798Eh
call    __FDC
jle     short loc_502D24
or      ds:byte_558118, 1

loc_502D24:
add     esp, 10h
pop     edx
pop     ecx
pop     ebx
retn
sub_502CAD endp

align 10h
; [00000200 BYTES: COLLAPSED FUNCTION __fpatan_chk]
; [0000000A BYTES: COLLAPSED FUNCTION __math1err_]
; [000000DB BYTES: COLLAPSED FUNCTION __math2err_]
; [0000010D BYTES: COLLAPSED FUNCTION do_getch_]
; [0000007C BYTES: COLLAPSED FUNCTION getch_]
; [00000064 BYTES: COLLAPSED FUNCTION putch_]



sub_503202 proc near

var_22= byte ptr -22h
var_21= byte ptr -21h

push    ebx
push    ecx
push    edx
push    esi
push    ebp
sub     esp, 14h
mov     esi, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_50321F
call    cs:__imp_GetACP

loc_503218:
mov     esi, eax
jmp     loc_5032AD

loc_50321F:
cmp     eax, 0FFFFFFFEh
jnz     short loc_50322D
call    cs:__imp_GetOEMCP
jmp     short loc_503218

loc_50322D:
cmp     eax, 0FFFFFFFDh
jnz     short loc_503258
mov     ebx, 101h
mov     eax, offset byte_898348
xor     edx, edx
call    memset_
xor     edx, edx
xor     eax, eax
mov     ds:dword_898344, edx
mov     ds:CodePage, edx
jmp     loc_503345

loc_503258:
cmp     eax, 0FFFFFFFCh
jnz     short loc_5032AD
mov     ebx, 101h
mov     eax, offset byte_898348
xor     edx, edx
call    memset_
mov     eax, 81h
mov     dl, 1

loc_503275:
inc     eax
mov     ds:byte_898348[eax], dl
cmp     eax, 9Fh
jle     short loc_503275
mov     eax, 0E0h
mov     dh, 1

loc_50328A:
inc     eax
mov     ds:byte_898348[eax], dh
cmp     eax, 0FCh
jle     short loc_50328A
mov     ebp, 1
mov     eax, 3A4h
mov     ds:dword_898344, ebp
jmp     loc_503336

loc_5032AD:
test    esi, esi
jnz     short loc_5032B6
mov     esi, 1

loc_5032B6:
mov     eax, esp
push    eax             ; lpCPInfo
push    esi             ; CodePage
call    cs:__imp_GetCPInfo
test    eax, eax
jnz     short loc_5032CF
mov     eax, 1
jmp     loc_503345

loc_5032CF:
mov     ebx, 101h
mov     eax, offset byte_898348
xor     edx, edx
call    memset_
xor     ecx, ecx
mov     ah, [esp+28h+var_22]
mov     ds:dword_898344, ecx
test    ah, ah
jz      short loc_5032FA
mov     ds:dword_898344, 1

loc_5032FA:
xor     edx, edx
mov     cl, 1
jmp     short loc_50331C

loc_503300:
xor     eax, eax
mov     al, [esp+edx+28h+var_22]
jmp     short loc_50330F

loc_503308:
inc     eax
mov     ds:byte_898348[eax], cl

loc_50330F:
xor     ebx, ebx
mov     bl, [esp+edx+28h+var_21]
cmp     eax, ebx
jle     short loc_503308
add     edx, 2

loc_50331C:
cmp     [esp+edx+28h+var_22], 0
jnz     short loc_503300
cmp     [esp+edx+28h+var_21], 0
jnz     short loc_503300
cmp     esi, 1
jnz     short loc_50333D
call    cs:__imp_GetOEMCP

loc_503336:
mov     ds:CodePage, eax
jmp     short loc_503343

loc_50333D:
mov     ds:CodePage, esi

loc_503343:
xor     eax, eax

loc_503345:
add     esp, 14h
pop     ebp
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_503202 endp

; [0000002B BYTES: COLLAPSED FUNCTION _mbclen_]
; [00000072 BYTES: COLLAPSED FUNCTION _mbsnicmp_]
; [00000035 BYTES: COLLAPSED FUNCTION wctomb_]



sub_503420 proc near

var_38= byte ptr -38h
var_37= byte ptr -37h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 28h
mov     ebp, edx
mov     edi, ebx
mov     esi, edx
xor     dl, dl
lea     ecx, [esp+38h+var_37]
mov     [esp+38h+var_38], dl

loc_503436:
lea     ebx, [esp+38h+var_14]
mov     [esp+38h+var_14], edi
xor     edx, edx
div     dword ptr [ebx]
mov     [ebx], eax
mov     al, ds:byte_5582A0[edx]
mov     [ecx], al
mov     eax, [esp+38h+var_14]
inc     ecx
test    eax, eax
jnz     short loc_503436

loc_503455:
dec     ecx
mov     al, [ecx]
mov     [esi], al
inc     esi
test    al, al
jnz     short loc_503455
mov     eax, ebp
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_503420 endp




sub_503469 proc near
push    ecx
mov     ecx, edx
cmp     ebx, 0Ah
jnz     short loc_50347B
test    eax, eax
jge     short loc_50347B
neg     eax
mov     byte ptr [edx], 2Dh ; '-'
inc     edx

loc_50347B:
call    sub_503420
mov     eax, ecx
pop     ecx
retn
sub_503469 endp

; [00000097 BYTES: COLLAPSED FUNCTION __clib_ulltoa_]
push    ecx
; [00000055 BYTES: COLLAPSED FUNCTION __clib_lltoa_]
; [00000049 BYTES: COLLAPSED FUNCTION sub_503571]
push    ecx
mov     ecx, edx
cmp     ebx, 0Ah
jnz     short loc_5035CC
test    eax, eax
jge     short loc_5035CC
neg     eax
mov     byte ptr [edx], 2Dh ; '-'
inc     edx

loc_5035CC:
call    sub_503571
mov     eax, ecx
pop     ecx
retn
; [0000000E BYTES: COLLAPSED FUNCTION toupper_]
; [0000005D BYTES: COLLAPSED FUNCTION CalcScaleFactor_]
; [00000081 BYTES: COLLAPSED FUNCTION _do_LDScale10x_]
; [00000044 BYTES: COLLAPSED FUNCTION _LDScale10x_]
db 8Bh, 0C0h
jpt_5037A6 dd offset loc_5037AE ; jump table for switch statement
dd offset loc_5037EA
dd offset loc_5037BC
dd offset loc_5037DA
dd offset loc_5037AE
; [000002D4 BYTES: COLLAPSED FUNCTION __LDcvt_]
; [00000016 BYTES: COLLAPSED FUNCTION sub_5039EF]
; [00000017 BYTES: COLLAPSED FUNCTION sub_503A05]
; [00000018 BYTES: COLLAPSED FUNCTION sub_503A1C]
; [00000129 BYTES: COLLAPSED CHUNK OF FUNCTION __LDcvt_]
; [0000020E BYTES: COLLAPSED FUNCTION DoFFormat_]
jpt_503F78 dd offset loc_503F80 ; jump table for switch statement
dd offset loc_503F90
dd offset loc_503F9B
dd offset loc_503FA6
; [00000356 BYTES: COLLAPSED FUNCTION DoEFormat_]
; [00000194 BYTES: COLLAPSED FUNCTION __Strtold_]
; [0000007F BYTES: COLLAPSED FUNCTION strtod_]
; [0000000B BYTES: COLLAPSED FUNCTION _nmsize_]



sub_5042EF proc near

; FUNCTION CHUNK AT 005044C4 SIZE 0000000F BYTES

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     esi, eax
mov     ebx, edx
call    ds:off_551FE0
mov     eax, offset dword_551C84
mov     edx, ds
xor     eax, eax
mov     ecx, esp
mov     ax, dx
mov     edx, esi
call    sub_504329
test    eax, eax
jnz     loc_5044C4
call    ds:off_551FE8
mov     eax, esi
jmp     loc_5044CC
sub_5042EF endp




sub_504329 proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax
mov     edi, edx
lea     eax, [ebx+0Bh]
and     al, 0F8h
cmp     eax, ebx
jnb     short loc_504342
mov     eax, 0FFFFFFFFh
jmp     short loc_50434C

loc_504342:
cmp     eax, 10h
jnb     short loc_50434C
mov     eax, 10h

loc_50434C:
lea     edx, [edi-4]
mov     [esp+1Ch+var_18], edx
mov     edx, [edx]
and     dl, 0FEh
cmp     eax, edx
jbe     loc_50445C
mov     ebx, [esp+1Ch+var_18]
sub     eax, edx
add     ebx, edx

loc_504368:
mov     [ecx], eax
mov     ebp, [ebx]
cmp     ebp, 0FFFFFFFFh
jnz     short loc_50437B
mov     ebp, 2
jmp     loc_5044BB

loc_50437B:
test    ebp, 1
jnz     loc_504455
mov     eax, [ebx+8]
mov     [esp+1Ch+var_10], eax
mov     eax, [ebx+4]
mov     edx, ds
mov     [esp+1Ch+var_14], eax
mov     eax, offset dword_551C84
cmp     dx, word ptr [esp+1Ch+var_1C]
jnz     short loc_5043BF
mov     esi, ds:dword_551C84
jmp     short loc_5043B9

loc_5043AA:
cmp     esi, edi
ja      short loc_5043B6
mov     eax, [esi]
add     eax, esi
cmp     eax, edi
ja      short loc_5043BF

loc_5043B6:
mov     esi, [esi+8]

loc_5043B9:
cmp     dword ptr [esi+8], 0
jnz     short loc_5043AA

loc_5043BF:
mov     edx, [esi+0Ch]
cmp     ebx, edx
jnz     short loc_5043CC
mov     eax, [edx+4]
mov     [esi+0Ch], eax

loc_5043CC:
cmp     ebp, [ecx]
jb      short loc_5043DB
mov     eax, ebp
mov     edx, [ecx]
sub     eax, edx
cmp     eax, 10h
jnb     short loc_50440F

loc_5043DB:
mov     eax, [esp+1Ch+var_14]
mov     edx, [esp+1Ch+var_10]
mov     [eax+8], edx
mov     eax, edx
mov     edx, [esp+1Ch+var_14]
mov     [eax+4], edx
mov     eax, [esp+1Ch+var_18]
add     [eax], ebp
mov     eax, [esi+1Ch]
dec     eax
xor     dl, dl
mov     [esi+1Ch], eax
mov     ds:byte_897BC1, dl
mov     edx, [ecx]
cmp     ebp, edx
jb      short loc_50444A
jmp     loc_5044B9

loc_50440F:
add     ebx, edx
mov     [ebx], eax
mov     eax, [esp+1Ch+var_14]
mov     [ebx+4], eax
mov     eax, [esp+1Ch+var_10]
mov     [ebx+8], eax
mov     eax, [esp+1Ch+var_14]
mov     [eax+8], ebx
mov     eax, [esp+1Ch+var_10]
mov     [eax+4], ebx
mov     edx, [esp+1Ch+var_18]
mov     eax, [ecx]
mov     edi, [edx]
xor     ebp, ebp
add     edi, eax
xor     ah, ah
mov     [edx], edi
mov     ds:byte_897BC1, ah
jmp     loc_5044BB

loc_50444A:
mov     eax, edx
sub     eax, ebp
add     ebx, ebp
jmp     loc_504368

loc_504455:
mov     ebp, 1
jmp     short loc_5044BB

loc_50445C:
sub     edx, eax
cmp     edx, 10h
jb      short loc_5044B9
mov     ebx, eax
mov     ecx, [esp+1Ch+var_18]
or      bl, 1
or      dl, 1
mov     [ecx], ebx
lea     ebx, [ecx+eax]
mov     eax, offset dword_551C84
mov     [esp+1Ch+var_18], ebx
mov     [ebx], edx
mov     edx, ds
mov     ebx, [esp+1Ch+var_1C]
cmp     dx, bx
jnz     short loc_5044A6
mov     esi, ds:dword_551C84
jmp     short loc_5044A0

loc_504491:
cmp     esi, edi
ja      short loc_50449D
mov     eax, [esi]
add     eax, esi
cmp     eax, edi
ja      short loc_5044A6

loc_50449D:
mov     esi, [esi+8]

loc_5044A0:
cmp     dword ptr [esi+8], 0
jnz     short loc_504491

loc_5044A6:
mov     edi, [esi+18h]
mov     eax, [esp+1Ch+var_18]
inc     edi
add     eax, 4
mov     [esi+18h], edi
call    _nfree_

loc_5044B9:
xor     ebp, ebp

loc_5044BB:
mov     eax, ebp
add     esp, 10h
pop     ebp
pop     edi
pop     esi
retn
sub_504329 endp

; START OF FUNCTION CHUNK FOR sub_5042EF

loc_5044C4:
call    ds:off_551FE8
xor     eax, eax

loc_5044CC:
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
; END OF FUNCTION CHUNK FOR sub_5042EF
; [00000026 BYTES: COLLAPSED FUNCTION __EnterWVIDEO_]
; [00000003 BYTES: COLLAPSED FUNCTION __CInitThread_]

_beginthread_:
call    ds:off_5583A8
retn
; [00000006 BYTES: COLLAPSED FUNCTION _endthread_]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_118]
; [00000007 BYTES: COLLAPSED FUNCTION __initthread_]

__RegisterThreadData_:
push    ecx
push    esi
test    eax, eax
jz      short loc_504527
mov     ecx, [eax]
mov     esi, ds:off_5583A8
mov     ds:off_5583A8, ecx
mov     [eax], esi

loc_504527:
test    edx, edx
jz      short loc_50453A
mov     eax, [edx]
mov     ecx, ds:off_5583AC
mov     ds:off_5583AC, eax
mov     [edx], ecx

loc_50453A:
test    ebx, ebx
jz      short loc_50454D
mov     eax, [ebx]
mov     edx, ds:off_5583B0
mov     ds:off_5583B0, eax
mov     [ebx], edx

loc_50454D:
pop     esi
pop     ecx
retn
; [00000120 BYTES: COLLAPSED FUNCTION __ParsePosixHandleStr_]

abort_:
call    ds:off_5583B4
; [00000012 BYTES: COLLAPSED FUNCTION __terminate_]
; [0000004C BYTES: COLLAPSED FUNCTION _control87_]
; [00000206 BYTES: COLLAPSED FUNCTION __FDD]
; [000001BD BYTES: COLLAPSED FUNCTION __FDS]
; [0000019D BYTES: COLLAPSED FUNCTION __FDM]
; [00000038 BYTES: COLLAPSED FUNCTION __FDC]
; [00000117 BYTES: COLLAPSED FUNCTION fdiv_main_routine]
; [0000049C BYTES: COLLAPSED FUNCTION __fdiv_fpr]
; [00000013 BYTES: COLLAPSED FUNCTION __fdivp_sti_st]
; [00000013 BYTES: COLLAPSED FUNCTION __fdivrp_sti_st]
; [00000013 BYTES: COLLAPSED FUNCTION __fdiv_chk]

__fdiv_m32:
push    eax
mov     eax, [esp+8]
and     eax, 7F800000h
cmp     eax, 7F800000h
jz      short loc_50529C
fnstsw  ax
and     eax, 3800h
jz      short loc_50527F
fld     dword ptr [esp+8]
call    __fdivp_sti_st
pop     eax
retn    4

loc_50527F:
fxch    st(1)
sub     esp, 0Ch
fstp    tbyte ptr [esp]
fld     dword ptr [esp+14h]
call    __fdivp_sti_st
fld     tbyte ptr [esp]
fxch    st(1)
add     esp, 0Ch
pop     eax
retn    4

loc_50529C:
fdiv    dword ptr [esp+8]
pop     eax
retn    4
; [0000004C BYTES: COLLAPSED FUNCTION __fdiv_m64]

__fdiv_m32r:
push    eax
mov     eax, [esp+8]
and     eax, 7F800000h
cmp     eax, 7F800000h
jz      short loc_505334
fnstsw  ax
and     eax, 3800h
jz      short loc_505317
fld     dword ptr [esp+8]
call    __fdivrp_sti_st
pop     eax
retn    4

loc_505317:
fxch    st(1)
sub     esp, 0Ch
fstp    tbyte ptr [esp]
fld     dword ptr [esp+14h]
call    __fdivrp_sti_st
fld     tbyte ptr [esp]
fxch    st(1)
add     esp, 0Ch
pop     eax
retn    4

loc_505334:
fdivr   dword ptr [esp+8]
pop     eax
retn    4

__fdiv_m64r:
push    eax
mov     eax, [esp+0Ch]
and     eax, 7FF00000h
cmp     eax, 7FF00000h
jz      short loc_505380
fnstsw  ax
and     eax, 3800h
jz      short loc_505363
fld     qword ptr [esp+8]
call    __fdivrp_sti_st
pop     eax
retn    8

loc_505363:
fxch    st(1)
sub     esp, 0Ch
fstp    tbyte ptr [esp]
fld     qword ptr [esp+14h]
call    __fdivrp_sti_st
fld     tbyte ptr [esp]
fxch    st(1)
add     esp, 0Ch
pop     eax
retn    8

loc_505380:
fdivr   qword ptr [esp+8]
pop     eax
retn    8
; [00000006 BYTES: COLLAPSED FUNCTION _set_matherr_]
; [00000048 BYTES: COLLAPSED FUNCTION __rterrmsg_]
; [0000002F BYTES: COLLAPSED FUNCTION _matherr_]
; [0000003C BYTES: COLLAPSED FUNCTION _mbterm_]
; [00000057 BYTES: COLLAPSED FUNCTION _mbcicmp_]
; [0000002D BYTES: COLLAPSED FUNCTION _mbsinc_]
align 2

__I8D:
or      edx, edx
js      short loc_5054E8
or      ecx, ecx
js      short loc_5054D4
call    __U8D
retn

loc_5054D4:
neg     ecx
neg     ebx
sbb     ecx, 0
call    __U8D
neg     edx
neg     eax
sbb     edx, 0
retn

loc_5054E8:
neg     edx
neg     eax
sbb     edx, 0
or      ecx, ecx
jns     short loc_505507
neg     ecx
neg     ebx
sbb     ecx, 0
call    __U8D
neg     ecx
neg     ebx
sbb     ecx, 0
retn

loc_505507:
call    __U8D
neg     ecx
neg     ebx
sbb     ecx, 0
neg     edx
neg     eax
sbb     edx, 0
retn
; [0000008E BYTES: COLLAPSED FUNCTION __U8D]
; [00000050 BYTES: COLLAPSED FUNCTION __LDClass_]
align 2
; [00000062 BYTES: COLLAPSED FUNCTION __ZBuf2LD]
; [00000041 BYTES: COLLAPSED FUNCTION sub_50565C]


; Attributes: bp-based frame

; DWORD __stdcall StartAddress(LPVOID lpThreadParameter)
StartAddress proc near

var_10= byte ptr -10h
var_8= dword ptr -8
hObject= dword ptr -4
lpThreadParameter= dword ptr  20h

push    ebx
push    esi
push    edi
push    es
push    fs
push    gs
push    ebp
mov     ebp, esp
sub     esp, 10h
mov     esi, [ebp+lpThreadParameter]
mov     eax, [esi]
mov     [ebp+var_8], eax
mov     eax, [esi+10h]
mov     edx, ds:dword_897BB8
mov     eax, [eax]
mov     edi, [esi+4]
mov     [ebp+hObject], eax
test    edx, edx
jnz     short loc_505706
mov     eax, ds:dword_5581A8
add     eax, 3
and     al, 0FCh
sub     esp, eax
mov     ecx, esp
mov     ebx, ds:dword_5581A8
mov     eax, ecx
call    memset_
mov     eax, ds:dword_5581A8
mov     [ecx+0F0h], eax
mov     eax, ecx
call    sub_50012F
test    eax, eax
jnz     short loc_505706
mov     ecx, [ebp+hObject]
push    ecx             ; hObject
call    cs:__imp_CloseHandle
jmp     short loc_505738

loc_505706:
mov     ebx, [ebp+hObject]
call    ds:off_551FC4
mov     [eax+0DEh], ebx
mov     ebx, [esi+0Ch]
push    ebx             ; hEvent
call    cs:__imp_SetEvent
lea     eax, [ebp+var_10]
call    sub_500909
call    ds:off_552004
mov     eax, edi
call    [ebp+var_8]
call    _endthread_

loc_505738:
mov     esp, ebp
pop     ebp
pop     gs
pop     fs
pop     es
pop     edi
pop     esi
pop     ebx
retn
StartAddress endp




sub_505744 proc near

var_48= byte ptr -48h
Parameter= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
hHandle= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
ThreadId= dword ptr -18h

push    ecx
push    esi
push    edi
push    es
push    ebp
sub     esp, 3Ch
mov     ecx, eax
mov     ebp, edx
cmp     ds:dwTlsIndex, 0FFFFFFFFh
jnz     short loc_50576B
call    sub_5000DA
test    eax, eax
jz      loc_505814
call    sub_5001FF

loc_50576B:
mov     [esp+50h+Parameter], ecx
mov     [esp+50h+var_2C], ebx
call    cs:__imp_GetCurrentThread
mov     [esp+50h+var_28], eax
mov     eax, ds
mov     edi, esp
mov     es, eax
assume es:AUTO
mov     esi, offset aBgnthd ; "__bgnthd"
mov     ebx, 10h
movsd
movsd
movsb
call    cs:__imp_GetCurrentThreadId
lea     edx, [esp+50h+var_48]
call    sub_503469
mov     eax, esp
push    eax             ; lpName
push    0               ; bInitialState
push    0               ; bManualReset
push    0               ; lpEventAttributes
call    cs:__imp_CreateEventA
mov     [esp+50h+hHandle], eax
lea     eax, [esp+50h+var_1C]
mov     [esp+50h+var_20], eax
lea     eax, [esp+50h+ThreadId]
push    eax             ; lpThreadId
push    0               ; dwCreationFlags
lea     eax, [esp+58h+Parameter]
push    eax             ; lpParameter
add     ebp, 0FFFh
push    offset StartAddress ; lpStartAddress
and     ebp, 0FFFFF000h
push    ebp             ; dwStackSize
push    0               ; lpThreadAttributes
call    cs:__imp_CreateThread
mov     [esp+50h+var_1C], eax
test    eax, eax
jnz     short loc_5057F6
mov     [esp+50h+ThreadId], 0FFFFFFFFh
jmp     short loc_505804

loc_5057F6:             ; dwMilliseconds
push    0FFFFFFFFh
mov     ebx, [esp+54h+hHandle]
push    ebx             ; hHandle
call    cs:__imp_WaitForSingleObject

loc_505804:
mov     esi, [esp+50h+hHandle]
push    esi             ; hObject
call    cs:__imp_CloseHandle
mov     eax, [esp+50h+var_1C]

loc_505814:
add     esp, 3Ch
pop     ebp
pop     es
assume es:nothing
pop     edi
pop     esi
pop     ecx
retn
sub_505744 endp



; Attributes: noreturn

sub_50581D proc near
push    ecx
push    edx
call    ds:off_552008
call    sub_500955
cmp     ds:dword_897BB8, 0
jnz     short loc_50583D
mov     eax, 1
call    sub_50017E

loc_50583D:             ; dwExitCode
push    0
call    cs:__imp_ExitThread
sub_50581D endp

pop     edx
pop     ecx
retn
; [00000025 BYTES: COLLAPSED FUNCTION strncpy_]



sub_50586E proc near

var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

push    esi
push    edi
push    ebp
sub     esp, 0Ch
push    eax             ; Value
mov     ebp, edx
mov     esi, ebx
mov     [esp+1Ch+var_10], ecx
test    edx, edx
jz      short loc_505883
mov     [edx], eax

loc_505883:
mov     edx, [esp+1Ch+var_1C]

loc_505886:
mov     al, [edx]
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 2
jz      short loc_50589B
inc     edx
jmp     short loc_505886

loc_50589B:
mov     ch, [edx]
cmp     ch, 2Bh ; '+'
jz      short loc_5058A7
cmp     ch, 2Dh ; '-'
jnz     short loc_5058A8

loc_5058A7:
inc     edx

loc_5058A8:
test    esi, esi
jnz     short loc_5058D8
cmp     byte ptr [edx], 30h ; '0'
jnz     short loc_5058C5
mov     cl, [edx+1]
cmp     cl, 78h ; 'x'
jz      short loc_5058BE
cmp     cl, 58h ; 'X'
jnz     short loc_5058C5

loc_5058BE:
mov     esi, 10h
jmp     short loc_5058F8

loc_5058C5:
cmp     byte ptr [edx], 30h ; '0'
jnz     short loc_5058D1
mov     esi, 8
jmp     short loc_50590D

loc_5058D1:
mov     esi, 0Ah
jmp     short loc_50590D

loc_5058D8:
cmp     esi, 2
jl      short loc_5058E2
cmp     esi, 24h ; '$'
jle     short loc_5058F3

