$configurations = @(
  [PSCustomObject]@{
    Get = "Get-CsTeamsCallingPolicy"
    Set = "Set-CsTeamsCallingPolicy"
    New = "New-CsTeamsCallingPolicy"
    Settings = @(
      @{
        Identity = "Global"
        Description = "calling policy for all users"
        AllowPrivateCalling = $False
      }
    )
  }
)