alias subl="/usr/bin/vim"
alias mate="/usr/bin/vim"
alias vim="/usr/bin/vim"
alias irb=pry
alias ls="ls -lah"

setopt PROMPT_SUBST
autoload -Uz promptinit
promptinit
prompt wunjo

setopt histignorealldups sharehistory

autoload -Uz compinit
compinit

export EDITOR=vi

Path=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
