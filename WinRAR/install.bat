@echo off
cd /d "%~dp0"

mkdir "%APPDATA%\WinRAR"
copy /y rar.ini "%APPDATA%\WinRAR"
