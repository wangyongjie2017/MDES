
# Node (Close Terminal)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
# need close window or source ~/.zshrc
nvm ls-remote
nvm install v6.11.0
echo 'alias ng="npm list -g --depth=0 2>/dev/null"' >> ~/.zshrc
echo 'alias nl="npm list --depth=0 2>/dev/null"' >> ~/.zshrc
nvm ls
# need close window or source ~/.zshrc
ng

# Python (Close Terminal)
brew install pyenv
brew install xz
# To use Homebrew's directories rather than ~/.pyenv add follow line to your profile:
# echo 'export PYENV_ROOT=/usr/local/var/pyenv' >> ~/.zshrc
echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.zshrc
echo 'alias brew="env PATH=${PATH//$(pyenv root)\/shims:} brew"' >> ~/.zshrc
pyenv install --list

CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install -v 3.6.3 --verbose

pyenv versions
# need close window or source ~/.zshrc

# Ruby (Close Terminal)
brew install gnupg gnupg2
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
rvm get head
rvm list known
rvm install 2.4.2 --rubygems ignore
rvm docs generate-ri
rvm --default use 2.4.2
rvm list
gem install bundler
# need close window or source ~/.zshrc

# Java
brew cask install java
java -version

# dotnet core
# please visit https://www.microsoft.com/net/core#macos

# Rust (Close Terminal)
curl https://sh.rustup.rs -sSf | sh
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc
cargo install racer
cargo install rustfmt
cargo install rustsym
cargo install cargo-edit
