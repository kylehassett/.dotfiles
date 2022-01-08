#!/bin/bash

echo "Starting neovim install"

echo "Creating .config directories..."

if [ ! -d "~/.config" ]
then
    mkdir ~/.config
fi

if [ ! -d "~/.config/nvim" ]
then
    mkdir ~/.config/nvim
fi

echo "Downloading and setting up vim-plug"

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.dotfiles/neovim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/neovim/plugins.vim ~/.config/nvim/plugins.vim

echo "Neovim's done."
