@echo off
:: Uninstall Google Chrome
wmic product where "name like 'Google Chrome'" call uninstall /nointeractive
pause
