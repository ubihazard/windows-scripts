@echo off
cd /d "%~dp0"

bin\cwebp.exe -z 9 %1 -o "%~dpn1.webp"
