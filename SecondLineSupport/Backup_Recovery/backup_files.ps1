# Backup files to a destination folder

$Source = "C:\ImportantFiles"
$Backup = "D:\Backup"

# Copy all files with logging
Copy-Item -Path $Source\* -Destination $Backup -Recurse -Force | Out-File C:\backup_log.txt
