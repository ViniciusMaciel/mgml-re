loc_40EAA2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EA86 endp




sub_40EAA6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 7
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 5Ah ; 'Z'
jmp     short loc_40EA9F
sub_40EAA6 endp




sub_40EABD proc near
push    edx
dec     byte ptr [eax+0Ch]
mov     edx, [eax+98h]
cmp     byte ptr [edx], 1Ch
jnz     short loc_40EACF
inc     byte ptr [eax+0Ah]

loc_40EACF:
pop     edx
retn
sub_40EABD endp




sub_40EAD1 proc near
push    edx
mov     dl, [eax+0Ch]
dec     dl
mov     [eax+0Ch], dl
jnz     short loc_40EAE2
mov     eax, [eax+44h]
inc     byte ptr [eax+8]

loc_40EAE2:
pop     edx

locret_40EAE3:
retn
sub_40EAD1 endp




sub_40EAE4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EB00
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB00:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EAE4 endp




sub_40EB04 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EB25
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB25:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EB04 endp




sub_40EB29 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 22h ; '"'
jnz     short loc_40EB4A
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB4A:
pop     edx
pop     ecx
pop     ebx

locret_40EB4D:
retn
sub_40EB29 endp




sub_40EB4E proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EB54[edx*4]
pop     edx
retn
sub_40EB4E endp




sub_40EB5D proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EB7E
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EB7E:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EB5D endp




sub_40EB82 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 0
jnz     short loc_40EBA3
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBA3:
pop     edx
pop     ecx
pop     ebx
sub_40EB82 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_39]



sub_40EBA7 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EBAD[edx*4]
pop     edx
retn
sub_40EBA7 endp




sub_40EBB6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EBD2
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBD2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBB6 endp




sub_40EBD6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EBF2
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EBF2:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBD6 endp




sub_40EBF6 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EC12
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EC12:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EBF6 endp




sub_40EC16 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40EC32
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx

loc_40EC2A:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40EC32:
pop     edx
pop     ecx
pop     ebx
retn
sub_40EC16 endp




sub_40EC36 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 9
jmp     short loc_40EC2A
sub_40EC36 endp




sub_40EC44 proc near
push    edx
mov     edx, [eax+98h]
cmp     byte ptr [edx], 12h
jnz     short loc_40EC53
inc     byte ptr [eax+0Ah]

loc_40EC53:
pop     edx
retn
sub_40EC44 endp




sub_40EC55 proc near
push    edx
add     word ptr [eax+26h], 2Ch ; ','
mov     edx, [eax+98h]
cmp     byte ptr [edx], 17h
jnz     short loc_40EC69
inc     byte ptr [eax+0Ah]

loc_40EC69:
pop     edx
sub_40EC55 endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_40]



sub_40EC6B proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40EC71[edx*4]
pop     edx
retn
sub_40EC6B endp




sub_40EC7A proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40EC80[edx*4]
pop     edx
retn
sub_40EC7A endp




sub_40EC89 proc near
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40EC9A
mov     eax, ecx
call    sub_40EA36

loc_40EC9A:
mov     eax, ecx
call    sub_40EC7A
cmp     byte ptr [ecx+0Ch], 0
jnz     short loc_40ECB9
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40ECB9:
mov     eax, ecx
call    sub_40E9A0
mov     eax, ecx
call    sub_40ECF2
pop     edx
pop     ecx
retn
sub_40EC89 endp

jpt_40ED13 dd offset def_40ED13 ; jump table for switch statement
dd offset loc_40ED1A
dd offset loc_40ED1A
dd offset loc_40ED1A
dd offset loc_40ED3E
dd offset loc_40ED56
dd offset loc_40ED60
dd offset loc_40ED6A
dd offset loc_40ED97
dd offset loc_40EDA1



sub_40ECF2 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     eax, ds:dword_560C10
mov     byte ptr [eax+0Ch], 1
mov     bl, [edx+0ACh]
cmp     bl, 9           ; switch 10 cases
ja      def_40ED13      ; jumptable 0040ED13 default case, case 0
xor     ecx, ecx
mov     cl, bl
jmp     jpt_40ED13[ecx*4] ; switch jump

loc_40ED1A:             ; jumptable 0040ED13 cases 1-3
mov     edx, [edx+98h]
mov     dl, [edx]
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF0A

loc_40ED30:
mov     dx, [edx]
imul    edx, -1
mov     [eax+58h], dx
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED3E:             ; jumptable 0040ED13 case 4
mov     edx, [edx+98h]
mov     dl, [edx]
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF4C
jmp     short loc_40ED30

loc_40ED56:             ; jumptable 0040ED13 case 5
mov     word ptr [eax+58h], 13Eh
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED60:             ; jumptable 0040ED13 case 6
mov     word ptr [eax+58h], 0FFC1h
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED6A:             ; jumptable 0040ED13 case 7
mov     edx, [edx+98h]
mov     bh, [edx]
cmp     bh, 1Fh
jnb     short loc_40ED89
mov     dl, bh
and     edx, 0FFh
add     edx, edx
add     edx, offset unk_50CF92
jmp     short loc_40ED30

loc_40ED89:
mov     byte ptr [eax+0Ch], 0
sub     word ptr [eax+58h], 11Ch
pop     edx
pop     ecx
pop     ebx
retn

loc_40ED97:             ; jumptable 0040ED13 case 8
mov     word ptr [eax+58h], 0FEC2h
pop     edx
pop     ecx
pop     ebx
retn

loc_40EDA1:             ; jumptable 0040ED13 case 9
mov     word ptr [eax+58h], 0FEC2h
mov     edx, [edx+98h]
cmp     byte ptr [edx], 12h
jb      short def_40ED13 ; jumptable 0040ED13 default case, case 0
mov     byte ptr [eax+0Ch], 0

def_40ED13:             ; jumptable 0040ED13 default case, case 0
pop     edx
pop     ecx
pop     ebx
retn
sub_40ECF2 endp




