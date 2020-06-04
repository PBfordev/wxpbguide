REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

set PATH=C:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-sjlj-rt_v6-rev0\mingw32\bin;%PATH%
mingw32-make -f makefile.gcc SHARED=1 BUILD=debug CXXFLAGS="-std=c++17"
