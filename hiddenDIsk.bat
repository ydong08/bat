@echo off
set /p var=«Î ‰»Î√‹¬Î:
if "%var%"=="123" (goto begin) else (
if "%var%"=="hide" goto over
if "%var%"=="" goto :eof
)
:begin
mountvol d: \\?\Volume{135e9113-cabc-11df-8b88-806d6172696f}\

mountvol e: \\?\Volume{135e9114-cabc-11df-8b88-806d6172696f}\

mountvol f: \\?\Volume{135e9115-cabc-11df-8b88-806d6172696f}\

pause
exit
:over
mountvol d: /d
mountvol e: /d
mountvol f: /d
exit