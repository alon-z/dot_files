#!/bin/bash
sudo dnf update vim-minimal -y
sudo dnf install -y vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s .config/.vimrc .vimrc
vim +PluginInstall +qall
sudo dnf install automake gcc gcc-c++ kernel-devel cmake
sudo dnf install python-devel python3-devel
sudo dnf install mono-devel
cd ~/.vim/bundle/YouCompleteMe/
./install.py --clang-completer --omnisharp-completer
