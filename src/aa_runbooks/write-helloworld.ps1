<#
.SYNOPSIS
    Provides a simple example of a Azure Automation runbook for Intune.  

.DESCRIPTION
    This runbook provides the "Hello World" example for Azure Automation for Intune 

    The runbook takes in an optional string parameter.  If you leave the parameter blank, the 
    default of $Name will equal "World".  The runbook then prints "Hello" concatenated with $Name.
   

.PARAMETER Name
    String value to print as output

.EXAMPLE
    Write-HelloWorld -Name "World"

.NOTES
	Author: System Center Automation Team 
	Last Updated: 3/3/2014   
#>


workflow Write-HelloWorld {
  param (
      
      # Optional parameter of type string. 
      # If you do not enter anything, the default value of Name 
      # will be World
      [parameter(Mandatory=$false)]
      [String]$Name = "World"
  )

      Write-Output "Hello $Name"

}