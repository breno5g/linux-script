#!/bin/bash

script_dir=$(realpath "$(dirname "$0")")

# shellcheck source=/dev/null
source "$script_dir/utils/variables.sh"

titles[animation_test]="Titulo de teste"

readonly YELLOW_COLOR="\e[93m"

readonly GREEN_COLOR="\e[92m"

readonly RESET_COLOR="\e[0m"

run() {
  local callback="${*: -1}"
  {
    $1 &>/dev/null
    echo -ne "\r$([[ $? -eq 0 ]] && echo -ne "${GREEN_COLOR}✔" || echo -ne "${RED_COLOR}✘")${RESET_COLOR} $callback\n"
  } &
  {
    pid=$!
    sprite_sheet="🌑🌒🌓🌔🌕🌖🌗🌘🌑"
    i=0

    while [ -d /proc/$pid ]; do
      echo -ne "\r${YELLOW_COLOR}${sprite_sheet:i++%${#sprite_sheet}:1}${RESET_COLOR} ${titles[callback]}"
      sleep 0.3
    done
  }

  wait
}

installPackages() {
  for package in "${packages[@]}"; do
    echo "Installing $package"
    yay -S "$package" $noConfirm
  done
}

installAsdf() {
  echo ". /opt/asdf-vm/asdf.sh" >>"$HOME/.zshrc"
  # shellcheck source=/dev/null
  source "$HOME/.zshrc"

  for language in "${asdfLanguages[@]}"; do
    echo "Installing $language"

    asdf plugin add $language
  done
}

installAsdfLanguages() {
  for languageVersion in "${asdfLanguagesVersions[@]}"; do
    echo "Installing $languageVersion"

    asdf install $languageVersion
    asdf global $languageVersion
  done
}

addingDotFiles() {
  chezmoi init https://github.com/breno5g/dotfiles.git

  chezmoi update
}
