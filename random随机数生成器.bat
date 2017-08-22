REM 产生10个[100000,999999]间的随机数
:a
@echo off
REM 启用延迟环境变量扩展
setlocal enabledelayedexpansion
REM 设置随机数的最小和最大值以及求模用的变量
set min=100000
set max=999999
set /a mod=!max!-!min!+1 
for /l %%i in (1,1,10) do (
REM 产生[min,max]之间的随机数 
 set /a r=!random!%%!mod!+!min! 
start "" "http://wenwen.soso.com/t/GroupSearchResult.e?sp=S!R!&sp=0"
)
pause&goto a