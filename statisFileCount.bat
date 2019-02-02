@echo off&setlocal enabledelayedexpansion
rem 统计指定路径文件夹里每个小文件夹中的文件数量
cd.>dirfiles.txt
for /d %%a  in ("E:\dataSumitted\gzrpttm\*.*") do (
set n=0
for /f %%B in ('dir /a-d /b /s "%%a"') do set /a n+=1
echo %%a    !n! >>dirfiles.txt
)