@echo off
setlocal enabledelayedexpansion
rem 显示当前文件夹下的文件夹和其中文件数量，但没有循环计算每个文件夹中子文件夹的文件
(for /d %%a in (E:\dataSumitted\gzrpttm\*) do (

  set/a n=z=0
  pushd "%%a"
  for %%b in (*.*.) do (
    set/a n+=1,z+=%%~zb
  )
  set/a z ">>=" 10
  popd
  echo;%%a [!n!个!z!kb]
))>统计结果.txt
pause