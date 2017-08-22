@echo off&setlocal enabledelayedexpansion
color 0a
for /f "delims="  %%i in ('dir /b /a *.htm') do (
set str=%%i
             for /f "delims==" %%j in ('dir /a /b *.htm') do (
            set  s=%%j
            ren   "!str!"  "!s!">nul 2>nul
   )

)
echo 完毕
pause
:: ren 的后面要加上双引号，切记，不然麻烦大了！
::  ren   "!str!"  "!s!".htm