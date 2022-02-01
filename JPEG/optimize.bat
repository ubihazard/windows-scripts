@echo off
cd /d "%~dp0"

bin\jpegtran.exe -copy none -optimize -progressive -outfile %1 %1
