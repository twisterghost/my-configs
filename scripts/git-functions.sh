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

# Shortcut for pulling the current branch
function pull() {
  git pull origin $(parse-current-branch)
}

# Shortcut for pushing the current branch
function push() {
  git push origin $(parse-current-branch)
}

# Git related aliases, mostly shortenings.
alias gaa="git add -A"
alias gs="git status"
alias forgit="git reset --hard"
alias undocommit="git reset --soft 'HEAD^'"
