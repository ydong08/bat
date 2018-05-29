:
: Copyright (c) Castles Technology Co., Lte.
: For rebuilding all Projects.
:
: Created: 2017.10.23
: Author: Alan.Ren
:
:

:: build            --default
:: release, package --option
:: clean            --option

echo off

@set compile_fail=false
@set release_pack_suffix="dodohome_Release_"
@set source_code="dodohome"
@set pc_utility="PC Utility"
@set release_bin="Release Bin"
@set release_note="Release Note"
@set third_party="ThirdParty"
@set source_path=%CD%\..\..\%source_code%
@set release_path=%CD%\..\..\..\..\branches\

@set CYGWIN=nodosfilewarning
@if %PROCESSOR_ARCHITECTURE%==AMD64 (
GOTO PF_86
) else (
GOTO PF_64
)

:PF_86
@set PF=%ProgramFiles(x86)%
GOTO END

:PF_64
@set PF=%ProgramFiles%
GOTO END

:END
@set NETBEANPATH=%PF%\NetBeans 8.2\bin
@set CYGWINPATH=C:\cygwin\bin
@set CSDKPATH=%PF%\Castles

@set SDKDPSINC=%CSDKPATH%\DPS1000\include
@set SDKDPSLIB=%CSDKPATH%\DPS1000\lib
@set SDKEMV8900INC=%CSDKPATH%\EMV8900\include
@set SDKEMV8900LIB=%CSDKPATH%\EMV8900\lib
@set SDKEPP1000=%CSDKPATH%\epp1000
@set SDKEZPROXINC=%CSDKPATH%\EZProx\include
@set SDKEZPROXLIB=%CSDKPATH%\EZProx\lib
@set SDKPCI3KINC=%CSDKPATH%\PCI3000\include
@set SDKPCI3KLIB=%CSDKPATH%\PCI3000\lib
@set SDKPPC900INC=%CSDKPATH%\PPC900\include
@set SDKPPC900LIB=%CSDKPATH%\PPC900\lib
@set SDKQP1000INC=%CSDKPATH%\QP1000\include
@set SDKQP1000LIB=%CSDKPATH%\QP1000\lib
@set SDKQP2000INC=%CSDKPATH%\QP2000\include
@set SDKQP2000LIB=%CSDKPATH%\QP2000\lib
@set SDKQP3000INC=%CSDKPATH%\QP3000\include
@set SDKQP3000LIB=%CSDKPATH%\QP3000\lib
@set SDKQP3000SINC=%CSDKPATH%\QP3000S\include
@set SDKQP3000SLIB=%CSDKPATH%\QP3000S\lib
@set SDKV5INC=%CSDKPATH%\VEGA5000\include
@set SDKV5LIB=%CSDKPATH%\VEGA5000\lib
@set SDKV5LIBN=%CSDKPATH%\VEGA5000\lib_not_builtin
@set SDKV5SINC=%CSDKPATH%\VEGA5000S\include
@set SDKV5SLIB=%CSDKPATH%\VEGA5000S\lib
@set SDKV5SLIBN=%CSDKPATH%\VEGA5000S\lib_not_builtin
@set SDKV5SIMINC=%CSDKPATH%\VEGA5000\include
@set SDKV5SIMLIB=%CSDKPATH%\VEGA5000\slib
@set SDKV7INC=%CSDKPATH%\VEGA7000\include
@set SDKV7LIB=%CSDKPATH%\VEGA7000\lib
@set SDKV7SIMINC=%CSDKPATH%\VEGA7000\sinclude
@set SDKV7SIMLIB=%CSDKPATH%\VEGA7000\slib
@set SDKV7SIMRES=%CSDKPATH%\VEGA7000\sres
@set SDKV9INC=%CSDKPATH%\VEGA9000\include
@set SDKV9LIB=%CSDKPATH%\VEGA9000\lib
@set SDKV3INC=%CSDKPATH%\VEGA3000\include
@set SDKV3LIB=%CSDKPATH%\VEGA3000\lib
@set SDKV3LIBN=%CSDKPATH%\VEGA3000\lib_not_builtin
@set SDKV3ULINC=%CSDKPATH%\VEGA3000UL\include
@set SDKV3ULLIB=%CSDKPATH%\VEGA3000UL\lib
@set SDKV3ULLIBN=%CSDKPATH%\VEGA3000UL\lib_not_builtin
@set SDKMP10INC=%CSDKPATH%\MPIN10\include
@set SDKMP10LIB=%CSDKPATH%\MPIN10\lib
@set SDKMP10LIBN=%CSDKPATH%\MPIN10\lib_not_builtin
@set SDKMP200INC=%CSDKPATH%\MP200\include
@set SDKMP200LIB=%CSDKPATH%\MP200\lib
@set SDKMP200LIBN=%CSDKPATH%\MP200\lib_not_builtin
@set SDKMARS1000INC=%CSDKPATH%\MARS1000\include
@set SDKMARS1000LIB=%CSDKPATH%\MARS1000\lib
@set SDKMARS1000LIBN=%CSDKPATH%\MARS1000\lib_not_builtin
@set SDKUPT1000INC=%CSDKPATH%\UPT1000\include
@set SDKUPT1000LIB=%CSDKPATH%\UPT1000\lib
@set SDKUPT1000LIBN=%CSDKPATH%\UPT1000\lib_not_builtin
@set SDKUPT2000INC=%CSDKPATH%\UPT2000\include
@set SDKUPT2000LIB=%CSDKPATH%\UPT2000\lib
@set SDKUPT2000LIBN=%CSDKPATH%\UPT2000\lib_not_builtin
@set SDKS1EXTINC=%CSDKPATH%\SATURN1000Ext\include
@set SDKS1EXTLIB=%CSDKPATH%\SATURN1000Ext\lib
@set SDKS1EXTLIBN=%CSDKPATH%\SATURN1000Ext\lib_not_builtin
@set SDKQP8000INC=%CSDKPATH%\QP8000\include
@set SDKQP8000LIB=%CSDKPATH%\QP8000\lib
@set SDKQP3000EINC=%CSDKPATH%\QP3000E\include
@set SDKQP3000ELIB=%CSDKPATH%\QP3000E\lib

