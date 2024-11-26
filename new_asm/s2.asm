; Section 2. (virtual address 00108000)
; Virtual size                  : 00000000 (      0.)
; Section size in file          : 00000C00 (   3072.)
; Offset to raw data for section: 00107200
; Flags C0000040: Data Readable Writable
; Alignment     : default
; ===========================================================================
; Segment type: Externs
; _idata
;
; Imports from GDI32.dll
;
; int (__stdcall *GetDeviceCaps)(HDC hdc, int index)
                extrn __imp_GetDeviceCaps:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+E9↑p
                                        ; WinMain(x,x,x,x)+F8↑p ...
; HGDIOBJ (__stdcall *GetStockObject)(int i)
                extrn __imp_GetStockObject:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+A5↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+A5↑r ...
; int (__stdcall *SetBkMode)(HDC hdc, int mode)
                extrn __imp_SetBkMode:dword
                                        ; CODE XREF: sub_4F860C+34↑p
                                        ; DATA XREF: sub_4F860C+34↑r ...
; COLORREF (__stdcall *SetTextColor)(HDC hdc, COLORREF color)
                extrn __imp_SetTextColor:dword
                                        ; CODE XREF: sub_4F860C+26↑p
                                        ; DATA XREF: sub_4F860C+26↑r ...
; BOOL (__stdcall *TextOutA)(HDC hdc, int x, int y, LPCSTR lpString, int c)
                extrn __imp_TextOutA:dword
                                        ; CODE XREF: sub_4F860C+4B↑p
                                        ; DATA XREF: sub_4F860C+4B↑r ...
;
; Imports from USER32.dll
;
; BOOL (__stdcall *AdjustWindowRect)(LPRECT lpRect, DWORD dwStyle, BOOL bMenu)
                extrn __imp_AdjustWindowRect:dword
                                        ; CODE XREF: sub_4A6A5E+232↑p
                                        ; WinMain(x,x,x,x)+178↑p
                                        ; DATA XREF: ...
; DWORD (__stdcall *CharUpperBuffA)(LPSTR lpsz, DWORD cchLength)
                extrn __imp_CharUpperBuffA:dword
                                        ; CODE XREF: _mbctoupper_+54↑p
                                        ; DATA XREF: _mbctoupper_+54↑r ...
; HWND (__stdcall *CreateWindowExA)(DWORD dwExStyle, LPCSTR lpClassName, LPCSTR lpWindowName, DWORD dwStyle, int X, int Y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, LPVOID lpParam)
                extrn __imp_CreateWindowExA:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+1DE↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+1DE↑r ...
; LRESULT (__stdcall *DefWindowProcA)(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
                extrn __imp_DefWindowProcA:dword
                                        ; CODE XREF: sub_4A6A5E+2F3↑p
                                        ; sub_4F985F+C9↑p
                                        ; DATA XREF: ...
; LRESULT (__stdcall *DispatchMessageA)(const MSG *lpMsg)
                extrn __imp_DispatchMessageA:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+318↑p
                                        ; sub_4F9933+108↑p
                                        ; DATA XREF: ...
; HDC (__stdcall *GetDC)(HWND hWnd)
                extrn __imp_GetDC:dword ; CODE XREF: WinMain(x,x,x,x)+DD↑p
                                        ; sub_4F7BBA+1F↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *GetMessageA)(LPMSG lpMsg, HWND hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax)
                extrn __imp_GetMessageA:dword
                                        ; CODE XREF: sub_4F9933+123↑p
                                        ; DATA XREF: sub_4F9933+123↑r ...
; BOOL (__stdcall *IntersectRect)(LPRECT lprcDst, const RECT *lprcSrc1, const RECT *lprcSrc2)
                extrn __imp_IntersectRect:dword
                                        ; CODE XREF: sub_436FD0+339↑p
                                        ; DATA XREF: sub_436FD0+339↑r ...
; HCURSOR (__stdcall *LoadCursorA)(HINSTANCE hInstance, LPCSTR lpCursorName)
                extrn __imp_LoadCursorA:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+98↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+98↑r ...
; HICON (__stdcall *LoadIconA)(HINSTANCE hInstance, LPCSTR lpIconName)
                extrn __imp_LoadIconA:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+87↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+87↑r ...
; int (__stdcall *MessageBoxA)(HWND hWnd, LPCSTR lpText, LPCSTR lpCaption, UINT uType)
                extrn __imp_MessageBoxA:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+51↑p
                                        ; sub_4F8674+24↑p
                                        ; DATA XREF: ...
