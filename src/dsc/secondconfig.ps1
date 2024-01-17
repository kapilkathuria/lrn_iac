configuration sample7 {
  Import-DscResource -ModuleName PSDesiredStateConfiguration

  Node ww4 {
    File DemoFolder {
      DestinationPath = 'c:\dsc'
      Ensure = "Present"
      Type = "Directory"
    }

    File DemoFile {
      DestinationPath = 'c:\dsc\test.txt'
      Ensure = "Present"
      Type = 'File'
      Contents = 'Created with DSC'
      DependsOn = '[File]DemoFolder'
    }

    Service winrm {
      Name =  'winrm'
      State = 'Running'
    }
  }
}