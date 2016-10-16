# Autojump
brew install autojump
echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc

# tree
brew install tree

# asciinema
brew install asciinema

# you-get - youtube-dl
pyenv shell 3.5.0
pip install you-get
pip install --upgrade youtube-dl
