#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias music='tmux new-session -s $$ "tmux source-file ~/.ncmpcpp/tsession"'
_trap_exit() { tmux kill-session -t $$; }
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="${PATH}:${HOME}/.local/bin/"
