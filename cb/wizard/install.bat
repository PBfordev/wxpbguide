@echo off
REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks
REM It will install updated wxWidgets project wizard for Code::Blocks v20.03

choice /M "Install updated wizard for Code::Blocks 20.03 wxWidgets project template?"
IF %ERRORLEVEL% EQU 1 goto INSTALL
IF %ERRORLEVEL% EQU 2 goto NOACTION

:INSTALL
xcopy /I /Q /Y wizard.* %APPDATA%\CodeBlocks\share\codeblocks\templates\wizard\wxwidgets
IF %ERRORLEVEL% NEQ 0 goto FAIL
echo The updated wizard was successfully installed.
goto FINISHED

:FAIL
echo ERROR: Could not copy the updated wizard to %APPDATA%\CodeBlocks\share\codeblocks\templates\wizard\wxwidgets.
goto FINISHED

:NOACTION
echo The updated wizard will not be installed.
goto FINISHED

:FINISHED
pause