; DWORD (__stdcall *MsgWaitForMultipleObjects)(DWORD nCount, const HANDLE *pHandles, BOOL fWaitAll, DWORD dwMilliseconds, DWORD dwWakeMask)
                extrn __imp_MsgWaitForMultipleObjects:dword
                                        ; CODE XREF: sub_4FA8A3+24↑p
                                        ; DATA XREF: sub_4FA8A3+24↑r ...
; BOOL (__stdcall *PeekMessageA)(LPMSG lpMsg, HWND hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax, UINT wRemoveMsg)
                extrn __imp_PeekMessageA:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+2F1↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+2F1↑r ...
; void (__stdcall *PostQuitMessage)(int nExitCode)
                extrn __imp_PostQuitMessage:dword
                                        ; CODE XREF: sub_4A6A5E+2E6↑p
                                        ; sub_4F985F+B0↑p
                                        ; DATA XREF: ...
; ATOM (__stdcall *RegisterClassA)(const WNDCLASSA *lpWndClass)
                extrn __imp_RegisterClassA:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+C1↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+C1↑r ...
; int (__stdcall *ReleaseDC)(HWND hWnd, HDC hDC)
                extrn __imp_ReleaseDC:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+125↑p
                                        ; sub_4F7BBA+74↑p
                                        ; DATA XREF: ...
; HWND (__stdcall *SetFocus)(HWND hWnd)
                extrn __imp_SetFocus:dword
                                        ; CODE XREF: sub_4A6A5E+CE↑p
                                        ; sub_4F985F+58↑p
                                        ; DATA XREF: ...
; LONG (__stdcall *SetWindowLongA)(HWND hWnd, int nIndex, LONG dwNewLong)
                extrn __imp_SetWindowLongA:dword
                                        ; CODE XREF: sub_4F97E5+D↑p
                                        ; sub_4F9933+9D↑p ...
; BOOL (__stdcall *SetWindowPos)(HWND hWnd, HWND hWndInsertAfter, int X, int Y, int cx, int cy, UINT uFlags)
                extrn __imp_SetWindowPos:dword
                                        ; CODE XREF: sub_4A6A5E+27B↑p
                                        ; sub_4F97E5+6A↑p ...
; int (__stdcall *ShowCursor)(BOOL bShow)
                extrn __imp_ShowCursor:dword
                                        ; CODE XREF: sub_4A67C5+17↑p
                                        ; sub_4A67C5+35↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *ShowWindow)(HWND hWnd, int nCmdShow)
                extrn __imp_ShowWindow:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+1ED↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+1ED↑r ...
; BOOL (__stdcall *TranslateMessage)(const MSG *lpMsg)
                extrn __imp_TranslateMessage:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+30C↑p
                                        ; sub_4F9933+FC↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *UpdateWindow)(HWND hWnd)
                extrn __imp_UpdateWindow:dword
                                        ; CODE XREF: WinMain(x,x,x,x)+1FB↑p
                                        ; DATA XREF: WinMain(x,x,x,x)+1FB↑r ...
;
; Imports from KERNEL32.dll
;
; BOOL (__stdcall *CloseHandle)(HANDLE hObject)
                extrn __imp_CloseHandle:dword
                                        ; CODE XREF: sub_4F9C02+56↑p
                                        ; sub_4F9C02+64↑p ...
; HANDLE (__stdcall *CreateEventA)(LPSECURITY_ATTRIBUTES lpEventAttributes, BOOL bManualReset, BOOL bInitialState, LPCSTR lpName)
                extrn __imp_CreateEventA:dword
                                        ; CODE XREF: sub_4F9AD6+43↑p
                                        ; sub_4F9AD6+5F↑p ...
