#!/bin/bash

if [[ ! -x $(/usr/bin/which -s brew) ]]; then
  echo "Homebrew is not found, try to install"
  /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/aereal/master/Library/Contributions/install_homebrew.rb)"
fi

echo "First, install Git"
brew install git

brew update

echo "Essential libraries (openssl,readline)"
brew install openssl readline
brew link openssl
brew link readline

echo "Heavy duty tools"
brew install tig tmux zsh
brew install reattach-to-user-namespace

echo "rbenv and ruby-build"
brew install rbenv ruby-build

echo "Databases"
brew install mysql redis

echo "Install Node.js"
brew install node

echo "Web tools"
brew install curl w3m
brew install wget --enable-iri

echo "Other tools"
brew install keychain ssh-copy-id coreutils htop-osx
