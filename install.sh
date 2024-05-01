#!/bin/bash

# check OS.
OS="$(uname)"
if [[ "${OS}" == "Darwin" ]]
then
  chmod +x ./osx.sh
  ./osx.sh
elif [[ "${OS}" == "Linux" ]]
then
  abort "Not ready yet."
else
  abort "Unknown OS."
fi