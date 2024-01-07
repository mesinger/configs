set ROOT ~/.config/shell
set BASE $ROOT/_base

source $ROOT/fish/functions.fish
omf install bass

source $BASE/general.sh
source $BASE/git.sh
source $BASE/containers.sh
source $BASE/java.sh
bass source $BASE/node.sh
source $BASE/update.sh

source $ROOT/fish/squer.fish
