#批量添加文件后缀，放到需要修改的目录下，执行即可
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /b') do ren "%%i" "%%i".jpg
pause