; HANDLE (__stdcall *CreateFileA)(LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
                extrn __imp_CreateFileA:dword
                                        ; CODE XREF: sub_4FE278+13E↑p
                                        ; sub_4FE278+164↑p ...
; HANDLE (__stdcall *CreateThread)(LPSECURITY_ATTRIBUTES lpThreadAttributes, SIZE_T dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, LPVOID lpParameter, DWORD dwCreationFlags, LPDWORD lpThreadId)
                extrn __imp_CreateThread:dword
                                        ; CODE XREF: sub_505744+99↑p
                                        ; DATA XREF: sub_505744+99↑r ...
; void (__stdcall *DeleteCriticalSection)(LPCRITICAL_SECTION lpCriticalSection)
                extrn __imp_DeleteCriticalSection:dword
                                        ; CODE XREF: sub_4FFF1A+E↑p
                                        ; DATA XREF: sub_4FFF1A+E↑r ...
; BOOL (__stdcall *DeleteFileA)(LPCSTR lpFileName)
                extrn __imp_DeleteFileA:dword
                                        ; CODE XREF: sub_5015E0+3↑p
                                        ; DATA XREF: sub_5015E0+3↑r ...
; void (__stdcall *EnterCriticalSection)(LPCRITICAL_SECTION lpCriticalSection)
                extrn __imp_EnterCriticalSection:dword
                                        ; CODE XREF: sub_4FFFCF+4F↑p
                                        ; DATA XREF: sub_4FFFCF+4F↑r ...
; void (__stdcall __noreturn *ExitProcess)(UINT uExitCode)
                extrn __imp_ExitProcess:dword
                                        ; CODE XREF: sub_4FA9A8+2D↑p
                                        ; sub_50235C-76FC↑p ...
; void (__stdcall __noreturn *ExitThread)(DWORD dwExitCode)
                extrn __imp_ExitThread:dword
                                        ; CODE XREF: sub_50581D+22↑p
                                        ; DATA XREF: sub_50581D+22↑r ...
; BOOL (__stdcall *FlushFileBuffers)(HANDLE hFile)
                extrn __imp_FlushFileBuffers:dword
                                        ; CODE XREF: fsync_+39↑p
                                        ; DATA XREF: fsync_+39↑r ...
; UINT (__stdcall *GetACP)()
                extrn __imp_GetACP:dword
                                        ; CODE XREF: sub_503202+F↑p
                                        ; DATA XREF: sub_503202+F↑r ...
; BOOL (__stdcall *GetCPInfo)(UINT CodePage, LPCPINFO lpCPInfo)
                extrn __imp_GetCPInfo:dword
                                        ; CODE XREF: sub_503202+B8↑p
                                        ; DATA XREF: sub_503202+B8↑r ...
; LPSTR (__stdcall *GetCommandLineA)()
                extrn __imp_GetCommandLineA:dword
                                        ; CODE XREF: sub_4FA9A8+F5↑p
                                        ; DATA XREF: sub_4FA9A8+F5↑r ...
; LPWSTR (__stdcall *GetCommandLineW)()
                extrn __imp_GetCommandLineW:dword
                                        ; CODE XREF: sub_4FA9A8+151↑p
                                        ; DATA XREF: sub_4FA9A8+151↑r ...
; BOOL (__stdcall *GetConsoleMode)(HANDLE hConsoleHandle, LPDWORD lpMode)
                extrn __imp_GetConsoleMode:dword
                                        ; CODE XREF: getch_+44↑p
                                        ; DATA XREF: getch_+44↑r ...
; DWORD (__stdcall *GetCurrentDirectoryA)(DWORD nBufferLength, LPSTR lpBuffer)
                extrn __imp_GetCurrentDirectoryA:dword
                                        ; CODE XREF: getcwd_+16↑p
                                        ; DATA XREF: getcwd_+16↑r ...
; DWORD (__stdcall *GetCurrentProcessId)()
                extrn __imp_GetCurrentProcessId:dword
                                        ; CODE XREF: sub_4FF611+2↑p
                                        ; DATA XREF: sub_4FF611+2↑r ...
; DWORD (__stdcall *GetCurrentThreadId)()
                extrn __imp_GetCurrentThreadId:dword
                                        ; CODE XREF: sub_4FFFCF+6↑p
                                        ; __ReallocThreadData_+C↑p ...
; HANDLE (__stdcall *GetCurrentThread)()
                extrn __imp_GetCurrentThread:dword
                                        ; CODE XREF: sub_505744+2F↑p
                                        ; DATA XREF: sub_505744+2F↑r ...
; UINT (__stdcall *GetDriveTypeA)(LPCSTR lpRootPathName)
                extrn __imp_GetDriveTypeA:dword
                                        ; CODE XREF: sub_4F0927+31↑p
                                        ; DATA XREF: sub_4F0927+31↑r ...
; LPCH (__stdcall *GetEnvironmentStrings)()
                extrn __imp_GetEnvironmentStrings:dword
                                        ; CODE XREF: sub_4FA9A8+39↑p
                                        ; DATA XREF: sub_4FA9A8+39↑r ...
; DWORD (__stdcall *GetFileAttributesA)(LPCSTR lpFileName)
                extrn __imp_GetFileAttributesA:dword
                                        ; CODE XREF: sub_5013A6+5↑p
                                        ; DATA XREF: sub_5013A6+5↑r ...
; DWORD (__stdcall *GetFileType)(HANDLE hFile)
                extrn __imp_GetFileType:dword
                                        ; CODE XREF: isatty_+3C↑p
                                        ; DATA XREF: isatty_+3C↑r ...
; DWORD (__stdcall *GetFullPathNameA)(LPCSTR lpFileName, DWORD nBufferLength, LPSTR lpBuffer, LPSTR *lpFilePart)
                extrn __imp_GetFullPathNameA:dword
                                        ; CODE XREF: _fullpath_+76↑p
                                        ; DATA XREF: _fullpath_+76↑r ...
; DWORD (__stdcall *GetLastError)()
                extrn __imp_GetLastError:dword
                                        ; CODE XREF: sub_50005C+4↑p
                                        ; __set_errno_nt_+2↑p
                                        ; DATA XREF: ...
; DWORD (__stdcall *GetModuleFileNameA)(HMODULE hModule, LPSTR lpFilename, DWORD nSize)
                extrn __imp_GetModuleFileNameA:dword
                                        ; CODE XREF: sub_4FA9A8+C8↑p
                                        ; sub_4FA9A8+1E5↑p ...
; DWORD (__stdcall *GetModuleFileNameW)(HMODULE hModule, LPWSTR lpFilename, DWORD nSize)
                extrn __imp_GetModuleFileNameW:dword
                                        ; CODE XREF: __lib_GetModuleFileNameW_+22↑p
                                        ; DATA XREF: __lib_GetModuleFileNameW_+22↑r ...
; HMODULE (__stdcall *GetModuleHandleA)(LPCSTR lpModuleName)
                extrn __imp_GetModuleHandleA:dword
                                        ; CODE XREF: sub_4FABD3+A↑p
                                        ; sub_4FFB41+91↑p
                                        ; DATA XREF: ...
; UINT (__stdcall *GetOEMCP)()
                extrn __imp_GetOEMCP:dword
                                        ; CODE XREF: sub_503202+22↑p
                                        ; sub_503202+12D↑p
                                        ; DATA XREF: ...
; FARPROC (__stdcall *GetProcAddress)(HMODULE hModule, LPCSTR lpProcName)
                extrn __imp_GetProcAddress:dword
                                        ; CODE XREF: sub_5004E9+1B↑p
                                        ; DATA XREF: sub_5004E9+1B↑r ...
; HANDLE (__stdcall *GetStdHandle)(DWORD nStdHandle)
                extrn __imp_GetStdHandle:dword
                                        ; CODE XREF: __NTInitFileHandles_+4↑p
                                        ; __NTInitFileHandles_+22↑p ...
; DWORD (__stdcall *GetTickCount)()
                extrn __imp_GetTickCount:dword
                                        ; CODE XREF: sub_49E306+44↑p
                                        ; sub_49E306:loc_49E384↑p ...
; DWORD (__stdcall *GetVersion)()
                extrn __imp_GetVersion:dword
                                        ; CODE XREF: sub_4FA9A8+4D↑p
                                        ; __lib_GetModuleFileNameW_+A↑p
                                        ; DATA XREF: ...
; void (__stdcall *InitializeCriticalSection)(LPCRITICAL_SECTION lpCriticalSection)
                extrn __imp_InitializeCriticalSection:dword
                                        ; CODE XREF: sub_4FFFCF+34↑p
                                        ; sub_500201+C1↑p
                                        ; DATA XREF: ...
; void (__stdcall *LeaveCriticalSection)(LPCRITICAL_SECTION lpCriticalSection)
                extrn __imp_LeaveCriticalSection:dword
                                        ; CODE XREF: sub_500035+1B↑p
                                        ; DATA XREF: sub_500035+1B↑r ...
; HMODULE (__stdcall *LoadLibraryA)(LPCSTR lpLibFileName)
                extrn __imp_LoadLibraryA:dword
                                        ; CODE XREF: sub_5004E9+8↑p
                                        ; DATA XREF: sub_5004E9+8↑r ...
; BOOL (__stdcall *MoveFileA)(LPCSTR lpExistingFileName, LPCSTR lpNewFileName)
                extrn __imp_MoveFileA:dword
                                        ; CODE XREF: sub_5013EE+3↑p
                                        ; DATA XREF: sub_5013EE+3↑r ...
; int (__stdcall *MultiByteToWideChar)(UINT CodePage, DWORD dwFlags, LPCCH lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar)
                extrn __imp_MultiByteToWideChar:dword
                                        ; CODE XREF: __lib_GetModuleFileNameW_+67↑p
                                        ; sub_501297+6F↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *ReadConsoleInputA)(HANDLE hConsoleInput, PINPUT_RECORD lpBuffer, DWORD nLength, LPDWORD lpNumberOfEventsRead)
                extrn __imp_ReadConsoleInputA:dword
                                        ; CODE XREF: do_getch_+7E↑p
                                        ; DATA XREF: do_getch_+7E↑r ...
