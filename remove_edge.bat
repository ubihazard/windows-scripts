@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

:: Remove new Chromium-based Microsoft Edge browser.

set q="
for /f "delims=" %%o in ('powershell.exe -command "(Get-Item !q!${Env:ProgramFiles(x86)}\\Microsoft\\Edge\\Application\\msedge.exe!q!).VersionInfo.ProductVersion"') do set ver=%%o
"%ProgramFiles(x86)%\Microsoft\Edge\Application\%ver%\Installer\setup" --uninstall --force-uninstall --system-level

pause
