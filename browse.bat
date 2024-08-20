@echo off

:: Open Explorer from the command line
:: with the specified folder

if "%1"=="" (
  explorer.exe "%CD%"
  exit /b
)

explorer.exe %1
