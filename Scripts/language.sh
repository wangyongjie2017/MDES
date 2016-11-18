# Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
nvm ls-remote
nvm install v4.6.0
echo 'alias ng="npm list -g --depth=0 2>/dev/null"' >> ~/.zshrc
echo 'alias nl="npm list --depth=0 2>/dev/null"' >> ~/.zshrc
nvm ls
ng

# Python
brew install pyenv
# To use Homebrew's directories rather than ~/.pyenv add follow line to your profile:
# echo 'export PYENV_ROOT=/usr/local/var/pyenv' >> ~/.zshrc
echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.zshrc
echo 'alias brew="env PATH=${PATH//$(pyenv root)\/shims:} brew"' >> ~/.zshrc
pyenv install 3.5.0
pyenv versions

# Ruby
brew install gnupg gnupg2
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash
rvm get stable
rvm install 2.3.0
rvm --default use 2.3.0
rvm list

# JAVA
brew cask install java
java -version

# dotnet
visit https://www.microsoft.com/net/core#macos
