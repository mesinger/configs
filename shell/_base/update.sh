echo "Updating system"
sudo chown -R $USER /opt/homebrew
brew update
brew outdated
brew upgrade
