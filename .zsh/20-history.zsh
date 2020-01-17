export HISTFILE=${HOME}/.zsh_history

# in-mem
export HISTSIZE=10000

# persist
export SAVEHIST=10000000

# with timestamp
setopt EXTENDED_HISTORY

# share between sessions
setopt share_history

# remove duplicated
setopt hist_ignore_all_dups

# remove spaces
setopt hist_reduce_blanks
