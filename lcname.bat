@echo off
cd /d "%~dp0"

:: Give all items in a folder lower-case names

pushd %1
call jren.bat "" "" /l
popd