sub_40EDBA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     ebx, [eax+640h]
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40EDCA[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40EDDE
mov     eax, ecx
call    sub_4DEADD

loc_40EDDE:
mov     edx, ebx
mov     eax, ecx
call    sub_40EF30
pop     edx
pop     ecx
pop     ebx
retn
sub_40EDBA endp




sub_40EDEB proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     ebx, 6
mov     edx, esi
mov     eax, ecx
call    sub_40EEF0
inc     byte ptr [ecx+9]
mov     byte ptr [ecx+0Dh], 0
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40EDEB endp




sub_40EE43 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     eax, ds:dword_560BEC
cmp     eax, 64h ; 'd'
jb      short loc_40EE86
jbe     loc_40EEBC
cmp     eax, 8Ch
jb      short loc_40EE7C
jbe     loc_40EED6
cmp     eax, 0BEh
jz      loc_40EEDD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE7C:
cmp     eax, 78h ; 'x'
jz      short loc_40EEC3
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE86:
cmp     eax, 2Dh ; '-'
jb      short loc_40EE97
jbe     short loc_40EEAE
cmp     eax, 5Fh ; '_'
jz      short loc_40EEB5
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EE97:
cmp     eax, 1Eh
jnz     short loc_40EEEB
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
xor     ebx, ebx
jmp     short loc_40EEE2

loc_40EEAE:
mov     ebx, 1
jmp     short loc_40EEE2

loc_40EEB5:
mov     ebx, 2
jmp     short loc_40EEE2

loc_40EEBC:
mov     ebx, 3
jmp     short loc_40EEE2

loc_40EEC3:
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40EED6:
mov     ebx, 4
jmp     short loc_40EEE2

loc_40EEDD:
mov     ebx, 5

loc_40EEE2:
mov     edx, esi
mov     eax, ecx
call    sub_40EEF0

loc_40EEEB:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40EE43 endp




sub_40EEF0 proc near
mov     word ptr [edx+4], 0
mov     ax, [edx+4]
mov     [edx], ax
mov     word ptr [edx+0Ah], 0
mov     ax, [edx+0Ah]
mov     [edx+6], ax
mov     word ptr [edx+8], 0FFFFh
mov     ax, [edx+8]
mov     [edx+2], ax
mov     eax, ebx
mov     ebx, ds:off_50D080[ebx*4]
mov     [edx+0Ch], ebx
mov     eax, ds:off_50D09C[eax*4]
mov     [edx+10h], eax
retn
sub_40EEF0 endp




sub_40EF30 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+2]
sar     eax, 10h
mov     ecx, [edx+0Ch]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40EF5C
jbe     short loc_40EF60
cmp     ax, 7FFFh
jnz     short loc_40EF5C
mov     word ptr [edx+4], 0
jmp     short loc_40EF60

loc_40EF5C:
inc     word ptr [esi+4]

loc_40EF60:
mov     eax, [esi+2]
sar     eax, 10h
mov     ecx, [esi+0Ch]
mov     ax, [ecx+eax*2]
mov     [esi], ax
mov     ecx, [esi]
sar     ecx, 10h
cwde
cmp     eax, ecx
jz      short loc_40EFA5
movsx   eax, word ptr [esi]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40EFA5:
mov     ax, [esi]
mov     [esi+2], ax
mov     eax, [esi+8]
sar     eax, 10h
mov     ecx, [esi+10h]
mov     ax, [ecx+eax*2+2]
cmp     ax, 3FFFh
jb      short loc_40EFD0
jbe     short loc_40EFD4
cmp     ax, 7FFFh
jnz     short loc_40EFD0
mov     word ptr [esi+0Ah], 0
jmp     short loc_40EFD4

loc_40EFD0:
inc     word ptr [esi+0Ah]

loc_40EFD4:
mov     ecx, [esi+8]
sar     ecx, 10h
mov     eax, [esi+10h]
mov     ax, [eax+ecx*2]
mov     [esi+6], ax
mov     ecx, [esi+4]
sar     ecx, 10h
mov     eax, [esi+6]
sar     eax, 10h
cmp     ecx, eax
jz      short loc_40F023
mov     eax, [esi+4]
sar     eax, 10h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044

loc_40F023:
mov     ax, [esi+6]
mov     [esi+8], ax
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40EF30 endp

jpt_40F09F dd offset loc_40F0A6 ; jump table for switch statement
dd offset loc_40F0E0
dd offset loc_40F106
dd offset loc_40F1BF
dd offset loc_40F1E3
dd offset loc_40F1FB
dd offset loc_40F249
dd offset def_40F09F



sub_40F050 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
mov     edx, offset dword_560BDC
mov     [esp+1Ch+var_1C], edx
lea     ebp, [eax+640h]
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 7           ; switch 8 cases
ja      def_40F09F      ; jumptable 0040F09F default case, case 7
and     eax, 0FFh
jmp     jpt_40F09F[eax*4] ; switch jump

loc_40F0A6:             ; jumptable 0040F09F case 0
mov     edx, ebp
mov     eax, ecx
call    sub_40F299

def_40F09F:             ; jumptable 0040F09F default case, case 7
mov     edx, ebp
mov     eax, ecx
call    sub_40F332
mov     al, [ecx+0ACh]
cmp     al, [ecx+0ADh]
jz      loc_40F288
mov     ebx, [ebp+0]
sar     ebx, 10h
xor     edx, edx
mov     dl, al
mov     eax, ecx
call    sub_4DE96B
jmp     loc_40F28F

loc_40F0E0:             ; jumptable 0040F09F case 1
mov     byte ptr [ecx+0ADh], 0FFh
cmp     byte ptr [edx+9], 1Bh
jnz     short def_40F09F ; jumptable 0040F09F default case, case 7
cmp     dword ptr [edx+10h], 5
jnz     short def_40F09F ; jumptable 0040F09F default case, case 7
mov     ebx, 2

loc_40F0F8:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319

loc_40F101:
inc     byte ptr [ecx+8]
jmp     short def_40F09F ; jumptable 0040F09F default case, case 7

loc_40F106:             ; jumptable 0040F09F case 2
cmp     ds:byte_560BE5, 1Bh
jnz     loc_40F191
mov     eax, ds:dword_560BEC
cmp     eax, 3Ch ; '<'
jb      short loc_40F13F
jbe     loc_40F183
cmp     eax, 0D7h
jb      short loc_40F138
jbe     short loc_40F176
cmp     eax, 0FAh
jz      short loc_40F183
jmp     loc_40F191

loc_40F138:
cmp     eax, 64h ; 'd'
jz      short loc_40F166
jmp     short loc_40F191

loc_40F13F:
cmp     eax, 1Eh
jb      short loc_40F14D
jbe     short loc_40F15F
cmp     eax, 32h ; '2'
jz      short loc_40F152
jmp     short loc_40F191

loc_40F14D:
cmp     eax, 14h
jnz     short loc_40F191

loc_40F152:
xor     ebx, ebx

loc_40F154:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319
jmp     short loc_40F191

loc_40F15F:
mov     ebx, 2
jmp     short loc_40F154

loc_40F166:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     short loc_40F15F

loc_40F176:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     short loc_40F152

loc_40F183:
mov     ebx, 3
mov     edx, ebp
mov     eax, ecx
call    sub_40F300

loc_40F191:
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+9], 1Dh
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     esi, [eax+10h]
cmp     esi, 1
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
mov     ebx, esi
jmp     loc_40F0F8

loc_40F1BF:             ; jumptable 0040F09F case 3
cmp     ds:dword_560BEC, 19h
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     byte ptr [ecx+0ACh], 2
mov     word ptr [ebp+2], 0

loc_40F1D9:
mov     ebx, 3
jmp     loc_40F0F8

loc_40F1E3:             ; jumptable 0040F09F case 4
cmp     byte ptr [ecx+0A4h], 0Fh
jnz     def_40F09F      ; jumptable 0040F09F default case, case 7
mov     word ptr [ebp+2], 0Fh
jmp     loc_40F101

loc_40F1FB:             ; jumptable 0040F09F case 5
mov     byte ptr [ecx+0ADh], 0FFh
mov     eax, ds:dword_560BEC
cmp     eax, 6Eh ; 'n'
jb      short loc_40F21A
jbe     short loc_40F236
cmp     eax, 82h
jz      short loc_40F1D9
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F21A:
cmp     eax, 5Fh ; '_'

