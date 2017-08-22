@echo off
cls
title mp3 flv提取
md mp3 flv swf>nul 2>nul
echo.&echo.
color 0a
echo 正在复制,请稍后.....
set str="C:\Documents and Settings\Administrator\Local Settings\Temporary Internet Files"
for /f  "delims=" %%i in  ('dir /a-d  /b  /s %str%') do (
 if "%%~xi"==".mp3"  copy "%%~dpnxi" mp3\
 if "%%~xi"==".flv"  copy "%%~dpnxi" flv\
  if "%%~xi"==".swf" (
                if %%~zi gtr 10000000   copy "%%~dpnxi" swf\
				)
      )
)
cls
echo 复制完成!&echo.&echo.
pause
rem "%%~xi"==".wav"一定是2个等号，还有两边的双引号不能少！！