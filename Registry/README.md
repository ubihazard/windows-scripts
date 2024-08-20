Registry tweaks
---------------

Some `.reg` files have to be imported using [NSudo](https://nsudo.m2team.org/) because they require `TrustedInstaller` permissions:

```
NSudoLC.exe -U:T -P:E reg import tweak.reg
```
