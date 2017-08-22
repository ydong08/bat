@echo off
for /f "delims=" %%i in ('dir /b^|findstr /C:еЗа©') do @echo %%i
pause