loc_40F21D:             ; jumptable 0040F09F default case, case 7
jnz     def_40F09F
mov     ebx, 1

loc_40F228:
mov     edx, ebp
mov     eax, ecx
call    sub_40F319
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F236:
mov     ebx, 4
mov     edx, ebp
mov     eax, ecx
call    sub_40F300
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F249:             ; jumptable 0040F09F case 6
mov     eax, ds:dword_560BEC
cmp     eax, 0A0h
jb      short loc_40F270
jbe     short loc_40F277
cmp     eax, 0C6h
jb      def_40F09F      ; jumptable 0040F09F default case, case 7
jbe     short loc_40F27E
cmp     eax, 0F0h
jz      short loc_40F236
jmp     def_40F09F      ; jumptable 0040F09F default case, case 7

loc_40F270:
cmp     eax, 91h
jmp     short loc_40F21D

loc_40F277:
mov     ebx, 3
jmp     short loc_40F228

loc_40F27E:
mov     ebx, 1
jmp     loc_40F0F8

loc_40F288:
mov     eax, ecx
call    sub_4DEADD

loc_40F28F:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F050 endp




sub_40F299 proc near
push    ebx
push    ecx
push    esi
mov     ecx, eax
mov     esi, edx
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [esi+2], 0
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40F300
xor     ebx, ebx
mov     edx, esi
mov     eax, ecx
call    sub_40F319
inc     byte ptr [ecx+8]
mov     byte ptr [ecx+9], 0
pop     esi
pop     ecx
pop     ebx
retn
sub_40F299 endp




sub_40F300 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D114[ebx*4]
mov     [edx+4], eax
retn
sub_40F300 endp




sub_40F319 proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D128[ebx*4]
mov     [edx+8], eax
retn
sub_40F319 endp




sub_40F332 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 3Fh ; '?'
jb      short loc_40F357
jbe     short loc_40F35A
cmp     al, 7Fh
jnz     short loc_40F357
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40F35A

loc_40F357:
inc     byte ptr [esi+0Eh]

loc_40F35A:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40F39C
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40F39C:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 3Fh ; '?'
jb      short loc_40F3BF
jbe     short loc_40F3C2
cmp     al, 7Fh
jnz     short loc_40F3BF
mov     byte ptr [esi+11h], 0
jmp     short loc_40F3C2

loc_40F3BF:
inc     byte ptr [esi+11h]

loc_40F3C2:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40F404
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40F404:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40F332 endp




sub_40F40F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     ecx, ecx
mov     cl, [eax+8]
call    ds:funcs_40F41A[ecx*4]
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
xor     eax, eax
call    sub_4EE106
mov     ecx, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, ecx
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F40F endp




sub_40F47A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
add     eax, 640h
or      byte ptr [ecx], 2
mov     word ptr [eax], 2
mov     dx, [ecx+56h]
mov     [eax+0Ah], dx
mov     word ptr [ecx+54h], 0
mov     word ptr [ecx+58h], 0
mov     word ptr [ecx+44h], 0
mov     word ptr [ecx+48h], 0
mov     word ptr [ecx+6Eh], 0
mov     ax, [ecx+6Eh]
mov     [ecx+0B0h], ax
mov     [ecx+0B2h], ax
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+10h], offset unk_50D138
mov     byte ptr [ecx+9], 0
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_40F47A endp




sub_40F505 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ebp, eax
lea     edx, [eax+640h]
mov     [esp+1Ch+var_1C], edx
mov     dl, [eax+0ACh]
mov     [eax+0ADh], dl
lea     edi, [ebp+2Ch]
lea     esi, [ebp+14h]
movsd
movsd
lea     edi, [ebp+34h]
lea     esi, [ebp+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ebp+5Ch]
lea     esi, [ebp+54h]
movsd
movsd
mov     edx, [esp+1Ch+var_1C]
test    byte ptr [edx], 2
jz      short loc_40F54E
mov     eax, ebp
call    sub_40F7F8

loc_40F54E:
xor     edx, edx
mov     dl, [ebp+9]
mov     eax, ebp
call    ds:funcs_40F555[edx*4]
mov     dl, [ebp+0ADh]
cmp     dl, [ebp+0ACh]
jz      short loc_40F57D
xor     edx, edx
mov     dl, [ebp+0ACh]
xor     ebx, ebx
mov     eax, ebp
call    sub_4DE96B
jmp     short loc_40F584

loc_40F57D:
mov     eax, ebp
call    sub_4DEADD

loc_40F584:
test    byte ptr [ebp+0], 2
jz      short loc_40F59D
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, ebp
call    sub_4ED88B

loc_40F59D:
mov     edx, [esp+1Ch+var_1C]
test    byte ptr [edx], 4
jnz     short loc_40F5B8
xor     ecx, ecx
mov     ebx, 0FFFFFFFFh
mov     edx, 1
mov     eax, ebp
call    sub_432697

loc_40F5B8:
add     esp, 4
jmp     loc_40F745
sub_40F505 endp



; Attributes: thunk

sub_40F5C0 proc near
jmp     sub_4DE336
sub_40F5C0 endp




sub_40F5C5 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_40F5CB[edx*4]
pop     edx
retn
sub_40F5C5 endp




sub_40F5D4 proc near
push    ecx
push    edx
mov     edx, eax
lea     ecx, [eax+640h]
mov     byte ptr [eax+0ACh], 0
call    rand_
and     eax, 0Fh
mov     al, ds:byte_50D164[eax]
xor     ah, ah
mov     [ecx+8], ax
inc     byte ptr [edx+0Ah]
pop     edx
pop     ecx
retn
sub_40F5D4 endp




sub_40F5FF proc near
push    ebx
push    edx
lea     edx, [eax+640h]
mov     bx, [edx+8]
dec     bx
mov     [edx+8], bx
jnz     short loc_40F61D
mov     byte ptr [eax+0ACh], 9
inc     byte ptr [eax+0Ah]

loc_40F61D:
pop     edx
pop     ebx
retn
sub_40F5FF endp




sub_40F620 proc near
cmp     byte ptr [eax+0A7h], 0
jge     short locret_40F62D
mov     byte ptr [eax+0Ah], 0

locret_40F62D:
retn
sub_40F620 endp




sub_40F62E proc near
push    edx
lea     edx, [eax+640h]
mov     dl, [edx+3]
and     edx, 0FFh
call    ds:funcs_40F63E[edx*4]
pop     edx
retn
sub_40F62E endp




sub_40F647 proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     esi, eax
lea     edi, [eax+640h]
inc     byte ptr [edi+3]
mov     ax, [esi+56h]
mov     [edi+4], ax
mov     al, [esi+0ACh]
mov     [edi+2], al
mov     byte ptr [esi+0ACh], 0
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ebp, offset byte_5F8364
add     ebp, 14h
mov     eax, esi
add     eax, 14h
mov     [esp+1Ch+var_1C], eax
mov     ecx, 800h
mov     edx, ebp
call    sub_4DE552
test    eax, eax
jge     short loc_40F6B2
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552
neg     eax
jmp     short loc_40F6C7

