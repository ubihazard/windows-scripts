@echo off
cd /d "%~dp0"

set RANDOMPATH=%RANDOM%%RANDOM%%RANDOM%
dir /s /b %1\*.png > %RANDOMPATH%.txt

for /f "tokens=*" %%I in (%RANDOMPATH%.txt) do (
  echo %%I
  bin\PNGKT.exe "%%I"
  bin\optipng.exe -o7 -strip all -preserve -clobber "%%I"
)

del /q /f %RANDOMPATH%.txt
pause
