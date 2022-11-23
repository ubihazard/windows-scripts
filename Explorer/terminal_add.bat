@echo off

:: Open the current Explorer directory in terminal.

reg add "HKCU\Software\Classes\Directory\Background\shell\wezterm" /ve /t REG_SZ /d "Open terminal here" /f
reg add "HKCU\Software\Classes\Directory\Background\shell\wezterm\command" /ve /t REG_SZ /d "%USERPROFILE%\Applications\wezterm\wezterm-gui.exe" /f
pause
