# change directory without cd
setopt AUTO_CD

# push path to stack when cd
setopt AUTO_PUSHD

cdpath=($HOME $HOME/src $HOME/src/github.com $HOME/tabereco $HOME/anipos)

# prioritize current dir than cdpath
zstyle ':completion:*:cd:*' tag-order local-directories path-directories
