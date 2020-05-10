# Nathan Hartman's bash profile

# Misc
alias vbp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'

# Git
alias gs='git status'
alias gd='git diff'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gl='git log'
alias gf='git fetch'
alias gp='git pull'
alias ga='git add'
alias grh='git reset --hard'


# CLI
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias e='emacs'
alias cat='bat'
nh() { nohup "$1" > /dev/null 2>&1 < /dev/null & }
lc() { find . -type f -name ""$1"" | xargs grep ""$2"" ; }

pushd()
{
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" > /dev/null
  pwd
}

pushd_builtin()
{
  builtin pushd > /dev/null
  pwd
}

popd()
{
  builtin popd > /dev/null
  pwd
}

alias cd='pushd'
alias back='popd'
alias flip='pushd_builtin'

# k8s
alias k='kubectl'
alias kl='kubectl -n kube-logging'
alias kgn='kubectl get nodes'
alias kgp='kubectl get pods'
alias ka='kubectl --all-namespaces'
alias kl='kubectl -n kube-logging'
