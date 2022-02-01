@echo off

rem Send To Extract (RAR) Explorer action.
rem Autodetect subfolder.

set UNRAR="%~dp0UnRAR"

:LOOP

if $%1==$ exit

pushd "%~dp1"
%UNRAR% x -ad %1
popd

set COUNT=0
for /f %%I in ("%~dp1%~n1\*") do set /a COUNT+=1

setlocal enabledelayedexpansion

if %COUNT% equ 1 (
  if exist "%~dp1%~n1\%~n1" (
    set RANDOMPATH=%RANDOM%%RANDOM%%RANDOM%
    move /y "%~dp1%~n1" "%~dp1!RANDOMPATH!"
    move /y "%~dp1!RANDOMPATH!\%~n1" "%~dp1%~n1"
    rmdir /q "%~dp1!RANDOMPATH!"
  )
)

endlocal

shift
goto LOOP
