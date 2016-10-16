
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# Brew Cask
brew tap caskroom/cask

# Atom
brew cask install atom

# Shadowsocks
brew cask install shadowsocksx-ng

# Chrome
brew cask install google-chrome

# Autojump
brew install autojump
echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc

# tree
brew install tree

# asciinema
brew install asciinema
