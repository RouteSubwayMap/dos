@echo off&setlocal enabledelayedexpansion
rem ͳ�ƴ��ļ�����ÿ��С�ļ����е��ļ�����
%1 %0 :|more /t20 >�ļ�.txt&start �ļ�.txt&exit
for /f "delims=U" %%a in ('cmd /u /c echo ��') do set "tab=%%a"
for /d %%a in (*) do (
    set n=0
    for /f "delims=" %%a in ('dir /b/s/a-d "%%a\"') do set/a n+=1
    echo,%%a%tab%!n!
)