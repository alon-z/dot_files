#!/bin/bash
sudo dnf update vim-minimal -y
sudo dnf install -y vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s .config/.vimrc .vimrc
