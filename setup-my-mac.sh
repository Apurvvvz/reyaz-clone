#! /bin/bash

#####################################
# Author: Riyaz Shaik
# Version: v1.0.0
# Date: 2022-09-06
# Description: This script will setup & configure you new MacBook
# Usage: ./setup-my-mac.sh
#####################################

# Disable exit on non 0
set +e

echo "🐙 Setting up your MacBook Terminal"

##### Install HomeBrew #####
echo "✅ Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


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

echo "✅ Installing Whatsapp"
brew install --cask whatsapp

echo "⭐️ Installing Notion "
brew install --cask notion

echo "⭐️ Installing Rectangle"
brew install --cask rectangle

echo "✅ Installing VLC"
brew install --cask vlc
