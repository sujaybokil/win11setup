oh-my-posh init pwsh --config ~/.config/pwsh/cursed.omp.json | Invoke-Expression
Import-Module -Name Terminal-Icons
Import-Module -Name posh-git

# Options
$PSReadLineOptions = @{
    EditMode = "Emacs"
    PredictionSource = "HistoryAndPlugin"
    PredictionViewStyle = "InlineView"
    HistoryNoDuplicates = $true
    BellStyle = "None"
    Colors = @{
        InlinePrediction   = 'DarkGray'
    }
}
Set-PSReadLineOption @PSReadLineOptions
Set-PSReadLineKeyHandler -Key "Tab" -Function NextHistory
Set-PSReadLineKeyHandler -Key "Shift+Tab" -Function PreviousHistory
Set-PSReadLineKeyHandler -Key "Ctrl+p" -Function MenuComplete

# Aliases
Set-Alias v nvim
Set-Alias vi nvim
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep rg

# Utility functions
. $ENV:USERPROFILE/.config/pwsh/functions.ps1

