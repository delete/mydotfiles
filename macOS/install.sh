#!/bin/bash

set -e

function print_step() {
  printf "\E[1;36m"
  printf "\n + %s\n\n" "$1"
  printf "\E[0m"
}

github_username="Fellipe Pinheiro"
github_email="pinheiro.llip@gmail.com"
github_editor="vim"


##------------- Install XCode Command Line Tools
xcode-select --install

if ! [ -x "$(command -v brew)" ]; then
  print_step "Homebrew is not installed." 
  print_step "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

print_step "Homebrew is installed! We are good to go!" 

print_step "Installing apps..." 

##------------- Utilitaries
brew install wget 
brew install htop  
brew install tree 
brew install bat
brew install m-cli
brew install neovim
brew install node
brew install yarn
brew install --cask alfred
brew install --cask cleanmymac

brew install fzf 
$(brew --prefix)/opt/fzf/install

##------------- Virtualization apps
brew install docker 
brew install --cask virtualbox
brew install --cask docker 
brew install --cask docker-compose 
brew install docker-machine 

##------------- Music apps
brew install --cask spotify 

##------------- Video apps
brew install --cask iina 
brew install --cask kap 

##------------- Communications apps
brew install --cask slack
brew install --cask zoom 

##------------- Web apps
brew install --cask firefox 
brew install --cask google-chrome

##------------- Coding apps
brew install --cask visual-studio-code 
brew install --cask gitkraken 
brew install --cask iterm2 
brew install --cask postman

##------------- System
brew install --cask homebrew/cask-fonts/font-fira-code


##------------- Install and setup Git
brew install git
brew install tig

(
  set -x
  git config --global user.name "$github_username"
  git config --global user.email "$github_email"
  git config --global core.editor "$github_editor"
)

##------------- Create directories
mkdir ~/Projects