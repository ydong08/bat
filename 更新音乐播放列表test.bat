@echo off
cd.>list.m3u
for /f "delims=" %%i in ('dir /a-d /b') do (
if "%%~xi"==".mp3" echo %%~dpnxi>>list.m3u
if "%%~xi"==".wav" echo %%~dpnxi>>list.m3u
if "%%~xi"==".mid" echo %%~dpnxi>>list.m3u
if "%%~xi"==".wav" echo %%~dpnxi>>list.m3u )
pause
rem "%%~xi"==".wav"一定是2个等号，还有两边的双引号不能少！！