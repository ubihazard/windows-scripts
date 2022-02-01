@echo off
cd /d "%~dp0"

bin\cjpeg.exe -progressive -optimize -quality 84 %1 > "%~dpn1.jpg"
