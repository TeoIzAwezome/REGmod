@echo off
cls
title REGmod
type title.txt
echo.
echo Current value of this item:
REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportHours
echo.
echo Information on key:
echo. Specifies the hours that support is available from an OEM.
echo.
set /p regmod="Enter new value: "
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportHours /t REG_SZ /d %regmod%
echo.
echo New value of this key:
REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Model
echo.
echo Done! Press 'any' key to go back to menu.
pause >nul
OEMInformation
