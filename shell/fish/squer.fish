function onepwd
    set -l id (op item ls | fzf | string split ' ' | read -l)
    eval "op item get $id --field password | tr -d '\n' | pbcopy"
    echo "Copied to clipboard"
end
