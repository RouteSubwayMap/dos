@echo off &setlocal enabledelayedexpansion
rem ͳ��ָ��·���ļ���(�����ļ�)���ļ������ʹ�С
(for /f "delims=" %%i in ('dir "E:\dataSumitted\gzrpttm" /s/b/l/ad') do (
cd "%%~fsi"
set/a a=0,n=0
for /f "delims=" %%a in ('dir  /b/l/aa') do (
set/a a+=1,n+=%%~za 2>nul
)
set/a n/=1024
echo.%%~fi : !a! : !n!KB
))>statisResult.txt
pause

 