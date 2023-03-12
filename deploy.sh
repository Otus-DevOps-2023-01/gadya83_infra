#!/bin/bash
chmod u+x ./install_ruby.sh
./install_ruby.sh
chmod u+x ./install_mongodb.sh
./install_mongodb.sh
if (git --version | grep 'command not found' )
then
sudo apt install git-all
fi
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
