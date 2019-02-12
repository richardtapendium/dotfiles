alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias glo="git log --oneline"
alias gcm="git checkout master"
alias gcom="git commit -m"
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'
alias gitwipe="git reset && git checkout . && git clean -fd"

alias lint="npm run lint"
alias build="npm run build"
alias start="npm run start"

alias publishcheck="npm pack && tar -xvzf *.tgz && rm -rf package *.tgz"

gpush () {
  current_branch=$(git symbolic-ref HEAD 2>/dev/null) ||
  current_branch="(unnamed branch)"
  git push origin ${current_branch}
}

gpull () {
  current_branch=$(git symbolic-ref HEAD 2>/dev/null) ||
  current_branch="(unnamed branch)"
  git pull origin ${current_branch}
}

# Autojump - https://github.com/wting/autojump
# To install: brew install autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# To install: brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
