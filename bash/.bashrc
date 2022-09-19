if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

function git_ps() {
 git branch --no-color 2> /dev/null | sed -e 's/ //g' | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/'
}
#export PS1='$ \[\033[32m\]\w\[\033[35m\] [$(git_ps)]\[\033[00m\]\$ '
export PS1='\H \[\033[35m\](\[\033[32m\]\w\[\033[35m\]) \[\033[00m\]\$ '

export PATH=/opt/homebrew/bin:${PATH}

alias ll='ls -latr'
alias rm='rm -i'
