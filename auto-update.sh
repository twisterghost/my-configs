# Ensures that everything is up to date with the remote branch.
# If possible, pulls down new config changes and re-runs the sourcing.

CWD=$(pwd)
cd ~/my-configs
git fetch

LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u})
BASE=$(git merge-base @ @{u})

if [ $LOCAL = $REMOTE ]; then
    echo "Configs are up to date."
elif [ $LOCAL = $BASE ]; then
    echo "Updating configs..."
    git pull --rebase origin master
    clear
    source ~/.bash_profile
elif [ $REMOTE = $BASE ]; then
    echo "Local configs are ahead of remote."
else
    echo "Local and remote configs are all out of wack"
fi

cd $CWD
