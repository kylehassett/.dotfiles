if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Path setup
set PATH ~/.dotfiles/neovide/neovide/target/release/ $PATH

# Personalization
alias cl "printf '\33c\e[3J'"
alias ls "ls -Fla"
alias nvid "nvid --frameless --multigrid"

set EDITOR nvim
set VISUAL nvim
