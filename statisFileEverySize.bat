@echo off 统计文件大小
setlocal enabledelayedexpansion
 
for /f "delims=" %%a in ('dir "E:\dataSumitted\gzrpttm" /a-d/s/b') do (
    set /a FileSize=%%~za/1024
    rem echo "%%~a" 的大小：!FileSize! KB
    rem 如果要把结果输出到文本，请屏蔽上面那行命令，并启用下面那行命令
    echo "%%~a" 的大小：!FileSize! KB>>FileSize.log
)
pause