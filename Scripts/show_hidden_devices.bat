@echo off

:: To view the non-Plug and Play devices, from the view menu
:: you have to select "Show hidden devices". But to show all
:: non-present devices, you will have to do the following:

set DEVMGR_SHOW_NONPRESENT_DEVICES=1
start devmgmt.msc
