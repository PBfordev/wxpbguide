REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

set PATH=C:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-sjlj-rt_v6-rev0\mingw32\bin;%PATH%

cd /d %WXWIN%\build\MSW


REM Build wxWidgets Shared Debug configuration with C++17 support
mingw32-make -f makefile.gcc SHARED=1 BUILD=debug CXXFLAGS="-std=c++17" setup_h
IF %ERRORLEVEL% NEQ 0 goto FAIL
mingw32-make -j4 -f makefile.gcc SHARED=1 BUILD=debug CXXFLAGS="-std=c++17"
IF %ERRORLEVEL% NEQ 0 goto FAIL

REM Build wxWidgets Shared Release configuration with C++17 support
mingw32-make -f makefile.gcc SHARED=1 BUILD=release CXXFLAGS="-std=c++17" setup_h
IF %ERRORLEVEL% NEQ 0 goto FAIL
mingw32-make -j4 -f makefile.gcc SHARED=1 BUILD=release CXXFLAGS="-std=c++17"
IF %ERRORLEVEL% NEQ 0 goto FAIL


goto SUCCESS

:FAIL
echo Build failed!
pause
goto FINISHED

:SUCCESS

:FINISHED