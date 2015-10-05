# Master profile script. Should be sourced in ~/.bash_profile
# This will handle sourcing all of the necessary scripts in /scripts

# Next, load up the default configuration (sets up exports)
source ~/my-configs/configs/default.sh

# Finally, source everything in /scripts
for f in ~/my-configs/scripts/*; do
  source $f;
done

# A friendly welcome message!
echo "Hello!"
