@echo off
:: Verify if the backup folder exists
if exist C:\Backup\ImportantFiles (
    echo Backup verification successful!
) else (
    echo Backup missing or corrupted!
)
pause
