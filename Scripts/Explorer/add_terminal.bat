@echo off

:: Open the current Explorer directory in terminal

reg add "HKCU\Software\Classes\Directory\Background\shell\term" /ve /t REG_SZ /d "Open terminal here" /f
reg add "HKCU\Software\Classes\Directory\Background\shell\term\command" /ve /t REG_SZ /d "\"%ComSpec%\" ""%%v""" /f
pause
