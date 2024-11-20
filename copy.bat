@echo off

:: Set the source folder
set SOURCE="C:\Program Files (x86)\Capcom\Megaman"

:: Set the destination folder to a "Debug" folder in the same directory as this .bat file
set DESTINATION=%~dp0Debug

:: Ensure the Debug folder exists
if not exist %DESTINATION% (
    mkdir %DESTINATION%
)

:: Copy the content of the source folder to the Debug folder
echo Copying files from %SOURCE% to %DESTINATION%...
xcopy %SOURCE% %DESTINATION% /E /H /C /I

:: Check if the copy was successful
if %ERRORLEVEL% equ 0 (
    echo Files copied successfully to the Debug folder.
) else (
    echo An error occurred while copying files.
)

pause
