# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle :compinstall filename '/home/sergiy/.zshrc'

autoload -Uz compinit compaudit
compinit
# bash style word movements
autoload -U select-word-style
select-word-style bash
# custom path
export PATH="$HOME/bin:$PATH"
# prompt
autoload -Uz colors && colors
PROMPT="%{$fg[magenta]%}%n@%m%{$reset_color%} %2~ %B»%b "
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=$ZDOTDIR/history
HISTSIZE=100000
SAVEHIST=100000
setopt alwaystoend completeinword
setopt histignorespace histignoredups extendedhistory histverify
setopt autocd extendedglob autopushd incappendhistory sharehistory 
setopt pushdignoredups pushdminus
bindkey -e
# End of lines configured by zsh-newuser-install
# Aliases
source $HOME/.config/shell/aliases
# less
export LESS='-i -R'
export LESSHISTFILE=/dev/null
where -p calcurse >/dev/null
[[ $? -eq 0 && -z $TMUX && -o login ]] && calcurse -r14
#[[ -z $TMUX && -o login ]] && update_ip &
