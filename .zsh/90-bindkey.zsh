# emacs key bindings
bindkey -e

# Shift-tab to complete backward
bindkey '^[[Z' reverse-menu-complete

# prefix search history by (ctrl + p/n)
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# insert last word by (ctrl + ])
autoload -Uz smart-insert-last-word
zle -N insert-last-word smart-insert-last-word
bindkey "^]" insert-last-word
