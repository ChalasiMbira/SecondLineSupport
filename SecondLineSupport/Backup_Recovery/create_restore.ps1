# Create a system restore point
Checkpoint-Computer -Description "BackupRestorePoint" -RestorePointType "MODIFY_SETTINGS"
Write-Host "System restore point created successfully!"
