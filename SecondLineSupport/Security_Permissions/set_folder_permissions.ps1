# Set folder permissions to allow only the current user

$Folder = "C:\Users\cash\Documents\PrivateData"
$User = $env:UserName
icacls $Folder /inheritance:r /grant "$User:(OI)(CI)F"
Write-Host "Folder permissions set successfully!"
