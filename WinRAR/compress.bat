@echo off

rem Send To Compress (RAR) Explorer action.

set NAME=-ep1 "%~dpnx1.rar"
if $%2==$ goto COMPRESS

set DESTINATION=%~dp1
if %DESTINATION:~-1%==\ set DESTINATION=%DESTINATION:~0,-1%

set PARENT=
for /d %%p in ("%DESTINATION%") do set PARENT=%%~nxp

set NAME="%~dp1%PARENT%"
if exist %NAME% (
  set NAME=-ep1 -ag "%~dp1%PARENT%.rar"
) else (
  set NAME=-ep1 "%~dp1%PARENT%.rar"
)

:COMPRESS
"%~dp0Rar" a %NAME% %*
