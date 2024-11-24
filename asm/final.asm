;;; Start of other.asm ;;;
memcpy_         proc near               ; CODE XREF: sub_437FBF+33↑p

                push    ecx

                push    esi

                push    edi

                mov     ecx, ebx

                mov     esi, edx

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

                mov     eax, edi

                pop     edi

                pop     esi

                pop     ecx

                retn

memcpy_         endp

memset_         proc near               ; CODE XREF: sub_4D8930+30↑p

                push    ecx

                mov     ecx, ebx

                push    eax

                mov     dh, dl

                shl     edx, 8

                mov     dl, dh

                shl     edx, 8

                mov     dl, dh

                call    __STOSB

                pop     eax

                pop     ecx

                retn

memset_         endp

calloc_         proc near               ; CODE XREF: sub_4FFEC6+34↑p

                push    ebx

                imul    eax, edx

                mov     ebx, eax

                call    _nmalloc_

                test    eax, eax

                jz      short loc_502534

                xor     edx, edx

                call    memset_

loc_502534:                             ; CODE XREF: calloc_+D↑j

                pop     ebx

                retn

calloc_         endp

_nfree_         proc near               ; CODE XREF: sub_42BEB2:loc_42C0AC↑p

                push    ebx

                push    ecx

                push    edx

                push    esi

                mov     esi, eax

                test    eax, eax

                jz      loc_4F87A1

                call    ds:off_551FE0

                mov     ecx, ds:dword_887898

                test    ecx, ecx

                jz      short loc_4F8700

                cmp     ecx, esi

                ja      short loc_4F86D0

                mov     eax, [ecx]

                add     eax, ecx

                cmp     eax, esi

                ja      loc_4F875B

loc_4F86D0:                             ; CODE XREF: _nfree_+20↑j

                mov     eax, ecx

                mov     ecx, [ecx+4]

                test    ecx, ecx

                jz      short loc_4F86E9

                cmp     ecx, esi

                ja      short loc_4F86E9

                mov     edx, [ecx]

                add     edx, ecx

                cmp     edx, esi

                ja      loc_4F875B

loc_4F86E9:                             ; CODE XREF: _nfree_+35↑j

                mov     ecx, [eax+8]

                test    ecx, ecx

                jz      short loc_4F8700

                cmp     ecx, esi

                ja      short loc_4F8700

                mov     eax, [ecx]

                add     eax, ecx

                cmp     eax, esi

                ja      loc_4F875B

loc_4F8700:                             ; CODE XREF: _nfree_+1C↑j

                mov     ecx, ds:dword_551C88

                test    ecx, ecx

                jz      short loc_4F873E

                cmp     ecx, esi

                ja      short loc_4F8716

                mov     eax, [ecx]

                add     eax, ecx

                cmp     eax, esi

                ja      short loc_4F875B

loc_4F8716:                             ; CODE XREF: _nfree_+6A↑j

                mov     eax, ecx

                mov     ecx, [ecx+4]

                test    ecx, ecx

                jz      short loc_4F872B

                cmp     ecx, esi

                ja      short loc_4F872B

                mov     edx, [ecx]

                add     edx, ecx

                cmp     edx, esi

                ja      short loc_4F875B

loc_4F872B:                             ; CODE XREF: _nfree_+7B↑j

                mov     ecx, [eax+8]

                test    ecx, ecx

                jz      short loc_4F873E

                cmp     ecx, esi

                ja      short loc_4F873E

                mov     eax, [ecx]

                add     eax, ecx

                cmp     eax, esi

                ja      short loc_4F875B

loc_4F873E:                             ; CODE XREF: _nfree_+66↑j

                mov     ecx, ds:dword_551C84

                jmp     short loc_4F8755

loc_4F8746:                             ; CODE XREF: _nfree_+B5↓j

                cmp     ecx, esi

                ja      short loc_4F8752

                mov     eax, [ecx]

                add     eax, ecx

                cmp     eax, esi

                ja      short loc_4F875B

loc_4F8752:                             ; CODE XREF: _nfree_+A6↑j

                mov     ecx, [ecx+8]

loc_4F8755:                             ; CODE XREF: _nfree_+A2↑j

                test    ecx, ecx

                jnz     short loc_4F8746

                jmp     short loc_4F879B

loc_4F875B:                             ; CODE XREF: _nfree_+28↑j

                mov     eax, offset dword_551C84

                mov     edx, ds

                and     edx, 0FFFFh

                mov     ebx, ecx

                mov     eax, esi

                call    __MemFree

                mov     edx, ds:dword_551C88

                mov     ds:dword_887898, ecx

                cmp     ecx, edx

                jnb     short loc_4F8793

                mov     ebx, ds:dword_551C8C

                mov     eax, [ecx+14h]

                cmp     eax, ebx

                jbe     short loc_4F8793

                mov     ds:dword_551C8C, eax

loc_4F8793:                             ; CODE XREF: _nfree_+DD↑j

                xor     ah, ah

                mov     ds:byte_897BC0, ah

loc_4F879B:                             ; CODE XREF: _nfree_+B7↑j

                call    ds:off_551FE8

loc_4F87A1:                             ; CODE XREF: _nfree_+8↑j

                pop     esi

                pop     edx

                pop     ecx

                pop     ebx

                retn

_nfree_         endp

  proc near               ; CODE XREF: memset_+10↑p

                or      ecx, ecx

                jz      short locret_4FFC20

                cmp     [eax], dl

loc_4FFBF6:                             ; CODE XREF: __STOSB+11↓j

                test    al, 3

                jz      short loc_4FFC03

                mov     [eax], dl

                inc     eax

                ror     edx, 8

                dec     ecx

                jnz     short loc_4FFBF6

loc_4FFC03:                             ; CODE XREF: __STOSB+8↑j

                push    ecx

                shr     ecx, 2

                call    __STOSD

                pop     ecx

                and     ecx, 3

                jz      short locret_4FFC20

                mov     [eax], dl

                dec     ecx

                jz      short locret_4FFC20

                mov     [eax+1], dh

                dec     ecx

                jz      short locret_4FFC20

                mov     [eax+2], dl

locret_4FFC20:                          ; CODE XREF: __STOSB+2↑j

                retn

__STOSB         endp

_nmalloc_       proc near               ; CODE XREF: sub_42BEB2+50↑p

var_28          = byte ptr -28h

                push    ebx

                push    ecx

                push    edx

                push    esi

                push    edi

                push    es

                push    fs

                push    gs

                push    ebp

                sub     esp, 4

                mov     edi, eax

                test    eax, eax

                jz      short loc_4F0B2A

                cmp     eax, 0FFFFFFD4h

                jbe     short loc_4F0B31

loc_4F0B2A:                             ; CODE XREF: _nmalloc_+12↑j

                xor     eax, eax

                jmp     loc_4F0BEF

loc_4F0B31:                             ; CODE XREF: _nmalloc_+17↑j

                lea     ebp, [eax+0Bh]

                and     ebp, 0FFFFFFF8h

                cmp     ebp, 10h

                jnb     short loc_4F0B41

                mov     ebp, 10h

loc_4F0B41:                             ; CODE XREF: _nmalloc_+29↑j

                call    ds:off_551FE0

                xor     ah, ah

                xor     edx, edx

                mov     [esp+28h+var_28], ah

loc_4F0B4E:                             ; CODE XREF: _nmalloc_+C0↓j

                cmp     ebp, ds:dword_551C8C

                jbe     short loc_4F0B62

                mov     ecx, ds:dword_551C88

                test    ecx, ecx

                jnz     short loc_4F0B70

                jmp     short loc_4F0B64

loc_4F0B62:                             ; CODE XREF: _nmalloc_+43↑j

                xor     ecx, ecx

loc_4F0B64:                             ; CODE XREF: _nmalloc_+4F↑j

                mov     ds:dword_551C8C, ecx

                mov     ecx, ds:dword_551C84

loc_4F0B70:                             ; CODE XREF: _nmalloc_+4D↑j

                test    ecx, ecx

                jz      short loc_4F0BB0

                mov     esi, [ecx+14h]

                mov     ds:dword_551C88, ecx

                cmp     esi, edi

                jb      short loc_4F0B9D

                mov     eax, offset dword_551C84

                mov     edx, ds

                and     edx, 0FFFFh

                mov     ebx, ecx

                mov     eax, edi

                call    __MemAllocator

                mov     edx, eax

                test    eax, eax

                jnz     short loc_4F0BDF

loc_4F0B9D:                             ; CODE XREF: _nmalloc_+6E↑j

                cmp     esi, ds:dword_551C8C

                jbe     short loc_4F0BAB

                mov     ds:dword_551C8C, esi

loc_4F0BAB:                             ; CODE XREF: _nmalloc_+92↑j

                mov     ecx, [ecx+8]

                jmp     short loc_4F0B70

loc_4F0BB0:                             ; CODE XREF: _nmalloc_+61↑j

                cmp     [esp+28h+var_28], 0

                jnz     short loc_4F0BC1

                mov     eax, edi

                call    __ExpandDGROUP_

                test    eax, eax

                jnz     short loc_4F0BD6

loc_4F0BC1:                             ; CODE XREF: _nmalloc_+A3↑j

                mov     eax, edi

                call    sub_4FB641

                test    eax, eax

                jz      short loc_4F0BDF

                xor     cl, cl

                mov     [esp+28h+var_28], cl

                jmp     loc_4F0B4E

loc_4F0BD6:                             ; CODE XREF: _nmalloc_+AE↑j

                mov     [esp+28h+var_28], 1

                jmp     loc_4F0B4E

loc_4F0BDF:                             ; CODE XREF: _nmalloc_+8A↑j

                xor     ch, ch

                mov     ds:byte_897BC0, ch

                call    ds:off_551FE8

                mov     eax, edx

loc_4F0BEF:                             ; CODE XREF: _nmalloc_+1B↑j

                add     esp, 4

                pop     ebp

                pop     gs

                pop     fs

                pop     es

                pop     edi

                pop     esi

                pop     edx

                pop     ecx

                pop     ebx

                retn

