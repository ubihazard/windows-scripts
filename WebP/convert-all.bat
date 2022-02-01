@echo off
cd /d "%~dp0"

set RANDOMPATH=%TEMP%\%RANDOM%%RANDOM%%RANDOM%
dir /s /b %1\*.bmp >  %RANDOMPATH%.log
dir /s /b %1\*.tga >> %RANDOMPATH%.log

for /f "tokens=*" %%I in (%RANDOMPATH%.log) do (
  echo %%I
  bin\cwebp.exe "%%I" -o "%%~dpnI.webp"
)

del /q /f %RANDOMPATH%.log
pause
