@echo off
cd /d "%~dp0"

set RANDOMPATH=%RANDOM%%RANDOM%%RANDOM%
dir /s /b %1\*.png > %RANDOMPATH%.txt

for /f "tokens=*" %%I in (%RANDOMPATH%.txt) do (
  echo %%I
  bin\PNGKT.exe "%%I"
  bin\pngout.exe /f6 /y /v "%%I"
)

del /q /f %RANDOMPATH%.txt
pause
