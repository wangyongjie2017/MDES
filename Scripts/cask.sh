# Brew Cask
brew tap caskroom/cask
brew update

# Shadowsocks
brew cask install shadowsocksx-ng
echo "export http_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
echo "export https_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
curl ip.gs

# Atom
brew cask install atom
apm install file-icons git-time-machine pigments project-manager emmet atom-beautify
apm install nucleus-dark-ui Seti-ui
cp ~/ROOT/codes/github/MDES/Sync/atom-config.cson ~/.atom/config.cson

# Chrome
brew cask install google-chrome
# WWDC
brew cask install wwdc
# Dropbox
brew cask install dropbox
# cheatsheet
brew cask install cheatsheet
# sourcetree
brew cask install sourcetree

# Intellij
brew cask install intellij-idea
brew cask install webstorm
brew cask install pycharm
brew cask install android-studio

# genymotion
brew cask install virtualbox
brew cask install genymotion

# visual studio code
brew cask install visual-studio-code
