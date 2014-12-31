export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# hide computer-name and username, show only current dir
export PS1="\r\n\[\e[1;33m\]\w \[\e[0;37m\] "

###################
##### Aliases #####
###################

# Vagrant Stuff
alias vm="ssh vagrant@127.0.0.1 -p 2222"

# Laravel Project Directory
alias Homestead="cd /Users/jowsingchue/Developer/web/laravel/Homestead"
alias larabook="cd /Users/jowsingchue/Developer/web/laravel/larabook"
alias foodtimesung="cd /Users/jowsingchue/Developer/web/laravel/foodtimesung"

# Copy ssh key to clipboard
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"

# PHP XAMPP
#alias php="/Applications/XAMPP/xamppfiles/bin/php"

# DevDoc
alias devdoc-run="cd ~/Code/devdocs/ && rackup"
alias devdoc-update="cd ~/Code/devdocs/ && git pull origin master && thor docs:download --all"
################
##### Path #####
################

# others at ~/bin
export PATH="/Users/jowsingchue/bin:$PATH"

# git
export PATH="/usr/local/git/bin:$PATH"

# android sdk
export PATH="/Users/jowsingchue/Developer/android/sdk/platform-tools:$PATH"
export PATH="/Users/jowsingchue/Developer/android/sdk/tools:$PATH"

# composer
export PATH="/Users/jowsingchue/.composer/vendor/bin:$PATH"

# xampp
export PATH="/Applications/XAMPP/xamppfiles/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/jowsingchue/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/jowsingchue/google-cloud-sdk/completion.bash.inc'