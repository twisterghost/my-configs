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
