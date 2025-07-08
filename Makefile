all: pull source update

source:
	ln -sf ~/.dotfiles/aliases ~/.aliases

pull:
	git pull

update:
	antigen selfupdate
	antigen update

antigen:
	git clone https ://github.com/zsh-users/antigen.git

install: antigen source
