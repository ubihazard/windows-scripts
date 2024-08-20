@echo off

:: Open the chosen file in text editor.
:: (Using Sublime Text as an example.)

reg add "HKCU\Software\Classes\*\shell\Open with Sublime Text\command" /ve /d "\"%USERPROFILE%\Applications\Sublime Text\sublime_text.exe\" ""%%1""" /f
pause
