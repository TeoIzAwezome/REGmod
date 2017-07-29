@echo off
cls
title REGmod
type title.txt
echo.
echo Current value of this item:
REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Logo
echo.
echo Information on key:
echo Specifies the path to the manufacturer's logo. The logo must be located on the destination computer, and it must be a .bmp file. Path_to_logo is a string that has a maximum length of 259 characters.
echo.
echo The logo must be in 32-bit color. Logos that are larger than 120x120 pixels are scaled to 120x120.
echo.
set /p regmod="Enter new value: "
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Logo /t REG_SZ /d %regmod%