loc_40F6B2:
mov     ebx, [esi+54h]
sar     ebx, 10h
mov     ecx, 800h
mov     edx, ebp
mov     eax, [esp+1Ch+var_1C]
call    sub_4DE552

loc_40F6C7:
sar     eax, 3
mov     [edi+6], ax
xor     ecx, ecx
mov     cl, [esi+0Ch]
lea     eax, [esi+14h]
xor     ebx, ebx
xor     edx, edx
call    sub_4A62D4
jmp     loc_40F5B8
sub_40F647 endp




sub_40F6E4 proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
test    byte ptr ds:dword_55BD7C+2, 20h
jz      short loc_40F731
mov     byte ptr [esi+0ACh], 9
inc     byte ptr [edi+3]

loc_40F731:
mov     dh, [ebp+0]
test    dh, dh
jnz     short loc_40F745
and     byte ptr [edi], 0FBh
mov     byte ptr [edi+3], 3
mov     [esi+0ACh], dh

loc_40F745:
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F6E4 endp




sub_40F74C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     esi, eax
lea     edi, [eax+640h]
mov     ebp, offset dword_77E760
mov     ecx, [edi+4]
sar     ecx, 10h
mov     ebx, [eax+54h]
sar     ebx, 10h
mov     edx, offset byte_5F8364
add     edx, 14h
add     eax, 14h
call    sub_4DE552
add     ax, [esi+56h]
and     ah, 0Fh
mov     [esi+56h], ax
cmp     byte ptr [esi+0A7h], 0
jge     short loc_40F731
mov     byte ptr [esi+0ACh], 0
dec     byte ptr [edi+3]
jmp     short loc_40F731
sub_40F74C endp




sub_40F79B proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
lea     esi, [eax+640h]
mov     ebx, [esi+4]
sar     ebx, 10h
mov     edx, [eax+54h]
sar     edx, 10h
mov     eax, [esi+2]
sar     eax, 10h
call    sub_4DE5F4
mov     edx, eax
test    ax, ax
jz      short loc_40F7D3
mov     eax, 4Eh ; 'N'
call    sub_47E888
test    eax, eax
jz      short loc_40F7E8

loc_40F7D3:
mov     al, [esi+2]
mov     [ecx+0ACh], al
or      byte ptr [esi], 2
mov     byte ptr [ecx+9], 1
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40F7E8:
add     dx, [ecx+56h]
and     dh, 0Fh
mov     [ecx+56h], dx
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F79B endp




sub_40F7F8 proc near
push    ecx
push    edx
mov     edx, eax
add     eax, 640h
mov     ecx, ds:dword_5F84E8
cmp     edx, ecx
jnz     short loc_40F821
mov     byte ptr [ecx+9], 1
mov     byte ptr [eax+3], 0
mov     dl, [eax]
or      dl, 4
mov     [eax], dl
mov     dh, dl
and     dh, 0FDh
mov     [eax], dh

loc_40F821:
pop     edx
pop     ecx
retn
sub_40F7F8 endp




sub_40F824 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590E4, dx
mov     eax, ds:dword_5590E0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_40F860:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F824 endp




sub_40F86C proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590DC, dx
mov     eax, ds:dword_5590D8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_40F860
sub_40F86C endp




sub_40F8AA proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590E0
test    ecx, ecx
jz      loc_40F950
cmp     ds:dword_5590D8, 0
jz      loc_40F950
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_40F90C
jge     short loc_40F8E4
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40F900

loc_40F8E4:
inc     ds:word_5590E4
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590E0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40F90C
add     eax, 4

loc_40F900:
mov     ds:dword_5590E0, eax
mov     eax, edx
call    sub_40F824

loc_40F90C:
mov     eax, ds:dword_5590D8
mov     di, [eax+2]
test    di, di
jz      short loc_40F950
jge     short loc_40F928
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_40F944

loc_40F928:
inc     ds:word_5590DC
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590D8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_40F950
add     eax, 4

loc_40F944:
mov     ds:dword_5590D8, eax
mov     eax, edx
call    sub_40F86C

loc_40F950:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_40F8AA endp




sub_40F955 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_5590EC
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40F9AF
cmp     bl, ds:byte_560BE4
jnz     short loc_40F9AF
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_40F9AF
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_40F9AF
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D2C0[eax*4]
mov     ds:dword_5590E0, eax
mov     eax, edx
call    sub_40F824
add     ds:dword_5590EC, 6

loc_40F9AF:
mov     eax, ds:dword_5590E8
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_40F9F6
cmp     bl, [ecx+8]
jnz     short loc_40F9F6
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_40F9F6
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_40F9F6
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D2F4[eax*4]
mov     ds:dword_5590D8, eax
mov     eax, edx
call    sub_40F86C
add     ds:dword_5590E8, 6

loc_40F9F6:
mov     eax, edx
call    sub_40F8AA
pop     edx
pop     ecx
pop     ebx
retn
sub_40F955 endp




sub_40FA01 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_5590EC, offset unk_50D330
mov     ds:dword_5590E8, offset unk_50D384
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_40FA01 endp




sub_40FA3A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA56
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA56:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA3A endp




sub_40FA5A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA76
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA76:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA5A endp




sub_40FA7A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FA96
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FA96:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA7A endp




sub_40FA9A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAB6
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAB6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FA9A endp




sub_40FABA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAD6
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAD6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FABA endp




sub_40FADA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FAF6
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FAF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FADA endp




sub_40FAFA proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FB16
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FB16:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FAFA endp




sub_40FB1A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FB36
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FB36:
pop     edx
pop     ecx
pop     ebx
retn
sub_40FB1A endp




sub_40FB3A proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FB43[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_40FB62
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_40FB62:
mov     eax, ecx
call    sub_40F955
pop     edx
pop     ecx
retn
sub_40FB3A endp




sub_40FB6C proc near
push    edx
mov     edx, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_40FB7C
mov     eax, edx
call    sub_40FA01

loc_40FB7C:
mov     eax, edx
call    sub_40FB3A
pop     edx
retn
sub_40FB6C endp




sub_40FB85 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FBA2
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FBA2:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795
pop     edx
pop     ecx
pop     ebx
retn
sub_40FB85 endp




sub_40FBB4 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FBD1
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FBD1:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_40FBB4 endp




sub_40FBDC proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FBE2[edx*4]
pop     edx
retn
sub_40FBDC endp




sub_40FBEB proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+640h]
mov     [esp+1Ch+var_1C], offset dword_560BDC
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_40FC8F
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     word ptr [ebp+0], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD22
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
inc     byte ptr [ecx+8]

loc_40FC8F:
mov     eax, ecx
call    sub_40FBDC
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+8]
cmp     dh, 1
jnz     loc_40FD18
mov     al, [eax+9]
test    al, al
jbe     short loc_40FCB2
cmp     al, dh
jz      short loc_40FCDC
jmp     short loc_40FD0B

loc_40FCB2:
mov     ax, [ebp+0]
cmp     ax, 0Ah
jnz     short loc_40FD0B
mov     eax, [esp+1Ch+var_1C]
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_40FCD5
mov     ebx, 1

loc_40FCCA:
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
jmp     short loc_40FCFD