_nmalloc_       endp
loc_4F0BEF:                             ; CODE XREF: _nmalloc_+1B↑j
add     esp, 4
pop     ebp
pop     gs
pop     fs
pop     es
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
_nmalloc_       endp
loc_4F0B31:                             ; CODE XREF: _nmalloc_+17↑j
lea     ebp, [eax+0Bh]
and     ebp, 0FFFFFFF8h
cmp     ebp, 10h
jnb     short loc_4F0B41
mov     ebp, 10h
loc_4F0BC1:                             ; CODE XREF: _nmalloc_+A3↑j
mov     eax, edi
call    sub_4FB641
test    eax, eax
jz      short loc_4F0BDF
xor     cl, cl
mov     [esp+28h+var_28], cl
jmp     loc_4F0B4E
loc_4F0B4E:                             ; CODE XREF: _nmalloc_+C0↓j
cmp     ebp, ds:dword_551C8C
jbe     short loc_4F0B62
mov     ecx, ds:dword_551C88
test    ecx, ecx
jnz     short loc_4F0B70
jmp     short loc_4F0B64
loc_4FFBF6:                             ; CODE XREF: __STOSB+11↓j
test    al, 3
jz      short loc_4FFC03
mov     [eax], dl
inc     eax
ror     edx, 8
dec     ecx
jnz     short loc_4FFBF6
loc_4F0B62:                             ; CODE XREF: _nmalloc_+43↑j
xor     ecx, ecx
loc_4F0BAB:                             ; CODE XREF: _nmalloc_+92↑j
mov     ecx, [ecx+8]
jmp     short loc_4F0B70
loc_502534:                             ; CODE XREF: calloc_+D↑j
pop     ebx
retn
calloc_         endp
__exit_with_msg_ proc near              ; CODE XREF: __fatal_runtime_error_+15↓p
NumberOfBytesWritten= dword ptr -14h
push    ebx
push    ecx
push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     esi, edx
xor     ebx, ebx
jmp     short loc_502546
loc_4F8746:                             ; CODE XREF: _nfree_+B5↓j
cmp     ecx, esi
ja      short loc_4F8752
mov     eax, [ecx]
add     eax, ecx
cmp     eax, esi
ja      short loc_4F875B
loc_4F8752:                             ; CODE XREF: _nfree_+A6↑j
mov     ecx, [ecx+8]
loc_4F0B41:                             ; CODE XREF: _nmalloc_+29↑j
call    ds:off_551FE0
xor     ah, ah
xor     edx, edx
mov     [esp+28h+var_28], ah
loc_4F8716:                             ; CODE XREF: _nfree_+6A↑j
mov     eax, ecx
mov     ecx, [ecx+4]
test    ecx, ecx
jz      short loc_4F872B
cmp     ecx, esi
ja      short loc_4F872B
mov     edx, [ecx]
add     edx, ecx
cmp     edx, esi
ja      short loc_4F875B
loc_4F875B:                             ; CODE XREF: _nfree_+28↑j
mov     eax, offset dword_551C84
mov     edx, ds
and     edx, 0FFFFh
mov     ebx, ecx
mov     eax, esi
call    __MemFree
mov     edx, ds:dword_551C88
mov     ds:dword_887898, ecx
cmp     ecx, edx
jnb     short loc_4F8793
mov     ebx, ds:dword_551C8C
mov     eax, [ecx+14h]
cmp     eax, ebx
jbe     short loc_4F8793
mov     ds:dword_551C8C, eax
loc_4F8793:                             ; CODE XREF: _nfree_+DD↑j
xor     ah, ah
mov     ds:byte_897BC0, ah
loc_4F86E9:                             ; CODE XREF: _nfree_+35↑j
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4F8700
cmp     ecx, esi
ja      short loc_4F8700
mov     eax, [ecx]
add     eax, ecx
cmp     eax, esi
ja      loc_4F875B
loc_4F0B64:                             ; CODE XREF: _nmalloc_+4F↑j
mov     ds:dword_551C8C, ecx
mov     ecx, ds:dword_551C84
loc_4F86D0:                             ; CODE XREF: _nfree_+20↑j
mov     eax, ecx
mov     ecx, [ecx+4]
test    ecx, ecx
jz      short loc_4F86E9
cmp     ecx, esi
ja      short loc_4F86E9
mov     edx, [ecx]
add     edx, ecx
cmp     edx, esi
ja      loc_4F875B
loc_4F0BD6:                             ; CODE XREF: _nmalloc_+AE↑j
mov     [esp+28h+var_28], 1
jmp     loc_4F0B4E
loc_4F0B70:                             ; CODE XREF: _nmalloc_+4D↑j
test    ecx, ecx
jz      short loc_4F0BB0
mov     esi, [ecx+14h]
mov     ds:dword_551C88, ecx
cmp     esi, edi
jb      short loc_4F0B9D
mov     eax, offset dword_551C84
mov     edx, ds
and     edx, 0FFFFh
mov     ebx, ecx
mov     eax, edi
call    __MemAllocator
mov     edx, eax
test    eax, eax
jnz     short loc_4F0BDF
loc_4F0B2A:                             ; CODE XREF: _nmalloc_+12↑j
xor     eax, eax
jmp     loc_4F0BEF
loc_4F872B:                             ; CODE XREF: _nfree_+7B↑j
mov     ecx, [eax+8]
test    ecx, ecx
jz      short loc_4F873E
cmp     ecx, esi
ja      short loc_4F873E
mov     eax, [ecx]
add     eax, ecx
cmp     eax, esi
ja      short loc_4F875B
loc_4F0BB0:                             ; CODE XREF: _nmalloc_+61↑j
cmp     [esp+28h+var_28], 0
jnz     short loc_4F0BC1
mov     eax, edi
call    __ExpandDGROUP_
test    eax, eax
jnz     short loc_4F0BD6
loc_4F873E:                             ; CODE XREF: _nfree_+66↑j
mov     ecx, ds:dword_551C84
jmp     short loc_4F8755
loc_4F8755:                             ; CODE XREF: _nfree_+A2↑j
test    ecx, ecx
jnz     short loc_4F8746
jmp     short loc_4F879B
loc_4F0BDF:                             ; CODE XREF: _nmalloc_+8A↑j
xor     ch, ch
mov     ds:byte_897BC0, ch
call    ds:off_551FE8
mov     eax, edx
loc_4F8700:                             ; CODE XREF: _nfree_+1C↑j
mov     ecx, ds:dword_551C88
test    ecx, ecx
jz      short loc_4F873E
cmp     ecx, esi
ja      short loc_4F8716
mov     eax, [ecx]
add     eax, ecx
cmp     eax, esi
ja      short loc_4F875B
loc_4F879B:                             ; CODE XREF: _nfree_+B7↑j
call    ds:off_551FE8
loc_4F0B9D:                             ; CODE XREF: _nmalloc_+6E↑j
cmp     esi, ds:dword_551C8C
jbe     short loc_4F0BAB
mov     ds:dword_551C8C, esi
loc_4FFC03:                             ; CODE XREF: __STOSB+8↑j
push    ecx
shr     ecx, 2
call    __STOSD
pop     ecx
and     ecx, 3
jz      short locret_4FFC20
mov     [eax], dl
dec     ecx
jz      short locret_4FFC20
mov     [eax+1], dh
dec     ecx
jz      short locret_4FFC20
mov     [eax+2], dl
locret_4FFC20:                          ; CODE XREF: __STOSB+2↑j
retn
__STOSB         endp
sub_4FB641      proc near               ; CODE XREF: _nmalloc_+B2↑p
xor     eax, eax
retn
sub_4FB641      endp
loc_4F87A1:                             ; CODE XREF: _nfree_+8↑j
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
_nfree_         endp
sub_4F87A6      proc near               ; CODE XREF: sub_4364F0+F2↑p
push    ecx
mov     ecx, [eax]
mov     [edx], ecx
mov     [eax], edx
pop     ecx
retn
sub_4F87A6      endp
sub_4F87AF      proc near               ; CODE XREF: sub_43530E+551↑p
push    ecx
mov     ecx, [eax]
mov     [ebx], ecx
test    byte ptr [edx], 1
jz      short loc_4F87BC
or      dl, 1
loc_4F87BC:                             ; CODE XREF: sub_4F87AF+8↑j
mov     [eax], edx
pop     ecx
retn
sub_4F87AF      endp
sub_4F87C0      proc near
mov     byte ptr [eax+7], 64h ; 'd'
retn
sub_4F87C0      endp
sub_4F87C5      proc near               ; CODE XREF: sub_43E511+12↑p
mov     byte ptr [eax+7], 60h ; '`'
retn
sub_4F87C5      endp
sub_4F87CA      proc near               ; CODE XREF: sub_4A0EF8+252↑p
mov     byte ptr [eax+7], 6Ch ; 'l'
retn
sub_4F87CA      endp
sub_4F87CF      proc near               ; CODE XREF: sub_43765F+17↑p
mov     byte ptr [eax+7], 28h ; '('
mov     dword ptr [eax+18h], 3C23D70Ah
loc_502546:                             ; CODE XREF: __exit_with_msg_+D↑j
mov     edx, eax
mov     cl, [edx]
inc     eax
test    cl, cl
jnz     short loc_502545
push    0               ; lpOverlapped
lea     eax, [esp+18h+NumberOfBytesWritten]
push    eax             ; lpNumberOfBytesWritten
push    ebx             ; nNumberOfBytesToWrite
mov     eax, ds:dword_5580E4
push    edi             ; lpBuffer
mov     edx, [eax+8]
push    edx             ; hFile
call    cs:__imp_WriteFile
mov     eax, esi
jmp     loc_4FAC25
__exit_with_msg_ endp
__fatal_runtime_error_ proc near        ; CODE XREF: sub_4FFEC6+49↑p
push    ebx
push    ecx
mov     ebx, eax
mov     ecx, edx
mov     edx, ds
call    __EnterWVIDEO_
test    eax, eax
jnz     short loc_502589
mov     edx, ecx
mov     eax, ebx
call    __exit_with_msg_
loc_502545:                             ; CODE XREF: __exit_with_msg_+17↓j
inc     ebx
loc_502589:                             ; CODE XREF: __fatal_runtime_error_+F↑j
pop     ecx
pop     ebx
retn
__fatal_runtime_error_ endp
__GetThreadData_ proc near              ; CODE XREF: sub_50005C+21↑p
push    ebx
push    ecx
push    edx
xor     eax, eax
call    sub_50012F
xor     ebx, ebx
test    eax, eax
jz      short loc_5025AC
mov     edx, ds:dwTlsIndex
push    edx             ; dwTlsIndex
call    cs:__imp_TlsGetValue
mov     ebx, eax
loc_4FAC25:                             ; CODE XREF: sub_50235C+20↓j
mov     ebx, eax
cmp     ds:dword_897BB8, 0
jz      short loc_4FAC48
cmp     ds:dword_55200C, 0
jz      short loc_4FAC5F
mov     edx, 0FFh
xor     eax, eax
call    ds:dword_55200C
jmp     short loc_4FAC5F
sub_50012F      proc near               ; CODE XREF: __GetThreadData_+5↓p
push    ebx
push    ecx
push    edx
cmp     ds:dwTlsIndex, 0FFFFFFFFh
jnz     short loc_500141
loc_50013B:                             ; CODE XREF: sub_50012F+35↓j
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
loc_500141:                             ; CODE XREF: sub_50012F+A↑j
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
loc_500166:                             ; CODE XREF: sub_50012F+2C↑j
push    ebx             ; lpTlsValue
mov     ebx, ds:dwTlsIndex
push    ebx             ; dwTlsIndex
call    cs:__imp_TlsSetValue
mov     eax, 1
loc_50017A:                             ; CODE XREF: sub_50012F+1B↑j
pop     edx
pop     ecx
pop     ebx
retn
sub_50012F      endp
loc_4FAC5F:                             ; CODE XREF: sub_50235C-7725↑j
push    ebx             ; uExitCode
call    cs:__imp_ExitProcess
loc_4FAC48:                             ; CODE XREF: sub_50235C-772E↑j
call    sub_500955
mov     edx, 0Fh
xor     eax, eax
call    __FiniRtns
call    ds:off_552000
loc_5025AC:                             ; CODE XREF: __GetThreadData_+E↑j
test    ebx, ebx
jnz     short loc_5025BF
mov     edx, 1
mov     eax, offset aThreadHasNoThr ; "Thread has no thread-specific data\r\n"
call    __fatal_runtime_error_
loc_5025BF:                             ; CODE XREF: __GetThreadData_+22↑j
mov     eax, ebx
pop     edx
pop     ecx
pop     ebx
retn
__GetThreadData_ endp
__ReallocThreadData_ proc near          ; CODE XREF: sub_50005C+2E↑p
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
call    ds:off_551FF0
call    cs:__imp_GetCurrentThreadId
mov     ebx, ds:dword_89844C
mov     ebp, eax
jmp     short loc_5025E9
loc_500141:                             ; CODE XREF: sub_50012F+A↑j
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
sub_500955      proc near               ; CODE XREF: sub_50235C:loc_4FAC48↑p
push    edx
call    ds:off_551FC4
mov     eax, [eax+54h]
test    eax, eax
jz      short loc_50096A
mov     eax, [eax]
xor     edx, edx
mov     fs:[edx], eax
loc_50096A:                             ; CODE XREF: sub_500955+C↑j
call    ds:off_551FC4
mov     dword ptr [eax+54h], 0
pop     edx
retn
sub_500955      endp
loc_500166:                             ; CODE XREF: sub_50012F+2C↑j
push    ebx             ; lpTlsValue
mov     ebx, ds:dwTlsIndex
push    ebx             ; dwTlsIndex
call    cs:__imp_TlsSetValue
mov     eax, 1
loc_50017A:                             ; CODE XREF: sub_50012F+1B↑j
pop     edx
pop     ecx
pop     ebx
retn
sub_50012F      endp
sub_50017E      proc near               ; CODE XREF: sub_5001D3+5↓p
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
sub_5000A0      proc near               ; CODE XREF: sub_4FA9A8+15↑p
push    ebx
push    edx
mov     edx, eax
test    eax, eax
jnz     short loc_5000CE
mov     eax, 1
mov     edx, ds:dword_5581A8
call    calloc_
mov     edx, eax
test    eax, eax
jz      short loc_5000CE
mov     ebx, ds:dword_5581A8
mov     byte ptr [eax+52h], 1
mov     [eax+0F0h], ebx
loc_5000CE:                             ; CODE XREF: sub_5000A0+6↑j
mov     eax, edx
call    __InitThreadData_
mov     eax, edx
pop     edx
pop     ebx
retn
sub_5000A0      endp
loc_50013B:                             ; CODE XREF: sub_50012F+35↓j
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
loc_5025E9:                             ; CODE XREF: __ReallocThreadData_+1B↑j
test    ebx, ebx
jnz     short loc_5025E2
loc_5001CD:                             ; CODE XREF: sub_50017E+10↑j
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_50017E      endp
sub_5001D3      proc near               ; DATA XREF: sub_500201+B7↓o
mov     eax, 1
call    sub_50017E
loc_5000CE:                             ; CODE XREF: sub_5000A0+6↑j
mov     eax, edx
call    __InitThreadData_
mov     eax, edx
pop     edx
pop     ebx
retn
sub_5000A0      endp
sub_5000DA      proc near               ; CODE XREF: sub_505744+15↓p
push    ecx
push    edx
call    cs:__imp_TlsAlloc
mov     dx, ds:word_557C51
mov     ds:dwTlsIndex, eax
cmp     dx, 8000h
jb      short loc_50011D
cmp     ds:byte_557C4F, 4
jnb     short loc_50011D
loc_50096A:                             ; CODE XREF: sub_500955+C↑j
call    ds:off_551FC4
mov     dword ptr [eax+54h], 0
pop     edx
retn
sub_500955      endp
callit_         proc near               ; CODE XREF: __InitRtns+3C↓p
push    es
cmp     dword ptr [eax], 0
jz      short loc_500983
push    ds
pop     es
assume es:AUTO
call    dword ptr [eax]
sub_50017E      proc near               ; CODE XREF: sub_5001D3+5↓p
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
loc_5001CD:                             ; CODE XREF: sub_50017E+10↑j
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_50017E      endp
loc_500983:                             ; CODE XREF: callit_+4↑j
pop     es
assume es:nothing
retn
callit_         endp
__InitRtns      proc near               ; CODE XREF: sub_4FABD3+38↑p
push    ebx
push    ecx
push    edx
push    esi
push    es
mov     esi, offset unk_55859C
mov     dh, al
loc_5025E2:                             ; CODE XREF: __ReallocThreadData_+26↓j
cmp     ebp, [ebx+4]
jz      short loc_5025ED
mov     ebx, [ebx]
loc_50011D:                             ; CODE XREF: sub_5000DA+1A↑j
cmp     ds:dwTlsIndex, 0FFFFFFFFh
setnz   al
and     eax, 0FFh
pop     edx
pop     ecx
retn
sub_5000DA      endp
sub_50012F      proc near               ; CODE XREF: __GetThreadData_+5↓p
push    ebx
push    ecx
push    edx
cmp     ds:dwTlsIndex, 0FFFFFFFFh
jnz     short loc_500141
loc_5025ED:                             ; CODE XREF: __ReallocThreadData_+20↑j
cmp     dword ptr [ebx+0Ch], 0
jz      short loc_502618
mov     edx, ds:dword_5581A8
mov     eax, [ebx+8]
call    _nrealloc_
mov     ebp, eax
test    eax, eax
jnz     short loc_502665
mov     edx, 1
mov     eax, offset aUnableToResize ; "Unable to resize thread-specific data\r"...
call    __fatal_runtime_error_
jmp     short loc_502665
;;; End of other.asm ;;;

