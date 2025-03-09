# Set folder permissions for a user

$FolderPath = "C:\RestrictedFolder"
$User = "DOMAIN\username"

# Grant user Read & Execute permissions
icacls $FolderPath /grant $User:"(OI)(CI)RX"
