@echo off
cd /d "%~dp0"

bin\PNGKT.exe %1
bin\optipng.exe -o7 -strip all -preserve -clobber %1
