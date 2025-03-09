# Create a new local user

New-LocalUser -Name "SupportUser" -Password (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -FullName "Support User" -Description "Support account"
# Add user to Administrators group
Add-LocalGroupMember -Group "Administrators" -Member "SupportUser"
Write-Host "User created successfully with admin privileges!"
