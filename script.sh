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
  yarn
)

noConfirm="--noconfirm"

for package in ${packages[@]}
do
  echo "Installing $package"
  
  yay -S $package $noConfirm
done
