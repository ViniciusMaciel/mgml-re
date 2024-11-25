sub_50226A      proc near               ; CODE XREF: sub_501CCE+3F1↑p
                                        ; sub_501CCE+41B↑p ...
                push    edx
                mov     edx, eax

loc_50226D:                             ; CODE XREF: sub_50226A+14↓j
                cmp     byte ptr [edx], 0
                jz      short loc_502280
                xor     eax, eax
                mov     al, [edx]
                call    toupper_
                mov     [edx], al
                inc     edx
                jmp     short loc_50226D
; ---------------------------------------------------------------------------

loc_502280:                             ; CODE XREF: sub_50226A+6↑j
                pop     edx
                retn
sub_50226A      endp