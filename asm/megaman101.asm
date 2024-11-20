loc_4FD51E:
rol     edx, 8
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh
add     edi, 3
dec     ebp
jnz     short loc_4FD4F0
pop     edi
retn
sub_4FD4E4 endp




sub_4FD532 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     ebx, ds:dword_552050
shr     ebx, 2

loc_4FD541:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD556
or      eax, 0FF0000h

loc_4FD556:
test    eax, 10000h
jz      short loc_4FD562
or      eax, 0FF00h

loc_4FD562:
test    eax, 100h
jz      short loc_4FD56E
or      eax, 0FFh

loc_4FD56E:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD541
pop     edi
retn
sub_4FD532 endp




sub_4FD57F proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
movd    mm1, ds:dword_552050

loc_4FD58C:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD58C
pop     edi
emms
retn
sub_4FD57F endp




sub_4FD5A8 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
movd    mm1, ds:dword_552050

loc_4FD5B5:
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    edx, mm0
mov     [edi], dx
shr     edx, 8
mov     [edi+2], dh
add     edi, 3
dec     ebp
jnz     short loc_4FD5B5
pop     edi
emms
retn
sub_4FD5A8 endp




sub_4FD5D1 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     edx, ds:dword_552050
shr     edx, 2
movd    mm1, edx

loc_4FD5E3:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
dec     ebp
jnz     short loc_4FD5E3
pop     edi
emms
retn
sub_4FD5D1 endp




sub_4FD5FF proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ecx, ebp
mov     eax, ds:dword_552050
rep stosd
pop     edi
retn
sub_4FD5FF endp




sub_4FD60E proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050

loc_4FD618:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
shr     eax, 1
stosd
dec     ebp
jnz     short loc_4FD618
pop     edi
retn
sub_4FD60E endp




sub_4FD629 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050

loc_4FD633:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD648
or      eax, 0FF0000h

loc_4FD648:
test    eax, 10000h
jz      short loc_4FD654
or      eax, 0FF00h

loc_4FD654:
test    eax, 100h
jz      short loc_4FD660
or      eax, 0FFh

loc_4FD660:
stosd
dec     ebp
jnz     short loc_4FD633
pop     edi
retn
sub_4FD629 endp




sub_4FD666 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050

loc_4FD670:
mov     eax, [edi]
and     eax, 0FCFCFCh
mov     edx, ebx
sub     al, dl
jnb     short loc_4FD682
and     eax, 0FFFF00h

loc_4FD682:
sub     ah, dh
jnb     short loc_4FD68B
and     eax, 0FF00FFh

loc_4FD68B:
ror     edx, 8
ror     eax, 8
sub     ah, dh
jnb     short loc_4FD69A
and     eax, 0FF0000FFh

loc_4FD69A:
rol     eax, 8
stosd
dec     ebp
jnz     short loc_4FD670
pop     edi
retn
sub_4FD666 endp




sub_4FD6A3 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     ebx, ds:dword_552050
shr     ebx, 2

loc_4FD6B0:
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ebx
test    eax, 1000000h
jz      short loc_4FD6C5
or      eax, 0FF0000h

loc_4FD6C5:
test    eax, 10000h
jz      short loc_4FD6D1
or      eax, 0FF00h

loc_4FD6D1:
test    eax, 100h
jz      short loc_4FD6DD
or      eax, 0FFh

loc_4FD6DD:
stosd
dec     ebp
jnz     short loc_4FD6B0
pop     edi
retn
sub_4FD6A3 endp




sub_4FD6E3 proc near
push    edi
lea     edi, [edi+ebx*4]
movd    mm1, ds:dword_552050

loc_4FD6EE:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
dec     ebp
jnz     short loc_4FD6EE
pop     edi
emms
retn
sub_4FD6E3 endp




sub_4FD701 proc near
push    edi
lea     edi, [edi+ebx*4]
movd    mm1, ds:dword_552050

loc_4FD70C:
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
dec     ebp
jnz     short loc_4FD70C
pop     edi
emms
retn
sub_4FD701 endp




sub_4FD71F proc near
push    edi
lea     edi, [edi+ebx*4]
mov     edx, ds:dword_552050
shr     edx, 2
movd    mm1, edx

loc_4FD72F:
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
dec     ebp
jnz     short loc_4FD72F
pop     edi
emms
retn
sub_4FD71F endp




sub_4FD742 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD758:
call    sub_4FBD3F
mov     [edi], cx
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
add     edi, 2
dec     ebp
jnz     short loc_4FD758
pop     edi
retn
sub_4FD742 endp




sub_4FD77A proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD790:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ecx
shr     edx, 1
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD790
pop     edi
retn
sub_4FD77A endp




sub_4FD7C8 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD7DE:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
add     edx, ecx
test    edx, 1000000h
jz      short loc_4FD800
or      edx, 0FF0000h

loc_4FD800:
test    edx, 10000h
jz      short loc_4FD80E
or      edx, 0FF00h

loc_4FD80E:
test    edx, 100h
jz      short loc_4FD81C
or      edx, 0FFh

loc_4FD81C:
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD7DE
pop     edi
retn
sub_4FD7C8 endp




sub_4FD83E proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD854:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
sub     dl, cl
jnb     short loc_4FD870
and     edx, 0FFFF00h

loc_4FD870:
sub     dh, ch
jnb     short loc_4FD87A
and     edx, 0FF00FFh

loc_4FD87A:
ror     ecx, 8
ror     edx, 8
sub     dh, ch
jnb     short loc_4FD88A
and     edx, 0FF0000FFh

loc_4FD88A:
rol     edx, 8
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD854
pop     edi
retn
sub_4FD83E endp




sub_4FD8AF proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD8C5:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
shr     ecx, 2
add     edx, ecx
test    edx, 1000000h
jz      short loc_4FD8EA
or      edx, 0FF0000h

loc_4FD8EA:
test    edx, 10000h
jz      short loc_4FD8F8
or      edx, 0FF00h

loc_4FD8F8:
test    edx, 100h
jz      short loc_4FD906
or      edx, 0FFh

loc_4FD906:
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD8C5
pop     edi
retn
sub_4FD8AF endp




sub_4FD928 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD93E:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, ecx
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD93E
pop     edi
emms
retn
sub_4FD928 endp




sub_4FD980 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD996:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
movd    mm1, ecx
movd    mm0, edx
psubusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD996
pop     edi
emms
retn
sub_4FD980 endp




sub_4FD9D8 proc near
push    edi
lea     edi, [edi+ebx*2]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FD9EE:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     ax, [edi]
call    ds:dword_55205C
shr     ecx, 2
movd    mm1, ecx
movd    mm0, edx
paddusb mm0, mm1
movd    edx, mm0
call    ds:dword_552060
stosw
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FD9EE
pop     edi
emms
retn
sub_4FD9D8 endp




sub_4FDA33 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDA4B:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     [edi], cx
shr     ecx, 8
mov     [edi+2], ch
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDA4B
pop     edi
retn
sub_4FDA33 endp




sub_4FDA7A proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDA92:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
shr     eax, 1
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDA92
pop     edi
retn
sub_4FDA7A endp




sub_4FDACC proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDAE4:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDB02
or      eax, 0FF0000h

loc_4FDB02:
test    eax, 10000h
jz      short loc_4FDB0E
or      eax, 0FF00h

loc_4FDB0E:
test    eax, 100h
jz      short loc_4FDB1A
or      eax, 0FFh

loc_4FDB1A:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDAE4
pop     edi
retn
sub_4FDACC endp




sub_4FDB40 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDB58:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
sub     al, cl
jnb     short loc_4FDB71
and     eax, 0FFFF00h

loc_4FDB71:
sub     ah, ch
jnb     short loc_4FDB7A
and     eax, 0FF00FFh

loc_4FDB7A:
ror     ecx, 8
ror     eax, 8
sub     ah, ch
jnb     short loc_4FDB89
and     eax, 0FF0000FFh

loc_4FDB89:
rol     eax, 8
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDB58
pop     edi
retn
sub_4FDB40 endp




sub_4FDBB2 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDBCA:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
shr     ecx, 2
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDBEB
or      eax, 0FF0000h

loc_4FDBEB:
test    eax, 10000h
jz      short loc_4FDBF7
or      eax, 0FF00h

loc_4FDBF7:
test    eax, 100h
jz      short loc_4FDC03
or      eax, 0FFh

loc_4FDC03:
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDBCA
pop     edi
retn
sub_4FDBB2 endp




sub_4FDC29 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDC41:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDC41
pop     edi
emms
retn
sub_4FDC29 endp




sub_4FDC7E proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDC96:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDC96
pop     edi
emms
retn
sub_4FDC7E endp




sub_4FDCD3 proc near
push    edi
lea     edi, [edi+ebx*2]
add     edi, ebx
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDCEB:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
shr     ecx, 2
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah
add     edi, 3
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDCEB
pop     edi
emms
retn
sub_4FDCD3 endp




