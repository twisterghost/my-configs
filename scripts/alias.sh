# Misc. aliases
alias ..="cd .."
alias resource="source ~/.bash_profile"
alias hosts="$SOFT_EDITOR /etc/hosts"

# Shortcut tmux attach
function attach {
  tmux attach -t $1
}

# Shortcut tmux new -s
function ses {
  tmux new -s $1
}

# Kill a process on the given port
function kill-port() {
  kill -9 `sudo lsof -t -i:$1`
}
