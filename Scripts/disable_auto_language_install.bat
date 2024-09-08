@echo off

schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Disable
