@echo off &setlocal enabledelayedexpansion
echo.
set /p dirPath=please input folder path:
echo %dirPath%
echo.
for /d %%a in (%dirPath%\*) do (
  set/a z1=z2=z3=zz=0
  for /f "tokens=3 delims= " %%t in ('dir /s /a /-c "%%a" ^|findstr ���ļ�') do (
  rem set /a zz+=%%t
  set zz=%%t
  rem echo;%%a  %%t 
  
  set d=bit
if !zz! GEQ 1024 set /a z1=!zz!">>10"&set d=KB
if !z1! GEQ 1024 set /a z2=!z1!">>10"&set d=KB
if !z2! GEQ 1024 set /a z3=!z2!">>10"&set d=KB
  )  

echo �ļ���:%%a  %%b,��С�ǣ�!z3!GB = !z2!MB = !z1!!d!
)
for /f "tokens=1-4 delims= " %%i in ('dir /a /-c %dirPath% ^|findstr ���ļ�') do (
  set/a ss=%%k
  set/a ss>>=10,d=bit
   
  if !ss! GEQ 1024 set /a "s1=!ss!>>10"&set d=KB
  if !s1! GEQ 1024 set /a "s2=!s1!>>10"&set d=KB
  if !s2! GEQ 1024 set /a "s3=!s2!>>10"&set d=KB
  echo ��"%dirPath%"��Ŀ¼���� %%i %%j ,�ܹ���СΪ:!s3!GB = !s2!MB = !s1!!d!
  )
 
pause
 