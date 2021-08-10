ghq-fzf-cd() {
  declare -r REPO_NAME="$(ghq list >/dev/null | fzf-tmux --reverse +m)"
  [[ -n "${REPO_NAME}" ]] && cd "$(ghq root)/${REPO_NAME}"
}

M() {
  declare -r BRANCH="$(git rev-parse --abbrev-ref HEAD)"
  git checkout master && git branch -D $BRANCH && git pull
}
