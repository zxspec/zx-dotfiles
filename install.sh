#!/bin/bash

# set ENV variables
export DOTFILES_URL="https://raw.githubusercontent.com/zxspec/zx-dotfiles/main"

# fail on unbound variables
set -u


# launch OS-specific setup script
OS="$(uname)"
if [[ "${OS}" == "Darwin" ]]
then
  curl -L "$DOTFILES_URL/osx.sh" | sh
elif [[ "${OS}" == "Linux" ]]
then
  abort "Not ready yet."
else
  abort "Unknown OS."
fi