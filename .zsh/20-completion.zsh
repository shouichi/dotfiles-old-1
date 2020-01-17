# insert the first match immediately
setopt MENU_COMPLETE

# spelling correction
setopt CORRECT

# append slash to dir when complete
setopt AUTO_PARAM_SLASH

# use cache for completion
zstyle ':completion:*' use-cache true

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'

# open menu when completion
zstyle ':completion:*' menu select=2

# color completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

if [ -d $HOME/local/google-cloud-sdk ]; then
	source $HOME/local/google-cloud-sdk/completion.zsh.inc
fi

if [ -x "$(command -v kubectl)" ]; then
	source <(kubectl completion zsh)
fi
