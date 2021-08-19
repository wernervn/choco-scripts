# PC setup scripts

## Chocolatey
### Install Chocolatey
With PowerShell, you must ensure Get-ExecutionPolicy is not Restricted. We suggest using Bypass to bypass the policy to get things installed or AllSigned for quite a bit more security.
 - Run `Get-ExecutionPolicy`. If it returns `Restricted`, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`.

Now run the following command:
```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```


### Install Scripts

First run `choco feature enable -n useRememberedArgumentsForUpgrades`.

Run `choco install <script_name>.config -y`

#### utils.config
This script contains utilities and broswers e.g. Notepad++ and Firefox
```cmd
choco install utils.config -y
```



### Powershell
Executing the `Install-Package.ps1` script will install all the packages.

## Git
Git allows the creation of aliases to enable simpler commands for frequently used commands or command combinations. These should be executed from a bash script. An example is:
```bash
git config --global alias.fcp '!git fetch -p --tags && git checkout "$1" && git pull origin "$1"'
```
With this command, you can perform a `fetch`, `checkout`, and `pull` command in one esy step:
```bash
git fcp master
```

## Powershell Core
PowerShell Core (pwsh.exe) allows the creation of aliases by adding them to a profile script e.g. the user profile script typically located at `C:\Users\<USER_NAME>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`.

To simplify updating `dotnet` global tools, set up the following alias:
```powershell
function DotnetTool-Update($tool){
    dotnet tool update $tool -g
}

Set-Alias Tool-Update DotnetTool-Update
```

The profile will have to be reloaded before the alias can be used e.g. executing `. $profile`. Now simply use `DotnetTool-Update my-fafourite-tool`.