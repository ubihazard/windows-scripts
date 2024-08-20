# Remove all appx packages except Windows Store
# (for all user accounts)

Get-AppxPackage -AllUsers | where-object {$_.name –notlike '*store*'} | Remove-AppxPackage -AllUsers
