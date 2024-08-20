@echo off

:: Copy the first argument to clipboard.
:: Useful for "Send to" context menu to copy
:: full path to the chosen item.

echo|set/p=%1|clip
