#!/bin/bash

CONFIG=$HOME/.config

echo 'Henlo!'
echo 'Bootstraping your machine'

cd $CONFIG
git pull &> /dev/null

ln -sf $CONFIG/my-zsh/.zshrc $HOME/.zshrc

install_if_not_present() {
    local command_name=$1
    local code=$2

    if ! command -v "$command_name" &> /dev/null; then
        echo "Installing $command_name"
        eval "$code"
    else
        echo "$command_name is already installed"
    fi
}

install_if_not_present "brew" "/bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'"

install_if_not_present "yabai" "brew install koekeishiya/formulae/yabai"
yabai --start-service
install_if_not_present "skhd" "brew install koekeishiya/formulae/skhd"
skhd --start-service
install_if_not_present "chroma" "brew install chroma" # required for colorize plugin
install_if_not_present "http" "brew install httpie"
install_if_not_present "nvim" "brew install neovim"

echo 'Bootstrap java'
install_if_not_present "jenv" "brew install jenv"
brew install openjdk@17
jenv add /opt/homebrew/opt/openjdk@17

echo 'Bootstrap node'
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

install_if_not_present "nvm" "PROFILE=/dev/null $(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh)"
nvm install 16

