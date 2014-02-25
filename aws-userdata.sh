sudo apt-get install -y git
git clone https://github.com/yandreiy/aws.git
chmod +x aws/setup.sh
. aws/setup.sh

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp aws/.vimrc ~/.vimrc
cp aws/.zshrc ~/.zshrc
vim +BundleInstall +qall

rm -rf aws