loc_40FCD5:
mov     ebx, 3
jmp     short loc_40FCCA

loc_40FCDC:
mov     ax, [ebp+0]
cmp     ax, 32h ; '2'
jb      short loc_40FD0B
jbe     short loc_40FCF0
cmp     ax, 3Ch ; '<'
jz      short loc_40FCFD
jmp     short loc_40FD0B

loc_40FCF0:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FD3B
jmp     short loc_40FD0B

loc_40FCFD:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FD22

loc_40FD0B:
mov     edx, ebp
mov     eax, ecx
call    sub_40FD54
inc     word ptr [ebp+0]

loc_40FD18:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FBEB endp




sub_40FD22 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D4F6[ebx*4]
mov     [edx+4], eax
retn
sub_40FD22 endp




sub_40FD3B proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D506[ebx*4]
mov     [edx+8], eax
retn
sub_40FD3B endp




sub_40FD54 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40FD79
jbe     short loc_40FD7C
cmp     al, 7Fh
jnz     short loc_40FD79
mov     byte ptr [edx+0Eh], 0
jmp     short loc_40FD7C

loc_40FD79:
inc     byte ptr [esi+0Eh]

loc_40FD7C:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_40FDBE
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_40FDBE:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_40FDE1
jbe     short loc_40FDE4
cmp     al, 7Fh
jnz     short loc_40FDE1
mov     byte ptr [esi+11h], 0
jmp     short loc_40FDE4

loc_40FDE1:
inc     byte ptr [esi+11h]

loc_40FDE4:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_40FE26
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_40FE26:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_40FD54 endp




sub_40FE31 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     ecx, eax
mov     esi, offset dword_560BDC
mov     al, [eax+0Ah]
test    al, al
ja      short loc_40FE54
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_40FE54:
mov     dl, [esi+8]
cmp     dl, 1
jnz     short loc_40FE7B
cmp     dl, [esi+9]
jnz     short loc_40FE6D
mov     eax, ecx
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn

loc_40FE6D:
mov     eax, ecx
call    sub_4DFC52
mov     eax, ecx
call    sub_4DF795

loc_40FE7B:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FE31 endp




sub_40FE80 proc near
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_40FE86[edx*4]
pop     edx
retn
sub_40FE80 endp




sub_40FE8F proc near

var_1C= dword ptr -1Ch

push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
sub     esp, 4
mov     ecx, eax
lea     ebp, [eax+640h]
mov     [esp+1Ch+var_1C], offset dword_560BDC
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
cmp     byte ptr [ecx+8], 0
jnz     short loc_40FF33
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 0
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
mov     word ptr [ebp+0], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFE1
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA
inc     byte ptr [ecx+8]

loc_40FF33:
mov     eax, ecx
call    sub_40FE80
mov     eax, [esp+1Ch+var_1C]
mov     dh, [eax+8]
cmp     dh, 1
jnz     loc_40FFD7
mov     al, [eax+9]
test    al, al
jbe     short loc_40FF59
cmp     al, dh
jz      short loc_40FF8F
jmp     loc_40FFCA

loc_40FF59:
mov     ax, [ebp+0]
cmp     ax, 28h ; '('
jb      loc_40FFCA
jbe     short loc_40FF71
cmp     ax, 78h ; 'x'

loc_40FF6D:
jz      short loc_40FFBF
jmp     short loc_40FFCA

loc_40FF71:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_40FFE1
jmp     short loc_40FFCA

loc_40FF8F:
mov     ax, [ebp+0]
cmp     ax, 0AAh
jb      short loc_40FFCA
jbe     short loc_40FFA1
cmp     ax, 0DCh
jmp     short loc_40FF6D

loc_40FFA1:
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_41002C
mov     ebx, 1
mov     edx, ebp
mov     eax, ecx
call    sub_410013
jmp     short loc_40FFCA

loc_40FFBF:
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_40FFFA

loc_40FFCA:
mov     edx, ebp
mov     eax, ecx
call    sub_410045
inc     word ptr [ebp+0]

loc_40FFD7:
add     esp, 4
pop     ebp
pop     edi
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_40FE8F endp




sub_40FFE1 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D57B[ebx*4]
mov     [edx+4], eax
retn
sub_40FFE1 endp




sub_40FFFA proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D58B[ebx*4]
mov     [edx+8], eax
retn
sub_40FFFA endp




sub_410013 proc near
mov     byte ptr [edx+0Eh], 0
mov     al, [edx+0Eh]
mov     [edx+0Ch], al
mov     byte ptr [edx+0Dh], 0FFh
mov     eax, ds:off_50D583[ebx*4]
mov     [edx+4], eax
retn
sub_410013 endp




sub_41002C proc near
mov     byte ptr [edx+11h], 0
mov     al, [edx+11h]
mov     [edx+0Fh], al
mov     byte ptr [edx+10h], 0FFh
mov     eax, ds:off_50D593[ebx*4]
mov     [edx+8], eax
retn
sub_41002C endp




sub_410045 proc near
push    ebx
push    ecx
push    esi
push    edi
mov     edi, eax
mov     esi, edx
mov     eax, [edx+0Bh]
sar     eax, 18h
mov     ecx, [edx+4]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_41006A
jbe     short loc_41006D
cmp     al, 7Fh
jnz     short loc_41006A
mov     byte ptr [edx+0Eh], 0
jmp     short loc_41006D

loc_41006A:
inc     byte ptr [esi+0Eh]

loc_41006D:
mov     eax, [esi+0Bh]
sar     eax, 18h
mov     ecx, [esi+4]
mov     al, [ecx+eax]
mov     [esi+0Ch], al
cmp     al, [esi+0Dh]
jz      short loc_4100AF
mov     eax, [esi+9]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     ecx, [edi+88h]
mov     ebx, eax
mov     edx, 110010h
mov     eax, ecx
call    sub_4EE044

loc_4100AF:
mov     al, [esi+0Ch]
mov     [esi+0Dh], al
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax+1]
cmp     al, 7Eh ; '~'
jb      short loc_4100D2
jbe     short loc_4100D5
cmp     al, 7Fh
jnz     short loc_4100D2
mov     byte ptr [esi+11h], 0
jmp     short loc_4100D5

loc_4100D2:
inc     byte ptr [esi+11h]

loc_4100D5:
mov     eax, [esi+0Eh]
sar     eax, 18h
mov     ecx, [esi+8]
mov     al, [ecx+eax]
mov     [esi+0Fh], al
cmp     al, [esi+10h]
jz      short loc_410117
mov     eax, [esi+0Ch]
sar     eax, 18h
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     edi, [edi+88h]
mov     ebx, eax
mov     edx, 130012h
mov     eax, edi
call    sub_4EE044

loc_410117:
mov     al, [esi+0Fh]
mov     [esi+10h], al
pop     edi
pop     esi
pop     ecx
pop     ebx
retn
sub_410045 endp




sub_410122 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590FC, dx
mov     eax, ds:dword_5590F8
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_41015E:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410122 endp




sub_41016A proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_5590F4, dx
mov     eax, ds:dword_5590F0
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_41015E
sub_41016A endp




