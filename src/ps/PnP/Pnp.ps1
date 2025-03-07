# Stands for Patterns and Practices
# Collection of tools and guidance meant to help extend M365 to your needs following best practices
# Initially created by Microsoft, now maintained by the community
# Can be used for Sharepoint, Teams, Power Platform, etc.
# Contaims more than 500 modules
# https://pnp.github.io
# https://pnp.github.io/powershell/articles/index.html
# This is community solution, not official Microsoft product, and ticket can't be raised to MS

# install the module
Install-Module -Name PnP.PowerShell
# import the module
Import-Module PnP.PowerShell
# Check cmdlets in module
Get-Command -Module PnP.PowerShell
# Get help for a cmdlet 
Get-Help Connect-PnPOnline
# connect to SharePoint
Connect-PnPOnline -Url https://kapildev1.sharepoint.com/sites/SPFxTraining
# get all lists
Get-PnPList
# get all items in a list
Get-PnPListItem -List "Documents"
# get all files in a list
Get-PnPFile -FolderSiteRelativeUrl "Shared Documents"