;;; Start of sub_4F0927.asm ;;;
sub_4F0927      proc near               ; CODE XREF: WinMain(x,x,x,x)+3B↑p
var_60          = byte ptr -60h
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
loc_4F0944:                             ; CODE XREF: sub_4F0927+3B↓j
inc     ebx
cmp     ebx, 0Ah
jge     short loc_4F09A5
loc_4F094A:                             ; CODE XREF: sub_4F0927+1B↑j
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
loc_4F0993:                             ; CODE XREF: sub_4F0927+17↑j
call    fclose_
xor     ah, ah
mov     ds:RootPathName, ah
loc_4F09A0:                             ; CODE XREF: sub_4F0927+6A↑j
mov     edi, 1
loc_4F09A5:                             ; CODE XREF: sub_4F0927+21↑j
mov     eax, edi
add     esp, 50h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0927      endp
sub_4F93C1      proc near               ; CODE XREF: sub_4A650B+11↑p
push    ebx
xor     ebx, ebx
call    sub_4F937D
pop     ebx
retn
sub_4F93C1      endp
loc_4F094A:                             ; CODE XREF: sub_4F0927+1B↑j
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
loc_4F09A5:                             ; CODE XREF: sub_4F0927+21↑j
mov     eax, edi
add     esp, 50h
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F0927      endp
sub_4F09AF      proc near               ; CODE XREF: sub_4F9933+3B↓p
mov     eax, offset RootPathName
retn
sub_4F09AF      endp
sub_4F09B5      proc near               ; CODE XREF: sub_42BEB2+19↑p
var_58          = byte ptr -58h
push    ecx
push    esi
sub     esp, 50h
mov     esi, eax
xor     ecx, ecx
loc_4F09A0:                             ; CODE XREF: sub_4F0927+6A↑j
mov     edi, 1
loc_4F0944:                             ; CODE XREF: sub_4F0927+3B↓j
inc     ebx
cmp     ebx, 0Ah
jge     short loc_4F09A5
loc_4F0993:                             ; CODE XREF: sub_4F0927+17↑j
call    fclose_
xor     ah, ah
mov     ds:RootPathName, ah
sub_4F937D      proc near               ; CODE XREF: sub_4F93C1+3↓p
var_10          = dword ptr -10h
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
loc_4F93B8:                             ; CODE XREF: sub_4F937D+26↑j
mov     eax, edx
loc_4F93BA:                             ; CODE XREF: sub_4F937D+19↑j
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_4F937D      endp
loc_4F93BA:                             ; CODE XREF: sub_4F937D+19↑j
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_4F937D      endp
sub_4F93C1      proc near               ; CODE XREF: sub_4A650B+11↑p
push    ebx
xor     ebx, ebx
call    sub_4F937D
pop     ebx
retn
sub_4F93C1      endp
sub_4F93CB      proc near               ; CODE XREF: sub_4F9445+38↓p
push    ebx
push    ecx
push    edx             ; Value
mov     ebx, eax
call    ds:off_551FD8
mov     eax, ds:dword_897BC4
loc_4F93B8:                             ; CODE XREF: sub_4F937D+26↑j
mov     eax, edx
sub_4F9297      proc near               ; CODE XREF: sub_4F937D+34↓p
arg_0           = dword ptr  4
arg_4           = dword ptr  8
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
loc_4F92C5:                             ; CODE XREF: sub_4F9297+27↑j
test    bl, 40h
jz      short loc_4F92CF
or      ah, 2
jmp     short loc_4F92D2
loc_4F92CF:                             ; CODE XREF: sub_4F9297+31↑j
or      ah, 1
loc_4F92D2:                             ; CODE XREF: sub_4F9297+36↑j
push    0
mov     edi, [esp+10h+arg_0]
push    edi
jmp     short loc_4F930B
loc_4F92DB:                             ; CODE XREF: sub_4F9297+20↑j
test    bl, 1
setnz   al
and     eax, 0FFh
add     eax, 21h ; '!'
test    bl, 80h
jz      short loc_4F92F2
or      al, 10h
jmp     short loc_4F92F4
loc_4F92F2:                             ; CODE XREF: sub_4F9297+55↑j
or      al, 40h
loc_4F92F4:                             ; CODE XREF: sub_4F9297+59↑j
test    bl, 40h
jz      short loc_4F92FE
or      ah, 2
jmp     short loc_4F9301
loc_4F92FE:                             ; CODE XREF: sub_4F9297+60↑j
or      ah, 1
loc_4F9301:                             ; CODE XREF: sub_4F9297+65↑j
push    180h
mov     ebp, [esp+10h+arg_0]
push    ebp
loc_4F930B:                             ; CODE XREF: sub_4F9297+42↑j
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
loc_4F9329:                             ; CODE XREF: sub_4F9297+85↑j
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
loc_4F936E:                             ; CODE XREF: sub_4F9297+C7↑j
mov     eax, ecx
call    __chktty_
mov     eax, ecx
loc_4F9377:                             ; CODE XREF: sub_4F9297+90↑j
pop     ebp
pop     edi
pop     esi
retn    8
sub_4F9297      endp
sub_4F917C      proc near               ; CODE XREF: sub_4F937D+10↓p
Value           = dword ptr -18h
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
loc_4F91A4:                             ; CODE XREF: sub_4F917C+22↑j
mov     [edx], ebp
loc_4F91A6:                             ; CODE XREF: sub_4F917C+1A↑j
mov     al, [ebx]
cmp     al, 72h ; 'r'
jb      short loc_4F91B4
jbe     short loc_4F91BA
cmp     al, 77h ; 'w'
jz      short loc_4F91C0
jmp     short loc_4F91CC
loc_4F91B4:                             ; CODE XREF: sub_4F917C+2E↑j
cmp     al, 61h ; 'a'
jz      short loc_4F91C6
jmp     short loc_4F91CC
loc_4F91BA:                             ; CODE XREF: sub_4F917C+30↑j
or      byte ptr [esp+18h+Value], 1
jmp     short loc_4F91DD
loc_4F91C0:                             ; CODE XREF: sub_4F917C+34↑j
or      byte ptr [esp+18h+Value], 2
jmp     short loc_4F91DD
loc_4F91C6:                             ; CODE XREF: sub_4F917C+3A↑j
or      byte ptr [esp+18h+Value], 82h
jmp     short loc_4F91DD
loc_4F91CC:                             ; CODE XREF: sub_4F917C+36↑j
mov     eax, 9
call    __set_errno_
xor     ecx, ecx
jmp     loc_4F928C
loc_4F91DD:                             ; CODE XREF: sub_4F917C+42↑j
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
loc_4F920A:                             ; CODE XREF: sub_4F917C+76↑j
cmp     al, 2Bh ; '+'
jb      short loc_4F91DD
jbe     short loc_4F9216
cmp     al, 62h ; 'b'
jz      short loc_4F9239
jmp     short loc_4F91DD
loc_4F9216:                             ; CODE XREF: sub_4F917C+92↑j
test    ebp, ebp
jz      short loc_4F921E
loc_4F921A:                             ; CODE XREF: sub_4F917C+B4↓j
xor     ecx, ecx
jmp     short loc_4F91DD
loc_4F921E:                             ; CODE XREF: sub_4F917C+9C↑j
mov     ah, byte ptr [esp+18h+Value]
or      ah, 3
mov     ebp, 1
mov     byte ptr [esp+18h+Value], ah
jmp     short loc_4F91DD
loc_4F922E:                             ; CODE XREF: sub_4F917C+8A↑j
test    esi, esi
jnz     short loc_4F921A
mov     esi, 1
jmp     short loc_4F91DD
loc_4F9239:                             ; CODE XREF: sub_4F917C+96↑j
test    esi, esi
jnz     short loc_4F921A
mov     al, byte ptr [esp+18h+Value]
or      al, 40h
mov     esi, 1
mov     byte ptr [esp+18h+Value], al
jmp     short loc_4F91DD
loc_4F924C:                             ; CODE XREF: sub_4F917C+78↑j
test    edi, edi
jnz     short loc_4F921A
mov     ah, [edx]
or      ah, 1
mov     edi, 1
mov     [edx], ah
jmp     loc_4F91DD
loc_4F9261:                             ; CODE XREF: sub_4F917C+82↑j
test    edi, edi
jnz     short loc_4F921A
mov     al, [edx]
and     al, 0FEh
mov     edi, 1
mov     [edx], al
jmp     loc_4F91DD
loc_4F9275:                             ; CODE XREF: sub_4F917C+66↑j
test    esi, esi
jnz     short loc_4F9289
cmp     ds:dword_557E75, 200h
jnz     short loc_4F9289
or      byte ptr [esp+18h+Value], 40h
loc_4F9289:                             ; CODE XREF: sub_4F917C+FB↑j
mov     ecx, [esp+18h+Value]
loc_4F928C:                             ; CODE XREF: sub_4F917C+5C↑j
mov     eax, ecx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F917C      endp
loc_4F921A:                             ; CODE XREF: sub_4F917C+B4↓j
xor     ecx, ecx
jmp     short loc_4F91DD
loc_4F92DB:                             ; CODE XREF: sub_4F9297+20↑j
test    bl, 1
setnz   al
and     eax, 0FFh
add     eax, 21h ; '!'
test    bl, 80h
jz      short loc_4F92F2
or      al, 10h
jmp     short loc_4F92F4
loc_4F9239:                             ; CODE XREF: sub_4F917C+96↑j
test    esi, esi
jnz     short loc_4F921A
mov     al, byte ptr [esp+18h+Value]
or      al, 40h
mov     esi, 1
mov     byte ptr [esp+18h+Value], al
jmp     short loc_4F91DD
loc_4F91DD:                             ; CODE XREF: sub_4F917C+42↑j
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
loc_4F91B4:                             ; CODE XREF: sub_4F917C+2E↑j
cmp     al, 61h ; 'a'
jz      short loc_4F91C6
jmp     short loc_4F91CC
loc_4F9216:                             ; CODE XREF: sub_4F917C+92↑j
test    ebp, ebp
jz      short loc_4F921E
loc_4F930B:                             ; CODE XREF: sub_4F9297+42↑j
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
loc_4F91CC:                             ; CODE XREF: sub_4F917C+36↑j
mov     eax, 9
call    __set_errno_
xor     ecx, ecx
jmp     loc_4F928C
loc_4F92F2:                             ; CODE XREF: sub_4F9297+55↑j
or      al, 40h
loc_4F92F4:                             ; CODE XREF: sub_4F9297+59↑j
test    bl, 40h
jz      short loc_4F92FE
or      ah, 2
jmp     short loc_4F9301
loc_4F92FE:                             ; CODE XREF: sub_4F9297+60↑j
or      ah, 1
loc_4F9275:                             ; CODE XREF: sub_4F917C+66↑j
test    esi, esi
jnz     short loc_4F9289
cmp     ds:dword_557E75, 200h
jnz     short loc_4F9289
or      byte ptr [esp+18h+Value], 40h
loc_4F91A4:                             ; CODE XREF: sub_4F917C+22↑j
mov     [edx], ebp
loc_4F9377:                             ; CODE XREF: sub_4F9297+90↑j
pop     ebp
pop     edi
pop     esi
retn    8
sub_4F9297      endp
sub_4F937D      proc near               ; CODE XREF: sub_4F93C1+3↓p
var_10          = dword ptr -10h
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
loc_4F91C6:                             ; CODE XREF: sub_4F917C+3A↑j
or      byte ptr [esp+18h+Value], 82h
jmp     short loc_4F91DD
loc_4F922E:                             ; CODE XREF: sub_4F917C+8A↑j
test    esi, esi
jnz     short loc_4F921A
mov     esi, 1
jmp     short loc_4F91DD
loc_4F936E:                             ; CODE XREF: sub_4F9297+C7↑j
mov     eax, ecx
call    __chktty_
mov     eax, ecx
loc_4F9301:                             ; CODE XREF: sub_4F9297+65↑j
push    180h
mov     ebp, [esp+10h+arg_0]
push    ebp
loc_4F91C0:                             ; CODE XREF: sub_4F917C+34↑j
or      byte ptr [esp+18h+Value], 2
jmp     short loc_4F91DD
loc_4F91BA:                             ; CODE XREF: sub_4F917C+30↑j
or      byte ptr [esp+18h+Value], 1
jmp     short loc_4F91DD
sub_4FB1EB      proc near               ; CODE XREF: sub_4F0AE3+A↑p
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
loc_4FB21C:                             ; CODE XREF: sub_4FB1EB+89↓j
mov     eax, 9
call    __set_errno_
jmp     short loc_4FB256
loc_4FB228:                             ; CODE XREF: sub_4FB1EB+1C↑j
cmp     ebx, 1
jnz     short loc_4FB230
sub     esi, [ecx+4]
loc_4FB230:                             ; CODE XREF: sub_4FB1EB+40↑j
mov     eax, [ecx+8]
mov     eax, [eax+8]
mov     dword ptr [ecx+4], 0
mov     [ecx], eax
loc_4FB23F:                             ; CODE XREF: sub_4FB1EB+27↑j
and     byte ptr [ecx+0Ch], 0EBh
mov     edx, esi
mov     eax, [ecx+10h]
loc_4FB248:                             ; CODE XREF: sub_4FB1EB+FC↓j
call    lseek_
cmp     eax, 0FFFFFFFFh
jnz     loc_4FB2EC
loc_4FB256:                             ; CODE XREF: sub_4FB1EB+2B↑j
mov     eax, [ecx+10h]
call    ds:off_551FCC
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
retn
loc_4FB268:                             ; CODE XREF: sub_4FB1EB+16↑j
cmp     ebx, 1
jb      short loc_4FB276
jbe     short loc_4FB27C
cmp     ebx, 2
jz      short loc_4FB2CB
jmp     short loc_4FB21C
loc_4FB276:                             ; CODE XREF: sub_4FB1EB+80↑j
test    ebx, ebx
jz      short loc_4FB2A6
jmp     short loc_4FB21C
loc_4FB27C:                             ; CODE XREF: sub_4FB1EB+82↑j
mov     edx, ecx
mov     eax, esi
mov     edi, [ecx+4]
call    sub_4FB196
test    eax, eax
jz      short loc_4FB2EC
mov     edx, esi
mov     eax, [ecx+10h]
sub     edx, edi
loc_4FB293:                             ; CODE XREF: sub_4FB1EB+DE↓j
call    lseek_
cmp     eax, 0FFFFFFFFh
jz      short loc_4FB256
mov     eax, ecx
call    sub_4FB1D5
jmp     short loc_4FB2EC
loc_4FB2A6:                             ; CODE XREF: sub_4FB1EB+8D↑j
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
loc_4FB2CB:                             ; CODE XREF: sub_4FB1EB+87↑j
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
loc_4FB2EC:                             ; CODE XREF: sub_4FB1EB+65↑j
mov     eax, [ecx+10h]
call    ds:off_551FCC
xor     eax, eax
pop     edi
pop     esi
pop     ecx
retn
sub_4FB1EB      endp
loc_4F928C:                             ; CODE XREF: sub_4F917C+5C↑j
mov     eax, ecx
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4F917C      endp
sub_4F9297      proc near               ; CODE XREF: sub_4F937D+34↓p
arg_0           = dword ptr  4
arg_4           = dword ptr  8
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
loc_4F92D2:                             ; CODE XREF: sub_4F9297+36↑j
push    0
mov     edi, [esp+10h+arg_0]
push    edi
jmp     short loc_4F930B
loc_4F91A6:                             ; CODE XREF: sub_4F917C+1A↑j
mov     al, [ebx]
cmp     al, 72h ; 'r'
jb      short loc_4F91B4
jbe     short loc_4F91BA
cmp     al, 77h ; 'w'
jz      short loc_4F91C0
jmp     short loc_4F91CC
loc_4F92CF:                             ; CODE XREF: sub_4F9297+31↑j
or      ah, 1
loc_4F920A:                             ; CODE XREF: sub_4F917C+76↑j
cmp     al, 2Bh ; '+'
jb      short loc_4F91DD
jbe     short loc_4F9216
cmp     al, 62h ; 'b'
jz      short loc_4F9239
jmp     short loc_4F91DD
loc_4F9329:                             ; CODE XREF: sub_4F9297+85↑j
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
loc_4F92C5:                             ; CODE XREF: sub_4F9297+27↑j
test    bl, 40h
jz      short loc_4F92CF
or      ah, 2
jmp     short loc_4F92D2
loc_4F921E:                             ; CODE XREF: sub_4F917C+9C↑j
mov     ah, byte ptr [esp+18h+Value]
or      ah, 3
mov     ebp, 1
mov     byte ptr [esp+18h+Value], ah
jmp     short loc_4F91DD
loc_4F9289:                             ; CODE XREF: sub_4F917C+FB↑j
mov     ecx, [esp+18h+Value]
sub_4FE251      proc near               ; CODE XREF: sub_4F9297+76↑p
var_10          = dword ptr -10h
arg_0           = dword ptr  4
arg_4           = dword ptr  8
arg_8           = dword ptr  0Ch
arg_C           = byte ptr  10h
push    ebx
push    ecx
push    edx
sub     esp, 4
lea     eax, [esp+10h+arg_C]
mov     ecx, esp
mov     ebx, [esp+10h+arg_8]
mov     edx, [esp+10h+arg_4]
mov     [esp+10h+var_10], eax
mov     eax, [esp+10h+arg_0]
call    sub_4FE278
add     esp, 4
pop     edx
pop     ecx
pop     ebx
retn
sub_4FE251      endp
loc_4FB268:                             ; CODE XREF: sub_4FB1EB+16↑j
cmp     ebx, 1
jb      short loc_4FB276
jbe     short loc_4FB27C
cmp     ebx, 2
jz      short loc_4FB2CB
jmp     short loc_4FB21C
loc_4FB293:                             ; CODE XREF: sub_4FB1EB+DE↓j
call    lseek_
cmp     eax, 0FFFFFFFFh
jz      short loc_4FB256
mov     eax, ecx
call    sub_4FB1D5
jmp     short loc_4FB2EC
loc_4FB2EC:                             ; CODE XREF: sub_4FB1EB+65↑j
mov     eax, [ecx+10h]
call    ds:off_551FCC
xor     eax, eax
pop     edi
pop     esi
pop     ecx
retn
sub_4FB1EB      endp
loc_4FB256:                             ; CODE XREF: sub_4FB1EB+2B↑j
mov     eax, [ecx+10h]
call    ds:off_551FCC
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
retn
loc_4FB228:                             ; CODE XREF: sub_4FB1EB+1C↑j
cmp     ebx, 1
jnz     short loc_4FB230
sub     esi, [ecx+4]
loc_4FB248:                             ; CODE XREF: sub_4FB1EB+FC↓j
call    lseek_
cmp     eax, 0FFFFFFFFh
jnz     loc_4FB2EC
loc_4FB27C:                             ; CODE XREF: sub_4FB1EB+82↑j
mov     edx, ecx
mov     eax, esi
mov     edi, [ecx+4]
call    sub_4FB196
test    eax, eax
jz      short loc_4FB2EC
mov     edx, esi
mov     eax, [ecx+10h]
sub     edx, edi
sub_4FB196      proc near               ; CODE XREF: sub_4FB1EB+98↓p
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
loc_4FB1CB:                             ; CODE XREF: sub_4FB196+7↑j
mov     eax, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FB196      endp
sub_4FE278      proc near               ; CODE XREF: sub_4FE251+1B↑p
SecurityAttributes= _SECURITY_ATTRIBUTES ptr -2Ch
dwShareMode     = dword ptr -20h
dwDesiredAccess = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = dword ptr -10h
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     edi, eax
mov     [esp+2Ch+var_10], edx
mov     [esp+2Ch+var_14], ebx
call    __NTAtMaxFiles_
test    eax, eax
jz      short loc_4FE2A5
mov     eax, 0Bh
loc_4FE296:                             ; CODE XREF: sub_4FE278+19F↓j
call    __set_errno_
mov     eax, 0FFFFFFFFh
jmp     loc_4FE47A
loc_4FE2A5:                             ; CODE XREF: sub_4FE278+17↑j
mov     esi, edx
lea     ebx, [esp+2Ch+var_18]
and     esi, 7
lea     edx, [esp+2Ch+dwDesiredAccess]
mov     eax, esi
call    sub_5010D9
mov     eax, [esp+2Ch+var_14]
lea     edx, [esp+2Ch+dwShareMode]
or      eax, esi
mov     ebx, 80h
call    sub_501105
xor     eax, eax
mov     edx, 0Ch
mov     [esp+2Ch+SecurityAttributes.lpSecurityDescriptor], eax
mov     ah, byte ptr [esp+2Ch+var_10]
mov     [esp+2Ch+SecurityAttributes.nLength], edx
test    ah, 80h
setz    al
and     eax, 0FFh
mov     edx, ds:dword_557E84
mov     [esp+2Ch+SecurityAttributes.bInheritHandle], eax
test    edx, edx
jz      short loc_4FE32D
mov     edx, offset unk_50AAA4
mov     eax, edi
call    stricmp_
test    eax, eax
jnz     short loc_4FE32D
call    __NTGetFakeHandle_
call    ds:off_551FD0
push    0FFFFFFFFh
push    eax
push    0
mov     edx, 2000h
mov     edi, eax
call    ds:dword_557E84
add     esp, 0Ch
jmp     loc_4FE42A
loc_4FE32D:                             ; CODE XREF: sub_4FE278+7E↑j
mov     dl, byte ptr [esp+2Ch+var_10]
test    dl, 20h
jz      short loc_4FE398
mov     ebp, [ecx]
add     ebp, 4
mov     [ecx], ebp
mov     eax, [ebp-4]
mov     [esp+2Ch+var_18], eax
mov     dword ptr [ecx], 0
mov     eax, ds:dword_558188
mov     edx, [esp+2Ch+var_18]
not     eax
and     edx, eax
mov     [esp+2Ch+var_18], edx
test    byte ptr [esp+2Ch+var_18+1], 1
jz      short loc_4FE36E
test    byte ptr [esp+2Ch+var_18], 80h
jnz     short loc_4FE36E
mov     ebx, 1
loc_4FE36E:                             ; CODE XREF: sub_4FE278+E8↑j
test    byte ptr [esp+2Ch+var_10+1], 4
jz      short loc_4FE37E
mov     ebp, 1
mov     eax, ebp
jmp     short loc_4FE3A2
loc_4FE37E:                             ; CODE XREF: sub_4FE278+FB↑j
test    byte ptr [esp+2Ch+var_10], 40h
jz      short loc_4FE391
mov     ebp, 2
loc_4FE38A:                             ; CODE XREF: sub_4FE278+123↓j
mov     eax, 5
jmp     short loc_4FE3A2
loc_4FE391:                             ; CODE XREF: sub_4FE278+10B↑j
mov     ebp, 4
jmp     short loc_4FE39D
loc_4FE398:                             ; CODE XREF: sub_4FE278+BC↑j
test    dl, 40h
jnz     short loc_4FE38A
loc_4FE39D:                             ; CODE XREF: sub_4FE278+11E↑j
mov     eax, 3
loc_4FE3A2:                             ; CODE XREF: sub_4FE278+104↑j
push    0               ; hTemplateFile
push    ebx             ; dwFlagsAndAttributes
push    eax             ; dwCreationDisposition
lea     eax, [esp+38h+SecurityAttributes]
push    eax             ; lpSecurityAttributes
mov     ecx, [esp+3Ch+dwShareMode]
push    ecx             ; dwShareMode
mov     eax, [esp+40h+dwDesiredAccess]
push    eax             ; dwDesiredAccess
push    edi             ; lpFileName
call    cs:__imp_CreateFileA
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FE3F4
test    byte ptr [esp+2Ch+var_10], 20h
jz      short loc_4FE3E5
push    0               ; hTemplateFile
push    ebx             ; dwFlagsAndAttributes
push    ebp             ; dwCreationDisposition
push    0               ; lpSecurityAttributes
mov     edx, [esp+3Ch+dwShareMode]
push    edx             ; dwShareMode
mov     ebx, [esp+40h+dwDesiredAccess]
push    ebx             ; dwDesiredAccess
push    edi             ; lpFileName
call    cs:__imp_CreateFileA
mov     ecx, eax
loc_4FE3E5:                             ; CODE XREF: sub_4FE278+151↑j
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4FE3F4
call    __set_errno_nt_
jmp     loc_4FE47A
loc_4FE3F4:                             ; CODE XREF: sub_4FE278+14A↑j
mov     eax, ecx
call    ds:off_551FD0
xor     edx, edx
mov     ebp, ds:dword_55811C
mov     edi, eax
cmp     eax, ebp
jb      short loc_4FE41C
push    ecx             ; hObject
call    cs:__imp_CloseHandle
mov     eax, 5
jmp     loc_4FE296
loc_4FE41C:                             ; CODE XREF: sub_4FE278+190↑j
call    isatty_
test    eax, eax
jz      short loc_4FE42A
mov     edx, 2000h
loc_4FE42A:                             ; CODE XREF: sub_4FE278+B0↑j
cmp     esi, 2
jnz     short loc_4FE434
or      dl, 3
jmp     short loc_4FE445
loc_4FE434:                             ; CODE XREF: sub_4FE278+1B5↑j
test    esi, esi
jnz     short loc_4FE43D
or      dl, 1
jmp     short loc_4FE445
loc_4FE43D:                             ; CODE XREF: sub_4FE278+1BE↑j
cmp     esi, 1
jnz     short loc_4FE445
or      dl, 2
loc_4FE445:                             ; CODE XREF: sub_4FE278+1BA↑j
test    byte ptr [esp+2Ch+var_10], 10h
jz      short loc_4FE44F
or      dl, 80h
loc_4FE44F:                             ; CODE XREF: sub_4FE278+1D2↑j
mov     eax, edx
mov     bh, byte ptr [esp+2Ch+var_10+1]
or      al, 40h
test    bh, 3
jz      short loc_4FE463
test    bh, 2
jz      short loc_4FE471
jmp     short loc_4FE46F
loc_4FE463:                             ; CODE XREF: sub_4FE278+1E2↑j
cmp     ds:dword_557E75, 200h
jnz     short loc_4FE471
loc_4FE46F:                             ; CODE XREF: sub_4FE278+1E9↑j
mov     edx, eax
loc_4FE471:                             ; CODE XREF: sub_4FE278+1E7↑j
mov     eax, edi
call    __SetIOMode_
mov     eax, edi
loc_4FE47A:                             ; CODE XREF: sub_4FE278+28↑j
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4FE278      endp
loc_4FB23F:                             ; CODE XREF: sub_4FB1EB+27↑j
and     byte ptr [ecx+0Ch], 0EBh
mov     edx, esi
mov     eax, [ecx+10h]
loc_4FB2CB:                             ; CODE XREF: sub_4FB1EB+87↑j
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
loc_4FB230:                             ; CODE XREF: sub_4FB1EB+40↑j
mov     eax, [ecx+8]
mov     eax, [eax+8]
mov     dword ptr [ecx+4], 0
mov     [ecx], eax
loc_4FB2A6:                             ; CODE XREF: sub_4FB1EB+8D↑j
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
sub_4FB1D5      proc near               ; CODE XREF: sub_4FB1EB+B4↓p
push    edx
and     byte ptr [eax+0Ch], 0EFh
mov     edx, [eax+8]
mov     edx, [edx+8]
mov     dword ptr [eax+4], 0
mov     [eax], edx
pop     edx
retn
sub_4FB1D5      endp
loc_4FB21C:                             ; CODE XREF: sub_4FB1EB+89↓j
mov     eax, 9
call    __set_errno_
jmp     short loc_4FB256
loc_4FB276:                             ; CODE XREF: sub_4FB1EB+80↑j
test    ebx, ebx
jz      short loc_4FB2A6
jmp     short loc_4FB21C
loc_4FB1CB:                             ; CODE XREF: sub_4FB196+7↑j
mov     eax, 1
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FB196      endp
sub_4FB1D5      proc near               ; CODE XREF: sub_4FB1EB+B4↓p
push    edx
and     byte ptr [eax+0Ch], 0EFh
mov     edx, [eax+8]
mov     edx, [edx+8]
mov     dword ptr [eax+4], 0
mov     [eax], edx
pop     edx
retn
sub_4FB1D5      endp
sub_4FB1EB      proc near               ; CODE XREF: sub_4F0AE3+A↑p
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
loc_4FE471:                             ; CODE XREF: sub_4FE278+1E7↑j
mov     eax, edi
call    __SetIOMode_
mov     eax, edi
loc_4FE46F:                             ; CODE XREF: sub_4FE278+1E9↑j
mov     edx, eax
loc_4FE44F:                             ; CODE XREF: sub_4FE278+1D2↑j
mov     eax, edx
mov     bh, byte ptr [esp+2Ch+var_10+1]
or      al, 40h
test    bh, 3
jz      short loc_4FE463
test    bh, 2
jz      short loc_4FE471
jmp     short loc_4FE46F
loc_4FE3A2:                             ; CODE XREF: sub_4FE278+104↑j
push    0               ; hTemplateFile
push    ebx             ; dwFlagsAndAttributes
push    eax             ; dwCreationDisposition
lea     eax, [esp+38h+SecurityAttributes]
push    eax             ; lpSecurityAttributes
mov     ecx, [esp+3Ch+dwShareMode]
push    ecx             ; dwShareMode
mov     eax, [esp+40h+dwDesiredAccess]
push    eax             ; dwDesiredAccess
push    edi             ; lpFileName
call    cs:__imp_CreateFileA
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FE3F4
test    byte ptr [esp+2Ch+var_10], 20h
jz      short loc_4FE3E5
push    0               ; hTemplateFile
push    ebx             ; dwFlagsAndAttributes
push    ebp             ; dwCreationDisposition
push    0               ; lpSecurityAttributes
mov     edx, [esp+3Ch+dwShareMode]
push    edx             ; dwShareMode
mov     ebx, [esp+40h+dwDesiredAccess]
push    ebx             ; dwDesiredAccess
push    edi             ; lpFileName
call    cs:__imp_CreateFileA
mov     ecx, eax
loc_4FE32D:                             ; CODE XREF: sub_4FE278+7E↑j
mov     dl, byte ptr [esp+2Ch+var_10]
test    dl, 20h
jz      short loc_4FE398
mov     ebp, [ecx]
add     ebp, 4
mov     [ecx], ebp
mov     eax, [ebp-4]
mov     [esp+2Ch+var_18], eax
mov     dword ptr [ecx], 0
mov     eax, ds:dword_558188
mov     edx, [esp+2Ch+var_18]
not     eax
and     edx, eax
mov     [esp+2Ch+var_18], edx
test    byte ptr [esp+2Ch+var_18+1], 1
jz      short loc_4FE36E
test    byte ptr [esp+2Ch+var_18], 80h
jnz     short loc_4FE36E
mov     ebx, 1
loc_4FE391:                             ; CODE XREF: sub_4FE278+10B↑j
mov     ebp, 4
jmp     short loc_4FE39D
loc_4FE47A:                             ; CODE XREF: sub_4FE278+28↑j
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4FE278      endp
__allocfp_      proc near               ; CODE XREF: sub_4F937D+1D↑p
push    ebx
push    ecx
push    edx
push    esi
push    edi             ; Value
call    ds:off_551FD8
mov     esi, ds:dword_897BC8
test    esi, esi
jz      short loc_4FE4AF
mov     ecx, [esi+4]
mov     edi, [ecx+0Ch]
mov     eax, [esi]
and     edi, 4003h
mov     ds:dword_897BC8, eax
or      di, 3
jmp     short loc_4FE4F6
loc_4FE434:                             ; CODE XREF: sub_4FE278+1B5↑j
test    esi, esi
jnz     short loc_4FE43D
or      dl, 1
jmp     short loc_4FE445
loc_4FE463:                             ; CODE XREF: sub_4FE278+1E2↑j
cmp     ds:dword_557E75, 200h
jnz     short loc_4FE471
loc_4FE2A5:                             ; CODE XREF: sub_4FE278+17↑j
mov     esi, edx
lea     ebx, [esp+2Ch+var_18]
and     esi, 7
lea     edx, [esp+2Ch+dwDesiredAccess]
mov     eax, esi
call    sub_5010D9
mov     eax, [esp+2Ch+var_14]
lea     edx, [esp+2Ch+dwShareMode]
or      eax, esi
mov     ebx, 80h
call    sub_501105
xor     eax, eax
mov     edx, 0Ch
mov     [esp+2Ch+SecurityAttributes.lpSecurityDescriptor], eax
mov     ah, byte ptr [esp+2Ch+var_10]
mov     [esp+2Ch+SecurityAttributes.nLength], edx
test    ah, 80h
setz    al
and     eax, 0FFh
mov     edx, ds:dword_557E84
mov     [esp+2Ch+SecurityAttributes.bInheritHandle], eax
test    edx, edx
jz      short loc_4FE32D
mov     edx, offset unk_50AAA4
mov     eax, edi
call    stricmp_
test    eax, eax
jnz     short loc_4FE32D
call    __NTGetFakeHandle_
call    ds:off_551FD0
push    0FFFFFFFFh
push    eax
push    0
mov     edx, 2000h
mov     edi, eax
call    ds:dword_557E84
add     esp, 0Ch
jmp     loc_4FE42A
loc_4FE445:                             ; CODE XREF: sub_4FE278+1BA↑j
test    byte ptr [esp+2Ch+var_10], 10h
jz      short loc_4FE44F
or      dl, 80h
loc_4FE36E:                             ; CODE XREF: sub_4FE278+E8↑j
test    byte ptr [esp+2Ch+var_10+1], 4
jz      short loc_4FE37E
mov     ebp, 1
mov     eax, ebp
jmp     short loc_4FE3A2
sub_5010D9      proc near               ; CODE XREF: sub_4FE278+3C↑p
cmp     eax, 2
jnz     short loc_5010EB
mov     dword ptr [edx], 0C0000000h
loc_5010E4:                             ; CODE XREF: sub_5010D9+1D↓j
mov     dword ptr [ebx], 80h
retn
loc_5010EB:                             ; CODE XREF: sub_5010D9+3↑j
cmp     eax, 1
jnz     short loc_5010F8
mov     dword ptr [edx], 40000000h
jmp     short loc_5010E4
loc_5010F8:                             ; CODE XREF: sub_5010D9+15↑j
mov     dword ptr [edx], 80000000h
mov     dword ptr [ebx], 1
retn
sub_5010D9      endp
loc_4FE3E5:                             ; CODE XREF: sub_4FE278+151↑j
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4FE3F4
call    __set_errno_nt_
jmp     loc_4FE47A
loc_4FE296:                             ; CODE XREF: sub_4FE278+19F↓j
call    __set_errno_
mov     eax, 0FFFFFFFFh
jmp     loc_4FE47A
loc_4FE39D:                             ; CODE XREF: sub_4FE278+11E↑j
mov     eax, 3
sub_501105      proc near               ; CODE XREF: sub_4FE278+50↑p
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
loc_501123:                             ; CODE XREF: sub_501105+C↑j
test    eax, eax
jbe     short loc_50112E
cmp     eax, 10h
jz      short loc_50113D
pop     ebx
retn
loc_50112E:                             ; CODE XREF: sub_501105+20↑j
mov     dword ptr [edx], 1
test    ebx, ebx
jnz     short loc_50115B
or      byte ptr [edx], 2
pop     ebx
retn
loc_50113D:                             ; CODE XREF: sub_501105+25↑j
mov     dword ptr [edx], 0
pop     ebx
retn
loc_501145:                             ; CODE XREF: sub_501105+15↑j
mov     dword ptr [edx], 2
pop     ebx
retn
loc_50114D:                             ; CODE XREF: sub_501105+E↑j
mov     dword ptr [edx], 1
pop     ebx
retn
loc_501155:                             ; CODE XREF: sub_501105+1A↑j
mov     dword ptr [edx], 3
loc_50115B:                             ; CODE XREF: sub_501105+13↑j
pop     ebx
retn
sub_501105      endp
loc_4FE398:                             ; CODE XREF: sub_4FE278+BC↑j
test    dl, 40h
jnz     short loc_4FE38A
loc_4FE37E:                             ; CODE XREF: sub_4FE278+FB↑j
test    byte ptr [esp+2Ch+var_10], 40h
jz      short loc_4FE391
mov     ebp, 2
loc_4FE38A:                             ; CODE XREF: sub_4FE278+123↓j
mov     eax, 5
jmp     short loc_4FE3A2
loc_4FE42A:                             ; CODE XREF: sub_4FE278+B0↑j
cmp     esi, 2
jnz     short loc_4FE434
or      dl, 3
jmp     short loc_4FE445
loc_4FE41C:                             ; CODE XREF: sub_4FE278+190↑j
call    isatty_
test    eax, eax
jz      short loc_4FE42A
mov     edx, 2000h
loc_4FE43D:                             ; CODE XREF: sub_4FE278+1BE↑j
cmp     esi, 1
jnz     short loc_4FE445
or      dl, 2
loc_4FE3F4:                             ; CODE XREF: sub_4FE278+14A↑j
mov     eax, ecx
call    ds:off_551FD0
xor     edx, edx
mov     ebp, ds:dword_55811C
mov     edi, eax
cmp     eax, ebp
jb      short loc_4FE41C
push    ecx             ; hObject
call    cs:__imp_CloseHandle
mov     eax, 5
jmp     loc_4FE296
loc_501145:                             ; CODE XREF: sub_501105+15↑j
mov     dword ptr [edx], 2
pop     ebx
retn
loc_4FE4AF:                             ; CODE XREF: __allocfp_+13↑j
mov     ecx, offset unk_557C6C
jmp     short loc_4FE4D6
loc_501123:                             ; CODE XREF: sub_501105+C↑j
test    eax, eax
jbe     short loc_50112E
cmp     eax, 10h
jz      short loc_50113D
pop     ebx
retn
loc_50112E:                             ; CODE XREF: sub_501105+20↑j
mov     dword ptr [edx], 1
test    ebx, ebx
jnz     short loc_50115B
or      byte ptr [edx], 2
pop     ebx
retn
loc_50114D:                             ; CODE XREF: sub_501105+E↑j
mov     dword ptr [edx], 1
pop     ebx
retn
loc_5010EB:                             ; CODE XREF: sub_5010D9+3↑j
cmp     eax, 1
jnz     short loc_5010F8
mov     dword ptr [edx], 40000000h
jmp     short loc_5010E4
loc_501155:                             ; CODE XREF: sub_501105+1A↑j
mov     dword ptr [edx], 3
loc_5010E4:                             ; CODE XREF: sub_5010D9+1D↓j
mov     dword ptr [ebx], 80h
retn
loc_50113D:                             ; CODE XREF: sub_501105+25↑j
mov     dword ptr [edx], 0
pop     ebx
retn
loc_4FE4F6:                             ; CODE XREF: __allocfp_+2C↑j
mov     ebx, 1Ah
mov     eax, ecx
xor     edx, edx
call    memset_
mov     [ecx+0Ch], edi
mov     [esi+4], ecx
mov     eax, ds:dword_897BC4
mov     [ecx+8], esi
mov     ds:dword_897BC4, esi
mov     [esi], eax
call    ds:off_551FDC
mov     eax, ecx
jmp     short loc_4FE536
loc_5010F8:                             ; CODE XREF: sub_5010D9+15↑j
mov     dword ptr [edx], 80000000h
mov     dword ptr [ebx], 1
retn
sub_5010D9      endp
sub_501105      proc near               ; CODE XREF: sub_4FE278+50↑p
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
loc_50115B:                             ; CODE XREF: sub_501105+13↑j
pop     ebx
retn
sub_501105      endp
loc_4FE536:                             ; CODE XREF: __allocfp_+A1↑j
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
__allocfp_      endp
__freefp_       proc near               ; CODE XREF: sub_4F9297+89↑p
push    ebx
push    ecx
push    edx
mov     ebx, eax
mov     edx, offset dword_897BC4
loc_4FE4D6:                             ; CODE XREF: __allocfp_+33↑j
cmp     ecx, offset byte_557E74
jb      short loc_4FE4B6
mov     eax, 37h ; '7'
mov     edi, 4003h
call    _nmalloc_
mov     esi, eax
test    eax, eax
jz      short loc_4FE524
lea     ecx, [eax+1Dh]
loc_4FE524:                             ; CODE XREF: __allocfp_+49↑j
                                        ; __allocfp_+70↑j
                mov     eax, 5
                call    __set_errno_
                call    ds:off_551FDC
                xor     eax, eax
