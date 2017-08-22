@echo off&setlocal enabledelayedexpansion
for /f "tokens=1,2" %%i in (url.txt) do (
set str=%%i
set name=%%j
wget -c !str!&ren %%~nxi "!name!".html
)
pause