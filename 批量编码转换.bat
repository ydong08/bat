@echo off
color 0a
(ECHO.F100,102 EF BB BF
ECHO.RCX
ECHO.3
ECHO.NTMP._
ECHO.W
ECHO.Q
)|DEBUG
htox32c /ip *.htm
for /f "delims=" %%i in ('dir /a /b *.txt') do (
copy /b TMP._ +%%i %%i._
copy /b %%i._  %%i
)
del *._
pause 
