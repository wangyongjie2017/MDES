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

rvm gemset create pods-1.1.0-rc
rvm gemset use pods-1.1.0-rc
gem install cocoapods --pre

rvm use ruby-2.3.0@pods-1.1.0-rc --default

# Carthage
brew update
brew install carthage

# Scrapy
pyenv shell 3.5.0
pip install Scrapy
pip install --upgrade pip

# Mysql
brew install mysql
brew services start mysql

# MangoDB
brew install mongodb
sudo mkdir -p /data/db
sudo chown -R `id -u` /data/db
mongod
mongo

# mysqlworkbench
brew cask install mysqlworkbench

# robomongo
brew cask install robomongo