sub_4FDD2B proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDD41:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     [edi], ecx
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDD41
pop     edi
retn
sub_4FDD2B endp




sub_4FDD69 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDD7F:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
shr     eax, 1
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDD7F
pop     edi
retn
sub_4FDD69 endp




sub_4FDDAE proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDDC4:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDDE2
or      eax, 0FF0000h

loc_4FDDE2:
test    eax, 10000h
jz      short loc_4FDDEE
or      eax, 0FF00h

loc_4FDDEE:
test    eax, 100h
jz      short loc_4FDDFA
or      eax, 0FFh

loc_4FDDFA:
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDDC4
pop     edi
retn
sub_4FDDAE endp




sub_4FDE15 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDE2B:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
sub     al, cl
jnb     short loc_4FDE44
and     eax, 0FFFF00h

loc_4FDE44:
sub     ah, ch
jnb     short loc_4FDE4D
and     eax, 0FF00FFh

loc_4FDE4D:
ror     ecx, 8
ror     eax, 8
sub     ah, ch
jnb     short loc_4FDE5C
and     eax, 0FF0000FFh

loc_4FDE5C:
rol     eax, 8
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDE2B
pop     edi
retn
sub_4FDE15 endp




sub_4FDE7A proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDE90:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
mov     eax, [edi]
and     eax, 0FCFCFCh
shr     ecx, 2
add     eax, ecx
test    eax, 1000000h
jz      short loc_4FDEB1
or      eax, 0FF0000h

loc_4FDEB1:
test    eax, 10000h
jz      short loc_4FDEBD
or      eax, 0FF00h

loc_4FDEBD:
test    eax, 100h
jz      short loc_4FDEC9
or      eax, 0FFh

loc_4FDEC9:
stosd
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDE90
pop     edi
retn
sub_4FDE7A endp




sub_4FDEE4 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDEFA:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDEFA
pop     edi
emms
retn
sub_4FDEE4 endp




sub_4FDF2E proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDF44:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
movd    mm1, ecx
movd    mm0, dword ptr [edi]
psubusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDF44
pop     edi
emms
retn
sub_4FDF2E endp




sub_4FDF78 proc near
push    edi
lea     edi, [edi+ebx*4]
mov     eax, ds:dword_554D68[esi]
mov     ebx, ds:dword_5554E8[esi]
mov     edx, ds:dword_555C68[esi]

loc_4FDF8E:
push    eax
push    ebx
push    edx
call    ds:dword_557A68
shr     ecx, 2
movd    mm1, ecx
movd    mm0, dword ptr [edi]
paddusb mm0, mm1
movd    dword ptr [edi], mm0
add     edi, 4
pop     edx
pop     ebx
pop     eax
add     eax, ds:dword_55203C
add     ebx, ds:dword_552040
add     edx, ds:dword_552044
dec     ebp
jnz     short loc_4FDF8E
pop     edi
emms
retn
sub_4FDF78 endp


loc_4FDFC5:
lea     edi, [edi+ebx*2]
sub     ebp, 38h ; '8'
mov     ebx, 1Ch

loc_4FDFD0:
mov     ecx, 1Ch

loc_4FDFD5:
lodsw
or      ax, ax
jz      short loc_4FDFDF
mov     [edi], ax

loc_4FDFDF:
add     edi, 2
loop    loc_4FDFD5
add     esi, 8
add     edi, ebp
dec     ebx
jnz     short loc_4FDFD0
retn



sub_4FDFED proc near
lea     edi, [edi+ebx*2]
add     edi, ebx
sub     ebp, 54h ; 'T'
mov     ebx, 1Ch

loc_4FDFFA:
mov     ecx, 1Ch

loc_4FDFFF:
lodsd
or      eax, eax
jz      short loc_4FE00D
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FE00D:
add     edi, 3
loop    loc_4FDFFF
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FDFFA
retn
sub_4FDFED endp




sub_4FE01B proc near
lea     edi, [edi+ebx*4]
sub     ebp, 70h ; 'p'
mov     ebx, 1Ch

loc_4FE026:
mov     ecx, 1Ch

loc_4FE02B:
lodsd
or      eax, eax
jz      short loc_4FE032
mov     [edi], eax

loc_4FE032:
add     edi, 4
loop    loc_4FE02B
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FE026
retn
sub_4FE01B endp




sub_4FE040 proc near
xor     ecx, ecx
movd    mm2, ecx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
lea     edi, [edi+ebx*2]
sub     ebp, 38h ; '8'
mov     ebx, 1Ch

loc_4FE05A:
mov     ecx, 1Ch

loc_4FE05F:
lodsw
or      ax, ax
jz      short loc_4FE088
call    ds:dword_55205C
movd    mm0, edx
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
packuswb mm0, mm2
movd    edx, mm0
call    ds:dword_552060
mov     [edi], ax

loc_4FE088:
add     edi, 2
loop    loc_4FE05F
add     esi, 8
add     edi, ebp
dec     ebx
jnz     short loc_4FE05A
emms
retn
sub_4FE040 endp




sub_4FE098 proc near
xor     ecx, ecx
movd    mm2, ecx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
lea     edi, [edi+ebx*2]
add     edi, ebx
sub     ebp, 54h ; 'T'
mov     ebx, 1Ch

loc_4FE0B4:
mov     ecx, 1Ch

loc_4FE0B9:
lodsd
or      eax, eax
jz      short loc_4FE0DA
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
packuswb mm0, mm2
movd    eax, mm0
mov     [edi], ax
shr     eax, 8
mov     [edi+2], ah

loc_4FE0DA:
add     edi, 3
loop    loc_4FE0B9
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FE0B4
emms
retn
sub_4FE098 endp




sub_4FE0EA proc near
xor     ecx, ecx
movd    mm2, ecx
movd    mm1, ds:dword_552058
punpcklbw mm1, mm2
lea     edi, [edi+ebx*4]
sub     ebp, 70h ; 'p'
mov     ebx, 1Ch

loc_4FE104:
mov     ecx, 1Ch

loc_4FE109:
lodsd
or      eax, eax
jz      short loc_4FE123
movd    mm0, eax
punpcklbw mm0, mm2
pmullw  mm0, mm1
psrlw   mm0, 7
packuswb mm0, mm2
movd    eax, mm0
mov     [edi], eax

loc_4FE123:
add     edi, 4
loop    loc_4FE109
add     esi, 10h
add     edi, ebp
dec     ebx
jnz     short loc_4FE104
emms
retn
sub_4FE0EA endp

; [00000019 BYTES: COLLAPSED FUNCTION strlen_]
; [00000005 BYTES: COLLAPSED FUNCTION j_stricmp_]

__save_8087_:
fsave   byte ptr [eax]
wait
retn

__rest_8087_:
frstor  byte ptr [eax]
wait
retn
; [00000031 BYTES: COLLAPSED FUNCTION __init_8087_]
; [0000000A BYTES: COLLAPSED FUNCTION _fpreset_]
; [00000044 BYTES: COLLAPSED FUNCTION __chk8087_]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_5]



sub_4FE1DA proc near
mov     ds:dword_557C68, 1
retn
sub_4FE1DA endp

; [0000000E BYTES: COLLAPSED FUNCTION __set_errno_]
; [00000007 BYTES: COLLAPSED FUNCTION __set_EDOM_]
; [00000007 BYTES: COLLAPSED FUNCTION __set_ERANGE_]

__set_EINVAL_:
mov     eax, 9
call    __set_errno_
mov     eax, 0FFFFFFFFh ; W?seekoff$:streambuf$n(lii)l
; doubtful name
retn
; [0000000E BYTES: COLLAPSED FUNCTION __set_doserrno_]
; [0000000E BYTES: COLLAPSED FUNCTION tolower_]



sub_4FE22D proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= byte ptr  0Ch

push    ebx
push    edx
lea     eax, [esp+8+arg_8]
add     eax, 4
mov     eax, [eax-4]
push    eax
push    0
mov     edx, [esp+10h+arg_4]
push    edx
mov     ebx, [esp+14h+arg_0]
push    ebx
call    sub_4FE251
add     esp, 10h
pop     edx
pop     ebx
retn
sub_4FE22D endp




sub_4FE251 proc near

var_10= dword ptr -10h
arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch
arg_C= byte ptr  10h

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
sub_4FE251 endp




sub_4FE278 proc near

SecurityAttributes= _SECURITY_ATTRIBUTES ptr -2Ch
dwShareMode= dword ptr -20h
dwDesiredAccess= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
var_10= dword ptr -10h

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

loc_4FE296:
call    __set_errno_
mov     eax, 0FFFFFFFFh
jmp     loc_4FE47A

loc_4FE2A5:
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

loc_4FE32D:
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

loc_4FE36E:
test    byte ptr [esp+2Ch+var_10+1], 4
jz      short loc_4FE37E
mov     ebp, 1
mov     eax, ebp
jmp     short loc_4FE3A2

loc_4FE37E:
test    byte ptr [esp+2Ch+var_10], 40h
jz      short loc_4FE391
mov     ebp, 2

