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

install_if_not_present "brew" "/bin/sh -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'"
install_if_not_present "fish" "brew install fish"
install_if_not_present "bash" "brew install bash"

install_if_not_present "yabai" "brew install koekeishiya/formulae/yabai"
install_if_not_present "skhd" "brew install koekeishiya/formulae/skhd"

install_if_not_present "http" "brew install httpie"
install_if_not_present "nvim" "brew install neovim"
install_if_not_present "fzf" "brew install fzf"
install_if_not_present "ddgr" "brew install ddgr"
install_if_not_present "bartib" "brew install bartib"
install_if_not_present "ffmpeg" "brew install ffmpeg"

install_if_not_present "jenv" "brew install jenv"
install_if_not_present "mvn" "brew install maven"
install_if_not_present "gradle" "brew install gradle"

brew install -q openjdk@17
jenv add /opt/homebrew/opt/openjdk@17

brew install -q openjdk@21
jenv add /opt/homebrew/opt/openjdk@21

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

nvm install 16
nvm install 18
nvm install 20

source ~/.config/shell/_base/update.sh