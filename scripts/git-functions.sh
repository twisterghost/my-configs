# Functions and aliases that improve or simplify git workflow.

# Import the git branch completion script if its there.
if [ -f ~/my-configs/lib/.git-completion.bash ]; then
  . ~/my-configs/lib/.git-completion.bash
fi

# Returns the current branch name.
# The second line can be used with Git 2.0+, otherwise, the first works fine.
function parse-current-branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
  #git symbolic-ref --short HEAD
}

# Shortening for 'git push origin XYZ'
function gpo {
  git push origin $1
}

# Shortening for 'git commit -m XYZ'
function gcm {
  git commit -m "$1"
}

# Creates a new branch based off of master.
function new-branch() {
  git stash
  git fetch
  git checkout master
  git pull origin master
  git checkout -b $1
}

# Shortcut for pulling the current branch
function pull() {
  git pull origin $(parse-current-branch)
}

# Shortcut for pushing the current branch
function push() {
  git push origin $(parse-current-branch)
}

# Merges master into your current branch.
alias mim="merge-in-master"
function merge-in-master() {
  git checkout master
  git fetch
  git pull origin master
  git checkout @{-1}
  git merge master
}

# Obtain a clean version of a branch from remote.
function clean-branch() {
  git checkout master
  git branch -D $1
  git fetch
  git checkout $1
  git pull origin $1
}

# Git related aliases, mostly shortenings.
alias gaa="git add -A"
alias gs="git status"
alias forgit="git reset --hard"
alias refresh="git stash;git checkout master;git fetch;git pull --rebase origin master;"
alias undocommit="git reset --soft 'HEAD^'"