loc_4FE38A:
mov     eax, 5
jmp     short loc_4FE3A2

loc_4FE391:
mov     ebp, 4
jmp     short loc_4FE39D

loc_4FE398:
test    dl, 40h
jnz     short loc_4FE38A

loc_4FE39D:
mov     eax, 3

loc_4FE3A2:             ; hTemplateFile
push    0
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

loc_4FE3E5:
cmp     ecx, 0FFFFFFFFh
jnz     short loc_4FE3F4
call    __set_errno_nt_
jmp     loc_4FE47A

loc_4FE3F4:
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

loc_4FE41C:
call    isatty_
test    eax, eax
jz      short loc_4FE42A
mov     edx, 2000h

loc_4FE42A:
cmp     esi, 2
jnz     short loc_4FE434
or      dl, 3
jmp     short loc_4FE445

loc_4FE434:
test    esi, esi
jnz     short loc_4FE43D
or      dl, 1
jmp     short loc_4FE445

loc_4FE43D:
cmp     esi, 1
jnz     short loc_4FE445
or      dl, 2

loc_4FE445:
test    byte ptr [esp+2Ch+var_10], 10h
jz      short loc_4FE44F
or      dl, 80h

loc_4FE44F:
mov     eax, edx
mov     bh, byte ptr [esp+2Ch+var_10+1]
or      al, 40h
test    bh, 3
jz      short loc_4FE463
test    bh, 2
jz      short loc_4FE471
jmp     short loc_4FE46F

loc_4FE463:
cmp     ds:dword_557E75, 200h
jnz     short loc_4FE471

loc_4FE46F:
mov     edx, eax

loc_4FE471:
mov     eax, edi
call    __SetIOMode_
mov     eax, edi

loc_4FE47A:
add     esp, 20h
pop     ebp
pop     edi
pop     esi
retn
sub_4FE278 endp

; [000000BB BYTES: COLLAPSED FUNCTION __allocfp_]
; [00000039 BYTES: COLLAPSED FUNCTION __freefp_]
; [0000001E BYTES: COLLAPSED CHUNK OF FUNCTION __full_io_exit_]
; [00000031 BYTES: COLLAPSED FUNCTION __chktty_]
; [000000C5 BYTES: COLLAPSED FUNCTION fgetc_]
; [0000002F BYTES: COLLAPSED FUNCTION sub_4FE689]
; [000000B4 BYTES: COLLAPSED FUNCTION sub_4FE6B8]
; [00000007 BYTES: COLLAPSED FUNCTION sub_4FE76C]
; [00000008 BYTES: COLLAPSED FUNCTION sub_4FE773]



sub_4FE77B proc near

var_18= dword ptr -18h
var_14= dword ptr -14h

push    ecx
push    esi
push    edi
push    ebp
sub     esp, 8
mov     esi, eax
mov     [esp+18h+var_18], edx
mov     eax, [ebx]
mov     [esp+18h+var_14], eax
mov     ah, [esi+10h]
xor     ebp, ebp
and     ah, 0FDh
xor     edi, edi
mov     [esi+10h], ah

loc_4FE79A:
mov     ebx, [esp+18h+var_18]
lea     edx, [ebx+1]
mov     [esp+18h+var_18], edx
mov     bl, [ebx]
and     ebx, 0FFh
jz      loc_4FE9D4
mov     al, bl
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 2
jz      short loc_4FE7D1
mov     eax, esi
call    sub_4FEAE6
add     edi, eax
jmp     loc_4FE99E

loc_4FE7D1:
cmp     ebx, 25h ; '%'
jz      short loc_4FE7FB
mov     eax, esi
call    sub_4FE76C
cmp     eax, ebx
jz      loc_4FE99D

loc_4FE7E5:
test    byte ptr [esi+10h], 2
jnz     loc_4FE9D4
mov     edx, esi
call    sub_4FE773
jmp     loc_4FE9D4

loc_4FE7FB:
mov     eax, [esp+18h+var_18]
mov     edx, esi
call    sub_4FE9EF
xor     ebx, ebx
mov     [esp+18h+var_18], eax
mov     bl, [eax]
test    ebx, ebx
jz      short loc_4FE814
inc     eax
mov     [esp+18h+var_18], eax

loc_4FE814:
cmp     ebx, 64h ; 'd'
jb      short loc_4FE87E
jbe     loc_4FE8E2
cmp     ebx, 6Fh ; 'o'
jb      short loc_4FE857
jbe     loc_4FE90B
cmp     ebx, 73h ; 's'
jb      short loc_4FE852
jbe     loc_4FE943
cmp     ebx, 75h ; 'u'
jb      loc_4FE99E
jbe     loc_4FE917
cmp     ebx, 78h ; 'x'

loc_4FE847:
jz      loc_4FE926
jmp     loc_4FE99E

loc_4FE852:
cmp     ebx, 70h ; 'p'
jmp     short loc_4FE847

loc_4FE857:
cmp     ebx, 69h ; 'i'
jb      short loc_4FE870
jbe     loc_4FE8FC
cmp     ebx, 6Eh ; 'n'
jz      loc_4FE97F
jmp     loc_4FE99E

loc_4FE870:
cmp     ebx, 67h ; 'g'
jbe     loc_4FE932
jmp     loc_4FE99E

loc_4FE87E:
cmp     ebx, 47h ; 'G'
jb      short loc_4FE8BF
jbe     loc_4FE932
cmp     ebx, 58h ; 'X'
jb      short loc_4FE8B1
jbe     loc_4FE926
cmp     ebx, 5Bh ; '['
jb      loc_4FE99E
jbe     loc_4FE950
cmp     ebx, 63h ; 'c'
jz      loc_4FE963
jmp     loc_4FE99E

loc_4FE8B1:
cmp     ebx, 53h ; 'S'
jz      loc_4FE93F
jmp     loc_4FE99E

loc_4FE8BF:
cmp     ebx, 43h ; 'C'
jb      short loc_4FE8D4
jbe     loc_4FE95F
cmp     ebx, 45h ; 'E'
jz      short loc_4FE932
jmp     loc_4FE99E

loc_4FE8D4:
cmp     ebx, 25h ; '%'
jz      loc_4FE98E
jmp     loc_4FE99E

loc_4FE8E2:
mov     ecx, 1
mov     ebx, 0Ah

loc_4FE8EC:
lea     edx, [esp+18h+var_14]
mov     eax, esi

loc_4FE8F2:
call    sub_4FF1BF
jmp     loc_4FE96E

loc_4FE8FC:
mov     ecx, 1
lea     edx, [esp+18h+var_14]
mov     eax, esi
xor     ebx, ebx
jmp     short loc_4FE8F2

loc_4FE90B:
mov     ecx, 1
mov     ebx, 8
jmp     short loc_4FE8EC

loc_4FE917:
mov     ebx, 0Ah
lea     edx, [esp+18h+var_14]
mov     eax, esi
xor     ecx, ecx
jmp     short loc_4FE8F2

loc_4FE926:
mov     ecx, 1
mov     ebx, 10h
jmp     short loc_4FE8EC

loc_4FE932:
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEEE9
jmp     short loc_4FE96E

loc_4FE93F:
or      byte ptr [esi+10h], 20h

loc_4FE943:
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEBFF
jmp     short loc_4FE96E

loc_4FE950:
mov     ebx, esp
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEDF3
jmp     short loc_4FE96E

loc_4FE95F:
or      byte ptr [esi+10h], 20h

loc_4FE963:
lea     edx, [esp+18h+var_14]
mov     eax, esi
call    sub_4FEB1D

loc_4FE96E:
mov     ebx, eax
test    ebx, ebx
jle     short loc_4FE9D4
add     edi, ebx
test    byte ptr [esi+10h], 1
jz      short loc_4FE99E
inc     ebp
jmp     short loc_4FE99E

loc_4FE97F:
lea     edx, [esp+18h+var_14]
mov     ebx, edi
mov     eax, esi
call    sub_4FED52
jmp     short loc_4FE99E

loc_4FE98E:
mov     eax, esi
call    sub_4FE76C
cmp     eax, ebx
jnz     loc_4FE7E5

loc_4FE99D:
inc     edi

loc_4FE99E:
test    byte ptr [esi+10h], 2
jz      loc_4FE79A
mov     eax, [esp+18h+var_18]
cmp     byte ptr [eax], 25h ; '%'
jnz     short loc_4FE9D4
lea     ebx, [eax+1]
mov     edx, esi
mov     eax, ebx
mov     [esp+18h+var_18], ebx
call    sub_4FE9EF
mov     [esp+18h+var_18], eax
cmp     byte ptr [eax], 6Eh ; 'n'
jnz     short loc_4FE9D4
lea     edx, [esp+18h+var_14]
mov     ebx, edi
mov     eax, esi
call    sub_4FED52

loc_4FE9D4:
test    ebp, ebp
jnz     short loc_4FE9E5
test    byte ptr [esi+10h], 2
jz      short loc_4FE9E5
mov     eax, 0FFFFFFFFh
jmp     short loc_4FE9E7

