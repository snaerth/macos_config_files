# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export SHELL=/bin/zsh
exec /bin/zsh -l

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
