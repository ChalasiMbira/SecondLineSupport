# File Integrity Monitoring
# This script checks if a file has been modified by comparing its hash.

$FilePath = "C:\Important\config.txt"  # Change this path to the file you want to monitor
$SavedHash = "3A6A4F9B8D9C5E7E1A3B5D9E7F6A4C3D"  # Replace with the correct hash

# Generate the current hash
$CurrentHash = Get-FileHash -Path $FilePath -Algorithm SHA256 | Select-Object -ExpandProperty Hash

# Compare hashes
if ($CurrentHash -ne $SavedHash) {
    Write-Host "WARNING: The file integrity has been compromised!" -ForegroundColor Red
} else {
    Write-Host "File is intact. No changes detected." -ForegroundColor Green
}
