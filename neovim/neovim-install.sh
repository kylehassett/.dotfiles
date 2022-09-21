#!/bin/zsh

echo "Starting neovim install"

echo "Creating .config directories..."

mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua

echo "Downloading and setting up vim-plug and neovim settings"

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.dotfiles/neovim/plugins.vim ~/.config/nvim/plugins.vim
ln -s ~/.dotfiles/neovim/init.lua ~/.config/nvim/init.lua
ln -s ~/.dotfiles/neovim/lua/ ~/.config/nvim/lua/

echo "Neovim's done."
