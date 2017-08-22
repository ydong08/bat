@echo off
set "str=sed  -i  "1,3d" 1.txt"
%str%
pause
for /f "delims=" %%i in ('dir /a /b *.htm') do (
set "str=sed "s/=//" %%i"
ren  "%%i" "%str%"
pause