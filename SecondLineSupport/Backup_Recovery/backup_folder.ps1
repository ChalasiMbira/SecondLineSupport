# Define source and backup paths
$source = "C:\Users\cash\Documents\ImportantFiles"
$backup = "C:\Backup\ImportantFiles_$(Get-Date -Format 'yyyyMMdd_HHmmss')"

# Copy the folder
Copy-Item -Path $source -Destination $backup -Recurse

Write-Host "Backup completed: $backup"
