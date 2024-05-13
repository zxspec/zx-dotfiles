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
brew install diff-so-fancy
brew install --cask visual-studio-code
brew install --cask sourcetree
brew install --cask alfred
brew install --cask vlc
brew install --cask syncthing
brew install --cask firefox
brew install --cask google-chrome
# alternative Terminal
brew install --cask iterm2

brew install --cask obsidian

# Rectangle - window manager
brew install --cask rectangle
defaults write ~/Library/Preferences/com.knollsoft.Rectangle launchOnLogin -bool true

# Folders
mkdir ${HOME}/repos

# MacOS settings
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

## enable Developer menu in Safari
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true