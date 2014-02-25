#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git
sudo apt-get install -y curl
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
# sudo add-apt-repository -y ppa:cassou/emacs # sudo apt-get -qq update # sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg 
# Install vim
sudo apt-get install -y vim

#Install oh-my-zsh
sudo apt-get install -y zsh
sudo curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
#sudo chsh -s /bin/zsh
# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# git pull and install dotfiles as well
#git clone https://github.com/startup-class/dotfiles.git
#ln -sb dotfiles/.screenrc .
#ln -sb dotfiles/.bash_profile .
#ln -sb dotfiles/.bashrc .
#ln -sb dotfiles/.bashrc_custom .
#ln -sf dotfiles/.emacs.d .

git clone https://github.com/rupa/z.git
sudo cp z/z.sh /usr/local/bin/z.sh
chmod +x /usr/local/bin/z.sh
sudo rm -rf z

