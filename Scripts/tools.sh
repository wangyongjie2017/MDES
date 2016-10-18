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

# baidu pcs
j github
git clone https://github.com/GangZhuo/BaiduPCS.git
cd BaiduPCS
make clean
make
make install #将安装到/usr/local/bin下

# tmux
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install reattach-to-user-namespace
# copy the config file and press `prefix + I` install plugins
