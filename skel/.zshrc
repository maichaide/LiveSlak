# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
setopt autocd
setopt appendhistory share_history autocd extendedglob nomatch notify
unsetopt beep

bindkey -e
#bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^i' expand-or-complete-prefix
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/live/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Added by user here.
REPORTTIME=10

lsp ()
{
	ls -1 "/var/log/packages/$@"* |xargs -i basename {}
}

source $HOME/.git-prompt.sh	
source $HOME/.git-completion.zsh
setopt PROMPT_SUBST ; PS1='%? [%m %c$(__git_ps1 " (%s)")]
%# '

export PATH=$HOME/bin:$PATH:/sbin:/usr/sbin
export EDITOR=vim
export PROXYCHAINS_CONF_FILE=~/.proxychains.conf

# Syntax Highlighting 
source $HOME/.zsh-syntax-highlighting.zsh

alias ls="ls $LS_OPTIONS"
alias ll="ls -al $LS_OPTIONS"
alias gits='git status'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'