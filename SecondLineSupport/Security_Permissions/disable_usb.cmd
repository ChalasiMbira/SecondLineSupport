@echo off
:: Disable USB ports by changing registry value
reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 4 /f
echo USB ports disabled!
pause
