# Personalization
alias cl="clear && printf '\e[3J'"
alias ff="rg --files --hidden -g "!.git/" -g "!.github/" | fzf-tmux -p --reverse | xargs nvim"
alias ls="/bin/ls -G"
alias la="ls -Fla"
alias nvid="neovide --multigrid --nofork $argv"

export EDITOR="nvim"
export PS1="%1~ $ "
export VISUAL="nvim"


# Google cloud
# if [ -f '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc' ]; . '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc'; end


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Path changes
export PATH=$PATH:/Users/kylehassett/go/bin


[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn


# Hook into direnv KEEP AT THE END OF THE FILE
eval "$(direnv hook zsh)"

