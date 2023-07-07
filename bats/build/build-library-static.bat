REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

set PATH=C:\msys64\ucrt64\bin;%PATH%

cd /d %WXWIN%\build\MSW


REM Build wxWidgets Static Debug configuration with C++17 support and GCC libraries linked statically
mingw32-make -f makefile.gcc SHARED=0 BUILD=debug CXXFLAGS="-std=c++17" LDFLAGS="-static" SHELL=cmd.exe
IF %ERRORLEVEL% NEQ 0 goto FAIL

REM Build wxWidgets Static Release configuration with C++17 support and GCC libraries linked statically
mingw32-make -f makefile.gcc SHARED=0 BUILD=release CXXFLAGS="-std=c++17" LDFLAGS="-static" SHELL=cmd.exe
IF %ERRORLEVEL% NEQ 0 goto FAIL


goto SUCCESS

:FAIL
echo Build failed, see above why.
pause
goto FINISHED

:SUCCESS

:FINISHED
