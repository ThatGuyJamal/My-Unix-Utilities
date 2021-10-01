<# 
You can add themes to windows powershell to make it look more estaedic. To do this simple follow the steps bellow. 

This assumes your on windows 10 or 11. If no, google it. 

#>

# 1. Install https://ohmyposh.dev/.

    # scoop 
    scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json

# 2. Run util

    # scoop
    Get-ChildItem -Path "$(scoop prefix oh-my-posh)\themes\*" -Include '*.omp.json' | Sort-Object Name | ForEach-Object -Process {
        $esc = [char]27
        Write-Host ""
        Write-Host "$esc[1m$($_.BaseName)$esc[0m"
        Write-Host ""
        oh-my-posh --config $($_.FullName) --pwd $PWD
        Write-Host ""
    }

# 3. Update the package

    #scoop
    scoop update oh-my-posh

# 4. Use theme

    Set-PoshPrompt -Theme M365Princess




# Then your good to go! Read more on the site!