# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# Cask
brew tap caskroom/cask
brew update

# mas
brew install mas
mas list

# Xcode Command line tools
xcode-select --install

# Sierra Gatekeeper
sudo spctl --master-disable
