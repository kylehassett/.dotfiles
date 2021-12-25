#!/bin/sh

echo "Bootstraping kylehassett's dotfiles"

/bin/bash ./homebrew/homebrew-install.sh

echo "Working with each program's dotfile now..."

/bin/bash ./git/git-install.sh
/bin/bash ./vscode/vscode-install.sh
/bin/bash ./neovim/neovim-install.sh

echo "Ok done, enjoy."
