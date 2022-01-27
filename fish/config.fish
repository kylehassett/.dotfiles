if status is-interactive
    # Commands to run in interactive sessions can go here
end

###
# Setup
###
set PATH ~/.dotfiles/neovide/neovide/target/release/ $PATH

###
# Configuration
###
alias cl "printf '\33c\e[3J'"
alias ls "ls -Fla"
