sub_503571      proc near               ; CODE XREF: sub_501CCE+40E↑p
var_38          = byte ptr -38h
var_37          = byte ptr -37h
var_14          = dword ptr -14h
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
loc_503587:                             ; CODE XREF: sub_503571+33↓j
lea     ebx, [esp+38h+var_14]
mov     [esp+38h+var_14], edi
xor     edx, edx
div     dword ptr [ebx]
mov     [ebx], edx
mov     edx, [esp+38h+var_14]
mov     dl, ds:byte_5582F0[edx]
mov     [ecx], dl
inc     ecx
test    eax, eax
jnz     short loc_503587
loc_5035A6:                             ; CODE XREF: sub_503571+3D↓j
dec     ecx
mov     al, [ecx]
mov     [esi], al
inc     esi
test    al, al
jnz     short loc_5035A6
mov     eax, ebp
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop               ecx
retn
sub_503571      endp
loc_5035A6:                             ; CODE XREF: sub_503571+3D↓j
dec     ecx
mov     al, [ecx]
mov     [esi], al
inc     esi
test    al, al
jnz     short loc_5035A6
mov     eax, ebp
add     esp, 28h
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_503571      endp
loc_503587:                             ; CODE XREF: sub_503571+33↓j
lea     ebx, [esp+38h+var_14]
mov     [esp+38h+var_14], edi
xor     edx, edx
div     dword ptr [ebx]
mov     [ebx], edx
mov     edx, [esp+38h+var_14]
mov     dl, ds:byte_5582F0[edx]
mov     [ecx], dl
inc     ecx
test    eax, eax
jnz     short loc_503587