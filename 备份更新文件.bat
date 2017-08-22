@echo off&setlocal enabledelayedexpansion
color 0a
title 备份和更新
:: code by 雨木林风
:a
set /p var=请输入数字
for /l %%i in (1 1 100) do (
set mulu=00%%i&set mulu=!mulu:~-3!
if "%var%"=="%%i" (
xcopy C:\S!mulu! /E /I /S /H /Y D:\备份文件\S!mulu!
del /q /f /s C:\S!mulu!\*.*
rd C:\S!mulu!\ /q /s
xcopy E:\S000 /E /I /S /H /Y C:\S!mulu!
goto a
)
)
pause
