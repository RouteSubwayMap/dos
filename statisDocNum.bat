 
color 3a 
title 实时统计文件数量
:Getnewcount 
dir "E:\dataSumitted\gzrpttm_source\gzrpttm\sys20190107" /s /W /B /A-D | find /V /C "">s1.txt 
goto Getnewcount 
