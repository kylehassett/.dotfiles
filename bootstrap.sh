#!/bin/sh

echo "Bootstraping kylehassett's dotfiles"

/bin/bash ./homebrew/homebrew-install.sh

echo "Working with each program's dotfile now..."

/bin/bash ./git/git-install.sh
/bin/bash ./vscode/vscode-install.sh
/bin/bash ./neovim/neovim-install.sh
/bin/bash ./fish/fish-install.sh

echo "Ok done, steps that you have to do now..."

echo "1. XCode      - Sign into app store, download, then install command line tools"
echo "2. Spectacle  - Change the keyboard shortcuts"
echo "3. Authy      - Sign in and setup"
echo "4. Bitwarden  - Sign in and setup"
echo "5. Chrome     - Sign in and setup"
echo "6. Be Focused - Download and configure"