; BOOL (__stdcall *ReadFile)(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped)
                extrn __imp_ReadFile:dword
                                        ; CODE XREF: sub_500B5A+67↑p
                                        ; DATA XREF: sub_500B5A+67↑r ...
; BOOL (__stdcall *SetConsoleCtrlHandler)(PHANDLER_ROUTINE HandlerRoutine, BOOL Add)
                extrn __imp_SetConsoleCtrlHandler:dword
                                        ; CODE XREF: StartCtrlHandler_+12↑p
                                        ; KillCtrlHandler_+12↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *SetConsoleMode)(HANDLE hConsoleHandle, DWORD dwMode)
                extrn __imp_SetConsoleMode:dword
                                        ; CODE XREF: getch_+4E↑p
                                        ; getch_+63↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *SetEnvironmentVariableA)(LPCSTR lpName, LPCSTR lpValue)
                extrn __imp_SetEnvironmentVariableA:dword
                                        ; CODE XREF: sub_505A10+D2↑p
                                        ; sub_506528+A0↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *SetEnvironmentVariableW)(LPCWSTR lpName, LPCWSTR lpValue)
                extrn __imp_SetEnvironmentVariableW:dword
                                        ; CODE XREF: sub_506528+15↑p
                                        ; DATA XREF: sub_506528+15↑r ...