loc_4FE9E5:
mov     eax, ebp

loc_4FE9E7:
add     esp, 8
pop     ebp
pop     edi
pop     esi
pop     ecx
retn
sub_4FE77B endp




sub_4FE9EF proc near

var_10= dword ptr -10h

push    ebx
push    ecx
push    esi
sub     esp, 4
mov     ebx, edx
mov     dl, [edx+10h]
or      dl, 1
mov     [ebx+10h], dl
mov     dh, dl
mov     dword ptr [ebx+0Ch], 0FFFFFFFFh
and     dh, 3
mov     [ebx+10h], dh
cmp     byte ptr [eax], 2Ah ; '*'
jnz     short loc_4FEA1E
mov     ch, [ebx+10h]
and     ch, 0FEh
inc     eax
mov     [ebx+10h], ch

loc_4FEA1E:
xor     edx, edx
mov     dl, [eax]
mov     [esp+10h+var_10], edx
mov     dl, byte ptr [esp+10h+var_10]
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 20h
jz      short loc_4FEA61
xor     edx, edx

loc_4FEA3B:
imul    edx, 0Ah
mov     esi, [esp+10h+var_10]
sub     esi, 30h ; '0'
inc     eax
add     edx, esi
movzx   esi, byte ptr [eax]
mov     [esp+10h+var_10], esi
mov     cl, byte ptr [esp+10h+var_10]
inc     cl
movzx   esi, cl
test    ds:_IsTable[esi], 20h
jnz     short loc_4FEA3B
mov     [ebx+0Ch], edx

loc_4FEA61:
mov     cl, [eax]
lea     edx, [eax+1]
cmp     cl, 4Eh ; 'N'
jnz     short loc_4FEA71
or      byte ptr [ebx+10h], 8
jmp     short loc_4FEA7A

loc_4FEA71:
cmp     cl, 46h ; 'F'
jnz     short loc_4FEA7C
or      byte ptr [ebx+10h], 4

loc_4FEA7A:
mov     eax, edx

loc_4FEA7C:
mov     dl, [eax]
lea     esi, [eax+1]
cmp     dl, 68h ; 'h'
jb      short loc_4FEA96
jbe     short loc_4FEAA4
cmp     dl, 6Ch ; 'l'
jb      short loc_4FEADF
jbe     short loc_4FEAAE
cmp     dl, 77h ; 'w'
jz      short loc_4FEAAE
jmp     short loc_4FEADF

loc_4FEA96:
cmp     dl, 49h ; 'I'
jb      short loc_4FEADF
jbe     short loc_4FEAC7
cmp     dl, 4Ch ; 'L'
jz      short loc_4FEABA
jmp     short loc_4FEADF

loc_4FEAA4:
mov     dh, [ebx+10h]
or      dh, 10h
mov     eax, esi
jmp     short loc_4FEADC

loc_4FEAAE:
mov     dl, [ebx+10h]
or      dl, 20h
inc     eax
mov     [ebx+10h], dl
jmp     short loc_4FEADF

loc_4FEABA:
mov     cl, [ebx+10h]
or      cl, 40h
mov     eax, esi
mov     [ebx+10h], cl
jmp     short loc_4FEADF

loc_4FEAC7:
cmp     byte ptr [eax+1], 36h ; '6'
jnz     short loc_4FEADF
cmp     byte ptr [eax+2], 34h ; '4'
jnz     short loc_4FEADF
mov     dh, [ebx+10h]
or      dh, 40h
add     eax, 3

loc_4FEADC:
mov     [ebx+10h], dh

loc_4FEADF:
add     esp, 4
pop     esi
pop     ecx
pop     ebx
retn
sub_4FE9EF endp




sub_4FEAE6 proc near
push    ebx
push    edx
push    esi
mov     ebx, eax
xor     esi, esi

loc_4FEAED:
mov     eax, ebx
call    sub_4FE76C
mov     edx, eax
inc     dl
and     edx, 0FFh
test    ds:_IsTable[edx], 2
jz      short loc_4FEB0A
inc     esi
jmp     short loc_4FEAED

loc_4FEB0A:
test    byte ptr [ebx+10h], 2
jnz     short loc_4FEB17
mov     edx, ebx
call    sub_4FE773

loc_4FEB17:
mov     eax, esi
pop     esi
pop     edx
pop     ebx
retn
sub_4FEAE6 endp




sub_4FEB1D proc near

var_20= dword ptr -20h
var_1C= byte ptr -1Ch
var_1B= byte ptr -1Bh

push    ebx
push    ecx
push    esi
push    edi
push    es
push    ebp
sub     esp, 8
mov     ecx, eax
test    byte ptr [eax+10h], 1
jz      short loc_4FEB65
mov     bl, [ecx+10h]
test    bl, 4
jz      short loc_4FEB42
mov     edi, [edx]
add     edi, 8
mov     [edx], edi
les     esi, [edi-8]
jmp     short loc_4FEB65

loc_4FEB42:
test    bl, 8
jz      short loc_4FEB57
mov     esi, [edx]
add     esi, 4
mov     eax, ds
mov     [edx], esi
mov     es, eax
assume es:AUTO
mov     esi, [esi-4]
jmp     short loc_4FEB65

loc_4FEB57:
mov     ebx, [edx]
add     ebx, 4
mov     eax, ds
mov     [edx], ebx
mov     es, eax
mov     esi, [ebx-4]

loc_4FEB65:
mov     edi, [ecx+0Ch]
xor     ebp, ebp
cmp     edi, 0FFFFFFFFh
jnz     short loc_4FEB74
mov     edi, 1

loc_4FEB74:
test    edi, edi
jle     loc_4FEBF3
mov     eax, ecx
call    sub_4FE76C
mov     dl, [ecx+10h]
test    dl, 2
jnz     loc_4FEBF3
inc     ebp
dec     edi
test    dl, 1
jz      short loc_4FEB74
test    dl, 20h
jz      short loc_4FEBED
mov     edx, ds:dword_898344
mov     [esp+20h+var_1C], al
test    edx, edx
jz      short loc_4FEBC8
and     eax, 0FFh
mov     al, ds:byte_898349[eax]
and     al, 1
and     eax, 0FFh
jz      short loc_4FEBC8
mov     eax, ecx
call    sub_4FE76C
mov     [esp+20h+var_1B], al

loc_4FEBC8:
mov     ebx, 2
lea     edx, [esp+20h+var_1C]
mov     eax, esp
call    sub_501297
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FEBE1
xor     eax, eax
jmp     short loc_4FEBF5

loc_4FEBE1:
mov     eax, [esp+20h+var_20]
mov     es:[esi], ax
add     esi, 2
jmp     short loc_4FEB74

loc_4FEBED:
mov     es:[esi], al
inc     esi
jmp     short loc_4FEB74

loc_4FEBF3:
mov     eax, ebp

loc_4FEBF5:
add     esp, 8

loc_4FEBF8:
pop     ebp
pop     es
assume es:nothing
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_4FEB1D endp




sub_4FEBFF proc near

var_24= dword ptr -24h
var_20= byte ptr -20h
var_1F= byte ptr -1Fh
var_1C= byte ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    es
push    ebp
sub     esp, 0Ch
mov     ecx, eax
test    byte ptr [eax+10h], 20h
jz      short loc_4FEC17
mov     [esp+24h+var_1C], 2
jmp     short loc_4FEC20

loc_4FEC17:
test    byte ptr [ecx+10h], 10h
mov     [esp+24h+var_1C], 1

loc_4FEC20:
mov     bl, [ecx+10h]
test    bl, 1
jz      short loc_4FEC5C
test    bl, 4
jz      short loc_4FEC39
mov     edi, [edx]
add     edi, 8
mov     [edx], edi
les     esi, [edi-8]
jmp     short loc_4FEC5C

loc_4FEC39:
test    bl, 8
jz      short loc_4FEC4E
mov     esi, [edx]
add     esi, 4
mov     eax, ds
mov     [edx], esi
mov     es, eax
assume es:AUTO
mov     esi, [esi-4]
jmp     short loc_4FEC5C

loc_4FEC4E:
mov     ebx, [edx]
add     ebx, 4
mov     eax, ds
mov     [edx], ebx
mov     es, eax
mov     esi, [ebx-4]

loc_4FEC5C:
xor     edi, edi

loc_4FEC5E:
mov     eax, ecx
call    sub_4FE76C
mov     ebx, eax
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 2
jz      short loc_4FEC7A
inc     edi
jmp     short loc_4FEC5E

loc_4FEC7A:
test    byte ptr [ecx+10h], 2
jz      short loc_4FEC87
xor     edi, edi
jmp     loc_4FED2B

loc_4FEC87:
mov     eax, [ecx+0Ch]
lea     edx, [eax-1]
mov     [ecx+0Ch], edx
test    eax, eax
jz      loc_4FED22

loc_4FEC98:
mov     al, [ecx+10h]
inc     edi
test    al, 1
jz      short loc_4FED00
cmp     [esp+24h+var_1C], 1
jnz     short loc_4FECAC
mov     es:[esi], bl
jmp     short loc_4FECF8

