# Xcode
mas serach Xcode
mas install `497799835`
# config command line tools

# Docker (Need Config)
brew cask install docker # brew cask install docker-toolbox (toolbox vs docker)
docker --version
docker ps

# Express & Gulp
npm i express-generator -g
npm i gulp-cli -g
npm i apidoc -g
npm i typescript -g
npm i eslint -g
npm i wepy-cli -g
npm i wept -g
npm i gtop -g

# Cocoapods
rvm gemset create pods-1.3.1
rvm gemset use pods-1.3.1
gem install cocoapods -v 1.3.1

rvm use ruby-2.4.1@pods-1.3.1 --default

rvm gemset list
pod --version

gem install cocoapods-playgrounds
rvm @global do gem install xcpretty

# Carthage
brew update
brew install carthage
carthage help

# Scrapy
pyenv shell 3.6.2
pip install Scrapy
pip install --upgrade pip
scrapy --help

# Mysql
brew install mysql
brew services start mysql

# mysqlworkbench
brew cask install mysqlworkbench

# MangoDB
brew install mongodb
brew services start mongodb
sudo mkdir -p /data/db
sudo chown -R `id -u` /data/db

mongod
mongo

# robomongo
brew cask install robomongo

# Yarn
brew update
brew install yarn --without-node

# nginx
brew install nginx

# swift lint
brew install swiftlint

# oclint
brew install xctool
brew tap oclint/formulae
brew install oclint

# CMake
brew install cmake

# SonarScanner (Need Config)
brew install sonar-scanner

# Atom (Need Config)
brew cask install atom
apm install file-icons git-time-machine pigments project-manager emmet atom-beautify language-swift language-rust markdown-writer markdown-pdf markdown-preview-plus symbols-tree-view
# 可选安装 apm install wakatime nuclide omnisharp autocomplete-modules atom-ternjs atom-css-comb sync-settings
apm install nucleus-dark-ui Seti-ui seti-syntax monokai hydrogen

# visual studio code (Need Config)
brew cask install visual-studio-code

code --list-extensions
code --install-extension robertohuertasm.vscode-icons
code --install-extension EditorConfig.EditorConfig
code --install-extension robinbentley.sass-indented
code --install-extension Equinusocio.vsc-material-theme
code --install-extension ms-vscode.Theme-TomorrowKit
code --install-extension TimonVS.ReactSnippetsStandard
code --install-extension saviorisdead.RustyCode
code --install-extension ecmel.vscode-html-css
code --install-extension spywhere.mark-jump
code --install-extension qinjia.view-in-browser
code --install-extension deerawan.vscode-faker
code --install-extension esbenp.prettier-vscode
code --install-extension wayou.vscode-todo-highlight
code --install-extension azemoh.one-monokai
code --install-extension PKief.material-icon-theme
code --install-extension octref.vetur
code --install-extension hollowtree.vue-snippets

# 可选安装 code --install-extension  ms-vscode.csharp
code --list-extensions

# Chrome WWDC Dropbox cheatsheet sourcetree transmit foxmail telegram slack insomnia sitesucker Hyper(Terminal)
brew cask install google-chrome wwdc dropbox cheatsheet sourcetree telegram slack insomnia sitesucker hyper spark

# Intellij
brew cask install intellij-idea webstorm pycharm android-studio appcode #(android sdk)

# genymotion
brew cask install virtualbox genymotion

# gitbook
brew cask install gitbook-editor

# fastlane
brew cask install fastlane
echo 'export PATH="$HOME/.fastlane/bin:$PATH"' >> ~/.zshrc

# sketch for android tools
curl -s "https://get.sdkman.io" | bash
echo 'export PATH="$PATH:$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.zshrc
sdk install gradle

brew install pidcat

brew install imagemagick
npm install -g svgo svg2vectordrawable
