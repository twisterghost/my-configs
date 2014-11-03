source ~/my-configs/scripts/exports.sh
source ~/my-configs/scripts/git-functions.sh
source ~/my-configs/scripts/bash-prompt.sh
source ~/my-configs/scripts/alias.sh

# Update my configs from the latest entry on github.
function update-configs() {
  CWD=$(pwd)
  cd ~/my-configs
  git fetch
  git checkout master
  git pull origin master
  cd $CWD
  resource
}

# Create a symlink to a config file in my-configs.

function link-config() {
  if [ "$#" -ne 2 ]
  then
    echo "Usage: link-config [endpoint] [sourcefile]"
    return 0
  fi
  ln -s ~/my-configs/$2 $1
}
