#!/usr/bin/env bash

sudo apt-get -y install jq powerline

echo "" >> ~/.bashrc
echo "# Powerline" >> ~/.bashrc
echo "POWERLINE_SCRIPT=/usr/share/powerline/bindings/bash/powerline.sh" >> ~/.bashrc
echo "if [ -f \$POWERLINE_SCRIPT ]; then" >> ~/.bashrc
echo "source \$POWERLINE_SCRIPT" >> ~/.bashrc
echo "fi" >> ~/.bashrc

# install fonts

mkdir -p ~/.fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O ~/.fonts/PowerlineSymbols.otf
mkdir -p ~/.config/fontconfig/conf.d/
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -O ~/.config/fontconfig/conf.d/10-powerline-symbols.conf

fc-cache -vf ~/.fonts/

# install fonts for vscode
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# show branch name
POWERLINE_CONFIG=/usr/share/powerline/config_files/config.json
if [ -f $POWERLINE_CONFIG ]; then
	sudo jq '.ext["shell"].theme="default_leftonly"'   <$POWERLINE_CONFIG > config.json
	sudo mv config.json $POWERLINE_CONFIG
fi
