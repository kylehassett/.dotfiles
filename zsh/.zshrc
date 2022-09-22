# Personalization
alias cl="clear && printf '\e[3J'"
alias ff="rg --files --hidden -g "!.git/" -g "!.github/" | fzf-tmux -p --reverse | xargs nvim"
alias la="ls -Fla"
alias nvid="neovide --multigrid $argv"

export EDITOR="nvim"
export PS1="%1~ $ "
export VISUAL="nvim"


# Google cloud
# if [ -f '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc' ]; . '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc'; end


#zplug installs
source ~/.zplug/init.zsh

zplug "dracula/zsh", as:theme
zplug "jeffreytse/zsh-vi-mode"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Hook into direnv KEEP AT THE END OF THE FILE
eval "$(direnv hook zsh)"
