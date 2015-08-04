# .bashrc

set -o vi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh 
# User specific aliases and functions

alias vi=vim
alias ls='ls -G'
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias newterm='urxvt &>/dev/null &'
alias shutitdown='sudo shutdown -hP now'
alias minecraft='java -Xmx1024M -Xms512M -cp minecraft.jar net.minecraft.LauncherFrame'

# Lanetix aliases
alias lxstart="cd ui && nvm exec npm start & cd auth && nvm exec npm start & cd search && nvm exec npm start & cd api && nvm exec npm start &"
alias lxrunning="lsof -i :5000-5100"
alias lxpsql='vagrant ssh --command "sudo -u postgres psql -d lanetix"'

# Setup Prompt

BLUE="\[\033[0;34m\]"
CYAN="\[\033[0;36m\]"
NONE="\[\033[0m\]"
PURPLE="\[\033[0;35m\]"
GREEN="\[\033[0;32m\]"
PS1="${PURPLE}$(scutil --get ComputerName)${GREEN}\$(__git_ps1) ${CYAN}\W ${BLUE}\$ ${NONE}" 

# Environment Variables

export PYTHONPATH=~/aise:~/Documents/research/Masters/python:$PYTHONPATH
export PYTHONPATH=/usr/local/lib/paraview-3.8/site-packages/:$PYTHONPATH
export PYTHONPATH=/opt/visit/current/linux-x86_64/lib:$PYTHONPATH
export PYTHONPATH=~/preprocessor:$PYTHONPATH
export FIPY_VIEWER='matplotlib'
export SVN_EDITOR=vim
export EDITOR=vim
export PATH=~/aise:/usr/local/bin:$PATH
export PATH=/opt/android-sdk/platform-tools:/opt/android-sdk/tools:$PATH
export PATH=/opt/visit/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export AUTO_DIR=/usr/local/auto
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '
export PS3DEV=/usr/local/ps3dev
export PSL1GHT=$PS3DEV/psl1ght
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$PSL1GHT/host/bin
export PATH=$PATH:$PS3DEV/host/ppu/bin
export PATH=$PATH:$PS3DEV/host/spu/bin
export PATH=~/preprocessor:$PATH
export PATH=$PATH:/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources
export PATH=$PATH:/usr/local/Cellar/ruby/2.0.0-p247/bin
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export GOPATH="$HOME/gocode"
export PATH="$GOPATH/bin:$PATH"
export RUN_ON_HOST=*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
