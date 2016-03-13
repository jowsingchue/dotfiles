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

# use bash completion, if available
[[ $PS1 && -f /etc/bash_completion ]] && . /etc/bash_completion

# prevent creation of *.pyc
PYTHONDONTWRITEBYTECODE=1


# # =============================
# # python local path installed via:
# #   pip install --user [packages]
# export PYTHONPATH=$PYTHONPATH:~/.local/lib/python2.7/site-packages/
#
# # =============================
# # npm install globally at $HOME
# #   http://stackoverflow.com/questions/10081293
#
# # NPM packages in homedir
# NPM_PACKAGES="$HOME/.npm-packages"
#
# # Tell our environment about user-installed node tools
# PATH="$NPM_PACKAGES/bin:$PATH"
# # Unset manpath so we can inherit from /etc/manpath via the `manpath` command
# unset MANPATH  # delete if you already modified MANPATH elsewhere in your configuration
# MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
#
# # Tell Node about these packages
# NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
