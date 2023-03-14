#!/bin/bash
if (git --version | grep 'command not found' )
then
sudo apt install git-all
fi
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
