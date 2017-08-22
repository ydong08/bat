@echo off
for /f "delims=][ tokens=2" %%i in ('ping img.518g.biz^|findstr /C:"["') do (
echo [Server]>server.ini
echo Ip=%%i>>server.ini
echo IPX=01875380.00016C61558F>>server.ini
) 
pause
exit
½á¹û£º
[Server]
Ip=58.40.116.12
IPX=01875380.00016C61558F
