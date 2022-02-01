@echo off
cd /d "%~dp0"

bin\gifsicle.exe -O3 --careful --batch %1
