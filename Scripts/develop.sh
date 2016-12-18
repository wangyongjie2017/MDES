# Docker
brew cask install docker
docker --version
docker ps

# Express & Gulp
npm install -g express-generator gulp-cli

# Cocoapods
rvm gemset create pods-1.0.0
rvm gemset use pods-1.0.0
gem install cocoapods -v 1.0.0

rvm gemset create pods-1.0.1
rvm gemset use pods-1.0.1
gem install cocoapods -v 1.0.1

rvm gemset create pods-1.1.1
rvm gemset use pods-1.1.1
gem install cocoapods -v 1.1.1

rvm use ruby-2.3.0@pods-1.1.1 --default

rvm gemset list
pod --version

gem install cocoapods-playgrounds

# Carthage
brew update
brew install carthage
carthage help

# Scrapy
pyenv shell 3.5.0
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
