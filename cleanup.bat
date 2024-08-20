@echo off

:: Explorer
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f

:: PowerShell
del /q /f "%APPDATA%\Microsoft\Windows\PowerShell\PSReadline\*.txt"

:: WinRAR
reg delete "HKCU\Software\WinRAR\ArcHistory" /f

:: CMake
reg delete "HKCU\Software\Kitware" /f

:: Other
rmdir /s /q "%USERPROFILE%\.thumbnails"
rmdir /s /q "%LOCALAPPDATA%\fontconfig"
del /q /f "%USERPROFILE%\.bash_history"
del /q /f "%LOCALAPPDATA%\lxss\home\%USERNAME%\.bash_history"
del /q /f "%USERPROFILE%\.lesshst"
del /q /f "%USERPROFILE%\.node_repl_history"
del /q /f "%USERPROFILE%\.mupdf.history"
del /q /f "%USERPROFILE%\.recently-used.xbel"
