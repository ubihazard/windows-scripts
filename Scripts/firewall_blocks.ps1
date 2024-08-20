# Find out what programs have been recently blocked by Windows Firewall

Get-EventLog security -newest 10 -InstanceId 5157 -Message *Destination* | Select @{Name="message";Expression={$_.ReplacementStrings[1]}}
