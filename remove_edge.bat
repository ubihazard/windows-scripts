@echo off
cd /d "%~dp0"

:: Remove new Chromium-based Microsoft Edge browser.

for /f "delims=" %%o in (powershell.exe "(Get-Item """${Env:ProgramFiles(x86)}\\Microsoft\\Edge\\Application\\msedge.exe").VersionInfo.ProductVersion""") do set ver=%%o
"%ProgramFiles(x86)%\Microsoft\Edge\Application\%ver%\Installer\setup" --uninstall --force-uninstall --system-level

pause