loc_4FE4B6:                             ; CODE XREF: __allocfp_+5B↓j
                test    byte ptr [ecx+0Ch], 3
                jnz     short loc_4FE4D3
                mov     eax, 1Dh
                call    _nmalloc_
                mov     esi, eax
                test    eax, eax
                jz      short loc_4FE524
                mov     edi, 3
                jmp     short loc_4FE4F6
;;; End of sub_4F0927.asm ;;;

;;; Start of sub_4FFB41.asm ;;;
sub_4FFB41      proc near               ; CODE XREF: start↑j
var_8           = byte ptr -8
push    ebx
push    ecx
push    edx
push    ebp
mov     ebp, esp
sub     esp, 8
mov     eax, 1
call    __InitRtns
mov     eax, ds:dword_5581A8
add     eax, 3
and     al, 0FCh
xor     edx, edx
sub     esp, eax
mov     ecx, esp
mov     ebx, ds:dword_5581A8
mov     eax, ecx
call    memset_
mov     eax, ds:dword_5581A8
mov     edx, ecx
mov     [ecx+0F0h], eax
lea     eax, [ebp+var_8]
call    sub_4FABD3
mov     ecx, ds:dword_557C30
add     ecx, 3
and     cl, 0FCh
call    stackavail_
cmp     ecx, eax
jnb     short loc_4FFBB1
push    ecx
call    sub_5022FA      ; __GRO
mov     eax, ds:dword_557C30
add     eax, 3
and     al, 0FCh
sub     esp, eax
mov     eax, esp
jmp     short loc_4FFBB3
loc_4FFBB1:                             ; CODE XREF: sub_4FFB41+58↑j
xor     eax, eax
loc_4FFBB3:                             ; CODE XREF: sub_4FFB41+6E↑j
mov     ebx, ds:dword_557C30
add     eax, ebx
mov     ds:dword_557C34, eax
call    nullsub_6
push    0Ah             ; nShowCmd
mov     edx, ds:lpCmdLine
push    edx             ; lpCmdLine
push    0               ; hPrevInstance
push    0               ; lpModuleName
call    cs:__imp_GetModuleHandleA
push    eax             ; hInstance
call    _WinMain@16     ; WinMain(x,x,x,x)
call    sub_502330
mov     esp, ebp
pop     ebp
pop     edx
pop     ecx
pop     ebx
retn
sub_4FFB41      endp
sub_502330      proc near               ; CODE XREF: sub_4FFB41+9E↑p
push    ebx
push    edx
mov     ebx, eax
call    ds:off_5581C0
cmp     byte ptr ds:dword_897BB8, 0
jnz     short loc_502352
mov     edx, 0FFh
mov     eax, 10h
call    __FiniRtns
loc_502352:                             ; CODE XREF: sub_502330+11↑j
mov     eax, ebx
call    sub_50235C
sub_502330      endp
loc_4FFBB1:                             ; CODE XREF: sub_4FFB41+58↑j
xor     eax, eax
loc_4FFBB3:                             ; CODE XREF: sub_4FFB41+6E↑j
mov     ebx, ds:dword_557C30
add     eax, ebx
mov     ds:dword_557C34, eax
call    nullsub_6
push    0Ah             ; nShowCmd
mov     edx, ds:lpCmdLine
push    edx             ; lpCmdLine
push    0               ; hPrevInstance
push    0               ; lpModuleName
call    cs:__imp_GetModuleHandleA
push    eax             ; hInstance
call    _WinMain@16     ; WinMain(x,x,x,x)
call    sub_502330
sub_5022FA      proc near               ; CODE XREF: sub_4FFB41+5B↑p
var_8           = dword ptr -8
arg_0           = dword ptr  4
push    eax
push    ebx
mov     eax, [esp+8+arg_0]
mov     ebx, 0FFFFFFFCh
loc_502305:                             ; CODE XREF: sub_5022FA+19↓j
mov     [esp+ebx+8+var_8], ebx
sub     ebx, 1000h
sub     eax, 1000h
jg      short loc_502305
pop     ebx
pop     eax
retn    4
sub_5022FA      endp
sub_4FABD3      proc near               ; CODE XREF: sub_4FFB41+40↓p
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
sub_4FABD3      endp
sub_500909      proc near               ; CODE XREF: sub_4FABD3+2E↑p
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
sub_500909      endp
loc_502305:                             ; CODE XREF: sub_5022FA+19↓j
mov     [esp+ebx+8+var_8], ebx
sub     ebx, 1000h
sub     eax, 1000h
jg      short loc_502305
pop     ebx
pop     eax
retn    4
sub_5022FA      endp
loc_502352:                             ; CODE XREF: sub_502330+11↑j
mov     eax, ebx
call    sub_50235C
sub_502330      endp
sub_50235C      proc near               ; CODE XREF: sub_502330+24↑p
push    edx
mov     edx, eax
call    ds:off_5581C0
call    ds:off_5581C4
cmp     ds:dword_557EBC, 0
jz      short loc_50237A
call    ds:dword_557EBC
loc_50237A:                             ; CODE XREF: sub_50235C+16↑j
mov     eax, edx
jmp     loc_4FAC25
sub_50235C      endp
sub_4FA9A8      proc near               ; CODE XREF: sub_4FABD3+17↓p
var_41C         = byte ptr -41Ch
Filename        = byte ptr -214h
var_110         = byte ptr -110h
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
loc_4FA9DC:                             ; CODE XREF: sub_4FA9A8+21↑j
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
loc_4FAAB2:                             ; CODE XREF: sub_4FA9A8+114↓j
inc     eax
mov     ch, [eax]
cmp     ch, 22h ; '"'
jz      short loc_4FAABE
test    ch, ch
jnz     short loc_4FAAB2
loc_4FAABE:                             ; CODE XREF: sub_4FA9A8+110↑j
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
loc_4FAAC3:                             ; CODE XREF: sub_4FA9A8+14A↓j
inc     eax
jmp     short loc_4FAAE1
loc_4FAAC6:                             ; CODE XREF: sub_4FA9A8+108↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAAE1
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
inc     eax
jmp     short loc_4FAAC6
loc_4FAAE1:                             ; CODE XREF: sub_4FA9A8+119↑j
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
loc_4FAB18:                             ; CODE XREF: sub_4FA9A8+17F↓j
add     eax, 2
mov     dx, [eax]
cmp     dx, 22h ; '"'
jz      short loc_4FAB29
test    dx, dx
jnz     short loc_4FAB18
loc_4FAB29:                             ; CODE XREF: sub_4FA9A8+17A↑j
cmp     word ptr [eax], 0
jz      short loc_4FAB52
loc_4FAB2F:                             ; CODE XREF: sub_4FA9A8+1BD↓j
add     eax, 2
jmp     short loc_4FAB52
loc_4FAB34:                             ; CODE XREF: sub_4FA9A8+16E↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAB52
cmp     word ptr [eax], 0
jz      short loc_4FAB52
add     eax, 2
jmp     short loc_4FAB34
loc_4FAB52:                             ; CODE XREF: sub_4FA9A8+185↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FAB71
jmp     short loc_4FAB2F
loc_4FAB67:                             ; CODE XREF: sub_4FA9A8+15A↑j
mov     eax, offset unk_50AAA0
call    sub_50045B
loc_4FAB71:                             ; CODE XREF: sub_4FA9A8+1BB↑j
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
loc_4FABC4:                             ; CODE XREF: sub_4FA9A8+1D0↑j
mov     eax, 1
loc_4FABC9:                             ; CODE XREF: sub_4FA9A8+25↑j
add     esp, 618h
pop     edi
pop     esi
pop     ecx
retn
sub_4FA9A8      endp
loc_4FAB67:                             ; CODE XREF: sub_4FA9A8+15A↑j
mov     eax, offset unk_50AAA0
call    sub_50045B
loc_4FAC25:                             ; CODE XREF: sub_50235C+20↓j
mov     ebx, eax
cmp     ds:dword_897BB8, 0
jz      short loc_4FAC48
cmp     ds:dword_55200C, 0
jz      short loc_4FAC5F
mov     edx, 0FFh
xor     eax, eax
call    ds:dword_55200C
jmp     short loc_4FAC5F
loc_4FAB71:                             ; CODE XREF: sub_4FA9A8+1BB↑j
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
sub_5000A0      proc near               ; CODE XREF: sub_4FA9A8+15↑p
push    ebx
push    edx
mov     edx, eax
test    eax, eax
jnz     short loc_5000CE
mov     eax, 1
mov     edx, ds:dword_5581A8
call    calloc_
mov     edx, eax
test    eax, eax
jz      short loc_5000CE
mov     ebx, ds:dword_5581A8
mov     byte ptr [eax+52h], 1
mov     [eax+0F0h], ebx
loc_5000CE:                             ; CODE XREF: sub_5000A0+6↑j
mov     eax, edx
call    __InitThreadData_
mov     eax, edx
pop     edx
pop     ebx
retn
sub_5000A0      endp
loc_4FAAE1:                             ; CODE XREF: sub_4FA9A8+119↑j
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
loc_4FAB18:                             ; CODE XREF: sub_4FA9A8+17F↓j
add     eax, 2
mov     dx, [eax]
cmp     dx, 22h ; '"'
jz      short loc_4FAB29
test    dx, dx
jnz     short loc_4FAB18
loc_4FAAC3:                             ; CODE XREF: sub_4FA9A8+14A↓j
inc     eax
jmp     short loc_4FAAE1
loc_4FA9DC:                             ; CODE XREF: sub_4FA9A8+21↑j
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
loc_50237A:                             ; CODE XREF: sub_50235C+16↑j
mov     eax, edx
jmp     loc_4FAC25
sub_50235C      endp
sub_50045B      proc near               ; CODE XREF: sub_4FA9A8+EB↑p
push    ebx
push    ecx
push    edx
mov     edx, eax
call    wcslen_
lea     ebx, [eax+1]
add     ebx, ebx
mov     eax, ebx
call    _nmalloc_
mov     ecx, eax
test    eax, eax
jz      short loc_50047C
call    memcpy_
loc_50047C:                             ; CODE XREF: sub_50045B+1A↑j
mov     eax, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_50045B      endp
loc_4FAB29:                             ; CODE XREF: sub_4FA9A8+17A↑j
cmp     word ptr [eax], 0
jz      short loc_4FAB52
loc_4FAAB2:                             ; CODE XREF: sub_4FA9A8+114↓j
inc     eax
mov     ch, [eax]
cmp     ch, 22h ; '"'
jz      short loc_4FAABE
test    ch, ch
jnz     short loc_4FAAB2
loc_4FAB52:                             ; CODE XREF: sub_4FA9A8+185↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FAB71
jmp     short loc_4FAB2F
loc_4FAB2F:                             ; CODE XREF: sub_4FA9A8+1BD↓j
add     eax, 2
jmp     short loc_4FAB52
loc_4FABC9:                             ; CODE XREF: sub_4FA9A8+25↑j
add     esp, 618h
pop     edi
pop     esi
pop     ecx
retn
sub_4FA9A8      endp
sub_4FABD3      proc near               ; CODE XREF: sub_4FFB41+40↓p
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
sub_4FABD3      endp
loc_4FABC4:                             ; CODE XREF: sub_4FA9A8+1D0↑j
mov     eax, 1
loc_4FAB34:                             ; CODE XREF: sub_4FA9A8+16E↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAB52
cmp     word ptr [eax], 0
jz      short loc_4FAB52
add     eax, 2
jmp     short loc_4FAB34
loc_4FAABE:                             ; CODE XREF: sub_4FA9A8+110↑j
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
loc_4FAAC6:                             ; CODE XREF: sub_4FA9A8+108↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jnz     short loc_4FAAE1
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
inc     eax
jmp     short loc_4FAAC6
loc_4FAC48:                             ; CODE XREF: sub_50235C-772E↑j
call    sub_500955
mov     edx, 0Fh
xor     eax, eax
call    __FiniRtns
call    ds:off_552000
loc_5000CE:                             ; CODE XREF: sub_5000A0+6↑j
mov     eax, edx
call    __InitThreadData_
mov     eax, edx
pop     edx
pop     ebx
retn
sub_5000A0      endp
sub_5000DA      proc near               ; CODE XREF: sub_505744+15↓p
push    ecx
push    edx
call    cs:__imp_TlsAlloc
mov     dx, ds:word_557C51
mov     ds:dwTlsIndex, eax
cmp     dx, 8000h
jb      short loc_50011D
cmp     ds:byte_557C4F, 4
jnb     short loc_50011D
loc_50047C:                             ; CODE XREF: sub_50045B+1A↑j
mov     eax, ecx
pop     edx
pop     ecx
pop     ebx
retn
sub_50045B      endp
__init_stack_limits_ proc near          ; CODE XREF: sub_4FABD3+27↑p
Buffer          = _MEMORY_BASIC_INFORMATION ptr -2Ch
Address         = byte ptr -10h
push    ebx
push    ecx
push    esi
sub     esp, 20h
mov     ebx, eax
mov     esi, edx
push    1Ch             ; dwLength
lea     eax, [esp+30h+Buffer]
push    eax             ; lpBuffer
lea     eax, [esp+34h+Address]
push    eax             ; lpAddress
call    cs:__imp_VirtualQuery
mov     edx, [esp+2Ch+Buffer.BaseAddress]
add     edx, [esp+2Ch+Buffer.RegionSize]
mov     cx, ds:word_557C51
mov     eax, [esp+2Ch+Buffer.AllocationBase]
cmp     cx, 8000h
jnb     short loc_5004BF
add     eax, 3000h
jmp     short loc_5004D6
loc_4FAC5F:                             ; CODE XREF: sub_50235C-7725↑j
push    ebx             ; uExitCode
call    cs:__imp_ExitProcess
loc_50011D:                             ; CODE XREF: sub_5000DA+1A↑j
cmp     ds:dwTlsIndex, 0FFFFFFFFh
setnz   al
and     eax, 0FFh
pop     edx
pop     ecx
retn
sub_5000DA      endp
sub_50012F      proc near               ; CODE XREF: __GetThreadData_+5↓p
push    ebx
push    ecx
push    edx
cmp     ds:dwTlsIndex, 0FFFFFFFFh
jnz     short loc_500141
loc_5004D6:                             ; CODE XREF: __init_stack_limits_+3B↑j
test    ebx, ebx
jz      short loc_5004DC
mov     [ebx], eax
loc_5004BF:                             ; CODE XREF: __init_stack_limits_+34↑j
jb      short loc_5004D1
cmp     ds:byte_557C4F, 4
jnb     short loc_5004D1
add     eax, 12000h
jmp     short loc_5004D6
sub_500955      proc near               ; CODE XREF: sub_50235C:loc_4FAC48↑p
push    edx
call    ds:off_551FC4
mov     eax, [eax+54h]
test    eax, eax
jz      short loc_50096A
mov     eax, [eax]
xor     edx, edx
mov     fs:[edx], eax
loc_50096A:                             ; CODE XREF: sub_500955+C↑j
call    ds:off_551FC4
mov     dword ptr [eax+54h], 0
pop     edx
retn
sub_500955      endp
loc_500141:                             ; CODE XREF: sub_50012F+A↑j
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
loc_50096A:                             ; CODE XREF: sub_500955+C↑j
call    ds:off_551FC4
mov     dword ptr [eax+54h], 0
pop     edx
retn
sub_500955      endp
callit_         proc near               ; CODE XREF: __InitRtns+3C↓p
push    es
cmp     dword ptr [eax], 0
jz      short loc_500983
push    ds
pop     es
assume es:AUTO
call    dword ptr [eax]
loc_5004D1:                             ; CODE XREF: __init_stack_limits_:loc_5004BF↑j
add     eax, 13000h
loc_5004DC:                             ; CODE XREF: __init_stack_limits_+56↑j
test    esi, esi
jz      short loc_5004E2
mov     [esi], edx
loc_500166:                             ; CODE XREF: sub_50012F+2C↑j
push    ebx             ; lpTlsValue
mov     ebx, ds:dwTlsIndex
push    ebx             ; dwTlsIndex
call    cs:__imp_TlsSetValue
mov     eax, 1
loc_5004E2:                             ; CODE XREF: __init_stack_limits_+5C↑j
add     esp, 20h
pop     esi
pop     ecx
pop     ebx
retn
__init_stack_limits_ endp
sub_5004E9      proc near               ; CODE XREF: TopLevelExceptionFilter+14↓p
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
loc_500983:                             ; CODE XREF: callit_+4↑j
pop     es
assume es:nothing
retn
callit_         endp
__InitRtns      proc near               ; CODE XREF: sub_4FABD3+38↑p
push    ebx
push    ecx
push    edx
push    esi
push    es
mov     esi, offset unk_55859C
mov     dh, al
loc_50013B:                             ; CODE XREF: sub_50012F+35↓j
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
loc_50017A:                             ; CODE XREF: sub_50012F+1B↑j
pop     edx
pop     ecx
pop     ebx
retn
sub_50012F      endp
sub_50017E      proc near               ; CODE XREF: sub_5001D3+5↓p
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
loc_5001CD:                             ; CODE XREF: sub_50017E+10↑j
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_50017E      endp
sub_5001D3      proc near               ; DATA XREF: sub_500201+B7↓o
mov     eax, 1
call    sub_50017E
loc_500515:                             ; CODE XREF: sub_5004E9+13↑j
test    ebx, ebx
setnz   al
and     eax, 0FFh
pop     edx
pop     ecx
pop     ebx
retn
sub_5004E9      endp
sub_500523      proc near               ; CODE XREF: TopLevelExceptionFilter+108↓p
push    ecx
push    esi
push    edi
mov     edi, ebx
xor     ebx, ebx
;;; End of sub_4FFB41.asm ;;;

