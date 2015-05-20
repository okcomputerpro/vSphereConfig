Function Set-JSONtoESXi {
  [CmdletBinding()]
  [OutputType([VMware.VimAutomation.ViCore.Impl.V1.Inventory.VMHostImpl])]
  Param (
    [Parameter(Mandatory=$True,ValueFromPipeline=$True,ValueFromPipelinebyPropertyName=$True)]
    [VMware.VimAutomation.ViCore.Impl.V1.Inventory.VMHostImpl]$VMHost,
    [Parameter(Mandatory=$True,HelpMessage="Enter the path to a json file")]
    [ValidateScript({If(Test-Path $_) {$true} else {Throw "Invalid path given: $_"}})]
    [String]$JsonFile
  )

  Begin {
    #Get the content of the file
    $ESXiConfig = Get-Content -Raw -Path $JsonFile | ConvertFrom-Json
  }
  Process {

    #Configure Host Network
    If ($ESXiConfig.VMHostNetwork.PSObject.Properties.Count -gt 0) {
      Write-Host "Configure Host Network" -ForegroundColor Blue
      $ESXiConfig.VMHostNetwork | setVMHostNetwork -VMHost $VMHost
    }

    #Configure NTP
    If ($ESXiConfig.NTP.PSObject.Properties.Count -gt 0) {
      Write-Host "Configure NTP" -ForegroundColor Blue
      $ESXiConfig.NTP | setNTP -VMHost $VMHost
    }

    #Configure SSH
    If ($ESXiConfig.SSH.PSObject.Properties.Count -gt 0) {
      Write-Host "Configure SSH" -ForegroundColor Blue
      $ESXiConfig.SSH | setSSH -VMHost $VMHost
    }

    #Configure vSwitchs
    If ($ESXiConfig.vSwitchs.Count -gt 0) {
      Write-Host "Configure vSwitchs" -ForegroundColor Blue
      $ESXiConfig.vSwitchs | SetvSwitchs -VMHost $VMHost
    }

    #Configure Portgroups
    If ($ESXiConfig.Portgroups.Count -gt 0) {
      Write-Host "Configure Portgroups" -ForegroundColor Blue
      $ESXiConfig.Portgroups | SetPortgroups -VMHost $VMHost
    }

    #Configure Vmkernels
    If ($ESXiConfig.Vmkernels.Count -gt 0) {
      Write-Host "Configure Vmkernels" -ForegroundColor Blue
      $ESXiConfig.Vmkernels | SetVmkernels -VMHost $VMHost
    }
    Write-Output $VMHost
  }
}