loc_4FECAC:
mov     ebp, ds:dword_898344
mov     [esp+24h+var_20], bl
test    ebp, ebp
jz      short loc_4FECD8
xor     eax, eax
mov     al, bl
mov     al, ds:byte_898349[eax]
and     al, 1
and     eax, 0FFh
jz      short loc_4FECD8
mov     eax, ecx
call    sub_4FE76C
mov     [esp+24h+var_1F], al

loc_4FECD8:
mov     ebx, 2
lea     edx, [esp+24h+var_20]
mov     eax, esp
call    sub_501297
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FECF1
xor     eax, eax
jmp     short loc_4FED4A

loc_4FECF1:
mov     eax, [esp+24h+var_24]
mov     es:[esi], ax

loc_4FECF8:
xor     eax, eax
mov     al, [esp+24h+var_1C]
add     esi, eax

loc_4FED00:
mov     eax, ecx
call    sub_4FF5EB
mov     ebx, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_4FED2B
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 2
jz      loc_4FEC98

loc_4FED22:
mov     edx, ecx
mov     eax, ebx
call    sub_4FE773

loc_4FED2B:
test    byte ptr [ecx+10h], 1
jz      short loc_4FED48
test    edi, edi
jle     short loc_4FED48
cmp     [esp+24h+var_1C], 1
jnz     short loc_4FED42
mov     byte ptr es:[esi], 0
jmp     short loc_4FED48

loc_4FED42:
mov     word ptr es:[esi], 0

loc_4FED48:
mov     eax, edi

loc_4FED4A:
add     esp, 0Ch
jmp     loc_4FEBF8
sub_4FEBFF endp




sub_4FED52 proc near
push    ecx
push    esi
push    edi
push    es
mov     cl, [eax+10h]
test    cl, 1
jz      short loc_4FEDAB
test    cl, 4
jz      short loc_4FED6F
mov     edi, [edx]
add     edi, 8
mov     [edx], edi
les     edx, [edi-8]
assume es:nothing
jmp     short loc_4FED94

loc_4FED6F:
test    cl, 8
jz      short loc_4FED84
mov     esi, [edx]
add     esi, 4
mov     ecx, ds
mov     [edx], esi
mov     es, ecx
assume es:AUTO
mov     edx, [esi-4]
jmp     short loc_4FED94

loc_4FED84:
mov     ecx, [edx]
add     ecx, 4
mov     [edx], ecx
mov     edx, ecx
mov     ecx, ds
mov     es, ecx
mov     edx, [edx-4]

loc_4FED94:
mov     ch, [eax+10h]
test    ch, 10h
jz      short loc_4FEDA5
mov     es:[edx], bx
pop     es
assume es:nothing
pop     edi
pop     esi
pop     ecx
retn

loc_4FEDA5:
test    ch, 20h
mov     es:[edx], ebx

loc_4FEDAB:
pop     es
pop     edi
pop     esi
pop     ecx
retn
sub_4FED52 endp




sub_4FEDB0 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ebx, 20h ; ' '
mov     eax, esi
xor     edx, edx
call    memset_
xor     eax, eax
mov     al, [ecx]
inc     ecx
test    eax, eax
jz      short loc_4FEDED

loc_4FEDCE:
mov     edx, eax
and     eax, 7
sar     edx, 3
mov     al, ds:byte_557FC4[eax]
or      [edx+esi], al
xor     eax, eax
mov     al, [ecx]
test    eax, eax
jz      short loc_4FEDED
inc     ecx
cmp     eax, 5Dh ; ']'
jnz     short loc_4FEDCE

loc_4FEDED:
mov     eax, ecx
pop     esi
pop     ecx
pop     ebx
retn
sub_4FEDB0 endp




sub_4FEDF3 proc near

var_40= byte ptr -40h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h

push    ecx
push    esi
push    edi
push    es
push    ebp
sub     esp, 2Ch
mov     ecx, eax
mov     edi, edx
mov     eax, [ebx]
cmp     byte ptr [eax], 5Eh ; '^'
setz    dl
and     edx, 0FFh
mov     [esp+40h+var_1C], edx
jz      short loc_4FEE16
inc     eax
mov     [ebx], eax

loc_4FEE16:
mov     edx, esp
mov     eax, [ebx]
call    sub_4FEDB0
mov     [ebx], eax
mov     bl, [ecx+10h]
test    bl, 1
jz      short loc_4FEE5D
test    bl, 4
jz      short loc_4FEE3A
mov     esi, [edi]
add     esi, 8
mov     [edi], esi
les     esi, [esi-8]
jmp     short loc_4FEE5D

loc_4FEE3A:
test    bl, 8
jz      short loc_4FEE4F
mov     ebx, [edi]
add     ebx, 4
mov     eax, ds
mov     [edi], ebx
mov     es, eax
assume es:AUTO
mov     esi, [ebx-4]
jmp     short loc_4FEE5D

loc_4FEE4F:
mov     edx, [edi]
add     edx, 4
mov     eax, ds
mov     [edi], edx
mov     es, eax
mov     esi, [edx-4]

loc_4FEE5D:
mov     edx, [ecx+0Ch]
xor     edi, edi

loc_4FEE62:
test    edx, edx
jbe     short loc_4FEED0
mov     eax, ecx
call    sub_4FE76C
mov     bl, [ecx+10h]
mov     [esp+40h+var_18], eax
test    bl, 2
jnz     short loc_4FEED0
mov     ebx, eax
sar     ebx, 3
mov     bl, [esp+ebx+40h+var_40]
and     ebx, 0FFh
mov     [esp+40h+var_20], ebx
mov     ebx, eax
and     ebx, 7
mov     bl, ds:byte_557FC4[ebx]
mov     ebp, [esp+40h+var_20]
and     ebx, 0FFh
test    ebx, ebp
setz    bl
mov     ebp, [esp+40h+var_1C]
and     ebx, 0FFh
cmp     ebx, ebp
jz      short loc_4FEEBC
mov     edx, ecx
call    sub_4FE773
jmp     short loc_4FEED0

loc_4FEEBC:
inc     edi
mov     bh, [ecx+10h]
dec     edx
test    bh, 1
jz      short loc_4FEE62
mov     al, byte ptr [esp+40h+var_18]
mov     es:[esi], al
inc     esi
jmp     short loc_4FEE62

loc_4FEED0:
test    byte ptr [ecx+10h], 1
jz      short loc_4FEEDE
test    edi, edi
jle     short loc_4FEEDE
mov     byte ptr es:[esi], 0

loc_4FEEDE:
mov     eax, edi
add     esp, 2Ch
pop     ebp
pop     es
assume es:nothing
pop     edi
pop     esi
pop     ecx
retn
sub_4FEDF3 endp




sub_4FEEE9 proc near

var_84= byte ptr -84h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    esi
push    edi
push    es
push    ebp
sub     esp, 6Ch
mov     esi, eax
mov     [esp+84h+var_2C], edx
xor     edi, edi
mov     ebx, esp
mov     [esp+84h+var_1C], edi

loc_4FEF00:
mov     eax, esi
call    sub_4FE76C
mov     dl, al
inc     dl
movzx   ebp, dl
mov     dl, ss:_IsTable[ebp]
mov     ecx, eax
test    dl, 2
jz      short loc_4FEF21
inc     [esp+84h+var_1C]
jmp     short loc_4FEF00

loc_4FEF21:
test    byte ptr [esi+10h], 2
jnz     loc_4FF102
mov     edx, [esi+0Ch]
lea     ebp, [edx-1]
mov     [esi+0Ch], ebp
test    edx, edx
jz      loc_4FF0F9
cmp     eax, 2Bh ; '+'
jz      short loc_4FEF46
cmp     eax, 2Dh ; '-'
jnz     short loc_4FEF64

loc_4FEF46:
mov     ebp, [esp+84h+var_1C]
mov     eax, esi
mov     [ebx], cl
call    sub_4FF5EB
inc     ebx
inc     ebp
mov     ecx, eax
mov     [esp+84h+var_1C], ebp
cmp     eax, 0FFFFFFFFh
jz      loc_4FF102

loc_4FEF64:
mov     al, cl
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 20h
jnz     short loc_4FEF7F
cmp     ecx, 2Eh ; '.'
jnz     loc_4FF0F9

loc_4FEF7F:
xor     eax, eax
mov     [esp+84h+var_20], eax
mov     al, cl
xor     ebp, ebp
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 20h
jz      short loc_4FEFDA
mov     ebp, 1

loc_4FEF9E:
mov     [ebx], cl
mov     al, [esi+10h]
inc     ebx
test    al, 10h
jz      short loc_4FEFB7
imul    eax, [esp+84h+var_20+2], 0Ah
add     ecx, eax
sub     ecx, 30h ; '0'
mov     word ptr [esp+84h+var_20+2], cx

loc_4FEFB7:
mov     eax, esi
inc     edi
call    sub_4FF5EB
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jz      loc_4FF102
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 20h
jnz     short loc_4FEF9E

