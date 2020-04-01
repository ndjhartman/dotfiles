#!/bin/bash

DOTFILES="\
		.vim/vimrc \
		.tmux/.tmux.conf \
		.tmux/.tmux.conf.local \
		.bash_profile \
		"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


for FILE in $DOTFILES; do
		ln -s -f "$DIR"/"$FILE" $HOME
done 

source $HOME/.bash_profile
