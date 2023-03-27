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

echo "Installing system packages"

for package in ${packages[@]}
do
  echo "Installing $package"
  
  yay -S $package $noConfirm
done

echo ". /opt/asdf-vm/asdf.sh" >> ~/.zshrc
source ~/.zshrc

echo "Installing language plugins in asdf"

for language in "${asdfLanguages[@]}"
do 
  echo "Installing $language"

  asdf plugin add $language
done

echo "Installing language version and set as global"

for languageVersion in "${asdfLanguagesVersions[@]}"
do
  echo "Installing $languageVersion"

  asdf install $languageVersion
  asdf global $languageVersion
done

echo "Add dotfiles with chezmoi"

chezmoi init git@github.com:breno5g/dotfiles.git

chezmoi update
