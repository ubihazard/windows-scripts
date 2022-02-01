@echo off

rem Send To Compress (7-Zip) Explorer action.

7z a -t7z -mx9 "%~dpnx1".7z -- %*
