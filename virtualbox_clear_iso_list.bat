@echo off

:: Clear VirtualBox recently used ISO list.

"%ProgramFiles%\Oracle\VirtualBox\VBoxManage.exe" setextradata global "GUI/RecentListCD"
