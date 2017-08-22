@echo off
for %%i in (*.pdf) do (
p2wagent.exe  --xp --dest=%%i.doc --src="%%i"     
)
echo.
echo.
echo ×ª»»Íê±Ï£¡&pause>nul                            
