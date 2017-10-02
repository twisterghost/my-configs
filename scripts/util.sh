function link-config() {
  if [ "$#" -ne 2 ]
  then
    echo "Usage: link-config [endpoint] [sourcefile]"
    return 0
  fi
  ln -s ~/my-configs/$2 $1
}

# Shortcut tmux attach
function attach {
  tmux attach -t $1
}

# Shortcut tmux new -s
function ses {
  tmux new -s $1
}

# Kill a process on the given port
function kill-port() {
  kill -9 `sudo lsof -t -i:$1`
}
