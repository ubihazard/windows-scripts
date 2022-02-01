@echo off
cd /d "%~dp0"

set RANDOMPATH=%RANDOM%%RANDOM%%RANDOM%
dir /s /b %1\*.gif > %RANDOMPATH%.txt

for /f "tokens=*" %%I in (%RANDOMPATH%.txt) do (
  echo %%I
  bin\gifsicle.exe -O3 --careful --batch "%%I"
)

del /q /f %RANDOMPATH%.txt
pause
