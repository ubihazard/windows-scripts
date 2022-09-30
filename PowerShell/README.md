PowerShell One-liners
---------------------

Remove all `Appx` packages except Windows Store:

```powershell
Get-AppxPackage | where-object {$_.name –notlike '*store*'} | Remove-AppxPackage
```

Same as above, but remove for all users:

```powershell
Get-AppxPackage -AllUsers | where-object {$_.name –notlike '*store*'} | Remove-AppxPackage -AllUsers
```

Also remove `Appx` installation packages that can be used to restore them (e.g. when creating a new Windows user):

```powershell
Get-AppxProvisionedPackage –online | where-object {$_.packagename –notlike '*store*'} | Remove-AppxProvisionedPackage -online
```

***

See what programs have been recently blocked by Windows Firewall:

```powershell
Get-EventLog security -newest 10 -InstanceId 5157 -Message *Destination* | Select @{Name="message";Expression={$_.ReplacementStrings[1]}}
```

⭐ Support
---------

If you find anything of this useful, you can [buy me a ☕](https://www.buymeacoffee.com/ubihazard "Donate")!
