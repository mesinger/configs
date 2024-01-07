#!/bin/bash

fzf-history-exec() {
local selected_command=$(history  | awk '{$1=""; print substr($0,2)}'| fzf --exact +s +m --tac)
if [[ -n "$selected_command" ]]; then
  eval "$selected_command"
fi
}

fzf-history-cp() {
$(history | awk '{$1=""; print substr($0,2)}'| fzf --exact +s +m --tac | pbcopy)
}

op-get() {
local id=$(op item ls | fzf | awk '{print $1}')
eval "op item get $id"
}

