alias mvcc='mvn clean compile'

install_if_not_present "jenv" "brew install jenv"
install_if_not_present "mvn" "brew install maven"
install_if_not_present "gradle" "brew install gradle"

brew install -q openjdk@17
jenv add /opt/homebrew/opt/openjdk@17

brew install -q openjdk@21
jenv add /opt/homebrew/opt/openjdk@21
