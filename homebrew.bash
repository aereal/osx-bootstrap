#!/bin/bash

function _info() {
  # green
  printf '[\e[32mINFO\e[0m] %s\n' "$*" > /dev/stderr
}

function _warn() {
  # yellow
  printf '[\e[33mWARN\e[0m] %s\n' "$*" > /dev/stderr
}

function _error() {
  # red
  printf '[\e[31mERROR\e[0m] %s\n' "$*" > /dev/stderr
}

function brew_install() {
  _info "brew install $*"
  brew install $*
}

if ! which brew >/dev/null; then
  _warn "Homebrew is not installed"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
else
  _info "Homebrew is installed ($(brew --prefix))"
fi

brew_install git --enable-pcre
brew_install tig

brew_install zsh --disable-etcdir
brew_install zsh-completions
brew_install zsh-syntax-highlighting
brew_install tmux reattach-to-user-namespace

brew_install readline openssl libyaml
brew_install rbenv ruby-build

brew_install coreutils
brew_install the_silver_searcher
brew_install pstree
brew_install hub
brew_install wget --enable-iri
brew_install node

_info "Latest MacVim"
brew_install lua
brew_install macvim --with-lua --HEAD
