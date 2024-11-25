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