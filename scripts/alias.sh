# Misc. aliases

# Navigation & tools
alias ..="cd .."
alias resource="source ~/.bash_profile"
alias hosts="$SOFT_EDITOR /etc/hosts"


## Mini scripts
function attach {
  tmux attach -t $1
}

# Strip all trailing whitespace from files, recursively.
alias striptrailspace="ack --print0 -l '[ \t]+$' | xargs -0 -n1 perl -pi -e 's/[ \t]+$//'"
