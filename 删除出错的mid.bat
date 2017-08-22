@echo off
for /f "delims=" %%i in ('dir /b *.mid') do (
findstr "Error" %%i&&del %%~nxi
)
pause
::用&&，前者执行成功时才执行后面的命令！