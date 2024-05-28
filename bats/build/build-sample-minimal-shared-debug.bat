REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

set PATH=C:\msys64\ucrt64\bin;%PATH%
mingw32-make -f makefile.gcc SHARED=1 BUILD=debug CXXFLAGS="-std=c++20" SHELL=cmd.exe
