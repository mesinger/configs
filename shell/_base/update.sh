echo "Updating system"
sudo chown -R rico /opt/homebrew
brew update
brew outdated
brew upgrade
