# 
# .bashrc
#
# created on 2015.9.10
#
# by hwj4477@gmail.com
#


# for prompt
source ~/.bash/colors
source ~/.bash/git-prompt
export PS1="\[$bldcyn\]\u@\h\[$txtrst\]:\[$bldblu\]\w\[$txtgrn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"; find_git_branch; find_git_dirty'

# configurations
umask 027
export DISPLAY=:0.0
export EDITOR="/usr/bin/vim"
export SVN_EDITOR="/usr/bin/vim"
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"
export TERM="xterm-color"
export CLICOLOR=true
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# for Golang
if [ `which go` ] ; then
    export GOROOT=`go env GOROOT`
    export GOPATH=$HOME/srcs/go
    export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
fi

# common aliases
alias ls="ls -G"
alias ll="ls -G -l"
alias grep="grep --color=auto"

# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
