REM This batch file is a part of PB’s Guide to Starting with wxWidgets on Microsoft Windows with MinGW and Code::Blocks 

set PATH=C:\msys64\mingw32\bin;%PATH%

cd /d %WXWIN%\build\MSW


REM Build wxWidgets Static Debug configuration with C++17 support
mingw32-make -f makefile.gcc SHARED=0 BUILD=debug CXXFLAGS="-std=c++17" LDFLAGS="-static" setup_h
IF %ERRORLEVEL% NEQ 0 goto FAIL
mingw32-make -j4 -f makefile.gcc SHARED=0 BUILD=debug CXXFLAGS="-std=c++17" LDFLAGS="-static"
IF %ERRORLEVEL% NEQ 0 goto FAIL

REM Build wxWidgets Static Release configuration with C++17 support
mingw32-make -f makefile.gcc SHARED=0 BUILD=release CXXFLAGS="-std=c++17" LDFLAGS="-static" setup_h
IF %ERRORLEVEL% NEQ 0 goto FAIL
mingw32-make -j4 -f makefile.gcc SHARED=0 BUILD=release CXXFLAGS="-std=c++17" LDFLAGS="-static"
IF %ERRORLEVEL% NEQ 0 goto FAIL


goto SUCCESS

:FAIL
echo Build failed!
pause
goto FINISHED

:SUCCESS

:FINISHED
