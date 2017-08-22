@echo off 
copy script.txt awk.txt>nul
color 0a
for /l %%i in (1 1 25) do >>tmp.txt set /p= %%i<nul
sed -i "s/ /\+/g" tmp.txt
sed -i "s/[0-9]*/\$&/g" tmp.txt
sed -n -i "s/^\$.\(.*\)/print \1/p" tmp.txt
type tmp.txt>>script.txt
echo.>>script.txt
echo }>>script.txt
del tmp.txt
gawk -f script.txt test.txt>>result.txt
del script.txt
ren awk.txt script.txt
pause