@echo off

:: Explorer
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f

:: PowerShell
del /q /f "%APPDATA%\Microsoft\Windows\PowerShell\PSReadline\*.txt"

:: WinRAR
reg delete "HKCU\Software\WinRAR\ArcHistory" /f

:: CMake
reg delete "HKCU\Software\Kitware" /f

:: NVIDIA
::rmdir /s /q "%APPDATA%\NVIDIA\ComputeCache"
::rmdir /s /q "%APPDATA%\NVIDIA\GLCache"

:: Other
rmdir /s /q "%LOCALAPPDATA%\fontconfig"
del /q /f "%LOCALAPPDATA%\lxss\home\%USERNAME%\.bash_history"
rmdir /s /q "%USERPROFILE%\.thumbnails"
del /q /f "%USERPROFILE%\.recently-used.xbel"
del /q /f "%USERPROFILE%\.bash_history"
del /q /f "%USERPROFILE%\.lesshst"
del /q /f "%USERPROFILE%\.mupdf.history"
del /q /f "%USERPROFILE%\.node_repl_history"
