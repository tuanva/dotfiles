
PATH=/usr/local/bin:/usr/local/mysql/bin:opt/bin:/Users/tuanva/bin:$PATH
export PATH

# tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# UTF-8 input
LCCTYPE=enUS.UTF-8

source ~/.bash_prompt.new

# http://blog.taylormcgann.com/tag/prompt-color/
# ls alias for color-mode
alias ll='ls -lhaG'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# git commands simplified
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\ -f2'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'

#refresh shell
alias reload='source ~/.profile'
# Change prompt
#PS1_OLD=${PS1}
#export PS1='\[\033[0;32m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] $ '

function tree {
	find ${1:-.} -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}

function get_pwd() {
  echo "${PWD/$HOME/~}"
}
