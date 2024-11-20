#include <windows.h>

#include <stdio.h>

int __stdcall WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd) {
    BYTE buffer[0xB4]; // Reserve local stack space
    RECT Rect;         // Rectangle structure
    MSG Msg;           // Message structure
    WNDCLASSA WndClass; // Window class structure
    int var_18 = 0;    // Zero initialization

    // Initialize a buffer with some predefined values (unknown meaning here)
    memset(buffer, 0, sizeof(buffer));
    memcpy(buffer, (void*)0x4A64AB, 0x14); // Copy data from a hardcoded memory address
    *(int*)(buffer + 0x18) = 0; // Explicit zero initialization

    // Initialize RECT from another hardcoded address
    memcpy(&Rect, (void*)0x4A64FB, sizeof(Rect));

    // Strings related to Megaman
    const char* megamanExe = "MEGAMAN.EXE";
    const char* capcomAvi = "CAPCOM.AVI";

    // Call to an undefined function
    int result = sub_4F0927(megamanExe, capcomAvi);

    // If the function failed (result == 0), display an error message
    if (result == 0) {
        MessageBoxA(
            NULL, // hWnd
            "Please Insert Megaman CD-ROM.", // Text
            "Error", // Caption
            MB_ICONERROR // uType
        );
        goto exit; // Exit or end the function
    }

exit:
    // Other logic may follow, not shown in this snippet
    return 0;
}


int sub_4F0927(const char* file1, const char* file2) {
    // Check if the first file exists
    if (GetFileAttributesA(file1) == INVALID_FILE_ATTRIBUTES) {
        // File 1 does not exist
        return 0;
    }

    // Check if the second file exists
    if (GetFileAttributesA(file2) == INVALID_FILE_ATTRIBUTES) {
        // File 2 does not exist
        return 0;
    }

    // Both files exist
    return 1;
}
