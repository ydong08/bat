@echo off&setlocal enabledelayedexpansion
color 0a
for /f "delims="  %%i in ('dir /b /a *.txt') do (
set str=%%i
set str=!str: =!
set str=!str:“=!
set str=!str:”=!
set str=!str:？=!
set str=!str:：=!
set str=!str:《=!
set str=!str:》=!
set str=!str: =!
set str=!str:·=!
set str=!str:， =!
ren   "%%i"  "!str!"
)
pause
:: ren 的后面要加上双引号，切记，不然麻烦大了！