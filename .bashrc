
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


cd ~/Projects
source virtualenvs/web_api/bin/activate
PS1="\u@(`basename \"$VIRTUAL_ENV\"`) \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# POSTGRES ALIAS
# =============
export PGDATA='/usr/local/var/postgres'
export PGHOST=127.0.0.1
alias postgres-start='pg_ctl -l $PGDATA/server.log start'
alias postgres-stop='pg_ctl stop -m fast'
alias postgres-status='pg_ctl status'
alias postgres-restart='pg_ctl reload'

# GIT ALIAS
# ========
alias list="ls -ld */ | cut -f1 -d'/'"
alias ll='ls -l'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gb='git branch'
alias gd='git diff'
alias gm='git merge'
alias gl='git log'
alias glp='git log --pretty=oneline'
alias glsp='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
