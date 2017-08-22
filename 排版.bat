@echo off
rem 分割每行为9个字符
for /f "delims=" %%i in ('dir /a /b *.txt') do (
gawk -f "E:\批处理\批处理\sed wget curl gawk\gawk\splitlongline.txt"  %%i>%%i.txt
)
set /p str= 请选择你要添加的分割线类型[:=~`-.+*_]
if "%str%"=="-" goto a1
if "%str%"==" " goto b1
if "%str%"=="=" goto c1
if "%str%"=="_" goto d1
if "%str%"=="." goto e1
if "%str%"==":" goto f1
if "%str%"=="~" goto g1
goto :eof
:a1
sed -i "/^$/d" *.txt
sed -i "a\---------------" *.txt
pause
exit
:b1
sed -i "/^$/d" *.txt
sed -i "a\-+-+-+-+-+-+-+-" *.txt
pause&exit
:c1
sed -i "/^$/d" *.txt
sed -i "a\==================" *.txt
pause&exit
:d1
sed -i "/^$/d" *.txt
sed -i "a\__________________" *.txt
pause&exit
:e1
sed -i "/^$/d" *.txt
sed -i "a\...................................." *.txt
pause&exit
:f1
sed -i "/^$/d" *.txt
sed -i "a\::::::::::::::::::" *.txt
pause&exit
:g1
sed -i "/^$/d" *.txt
sed -i "a\```````````````````````````" *.txt
pause&exit
:g1
sed -i "/^$/d" *.txt
sed -i "a\~~~~~~~~~~~~~~~~~~~~~~~~~~~" *.txt
pause&exit