sub_4101A8 proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_5590F8
test    ecx, ecx
jz      loc_41024E
cmp     ds:dword_5590F0, 0
jz      loc_41024E
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41020A
jge     short loc_4101E2
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_4101FE

loc_4101E2:
inc     ds:word_5590FC
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_5590F8+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41020A
add     eax, 4

loc_4101FE:
mov     ds:dword_5590F8, eax
mov     eax, edx
call    sub_410122

loc_41020A:
mov     eax, ds:dword_5590F0
mov     di, [eax+2]
test    di, di
jz      short loc_41024E
jge     short loc_410226
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410242

loc_410226:
inc     ds:word_5590F4
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_5590F0+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41024E
add     eax, 4

loc_410242:
mov     ds:dword_5590F0, eax
mov     eax, edx
call    sub_41016A

loc_41024E:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4101A8 endp




sub_410253 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_559104
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4102AD
cmp     bl, ds:byte_560BE4
jnz     short loc_4102AD
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_4102AD
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_4102AD
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D5F8[eax*4]
mov     ds:dword_5590F8, eax
mov     eax, edx
call    sub_410122
add     ds:dword_559104, 6

loc_4102AD:
mov     eax, ds:dword_559100
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4102F4
cmp     bl, [ecx+8]
jnz     short loc_4102F4
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_4102F4
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_4102F4
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D608[eax*4]
mov     ds:dword_5590F0, eax
mov     eax, edx
call    sub_41016A
add     ds:dword_559100, 6

loc_4102F4:
mov     eax, edx
call    sub_4101A8
pop     edx
pop     ecx
pop     ebx
retn
sub_410253 endp




sub_4102FF proc near
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
cmp     byte ptr ds:dword_560BDC+1, 48h ; 'H'
jnz     short loc_410332
mov     ds:dword_559104, offset unk_50D618
mov     ds:dword_559100, offset unk_50D636
jmp     short loc_410346

loc_410332:
mov     ds:dword_559104, offset unk_50D678
mov     ds:dword_559100, offset unk_50D68A

loc_410346:
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_4102FF endp




sub_410360 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41037C
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41037C:
pop     edx
pop     ecx
pop     ebx
retn
sub_410360 endp




sub_410380 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41039D
xor     ebx, ebx
mov     edx, 2
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_41039D:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 3Dh ; '='
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410380 endp




sub_4103B2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4103CE
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4103CE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103B2 endp




sub_4103D2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4103EE
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4103EE:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103D2 endp




sub_4103F2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_41040E
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_41040E:
pop     edx
pop     ecx
pop     ebx
retn
sub_4103F2 endp

jpt_410442 dd offset loc_410449 ; jump table for switch statement
dd offset def_410442
dd offset loc_410462
dd offset loc_410481
dd offset loc_410497
dd offset loc_4104AF
dd offset def_410442



sub_41042E proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 6           ; switch 7 cases
ja      def_410442      ; jumptable 00410442 default case, cases 1,6
xor     edx, edx
mov     dl, al
jmp     jpt_410442[edx*4] ; switch jump

loc_410449:             ; jumptable 00410442 case 0
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
mov     byte ptr [ecx+0Ch], 50h ; 'P'
pop     edx
pop     ecx
pop     ebx
retn

loc_410462:             ; jumptable 00410442 case 2
add     dword ptr [ecx+1Ch], 3AEEh
add     dword ptr [ecx+20h], 39DCCh
mov     al, [ecx+0Ch]
dec     al
mov     [ecx+0Ch], al
jnz     short def_410442 ; jumptable 00410442 default case, cases 1,6

loc_41047A:
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410481:             ; jumptable 00410442 case 3
xor     ebx, ebx
mov     edx, 8
mov     eax, ecx
call    sub_4DE96B
sub     word ptr [ecx+56h], 400h
jmp     short loc_41047A

loc_410497:             ; jumptable 00410442 case 4
mov     edx, [ecx+98h]
cmp     byte ptr [edx], 11h
jnz     short def_410442 ; jumptable 00410442 default case, cases 1,6
inc     al
mov     [ecx+0Ah], al
mov     byte ptr [ecx+0Ch], 16h
pop     edx
pop     ecx
pop     ebx
retn

loc_4104AF:             ; jumptable 00410442 case 5
mov     ah, [ecx+0Ch]
dec     ah
mov     [ecx+0Ch], ah
jnz     short loc_4104BC
inc     byte ptr [ecx+0Ah]

loc_4104BC:
sub     dword ptr [ecx+24h], 32000h

def_410442:             ; jumptable 00410442 default case, cases 1,6
pop     edx
pop     ecx
pop     ebx
retn
sub_41042E endp




sub_4104C7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4104E3
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4104E3:
pop     edx
pop     ecx
pop     ebx
retn
sub_4104C7 endp




