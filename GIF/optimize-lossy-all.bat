@echo off
cd /d "%~dp0"

set RANDOMPATH=%RANDOM%%RANDOM%%RANDOM%
dir /s /b %1\*.gif > %RANDOMPATH%.txt

for /f "tokens=*" %%I in (%RANDOMPATH%.txt) do (
  echo %%I
  bin\gifsicle.exe -O3 --lossy=84 --careful -o "%%~dpnI.lossy.gif" "%%I"
)

del /q /f %RANDOMPATH%.txt
pause
