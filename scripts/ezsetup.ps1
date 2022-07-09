
# Install necessary apps
winget install --id Google.Chrome
winget install --id Bitwarden.Bitwarden 
winget install --id Foxit.FoxitReader
winget install --id SublimeHQ.SublimeText.4
winget install --id Microsoft.PowerToys
winget install --id Microsoft.PowerShell
winget install --id Microsoft.WindowsTerminal.Preview

# Install scoop and related apps
irm get.scoop.sh | iex
scoop install gcc neovim git nodejs ripgrep

# Install neovim
git clone https://github.com/sujaybokil/NvChad $HOME\AppData\Local\nvim --depth 1 ; nvim

# Install Powershell modules
Install-Module -Name PSReadLine -Scope CurrentUser -AllowPrerelease -SkipPublisherCheck -Force
Install-Module -Name Terminal-Icons -Scope CurrentUser -Force
Install-Module -Name z -Force
