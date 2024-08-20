@echo off
cd /d "%~dp0"

if not exist "%APPDATA%\WinRAR\rar.ini" (
  mkdir "%APPDATA%\WinRAR"
  copy /y rar.ini "%APPDATA%\WinRAR"
)
