#!/bin/sh
export PATH=~/bin:$PATH
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export txtred="\e[38;5;88m"
export bldgrn="\e[38;5;65m"
export txtpur="\e[0;35m"
export txtblue="\e[0;34m"
export txtyellow="\e[0;33m"
export txtrst="\e[0m"
export DHOST=`hostname -s`
export LANG=en_US.UTF-8

# Alias commands
alias gs='git status -sb'
alias gl='git log --oneline'
alias cls='clear'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# vcprompt: https://github.com/TabMorty/morten_scripts/vcprompt
pbtp () {
    printf "\n$txtred%s: $bldgrn%s $txtpur%s$txtrst\n" "$USER@$DHOST" "$PWD" "$(vcprompt)"
}

export PROMPT_COMMAND='pbtp'
export PS1="->"
