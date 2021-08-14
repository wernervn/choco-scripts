# Choco setup scripts

## Install Chocolatey
With PowerShell, you must ensure Get-ExecutionPolicy is not Restricted. We suggest using Bypass to bypass the policy to get things installed or AllSigned for quite a bit more security.
 - Run `Get-ExecutionPolicy`. If it returns `Restricted`, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`.

Now run the following command:
```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```


## Install Scripts

First run `choco feature enable -n useRememberedArgumentsForUpgrades`.

Run `choco install <script_name>.config -y`

### utils.config
This script contains utilities and broswers e.g. Notepad++ and Firefox
```cmd
choco install utils.config -y
```



## Powershell
Executing the `Install-Package.ps1` script will install all the packages.
