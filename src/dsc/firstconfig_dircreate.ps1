configuration sample {
  Import-DscResource -ModuleName PSDesiredStateConfiguration

  Node . {
    File Demo {
      DestinationPath = "C:\temp\dscdemo"
      Ensure = "Present"
      Type = "Director"
    }
  }
}