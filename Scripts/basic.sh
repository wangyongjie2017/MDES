#Command line tools
xcode-select --install

## Git
ssh-keygen -t rsa -b 4096 -C "xxxx@xxx.com" -f ~/.ssh/id_rsa_github
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_github

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Font Consolas
brew install cabextract
cd ~/Downloads
mkdir consolas
cd consolas
curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe
cabextract PowerPointViewer.exe
cabextract ppviewer.cab
open CONSOLA*.TTF

# Brew Cask
brew tap caskroom/cask
brew update

# Sierra Gatekeeper
sudo spctl --master-disable
