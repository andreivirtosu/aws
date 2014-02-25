#!/bin/bash

sudo apt-get install -y git
git clone https://github.com/yandreiy/aws.git
chmod +x aws/setup.sh
. aws/setup.sh

cp aws/.vimrc ~/.vimrc
cp aws/.zshrc ~/.zshrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

rm -rf aws
