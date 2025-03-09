# Install Google Chrome using PowerShell

$InstallerURL = "https://dl.google.com/chrome/install/latest/chrome_installer.exe"
$InstallerPath = "$env:TEMP\chrome_installer.exe"

# Download the installer
Invoke-WebRequest -Uri $InstallerURL -OutFile $InstallerPath

# Run the installer silently
Start-Process -FilePath $InstallerPath -ArgumentList "/silent /install" -Wait
