# Import the git branch completion script if its there.
if [ -f ~/scripts/.git-completion.bash ]; then
  . ~/scripts/.git-completion.bash
fi


# Returns the current branch name.
function parse_current_branch {
  git symbolic-ref --short HEAD
}

# Custom prompt. Shows a green colon if the previous command exited properly.
# Shows a red colon otherwise.
function customPrompt {

  EXITSTATUS="$?"
  BOLD="\[\033[1m\]"
  RED="\[\033[1;31m\]"
  GREEN="\[\e[32;1m\]"
  BLUE="\[\e[34;1m\]"
  OFF="\[\033[m\]"

  PROMPT="[\t] #\W"

  if [ "${EXITSTATUS}" -eq 0 ]
  then
     PS1="${PROMPT}${BOLD}${GREEN}:${OFF} "
  else
     PS1="${PROMPT}${BOLD}${RED}:${OFF} "
  fi

  PS2="${BOLD}and then... ${OFF} "
}
PROMPT_COMMAND=customPrompt

# Shortening for 'git push origin XYZ'
function gpo {
  git push origin $1
}

# Shortening for 'git commit -m XYZ'
function gcm {
  git commit -m "$1"
}

# Creates a new branch based off of master.
newbranch() {
  git stash
  git fetch
  git checkout master
  git pull origin master
  git checkout -b $1
}

# Shortcut for pulling the current branch
pull() {
  git pull origin $(parse_current_branch)
}

# Shortcut for pushing the current branch
push() {
  git push origin $(parse_current_branch)
}

# Merges master into your current branch.
alias mim="mergeInMaster"
mergeInMaster() {
  git checkout master
  git fetch
  git pull origin master
  git checkout @{-1}
  git merge master
}

# Obtain a clean version of a branch from remote.
cleanbranch() {
  git checkout master
  git branch -D $1
  git fetch
  git checkout $1
  git pull origin $1
}

########################
# ALIASES
########################

# Navigation & tools
alias ..="cd .."
alias cls="clear;pwd;ls"
alias resource="source ~/.profile"
alias profile="sub ~/.profile"
alias hosts="sub /etc/hosts"


## Mini scripts

# Strip all trailing whitespace from files, recursively.
alias striptrailspace="ack --print0 -l '[ \t]+$' | xargs -0 -n1 perl -pi -e 's/[ \t]+$//'"

# Git related aliases, mostly shortenings.
alias gaa="git add -A"
alias gs="git status"
alias forgit="git reset --hard"
alias refresh="git stash;git checkout master;git fetch;git pull --rebase origin master;"
alias undocommit="git reset --soft 'HEAD^'"
