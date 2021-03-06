alias subl="/usr/bin/vim"
alias mate="/usr/bin/vim"
alias vim="/usr/bin/vim"
alias irb=pry

setopt PROMPT_SUBST
autoload -Uz promptinit
promptinit
prompt rondale

for config_file ($HOME/.zsh/lib/*.zsh); do
  source $config_file
done
  
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

setopt histignorealldups sharehistory

autoload -Uz compinit
compinit

export EDITOR=vi

Path=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