loc_4FEFDA:
cmp     ecx, 2Eh ; '.'
jnz     loc_4FF07B
mov     eax, esi
mov     [ebx], cl
call    sub_4FF5EB
inc     ebx
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jz      loc_4FF102
test    ebp, ebp
jnz     short loc_4FF010
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 20h
jz      loc_4FF0F9

loc_4FF010:
inc     edi

loc_4FF011:
mov     al, cl
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 20h
jz      short loc_4FF035
inc     edi
mov     eax, esi
mov     [ebx], cl
call    sub_4FF5EB
inc     ebx
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jnz     short loc_4FF011

loc_4FF035:
test    byte ptr [esi+10h], 10h
jz      short loc_4FF072
xor     edx, edx
mov     ebp, ebx
mov     [esp+84h+var_24], edx

loc_4FF043:
dec     ebp
mov     al, [ebp+0]
cmp     al, 2Eh ; '.'
jz      short loc_4FF069
sub     al, 30h ; '0'
mov     [esp+84h+var_28], 0Ah
mov     byte ptr [esp+84h+var_24+2], al
xor     edx, edx
mov     eax, [esp+84h+var_24]
div     [esp+84h+var_28]
mov     [esp+84h+var_24], eax
jmp     short loc_4FF043

loc_4FF069:
mov     eax, [esp+84h+var_24]
mov     word ptr [esp+84h+var_20], ax

loc_4FF072:
cmp     ecx, 0FFFFFFFFh
jz      loc_4FF102

loc_4FF07B:
test    byte ptr [esi+10h], 10h
jnz     loc_4FF0F9
cmp     ecx, 65h ; 'e'
jz      short loc_4FF093
cmp     ecx, 45h ; 'E'
jnz     loc_4FF0F9

loc_4FF093:
inc     edi
mov     eax, esi
mov     [ebx], cl
call    sub_4FF5EB
inc     ebx
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_4FF102
cmp     eax, 2Bh ; '+'
jz      short loc_4FF0AF
cmp     eax, 2Dh ; '-'
jnz     short loc_4FF0C1

loc_4FF0AF:
inc     edi
mov     eax, esi
mov     [ebx], cl
call    sub_4FF5EB
inc     ebx
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_4FF102

loc_4FF0C1:
mov     al, cl
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 20h
jnz     short loc_4FF0D7
xor     edi, edi
jmp     short loc_4FF0F9

loc_4FF0D7:
inc     edi
mov     eax, esi
mov     [ebx], cl
call    sub_4FF5EB
inc     ebx
mov     ecx, eax
cmp     eax, 0FFFFFFFFh
jz      short loc_4FF102
inc     al
and     eax, 0FFh
test    ds:_IsTable[eax], 20h
jnz     short loc_4FF0D7

loc_4FF0F9:
mov     edx, esi
mov     eax, ecx
call    sub_4FE773

loc_4FF102:
test    edi, edi
jle     loc_4FF1B5
add     edi, [esp+84h+var_1C]
test    byte ptr [esi+10h], 1
jz      loc_4FF1B5
mov     byte ptr [ebx], 0
test    byte ptr [esi+10h], 10h
jz      short loc_4FF12D
cmp     [esp+84h+var_84], 2Dh ; '-'
jnz     short loc_4FF139
neg     [esp+84h+var_20]
jmp     short loc_4FF139

loc_4FF12D:
lea     edx, [esp+84h+var_34]
mov     eax, esp
call    ds:off_5581A4   ; _no_support_loaded(void) ...

loc_4FF139:
mov     ah, [esi+10h]
test    ah, 4
jz      short loc_4FF151
mov     eax, [esp+84h+var_2C]
mov     ecx, [eax]
add     ecx, 8
mov     [eax], ecx
les     ebx, [ecx-8]
jmp     short loc_4FF17C

loc_4FF151:
test    ah, 8
jz      short loc_4FF16A
mov     eax, [esp+84h+var_2C]
mov     ebx, [eax]
add     ebx, 4
mov     [eax], ebx
mov     eax, ds
mov     es, eax
assume es:AUTO
mov     ebx, [ebx-4]
jmp     short loc_4FF17C

loc_4FF16A:
mov     eax, [esp+84h+var_2C]
mov     edx, [eax]
add     edx, 4
mov     [eax], edx
mov     eax, ds
mov     es, eax
mov     ebx, [edx-4]

loc_4FF17C:
mov     dh, [esi+10h]
test    dh, 10h
jz      short loc_4FF18A
mov     eax, [esp+84h+var_20]
jmp     short loc_4FF1B2

loc_4FF18A:
test    dh, 20h
jnz     short loc_4FF194
test    dh, 40h
jz      short loc_4FF1A5

loc_4FF194:
mov     eax, [esp+84h+var_34]
mov     es:[ebx], eax
mov     eax, [esp+84h+var_30]
mov     es:[ebx+4], eax
jmp     short loc_4FF1B5

loc_4FF1A5:
mov     eax, [esp+84h+var_34]
mov     edx, [esp+84h+var_30]
call    __FDFS

loc_4FF1B2:
mov     es:[ebx], eax

loc_4FF1B5:
mov     eax, edi
add     esp, 6Ch
jmp     loc_4FEBF8
sub_4FEEE9 endp




sub_4FF1BF proc near

var_40= dword ptr -40h
var_3C= dword ptr -3Ch
var_38= dword ptr -38h
var_34= dword ptr -34h
var_30= dword ptr -30h
var_2C= dword ptr -2Ch
var_28= dword ptr -28h
var_24= dword ptr -24h
var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h

push    esi
push    edi
push    es
push    ebp
sub     esp, 30h
mov     edi, eax
mov     [esp+40h+var_24], edx
mov     [esp+40h+var_18], ebx
xor     edx, edx
xor     ebp, ebp
mov     [esp+40h+var_38], edx
mov     [esp+40h+var_34], edx
mov     [esp+40h+var_1C], edx
mov     [esp+40h+var_20], edx

loc_4FF1E4:
mov     eax, edi
call    sub_4FE76C
mov     [esp+40h+var_14], eax
mov     bl, byte ptr [esp+40h+var_14]
inc     bl
and     ebx, 0FFh
test    ds:_IsTable[ebx], 2
jz      short loc_4FF20A
inc     [esp+40h+var_20]
jmp     short loc_4FF1E4

loc_4FF20A:
test    byte ptr [edi+10h], 2
jnz     loc_4FF4A4
mov     ebx, [edi+0Ch]
lea     esi, [ebx-1]
mov     [edi+0Ch], esi
test    ebx, ebx
jz      loc_4FF499
mov     ebx, 2Bh ; '+'
mov     [esp+40h+var_28], ebx
test    ecx, ecx
jz      short loc_4FF260
cmp     eax, ebx
jz      short loc_4FF23B
cmp     eax, 2Dh ; '-'
jnz     short loc_4FF260

loc_4FF23B:
mov     eax, [esp+40h+var_14]
mov     ecx, [esp+40h+var_20]
mov     [esp+40h+var_28], eax
inc     ecx
mov     eax, edi
mov     [esp+40h+var_20], ecx
call    sub_4FF5EB
mov     [esp+40h+var_14], eax
cmp     eax, 0FFFFFFFFh
jz      loc_4FF4A4

loc_4FF260:
mov     esi, [esp+40h+var_18]
test    esi, esi
jnz     loc_4FF2D5
cmp     [esp+40h+var_14], 30h ; '0'
jnz     short loc_4FF2CB
mov     eax, edi
mov     ebp, 1
call    sub_4FF5EB
mov     [esp+40h+var_14], eax
cmp     eax, 0FFFFFFFFh
jz      loc_4FF4A4
cmp     eax, 78h ; 'x'
jz      short loc_4FF296
cmp     eax, 58h ; 'X'
jnz     short loc_4FF2C1

loc_4FF296:
mov     eax, edi
mov     edx, [esp+40h+var_20]
call    sub_4FF5EB
xor     ebp, ebp
add     edx, 2
mov     [esp+40h+var_14], eax
mov     [esp+40h+var_20], edx
cmp     eax, 0FFFFFFFFh
jz      loc_4FF4A4
mov     [esp+40h+var_18], 10h
jmp     short loc_4FF325

loc_4FF2C1:
mov     [esp+40h+var_18], 8
jmp     short loc_4FF325

loc_4FF2CB:
mov     [esp+40h+var_18], 0Ah
jmp     short loc_4FF325

loc_4FF2D5:
cmp     esi, 10h
jnz     short loc_4FF325
cmp     [esp+40h+var_14], 30h ; '0'
jnz     short loc_4FF325
mov     eax, edi
mov     ebp, 1
call    sub_4FF5EB
mov     [esp+40h+var_14], eax
cmp     eax, 0FFFFFFFFh
jz      loc_4FF4A4
cmp     eax, 78h ; 'x'
jz      short loc_4FF304
cmp     eax, 58h ; 'X'
jnz     short loc_4FF325

