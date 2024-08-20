# Remove all appx packages except Windows Store.
# This removes installation packages that could be used
# to reinstall "modern" (junk) apps (e.g. when creating a new Windows user account).

Get-AppxProvisionedPackage –online | where-object {$_.packagename –notlike '*store*'} | Remove-AppxProvisionedPackage -online
