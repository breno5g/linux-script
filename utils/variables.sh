#!/bin/bash

packages=(
  flatpak
  neovim
  zsh
  exa
  bat
  google-chrome
  visual-studio-code-bin
  asdf-vm
  git
  beekeeper-studio-bin
  telegram-desktop
)
export packages

asdfLanguages=(
  nodejs
  chezmoi
)
export asdfLanguages

asdfLanguagesVersions=(
  "nodejs 18.15.0"
  "chezmoi 2.9.5"
)
export asdfLanguagesVersions

noConfirm="--noconfirm"
export noConfirm