#!/usr/bin/env bash

# Install Shutter Screenshot Tool
sudo add-apt-repository -y ppa:linuxuprising/shutter
sudo apt-get update
sudo apt-get -y install shutter

# Install Peek GIF recorder
sudo add-apt-repository -y ppa:peek-developers/stable
sudo apt-get update
sudo apt-get -y install peek
