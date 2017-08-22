@echo off&setlocal enabledelayedexpansion
:start
::发件人
set /p sender=请输入发件人地址:
set /p pwd=请输入发件人密码:
::收件人
set /p recever=请输入收件人地址:
set /p subject=请输入主题：
set /p attach=请输入附件路径:
set /p content=请输入邮件内容路径:


if not defined !sender! (

if not defined !pwd! (
blat -install smtp.163.com s740011611@163.com
blat !content! -to !recever! -u s740011611@163.com -base64 -charset Gb2312 -pw 123456 -subject !subject! -attach !attach! 
)) else (

blat -install smtp.163.com !sender!
blat !content! -to !recever! -u !sender! -base64 -charset Gb2312 -pw !pwd! -subject !subject! -attach !attach! 
)
)
::去掉双引号会出现命令语法错误的提示！

echo.
echo.
echo 发送完毕！再发请按任意键！&pause>nul&cls&goto start
