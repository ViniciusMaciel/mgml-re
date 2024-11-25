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