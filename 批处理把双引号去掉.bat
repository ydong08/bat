@echo off&setlocal enabledelayedexpansion
for /f "delims=" %%i in (a.txt) do (
set str=%%i
set str=!str:"=[!
        for /f "tokens=2 delims=[" %%a in ("!str!") do (
                echo %%a 
        )
)
pause