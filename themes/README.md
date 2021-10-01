## Themes for ohmyposh

```powershell
<#
   Install oh my posh
#>
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```

```powershell
Get-ChildItem -Path "$(scoop prefix oh-my-posh)\themes\*" -Include '*.omp.json' | Sort-Object Name | ForEach-Object -Process {
    $esc = [char]27
    Write-Host ""
    Write-Host "$esc[1m$($_.BaseName)$esc[0m"
    Write-Host ""
    oh-my-posh --config $($_.FullName) --pwd $PWD
    Write-Host ""
}
```

```powershell
<#
   Check Themes
#>

Get-PoshThemes
```

| Theme Name                                                                                                         | Command to set                |    |
| :----------------------------------------------------------------------------------------------------------------- | :---------------------------- | :- |
| [M365Princess](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/M365Princess.omp.json "M365Princess") | Set-PoshPrompt -Theme \<Name> |    |
| [bubbles](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/bubbles.omp.json "bubbles")                | ^                             |    |
| [craver](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/craver.omp.json "craver")                   | ^                             |    |
| [emodipt](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/emodipt.omp.json "emodipt")                | ^                             |    |
| [iterm2](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/iterm2.omp.json "iterm2")                   | ^                             |    |

Keep in mind there are many other themes, these are just some of my favs. Read more at https://ohmyposh.dev/

## Themes Path

To find the path of all theme use: 
```
Get-PoshThemes -list
```
