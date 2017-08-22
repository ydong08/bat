@echo off
color 0a
:a
cls
set /p str=please input your url
curl -o test.txt "%str%"
sed -i -n "s/^.*\(chapter_[0-9]\{3,8\}_[0-9]\{3,8\}\.html\).*$/\1/p"  test.txt
for /f "delims=" %%i in (test.txt) do echo http://vip.book.sina.com.cn/book/%%i>>url.txt
wget -i url.txt
htox32c /ip *.htm
del *.htm
pause
