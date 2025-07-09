# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gomesluiz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases definition
source ~/.aliases

autoload antigen
# Antigen source
source ~/.dotfiles/antigen/antigen.zsh

# Install oh-my-zsh
antigen use oh-my-zsh

# Install necessary plugins
antigen bundle arialdomartini/oh-my-git
antigen bundle git 

# Default theme
antigen theme ys

antigen apply
