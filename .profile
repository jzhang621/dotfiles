export EDITOR="vim"
export GREP_OPTIONS='--color=auto'
export CDPATH="~/"

set -o vi

# aliases 
alias reload=". ~/.profile" 
alias ls="ls -G -l"
alias u="cd .."

export PYTHONSTARTUP=$HOME/.pystartup.py

# config files
alias profile="vim ~/.profile"
alias vimrc="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf"
alias input="vim ~/.inputrc"
alias ptpython="ptpython --vi"

alias c="clear"
alias downloads='cd ~/Downloads'

# -------- TMUX -------------
alias tmuxls="tmux list-sessions"

# processes running on port
alias ports="lsof -i"

# mysql 
alias mysql_start="mysql.server start"
alias mysql_stop="mysql.server stop"
alias mysql="mysql --auto-rehash -u root -p"
alias postgres_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

# python path
# PYTHONPATH="/Users/jzhang621/Workspace/Projects/d3:$PYTHONPATH"
# export PYTHONPATH

# quick file navigation

export MARKPATH=$HOME/.marks
function jump {
  cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}

function mark {
  mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}

function unmark {
  rm -f $MARKPATH/$1
}

function marks {
  ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- && echo
}


# set-up basic flask config files
function create_flask {
  cp -R ~/Workspace/Util/flask/* .
}

# del all .swp files
alias del_swp="find . -name '.*.sw[op]' | xargs rm -f"
alias del_pyc="find . -name '*.pyc' | xargs rm -f"

#change prompt
PS1="\h|\W: "

#for TT ruby on rails app
export S3_KEY=AKIAJDLRVP4ONVGK46RQ
export S3_SECRET=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
export S3_BUCKET_NAME=brotherresume
export S3_REGION=us-west-1

# virtualenvwrapper
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper_lazy.sh

alias port_forwarding='sudo ssh -L 80:localhost:5000 jzhang621@j'

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
