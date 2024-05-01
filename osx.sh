#!/bin/bash

echo "Setting up macOS..."

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro

# NVM
touch ~/.zshrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.zshrc

# OhMyZsh and autosuggestions
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-autosuggestions
echo 'source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

# agnoster theme for OhMyZsh
echo 'omz theme use agnoster' >> ~/.oh-my-zsh/oh-my-zsh.sh


nvm install --lts
nvm list
nvm use --lts


# Tools
brew install tldr
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
brew install --cask obsidian
brew install --cask rectangle

# Folders
mkdir ${HOME}/repos