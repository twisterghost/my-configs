# Misc. aliases

# Navigation & tools
alias ..="cd .."
alias cls="clear;pwd;ls"
alias resource="source ~/.bash_profile"
alias edit-config="$SOFT_EDITOR ~/my-configs/bash-profile.sh"
alias edit-profile="$SOFT_EDITOR ~/.bash_profile"
alias hosts="$SOFT_EDITOR /etc/hosts"


## Mini scripts

# Strip all trailing whitespace from files, recursively.
alias striptrailspace="ack --print0 -l '[ \t]+$' | xargs -0 -n1 perl -pi -e 's/[ \t]+$//'"
