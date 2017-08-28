#!/bin/bash

apt-get install -y curl

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

sudo -u rashmica cd ~/.vim/bundle/ && git clone --branch v1.6 https://github.com/nanotech/jellybeans.vim.git \
 && git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree \
 && git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin \
 && git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim \
 && git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/airline

sudo -u rashmica git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
sudo -u rashmica ~/.bash_it/install.sh


# need to run :Helptags to generate help tags
