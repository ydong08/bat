@ECHO OFF
　　SETLOCAL EnableExtensions
　　CALL :ProcDelay 200
　　ECHO %TIME%
　　GOTO :EOF
　　:ProcDelay delayMSec_
　　SETLOCAL EnableExtensions
　　FOR /f "tokens=1-4 delims=:. " %%h IN ("%TIME%") DO SET start_=%%h%%i%%j%%k
　　:_procwaitloop
　　FOR /f "tokens=1-4 delims=:. " %%h IN ("%TIME%") DO SET now_=%%h%%i%%j%%k
　　SET /a diff_=%now_%-%start_%
　　IF %diff_% LSS %1 GOTO _procwaitloop
　　ENDLOCAL & GOTO :EOF
　　:EOF
