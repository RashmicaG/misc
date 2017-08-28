#!/bin/bash -e

apt-get update
apt-get install -y curl

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

user=$(whoami)


pushd ~/.vim/bundle/
sudo -u ${user} git clone --branch v1.6 https://github.com/nanotech/jellybeans.vim.git && \
sudo -u ${user} git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree && \
sudo -u ${user} git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin && \
sudo -u ${user} git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim && \
sudo -u ${user} git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/airline
popd

sudo -u ${user} git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
sudo -u ${user} ~/.bash_it/install.sh


# need to run :Helptags to generate help tags
