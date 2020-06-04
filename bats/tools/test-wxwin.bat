@echo off
REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

REM test whether system environment variable WXWIN is set
IF "%WXWIN%" == "" (
  echo ERROR: System environment variable WXWIN is not set!
  goto FINISHED
)

REM test whether GCC makefile for MinGW exists there.
IF NOT EXIST %WXWIN%\build\msw\makefile.gcc (
  echo ERROR: System environment variable WXWIN is set to "%WXWIN%" but the folder does not seem to refer to the wxWidgets root folder.
  goto FINISHED   
)

echo System environment variable WXWIN is set to "%WXWIN%" and refers to the wxWidgets root folder.

:FINISHED
pause
