@echo off
curl -o 1.htm  http://www.deskcity.com/search/views/[1-21]/all.html
type  *.htm>>initial.txt
for /f "delims=	" %%i in (initial.txt) do echo %%i>>target.txt
findstr  /C:target   target.txt>>list.txt
for  /f   "delims== tokens=2"  %%i in (list.txt) do echo %%i>>list2.txt
for  /f    %%i in (list2.txt) do echo %%~i>>list3.txt
for  /f %%i in (list3.txt) do echo http://www.deskcity.com%%i>>url1.txt
wget -i url1.txt
setlocal  ENABLEDELAYEDEXPANSION
for /f "tokens=5 delims==?" %%i in ('findstr /C:"/picture/image" *.html') do (
		set n=%%i
		set n=!n:-smal.GIF?=.gif!
		set n=!n:-small.JPG?=.jpg!
		set n=!n:-small.JEPG?=.jpeg!
                                set n=!n:-smal.jpg?=.jpg!
                                set n=!n:-smal.jepg?=.jepg!
                                set n=!n:-smal.gif?=.gif!
		set n=!n:"=!
                                 set n=!n:-small=!
		echo !n!>>url2.txt
)
endlocal
for /f %%i in (url2.txt) do echo http://www.deskcity.com%%i>>deskcity2.txt
wget -i deskcity2.txt
del *.htm
del *.txt
start .
pause
rem 第二个
@echo off
color 0a
curl -o  #1.htm http://desk.zol.com.cn/list.php?sub_id=3^&size_type=3^&page=[1-406]
setlocal enabledelayedexpansion
for /f  "delims== tokens=5" %%i in ('findstr /C:mid_ *.htm') do  (
set str=%%i
set str=!str:mid_=big_!
set str=!str:"=!
set str=!str: width=!
echo !str!>>url.txt
)
endlocal
wget -i url.txt
pause
rem 第三个
@echo off
curl  -o 1.htm http://www.sophoto.cn/showgallery.php?cat=525^&si=^&page=1^&sort=1^&perpage=12^&password=^&ppuser=^&what=^&name=^&=
setlocal  ENABLEDELAYEDEXPANSION
for /f "tokens=9 delims==" %%i in ('findstr /r "http://www\.sophoto\.cn/data/" *.htm') do (
		set n=%%i
		set n=!n:-thumb.gif" alt=.gif!
		set n=!n:-thumb.jpg" alt=.jpg!
		set n=!n:-thumb.jpeg" alt=.jpeg!
		set n=!n:"=!
		echo !n! >>list.txt
)
endlocal
