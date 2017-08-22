@echo off
::产生[x,y]之间的随机数
set /p x=请输入较小的数x：
set /p y=请输入较大的数y：
:a
set /a ran=%random%%%(y-x+1)+x
echo 随机数为： %ran%
pause>nul
goto a
pause