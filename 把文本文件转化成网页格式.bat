@echo off
cls
echo ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
echo.
echo                       正在转化，请稍候...
echo.
echo           等待的时间长短，要看你要转化的文件数量而定。
echo.
echo ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
for /f "delims=" %%i in ('dir *.txt /a /b') do (
echo ^<html^>^<body^>^<pre^>>>"%%~ni.htm"
type "%%i">>"%%~ni.htm"
echo ^</pre^>^</body^>^</html^>>>"%%~ni.htm"
)
cls
echo ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
echo.
echo             操作成功结束，请按回车键退出该批处理...
echo.
echo ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
set /p tmp=
exit
type "%%i">>"%%~ni.htm" 其中，type可以改为more
pre 标签保证了文本文件格式不会改变

 

