Get-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"

Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "UnwantedApp" -Value ""