::####build part
echo on

cd ..\MsgQueueLib
make -f NbMakefile clean
make -f NbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
goto EXITBAT
)

cd ..\UILib
make -f nbMakefile clean
make -f nbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
goto EXITBAT
)

cd ..\CommLib
make -f NbMakefile clean
make -f NbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
goto EXITBAT
)

cd ..\MenuLib
make -f NbMakefile clean
make -f NbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
goto EXITBAT
)

cd ..\TXNLib
make -f NbMakefile clean
make -f NbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
goto EXITBAT
)

cd ..\ManageLib
make -f NbMakefile clean
make -f NbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
goto EXITBAT
)

cd ..\dodohome
make -f NbMakefile clean
make -f NbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
goto EXITBAT
)

cd ..\AppLoder
make -f NbMakefile clean
make -f NbMakefile
if %errorlevel% neq 0 (
echo compile fail
set compile_fail=true
)


:EXITBAT
if "%compile_fail%" == "true" (
echo will exit
pause
exit
) else (
goto RELEASEBAT
)

::####release part
:RELEASEBAT
echo /p Choice="Continue To Release(Y/N): "
if "%Choice%" == "N" (
echo NOT release
exit
)
echo .
echo /p subversion="plz input sub-version(01,02...): "
rem switch path to branch
cd %release_path%

rem year month day  
::@set yyyy=%date:~,4%  
::@set mm=%date:~5,2%  
::@set day=%date:~8,2%   

::@set tmpdata=%yyyy%%mm%%day%
@set directory=%release_pack_suffix%%DATA%%subversion%
if exist %directory% (
rd /q /s %directory%
)

md %directory%
rem enter release dir
cd %directory%

rem create release sub-dir
rem md %source_code%
md %pc_utility%
md %release_bin%
md %release_note%
md %third_party%
echo >> Readme.txt

rem copy files
xcopy %source_path% . /s /y /e /i
xcopy %source_path%\Lib\* %third_party% /s /y /e /i

rem signed files
::xcopy 



::####package part
@set WinRAR_Dir=%ProgramFiles%\WinRAR\
@set PATH=%PATH%;%WinRAR_Dir%
rem -ibck run on background
WinRAR.exe a -r "%directory%.zip" -rr -m5 * -ibck


