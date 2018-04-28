#!/usr/bin/env bash

# Install required packages
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get update
sudo apt-get -y install nodejs
sudo npm install -g hexo-cli

# clone blog from github and install
INSTALL_DIR=$HOME/blog

git clone git@github.com:TzuChiehHung/TzuChiehHung.github.io.git --branch source $INSTALL_DIR
cd $INSTALL_DIR
npm install

