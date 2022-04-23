#!/bin/bash

echo "[vim] setting up vim editor." 

# Create a soft link to user vimrc
if [ -f ~/.vimrc ]; then 
  mv ~/.vimrc ~/.vimrc.old 
elif [ -L ~/.vimrc ]; then 
  rm -f ~/.vimrc
fi

ln -s ~/Workspace/dotfiles/vimrc ~/.vimrc

# Dowload Vundle manager plugin. 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install YouCompleteMe dependencies for Fedora 35. 
sudo dnf install cmake gcc-c++ make python3-devel

# Install C and Java completers. The Python is installed by default.
python3 /home/gomesluiz/.vim/bundle/YouCompleteMe/install.py --clang-completer --java-completer
