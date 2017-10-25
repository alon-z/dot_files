#!/bin/bash
sudo dnf update vim-minimal -y
sudo dnf install -y vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s .config/.vimrc .vimrc
vim +PluginInstall +qall
sudo dnf install -y automake gcc gcc-c++ kernel-devel cmake
sudo dnf install -y python-devel python3-devel
sudo dnf install -y mono-devel
cd ~/.vim/pluggin/YouCompleteMe/
./install.py --clang-completer --omnisharp-completer
