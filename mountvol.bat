@echo off&setlocal enabledelayedexpansion
for /l %%i in (1 1 1000) do set han=000%%i&set mulu=!han:~-4!&echo !mulu!>>test.txt
pause
 
mountvol 命令隐藏文件，绝！2010年08月03日 星期二 上午 05:21先看看mountvol命令的帮助：

创建、删除或列出卷装载点。

MOUNTVOL [drive:]path VolumeName
MOUNTVOL [drive:]path /D
MOUNTVOL [drive:]path /L

    path        指定装入点将驻留的现有 NTFS 目录。
    VolumeName 指定装入点的目标的卷名称。
    /D          从指定的目录中删除卷装入点。
    /L          列出指定目录的已装入的卷名称。

当前装载点的 VolumeName 可能值为:

    \\?\Volume{cb71d4ba-a569-11dc-a338-806d6172696f}\
        C:\

    \\?\Volume{fa292ab8-212f-11de-acd1-806d6172696f}\
        D:\

    \\?\Volume{15f789de-d3f4-11de-9aba-806d6172696f}\
        G:\

    \\?\Volume{15f789df-d3f4-11de-9aba-806d6172696f}\
        I:\

    \\?\Volume{1bc655fb-2365-11df-bd75-0015588fec43}\
        E:\

我用E盘来说明。

执行命令：

mountvol e: /d

哈哈，E盘不见了，桌面上E盘里的快捷方式也说找不到文件了，就达到了隐藏的目的。

记住，这句命令动不得系统盘！！

如何恢复？

在命令行中，还是输入Mountvol /?，

    \\?\Volume{1bc655fb-2365-11df-bd75-0015588fec43}\
        E:\

　　这一句不是会丢的，这时，你就可以这样来恢复:

   mountvol e: \\?\Volume{1bc655fb-2365-11df-bd75-0015588fec43}\

　　这样隐藏文件，需要专门腾出一个盘来隐藏，但是，里面的目录，文件格式，就随你了。

　　再说一下，注意一点，千万别动系统盘，切记！
 

