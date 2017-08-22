@echo off&setlocal enabledelayedexpansion
call :sudu www.baidu.com
echo !min!
echo !max!
echo !ave!
pause
exit
:sudu
for /f "tokens=3,6,9 delims=, " %%i in ('ping -n 3 %1^|find /i "mini"') do (
set min=%%i
set max=%%j
set ave=%%k
set min=!min:~0,-2!
set max=!max:~0,-2!
set ave=!ave:~0,-3!
echo\)
goto :eof