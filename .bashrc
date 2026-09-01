# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

PATH="$PATH:~/.local/bin"

PS1='[\u@\h \W]\$ '
