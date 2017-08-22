::寒夜孤星写的
@echo off&setlocal enabledelayedexpansion
for /f "delims=" %%a in (a.txt) do call:han "%%a"
for /l %%a in (1,1,%Ye%) do set Xing=　!Xing!
for /f "delims=" %%a in (a.txt) do (
        set Han=%%a%Xing%
        for /l %%b in (0,1,%Ye%) do set #%%b=^|!Han:~%%b,1!!#%%b!

)
set/a Ye-=1
(for /l %%a in (0,1,%Ye%) do echo !#%%a!)>b.txt
exit
:han
set Han=%~1
if defined Ye (set Gu=%Ye%) else set Gu=0
:ye
if "!Han:~%Gu%,1!"=="" (
        if "%Ye%"=="" set Ye=%Gu%
        if %Gu% gtr %Ye% set Ye=%Gu%
        goto:eof
)
set/a Gu+=1
goto:ye
rem  用┇分割每行效果好