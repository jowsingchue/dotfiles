#
#  Usage: add the following line into ~/.bash_profile
#
#    source /path/to/this/file
#

# show calendar on terminal startup
cal | grep -w -A4 -B6 --color $(date +%d)

# customize prompt
export PROMPT_COMMAND='echo -e "\n\033[01;30m[`/bin/date +"%F %T"`] ${USER}@${HOSTNAME}\n\033[01;32m`pwd`/ \033[00m"'
export PS1='$ '

# bash completion, pre req: ``brew install bash-completion``
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
