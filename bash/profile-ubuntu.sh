#
#  Usage: add the following line into ~/.bashrc
#
#    source /path/to/this/file
#

# 256 color
[ -z "$TMUX" ] && export TERM=xterm-256color

# make bash terminal wrap text
LESS=-FRX; export LESS

# show calendar on terminal startup
cal

# customize prompt
export PROMPT_COMMAND='echo -e "\n\033[01;30m[`/bin/date +"%F %T"`] ${USER}@${HOSTNAME}\n\033[01;32m`pwd`/ \033[00m"'
export PS1='$ '

export EDITOR='vim'

# use bash completion, if available
[[ $PS1 && -f /etc/bash_completion ]] && . /etc/bash_completion

# prevent creation of *.pyc
PYTHONDONTWRITEBYTECODE=1
