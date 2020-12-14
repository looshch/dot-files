export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

git() {
  if [[ $@ == "rd" ]]; then
    branch=$(git branch | sed -n -e "s/^\* \(.*\)/\1/p") \
    && git checkout develop && git pull && git checkout $branch && git rebase -i develop
  else
    command git "$@"
  fi
}
export -f git
