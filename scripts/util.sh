# Create a symlink to a config file in my-configs.

function link-config() {
  if [ "$#" -ne 2 ]
  then
    echo "Usage: link-config [endpoint] [sourcefile]"
    return 0
  fi
  ln -s ~/my-configs/$2 $1
}

function init-configs() {
  echo "Performing first-time linking..."
  link-config .vimrc vimrc
  link-config .vim vim
  link-config .bash_profile bash_profile.sh
  echo "Done. Y'all set."
}

# Kill a process on the given port

function kill-port() {
  kill -9 `sudo lsof -t -i:$1`
}
