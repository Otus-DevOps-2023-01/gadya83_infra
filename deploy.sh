#!/bin/bash
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
sudo apt update
sudo apt install mongodb -y
systemctl -q is-active mongodb && echo "$SERVICE mongodb was active"
sudo systemctl start mongodb
sudo systemctl enable mongodb
sudo systemctl enable mongod
if (git --version | grep 'command not found' )
then
sudo apt install git-all
fi
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
