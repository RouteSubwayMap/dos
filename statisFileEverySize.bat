@echo off ͳ���ļ���С
setlocal enabledelayedexpansion
 
for /f "delims=" %%a in ('dir "E:\dataSumitted\gzrpttm" /a-d/s/b') do (
    set /a FileSize=%%~za/1024
    rem echo "%%~a" �Ĵ�С��!FileSize! KB
    rem ���Ҫ�ѽ��������ı��������������������������������������
    echo "%%~a" �Ĵ�С��!FileSize! KB>>FileSize.log
)
pause