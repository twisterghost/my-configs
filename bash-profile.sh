# Master profile script. Should be sourced in ~/.bash_profile
# This will handle sourcing all of the necessary scripts in /scripts

# First, ensure that the configs are up-to-date
source ~/my-configs/auto-update.sh

# Don't continue running if it was updated, as its being run again.
if [ "${UPDATED_CONFIG}" -eq 1 ]; then
  exit 0
fi

# Next, load up the default configuration (sets up exports)
source ~/my-configs/configs/default.sh

# Finally, source everything in /scripts
for f in ~/my-configs/scripts/*; do
  source $f;
done

# A friendly welcome message!
echo "Hello!"

