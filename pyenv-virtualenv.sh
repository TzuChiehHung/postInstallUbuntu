#!/usr/bin/env bash

sudo apt-get -y install \
	curl\
	libssl-dev\
	libbz2-dev\
	libreadline-dev\
	libsqlite3-dev

curl https://pyenv.run | bash

echo '' >> ~/.bashrc
echo '# pyenv' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

source ~/.bashrc

