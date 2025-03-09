# Change the password of an existing user

$NewPassword = ConvertTo-SecureString "NewPassword123!" -AsPlainText -Force
Set-LocalUser -Name "SupportUser" -Password $NewPassword
Write-Host "Password changed successfully!"