loc_4FF304:
mov     eax, edi
mov     ebx, [esp+40h+var_20]
call    sub_4FF5EB
xor     ebp, ebp
add     ebx, 2
mov     [esp+40h+var_14], eax
mov     [esp+40h+var_20], ebx
cmp     eax, 0FFFFFFFFh
jz      loc_4FF4A4

loc_4FF325:
test    byte ptr [edi+10h], 40h
jz      loc_4FF42E
mov     eax, [esp+40h+var_18]
xor     ecx, ecx
mov     [esp+40h+var_30], eax
mov     [esp+40h+var_2C], ecx

loc_4FF33D:
mov     eax, [esp+40h+var_14]
mov     edx, [esp+40h+var_18]
call    sub_4FF5C4
cmp     eax, edx
jge     short loc_4FF3AB
lea     esi, [esp+40h+var_38]
mov     [esp+40h+var_40], eax
xor     ebx, ebx
lea     eax, [esp+40h+var_38]
mov     [esp+40h+var_3C], ebx
lea     ebx, [esp+40h+var_30]
mov     edx, [eax+4]
mov     eax, [eax]
mov     ecx, [ebx+4]
mov     ebx, [ebx]
call    __I8M
mov     [esi+4], edx
mov     [esi], eax
lea     esi, [esp+40h+var_38]
mov     ebx, esp
lea     eax, [esp+40h+var_38]
mov     edx, [eax+4]
mov     eax, [eax]
mov     ecx, [ebx+4]
mov     ebx, [ebx]
add     eax, ebx
adc     edx, ecx
mov     [esi+4], edx
mov     [esi], eax
mov     eax, edi
inc     ebp
call    sub_4FF5EB
mov     [esp+40h+var_14], eax
cmp     eax, 0FFFFFFFFh
jz      loc_4FF4A4
jmp     short loc_4FF33D

loc_4FF3AB:
cmp     [esp+40h+var_14], 3Ah ; ':'
jnz     loc_4FF499
test    byte ptr [edi+10h], 80h
jz      loc_4FF499

loc_4FF3C0:
mov     eax, edi
inc     ebp
call    sub_4FF5EB
mov     [esp+40h+var_14], eax
cmp     eax, 0FFFFFFFFh
jz      loc_4FF4A4
mov     esi, [esp+40h+var_18]
call    sub_4FF5C4
cmp     eax, esi
jge     loc_4FF499
lea     esi, [esp+40h+var_38]
mov     [esp+40h+var_40], eax
xor     eax, eax
lea     ebx, [esp+40h+var_30]
mov     [esp+40h+var_3C], eax
lea     eax, [esp+40h+var_38]
mov     edx, [eax+4]
mov     eax, [eax]
mov     ecx, [ebx+4]
mov     ebx, [ebx]
call    __I8M
mov     [esi+4], edx
mov     [esi], eax
lea     esi, [esp+40h+var_38]
mov     ebx, esp
lea     eax, [esp+40h+var_38]
mov     edx, [eax+4]
mov     eax, [eax]
mov     ecx, [ebx+4]
mov     ebx, [ebx]
add     eax, ebx
adc     edx, ecx
mov     [esi+4], edx
mov     [esi], eax
jmp     short loc_4FF3C0

loc_4FF42E:
mov     esi, [esp+40h+var_18]

loc_4FF432:
mov     eax, [esp+40h+var_14]
call    sub_4FF5C4
cmp     eax, esi
jge     short loc_4FF45F
mov     ebx, [esp+40h+var_1C]
imul    ebx, esi
inc     ebp
add     ebx, eax
mov     eax, edi
mov     [esp+40h+var_1C], ebx
call    sub_4FF5EB
mov     [esp+40h+var_14], eax
cmp     eax, 0FFFFFFFFh
jz      short loc_4FF4A4
jmp     short loc_4FF432

loc_4FF45F:
cmp     [esp+40h+var_14], 3Ah ; ':'
jnz     short loc_4FF499
test    byte ptr [edi+10h], 80h
jz      short loc_4FF499
mov     ecx, [esp+40h+var_18]

loc_4FF470:
mov     eax, edi
inc     ebp
call    sub_4FF5EB
mov     [esp+40h+var_14], eax
cmp     eax, 0FFFFFFFFh
jz      short loc_4FF4A4
call    sub_4FF5C4
cmp     eax, ecx
jge     short loc_4FF499
mov     ebx, [esp+40h+var_1C]
imul    ebx, ecx
add     ebx, eax
mov     [esp+40h+var_1C], ebx
jmp     short loc_4FF470

loc_4FF499:
mov     eax, [esp+40h+var_14]
mov     edx, edi
call    sub_4FE773

loc_4FF4A4:
test    byte ptr [edi+10h], 40h
jz      loc_4FF540
cmp     [esp+40h+var_28], 2Dh ; '-'
jnz     short loc_4FF4D9
mov     esi, [esp+40h+var_38]
mov     eax, [esp+40h+var_34]
not     esi
not     eax
mov     [esp+40h+var_38], esi
lea     edx, [esi+1]
mov     [esp+40h+var_34], eax
mov     [esp+40h+var_38], edx
test    edx, edx
jnz     short loc_4FF4D5
inc     eax

loc_4FF4D5:
mov     [esp+40h+var_34], eax

loc_4FF4D9:
test    ebp, ebp
jle     loc_4FF5BA
mov     ecx, [esp+40h+var_20]
mov     bh, [edi+10h]
add     ebp, ecx
test    bh, 1
jz      loc_4FF5BA
test    bh, 4
jz      short loc_4FF50C
mov     eax, [esp+40h+var_24]
mov     edx, [eax]
add     edx, 8
mov     [eax], edx
mov     ax, [edx-4]
mov     edi, [edx-8]
jmp     short loc_4FF533

loc_4FF50C:
test    bh, 8
jz      short loc_4FF523
mov     eax, [esp+40h+var_24]
mov     edi, [eax]
add     edi, 4
mov     [eax], edi
mov     eax, ds
mov     edi, [edi-4]
jmp     short loc_4FF533

loc_4FF523:
mov     eax, [esp+40h+var_24]
mov     esi, [eax]
add     esi, 4
mov     [eax], esi
mov     eax, ds
mov     edi, [esi-4]

loc_4FF533:
lea     esi, [esp+40h+var_38]
mov     es, eax
movsd
movsd
jmp     loc_4FF5BA

loc_4FF540:
cmp     [esp+40h+var_28], 2Dh ; '-'
jnz     short loc_4FF54B
neg     [esp+40h+var_1C]

loc_4FF54B:
test    ebp, ebp
jle     loc_4FF5BA
mov     ecx, [esp+40h+var_20]
mov     al, [edi+10h]
add     ebp, ecx
test    al, 1
jz      short loc_4FF5BA
test    al, 4
jz      short loc_4FF574
mov     eax, [esp+40h+var_24]
mov     ebx, [eax]
add     ebx, 8
mov     [eax], ebx
les     eax, [ebx-8]
assume es:nothing
jmp     short loc_4FF59E

loc_4FF574:
test    al, 8
jz      short loc_4FF58C
mov     eax, [esp+40h+var_24]
mov     edx, [eax]
add     edx, 4
mov     ebx, ds
mov     [eax], edx
mov     es, ebx
assume es:AUTO
mov     eax, [edx-4]
jmp     short loc_4FF59E

loc_4FF58C:
mov     eax, [esp+40h+var_24]
mov     esi, [eax]
add     esi, 4
mov     ebx, ds
mov     [eax], esi
mov     es, ebx
mov     eax, [esi-4]

loc_4FF59E:
mov     dh, [edi+10h]
test    dh, 10h
jz      short loc_4FF5B0
mov     ebx, [esp+40h+var_1C]
mov     es:[eax], bx
jmp     short loc_4FF5BA

loc_4FF5B0:
test    dh, 20h
mov     ebx, [esp+40h+var_1C]
mov     es:[eax], ebx

loc_4FF5BA:
mov     eax, ebp
add     esp, 30h
pop     ebp
pop     es
assume es:nothing
pop     edi
pop     esi
retn
sub_4FF1BF endp




sub_4FF5C4 proc near
cmp     eax, 30h ; '0'
jl      short loc_4FF5D2
cmp     eax, 39h ; '9'
jg      short loc_4FF5D2
sub     eax, 30h ; '0'
retn

loc_4FF5D2:
call    tolower_
cmp     eax, 61h ; 'a'
jl      short loc_4FF5E5
cmp     eax, 66h ; 'f'
jg      short loc_4FF5E5
sub     eax, 57h ; 'W'
retn

loc_4FF5E5:
mov     eax, 10h
retn
sub_4FF5C4 endp




sub_4FF5EB proc near
push    ebx
push    edx
mov     edx, eax
mov     eax, [eax+0Ch]
lea     ebx, [eax-1]
mov     [edx+0Ch], ebx
test    eax, eax
jz      short loc_4FF609
mov     eax, edx
call    sub_4FE76C
test    byte ptr [edx+10h], 2
jz      short loc_4FF60E

