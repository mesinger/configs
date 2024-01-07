alias l='ls -al'
alias python='python3'
alias nv="nvim"
alias his="fzf-history-cp"

install_if_not_present "brew" "/bin/sh -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'"
install_if_not_present "fish" "brew install fish"

install_if_not_present "yabai" "brew install koekeishiya/formulae/yabai"
install_if_not_present "skhd" "brew install koekeishiya/formulae/skhd"

install_if_not_present "http" "brew install httpie"
install_if_not_present "nvim" "brew install neovim"
install_if_not_present "fzf" "brew install fzf"
install_if_not_present "ddgr" "brew install ddgr"
install_if_not_present "bartib" "brew install bartib"
install_if_not_present "ffmpeg" "brew install ffmpeg"