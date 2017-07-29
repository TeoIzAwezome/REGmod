@echo off
title REGmod | ver. 0
cls
color 0a
type title.txt
echo.
echo A tool for modifying system information such as your CPU or Windows version.
echo.
echo (note that REGmod only changes the name of things, it doesn't
echo add or remove any files or chnage your actual hardware specs.)
echo.
echo.
echo To continue, you must view and agree to the license
pause
cls

:INITLICENSE
type title.txt
echo.
type LICENSE
echo.
echo.
set /p license=Do you agree to the license? (Y/n)
if %license%==y goto MAINMENU
if %license%==Y goto MAINMENU
if %license%==yes goto MAINMENU
if %license%==YES goto MAINMENU
if %license%==n goto LICENSEDISAGREED
if %license%==N goto LICENSEDISAGREED
if %license%==no goto LICENSEDISAGREED
if %license%==NO goto LICENSEDISAGREED
if %license%==666 regmod.bat
goto INITLICENSE

:LICENSEDISAGREED
cls
type title.txt
echo.
echo REGmod cannot run because you have not agreed to the license.
echo.
echo Please exit REGmod now and relaunch it if you change your mind.
goto INFINIPAUSE

:MAINMENU
cls
type title.txt
echo.
echo Select an option to continue:
echo 1: View current system information.
echo 2: Windows Experience Index
echo 3: Use the wizard.
echo 4: What is REGmod?
echo 5: App Info
echo 6: View license
echo 7: Exit.
echo 666: reset application
echo.
set /p MAIN=Type a number then press ENTER:
if %MAIN%==1 GOTO SYSTEMINFO
if %MAIN%==2 GOTO WINEX
if %MAIN%==6 GOTO LICENSE
if %MAIN%==7 exit
if %MAIN%==666 regmod.bat

goto MAINMENU

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
if %SYSINF%==4 GOTO MAINMENU
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

:INFOMENU

:LICENSE
cls
type title.txt
echo.
type LICENSE
echo.
echo Press 'any' key to go back.
pause >nul
goto MAINMENU

:INFINIPAUSE
pause >nul
goto INFINIPAUSE