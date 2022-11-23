# Remove all `Appx` packages except Windows Store.
# This removes `Appx` installation packages that can be used
# to reinstall “modern” (junk) apps (e.g. when creating a new Windows user).
Get-AppxProvisionedPackage –online | where-object {$_.packagename –notlike '*store*'} | Remove-AppxProvisionedPackage -online
