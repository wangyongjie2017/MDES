# Shadowsocks
brew cask install shadowsocksx-ng
echo "export http_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
echo "export https_proxy='http://127.0.0.1:1087'" >> ~/.zshrc
curl ip.gs

# Atom
brew cask install atom
apm install file-icons git-time-machine pigments project-manager emmet atom-beautify(failed)
# 可选安装 apm install wakatime nuclide omnisharp autocomplete-modules atom-ternjs atom-css-comb sync-settings
apm install nucleus-dark-ui Seti-ui seti-syntax
cp ~/ROOT/codes/github/MDES/Sync/atom-config.cson ~/.atom/config.cson

# visual studio code
brew cask install visual-studio-code

code --install-extension robertohuertasm.vscode-icons EditorConfig.EditorConfig robinbentley.sass-indented zhuangtongfa.Material-theme ms-vscode.Theme-TomorrowKit TwentyChung.jsx ms-vscode.csharp TimonVS.ReactSnippetsStandard

# Chrome WWDC Dropbox cheatsheet sourcetree transmit foxmail telegram slack insomnia sitesucker Hyper(Terminal)
brew cask install google-chrome wwdc dropbox cheatsheet sourcetree foxmail telegram slack insomnia sitesucker hyper

# Intellij
brew cask install intellij-idea webstorm pycharm android-studio

# genymotion
brew cask install virtualbox genymotion
