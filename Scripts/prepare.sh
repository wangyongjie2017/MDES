# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# Cask
brew tap caskroom/cask
brew update

# Shadowsocks
brew cask install shadowsocksx-ng
echo "export http_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
echo "export https_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
curl ip.gs

# mas
brew install mas
mas list

# Xcode
mas serach Xcode
mas install `Xcode Identifier`

# Xcode Command line tools
xcode-select --install

# Sierra Gatekeeper
sudo spctl --master-disable
