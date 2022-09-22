#!/bin/zsh

echo "Starting neovim install"

echo "Creating .config directories..."

mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua

echo "Downloading and setting up vim-plug and neovim settings"

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.dotfiles/neovim/plugins.vim ~/.config/nvim/plugins.vim
ln -s ~/.dotfiles/neovim/init.lua ~/.config/nvim/init.lua
mkdir ~/.config/nvim/lua
ln -s ~/.dotfiles/neovim/lua/init-options.lua ~/.config/nvim/lua/init-options.lua
ln -s ~/.dotfiles/neovim/lua/init-plugins-config.lua ~/.config/nvim/lua/init-plugins-config.lua
ln -s ~/.dotfiles/neovim/lua/init-shortcuts.lua ~/.config/nvim/lua/init-shortcuts.lua

echo "Creating log file for neovim mason, or else it'll throw a fit..."
mkdir ~/.cache/nvim
touch ~/.cache/nvim/mason.log

echo "Neovim's done."
