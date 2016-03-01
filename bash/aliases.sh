#
#  Usage: add the following line into ~/.bashrc or whatever
#
#    source /path/to/this/file
#

#
# aliases
#

# Docker
alias start_docker="bash --login \
  '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"
alias dip="docker-machine ip default"
alias dp="docker ps"
alias di="docker images"

# git
alias gs="git status"
alias gd="git diff"
alias gg="git lg"

gitloop() {
  for dir in $(ls -d */); do
    echo;
    echo '========' $dir;
    cd $dir;
    git $1;
    cd ..;
  done;
}

# raspi
alias connect_raspi_ttl="sudo screen /dev/ttyUSB0 115200"
alias connect_raspi_ssh="ssh pi@192.168.0.80"

# virtualenv
# alias sv="source .venv/bin/activate"
alias sv='source .venv/bin/activate; export PS1="(${PWD##*/}-venv)$_OLD_VIRTUAL_PS1"'
