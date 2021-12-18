@echo off
REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks
REM It will uninstall custom wxWidgets project wizard for Code::Blocks
@echo off

choice /M "Uninstall custom wizard for Code::Blocks wxWidgets project template?"
IF %ERRORLEVEL% EQU 1 goto UNINSTALL
IF %ERRORLEVEL% EQU 2 goto NOACTION

:UNINSTALL
IF NOT EXIST %APPDATA%\CodeBlocks\share\codeblocks\templates\wizard\wxwidgets\wizard.script (
  echo It seems there is no custom wizard installed.
  goto FINISHED
)
RMDIR /Q /S %APPDATA%\CodeBlocks\share\codeblocks\templates\wizard\wxwidgets || goto FAIL
echo The custom wizard was uninstalled.
goto FINISHED

:FAIL
echo ERROR: Could not uninstall the custom wizard from %APPDATA%\CodeBlocks\share\codeblocks\templates\wizard\wxwidgets.
goto FINISHED

:NOACTION
echo The updated wizard will not be uninstalled.
goto FINISHED

:FINISHED
pause