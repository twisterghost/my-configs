# Misc. aliases

# Navigation & tools
alias ..="cd .."
alias resource="source ~/.bash_profile"
alias hosts="$SOFT_EDITOR /etc/hosts"


# FUNCTIONS

# Shortcut tmux attach
function attach {
  tmux attach -t $1
}

# Shortcut tmux new -s
function ses {
  tmux new -s $1
}
