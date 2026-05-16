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

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bass

brew install --cask vscodium
brew install --cask ghostty

install_if_not_present "yabai" "brew install koekeishiya/formulae/yabai"
install_if_not_present "skhd" "brew install koekeishiya/formulae/skhd"
yabai --start-service
skhd --start-service

brew install "font-hack-nerd-font"
brew install "font-inconsolata-go-nerd-font"

install_if_not_present "nvim" "brew install neovim && sh -c 'curl -fLo \"{$\{XDG_DATA_HOME:-$HOME/.local/share}\"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

install_if_not_present "http" "brew install httpie"
install_if_not_present "wget" "brew install wget"
install_if_not_present "fzf" "brew install fzf"
install_if_not_present "ddgr" "brew install ddgr"
install_if_not_present "ffmpeg" "brew install ffmpeg"
install_if_not_present "bat" "brew install bat"
install_if_not_present "tlrd" "brew install tlrc"
install_if_not_present "cloc" "brew install cloc"
install_if_not_present "tmux" "brew install tmux"

install_if_not_present "jenv" "brew install jenv"
install_if_not_present "mvn" "brew install maven"
install_if_not_present "gradle" "brew install gradle"

brew install -q openjdk@21
brew install -q openjdk@25
mkdir ~/.jenv/versions/
jenv add /opt/homebrew/opt/openjdk@21
jenv add /opt/homebrew/opt/openjdk@25

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

nvm install --lts

brew install dotnet

source ~/.config/shell/_base/update.sh

echo "Hier noch hilfreiche Info Euer Durchlaucht"
echo "Disable iterm selection in Settings > General > Selection"
echo "Set default shell in iterm / terminal settings"
echo "Set keyboard to Unicode Hex Input to make shortcuts work"
