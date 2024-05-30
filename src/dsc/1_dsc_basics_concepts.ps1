# my dsc documentation: 
# https://jiayou.atlassian.net/wiki/spaces/~5dbc7a6893536d0c3579eef9/pages/337739777/DSC

# references
# https://learn.microsoft.com/en-us/shows/getting-started-with-powershell-dsc/

# Powershell version 7.x
Get-DscResource -Name Intune*
Get-DscResource
Get-DscResource -Name IntuneDeviceCategory | Select-Object Properties -ExpandProperty Properties | Format-Table
Get-DscResource -Name *appx*

# To find dsc resource
Find-DSCResource -Name smbshare
Find-DSCResource -Name intune
# count number of resources
Find-DscResource -OutVariable r | measure
# to see these resources
Find-DscResource -OutVariable r | Out-GridView

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
Install-Module -Name PSDesiredStateConfiguration

# help
. .\src\dsc\firstconfig_dircreate.ps1
. .\src\dsc\machineconfig.ps1
help LabConfig
help sample 

# Let's create a 2nd config with variable and try
. .\src\dsc\secondconfig.ps1
help sample7
# running below command will create mof file
sample7 -OutputPath .\src\dsc
Start-DscConfiguration -Path .\src\dsc -Verbose -Wait

# Test config
Test-DscConfiguration -Path .\src\dsc # -Detailed -Verbose -Wait

# help - if powershell remoting is not enabled, run below command
winrm quickconfig
