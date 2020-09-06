source ~/.bashrc

PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:$HOME/bin
# PATH=$PATH:$HOME/.composer/vendor/bin
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
PATH=$PATH:/Users/jgoldsmith/Library/Python/2.7/bin

export EDITOR='code' # Previously 'subl -w'
export NODE_PATH='/usr/local/lib/node_modules'

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# RVM
# Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# MySQL
# MYSQL=/usr/local/mysql/bin
# export PATH=$PATH:$MYSQL
# PATH=$PATH:$MYSQL
# export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

source ~/git-completion.bash

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

export PS1='\n'$Color_Off$White$Color_Off'[ '$Blue'\W'$Color_Off$Yellow'`__git_ps1` '$Color_Off$White\]$Color_Off$Blue' -> '$Color_Off

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Misc
alias ..="cd .."
alias goto.sites="cd ~/Sites"
alias open.bashprofile="$EDITOR ~/.bash_profile"
alias open.bashrc="$EDITOR ~/.bashrc"
alias source.bashprofile="source ~/.bash_profile"
alias sbp="source ~/.bash_profile"
alias source.bashrc="source ~/.bashrc"
alias sbrc="source ~/.bashrc"
alias ls="ls -laGph"
alias open.hosts="$EDITOR /etc/hosts"
alias pg="psql"
alias open="open . -R"
alias rm="rm -iv"
alias buuc="brew update && brew upgrade && brew cleanup"

# Bundler
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

# PHP
# alias phart="php artisan"

# Git
# alias gs="git status"
# alias gl="git log --oneline"
# alias gfo="git fetch origin -v"
# alias grh="git reset --hard"
# alias gk="gitk --all"
# alias gco="git checkout"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# NPM
alias npms="cat ./package.json | jq -r '.scripts | to_entries[] | [.key] | @csv'"
alias npmnuke="rm -rf ./node_modules && rm ./package-lock.json"

# Docker
alias dockerc="docker-compose"
