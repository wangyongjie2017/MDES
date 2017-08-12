# oh-my-zsh plugins
brew install antigen
echo "source $(brew --prefix)/share/antigen/antigen.zsh" >> ~/.zshrc

# Autojump
brew install autojump
echo '[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh' >> ~/.zshrc

# tree
brew install tree

# asciinema
brew install asciinema

# you-get - youtube-dl
pyenv shell 3.6.1
pip install you-get
pip install --upgrade youtube-dl

# baidu pcs
j github
git clone https://github.com/GangZhuo/BaiduPCS.git
cd BaiduPCS
export CPPFLAGS=-I/usr/local/opt/openssl/include/
export LDFLAGS=-L/usr/local/opt/openssl/lib/
./configure  --with-openssl=/usr/local/opt/openssl
make clean
make
make install #将安装到/usr/local/bin下

# tmux (Need Config)
brew install tmux
brew install reattach-to-user-namespace
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# copy your sync tmux config file and press `prefix + I` install plugins and copy the .tmuxinator config
tmux source ~/.tmux.conf
rvm @global do gem install tmuxinator
# clone the tmuxinator completion file to the ~/.bin
