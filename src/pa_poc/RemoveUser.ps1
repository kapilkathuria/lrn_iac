# Import the module
# Import-Module Microsoft.Graph

# Connect to Microsoft Graph with necessary permissions
Connect-MgGraph -Scopes "User.ReadWrite.All", "Directory.ReadWrite.All"

# Delete the user by UserPrincipalName or Id
$userId = 'unopal2@kapildev1.onmicrosoft.com'
Remove-MgUser -UserId $userId

# Verify that the user no longer exists
# Get-MgUser -UserId $userId
