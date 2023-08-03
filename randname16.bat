@echo off
cd /d "%~dp0"

:: Give items random file names (limited to 16 characters).

:loop
for /f "tokens=* usebackq" %%f in (`uuidgen.bat 16`) do (
  set uuid=%%f
)
move %1 "%~dp1%uuid%%~x1"
shift
if not "%~1"=="" goto loop
