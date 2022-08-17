@echo off 
REM Path to WinRAR executable in Program Files. Change if location is different
REM ---------------------- WinRAR Directory ------------------------------------
set rardirectory="C:\Program Files\WinRAR\Rar.exe"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Par2 Directory --------------------------------------
REM set par2directory="C:\Users\Martin\Desktop\ngPost_bluray\par2j64.exe"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Par2 Directory --------------------------------------
set par2directory="C:\Users\Martin\Desktop\ngPost_bluray\par2.exe"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Source Directory ------------------------------------
echo "Source phat"
set /p source=" "
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Folder Name -----------------------------------------
echo "Folder name"
set /p foldername=" "
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Arcive Name -----------------------------------------
echo "Arcive name"
set /p archivename=" "
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Destination Directory -------------------------------
echo "Destination phat"
set destination="C:\Users\Martin\Desktop\ngPost_bluray\tmp\%foldername%"
REM ----------------------------------------------------------------------------
REM 
REM ---------------------- Check Directory -------------------------------------
if not exist %destination% mkdir %destination%
REM ----------------------------------------------------------------------------

%rardirectory% a -ep1 -r -idp -m0 -v100m %destination%\%archivename% %source%

REM %par2directory% c -ls -m1024 -rr15 %destination%\%archivename% %destination%\%archivename%*.rar

%par2directory% c -l -q -m1024 -r15 %destination%\%archivename% %destination%\%archivename%*.rar

pause

REM --------------------------- exit -------------------------------------------

EXIT /B 0
