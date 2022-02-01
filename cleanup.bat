@echo off

:: Explorer
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f

:: PowerShell
del /q /f "%APPDATA%\Microsoft\Windows\PowerShell\PSReadline\*.txt"

:: WSL
del /q /f "%LOCALAPPDATA%\lxss\home\%USERNAME%\.bash_history"

:: WinRAR
reg delete "HKCU\Software\WinRAR\ArcHistory" /f

:: MuPDF
del /q /f "%USERPROFILE%\.mupdf.history"

:: Node.js
del /q /f "%USERPROFILE%\.node_repl_history"

:: CMake
reg delete "HKCU\Software\Kitware" /f

:: NVIDIA
::rmdir /s /q "%APPDATA%\NVIDIA\ComputeCache"
::rmdir /s /q "%APPDATA%\NVIDIA\GLCache"

:: Other
rmdir /s /q "%USERPROFILE%\.thumbnails"
rmdir /s /q "%LOCALAPPDATA%\fontconfig"
del /q /f "%USERPROFILE%\.recently-used.xbel"
