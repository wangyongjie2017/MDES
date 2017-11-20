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

# Sierra Gatekeeper
sudo spctl --master-disable

# Enable Mac Develop Mode
mas serach Xcode
mas install `497799835`
xcode-select --install

# Openssl
brew install openssl
ln -s /usr/local/Cellar/openssl/1.0.2m/bin/openssl /usr/local/bin
ln -s /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
ln -s /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/
