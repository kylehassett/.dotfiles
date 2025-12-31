# Personalization
alias cl="clear && printf '\e[3J'"
alias ff="rg --files --hidden -g "!.git/" -g "!.github/" | fzf-tmux -p --reverse | xargs nvim"
alias ls="/bin/ls -G"
alias ll="ls -Fla"
alias nvid="neovide $argv --no-fork"
alias resource="source ~/.zshrc"
alias pysource="source venv/bin/activate"

export CGO_ENABLED=0
export EDITOR="nvim"
export PS1="%1~ $ "
export VISUAL="nvim"

# FZF
source <(fzf --zsh)

# Google cloud
# if [ -f '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc' ]; . '/Users/kylehassett/Development/google-cloud-sdk/path.fish.inc'; end


# Check for .nvmrc file and use specified Node version
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc


# Path changes
export PATH=$PATH:/Users/kylehassett/go/bin:/Users/kylehassett/.cargo/bin
export JAVA_HOME=$(brew --prefix openjdk)
export PATH=$JAVA_HOME/bin:$PATH

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn


# Hook into direnv KEEP AT THE END OF THE FILE
eval "$(direnv hook zsh)"
