@echo off
cd /d "%~dp0"

bin\gifsicle.exe -O3 --lossy=84 --careful -o "%~dpn1.lossy.gif" %1
