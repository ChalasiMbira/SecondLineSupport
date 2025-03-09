# Schedule a backup task to run daily at 2 AM
$TaskName = "DailyBackup"
$Action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-File C:\Backup\backup_folder.ps1"
$Trigger = New-ScheduledTaskTrigger -Daily -At 2AM
Register-ScheduledTask -TaskName $TaskName -Action $Action -Trigger $Trigger -User "SYSTEM"
Write-Host "Backup task scheduled successfully!"
