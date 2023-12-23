Import-Module MicrosoftTeams


Connect-MicrosoftTeams

$ThisPolicy = Get-CsTeamsCallingPolicy -Identity "Global"
$currentValue = $ThisPolicy.AllowPrivateCalling
$TargetValue = $False

Write-Output("Current value: $currentValue")
Write-Output("Target value: $TargetValue")
