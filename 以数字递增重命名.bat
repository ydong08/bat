@echo off&setlocal enabledelayedexpansion
set /a n=1
for /f "delims=" %%i in ('dir /b *.jpg') do (
if "%%~xi"==".jpg" ren %%i !n!.jpg
set /a n=n+1
)
pause