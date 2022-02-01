@echo off
cd /d "%~dp0"

bin\cwebp.exe %1 -o "%~dpn1.webp"
