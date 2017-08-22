@echo off
curl -o 1.html  http://www.tianya.cn/publicforum/articleslist/0/free.shtml
findstr /C:shtml 1.html>>url.txt
for /f "delims=' tokens=2" %%i in (url.txt) do echo %%i>>url2.txt
for /f "delims=/.  tokens=9" %%i in (url2.txt) do echo %%i>>122.txt
for /f %%i in (122.txt) do (
curl -O  http://www.tianya.cn/publicforum/content/free/1/%%i.shtml
)
pause