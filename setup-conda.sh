#!/bin/bash

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/tmp/miniconda.sh 
bash ~/tmp/miniconda.sh -b -p $HOME/miniconda
eval "$(/home/gomesluiz/miniconda/bin/conda shell.bash hook)" >> $HOME/.bashrc
source $HOME/.bashrc
conda init

