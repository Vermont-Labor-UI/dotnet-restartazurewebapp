Param(
    [Parameter(Mandatory = $true, ParameterSetName = 'Start')]
    [Parameter(Mandatory = $true, ParameterSetName = 'Stop')]
    [string]$AppName,
    [string]$ResourceGroup,

    [Parameter(Mandatory = $true, ParameterSetName = 'Start')]
    [switch]$Start,

    [Parameter(Mandatory = $true, ParameterSetName = 'Stop')]
    [switch]$Stop
)


  if ($Start) {
      Start-AzureRmWebApp -ResourceGroupName $ResourceGroup -Name $AppName | Out-Null
      Write-Host "Started web app '$appName'"
  }
  if ($Stop) {
      Stop-AzureRmWebApp -ResourceGroupName $ResourceGroup -Name $AppName | Out-Null
      Write-Host "Stopped web app '$appName'"
  }
