# Create a symlink to a config file in my-configs.

function link-config() {
  if [ "$#" -ne 2 ]
  then
    echo "Usage: link-config [endpoint] [sourcefile]"
    return 0
  fi
  ln -s ~/my-configs/$2 $1
}
