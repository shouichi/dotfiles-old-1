if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug.git ~/.zplug
fi

source ~/.zplug/init.zsh

# Pure prompt theme and its deps
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure", use:"pure.zsh", as:"theme"

zplug 'dracula/zsh', as:theme

# completion
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug "zsh-users/zsh-history-substring-search", hook-build:"__zsh_version 4.3"

# fzf and its deps
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
zplug "junegunn/fzf", use:"shell/*.zsh"

# NOTE: prefer faster boot, manually install when new plugin is added.
# # Install newly add packages.
# if ! zplug check --verbose; then
#   printf "Install? [y/N]: "
#   if read -q; then
#     echo; zplug install
#   fi
# fi

zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -x "$(command -v direnv)" ]; then
	eval "$(direnv hook zsh)"
fi

if [ -e $HOME/.asdf/asdf.sh ]; then
  . $HOME/.asdf/asdf.sh
  fpath=(${ASDF_DIR}/completions $fpath)
  autoload -Uz compinit && compinit
fi
