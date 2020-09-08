sfc /scannow
Dism.exe /online /cleanup-image /restorehealth

Debloater:
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

