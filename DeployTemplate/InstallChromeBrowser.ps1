﻿  Configuration InstallBrowser
{
    param
    (
        
    [Parameter]
    $VersionNumber,
        
    [Parameter]
    $Language,
        
    [Parameter]
    $OS,
        
    [Parameter(Mandatory)]
    $LocalPath        
        
    )
  
  Import-DscResource -module xChrome
  Import-DscResource –ModuleName 'PSDesiredStateConfiguration' 

      MSFT_xChrome chrome
    {
    Language = $Language
    LocalPath = $LocalPath
    }
    }
    InstallBrowser