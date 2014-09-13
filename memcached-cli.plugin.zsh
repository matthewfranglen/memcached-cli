# This allows the memcached-cli commands to be installed in ZSH using antigen.
# Antigen is a bundle manager. It allows you to enhance the functionality of
# your zsh session by installing bundles and themes easily.
# Antigen documentation:
# http://antigen.sharats.me/
# https://github.com/zsh-users/antigen

# Install memcached-cli:
# antigen bundle matthewfranglen/memcached-cli
# Bundles installed by antigen are available for use immediately.

# Update memcached-cli (and all other antigen bundles):
# antigen update

# The antigen command will download the git repository to a folder and then
# execute an enabling script (this file). The complete process for loading the
# code is documented here:
# https://github.com/zsh-users/antigen#notes-on-writing-plugins

# This specific script just adds the bin folder to the PATH.
export PATH=${PATH}:$(dirname $0)/bin
