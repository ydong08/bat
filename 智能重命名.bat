@echo off&setlocal enabledelayedexpansion
set n=1
for /f "delims=" %%i in ('dir /a /b *.jpg *.png *.gif') do (
set pre=%%~xi
set str=00!n!
rem 001-009 010-099 100-400
set str= !str:~-3!
ren %%i "!str!!pre!"
set /a n+=1
)

pause
