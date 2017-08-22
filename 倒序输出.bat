@echo off 
:star
set output=
set /p input=ÇëÊäÈë:
:loop
if not "%input%"=="" (
set output=%output%%input:~-1%
set input=%input:~0,-1%
goto :loop)
echo.
echo        %output% 
pause >nul&goto :Star