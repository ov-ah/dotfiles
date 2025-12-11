#!/bin/bash

link()
{
	if (($# != 2)); then
		ln -sfn $HOME/dotfiles/$1 $HOME/$1
	else
		ln -sfn $HOME/dotfiles/$1 $HOME/$2
	fi
}

link .vimrc
link .bashrc
link .gitconfig
link .xinitrc
