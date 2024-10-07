# Run with elevated privlages
. .\env.ps1

Connect-MgGraph -Scopes "User.ReadWrite.All", "Directory.ReadWrite.All"

# Create a new user
$newUser = New-MgUser -DisplayName "User NoPAL2" `
                      -UserPrincipalName "unopal2@kapildev1.onmicrosoft.com" `
                      -MailNickname "unopal2" `
                      -PasswordProfile @{ Password = $env:PASSWORD; ForceChangePasswordNextSignIn = $false } `
                      -UsageLocation 'IN' `
                      -AccountEnabled
                      
Write-Host "User created: $($newUser.UserPrincipalName)"

# Get a list of all available license SKUs
$licenses = Get-MgSubscribedSku

# Display the available SKUs (License details)
$licenses | Format-Table SkuPartNumber, SkuId

# Get the SKU IDs of the licenses you want to assign (e.g., Office 365 without Power Automate)
$officeLicense = $licenses | Where-Object { $_.SkuPartNumber -eq "DEVELOPERPACK_E5" }  # Example SKU for Office 365 Business
# $flowLicense = $licenses | Where-Object { $_.SkuPartNumber -eq "FLOW_FREE" }  # Example SKU for FLOW_FREE

# Assign the Office 365 license without Power Automate
Set-MgUserLicense -UserId $newUser.Id -AddLicenses @{SkuId=$officeLicense.SkuId} -RemoveLicenses @()
# Set-MgUserLicense -UserId $newUser.Id -AddLicenses @{SkuId=$officeLicense.SkuId} -RemoveLicenses @('FLOW_FREE')


