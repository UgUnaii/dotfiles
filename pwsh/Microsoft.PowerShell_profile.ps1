# Oh my posh
oh-my-posh init pwsh --config "C:\Users\Unaii\.config\pwsh\unaicustom.omp.json" | Invoke-Expression

# Terminal Icons
Import-Module -Name Terminal-Icons

# Disable PSReadLine
Set-PSReadLineOption -PredictionSource none

# Aliases
Set-Alias ll ls
Set-Alias vim nvim
