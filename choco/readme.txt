1. Install Chocolatey
https://chocolatey.org/install
> Set-ExecutionPolicy AllSigned or Set-ExecutionPolicy Bypass -Scope Process
> Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

2. Set user scope
> Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope CurrentUser
> .\Install-Package.ps1