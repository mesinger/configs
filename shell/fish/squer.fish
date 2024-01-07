function onepwd
    set id (op item ls | fzf | string split ' ' | read -l id)
    eval "op item get $id"
end
