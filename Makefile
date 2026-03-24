ANTIGEN_PATH=$(HOME)/.dotfiles/antigen/bin/antigen.zsh

all: source update

source:
	ln -sf ~/.dotfiles/aliases ~/.aliases
	ln -sf ~/.dotfiles/bashrc ~/.bashrc
	ln -sf ~/.dotfiles/bash_profile ~/.bash_profile
	ln -sf ~/.dotfiles/zshrc ~/.zshrc

update:
	zsh -c "source $(ANTIGEN_PATH) && antigen selfupdate"
	zsh -c "source $(ANTIGEN_PATH) && antigen update"

antigen:
	git clone https://github.com/zsh-users/antigen.git

install: antigen source
