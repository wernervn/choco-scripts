Set-PoshPrompt ~/wvn-dotnetV2.omp.json

# https://stackoverflow.com/questions/24914589/how-to-create-permanent-powershell-aliases
Set-Alias Goto Set-Location

function CE-DeadCalcs {
    dotnet ce dead-calcs
}

function CE-CountFuntions {
    dotnet ce count-funcs
}

function CE-CleanBinObj {
    dotnet ce clean-bin
}

function CE-GlobalFuncs {
    dotnet ce global-funcs
}

Set-Alias Dead-Calcs CE-DeadCalcs
Set-Alias Count-Funtions CE-CountFuntions
Set-Alias Clean-Bin CE-CleanBinObj
Set-Alias Global-Funcs CE-GlobalFuncs


function DotnetTool-Update($tool){
    dotnet tool update $tool -g
}

Set-Alias Tool-Update DotnetTool-Update