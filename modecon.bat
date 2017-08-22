@echo off 
color fc 
set a=28 
set b=1
:re
set /a a+=4
set /a b+=1
mode con: cols=%a% lines=%b% 
if %a% lss 100 goto re
pause