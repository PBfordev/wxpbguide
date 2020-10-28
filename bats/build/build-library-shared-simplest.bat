REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

set PATH=C:\msys64\mingw32\bin;%PATH%

cd /d %WXWIN%\build\MSW

mingw32-make -f makefile.gcc SHARED=1 BUILD=debug SHELL=cmd.exe
mingw32-make -f makefile.gcc SHARED=1 BUILD=release SHELL=cmd.exe