@echo off
cls
title REGmod
type title.txt
echo.
echo Current value of this item:
REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer
echo.
echo Information on key:
echo. Specifies the name of the manufacturer.
echo.
set /p regmod="Enter new value: "
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer /t REG_SZ /d %regmod%
echo.
echo New value of this key:
REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Model
echo.
echo Done! Press 'any' key to go back to menu.
pause >nul
OEMInformation