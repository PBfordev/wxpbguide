@echo off
REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

REM test whether there is a GCC-based compiler in PATH
where $PATH:gcc.exe
IF %ERRORLEVEL% NEQ 0 goto GCC_NOT_FOUND

echo WARNING: GCC was found in a folder included in PATH, see above!
goto FINISHED

:GCC_NOT_FOUND
echo Everything is OK, GCC was NOT found in a folder included in PATH.

:FINISHED
pause
