@echo off
setlocal enabledelayedexpansion
rem ��ʾ��ǰ�ļ����µ��ļ��к������ļ���������û��ѭ������ÿ���ļ��������ļ��е��ļ�
(for /d %%a in (E:\dataSumitted\gzrpttm\*) do (

  set/a n=z=0
  pushd "%%a"
  for %%b in (*.*.) do (
    set/a n+=1,z+=%%~zb
  )
  set/a z ">>=" 10
  popd
  echo;%%a [!n!��!z!kb]
))>ͳ�ƽ��.txt
pause