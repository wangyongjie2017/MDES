# Autojump
brew install autojump
echo '[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh' >> ~/.zshrc

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
brew install reattach-to-user-namespace
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# copy your sync tmux config file and press `prefix + I` install plugins and copy the .tmuxinator config
tmux source ~/.tmux.conf
gem install tmuxinator
# clone the tmuxinator completion file to the ~/.bin
