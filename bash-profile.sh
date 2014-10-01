if [ -f ~/scripts/.git-completion.bash ]; then
  . ~/scripts/.git-completion.bash
fi


# return the current branch name
function parse_current_branch {
  git symbolic-ref --short HEAD
}

function proml {
    local      YELLOW="\[\033[1;33m\]"
    local        BLUE="\[\033[0;34m\]"
    local  LIGHT_BLUE="\[\033[1;34m\]"
    local        CYAN="\[\033[0;36m\]"
    local  LIGHT_CYAN="\[\033[1;36m\]"
    local         RED="\[\033[0;31m\]"
    local   LIGHT_RED="\[\033[1;31m\]"
    local       GREEN="\[\033[0;32m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local       WHITE="\[\033[1;37m\]"
    local  LIGHT_GRAY="\[\033[0;37m\]"
    local    EC="\[\e[m\]" #end color
    case $TERM in
        xterm*)
        TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
        *)
        TITLEBAR=""
        ;;
    esac

PS1="${TITLEBAR}\
$LIGHT_BLUE\e dev[$EC$LIGHT_RED$A\w$EC$LIGHT_GREEN|\$(parse_current_branch)$EC$LIGHT_BLUE]$EC\
$LIGHT_BLUE\$$EC "
PS2='> '
PS4='+ '
}

#proml

function exitstatus {

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

PROMPT_COMMAND=exitstatus

function gpo {
    git push origin $1
}

function gcm {
    git commit -m "$1"
}

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

# merge master into your current branch
#
# $ mergeInMaster
#
alias mim="mergeInMaster"
mergeInMaster() {
    git checkout master
    git fetch
    git pull origin master
    git checkout @{-1}
    git merge master
}

# obtain a clean version of a branch from remote
#
# $ cleanbranch qa
#
cleanbranch() {
    git checkout master
    git branch -D $1
    git fetch
    git checkout $1
    git pull origin $1
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


########################
# ALIASES
########################

# Navigation & tools
alias ..="cd .."
alias cls="clear;pwd;ls"
alias resource="source ~/.profile"
alias profile="sub ~/.profile"
alias hosts="sub /etc/hosts"
alias striptrailspace="ack --print0 -l '[ \t]+$' | xargs -0 -n1 perl -pi -e 's/[ \t]+$//'"

# Git aliases
alias gaa="git add -A"
alias gs="git status"
alias forgit="git reset --hard"
alias stash="git stash"
alias pop="git stash pop"
alias newday="git stash;git checkout master;git fetch;git pull --rebase origin master;"
alias undocommit="git reset --soft 'HEAD^'"
