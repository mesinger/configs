export RICO_CONFIG=$HOME/.config
MY_ZSH=$RICO_CONFIG/shell/zsh/scripts

source $MY_ZSH/ohmyzsh.bash
source $MY_ZSH/path.bash
source $MY_ZSH/commands.bash
source $MY_ZSH/alias.bash
source $MY_ZSH/jenv.bash

# Load Angular CLI autocompletion.
source <(ng completion script)
