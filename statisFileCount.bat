@echo off&setlocal enabledelayedexpansion
rem ͳ��ָ��·���ļ�����ÿ��С�ļ����е��ļ�����
cd.>dirfiles.txt
for /d %%a  in ("E:\dataSumitted\gzrpttm\*.*") do (
set n=0
for /f %%B in ('dir /a-d /b /s "%%a"') do set /a n+=1
echo %%a    !n! >>dirfiles.txt
)