sub_4104E7 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4104F0[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_41050F
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_41050F:
mov     eax, ecx
call    sub_410253
pop     edx
pop     ecx
retn
sub_4104E7 endp




sub_410519 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_41052C
mov     eax, esi
call    sub_4102FF

loc_41052C:
mov     eax, esi
call    sub_4104E7
mov     dl, [esi+9]
test    dl, dl
jz      short loc_410552
cmp     dl, 5
jz      short loc_410552
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_410552:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410519 endp




sub_410557 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_559114, dx
mov     eax, ds:dword_559110
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 110010h

loc_410593:
mov     eax, esi
call    sub_4EE044
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410557 endp




sub_41059F proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     ds:word_55910C, dx
mov     eax, ds:dword_559108
mov     al, [eax]
and     eax, 0FFh
mov     ecx, 5
mov     ebx, 37h ; '7'
mov     edx, 33h ; '3'
call    sub_4EE106
mov     esi, [esi+88h]
mov     ebx, eax
mov     edx, 130012h
jmp     short loc_410593
sub_41059F endp




sub_4105DD proc near
push    ebx
push    ecx
push    edx
push    edi
mov     edx, eax
mov     ecx, ds:dword_559110
test    ecx, ecx
jz      loc_410683
cmp     ds:dword_559108, 0
jz      loc_410683
mov     eax, ecx
mov     bx, [ecx+2]
test    bx, bx
jz      short loc_41063F
jge     short loc_410617
mov     ecx, [ecx]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410633

loc_410617:
inc     ds:word_559114
mov     ecx, [ecx]
sar     ecx, 10h
mov     ebx, ds:dword_559110+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_41063F
add     eax, 4

loc_410633:
mov     ds:dword_559110, eax
mov     eax, edx
call    sub_410557

loc_41063F:
mov     eax, ds:dword_559108
mov     di, [eax+2]
test    di, di
jz      short loc_410683
jge     short loc_41065B
mov     ecx, [eax]
sar     ecx, 10h
shl     ecx, 2
add     eax, ecx
jmp     short loc_410677

loc_41065B:
inc     ds:word_55910C
mov     ecx, [eax]
sar     ecx, 10h
mov     ebx, ds:dword_559108+2
sar     ebx, 10h
cmp     ebx, ecx
jnz     short loc_410683
add     eax, 4

loc_410677:
mov     ds:dword_559108, eax
mov     eax, edx
call    sub_41059F

loc_410683:
pop     edi
pop     edx
pop     ecx
pop     ebx
retn
sub_4105DD endp




sub_410688 proc near
push    ebx
push    ecx
push    edx
mov     edx, eax
mov     ecx, offset dword_560BDC
mov     eax, ds:dword_55911C
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_4106E2
cmp     bl, ds:byte_560BE4
jnz     short loc_4106E2
mov     bl, [eax+1]
cmp     bl, ds:byte_560BE5
jnz     short loc_4106E2
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, ds:dword_560BF8
jnz     short loc_4106E2
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D928[eax*4]
mov     ds:dword_559110, eax
mov     eax, edx
call    sub_410557
add     ds:dword_55911C, 6

loc_4106E2:
mov     eax, ds:dword_559118
mov     bl, [eax]
cmp     bl, 0FFh
jz      short loc_410729
cmp     bl, [ecx+8]
jnz     short loc_410729
mov     bl, [eax+1]
cmp     bl, [ecx+9]
jnz     short loc_410729
xor     ebx, ebx
mov     bx, [eax+2]
cmp     ebx, [ecx+1Ch]
jnz     short loc_410729
mov     ax, [eax+4]
and     eax, 0FFFFh
mov     eax, ds:off_50D97C[eax*4]
mov     ds:dword_559108, eax
mov     eax, edx
call    sub_41059F
add     ds:dword_559118, 6

loc_410729:
mov     eax, edx
call    sub_4105DD

def_410794:             ; jumptable 00410794 default case, cases 1,4
pop     edx
pop     ecx
pop     ebx
retn
sub_410688 endp




sub_410734 proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     ds:dword_55911C, offset unk_50D9F4
mov     ds:dword_559118, offset unk_50DA78
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
retn
sub_410734 endp

db 8Bh, 0C0h
jpt_410794 dd offset loc_41079B ; jump table for switch statement
dd offset def_410794
dd offset loc_4107B0
dd offset loc_4107C8
dd offset def_410794



sub_410783 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 4           ; switch 5 cases
ja      short def_410794 ; jumptable 00410794 default case, cases 1,4
and     eax, 0FFh
jmp     jpt_410794[eax*4] ; switch jump

loc_41079B:             ; jumptable 00410794 case 0
xor     ebx, ebx
mov     edx, 1

loc_4107A2:
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4107B0:             ; jumptable 00410794 case 2
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 0
jnz     def_410794      ; jumptable 00410794 default case, cases 1,4
xor     ebx, ebx
mov     edx, 2
jmp     short loc_4107A2

loc_4107C8:             ; jumptable 00410794 case 3
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 22h ; '"'
jnz     def_410794      ; jumptable 00410794 default case, cases 1,4
mov     ebx, 23h ; '#'
mov     edx, 3
jmp     short loc_4107A2
sub_410783 endp




sub_4107E3 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4107FF
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4107FF:
pop     edx
pop     ecx
pop     ebx
retn
sub_4107E3 endp




sub_410803 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     al, [eax+0Ah]
cmp     al, 1
jb      short loc_410815
jbe     short loc_410829
pop     edx
pop     ecx
pop     ebx
retn

loc_410815:
test    al, al
jnz     short loc_410848
xor     ebx, ebx
mov     edx, 4
mov     eax, ecx
call    sub_4DE96B
jmp     short loc_410845

loc_410829:
mov     eax, [ecx+98h]
cmp     byte ptr [eax], 2Ch ; ','
jnz     short loc_410848
mov     ebx, 23h ; '#'
mov     edx, 3
mov     eax, ecx
call    sub_4DE9BA

loc_410845:
inc     byte ptr [ecx+0Ah]

loc_410848:
pop     edx
pop     ecx
pop     ebx
retn
sub_410803 endp




sub_41084C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410868
xor     ebx, ebx
mov     edx, 5
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410868:
pop     edx
pop     ecx
pop     ebx
retn
sub_41084C endp




sub_41086C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410888
xor     ebx, ebx
mov     edx, 6
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410888:
pop     edx
pop     ecx
pop     ebx
retn
sub_41086C endp




sub_41088C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4108A8
xor     ebx, ebx
mov     edx, 7
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_4108A8:
pop     edx
pop     ecx
pop     ebx
retn
sub_41088C endp




sub_4108AC proc near
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_4108B5[edx*4]
cmp     byte ptr [ecx+0Dh], 0
jnz     short loc_4108D4
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
mov     eax, ecx
call    sub_4DEADD

loc_4108D4:
mov     eax, ecx
call    sub_410688
pop     edx
pop     ecx
retn
sub_4108AC endp




sub_4108DE proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
cmp     byte ptr [eax+8], 0
jnz     short loc_4108F1
mov     eax, esi
call    sub_410734

loc_4108F1:
mov     eax, esi
call    sub_4108AC
mov     dl, [esi+9]
test    dl, dl
jz      short loc_410917
cmp     dl, 5
jz      short loc_410917
xor     ecx, ecx
mov     ebx, 2ABh
mov     edx, 32h ; '2'
mov     eax, esi
call    sub_4ED88B

loc_410917:
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_4108DE endp




sub_41091C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
xor     edx, edx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_41091C endp




sub_410945 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410967
xor     ebx, ebx
mov     edx, 1
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+0Ah]
jmp     short loc_410983

loc_410967:
mov     dl, [ecx+0Ch]
inc     dl
mov     [ecx+0Ch], dl
cmp     dl, 1Eh
jnz     short loc_41097C
mov     byte ptr [ecx+9], 1
mov     byte ptr [ecx+0Ah], 0

loc_41097C:
mov     eax, ecx
call    sub_4DEADD

loc_410983:
lea     edx, [ecx+14h]
lea     eax, [ecx+1Ch]
call    sub_4DD57B
pop     edx
pop     ecx
pop     ebx
retn
sub_410945 endp




sub_410992 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_4109B0
xor     ebx, ebx
mov     edx, 2
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
jmp     short loc_410983

loc_4109B0:
mov     eax, ecx
call    sub_4DEADD
mov     edx, [ecx+98h]
cmp     byte ptr [edx], 47h ; 'G'
jnz     short loc_410983
mov     byte ptr [ecx+9], 0
mov     byte ptr [ecx+0Ah], 0
jmp     short loc_410983
sub_410992 endp




sub_4109CC proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
cmp     byte ptr [ecx+0Ah], 0
jnz     short loc_4109FB
xor     ebx, ebx
mov     edx, 3
mov     eax, ecx
call    sub_4DE96B
mov     byte ptr [ecx+0Ch], 0
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_4109FB:
mov     eax, ecx
call    sub_4DEADD
pop     edx
pop     ecx
pop     ebx
retn
sub_4109CC endp

; START OF FUNCTION CHUNK FOR sub_410A1F

loc_410A06:
cmp     byte ptr [eax+8], 0
jz      sub_41091C
push    edx
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_410A16[edx*4]
pop     edx
retn
; END OF FUNCTION CHUNK FOR sub_410A1F



sub_410A1F proc near

; FUNCTION CHUNK AT 00410A06 SIZE 00000019 BYTES

cmp     byte ptr [eax+3], 0
jz      short loc_410A06
retn
sub_410A1F endp




