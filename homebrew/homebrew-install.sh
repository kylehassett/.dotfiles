#!/usr/bin/zsh

echo "Checking if you have Homebrew installed...\n"

if brew --version
then
    echo "You already have it, lovely.\n"
else
    echo "You don't have it, need to install it..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "\n Done installing Homebrew, onto to the good stuff.\n"
fi

echo "Installing the contents of the brewfile..."

cd ~/.dotfiles/homebrew && brew bundle && cd ~/.dotfiles

echo "Great, now you have all of the programs you need/want."