;;; Start of winmain.asm ;;;
AUTO:004A6D66 _WinMain@16     proc near               ; CODE XREF: sub_4FFB41+99↓p
AUTO:004A6D66
AUTO:004A6D66 var_C4          = byte ptr -0C4h
AUTO:004A6D66 WndClass        = WNDCLASSA ptr -74h
AUTO:004A6D66 Msg             = tagMSG ptr -4Ch
AUTO:004A6D66 Rect            = tagRECT ptr -30h
AUTO:004A6D66 var_20          = qword ptr -20h
AUTO:004A6D66 var_18          = dword ptr -18h
AUTO:004A6D66 var_14          = dword ptr -14h
AUTO:004A6D66 hInstance       = dword ptr  4
AUTO:004A6D66 hPrevInstance   = dword ptr  8
AUTO:004A6D66 lpCmdLine       = dword ptr  0Ch
AUTO:004A6D66 nShowCmd        = dword ptr  10h
AUTO:004A6D66
AUTO:004A6D66                 push    ebx
AUTO:004A6D67                 push    esi
AUTO:004A6D68                 push    edi
AUTO:004A6D69                 push    ebp
AUTO:004A6D6A                 sub     esp, 0B4h
AUTO:004A6D70                 mov     ecx, 14h
AUTO:004A6D75                 mov     edi, esp
AUTO:004A6D77                 mov     esi, offset byte_4A64AB
AUTO:004A6D7C                 rep movsd
AUTO:004A6D7E                 xor     ebp, ebp
AUTO:004A6D80                 mov     [esp+0C4h+var_18], ebp
AUTO:004A6D87                 lea     edi, [esp+0C4h+Rect]
AUTO:004A6D8E                 mov     esi, offset byte_4A64FB
AUTO:004A6D93                 movsd
AUTO:004A6D94                 movsd
AUTO:004A6D95                 movsd
AUTO:004A6D96                 movsd
AUTO:004A6D97                 mov     edx, offset aMegamanExe ; "MEGAMAN.EXE"
AUTO:004A6D9C                 mov     eax, offset aCapcomAvi ; "CAPCOM.AVI"
AUTO:004A6DA1                 call    sub_4F0927
AUTO:004A6DA6                 test    eax, eax
AUTO:004A6DA8                 jnz     short loc_4A6DC3
AUTO:004A6DAA                 push    10h             ; uType
AUTO:004A6DAC                 push    offset Caption  ; "Error"
AUTO:004A6DB1                 push    offset Text     ; "Please Insert Megaman CD-ROM."
AUTO:004A6DB6                 push    ebp             ; hWnd
AUTO:004A6DB7                 call    cs:__imp_MessageBoxA
AUTO:004A6DBE                 jmp     loc_4A72BF
AUTO:004A72BF loc_4A72BF:                             ; CODE XREF: WinMain(x,x,x,x)+58↑j
AUTO:004A72BF                                         ; WinMain(x,x,x,x)+224↑j ...
AUTO:004A72BF                 mov     eax, 1
;;; End of winmain.asm ;;;

