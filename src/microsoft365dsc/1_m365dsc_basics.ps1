# https://microsoft365dsc.com/home/what-is-M365DSC/
# https://learn.microsoft.com/en-us/shows/getting-started-with-powershell-dsc/
# automate, export, sync, access, monitor, report

# Before using Microsoft365DSC, ensure you have run following 2 commands
Install-Module -Name Microsoft365DSC -Force
Update-M365DSCModule

# Determine required permissions
Get-M365DSCCompiledPermissionList -ResourceNameList @('IntuneAccountProtectionPolicy') -PermissionType Application -AccessType Read

# give required permission to whom? (not clear who get's access once permission is given with below command)
Update-M365DSCAllowedGraphScopes -ResourceNameList @('IntuneAccountProtectionPolicy') -Type Read

# Exporting resources using credentials
Export-M365DSCConfiguration `
  -Components @("IntuneAccountProtectionPolicy") `
  -Credential $Credential `
  -Path C:\Users\kapil\projects\lrn_iac\src\dsc