# Nathan Hartman's bash profile

# Misc
alias vbp='vi ~/.bashrc'
alias sbp='source ~/.bashrc'

# Git
alias gs='git status'
alias gb='git branch'
alias gd='git diff'
alias gc='git checkout'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcam='git commit -a -m'
alias gl='git log'
alias gf='git fetch'
alias gp='git pull'
alias ga='git add'
alias grh='git reset --hard'

# k8s
alias k='kubectl'
alias kl='kubectl -n kube-logging'
alias kgn='kubectl get nodes'
alias kgp='kubectl get pods'
alias ka='kubectl --all-namespaces'
alias kl='kubectl -n kube-logging'

# CLI
alias ll='ls -la --color=auto'
alias la='ls -la --color=auto'
alias ls='ls --color=auto'
alias cp="rsync -ah --progress"
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias make='clear; colormake'
alias e='emacs'

pushd()
{
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" > /dev/null
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

# Make history more informative
HISTSIZE=10000
HISTFILE=~/.history
HISTCONTROL=ignoredups
HISTCONTROL=erasedups
HISTIGNORE="history:pwd:date:ls:ls *:man *"
HISTTIMEFORMAT="%h %d %H:%M:%S> "
