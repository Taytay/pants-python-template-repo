#!/bin/bash

# Only intended to be run if we don't already have pants installed
curl --proto '=https' --tlsv1.2 -fsSL https://static.pantsbuild.org/setup/get-pants.sh | bash

# now if we can't find the pants executable, we need to add it to the PATH by symlinking it somewhere
# check for pants

if ! command -v pants &> /dev/null; then
  echo "pants could not be found. Make sure you've got ~/.local/bin added to your path"
  echo "You can do it by putting this in your shell init:"
  # shellcheck disable=SC2016
  echo 'export PATH="$PATH:/teamspace/studios/this_studio/.local/bin"'
fi
