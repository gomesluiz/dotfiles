#!/bin/bash

# fill variables with own values.
keyspath  = '' # ssh keys source secret path. 
gituser   = '' # git user name
gitemail  = '' # git user e-mail

# Set up ssh.
echo "[ssh] setting up keys."
if [ ! -d ~/.ssh/ ]
then
	mkdir ~/.ssh 
	if [ ! -f $keyspath/id_rsa ] || [ !  $keyspath/id_rsa.pub ]
	then
		echo "[ssh] keys files do not found!"
		exit 1 
	fi

	cp id_rsa id_rsa.pub ~/.ssh

	chmod 700 ~/.ssh 
	chmod 600 ~/.ssh/id_rsa
	chmod 644 ~/.ssh/id_rsa.pub  
else 
	echo "[ssh] keys already set up"
fi


echo "[git] setting up git globals."
git config --global color.ui true
git config --global user.name "$gitusuer" 
git config --global user.email "$gitemail" 

ssh -T git@github.com

echo "[vim] setting up vim editor." 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/Workspace/dotfiles/vimrc ~/.vimrc

