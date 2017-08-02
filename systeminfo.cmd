@echo off
color 0a
:SYSTEMINFO
cls
type title.txt
echo.
echo Select an option to continue:
echo 1: msinfo32
echo 2: DirectX Diagnostic Tool (dxdiag)
echo 3: systeminfo
echo 4: Back to main menu
echo 666: reset application
echo.
set /p SYSINF=Type a number then press ENTER:
if %SYSINF%==1 start "msinfo32" "msinfo32"
if %SYSINF%==2 start "dxdiag" "dxdiag"
if %SYSINF%==3 systeminfo
if %SYSINF%==4 mainmenu.com
if %SYSINF%==666 regmod.bat
goto SYSINF

:WINEX
cls
type title.txt
echo.
echo If this is the first time that you are running the Windows Experience Index, your system may lag or slow down.
echo This is because of the still heavy workload that these benchamrks contain.
echo.
echo This benchmark is techinically not supported anymore (its UI was removed in Win8) but still works perfectly fine in the latest version of Windows.
echo.z
echo I recommend having Task Manager open to monitor hardware utilization.
echo.
echo If you agree with the above, then press any key to run the benchmarks or view your scores. Otherwise, close this window now.
pause >nul
cls
type title.txt
echo.
echo Running Benchmarks...
winsat prepop
cls
echo Here are your scores!
powershell Get-WmiObject -Class Win32_WinSAT
echo Press 'any' key to go back to the menu.
pause >nul
mainmenu.com