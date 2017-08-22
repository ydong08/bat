@echo off&setlocal enabledelayedexpansion
for /f  "delims=" %%i in ('dir /a /b ') do (
set str=%%i
set str=!str:viewthread.php@=!
ren "%%i" "!str!".htm
)
pause