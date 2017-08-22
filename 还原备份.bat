@echo off&setlocal enabledelayedexpansion
color 0a
title 还原备份
:: code by XXXX
:a
set /p var=请输入数字[1-100]:
for /l %%i in (1 1 100) do (
set mulu=00%%i&set mulu=!mulu:~-3!
if "%var%"=="%%i" (
del /q /f /s C:\S!mulu!\*.*
rd C:\S!mulu!\ /q /s
xcopy D:\备份文件\S!mulu! C:\S!mulu! /E /I /S /H /Y
goto a 
)
)
pause
