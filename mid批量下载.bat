@echo off
for /f "tokens=1,2" %%i in (result.txt) do curl -o "%%j".txt "%%i"
for /f "delims=" %%i in ('dir /b *.txt') do findstr "Filename" %%i|geturls>%%~ni.]
for /f "delims=" %%i in ('findstr mid *.]') do echo %%i>>url.txt
for /f "tokens=1,2" %%i in (mid-url.txt) do curl -o "%%i".mid  "%%j"
pause