configuration sample {
  Import-DscResource -ModuleName PSDesriedStateConfiguration -ModuleVersion 1.1

  Node . {
    File Demo {
      DestinationPath = "C:\temp\dscdemo"
      Ensure = "Present"
      Type = "Director"
    }
  }
}