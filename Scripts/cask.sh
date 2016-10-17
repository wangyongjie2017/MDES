# Shadowsocks
brew cask install shadowsocksx-ng
echo "export http_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
echo "export https_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
curl ip.gs

# Atom
brew cask install atom
apm install file-icons git-time-machine pigments project-manager emmet atom-beautify
# 可选安装 apm install wakatime nuclide omnisharp autocomplete-modules atom-ternjs atom-css-comb sync-settings
apm install nucleus-dark-ui Seti-ui
cp ~/ROOT/codes/github/MDES/Sync/atom-config.cson ~/.atom/config.cson

# visual studio code
brew cask install visual-studio-code

# Chrome WWDC Dropbox cheatsheet sourcetree
brew cask install google-chrome wwdc dropbox cheatsheet sourcetree

# Intellij
brew cask install intellij-idea webstorm pycharm android-studio

# genymotion
brew cask install virtualbox genymotion
