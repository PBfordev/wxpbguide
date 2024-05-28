REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

set PATH=C:\msys64\ucrt64\bin;%PATH%

cd /d %WXWIN%\build\MSW


REM Build wxWidgets Shared Debug configuration with C++20 support
mingw32-make -f makefile.gcc SHARED=1 BUILD=debug CXXFLAGS="-std=c++20" SHELL=cmd.exe setup_h
IF %ERRORLEVEL% NEQ 0 goto FAIL
mingw32-make -j4 -f makefile.gcc SHARED=1 BUILD=debug CXXFLAGS="-std=c++20" SHELL=cmd.exe
IF %ERRORLEVEL% NEQ 0 goto FAIL

REM Build wxWidgets Shared Release configuration with C++20 support
mingw32-make -f makefile.gcc SHARED=1 BUILD=release CXXFLAGS="-std=c++20" SHELL=cmd.exe setup_h
IF %ERRORLEVEL% NEQ 0 goto FAIL
mingw32-make -j4 -f makefile.gcc SHARED=1 BUILD=release CXXFLAGS="-std=c++20" SHELL=cmd.exe
IF %ERRORLEVEL% NEQ 0 goto FAIL


goto SUCCESS

:FAIL
echo Build failed, see above why.
pause
goto FINISHED

:SUCCESS

:FINISHED