sub_410A26 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     edx, edx
call    sub_4DD0F8
mov     byte ptr [ecx+0ACh], 0
mov     dword ptr [ecx+1Ch], 2000000h
mov     dword ptr [ecx+20h], 0E3FF0000h
mov     dword ptr [ecx+24h], 3000000h
xor     edx, edx
mov     dl, [ecx+0ACh]
xor     ebx, ebx
mov     eax, ecx
call    sub_4DE96B
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+103h], 0
mov     byte ptr [ecx+10Bh], 0FFh
mov     dl, [ecx+10Bh]
mov     [ecx+107h], dl
mov     byte ptr [ecx+128h], 0Dh
mov     word ptr [ecx+15Ch], 200h
mov     dx, [ecx+15Ch]
mov     [ecx+15Ah], dx
mov     [ecx+158h], dx
mov     word ptr [ecx+15Eh], 14A5h
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_410A26 endp




sub_410AB5 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410ACE
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx

loc_410AC6:
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410ACE:
pop     edx
pop     ecx
pop     ebx
retn
sub_410AB5 endp




sub_410AD2 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 10h
jmp     short loc_410AC6
sub_410AD2 endp




sub_410AE0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 12h
jnz     short loc_410B02
xor     ebx, ebx
mov     edx, 11h
mov     eax, esi
call    sub_4DE96B
inc     byte ptr [esi+0Ah]

loc_410B02:
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
mov     eax, esi
call    sub_4DD43B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410AE0 endp




sub_410B17 proc near
push    ebx
push    ecx
push    edx
xor     ecx, ecx
xor     ebx, ebx
mov     edx, 17h
call    sub_4DD43B
pop     edx
pop     ecx
pop     ebx
retn
sub_410B17 endp




sub_410B2C proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_410B32[edx*4]
pop     edx
retn
sub_410B2C endp




sub_410B3B proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
xor     ebx, ebx
mov     edx, 12h
jmp     loc_410AC6
sub_410B3B endp




sub_410B4C proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     eax, [eax+98h]
cmp     byte ptr [eax], 77h ; 'w'
jnz     short loc_410B6D
xor     ebx, ebx
mov     edx, 14h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410B6D:
pop     edx
pop     ecx
pop     ebx
sub_410B4C endp

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_41]



sub_410B71 proc near
push    edx
xor     edx, edx
mov     dl, [eax+0Ah]
call    ds:funcs_410B77[edx*4]
pop     edx
retn
sub_410B71 endp




sub_410B80 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410B9C
xor     ebx, ebx
mov     edx, 13h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410B9C:
pop     edx
pop     ecx
pop     ebx
retn
sub_410B80 endp




sub_410BA0 proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
xor     edx, edx
mov     dl, [eax+9]
call    ds:funcs_410BAB[edx*4]
lea     edx, [esi+14h]
lea     eax, [esi+1Ch]
call    sub_4DD57B
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 190h
mov     eax, esi
call    sub_4ED88B
mov     eax, esi
call    sub_4DEADD
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410BA0 endp




sub_410BDC proc near
cmp     byte ptr [eax+8], 0
jnz     short sub_410BA0
jmp     sub_410A26
sub_410BDC endp




sub_410BE7 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
mov     ah, [eax]
or      ah, 2
mov     [ecx], ah
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+78h], 0
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 42100200h
mov     byte ptr [ecx+103h], 0
mov     byte ptr [ecx+10Bh], 0FFh
mov     al, [ecx+10Bh]
mov     [ecx+107h], al
mov     byte ptr [ecx+128h], 0Dh
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+8]
pop     edx
pop     ecx
pop     ebx
retn
sub_410BE7 endp




sub_410C4A proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410C67
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410C67:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410C4A endp




sub_410C79 proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410C99
xor     ebx, ebx
mov     edx, 15h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410C99:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410C79 endp




sub_410CAB proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410CCB
xor     ebx, ebx
mov     edx, 16h
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]
pop     edx
pop     ecx
pop     ebx
retn

loc_410CCB:
mov     eax, ecx
call    sub_4DEB53
mov     eax, ecx
call    sub_4DF7CB
pop     edx
pop     ecx
pop     ebx
retn
sub_410CAB endp




sub_410CDD proc near
push    ebx
push    ecx
push    edx
mov     ecx, eax
cmp     byte ptr [eax+0Ah], 0
jnz     short loc_410CF6
xor     ebx, ebx
xor     edx, edx
mov     eax, ecx
call    sub_4DE96B
inc     byte ptr [ecx+0Ah]

loc_410CF6:
pop     edx
pop     ecx
pop     ebx
retn
sub_410CDD endp




sub_410CFA proc near
push    ebx
push    ecx
push    edx
push    esi
mov     esi, eax
lea     edx, [eax+14h]
add     eax, 1Ch
call    sub_4DD57B
xor     edx, edx
mov     dl, [esi+9]
mov     eax, esi
call    ds:funcs_410D12[edx*4]
xor     ecx, ecx
mov     ebx, 200h
mov     edx, 190h
mov     eax, esi
call    sub_4ED88B
pop     esi
pop     edx
pop     ecx
pop     ebx
retn
sub_410CFA endp




sub_410D31 proc near
cmp     byte ptr [eax+8], 0
jnz     short sub_410CFA
jmp     sub_410BE7
sub_410D31 endp




sub_410D3C proc near
push    ebx
push    ecx
push    edx
push    esi
push    edi
push    ebp
mov     ecx, eax
lea     ebp, [eax+640h]
lea     edi, [ecx+2Ch]
lea     esi, [ecx+14h]
movsd
movsd
lea     edi, [ecx+34h]
lea     esi, [ecx+1Ch]
movsd
movsd
movsd
movsd
lea     edi, [ecx+5Ch]
lea     esi, [ecx+54h]
movsd
movsd
mov     al, [eax+0ACh]
mov     [ecx+0ADh], al
mov     al, [ecx+8]
cmp     al, 1
jb      short loc_410D86
jbe     short loc_410DF0
cmp     al, 2
jz      loc_410E21
jmp     loc_410E85

loc_410D86:
test    al, al
jnz     loc_410E85
or      byte ptr [ecx], 2
xor     edx, edx
mov     eax, ecx
call    sub_4DD0F8
mov     dword ptr [ecx+158h], 2000200h
mov     dword ptr [ecx+15Ch], 200h
mov     word ptr [ecx+15Eh], 4210h
mov     dword ptr [ecx+78h], 0
mov     byte ptr [ecx+0ACh], 1
mov     byte ptr [ecx+0ADh], 0FFh
mov     word ptr [ebp+2], 0
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
xor     ebx, ebx
mov     edx, ebp
mov     eax, ecx
call    sub_410ED6

loc_410DE8:
inc     byte ptr [ecx+8]
jmp     loc_410E85

loc_410DF0:
mov     byte ptr [ecx+0ADh], 0FFh
cmp     ds:byte_560BE5, 3
jnz     loc_410E85
cmp     ds:dword_560BEC, 0Ah
jnz     loc_410E85
mov     ebx, 2
mov     edx, ebp
mov     eax, ecx
call    sub_410EBD
jmp     short loc_410DE8

