#!/usr/bin/env bash

sudo apt-get install tmux

cd
git clone https://github.com/TzuChiehHung/.tmux.git
cd .tmux
git checkout config
cp .tmux.conf.local ../.
cd
ln -s -f .tmux/.tmux.conf

