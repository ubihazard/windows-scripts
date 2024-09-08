# Temporarily disable Windows Defender realtime monitoring

Set-MpPreference -DisableRealtimeMonitoring $true
Get-MpComputerStatus | select AMRunningMode
