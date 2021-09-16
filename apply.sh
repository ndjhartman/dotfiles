#!/bin/bash

DOTFILES="\
		.vim/ \
		.tmux/.tmux.conf \
		.tmux/.tmux.conf.local \
		.bashrc \
		.Xmodmap \
		.config/* \
		"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


for FILE in $DOTFILES; do
		ln -s -f "$DIR"/"$FILE" $HOME
done 

sudo apt install -y \
	bat \
	tldr \
	colormake \
	git \


source $HOME/.bashrc