loc_4FF609:
mov     eax, 0FFFFFFFFh

loc_4FF60E:
pop     edx
pop     ebx
retn
sub_4FF5EB endp




sub_4FF611 proc near
push    ecx
push    edx
call    cs:__imp_GetCurrentProcessId
pop     edx
pop     ecx
retn
sub_4FF611 endp

; [000000F5 BYTES: COLLAPSED FUNCTION tmpfile_]
; [000000C8 BYTES: COLLAPSED FUNCTION __GetTmpPath_]
; [0000010F BYTES: COLLAPSED FUNCTION __flush_]
; [00000059 BYTES: COLLAPSED FUNCTION ftell_]
; [00000074 BYTES: COLLAPSED FUNCTION lseek_]
; [0000008D BYTES: COLLAPSED FUNCTION __close_]


; Attributes: thunk

sub_4FFA43 proc near
jmp     sub_5015E0
sub_4FFA43 endp




sub_4FFA48 proc near
push    ebx
mov     ebx, eax
mov     eax, edx
mov     edx, [ebx]
call    sub_500D2C
inc     dword ptr [ebx+10h]
pop     ebx
retn
sub_4FFA48 endp




sub_4FFA59 proc near
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

loc_4FFA87:
mov     dword ptr [eax+0Ch], 1

loc_4FFA8E:
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

loc_4FFAAE:
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

loc_4FFACC:
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

loc_4FFAF6:
test    byte ptr [esi+0Ch], 20h
jz      short loc_4FFB01
mov     edx, 0FFFFFFFFh

loc_4FFB01:
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
sub_4FFA59 endp

; [00000013 BYTES: COLLAPSED FUNCTION mem_putc_]
; [00000015 BYTES: COLLAPSED FUNCTION vsprintf_]
; [000000AA BYTES: COLLAPSED FUNCTION sub_4FFB41]
align 10h
; [00000031 BYTES: COLLAPSED FUNCTION __STOSB]
db 6 dup(90h)
; [0000006C BYTES: COLLAPSED FUNCTION __STOSD]
; [0000001B BYTES: COLLAPSED FUNCTION __setEFGfmt_]
; [00000045 BYTES: COLLAPSED FUNCTION __NTAtMaxFiles_]
; [00000079 BYTES: COLLAPSED FUNCTION __NTAddFileHandle_]
; [000000A5 BYTES: COLLAPSED FUNCTION __NTAddSpecificFileHandle_]
; [0000002C BYTES: COLLAPSED FUNCTION __NTRemoveFileHandle_]
; [0000005F BYTES: COLLAPSED FUNCTION __NTInitFileHandles_]
; [00000029 BYTES: COLLAPSED FUNCTION __NTGetFakeHandle_]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_47]



sub_4FFEC6 proc near
push    ebx
push    ecx
push    edx
mov     edx, ds:dword_897D2C
cmp     edx, 40h ; '@'
jge     short loc_4FFEF0
mov     eax, edx
shl     eax, 2
mov     ebx, offset unk_897D30
sub     eax, edx
lea     ecx, [edx+1]
shl     eax, 3
mov     ds:dword_897D2C, ecx
add     ebx, eax
jmp     short loc_4FFF14

loc_4FFEF0:
mov     edx, 18h
mov     eax, 1
call    calloc_
mov     ebx, eax
test    eax, eax
jnz     short loc_4FFF14
mov     edx, 1
mov     eax, offset aUnableToAlloca ; "Unable to allocate semaphore data\r\n"
call    __fatal_runtime_error_

loc_4FFF14:
mov     eax, ebx
pop     edx
pop     ecx
pop     ebx
retn
sub_4FFEC6 endp




sub_4FFF1A proc near
push    ebx
push    ecx
push    edx
mov     ebx, eax
cmp     dword ptr [eax+4], 0
jz      short loc_4FFF2F
mov     ecx, [eax]
push    ecx             ; lpCriticalSection
call    cs:__imp_DeleteCriticalSection

loc_4FFF2F:
mov     dword ptr [ebx+4], 0
mov     dword ptr [ebx+8], 0
mov     dword ptr [ebx+0Ch], 0
pop     edx
pop     ecx
pop     ebx
retn
sub_4FFF1A endp




sub_4FFF48 proc near
mov     eax, offset unk_897BCC
jmp     sub_4FFFCF
sub_4FFF48 endp




sub_4FFF52 proc near
mov     eax, offset unk_897BCC
jmp     sub_500035
sub_4FFF52 endp


loc_4FFF5C:
and     eax, 0Fh
shl     eax, 4
add     eax, offset unk_897BEC
jmp     short sub_4FFFCF

loc_4FFF69:
and     eax, 0Fh
shl     eax, 4
add     eax, offset unk_897BEC
jmp     sub_500035
; [00000005 BYTES: COLLAPSED FUNCTION j___NTAddFileHandle__0]



sub_4FFF7E proc near
push    edx
mov     edx, eax
and     eax, 0Fh
shl     eax, 4
add     eax, offset unk_897BEC
call    sub_4FFF1A
mov     eax, edx
call    __NTRemoveFileHandle_
pop     edx
retn
sub_4FFF7E endp




sub_4FFF9A proc near
mov     eax, offset unk_897CEC
jmp     short sub_4FFFCF
sub_4FFF9A endp




sub_4FFFA1 proc near
mov     eax, offset unk_897CEC
jmp     sub_500035
sub_4FFFA1 endp




sub_4FFFAB proc near
mov     eax, offset unk_897BDC
jmp     short sub_4FFFCF
sub_4FFFAB endp




sub_4FFFB2 proc near
mov     eax, offset unk_897BDC
jmp     sub_500035
sub_4FFFB2 endp




sub_4FFFBC proc near
mov     eax, offset unk_897D0C
jmp     short sub_4FFFCF
sub_4FFFBC endp




sub_4FFFC3 proc near
mov     eax, offset unk_897D0C
jmp     short sub_500035
sub_4FFFC3 endp




sub_4FFFCA proc near
mov     eax, offset unk_897D1C
sub_4FFFCA endp




sub_4FFFCF proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ebx, eax
call    cs:__imp_GetCurrentThreadId
mov     edx, [ebx+8]
mov     esi, eax
cmp     eax, edx
jz      short loc_500028
cmp     dword ptr [ebx+4], 0
jnz     short loc_50001B
mov     eax, offset dword_897CFC
call    sub_4FFFCF
cmp     dword ptr [ebx+4], 0
jnz     short loc_500011
call    sub_4FFEC6

loc_500000:             ; lpCriticalSection
push    eax
mov     [ebx], eax
call    cs:__imp_InitializeCriticalSection
mov     dword ptr [ebx+4], 1

loc_500011:
mov     eax, offset dword_897CFC
call    sub_500035

loc_50001B:
mov     eax, [ebx]
push    eax             ; lpCriticalSection
call    cs:__imp_EnterCriticalSection
mov     [ebx+8], esi

loc_500028:
inc     dword ptr [ebx+0Ch]
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4FFFCF endp




sub_500030 proc near
mov     eax, offset unk_897D1C
sub_500030 endp




sub_500035 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     edx, [eax+0Ch]
test    edx, edx
jbe     short loc_500057
lea     ebx, [edx-1]
mov     [eax+0Ch], ebx
test    ebx, ebx
jnz     short loc_500057
mov     esi, [eax]
push    esi             ; lpCriticalSection
mov     [eax+8], ebx
call    cs:__imp_LeaveCriticalSection

loc_500057:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_500035 endp




sub_50005C proc near
push    ebx
push    ecx
push    edx
push    esi
call    cs:__imp_GetLastError
mov     edx, ds:dwTlsIndex
push    edx             ; dwTlsIndex
mov     esi, eax
call    cs:__imp_TlsGetValue
mov     ebx, eax
test    eax, eax
jnz     short loc_500084
call    __GetThreadData_
jmp     short loc_50008F

loc_500084:
cmp     byte ptr [eax+53h], 0
jz      short loc_500091
call    __ReallocThreadData_

loc_50008F:
mov     ebx, eax

loc_500091:             ; dwErrCode
push    esi
call    cs:__imp_SetLastError
mov     eax, ebx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_50005C endp




sub_5000A0 proc near
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

loc_5000CE:
mov     eax, edx
call    __InitThreadData_
mov     eax, edx
pop     edx
pop     ebx
retn
sub_5000A0 endp




sub_5000DA proc near
push    ecx
push    edx
call    cs:__imp_TlsAlloc
mov     dx, ds:word_557C51
mov     ds:dwTlsIndex, eax
cmp     dx, 8000h
jb      short loc_50011D
cmp     ds:byte_557C4F, 4
jnb     short loc_50011D

loc_5000FF:
mov     edx, ds:dwTlsIndex
cmp     edx, 0FFFFFFFFh
jz      short loc_50011D
cmp     edx, 2
ja      short loc_50011D
call    cs:__imp_TlsAlloc
mov     ds:dwTlsIndex, eax
jmp     short loc_5000FF

