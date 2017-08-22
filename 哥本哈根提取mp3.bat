@echo off
title   mp3文件提取器 by batman =======哥本哈根优化处理 
@mode con cols=50 lines=20
echo -------------------------------------------------
echo.
echo.
echo -------mp3文件提取器 by   哥本哈根-------------
echo.
echo.
echo.  
echo           使用方法====运行本批处理后，
echo.
echo           将在桌面上新建一个mp3文件夹
echo.
echo           将提取到的音频mp3格式的文件，
echo.
echo           直接复制到该文件夹下！
echo.
echo.
echo.
echo    按任意键进行提取 mp3 
echo.
echo.
echo.
pause
pushd %userprofile%\桌面\ & md mp3 >nul 2>nul
echo.
echo.
echo.
echo.
echo   正在提取mp3文件请稍等.........
for /f "delims=" %%i in ('dir /s /a-d /b "%userprofile%\locals~1\tempor~1\*.mp3"') do (
copy /y "%%i"   "%userprofile%\桌面\mp3\"  
) >nul
exit
