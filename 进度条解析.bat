@echo %dbg% off
::mode con cols=113 lines=15 &color 9f
:starthome
cls
set a=^set /p=■^<nul^&ping /n 0 127.1^>nul^&
rem %a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a% 每隔一秒输出一个■
pause>nul
echo.
echo 程序正在初始化. . . 
echo.
echo ┌──────────────────────────────────────┐
echo └──────────────────────────────────────┘
for /f "skip=4 tokens=2 delims=>R" %%a in ('reg query hkcr\.bat /ve') do set \t=%%a
rem %\t%是tab符号
set /p =%\t%<nul
rem 上面的一句使光标停在上下两个横线中间了！！？？
set/p= 　<nul&%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%%a%
echo   100%%
pause >nul