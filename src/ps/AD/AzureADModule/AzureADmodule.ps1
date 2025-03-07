Get-InstalledModule azure*
# if not already installed, install the module
Install-Module -Name AzureAD
# Import the module
Import-Module AzureAD
# Connect to Azure AD
Connect-AzureAD -AccountId kathurka@kapildev1.onmicrosoft.com
# Get all users
Get-AzureADUser
# Get all groups
Get-AzureADGroup
# Get all applications
Get-AzureADApplication
# Get all service principals
Get-AzureADServicePrincipal
# Get all devices
Get-AzureADDevice
# Get all roles
Get-AzureADDirectoryRole
# Get all role assignments
Get-AzureADDirectoryRoleMember
# Get all role definitions
Get-AzureADDirectoryRoleTemplate
# Get all domains
Get-AzureADDomain


# Users related configs
# create new user
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Password123"
New-AzureADUser -DisplayName "AzureAD Module User" -UserPrincipalName "AadModUser@kapildev1.onmicrosoft.com" `
  -AccountEnabled $true -MailNickName "azureAdModUser" -PasswordProfile $PasswordProfile `
  -PasswordPolicies "DisablePasswordExpiration"

get-azureaduser
Get-AzureADUser -ObjectId "9818ef56-5fdd-40af-8b02-67d933a1bb74"
Get-AzureADUser -ObjectId AadModUser@kapildev1.onmicrosoft.com
Get-AzureADUser | Where-Object { $_.UserPrincipalName -eq "AadModUser@kapildev1.onmicrosoft.com" }

Set-AzureADUser -ObjectId "9818ef56-5fdd-40af-8b02-67d933a1bb74" -DisplayName "AzureAD Module User Updated"
Get-AzureADUser -ObjectId AadModUser@kapildev1.onmicrosoft.com

# remove user
Remove-AzureADUser -ObjectId "9818ef56-5fdd-40af-8b02-67d933a1bb74"
Get-AzureADUser -ObjectId "9818ef56-5fdd-40af-8b02-67d933a1bb74"

# Groups related configs
# create new group
New-AzureADGroup -DisplayName "AzureAD Module Group" -MailEnabled $false -MailNickName "azureAdModGroup" -SecurityEnabled $true
Get-AzureADGroup
Get-AzureADGroup -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8"
Get-AzureADGroup | Where-Object { $_.DisplayName -eq "AzureAD Module Group" }

Set-AzureADGroup -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8" -DisplayName "AzureAD Module Group Updated"
Get-AzureADGroup -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8"

# add user to group
Add-AzureADGroupMember -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8" -RefObjectId "5dd29d09-4a8d-46a5-9803-30a91fe54e08"
Get-AzureADGroupMember -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8"

# remove user from group
Remove-AzureADGroupMember -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8" -MemberId "5dd29d09-4a8d-46a5-9803-30a91fe54e08"
Get-AzureADGroupMember -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8"

# remove group
Remove-AzureADGroup -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8"
Get-AzureADGroup -ObjectId "6d9476ec-4c65-4078-bee3-2bab31df18b8"
