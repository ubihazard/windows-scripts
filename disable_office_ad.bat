@echo off

:: Disable M$ Office advertisment when pressing Ctrl+Alt+Shift+Win.

reg add "HKCU\Software\Classes\ms-officeapp\shell\open\command" /ve /t REG_SZ /d rundll32 /f
pause
