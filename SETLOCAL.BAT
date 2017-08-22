@echo off
setlocal
for /l %%i in (1,1,9) do set "_%%i=a"
set _
endlocal
echo.&set _
pause>nul
set  a=88
setlocal enabledelayedexpansion
set  a=99
echo 开启变量延迟扩展:  %a%   
rem 99
endlocal&set  a=00
echo %a% 
rem 00
pause