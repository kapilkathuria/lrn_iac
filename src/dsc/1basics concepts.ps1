Get-DscResource -Name Intune*
Get-DscResource
Get-DscResource -Name IntuneDeviceCategory | Select-Object Properties -ExpandProperty Properties | Format-Table

# To find dsc resource
Find-DSCResource -Name smbshare
Find-DSCResource -Name intune

Find-Module Microsoft365DSC | Tee-Object -Variable m
$m | Format-Table author, publisheddate, projecturi, description -Wrap

# Install module - run with admin rights
Install-Module -Name Microsoft365DSC -Force -Scope CurrentUser

Get-Module Microsoft365DSC -ListAvailable

Uninstall-Module -Name Microsoft365DSC -Force
Get-Module -ListAvailable -Name Microsoft365DSC

# to create and deploy config
# crete config file - sample ./2 firstconfig_dir.ps1
Start-DscConfiguration -Path .\src\dsc\2firstconfig_dir.ps1 -Verbose -Wait
# check dsc local config manager
Get-DscLocalConfigurationManager

# get the syntax for dsc resource
Get-DscResource File -Syntax

# ensure you have latest version of psget
Get-Module PowerShellGet -ListAvailable
Get-Module PackageManagement -ListAvailable
# install dsc modules
Install-Module -Name PSDesriedStateConfiguration -Force -Scope CurrentUser

# help
. .\src\dsc\2firstconfig_dir.ps1
help machineconfig

