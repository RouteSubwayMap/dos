@echo off&setlocal enabledelayedexpansion
rem 统计大文件夹里每个小文件夹中的文件数量
%1 %0 :|more /t20 >文件.txt&start 文件.txt&exit
for /f "delims=U" %%a in ('cmd /u /c echo 唉') do set "tab=%%a"
for /d %%a in (*) do (
    set n=0
    for /f "delims=" %%a in ('dir /b/s/a-d "%%a\"') do set/a n+=1
    echo,%%a%tab%!n!
)