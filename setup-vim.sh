#!/bin/bash

echo "[vim] setting up vim editor." 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/Workspace/dotfiles/vimrc ~/.vimrc
