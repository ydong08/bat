@echo off&setlocal enabledelayedexpansion
for /f "tokens=1,2,3,4,5 delims=. " %%a in ('sort ip.txt') do (
  if %%d lss 100  set A=A00%%d&set host=!A:~-3!&echo !A! %%a.%%b.%%c.%%d %%e>>temp.txt
  if %%d gtr 100 (if %%d lss 200 set B=B%%d&echo !B! %%a.%%b.%%c.%%d %%e>>temp.txt)
  if %%d gtr 200 (if %%d lss 254 set C=C%%d&echo !C! %%a.%%b.%%c.%%d %%e>>temp.txt)
)
sort temp.txt>>result.txt
pause