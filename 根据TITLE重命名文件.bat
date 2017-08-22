@echo off&setlocal enabledelayedexpansion&color 0a
for /f "delims=" %%i in ('dir /a /b *.txt') do ( 
for /f "usebacq tokens=2 delims=-:" %%j in  ("findstr /C:"TITLE :"  %%i") do (
set str=%%i
echo %%i&pause
set str=!str: =!
set str=!str:£¿=!
set str=!str:£º=!
set str=!str:¡°=!
set str=!str:¡±=!
set str=!str:¡¤=!
set str=!str:£¬=!
set str=!str:£¡=!
ren !str! "%%j.txt"
)
)
pause...........