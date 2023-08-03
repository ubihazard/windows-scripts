@echo off
cd /d "%~dp0"

:: Give items sequential names starting from 1.

setlocal enabledelayedexpansion
set counter=1

:loop
move %1 "%~dp1!counter!%~x1"
set /a counter=!counter! + 1
shift
if not "%~1"=="" goto loop

endlocal
