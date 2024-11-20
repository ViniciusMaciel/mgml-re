;megaman71.asm
; int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
_WinMain@16 proc near

var_C4= byte ptr -0C4h
WndClass= WNDCLASSA ptr -74h
Msg= tagMSG ptr -4Ch
Rect= tagRECT ptr -30h
var_20= qword ptr -20h
var_18= dword ptr -18h
var_14= dword ptr -14h
hInstance= dword ptr  4
hPrevInstance= dword ptr  8
lpCmdLine= dword ptr  0Ch
nShowCmd= dword ptr  10h

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


;megaman100.asm
sub_4F0927 proc near

var_60= byte ptr -60h

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