#!/bin/bash

readonly RED_COLOR="\e[91m"
export RED_COLOR

readonly YELLOW_COLOR="\e[93m"
export YELLOW_COLOR

readonly GREEN_COLOR="\e[92m"
export GREEN_COLOR

readonly RESET_COLOR="\e[0m"
export RESET_COLOR

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
