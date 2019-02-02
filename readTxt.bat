@echo on & setlocal EnableDelayedExpansion
set j=0
for /f "delims=""" %%i in (E:\dataSumitted\dos\charlist_all_22.txt) do (
	set con!j!=%%i
	call set lineStr=%%con!j!%%
	echo !lineStr!
)
pause