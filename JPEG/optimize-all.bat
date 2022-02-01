@echo off
cd /d "%~dp0"

set RANDOMPATH=%TEMP%\%RANDOM%%RANDOM%%RANDOM%
dir /s /b %1\*.jpg  >  %RANDOMPATH%.log
dir /s /b %1\*.jpeg >> %RANDOMPATH%.log

for /f "tokens=*" %%I in (%RANDOMPATH%.log) do (
  echo %%I
  bin\jpegtran.exe -copy none -optimize -progressive -outfile "%%I" "%%I"
)

del /q /f %RANDOMPATH%.log
pause
