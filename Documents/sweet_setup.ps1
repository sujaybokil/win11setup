winget install --id BraveSoftware.BraveBrowser 
echo ""
winget install --id Mozilla.Firefox
echo ""
winget install --id Nvidia.GeForceExperience
echo ""
winget install --id Zoom.Zoom
echo ""
winget install --id Spotify.Spotify
echo ""
winget install --id Microsoft.WindowsTerminal.Preview
echo ""
winget install --id Microsoft.PowerShell.Preview
echo ""
winget install --id Git.Git
echo ""
winget install --id SublimeHQ.SublimeText.4
echo ""
winget install --id Lexikos.AutoHotkey
echo ""
winget install --id Microsoft.PowerToys
echo ""
winget install --id Bitwarden.Bitwarden
echo ""
winget install --id Anaconda.Miniconda3


echo ""
iwr -useb get.scoop.sh | iex

echo ""	
scoop install gcc neovim sudo curl grep wget fzf touch
. $PROFILE
echo ""
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

git config --global user.name "sujaybokil"
git config --global user.email sujaybokil1@gmail.com
git config --global init.defaultBranch master
git config --global core.editor nvim

Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
Install-Module Terminal-Icons -Repository PSGallery -Force
Install-Module -Name z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name PSFzf -Scope CurrentUser -Force

mkdir ~/.config/powershell
cd ~/.config/powershell
wget https://raw.githubusercontent.com/sujaybokil/WindowsSetup/master/.config/powershell/cursed.omp.json
wget https://raw.githubusercontent.com/sujaybokil/WindowsSetup/master/.config/powershell/user_profile.ps1

echo ". $env:USERPROFILE\.config\powershell\user_profile.ps1" >> $PROFILE
cd ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/
wget https://raw.githubusercontent.com/sujaybokil/WindowsSetup/master/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
cat settings.json.1 > settings.json
rm settings.json.1
cd 

cd 