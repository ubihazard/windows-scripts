@echo off

:: Undo Windows Defender scan exception

set EXCL_PATH=%~dp0
set EXCL_PATH=%EXCL_PATH:~0,-1%
powershell.exe -Command Remove-MpPreference -ExclusionPath "%EXCL_PATH%"
