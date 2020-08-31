alias gs="git status"
alias gb="git branch"
alias gbprune="git branch | grep -v master | xargs git branch -D"
alias gc="git checkout"
alias glo="git log --oneline"
alias gcm="git checkout master"
alias gcom="git commit -m"
alias gaa="git add ."
alias gca="git commit --amend"
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'
alias gitwipe="git reset && git checkout . && git clean -fd"
alias beep="echo -ne '\007'"

alias publishcheck="npm pack && tar -xvzf *.tgz && rm -rf package *.tgz"
alias lock="ls | grep lock"
alias lint="npm run lint"
alias format="npm run format"
alias build="npm run build"
alias start="npm run start"

alias sshme="ssh-add -D && ssh-add ~/.ssh/id_rsa_chardos"
alias sshwork="ssh-add -D && ssh-add"

alias lsg="ls | grep $1"

i () {
  if [ $(lock) = "package-lock.json" ]; then
    npm install
  else
    yarn
  fi
}

vers () {
  cat node_modules/$1/package.json | grep version
}

package () {
  code node_modules/$1
}

gpush () {
  current_branch=$(git symbolic-ref HEAD 2>/dev/null) ||
  current_branch="(unnamed branch)"
  git push origin ${current_branch}
}

gpushf () {
  current_branch=$(git symbolic-ref HEAD 2>/dev/null) ||
  current_branch="(unnamed branch)"
  git push -f origin ${current_branch}
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
