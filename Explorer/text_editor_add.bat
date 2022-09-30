@echo off

:: Open with Sublime Text Explorer context menu entry.

reg add "HKCU\Software\Classes\*\shell\Open with Sublime Text\command" /ve /d "%USERPROFILE%\Applications\Sublime Text\sublime_text.exe ""%%1""" /f
pause
