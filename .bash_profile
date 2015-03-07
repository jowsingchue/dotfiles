export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
PS1="\n\e[0;36m\]\u\e[0;37m\]@\e[0;34m\]\h \e[1;32m\]\w\n\[\e[0;37m\]$ "


###############################################################################
##### Aliases #####
###############################################################################

# Copy ssh key to clipboard
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"

# PHP XAMPP
#alias php="/Applications/XAMPP/xamppfiles/bin/php"

# Go to XAMPP htdocs directory
alias htdocs="cd /Applications/XAMPP/xamppfiles/htdocs"

# Go to AMPPS www directory
alias www="cd /Applications/AMPPS/www && echo 'cd /Applications/AMPPS/www'"
alias code="cd /Users/jowsingchue/Data/working/code && echo 'cd /Users/jowsingchue/Data/working/code'"

# DevDoc
alias devdoc-run="cd ~/Code/devdocs/ && rackup"
alias devdoc-update="cd ~/Code/devdocs/ && git pull origin master && thor docs:download --all"


###############################################################################
##### Path #####
###############################################################################

# composer
export PATH="~/.composer/vendor/bin:$PATH"

# AMPPS php
# export AMPPS_PHP=/Applications/AMPPS/php-5.4/bin
# export PATH="$AMPPS_PHP:$PATH"


#source '/Users/jowsingchue/google-cloud-sdk/completion.bash.inc'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="/Users/jowsingchue/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
