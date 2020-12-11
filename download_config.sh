#!/usr/bin/env bash
cd ~

# inputrc
wget https://gist.githubusercontent.com/TzuChiehHung/48016ea4181cfdd10ecf8925d2283b44/raw/d29d189a1b57c3b71df75e71db73222105dfa0f7/.inputrc

bind -f  ~/.inputrc

# gitconfig
wget https://gist.githubusercontent.com/TzuChiehHung/ab0e26a51dd77fe0f79b9e51485d17c1/raw/1e13221f2147adfad082f35df253fc4c7dc70f75/.gitconfig

# vimrc
wget https://gist.githubusercontent.com/TzuChiehHung/8eb57ce55e5d978674c4365c2de8d015/raw/13131cf08eab5ffc34bb0d5721f9f2114fb084f8/.vimrc

# python.vim
mkdir .vim
cd .vim
wget https://gist.githubusercontent.com/TzuChiehHung/e10c3adbf0542d887582b01cb3072ccc/raw/e91c3cf8da616c96be3a12d02fe22becd4106d29/python.vim
