@echo off

:: Reset malfunctioning network interface driver

set NIC=%1
if "%NIC%" == "" (
  set NIC=Ethernet
)

:: Delay after disable and before re-enable
set DELAY_DISABLE=3
:: Delay after enable and before message closes
set DELAY_ENABLE=5

echo Disabling network interface "%NIC%"...
netsh interface set interface "%NIC%" disable
timeout /t %DELAY_DISABLE% >nul

echo Enabling network interface "%NIC%"...
netsh interface set interface "%NIC%" enable
timeout /t %DELAY_ENABLE% >nul
