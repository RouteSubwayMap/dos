# & cls &
 
(for /f "delims=" %%a in ('dir/a-d/b/s %1') do @echo %%~za) | gawk.exe -v path=%~n1 -f %0 >con & pause & exit
{sum+=$0}
END{
    printf "%s文件夹总大小为: \n%.2f byte\n%.2f MB\n%.2f GB\n",path,sum,sum/1024/1024,sum/1024/1024/1024
}
