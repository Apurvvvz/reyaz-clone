#! /bin/bash

#####################################
# Author: Riyaz Shaik
# Version: v1.0.0
# Date: 02-07-2023
# Description: This script will setup & configure you new MacBook
# Usage: ./setup-my-mac.sh
#####################################

# Disable exit on non 0
set +e

echo "🐙 Setting up your MacBook"

##### Install HomeBrew #####
if test ! $(which brew); then
    echo "✅ Installing HomeBrew"
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

##### Update & Upgrade HomeBrew #####
echo 'eval "$(/usr/local/homebrew/bin/brew shellenv)"' >> $HOME/.zshrc
source $HOME/.zshrc
brew update
brew upgrade

##### Install oh-my-zsh #####
echo "🦄 Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

##### Install oh-my-posh #####
echo "🦄 Installing oh-my-posh"
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew upgrade oh-my-posh


##### Install Essential apps/packages ####
echo "✅ Installing Chrome Browser"
brew install --cask google-chrome

echo "✅ Installing VSCode"
brew install --cask visual-studio-code

echo "🐳 Installing Docker Desktop"
brew install docker

echo "⚡️ Installing GIT"
brew install git

echo "✅ Installing Slack"
brew install --cask slack

echo " 🪶 Installing iterm2"
brew install --cask iterm2

echo "✅ Installing Microsoft Outlook"
brew install --cask microsoft-outlook

echo "⭐️ Installing Rectangle"
brew install --cask rectangle

echo "✅ Installing VLC"
brew install --cask vlc

echo "✅ Installing Zoom"
brew install --cask zoom

echo "Installing XCode's Command Line Tools"
xcode-select --install

echo "Installing zsh auto-suggestions"
brew install zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#### Copying over custom theme
sudo cp ./tools/themes/riyaz-custom.omp.json /opt/

echo "⭐️⭐️⭐️ Macbook setup completed! ⭐️⭐️⭐️"