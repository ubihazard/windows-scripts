# Remove all appx packages except Windows Store

Get-AppxPackage | where-object {$_.name –notlike '*store*'} | Remove-AppxPackage
