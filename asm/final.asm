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
loc_4F921E:                             ; CODE XREF: sub_4F917C+9C↑j
mov     ah, byte ptr [esp+18h+Value]
or      ah, 3
mov     ebp, 1
mov     byte ptr [esp+18h+Value], ah
jmp     short loc_4F91DD
loc_4FAC5F:                             ; CODE XREF: sub_50235C-7725↑j
push    ebx             ; uExitCode
call    cs:__imp_ExitProcess
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
loc_4FE4D3:                             ; CODE XREF: __allocfp_+39↑j
add     ecx, 1Ah
loc_4F0B9D:                             ; CODE XREF: _nmalloc_+6E↑j
cmp     esi, ds:dword_551C8C
jbe     short loc_4F0BAB
mov     ds:dword_551C8C, esi
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
loc_4F91B4:                             ; CODE XREF: sub_4F917C+2E↑j
cmp     al, 61h ; 'a'
jz      short loc_4F91C6
jmp     short loc_4F91CC
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
loc_4F0B4E:                             ; CODE XREF: _nmalloc_+C0↓j
cmp     ebp, ds:dword_551C8C
jbe     short loc_4F0B62
mov     ecx, ds:dword_551C88
test    ecx, ecx
jnz     short loc_4F0B70
jmp     short loc_4F0B64
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
loc_4FE42A:                             ; CODE XREF: sub_4FE278+B0↑j
cmp     esi, 2
jnz     short loc_4FE434
or      dl, 3
jmp     short loc_4FE445
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
sub_4F93C1      proc near               ; CODE XREF: sub_4A650B+11↑p
push    ebx
xor     ebx, ebx
call    sub_4F937D
pop     ebx
retn
sub_4F93C1      endp
loc_4FB268:                             ; CODE XREF: sub_4FB1EB+16↑j
cmp     ebx, 1
jb      short loc_4FB276
jbe     short loc_4FB27C
cmp     ebx, 2
jz      short loc_4FB2CB
jmp     short loc_4FB21C
loc_50114D:                             ; CODE XREF: sub_501105+E↑j
mov     dword ptr [edx], 1
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
loc_4F921A:                             ; CODE XREF: sub_4F917C+B4↓j
xor     ecx, ecx
jmp     short loc_4F91DD
loc_4FB2EC:                             ; CODE XREF: sub_4FB1EB+65↑j
mov     eax, [ecx+10h]
call    ds:off_551FCC
xor     eax, eax
pop     edi
pop     esi
pop     ecx
retn
sub_4FB1EB      endp
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
loc_4F9216:                             ; CODE XREF: sub_4F917C+92↑j
test    ebp, ebp
jz      short loc_4F921E
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
loc_4FE434:                             ; CODE XREF: sub_4FE278+1B5↑j
test    esi, esi
jnz     short loc_4FE43D
or      dl, 1
jmp     short loc_4FE445
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
loc_4FB23F:                             ; CODE XREF: sub_4FB1EB+27↑j
and     byte ptr [ecx+0Ch], 0EBh
mov     edx, esi
mov     eax, [ecx+10h]
loc_4FE296:                             ; CODE XREF: sub_4FE278+19F↓j
call    __set_errno_
mov     eax, 0FFFFFFFFh
jmp     loc_4FE47A
loc_4FAABE:                             ; CODE XREF: sub_4FA9A8+110↑j
cmp     byte ptr [eax], 0
jz      short loc_4FAAE1
loc_5025E2:                             ; CODE XREF: __ReallocThreadData_+26↓j
cmp     ebp, [ebx+4]
jz      short loc_5025ED
mov     ebx, [ebx]
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
loc_4F0BC1:                             ; CODE XREF: _nmalloc_+A3↑j
mov     eax, edi
call    sub_4FB641
test    eax, eax
jz      short loc_4F0BDF
xor     cl, cl
mov     [esp+28h+var_28], cl
jmp     loc_4F0B4E
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
loc_4FE3E5:                             ; CODE XREF: sub_4FE278+151↑j
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4FE3F4
call    __set_errno_nt_
jmp     loc_4FE47A
loc_4F91A4:                             ; CODE XREF: sub_4F917C+22↑j
mov     [edx], ebp
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
loc_4F8752:                             ; CODE XREF: _nfree_+A6↑j
mov     ecx, [ecx+8]
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
loc_4F91CC:                             ; CODE XREF: sub_4F917C+36↑j
mov     eax, 9
call    __set_errno_
xor     ecx, ecx
jmp     loc_4F928C
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
loc_4F92F4:                             ; CODE XREF: sub_4F9297+59↑j
test    bl, 40h
jz      short loc_4F92FE
or      ah, 2
jmp     short loc_4F9301
loc_4FAC48:                             ; CODE XREF: sub_50235C-772E↑j
call    sub_500955
mov     edx, 0Fh
xor     eax, eax
call    __FiniRtns
call    ds:off_552000
loc_4F8746:                             ; CODE XREF: _nfree_+B5↓j
cmp     ecx, esi
ja      short loc_4F8752
mov     eax, [ecx]
add     eax, ecx
cmp     eax, esi
ja      short loc_4F875B
loc_4FAB52:                             ; CODE XREF: sub_4FA9A8+185↑j
mov     dl, [eax]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FAB71
jmp     short loc_4FAB2F
loc_4FABC4:                             ; CODE XREF: sub_4FA9A8+1D0↑j
mov     eax, 1
loc_502545:                             ; CODE XREF: __exit_with_msg_+17↓j
inc     ebx
loc_4FE445:                             ; CODE XREF: sub_4FE278+1BA↑j
test    byte ptr [esp+2Ch+var_10], 10h
jz      short loc_4FE44F
or      dl, 80h
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
loc_502618:                             ; CODE XREF: __ReallocThreadData_+2C↑j
mov     eax, 1
mov     edx, ds:dword_5581A8
call    calloc_
mov     ebp, eax
test    eax, eax
jnz     short loc_50263D
mov     edx, 1
mov     eax, offset aUnableToResize_0 ; "Unable to resize thread-specific data\r"...
call    __fatal_runtime_error_
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
loc_4FFBF6:                             ; CODE XREF: __STOSB+11↓j
test    al, 3
jz      short loc_4FFC03
mov     [eax], dl
inc     eax
ror     edx, 8
dec     ecx
jnz     short loc_4FFBF6
loc_4FAAB2:                             ; CODE XREF: sub_4FA9A8+114↓j
inc     eax
mov     ch, [eax]
cmp     ch, 22h ; '"'
jz      short loc_4FAABE
test    ch, ch
jnz     short loc_4FAAB2
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
loc_5010EB:                             ; CODE XREF: sub_5010D9+3↑j
cmp     eax, 1
jnz     short loc_5010F8
mov     dword ptr [edx], 40000000h
jmp     short loc_5010E4
loc_4F0B31:                             ; CODE XREF: _nmalloc_+17↑j
lea     ebp, [eax+0Bh]
and     ebp, 0FFFFFFF8h
cmp     ebp, 10h
jnb     short loc_4F0B41
mov     ebp, 10h
loc_4FE391:                             ; CODE XREF: sub_4FE278+10B↑j
mov     ebp, 4
jmp     short loc_4FE39D
loc_50237A:                             ; CODE XREF: sub_50235C+16↑j
mov     eax, edx
jmp     loc_4FAC25
sub_50235C      endp
loc_4FE4AF:                             ; CODE XREF: __allocfp_+13↑j
mov     ecx, offset unk_557C6C
jmp     short loc_4FE4D6
loc_4F9289:                             ; CODE XREF: sub_4F917C+FB↑j
mov     ecx, [esp+18h+Value]
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
loc_4FFBB1:                             ; CODE XREF: sub_4FFB41+58↑j
xor     eax, eax
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
loc_4F92C5:                             ; CODE XREF: sub_4F9297+27↑j
test    bl, 40h
jz      short loc_4F92CF
or      ah, 2
jmp     short loc_4F92D2
loc_4FE46F:                             ; CODE XREF: sub_4FE278+1E9↑j
mov     edx, eax
loc_4F0B62:                             ; CODE XREF: _nmalloc_+43↑j
xor     ecx, ecx
loc_4F0BAB:                             ; CODE XREF: _nmalloc_+92↑j
mov     ecx, [ecx+8]
jmp     short loc_4F0B70
loc_4FB256:                             ; CODE XREF: sub_4FB1EB+2B↑j
mov     eax, [ecx+10h]
call    ds:off_551FCC
mov     eax, 0FFFFFFFFh
pop     edi
pop     esi
pop     ecx
retn
loc_5004BF:                             ; CODE XREF: __init_stack_limits_+34↑j
jb      short loc_5004D1
cmp     ds:byte_557C4F, 4
jnb     short loc_5004D1
add     eax, 12000h
jmp     short loc_5004D6
loc_4F0B41:                             ; CODE XREF: _nmalloc_+29↑j
call    ds:off_551FE0
xor     ah, ah
xor     edx, edx
mov     [esp+28h+var_28], ah
loc_4F91A6:                             ; CODE XREF: sub_4F917C+1A↑j
mov     al, [ebx]
cmp     al, 72h ; 'r'
jb      short loc_4F91B4
jbe     short loc_4F91BA
cmp     al, 77h ; 'w'
jz      short loc_4F91C0
jmp     short loc_4F91CC
loc_4FE36E:                             ; CODE XREF: sub_4FE278+E8↑j
test    byte ptr [esp+2Ch+var_10+1], 4
jz      short loc_4FE37E
mov     ebp, 1
mov     eax, ebp
jmp     short loc_4FE3A2
loc_4A6DC3:                             ; CODE XREF: WinMain(x,x,x,x)+42↑j
mov     eax, [esp+0C4h+hInstance]
mov     ds:dword_55BDAC, eax
mov     [esp+0C4h+WndClass.style], ebp
mov     [esp+0C4h+WndClass.lpfnWndProc], offset sub_4A6A5E
mov     [esp+0C4h+WndClass.cbClsExtra], ebp
mov     [esp+0C4h+WndClass.cbWndExtra], ebp
mov     [esp+0C4h+WndClass.hInstance], eax
push    offset IconName ; "ROCKMAN_ICON"
push    eax             ; hInstance
call    cs:__imp_LoadIconA
mov     [esp+0C4h+WndClass.hIcon], eax
push    7F00h           ; lpCursorName
push    ebp             ; hInstance
call    cs:__imp_LoadCursorA
mov     [esp+0C4h+WndClass.hCursor], eax
push    4               ; i
call    cs:__imp_GetStockObject
mov     [esp+0C4h+WndClass.hbrBackground], eax
mov     [esp+0C4h+WndClass.lpszMenuName], ebp
mov     [esp+0C4h+WndClass.lpszClassName], offset WindowName ; "Megaman"
lea     eax, [esp+0C4h+WndClass]
push    eax             ; lpWndClass
call    cs:__imp_RegisterClassA
test    ax, ax
jnz     short loc_4A6E3D
mov     eax, 0FFFFFFFFh
jmp     loc_4A72C4
loc_4FE524:                             ; CODE XREF: __allocfp_+49↑j
mov     eax, 5
call    __set_errno_
call    ds:off_551FDC
xor     eax, eax
loc_4FB230:                             ; CODE XREF: sub_4FB1EB+40↑j
mov     eax, [ecx+8]
mov     eax, [eax+8]
mov     dword ptr [ecx+4], 0
mov     [ecx], eax
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
loc_501145:                             ; CODE XREF: sub_501105+15↑j
mov     dword ptr [edx], 2
pop     ebx
retn
loc_4A72BF:                             ; CODE XREF: WinMain(x,x,x,x)+58↑j
mov     eax, 1
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
loc_4FE44F:                             ; CODE XREF: sub_4FE278+1D2↑j
mov     eax, edx
mov     bh, byte ptr [esp+2Ch+var_10+1]
or      al, 40h
test    bh, 3
jz      short loc_4FE463
test    bh, 2
jz      short loc_4FE471
jmp     short loc_4FE46F
loc_4F8755:                             ; CODE XREF: _nfree_+A2↑j
test    ecx, ecx
jnz     short loc_4F8746
jmp     short loc_4F879B
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
loc_4FB293:                             ; CODE XREF: sub_4FB1EB+DE↓j
call    lseek_
cmp     eax, 0FFFFFFFFh
jz      short loc_4FB256
mov     eax, ecx
call    sub_4FB1D5
jmp     short loc_4FB2EC
loc_502352:                             ; CODE XREF: sub_502330+11↑j
mov     eax, ebx
call    sub_50235C
sub_502330      endp
loc_4F8793:                             ; CODE XREF: _nfree_+DD↑j
xor     ah, ah
mov     ds:byte_897BC0, ah
loc_5004D1:                             ; CODE XREF: __init_stack_limits_:loc_5004BF↑j
add     eax, 13000h
loc_4FE38A:                             ; CODE XREF: sub_4FE278+123↓j
mov     eax, 5
jmp     short loc_4FE3A2
loc_4F92FE:                             ; CODE XREF: sub_4F9297+60↑j
or      ah, 1
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
loc_4F92F2:                             ; CODE XREF: sub_4F9297+55↑j
or      al, 40h
sub_4FB641      proc near               ; CODE XREF: _nmalloc_+B2↑p
xor     eax, eax
retn
sub_4FB641      endp
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
loc_4FB21C:                             ; CODE XREF: sub_4FB1EB+89↓j
mov     eax, 9
call    __set_errno_
jmp     short loc_4FB256
loc_4F9301:                             ; CODE XREF: sub_4F9297+65↑j
push    180h
mov     ebp, [esp+10h+arg_0]
push    ebp
loc_4F936E:                             ; CODE XREF: sub_4F9297+C7↑j
mov     eax, ecx
call    __chktty_
mov     eax, ecx
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
loc_4FAAC3:                             ; CODE XREF: sub_4FA9A8+14A↓j
inc     eax
jmp     short loc_4FAAE1
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
loc_4F92CF:                             ; CODE XREF: sub_4F9297+31↑j
or      ah, 1
loc_4FAB18:                             ; CODE XREF: sub_4FA9A8+17F↓j
add     eax, 2
mov     dx, [eax]
cmp     dx, 22h ; '"'
jz      short loc_4FAB29
test    dx, dx
jnz     short loc_4FAB18
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
loc_4F91BA:                             ; CODE XREF: sub_4F917C+30↑j
or      byte ptr [esp+18h+Value], 1
jmp     short loc_4F91DD
loc_4F873E:                             ; CODE XREF: _nfree_+66↑j
mov     ecx, ds:dword_551C84
jmp     short loc_4F8755
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
loc_50115B:                             ; CODE XREF: sub_501105+13↑j
pop     ebx
retn
sub_501105      endp
loc_4FE41C:                             ; CODE XREF: sub_4FE278+190↑j
call    isatty_
test    eax, eax
jz      short loc_4FE42A
mov     edx, 2000h
loc_50113D:                             ; CODE XREF: sub_501105+25↑j
mov     dword ptr [edx], 0
pop     ebx
retn
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
loc_4F0993:                             ; CODE XREF: sub_4F0927+17↑j
call    fclose_
xor     ah, ah
mov     ds:RootPathName, ah
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
loc_4F0BDF:                             ; CODE XREF: _nmalloc_+8A↑j
xor     ch, ch
mov     ds:byte_897BC0, ch
call    ds:off_551FE8
mov     eax, edx
loc_4FB228:                             ; CODE XREF: sub_4FB1EB+1C↑j
cmp     ebx, 1
jnz     short loc_4FB230
sub     esi, [ecx+4]
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
loc_4FAB2F:                             ; CODE XREF: sub_4FA9A8+1BD↓j
add     eax, 2
jmp     short loc_4FAB52
loc_5010E4:                             ; CODE XREF: sub_5010D9+1D↓j
mov     dword ptr [ebx], 80h
retn
loc_50013B:                             ; CODE XREF: sub_50012F+35↓j
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
loc_4F9239:                             ; CODE XREF: sub_4F917C+96↑j
test    esi, esi
jnz     short loc_4F921A
mov     al, byte ptr [esp+18h+Value]
or      al, 40h
mov     esi, 1
mov     byte ptr [esp+18h+Value], al
jmp     short loc_4F91DD
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
loc_4F9275:                             ; CODE XREF: sub_4F917C+66↑j
test    esi, esi
jnz     short loc_4F9289
cmp     ds:dword_557E75, 200h
jnz     short loc_4F9289
or      byte ptr [esp+18h+Value], 40h
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
loc_4FE471:                             ; CODE XREF: sub_4FE278+1E7↑j
mov     eax, edi
call    __SetIOMode_
mov     eax, edi
loc_4FE398:                             ; CODE XREF: sub_4FE278+BC↑j
test    dl, 40h
jnz     short loc_4FE38A
loc_4FAB67:                             ; CODE XREF: sub_4FA9A8+15A↑j
mov     eax, offset unk_50AAA0
call    sub_50045B
loc_4F0944:                             ; CODE XREF: sub_4F0927+3B↓j
inc     ebx
cmp     ebx, 0Ah
jge     short loc_4F09A5
loc_4F91C0:                             ; CODE XREF: sub_4F917C+34↑j
or      byte ptr [esp+18h+Value], 2
jmp     short loc_4F91DD
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
loc_501123:                             ; CODE XREF: sub_501105+C↑j
test    eax, eax
jbe     short loc_50112E
cmp     eax, 10h
jz      short loc_50113D
pop     ebx
retn
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
loc_4F92D2:                             ; CODE XREF: sub_4F9297+36↑j
push    0
mov     edi, [esp+10h+arg_0]
push    edi
jmp     short loc_4F930B
loc_4F0BB0:                             ; CODE XREF: _nmalloc_+61↑j
cmp     [esp+28h+var_28], 0
jnz     short loc_4F0BC1
mov     eax, edi
call    __ExpandDGROUP_
test    eax, eax
jnz     short loc_4F0BD6
loc_5004D6:                             ; CODE XREF: __init_stack_limits_+3B↑j
test    ebx, ebx
jz      short loc_5004DC
mov     [ebx], eax
loc_4F0BD6:                             ; CODE XREF: _nmalloc_+AE↑j
mov     [esp+28h+var_28], 1
jmp     loc_4F0B4E
loc_4FB276:                             ; CODE XREF: sub_4FB1EB+80↑j
test    ebx, ebx
jz      short loc_4FB2A6
jmp     short loc_4FB21C
loc_4FAB29:                             ; CODE XREF: sub_4FA9A8+17A↑j
cmp     word ptr [eax], 0
jz      short loc_4FAB52
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
loc_50112E:                             ; CODE XREF: sub_501105+20↑j
mov     dword ptr [edx], 1
test    ebx, ebx
jnz     short loc_50115B
or      byte ptr [edx], 2
pop     ebx
retn
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
loc_500166:                             ; CODE XREF: sub_50012F+2C↑j
push    ebx             ; lpTlsValue
mov     ebx, ds:dwTlsIndex
push    ebx             ; dwTlsIndex
call    cs:__imp_TlsSetValue
mov     eax, 1
loc_5004DC:                             ; CODE XREF: __init_stack_limits_+56↑j
test    esi, esi
jz      short loc_5004E2
mov     [esi], edx
loc_5025AC:                             ; CODE XREF: __GetThreadData_+E↑j
test    ebx, ebx
jnz     short loc_5025BF
mov     edx, 1
mov     eax, offset aThreadHasNoThr ; "Thread has no thread-specific data\r\n"
call    __fatal_runtime_error_
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
loc_502305:                             ; CODE XREF: sub_5022FA+19↓j
mov     [esp+ebx+8+var_8], ebx
sub     ebx, 1000h
sub     eax, 1000h
jg      short loc_502305
pop     ebx
pop     eax
retn    4
sub_5022FA      endp
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
loc_502665:                             ; CODE XREF: __ReallocThreadData_+40↑j
mov     [ebx+8], ebp
mov     eax, ds:dword_5581A8
push    ebp             ; lpTlsValue
mov     byte ptr [ebp+52h], 1
mov     esi, ds:dwTlsIndex
mov     byte ptr [ebp+53h], 0
push    esi             ; dwTlsIndex
mov     [ebp+0F0h], eax
call    cs:__imp_TlsSetValue
call    ds:off_551FF4
mov     eax, ebp
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
__ReallocThreadData_ endp
__AddThreadData_ proc near              ; CODE XREF: sub_50012F+25↑p
push    ebx
push    ecx
push    esi
mov     esi, eax
mov     ebx, edx
call    ds:off_551FF0
mov     ecx, 1
mov     edx, 10h
mov     eax, ecx
call    calloc_
mov     edx, eax
test    eax, eax
jz      short loc_5026EC
mov     eax, ebx
call    __initthread_
test    eax, eax
jz      short loc_5026D1
mov     eax, edx
call    _nfree_
jmp     short loc_5026EC
loc_4FE37E:                             ; CODE XREF: sub_4FE278+FB↑j
test    byte ptr [esp+2Ch+var_10], 40h
jz      short loc_4FE391
mov     ebp, 2
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
loc_4F0B2A:                             ; CODE XREF: _nmalloc_+12↑j
xor     eax, eax
jmp     loc_4F0BEF
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
loc_4F09A0:                             ; CODE XREF: sub_4F0927+6A↑j
mov     edi, 1
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
loc_4F91C6:                             ; CODE XREF: sub_4F917C+3A↑j
or      byte ptr [esp+18h+Value], 82h
jmp     short loc_4F91DD
loc_4FB248:                             ; CODE XREF: sub_4FB1EB+FC↓j
call    lseek_
cmp     eax, 0FFFFFFFFh
jnz     loc_4FB2EC
loc_4F93B8:                             ; CODE XREF: sub_4F937D+26↑j
mov     eax, edx
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
loc_501155:                             ; CODE XREF: sub_501105+1A↑j
mov     dword ptr [edx], 3
loc_4F92DB:                             ; CODE XREF: sub_4F9297+20↑j
test    bl, 1
setnz   al
and     eax, 0FFh
add     eax, 21h ; '!'
test    bl, 80h
jz      short loc_4F92F2
or      al, 10h
jmp     short loc_4F92F4
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
loc_5025E9:                             ; CODE XREF: __ReallocThreadData_+1B↑j
test    ebx, ebx
jnz     short loc_5025E2
loc_4FE39D:                             ; CODE XREF: sub_4FE278+11E↑j
mov     eax, 3
loc_4F922E:                             ; CODE XREF: sub_4F917C+8A↑j
test    esi, esi
jnz     short loc_4F921A
mov     esi, 1
jmp     short loc_4F91DD
loc_4F920A:                             ; CODE XREF: sub_4F917C+76↑j
cmp     al, 2Bh ; '+'
jb      short loc_4F91DD
jbe     short loc_4F9216
cmp     al, 62h ; 'b'
jz      short loc_4F9239
jmp     short loc_4F91DD
loc_4FE43D:                             ; CODE XREF: sub_4FE278+1BE↑j
cmp     esi, 1
jnz     short loc_4FE445
or      dl, 2
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
loc_4F0B64:                             ; CODE XREF: _nmalloc_+4F↑j
mov     ds:dword_551C8C, ecx
mov     ecx, ds:dword_551C84
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
loc_4F879B:                             ; CODE XREF: _nfree_+B7↑j
call    ds:off_551FE8
loc_4A6E3D:                             ; CODE XREF: WinMain(x,x,x,x)+CB↑j
call    sub_4A650B
push    ebp             ; hWnd
call    cs:__imp_GetDC
mov     ebx, eax
push    8               ; index
push    eax             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:nWidth, eax
push    0Ah             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:cy, eax
push    0Eh             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     esi, eax
push    0Ch             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
imul    esi, eax
mov     ds:dword_55BDA8, esi
push    ebx             ; hDC
push    ebp             ; hWnd
call    cs:__imp_ReleaseDC
cmp     ds:nWidth, 280h
jnz     short loc_4A6EB4
cmp     ds:cy, 1E0h
jnz     short loc_4A6EB4
mov     ds:bMenu, 1
loc_4A72C4:                             ; CODE XREF: WinMain(x,x,x,x)+D2↑j
add     esp, 0B4h
jmp     loc_4A6D5F
_WinMain@16     endp
loc_5026EC:                             ; CODE XREF: __AddThreadData_+22↑j
xor     ecx, ecx
loc_50263D:                             ; CODE XREF: __ReallocThreadData_+67↑j
mov     esi, [ebx+8]
mov     edi, ebp
mov     ecx, [esi+0F0h]
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
mov     dword ptr [ebx+0Ch], 1
loc_5026D1:                             ; CODE XREF: __AddThreadData_+2D↑j
mov     [edx+8], ebx
mov     [edx+4], esi
mov     al, [ebx+52h]
mov     [edx+0Ch], eax
mov     eax, ds:dword_89844C
mov     ds:dword_89844C, edx
mov     [edx], eax
jmp     short loc_5026EE
loc_4A6EB4:                             ; CODE XREF: WinMain(x,x,x,x)+136↑j
mov     edi, 0CE0000h
mov     eax, ds:bMenu
test    eax, eax
jz      short loc_4A6ED4
xor     eax, eax
xor     ebx, ebx
mov     esi, ds:nWidth
mov     ecx, ds:cy
jmp     short loc_4A6F25
sub_4A650B      proc near               ; CODE XREF: WinMain(x,x,x,x):loc_4A6E3D↓p
var_38          = byte ptr -38h
var_24          = byte ptr -24h
push    ebx
push    ecx
push    edx
push    esi
sub     esp, 50h
mov     edx, offset unk_50A308
mov     eax, offset aMegamanCfg ; "MEGAMAN.CFG"
call    sub_4F93C1
mov     esi, eax
test    eax, eax
jz      loc_4A65C8
xor     ecx, ecx
loc_4A652D:                             ; CODE XREF: sub_4A650B+91↓j
mov     ebx, esi
mov     edx, 14h
lea     eax, [esp+60h+var_24]
call    fgets_
test    eax, eax
jz      short loc_4A659E
test    ecx, ecx
jbe     short loc_4A654C
cmp     ecx, 1
jz      short loc_4A655C
jmp     short loc_4A656C
loc_4A654C:                             ; CODE XREF: sub_4A650B+38↑j
lea     eax, [esp+60h+var_24]
call    unknown_libname_37 ; Watcom v9-*1.5  32bit NT runtime
mov     ds:bMenu, eax
jmp     short loc_4A659B
loc_4A655C:                             ; CODE XREF: sub_4A650B+3D↑j
lea     eax, [esp+60h+var_24]
call    unknown_libname_37 ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_5303FC, eax
jmp     short loc_4A659B
loc_4A656C:                             ; CODE XREF: sub_4A650B+3F↑j
lea     eax, [ecx+ecx]
cmp     ecx, 16h
jge     short loc_4A657B
sub     eax, 4
mov     edx, esp
jmp     short loc_4A6582
loc_4A657B:                             ; CODE XREF: sub_4A650B+67↑j
sub     eax, 2Ch ; ','
lea     edx, [esp+60h+var_38]
loc_4A6582:                             ; CODE XREF: sub_4A650B+6E↑j
add     eax, edx
lea     edx, [eax+1]
push    edx
push    eax
push    offset aDD      ; "%d %d"
lea     eax, [esp+6Ch+var_24]
push    eax
call    sscanf_
add     esp, 10h
loc_4A659B:                             ; CODE XREF: sub_4A650B+4F↑j
inc     ecx
jmp     short loc_4A652D
loc_4A659E:                             ; CODE XREF: sub_4A650B+34↑j
mov     eax, esi
call    fclose_
cmp     ecx, 2
jle     short loc_4A65B3
mov     eax, esp
call    sub_4F90D9
jmp     short loc_4A65B8
loc_4A65B3:                             ; CODE XREF: sub_4A650B+9D↑j
call    sub_4F90E9
loc_4A65B8:                             ; CODE XREF: sub_4A650B+A6↑j
cmp     ecx, 16h
jle     short loc_4A65DE
lea     eax, [esp+60h+var_38]
call    sub_4F9113
jmp     short loc_4A65E3
loc_4A65C8:                             ; CODE XREF: sub_4A650B+1A↑j
mov     edx, 1
mov     ds:bMenu, edx
mov     ds:dword_5303FC, edx
call    sub_4F90E9
loc_4A65DE:                             ; CODE XREF: sub_4A650B+B0↑j
call    sub_4F9129
loc_4A65E3:                             ; CODE XREF: sub_4A650B+BB↑j
add     esp, 50h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A650B      endp
loc_4A6D5F:                             ; CODE XREF: WinMain(x,x,x,x)+564↓j
pop     ebp
pop     edi
pop     esi
pop     ebx
retn    10h
sub_4A6A5E      endp
_WinMain@16     proc near               ; CODE XREF: sub_4FFB41+99↓p
var_C4          = byte ptr -0C4h
WndClass        = WNDCLASSA ptr -74h
Msg             = tagMSG ptr -4Ch
Rect            = tagRECT ptr -30h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
hInstance       = dword ptr  4
hPrevInstance   = dword ptr  8
lpCmdLine       = dword ptr  0Ch
nShowCmd        = dword ptr  10h
push    ebx
push    esi
push    edi
push    ebp
sub     esp, 0B4h
mov     ecx, 14h
mov     edi, esp
mov     esi, offset byte_4A64AB
rep movsd
xor     ebp, ebp
mov     [esp+0C4h+var_18], ebp
lea     edi, [esp+0C4h+Rect]
mov     esi, offset byte_4A64FB
movsd
movsd
movsd
movsd
mov     edx, offset aMegamanExe ; "MEGAMAN.EXE"
mov     eax, offset aCapcomAvi ; "CAPCOM.AVI"
call    sub_4F0927
test    eax, eax
jnz     short loc_4A6DC3
push    10h             ; uType
push    offset Caption  ; "Error"
push    offset Text     ; "Please Insert Megaman CD-ROM."
push    ebp             ; hWnd
call    cs:__imp_MessageBoxA
jmp     loc_4A72BF
loc_5026EE:                             ; CODE XREF: __AddThreadData_+51↑j
call    ds:off_551FF4
mov     eax, ecx
pop     esi
pop     ecx
pop     ebx
retn
__AddThreadData_ endp
__RemoveThreadData_ proc near           ; CODE XREF: sub_50017E+2A↑p
push    ebx
push    ecx
push    edx
mov     ecx, eax
call    ds:off_551FF0
mov     ebx, offset dword_89844C
mov     edx, ds:dword_89844C
jmp     short loc_502736
sub_4F9129      proc near               ; CODE XREF: sub_4A650B:loc_4A65DE↑p
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset unk_551F70
jmp     short loc_4F911C
sub_4F9129      endp
sub_4F90E9      proc near               ; CODE XREF: sub_4A650B:loc_4A65B3↑p
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset unk_551F48
jmp     short loc_4F90E2
sub_4F90E9      endp
loc_4A65E3:                             ; CODE XREF: sub_4A650B+BB↑j
add     esp, 50h
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A650B      endp
sub_4A65EB      proc near               ; CODE XREF: WinMain(x,x,x,x)+554↓p
var_4C          = byte ptr -4Ch
var_4B          = byte ptr -4Bh
var_24          = byte ptr -24h
var_23          = byte ptr -23h
push    ebx
push    ecx
push    edx
push    esi
sub     esp, 3Ch
mov     edx, offset aWt ; "wt"
mov     eax, offset aMegamanCfg ; "MEGAMAN.CFG"
call    sub_4F93C1
mov     edx, eax
mov     ecx, eax
test    eax, eax
jz      loc_4A669C
mov     eax, esp
call    sub_4F90BD
lea     eax, [esp+4Ch+var_24]
call    sub_4F90F7
mov     ebx, ds:bMenu
push    ebx
push    offset aD       ; "%d\n"
push    edx
call    sub_4F97C4
add     esp, 0Ch
mov     esi, ds:dword_5303FC
push    esi
push    offset aD       ; "%d\n"
push    edx
call    sub_4F97C4
add     esp, 0Ch
xor     edx, edx
loc_4A6F25:                             ; CODE XREF: WinMain(x,x,x,x)+16C↑j
push    0               ; lpParam
mov     edx, [esp+0C8h+hInstance]
push    edx             ; hInstance
push    0               ; hMenu
push    0               ; hWndParent
push    ecx             ; nHeight
push    esi             ; nWidth
push    eax             ; Y
push    ebx             ; X
push    edi             ; dwStyle
push    offset WindowName ; "Megaman"
push    offset WindowName ; "Megaman"
push    0               ; dwExStyle
call    cs:__imp_CreateWindowExA
mov     ds:hWnd, eax
push    5               ; nCmdShow
push    eax             ; hWnd
call    cs:__imp_ShowWindow
mov     ecx, ds:hWnd
push    ecx             ; hWnd
call    cs:__imp_UpdateWindow
call    sub_4A67C5
mov     ebx, ds:bMenu
mov     edx, ds:hWnd
mov     eax, offset aCapcomAvi ; "CAPCOM.AVI"
call    sub_4F9933
cmp     ds:byte_530418, 0
jnz     loc_4A72BF
mov     eax, ds:hWnd
mov     ecx, offset dword_530400
mov     ebx, offset dword_5303FC
mov     edx, offset bMenu
call    sub_4F7BBA
mov     edx, eax
test    eax, eax
jz      short loc_4A6FC5
loc_4A65B3:                             ; CODE XREF: sub_4A650B+9D↑j
call    sub_4F90E9
loc_4A6582:                             ; CODE XREF: sub_4A650B+6E↑j
add     eax, edx
lea     edx, [eax+1]
push    edx
push    eax
push    offset aDD      ; "%d %d"
lea     eax, [esp+6Ch+var_24]
push    eax
call    sscanf_
add     esp, 10h
loc_4A65C8:                             ; CODE XREF: sub_4A650B+1A↑j
mov     edx, 1
mov     ds:bMenu, edx
mov     ds:dword_5303FC, edx
call    sub_4F90E9
loc_4A656C:                             ; CODE XREF: sub_4A650B+3F↑j
lea     eax, [ecx+ecx]
cmp     ecx, 16h
jge     short loc_4A657B
sub     eax, 4
mov     edx, esp
jmp     short loc_4A6582
loc_4A655C:                             ; CODE XREF: sub_4A650B+3D↑j
lea     eax, [esp+60h+var_24]
call    unknown_libname_37 ; Watcom v9-*1.5  32bit NT runtime
mov     ds:dword_5303FC, eax
jmp     short loc_4A659B
loc_4A659B:                             ; CODE XREF: sub_4A650B+4F↑j
inc     ecx
jmp     short loc_4A652D
loc_502736:                             ; CODE XREF: __RemoveThreadData_+16↑j
test    edx, edx
jnz     short loc_502712
loc_4A654C:                             ; CODE XREF: sub_4A650B+38↑j
lea     eax, [esp+60h+var_24]
call    unknown_libname_37 ; Watcom v9-*1.5  32bit NT runtime
mov     ds:bMenu, eax
jmp     short loc_4A659B
loc_4A65DE:                             ; CODE XREF: sub_4A650B+B0↑j
call    sub_4F9129
loc_4A659E:                             ; CODE XREF: sub_4A650B+34↑j
mov     eax, esi
call    fclose_
cmp     ecx, 2
jle     short loc_4A65B3
mov     eax, esp
call    sub_4F90D9
jmp     short loc_4A65B8
loc_4A65B8:                             ; CODE XREF: sub_4A650B+A6↑j
cmp     ecx, 16h
jle     short loc_4A65DE
lea     eax, [esp+60h+var_38]
call    sub_4F9113
jmp     short loc_4A65E3
loc_4A657B:                             ; CODE XREF: sub_4A650B+67↑j
sub     eax, 2Ch ; ','
lea     edx, [esp+60h+var_38]
loc_4A652D:                             ; CODE XREF: sub_4A650B+91↓j
mov     ebx, esi
mov     edx, 14h
lea     eax, [esp+60h+var_24]
call    fgets_
test    eax, eax
jz      short loc_4A659E
test    ecx, ecx
jbe     short loc_4A654C
cmp     ecx, 1
jz      short loc_4A655C
jmp     short loc_4A656C
loc_4A6ED4:                             ; CODE XREF: WinMain(x,x,x,x)+15A↑j
push    eax             ; bMenu
push    edi             ; dwStyle
lea     eax, [esp+0CCh+Rect]
push    eax             ; lpRect
call    cs:__imp_AdjustWindowRect
mov     esi, [esp+0C4h+Rect.right]
sub     esi, [esp+0C4h+Rect.left]
mov     ecx, [esp+0C4h+Rect.bottom]
sub     ecx, [esp+0C4h+Rect.top]
mov     edx, ds:nWidth
sub     edx, esi
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
mov     ebx, eax
mov     edx, ds:cy
sub     edx, ecx
mov     eax, edx
sar     edx, 1Fh
sub     eax, edx
sar     eax, 1
sub_4F90D9      proc near               ; CODE XREF: sub_438070+229↑p
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, eax
loc_4F90E2:                             ; CODE XREF: sub_4F90E9+C↓j
mov     eax, offset byte_887A0C
jmp     short loc_4F9121
sub_4F90D9      endp
sub_4F9113      proc near               ; CODE XREF: sub_438070+233↑p
push    ebx
push    edx
mov     ebx, 14h
mov     edx, eax
loc_4F911C:                             ; CODE XREF: sub_4F9129+C↓j
mov     eax, offset byte_887A34
loc_4F9121:                             ; CODE XREF: sub_4F90BD+C↑j
call    memcpy_
pop     edx
pop     ebx
retn
sub_4F9113      endp
loc_4A6FC5:                             ; CODE XREF: WinMain(x,x,x,x)+247↑j
mov     eax, ds:hWnd
call    sub_4F9F7D
mov     edx, eax
test    eax, eax
jnz     short loc_4A6FAF
call    sub_4A67C5
call    sub_4A66A4
mov     edx, offset sub_4A0A2C
xor     eax, eax
call    sub_4EED79
call    cs:__imp_GetTickCount
xor     ebx, ebx
mov     dword ptr [esp+0C4h+var_20+4], ebx
mov     dword ptr [esp+0C4h+var_20], eax
fild    [esp+0C4h+var_20]
xor     eax, eax
mov     al, ds:byte_77EAC1
mov     [esp+0C4h+var_14], eax
fild    word ptr [esp+0C4h+var_14]
fmul    ds:dbl_50A390
faddp   st(1), st
fstp    ds:flt_55BDB4
sub_4F97C4      proc near               ; CODE XREF: sub_4A65EB+3F↑p
var_C           = dword ptr -0Ch
arg_0           = dword ptr  4
arg_4           = dword ptr  8
arg_8           = byte ptr  0Ch
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
sub_4F97C4      endp
sub_4A67C5      proc near               ; CODE XREF: sub_4A6A5E+295↓p
push    ecx
push    edx
push    edi
cmp     ds:bMenu, 0
jz      short loc_4A67EF
cmp     ds:dword_530404, 1
jnz     short loc_4A680B
push    0               ; bShow
call    cs:__imp_ShowCursor
xor     edi, edi
mov     ds:dword_530404, edi
pop     edi
pop     edx
pop     ecx
retn
loc_4A67EF:                             ; CODE XREF: sub_4A67C5+A↑j
cmp     ds:dword_530404, 0
jnz     short loc_4A680B
push    1               ; bShow
call    cs:__imp_ShowCursor
mov     ds:dword_530404, 1
loc_4A680B:                             ; CODE XREF: sub_4A67C5+13↑j
pop     edi
pop     edx
pop     ecx
retn
sub_4A67C5      endp
sub_4F9933      proc near               ; CODE XREF: WinMain(x,x,x,x)+218↑p
strCommand      = byte ptr -78h
Msg             = MSG ptr -28h
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
loc_4F99A1:                             ; CODE XREF: sub_4F9933+39↑j
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
loc_4F99C8:                             ; CODE XREF: sub_4F9933+70↑j
push    offset sub_4F985F ; dwNewLong
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
loc_4F9A2A:                             ; CODE XREF: sub_4F9933+12C↓j
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_TranslateMessage
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_DispatchMessageA
cmp     ds:byte_551FA8, 0
jz      short loc_4F9A61
loc_4F9A4B:                             ; CODE XREF: sub_4F9933+F5↑j
push    0               ; wMsgFilterMax
push    0               ; wMsgFilterMin
push    0               ; hWnd
lea     eax, [esp+84h+Msg]
push    eax             ; lpMsg
call    cs:__imp_GetMessageA
test    eax, eax
jnz     short loc_4F9A2A
loc_4F9A61:                             ; CODE XREF: sub_4F9933+116↑j
push    0               ; hwndCallback
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
loc_4F9ACF:                             ; CODE XREF: sub_4F9933+68↑j
add     esp, 6Ch
pop     edi
pop     esi
pop     ecx
retn
sub_4F9933      endp
loc_4A669C:                             ; CODE XREF: sub_4A65EB+1C↑j
add     esp, 3Ch
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A65EB      endp
sub_4A66A4      proc near               ; CODE XREF: WinMain(x,x,x,x)+274↓p
push    ebx
push    ecx
push    edx
push    esi
call    nullsub_1
call    sub_4EF08B
mov     edx, 78h ; 'x'
mov     eax, 0A0h
call    sub_4EF0C6
mov     eax, 180h
call    sub_4EF0D2
mov     edx, offset unk_570D7C
mov     eax, offset unk_5708B4
call    sub_4EECF9
mov     edx, offset unk_570DC4
mov     eax, offset unk_5708FC
call    sub_4EECF9
mov     edx, offset unk_5731D4
mov     eax, offset unk_572D0C
call    sub_4EECF9
mov     ecx, 8
mov     ebx, offset unk_5708FC
mov     edx, ecx
mov     eax, offset unk_5708B4
call    sub_4F8C1D
mov     edx, 4001h
mov     ds:dword_5708E8, edx
mov     ds:dword_570930, edx
mov     ecx, 4
mov     ebx, offset dword_570930
mov     edx, ecx
mov     eax, offset dword_5708E8
call    nullsub_2
mov     edx, ds:hWnd
mov     eax, ds:dword_55BDAC
call    sub_4F8C23
call    sub_4D8930
xor     eax, eax
call    nullsub_3
call    sub_4A680F
xor     ah, ah
mov     ds:byte_77EAC6, ah
mov     ds:dword_77EA74, offset unk_77E4C4
mov     ds:byte_77EAC1, 2
xor     esi, esi
mov     ds:dword_77E738, esi
mov     ds:dword_77E710, esi
mov     ds:dword_77E720, esi
xor     edx, edx
sub_4F7BBA      proc near               ; CODE XREF: sub_4A6A5E+290↑p
var_120         = dword ptr -120h
var_11C         = dword ptr -11Ch
var_118         = dword ptr -118h
var_114         = dword ptr -114h
var_110         = dword ptr -110h
var_10C         = dword ptr -10Ch
var_B8          = dword ptr -0B8h
var_A4          = dword ptr -0A4h
var_A0          = byte ptr -0A0h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_70          = dword ptr -70h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = dword ptr -10h
push    esi
push    edi
push    ebp
sub     esp, 114h
mov     ebp, eax
mov     esi, edx
mov     edi, ebx
mov     [esp+120h+var_10], ecx
xor     edx, edx
mov     ds:dword_88787C, edx
push    edx             ; hWnd
call    cs:__imp_GetDC
mov     ebx, eax
push    8               ; index
push    eax             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:dword_88788C, eax
push    0Ah             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     ds:dword_887884, eax
push    0Eh             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     [esp+120h+var_14], eax
push    0Ch             ; index
push    ebx             ; hdc
call    cs:__imp_GetDeviceCaps
mov     edx, [esp+120h+var_14]
imul    edx, eax
mov     ds:dword_887888, edx
push    ebx             ; hDC
push    0               ; hWnd
call    cs:__imp_ReleaseDC
cmp     ds:dword_887888, 10h
jge     short loc_4F7C49
cmp     dword ptr [esi], 0
jnz     short loc_4F7C49
mov     dword ptr [esi], 1
loc_4F7C49:                             ; CODE XREF: sub_4F7BBA+82↑j
mov     ebx, 3000h
xor     edx, edx
mov     eax, offset word_783ED4
call    memset_
mov     ebx, 300h
xor     edx, edx
mov     eax, offset word_7873C4
call    memset_
xor     eax, eax
mov     ds:dword_887880, eax
loc_4F7C72:                             ; CODE XREF: sub_4F7BBA+53A↓j
cmp     [esp+120h+var_10], 0
jz      short loc_4F7CBD
xor     ecx, ecx
mov     ds:dword_551D1C, ecx
mov     ebx, 1
mov     ds:dword_786ED4, ebx
mov     ds:dword_786ED8, ebx
mov     edx, offset aSoftwareRender ; "Software Render"
mov     eax, offset unk_786EEC
call    strcpy_
push    ecx             ; lpContext
push    offset Callback ; lpCallback
call    DirectDrawEnumerateA
mov     eax, ds:dword_551D1C
mov     edx, [esp+120h+var_10]
mov     [edx], eax
loc_4F7CBD:                             ; CODE XREF: sub_4F7BBA+C0↑j
mov     eax, [edi]
cmp     eax, ds:dword_551D1C
jle     short loc_4F7CCF
mov     dword ptr [edi], 0
jmp     short loc_4F7CD3
loc_4F7CCF:                             ; CODE XREF: sub_4F7BBA+10B↑j
test    eax, eax
jnz     short loc_4F7CDA
loc_4F7CD3:                             ; CODE XREF: sub_4F7BBA+113↑j
or      byte ptr ds:dword_88787C, 1
loc_4F7CDA:                             ; CODE XREF: sub_4F7BBA+117↑j
mov     eax, [edi]
lea     edx, [esp+120h+var_18]
call    sub_4F12FE
test    eax, eax
jnz     short loc_4F7CF6
mov     eax, 1
jmp     loc_4F849B
loc_4F7CF6:                             ; CODE XREF: sub_4F7BBA+130↑j
mov     edx, [edi]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
cmp     ds:dword_786ED8[eax*4], 0
jz      short loc_4F7D15
or      byte ptr ds:dword_88787C, 2
loc_4F7D15:                             ; CODE XREF: sub_4F7BBA+152↑j
mov     eax, [esp+120h+var_18]
mov     eax, [eax]
push    offset dword_551CF0
push    offset word_4F0C3E
mov     edx, [esp+128h+var_18]
push    edx
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F7D40
mov     eax, 2
jmp     loc_4F849B
loc_4F7D40:                             ; CODE XREF: sub_4F7BBA+17A↑j
mov     eax, [esp+120h+var_18]
mov     eax, [eax]
mov     ecx, [esp+120h+var_18]
push    ecx
call    dword ptr [eax+8]
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F7D7F
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    offset dword_551D0C
push    offset word_4F0CEE
push    eax
call    dword ptr [edx]
test    eax, eax
jz      short loc_4F7D7F
mov     eax, 3
jmp     loc_4F849B
loc_4F7D7F:                             ; CODE XREF: sub_4F7BBA+1A1↑j
test    byte ptr ds:dword_88787C, 2
jnz     short loc_4F7D93
cmp     dword ptr [esi], 0
jnz     short loc_4F7D93
mov     dword ptr [esi], 1
loc_4F7D93:                             ; CODE XREF: sub_4F7BBA+1CC↑j
mov     edx, [edi]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
lea     edx, [eax+40h]
mov     ebx, 0FCh
mov     eax, offset unk_887780
call    memcpy_
mov     eax, esp
call    sub_4F188E
cmp     dword ptr [esi], 0
jz      loc_4F7EAF
test    byte ptr ds:dword_88787C, 1
jz      loc_4F7EAF
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    813h
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jz      short loc_4F7DF7
loc_4F7DED:                             ; CODE XREF: sub_4F7BBA+321↓j
mov     eax, 5
jmp     loc_4F849B
loc_4F7DF7:                             ; CODE XREF: sub_4F7BBA+231↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    0
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
mov     [esp+120h+var_11C], 1
mov     [esp+120h+var_B8], 200h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7E47
loc_4F7E3D:                             ; CODE XREF: sub_4F7BBA+432↓j
mov     eax, 9
jmp     loc_4F849B
loc_4F7E47:                             ; CODE XREF: sub_4F7BBA+281↑j
mov     eax, ds:dword_551CF4
call    sub_4F190F
mov     [esp+120h+var_11C], 7
mov     [esp+120h+var_114], 280h
mov     [esp+120h+var_118], 1E0h
mov     [esp+120h+var_B8], 840h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF8
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7E96
loc_4F7E8C:                             ; CODE XREF: sub_4F7BBA+48C↓j
mov     eax, 0Ah
jmp     loc_4F849B
loc_4F7E96:                             ; CODE XREF: sub_4F7BBA+2D0↑j
mov     ebx, 10h
mov     edx, offset unk_551D24
mov     eax, offset dword_782BE4
call    memcpy_
jmp     loc_4F80B0
loc_4F7EAF:                             ; CODE XREF: sub_4F7BBA+20B↑j
cmp     dword ptr [esi], 0
jnz     short loc_4F7EC1
test    byte ptr ds:dword_88787C, 2
jnz     loc_4F7F9C
loc_4F7EC1:                             ; CODE XREF: sub_4F7BBA+2F8↑j
or      byte ptr ds:dword_88787C+1, 1
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    813h
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jnz     loc_4F7DED
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    0
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
mov     [esp+120h+var_11C], 21h ; '!'
mov     [esp+120h+var_B8], 2218h
mov     [esp+120h+var_10C], 1
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7F39
mov     eax, 6
jmp     loc_4F849B
loc_4F7F39:                             ; CODE XREF: sub_4F7BBA+373↑j
mov     eax, ds:dword_551CF4
call    sub_4F190F
mov     [esp+120h+var_28], 4
mov     eax, ds:dword_551CF4
mov     edx, [eax]
push    offset dword_551CF8
lea     ecx, [esp+124h+var_28]
push    ecx
push    eax
call    dword ptr [edx+30h]
test    eax, eax
jz      short loc_4F7F74
mov     eax, 7
jmp     loc_4F849B
loc_4F7F74:                             ; CODE XREF: sub_4F7BBA+3AE↑j
mov     ebx, 10h
mov     edx, offset unk_551D24
mov     eax, offset dword_782BE4
call    memcpy_
mov     edx, 1E0h
mov     eax, 280h
call    sub_4F134B
jmp     loc_4F80B7
loc_4F7F9C:                             ; CODE XREF: sub_4F7BBA+301↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    8
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jz      short loc_4F7FB8
mov     eax, 8
jmp     loc_4F849B
loc_4F7FB8:                             ; CODE XREF: sub_4F7BBA+3F2↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+4Ch]
mov     [esp+120h+var_11C], 1
mov     [esp+120h+var_B8], 200h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jnz     loc_4F7E3D
mov     [esp+120h+var_11C], 7
mov     [esp+120h+var_114], 280h
mov     [esp+120h+var_118], 1E0h
mov     [esp+120h+var_B8], 40h ; '@'
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F8025
mov     [esp+120h+var_B8], 2040h
jmp     short loc_4F802D
loc_4F8025:                             ; CODE XREF: sub_4F7BBA+45F↑j
mov     [esp+120h+var_B8], 840h
loc_4F802D:                             ; CODE XREF: sub_4F7BBA+469↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF8
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jnz     loc_4F7E8C
mov     eax, ds:dword_551CF8
call    sub_4F190F
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551D08
push    0
push    eax
call    dword ptr [edx+10h]
test    eax, eax
jz      short loc_4F8078
mov     eax, 0Bh
jmp     loc_4F849B
loc_4F8078:                             ; CODE XREF: sub_4F7BBA+4B2↑j
mov     eax, ds:dword_551D08
mov     edx, [eax]
push    ebp
push    0
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551CF4
mov     edx, [eax]
mov     ecx, ds:dword_551D08
push    ecx
push    eax
call    dword ptr [edx+70h]
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F80B0
mov     edx, 1E0h
mov     eax, 280h
call    sub_4F134B
loc_4F80B0:                             ; CODE XREF: sub_4F7BBA+2F0↑j
or      byte ptr ds:dword_88787C+1, 2
loc_4F80B7:                             ; CODE XREF: sub_4F7BBA+3DD↑j
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F8103
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    0
push    offset dword_551D10
mov     ecx, ds:dword_551CF8
push    ecx
push    offset word_4F0D1E
push    eax
call    dword ptr [edx+20h]
test    eax, eax
jz      short loc_4F8103
cmp     dword ptr [esi], 0
jnz     short loc_4F80F9
mov     dword ptr [esi], 1
mov     eax, ebp
call    sub_4F84A5
jmp     loc_4F7C72
loc_4F80F9:                             ; CODE XREF: sub_4F7BBA+52B↑j
mov     eax, 0Dh
jmp     loc_4F849B
loc_4F8103:                             ; CODE XREF: sub_4F7BBA+504↑j
call    sub_4F1B45
test    eax, eax
jnz     short loc_4F8116
mov     eax, 0Eh
jmp     loc_4F849B
loc_4F8116:                             ; CODE XREF: sub_4F7BBA+550↑j
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F8153
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+128h+var_120]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     eax, [esp+120h+var_110]
mov     ds:dword_88776C, eax
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     loc_4F8499
loc_4F8153:                             ; CODE XREF: sub_4F7BBA+563↑j
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    0
push    offset dword_551D14
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F8173
mov     eax, 0Fh
jmp     loc_4F849B
loc_4F8173:                             ; CODE XREF: sub_4F7BBA+5AD↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, ds:dword_551D14
push    ebx
push    eax
call    dword ptr [edx+14h]
test    eax, eax
jz      short loc_4F8193
mov     eax, 10h
jmp     loc_4F849B
loc_4F8193:                             ; CODE XREF: sub_4F7BBA+5CD↑j
mov     ebx, 2Ch ; ','
xor     edx, edx
lea     eax, [esp+120h+var_54]
call    memset_
mov     [esp+120h+var_54], 2Ch ; ','
xor     edi, edi
mov     [esp+120h+var_50], edi
mov     [esp+120h+var_4C], edi
mov     [esp+120h+var_48], 280h
mov     [esp+120h+var_44], 1E0h
mov     [esp+120h+var_40], 0BF800000h
mov     ebx, 3F800000h
mov     [esp+120h+var_3C], ebx
mov     esi, 40000000h
mov     [esp+120h+var_38], esi
mov     [esp+120h+var_34], esi
mov     [esp+120h+var_30], edi
mov     [esp+120h+var_2C], ebx
mov     edx, 100h
mov     eax, edx
call    sub_4F203B
mov     ds:dword_551D00, eax
mov     edx, 20h ; ' '
mov     eax, edx
call    sub_4F203B
mov     ds:dword_551D04, eax
mov     eax, ds:dword_551D14
mov     edx, [eax]
lea     ecx, [esp+120h+var_54]
push    ecx
push    eax
call    dword ptr [edx+44h]
test    eax, eax
jz      short loc_4F8252
mov     eax, 11h
jmp     loc_4F849B
loc_4F8252:                             ; CODE XREF: sub_4F7BBA+68C↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, ds:dword_551D14
push    ecx
push    eax
call    dword ptr [edx+30h]
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    edi
push    offset dword_551D18
push    eax
call    dword ptr [edx+14h]
test    eax, eax
jz      short loc_4F8283
mov     eax, 12h
jmp     loc_4F849B
loc_4F8283:                             ; CODE XREF: sub_4F7BBA+6BD↑j
mov     ebx, 50h ; 'P'
xor     edx, edx
lea     eax, [esp+120h+var_A4]
call    memset_
mov     [esp+120h+var_A4], 50h ; 'P'
mov     [esp+120h+var_90], edi
mov     [esp+120h+var_8C], edi
xor     ebp, ebp
mov     [esp+120h+var_88], edi
mov     [esp+120h+var_84], 3F800000h
lea     edi, [esp+120h+var_A0]
lea     esi, [esp+120h+var_90]
movsd
movsd
movsd
movsd
xor     edx, edx
mov     [esp+120h+var_70], edx
mov     [esp+120h+var_58], 20h ; ' '
mov     eax, ds:dword_551D18
mov     edx, [eax]
lea     ecx, [esp+120h+var_A4]
push    ecx
push    eax
call    dword ptr [edx+0Ch]
mov     eax, ds:dword_551D18
mov     edx, [eax]
push    offset dword_887890
mov     ebx, ds:dword_551D10
push    ebx
push    eax
call    dword ptr [edx+14h]
mov     eax, ds:dword_551D14
mov     edx, [eax]
mov     esi, ds:dword_887890
push    esi
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    2
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebp
push    3
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    1
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    5
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebp
push    6
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    4
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1
push    1
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    1
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    11h
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    10h
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    0Fh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    18h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    19h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    16h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    29h ; ')'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    9
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    7
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    0Eh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Fh
push    eax
call    dword ptr [edx+58h]
call    sub_4F1499
push    41200000h
push    3F800000h
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_4F387C
loc_4F8499:                             ; CODE XREF: sub_4F7BBA+594↑j
xor     eax, eax
loc_4F849B:                             ; CODE XREF: sub_4F7BBA+137↑j
add     esp, 114h
pop     ebp
pop     edi
pop     esi
retn
sub_4F7BBA      endp
sub_4F90F7      proc near               ; CODE XREF: sub_438070+2E↑p
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset byte_887A34
jmp     short loc_4F9121
sub_4F90F7      endp
loc_4F911C:                             ; CODE XREF: sub_4F9129+C↓j
mov     eax, offset byte_887A34
sub_4F90BD      proc near               ; CODE XREF: sub_438070+24↑p
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset byte_887A0C
jmp     short loc_4F9121
sub_4F90BD      endp
loc_502712:                             ; CODE XREF: __RemoveThreadData_+3E↓j
cmp     ecx, [edx+4]
jnz     short loc_502732
cmp     dword ptr [edx+0Ch], 0
jz      short loc_502725
mov     eax, [edx+8]
call    _nfree_
loc_4F9121:                             ; CODE XREF: sub_4F90BD+C↑j
call    memcpy_
pop     edx
pop     ebx
retn
sub_4F9113      endp
sub_4F9129      proc near               ; CODE XREF: sub_4A650B:loc_4A65DE↑p
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset unk_551F70
jmp     short loc_4F911C
sub_4F9129      endp
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
__CHP           proc near               ; CODE XREF: sub_43B629+39↑p
var_7           = byte ptr -7
var_4           = dword ptr -4
push    eax
fstcw   word ptr [esp+4+var_4]
wait
push    [esp+4+var_4]
mov     [esp+8+var_7], 1Fh
fldcw   word ptr [esp]
frndint
fldcw   word ptr [esp+8+var_4]
wait
lea     esp, [esp+8]
retn
__CHP           endp
loc_4F90E2:                             ; CODE XREF: sub_4F90E9+C↓j
mov     eax, offset byte_887A0C
jmp     short loc_4F9121
sub_4F90D9      endp
sub_4F90E9      proc near               ; CODE XREF: sub_4A650B:loc_4A65B3↑p
push    ebx
push    edx
mov     ebx, 28h ; '('
mov     edx, offset unk_551F48
jmp     short loc_4F90E2
sub_4F90E9      endp
sub_4F90F7      proc near               ; CODE XREF: sub_438070+2E↑p
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset byte_887A34
jmp     short loc_4F9121
sub_4F90F7      endp
sub_4F9105      proc near               ; CODE XREF: sub_438070+21D↑p
push    ebx
push    edx
mov     ebx, 14h
mov     edx, offset unk_551F70
jmp     short loc_4F9121
sub_4F9105      endp
sub_4F9113      proc near               ; CODE XREF: sub_438070+233↑p
push    ebx
push    edx
mov     ebx, 14h
mov     edx, eax
loc_4F99A1:                             ; CODE XREF: sub_4F9933+39↑j
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
loc_4F7CBD:                             ; CODE XREF: sub_4F7BBA+C0↑j
mov     eax, [edi]
cmp     eax, ds:dword_551D1C
jle     short loc_4F7CCF
mov     dword ptr [edi], 0
jmp     short loc_4F7CD3
loc_502725:                             ; CODE XREF: __RemoveThreadData_+21↑j
mov     eax, [edx]
mov     [ebx], eax
mov     eax, edx
call    _nfree_
jmp     short loc_50273A
sub_4F188E      proc near               ; CODE XREF: sub_4F134B+9↑p
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ebx, 7Ch ; '|'
xor     edx, edx
call    memset_
mov     dword ptr [ecx], 7Ch ; '|'
mov     dword ptr [ecx+48h], 20h ; ' '
pop     edx
pop     ecx
pop     ebx
retn
sub_4F188E      endp
loc_4F9A2A:                             ; CODE XREF: sub_4F9933+12C↓j
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_TranslateMessage
lea     eax, [esp+78h+Msg]
push    eax             ; lpMsg
call    cs:__imp_DispatchMessageA
cmp     ds:byte_551FA8, 0
jz      short loc_4F9A61
loc_4F7E47:                             ; CODE XREF: sub_4F7BBA+281↑j
mov     eax, ds:dword_551CF4
call    sub_4F190F
mov     [esp+120h+var_11C], 7
mov     [esp+120h+var_114], 280h
mov     [esp+120h+var_118], 1E0h
mov     [esp+120h+var_B8], 840h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF8
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7E96
sub_4A680F      proc near               ; CODE XREF: sub_4A66A4+AD↑p
push    ebx
push    ecx
push    edx
push    0F0h
mov     ecx, 140h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset unk_77E4D8
call    sub_4F88DA
push    0F0h
mov     ecx, 140h
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_77E4C4
call    sub_4F8838
push    0F0h
mov     ecx, 140h
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_77E568
call    sub_4F88DA
push    0F0h
mov     ecx, 140h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset unk_77E554
call    sub_4F8838
mov     eax, offset unk_77E4C4
call    sub_4A6890
mov     eax, offset unk_77E554
call    sub_4A6890
pop     edx
pop     ecx
pop     ebx
retn
sub_4A680F      endp
loc_4F7E96:                             ; CODE XREF: sub_4F7BBA+2D0↑j
mov     ebx, 10h
mov     edx, offset unk_551D24
mov     eax, offset dword_782BE4
call    memcpy_
jmp     loc_4F80B0
loc_4F7C49:                             ; CODE XREF: sub_4F7BBA+82↑j
mov     ebx, 3000h
xor     edx, edx
mov     eax, offset word_783ED4
call    memset_
mov     ebx, 300h
xor     edx, edx
mov     eax, offset word_7873C4
call    memset_
xor     eax, eax
mov     ds:dword_887880, eax
loc_4F7F74:                             ; CODE XREF: sub_4F7BBA+3AE↑j
mov     ebx, 10h
mov     edx, offset unk_551D24
mov     eax, offset dword_782BE4
call    memcpy_
mov     edx, 1E0h
mov     eax, 280h
call    sub_4F134B
jmp     loc_4F80B7
loc_4F7EC1:                             ; CODE XREF: sub_4F7BBA+2F8↑j
or      byte ptr ds:dword_88787C+1, 1
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    813h
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jnz     loc_4F7DED
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    0
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
mov     [esp+120h+var_11C], 21h ; '!'
mov     [esp+120h+var_B8], 2218h
mov     [esp+120h+var_10C], 1
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7F39
mov     eax, 6
jmp     loc_4F849B
loc_4F7C72:                             ; CODE XREF: sub_4F7BBA+53A↓j
cmp     [esp+120h+var_10], 0
jz      short loc_4F7CBD
xor     ecx, ecx
mov     ds:dword_551D1C, ecx
mov     ebx, 1
mov     ds:dword_786ED4, ebx
mov     ds:dword_786ED8, ebx
mov     edx, offset aSoftwareRender ; "Software Render"
mov     eax, offset unk_786EEC
call    strcpy_
push    ecx             ; lpContext
push    offset Callback ; lpCallback
call    DirectDrawEnumerateA
mov     eax, ds:dword_551D1C
mov     edx, [esp+120h+var_10]
mov     [edx], eax
sub_4F12FE      proc near               ; CODE XREF: sub_4F7BBA+129↓p
push    ebx
push    ecx
mov     ecx, edx
mov     ebx, 1
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
mov     edx, ds:dword_786ED4[eax]
test    edx, edx
jz      short loc_4F1330
push    0               ; pUnkOuter
push    ecx             ; lplpDD
push    0               ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346
jmp     short loc_4F1344
loc_4F1330:                             ; CODE XREF: sub_4F12FE+20↑j
push    edx             ; pUnkOuter
push    ecx             ; lplpDD
add     eax, offset dword_786ED4
add     eax, 8
push    eax             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346
loc_4F1344:                             ; CODE XREF: sub_4F12FE+30↑j
xor     ebx, ebx
loc_4F1346:                             ; CODE XREF: sub_4F12FE+2E↑j
mov     eax, ebx
pop     ecx
pop     ebx
retn
sub_4F12FE      endp
sub_4EED79      proc near               ; CODE XREF: sub_49E0D7+213↑p
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
sub_4EED79      endp
loc_4F8078:                             ; CODE XREF: sub_4F7BBA+4B2↑j
mov     eax, ds:dword_551D08
mov     edx, [eax]
push    ebp
push    0
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551CF4
mov     edx, [eax]
mov     ecx, ds:dword_551D08
push    ecx
push    eax
call    dword ptr [edx+70h]
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F80B0
mov     edx, 1E0h
mov     eax, 280h
call    sub_4F134B
loc_4A6FAF:                             ; CODE XREF: WinMain(x,x,x,x)+26D↓j
mov     eax, ds:hWnd
call    sub_4F84A5
mov     eax, edx
call    sub_4F8674
jmp     loc_4A72BF
sub_4EECF9      proc near               ; CODE XREF: sub_426817+2C↑p
push    ebx
sub     edx, eax
lea     ebx, [edx+4]
xor     edx, edx
call    memset_
pop     ebx
retn
sub_4EECF9      endp
loc_4F7FB8:                             ; CODE XREF: sub_4F7BBA+3F2↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+4Ch]
mov     [esp+120h+var_11C], 1
mov     [esp+120h+var_B8], 200h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jnz     loc_4F7E3D
mov     [esp+120h+var_11C], 7
mov     [esp+120h+var_114], 280h
mov     [esp+120h+var_118], 1E0h
mov     [esp+120h+var_B8], 40h ; '@'
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F8025
mov     [esp+120h+var_B8], 2040h
jmp     short loc_4F802D
loc_4F8153:                             ; CODE XREF: sub_4F7BBA+563↑j
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    0
push    offset dword_551D14
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F8173
mov     eax, 0Fh
jmp     loc_4F849B
sub_4F8C1D      proc near               ; CODE XREF: sub_4A66A4+65↑p
mov     ds:dword_887A48, eax
sub_4F8C1D      endp
loc_4F7CDA:                             ; CODE XREF: sub_4F7BBA+117↑j
mov     eax, [edi]
lea     edx, [esp+120h+var_18]
call    sub_4F12FE
test    eax, eax
jnz     short loc_4F7CF6
mov     eax, 1
jmp     loc_4F849B
sub_4F97E5      proc near               ; CODE XREF: sub_4F9933+74↓p
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
loc_4F9810:                             ; CODE XREF: sub_4F97E5+58↓j
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
loc_4F9816:                             ; CODE XREF: sub_4F97E5+29↑j
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
sub_4F97E5      endp
sub_4F8C23      proc near               ; CODE XREF: sub_4A66A4+9C↑p
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = dword ptr -10h
push    ebx
push    ecx
push    esi
sub     esp, 18h
mov     ecx, eax
mov     esi, edx
mov     eax, ds:dword_887A48
mov     byte ptr [eax], 0
mov     eax, ds:dword_887A48
mov     byte ptr [eax+1], 40h ; '@'
mov     eax, ds:dword_887A48
mov     byte ptr [eax+2], 0FFh
mov     eax, ds:dword_887A48
mov     byte ptr [eax+3], 0FFh
mov     ebx, 100h
xor     edx, edx
mov     eax, offset byte_88790C
call    memset_
push    0
push    offset dword_551F38
push    500h
push    ecx
call    DirectInputCreateA
test    eax, eax
jnz     loc_4F8D8A
mov     eax, ds:dword_551F38
mov     edx, [eax]
push    1
push    0
push    offset loc_4F8BBD
push    4
push    eax
call    dword ptr [edx+10h]
mov     edx, ds:dword_551F40
test    edx, edx
jz      loc_4F8D4A
mov     eax, edx
mov     edx, [edx]
push    offset dword_506A90
push    eax
call    dword ptr [edx+2Ch]
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    5
push    esi
push    eax
call    dword ptr [edx+34h]
mov     [esp+24h+var_24], 18h
mov     [esp+24h+var_20], 10h
mov     [esp+24h+var_18], 1
mov     [esp+24h+var_14], 0FFFFFC18h
mov     [esp+24h+var_10], 3E8h
xor     edx, edx
mov     [esp+24h+var_1C], edx
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     [esp+24h+var_1C], 4
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     [esp+24h+var_1C], 8
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     [esp+24h+var_1C], 14h
mov     eax, ds:dword_551F40
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    4
push    eax
call    dword ptr [edx+18h]
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]
loc_4F8D4A:                             ; CODE XREF: sub_4F8C23+76↑j
mov     eax, ds:dword_551F38
mov     edx, [eax]
push    0
push    offset dword_551F3C
push    offset byte_4F8ADD
push    eax
call    dword ptr [edx+0Ch]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    offset dword_507AB0
push    eax
call    dword ptr [edx+2Ch]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    0Ah
push    esi
push    eax
call    dword ptr [edx+34h]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]
loc_4F8D8A:                             ; CODE XREF: sub_4F8C23+52↑j
add     esp, 18h
pop     esi
pop     ecx
pop     ebx
sub_4F8C23      endp
loc_4F8025:                             ; CODE XREF: sub_4F7BBA+45F↑j
mov     [esp+120h+var_B8], 840h
loc_4F9A4B:                             ; CODE XREF: sub_4F9933+F5↑j
push    0               ; wMsgFilterMax
push    0               ; wMsgFilterMin
push    0               ; hWnd
lea     eax, [esp+84h+Msg]
push    eax             ; lpMsg
call    cs:__imp_GetMessageA
test    eax, eax
jnz     short loc_4F9A2A
sub_4F1B45      proc near               ; CODE XREF: sub_4F7BBA:loc_4F8103↓p
var_75          = byte ptr -75h
var_74          = byte ptr -74h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_38          = dword ptr -38h
var_18          = dword ptr -18h
push    ebx
push    ecx
push    edx
push    esi
push    edi
sub     esp, 64h
xor     ebx, ebx
cmp     ds:byte_782BF4, 0
jz      short loc_4F1B76
mov     ebx, 40h ; '@'
mov     edx, offset byte_782BF4
mov     eax, esp
call    memcpy_
xor     dl, dl
mov     ds:byte_782BF4, dl
mov     ebx, 1
loc_4F1B76:                             ; CODE XREF: sub_4F1B45+11↑j
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F1BAC
mov     [esp+78h+var_38], 20h ; ' '
mov     eax, ds:dword_551CF4
mov     edx, [eax]
lea     ecx, [esp+78h+var_38]
push    ecx
push    eax
call    dword ptr [edx+54h]
lea     edx, [esp+78h+var_38]
mov     eax, 1
call    sub_4F13D0
call    sub_4FBC14
jmp     short loc_4F1BCE
loc_4F1BAC:                             ; CODE XREF: sub_4F1B45+38↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    offset sub_4F11EA
push    eax
call    dword ptr [edx+20h]
cmp     ds:byte_782BF4, 0
jnz     short loc_4F1BCE
xor     eax, eax
jmp     loc_4F1D54
loc_4F1BCE:                             ; CODE XREF: sub_4F1B45+65↑j
test    ebx, ebx
jz      loc_4F1D4F
xor     ecx, ecx
mov     [esp+78h+var_18], ecx
jmp     loc_4F1CAE
loc_4F1BE1:                             ; CODE XREF: sub_4F1B45+1F4↓j
lea     eax, [edi+ebx]
mov     eax, [eax]
jmp     short loc_4F1C07
loc_4F1BE8:                             ; CODE XREF: sub_4F1B45+1E9↓j
cmp     [esp+78h+var_75], 2
jnz     short loc_4F1BFE
mov     eax, ds:dword_782C38[eax]
mov     ax, [ecx+eax]
jmp     loc_4F1D45
loc_4F1BFE:                             ; CODE XREF: sub_4F1B45+A8↑j
mov     eax, ds:dword_782C38[eax]
mov     eax, [ebx+eax]
loc_4F1C07:                             ; CODE XREF: sub_4F1B45+A1↑j
mov     ebx, [esp+78h+var_68]
and     ebx, eax
mov     cl, [esp+78h+var_74]
shl     ebx, cl
mov     esi, [esp+78h+var_64]
and     esi, eax
mov     cl, byte ptr [esp+78h+var_70]
shl     esi, cl
and     eax, [esp+78h+var_60]
mov     cl, byte ptr [esp+78h+var_6C]
shl     eax, cl
mov     cl, byte ptr ds:dword_782BF8
shr     ebx, cl
and     ebx, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     eax, cl
and     eax, ds:dword_782C0C
or      ebx, esi
or      eax, ebx
jz      short loc_4F1C5F
or      eax, ds:dword_782C10
loc_4F1C5F:                             ; CODE XREF: sub_4F1B45+112↑j
mov     ecx, [esp+78h+var_18]
shl     ecx, 3
cmp     ds:byte_782BF7, 2
jnz     short loc_4F1C7D
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*2], ax
jmp     short loc_4F1C88
loc_4F1C7D:                             ; CODE XREF: sub_4F1B45+128↑j
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*4], eax
loc_4F1C88:                             ; CODE XREF: sub_4F1B45+136↑j
inc     edx
jmp     loc_4F1D0C
loc_4F1C8E:                             ; CODE XREF: sub_4F1B45+1D9↓j
test    edi, edi
jz      short loc_4F1C99
mov     eax, edi
call    _nfree_
loc_4F1C99:                             ; CODE XREF: sub_4F1B45+14B↑j
mov     esi, [esp+78h+var_18]
inc     esi
mov     [esp+78h+var_18], esi
cmp     esi, 254h
jge     loc_4F1D4F
loc_4F1CAE:                             ; CODE XREF: sub_4F1B45+97↑j
mov     edx, [esp+78h+var_18]
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F1C99
xor     edi, edi
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ecx, ecx
mov     cl, ds:byte_782C35[edx]
imul    ecx, eax
xor     ebx, ebx
mov     bl, ds:byte_782BF7
imul    eax, ebx
cmp     ecx, eax
jz      short loc_4F1D0A
mov     edi, ds:dword_782C38[edx]
mov     ds:byte_782C35[edx], bl
xor     ecx, ecx
mov     cx, ds:word_782C36[edx]
xor     eax, eax
mov     al, bl
imul    eax, ecx
call    _nmalloc_
mov     ds:dword_782C38[edx], eax
loc_4F1D0A:                             ; CODE XREF: sub_4F1B45+19C↑j
xor     edx, edx
loc_4F1D0C:                             ; CODE XREF: sub_4F1B45+144↑j
mov     eax, [esp+78h+var_18]
shl     eax, 3
xor     ecx, ecx
mov     cx, ds:word_782C36[eax]
cmp     edx, ecx
jge     loc_4F1C8E
lea     ecx, [edx+edx]
mov     ebx, edx
shl     ebx, 2
test    edi, edi
jz      loc_4F1BE8
cmp     [esp+78h+var_75], 2
jnz     loc_4F1BE1
lea     eax, [edi+ecx]
mov     ax, [eax]
loc_4F1D45:                             ; CODE XREF: sub_4F1B45+B4↑j
and     eax, 0FFFFh
jmp     loc_4F1C07
loc_4F1D4F:                             ; CODE XREF: sub_4F1B45+8B↑j
mov     eax, 1
loc_4F1D54:                             ; CODE XREF: sub_4F1B45+84↑j
add     esp, 64h
jmp     loc_4F3509
sub_4F1B45      endp
loc_4F99C8:                             ; CODE XREF: sub_4F9933+70↑j
push    offset sub_4F985F ; dwNewLong
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
loc_4A67EF:                             ; CODE XREF: sub_4A67C5+A↑j
cmp     ds:dword_530404, 0
jnz     short loc_4A680B
push    1               ; bShow
call    cs:__imp_ShowCursor
mov     ds:dword_530404, 1
sub_4A66A4      proc near               ; CODE XREF: WinMain(x,x,x,x)+274↓p
push    ebx
push    ecx
push    edx
push    esi
call    nullsub_1
call    sub_4EF08B
mov     edx, 78h ; 'x'
mov     eax, 0A0h
call    sub_4EF0C6
mov     eax, 180h
call    sub_4EF0D2
mov     edx, offset unk_570D7C
mov     eax, offset unk_5708B4
call    sub_4EECF9
mov     edx, offset unk_570DC4
mov     eax, offset unk_5708FC
call    sub_4EECF9
mov     edx, offset unk_5731D4
mov     eax, offset unk_572D0C
call    sub_4EECF9
mov     ecx, 8
mov     ebx, offset unk_5708FC
mov     edx, ecx
mov     eax, offset unk_5708B4
call    sub_4F8C1D
mov     edx, 4001h
mov     ds:dword_5708E8, edx
mov     ds:dword_570930, edx
mov     ecx, 4
mov     ebx, offset dword_570930
mov     edx, ecx
mov     eax, offset dword_5708E8
call    nullsub_2
mov     edx, ds:hWnd
mov     eax, ds:dword_55BDAC
call    sub_4F8C23
call    sub_4D8930
xor     eax, eax
call    nullsub_3
call    sub_4A680F
xor     ah, ah
mov     ds:byte_77EAC6, ah
mov     ds:dword_77EA74, offset unk_77E4C4
mov     ds:byte_77EAC1, 2
xor     esi, esi
mov     ds:dword_77E738, esi
mov     ds:dword_77E710, esi
mov     ds:dword_77E720, esi
xor     edx, edx
loc_4A6785:                             ; CODE XREF: sub_4A66A4+10D↓j
mov     eax, edx
call    sub_4EF003
mov     ecx, edx
sar     ecx, 6
mov     ds:word_56F78C[ecx*2], ax
mov     eax, edx
call    sub_4EF008
mov     ds:word_564C34[ecx*2], ax
add     edx, 40h ; '@'
cmp     edx, 1000h
jl      short loc_4A6785
xor     dh, dh
mov     ds:byte_530418, dh
call    sub_4EED6C
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A66A4      endp
loc_4F7CD3:                             ; CODE XREF: sub_4F7BBA+113↑j
or      byte ptr ds:dword_88787C, 1
loc_4F7DF7:                             ; CODE XREF: sub_4F7BBA+231↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    0
push    10h
push    1E0h
push    280h
push    eax
call    dword ptr [edx+54h]
mov     [esp+120h+var_11C], 1
mov     [esp+120h+var_B8], 200h
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF4
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jz      short loc_4F7E47
loc_4F7D40:                             ; CODE XREF: sub_4F7BBA+17A↑j
mov     eax, [esp+120h+var_18]
mov     eax, [eax]
mov     ecx, [esp+120h+var_18]
push    ecx
call    dword ptr [eax+8]
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F7D7F
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    offset dword_551D0C
push    offset word_4F0CEE
push    eax
call    dword ptr [edx]
test    eax, eax
jz      short loc_4F7D7F
mov     eax, 3
jmp     loc_4F849B
loc_4A680B:                             ; CODE XREF: sub_4A67C5+13↑j
pop     edi
pop     edx
pop     ecx
retn
sub_4A67C5      endp
sub_4A680F      proc near               ; CODE XREF: sub_4A66A4+AD↑p
push    ebx
push    ecx
push    edx
push    0F0h
mov     ecx, 140h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset unk_77E4D8
call    sub_4F88DA
push    0F0h
mov     ecx, 140h
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_77E4C4
call    sub_4F8838
push    0F0h
mov     ecx, 140h
mov     ebx, 100h
xor     edx, edx
mov     eax, offset unk_77E568
call    sub_4F88DA
push    0F0h
mov     ecx, 140h
xor     ebx, ebx
xor     edx, edx
mov     eax, offset unk_77E554
call    sub_4F8838
mov     eax, offset unk_77E4C4
call    sub_4A6890
mov     eax, offset unk_77E554
call    sub_4A6890
pop     edx
pop     ecx
pop     ebx
retn
sub_4A680F      endp
sub_4A6890      proc near               ; CODE XREF: sub_4A680F+6E↑p
push    ecx
push    edx
mov     ecx, eax
add     eax, 70h ; 'p'
mov     edx, 8
call    sub_4F88FC
mov     word ptr [ecx+0Ah], 0
mov     byte ptr [ecx+2Ah], 0
mov     byte ptr [ecx+2Bh], 0
mov     byte ptr [ecx+2Ch], 1
mov     byte ptr [ecx+2Dh], 0
mov     byte ptr [ecx+2Eh], 0
mov     byte ptr [ecx+2Fh], 0
pop     edx
pop     ecx
retn
sub_4A6890      endp
sub_4F09AF      proc near               ; CODE XREF: sub_4F9933+3B↓p
mov     eax, offset RootPathName
retn
sub_4F09AF      endp
loc_4F7CF6:                             ; CODE XREF: sub_4F7BBA+130↑j
mov     edx, [edi]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
cmp     ds:dword_786ED8[eax*4], 0
jz      short loc_4F7D15
or      byte ptr ds:dword_88787C, 2
sub_4FFA59      proc near               ; CODE XREF: sub_4F97C4+16↑p
push    ecx
push    esi
push    edi
push    ebp
mov     esi, eax
mov     eax, [eax+10h]
call    ds:off_551FC8
mov     eax, [esi+8]
mov     ecx, [eax+0Ch]
cmp     ecx, 1
jz      short loc_4FFA8E
test    ecx, ecx
jz      short loc_4FFA87
mov     eax, [esi+10h]
call    ds:off_551FCC
xor     eax, eax
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
loc_4FFA87:                             ; CODE XREF: sub_4FFA59+1C↑j
mov     dword ptr [eax+0Ch], 1
loc_4FFA8E:                             ; CODE XREF: sub_4FFA59+18↑j
mov     ah, [esi+0Ch]
and     ah, 0CFh
mov     ebp, [esi+0Ch]
mov     [esi+0Ch], ah
mov     eax, [esi+8]
mov     ecx, [eax+8]
and     ebp, 30h
test    ecx, ecx
jnz     short loc_4FFAAE
mov     eax, esi
call    __ioalloc_
loc_4FFAAE:                             ; CODE XREF: sub_4FFA59+4C↑j
mov     cl, [esi+0Dh]
xor     edi, edi
test    cl, 4
jz      short loc_4FFACC
mov     ch, cl
and     ch, 0FAh
mov     al, ch
mov     [esi+0Dh], ch
or      al, 1
mov     edi, 1
mov     [esi+0Dh], al
loc_4FFACC:                             ; CODE XREF: sub_4FFA59+5D↑j
mov     ecx, offset sub_4FFA48
mov     eax, esi
call    sub_5015FB
mov     edx, eax
test    edi, edi
jz      short loc_4FFAF6
mov     ah, [esi+0Dh]
and     ah, 0FAh
mov     bl, ah
mov     [esi+0Dh], ah
or      bl, 4
mov     eax, esi
mov     [esi+0Dh], bl
call    __flush_
loc_4FFAF6:                             ; CODE XREF: sub_4FFA59+83↑j
test    byte ptr [esi+0Ch], 20h
jz      short loc_4FFB01
mov     edx, 0FFFFFFFFh
loc_4FFB01:                             ; CODE XREF: sub_4FFA59+A1↑j
mov     edi, [esi+0Ch]
or      edi, ebp
mov     eax, [esi+10h]
mov     [esi+0Ch], edi
call    ds:off_551FCC
mov     eax, edx
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FFA59      endp
loc_4F7F9C:                             ; CODE XREF: sub_4F7BBA+301↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    8
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jz      short loc_4F7FB8
mov     eax, 8
jmp     loc_4F849B
sub_4F203B      proc near               ; CODE XREF: sub_4F7BBA+65C↓p
var_8C          = byte ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_44          = byte ptr -44h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_10          = byte ptr -10h
push    ebx
push    ecx
push    edi
sub     esp, 80h
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+8Ch+var_88], 1007h
mov     [esp+8Ch+var_24], 1800h
xor     edi, edi
mov     [esp+8Ch+var_20], edi
mov     [esp+8Ch+var_80], ecx
mov     [esp+8Ch+var_84], edx
cmp     ds:dword_782C20, 18h
jnz     short loc_4F207E
mov     ds:dword_782C20, 20h ; ' '
loc_4F207E:                             ; CODE XREF: sub_4F203B+37↑j
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+8Ch+var_44]
call    memcpy_
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
lea     edx, [esp+90h+var_10]
push    edx
lea     edx, [esp+94h+var_8C]
push    edx
push    eax
call    dword ptr [ecx+18h]
mov     eax, dword ptr [esp+8Ch+var_10]
add     esp, 80h
pop     edi
pop     ecx
pop     ebx
retn
sub_4F203B      endp
loc_4F8283:                             ; CODE XREF: sub_4F7BBA+6BD↑j
mov     ebx, 50h ; 'P'
xor     edx, edx
lea     eax, [esp+120h+var_A4]
call    memset_
mov     [esp+120h+var_A4], 50h ; 'P'
mov     [esp+120h+var_90], edi
mov     [esp+120h+var_8C], edi
xor     ebp, ebp
mov     [esp+120h+var_88], edi
mov     [esp+120h+var_84], 3F800000h
lea     edi, [esp+120h+var_A0]
lea     esi, [esp+120h+var_90]
movsd
movsd
movsd
movsd
xor     edx, edx
mov     [esp+120h+var_70], edx
mov     [esp+120h+var_58], 20h ; ' '
mov     eax, ds:dword_551D18
mov     edx, [eax]
lea     ecx, [esp+120h+var_A4]
push    ecx
push    eax
call    dword ptr [edx+0Ch]
mov     eax, ds:dword_551D18
mov     edx, [eax]
push    offset dword_887890
mov     ebx, ds:dword_551D10
push    ebx
push    eax
call    dword ptr [edx+14h]
mov     eax, ds:dword_551D14
mov     edx, [eax]
mov     esi, ds:dword_887890
push    esi
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    2
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebp
push    3
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    1
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    5
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    ebp
push    6
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    4
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1
push    1
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    1
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    11h
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    2
push    10h
push    ebp
push    eax
call    dword ptr [edx+0A0h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    0Fh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    18h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    5
push    19h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    16h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    29h ; ')'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    9
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    7
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    0Eh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Fh
push    eax
call    dword ptr [edx+58h]
call    sub_4F1499
push    41200000h
push    3F800000h
xor     ebx, ebx
xor     edx, edx
xor     eax, eax
call    sub_4F387C
loc_4F80F9:                             ; CODE XREF: sub_4F7BBA+52B↑j
mov     eax, 0Dh
jmp     loc_4F849B
loc_4F7E8C:                             ; CODE XREF: sub_4F7BBA+48C↓j
mov     eax, 0Ah
jmp     loc_4F849B
loc_4F7D93:                             ; CODE XREF: sub_4F7BBA+1CC↑j
mov     edx, [edi]
mov     eax, edx
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
lea     edx, [eax+40h]
mov     ebx, 0FCh
mov     eax, offset unk_887780
call    memcpy_
mov     eax, esp
call    sub_4F188E
cmp     dword ptr [esi], 0
jz      loc_4F7EAF
test    byte ptr ds:dword_88787C, 1
jz      loc_4F7EAF
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    813h
push    ebp
push    eax
call    dword ptr [edx+50h]
test    eax, eax
jz      short loc_4F7DF7
loc_4F7D15:                             ; CODE XREF: sub_4F7BBA+152↑j
mov     eax, [esp+120h+var_18]
mov     eax, [eax]
push    offset dword_551CF0
push    offset word_4F0C3E
mov     edx, [esp+128h+var_18]
push    edx
call    dword ptr [eax]
test    eax, eax
jz      short loc_4F7D40
mov     eax, 2
jmp     loc_4F849B
sub_4EF0D2      proc near               ; CODE XREF: sub_4A66A4+22↑p
var_4           = dword ptr -4
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
sub_4EF0D2      endp
loc_4F8116:                             ; CODE XREF: sub_4F7BBA+550↑j
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F8153
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+128h+var_120]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
mov     eax, [esp+120h+var_110]
mov     ds:dword_88776C, eax
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     loc_4F8499
loc_4F80B7:                             ; CODE XREF: sub_4F7BBA+3DD↑j
test    byte ptr ds:dword_88787C, 1
jnz     short loc_4F8103
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    0
push    offset dword_551D10
mov     ecx, ds:dword_551CF8
push    ecx
push    offset word_4F0D1E
push    eax
call    dword ptr [edx+20h]
test    eax, eax
jz      short loc_4F8103
cmp     dword ptr [esi], 0
jnz     short loc_4F80F9
mov     dword ptr [esi], 1
mov     eax, ebp
call    sub_4F84A5
jmp     loc_4F7C72
loc_4F7EAF:                             ; CODE XREF: sub_4F7BBA+20B↑j
cmp     dword ptr [esi], 0
jnz     short loc_4F7EC1
test    byte ptr ds:dword_88787C, 2
jnz     loc_4F7F9C
loc_4F8173:                             ; CODE XREF: sub_4F7BBA+5AD↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, ds:dword_551D14
push    ebx
push    eax
call    dword ptr [edx+14h]
test    eax, eax
jz      short loc_4F8193
mov     eax, 10h
jmp     loc_4F849B
loc_502732:                             ; CODE XREF: __RemoveThreadData_+1B↑j
mov     ebx, edx
mov     edx, [edx]
loc_4F8499:                             ; CODE XREF: sub_4F7BBA+594↑j
xor     eax, eax
loc_4F80B0:                             ; CODE XREF: sub_4F7BBA+2F0↑j
or      byte ptr ds:dword_88787C+1, 2
loc_4F9A61:                             ; CODE XREF: sub_4F9933+116↑j
push    0               ; hwndCallback
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
loc_4F849B:                             ; CODE XREF: sub_4F7BBA+137↑j
add     esp, 114h
pop     ebp
pop     edi
pop     esi
retn
sub_4F7BBA      endp
sub_4F84A5      proc near               ; CODE XREF: sub_4A6A5E+1E4↑p
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
call    sub_4F1F39
call    sub_4F1FD4
mov     edx, ds:dword_551D18
test    edx, edx
jz      short loc_4F84D1
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D18, ecx
sub_4F84A5      proc near               ; CODE XREF: sub_4A6A5E+1E4↑p
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ebx, eax
call    sub_4F1F39
call    sub_4F1FD4
mov     edx, ds:dword_551D18
test    edx, edx
jz      short loc_4F84D1
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D18, ecx
loc_4F84D1:                             ; CODE XREF: sub_4F84A5+1A↑j
mov     esi, ds:dword_551D14
test    esi, esi
jz      short loc_4F84E9
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D14, edi
loc_4F84E9:                             ; CODE XREF: sub_4F84A5+34↑j
mov     ebp, ds:dword_551D10
test    ebp, ebp
jz      short loc_4F8501
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551D10, eax
loc_4F8501:                             ; CODE XREF: sub_4F84A5+4C↑j
mov     edx, ds:dword_551D0C
test    edx, edx
jz      short loc_4F851B
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D0C, ecx
loc_4F851B:                             ; CODE XREF: sub_4F84A5+64↑j
mov     esi, ds:dword_551D08
test    esi, esi
jz      short loc_4F8533
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D08, edi
loc_4F8533:                             ; CODE XREF: sub_4F84A5+7E↑j
mov     ebp, ds:dword_551CFC
test    ebp, ebp
jz      short loc_4F854B
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551CFC, eax
loc_4F854B:                             ; CODE XREF: sub_4F84A5+96↑j
mov     edx, ds:dword_551D04
test    edx, edx
jz      short loc_4F8565
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D04, ecx
loc_4F8565:                             ; CODE XREF: sub_4F84A5+AE↑j
mov     esi, ds:dword_551D00
test    esi, esi
jz      short loc_4F857D
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D00, edi
loc_4F857D:                             ; CODE XREF: sub_4F84A5+C8↑j
mov     ebp, ds:dword_551CF8
test    ebp, ebp
jz      short loc_4F8595
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551CF8, eax
loc_4F8595:                             ; CODE XREF: sub_4F84A5+E0↑j
mov     edx, ds:dword_551CF4
test    edx, edx
jz      short loc_4F85AF
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551CF4, ecx
loc_4F85AF:                             ; CODE XREF: sub_4F84A5+F8↑j
mov     esi, ds:dword_551CF0
test    esi, esi
jz      loc_4F3508
test    byte ptr ds:dword_88787C+1, 1
jz      short loc_4F85DA
mov     edx, [esi]
push    8
push    ebx
push    esi
call    dword ptr [edx+50h]
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+4Ch]
loc_4F85DA:                             ; CODE XREF: sub_4F84A5+11F↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551CF0, edi
jmp     loc_4F3508
sub_4F84A5      endp ; sp-analysis failed
loc_4F8193:                             ; CODE XREF: sub_4F7BBA+5CD↑j
mov     ebx, 2Ch ; ','
xor     edx, edx
lea     eax, [esp+120h+var_54]
call    memset_
mov     [esp+120h+var_54], 2Ch ; ','
xor     edi, edi
mov     [esp+120h+var_50], edi
mov     [esp+120h+var_4C], edi
mov     [esp+120h+var_48], 280h
mov     [esp+120h+var_44], 1E0h
mov     [esp+120h+var_40], 0BF800000h
mov     ebx, 3F800000h
mov     [esp+120h+var_3C], ebx
mov     esi, 40000000h
mov     [esp+120h+var_38], esi
mov     [esp+120h+var_34], esi
mov     [esp+120h+var_30], edi
mov     [esp+120h+var_2C], ebx
mov     edx, 100h
mov     eax, edx
call    sub_4F203B
mov     ds:dword_551D00, eax
mov     edx, 20h ; ' '
mov     eax, edx
call    sub_4F203B
mov     ds:dword_551D04, eax
mov     eax, ds:dword_551D14
mov     edx, [eax]
lea     ecx, [esp+120h+var_54]
push    ecx
push    eax
call    dword ptr [edx+44h]
test    eax, eax
jz      short loc_4F8252
mov     eax, 11h
jmp     loc_4F849B
sub_4F9F7D      proc near               ; CODE XREF: WinMain(x,x,x,x)+264↑p
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
loc_4F9FB5:                             ; CODE XREF: sub_4F9F7D+24↑j
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
loc_4F9FE4:                             ; CODE XREF: sub_4F9F7D+48↑j
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
loc_4FA052:                             ; CODE XREF: sub_4F9F7D+B8↑j
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
loc_4FA0D8:                             ; CODE XREF: sub_4F9F7D+10↑j
mov     ebx, 40h ; '@'
xor     edx, edx
mov     eax, offset dword_897B10
call    memset_
xor     eax, eax
jmp     loc_4F9DA2
sub_4F9F7D      endp
sub_4F190F      proc near               ; CODE XREF: sub_4F20B9+168↓p
var_70          = dword ptr -70h
var_20          = dword ptr -20h
push    ebx
push    ecx
push    edx
sub     esp, 64h
mov     ecx, eax
mov     ebx, 64h ; 'd'
xor     edx, edx
mov     eax, esp
call    memset_
mov     [esp+70h+var_70], 64h ; 'd'
xor     ebx, ebx
mov     [esp+70h+var_20], ebx
mov     eax, [ecx]
mov     edx, esp
push    edx
push    1000400h
push    ebx
push    ebx
push    ebx
push    ecx
call    dword ptr [eax+14h]
add     esp, 64h
pop     edx
pop     ecx
pop     ebx
retn
sub_4F190F      endp
loc_4F7CCF:                             ; CODE XREF: sub_4F7BBA+10B↑j
test    eax, eax
jnz     short loc_4F7CDA
loc_4F7D7F:                             ; CODE XREF: sub_4F7BBA+1A1↑j
test    byte ptr ds:dword_88787C, 2
jnz     short loc_4F7D93
cmp     dword ptr [esi], 0
jnz     short loc_4F7D93
mov     dword ptr [esi], 1
loc_4F8252:                             ; CODE XREF: sub_4F7BBA+68C↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, ds:dword_551D14
push    ecx
push    eax
call    dword ptr [edx+30h]
mov     eax, ds:dword_551D0C
mov     edx, [eax]
push    edi
push    offset dword_551D18
push    eax
call    dword ptr [edx+14h]
test    eax, eax
jz      short loc_4F8283
mov     eax, 12h
jmp     loc_4F849B
sub_4F1499      proc near               ; CODE XREF: sub_4F7BBA+8C5↓p
var_98          = byte ptr -98h
var_74          = dword ptr -74h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
push    ebx
push    ecx
push    edx
push    edi
push    ebp
sub     esp, 84h
mov     [esp+98h+var_18], 3F800000h
mov     [esp+98h+var_1C], 40A00000h
test    ds:byte_8877EE, 10h
jz      loc_4F16B3
test    ds:byte_8877ED, 1
jz      loc_4F16B3
xor     ebp, ebp
mov     ds:flt_8876C4, ebp
mov     ds:flt_8876C8, ebp
mov     edx, 3F333333h
mov     ds:dword_8876CC, edx
mov     ecx, 3E124925h
mov     ds:flt_8876D0, ecx
mov     ebx, 0FFFFFFFFh
mov     ds:dword_8876D4, ebx
mov     ds:dword_8876D8, ebp
mov     edi, 41800000h
mov     ds:flt_8876E4, edi
mov     ds:flt_8876E8, ebp
mov     eax, edx
mov     ds:dword_8876EC, edx
mov     edx, ecx
mov     ds:flt_8876F0, ecx
mov     ecx, ebx
mov     ds:dword_8876F4, ebx
mov     ds:dword_8876F8, ebp
mov     ds:flt_887704, ebp
mov     ds:flt_887708, edi
mov     ebp, eax
mov     ds:dword_88770C, ebp
mov     eax, edx
mov     ds:flt_887710, eax
mov     edx, ebx
mov     ds:dword_887714, ebx
xor     ecx, ebx
mov     ds:dword_887718, ecx
mov     ds:flt_887724, edi
mov     ds:flt_887728, edi
mov     ds:dword_88772C, ebp
mov     ds:flt_887730, eax
mov     ds:dword_887734, ebx
xor     edx, ebx
mov     ds:dword_887738, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, [esp+98h+var_18]
push    ecx
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, [esp+98h+var_1C]
push    ebx
push    25h ; '%'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+28h]
mov     eax, esp
call    sub_4F188E
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0A0h+var_98]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F16E7
mov     edx, ds:dword_782C10
not     edx
mov     eax, [esp+98h+var_74]
test    [eax], edx
jnz     short loc_4F1697
xor     ebp, ebp
mov     ds:dword_551D3C, ebp
jmp     short loc_4F16A1
loc_4F1697:                             ; CODE XREF: sub_4F1499+1F2↑j
mov     ds:dword_551D3C, 1
loc_4F16A1:                             ; CODE XREF: sub_4F1499+1FC↑j
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     short loc_4F16E7
loc_4F16B3:                             ; CODE XREF: sub_4F1499+25↑j
test    ds:byte_8877ED, 1
jz      short loc_4F16C8
mov     ds:dword_551D3C, 1
jmp     short loc_4F16E7
loc_4F16C8:                             ; CODE XREF: sub_4F1499+221↑j
test    ds:byte_8877EC, 80h
jz      short loc_4F16DD
mov     ds:dword_551D3C, 2
jmp     short loc_4F16E7
loc_4F16DD:                             ; CODE XREF: sub_4F1499+236↑j
mov     ds:dword_551D3C, 3
loc_4F16E7:                             ; CODE XREF: sub_4F1499+1DE↑j
add     esp, 84h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F1499      endp
loc_4F8103:                             ; CODE XREF: sub_4F7BBA+504↑j
call    sub_4F1B45
test    eax, eax
jnz     short loc_4F8116
mov     eax, 0Eh
jmp     loc_4F849B
loc_4F7F39:                             ; CODE XREF: sub_4F7BBA+373↑j
mov     eax, ds:dword_551CF4
call    sub_4F190F
mov     [esp+120h+var_28], 4
mov     eax, ds:dword_551CF4
mov     edx, [eax]
push    offset dword_551CF8
lea     ecx, [esp+124h+var_28]
push    ecx
push    eax
call    dword ptr [edx+30h]
test    eax, eax
jz      short loc_4F7F74
mov     eax, 7
jmp     loc_4F849B
loc_4F7E3D:                             ; CODE XREF: sub_4F7BBA+432↓j
mov     eax, 9
jmp     loc_4F849B
sub_4EF08B      proc near               ; CODE XREF: sub_4A66A4+9↑p
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
sub_4EF08B      endp
sub_4F134B      proc near               ; CODE XREF: sub_4F7BBA+3D8↓p
var_84          = byte ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_3C          = byte ptr -3Ch
var_1C          = dword ptr -1Ch
push    ecx
push    edi
sub     esp, 7Ch
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+84h+var_80], 1007h
mov     [esp+84h+var_1C], 24000h
mov     [esp+84h+var_78], ecx
mov     [esp+84h+var_7C], edx
mov     eax, ds:dword_551D0C
mov     ecx, [eax]
lea     edx, [esp+84h+var_3C]
push    edx
push    offset sub_4F12C3
push    offset word_4F0D1E
push    eax
call    dword ptr [ecx+28h]
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
push    offset dword_551CFC
lea     edx, [esp+8Ch+var_84]
push    edx
push    eax
call    dword ptr [ecx+18h]
test    eax, eax
jz      short loc_4F13AA
loc_4F13A6:                             ; CODE XREF: sub_4F134B+73↓j
xor     eax, eax
jmp     short loc_4F13CA
loc_4F13AA:                             ; CODE XREF: sub_4F134B+59↑j
mov     eax, ds:dword_551CF8
mov     ecx, [eax]
mov     edi, ds:dword_551CFC
push    edi
push    eax
call    dword ptr [ecx+0Ch]
test    eax, eax
jnz     short loc_4F13A6
mov     ds:dword_887774, eax
mov     eax, 1
loc_4F13CA:                             ; CODE XREF: sub_4F134B+5D↑j
add     esp, 7Ch
pop     edi
pop     ecx
retn
sub_4F134B      endp
sub_4D8930      proc near               ; CODE XREF: sub_4A66A4+A1↑p
push    ebx
push    ecx
push    edx
xor     edx, edx
mov     ds:dword_55D5D0, edx
mov     word ptr ds:dword_77EA7C+2, 64h ; 'd'
mov     ds:word_77EA80, 7Fh
mov     ds:byte_77EAB9, 4
mov     ebx, 10h
xor     edx, edx
mov     eax, offset dword_55D430
call    memset_
mov     ebx, 10h
xor     edx, edx
mov     eax, offset dword_55D5C0
call    memset_
mov     ebx, 180h
xor     edx, edx
mov     eax, offset dword_55D440
call    memset_
xor     edx, edx
mov     ecx, 0FFh
loc_4D898E:                             ; CODE XREF: sub_4D8930+79↓j
mov     eax, edx
shl     eax, 8
add     eax, edx
mov     ds:dword_562204[eax*8], ecx
xor     ebx, ebx
mov     ds:dword_562208[eax*8], ebx
inc     edx
cmp     edx, 5
jl      short loc_4D898E
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8930      endp
sub_4EF0C6      proc near               ; CODE XREF: sub_4A66A4+18↑p
mov     ds:dword_77EBCC, eax
mov     ds:dword_77EBD0, edx
retn
sub_4EF0C6      endp
sub_4F387C      proc near               ; CODE XREF: sub_4E22FB+12E↑p
var_18          = dword ptr -18h
var_14          = dword ptr -14h
arg_0           = dword ptr  4
arg_4           = dword ptr  8
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
test    byte ptr ds:dword_88787C, 1
jnz     loc_4F3983
cmp     eax, 1
jnz     short loc_4F38BC
cmp     ds:dword_551D34, 0
jz      short loc_4F38A4
mov     ds:dword_551D38, edx
loc_4F38A4:                             ; CODE XREF: sub_4F387C+20↑j
mov     ds:dword_887778, ebx
mov     eax, [esp+18h+arg_0]
mov     ds:flt_551D44, eax
mov     eax, [esp+18h+arg_4]
mov     ds:flt_551D48, eax
loc_4F38BC:                             ; CODE XREF: sub_4F387C+17↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, ds:dword_887778
push    ebx
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D3C
cmp     eax, 1
jb      short loc_4F38EA
jbe     short loc_4F3927
cmp     eax, 2
jz      loc_4F3974
jmp     loc_4F3983
loc_4F38EA:                             ; CODE XREF: sub_4F387C+5C↑j
test    eax, eax
jnz     loc_4F3983
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebp, ds:flt_551D44
push    ebp
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, ds:flt_551D48
push    ecx
loc_4F3923:                             ; CODE XREF: sub_4F387C+F6↓j
push    25h ; '%'
jmp     short loc_4F397F
loc_4F3927:                             ; CODE XREF: sub_4F387C+5E↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
fld     ds:flt_551D44
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_18]
fld     ds:flt_551D48
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_14]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     esi, [esp+18h+var_18]
push    esi
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     edi, [esp+18h+var_14]
push    edi
jmp     short loc_4F3923
loc_4F3974:                             ; CODE XREF: sub_4F387C+63↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    23h ; '#'
loc_4F397F:                             ; CODE XREF: sub_4F387C+A9↑j
push    eax
call    dword ptr [edx+58h]
loc_4F3983:                             ; CODE XREF: sub_4F387C+E↑j
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn    8
sub_4F387C      endp
loc_4F802D:                             ; CODE XREF: sub_4F7BBA+469↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551CF8
lea     ecx, [esp+128h+var_120]
push    ecx
push    eax
call    dword ptr [edx+18h]
test    eax, eax
jnz     loc_4F7E8C
mov     eax, ds:dword_551CF8
call    sub_4F190F
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    0
push    offset dword_551D08
push    0
push    eax
call    dword ptr [edx+10h]
test    eax, eax
jz      short loc_4F8078
mov     eax, 0Bh
jmp     loc_4F849B
loc_4F9ACF:                             ; CODE XREF: sub_4F9933+68↑j
add     esp, 6Ch
pop     edi
pop     esi
pop     ecx
retn
sub_4F9933      endp
sub_4F9AD6      proc near               ; CODE XREF: sub_4FA12B+B8↓p
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = dword ptr -10h
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
loc_4F7DED:                             ; CODE XREF: sub_4F7BBA+321↓j
mov     eax, 5
jmp     loc_4F849B
loc_4F8501:                             ; CODE XREF: sub_4F84A5+4C↑j
mov     edx, ds:dword_551D0C
test    edx, edx
jz      short loc_4F851B
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D0C, ecx
loc_4F16DD:                             ; CODE XREF: sub_4F1499+236↑j
mov     ds:dword_551D3C, 3
loc_4F38EA:                             ; CODE XREF: sub_4F387C+5C↑j
test    eax, eax
jnz     loc_4F3983
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebp, ds:flt_551D44
push    ebp
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, ds:flt_551D48
push    ecx
sub_4EF008      proc near               ; CODE XREF: sub_4024AC+8A↑p
push    ecx
push    edx
test    ah, 8
jz      short loc_4EEFCE
mov     edx, 0FFFFFFFFh
jmp     short loc_4EEFD3
sub_4EF008      endp
loc_4F1C8E:                             ; CODE XREF: sub_4F1B45+1D9↓j
test    edi, edi
jz      short loc_4F1C99
mov     eax, edi
call    _nfree_
loc_4F3508:                             ; CODE XREF: sub_4F44C7+4C2↓j
pop     ebp
loc_4F1BFE:                             ; CODE XREF: sub_4F1B45+A8↑j
mov     eax, ds:dword_782C38[eax]
mov     eax, [ebx+eax]
loc_4F85AF:                             ; CODE XREF: sub_4F84A5+F8↑j
mov     esi, ds:dword_551CF0
test    esi, esi
jz      loc_4F3508
test    byte ptr ds:dword_88787C+1, 1
jz      short loc_4F85DA
mov     edx, [esi]
push    8
push    ebx
push    esi
call    dword ptr [edx+50h]
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+4Ch]
loc_4F3983:                             ; CODE XREF: sub_4F387C+E↑j
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn    8
sub_4F387C      endp
sub_4A6890      proc near               ; CODE XREF: sub_4A680F+6E↑p
push    ecx
push    edx
mov     ecx, eax
add     eax, 70h ; 'p'
mov     edx, 8
call    sub_4F88FC
mov     word ptr [ecx+0Ah], 0
mov     byte ptr [ecx+2Ah], 0
mov     byte ptr [ecx+2Bh], 0
mov     byte ptr [ecx+2Ch], 1
mov     byte ptr [ecx+2Dh], 0
mov     byte ptr [ecx+2Eh], 0
mov     byte ptr [ecx+2Fh], 0
pop     edx
pop     ecx
retn
sub_4A6890      endp
loc_4F85DA:                             ; CODE XREF: sub_4F84A5+11F↑j
mov     eax, ds:dword_551CF0
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551CF0, edi
jmp     loc_4F3508
sub_4F84A5      endp ; sp-analysis failed
sub_4F85F2      proc near               ; CODE XREF: WinMain(x,x,x,x)+393↑p
push    edx
mov     edx, eax
shl     eax, 2
add     eax, edx
shl     eax, 4
sub     eax, edx
shl     eax, 2
add     eax, offset dword_786ED4
add     eax, 18h
pop     edx
retn
sub_4F85F2      endp
sub_4F860C      proc near               ; CODE XREF: WinMain(x,x,x,x)+39E↑p
hdc             = dword ptr -10h
push    ecx
push    esi
push    edi
sub     esp, 4
mov     edi, eax
mov     esi, edx
mov     eax, ds:dword_551CF8
mov     edx, [eax]
mov     ecx, esp
push    ecx
push    eax
call    dword ptr [edx+44h]
test    eax, eax
jnz     short loc_4F866D
push    0FFFFFFh        ; color
mov     edx, [esp+14h+hdc]
push    edx             ; hdc
call    cs:__imp_SetTextColor
push    1               ; mode
mov     ecx, [esp+14h+hdc]
push    ecx             ; hdc
call    cs:__imp_SetBkMode
mov     eax, ebx
call    strlen_
push    eax             ; c
push    ebx             ; lpString
push    esi             ; y
push    edi             ; x
mov     ebx, [esp+20h+hdc]
push    ebx             ; hdc
call    cs:__imp_TextOutA
mov     eax, ds:dword_551CF8
mov     ebx, [eax]
mov     esi, [esp+10h+hdc]
push    esi
push    eax
call    dword ptr [ebx+68h]
loc_4F9BD6:                             ; CODE XREF: sub_4F9AD6+C1↑j
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
sub_4F9AD6      endp
sub_4F9C02      proc near               ; CODE XREF: sub_4FA755+3D↓p
var_1C          = dword ptr -1Ch
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
loc_4F9FE4:                             ; CODE XREF: sub_4F9F7D+48↑j
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
loc_4F8595:                             ; CODE XREF: sub_4F84A5+E0↑j
mov     edx, ds:dword_551CF4
test    edx, edx
jz      short loc_4F85AF
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551CF4, ecx
loc_4F397F:                             ; CODE XREF: sub_4F387C+A9↑j
push    eax
call    dword ptr [edx+58h]
loc_4F1330:                             ; CODE XREF: sub_4F12FE+20↑j
push    edx             ; pUnkOuter
push    ecx             ; lplpDD
add     eax, offset dword_786ED4
add     eax, 8
push    eax             ; lpGUID
call    DirectDrawCreate
test    eax, eax
jz      short loc_4F1346
loc_4F1D0A:                             ; CODE XREF: sub_4F1B45+19C↑j
xor     edx, edx
loc_4F1B76:                             ; CODE XREF: sub_4F1B45+11↑j
test    byte ptr ds:dword_88787C, 1
jz      short loc_4F1BAC
mov     [esp+78h+var_38], 20h ; ' '
mov     eax, ds:dword_551CF4
mov     edx, [eax]
lea     ecx, [esp+78h+var_38]
push    ecx
push    eax
call    dword ptr [edx+54h]
lea     edx, [esp+78h+var_38]
mov     eax, 1
call    sub_4F13D0
call    sub_4FBC14
jmp     short loc_4F1BCE
loc_4F13A6:                             ; CODE XREF: sub_4F134B+73↓j
xor     eax, eax
jmp     short loc_4F13CA
loc_4F8533:                             ; CODE XREF: sub_4F84A5+7E↑j
mov     ebp, ds:dword_551CFC
test    ebp, ebp
jz      short loc_4F854B
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551CFC, eax
sub_4F1F39      proc near               ; CODE XREF: sub_4F84A5+8↓p
push    ebx
push    ecx
push    edx
push    esi
push    edi
xor     edi, edi
jmp     short loc_4F1F4C
loc_4F1F42:                             ; CODE XREF: sub_4F1F39+46↓j
inc     edi
cmp     edi, 20h ; ' '
jge     loc_4F3509
loc_4F1F4C:                             ; CODE XREF: sub_4F1F39+7↑j
xor     esi, esi
jmp     short loc_4F1F81
loc_4F1F50:                             ; CODE XREF: sub_4F1F39+8E↓j
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset word_783ED4
add     ecx, eax
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 20h ; ' '
jge     short loc_4F1F42
loc_4F1F81:                             ; CODE XREF: sub_4F1F39+15↑j
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     edx, ds:dword_783EDC[eax]
test    edx, edx
jz      short loc_4F1FA9
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
loc_4F1FA9:                             ; CODE XREF: sub_4F1F39+66↑j
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ecx, ds:dword_783ED8[eax]
test    ecx, ecx
jz      short loc_4F1F50
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     loc_4F1F50
sub_4F1F39      endp
loc_4F857D:                             ; CODE XREF: sub_4F84A5+C8↑j
mov     ebp, ds:dword_551CF8
test    ebp, ebp
jz      short loc_4F8595
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551CF8, eax
loc_4F9B99:                             ; CODE XREF: sub_4F9AD6+35↑j
push    esi             ; lpName
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
loc_4F3974:                             ; CODE XREF: sub_4F387C+63↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    23h ; '#'
loc_4FFACC:                             ; CODE XREF: sub_4FFA59+5D↑j
mov     ecx, offset sub_4FFA48
mov     eax, esi
call    sub_5015FB
mov     edx, eax
test    edi, edi
jz      short loc_4FFAF6
mov     ah, [esi+0Dh]
and     ah, 0FAh
mov     bl, ah
mov     [esi+0Dh], ah
or      bl, 4
mov     eax, esi
mov     [esi+0Dh], bl
call    __flush_
loc_4F16E7:                             ; CODE XREF: sub_4F1499+1DE↑j
add     esp, 84h
pop     ebp
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F1499      endp
sub_4F16F3      proc near               ; CODE XREF: AUTO:loc_4F39BD↓p
var_1C          = qword ptr -1Ch
var_14          = dword ptr -14h
push    ebx
push    ecx
push    edx
push    esi
sub     esp, 0Ch
test    eax, eax
jnz     loc_4F17C2
cmp     ds:dword_551D38, 0
jz      loc_4F17C2
cmp     ds:dword_551D40, 0
jnz     short loc_4F1731
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     ds:dword_551D40, 1
loc_4F1697:                             ; CODE XREF: sub_4F1499+1F2↑j
mov     ds:dword_551D3C, 1
loc_4A6785:                             ; CODE XREF: sub_4A66A4+10D↓j
mov     eax, edx
call    sub_4EF003
mov     ecx, edx
sar     ecx, 6
mov     ds:word_56F78C[ecx*2], ax
mov     eax, edx
call    sub_4EF008
mov     ds:word_564C34[ecx*2], ax
add     edx, 40h ; '@'
cmp     edx, 1000h
jl      short loc_4A6785
xor     dh, dh
mov     ds:byte_530418, dh
call    sub_4EED6C
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4A66A4      endp
sub_4A67C5      proc near               ; CODE XREF: sub_4A6A5E+295↓p
push    ecx
push    edx
push    edi
cmp     ds:bMenu, 0
jz      short loc_4A67EF
cmp     ds:dword_530404, 1
jnz     short loc_4A680B
push    0               ; bShow
call    cs:__imp_ShowCursor
xor     edi, edi
mov     ds:dword_530404, edi
pop     edi
pop     edx
pop     ecx
retn
loc_4F9810:                             ; CODE XREF: sub_4F97E5+58↓j
xor     eax, eax
pop     edx
pop     ecx
pop     ebx
retn
loc_4F13AA:                             ; CODE XREF: sub_4F134B+59↑j
mov     eax, ds:dword_551CF8
mov     ecx, [eax]
mov     edi, ds:dword_551CFC
push    edi
push    eax
call    dword ptr [ecx+0Ch]
test    eax, eax
jnz     short loc_4F13A6
mov     ds:dword_887774, eax
mov     eax, 1
sub_5015FB      proc near               ; CODE XREF: sub_4FFA59+7A↑p
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_70          = dword ptr -70h
var_6B          = byte ptr -6Bh
var_6A          = byte ptr -6Ah
var_64          = word ptr -64h
var_62          = word ptr -62h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = byte ptr -48h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = byte ptr -14h
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
loc_50162F:                             ; CODE XREF: sub_5015FB+C0↓j
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
loc_50167D:                             ; CODE XREF: sub_5015FB+125↓j
mov     eax, [esp+80h+var_70]
mov     es:[edx], eax
jmp     short loc_5016A7
loc_501686:                             ; CODE XREF: sub_5015FB+76↑j
test    dh, 40h
jz      short loc_501697
mov     eax, [esi]
add     eax, 4
mov     [esi], eax
mov     edx, [eax-4]
jmp     short loc_5016A1
loc_501697:                             ; CODE XREF: sub_5015FB+8E↑j
mov     edi, [esi]
add     edi, 4
mov     [esi], edi
mov     edx, [edi-4]
loc_5016A1:                             ; CODE XREF: sub_5015FB+9A↑j
mov     eax, [esp+80h+var_70]
mov     [edx], eax
loc_5016A7:                             ; CODE XREF: sub_5015FB+2F↑j
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
loc_5016CF:                             ; CODE XREF: sub_5015FB+71↑j
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
loc_5016ED:                             ; CODE XREF: sub_5015FB+DC↑j
test    dh, 40h
jz      short loc_501705
mov     ebx, [esi]
add     ebx, 4
mov     [esi], ebx
mov     edx, [ebx-4]
loc_5016FC:                             ; CODE XREF: sub_5015FB+114↓j
mov     eax, [esp+80h+var_70]
mov     [edx], ax
jmp     short loc_5016A7
loc_501705:                             ; CODE XREF: sub_5015FB+F5↑j
mov     edx, [esi]
add     edx, 4
mov     [esi], edx
mov     edx, [edx-4]
jmp     short loc_5016FC
loc_501711:                             ; CODE XREF: sub_5015FB+D7↑j
test    dh, 80h
jz      short loc_501725
mov     eax, [esi]
add     eax, 8
mov     [esi], eax
les     edx, [eax-8]
jmp     loc_50167D
loc_501725:                             ; CODE XREF: sub_5015FB+119↑j
test    dh, 40h
jnz     loc_501697
mov     ecx, [esi]
add     ecx, 4
mov     [esi], ecx
mov     edx, [ecx-4]
jmp     loc_5016A1
loc_50173D:                             ; CODE XREF: sub_5015FB+64↑j
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
loc_50179C:                             ; CODE XREF: sub_5015FB+1B5↓j
cmp     [esp+80h+var_7C], 0
jle     short loc_5017B2
mov     edx, 20h ; ' '
mov     eax, esp
call    ebp
dec     [esp+80h+var_7C]
jmp     short loc_50179C
loc_5017B2:                             ; CODE XREF: sub_5015FB+198↑j
lea     ebx, [esp+80h+var_48]
loc_5017B6:                             ; CODE XREF: sub_5015FB+1D4↓j
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
loc_5017D1:                             ; CODE XREF: sub_5015FB+1C0↑j
cmp     [esp+80h+var_5C], 0
jle     short loc_5017E7
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_5C]
jmp     short loc_5017D1
loc_5017E7:                             ; CODE XREF: sub_5015FB+1DB↑j
mov     dh, [esp+80h+var_6B]
cmp     dh, 73h ; 's'
jnz     short loc_501822
test    byte ptr [esp+80h+var_62], 20h
jz      short loc_501806
loc_5017F7:                             ; CODE XREF: sub_5015FB+22A↓j
mov     ebx, esp
mov     ecx, ebp
mov     edx, es
mov     eax, edi
call    sub_501C76
jmp     short loc_501843
loc_501806:                             ; CODE XREF: sub_5015FB+1FA↑j
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
loc_501822:                             ; CODE XREF: sub_5015FB+1F3↑j
cmp     dh, 53h ; 'S'
jz      short loc_5017F7
loc_501827:                             ; CODE XREF: sub_5015FB+246↓j
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
loc_501843:                             ; CODE XREF: sub_5015FB+209↑j
cmp     [esp+80h+var_54], 0
jle     short loc_501859
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_54]
jmp     short loc_501843
loc_501859:                             ; CODE XREF: sub_5015FB+24D↑j
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
loc_501875:                             ; CODE XREF: sub_5015FB+263↑j
cmp     [esp+80h+var_4C], 0
jle     short loc_50188B
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_4C]
jmp     short loc_501875
loc_50188B:                             ; CODE XREF: sub_5015FB+27F↑j
test    byte ptr [esp+80h+var_62], 8
jz      loc_5016A7
loc_501896:                             ; CODE XREF: sub_5015FB+2B3↓j
cmp     [esp+80h+var_7C], 0
jle     loc_5016A7
mov     edx, 20h ; ' '
mov     eax, esp
call    ebp
dec     [esp+80h+var_7C]
jmp     short loc_501896
loc_5018B0:                             ; CODE XREF: sub_5015FB+5C↑j
mov     eax, [esp+80h+var_70]
add     esp, 70h
pop     ebp
pop     es
pop     edi
pop     esi
retn
sub_5015FB      endp
loc_4F851B:                             ; CODE XREF: sub_4F84A5+64↑j
mov     esi, ds:dword_551D08
test    esi, esi
jz      short loc_4F8533
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D08, edi
loc_4FA052:                             ; CODE XREF: sub_4F9F7D+B8↑j
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
loc_4F1D0C:                             ; CODE XREF: sub_4F1B45+144↑j
mov     eax, [esp+78h+var_18]
shl     eax, 3
xor     ecx, ecx
mov     cx, ds:word_782C36[eax]
cmp     edx, ecx
jge     loc_4F1C8E
lea     ecx, [edx+edx]
mov     ebx, edx
shl     ebx, 2
test    edi, edi
jz      loc_4F1BE8
cmp     [esp+78h+var_75], 2
jnz     loc_4F1BE1
lea     eax, [edi+ecx]
mov     ax, [eax]
loc_4F16B3:                             ; CODE XREF: sub_4F1499+25↑j
test    ds:byte_8877ED, 1
jz      short loc_4F16C8
mov     ds:dword_551D3C, 1
jmp     short loc_4F16E7
loc_4F207E:                             ; CODE XREF: sub_4F203B+37↑j
mov     ebx, 20h ; ' '
mov     edx, offset unk_782C14
lea     eax, [esp+8Ch+var_44]
call    memcpy_
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
lea     edx, [esp+90h+var_10]
push    edx
lea     edx, [esp+94h+var_8C]
push    edx
push    eax
call    dword ptr [ecx+18h]
mov     eax, dword ptr [esp+8Ch+var_10]
add     esp, 80h
pop     edi
pop     ecx
pop     ebx
retn
sub_4F203B      endp
sub_4F20B9      proc near               ; CODE XREF: sub_4F2941+59↓p
var_A8          = dword ptr -0A8h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_9C          = dword ptr -9Ch
var_98          = dword ptr -98h
var_84          = dword ptr -84h
var_60          = byte ptr -60h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 94h
mov     edi, eax
mov     [esp+0A8h+var_18], edx
and     edi, 1Fh
xor     esi, esi
jmp     short loc_4F20DA
loc_4F16C8:                             ; CODE XREF: sub_4F1499+221↑j
test    ds:byte_8877EC, 80h
jz      short loc_4F16DD
mov     ds:dword_551D3C, 2
jmp     short loc_4F16E7
loc_4F9816:                             ; CODE XREF: sub_4F97E5+29↑j
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
sub_4F97E5      endp
sub_4F985F      proc near               ; DATA XREF: sub_4F9933:loc_4F99C8↓o
hWnd            = dword ptr  4
Msg             = dword ptr  8
wParam          = dword ptr  0Ch
lParam          = dword ptr  10h
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
loc_4F84E9:                             ; CODE XREF: sub_4F84A5+34↑j
mov     ebp, ds:dword_551D10
test    ebp, ebp
jz      short loc_4F8501
mov     edx, [ebp+0]
push    ebp
call    dword ptr [edx+8]
xor     eax, eax
mov     ds:dword_551D10, eax
loc_4F1344:                             ; CODE XREF: sub_4F12FE+30↑j
xor     ebx, ebx
loc_4F9DA2:                             ; CODE XREF: sub_4F9F7D+33↓j
pop     ebp
loc_4F84D1:                             ; CODE XREF: sub_4F84A5+1A↑j
mov     esi, ds:dword_551D14
test    esi, esi
jz      short loc_4F84E9
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D14, edi
loc_4F1C88:                             ; CODE XREF: sub_4F1B45+136↑j
inc     edx
jmp     loc_4F1D0C
loc_4FFAF6:                             ; CODE XREF: sub_4FFA59+83↑j
test    byte ptr [esi+0Ch], 20h
jz      short loc_4FFB01
mov     edx, 0FFFFFFFFh
sub_4EED6C      proc near               ; CODE XREF: sub_4A66A4+117↑p
mov     eax, esp
sub     eax, 8000h
mov     ds:dword_551414, eax
retn
sub_4EED6C      endp
loc_4F1CAE:                             ; CODE XREF: sub_4F1B45+97↑j
mov     edx, [esp+78h+var_18]
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F1C99
xor     edi, edi
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ecx, ecx
mov     cl, ds:byte_782C35[edx]
imul    ecx, eax
xor     ebx, ebx
mov     bl, ds:byte_782BF7
imul    eax, ebx
cmp     ecx, eax
jz      short loc_4F1D0A
mov     edi, ds:dword_782C38[edx]
mov     ds:byte_782C35[edx], bl
xor     ecx, ecx
mov     cx, ds:word_782C36[edx]
xor     eax, eax
mov     al, bl
imul    eax, ecx
call    _nmalloc_
mov     ds:dword_782C38[edx], eax
loc_4F1D54:                             ; CODE XREF: sub_4F1B45+84↑j
add     esp, 64h
jmp     loc_4F3509
sub_4F1B45      endp
sub_4F1D5C      proc near               ; CODE XREF: sub_4F17FC+66↑p
push    ecx
xor     ecx, ecx
test    eax, eax
jl      short loc_4F1DA5
cmp     eax, 100h
jge     short loc_4F1DA5
cmp     edx, 0F0h
jl      short loc_4F1D8D
cmp     edx, 100h
jge     short loc_4F1D8D
shl     edx, 4
sar     eax, 4
sub     edx, 0F00h
lea     ecx, [edx+eax]
mov     eax, ecx
pop     ecx
retn
loc_4F38BC:                             ; CODE XREF: sub_4F387C+17↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, ds:dword_887778
push    ebx
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D3C
cmp     eax, 1
jb      short loc_4F38EA
jbe     short loc_4F3927
cmp     eax, 2
jz      loc_4F3974
jmp     loc_4F3983
loc_4F8565:                             ; CODE XREF: sub_4F84A5+AE↑j
mov     esi, ds:dword_551D00
test    esi, esi
jz      short loc_4F857D
mov     edx, [esi]
push    esi
call    dword ptr [edx+8]
xor     edi, edi
mov     ds:dword_551D00, edi
sub_4F8838      proc near               ; CODE XREF: sub_4A0EF8+34B↑p
arg_0           = dword ptr  4
mov     [eax], dx
mov     [eax+2], bx
mov     [eax+4], cx
mov     edx, [esp+arg_0]
mov     [eax+6], dx
retn    4
sub_4F8838      endp
loc_4F1C99:                             ; CODE XREF: sub_4F1B45+14B↑j
mov     esi, [esp+78h+var_18]
inc     esi
mov     [esp+78h+var_18], esi
cmp     esi, 254h
jge     loc_4F1D4F
loc_4FFAAE:                             ; CODE XREF: sub_4FFA59+4C↑j
mov     cl, [esi+0Dh]
xor     edi, edi
test    cl, 4
jz      short loc_4FFACC
mov     ch, cl
and     ch, 0FAh
mov     al, ch
mov     [esi+0Dh], ch
or      al, 1
mov     edi, 1
mov     [esi+0Dh], al
loc_4F3509:                             ; CODE XREF: sub_4F1B45+212↑j
pop     edi
loc_4FFA8E:                             ; CODE XREF: sub_4FFA59+18↑j
mov     ah, [esi+0Ch]
and     ah, 0CFh
mov     ebp, [esi+0Ch]
mov     [esi+0Ch], ah
mov     eax, [esi+8]
mov     ecx, [eax+8]
and     ebp, 30h
test    ecx, ecx
jnz     short loc_4FFAAE
mov     eax, esi
call    __ioalloc_
loc_4F1C07:                             ; CODE XREF: sub_4F1B45+A1↑j
mov     ebx, [esp+78h+var_68]
and     ebx, eax
mov     cl, [esp+78h+var_74]
shl     ebx, cl
mov     esi, [esp+78h+var_64]
and     esi, eax
mov     cl, byte ptr [esp+78h+var_70]
shl     esi, cl
and     eax, [esp+78h+var_60]
mov     cl, byte ptr [esp+78h+var_6C]
shl     eax, cl
mov     cl, byte ptr ds:dword_782BF8
shr     ebx, cl
and     ebx, ds:dword_782C04
mov     cl, byte ptr ds:dword_782BFC
shr     esi, cl
and     esi, ds:dword_782C08
mov     cl, byte ptr ds:dword_782C00
shr     eax, cl
and     eax, ds:dword_782C0C
or      ebx, esi
or      eax, ebx
jz      short loc_4F1C5F
or      eax, ds:dword_782C10
sub_4F13D0      proc near               ; CODE XREF: sub_4F11EA:loc_4F12B4↑p
push    ebx
push    ecx
mov     ecx, edx
xor     edx, edx
mov     dl, ds:byte_782BF4
cmp     eax, edx
jle     loc_4F1496
mov     ds:byte_782BF4, al
mov     al, [ecx+0Ch]
mov     ds:byte_782BF6, al
cmp     al, 10h
jnz     short loc_4F13FE
mov     ds:byte_782BF7, 2
jmp     short loc_4F1405
loc_4F13FE:                             ; CODE XREF: sub_4F13D0+23↑j
mov     ds:byte_782BF7, 4
loc_4F1405:                             ; CODE XREF: sub_4F13D0+2C↑j
xor     edx, edx
mov     eax, [ecx+10h]
mov     ds:dword_782C04, eax
loc_4F140F:                             ; CODE XREF: sub_4F13D0+49↓j
test    eax, offset unk_800000
jnz     short loc_4F141B
add     eax, eax
inc     edx
jmp     short loc_4F140F
loc_4F141B:                             ; CODE XREF: sub_4F13D0+44↑j
mov     ds:dword_782BF8, edx
xor     edx, edx
mov     eax, [ecx+14h]
mov     ds:dword_782C08, eax
loc_4F142B:                             ; CODE XREF: sub_4F13D0+65↓j
test    eax, offset unk_800000
jnz     short loc_4F1437
add     eax, eax
inc     edx
jmp     short loc_4F142B
loc_4F1437:                             ; CODE XREF: sub_4F13D0+60↑j
mov     ds:dword_782BFC, edx
xor     edx, edx
mov     eax, [ecx+18h]
mov     ds:dword_782C0C, eax
loc_4F1447:                             ; CODE XREF: sub_4F13D0+81↓j
test    eax, offset unk_800000
jnz     short loc_4F1453
add     eax, eax
inc     edx
jmp     short loc_4F1447
loc_4F1453:                             ; CODE XREF: sub_4F13D0+7C↑j
mov     ds:dword_782C00, edx
mov     eax, [ecx+1Ch]
mov     ds:dword_782C10, eax
mov     edx, ds:dword_782C04
cmp     edx, 1Fh
jz      short loc_4F1474
cmp     edx, 0FFh
jnz     short loc_4F147D
loc_4F1474:                             ; CODE XREF: sub_4F13D0+9A↑j
mov     ds:byte_782BF5, 1
jmp     short loc_4F1485
loc_4F147D:                             ; CODE XREF: sub_4F13D0+A2↑j
xor     bl, bl
mov     ds:byte_782BF5, bl
loc_4F1485:                             ; CODE XREF: sub_4F13D0+AB↑j
mov     ebx, 20h ; ' '
mov     edx, ecx
mov     eax, offset unk_782C14
call    memcpy_
loc_4F1496:                             ; CODE XREF: sub_4F13D0+E↑j
pop     ecx
pop     ebx
retn
sub_4F13D0      endp
sub_4F88FC      proc near               ; CODE XREF: sub_4A6890+C↑p
push    ebx
push    ecx
push    esi
mov     ebx, edx
shl     edx, 2
sub     edx, 4
add     eax, edx
xor     edx, edx
loc_4F890B:                             ; CODE XREF: sub_4F88FC+24↓j
lea     ecx, [ebx-1]
cmp     edx, ecx
jge     short loc_4F8922
lea     ecx, [eax-4]
mov     esi, ecx
or      si, 1
mov     [eax], esi
mov     eax, ecx
inc     edx
jmp     short loc_4F890B
loc_4F8922:                             ; CODE XREF: sub_4F88FC+14↑j
mov     dword ptr [eax], offset unk_551D4C
or      byte ptr [eax], 1
pop     esi
pop     ecx
pop     ebx
retn
sub_4F88FC      endp
loc_4F1BCE:                             ; CODE XREF: sub_4F1B45+65↑j
test    ebx, ebx
jz      loc_4F1D4F
xor     ecx, ecx
mov     [esp+78h+var_18], ecx
jmp     loc_4F1CAE
loc_4F1C5F:                             ; CODE XREF: sub_4F1B45+112↑j
mov     ecx, [esp+78h+var_18]
shl     ecx, 3
cmp     ds:byte_782BF7, 2
jnz     short loc_4F1C7D
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*2], ax
jmp     short loc_4F1C88
loc_4F1BE1:                             ; CODE XREF: sub_4F1B45+1F4↓j
lea     eax, [edi+ebx]
mov     eax, [eax]
jmp     short loc_4F1C07
loc_4F16A1:                             ; CODE XREF: sub_4F1499+1FC↑j
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    eax
call    dword ptr [edx+80h]
jmp     short loc_4F16E7
sub_4F88DA      proc near               ; CODE XREF: sub_4A680F+16↑p
arg_0           = dword ptr  4
mov     [eax], dx
mov     [eax+2], bx
mov     [eax+4], cx
mov     edx, [esp+arg_0]
mov     [eax+6], dx
mov     byte ptr [eax+16h], 1
mov     byte ptr [eax+17h], 1
mov     byte ptr [eax+18h], 0
retn    4
sub_4F88DA      endp
loc_4F8D4A:                             ; CODE XREF: sub_4F8C23+76↑j
mov     eax, ds:dword_551F38
mov     edx, [eax]
push    0
push    offset dword_551F3C
push    offset byte_4F8ADD
push    eax
call    dword ptr [edx+0Ch]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    offset dword_507AB0
push    eax
call    dword ptr [edx+2Ch]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    0Ah
push    esi
push    eax
call    dword ptr [edx+34h]
mov     eax, ds:dword_551F3C
mov     edx, [eax]
push    eax
call    dword ptr [edx+1Ch]
loc_4F1BAC:                             ; CODE XREF: sub_4F1B45+38↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    offset sub_4F11EA
push    eax
call    dword ptr [edx+20h]
cmp     ds:byte_782BF4, 0
jnz     short loc_4F1BCE
xor     eax, eax
jmp     loc_4F1D54
sub_4FBC14      proc near               ; CODE XREF: sub_4F1B45+60↑p
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
loc_4FBC3A:                             ; CODE XREF: sub_4FBC14+18↑j
cmp     edx, 7E0h
jnz     short loc_4FBC4E
mov     eax, offset loc_4FBCD4
mov     edx, offset loc_4FBD19
jmp     short loc_4FBC58
loc_4FBC4E:                             ; CODE XREF: sub_4FBC14+2C↑j
mov     eax, offset loc_4FBCED
mov     edx, offset loc_4FBD2C
loc_4FBC58:                             ; CODE XREF: sub_4FBC14+24↑j
mov     ds:dword_55205C, eax
mov     ds:dword_552060, edx
loc_4FBC63:                             ; CODE XREF: sub_4FBC14+A↑j
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
loc_4FBC97:                             ; CODE XREF: sub_4FBC14+7E↑j
mov     eax, ds:off_557A78[eax*4]
mov     ds:dword_557A74, eax
imul    edx, 5
test    ebx, 1
jz      short loc_4FBCB1
add     edx, 0Fh
loc_4FBCB1:                             ; CODE XREF: sub_4FBC14+98↑j
mov     ds:dword_552064, edx
pop     edx
pop     ebx
pop     eax
retn
loc_4FBCBB:                             ; DATA XREF: sub_4FBC14+1A↑o
shld    edx, eax, 19h
shl     eax, 16h
shld    edx, eax, 8
shl     eax, 5
shld    edx, eax, 8
and     edx, 0F8F8F8h
retn
loc_4FBCD4:                             ; DATA XREF: sub_4FBC14+2E↑o
shld    edx, eax, 18h
shl     eax, 15h
shld    edx, eax, 8
shl     eax, 6
shld    edx, eax, 8
and     edx, 0F8FCF8h
retn
loc_4FBCED:                             ; DATA XREF: sub_4FBC14:loc_4FBC4E↑o
shld    edx, eax, 1Ch
shl     eax, 18h
shld    edx, eax, 8
shl     eax, 4
shld    edx, eax, 8
and     edx, 0F0F0F0h
retn
loc_4FBD06:                             ; DATA XREF: sub_4FBC14+1F↑o
shld    eax, edx, 0Dh
shl     edx, 10h
shld    eax, edx, 5
shl     edx, 8
shld    eax, edx, 5
retn
loc_4FBD19:                             ; DATA XREF: sub_4FBC14+33↑o
shld    eax, edx, 0Dh
shl     edx, 10h
shld    eax, edx, 6
shl     edx, 8
shld    eax, edx, 5
retn
loc_4FBD2C:                             ; DATA XREF: sub_4FBC14+3F↑o
shld    eax, edx, 0Ch
shl     edx, 10h
shld    eax, edx, 4
shl     edx, 8
shld    eax, edx, 4
retn
sub_4FBC14      endp
loc_4D898E:                             ; CODE XREF: sub_4D8930+79↓j
mov     eax, edx
shl     eax, 8
add     eax, edx
mov     ds:dword_562204[eax*8], ecx
xor     ebx, ebx
mov     ds:dword_562208[eax*8], ebx
inc     edx
cmp     edx, 5
jl      short loc_4D898E
pop     edx
pop     ecx
pop     ebx
retn
sub_4D8930      endp
sub_4D89AF      proc near               ; CODE XREF: WinMain(x,x,x,x)+545↑p
push    edx
mov     edx, 1
mov     eax, offset dword_55D430
call    sub_4FA755
mov     edx, 1
mov     eax, offset dword_55D5C0
call    sub_4FA755
xor     edx, edx
loc_4F1BE8:                             ; CODE XREF: sub_4F1B45+1E9↓j
cmp     [esp+78h+var_75], 2
jnz     short loc_4F1BFE
mov     eax, ds:dword_782C38[eax]
mov     ax, [ecx+eax]
jmp     loc_4F1D45
sub_4F8674      proc near               ; CODE XREF: WinMain(x,x,x,x)+255↑p
push    ecx
push    edx
mov     edx, eax
shl     eax, 2
cmp     edx, 64h ; 'd'
jge     short loc_4F8688
mov     eax, ds:dword_551C90[eax]
jmp     short loc_4F868E
loc_4F8688:                             ; CODE XREF: sub_4F8674+A↑j
mov     eax, ds:dword_551B50[eax]
loc_4F868E:                             ; CODE XREF: sub_4F8674+12↑j
push    10h             ; uType
push    offset aError_0 ; "ERROR"
push    eax             ; lpText
push    0               ; hWnd
call    cs:__imp_MessageBoxA
pop     edx
pop     ecx
retn
sub_4F8674      endp
sub_4F1FD4      proc near               ; CODE XREF: sub_4F84A5+D↓p
push    ebx
push    ecx
push    edx
push    esi
xor     esi, esi
jmp     short loc_4F2003
loc_4F1FDC:                             ; CODE XREF: sub_4F1FD4+5D↓j
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset word_7873C4
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 40h ; '@'
jge     loc_4F350A
loc_4F2003:                             ; CODE XREF: sub_4F1FD4+6↑j
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_7873CC[eax]
test    edx, edx
jz      short loc_4F201F
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
loc_4F201F:                             ; CODE XREF: sub_4F1FD4+41↑j
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     ecx, ds:dword_7873C8[eax]
test    ecx, ecx
jz      short loc_4F1FDC
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     short loc_4F1FDC
sub_4F1FD4      endp
loc_4F1D4F:                             ; CODE XREF: sub_4F1B45+8B↑j
mov     eax, 1
loc_50273A:                             ; CODE XREF: __RemoveThreadData_+36↑j
call    ds:off_551FF4
loc_4F1C7D:                             ; CODE XREF: sub_4F1B45+128↑j
mov     ebx, edx
mov     ecx, ds:dword_782C38[ecx]
mov     [ecx+ebx*4], eax
loc_4F854B:                             ; CODE XREF: sub_4F84A5+96↑j
mov     edx, ds:dword_551D04
test    edx, edx
jz      short loc_4F8565
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551D04, ecx
loc_4F13CA:                             ; CODE XREF: sub_4F134B+5D↑j
add     esp, 7Ch
pop     edi
pop     ecx
retn
sub_4F134B      endp
sub_4F13D0      proc near               ; CODE XREF: sub_4F11EA:loc_4F12B4↑p
push    ebx
push    ecx
mov     ecx, edx
xor     edx, edx
mov     dl, ds:byte_782BF4
cmp     eax, edx
jle     loc_4F1496
mov     ds:byte_782BF4, al
mov     al, [ecx+0Ch]
mov     ds:byte_782BF6, al
cmp     al, 10h
jnz     short loc_4F13FE
mov     ds:byte_782BF7, 2
jmp     short loc_4F1405
loc_4F3927:                             ; CODE XREF: sub_4F387C+5E↑j
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
fld     ds:flt_551D44
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_18]
fld     ds:flt_551D48
fdiv    ds:flt_50A89C
fstp    [esp+18h+var_14]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     esi, [esp+18h+var_18]
push    esi
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     edi, [esp+18h+var_14]
push    edi
jmp     short loc_4F3923
loc_4FFB01:                             ; CODE XREF: sub_4FFA59+A1↑j
mov     edi, [esi+0Ch]
or      edi, ebp
mov     eax, [esi+10h]
mov     [esi+0Ch], edi
call    ds:off_551FCC
mov     eax, edx
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FFA59      endp
mem_putc_       proc near               ; DATA XREF: vsprintf_+4↓o
push    ebx
push    ecx
mov     ebx, edx
mov     edx, [eax]
lea     ecx, [edx+1]
mov     [eax], ecx
mov     [edx], bl
inc     dword ptr [eax+10h]
pop     ecx
pop     ebx
retn
mem_putc_       endp
vsprintf_       proc near               ; CODE XREF: sprintf_+16↑p
push    ecx
push    esi
mov     esi, eax
mov     ecx, offset mem_putc_
call    sub_5015FB
mov     byte ptr [esi+eax], 0
pop     esi
pop     ecx
retn
vsprintf_       endp
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
loc_4F8D8A:                             ; CODE XREF: sub_4F8C23+52↑j
add     esp, 18h
pop     esi
pop     ecx
pop     ebx
sub_4F8C23      endp
nullsub_3       proc near               ; CODE XREF: sub_4A66A4+A8↑p
retn
nullsub_3       endp
sub_4F8D91      proc near               ; CODE XREF: WinMain(x,x,x,x)+54A↑p
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     edx, ds:dword_551F40
test    edx, edx
jz      short loc_4F8DBC
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+20h]
mov     eax, ds:dword_551F40
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
xor     ecx, ecx
mov     ds:dword_551F40, ecx
loc_4FFA87:                             ; CODE XREF: sub_4FFA59+1C↑j
mov     dword ptr [eax+0Ch], 1
loc_4F9FB5:                             ; CODE XREF: sub_4F9F7D+24↑j
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
loc_4F1346:                             ; CODE XREF: sub_4F12FE+2E↑j
mov     eax, ebx
pop     ecx
pop     ebx
retn
sub_4F12FE      endp
sub_4F134B      proc near               ; CODE XREF: sub_4F7BBA+3D8↓p
var_84          = byte ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_3C          = byte ptr -3Ch
var_1C          = dword ptr -1Ch
push    ecx
push    edi
sub     esp, 7Ch
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+84h+var_80], 1007h
mov     [esp+84h+var_1C], 24000h
mov     [esp+84h+var_78], ecx
mov     [esp+84h+var_7C], edx
mov     eax, ds:dword_551D0C
mov     ecx, [eax]
lea     edx, [esp+84h+var_3C]
push    edx
push    offset sub_4F12C3
push    offset word_4F0D1E
push    eax
call    dword ptr [ecx+28h]
mov     eax, ds:dword_551CF0
mov     ecx, [eax]
push    0
push    offset dword_551CFC
lea     edx, [esp+8Ch+var_84]
push    edx
push    eax
call    dword ptr [ecx+18h]
test    eax, eax
jz      short loc_4F13AA
loc_4FA0D8:                             ; CODE XREF: sub_4F9F7D+10↑j
mov     ebx, 40h ; '@'
xor     edx, edx
mov     eax, offset dword_897B10
call    memset_
xor     eax, eax
jmp     loc_4F9DA2
sub_4F9F7D      endp
sub_4FA0F0      proc near               ; CODE XREF: sub_4D89AF+2E↑p
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
loc_4F1D45:                             ; CODE XREF: sub_4F1B45+B4↑j
and     eax, 0FFFFh
jmp     loc_4F1C07
loc_4F38A4:                             ; CODE XREF: sub_4F387C+20↑j
mov     ds:dword_887778, ebx
mov     eax, [esp+18h+arg_0]
mov     ds:flt_551D44, eax
mov     eax, [esp+18h+arg_4]
mov     ds:flt_551D48, eax
sub_4EF003      proc near               ; CODE XREF: sub_4024AC+76↑p
add     eax, 400h
sub_4EF003      endp
loc_4F3923:                             ; CODE XREF: sub_4F387C+F6↓j
push    25h ; '%'
jmp     short loc_4F397F
loc_4F1FA9:                             ; CODE XREF: sub_4F1F39+66↑j
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ecx, ds:dword_783ED8[eax]
test    ecx, ecx
jz      short loc_4F1F50
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     loc_4F1F50
sub_4F1F39      endp
sub_4F1FD4      proc near               ; CODE XREF: sub_4F84A5+D↓p
push    ebx
push    ecx
push    edx
push    esi
xor     esi, esi
jmp     short loc_4F2003
loc_4F868E:                             ; CODE XREF: sub_4F8674+12↑j
push    10h             ; uType
push    offset aError_0 ; "ERROR"
push    eax             ; lpText
push    0               ; hWnd
call    cs:__imp_MessageBoxA
pop     edx
pop     ecx
retn
sub_4F8674      endp
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
loc_4F1DA5:                             ; CODE XREF: sub_4F1D5C+5↑j
cmp     eax, 100h
jl      short loc_4F1DE0
cmp     eax, 140h
jge     short loc_4F1DE0
cmp     edx, 0F0h
jl      short loc_4F1DE0
cmp     edx, 0F4h
jge     short loc_4F1DE0
shl     edx, 2
sub     eax, 100h
sar     eax, 4
sub     edx, 3C0h
add     eax, edx
lea     ecx, [eax+200h]
mov     eax, ecx
pop     ecx
retn
loc_4F140F:                             ; CODE XREF: sub_4F13D0+49↓j
test    eax, offset unk_800000
jnz     short loc_4F141B
add     eax, eax
inc     edx
jmp     short loc_4F140F
loc_5017F7:                             ; CODE XREF: sub_5015FB+22A↓j
mov     ebx, esp
mov     ecx, ebp
mov     edx, es
mov     eax, edi
call    sub_501C76
jmp     short loc_501843
loc_5017B2:                             ; CODE XREF: sub_5015FB+198↑j
lea     ebx, [esp+80h+var_48]
loc_4F8DBC:                             ; CODE XREF: sub_4F8D91+E↑j
mov     ebx, ds:dword_551F44
test    ebx, ebx
jz      short loc_4F8DD4
mov     edx, [ebx]
push    ebx
call    dword ptr [edx+8]
xor     esi, esi
mov     ds:dword_551F44, esi
loc_5017E7:                             ; CODE XREF: sub_5015FB+1DB↑j
mov     dh, [esp+80h+var_6B]
cmp     dh, 73h ; 's'
jnz     short loc_501822
test    byte ptr [esp+80h+var_62], 20h
jz      short loc_501806
loc_5016A7:                             ; CODE XREF: sub_5015FB+2F↑j
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
loc_4F1F81:                             ; CODE XREF: sub_4F1F39+15↑j
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     edx, ds:dword_783EDC[eax]
test    edx, edx
jz      short loc_4F1FA9
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
loc_501711:                             ; CODE XREF: sub_5015FB+D7↑j
test    dh, 80h
jz      short loc_501725
mov     eax, [esi]
add     eax, 8
mov     [esi], eax
les     edx, [eax-8]
jmp     loc_50167D
loc_4FBC58:                             ; CODE XREF: sub_4FBC14+24↑j
mov     ds:dword_55205C, eax
mov     ds:dword_552060, edx
loc_501822:                             ; CODE XREF: sub_5015FB+1F3↑j
cmp     dh, 53h ; 'S'
jz      short loc_5017F7
loc_50173D:                             ; CODE XREF: sub_5015FB+64↑j
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
loc_4EEFCE:                             ; CODE XREF: sub_4EF008+5↓j
mov     edx, 1
loc_4F866D:                             ; CODE XREF: sub_4F860C+1A↑j
add     esp, 4
pop     edi
pop     esi
pop     ecx
retn
sub_4F860C      endp
sub_4F8674      proc near               ; CODE XREF: WinMain(x,x,x,x)+255↑p
push    ecx
push    edx
mov     edx, eax
shl     eax, 2
cmp     edx, 64h ; 'd'
jge     short loc_4F8688
mov     eax, ds:dword_551C90[eax]
jmp     short loc_4F868E
loc_5017B6:                             ; CODE XREF: sub_5015FB+1D4↓j
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
loc_4F13FE:                             ; CODE XREF: sub_4F13D0+23↑j
mov     ds:byte_782BF7, 4
loc_4F1731:                             ; CODE XREF: sub_4F16F3+23↑j
cmp     ds:dword_551D3C, 2
jnz     loc_4F3BD5
xor     edx, edx
jmp     short loc_4F1780
loc_4F9C27:                             ; CODE XREF: sub_4F9C02+1B↑j
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
loc_501875:                             ; CODE XREF: sub_5015FB+263↑j
cmp     [esp+80h+var_4C], 0
jle     short loc_50188B
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_4C]
jmp     short loc_501875
loc_5016A1:                             ; CODE XREF: sub_5015FB+9A↑j
mov     eax, [esp+80h+var_70]
mov     [edx], eax
loc_4F147D:                             ; CODE XREF: sub_4F13D0+A2↑j
xor     bl, bl
mov     ds:byte_782BF5, bl
loc_4F1FDC:                             ; CODE XREF: sub_4F1FD4+5D↓j
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, offset word_7873C4
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 40h ; '@'
jge     loc_4F350A
loc_4F98DC:                             ; CODE XREF: sub_4F985F+28↑j
cmp     edx, 1
jnz     short loc_4F9916
xor     ah, ah
mov     ds:byte_551FA8, ah
jmp     short loc_4F9916
loc_4F142B:                             ; CODE XREF: sub_4F13D0+65↓j
test    eax, offset unk_800000
jnz     short loc_4F1437
add     eax, eax
inc     edx
jmp     short loc_4F142B
loc_4FBCB1:                             ; CODE XREF: sub_4FBC14+98↑j
mov     ds:dword_552064, edx
pop     edx
pop     ebx
pop     eax
retn
loc_4F8922:                             ; CODE XREF: sub_4F88FC+14↑j
mov     dword ptr [eax], offset unk_551D4C
or      byte ptr [eax], 1
pop     esi
pop     ecx
pop     ebx
retn
sub_4F88FC      endp
sub_4F892F      proc near               ; CODE XREF: sub_43765F+86↑p
and     eax, 3
shl     eax, 7
and     edx, 3
shl     edx, 5
or      edx, eax
mov     eax, ecx
and     eax, 100h
sar     eax, 4
or      edx, eax
mov     eax, ebx
and     eax, 3FFh
sar     eax, 6
or      eax, edx
and     ecx, 200h
shl     ecx, 2
or      eax, ecx
retn
sub_4F892F      endp
sub_4F8961      proc near               ; CODE XREF: sub_4382E2+32↑p
sar     eax, 4
and     eax, 3Fh
shl     edx, 6
or      eax, edx
locret_4F896C:                          ; CODE XREF: sub_4E7ABD+18↑p
retn
sub_4F8961      endp
loc_501697:                             ; CODE XREF: sub_5015FB+8E↑j
mov     edi, [esi]
add     edi, 4
mov     [esi], edi
mov     edx, [edi-4]
loc_4F1474:                             ; CODE XREF: sub_4F13D0+9A↑j
mov     ds:byte_782BF5, 1
jmp     short loc_4F1485
loc_4F17C2:                             ; CODE XREF: sub_4F16F3+9↑j
test    eax, eax
jnz     short loc_4F17D3
cmp     ds:dword_551D38, 0
jnz     loc_4F3BD5
loc_4EEFD3:                             ; CODE XREF: sub_4EF008+C↓j
and     eax, 7FFh
cmp     eax, 400h
jge     short loc_4EEFE9
mov     ax, ds:word_55143C[eax*2]
jmp     short loc_4EEFF8
loc_4F2003:                             ; CODE XREF: sub_4F1FD4+6↑j
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     edx, ds:dword_7873CC[eax]
test    edx, edx
jz      short loc_4F201F
mov     eax, edx
mov     edx, [edx]
push    eax
call    dword ptr [edx+8]
loc_4F1D8D:                             ; CODE XREF: sub_4F1D5C+14↑j
shl     edx, 4
sar     eax, 4
sub     edx, 1F00h
add     eax, edx
lea     ecx, [eax+100h]
mov     eax, ecx
pop     ecx
retn
loc_50179C:                             ; CODE XREF: sub_5015FB+1B5↓j
cmp     [esp+80h+var_7C], 0
jle     short loc_5017B2
mov     edx, 20h ; ' '
mov     eax, esp
call    ebp
dec     [esp+80h+var_7C]
jmp     short loc_50179C
loc_4FBC3A:                             ; CODE XREF: sub_4FBC14+18↑j
cmp     edx, 7E0h
jnz     short loc_4FBC4E
mov     eax, offset loc_4FBCD4
mov     edx, offset loc_4FBD19
jmp     short loc_4FBC58
loc_501725:                             ; CODE XREF: sub_5015FB+119↑j
test    dh, 40h
jnz     loc_501697
mov     ecx, [esi]
add     ecx, 4
mov     [esi], ecx
mov     edx, [ecx-4]
jmp     loc_5016A1
loc_5016FC:                             ; CODE XREF: sub_5015FB+114↓j
mov     eax, [esp+80h+var_70]
mov     [edx], ax
jmp     short loc_5016A7
loc_501705:                             ; CODE XREF: sub_5015FB+F5↑j
mov     edx, [esi]
add     edx, 4
mov     [esi], edx
mov     edx, [edx-4]
jmp     short loc_5016FC
sub_5018BC      proc near               ; CODE XREF: sub_5015FB+42↑p
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
loc_5018F9:                             ; CODE XREF: sub_5018BC+2B↑j
inc     eax
jmp     short loc_50191B
loc_5018FC:                             ; CODE XREF: sub_5018BC+1A↑j
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
loc_50191B:                             ; CODE XREF: sub_5018BC+3E↑j
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
loc_50194C:                             ; CODE XREF: sub_5018BC+87↑j
inc     eax
jmp     short loc_50196E
loc_50194F:                             ; CODE XREF: sub_5018BC+76↑j
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
loc_50196E:                             ; CODE XREF: sub_5018BC+91↑j
cmp     dword ptr [ebx+8], 0FFFFFFFFh
jz      short loc_501978
mov     byte ptr [ebx+16h], 20h ; ' '
loc_501978:                             ; CODE XREF: sub_5018BC+69↑j
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
loc_501998:                             ; CODE XREF: sub_5018BC+CF↑j
cmp     dl, 68h ; 'h'
jz      short loc_5019C8
pop     edi
pop     esi
pop     ecx
retn
loc_5019A1:                             ; CODE XREF: sub_5018BC+C4↑j
cmp     dl, 49h ; 'I'
jb      short loc_5019B1
jbe     short loc_5019CE
cmp     dl, 4Ch ; 'L'
jz      short loc_5019EA
pop     edi
pop     esi
pop     ecx
retn
loc_5019B1:                             ; CODE XREF: sub_5018BC+E8↑j
cmp     dl, 46h ; 'F'
jz      short loc_5019F9
pop     edi
pop     esi
pop     ecx
retn
loc_5019BA:                             ; CODE XREF: sub_5018BC+D1↑j
mov     cl, [ebx+1Eh]
or      cl, 20h
inc     eax
mov     [ebx+1Eh], cl
pop     edi
pop     esi
pop     ecx
retn
loc_5019C8:                             ; CODE XREF: sub_5018BC+DF↑j
or      byte ptr [ebx+1Eh], 10h
jmp     short loc_501A03
loc_5019CE:                             ; CODE XREF: sub_5018BC+EA↑j
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
loc_5019EA:                             ; CODE XREF: sub_5018BC+EF↑j
mov     dl, [ebx+1Fh]
or      dl, 1
mov     eax, ecx
mov     [ebx+1Fh], dl
pop     edi
pop     esi
pop     ecx
retn
loc_5019F9:                             ; CODE XREF: sub_5018BC+F8↑j
or      byte ptr [ebx+1Eh], 80h
jmp     short loc_501A03
loc_5019FF:                             ; CODE XREF: sub_5018BC+C6↑j
or      byte ptr [ebx+1Eh], 40h
loc_501A03:                             ; CODE XREF: sub_5018BC+110↑j
mov     eax, ecx
loc_501A05:                             ; CODE XREF: sub_5018BC+116↑j
pop     edi
pop     esi
pop     ecx
retn
sub_5018BC      endp
loc_4F1496:                             ; CODE XREF: sub_4F13D0+E↑j
pop     ecx
pop     ebx
retn
sub_4F13D0      endp
sub_4F1499      proc near               ; CODE XREF: sub_4F7BBA+8C5↓p
var_98          = byte ptr -98h
var_74          = dword ptr -74h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
push    ebx
push    ecx
push    edx
push    edi
push    ebp
sub     esp, 84h
mov     [esp+98h+var_18], 3F800000h
mov     [esp+98h+var_1C], 40A00000h
test    ds:byte_8877EE, 10h
jz      loc_4F16B3
test    ds:byte_8877ED, 1
jz      loc_4F16B3
xor     ebp, ebp
mov     ds:flt_8876C4, ebp
mov     ds:flt_8876C8, ebp
mov     edx, 3F333333h
mov     ds:dword_8876CC, edx
mov     ecx, 3E124925h
mov     ds:flt_8876D0, ecx
mov     ebx, 0FFFFFFFFh
mov     ds:dword_8876D4, ebx
mov     ds:dword_8876D8, ebp
mov     edi, 41800000h
mov     ds:flt_8876E4, edi
mov     ds:flt_8876E8, ebp
mov     eax, edx
mov     ds:dword_8876EC, edx
mov     edx, ecx
mov     ds:flt_8876F0, ecx
mov     ecx, ebx
mov     ds:dword_8876F4, ebx
mov     ds:dword_8876F8, ebp
mov     ds:flt_887704, ebp
mov     ds:flt_887708, edi
mov     ebp, eax
mov     ds:dword_88770C, ebp
mov     eax, edx
mov     ds:flt_887710, eax
mov     edx, ebx
mov     ds:dword_887714, ebx
xor     ecx, ebx
mov     ds:dword_887718, ecx
mov     ds:flt_887724, edi
mov     ds:flt_887728, edi
mov     ds:dword_88772C, ebp
mov     ds:flt_887730, eax
mov     ds:dword_887734, ebx
xor     edx, ebx
mov     ds:dword_887738, edx
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+24h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    0
push    eax
call    dword ptr [edx+98h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    22h ; '"'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    3
push    23h ; '#'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ecx, [esp+98h+var_18]
push    ecx
push    24h ; '$'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
mov     ebx, [esp+98h+var_1C]
push    ebx
push    25h ; '%'
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Bh
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    8
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    1
push    4
push    offset flt_8876C4
push    1C4h
push    5
push    eax
call    dword ptr [edx+70h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    0
push    1Ch
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    4
push    17h
push    eax
call    dword ptr [edx+58h]
mov     eax, ds:dword_551D10
mov     edx, [eax]
push    eax
call    dword ptr [edx+28h]
mov     eax, esp
call    sub_4F188E
mov     eax, ds:dword_551CF8
mov     edx, [eax]
push    0
push    1
lea     ecx, [esp+0A0h+var_98]
push    ecx
push    0
push    eax
call    dword ptr [edx+64h]
test    eax, eax
jnz     loc_4F16E7
mov     edx, ds:dword_782C10
not     edx
mov     eax, [esp+98h+var_74]
test    [eax], edx
jnz     short loc_4F1697
xor     ebp, ebp
mov     ds:dword_551D3C, ebp
jmp     short loc_4F16A1
loc_4F1F4C:                             ; CODE XREF: sub_4F1F39+7↑j
xor     esi, esi
jmp     short loc_4F1F81
loc_501843:                             ; CODE XREF: sub_5015FB+209↑j
cmp     [esp+80h+var_54], 0
jle     short loc_501859
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_54]
jmp     short loc_501843
loc_4F201F:                             ; CODE XREF: sub_4F1FD4+41↑j
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
mov     ecx, ds:dword_7873C8[eax]
test    ecx, ecx
jz      short loc_4F1FDC
mov     edx, [ecx]
push    ecx
call    dword ptr [edx+8]
jmp     short loc_4F1FDC
sub_4F1FD4      endp
sub_4F203B      proc near               ; CODE XREF: sub_4F7BBA+65C↓p
var_8C          = byte ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_44          = byte ptr -44h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_10          = byte ptr -10h
push    ebx
push    ecx
push    edi
sub     esp, 80h
mov     ecx, eax
mov     eax, esp
call    sub_4F188E
mov     [esp+8Ch+var_88], 1007h
mov     [esp+8Ch+var_24], 1800h
xor     edi, edi
mov     [esp+8Ch+var_20], edi
mov     [esp+8Ch+var_80], ecx
mov     [esp+8Ch+var_84], edx
cmp     ds:dword_782C20, 18h
jnz     short loc_4F207E
mov     ds:dword_782C20, 20h ; ' '
loc_4F991C:                             ; CODE XREF: sub_4F985F+2A↑j
mov     ecx, [esp+4+lParam]
push    ecx             ; lParam
push    edx             ; wParam
push    eax             ; Msg
mov     ebx, [esp+10h+hWnd]
push    ebx             ; hWnd
call    cs:__imp_DefWindowProcA
pop     ebx
retn    10h
sub_4F985F      endp
sub_4F9933      proc near               ; CODE XREF: WinMain(x,x,x,x)+218↑p
strCommand      = byte ptr -78h
Msg             = MSG ptr -28h
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
sub_4FB73D      proc near               ; CODE XREF: sub_4FBC14+62↓p
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
loc_4FB763:                             ; CODE XREF: sub_4FB73D+F↑j
xor     eax, eax
retn
sub_4FB73D      endp
loc_5016CF:                             ; CODE XREF: sub_5015FB+71↑j
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
loc_4F1447:                             ; CODE XREF: sub_4F13D0+81↓j
test    eax, offset unk_800000
jnz     short loc_4F1453
add     eax, eax
inc     edx
jmp     short loc_4F1447
loc_4F141B:                             ; CODE XREF: sub_4F13D0+44↑j
mov     ds:dword_782BF8, edx
xor     edx, edx
mov     eax, [ecx+14h]
mov     ds:dword_782C08, eax
loc_4F8688:                             ; CODE XREF: sub_4F8674+A↑j
mov     eax, ds:dword_551B50[eax]
loc_4FBC4E:                             ; CODE XREF: sub_4FBC14+2C↑j
mov     eax, offset loc_4FBCED
mov     edx, offset loc_4FBD2C
loc_4F1485:                             ; CODE XREF: sub_4F13D0+AB↑j
mov     ebx, 20h ; ' '
mov     edx, ecx
mov     eax, offset unk_782C14
call    memcpy_
loc_501827:                             ; CODE XREF: sub_5015FB+246↓j
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
loc_4F988E:                             ; CODE XREF: sub_4F985F+1B↑j
cmp     eax, 201h
jz      short loc_4F98EB
jmp     loc_4F991C
loc_501686:                             ; CODE XREF: sub_5015FB+76↑j
test    dh, 40h
jz      short loc_501697
mov     eax, [esi]
add     eax, 4
mov     [esi], eax
mov     edx, [eax-4]
jmp     short loc_5016A1
sub_501C76      proc near               ; CODE XREF: sub_5015FB+204↑p
push    esi
push    edi
push    es
push    ebp
sub     esp, 4
mov     es, edx
mov     esi, eax
mov     ebp, ecx
loc_501C83:                             ; CODE XREF: sub_501C76+28↓j
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
loc_501CA7:                             ; CODE XREF: sub_501C76+47↓j
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
loc_501CBF:                             ; CODE XREF: sub_501C76+2D↑j
mov     dword ptr [ebx+28h], 0
loc_501CC6:                             ; CODE XREF: sub_501C76+11↑j
add     esp, 4
pop     ebp
pop     es
pop     edi
pop     esi
retn
sub_501C76      endp
loc_4F1F42:                             ; CODE XREF: sub_4F1F39+46↓j
inc     edi
cmp     edi, 20h ; ' '
jge     loc_4F3509
loc_4FA10E:                             ; CODE XREF: sub_4FA0F0+C↑j
mov     ebx, ds:pUnkOuter
test    ebx, ebx
jz      short loc_4FA126
mov     edx, [ebx]
push    ebx
call    dword ptr [edx+8]
xor     esi, esi
mov     ds:pUnkOuter, esi
loc_4F1437:                             ; CODE XREF: sub_4F13D0+60↑j
mov     ds:dword_782BFC, edx
xor     edx, edx
mov     eax, [ecx+18h]
mov     ds:dword_782C0C, eax
loc_50188B:                             ; CODE XREF: sub_5015FB+27F↑j
test    byte ptr [esp+80h+var_62], 8
jz      loc_5016A7
loc_4F350A:                             ; CODE XREF: sub_4F1FD4+29↑j
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4F350F      proc near               ; CODE XREF: sub_42BEB2+1EC↑p
var_34          = word ptr -34h
var_32          = word ptr -32h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
push    ebx
push    ecx
push    esi
push    edi
push    ebp
sub     esp, 20h
mov     esi, eax
mov     edi, edx
lea     edx, [eax+0Ch]
mov     ebx, 8
mov     eax, esp
call    memcpy_
mov     eax, esi
add     eax, 14h
mov     [esp+34h+var_2C], eax
test    byte ptr [esi+4], 1
jz      loc_4F3674
xor     edx, edx
mov     dx, [esp+34h+var_32]
xor     eax, eax
mov     ax, [esp+34h+var_34]
call    sub_4F1D5C
mov     ebp, eax
xor     edx, edx
mov     dl, ds:byte_782BF7
shl     edx, 8
mov     [esp+34h+var_1C], edx
mov     edx, eax
shl     edx, 3
cmp     ds:byte_782C34[edx], 0
jz      short loc_4F3599
xor     eax, eax
mov     ax, ds:word_782C36[edx]
xor     ebx, ebx
mov     bl, ds:byte_782C35[edx]
imul    eax, ebx
mov     ecx, [esp+34h+var_1C]
cmp     eax, ecx
jz      short loc_4F35A8
mov     eax, ds:dword_782C38[edx]
call    _nfree_
mov     eax, ecx
jmp     short loc_4F359D
loc_5018B0:                             ; CODE XREF: sub_5015FB+5C↑j
mov     eax, [esp+80h+var_70]
add     esp, 70h
pop     ebp
pop     es
pop     edi
pop     esi
retn
sub_5015FB      endp
sub_5018BC      proc near               ; CODE XREF: sub_5015FB+42↑p
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
loc_4FBC63:                             ; CODE XREF: sub_4FBC14+A↑j
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
sub_4FA755      proc near               ; CODE XREF: sub_4D89AF+B↑p
var_14          = byte ptr -14h
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
loc_4FA77E:                             ; CODE XREF: sub_4FA755+45↓j
cmp     eax, edi
jge     short loc_4FA79C
mov     edx, eax
shl     edx, 2
sub     edx, eax
cmp     ebx, ds:dword_897A58[edx*4]
jnz     short loc_4FA799
call    sub_4F9C02
jmp     short loc_4FA79C
loc_4FA799:                             ; CODE XREF: sub_4FA755+3B↑j
inc     eax
jmp     short loc_4FA77E
loc_4FA79C:                             ; CODE XREF: sub_4FA755+1F↑j
mov     eax, [ebx]
cmp     eax, 0FFFFFFFFh
jz      loc_4FA84E
test    eax, eax
jz      short loc_4FA803
test    esi, esi
jz      short loc_4FA7B4
call    _nfree_
loc_4FA7B4:                             ; CODE XREF: sub_4FA755+58↑j
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
loc_4FA7D4:                             ; CODE XREF: sub_4FA755+91↓j
inc     eax
cmp     eax, 10h
jge     short loc_4FA7FC
loc_4FA7DA:                             ; CODE XREF: sub_4FA755+7D↑j
mov     edx, eax
shl     edx, 2
cmp     ds:dword_897B10[edx], 0
jnz     short loc_4FA7D4
mov     eax, [ebx+8]
mov     ds:dword_897B10[edx], eax
jmp     short loc_4FA7FC
loc_4FA7F3:                             ; CODE XREF: sub_4FA755+79↑j
mov     eax, [ebx+8]
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
loc_4FA7FC:                             ; CODE XREF: sub_4FA755+83↑j
mov     dword ptr [ebx+8], 0
loc_4FA803:                             ; CODE XREF: sub_4FA755+54↑j
mov     eax, [ebx+4]
test    eax, eax
jz      loc_4FA89B
test    esi, esi
jz      short loc_4FA817
call    _nfree_
loc_4FA817:                             ; CODE XREF: sub_4FA755+BB↑j
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
loc_4FA843:                             ; CODE XREF: sub_4FA755+E3↑j
mov     eax, [ebx+0Ch]
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
jmp     short loc_4FA894
loc_4FA84E:                             ; CODE XREF: sub_4FA755+4C↑j
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
loc_4FA87C:                             ; CODE XREF: sub_4FA755+11C↑j
mov     eax, [ebx+8]
mov     edx, [eax]
push    eax
call    dword ptr [edx+8]
mov     dword ptr [ebx+8], 0
mov     eax, [ebx+0Ch]
call    sub_4F0AF4
loc_4FA894:                             ; CODE XREF: sub_4FA755+F7↑j
mov     dword ptr [ebx+0Ch], 0
loc_4FA89B:                             ; CODE XREF: sub_4FA755+12↑j
add     esp, 4
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FA755      endp
loc_50167D:                             ; CODE XREF: sub_5015FB+125↓j
mov     eax, [esp+80h+var_70]
mov     es:[edx], eax
jmp     short loc_5016A7
loc_4F890B:                             ; CODE XREF: sub_4F88FC+24↓j
lea     ecx, [ebx-1]
cmp     edx, ecx
jge     short loc_4F8922
lea     ecx, [eax-4]
mov     esi, ecx
or      si, 1
mov     [eax], esi
mov     eax, ecx
inc     edx
jmp     short loc_4F890B
loc_50162F:                             ; CODE XREF: sub_5015FB+C0↓j
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
loc_5016ED:                             ; CODE XREF: sub_5015FB+DC↑j
test    dh, 40h
jz      short loc_501705
mov     ebx, [esi]
add     ebx, 4
mov     [esi], ebx
mov     edx, [ebx-4]
loc_4FBC97:                             ; CODE XREF: sub_4FBC14+7E↑j
mov     eax, ds:off_557A78[eax*4]
mov     ds:dword_557A74, eax
imul    edx, 5
test    ebx, 1
jz      short loc_4FBCB1
add     edx, 0Fh
loc_4F1405:                             ; CODE XREF: sub_4F13D0+2C↑j
xor     edx, edx
mov     eax, [ecx+10h]
mov     ds:dword_782C04, eax
loc_5017D1:                             ; CODE XREF: sub_5015FB+1C0↑j
cmp     [esp+80h+var_5C], 0
jle     short loc_5017E7
mov     edx, 30h ; '0'
mov     eax, esp
call    ebp
dec     [esp+80h+var_5C]
jmp     short loc_5017D1
loc_501896:                             ; CODE XREF: sub_5015FB+2B3↓j
cmp     [esp+80h+var_7C], 0
jle     loc_5016A7
mov     edx, 20h ; ' '
mov     eax, esp
call    ebp
dec     [esp+80h+var_7C]
jmp     short loc_501896
loc_4F1F50:                             ; CODE XREF: sub_4F1F39+8E↓j
mov     eax, edi
shl     eax, 2
sub     eax, edi
shl     eax, 7
mov     ecx, offset word_783ED4
add     ecx, eax
mov     edx, esi
mov     eax, esi
shl     eax, 2
sub     eax, esi
shl     eax, 2
add     eax, ecx
mov     ebx, 0Ch
xor     edx, esi
call    memset_
inc     esi
cmp     esi, 20h ; ' '
jge     short loc_4F1F42
loc_4F1453:                             ; CODE XREF: sub_4F13D0+7C↑j
mov     ds:dword_782C00, edx
mov     eax, [ecx+1Ch]
mov     ds:dword_782C10, eax
mov     edx, ds:dword_782C04
cmp     edx, 1Fh
jz      short loc_4F1474
cmp     edx, 0FFh
jnz     short loc_4F147D
loc_4F989A:                             ; CODE XREF: sub_4F985F+E↑j
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
loc_501859:                             ; CODE XREF: sub_5015FB+24D↑j
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
loc_501806:                             ; CODE XREF: sub_5015FB+1FA↑j
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
sub_501CCE      proc near               ; CODE XREF: sub_5015FB+156↑p
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_14          = byte ptr -14h
var_13          = byte ptr -13h
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
loc_501D1E:                             ; CODE XREF: sub_501CCE+59↓j
jz      short loc_501D3C
jmp     loc_501E7B
loc_501D25:                             ; CODE XREF: sub_501CCE+4A↑j
cmp     al, 6Fh ; 'o'
jmp     short loc_501D1E
loc_501D29:                             ; CODE XREF: sub_501CCE+40↑j
cmp     al, 58h ; 'X'
jb      loc_501E7B
jbe     short loc_501D3C
cmp     al, 64h ; 'd'
jz      short loc_501D9C
jmp     loc_501E7B
loc_501D3C:                             ; CODE XREF: sub_501CCE+4C↑j
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
loc_501D59:                             ; CODE XREF: sub_501CCE+174↓j
mov     [esp+20h+var_1C], eax
jmp     loc_501E7B
loc_501D62:                             ; CODE XREF: sub_501CCE+72↑j
test    byte ptr [ecx+1Eh], 20h
jz      short loc_501D7B
mov     eax, [edx]
add     eax, 4
mov     [edx], eax
mov     eax, [eax-4]
loc_501D72:                             ; CODE XREF: sub_501CCE+CC↓j
mov     [esp+20h+var_18], eax
jmp     loc_501E7B
loc_501D7B:                             ; CODE XREF: sub_501CCE+98↑j
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
loc_501D9C:                             ; CODE XREF: sub_501CCE+42↑j
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
loc_501DBF:                             ; CODE XREF: sub_501CCE+D2↑j
test    byte ptr [ecx+1Eh], 20h
jz      short loc_501DD1
mov     ebp, [edx]
add     ebp, 4
mov     [edx], ebp
mov     eax, [ebp-4]
jmp     short loc_501DEE
loc_501DD1:                             ; CODE XREF: sub_501CCE+F5↑j
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
loc_501DEE:                             ; CODE XREF: sub_501CCE+101↑j
mov     [esp+20h+var_18], eax
loc_501DF2:                             ; CODE XREF: sub_501CCE+EF↑j
mov     bl, [ecx+1Fh]
xor     eax, eax
test    bl, 1
jz      short loc_501E05
test    byte ptr [esp+20h+var_1C+3], 80h
jz      short loc_501E0C
jmp     short loc_501E10
loc_501E05:                             ; CODE XREF: sub_501CCE+12C↑j
cmp     [esp+20h+var_18], 0
jl      short loc_501E10
loc_501E0C:                             ; CODE XREF: sub_501CCE+133↑j
test    eax, eax
jz      short loc_501E54
loc_501E10:                             ; CODE XREF: sub_501CCE+135↑j
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
loc_501E47:                             ; CODE XREF: sub_501CCE+16F↑j
mov     eax, ebp
jmp     loc_501D59
loc_501E4E:                             ; CODE XREF: sub_501CCE+153↑j
neg     [esp+20h+var_18]
jmp     short loc_501E7B
loc_501E54:                             ; CODE XREF: sub_501CCE+140↑j
mov     al, [ecx+1Eh]
test    al, 4
jz      short loc_501E6A
mov     eax, [ecx+20h]
lea     ebx, [eax+1]
mov     [ecx+20h], ebx
mov     byte ptr [esi+eax], 2Bh ; '+'
jmp     short loc_501E7B
loc_501E6A:                             ; CODE XREF: sub_501CCE+18B↑j
test    al, 2
jz      short loc_501E7B
mov     eax, [ecx+20h]
lea     ebx, [eax+1]
mov     [ecx+20h], ebx
mov     byte ptr [esi+eax], 20h ; ' '
loc_501E7B:                             ; CODE XREF: sub_501CCE+52↑j
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
loc_501EBC:                             ; CODE XREF: sub_501CCE+1CB↑j
cmp     al, 70h ; 'p'
loc_501EBE:                             ; CODE XREF: sub_501CCE+24B↓j
jz      loc_502123
jmp     loc_50224B
loc_501EC9:                             ; CODE XREF: sub_501CCE+1C1↑j
cmp     al, 66h ; 'f'
jb      loc_501F65
jbe     short loc_501F30
cmp     al, 67h ; 'g'
jbe     loc_501F65
cmp     al, 69h ; 'i'
jz      loc_50207D
jmp     loc_50224B
loc_501EE8:                             ; CODE XREF: sub_501CCE+1B7↑j
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
loc_501F17:                             ; CODE XREF: sub_501CCE+226↑j
cmp     al, 50h ; 'P'
jmp     short loc_501EBE
loc_501F1B:                             ; CODE XREF: sub_501CCE+21C↑j
cmp     al, 45h ; 'E'
jb      short loc_501F23
jbe     short loc_501F65
jmp     short loc_501F30
loc_501F23:                             ; CODE XREF: sub_501CCE+24F↑j
cmp     al, 43h ; 'C'
jz      loc_50221F
jmp     loc_50224B
loc_501F30:                             ; CODE XREF: sub_501CCE+203↑j
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
loc_501F65:                             ; CODE XREF: sub_501CCE+1FD↑j
mov     ebx, ecx
mov     eax, esi
call    sub_501C2C
mov     eax, ecx
call    sub_501C33
mov     eax, ds
lea     edi, [esi+1]
mov     es, eax
jmp     loc_50225E
loc_501F81:                             ; CODE XREF: sub_501CCE+1CD↑j
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
loc_501FA2:                             ; CODE XREF: sub_501CCE+2CD↑j
mov     es, edx
assume es:nothing
mov     edi, eax
jmp     short loc_501FD0
loc_501FA8:                             ; CODE XREF: sub_501CCE+2BB↑j
test    al, 40h
jz      short loc_501FBC
mov     esi, [edx]
add     esi, 4
mov     [edx], esi
mov     eax, [esi-4]
test    eax, eax
jz      short loc_501FD0
jmp     short loc_501FCA
loc_501FBC:                             ; CODE XREF: sub_501CCE+2DC↑j
mov     ebx, [edx]
add     ebx, 4
mov     [edx], ebx
mov     eax, [ebx-4]
test    eax, eax
jz      short loc_501FD0
loc_501FCA:                             ; CODE XREF: sub_501CCE+2EC↑j
mov     edx, ds
mov     edi, eax
mov     es, edx
assume es:AUTO
loc_501FD0:                             ; CODE XREF: sub_501CCE+2D2↑j
cmp     byte ptr [ecx+15h], 53h ; 'S'
jnz     short loc_501FEA
test    byte ptr [ecx+1Eh], 10h
jnz     short loc_501FF0
loc_501FDC:                             ; CODE XREF: sub_501CCE+320↓j
mov     edx, es
mov     eax, edi
mov     ebx, [ecx+8]
call    sub_501A8A
jmp     short loc_501FFC
loc_501FEA:                             ; CODE XREF: sub_501CCE+306↑j
test    byte ptr [ecx+1Eh], 20h
jnz     short loc_501FDC
loc_501FF0:                             ; CODE XREF: sub_501CCE+30C↑j
mov     edx, es
mov     eax, edi
mov     ebx, [ecx+8]
call    sub_501A66
loc_501FFC:                             ; CODE XREF: sub_501CCE+31A↑j
mov     edx, [ecx+8]
mov     [ecx+28h], eax
test    edx, edx
jl      loc_50225E
cmp     eax, edx
jle     loc_50225E
mov     [ecx+28h], edx
jmp     loc_50225E
loc_50201A:                             ; CODE XREF: sub_501CCE+1E3↑j
test    byte ptr [ecx+1Eh], 1
jz      short loc_502058
test    byte ptr [ecx+1Fh], 1
jz      short loc_502035
cmp     [esp+20h+var_20], 0
jnz     short loc_50203C
cmp     [esp+20h+var_1C], 0
jz      short loc_502058
jmp     short loc_50203C
loc_502035:                             ; CODE XREF: sub_501CCE+356↑j
cmp     [esp+20h+var_18], 0
jz      short loc_502058
loc_50203C:                             ; CODE XREF: sub_501CCE+35C↑j
mov     eax, [ecx+20h]
lea     edx, [eax+1]
mov     [ecx+20h], edx
mov     byte ptr [esi+eax], 30h ; '0'
mov     eax, [ecx+20h]
lea     edx, [eax+1]
mov     [ecx+20h], edx
mov     dl, [ecx+15h]
mov     [esi+eax], dl
loc_502058:                             ; CODE XREF: sub_501CCE+350↑j
mov     ebx, 10h
loc_50205D:                             ; CODE XREF: sub_501CCE+1C3↑j
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
loc_50207D:                             ; CODE XREF: sub_501CCE+1B9↑j
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
loc_5020A3:                             ; CODE XREF: sub_501CCE+403↓j
mov     byte ptr es:[eax], 0
xor     eax, eax
jmp     short loc_5020FC
loc_5020AB:                             ; CODE XREF: sub_501CCE+3C6↑j
mov     edx, [ecx+20h]
mov     eax, esp
add     edx, esi
call    __clib_ulltoa_
cmp     byte ptr [ecx+15h], 58h ; 'X'
jnz     short loc_5020EE
mov     eax, esi
call    sub_50226A
jmp     short loc_5020EE
loc_5020C6:                             ; CODE XREF: sub_501CCE+3C0↑j
cmp     dword ptr [ecx+8], 0
jnz     short loc_5020D3
cmp     [esp+20h+var_18], 0
jz      short loc_5020A3
loc_5020D3:                             ; CODE XREF: sub_501CCE+3FC↑j
mov     edx, [ecx+20h]
mov     eax, [esp+20h+var_18]
add     edx, esi
call    sub_503571
cmp     byte ptr [ecx+15h], 58h ; 'X'
jnz     short loc_5020EE
mov     eax, esi
call    sub_50226A
loc_5020EE:                             ; CODE XREF: sub_501CCE+3ED↑j
mov     ebx, 0FFFFFFFFh
mov     edx, es
mov     eax, edi
call    sub_501A66
loc_5020FC:                             ; CODE XREF: sub_501CCE+3DB↑j
mov     [ecx+28h], eax
mov     edx, eax
mov     eax, [ecx+8]
cmp     edx, eax
jge     short loc_50210D
sub     eax, edx
mov     [ecx+24h], eax
loc_50210D:                             ; CODE XREF: sub_501CCE+438↑j
cmp     dword ptr [ecx+8], 0FFFFFFFFh
jnz     loc_50225E
mov     eax, ecx
call    sub_501C33
jmp     loc_50225E
loc_502123:                             ; CODE XREF: sub_501CCE:loc_501EBE↑j
cmp     dword ptr [ecx+4], 0
jnz     short loc_50213F
test    byte ptr [ecx+1Eh], 80h
jz      short loc_502138
mov     dword ptr [ecx+4], 0Dh
jmp     short loc_50213F
loc_502138:                             ; CODE XREF: sub_501CCE+45F↑j
mov     dword ptr [ecx+4], 8
loc_50213F:                             ; CODE XREF: sub_501CCE+459↑j
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
loc_50217E:                             ; CODE XREF: sub_501CCE+485↑j
mov     ebx, 8
mov     edx, esi
mov     eax, ebp
loc_502187:                             ; CODE XREF: sub_501CCE+4AE↑j
call    sub_501AF3
cmp     byte ptr [ecx+15h], 50h ; 'P'
jnz     short loc_502199
mov     eax, esi
call    sub_50226A
loc_502199:                             ; CODE XREF: sub_501CCE+4C2↑j
mov     ebx, 0FFFFFFFFh
mov     edx, es
mov     eax, edi
call    sub_501A66
loc_5021A7:                             ; CODE XREF: sub_501CCE+56E↓j
mov     [ecx+20h], eax
jmp     loc_50225E
loc_5021AF:                             ; CODE XREF: sub_501CCE+23E↑j
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
loc_502211:                             ; CODE XREF: sub_501CCE+4EE↑j
mov     eax, [edx]
add     eax, 4
mov     [edx], eax
mov     al, [eax-4]
mov     [esi], al
jmp     short loc_50225E
loc_50221F:                             ; CODE XREF: sub_501CCE+257↑j
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
loc_50224B:                             ; CODE XREF: sub_501CCE+1D5↑j
mov     dword ptr [ecx+4], 0
mov     al, [ecx+15h]
mov     [esi], al
mov     dword ptr [ecx+20h], 1
loc_50225E:                             ; CODE XREF: sub_501CCE+292↑j
mov     edx, es
mov     eax, edi
add     esp, 10h
pop     ebp
pop     es
assume es:nothing
pop     edi
pop     esi
retn
sub_501CCE      endp
loc_4F20DA:                             ; CODE XREF: sub_4F20B9+19↑j
mov     ecx, edi
shl     ecx, 2
sub     ecx, edi
shl     ecx, 7
mov     eax, esi
shl     eax, 2
sub     eax, esi
cmp     ds:word_783ED4[ecx+eax*4], 0
jnz     short loc_4F20D4