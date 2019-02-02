@echo on & setlocal EnableDelayedExpansion

for /f "tokens=1,2 delims==" %%a in (E:\dataSumitted\dos\config.txt) do (
	call set From_Ip=%%b
	
	echo !From_Ip!
	
)

pause