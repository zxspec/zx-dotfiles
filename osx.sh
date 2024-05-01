#!/bin/bash

echo "Setting up macOS..."

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
touch ~/.zshrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.zshrc

# OhMyZsh and autosuggestions
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
brew install zsh-autosuggestions
echo 'source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc


nvm install --lts
nvm list
nvm use --lts


# Tools
brew install htop
brew install wget
brew install go
brew install --cask visual-studio-code
brew install --cask sourcetree
brew install --cask alfred
brew install --cask vlc
brew install --cask syncthing
brew install --cask firefox
brew install --cask google-chrome
brew install --cask iterm2

# Folders
mkdir ${HOME}/repos