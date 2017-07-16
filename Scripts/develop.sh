# Docker (Need Config)
brew cask install docker-toolbox
docker --version
docker ps

# Express & Gulp
npm install -g express-generator gulp-cli typings apidoc

# Cocoapods

rvm gemset create pods-1.2.0
rvm gemset use pods-1.2.0
gem install cocoapods -v 1.2.0

rvm gemset create pods-1.2.1
rvm gemset use pods-1.2.1
gem install cocoapods

rvm use ruby-2.3.0@pods-1.2.1 --default

rvm gemset list
pod --version

gem install cocoapods-playgrounds
rvm @global do gem install xcpretty

# Carthage
brew update
brew install carthage
carthage help

# Scrapy
pyenv shell 3.6.1
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
brew install yarn
brew uninstall node
echo 'export PATH="$PATH:`yarn global bin`"' >> ~/.zshrc

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
apm install file-icons git-time-machine pigments project-manager emmet atom-beautify language-swift language-rust markdown-writer markdown-pdf markdown-preview-plus
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
# 可选安装 code --install-extension  ms-vscode.csharp
code --list-extensions

# Chrome WWDC Dropbox cheatsheet sourcetree transmit foxmail telegram slack insomnia sitesucker Hyper(Terminal)
brew cask install google-chrome wwdc dropbox cheatsheet sourcetree telegram slack insomnia sitesucker hyper spark

# Intellij
brew cask install intellij-idea webstorm pycharm android-studio #(android sdk)

# genymotion
brew cask install virtualbox genymotion

# gitbook
brew cask install gitbook-editor

# fastlane
brew cask install fastlane
echo 'export PATH="$HOME/.fastlane/bin:$PATH"' >> ~/.zshrc