; BOOL (__stdcall *SetEvent)(HANDLE hEvent)
                extrn __imp_SetEvent:dword
                                        ; CODE XREF: StartAddress+7C↑p
                                        ; DATA XREF: StartAddress+7C↑r ...
; DWORD (__stdcall *SetFilePointer)(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod)
                extrn __imp_SetFilePointer:dword
                                        ; CODE XREF: lseek_+54↑p
                                        ; __qwrite_+4D↑p ...
; void (__stdcall *SetLastError)(DWORD dwErrCode)
                extrn __imp_SetLastError:dword
                                        ; CODE XREF: sub_50005C+36↑p
                                        ; DATA XREF: sub_50005C+36↑r ...
; BOOL (__stdcall *SetStdHandle)(DWORD nStdHandle, HANDLE hHandle)
                extrn __imp_SetStdHandle:dword
                                        ; CODE XREF: __NTAddSpecificFileHandle_:loc_4FFDA1↑p
                                        ; DATA XREF: __NTAddSpecificFileHandle_:loc_4FFDA1↑r ...
; LPTOP_LEVEL_EXCEPTION_FILTER (__stdcall *SetUnhandledExceptionFilter)(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
                extrn __imp_SetUnhandledExceptionFilter:dword
                                        ; CODE XREF: sub_500909+42↑p
                                        ; DATA XREF: sub_500909+42↑r ...
; DWORD (__stdcall *TlsAlloc)()
                extrn __imp_TlsAlloc:dword
                                        ; CODE XREF: sub_5000DA+2↑p
                                        ; sub_5000DA+35↑p
                                        ; DATA XREF: ...
; BOOL (__stdcall *TlsFree)(DWORD dwTlsIndex)
                extrn __imp_TlsFree:dword
                                        ; CODE XREF: sub_5001D3+18↑p
                                        ; DATA XREF: sub_5001D3+18↑r ...
; LPVOID (__stdcall *TlsGetValue)(DWORD dwTlsIndex)
                extrn __imp_TlsGetValue:dword
                                        ; CODE XREF: sub_50005C+14↑p
                                        ; sub_50017E+13↑p ...
; BOOL (__stdcall *TlsSetValue)(DWORD dwTlsIndex, LPVOID lpTlsValue)
                extrn __imp_TlsSetValue:dword
                                        ; CODE XREF: sub_50012F+3F↑p
                                        ; sub_50017E+38↑p ...
; LONG (__stdcall *UnhandledExceptionFilter)(struct _EXCEPTION_POINTERS *ExceptionInfo)
                extrn __imp_UnhandledExceptionFilter:dword
                                        ; CODE XREF: sub_500745+1A4↑p
                                        ; DATA XREF: sub_500745+1A4↑r ...
; LPVOID (__stdcall *VirtualAlloc)(LPVOID lpAddress, SIZE_T dwSize, DWORD flAllocationType, DWORD flProtect)
                extrn __imp_VirtualAlloc:dword
                                        ; CODE XREF: __CreateNewNHeap_+38↑p
                                        ; DATA XREF: __CreateNewNHeap_+38↑r ...
; BOOL (__stdcall *VirtualFree)(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType)
                extrn __imp_VirtualFree:dword
                                        ; CODE XREF: __ReturnMemToSystem_+12↑p
                                        ; DATA XREF: __ReturnMemToSystem_+12↑r ...
; SIZE_T (__stdcall *VirtualQuery)(LPCVOID lpAddress, PMEMORY_BASIC_INFORMATION lpBuffer, SIZE_T dwLength)
                extrn __imp_VirtualQuery:dword
                                        ; CODE XREF: __init_stack_limits_+16↑p
                                        ; DATA XREF: __init_stack_limits_+16↑r ...
; DWORD (__stdcall *WaitForSingleObject)(HANDLE hHandle, DWORD dwMilliseconds)
                extrn __imp_WaitForSingleObject:dword
                                        ; CODE XREF: sub_505744+B9↑p
                                        ; DATA XREF: sub_505744+B9↑r ...
; int (__stdcall *WideCharToMultiByte)(UINT CodePage, DWORD dwFlags, LPCWCH lpWideCharStr, int cchWideChar, LPSTR lpMultiByteStr, int cbMultiByte, LPCCH lpDefaultChar, LPBOOL lpUsedDefaultChar)
                extrn __imp_WideCharToMultiByte:dword
                                        ; CODE XREF: wctomb_+20↑p
                                        ; DATA XREF: wctomb_+20↑r ...
; BOOL (__stdcall *WriteConsoleA)(HANDLE hConsoleOutput, const void *lpBuffer, DWORD nNumberOfCharsToWrite, LPDWORD lpNumberOfCharsWritten, LPVOID lpReserved)
                extrn __imp_WriteConsoleA:dword
                                        ; CODE XREF: putch_+49↑p
                                        ; DATA XREF: putch_+49↑r ...
; BOOL (__stdcall *WriteFile)(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite, LPDWORD lpNumberOfBytesWritten, LPOVERLAPPED lpOverlapped)
                extrn __imp_WriteFile:dword
                                        ; CODE XREF: TopLevelExceptionFilter+1A0↑p
                                        ; __qwrite_+9D↑p ...

;
; Imports from WINMM.dll
;
; MCIERROR (__stdcall *mciSendStringA)(LPCSTR lpstrCommand, LPSTR lpstrReturnString, UINT uReturnLength, HWND hwndCallback)
                extrn __imp_mciSendStringA:dword
                                        ; CODE XREF: sub_4F985F:loc_4F98C9↑p
                                        ; sub_4F9933+30↑p ...

;
; Imports from DSOUND.dll
;
; HRESULT (__stdcall *DirectSoundCreate)(LPCGUID pcGuidDevice, LPDIRECTSOUND *ppDS, LPUNKNOWN pUnkOuter)
                extrn __imp_DirectSoundCreate:dword
                                        ; DATA XREF: DirectSoundCreate↑r
                                        ; Import by ordinal 1

;
; Imports from DINPUT.dll
;
                extrn __imp_DirectInputCreateA:dword
                                        ; DATA XREF: DirectInputCreateA↑r

;
; Imports from DDRAW.dll
;
; HRESULT (__stdcall *DirectDrawCreate)(GUID *lpGUID, LPDIRECTDRAW *lplpDD, IUnknown *pUnkOuter)
                extrn __imp_DirectDrawCreate:dword
                                        ; DATA XREF: DirectDrawCreate↑r
; HRESULT (__stdcall *DirectDrawEnumerateA)(LPDDENUMCALLBACKA lpCallback, LPVOID lpContext)
                extrn __imp_DirectDrawEnumerateA:dword
                                        ; DATA XREF: DirectDrawEnumerateA↑r

