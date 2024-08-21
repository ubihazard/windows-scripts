# How to completely change Windows language.
# Demonstration with Spanish.

Install-Language es-ES
Set-WinUILanguageOverride es-ES
$List = Get-WinUserLanguageList
$List.Add("es-ES")
Set-WinUserLanguageList $($list[1], $list[0]) -Force
# https://go.microsoft.com/fwlink/?LinkID=242308
Set-WinHomeLocation -GeoId 217
Set-WinSystemLocale es-ES
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True
