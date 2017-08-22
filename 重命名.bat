@echo off&setlocal enabledelayedexpansion
color 0a
cls
for  /f %%i in ('dir /b /a /s *.*') do (
set str=%%~ni
echo %%~dpni
pause
set str=!str:.txt.txt=!
set str=!str:.txt=!
ren  %%~dpni   !str!.txt
)
pause
:: ren 命令不能指定目标地址！切记！