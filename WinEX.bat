@echo off
cls
type title.txt
echo.
echo If this is the first time that you are running the Windows Experience Index, your system may lag or slow down.
echo This is because of the still heavy workload that these benchamrks contain.
echo.
echo This benchmark is techinically not supported anymore (its UI was removed in Win8) but still works perfectly fine in the latest version of Windows.
echo.
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
goto MAINMENU