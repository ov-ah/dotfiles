#!/bin/sh

link() {
  ln -sf "$HOME/dotfiles/$1" "$HOME/$2"
}

link .xinitrc .xinitrc
link .bashrc .bashrc
link .gitconfig .gitconfig
link .vimrc .vimrc
link .vim .vim
