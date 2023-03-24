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

asdfLanguages=(
  nodejs
  chezmoi
)

asdfLanguagesVersions=(
  "nodejs 18.15.0"
  "chezmoi 2.9.5"
)

noConfirm="--noconfirm"

for package in ${packages[@]}
do
  echo "Installing $package"
  
  yay -S $package $noConfirm
done

for language in "${asdfLanguages[@]}"
do 
  echo "Installing $language"

  asdf plugin add $language
done

for languageVersion in "${asdfLanguagesVersions[@]}"
do
  echo "Installing $languageVersion"

  asdf install $languagesVersion
  asdf global $languageVersion
done
