# Make sure you're connected to Microsoft Graph first
Connect-MgGraph -Scopes "User.Read.All", "Directory.Read.All"

# Get all users
$users = Get-MgUser -All

# Initialize an array to store user license info
$userLicenseData = @()

# Loop through each user to get their license information
foreach ($user in $users) {
    # Get the user's license details
    $licenses = Get-MgUserLicenseDetail -UserId $user.Id
    
    # For each license, capture user and license details
    foreach ($license in $licenses) {
        $userLicenseData += [pscustomobject]@{
            UserPrincipalName = $user.UserPrincipalName
            DisplayName = $user.DisplayName
            LicenseSkuId = $license.SkuId
            LicenseSkuPartNumber = $license.SkuPartNumber
        }
    }
}

# Export user license data to CSV
$userLicenseData | Export-Csv -Path "M365UserLicenses.csv" -NoTypeInformation

# Display the license data in PowerShell console
$userLicenseData
