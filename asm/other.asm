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