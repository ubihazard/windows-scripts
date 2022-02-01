@echo off
cd /d "%~dp0"

bin\PNGKT.exe %1
bin\pngout.exe /f6 /y /v %1
