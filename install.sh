#!/bin/sh

link() {
  ln -sf "$HOME/dotfiles/$1" "$HOME/$2"
}

link .xinitrc .xinitrc
link .bashrc .bashrc
link .gitconfig .gitconfig
link .vimrc .vimrc
link .vim .vim

echo "symlinks created"

cd $HOME/dotfiles/dwm && sudo make clean install
cd $HOME/dotfiles/st  && sudo make clean install

echo "compilation finished"
