ghq-fzf-cd() {
  declare -r REPO_NAME="$(ghq list >/dev/null | fzf-tmux --reverse +m)"
  [[ -n "${REPO_NAME}" ]] && cd "$(ghq root)/${REPO_NAME}"
}

M() {
  declare -r DEFAULT_BRANCH="$(git rev-parse --abbrev-ref origin/HEAD | cut -c8-)"
  declare -r WORKING_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
  git checkout $DEFAULT_BRANCH && git branch -D $WORKING_BRANCH && git pull
}
