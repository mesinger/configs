set ROOT ~/.config/shell
set BASE $ROOT/_base

source $ROOT/fish/functions.fish
source $ROOT/fish/squer.fish

source $BASE/general.sh
source $BASE/git.sh
source $BASE/containers.sh
source $BASE/java.sh
source $BASE/rust.fish
source $BASE/squer.sh
eval set -gx PATH '/Users/rico/.jenv/shims' $PATH
set -gx JENV_SHELL fish
set -gx JENV_LOADED 1
set -e JAVA_HOME
set -e JDK_HOME
source '/opt/homebrew/Cellar/jenv/0.5.6/libexec/libexec/../completions/jenv.fish'
jenv rehash 2>/dev/null
jenv refresh-plugins
function jenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case enable-plugin rehash shell shell-options
    jenv "sh-$command" $argv | source
  case '*'
    command jenv "$command" $argv
  end
end
