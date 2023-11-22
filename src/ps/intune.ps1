Import-Module Microsoft.Graph.Intune

# Get-Command -Module Microsoft.Graph.Intune -Name Get*

Connect-MSGraph
Get-Groups
Get-Groups -groupId 05dd3330-7b85-4f7e-b1c6-8b9513b00ed0 | Select-Object displayName, mail, mailEnabled | Format-Table