# Microsoft Graph PowerShell SDK
# It is a collection of PowerShell modules that contain cmdlets for calling Microsoft Graph.
# It is a wrapper around Microsoft Graph API.
# Using this SDK, you can interact with Microsoft Graph API using PowerShell
# Not very IT Pro friendly
# One need to understand Graph API documentation
# https://github.com/microsoftgraph/msgraph-sdk-powershell
# https://learn.microsoft.com/en-us/powershell/microsoftgraph/overview?view=graph-powershell-1.0 

# Known issue with PowerShell 5.1
# Import-Module : Function Get-MgDomainNameReferenceCount cannot be created because function capacity 4096 has been exceeded for this scope.
# Issue reference: https://github.com/microsoftgraph/msgraph-sdk-powershell/issues/1449 
# this is a known Windows PowerShell 5.1 limitation (https://github.com/PowerShell/PowerShell/issues/2221) that was resolved in PowerShell core.

# Your options are:
  # 1. Use the latest version of PowerShell 7+ as the runtime version (highly recommended).
  # 2. Only load the Microsoft.Graph modules you need. You find the complete reference of all modules at https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.applications/?view=graph-powershell-1.0.
  # 3. Set $maximumfunctioncount variable to its max value, 32768. This is not recommended as it can cause performance issues.



# install the module
Install-Module -Name Microsoft.Graph
# import the module
# Remove-Module Microsoft.Graph -Force
# Import-Module Microsoft.Graph
# Get all users
Import-Module Microsoft.Graph.Users
# Connect to Microsoft Graph
Connect-MgGraph
Connect-MgGraph -Scopes "User.Read.All", "Group.Read.All", "Application.Read.All", "ServicePrincipal.Read.All"
# Get all users
Get-MgUser
# Get all groups
Get-MgGroup
# Get all applications
Get-MgApplication
# Get all service principals
Get-MgServicePrincipal

