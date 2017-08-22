@echo off
color 0a
wget -i url.txt
move url.txt  e:\&del ÏÂÔØÌû×Ó.bat
for /f  "delims=" %%i in ('dir /a /b') do ren %%i *.html
pause