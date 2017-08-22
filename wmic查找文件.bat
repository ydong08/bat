@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
for /f %%a in ('"wmic logicaldisk where compressed="false" get caption|find /i /v "caption"|sort /r"') do (
set /a y+=1,x+=1&&set _disk!x!=%%a&&set _scan=%%a; !_scan!)
::以上是调用WMIC来输出可以访问的分区，通过find过滤后再使用sort/r来反向排序。然后执行变量x,y的输出累计，并将分区号赋于_disk!x!，还将所有分区号累计在_scan变量里
:conf1
set /p _filename=filename(*):
::以上是输入要查找的文件名称，可以使用通配符*，但不能使用/\之类的，这里还关一个过滤
:conf2
set /p _scanconf=DISK-(All; %_scan%):
::选择查找盘符所有或某个分区
if /i "%_scanconf:~0,1%" == "a" goto alldisk
if not "%_scanconf:~0,1%" == "" (set _disk|findstr /e /i "=%_scanconf:~0,1%:">nul&&goto scandisk)
::以上不为a不为空时查询是否有适配的变量存在，若存在则跳转
goto conf2

:scandisk
call :scan1 "%_scanconf:~0,1%:" "%_filename%"
::某分区查找
goto end

:alldisk
if not defined _disk%x% goto :eof
::以上避免变量出错
call :scan1 !_disk%x%! "%_filename%"
set /a x-=1,1/x 2>nul&&goto alldisk
::以上使用了set/a的某些特性来计数
goto end

:scan1
for /r %~1 %%c in ("%~2*") do echo %%c
::查找分区
::(for /r %_disk0% %%c in (%_filename%) do echo %%c)|more /e /c
goto :eof

:end
pause
