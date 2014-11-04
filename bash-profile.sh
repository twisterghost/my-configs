# Master profile script. Should be sourced in ~/.bash_profile
# This will handle sourcing all of the necessary scripts in /scripts

source ~/my-configs/auto-update.sh

source ~/my-configs/configs/default.sh

for f in ~/my-configs/scripts/*; do
  source $f;
done

echo "Hello!"
