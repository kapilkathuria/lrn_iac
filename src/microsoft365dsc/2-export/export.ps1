# Generated by Microsoft365DSC from https://export.microsoft365dsc.com on 20/1/2024, 3:49:14 pm
# Visit https://microsoft365dsc.com for more information

# Get env variables
Set-PsEnv

### Export with credential
# Getting client credential
# $Credential = Get-Credential

# Exporting resources using credentials
# Export-M365DSCConfiguration `
#   -Components @("IntuneAntivirusPolicyWindows10SettingCatalog") `
#   -Credential $Credential `
#   -Path C:\Users\kapil\projects\lrn_iac\src\microsoft365dsc\2-export\config

# explort all Intune related configuration
# Export-M365DSCConfiguration `
#   -Workloads @("INTUNE") `
#   -Credential $Credential `
#   -Path C:\Users\kapil\projects\lrn_iac\src\microsoft365dsc\2-export\config

# Exporting resources using SP
Export-M365DSCConfiguration `
  -Components @("IntuneDeviceCompliancePolicyWindows10") `
  -ApplicationId $env:ApplicationId `
  -TenantId $env:TenantId `
  -ApplicationSecret $env:ApplicationSecret `
  -Path C:\Users\kapil\projects\lrn_iac\src\microsoft365dsc\2-export\config

# Export-M365DSCConfiguration `
#   -Workloads @("INTUNE") `
#   -ApplicationId $env:ApplicationId `
#   -TenantId $env:TenantId `
#   -ApplicationSecret $env:ApplicationSecret `
#   -Path C:\Users\kapil\projects\lrn_iac\src\microsoft365dsc\2-export\config

# Export with SP and certificate
# NOTE: this required installing certificate in local machine
# Export-M365DSCConfiguration `
#   -Components @("IntuneDeviceCompliancePolicyWindows10") `
#   -ApplicationId $env:ApplicationId `
#   -TenantId $env:TenantId `
#   -CertificateThumbprint $env:M365DSCCertificateThumbprint `
#   -Path C:\Users\kapil\projects\lrn_iac\src\microsoft365dsc\2-export\config

# Export-M365DSCConfiguration `
#   -Workloads @("INTUNE") `
#   -ApplicationId $env:ApplicationId `
#   -TenantId $env:TenantId `
#   -CertificateThumbprint $env:M365DSCCertificateThumbprint `
#   -Path C:\Users\kapil\projects\lrn_iac\src\microsoft365dsc\2-export\config