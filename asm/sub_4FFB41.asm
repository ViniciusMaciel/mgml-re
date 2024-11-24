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















; doubtful name















mov     eax, ds:dword_557C30















add     eax, 3















and     al, 0FCh















sub     esp, eax















mov     eax, esp















jmp     short loc_4FFBB3















; ---------------------------------------------------------------------------































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















; ---------------------------------------------------------------------------















mov     esp, ebp















pop     ebp















pop     edx















pop     ecx















pop     ebx















retn















sub_4FFB41      endp







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







sub_5022FA      proc near               ; CODE XREF: sub_4FFB41+5B↑p







; sub_5022CB+19↑p ...















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







; ---------------------------------------------------------------------------















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







; ---------------------------------------------------------------------------















loc_4FAAC6:                             ; CODE XREF: sub_4FA9A8+108↑j







; sub_4FA9A8+137↓j







mov     dl, [eax]







inc     dl







and     edx, 0FFh







test    ds:_IsTable[edx], 2







jnz     short loc_4FAAE1







cmp     byte ptr [eax], 0







jz      short loc_4FAAE1







inc     eax







jmp     short loc_4FAAC6







; ---------------------------------------------------------------------------















loc_4FAAE1:                             ; CODE XREF: sub_4FA9A8+119↑j







; sub_4FA9A8+11C↑j ...







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







; ---------------------------------------------------------------------------















loc_4FAB34:                             ; CODE XREF: sub_4FA9A8+16E↑j







; sub_4FA9A8+1A8↓j







mov     dl, [eax]







inc     dl







and     edx, 0FFh







test    ds:_IsTable[edx], 2







jnz     short loc_4FAB52







cmp     word ptr [eax], 0







jz      short loc_4FAB52







add     eax, 2







jmp     short loc_4FAB34







; ---------------------------------------------------------------------------















loc_4FAB52:                             ; CODE XREF: sub_4FA9A8+185↑j







; sub_4FA9A8+18A↑j ...







mov     dl, [eax]







inc     dl







and     edx, 0FFh







test    ds:_IsTable[edx], 2







jz      short loc_4FAB71







jmp     short loc_4FAB2F







; ---------------------------------------------------------------------------















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







sub_50235C      proc near               ; CODE XREF: sub_502330+24↑p















; FUNCTION CHUNK AT AUTO:004FAC25 SIZE 00000042 BYTES















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







sub_5022CB      proc near               ; CODE XREF: AUTO:005022BF↑p







push    eax







cmp     eax, esp







jnb     short loc_5022EA ; __STKOVERFLOW_







; doubtful name







sub     eax, esp







neg     eax







push    esi







push    eax







call    ds:off_551FC4







mov     esi, eax







pop     eax







cmp     eax, [esi]







pop     esi







jbe     short loc_5022EA ; __STKOVERFLOW_







; doubtful name







call    sub_5022FA      ; __GRO







; doubtful name







retn







; ---------------------------------------------------------------------------















loc_5022EA:                             ; CODE XREF: sub_5022CB+3↑j







; sub_5022CB+17↑j







pop     eax             ; __STKOVERFLOW_







; doubtful name







mov     eax, offset aStackOverflow ; "Stack Overflow!\r\n"







mov     edx, 1







call    __fatal_runtime_error_







sub_5022CB      endp







sub_500909      proc near               ; CODE XREF: sub_4FABD3+2E↑p







; StartAddress+86↓p







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



sub_50045B      proc near               ; CODE XREF: sub_4FA9A8+EB↑p



; sub_4FA9A8+160↑p ...



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



sub_5000A0      proc near               ; CODE XREF: sub_4FA9A8+15↑p



; sub_50012F:loc_500141↓p



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



; sub_5000A0+1C↑j



mov     eax, edx



call    __InitThreadData_



mov     eax, edx



pop     edx



pop     ebx



retn



sub_5000A0      endp



sub_500745      proc near               ; DATA XREF: sub_500909+2A↓o







var_14          = dword ptr -14h



var_10          = dword ptr -10h



arg_0           = dword ptr  4



arg_8           = dword ptr  0Ch







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



; ---------------------------------------------------------------------------







loc_500775:                             ; CODE XREF: sub_500745+28↑j



; DATA XREF: AUTO:jpt_50076D↑o



test    byte ptr [edi+21h], 2 ; jumptable 0050076D case -1073741678



jz      short loc_500785



mov     ebx, 8Ah



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_500785:                             ; CODE XREF: sub_500745+34↑j



mov     ebx, 8Bh



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_50078F:                             ; CODE XREF: sub_500745+28↑j



; DATA XREF: AUTO:jpt_50076D↑o



mov     ebx, 82h        ; jumptable 0050076D case -1073741683



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_500799:                             ; CODE XREF: sub_500745+28↑j



; sub_500745+103↓j



; DATA XREF: ...



mov     ebx, 83h        ; jumptable 0050076D case -1073741682



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_5007A3:                             ; CODE XREF: sub_500745+28↑j



