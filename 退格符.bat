@echo off
set var=123
set a=%var%5
echo %a%
::125
pause>nul
set a=%var%5
::153
echo %a%
pause>nul
set a=%var%5
echo %a%
::523
pause>nul