; DATA XREF: AUTO:jpt_50076D↑o



mov     ebx, 86h        ; jumptable 0050076D case -1073741681



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_5007AD:                             ; CODE XREF: sub_500745+28↑j



; DATA XREF: AUTO:jpt_50076D↑o



mov     ebx, 84h        ; jumptable 0050076D case -1073741679



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_5007B7:                             ; CODE XREF: sub_500745+28↑j



; DATA XREF: AUTO:jpt_50076D↑o



mov     ebx, 85h        ; jumptable 0050076D case -1073741677



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_5007C1:                             ; CODE XREF: sub_500745+28↑j



; DATA XREF: AUTO:jpt_50076D↑o



mov     eax, [edi+28h]  ; jumptable 0050076D case -1073741680



mov     dx, [eax]



mov     ebx, 81h



cmp     dx, 0FAD9h



jnz     short loc_5007DD



mov     ebx, 88h



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_5007DD:                             ; CODE XREF: sub_500745+8C↑j



cmp     dx, 0F1D9h



jnz     short loc_5007EE



mov     ebx, 8Eh



jmp     loc_500853



; ---------------------------------------------------------------------------







loc_5007EE:                             ; CODE XREF: sub_500745+9D↑j



jnz     short loc_5007F7



mov     ebx, 8Fh



jmp     short loc_500853



; ---------------------------------------------------------------------------







loc_5007F7:                             ; CODE XREF: sub_500745:loc_5007EE↑j



mov     dh, [eax]



cmp     dh, 0DBh



jz      short loc_500803



cmp     dh, 0DFh



jnz     short loc_500813







loc_500803:                             ; CODE XREF: sub_500745+B7↑j



mov     dl, [eax+1]



and     dl, 30h



cmp     dl, 10h



jnz     short loc_500813



mov     ebx, 8Dh







loc_500813:                             ; CODE XREF: sub_500745+BC↑j



; sub_500745+C7↑j



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







loc_50084E:                             ; CODE XREF: sub_500745+D1↑j



; sub_500745+DA↑j



cmp     ebx, 0FFFFFFFFh



jz      short def_50076D ; jumptable 0050076D default case







loc_500853:                             ; CODE XREF: sub_500745+3B↑j



; sub_500745+45↑j ...



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



; ---------------------------------------------------------------------------







def_50076D:                             ; CODE XREF: sub_500745+22↑j



; sub_500745+10C↑j



cmp     ds:dword_558100, 0 ; jumptable 0050076D default case



jz      short loc_5008DE



mov     ebx, 1







loc_50089E:                             ; CODE XREF: sub_500745+197↓j



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



; ---------------------------------------------------------------------------







loc_5008D8:                             ; CODE XREF: sub_500745+165↑j



; sub_500745+18D↑j



inc     ebx



cmp     ebx, 0Ch



jle     short loc_50089E







loc_5008DE:                             ; CODE XREF: sub_500745+124↑j



; sub_500745+131↑j ...



mov     eax, esp



push    eax             ; ExceptionInfo



mov     [esp+18h+var_14], esi



mov     [esp+18h+var_10], edi



call    cs:__imp_UnhandledExceptionFilter



test    eax, eax



jz      short loc_5008FD



push    0FFFFFFFFh      ; uExitCode



call    cs:__imp_ExitProcess



; ---------------------------------------------------------------------------







loc_5008FD:                             ; CODE XREF: sub_500745+12↑j



; sub_500745+1AD↑j



mov     eax, 1







loc_500902:                             ; CODE XREF: sub_500745+146↑j



; sub_500745+191↑j



add     esp, 8



pop     edi



pop     esi



pop     ebx



retn



sub_500745      endp



sub_50012F      proc near               ; CODE XREF: __GetThreadData_+5↓p



; StartAddress+53↓p



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



; ---------------------------------------------------------------------------







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



; ---------------------------------------------------------------------------







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



sub_50293A      proc near               ; CODE XREF: sub_500745+115↑p



fnclex



retn



sub_50293A      endp



sub_502B07      proc near               ; CODE XREF: sub_500745+11C↑p



; raise_+FF↓p



push    ebx



push    ecx



push    edx



mov     ebx, eax







__sigfpe_handler_:



mov     eax, 2



call    __GetSignalFunc_



mov     ecx, eax



cmp     eax, 1



jz      short loc_502B42



cmp     eax, 2



jz      short loc_502B42



cmp     eax, 3



jz      short loc_502B42



mov     edx, 2



mov     eax, edx



call    __SetSignalFunc_



mov     eax, 2



mov     edx, ebx



call    ecx



xor     eax, eax



pop     edx



pop     ecx



pop     ebx



retn



; ---------------------------------------------------------------------------







loc_502B42:                             ; CODE XREF: sub_502B07+14↑j



; sub_502B07+19↑j ...



mov     eax, 0FFFFFFFFh



pop     edx



pop     ecx







signal_:



pop     ebx



retn



sub_502B07      endp